// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Fri Nov  7 16:36:36 2025
// Host        : ubuntu running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/elysia/Software/Xilinx/Project/11-6V3/2023D_lwx.gen/sources_1/bd/design_1/ip/design_1_DAC_904_0_0/design_1_DAC_904_0_0_sim_netlist.v
// Design      : design_1_DAC_904_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_DAC_904_0_0,DAC_904,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "DAC_904,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module design_1_DAC_904_0_0
   (DAC_clk,
    aresetn,
    data_tc16,
    dac_data,
    dac_clk_out);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 DAC_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DAC_clk, ASSOCIATED_RESET aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0" *) input DAC_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  input [15:0]data_tc16;
  output [13:0]dac_data;
  output dac_clk_out;

  wire \<const0> ;
  wire DAC_clk;
  wire aresetn;
  wire dac_clk_out;
  wire [13:1]\^dac_data ;
  wire [15:0]data_tc16;

  assign dac_data[13:1] = \^dac_data [13:1];
  assign dac_data[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_DAC_904_0_0_DAC_904 inst
       (.DAC_clk(DAC_clk),
        .aresetn(aresetn),
        .dac_clk_out(dac_clk_out),
        .dac_data(\^dac_data ),
        .data_tc16(data_tc16[14:2]));
endmodule

(* ORIG_REF_NAME = "DAC_904" *) 
module design_1_DAC_904_0_0_DAC_904
   (dac_clk_out,
    dac_data,
    DAC_clk,
    data_tc16,
    aresetn);
  output dac_clk_out;
  output [12:0]dac_data;
  input DAC_clk;
  input [12:0]data_tc16;
  input aresetn;

  wire DAC_clk;
  wire aresetn;
  wire dac_clk_out;
  wire [12:0]dac_data;
  wire [13:1]data_ob;
  wire [13:13]data_ob0;
  wire data_ob0__0_n_0;
  wire data_ob0__10_n_0;
  wire data_ob0__11_n_0;
  wire data_ob0__12_n_0;
  wire data_ob0__1_n_0;
  wire data_ob0__2_n_0;
  wire data_ob0__3_n_0;
  wire data_ob0__4_n_0;
  wire data_ob0__5_n_0;
  wire data_ob0__6_n_0;
  wire data_ob0__7_n_0;
  wire data_ob0__8_n_0;
  wire data_ob0__9_n_0;
  wire [12:2]data_ob1;
  wire [13:13]data_ob1__0;
  wire data_ob1_carry__0_i_1_n_0;
  wire data_ob1_carry__0_i_2_n_0;
  wire data_ob1_carry__0_i_3_n_0;
  wire data_ob1_carry__0_i_4_n_0;
  wire data_ob1_carry__0_n_0;
  wire data_ob1_carry__0_n_1;
  wire data_ob1_carry__0_n_2;
  wire data_ob1_carry__0_n_3;
  wire data_ob1_carry__1_i_1_n_0;
  wire data_ob1_carry__1_i_2_n_0;
  wire data_ob1_carry__1_i_3_n_0;
  wire data_ob1_carry__1_i_4_n_0;
  wire data_ob1_carry__1_n_1;
  wire data_ob1_carry__1_n_2;
  wire data_ob1_carry__1_n_3;
  wire data_ob1_carry_i_1_n_0;
  wire data_ob1_carry_i_2_n_0;
  wire data_ob1_carry_i_3_n_0;
  wire data_ob1_carry_n_0;
  wire data_ob1_carry_n_1;
  wire data_ob1_carry_n_2;
  wire data_ob1_carry_n_3;
  wire [12:0]data_tc16;
  wire p_0_in;
  wire [3:3]NLW_data_ob1_carry__1_CO_UNCONNECTED;
  wire NLW_u_oddr_clk_S_UNCONNECTED;

  FDRE data_ob0__0
       (.C(DAC_clk),
        .CE(1'b1),
        .D(data_tc16[12]),
        .Q(data_ob0__0_n_0),
        .R(p_0_in));
  FDRE data_ob0__1
       (.C(DAC_clk),
        .CE(1'b1),
        .D(data_tc16[11]),
        .Q(data_ob0__1_n_0),
        .R(p_0_in));
  FDRE data_ob0__10
       (.C(DAC_clk),
        .CE(1'b1),
        .D(data_tc16[2]),
        .Q(data_ob0__10_n_0),
        .R(p_0_in));
  FDRE data_ob0__11
       (.C(DAC_clk),
        .CE(1'b1),
        .D(data_tc16[1]),
        .Q(data_ob0__11_n_0),
        .R(p_0_in));
  FDRE data_ob0__12
       (.C(DAC_clk),
        .CE(1'b1),
        .D(data_tc16[0]),
        .Q(data_ob0__12_n_0),
        .R(p_0_in));
  FDRE data_ob0__2
       (.C(DAC_clk),
        .CE(1'b1),
        .D(data_tc16[10]),
        .Q(data_ob0__2_n_0),
        .R(p_0_in));
  FDRE data_ob0__3
       (.C(DAC_clk),
        .CE(1'b1),
        .D(data_tc16[9]),
        .Q(data_ob0__3_n_0),
        .R(p_0_in));
  FDRE data_ob0__4
       (.C(DAC_clk),
        .CE(1'b1),
        .D(data_tc16[8]),
        .Q(data_ob0__4_n_0),
        .R(p_0_in));
  FDRE data_ob0__5
       (.C(DAC_clk),
        .CE(1'b1),
        .D(data_tc16[7]),
        .Q(data_ob0__5_n_0),
        .R(p_0_in));
  FDRE data_ob0__6
       (.C(DAC_clk),
        .CE(1'b1),
        .D(data_tc16[6]),
        .Q(data_ob0__6_n_0),
        .R(p_0_in));
  FDRE data_ob0__7
       (.C(DAC_clk),
        .CE(1'b1),
        .D(data_tc16[5]),
        .Q(data_ob0__7_n_0),
        .R(p_0_in));
  FDRE data_ob0__8
       (.C(DAC_clk),
        .CE(1'b1),
        .D(data_tc16[4]),
        .Q(data_ob0__8_n_0),
        .R(p_0_in));
  FDRE data_ob0__9
       (.C(DAC_clk),
        .CE(1'b1),
        .D(data_tc16[3]),
        .Q(data_ob0__9_n_0),
        .R(p_0_in));
  CARRY4 data_ob1_carry
       (.CI(1'b0),
        .CO({data_ob1_carry_n_0,data_ob1_carry_n_1,data_ob1_carry_n_2,data_ob1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({data_ob0__8_n_0,data_ob0__9_n_0,data_ob0__10_n_0,1'b0}),
        .O(data_ob1[5:2]),
        .S({data_ob1_carry_i_1_n_0,data_ob1_carry_i_2_n_0,data_ob1_carry_i_3_n_0,data_ob0__11_n_0}));
  CARRY4 data_ob1_carry__0
       (.CI(data_ob1_carry_n_0),
        .CO({data_ob1_carry__0_n_0,data_ob1_carry__0_n_1,data_ob1_carry__0_n_2,data_ob1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({data_ob0__4_n_0,data_ob0__5_n_0,data_ob0__6_n_0,data_ob0__7_n_0}),
        .O(data_ob1[9:6]),
        .S({data_ob1_carry__0_i_1_n_0,data_ob1_carry__0_i_2_n_0,data_ob1_carry__0_i_3_n_0,data_ob1_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    data_ob1_carry__0_i_1
       (.I0(data_ob0__4_n_0),
        .I1(data_ob0__6_n_0),
        .O(data_ob1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_ob1_carry__0_i_2
       (.I0(data_ob0__5_n_0),
        .I1(data_ob0__7_n_0),
        .O(data_ob1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_ob1_carry__0_i_3
       (.I0(data_ob0__6_n_0),
        .I1(data_ob0__8_n_0),
        .O(data_ob1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_ob1_carry__0_i_4
       (.I0(data_ob0__7_n_0),
        .I1(data_ob0__9_n_0),
        .O(data_ob1_carry__0_i_4_n_0));
  CARRY4 data_ob1_carry__1
       (.CI(data_ob1_carry__0_n_0),
        .CO({NLW_data_ob1_carry__1_CO_UNCONNECTED[3],data_ob1_carry__1_n_1,data_ob1_carry__1_n_2,data_ob1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,data_ob0__1_n_0,data_ob0__2_n_0,data_ob0__3_n_0}),
        .O({data_ob1__0,data_ob1[12:10]}),
        .S({data_ob1_carry__1_i_1_n_0,data_ob1_carry__1_i_2_n_0,data_ob1_carry__1_i_3_n_0,data_ob1_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    data_ob1_carry__1_i_1
       (.I0(data_ob0__0_n_0),
        .I1(data_ob0__2_n_0),
        .O(data_ob1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_ob1_carry__1_i_2
       (.I0(data_ob0__1_n_0),
        .I1(data_ob0__3_n_0),
        .O(data_ob1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_ob1_carry__1_i_3
       (.I0(data_ob0__2_n_0),
        .I1(data_ob0__4_n_0),
        .O(data_ob1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_ob1_carry__1_i_4
       (.I0(data_ob0__3_n_0),
        .I1(data_ob0__5_n_0),
        .O(data_ob1_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_ob1_carry_i_1
       (.I0(data_ob0__8_n_0),
        .I1(data_ob0__10_n_0),
        .O(data_ob1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_ob1_carry_i_2
       (.I0(data_ob0__9_n_0),
        .I1(data_ob0__11_n_0),
        .O(data_ob1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_ob1_carry_i_3
       (.I0(data_ob0__10_n_0),
        .I1(data_ob0__12_n_0),
        .O(data_ob1_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \data_ob[13]_i_1 
       (.I0(data_ob1__0),
        .O(data_ob0));
  FDRE \data_ob_reg[10] 
       (.C(DAC_clk),
        .CE(1'b1),
        .D(data_ob1[10]),
        .Q(data_ob[10]),
        .R(p_0_in));
  FDRE \data_ob_reg[11] 
       (.C(DAC_clk),
        .CE(1'b1),
        .D(data_ob1[11]),
        .Q(data_ob[11]),
        .R(p_0_in));
  FDRE \data_ob_reg[12] 
       (.C(DAC_clk),
        .CE(1'b1),
        .D(data_ob1[12]),
        .Q(data_ob[12]),
        .R(p_0_in));
  FDSE \data_ob_reg[13] 
       (.C(DAC_clk),
        .CE(1'b1),
        .D(data_ob0),
        .Q(data_ob[13]),
        .S(p_0_in));
  FDRE \data_ob_reg[1] 
       (.C(DAC_clk),
        .CE(1'b1),
        .D(data_ob0__12_n_0),
        .Q(data_ob[1]),
        .R(p_0_in));
  FDRE \data_ob_reg[2] 
       (.C(DAC_clk),
        .CE(1'b1),
        .D(data_ob1[2]),
        .Q(data_ob[2]),
        .R(p_0_in));
  FDRE \data_ob_reg[3] 
       (.C(DAC_clk),
        .CE(1'b1),
        .D(data_ob1[3]),
        .Q(data_ob[3]),
        .R(p_0_in));
  FDRE \data_ob_reg[4] 
       (.C(DAC_clk),
        .CE(1'b1),
        .D(data_ob1[4]),
        .Q(data_ob[4]),
        .R(p_0_in));
  FDRE \data_ob_reg[5] 
       (.C(DAC_clk),
        .CE(1'b1),
        .D(data_ob1[5]),
        .Q(data_ob[5]),
        .R(p_0_in));
  FDRE \data_ob_reg[6] 
       (.C(DAC_clk),
        .CE(1'b1),
        .D(data_ob1[6]),
        .Q(data_ob[6]),
        .R(p_0_in));
  FDRE \data_ob_reg[7] 
       (.C(DAC_clk),
        .CE(1'b1),
        .D(data_ob1[7]),
        .Q(data_ob[7]),
        .R(p_0_in));
  FDRE \data_ob_reg[8] 
       (.C(DAC_clk),
        .CE(1'b1),
        .D(data_ob1[8]),
        .Q(data_ob[8]),
        .R(p_0_in));
  FDRE \data_ob_reg[9] 
       (.C(DAC_clk),
        .CE(1'b1),
        .D(data_ob1[9]),
        .Q(data_ob[9]),
        .R(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    \data_q[13]_i_1 
       (.I0(aresetn),
        .O(p_0_in));
  FDRE \data_q_reg[10] 
       (.C(DAC_clk),
        .CE(1'b1),
        .D(data_ob[10]),
        .Q(dac_data[9]),
        .R(p_0_in));
  FDRE \data_q_reg[11] 
       (.C(DAC_clk),
        .CE(1'b1),
        .D(data_ob[11]),
        .Q(dac_data[10]),
        .R(p_0_in));
  FDRE \data_q_reg[12] 
       (.C(DAC_clk),
        .CE(1'b1),
        .D(data_ob[12]),
        .Q(dac_data[11]),
        .R(p_0_in));
  FDSE \data_q_reg[13] 
       (.C(DAC_clk),
        .CE(1'b1),
        .D(data_ob[13]),
        .Q(dac_data[12]),
        .S(p_0_in));
  FDRE \data_q_reg[1] 
       (.C(DAC_clk),
        .CE(1'b1),
        .D(data_ob[1]),
        .Q(dac_data[0]),
        .R(p_0_in));
  FDRE \data_q_reg[2] 
       (.C(DAC_clk),
        .CE(1'b1),
        .D(data_ob[2]),
        .Q(dac_data[1]),
        .R(p_0_in));
  FDRE \data_q_reg[3] 
       (.C(DAC_clk),
        .CE(1'b1),
        .D(data_ob[3]),
        .Q(dac_data[2]),
        .R(p_0_in));
  FDRE \data_q_reg[4] 
       (.C(DAC_clk),
        .CE(1'b1),
        .D(data_ob[4]),
        .Q(dac_data[3]),
        .R(p_0_in));
  FDRE \data_q_reg[5] 
       (.C(DAC_clk),
        .CE(1'b1),
        .D(data_ob[5]),
        .Q(dac_data[4]),
        .R(p_0_in));
  FDRE \data_q_reg[6] 
       (.C(DAC_clk),
        .CE(1'b1),
        .D(data_ob[6]),
        .Q(dac_data[5]),
        .R(p_0_in));
  FDRE \data_q_reg[7] 
       (.C(DAC_clk),
        .CE(1'b1),
        .D(data_ob[7]),
        .Q(dac_data[6]),
        .R(p_0_in));
  FDRE \data_q_reg[8] 
       (.C(DAC_clk),
        .CE(1'b1),
        .D(data_ob[8]),
        .Q(dac_data[7]),
        .R(p_0_in));
  FDRE \data_q_reg[9] 
       (.C(DAC_clk),
        .CE(1'b1),
        .D(data_ob[9]),
        .Q(dac_data[8]),
        .R(p_0_in));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    u_oddr_clk
       (.C(DAC_clk),
        .CE(1'b1),
        .D1(1'b1),
        .D2(1'b0),
        .Q(dac_clk_out),
        .R(p_0_in),
        .S(NLW_u_oddr_clk_S_UNCONNECTED));
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
