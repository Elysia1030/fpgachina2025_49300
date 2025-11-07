`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// 模块: FM_measure
// 功能: 正确实现FM参数计算。
//       - fre_dev 通过高效的定点乘法计算。
//       - mf 通过 Xilinx Divider Generator IP (div_gen_fsk) 计算。
//////////////////////////////////////////////////////////////////////////////////
module FM_measure (
    input  wire               clk,
    input  wire               rst_n,
    input  wire               measure_valid,
    input  wire signed [15:0] V_max,
    input  wire signed [15:0] V_min,
    input  wire signed [15:0] frequency,
    output reg signed  [15:0] mf,
    output reg signed  [15:0] fre_dev
);

  // --- FSM 状态定义 ---
  localparam S_IDLE = 3'd0;  // 空闲
  localparam S_CALC_DEV_AND_START_DIV = 3'd1;  // 计算fre_dev, 并启动mf的除法
  localparam S_WAIT_MF_RESULT = 3'd2;  // 等待mf计算结果
  localparam S_LATCH_MF_OUTPUT = 3'd3;  // 锁存mf输出

  reg [2:0] state;

  // --- 定点数乘法参数 (用于 fre_dev = diff * 1000/13) ---
  localparam FRAC_BITS = 16;
  localparam K_MULT = 32'd50414;  // round((1000/13) * 2^16)

  // --- 连接到除法器IP的信号 ---
  reg        [25:0] div_dividend_tdata;  // 分子: |fre_dev| * 1000
  reg               div_dividend_tvalid;
  reg        [15:0] div_divisor_tdata;  // 分母: |frequency|
  reg               div_divisor_tvalid;
  wire       [42:0] div_result_tdata;  // 输出: [商(26bit), 余数(16bit)]
  wire              div_result_tvalid;

  // --- 内部信号 ---
  reg               measure_valid_dly;
  wire              measure_start_pulse = measure_valid && !measure_valid_dly;
  reg               mf_sign;  // 存储mf的符号位: 0 for positive, 1 for negative

  reg        [25:0] mf_abs;
  reg signed [16:0] diff;
  reg signed [33:0] fre_dev_full;
  reg signed [15:0] fre_dev_temp;
  reg        [15:0] fre_dev_abs;
  reg        [15:0] frequency_abs;


  // --- 主逻辑 ---
  always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      state <= S_IDLE;
      mf <= 0;
      fre_dev <= 0;
      div_dividend_tvalid <= 1'b0;
      div_divisor_tvalid <= 1'b0;
      measure_valid_dly <= 1'b0;
    end else begin
      measure_valid_dly   <= measure_valid;

      // 默认关闭IP启动信号
      div_dividend_tvalid <= 1'b0;
      div_divisor_tvalid  <= 1'b0;

      case (state)
        S_IDLE: begin
          if (measure_start_pulse) begin
            state <= S_CALC_DEV_AND_START_DIV;
          end
        end

        S_CALC_DEV_AND_START_DIV: begin
          // --- 步骤1: 使用定点乘法高效计算 fre_dev ---


          diff = V_max - V_min;
          fre_dev_full = (diff * K_MULT) >>> FRAC_BITS;  // 乘魔术数并右移
          fre_dev_temp = fre_dev_full[15:0];
          fre_dev <= fre_dev_temp;  // 输出 fre_dev

          // --- 步骤2: 准备输入并启动除法器IP以计算 mf ---

          fre_dev_abs   = (fre_dev_temp < 0) ? -fre_dev_temp : fre_dev_temp;
          frequency_abs = (frequency < 0) ? -frequency : frequency;

          // 计算最终结果的符号 (异或)
          mf_sign <= (fre_dev_temp[15] ^ frequency[15]);

          if (frequency_abs > 0) begin
            div_dividend_tvalid <= 1'b1;
            div_divisor_tvalid  <= 1'b1;
            div_dividend_tdata  <= fre_dev_abs * 1000;
            div_divisor_tdata   <= frequency_abs;
          end
          state <= S_WAIT_MF_RESULT;
        end

        S_WAIT_MF_RESULT: begin
          if (div_result_tvalid) begin
            state <= S_LATCH_MF_OUTPUT;
          end
        end

        S_LATCH_MF_OUTPUT: begin

          mf_abs = div_result_tdata[42:16];  // 提取商的绝对值

          // 根据之前保存的符号位，计算最终的 mf
          mf <= mf_sign ? -mf_abs : mf_abs;
          state <= S_IDLE;
        end

        default: state <= S_IDLE;
      endcase
    end
  end

  // --- 实例化 Divider Generator IP Core ---
  // IP组件名: div_gen_fsk
  div_gen_fsk your_instance_name (
      .aclk(clk),
      .s_axis_divisor_tvalid(div_divisor_tvalid),
      .s_axis_divisor_tdata(div_divisor_tdata),
      .s_axis_dividend_tvalid(div_dividend_tvalid),
      .s_axis_dividend_tdata(div_dividend_tdata),
      .m_axis_dout_tvalid(div_result_tvalid),
      .m_axis_dout_tdata(div_result_tdata)
  );

endmodule
