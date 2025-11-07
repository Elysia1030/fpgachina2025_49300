`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Wenxuan Lu
// 
// Create Date: 2025/10/25 09:50:10
// Design Name: 
// Module Name: PSK_DM
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: PSK解调模块 - 用于将PSK调制信号解调为原始数字信号
//              采用Costas环进行载波同步，混频后经过低通滤波实现解调
// 
// Dependencies: costas_loop.v, mult_gen_0.v, fir_lpf_psk.v
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 解调流程：1.载波同步(Costas环) -> 2.混频(乘法器) -> 3.低通滤波 -> 4.判决输出
//////////////////////////////////////////////////////////////////////////////////


module PSK_DM(
    input clk,                          // 系统时钟
    input rst_n,                        // 低电平有效的复位信号
    input signed [15:0] pm_data_in,      // 输入的PSK调制信号，16位有符号数
    output signed [15:0] pm_data_out       // 解调后的数字信号输出
);
    // 内部信号定义
    wire signed [15:0] carrier_out_signed;      // Costas环恢复的载波信号
    wire signed [31:0] mixed_PSK_data_signed;   // 混频后的信号，32位有符号数
    wire signed [33:0] fir_tdata_i;             // FIR滤波器输出，34位有符号数
    reg                mixed_valid_r = 0;        // 混频信号有效标志
    wire              fir_tready_i;              // FIR滤波器准备好接收数据标志
    wire              fir_tvalid_i;              // FIR滤波器输出有效标志
    reg signed [15:0] square_wave = 0;                 // 解调后的方波信号

    // Costas环实例 - 用于载波同步
    costas_loop costas_loop_inst(
        .clk(clk),                    // 系统时钟
        .rst_n(rst_n),                // 低电平有效的复位信号
        .psk_in(pm_data_in),           // 输入的2PSK信号
        .carrier_out(carrier_out_signed) // 恢复的载波信号输出
    );

    // 混频器实例 - 将输入信号与恢复的载波相乘
    mult_gen_psk	mult_gen_psk(
   	    .CLK	(clk),
   	    .A		(pm_data_in),
    	.B		(carrier_out_signed),
   	    .P		(mixed_PSK_data_signed)
	);
	
	always @(posedge clk) begin
        if (rst_n == 0) begin
            mixed_valid_r <= 0;
        end else 
            mixed_valid_r <= 1;
	end

	// 低通滤波器实例 - 用于提取基带信号
    fir_lpf_psk fir_lpf_psk_psk1
    (
        .aclk                (clk),                // 系统时钟
        .s_axis_data_tvalid  (mixed_valid_r),      // 输入数据有效信号
        .s_axis_data_tready  (fir_tready_i),       // FIR滤波器准备接收数据信号
        .s_axis_data_tdata   (mixed_PSK_data_signed[31:16]), // 输入数据，取高16位作为有效数据
        .m_axis_data_tvalid  (fir_tvalid_i),       // FIR滤波器输出数据有效信号
        .m_axis_data_tdata   (fir_tdata_i)         // FIR滤波器输出数据
    );

    // 数据判决逻辑 - 将滤波后的信号转换为数字信号
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            square_wave <= 0;           // 复位时输出为0
        end else begin
            // 基于滤波后信号的符号位进行判决
            if (fir_tdata_i > 0) begin  // 正值判决为高电平
                square_wave <= 3000;      // 输出高电平（3000）
            end else begin
                square_wave <= 0;        // 输出低电平（0）
            end
        end
    end

    assign pm_data_out = square_wave;     // 输出解调后的数字信号
endmodule
