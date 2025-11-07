`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// 模块: clk_divider
// 功能: 生成一个单周期有效的时钟使能脉冲 (sample_clk)。 
//       采用标准、稳健的设计。 
//////////////////////////////////////////////////////////////////////////////////

module clk_divider #(
	parameter FRE_DIV = 250
)(
    input clk,
    input rst_n,
    output wire sample_clk
);

    // 位宽应足以计到 FRE_DIV
    localparam COUNT_WIDTH = $clog2(FRE_DIV);
    reg [COUNT_WIDTH-1:0] clk_div; // 分频计数器

    // --- 时序逻辑: 纯粹的计数器 ---
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            clk_div <= 0;
        end else begin 
            // 当计数器达到最大值时，复位为0；否则加1
            if (clk_div == FRE_DIV-1) begin
                clk_div <= 0;
            end else begin
                clk_div <= clk_div + 1;
            end
        end
    end

    // --- 组合逻辑: 脉冲生成 ---
    assign sample_clk = (clk_div == FRE_DIV - 1);

endmodule