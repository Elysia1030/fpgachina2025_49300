// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Thu Nov  6 16:33:13 2025
// Host        : ubuntu running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/elysia/Software/Xilinx/Project/11-6/2023D_lwx.gen/sources_1/bd/design_1/ip/design_1_ADC_3PA1030_0_1/design_1_ADC_3PA1030_0_1_sim_netlist.v
// Design      : design_1_ADC_3PA1030_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_ADC_3PA1030_0_1,ADC_3PA1030,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "ADC_3PA1030,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module design_1_ADC_3PA1030_0_1
   (clk,
    aresetn,
    i_adc_data,
    o_adc_clk,
    o_adc_data);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  input [9:0]i_adc_data;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 o_adc_clk CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME o_adc_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_ADC_3PA1030_0_1_o_adc_clk, INSERT_VIP 0" *) output o_adc_clk;
  output [15:0]o_adc_data;

  wire \<const0> ;
  wire aresetn;
  wire clk;
  wire [9:0]i_adc_data;
  wire o_adc_clk;
  wire [15:6]\^o_adc_data ;

  assign o_adc_data[15:6] = \^o_adc_data [15:6];
  assign o_adc_data[5] = \<const0> ;
  assign o_adc_data[4] = \<const0> ;
  assign o_adc_data[3] = \<const0> ;
  assign o_adc_data[2] = \<const0> ;
  assign o_adc_data[1] = \<const0> ;
  assign o_adc_data[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_ADC_3PA1030_0_1_ADC_3PA1030 inst
       (.aresetn(aresetn),
        .clk(clk),
        .i_adc_data(i_adc_data),
        .o_adc_data(\^o_adc_data ));
  LUT1 #(
    .INIT(2'h1)) 
    o_adc_clk_INST_0
       (.I0(clk),
        .O(o_adc_clk));
endmodule

(* ORIG_REF_NAME = "ADC_3PA1030" *) 
module design_1_ADC_3PA1030_0_1_ADC_3PA1030
   (o_adc_data,
    aresetn,
    i_adc_data,
    clk);
  output [9:0]o_adc_data;
  input aresetn;
  input [9:0]i_adc_data;
  input clk;

  wire aresetn;
  wire clk;
  wire [9:0]i_adc_data;
  wire [9:0]o_adc_data;
  wire [9:0]r_adc_data_d1;
  wire \r_data_out_q[15]_i_2_n_0 ;
  wire [9:9]w_offset_corrected;

  FDCE \r_adc_data_d1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\r_data_out_q[15]_i_2_n_0 ),
        .D(i_adc_data[0]),
        .Q(r_adc_data_d1[0]));
  FDCE \r_adc_data_d1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\r_data_out_q[15]_i_2_n_0 ),
        .D(i_adc_data[1]),
        .Q(r_adc_data_d1[1]));
  FDCE \r_adc_data_d1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\r_data_out_q[15]_i_2_n_0 ),
        .D(i_adc_data[2]),
        .Q(r_adc_data_d1[2]));
  FDCE \r_adc_data_d1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\r_data_out_q[15]_i_2_n_0 ),
        .D(i_adc_data[3]),
        .Q(r_adc_data_d1[3]));
  FDCE \r_adc_data_d1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\r_data_out_q[15]_i_2_n_0 ),
        .D(i_adc_data[4]),
        .Q(r_adc_data_d1[4]));
  FDCE \r_adc_data_d1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\r_data_out_q[15]_i_2_n_0 ),
        .D(i_adc_data[5]),
        .Q(r_adc_data_d1[5]));
  FDCE \r_adc_data_d1_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\r_data_out_q[15]_i_2_n_0 ),
        .D(i_adc_data[6]),
        .Q(r_adc_data_d1[6]));
  FDCE \r_adc_data_d1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\r_data_out_q[15]_i_2_n_0 ),
        .D(i_adc_data[7]),
        .Q(r_adc_data_d1[7]));
  FDCE \r_adc_data_d1_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\r_data_out_q[15]_i_2_n_0 ),
        .D(i_adc_data[8]),
        .Q(r_adc_data_d1[8]));
  FDCE \r_adc_data_d1_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\r_data_out_q[15]_i_2_n_0 ),
        .D(i_adc_data[9]),
        .Q(r_adc_data_d1[9]));
  LUT1 #(
    .INIT(2'h1)) 
    \r_data_out_q[15]_i_1 
       (.I0(r_adc_data_d1[9]),
        .O(w_offset_corrected));
  LUT1 #(
    .INIT(2'h1)) 
    \r_data_out_q[15]_i_2 
       (.I0(aresetn),
        .O(\r_data_out_q[15]_i_2_n_0 ));
  FDCE \r_data_out_q_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\r_data_out_q[15]_i_2_n_0 ),
        .D(r_adc_data_d1[4]),
        .Q(o_adc_data[4]));
  FDCE \r_data_out_q_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\r_data_out_q[15]_i_2_n_0 ),
        .D(r_adc_data_d1[5]),
        .Q(o_adc_data[5]));
  FDCE \r_data_out_q_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\r_data_out_q[15]_i_2_n_0 ),
        .D(r_adc_data_d1[6]),
        .Q(o_adc_data[6]));
  FDCE \r_data_out_q_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\r_data_out_q[15]_i_2_n_0 ),
        .D(r_adc_data_d1[7]),
        .Q(o_adc_data[7]));
  FDCE \r_data_out_q_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\r_data_out_q[15]_i_2_n_0 ),
        .D(r_adc_data_d1[8]),
        .Q(o_adc_data[8]));
  FDCE \r_data_out_q_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\r_data_out_q[15]_i_2_n_0 ),
        .D(w_offset_corrected),
        .Q(o_adc_data[9]));
  FDCE \r_data_out_q_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\r_data_out_q[15]_i_2_n_0 ),
        .D(r_adc_data_d1[0]),
        .Q(o_adc_data[0]));
  FDCE \r_data_out_q_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\r_data_out_q[15]_i_2_n_0 ),
        .D(r_adc_data_d1[1]),
        .Q(o_adc_data[1]));
  FDCE \r_data_out_q_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\r_data_out_q[15]_i_2_n_0 ),
        .D(r_adc_data_d1[2]),
        .Q(o_adc_data[2]));
  FDCE \r_data_out_q_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\r_data_out_q[15]_i_2_n_0 ),
        .D(r_adc_data_d1[3]),
        .Q(o_adc_data[3]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
