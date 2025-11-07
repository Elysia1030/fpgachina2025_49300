`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Wenxuan Lu
// 
// Create Date: 2025/10/25 20:47:42
// Design Name: 
// Module Name: FSK_DM
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: FSK解调模块
//              使用IQ解调、相位解包装和相位差分实现FSK信号的解调
//              包含：IQ生成、相位计算、相位解包装、相位差分和低通滤波
// 
// Dependencies: IQ_generate.v, cordic_atan4.v, phase_unwrap.v
//              phase_differentiator.v, fir_lpf_fsk.v, signed_unsigned_converter.v
// 
// Revision:
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////


module FSK_DM (
    input         rst_n,       // 低电平有效的复位信号
    input         clk,         // 系统时钟
    input         iq_tvalid,
    input  [31:0] fm_data_in,  // IQ基带信号输入,Q高位
    output [15:0] fm_data_out  // 解调后的数字信号输出
);


  // 内部信号定义
  wire dout_tvalid;
  wire unwrapped_phase_tvalid;
  wire demod_tvalid;
  wire signed [15:0] dout;  // CORDIC计算的相位输出
  wire signed [31:0] unwrapped_phase_out;  // 解包装后的相位
  wire signed [31:0] demod_out;  // 相位差分后的解调信号
  wire signed [15:0] FM_demod_out_signed;  // 滤波后的有符号输出

  // CORDIC算法实现arctan(Q/I)计算相位
  cordic_atan4 cordic_atan4_inst (
      .aclk                   (clk),          // 系统时钟
      .s_axis_cartesian_tvalid(iq_tvalid),    // 输入数据有效标志
      .s_axis_cartesian_tdata (fm_data_in),   // Q和I分量组合输入，Q在高位
      .m_axis_dout_tvalid     (dout_tvalid),  // 输出数据有效标志
      .m_axis_dout_tdata      (dout)          // 计算得到的相位值
  );

  /*
        相位解缠绕模块：
        处理由于相位计算结果被限制在 [-π, π] 范围内导致的相位跳变
        将离散的相位值转换为连续的相位变化，便于后续差分处理
    */
  phase_unwrap phase_unwrap_inst (
      .clk                   (clk),                     // 系统时钟
      .reset_n               (rst_n),                   // 低电平有效的复位信号
      .phase_in_tvalid       (dout_tvalid),             // 输入有效位
      .phase_in              (dout),                    // 输入相位，Q3.13格式
      .unwrapped_phase_tvalid(unwrapped_phase_tvalid),  // 输出有效标志
      .unwrapped_phase       (unwrapped_phase_out)      // 解包装后的相位，Q16.16格式
  );

  /*
        相位差分模块：
        计算相邻采样点间的相位变化率（即瞬时频率）
        相位差分结果反映了FSK信号的频率变化，即解调后的数字信息
    */
  phase_differentiator phase_differentiator_inst (
      .clk                   (clk),                     // 系统时钟
      .reset_n               (rst_n),                   // 低电平有效的复位信号
      .unwrapped_phase_tvalid(unwrapped_phase_tvalid),
      .unwrapped_phase       (unwrapped_phase_out),     // 输入连续相位，Q16.16格式
      .frequency_out_tvalid  (demod_tvalid),
      .frequency_out         (demod_out)                // 输出瞬时频率，Q16.16格式
  );

  // 数据位宽调整与滤波处理
  wire [15:0] valid_16bit;
  assign valid_16bit = demod_out[18:3];  // 提取16位有效数据


  wire [34:0] m_axis_data_tdata;

  // 低通滤波器用于平滑解调信号
  fir_lpf_fsk fir_lpf_fsk_inst (
      .aclk              (clk),               // 系统时钟
      .s_axis_data_tvalid(demod_tvalid),
      .s_axis_data_tready(),                  // 滤波器准备就绪信号
      .s_axis_data_tdata (valid_16bit),       // 输入待滤波数据
      .m_axis_data_tvalid(),                  // 输出数据有效信号
      .m_axis_data_tdata (m_axis_data_tdata)  // 滤波后的输出数据
  );

  assign fm_data_out = m_axis_data_tdata[34:19];  // 提取16位有效数据

endmodule
