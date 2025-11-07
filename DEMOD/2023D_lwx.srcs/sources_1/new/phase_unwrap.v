`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// 模块: phase_unwrap
// 功能: 对输入的包裹相位进行解包裹，输出连续累积的相位。
//       支持流水线操作 (tvalid 接口)。
//////////////////////////////////////////////////////////////////////////////////

module phase_unwrap (
    input wire clk,
    input wire reset_n,
    
    input wire               phase_in_tvalid,
    input wire signed [15:0] phase_in,      // 输入相位, Q3.13格式

    output reg               unwrapped_phase_tvalid,
    output reg signed [31:0] unwrapped_phase
);

    // --- 内部状态寄存器 ---
    reg signed [15:0] prev_phase;      // 存储上一个有效相位

    // --- 组合逻辑部分 ---
    // 这部分描述了如何根据当前输入和前一拍的状态，计算出下一拍的状态
    
    // 1. 计算相位差
    wire signed [16:0] phase_diff = phase_in - prev_phase;
    
    // 2. 将相位差转到Q16.16格式
    wire signed [31:0] phase_diff_scaled = phase_diff << 3;
    
    // 3. 解包裹逻辑，计算出累加器的下一个值
    wire signed [31:0] next_unwrapped_phase;
    assign next_unwrapped_phase = (phase_diff > 16'sd25736) ? (unwrapped_phase + phase_diff_scaled - 32'sd411775) :
                                  (phase_diff < -16'sd25736) ? (unwrapped_phase + phase_diff_scaled + 32'sd411775) :
                                                               (unwrapped_phase + phase_diff_scaled);

    // --- 时序逻辑部分 ---
    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            // 复位所有状态寄存器
            prev_phase             <= 0;
            unwrapped_phase        <= 0;
            unwrapped_phase_tvalid <= 1'b0;
        end else begin
            // 传递 tvalid 信号
            unwrapped_phase_tvalid <= phase_in_tvalid;

            // 仅在输入有效时，才更新所有状态
            if (phase_in_tvalid) begin
                unwrapped_phase <= next_unwrapped_phase; // 使用组合逻辑计算好的结果
                prev_phase      <= phase_in;
            end
        end
    end
endmodule