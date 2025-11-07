/*******************************************************************************
*
* 模块: fm_mod_optimized
*
* 命名约定:
*   UPPER_CASE_SNAKE: 参数 (parameter / localparam)
*   r_lowercase_snake: 寄存器 (reg)
*   w_lowercase_snake: 线网 (wire)
*   i_lowercase_snake: 输入端口 (input)
*   o_lowercase_snake: 输出端口 (output)
*
* 缩写含义:
*   FCW: 频率控制字 (Frequency Control Word), 等同于此处的相位增量
*   KCM: 常数系数乘法器 (Constant Coefficient Multiplier)
*
*******************************************************************************/

module fm_mod #(
    // 系统参数
    parameter integer CLK_FREQ  = 120_000_000,  // 系统时钟频率 (Hz)
    parameter integer DDS_WIDTH = 32,           // 下游DDS相位累加器的位宽

    // 调制参数
    parameter integer CARRIER_FREQ       = 2_000_000,  // 载波频率 (Hz)
    parameter integer MAX_FREQ_DEV       = 5_000,      // 最大频率偏移 (Hz)
    parameter integer INPUT_SIGNAL_WIDTH = 16          // 输入调制信号的位宽
) (
    input wire               i_clk,
    input wire               i_rst_n,
    input wire signed [15:0] i_mod_signal,

    output wire signed [DDS_WIDTH-1:0] o_phase_word
);

  // 编译时预计算
  localparam FIXED_POINT_BITS = 32;  // 用于提高编译时计算精度的"虚拟小数"位数

  // K = (2^N / f_clk), 将频率Hz转换为DDS相位增量的核心比例因子
  localparam K_NUMERATOR_WIDTH = DDS_WIDTH + FIXED_POINT_BITS;
  localparam [K_NUMERATOR_WIDTH:0] K_NUMERATOR = {1'b1, {(K_NUMERATOR_WIDTH) {1'b0}}};
  localparam [K_NUMERATOR_WIDTH-1:0] K_FIXED = K_NUMERATOR / CLK_FREQ;

  // 计算载波的固定相位增量 (fc * K)
  localparam signed [DDS_WIDTH-1:0] FCW_CARRIER = (CARRIER_FREQ * K_FIXED) >>> FIXED_POINT_BITS;

  // 计算频偏的缩放因子
  // 因子 = (f_dev_max * K) / (max input signal value)
  localparam MAX_MOD_VAL = 1 << (INPUT_SIGNAL_WIDTH - 1);
  localparam signed [DDS_WIDTH+FIXED_POINT_BITS-1:0] DEV_SCALE_FIXED =(MAX_FREQ_DEV * K_FIXED) / MAX_MOD_VAL;


  // --- 硬件实现逻辑 ---
  reg signed  [INPUT_SIGNAL_WIDTH-1:0] r_mod_signal;
  wire signed [         DDS_WIDTH-1:0] w_fcw_dev;
  reg signed  [         DDS_WIDTH-1:0] r_phase_word;

  always @(posedge i_clk or negedge i_rst_n) begin
    if (!i_rst_n) begin
      r_mod_signal <= 0;
    end else begin
      r_mod_signal <= i_mod_signal[INPUT_SIGNAL_WIDTH-1:0];
    end
  end

  // 定义乘积位宽: width(A*B) = width(A) + width(B)
  // DEV_SCALE_FIXED 的位宽是 DDS_WIDTH + FIXED_POINT_BITS
  localparam PRODUCT_WIDTH = INPUT_SIGNAL_WIDTH + DDS_WIDTH + FIXED_POINT_BITS;
  reg signed [PRODUCT_WIDTH-1:0] r_dev_product;

  always @(posedge i_clk or negedge i_rst_n) begin
    if (!i_rst_n) begin
      r_dev_product <= 0;
    end else begin
      // 变量 * 常数，不使用DSP模块
      r_dev_product <= r_mod_signal * DEV_SCALE_FIXED;
    end
  end

  assign w_fcw_dev = r_dev_product >>> FIXED_POINT_BITS;

  always @(posedge i_clk or negedge i_rst_n) begin
    if (!i_rst_n) begin
      r_phase_word <= 0;
    end else begin
      // 固定的载波增量 + 动态的频偏增量
      r_phase_word <= FCW_CARRIER + w_fcw_dev;
    end
  end

  assign o_phase_word = r_phase_word;

endmodule
