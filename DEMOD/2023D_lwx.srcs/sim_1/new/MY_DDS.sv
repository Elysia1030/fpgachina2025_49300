`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/10/11 22:01:50
// Design Name: 
// Module Name: MY_DDS
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 数字直接频率合成器（DDS）模块
//              生成正弦波数据，支持相位累加和相位偏移
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module MY_DDS #(
    parameter DATA_WIDTH = 16,
    parameter PHASE_WIDTH = 16
    )(
        input logic resetn,                         // 低电平有效复位
        input logic clk,                            // 时钟输入
        input logic clk_en,                         // 时钟使能，高电平时更新
        input logic [PHASE_WIDTH - 1:0] phase_acc,  // 相位累加增量（相位步长）
        input logic [PHASE_WIDTH - 1:0] phase_diff, // 相位偏移（用于产生相位移/调相）
        output logic signed [DATA_WIDTH - 1:0] data_o // 正弦波输出数据

    );

    localparam int LENGTH = 2 ** PHASE_WIDTH;
    localparam real PI = 3.141592653589793;

    logic [PHASE_WIDTH - 1:0] phase;             // 相位累加器（当前相位索引）

    // 正弦波查找表（LUT）
    logic signed [DATA_WIDTH - 1:0] sin_table [0:LENGTH - 1];

    // 初始化查找表：根据长度生成 [-1,1) 区间的正弦采样，映射到 DATA_WIDTH 位范围
    initial begin
        for (int i = 0; i < LENGTH; i ++) begin
            real value;
            value = $sin(2.0 * PI * i / LENGTH);
            sin_table[i] = value * ((2.0 ** (DATA_WIDTH - 1)) - 1);
        end
    end

    // 相位累加器：在使能时按相位步长累加
    always_ff @( posedge clk or negedge resetn) begin 
       if (!resetn) phase <= '0;
       else if (clk_en) phase <= phase + phase_acc; 
    end

    // 输出逻辑：根据相位和相位偏移从 LUT 取样输出正弦值
    always_ff @(posedge clk or negedge resetn) begin 
        if (!resetn) data_o <= '0;
        else if (clk_en) data_o <= sin_table[phase + phase_diff];
    end
endmodule
