`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/10/12
// Design Name: ADC_3PA1030
// Module Name: ADC_3PA1030
// Description: 
//   ADC 数据预处理模块。
//   - 功能: 将输入的10位偏移二进制码 (Offset Binary) 转换为16位补码 (Two's Complement)，
//           并进行满量程线性映射。
//   - 转换关系:
//     - 输入 0      (对应模拟负满幅) -> 输出 -32768
//     - 输入 512    (对应模拟零电平) -> 输出 0
//     - 输入 1023   (对应模拟正满幅) -> 输出 +32704
//
//////////////////////////////////////////////////////////////////////////////////

module ADC_3PA1030 #(
    parameter integer ADC_BITS = 10,  // 原始 ADC 位宽
    parameter integer OUT_BITS = 16   // 目标输出位宽
)(
    input  wire                  clk,           // 系统时钟
    input  wire                  aresetn,       // 异步复位 (低有效)
    
    input  wire [ADC_BITS-1:0]   i_adc_data,    // ADC 原始数据 (偏移二进制码)
    
    output wire o_adc_clk,

    output wire signed [OUT_BITS-1:0] o_adc_data     // 转换后的16位补码数据
    
);
    // 中间信号定义
    reg  [ADC_BITS-1:0]        r_adc_data_d1;     // 输入数据寄存 (打一拍)
    wire signed [ADC_BITS-1:0] w_offset_corrected;  // 减去偏置后的10位有符号数
    wire signed [OUT_BITS-1:0] w_scaled_output;   // 量程映射后的16位有符号数
    reg  signed [OUT_BITS-1:0] r_data_out_q;      // 最终输出寄存器
    

    // 1. 同步输入数据 (打一拍)
    always @(posedge clk or negedge aresetn) begin
        if (!aresetn) begin
            r_adc_data_d1 <= {ADC_BITS{1'b0}};
        end else begin
            r_adc_data_d1 <= i_adc_data;
        end
    end

    // 2. 偏移校正: 从偏移二进制码转换为补码
    assign w_offset_corrected = r_adc_data_d1 - (1 << (ADC_BITS-1));

    // 3. 量程映射: 从10位有符号数扩展到16位有符号数
    assign w_scaled_output = w_offset_corrected <<< (OUT_BITS - ADC_BITS);

    // 4. 寄存输出
    always @(posedge clk or negedge aresetn) begin
        if (!aresetn) begin
            r_data_out_q <= {OUT_BITS{1'b0}};
        end else begin
            r_data_out_q <= w_scaled_output;
        end
    end

    //    将内部寄存器的值连接到模块的输出端口
    assign o_adc_data = r_data_out_q;
    assign o_adc_clk = ~clk;

endmodule