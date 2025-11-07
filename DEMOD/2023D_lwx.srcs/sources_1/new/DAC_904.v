`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Wenxuan Lu
// 
// Create Date: 2025/11/05 19:14:16
// Design Name: 
// Module Name: DAC_904
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module DAC_904(
    input  wire        DAC_clk,        // 来自 Clocking Wizard
    input  wire        aresetn,        // 来自 proc_sys_reset
    input  wire [15:0] data_tc16,      // xlslice 抽出的 14 位 Two's Complement
    output wire [13:0] dac_data,       // 到 DAC904 D13..D0
    output wire        dac_clk_out     // 到 DAC904 CLK
);

  reg signed [15:0] data_tc16_reg;
  reg signed [13:0] data_ob;

  always @(posedge DAC_clk) begin
    if (!aresetn) begin 
        data_ob <= 14'h2000;
        data_tc16_reg <= 16'sd0 ;
    end
    else  begin
        data_tc16_reg <= data_tc16;
        data_ob <= (data_tc16_reg[15:2]) * 10 + 14'd8192; // 防止底部被削
    end        
  end

  // 2) 末级寄存，靠近 IO 提升时序裕量
  reg [13:0] data_q;
  always @(posedge DAC_clk) begin
    if (!aresetn) data_q <= 14'h2000;
    else          data_q <= data_ob;
  end
  assign dac_data = data_q;

  // 3) ODDR 前向时钟（SAME_EDGE）
  ODDR #(.DDR_CLK_EDGE("SAME_EDGE")) u_oddr_clk (
    .Q (dac_clk_out),
    .C (DAC_clk),
    .CE(1'b1),
    .D1(1'b1),
    .D2(1'b0),
    .R (!aresetn),
    .S (1'b0)
  );
endmodule
