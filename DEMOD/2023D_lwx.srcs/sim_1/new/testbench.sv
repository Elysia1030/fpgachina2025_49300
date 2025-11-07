`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// 模块: testbench
// 功能: 生成 AM, 2PSK, 2ASK, 2FSK, FM 调制信号。
//////////////////////////////////////////////////////////////////////////////////

module testbench;

  //  仿真模式与物理参数定义 
  localparam string MODE = "AM"; // 设置 "AM", "2PSK", "2ASK", "2FSK", "FM"

  //  通用系统参数 
  localparam integer CLK_FREQ   = 50_000_000; // 系统时钟频率 (50 MHz)
  localparam integer ADC_BITS   = 10;         // (用于testbench) ADC的输入位宽
  localparam integer DDS_OUT_W  = 16;         // DDS模块的输出位宽
  localparam integer DDS_PHASE_W= 24;         // DDS模块的相位累加器位宽

  //  信号参数 
  localparam integer CARRIER_FREQ = 2_000_000;  // 统一载波频率 (2 MHz)
  localparam integer BIT_RATE     = 10_000;    // 数字调制(PSK, ASK, FSK)的统一码元速率 (bps)
  
  //  特定调制参数 
  localparam integer AM_MOD_FREQ      = 4_000;    // AM 模拟调制波频率 (10 kHz)
  localparam real    AM_MA            = 0.5;      // AM 调幅系数
  localparam real    FSK_H            = 5.0;       // 2FSK 键控频移系数 h
  localparam integer FM_MOD_FREQ      = 5_000;    // FM 模拟调制信号频率 (10 kHz)
  localparam integer FM_MAX_FREQ_DEV  = 4_000;    // FM 最大频率偏移 (50 kHz)


  //  信号定义 
  reg clk = 1'b0;
  reg resetn    = 1'b0;
  reg [ADC_BITS-1:0] i_adc_data;
  wire signed [DDS_OUT_W-1:0] w_final_signal;

  //  50M时钟与复位生成 
  always #10 clk = ~clk;
  initial begin resetn = 1'b0; #400; resetn = 1'b1; end 

  // 调制信号源生成 
  generate
    // 模式一: AM (调幅)
    if (MODE == "AM") begin : gen_am_signal
      wire signed [DDS_OUT_W-1:0] w_carrier;
      wire signed [DDS_OUT_W-1:0] w_mod_wave;
      
      MY_DDS #( .PHASE_WIDTH(DDS_PHASE_W), .DATA_WIDTH(DDS_OUT_W) ) dds_am_carrier (
          .resetn(resetn), .clk(clk), .clk_en(1'b1),
          .phase_acc((1.0 * CARRIER_FREQ * (1 << DDS_PHASE_W)) / CLK_FREQ),
          .phase_diff(0), .data_o(w_carrier)
      );
      MY_DDS #( .PHASE_WIDTH(DDS_PHASE_W), .DATA_WIDTH(DDS_OUT_W) ) dds_am_mod_wave (
          .resetn(resetn), .clk(clk), .clk_en(1'b1),
          .phase_acc((1.0 * AM_MOD_FREQ * (1 << DDS_PHASE_W)) / CLK_FREQ),
          .phase_diff(0), .data_o(w_mod_wave)
      );
      
      localparam real SCALE_FACTOR = 1.0 / (1.0 + AM_MA);
      localparam signed [DDS_OUT_W-1:0] CARRIER_SCALER = $rtoi(SCALE_FACTOR * ((1 << (DDS_OUT_W - 1)) - 1));
      wire signed [DDS_OUT_W*2-1:0] p_carrier_scaled = w_carrier * CARRIER_SCALER;
      wire signed [DDS_OUT_W-1:0]   w_carrier_scaled = p_carrier_scaled >>> (DDS_OUT_W - 1);
      localparam signed [DDS_OUT_W-1:0] ONE_FIXED = (1 << (DDS_OUT_W - 1)) - 1;
      wire signed [DDS_OUT_W*2-1:0] p_ma_mod = w_mod_wave * $rtoi(AM_MA * (1 << (DDS_OUT_W - 1)));
      wire signed [DDS_OUT_W-1:0]   ma_mod_term = p_ma_mod >>> (DDS_OUT_W - 1);
      wire signed [DDS_OUT_W:0]     envelope = ONE_FIXED + ma_mod_term;
      wire signed [DDS_OUT_W*2:0]   p_final = envelope * w_carrier_scaled;
      assign w_final_signal = p_final >>> (DDS_OUT_W - 1);
    end

    //模式二: 2PSK, 2ASK, 2FSK (数字调制)
     
    else if (MODE == "2PSK" || MODE == "2ASK" || MODE == "2FSK") begin : gen_digital_mods
      
      // 码元生成器: 产生时序清晰的 r_nrz_bit
      reg r_nrz_bit;
      localparam integer BIT_DURATION_CLOCKS = CLK_FREQ / BIT_RATE;
      reg [$clog2(BIT_DURATION_CLOCKS)-1:0] bit_counter = 0;
      reg [15:0] lfsr = 16'hACE1;

      always @(posedge clk or negedge resetn) begin
        if(!resetn) begin 
            r_nrz_bit <= 1'b0; 
            bit_counter <= 0; 
            lfsr <= 16'hACE1; 
        end else begin
          if (bit_counter == BIT_DURATION_CLOCKS - 1) begin
            bit_counter <= 0;
            r_nrz_bit <= lfsr[0];
            lfsr <= {lfsr[14:0], lfsr[0] ^ lfsr[2] ^ lfsr[3] ^ lfsr[5]};
          end else begin
            bit_counter <= bit_counter + 1;
          end
        end
      end

      //  2PSK 实现 
      if (MODE == "2PSK") begin
        reg [DDS_PHASE_W-1:0] r_psk_phase_offset;
        always @(posedge clk or negedge resetn) begin
            if(!resetn) begin
                r_psk_phase_offset <= 0;
            end else begin
                if (r_nrz_bit) r_psk_phase_offset <= (1 << (DDS_PHASE_W - 1));
                else r_psk_phase_offset <= 0;
            end
        end
        MY_DDS #( .PHASE_WIDTH(DDS_PHASE_W), .DATA_WIDTH(DDS_OUT_W) ) dds_psk_mod (
            .resetn(resetn), .clk(clk), .clk_en(1'b1),
            .phase_acc((1.0 * CARRIER_FREQ * (1 << DDS_PHASE_W)) / CLK_FREQ),
            .phase_diff(r_psk_phase_offset), .data_o(w_final_signal)
        );
      end

      //  2ASK 实现 
      if (MODE == "2ASK") begin
        wire signed [DDS_OUT_W-1:0] w_carrier;
        MY_DDS #( .PHASE_WIDTH(DDS_PHASE_W), .DATA_WIDTH(DDS_OUT_W) ) dds_ask_carrier (
            .resetn(resetn), .clk(clk), .clk_en(1'b1),
            .phase_acc((1.0 * CARRIER_FREQ * (1 << DDS_PHASE_W)) / CLK_FREQ),
            .phase_diff(0), .data_o(w_carrier)
        );
        // 输出通过寄存器打一拍
        reg signed [DDS_OUT_W-1:0] r_final_signal;
        always @(posedge clk) begin
            r_final_signal <= r_nrz_bit ? w_carrier : 16'd0;
        end
        assign w_final_signal = r_final_signal;
      end
      
      //  2FSK 实现 
      if (MODE == "2FSK") begin
        localparam real F_DEV_HALF = (FSK_H * BIT_RATE) / 2.0;
        localparam integer F1 = CARRIER_FREQ + F_DEV_HALF;
        localparam integer F0 = CARRIER_FREQ - F_DEV_HALF;
        localparam [DDS_PHASE_W-1:0] FCW1 = (1.0 * F1 * (1 << DDS_PHASE_W)) / CLK_FREQ;
        localparam [DDS_PHASE_W-1:0] FCW0 = (1.0 * F0 * (1 << DDS_PHASE_W)) / CLK_FREQ;
        
        reg [DDS_PHASE_W-1:0] r_fsk_fcw;
        always @(posedge clk or negedge resetn) begin
            if (!resetn) begin
                r_fsk_fcw <= FCW0;
            end else begin
                if (r_nrz_bit) r_fsk_fcw <= FCW1;
                else           r_fsk_fcw <= FCW0;
            end
        end
        MY_DDS #( .PHASE_WIDTH(DDS_PHASE_W), .DATA_WIDTH(DDS_OUT_W) ) dds_fsk_mod (
            .resetn(resetn), .clk(clk), .clk_en(1'b1),
            .phase_acc(r_fsk_fcw), .phase_diff(0), .data_o(w_final_signal)
        );
      end
    end 
    
     
    // 模式三: FM (模拟调频)
    else if (MODE == "FM") begin : gen_fm_analog
      
      wire signed [DDS_OUT_W-1:0] w_mod_wave;
      MY_DDS #( .PHASE_WIDTH(DDS_PHASE_W), .DATA_WIDTH(DDS_OUT_W) ) dds_fm_mod_wave (
          .resetn(resetn), .clk(clk), .clk_en(1'b1),
          .phase_acc((1.0 * FM_MOD_FREQ * (1 << DDS_PHASE_W)) / CLK_FREQ),
          .phase_diff(0), .data_o(w_mod_wave)
      );
      
      localparam FIXED_POINT_BITS = 32;
      localparam K_NUMERATOR_WIDTH = DDS_PHASE_W + FIXED_POINT_BITS;
      localparam [K_NUMERATOR_WIDTH:0] K_NUMERATOR = {1'b1, {(K_NUMERATOR_WIDTH) {1'b0}}};
      localparam [K_NUMERATOR_WIDTH-1:0] K_FIXED = K_NUMERATOR / CLK_FREQ;
      localparam signed [DDS_PHASE_W-1:0] FCW_CARRIER = (CARRIER_FREQ * K_FIXED) >>> FIXED_POINT_BITS;
      localparam MAX_MOD_VAL = 1 << (DDS_OUT_W - 1);
      localparam signed [DDS_PHASE_W+FIXED_POINT_BITS-1:0] DEV_SCALE_FIXED = (FM_MAX_FREQ_DEV * K_FIXED) / MAX_MOD_VAL;
      localparam PRODUCT_WIDTH = DDS_OUT_W + DDS_PHASE_W + FIXED_POINT_BITS;
      
      //流水线
      reg signed [DDS_OUT_W-1:0] r_mod_wave_p1;
      reg signed [PRODUCT_WIDTH-1:0] r_dev_product_p2;
      reg signed [DDS_PHASE_W-1:0]   r_fcw_dev_p3;
      reg signed [DDS_PHASE_W-1:0]   r_dynamic_phase_word_p4;

      always @(posedge clk or negedge resetn) begin
          if(!resetn) begin
              r_mod_wave_p1 <= 0;
              r_dev_product_p2 <= 0;
              r_fcw_dev_p3 <= 0;
              r_dynamic_phase_word_p4 <= 0;
          end else begin
              // Pipeline Stage 1: 锁存调制信号
              r_mod_wave_p1 <= w_mod_wave;
              // Pipeline Stage 2: 执行乘法
              r_dev_product_p2 <= r_mod_wave_p1 * DEV_SCALE_FIXED;
              // Pipeline Stage 3: 执行移位 (缩放)
              r_fcw_dev_p3 <= r_dev_product_p2 >>> FIXED_POINT_BITS;
              // Pipeline Stage 4: 执行加法
              r_dynamic_phase_word_p4 <= FCW_CARRIER + r_fcw_dev_p3;
          end
      end
      
      MY_DDS #( .PHASE_WIDTH(DDS_PHASE_W), .DATA_WIDTH(DDS_OUT_W) ) dds_fm_modulator (
          .resetn(resetn), .clk(clk), .clk_en(1'b1),
          .phase_acc(r_dynamic_phase_word_p4), .phase_diff(0), .data_o(w_final_signal)
      );
    end
  endgenerate

  //  DUT 接口转换逻辑 
  always @(posedge clk) begin
    if (!resetn) begin
        i_adc_data <= (1 << (ADC_BITS - 1));
    end else begin
        i_adc_data <= (w_final_signal >>> (DDS_OUT_W - ADC_BITS)) + (1 << (ADC_BITS - 1));
    end
  end
  
  //wire [15:0] AM_demod;
  wire uart_rxd;
  wire uart_txd;
  //  DUT 例化 
  design_1_wrapper design_1_i ( 
      .i_adc_data(i_adc_data)
  );
  
  //仿真控制
  initial begin
    #100;
    $finish;
  end

endmodule