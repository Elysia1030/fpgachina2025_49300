`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/04 18:57:47
// Module Name: data_select (带FM增益版)
// Description: 
//   - 根据 SELE 信号选择 AM, FM, PSK 或 CW (零) 输出。
//   - 当选择 FM 信号时，对其应用一个固定的25倍增益。
//   - 对乘法结果进行饱和处理，以防止溢出。
//////////////////////////////////////////////////////////////////////////////////


module data_select(
    input clk,
    input rst_n,
    input [15:0] SELE,
    input signed [15:0] AM_data,
    input signed [15:0] FM_data,
    input signed [15:0] PSK_data,
    output reg signed [15:0] DAC_data
    );
    
    // --- 内部信号与常量声明 ---
    
    // 乘法结果需要足够的位宽来防止中间过程溢出
    // 16位有符号数 * 25 (需要5位表示) => 结果需要 16 + 5 = 21 位
    wire signed [20:0] fm_multiplied_result;

    // --- 定义用于饱和处理的常量 ---
    // 16位补码的最大值: 2^(15)-1 = 32767
    localparam SIGNED_MAX_16B = 16'sd32767; 
    // 16位补码的最小值: -2^(15) = -32768
    localparam SIGNED_MIN_16B = -16'sd32768;


    // --- 逻辑实现 ---

    // 首先执行乘法，这是一个组合逻辑
    // 将FM_data乘以25，结果赋给一个足够宽的wire
    assign fm_multiplied_result = FM_data * 25;

    // 主选择逻辑，在时钟上升沿更新输出
    always @(posedge clk) begin
        if(!rst_n) begin
            DAC_data <= 16'sd0;
        end
        else begin
            case (SELE)
                // Case 1: 选择 CW (零信号)
                16'h0000: DAC_data <= 16'sd0;

                // Case 2: 选择 AM 信号 (直接透传)
                16'h0001: DAC_data <= AM_data;

                // Case 3: 选择 FM 信号 (乘以25并进行饱和处理)
                16'h0010: begin
                    // 检查乘法结果是否超出了16位有符号数的范围
                    if (fm_multiplied_result > SIGNED_MAX_16B) begin
                        DAC_data <= SIGNED_MAX_16B; // 大于最大值，钳位在最大值
                    end else if (fm_multiplied_result < SIGNED_MIN_16B) begin
                        DAC_data <= SIGNED_MIN_16B; // 小于最小值，钳位在最小值
                    end else begin
                        DAC_data <= fm_multiplied_result[15:0]; // 未溢出，截取低16位
                    end
                end

                // Case 4: 选择 PSK 信号 (直接透传)
                16'h0011: DAC_data <= PSK_data;
                
                // Default Case: 默认输出 AM_data (可以根据需要修改)
                default: DAC_data <= AM_data;
            endcase
        end
    end

endmodule