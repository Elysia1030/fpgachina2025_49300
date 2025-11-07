`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Wenxuan Lu
// ...
// Description: ASK解调模块  
// 
// Revision:
// Revision 1.00 - Corrected dataflow control and stream handshake.
//
//////////////////////////////////////////////////////////////////////////////////


module ASK_DM (
    input         rst_n,       // 低电平有效的复位信号
    input         clk,         // 系统时钟
    input         iq_tvalid,
    input  [31:0] am_data_in,  // IQ基带信号输入,Q高位
    //output        am_valid,
    output [15:0] am_data_out  // 解调后的包络信号

);

  wire [31:0] cordic_ask_out;
 
  cordic_ask cordic_ask_inst (
      .aclk                   (clk),                 // input wire aclk
      .aresetn                (rst_n),
      .s_axis_cartesian_tvalid(iq_tvalid),           // input wire s_axis_cartesian_tvalid
      .s_axis_cartesian_tdata (am_data_in),          // input wire [31 : 0] s_axis_cartesian_tdata
      .m_axis_dout_tvalid     (),                   // output wire m_axis_dout_tvalid
      .m_axis_dout_tdata      (cordic_ask_out)          // output wire [31 : 0] m_axis_dout_tdata
  );

  assign am_data_out =  cordic_ask_out[15:0];

endmodule
