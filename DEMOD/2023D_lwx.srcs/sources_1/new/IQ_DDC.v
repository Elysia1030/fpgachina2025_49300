`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Wenxuan Lu
// 
// Create Date: 2025/03/20 17:13:06
// Design Name: 
// Module Name: IQ_generate
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: IQ信号生成模块 (CIC滤波器版)
//              通过数字下变频(DDC)实现信号的IQ分量提取。
//              - 使用一个频率固定的NCO作为本地振荡器。
//              - 使用CIC滤波器进行高效的抗混叠滤波和降采样。
// 
// Dependencies: cic_compiler_0.xci (您配置好的CIC IP核)
// 
// Revision:
// Revision 3.00 - Replaced FIR LPF with a CIC Compiler for decimation and anti-aliasing.
//
/////////////////////////////////////////////////////////////////////////////////


module IQ_DDC (
    input wire clk,                    // 系统时钟 (50MHz)
    input wire rst_n,                  // 低电平有效的异步复位信号
    input signed [15:0] iq_data_in,    // 输入的中频信号，16位有符号数
    output wire iq_tvalid,
    output signed [15:0] i_band, // I路滤波后的基带信号
    output signed [15:0] q_band  // Q路滤波后的基带信号
);

    // --- 模块参数定义 ---
    parameter [31:0] PHASE_INC = 32'd171_798_692; //2M

    // --- 内部信号定义 ---
    reg  [31:0]               phase_accumulator = 32'd0;
    wire signed [15:0]        sine_wave;
    wire signed [15:0]        cosine_wave;
    wire signed [31:0]        i_mixer;
    wire signed [31:0]        q_mixer;
    
    // CIC 滤波器接口信号
    wire                      cic_ready_i, cic_ready_q;
    wire                      cic_valid_i, cic_valid_q;
    wire signed [31:0]        cic_out_i, cic_out_q;

    // --- NCO正弦/余弦查找表 ---
    reg signed [15:0] sine_lut [0:255];
    reg signed [15:0] cosine_lut [0:255];
    integer i;
    initial begin
        for (i = 0; i < 256; i = i + 1) begin
            sine_lut[i]   = -32767 * $sin(2 * 3.1415926 * i / 256);
            cosine_lut[i] = 32767 * $cos(2 * 3.1415926 * i / 256);
        end
    end

    // --- NCO (数字控制振荡器) 逻辑 ---
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            phase_accumulator <= 32'd0;
        else
            phase_accumulator <= phase_accumulator + PHASE_INC;
    end
    
    assign sine_wave   = sine_lut[phase_accumulator[31:24]];
    assign cosine_wave = cosine_lut[phase_accumulator[31:24]];
    
    // --- 混频器逻辑 ---
    assign i_mixer = iq_data_in * cosine_wave;
    assign q_mixer = iq_data_in * sine_wave;

    // --- I路与Q路CIC低通滤波器 ---
    
    cic_compiler_iq cic_inst_i (
      .aclk(clk),                              // input wire aclk
      .aresetn(rst_n), 
      .s_axis_data_tdata(i_mixer),    // input wire [31 : 0] s_axis_data_tdata
      .s_axis_data_tvalid(1'b1),  // input wire s_axis_data_tvalid
      .s_axis_data_tready(cic_ready_i),  // output wire s_axis_data_tready
      .m_axis_data_tdata(cic_out_i),    // output wire [31 : 0] m_axis_data_tdata
      .m_axis_data_tvalid(cic_valid_i)  // output wire m_axis_data_tvalid
    );
    
    cic_compiler_iq cic_inst_q (
      .aclk(clk),                              // input wire aclk
      .aresetn(rst_n), 
      .s_axis_data_tdata(q_mixer),    // input wire [31 : 0] s_axis_data_tdata
      .s_axis_data_tvalid(1'b1),  // input wire s_axis_data_tvalid
      .s_axis_data_tready(cic_ready_q),  // output wire s_axis_data_tready
      .m_axis_data_tdata(cic_out_q),    // output wire [31 : 0] m_axis_data_tdata
      .m_axis_data_tvalid(cic_valid_q)  // output wire m_axis_data_tvalid
    );

    
    // --- 模块最终输出 ---
    // 使用CIC输出的 tvalid 信号作为时钟使能，来锁存低速数据
    reg signed [15:0] r_out_i;
    reg signed [15:0] r_out_q;
    

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            r_out_i <= 0;
            r_out_q <= 0;
        end else begin
            // 只有当CIC输出有效数据时，才更新输出寄存器
            if (cic_valid_i) begin
                r_out_i <= cic_out_i[31:16];
            end
            if (cic_valid_q) begin
                r_out_q <= cic_out_q[31:16];
            end
        end
    end

    assign iq_tvalid = cic_valid_i;
    assign i_band = r_out_i;
    assign q_band = r_out_q;

endmodule