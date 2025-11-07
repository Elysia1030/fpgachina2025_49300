`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Wenxuan Lu
// ...
// Description: 相位差分模块
//              对连续相位做一阶差分，得到瞬时频率。
//              由 tvalid 信号驱动，用于多速率系统。
// 
//////////////////////////////////////////////////////////////////////////////////
module phase_differentiator (
    input wire clk,
    input wire reset_n,
    
    input wire               unwrapped_phase_tvalid, // 输入数据有效标志
    input wire signed [31:0] unwrapped_phase,      // 输入: 连续相位, Q16.16
    
    output reg               frequency_out_tvalid,   // 输出数据有效标志
    output reg signed [31:0] frequency_out         // 输出: 瞬时频率, Q16.16
);

    // 只需要一个寄存器来存储前一个周期的有效相位值
    reg signed [31:0] prev_unwrapped_phase;

    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            prev_unwrapped_phase <= 0;
            frequency_out        <= 0;
            frequency_out_tvalid <= 1'b0;
        end else begin
            // 输出 tvalid 是输入 tvalid 的延迟一拍
            frequency_out_tvalid <= unwrapped_phase_tvalid;

            // 仅在输入数据有效时，才执行计算和状态更新
            if (unwrapped_phase_tvalid) begin
                // 核心逻辑: 当前值减去上一有效值
                frequency_out <= unwrapped_phase - prev_unwrapped_phase;
                
                // 更新状态，为下一次计算做准备
                prev_unwrapped_phase <= unwrapped_phase;
            end
        end
    end
endmodule