// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Fri Aug  9 18:44:39 2024
// Host        : cj-ubuntu-desktop running 64-bit Ubuntu 24.04 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/cj/vivado_projects/systolic_array/systolic_array_project/systolic_array_project.gen/sources_1/bd/design_1/ip/design_1_SystolicArrayAxiWrap_0_0/design_1_SystolicArrayAxiWrap_0_0_sim_netlist.v
// Design      : design_1_SystolicArrayAxiWrap_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_SystolicArrayAxiWrap_0_0,SystolicArrayAxiWrapper,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "SystolicArrayAxiWrapper,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module design_1_SystolicArrayAxiWrap_0_0
   (axi_clk,
    axi_rst_n,
    s_axis_valid,
    s_axis_data,
    s_axis_ready,
    m_axis_valid,
    m_axis_data,
    m_axis_ready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axi_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axi_clk, ASSOCIATED_RESET axi_rst_n, ASSOCIATED_BUSIF m_axis:s_axis, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input axi_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 axi_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axi_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input axi_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [47:0]s_axis_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 6, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output s_axis_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [143:0]m_axis_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 18, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input m_axis_ready;

  wire axi_clk;
  wire axi_rst_n;
  wire [143:0]m_axis_data;
  wire m_axis_ready;
  wire m_axis_valid;
  wire [47:0]s_axis_data;
  wire s_axis_ready;
  wire s_axis_valid;

  design_1_SystolicArrayAxiWrap_0_0_SystolicArrayAxiWrapper inst
       (.axi_clk(axi_clk),
        .axi_rst_n(axi_rst_n),
        .m_axis_data(m_axis_data),
        .m_axis_ready(m_axis_ready),
        .m_axis_valid(m_axis_valid),
        .s_axis_data(s_axis_data),
        .s_axis_valid(s_axis_valid),
        .\wr_pntr_reg[0] (s_axis_ready));
endmodule

(* ORIG_REF_NAME = "ArrayController" *) 
module design_1_SystolicArrayAxiWrap_0_0_ArrayController
   (PS,
    SR,
    p_0_in,
    m_axis_valid,
    axi_clk,
    \FSM_sequential_PS_reg[0]_0 ,
    \o_out_reg[0] ,
    m_axis_ready,
    axi_rst_n,
    s_axis_valid);
  output [1:0]PS;
  output [0:0]SR;
  output p_0_in;
  output m_axis_valid;
  input axi_clk;
  input \FSM_sequential_PS_reg[0]_0 ;
  input \o_out_reg[0] ;
  input m_axis_ready;
  input axi_rst_n;
  input s_axis_valid;

  wire \FSM_sequential_PS[1]_i_1_n_0 ;
  wire \FSM_sequential_PS_reg[0]_0 ;
  wire [1:0]PS;
  wire [0:0]SR;
  wire axi_clk;
  wire axi_rst_n;
  wire m_axis_ready;
  wire m_axis_valid;
  wire \o_out_reg[0] ;
  wire p_0_in;
  wire s_axis_valid;

  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h34F40000)) 
    \FSM_sequential_PS[1]_i_1 
       (.I0(\o_out_reg[0] ),
        .I1(PS[0]),
        .I2(PS[1]),
        .I3(m_axis_ready),
        .I4(axi_rst_n),
        .O(\FSM_sequential_PS[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "FILL:01,PROCESS:10,WAIT:00,OUT:11" *) 
  FDRE \FSM_sequential_PS_reg[0] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\FSM_sequential_PS_reg[0]_0 ),
        .Q(PS[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "FILL:01,PROCESS:10,WAIT:00,OUT:11" *) 
  FDRE \FSM_sequential_PS_reg[1] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\FSM_sequential_PS[1]_i_1_n_0 ),
        .Q(PS[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    m_axis_valid_INST_0
       (.I0(PS[1]),
        .I1(PS[0]),
        .O(m_axis_valid));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h07)) 
    \o_out[15]_i_1 
       (.I0(\o_out_reg[0] ),
        .I1(PS[0]),
        .I2(PS[1]),
        .O(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h80858585)) 
    \rd_pntr[1]_i_1 
       (.I0(PS[0]),
        .I1(m_axis_ready),
        .I2(PS[1]),
        .I3(s_axis_valid),
        .I4(\o_out_reg[0] ),
        .O(SR));
endmodule

(* ORIG_REF_NAME = "InputBuffer" *) 
module design_1_SystolicArrayAxiWrap_0_0_InputBuffer
   (S,
    \mem_reg[3][1]_0 ,
    \mem_reg[3][3]_0 ,
    \mem_reg[3][2]_0 ,
    \rd_pntr_reg[0]_0 ,
    E,
    DI,
    \mem_reg[3][5]_0 ,
    \mem_reg[3][6]_0 ,
    \mem_reg[3][4]_0 ,
    \mem_reg[3][1]_1 ,
    \mem_reg[3][0]_0 ,
    \mem_reg[3][6]_1 ,
    \mem_reg[2][7]_0 ,
    \mem_reg[3][4]_1 ,
    \mem_reg[3][3]_1 ,
    \mem_reg[3][0]_1 ,
    \mem_reg[3][2]_1 ,
    \mem_reg[3][5]_1 ,
    \mem_reg[3][6]_2 ,
    \mem_reg[3][4]_2 ,
    \mem_reg[3][3]_2 ,
    \mem_reg[3][3]_3 ,
    D,
    \mem_reg[2][23]_0 ,
    \mem_reg[1][1]_0 ,
    \mem_reg[3][2]_2 ,
    \mem_reg[3][6]_3 ,
    \mem_reg[3][6]_4 ,
    \mem_reg[3][5]_2 ,
    o_out1__59_carry,
    o_out1__59_carry_0,
    PS,
    s_axis_valid,
    \mem_reg[3][0]_2 ,
    \rd_pntr_reg[1]_0 ,
    \rd_pntr_reg[1]_1 ,
    o_out1__30_carry__0,
    o_out1__30_carry,
    o_out1__30_carry_i_4_0,
    o_out1__0_carry,
    o_out1__0_carry_0,
    o_out1__0_carry_1,
    o_out1__0_carry_2,
    o_out1__0_carry__0,
    o_out1__0_carry__0_0,
    SR,
    axi_clk,
    \wr_pntr_reg[0]_0 ,
    s_axis_data);
  output [1:0]S;
  output \mem_reg[3][1]_0 ;
  output \mem_reg[3][3]_0 ;
  output \mem_reg[3][2]_0 ;
  output \rd_pntr_reg[0]_0 ;
  output [0:0]E;
  output [3:0]DI;
  output \mem_reg[3][5]_0 ;
  output \mem_reg[3][6]_0 ;
  output \mem_reg[3][4]_0 ;
  output [1:0]\mem_reg[3][1]_1 ;
  output \mem_reg[3][0]_0 ;
  output [0:0]\mem_reg[3][6]_1 ;
  output \mem_reg[2][7]_0 ;
  output [1:0]\mem_reg[3][4]_1 ;
  output \mem_reg[3][3]_1 ;
  output [0:0]\mem_reg[3][0]_1 ;
  output [2:0]\mem_reg[3][2]_1 ;
  output \mem_reg[3][5]_1 ;
  output [0:0]\mem_reg[3][6]_2 ;
  output [1:0]\mem_reg[3][4]_2 ;
  output [1:0]\mem_reg[3][3]_2 ;
  output \mem_reg[3][3]_3 ;
  output [7:0]D;
  output [7:0]\mem_reg[2][23]_0 ;
  output [1:0]\mem_reg[1][1]_0 ;
  output [2:0]\mem_reg[3][2]_2 ;
  output [1:0]\mem_reg[3][6]_3 ;
  output [1:0]\mem_reg[3][6]_4 ;
  output [3:0]\mem_reg[3][5]_2 ;
  input o_out1__59_carry;
  input o_out1__59_carry_0;
  input [0:0]PS;
  input s_axis_valid;
  input \mem_reg[3][0]_2 ;
  input \rd_pntr_reg[1]_0 ;
  input [0:0]\rd_pntr_reg[1]_1 ;
  input o_out1__30_carry__0;
  input o_out1__30_carry;
  input o_out1__30_carry_i_4_0;
  input o_out1__0_carry;
  input o_out1__0_carry_0;
  input o_out1__0_carry_1;
  input o_out1__0_carry_2;
  input o_out1__0_carry__0;
  input o_out1__0_carry__0_0;
  input [0:0]SR;
  input axi_clk;
  input [0:0]\wr_pntr_reg[0]_0 ;
  input [23:0]s_axis_data;

  wire [7:0]D;
  wire [3:0]DI;
  wire [0:0]E;
  wire [0:0]PS;
  wire [1:0]S;
  wire [0:0]SR;
  wire axi_clk;
  wire mem;
  wire \mem[0][23]_i_1_n_0 ;
  wire \mem[1][23]_i_1_n_0 ;
  wire \mem[2][23]_i_1_n_0 ;
  wire [23:0]\mem_reg[0] ;
  wire [23:0]\mem_reg[1] ;
  wire [1:0]\mem_reg[1][1]_0 ;
  wire [23:0]\mem_reg[2] ;
  wire [7:0]\mem_reg[2][23]_0 ;
  wire \mem_reg[2][7]_0 ;
  wire [23:0]\mem_reg[3] ;
  wire \mem_reg[3][0]_0 ;
  wire [0:0]\mem_reg[3][0]_1 ;
  wire \mem_reg[3][0]_2 ;
  wire \mem_reg[3][1]_0 ;
  wire [1:0]\mem_reg[3][1]_1 ;
  wire \mem_reg[3][2]_0 ;
  wire [2:0]\mem_reg[3][2]_1 ;
  wire [2:0]\mem_reg[3][2]_2 ;
  wire \mem_reg[3][3]_0 ;
  wire \mem_reg[3][3]_1 ;
  wire [1:0]\mem_reg[3][3]_2 ;
  wire \mem_reg[3][3]_3 ;
  wire \mem_reg[3][4]_0 ;
  wire [1:0]\mem_reg[3][4]_1 ;
  wire [1:0]\mem_reg[3][4]_2 ;
  wire \mem_reg[3][5]_0 ;
  wire \mem_reg[3][5]_1 ;
  wire [3:0]\mem_reg[3][5]_2 ;
  wire \mem_reg[3][6]_0 ;
  wire [0:0]\mem_reg[3][6]_1 ;
  wire [0:0]\mem_reg[3][6]_2 ;
  wire [1:0]\mem_reg[3][6]_3 ;
  wire [1:0]\mem_reg[3][6]_4 ;
  wire [1:0]next_wr;
  wire o_out1__0_carry;
  wire o_out1__0_carry_0;
  wire o_out1__0_carry_1;
  wire o_out1__0_carry_2;
  wire o_out1__0_carry__0;
  wire o_out1__0_carry__0_0;
  wire o_out1__30_carry;
  wire o_out1__30_carry__0;
  wire o_out1__30_carry__0_i_10_n_0;
  wire o_out1__30_carry__0_i_9_n_0;
  wire o_out1__30_carry_i_11_n_0;
  wire o_out1__30_carry_i_4_0;
  wire o_out1__59_carry;
  wire o_out1__59_carry_0;
  wire [1:0]p_1_in;
  wire [1:0]rd_pntr;
  wire \rd_pntr_reg[0]_0 ;
  wire \rd_pntr_reg[1]_0 ;
  wire [0:0]\rd_pntr_reg[1]_1 ;
  wire [23:0]s_axis_data;
  wire s_axis_valid;
  wire [1:0]wr_pntr;
  wire [0:0]\wr_pntr_reg[0]_0 ;

  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \a21_buffer[0]_i_1 
       (.I0(\mem_reg[3] [8]),
        .I1(\mem_reg[2] [8]),
        .I2(\mem_reg[1] [8]),
        .I3(rd_pntr[0]),
        .I4(rd_pntr[1]),
        .I5(\mem_reg[0] [8]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAAFFCCF0AA00CCF0)) 
    \a21_buffer[1]_i_1 
       (.I0(\mem_reg[3] [9]),
        .I1(\mem_reg[2] [9]),
        .I2(\mem_reg[0] [9]),
        .I3(rd_pntr[1]),
        .I4(rd_pntr[0]),
        .I5(\mem_reg[1] [9]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAAFFCCF0AA00CCF0)) 
    \a21_buffer[2]_i_1 
       (.I0(\mem_reg[3] [10]),
        .I1(\mem_reg[2] [10]),
        .I2(\mem_reg[0] [10]),
        .I3(rd_pntr[1]),
        .I4(rd_pntr[0]),
        .I5(\mem_reg[1] [10]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \a21_buffer[3]_i_1 
       (.I0(\mem_reg[3] [11]),
        .I1(\mem_reg[2] [11]),
        .I2(\mem_reg[1] [11]),
        .I3(rd_pntr[0]),
        .I4(rd_pntr[1]),
        .I5(\mem_reg[0] [11]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \a21_buffer[4]_i_1 
       (.I0(\mem_reg[3] [12]),
        .I1(\mem_reg[2] [12]),
        .I2(\mem_reg[1] [12]),
        .I3(rd_pntr[0]),
        .I4(rd_pntr[1]),
        .I5(\mem_reg[0] [12]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \a21_buffer[5]_i_1 
       (.I0(\mem_reg[3] [13]),
        .I1(\mem_reg[2] [13]),
        .I2(\mem_reg[1] [13]),
        .I3(rd_pntr[0]),
        .I4(rd_pntr[1]),
        .I5(\mem_reg[0] [13]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hF0CCAAFFF0CCAA00)) 
    \a21_buffer[6]_i_1 
       (.I0(\mem_reg[2] [14]),
        .I1(\mem_reg[1] [14]),
        .I2(\mem_reg[3] [14]),
        .I3(rd_pntr[1]),
        .I4(rd_pntr[0]),
        .I5(\mem_reg[0] [14]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hF0CCAAFFF0CCAA00)) 
    \a21_buffer[7]_i_1 
       (.I0(\mem_reg[2] [15]),
        .I1(\mem_reg[1] [15]),
        .I2(\mem_reg[3] [15]),
        .I3(rd_pntr[1]),
        .I4(rd_pntr[0]),
        .I5(\mem_reg[0] [15]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \a31_buffer1[0]_i_1 
       (.I0(\mem_reg[3] [16]),
        .I1(\mem_reg[2] [16]),
        .I2(\mem_reg[1] [16]),
        .I3(rd_pntr[0]),
        .I4(rd_pntr[1]),
        .I5(\mem_reg[0] [16]),
        .O(\mem_reg[2][23]_0 [0]));
  LUT6 #(
    .INIT(64'hAAFFCCF0AA00CCF0)) 
    \a31_buffer1[1]_i_1 
       (.I0(\mem_reg[3] [17]),
        .I1(\mem_reg[2] [17]),
        .I2(\mem_reg[0] [17]),
        .I3(rd_pntr[1]),
        .I4(rd_pntr[0]),
        .I5(\mem_reg[1] [17]),
        .O(\mem_reg[2][23]_0 [1]));
  LUT6 #(
    .INIT(64'hAAFFCCF0AA00CCF0)) 
    \a31_buffer1[2]_i_1 
       (.I0(\mem_reg[3] [18]),
        .I1(\mem_reg[2] [18]),
        .I2(\mem_reg[0] [18]),
        .I3(rd_pntr[1]),
        .I4(rd_pntr[0]),
        .I5(\mem_reg[1] [18]),
        .O(\mem_reg[2][23]_0 [2]));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \a31_buffer1[3]_i_1 
       (.I0(\mem_reg[3] [19]),
        .I1(\mem_reg[2] [19]),
        .I2(\mem_reg[1] [19]),
        .I3(rd_pntr[0]),
        .I4(rd_pntr[1]),
        .I5(\mem_reg[0] [19]),
        .O(\mem_reg[2][23]_0 [3]));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \a31_buffer1[4]_i_1 
       (.I0(\mem_reg[3] [20]),
        .I1(\mem_reg[2] [20]),
        .I2(\mem_reg[1] [20]),
        .I3(rd_pntr[0]),
        .I4(rd_pntr[1]),
        .I5(\mem_reg[0] [20]),
        .O(\mem_reg[2][23]_0 [4]));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \a31_buffer1[5]_i_1 
       (.I0(\mem_reg[3] [21]),
        .I1(\mem_reg[2] [21]),
        .I2(\mem_reg[1] [21]),
        .I3(rd_pntr[0]),
        .I4(rd_pntr[1]),
        .I5(\mem_reg[0] [21]),
        .O(\mem_reg[2][23]_0 [5]));
  LUT6 #(
    .INIT(64'hF0CCAAFFF0CCAA00)) 
    \a31_buffer1[6]_i_1 
       (.I0(\mem_reg[2] [22]),
        .I1(\mem_reg[1] [22]),
        .I2(\mem_reg[3] [22]),
        .I3(rd_pntr[1]),
        .I4(rd_pntr[0]),
        .I5(\mem_reg[0] [22]),
        .O(\mem_reg[2][23]_0 [6]));
  LUT6 #(
    .INIT(64'hF0CCAAFFF0CCAA00)) 
    \a31_buffer1[7]_i_1 
       (.I0(\mem_reg[2] [23]),
        .I1(\mem_reg[1] [23]),
        .I2(\mem_reg[3] [23]),
        .I3(rd_pntr[1]),
        .I4(rd_pntr[0]),
        .I5(\mem_reg[0] [23]),
        .O(\mem_reg[2][23]_0 [7]));
  LUT5 #(
    .INIT(32'h00000040)) 
    \mem[0][23]_i_1 
       (.I0(PS),
        .I1(s_axis_valid),
        .I2(\mem_reg[3][0]_2 ),
        .I3(wr_pntr[1]),
        .I4(wr_pntr[0]),
        .O(\mem[0][23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \mem[1][23]_i_1 
       (.I0(PS),
        .I1(s_axis_valid),
        .I2(\mem_reg[3][0]_2 ),
        .I3(wr_pntr[0]),
        .I4(wr_pntr[1]),
        .O(\mem[1][23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \mem[2][23]_i_1 
       (.I0(PS),
        .I1(s_axis_valid),
        .I2(\mem_reg[3][0]_2 ),
        .I3(wr_pntr[1]),
        .I4(wr_pntr[0]),
        .O(\mem[2][23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \mem[3][23]_i_1 
       (.I0(PS),
        .I1(s_axis_valid),
        .I2(\mem_reg[3][0]_2 ),
        .I3(wr_pntr[1]),
        .I4(wr_pntr[0]),
        .O(mem));
  FDRE \mem_reg[0][0] 
       (.C(axi_clk),
        .CE(\mem[0][23]_i_1_n_0 ),
        .D(s_axis_data[0]),
        .Q(\mem_reg[0] [0]),
        .R(SR));
  FDRE \mem_reg[0][10] 
       (.C(axi_clk),
        .CE(\mem[0][23]_i_1_n_0 ),
        .D(s_axis_data[10]),
        .Q(\mem_reg[0] [10]),
        .R(SR));
  FDRE \mem_reg[0][11] 
       (.C(axi_clk),
        .CE(\mem[0][23]_i_1_n_0 ),
        .D(s_axis_data[11]),
        .Q(\mem_reg[0] [11]),
        .R(SR));
  FDRE \mem_reg[0][12] 
       (.C(axi_clk),
        .CE(\mem[0][23]_i_1_n_0 ),
        .D(s_axis_data[12]),
        .Q(\mem_reg[0] [12]),
        .R(SR));
  FDRE \mem_reg[0][13] 
       (.C(axi_clk),
        .CE(\mem[0][23]_i_1_n_0 ),
        .D(s_axis_data[13]),
        .Q(\mem_reg[0] [13]),
        .R(SR));
  FDRE \mem_reg[0][14] 
       (.C(axi_clk),
        .CE(\mem[0][23]_i_1_n_0 ),
        .D(s_axis_data[14]),
        .Q(\mem_reg[0] [14]),
        .R(SR));
  FDRE \mem_reg[0][15] 
       (.C(axi_clk),
        .CE(\mem[0][23]_i_1_n_0 ),
        .D(s_axis_data[15]),
        .Q(\mem_reg[0] [15]),
        .R(SR));
  FDRE \mem_reg[0][16] 
       (.C(axi_clk),
        .CE(\mem[0][23]_i_1_n_0 ),
        .D(s_axis_data[16]),
        .Q(\mem_reg[0] [16]),
        .R(SR));
  FDRE \mem_reg[0][17] 
       (.C(axi_clk),
        .CE(\mem[0][23]_i_1_n_0 ),
        .D(s_axis_data[17]),
        .Q(\mem_reg[0] [17]),
        .R(SR));
  FDRE \mem_reg[0][18] 
       (.C(axi_clk),
        .CE(\mem[0][23]_i_1_n_0 ),
        .D(s_axis_data[18]),
        .Q(\mem_reg[0] [18]),
        .R(SR));
  FDRE \mem_reg[0][19] 
       (.C(axi_clk),
        .CE(\mem[0][23]_i_1_n_0 ),
        .D(s_axis_data[19]),
        .Q(\mem_reg[0] [19]),
        .R(SR));
  FDRE \mem_reg[0][1] 
       (.C(axi_clk),
        .CE(\mem[0][23]_i_1_n_0 ),
        .D(s_axis_data[1]),
        .Q(\mem_reg[0] [1]),
        .R(SR));
  FDRE \mem_reg[0][20] 
       (.C(axi_clk),
        .CE(\mem[0][23]_i_1_n_0 ),
        .D(s_axis_data[20]),
        .Q(\mem_reg[0] [20]),
        .R(SR));
  FDRE \mem_reg[0][21] 
       (.C(axi_clk),
        .CE(\mem[0][23]_i_1_n_0 ),
        .D(s_axis_data[21]),
        .Q(\mem_reg[0] [21]),
        .R(SR));
  FDRE \mem_reg[0][22] 
       (.C(axi_clk),
        .CE(\mem[0][23]_i_1_n_0 ),
        .D(s_axis_data[22]),
        .Q(\mem_reg[0] [22]),
        .R(SR));
  FDRE \mem_reg[0][23] 
       (.C(axi_clk),
        .CE(\mem[0][23]_i_1_n_0 ),
        .D(s_axis_data[23]),
        .Q(\mem_reg[0] [23]),
        .R(SR));
  FDRE \mem_reg[0][2] 
       (.C(axi_clk),
        .CE(\mem[0][23]_i_1_n_0 ),
        .D(s_axis_data[2]),
        .Q(\mem_reg[0] [2]),
        .R(SR));
  FDRE \mem_reg[0][3] 
       (.C(axi_clk),
        .CE(\mem[0][23]_i_1_n_0 ),
        .D(s_axis_data[3]),
        .Q(\mem_reg[0] [3]),
        .R(SR));
  FDRE \mem_reg[0][4] 
       (.C(axi_clk),
        .CE(\mem[0][23]_i_1_n_0 ),
        .D(s_axis_data[4]),
        .Q(\mem_reg[0] [4]),
        .R(SR));
  FDRE \mem_reg[0][5] 
       (.C(axi_clk),
        .CE(\mem[0][23]_i_1_n_0 ),
        .D(s_axis_data[5]),
        .Q(\mem_reg[0] [5]),
        .R(SR));
  FDRE \mem_reg[0][6] 
       (.C(axi_clk),
        .CE(\mem[0][23]_i_1_n_0 ),
        .D(s_axis_data[6]),
        .Q(\mem_reg[0] [6]),
        .R(SR));
  FDRE \mem_reg[0][7] 
       (.C(axi_clk),
        .CE(\mem[0][23]_i_1_n_0 ),
        .D(s_axis_data[7]),
        .Q(\mem_reg[0] [7]),
        .R(SR));
  FDRE \mem_reg[0][8] 
       (.C(axi_clk),
        .CE(\mem[0][23]_i_1_n_0 ),
        .D(s_axis_data[8]),
        .Q(\mem_reg[0] [8]),
        .R(SR));
  FDRE \mem_reg[0][9] 
       (.C(axi_clk),
        .CE(\mem[0][23]_i_1_n_0 ),
        .D(s_axis_data[9]),
        .Q(\mem_reg[0] [9]),
        .R(SR));
  FDRE \mem_reg[1][0] 
       (.C(axi_clk),
        .CE(\mem[1][23]_i_1_n_0 ),
        .D(s_axis_data[0]),
        .Q(\mem_reg[1] [0]),
        .R(SR));
  FDRE \mem_reg[1][10] 
       (.C(axi_clk),
        .CE(\mem[1][23]_i_1_n_0 ),
        .D(s_axis_data[10]),
        .Q(\mem_reg[1] [10]),
        .R(SR));
  FDRE \mem_reg[1][11] 
       (.C(axi_clk),
        .CE(\mem[1][23]_i_1_n_0 ),
        .D(s_axis_data[11]),
        .Q(\mem_reg[1] [11]),
        .R(SR));
  FDRE \mem_reg[1][12] 
       (.C(axi_clk),
        .CE(\mem[1][23]_i_1_n_0 ),
        .D(s_axis_data[12]),
        .Q(\mem_reg[1] [12]),
        .R(SR));
  FDRE \mem_reg[1][13] 
       (.C(axi_clk),
        .CE(\mem[1][23]_i_1_n_0 ),
        .D(s_axis_data[13]),
        .Q(\mem_reg[1] [13]),
        .R(SR));
  FDRE \mem_reg[1][14] 
       (.C(axi_clk),
        .CE(\mem[1][23]_i_1_n_0 ),
        .D(s_axis_data[14]),
        .Q(\mem_reg[1] [14]),
        .R(SR));
  FDRE \mem_reg[1][15] 
       (.C(axi_clk),
        .CE(\mem[1][23]_i_1_n_0 ),
        .D(s_axis_data[15]),
        .Q(\mem_reg[1] [15]),
        .R(SR));
  FDRE \mem_reg[1][16] 
       (.C(axi_clk),
        .CE(\mem[1][23]_i_1_n_0 ),
        .D(s_axis_data[16]),
        .Q(\mem_reg[1] [16]),
        .R(SR));
  FDRE \mem_reg[1][17] 
       (.C(axi_clk),
        .CE(\mem[1][23]_i_1_n_0 ),
        .D(s_axis_data[17]),
        .Q(\mem_reg[1] [17]),
        .R(SR));
  FDRE \mem_reg[1][18] 
       (.C(axi_clk),
        .CE(\mem[1][23]_i_1_n_0 ),
        .D(s_axis_data[18]),
        .Q(\mem_reg[1] [18]),
        .R(SR));
  FDRE \mem_reg[1][19] 
       (.C(axi_clk),
        .CE(\mem[1][23]_i_1_n_0 ),
        .D(s_axis_data[19]),
        .Q(\mem_reg[1] [19]),
        .R(SR));
  FDRE \mem_reg[1][1] 
       (.C(axi_clk),
        .CE(\mem[1][23]_i_1_n_0 ),
        .D(s_axis_data[1]),
        .Q(\mem_reg[1] [1]),
        .R(SR));
  FDRE \mem_reg[1][20] 
       (.C(axi_clk),
        .CE(\mem[1][23]_i_1_n_0 ),
        .D(s_axis_data[20]),
        .Q(\mem_reg[1] [20]),
        .R(SR));
  FDRE \mem_reg[1][21] 
       (.C(axi_clk),
        .CE(\mem[1][23]_i_1_n_0 ),
        .D(s_axis_data[21]),
        .Q(\mem_reg[1] [21]),
        .R(SR));
  FDRE \mem_reg[1][22] 
       (.C(axi_clk),
        .CE(\mem[1][23]_i_1_n_0 ),
        .D(s_axis_data[22]),
        .Q(\mem_reg[1] [22]),
        .R(SR));
  FDRE \mem_reg[1][23] 
       (.C(axi_clk),
        .CE(\mem[1][23]_i_1_n_0 ),
        .D(s_axis_data[23]),
        .Q(\mem_reg[1] [23]),
        .R(SR));
  FDRE \mem_reg[1][2] 
       (.C(axi_clk),
        .CE(\mem[1][23]_i_1_n_0 ),
        .D(s_axis_data[2]),
        .Q(\mem_reg[1] [2]),
        .R(SR));
  FDRE \mem_reg[1][3] 
       (.C(axi_clk),
        .CE(\mem[1][23]_i_1_n_0 ),
        .D(s_axis_data[3]),
        .Q(\mem_reg[1] [3]),
        .R(SR));
  FDRE \mem_reg[1][4] 
       (.C(axi_clk),
        .CE(\mem[1][23]_i_1_n_0 ),
        .D(s_axis_data[4]),
        .Q(\mem_reg[1] [4]),
        .R(SR));
  FDRE \mem_reg[1][5] 
       (.C(axi_clk),
        .CE(\mem[1][23]_i_1_n_0 ),
        .D(s_axis_data[5]),
        .Q(\mem_reg[1] [5]),
        .R(SR));
  FDRE \mem_reg[1][6] 
       (.C(axi_clk),
        .CE(\mem[1][23]_i_1_n_0 ),
        .D(s_axis_data[6]),
        .Q(\mem_reg[1] [6]),
        .R(SR));
  FDRE \mem_reg[1][7] 
       (.C(axi_clk),
        .CE(\mem[1][23]_i_1_n_0 ),
        .D(s_axis_data[7]),
        .Q(\mem_reg[1] [7]),
        .R(SR));
  FDRE \mem_reg[1][8] 
       (.C(axi_clk),
        .CE(\mem[1][23]_i_1_n_0 ),
        .D(s_axis_data[8]),
        .Q(\mem_reg[1] [8]),
        .R(SR));
  FDRE \mem_reg[1][9] 
       (.C(axi_clk),
        .CE(\mem[1][23]_i_1_n_0 ),
        .D(s_axis_data[9]),
        .Q(\mem_reg[1] [9]),
        .R(SR));
  FDRE \mem_reg[2][0] 
       (.C(axi_clk),
        .CE(\mem[2][23]_i_1_n_0 ),
        .D(s_axis_data[0]),
        .Q(\mem_reg[2] [0]),
        .R(SR));
  FDRE \mem_reg[2][10] 
       (.C(axi_clk),
        .CE(\mem[2][23]_i_1_n_0 ),
        .D(s_axis_data[10]),
        .Q(\mem_reg[2] [10]),
        .R(SR));
  FDRE \mem_reg[2][11] 
       (.C(axi_clk),
        .CE(\mem[2][23]_i_1_n_0 ),
        .D(s_axis_data[11]),
        .Q(\mem_reg[2] [11]),
        .R(SR));
  FDRE \mem_reg[2][12] 
       (.C(axi_clk),
        .CE(\mem[2][23]_i_1_n_0 ),
        .D(s_axis_data[12]),
        .Q(\mem_reg[2] [12]),
        .R(SR));
  FDRE \mem_reg[2][13] 
       (.C(axi_clk),
        .CE(\mem[2][23]_i_1_n_0 ),
        .D(s_axis_data[13]),
        .Q(\mem_reg[2] [13]),
        .R(SR));
  FDRE \mem_reg[2][14] 
       (.C(axi_clk),
        .CE(\mem[2][23]_i_1_n_0 ),
        .D(s_axis_data[14]),
        .Q(\mem_reg[2] [14]),
        .R(SR));
  FDRE \mem_reg[2][15] 
       (.C(axi_clk),
        .CE(\mem[2][23]_i_1_n_0 ),
        .D(s_axis_data[15]),
        .Q(\mem_reg[2] [15]),
        .R(SR));
  FDRE \mem_reg[2][16] 
       (.C(axi_clk),
        .CE(\mem[2][23]_i_1_n_0 ),
        .D(s_axis_data[16]),
        .Q(\mem_reg[2] [16]),
        .R(SR));
  FDRE \mem_reg[2][17] 
       (.C(axi_clk),
        .CE(\mem[2][23]_i_1_n_0 ),
        .D(s_axis_data[17]),
        .Q(\mem_reg[2] [17]),
        .R(SR));
  FDRE \mem_reg[2][18] 
       (.C(axi_clk),
        .CE(\mem[2][23]_i_1_n_0 ),
        .D(s_axis_data[18]),
        .Q(\mem_reg[2] [18]),
        .R(SR));
  FDRE \mem_reg[2][19] 
       (.C(axi_clk),
        .CE(\mem[2][23]_i_1_n_0 ),
        .D(s_axis_data[19]),
        .Q(\mem_reg[2] [19]),
        .R(SR));
  FDRE \mem_reg[2][1] 
       (.C(axi_clk),
        .CE(\mem[2][23]_i_1_n_0 ),
        .D(s_axis_data[1]),
        .Q(\mem_reg[2] [1]),
        .R(SR));
  FDRE \mem_reg[2][20] 
       (.C(axi_clk),
        .CE(\mem[2][23]_i_1_n_0 ),
        .D(s_axis_data[20]),
        .Q(\mem_reg[2] [20]),
        .R(SR));
  FDRE \mem_reg[2][21] 
       (.C(axi_clk),
        .CE(\mem[2][23]_i_1_n_0 ),
        .D(s_axis_data[21]),
        .Q(\mem_reg[2] [21]),
        .R(SR));
  FDRE \mem_reg[2][22] 
       (.C(axi_clk),
        .CE(\mem[2][23]_i_1_n_0 ),
        .D(s_axis_data[22]),
        .Q(\mem_reg[2] [22]),
        .R(SR));
  FDRE \mem_reg[2][23] 
       (.C(axi_clk),
        .CE(\mem[2][23]_i_1_n_0 ),
        .D(s_axis_data[23]),
        .Q(\mem_reg[2] [23]),
        .R(SR));
  FDRE \mem_reg[2][2] 
       (.C(axi_clk),
        .CE(\mem[2][23]_i_1_n_0 ),
        .D(s_axis_data[2]),
        .Q(\mem_reg[2] [2]),
        .R(SR));
  FDRE \mem_reg[2][3] 
       (.C(axi_clk),
        .CE(\mem[2][23]_i_1_n_0 ),
        .D(s_axis_data[3]),
        .Q(\mem_reg[2] [3]),
        .R(SR));
  FDRE \mem_reg[2][4] 
       (.C(axi_clk),
        .CE(\mem[2][23]_i_1_n_0 ),
        .D(s_axis_data[4]),
        .Q(\mem_reg[2] [4]),
        .R(SR));
  FDRE \mem_reg[2][5] 
       (.C(axi_clk),
        .CE(\mem[2][23]_i_1_n_0 ),
        .D(s_axis_data[5]),
        .Q(\mem_reg[2] [5]),
        .R(SR));
  FDRE \mem_reg[2][6] 
       (.C(axi_clk),
        .CE(\mem[2][23]_i_1_n_0 ),
        .D(s_axis_data[6]),
        .Q(\mem_reg[2] [6]),
        .R(SR));
  FDRE \mem_reg[2][7] 
       (.C(axi_clk),
        .CE(\mem[2][23]_i_1_n_0 ),
        .D(s_axis_data[7]),
        .Q(\mem_reg[2] [7]),
        .R(SR));
  FDRE \mem_reg[2][8] 
       (.C(axi_clk),
        .CE(\mem[2][23]_i_1_n_0 ),
        .D(s_axis_data[8]),
        .Q(\mem_reg[2] [8]),
        .R(SR));
  FDRE \mem_reg[2][9] 
       (.C(axi_clk),
        .CE(\mem[2][23]_i_1_n_0 ),
        .D(s_axis_data[9]),
        .Q(\mem_reg[2] [9]),
        .R(SR));
  FDRE \mem_reg[3][0] 
       (.C(axi_clk),
        .CE(mem),
        .D(s_axis_data[0]),
        .Q(\mem_reg[3] [0]),
        .R(SR));
  FDRE \mem_reg[3][10] 
       (.C(axi_clk),
        .CE(mem),
        .D(s_axis_data[10]),
        .Q(\mem_reg[3] [10]),
        .R(SR));
  FDRE \mem_reg[3][11] 
       (.C(axi_clk),
        .CE(mem),
        .D(s_axis_data[11]),
        .Q(\mem_reg[3] [11]),
        .R(SR));
  FDRE \mem_reg[3][12] 
       (.C(axi_clk),
        .CE(mem),
        .D(s_axis_data[12]),
        .Q(\mem_reg[3] [12]),
        .R(SR));
  FDRE \mem_reg[3][13] 
       (.C(axi_clk),
        .CE(mem),
        .D(s_axis_data[13]),
        .Q(\mem_reg[3] [13]),
        .R(SR));
  FDRE \mem_reg[3][14] 
       (.C(axi_clk),
        .CE(mem),
        .D(s_axis_data[14]),
        .Q(\mem_reg[3] [14]),
        .R(SR));
  FDRE \mem_reg[3][15] 
       (.C(axi_clk),
        .CE(mem),
        .D(s_axis_data[15]),
        .Q(\mem_reg[3] [15]),
        .R(SR));
  FDRE \mem_reg[3][16] 
       (.C(axi_clk),
        .CE(mem),
        .D(s_axis_data[16]),
        .Q(\mem_reg[3] [16]),
        .R(SR));
  FDRE \mem_reg[3][17] 
       (.C(axi_clk),
        .CE(mem),
        .D(s_axis_data[17]),
        .Q(\mem_reg[3] [17]),
        .R(SR));
  FDRE \mem_reg[3][18] 
       (.C(axi_clk),
        .CE(mem),
        .D(s_axis_data[18]),
        .Q(\mem_reg[3] [18]),
        .R(SR));
  FDRE \mem_reg[3][19] 
       (.C(axi_clk),
        .CE(mem),
        .D(s_axis_data[19]),
        .Q(\mem_reg[3] [19]),
        .R(SR));
  FDRE \mem_reg[3][1] 
       (.C(axi_clk),
        .CE(mem),
        .D(s_axis_data[1]),
        .Q(\mem_reg[3] [1]),
        .R(SR));
  FDRE \mem_reg[3][20] 
       (.C(axi_clk),
        .CE(mem),
        .D(s_axis_data[20]),
        .Q(\mem_reg[3] [20]),
        .R(SR));
  FDRE \mem_reg[3][21] 
       (.C(axi_clk),
        .CE(mem),
        .D(s_axis_data[21]),
        .Q(\mem_reg[3] [21]),
        .R(SR));
  FDRE \mem_reg[3][22] 
       (.C(axi_clk),
        .CE(mem),
        .D(s_axis_data[22]),
        .Q(\mem_reg[3] [22]),
        .R(SR));
  FDRE \mem_reg[3][23] 
       (.C(axi_clk),
        .CE(mem),
        .D(s_axis_data[23]),
        .Q(\mem_reg[3] [23]),
        .R(SR));
  FDRE \mem_reg[3][2] 
       (.C(axi_clk),
        .CE(mem),
        .D(s_axis_data[2]),
        .Q(\mem_reg[3] [2]),
        .R(SR));
  FDRE \mem_reg[3][3] 
       (.C(axi_clk),
        .CE(mem),
        .D(s_axis_data[3]),
        .Q(\mem_reg[3] [3]),
        .R(SR));
  FDRE \mem_reg[3][4] 
       (.C(axi_clk),
        .CE(mem),
        .D(s_axis_data[4]),
        .Q(\mem_reg[3] [4]),
        .R(SR));
  FDRE \mem_reg[3][5] 
       (.C(axi_clk),
        .CE(mem),
        .D(s_axis_data[5]),
        .Q(\mem_reg[3] [5]),
        .R(SR));
  FDRE \mem_reg[3][6] 
       (.C(axi_clk),
        .CE(mem),
        .D(s_axis_data[6]),
        .Q(\mem_reg[3] [6]),
        .R(SR));
  FDRE \mem_reg[3][7] 
       (.C(axi_clk),
        .CE(mem),
        .D(s_axis_data[7]),
        .Q(\mem_reg[3] [7]),
        .R(SR));
  FDRE \mem_reg[3][8] 
       (.C(axi_clk),
        .CE(mem),
        .D(s_axis_data[8]),
        .Q(\mem_reg[3] [8]),
        .R(SR));
  FDRE \mem_reg[3][9] 
       (.C(axi_clk),
        .CE(mem),
        .D(s_axis_data[9]),
        .Q(\mem_reg[3] [9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h2F22020002000200)) 
    o_out1__0_carry__0_i_1
       (.I0(\mem_reg[3][4]_0 ),
        .I1(o_out1__0_carry),
        .I2(o_out1__0_carry_0),
        .I3(\mem_reg[3][5]_0 ),
        .I4(o_out1__0_carry_1),
        .I5(\mem_reg[3][6]_0 ),
        .O(\mem_reg[3][4]_2 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    o_out1__0_carry__0_i_12
       (.I0(\mem_reg[3][3]_0 ),
        .I1(o_out1__0_carry_0),
        .O(\mem_reg[3][3]_3 ));
  LUT6 #(
    .INIT(64'h2F22020002000200)) 
    o_out1__0_carry__0_i_2
       (.I0(\mem_reg[3][3]_0 ),
        .I1(o_out1__0_carry),
        .I2(o_out1__0_carry_0),
        .I3(\mem_reg[3][4]_0 ),
        .I4(o_out1__0_carry_1),
        .I5(\mem_reg[3][5]_0 ),
        .O(\mem_reg[3][4]_2 [0]));
  LUT6 #(
    .INIT(64'hA6A659A65959A659)) 
    o_out1__0_carry__0_i_5
       (.I0(\mem_reg[3][4]_2 [1]),
        .I1(\mem_reg[3][6]_0 ),
        .I2(o_out1__0_carry_0),
        .I3(\mem_reg[3][5]_0 ),
        .I4(o_out1__0_carry),
        .I5(o_out1__0_carry__0_0),
        .O(\mem_reg[3][6]_3 [1]));
  LUT6 #(
    .INIT(64'h59A65959A659A6A6)) 
    o_out1__0_carry__0_i_6
       (.I0(\mem_reg[3][4]_2 [0]),
        .I1(\mem_reg[3][5]_0 ),
        .I2(o_out1__0_carry_0),
        .I3(o_out1__0_carry),
        .I4(\mem_reg[3][4]_0 ),
        .I5(o_out1__0_carry__0),
        .O(\mem_reg[3][6]_3 [0]));
  LUT4 #(
    .INIT(16'h2022)) 
    o_out1__0_carry__1_i_1
       (.I0(\mem_reg[3][6]_0 ),
        .I1(o_out1__0_carry),
        .I2(o_out1__0_carry_0),
        .I3(\mem_reg[2][7]_0 ),
        .O(\mem_reg[3][6]_2 ));
  LUT6 #(
    .INIT(64'h8887777888878887)) 
    o_out1__0_carry_i_1
       (.I0(\mem_reg[3][3]_0 ),
        .I1(o_out1__0_carry_1),
        .I2(o_out1__0_carry),
        .I3(\mem_reg[3][1]_0 ),
        .I4(o_out1__0_carry_0),
        .I5(\mem_reg[3][2]_0 ),
        .O(\mem_reg[3][3]_2 [1]));
  LUT6 #(
    .INIT(64'h5500330F55FF330F)) 
    o_out1__0_carry_i_11
       (.I0(\mem_reg[3] [0]),
        .I1(\mem_reg[2] [0]),
        .I2(\mem_reg[0] [0]),
        .I3(rd_pntr[1]),
        .I4(rd_pntr[0]),
        .I5(\mem_reg[1] [0]),
        .O(\mem_reg[3][0]_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    o_out1__0_carry_i_3
       (.I0(\mem_reg[3][0]_0 ),
        .I1(o_out1__0_carry_0),
        .O(\mem_reg[3][3]_2 [0]));
  LUT6 #(
    .INIT(64'hCCC3CCC366696666)) 
    o_out1__0_carry_i_4
       (.I0(\mem_reg[3][2]_0 ),
        .I1(o_out1__0_carry_2),
        .I2(\mem_reg[3][1]_0 ),
        .I3(o_out1__0_carry),
        .I4(\mem_reg[3][0]_0 ),
        .I5(o_out1__0_carry_0),
        .O(\mem_reg[3][2]_2 [2]));
  LUT6 #(
    .INIT(64'hEEE1111E111E111E)) 
    o_out1__0_carry_i_5
       (.I0(\mem_reg[3][0]_0 ),
        .I1(o_out1__0_carry),
        .I2(\mem_reg[3][1]_0 ),
        .I3(o_out1__0_carry_0),
        .I4(\mem_reg[3][2]_0 ),
        .I5(o_out1__0_carry_1),
        .O(\mem_reg[3][2]_2 [1]));
  LUT4 #(
    .INIT(16'h444B)) 
    o_out1__0_carry_i_6
       (.I0(\mem_reg[3][1]_0 ),
        .I1(o_out1__0_carry_1),
        .I2(o_out1__0_carry_0),
        .I3(\mem_reg[3][0]_0 ),
        .O(\mem_reg[3][2]_2 [0]));
  LUT6 #(
    .INIT(64'h5500330F55FF330F)) 
    o_out1__0_carry_i_9
       (.I0(\mem_reg[3] [1]),
        .I1(\mem_reg[2] [1]),
        .I2(\mem_reg[0] [1]),
        .I3(rd_pntr[1]),
        .I4(rd_pntr[0]),
        .I5(\mem_reg[1] [1]),
        .O(\mem_reg[3][1]_0 ));
  LUT6 #(
    .INIT(64'h020002002F220200)) 
    o_out1__30_carry__0_i_1
       (.I0(\mem_reg[3][4]_0 ),
        .I1(o_out1__30_carry__0),
        .I2(o_out1__30_carry),
        .I3(\mem_reg[3][5]_0 ),
        .I4(\mem_reg[3][6]_0 ),
        .I5(o_out1__30_carry_i_4_0),
        .O(\mem_reg[3][4]_1 [1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    o_out1__30_carry__0_i_10
       (.I0(\mem_reg[3][6]_0 ),
        .I1(o_out1__30_carry_i_4_0),
        .O(o_out1__30_carry__0_i_10_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    o_out1__30_carry__0_i_11
       (.I0(\mem_reg[3][5]_0 ),
        .I1(o_out1__30_carry_i_4_0),
        .O(\mem_reg[3][5]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    o_out1__30_carry__0_i_12
       (.I0(\mem_reg[3][3]_0 ),
        .I1(o_out1__30_carry),
        .O(\mem_reg[3][3]_1 ));
  LUT6 #(
    .INIT(64'h020002002F220200)) 
    o_out1__30_carry__0_i_2
       (.I0(\mem_reg[3][3]_0 ),
        .I1(o_out1__30_carry__0),
        .I2(o_out1__30_carry),
        .I3(\mem_reg[3][4]_0 ),
        .I4(\mem_reg[3][5]_0 ),
        .I5(o_out1__30_carry_i_4_0),
        .O(\mem_reg[3][4]_1 [0]));
  LUT6 #(
    .INIT(64'hA6A659A65959A659)) 
    o_out1__30_carry__0_i_5
       (.I0(\mem_reg[3][4]_1 [1]),
        .I1(\mem_reg[3][6]_0 ),
        .I2(o_out1__30_carry),
        .I3(\mem_reg[3][5]_0 ),
        .I4(o_out1__30_carry__0),
        .I5(o_out1__30_carry__0_i_9_n_0),
        .O(\mem_reg[3][6]_4 [1]));
  LUT6 #(
    .INIT(64'h59A65959A659A6A6)) 
    o_out1__30_carry__0_i_6
       (.I0(\mem_reg[3][4]_1 [0]),
        .I1(\mem_reg[3][5]_0 ),
        .I2(o_out1__30_carry),
        .I3(o_out1__30_carry__0),
        .I4(\mem_reg[3][4]_0 ),
        .I5(o_out1__30_carry__0_i_10_n_0),
        .O(\mem_reg[3][6]_4 [0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    o_out1__30_carry__0_i_9
       (.I0(\mem_reg[2][7]_0 ),
        .I1(o_out1__30_carry_i_4_0),
        .O(o_out1__30_carry__0_i_9_n_0));
  LUT4 #(
    .INIT(16'h2022)) 
    o_out1__30_carry__1_i_1
       (.I0(\mem_reg[3][6]_0 ),
        .I1(o_out1__30_carry__0),
        .I2(o_out1__30_carry),
        .I3(\mem_reg[2][7]_0 ),
        .O(\mem_reg[3][6]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    o_out1__30_carry_i_11
       (.I0(\mem_reg[3][3]_0 ),
        .I1(o_out1__30_carry_i_4_0),
        .O(o_out1__30_carry_i_11_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    o_out1__30_carry_i_3
       (.I0(\mem_reg[3][0]_0 ),
        .I1(o_out1__30_carry),
        .O(\mem_reg[3][0]_1 ));
  LUT6 #(
    .INIT(64'hCCC3CCC366696666)) 
    o_out1__30_carry_i_4
       (.I0(\mem_reg[3][2]_0 ),
        .I1(o_out1__30_carry_i_11_n_0),
        .I2(\mem_reg[3][1]_0 ),
        .I3(o_out1__30_carry__0),
        .I4(\mem_reg[3][0]_0 ),
        .I5(o_out1__30_carry),
        .O(\mem_reg[3][2]_1 [2]));
  LUT6 #(
    .INIT(64'h111EEEE1111E111E)) 
    o_out1__30_carry_i_5
       (.I0(\mem_reg[3][0]_0 ),
        .I1(o_out1__30_carry__0),
        .I2(\mem_reg[3][1]_0 ),
        .I3(o_out1__30_carry),
        .I4(o_out1__30_carry_i_4_0),
        .I5(\mem_reg[3][2]_0 ),
        .O(\mem_reg[3][2]_1 [1]));
  LUT2 #(
    .INIT(4'h1)) 
    o_out1__30_carry_i_7
       (.I0(\mem_reg[3][0]_0 ),
        .I1(o_out1__30_carry_i_4_0),
        .O(\mem_reg[3][2]_1 [0]));
  LUT4 #(
    .INIT(16'h0D00)) 
    o_out1__59_carry__0_i_1
       (.I0(\mem_reg[3][5]_0 ),
        .I1(o_out1__59_carry_0),
        .I2(o_out1__59_carry),
        .I3(\mem_reg[3][6]_0 ),
        .O(DI[3]));
  LUT4 #(
    .INIT(16'h0D00)) 
    o_out1__59_carry__0_i_2
       (.I0(\mem_reg[3][4]_0 ),
        .I1(o_out1__59_carry_0),
        .I2(o_out1__59_carry),
        .I3(\mem_reg[3][5]_0 ),
        .O(DI[2]));
  LUT4 #(
    .INIT(16'h0D00)) 
    o_out1__59_carry__0_i_3
       (.I0(\mem_reg[3][3]_0 ),
        .I1(o_out1__59_carry_0),
        .I2(o_out1__59_carry),
        .I3(\mem_reg[3][4]_0 ),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'h0D00)) 
    o_out1__59_carry__0_i_4
       (.I0(\mem_reg[3][2]_0 ),
        .I1(o_out1__59_carry_0),
        .I2(o_out1__59_carry),
        .I3(\mem_reg[3][3]_0 ),
        .O(DI[0]));
  LUT5 #(
    .INIT(32'h030CF60C)) 
    o_out1__59_carry__0_i_5
       (.I0(\mem_reg[3][5]_0 ),
        .I1(\mem_reg[2][7]_0 ),
        .I2(o_out1__59_carry),
        .I3(\mem_reg[3][6]_0 ),
        .I4(o_out1__59_carry_0),
        .O(\mem_reg[3][5]_2 [3]));
  LUT5 #(
    .INIT(32'hFC09F3F3)) 
    o_out1__59_carry__0_i_6
       (.I0(\mem_reg[3][4]_0 ),
        .I1(\mem_reg[3][6]_0 ),
        .I2(o_out1__59_carry),
        .I3(o_out1__59_carry_0),
        .I4(\mem_reg[3][5]_0 ),
        .O(\mem_reg[3][5]_2 [2]));
  LUT5 #(
    .INIT(32'hFC09F3F3)) 
    o_out1__59_carry__0_i_7
       (.I0(\mem_reg[3][3]_0 ),
        .I1(\mem_reg[3][5]_0 ),
        .I2(o_out1__59_carry),
        .I3(o_out1__59_carry_0),
        .I4(\mem_reg[3][4]_0 ),
        .O(\mem_reg[3][5]_2 [1]));
  LUT5 #(
    .INIT(32'hFC09F3F3)) 
    o_out1__59_carry__0_i_8
       (.I0(\mem_reg[3][2]_0 ),
        .I1(\mem_reg[3][4]_0 ),
        .I2(o_out1__59_carry),
        .I3(o_out1__59_carry_0),
        .I4(\mem_reg[3][3]_0 ),
        .O(\mem_reg[3][5]_2 [0]));
  LUT2 #(
    .INIT(4'h1)) 
    o_out1__59_carry_i_2
       (.I0(\mem_reg[3][1]_0 ),
        .I1(o_out1__59_carry_0),
        .O(\mem_reg[3][1]_1 [1]));
  LUT2 #(
    .INIT(4'hE)) 
    o_out1__59_carry_i_3
       (.I0(\mem_reg[3][0]_0 ),
        .I1(o_out1__59_carry_0),
        .O(\mem_reg[3][1]_1 [0]));
  LUT5 #(
    .INIT(32'h0CA60C59)) 
    o_out1__59_carry_i_4
       (.I0(\mem_reg[3][1]_0 ),
        .I1(\mem_reg[3][3]_0 ),
        .I2(o_out1__59_carry),
        .I3(o_out1__59_carry_0),
        .I4(\mem_reg[3][2]_0 ),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h1)) 
    o_out1__59_carry_i_7
       (.I0(\mem_reg[3][0]_0 ),
        .I1(o_out1__59_carry),
        .O(S[0]));
  LUT6 #(
    .INIT(64'hFBF8CBC83B380B08)) 
    \o_x[0]_i_1 
       (.I0(\mem_reg[1] [0]),
        .I1(rd_pntr[0]),
        .I2(rd_pntr[1]),
        .I3(\mem_reg[0] [0]),
        .I4(\mem_reg[2] [0]),
        .I5(\mem_reg[3] [0]),
        .O(\mem_reg[1][1]_0 [0]));
  LUT6 #(
    .INIT(64'hFBF8CBC83B380B08)) 
    \o_x[1]_i_1 
       (.I0(\mem_reg[1] [1]),
        .I1(rd_pntr[0]),
        .I2(rd_pntr[1]),
        .I3(\mem_reg[0] [1]),
        .I4(\mem_reg[2] [1]),
        .I5(\mem_reg[3] [1]),
        .O(\mem_reg[1][1]_0 [1]));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \o_x[2]_i_1 
       (.I0(\mem_reg[3] [2]),
        .I1(\mem_reg[2] [2]),
        .I2(\mem_reg[1] [2]),
        .I3(rd_pntr[0]),
        .I4(rd_pntr[1]),
        .I5(\mem_reg[0] [2]),
        .O(\mem_reg[3][2]_0 ));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \o_x[3]_i_1 
       (.I0(\mem_reg[3] [3]),
        .I1(\mem_reg[2] [3]),
        .I2(\mem_reg[1] [3]),
        .I3(rd_pntr[0]),
        .I4(rd_pntr[1]),
        .I5(\mem_reg[0] [3]),
        .O(\mem_reg[3][3]_0 ));
  LUT6 #(
    .INIT(64'hAAFFCCF0AA00CCF0)) 
    \o_x[4]_i_1 
       (.I0(\mem_reg[3] [4]),
        .I1(\mem_reg[2] [4]),
        .I2(\mem_reg[0] [4]),
        .I3(rd_pntr[1]),
        .I4(rd_pntr[0]),
        .I5(\mem_reg[1] [4]),
        .O(\mem_reg[3][4]_0 ));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \o_x[5]_i_1 
       (.I0(\mem_reg[3] [5]),
        .I1(\mem_reg[2] [5]),
        .I2(\mem_reg[1] [5]),
        .I3(rd_pntr[0]),
        .I4(rd_pntr[1]),
        .I5(\mem_reg[0] [5]),
        .O(\mem_reg[3][5]_0 ));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \o_x[6]_i_1 
       (.I0(\mem_reg[3] [6]),
        .I1(\mem_reg[2] [6]),
        .I2(\mem_reg[1] [6]),
        .I3(rd_pntr[0]),
        .I4(rd_pntr[1]),
        .I5(\mem_reg[0] [6]),
        .O(\mem_reg[3][6]_0 ));
  LUT6 #(
    .INIT(64'hF0CCAAFFF0CCAA00)) 
    \o_x[7]_i_1 
       (.I0(\mem_reg[2] [7]),
        .I1(\mem_reg[1] [7]),
        .I2(\mem_reg[3] [7]),
        .I3(rd_pntr[1]),
        .I4(rd_pntr[0]),
        .I5(\mem_reg[0] [7]),
        .O(\mem_reg[2][7]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \rd_pntr[0]_i_1 
       (.I0(rd_pntr[0]),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'h28AAAA2800000000)) 
    \rd_pntr[1]_i_2 
       (.I0(\rd_pntr_reg[1]_0 ),
        .I1(rd_pntr[1]),
        .I2(wr_pntr[1]),
        .I3(rd_pntr[0]),
        .I4(wr_pntr[0]),
        .I5(\rd_pntr_reg[1]_1 ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_pntr[1]_i_3 
       (.I0(rd_pntr[0]),
        .I1(rd_pntr[1]),
        .O(p_1_in[1]));
  FDRE \rd_pntr_reg[0] 
       (.C(axi_clk),
        .CE(E),
        .D(p_1_in[0]),
        .Q(rd_pntr[0]),
        .R(SR));
  FDRE \rd_pntr_reg[1] 
       (.C(axi_clk),
        .CE(E),
        .D(p_1_in[1]),
        .Q(rd_pntr[1]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2442)) 
    s_axis_ready_INST_0_i_1
       (.I0(rd_pntr[0]),
        .I1(wr_pntr[0]),
        .I2(wr_pntr[1]),
        .I3(rd_pntr[1]),
        .O(\rd_pntr_reg[0]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wr_pntr[0]_i_1 
       (.I0(wr_pntr[0]),
        .O(next_wr[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_pntr[1]_i_2 
       (.I0(wr_pntr[0]),
        .I1(wr_pntr[1]),
        .O(next_wr[1]));
  FDRE \wr_pntr_reg[0] 
       (.C(axi_clk),
        .CE(\wr_pntr_reg[0]_0 ),
        .D(next_wr[0]),
        .Q(wr_pntr[0]),
        .R(SR));
  FDRE \wr_pntr_reg[1] 
       (.C(axi_clk),
        .CE(\wr_pntr_reg[0]_0 ),
        .D(next_wr[1]),
        .Q(wr_pntr[1]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "InputBuffer" *) 
module design_1_SystolicArrayAxiWrap_0_0_InputBuffer_0
   (\wr_pntr_reg[0]_0 ,
    E,
    \FSM_sequential_PS_reg[0] ,
    D,
    \mem_reg[2][23]_0 ,
    \mem_reg[2][7]_0 ,
    \mem_reg[2][7]_1 ,
    \mem_reg[3][6]_0 ,
    \mem_reg[2][7]_2 ,
    \mem_reg[0][7]_0 ,
    \mem_reg[3][4]_0 ,
    \mem_reg[3][4]_1 ,
    \mem_reg[3][5]_0 ,
    \mem_reg[3][3]_0 ,
    \mem_reg[3][5]_1 ,
    \mem_reg[3][3]_1 ,
    \mem_reg[3][1]_0 ,
    \mem_reg[3][1]_1 ,
    \mem_reg[3][2]_0 ,
    \mem_reg[3][2]_1 ,
    \mem_reg[3][0]_0 ,
    \mem_reg[3][0]_1 ,
    \mem_reg[3][0]_2 ,
    S,
    O,
    DI,
    \mem_reg[3][4]_2 ,
    \mem_reg[3][1]_2 ,
    \mem_reg[3][3]_2 ,
    \mem_reg[3][4]_3 ,
    \mem_reg[3][4]_4 ,
    \mem_reg[2][7]_3 ,
    \mem_reg[3][6]_1 ,
    o_out1__59_carry__1,
    PS,
    s_axis_valid,
    s_axis_ready,
    o_out1__0_carry__0_i_6,
    o_out1__0_carry__0_i_5,
    o_out1__0_carry__0,
    o_out1__0_carry__0_i_7_0,
    o_out1__0_carry__0_0,
    o_out1__0_carry_i_4,
    o_out1__0_carry__0_1,
    o_out1__0_carry,
    \o_out_reg[15] ,
    \o_out_reg[15]_0 ,
    \o_out_reg[15]_1 ,
    o_out1__0_carry__0_2,
    o_out1__30_carry__0,
    o_out1__30_carry__0_0,
    o_out1__86_carry__1,
    o_out1__86_carry__1_0,
    CO,
    o_out1__86_carry__1_1,
    m_axis_data,
    SR,
    \rd_pntr_reg[0]_0 ,
    axi_clk,
    s_axis_data);
  output \wr_pntr_reg[0]_0 ;
  output [0:0]E;
  output \FSM_sequential_PS_reg[0] ;
  output [7:0]D;
  output [7:0]\mem_reg[2][23]_0 ;
  output [0:0]\mem_reg[2][7]_0 ;
  output \mem_reg[2][7]_1 ;
  output \mem_reg[3][6]_0 ;
  output [0:0]\mem_reg[2][7]_2 ;
  output [7:0]\mem_reg[0][7]_0 ;
  output [0:0]\mem_reg[3][4]_0 ;
  output \mem_reg[3][4]_1 ;
  output \mem_reg[3][5]_0 ;
  output \mem_reg[3][3]_0 ;
  output [1:0]\mem_reg[3][5]_1 ;
  output [1:0]\mem_reg[3][3]_1 ;
  output [0:0]\mem_reg[3][1]_0 ;
  output \mem_reg[3][1]_1 ;
  output \mem_reg[3][2]_0 ;
  output [1:0]\mem_reg[3][2]_1 ;
  output \mem_reg[3][0]_0 ;
  output \mem_reg[3][0]_1 ;
  output \mem_reg[3][0]_2 ;
  output [0:0]S;
  output [3:0]O;
  output [0:0]DI;
  output [1:0]\mem_reg[3][4]_2 ;
  output [1:0]\mem_reg[3][1]_2 ;
  output [0:0]\mem_reg[3][3]_2 ;
  output [1:0]\mem_reg[3][4]_3 ;
  output [1:0]\mem_reg[3][4]_4 ;
  output [1:0]\mem_reg[2][7]_3 ;
  output [0:0]\mem_reg[3][6]_1 ;
  output [2:0]o_out1__59_carry__1;
  input [1:0]PS;
  input s_axis_valid;
  input s_axis_ready;
  input o_out1__0_carry__0_i_6;
  input o_out1__0_carry__0_i_5;
  input o_out1__0_carry__0;
  input o_out1__0_carry__0_i_7_0;
  input o_out1__0_carry__0_0;
  input o_out1__0_carry_i_4;
  input o_out1__0_carry__0_1;
  input o_out1__0_carry;
  input [0:0]\o_out_reg[15] ;
  input [2:0]\o_out_reg[15]_0 ;
  input [0:0]\o_out_reg[15]_1 ;
  input o_out1__0_carry__0_2;
  input o_out1__30_carry__0;
  input o_out1__30_carry__0_0;
  input [1:0]o_out1__86_carry__1;
  input [2:0]o_out1__86_carry__1_0;
  input [0:0]CO;
  input [0:0]o_out1__86_carry__1_1;
  input [2:0]m_axis_data;
  input [0:0]SR;
  input [0:0]\rd_pntr_reg[0]_0 ;
  input axi_clk;
  input [23:0]s_axis_data;

  wire [0:0]CO;
  wire [7:0]D;
  wire [0:0]DI;
  wire [0:0]E;
  wire \FSM_sequential_PS_reg[0] ;
  wire [3:0]O;
  wire [1:0]PS;
  wire [0:0]S;
  wire [0:0]SR;
  wire axi_clk;
  wire [2:0]m_axis_data;
  wire mem;
  wire \mem[0][23]_i_1__0_n_0 ;
  wire \mem[1][23]_i_1__0_n_0 ;
  wire \mem[2][23]_i_1__0_n_0 ;
  wire [7:0]\mem_reg[0][7]_0 ;
  wire [7:0]\mem_reg[2][23]_0 ;
  wire [0:0]\mem_reg[2][7]_0 ;
  wire \mem_reg[2][7]_1 ;
  wire [0:0]\mem_reg[2][7]_2 ;
  wire [1:0]\mem_reg[2][7]_3 ;
  wire \mem_reg[3][0]_0 ;
  wire \mem_reg[3][0]_1 ;
  wire \mem_reg[3][0]_2 ;
  wire [0:0]\mem_reg[3][1]_0 ;
  wire \mem_reg[3][1]_1 ;
  wire [1:0]\mem_reg[3][1]_2 ;
  wire \mem_reg[3][2]_0 ;
  wire [1:0]\mem_reg[3][2]_1 ;
  wire \mem_reg[3][3]_0 ;
  wire [1:0]\mem_reg[3][3]_1 ;
  wire [0:0]\mem_reg[3][3]_2 ;
  wire [0:0]\mem_reg[3][4]_0 ;
  wire \mem_reg[3][4]_1 ;
  wire [1:0]\mem_reg[3][4]_2 ;
  wire [1:0]\mem_reg[3][4]_3 ;
  wire [1:0]\mem_reg[3][4]_4 ;
  wire \mem_reg[3][5]_0 ;
  wire [1:0]\mem_reg[3][5]_1 ;
  wire \mem_reg[3][6]_0 ;
  wire [0:0]\mem_reg[3][6]_1 ;
  wire \mem_reg_n_0_[0][0] ;
  wire \mem_reg_n_0_[0][10] ;
  wire \mem_reg_n_0_[0][11] ;
  wire \mem_reg_n_0_[0][12] ;
  wire \mem_reg_n_0_[0][13] ;
  wire \mem_reg_n_0_[0][14] ;
  wire \mem_reg_n_0_[0][15] ;
  wire \mem_reg_n_0_[0][16] ;
  wire \mem_reg_n_0_[0][17] ;
  wire \mem_reg_n_0_[0][18] ;
  wire \mem_reg_n_0_[0][19] ;
  wire \mem_reg_n_0_[0][1] ;
  wire \mem_reg_n_0_[0][20] ;
  wire \mem_reg_n_0_[0][21] ;
  wire \mem_reg_n_0_[0][22] ;
  wire \mem_reg_n_0_[0][23] ;
  wire \mem_reg_n_0_[0][2] ;
  wire \mem_reg_n_0_[0][3] ;
  wire \mem_reg_n_0_[0][4] ;
  wire \mem_reg_n_0_[0][5] ;
  wire \mem_reg_n_0_[0][6] ;
  wire \mem_reg_n_0_[0][7] ;
  wire \mem_reg_n_0_[0][8] ;
  wire \mem_reg_n_0_[0][9] ;
  wire \mem_reg_n_0_[1][0] ;
  wire \mem_reg_n_0_[1][10] ;
  wire \mem_reg_n_0_[1][11] ;
  wire \mem_reg_n_0_[1][12] ;
  wire \mem_reg_n_0_[1][13] ;
  wire \mem_reg_n_0_[1][14] ;
  wire \mem_reg_n_0_[1][15] ;
  wire \mem_reg_n_0_[1][16] ;
  wire \mem_reg_n_0_[1][17] ;
  wire \mem_reg_n_0_[1][18] ;
  wire \mem_reg_n_0_[1][19] ;
  wire \mem_reg_n_0_[1][1] ;
  wire \mem_reg_n_0_[1][20] ;
  wire \mem_reg_n_0_[1][21] ;
  wire \mem_reg_n_0_[1][22] ;
  wire \mem_reg_n_0_[1][23] ;
  wire \mem_reg_n_0_[1][2] ;
  wire \mem_reg_n_0_[1][3] ;
  wire \mem_reg_n_0_[1][4] ;
  wire \mem_reg_n_0_[1][5] ;
  wire \mem_reg_n_0_[1][6] ;
  wire \mem_reg_n_0_[1][7] ;
  wire \mem_reg_n_0_[1][8] ;
  wire \mem_reg_n_0_[1][9] ;
  wire \mem_reg_n_0_[2][0] ;
  wire \mem_reg_n_0_[2][10] ;
  wire \mem_reg_n_0_[2][11] ;
  wire \mem_reg_n_0_[2][12] ;
  wire \mem_reg_n_0_[2][13] ;
  wire \mem_reg_n_0_[2][14] ;
  wire \mem_reg_n_0_[2][15] ;
  wire \mem_reg_n_0_[2][16] ;
  wire \mem_reg_n_0_[2][17] ;
  wire \mem_reg_n_0_[2][18] ;
  wire \mem_reg_n_0_[2][19] ;
  wire \mem_reg_n_0_[2][1] ;
  wire \mem_reg_n_0_[2][20] ;
  wire \mem_reg_n_0_[2][21] ;
  wire \mem_reg_n_0_[2][22] ;
  wire \mem_reg_n_0_[2][23] ;
  wire \mem_reg_n_0_[2][2] ;
  wire \mem_reg_n_0_[2][3] ;
  wire \mem_reg_n_0_[2][4] ;
  wire \mem_reg_n_0_[2][5] ;
  wire \mem_reg_n_0_[2][6] ;
  wire \mem_reg_n_0_[2][7] ;
  wire \mem_reg_n_0_[2][8] ;
  wire \mem_reg_n_0_[2][9] ;
  wire \mem_reg_n_0_[3][0] ;
  wire \mem_reg_n_0_[3][10] ;
  wire \mem_reg_n_0_[3][11] ;
  wire \mem_reg_n_0_[3][12] ;
  wire \mem_reg_n_0_[3][13] ;
  wire \mem_reg_n_0_[3][14] ;
  wire \mem_reg_n_0_[3][15] ;
  wire \mem_reg_n_0_[3][16] ;
  wire \mem_reg_n_0_[3][17] ;
  wire \mem_reg_n_0_[3][18] ;
  wire \mem_reg_n_0_[3][19] ;
  wire \mem_reg_n_0_[3][1] ;
  wire \mem_reg_n_0_[3][20] ;
  wire \mem_reg_n_0_[3][21] ;
  wire \mem_reg_n_0_[3][22] ;
  wire \mem_reg_n_0_[3][23] ;
  wire \mem_reg_n_0_[3][2] ;
  wire \mem_reg_n_0_[3][3] ;
  wire \mem_reg_n_0_[3][4] ;
  wire \mem_reg_n_0_[3][5] ;
  wire \mem_reg_n_0_[3][6] ;
  wire \mem_reg_n_0_[3][7] ;
  wire \mem_reg_n_0_[3][8] ;
  wire \mem_reg_n_0_[3][9] ;
  wire o_out1__0_carry;
  wire o_out1__0_carry__0;
  wire o_out1__0_carry__0_0;
  wire o_out1__0_carry__0_1;
  wire o_out1__0_carry__0_2;
  wire o_out1__0_carry__0_i_11_n_0;
  wire o_out1__0_carry__0_i_5;
  wire o_out1__0_carry__0_i_6;
  wire o_out1__0_carry__0_i_7_0;
  wire o_out1__0_carry_i_4;
  wire o_out1__30_carry__0;
  wire o_out1__30_carry__0_0;
  wire [2:0]o_out1__59_carry__1;
  wire [1:0]o_out1__86_carry__1;
  wire [2:0]o_out1__86_carry__1_0;
  wire [0:0]o_out1__86_carry__1_1;
  wire \o_out[15]_i_3__0_n_0 ;
  wire \o_out[15]_i_4_n_0 ;
  wire \o_out[15]_i_5_n_0 ;
  wire [0:0]\o_out_reg[15] ;
  wire [2:0]\o_out_reg[15]_0 ;
  wire [0:0]\o_out_reg[15]_1 ;
  wire \o_out_reg[15]_i_1_n_1 ;
  wire \o_out_reg[15]_i_1_n_2 ;
  wire \o_out_reg[15]_i_1_n_3 ;
  wire \rd_pntr[0]_i_1__0_n_0 ;
  wire \rd_pntr[1]_i_1__0_n_0 ;
  wire [0:0]\rd_pntr_reg[0]_0 ;
  wire \rd_pntr_reg_n_0_[0] ;
  wire \rd_pntr_reg_n_0_[1] ;
  wire [23:0]s_axis_data;
  wire s_axis_ready;
  wire s_axis_valid;
  wire \wr_pntr[0]_i_1__0_n_0 ;
  wire \wr_pntr[1]_i_1__0_n_0 ;
  wire \wr_pntr_reg[0]_0 ;
  wire \wr_pntr_reg_n_0_[0] ;
  wire \wr_pntr_reg_n_0_[1] ;
  wire [3:3]\NLW_o_out_reg[15]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \b12_buffer[0]_i_1 
       (.I0(\mem_reg_n_0_[3][8] ),
        .I1(\mem_reg_n_0_[2][8] ),
        .I2(\mem_reg_n_0_[1][8] ),
        .I3(\rd_pntr_reg_n_0_[0] ),
        .I4(\rd_pntr_reg_n_0_[1] ),
        .I5(\mem_reg_n_0_[0][8] ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAAFFCCF0AA00CCF0)) 
    \b12_buffer[1]_i_1 
       (.I0(\mem_reg_n_0_[3][9] ),
        .I1(\mem_reg_n_0_[2][9] ),
        .I2(\mem_reg_n_0_[0][9] ),
        .I3(\rd_pntr_reg_n_0_[1] ),
        .I4(\rd_pntr_reg_n_0_[0] ),
        .I5(\mem_reg_n_0_[1][9] ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAAFFCCF0AA00CCF0)) 
    \b12_buffer[2]_i_1 
       (.I0(\mem_reg_n_0_[3][10] ),
        .I1(\mem_reg_n_0_[2][10] ),
        .I2(\mem_reg_n_0_[0][10] ),
        .I3(\rd_pntr_reg_n_0_[1] ),
        .I4(\rd_pntr_reg_n_0_[0] ),
        .I5(\mem_reg_n_0_[1][10] ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \b12_buffer[3]_i_1 
       (.I0(\mem_reg_n_0_[3][11] ),
        .I1(\mem_reg_n_0_[2][11] ),
        .I2(\mem_reg_n_0_[1][11] ),
        .I3(\rd_pntr_reg_n_0_[0] ),
        .I4(\rd_pntr_reg_n_0_[1] ),
        .I5(\mem_reg_n_0_[0][11] ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hAAFFCCF0AA00CCF0)) 
    \b12_buffer[4]_i_1 
       (.I0(\mem_reg_n_0_[3][12] ),
        .I1(\mem_reg_n_0_[2][12] ),
        .I2(\mem_reg_n_0_[0][12] ),
        .I3(\rd_pntr_reg_n_0_[1] ),
        .I4(\rd_pntr_reg_n_0_[0] ),
        .I5(\mem_reg_n_0_[1][12] ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \b12_buffer[5]_i_1 
       (.I0(\mem_reg_n_0_[3][13] ),
        .I1(\mem_reg_n_0_[2][13] ),
        .I2(\mem_reg_n_0_[1][13] ),
        .I3(\rd_pntr_reg_n_0_[0] ),
        .I4(\rd_pntr_reg_n_0_[1] ),
        .I5(\mem_reg_n_0_[0][13] ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hF0CCAAFFF0CCAA00)) 
    \b12_buffer[6]_i_1 
       (.I0(\mem_reg_n_0_[2][14] ),
        .I1(\mem_reg_n_0_[1][14] ),
        .I2(\mem_reg_n_0_[3][14] ),
        .I3(\rd_pntr_reg_n_0_[1] ),
        .I4(\rd_pntr_reg_n_0_[0] ),
        .I5(\mem_reg_n_0_[0][14] ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hF0CCAAFFF0CCAA00)) 
    \b12_buffer[7]_i_1 
       (.I0(\mem_reg_n_0_[2][15] ),
        .I1(\mem_reg_n_0_[1][15] ),
        .I2(\mem_reg_n_0_[3][15] ),
        .I3(\rd_pntr_reg_n_0_[1] ),
        .I4(\rd_pntr_reg_n_0_[0] ),
        .I5(\mem_reg_n_0_[0][15] ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \b13_buffer1[0]_i_1 
       (.I0(\mem_reg_n_0_[3][16] ),
        .I1(\mem_reg_n_0_[2][16] ),
        .I2(\mem_reg_n_0_[1][16] ),
        .I3(\rd_pntr_reg_n_0_[0] ),
        .I4(\rd_pntr_reg_n_0_[1] ),
        .I5(\mem_reg_n_0_[0][16] ),
        .O(\mem_reg[2][23]_0 [0]));
  LUT6 #(
    .INIT(64'hAAFFCCF0AA00CCF0)) 
    \b13_buffer1[1]_i_1 
       (.I0(\mem_reg_n_0_[3][17] ),
        .I1(\mem_reg_n_0_[2][17] ),
        .I2(\mem_reg_n_0_[0][17] ),
        .I3(\rd_pntr_reg_n_0_[1] ),
        .I4(\rd_pntr_reg_n_0_[0] ),
        .I5(\mem_reg_n_0_[1][17] ),
        .O(\mem_reg[2][23]_0 [1]));
  LUT6 #(
    .INIT(64'hAAFFCCF0AA00CCF0)) 
    \b13_buffer1[2]_i_1 
       (.I0(\mem_reg_n_0_[3][18] ),
        .I1(\mem_reg_n_0_[2][18] ),
        .I2(\mem_reg_n_0_[0][18] ),
        .I3(\rd_pntr_reg_n_0_[1] ),
        .I4(\rd_pntr_reg_n_0_[0] ),
        .I5(\mem_reg_n_0_[1][18] ),
        .O(\mem_reg[2][23]_0 [2]));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \b13_buffer1[3]_i_1 
       (.I0(\mem_reg_n_0_[3][19] ),
        .I1(\mem_reg_n_0_[2][19] ),
        .I2(\mem_reg_n_0_[1][19] ),
        .I3(\rd_pntr_reg_n_0_[0] ),
        .I4(\rd_pntr_reg_n_0_[1] ),
        .I5(\mem_reg_n_0_[0][19] ),
        .O(\mem_reg[2][23]_0 [3]));
  LUT6 #(
    .INIT(64'hAAFFCCF0AA00CCF0)) 
    \b13_buffer1[4]_i_1 
       (.I0(\mem_reg_n_0_[3][20] ),
        .I1(\mem_reg_n_0_[2][20] ),
        .I2(\mem_reg_n_0_[0][20] ),
        .I3(\rd_pntr_reg_n_0_[1] ),
        .I4(\rd_pntr_reg_n_0_[0] ),
        .I5(\mem_reg_n_0_[1][20] ),
        .O(\mem_reg[2][23]_0 [4]));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \b13_buffer1[5]_i_1 
       (.I0(\mem_reg_n_0_[3][21] ),
        .I1(\mem_reg_n_0_[2][21] ),
        .I2(\mem_reg_n_0_[1][21] ),
        .I3(\rd_pntr_reg_n_0_[0] ),
        .I4(\rd_pntr_reg_n_0_[1] ),
        .I5(\mem_reg_n_0_[0][21] ),
        .O(\mem_reg[2][23]_0 [5]));
  LUT6 #(
    .INIT(64'hF0CCAAFFF0CCAA00)) 
    \b13_buffer1[6]_i_1 
       (.I0(\mem_reg_n_0_[2][22] ),
        .I1(\mem_reg_n_0_[1][22] ),
        .I2(\mem_reg_n_0_[3][22] ),
        .I3(\rd_pntr_reg_n_0_[1] ),
        .I4(\rd_pntr_reg_n_0_[0] ),
        .I5(\mem_reg_n_0_[0][22] ),
        .O(\mem_reg[2][23]_0 [6]));
  LUT6 #(
    .INIT(64'hF0CCAAFFF0CCAA00)) 
    \b13_buffer1[7]_i_1 
       (.I0(\mem_reg_n_0_[2][23] ),
        .I1(\mem_reg_n_0_[1][23] ),
        .I2(\mem_reg_n_0_[3][23] ),
        .I3(\rd_pntr_reg_n_0_[1] ),
        .I4(\rd_pntr_reg_n_0_[0] ),
        .I5(\mem_reg_n_0_[0][23] ),
        .O(\mem_reg[2][23]_0 [7]));
  LUT5 #(
    .INIT(32'h00000040)) 
    \mem[0][23]_i_1__0 
       (.I0(PS[1]),
        .I1(s_axis_valid),
        .I2(\wr_pntr_reg[0]_0 ),
        .I3(\wr_pntr_reg_n_0_[1] ),
        .I4(\wr_pntr_reg_n_0_[0] ),
        .O(\mem[0][23]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \mem[1][23]_i_1__0 
       (.I0(PS[1]),
        .I1(s_axis_valid),
        .I2(\wr_pntr_reg[0]_0 ),
        .I3(\wr_pntr_reg_n_0_[0] ),
        .I4(\wr_pntr_reg_n_0_[1] ),
        .O(\mem[1][23]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \mem[2][23]_i_1__0 
       (.I0(PS[1]),
        .I1(s_axis_valid),
        .I2(\wr_pntr_reg[0]_0 ),
        .I3(\wr_pntr_reg_n_0_[1] ),
        .I4(\wr_pntr_reg_n_0_[0] ),
        .O(\mem[2][23]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \mem[3][23]_i_1__0 
       (.I0(PS[1]),
        .I1(s_axis_valid),
        .I2(\wr_pntr_reg[0]_0 ),
        .I3(\wr_pntr_reg_n_0_[1] ),
        .I4(\wr_pntr_reg_n_0_[0] ),
        .O(mem));
  FDRE \mem_reg[0][0] 
       (.C(axi_clk),
        .CE(\mem[0][23]_i_1__0_n_0 ),
        .D(s_axis_data[0]),
        .Q(\mem_reg_n_0_[0][0] ),
        .R(SR));
  FDRE \mem_reg[0][10] 
       (.C(axi_clk),
        .CE(\mem[0][23]_i_1__0_n_0 ),
        .D(s_axis_data[10]),
        .Q(\mem_reg_n_0_[0][10] ),
        .R(SR));
  FDRE \mem_reg[0][11] 
       (.C(axi_clk),
        .CE(\mem[0][23]_i_1__0_n_0 ),
        .D(s_axis_data[11]),
        .Q(\mem_reg_n_0_[0][11] ),
        .R(SR));
  FDRE \mem_reg[0][12] 
       (.C(axi_clk),
        .CE(\mem[0][23]_i_1__0_n_0 ),
        .D(s_axis_data[12]),
        .Q(\mem_reg_n_0_[0][12] ),
        .R(SR));
  FDRE \mem_reg[0][13] 
       (.C(axi_clk),
        .CE(\mem[0][23]_i_1__0_n_0 ),
        .D(s_axis_data[13]),
        .Q(\mem_reg_n_0_[0][13] ),
        .R(SR));
  FDRE \mem_reg[0][14] 
       (.C(axi_clk),
        .CE(\mem[0][23]_i_1__0_n_0 ),
        .D(s_axis_data[14]),
        .Q(\mem_reg_n_0_[0][14] ),
        .R(SR));
  FDRE \mem_reg[0][15] 
       (.C(axi_clk),
        .CE(\mem[0][23]_i_1__0_n_0 ),
        .D(s_axis_data[15]),
        .Q(\mem_reg_n_0_[0][15] ),
        .R(SR));
  FDRE \mem_reg[0][16] 
       (.C(axi_clk),
        .CE(\mem[0][23]_i_1__0_n_0 ),
        .D(s_axis_data[16]),
        .Q(\mem_reg_n_0_[0][16] ),
        .R(SR));
  FDRE \mem_reg[0][17] 
       (.C(axi_clk),
        .CE(\mem[0][23]_i_1__0_n_0 ),
        .D(s_axis_data[17]),
        .Q(\mem_reg_n_0_[0][17] ),
        .R(SR));
  FDRE \mem_reg[0][18] 
       (.C(axi_clk),
        .CE(\mem[0][23]_i_1__0_n_0 ),
        .D(s_axis_data[18]),
        .Q(\mem_reg_n_0_[0][18] ),
        .R(SR));
  FDRE \mem_reg[0][19] 
       (.C(axi_clk),
        .CE(\mem[0][23]_i_1__0_n_0 ),
        .D(s_axis_data[19]),
        .Q(\mem_reg_n_0_[0][19] ),
        .R(SR));
  FDRE \mem_reg[0][1] 
       (.C(axi_clk),
        .CE(\mem[0][23]_i_1__0_n_0 ),
        .D(s_axis_data[1]),
        .Q(\mem_reg_n_0_[0][1] ),
        .R(SR));
  FDRE \mem_reg[0][20] 
       (.C(axi_clk),
        .CE(\mem[0][23]_i_1__0_n_0 ),
        .D(s_axis_data[20]),
        .Q(\mem_reg_n_0_[0][20] ),
        .R(SR));
  FDRE \mem_reg[0][21] 
       (.C(axi_clk),
        .CE(\mem[0][23]_i_1__0_n_0 ),
        .D(s_axis_data[21]),
        .Q(\mem_reg_n_0_[0][21] ),
        .R(SR));
  FDRE \mem_reg[0][22] 
       (.C(axi_clk),
        .CE(\mem[0][23]_i_1__0_n_0 ),
        .D(s_axis_data[22]),
        .Q(\mem_reg_n_0_[0][22] ),
        .R(SR));
  FDRE \mem_reg[0][23] 
       (.C(axi_clk),
        .CE(\mem[0][23]_i_1__0_n_0 ),
        .D(s_axis_data[23]),
        .Q(\mem_reg_n_0_[0][23] ),
        .R(SR));
  FDRE \mem_reg[0][2] 
       (.C(axi_clk),
        .CE(\mem[0][23]_i_1__0_n_0 ),
        .D(s_axis_data[2]),
        .Q(\mem_reg_n_0_[0][2] ),
        .R(SR));
  FDRE \mem_reg[0][3] 
       (.C(axi_clk),
        .CE(\mem[0][23]_i_1__0_n_0 ),
        .D(s_axis_data[3]),
        .Q(\mem_reg_n_0_[0][3] ),
        .R(SR));
  FDRE \mem_reg[0][4] 
       (.C(axi_clk),
        .CE(\mem[0][23]_i_1__0_n_0 ),
        .D(s_axis_data[4]),
        .Q(\mem_reg_n_0_[0][4] ),
        .R(SR));
  FDRE \mem_reg[0][5] 
       (.C(axi_clk),
        .CE(\mem[0][23]_i_1__0_n_0 ),
        .D(s_axis_data[5]),
        .Q(\mem_reg_n_0_[0][5] ),
        .R(SR));
  FDRE \mem_reg[0][6] 
       (.C(axi_clk),
        .CE(\mem[0][23]_i_1__0_n_0 ),
        .D(s_axis_data[6]),
        .Q(\mem_reg_n_0_[0][6] ),
        .R(SR));
  FDRE \mem_reg[0][7] 
       (.C(axi_clk),
        .CE(\mem[0][23]_i_1__0_n_0 ),
        .D(s_axis_data[7]),
        .Q(\mem_reg_n_0_[0][7] ),
        .R(SR));
  FDRE \mem_reg[0][8] 
       (.C(axi_clk),
        .CE(\mem[0][23]_i_1__0_n_0 ),
        .D(s_axis_data[8]),
        .Q(\mem_reg_n_0_[0][8] ),
        .R(SR));
  FDRE \mem_reg[0][9] 
       (.C(axi_clk),
        .CE(\mem[0][23]_i_1__0_n_0 ),
        .D(s_axis_data[9]),
        .Q(\mem_reg_n_0_[0][9] ),
        .R(SR));
  FDRE \mem_reg[1][0] 
       (.C(axi_clk),
        .CE(\mem[1][23]_i_1__0_n_0 ),
        .D(s_axis_data[0]),
        .Q(\mem_reg_n_0_[1][0] ),
        .R(SR));
  FDRE \mem_reg[1][10] 
       (.C(axi_clk),
        .CE(\mem[1][23]_i_1__0_n_0 ),
        .D(s_axis_data[10]),
        .Q(\mem_reg_n_0_[1][10] ),
        .R(SR));
  FDRE \mem_reg[1][11] 
       (.C(axi_clk),
        .CE(\mem[1][23]_i_1__0_n_0 ),
        .D(s_axis_data[11]),
        .Q(\mem_reg_n_0_[1][11] ),
        .R(SR));
  FDRE \mem_reg[1][12] 
       (.C(axi_clk),
        .CE(\mem[1][23]_i_1__0_n_0 ),
        .D(s_axis_data[12]),
        .Q(\mem_reg_n_0_[1][12] ),
        .R(SR));
  FDRE \mem_reg[1][13] 
       (.C(axi_clk),
        .CE(\mem[1][23]_i_1__0_n_0 ),
        .D(s_axis_data[13]),
        .Q(\mem_reg_n_0_[1][13] ),
        .R(SR));
  FDRE \mem_reg[1][14] 
       (.C(axi_clk),
        .CE(\mem[1][23]_i_1__0_n_0 ),
        .D(s_axis_data[14]),
        .Q(\mem_reg_n_0_[1][14] ),
        .R(SR));
  FDRE \mem_reg[1][15] 
       (.C(axi_clk),
        .CE(\mem[1][23]_i_1__0_n_0 ),
        .D(s_axis_data[15]),
        .Q(\mem_reg_n_0_[1][15] ),
        .R(SR));
  FDRE \mem_reg[1][16] 
       (.C(axi_clk),
        .CE(\mem[1][23]_i_1__0_n_0 ),
        .D(s_axis_data[16]),
        .Q(\mem_reg_n_0_[1][16] ),
        .R(SR));
  FDRE \mem_reg[1][17] 
       (.C(axi_clk),
        .CE(\mem[1][23]_i_1__0_n_0 ),
        .D(s_axis_data[17]),
        .Q(\mem_reg_n_0_[1][17] ),
        .R(SR));
  FDRE \mem_reg[1][18] 
       (.C(axi_clk),
        .CE(\mem[1][23]_i_1__0_n_0 ),
        .D(s_axis_data[18]),
        .Q(\mem_reg_n_0_[1][18] ),
        .R(SR));
  FDRE \mem_reg[1][19] 
       (.C(axi_clk),
        .CE(\mem[1][23]_i_1__0_n_0 ),
        .D(s_axis_data[19]),
        .Q(\mem_reg_n_0_[1][19] ),
        .R(SR));
  FDRE \mem_reg[1][1] 
       (.C(axi_clk),
        .CE(\mem[1][23]_i_1__0_n_0 ),
        .D(s_axis_data[1]),
        .Q(\mem_reg_n_0_[1][1] ),
        .R(SR));
  FDRE \mem_reg[1][20] 
       (.C(axi_clk),
        .CE(\mem[1][23]_i_1__0_n_0 ),
        .D(s_axis_data[20]),
        .Q(\mem_reg_n_0_[1][20] ),
        .R(SR));
  FDRE \mem_reg[1][21] 
       (.C(axi_clk),
        .CE(\mem[1][23]_i_1__0_n_0 ),
        .D(s_axis_data[21]),
        .Q(\mem_reg_n_0_[1][21] ),
        .R(SR));
  FDRE \mem_reg[1][22] 
       (.C(axi_clk),
        .CE(\mem[1][23]_i_1__0_n_0 ),
        .D(s_axis_data[22]),
        .Q(\mem_reg_n_0_[1][22] ),
        .R(SR));
  FDRE \mem_reg[1][23] 
       (.C(axi_clk),
        .CE(\mem[1][23]_i_1__0_n_0 ),
        .D(s_axis_data[23]),
        .Q(\mem_reg_n_0_[1][23] ),
        .R(SR));
  FDRE \mem_reg[1][2] 
       (.C(axi_clk),
        .CE(\mem[1][23]_i_1__0_n_0 ),
        .D(s_axis_data[2]),
        .Q(\mem_reg_n_0_[1][2] ),
        .R(SR));
  FDRE \mem_reg[1][3] 
       (.C(axi_clk),
        .CE(\mem[1][23]_i_1__0_n_0 ),
        .D(s_axis_data[3]),
        .Q(\mem_reg_n_0_[1][3] ),
        .R(SR));
  FDRE \mem_reg[1][4] 
       (.C(axi_clk),
        .CE(\mem[1][23]_i_1__0_n_0 ),
        .D(s_axis_data[4]),
        .Q(\mem_reg_n_0_[1][4] ),
        .R(SR));
  FDRE \mem_reg[1][5] 
       (.C(axi_clk),
        .CE(\mem[1][23]_i_1__0_n_0 ),
        .D(s_axis_data[5]),
        .Q(\mem_reg_n_0_[1][5] ),
        .R(SR));
  FDRE \mem_reg[1][6] 
       (.C(axi_clk),
        .CE(\mem[1][23]_i_1__0_n_0 ),
        .D(s_axis_data[6]),
        .Q(\mem_reg_n_0_[1][6] ),
        .R(SR));
  FDRE \mem_reg[1][7] 
       (.C(axi_clk),
        .CE(\mem[1][23]_i_1__0_n_0 ),
        .D(s_axis_data[7]),
        .Q(\mem_reg_n_0_[1][7] ),
        .R(SR));
  FDRE \mem_reg[1][8] 
       (.C(axi_clk),
        .CE(\mem[1][23]_i_1__0_n_0 ),
        .D(s_axis_data[8]),
        .Q(\mem_reg_n_0_[1][8] ),
        .R(SR));
  FDRE \mem_reg[1][9] 
       (.C(axi_clk),
        .CE(\mem[1][23]_i_1__0_n_0 ),
        .D(s_axis_data[9]),
        .Q(\mem_reg_n_0_[1][9] ),
        .R(SR));
  FDRE \mem_reg[2][0] 
       (.C(axi_clk),
        .CE(\mem[2][23]_i_1__0_n_0 ),
        .D(s_axis_data[0]),
        .Q(\mem_reg_n_0_[2][0] ),
        .R(SR));
  FDRE \mem_reg[2][10] 
       (.C(axi_clk),
        .CE(\mem[2][23]_i_1__0_n_0 ),
        .D(s_axis_data[10]),
        .Q(\mem_reg_n_0_[2][10] ),
        .R(SR));
  FDRE \mem_reg[2][11] 
       (.C(axi_clk),
        .CE(\mem[2][23]_i_1__0_n_0 ),
        .D(s_axis_data[11]),
        .Q(\mem_reg_n_0_[2][11] ),
        .R(SR));
  FDRE \mem_reg[2][12] 
       (.C(axi_clk),
        .CE(\mem[2][23]_i_1__0_n_0 ),
        .D(s_axis_data[12]),
        .Q(\mem_reg_n_0_[2][12] ),
        .R(SR));
  FDRE \mem_reg[2][13] 
       (.C(axi_clk),
        .CE(\mem[2][23]_i_1__0_n_0 ),
        .D(s_axis_data[13]),
        .Q(\mem_reg_n_0_[2][13] ),
        .R(SR));
  FDRE \mem_reg[2][14] 
       (.C(axi_clk),
        .CE(\mem[2][23]_i_1__0_n_0 ),
        .D(s_axis_data[14]),
        .Q(\mem_reg_n_0_[2][14] ),
        .R(SR));
  FDRE \mem_reg[2][15] 
       (.C(axi_clk),
        .CE(\mem[2][23]_i_1__0_n_0 ),
        .D(s_axis_data[15]),
        .Q(\mem_reg_n_0_[2][15] ),
        .R(SR));
  FDRE \mem_reg[2][16] 
       (.C(axi_clk),
        .CE(\mem[2][23]_i_1__0_n_0 ),
        .D(s_axis_data[16]),
        .Q(\mem_reg_n_0_[2][16] ),
        .R(SR));
  FDRE \mem_reg[2][17] 
       (.C(axi_clk),
        .CE(\mem[2][23]_i_1__0_n_0 ),
        .D(s_axis_data[17]),
        .Q(\mem_reg_n_0_[2][17] ),
        .R(SR));
  FDRE \mem_reg[2][18] 
       (.C(axi_clk),
        .CE(\mem[2][23]_i_1__0_n_0 ),
        .D(s_axis_data[18]),
        .Q(\mem_reg_n_0_[2][18] ),
        .R(SR));
  FDRE \mem_reg[2][19] 
       (.C(axi_clk),
        .CE(\mem[2][23]_i_1__0_n_0 ),
        .D(s_axis_data[19]),
        .Q(\mem_reg_n_0_[2][19] ),
        .R(SR));
  FDRE \mem_reg[2][1] 
       (.C(axi_clk),
        .CE(\mem[2][23]_i_1__0_n_0 ),
        .D(s_axis_data[1]),
        .Q(\mem_reg_n_0_[2][1] ),
        .R(SR));
  FDRE \mem_reg[2][20] 
       (.C(axi_clk),
        .CE(\mem[2][23]_i_1__0_n_0 ),
        .D(s_axis_data[20]),
        .Q(\mem_reg_n_0_[2][20] ),
        .R(SR));
  FDRE \mem_reg[2][21] 
       (.C(axi_clk),
        .CE(\mem[2][23]_i_1__0_n_0 ),
        .D(s_axis_data[21]),
        .Q(\mem_reg_n_0_[2][21] ),
        .R(SR));
  FDRE \mem_reg[2][22] 
       (.C(axi_clk),
        .CE(\mem[2][23]_i_1__0_n_0 ),
        .D(s_axis_data[22]),
        .Q(\mem_reg_n_0_[2][22] ),
        .R(SR));
  FDRE \mem_reg[2][23] 
       (.C(axi_clk),
        .CE(\mem[2][23]_i_1__0_n_0 ),
        .D(s_axis_data[23]),
        .Q(\mem_reg_n_0_[2][23] ),
        .R(SR));
  FDRE \mem_reg[2][2] 
       (.C(axi_clk),
        .CE(\mem[2][23]_i_1__0_n_0 ),
        .D(s_axis_data[2]),
        .Q(\mem_reg_n_0_[2][2] ),
        .R(SR));
  FDRE \mem_reg[2][3] 
       (.C(axi_clk),
        .CE(\mem[2][23]_i_1__0_n_0 ),
        .D(s_axis_data[3]),
        .Q(\mem_reg_n_0_[2][3] ),
        .R(SR));
  FDRE \mem_reg[2][4] 
       (.C(axi_clk),
        .CE(\mem[2][23]_i_1__0_n_0 ),
        .D(s_axis_data[4]),
        .Q(\mem_reg_n_0_[2][4] ),
        .R(SR));
  FDRE \mem_reg[2][5] 
       (.C(axi_clk),
        .CE(\mem[2][23]_i_1__0_n_0 ),
        .D(s_axis_data[5]),
        .Q(\mem_reg_n_0_[2][5] ),
        .R(SR));
  FDRE \mem_reg[2][6] 
       (.C(axi_clk),
        .CE(\mem[2][23]_i_1__0_n_0 ),
        .D(s_axis_data[6]),
        .Q(\mem_reg_n_0_[2][6] ),
        .R(SR));
  FDRE \mem_reg[2][7] 
       (.C(axi_clk),
        .CE(\mem[2][23]_i_1__0_n_0 ),
        .D(s_axis_data[7]),
        .Q(\mem_reg_n_0_[2][7] ),
        .R(SR));
  FDRE \mem_reg[2][8] 
       (.C(axi_clk),
        .CE(\mem[2][23]_i_1__0_n_0 ),
        .D(s_axis_data[8]),
        .Q(\mem_reg_n_0_[2][8] ),
        .R(SR));
  FDRE \mem_reg[2][9] 
       (.C(axi_clk),
        .CE(\mem[2][23]_i_1__0_n_0 ),
        .D(s_axis_data[9]),
        .Q(\mem_reg_n_0_[2][9] ),
        .R(SR));
  FDRE \mem_reg[3][0] 
       (.C(axi_clk),
        .CE(mem),
        .D(s_axis_data[0]),
        .Q(\mem_reg_n_0_[3][0] ),
        .R(SR));
  FDRE \mem_reg[3][10] 
       (.C(axi_clk),
        .CE(mem),
        .D(s_axis_data[10]),
        .Q(\mem_reg_n_0_[3][10] ),
        .R(SR));
  FDRE \mem_reg[3][11] 
       (.C(axi_clk),
        .CE(mem),
        .D(s_axis_data[11]),
        .Q(\mem_reg_n_0_[3][11] ),
        .R(SR));
  FDRE \mem_reg[3][12] 
       (.C(axi_clk),
        .CE(mem),
        .D(s_axis_data[12]),
        .Q(\mem_reg_n_0_[3][12] ),
        .R(SR));
  FDRE \mem_reg[3][13] 
       (.C(axi_clk),
        .CE(mem),
        .D(s_axis_data[13]),
        .Q(\mem_reg_n_0_[3][13] ),
        .R(SR));
  FDRE \mem_reg[3][14] 
       (.C(axi_clk),
        .CE(mem),
        .D(s_axis_data[14]),
        .Q(\mem_reg_n_0_[3][14] ),
        .R(SR));
  FDRE \mem_reg[3][15] 
       (.C(axi_clk),
        .CE(mem),
        .D(s_axis_data[15]),
        .Q(\mem_reg_n_0_[3][15] ),
        .R(SR));
  FDRE \mem_reg[3][16] 
       (.C(axi_clk),
        .CE(mem),
        .D(s_axis_data[16]),
        .Q(\mem_reg_n_0_[3][16] ),
        .R(SR));
  FDRE \mem_reg[3][17] 
       (.C(axi_clk),
        .CE(mem),
        .D(s_axis_data[17]),
        .Q(\mem_reg_n_0_[3][17] ),
        .R(SR));
  FDRE \mem_reg[3][18] 
       (.C(axi_clk),
        .CE(mem),
        .D(s_axis_data[18]),
        .Q(\mem_reg_n_0_[3][18] ),
        .R(SR));
  FDRE \mem_reg[3][19] 
       (.C(axi_clk),
        .CE(mem),
        .D(s_axis_data[19]),
        .Q(\mem_reg_n_0_[3][19] ),
        .R(SR));
  FDRE \mem_reg[3][1] 
       (.C(axi_clk),
        .CE(mem),
        .D(s_axis_data[1]),
        .Q(\mem_reg_n_0_[3][1] ),
        .R(SR));
  FDRE \mem_reg[3][20] 
       (.C(axi_clk),
        .CE(mem),
        .D(s_axis_data[20]),
        .Q(\mem_reg_n_0_[3][20] ),
        .R(SR));
  FDRE \mem_reg[3][21] 
       (.C(axi_clk),
        .CE(mem),
        .D(s_axis_data[21]),
        .Q(\mem_reg_n_0_[3][21] ),
        .R(SR));
  FDRE \mem_reg[3][22] 
       (.C(axi_clk),
        .CE(mem),
        .D(s_axis_data[22]),
        .Q(\mem_reg_n_0_[3][22] ),
        .R(SR));
  FDRE \mem_reg[3][23] 
       (.C(axi_clk),
        .CE(mem),
        .D(s_axis_data[23]),
        .Q(\mem_reg_n_0_[3][23] ),
        .R(SR));
  FDRE \mem_reg[3][2] 
       (.C(axi_clk),
        .CE(mem),
        .D(s_axis_data[2]),
        .Q(\mem_reg_n_0_[3][2] ),
        .R(SR));
  FDRE \mem_reg[3][3] 
       (.C(axi_clk),
        .CE(mem),
        .D(s_axis_data[3]),
        .Q(\mem_reg_n_0_[3][3] ),
        .R(SR));
  FDRE \mem_reg[3][4] 
       (.C(axi_clk),
        .CE(mem),
        .D(s_axis_data[4]),
        .Q(\mem_reg_n_0_[3][4] ),
        .R(SR));
  FDRE \mem_reg[3][5] 
       (.C(axi_clk),
        .CE(mem),
        .D(s_axis_data[5]),
        .Q(\mem_reg_n_0_[3][5] ),
        .R(SR));
  FDRE \mem_reg[3][6] 
       (.C(axi_clk),
        .CE(mem),
        .D(s_axis_data[6]),
        .Q(\mem_reg_n_0_[3][6] ),
        .R(SR));
  FDRE \mem_reg[3][7] 
       (.C(axi_clk),
        .CE(mem),
        .D(s_axis_data[7]),
        .Q(\mem_reg_n_0_[3][7] ),
        .R(SR));
  FDRE \mem_reg[3][8] 
       (.C(axi_clk),
        .CE(mem),
        .D(s_axis_data[8]),
        .Q(\mem_reg_n_0_[3][8] ),
        .R(SR));
  FDRE \mem_reg[3][9] 
       (.C(axi_clk),
        .CE(mem),
        .D(s_axis_data[9]),
        .Q(\mem_reg_n_0_[3][9] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__0_carry__0_i_10
       (.I0(\mem_reg[0][7]_0 [0]),
        .I1(o_out1__0_carry__0_i_6),
        .O(\mem_reg[3][0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__0_carry__0_i_11
       (.I0(\mem_reg[0][7]_0 [0]),
        .I1(o_out1__0_carry__0_i_7_0),
        .O(o_out1__0_carry__0_i_11_n_0));
  LUT6 #(
    .INIT(64'h4F44040004000400)) 
    o_out1__0_carry__0_i_3
       (.I0(\mem_reg[3][2]_0 ),
        .I1(o_out1__0_carry__0_0),
        .I2(\mem_reg[3][1]_1 ),
        .I3(o_out1__0_carry_i_4),
        .I4(\mem_reg[0][7]_0 [0]),
        .I5(o_out1__0_carry__0_1),
        .O(\mem_reg[3][2]_1 [1]));
  LUT6 #(
    .INIT(64'h1F11010001000100)) 
    o_out1__0_carry__0_i_4
       (.I0(\mem_reg[3][2]_0 ),
        .I1(o_out1__0_carry__0),
        .I2(\mem_reg[3][1]_1 ),
        .I3(o_out1__0_carry__0_0),
        .I4(\mem_reg[0][7]_0 [0]),
        .I5(o_out1__0_carry_i_4),
        .O(\mem_reg[3][2]_1 [0]));
  LUT6 #(
    .INIT(64'h59A65959A659A6A6)) 
    o_out1__0_carry__0_i_7
       (.I0(\mem_reg[3][2]_1 [1]),
        .I1(o_out1__0_carry__0_1),
        .I2(\mem_reg[3][1]_1 ),
        .I3(\mem_reg[3][2]_0 ),
        .I4(o_out1__0_carry_i_4),
        .I5(o_out1__0_carry__0_i_11_n_0),
        .O(\mem_reg[3][4]_2 [1]));
  LUT6 #(
    .INIT(64'h9A65659A659A659A)) 
    o_out1__0_carry__0_i_8
       (.I0(\mem_reg[3][2]_1 [0]),
        .I1(\mem_reg[3][2]_0 ),
        .I2(o_out1__0_carry__0_0),
        .I3(o_out1__0_carry__0_2),
        .I4(\mem_reg[0][7]_0 [0]),
        .I5(o_out1__0_carry__0_1),
        .O(\mem_reg[3][4]_2 [0]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__0_carry__0_i_9
       (.I0(\mem_reg[0][7]_0 [0]),
        .I1(o_out1__0_carry__0_i_5),
        .O(\mem_reg[3][0]_2 ));
  LUT6 #(
    .INIT(64'h004050DC50DC50DC)) 
    o_out1__0_carry__1_i_2
       (.I0(\mem_reg[3][1]_1 ),
        .I1(o_out1__0_carry__0_i_7_0),
        .I2(o_out1__0_carry__0_i_6),
        .I3(\mem_reg[3][2]_0 ),
        .I4(\mem_reg[0][7]_0 [0]),
        .I5(o_out1__0_carry__0_i_5),
        .O(\mem_reg[3][1]_0 ));
  LUT4 #(
    .INIT(16'hFF83)) 
    o_out1__0_carry__1_i_3
       (.I0(\mem_reg[3][1]_1 ),
        .I1(o_out1__0_carry__0_i_6),
        .I2(o_out1__0_carry__0_i_5),
        .I3(\mem_reg[3][2]_0 ),
        .O(\mem_reg[3][1]_2 [1]));
  LUT6 #(
    .INIT(64'hFF504C2FFF0FB343)) 
    o_out1__0_carry__1_i_4
       (.I0(\mem_reg[0][7]_0 [0]),
        .I1(o_out1__0_carry__0_i_7_0),
        .I2(o_out1__0_carry__0_i_5),
        .I3(\mem_reg[3][1]_1 ),
        .I4(\mem_reg[3][2]_0 ),
        .I5(o_out1__0_carry__0_i_6),
        .O(\mem_reg[3][1]_2 [0]));
  LUT6 #(
    .INIT(64'h5500330F55FF330F)) 
    o_out1__0_carry_i_10
       (.I0(\mem_reg_n_0_[3][1] ),
        .I1(\mem_reg_n_0_[2][1] ),
        .I2(\mem_reg_n_0_[0][1] ),
        .I3(\rd_pntr_reg_n_0_[1] ),
        .I4(\rd_pntr_reg_n_0_[0] ),
        .I5(\mem_reg_n_0_[1][1] ),
        .O(\mem_reg[3][1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__0_carry_i_12
       (.I0(\mem_reg[0][7]_0 [0]),
        .I1(o_out1__0_carry_i_4),
        .O(\mem_reg[3][0]_0 ));
  LUT4 #(
    .INIT(16'h111E)) 
    o_out1__0_carry_i_2
       (.I0(\mem_reg[3][1]_1 ),
        .I1(o_out1__0_carry__0),
        .I2(\mem_reg[3][2]_0 ),
        .I3(o_out1__0_carry),
        .O(DI));
  LUT2 #(
    .INIT(4'h2)) 
    o_out1__0_carry_i_7
       (.I0(\mem_reg[0][7]_0 [0]),
        .I1(o_out1__0_carry),
        .O(S));
  LUT6 #(
    .INIT(64'h5500330F55FF330F)) 
    o_out1__0_carry_i_8
       (.I0(\mem_reg_n_0_[3][2] ),
        .I1(\mem_reg_n_0_[2][2] ),
        .I2(\mem_reg_n_0_[0][2] ),
        .I3(\rd_pntr_reg_n_0_[1] ),
        .I4(\rd_pntr_reg_n_0_[0] ),
        .I5(\mem_reg_n_0_[1][2] ),
        .O(\mem_reg[3][2]_0 ));
  LUT6 #(
    .INIT(64'h040004004F440400)) 
    o_out1__30_carry__0_i_3
       (.I0(\mem_reg[3][5]_0 ),
        .I1(o_out1__0_carry__0_0),
        .I2(\mem_reg[3][4]_1 ),
        .I3(o_out1__0_carry_i_4),
        .I4(o_out1__0_carry__0_1),
        .I5(\mem_reg[3][3]_0 ),
        .O(\mem_reg[3][5]_1 [1]));
  LUT6 #(
    .INIT(64'h010001001F110100)) 
    o_out1__30_carry__0_i_4
       (.I0(\mem_reg[3][5]_0 ),
        .I1(o_out1__0_carry__0),
        .I2(\mem_reg[3][4]_1 ),
        .I3(o_out1__0_carry__0_0),
        .I4(o_out1__0_carry_i_4),
        .I5(\mem_reg[3][3]_0 ),
        .O(\mem_reg[3][5]_1 [0]));
  LUT6 #(
    .INIT(64'h59A65959A659A6A6)) 
    o_out1__30_carry__0_i_7
       (.I0(\mem_reg[3][5]_1 [1]),
        .I1(o_out1__0_carry__0_1),
        .I2(\mem_reg[3][4]_1 ),
        .I3(\mem_reg[3][5]_0 ),
        .I4(o_out1__0_carry_i_4),
        .I5(o_out1__30_carry__0_0),
        .O(\mem_reg[3][4]_3 [1]));
  LUT6 #(
    .INIT(64'h659A659A9A65659A)) 
    o_out1__30_carry__0_i_8
       (.I0(\mem_reg[3][5]_1 [0]),
        .I1(\mem_reg[3][5]_0 ),
        .I2(o_out1__0_carry__0_0),
        .I3(o_out1__30_carry__0),
        .I4(o_out1__0_carry__0_1),
        .I5(\mem_reg[3][3]_0 ),
        .O(\mem_reg[3][4]_3 [0]));
  LUT6 #(
    .INIT(64'h50DC50DC004050DC)) 
    o_out1__30_carry__1_i_2
       (.I0(\mem_reg[3][4]_1 ),
        .I1(o_out1__0_carry__0_i_7_0),
        .I2(o_out1__0_carry__0_i_6),
        .I3(\mem_reg[3][5]_0 ),
        .I4(o_out1__0_carry__0_i_5),
        .I5(\mem_reg[3][3]_0 ),
        .O(\mem_reg[3][4]_0 ));
  LUT4 #(
    .INIT(16'hFF83)) 
    o_out1__30_carry__1_i_3
       (.I0(\mem_reg[3][4]_1 ),
        .I1(o_out1__0_carry__0_i_6),
        .I2(o_out1__0_carry__0_i_5),
        .I3(\mem_reg[3][5]_0 ),
        .O(\mem_reg[3][4]_4 [1]));
  LUT6 #(
    .INIT(64'hFFA08C1FFF0F7383)) 
    o_out1__30_carry__1_i_4
       (.I0(\mem_reg[3][3]_0 ),
        .I1(o_out1__0_carry__0_i_7_0),
        .I2(o_out1__0_carry__0_i_5),
        .I3(\mem_reg[3][4]_1 ),
        .I4(\mem_reg[3][5]_0 ),
        .I5(o_out1__0_carry__0_i_6),
        .O(\mem_reg[3][4]_4 [0]));
  LUT6 #(
    .INIT(64'h444BBBB4444B444B)) 
    o_out1__30_carry_i_1
       (.I0(\mem_reg[3][3]_0 ),
        .I1(o_out1__0_carry_i_4),
        .I2(\mem_reg[3][5]_0 ),
        .I3(o_out1__0_carry__0),
        .I4(\mem_reg[3][4]_1 ),
        .I5(o_out1__0_carry__0_0),
        .O(\mem_reg[3][3]_1 [1]));
  LUT6 #(
    .INIT(64'h5500330F55FF330F)) 
    o_out1__30_carry_i_10
       (.I0(\mem_reg_n_0_[3][4] ),
        .I1(\mem_reg_n_0_[2][4] ),
        .I2(\mem_reg_n_0_[0][4] ),
        .I3(\rd_pntr_reg_n_0_[1] ),
        .I4(\rd_pntr_reg_n_0_[0] ),
        .I5(\mem_reg_n_0_[1][4] ),
        .O(\mem_reg[3][4]_1 ));
  LUT4 #(
    .INIT(16'h111E)) 
    o_out1__30_carry_i_2
       (.I0(\mem_reg[3][4]_1 ),
        .I1(o_out1__0_carry__0),
        .I2(\mem_reg[3][5]_0 ),
        .I3(o_out1__0_carry),
        .O(\mem_reg[3][3]_1 [0]));
  LUT4 #(
    .INIT(16'h111E)) 
    o_out1__30_carry_i_6
       (.I0(\mem_reg[3][3]_0 ),
        .I1(o_out1__0_carry__0),
        .I2(\mem_reg[3][4]_1 ),
        .I3(o_out1__0_carry),
        .O(\mem_reg[3][3]_2 ));
  LUT6 #(
    .INIT(64'h5500330F55FF330F)) 
    o_out1__30_carry_i_8
       (.I0(\mem_reg_n_0_[3][3] ),
        .I1(\mem_reg_n_0_[2][3] ),
        .I2(\mem_reg_n_0_[0][3] ),
        .I3(\rd_pntr_reg_n_0_[1] ),
        .I4(\rd_pntr_reg_n_0_[0] ),
        .I5(\mem_reg_n_0_[1][3] ),
        .O(\mem_reg[3][3]_0 ));
  LUT6 #(
    .INIT(64'h55330F0055330FFF)) 
    o_out1__30_carry_i_9
       (.I0(\mem_reg_n_0_[3][5] ),
        .I1(\mem_reg_n_0_[2][5] ),
        .I2(\mem_reg_n_0_[1][5] ),
        .I3(\rd_pntr_reg_n_0_[0] ),
        .I4(\rd_pntr_reg_n_0_[1] ),
        .I5(\mem_reg_n_0_[0][5] ),
        .O(\mem_reg[3][5]_0 ));
  LUT4 #(
    .INIT(16'hB0BB)) 
    o_out1__59_carry__1_i_1
       (.I0(\mem_reg[2][7]_1 ),
        .I1(o_out1__0_carry__0_i_6),
        .I2(\mem_reg[3][6]_0 ),
        .I3(o_out1__0_carry__0_i_5),
        .O(\mem_reg[2][7]_0 ));
  LUT4 #(
    .INIT(16'hADF3)) 
    o_out1__59_carry__1_i_2
       (.I0(\mem_reg[3][6]_0 ),
        .I1(o_out1__0_carry__0_i_6),
        .I2(\mem_reg[2][7]_1 ),
        .I3(o_out1__0_carry__0_i_5),
        .O(\mem_reg[3][6]_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    o_out1__59_carry_i_1
       (.I0(\mem_reg[2][7]_1 ),
        .I1(o_out1__0_carry__0),
        .O(\mem_reg[2][7]_2 ));
  LUT4 #(
    .INIT(16'h1E11)) 
    o_out1__59_carry_i_5
       (.I0(\mem_reg[2][7]_1 ),
        .I1(o_out1__0_carry__0),
        .I2(\mem_reg[3][6]_0 ),
        .I3(o_out1__0_carry__0_0),
        .O(\mem_reg[2][7]_3 [1]));
  LUT4 #(
    .INIT(16'hEEE1)) 
    o_out1__59_carry_i_6
       (.I0(\mem_reg[2][7]_1 ),
        .I1(o_out1__0_carry),
        .I2(\mem_reg[3][6]_0 ),
        .I3(o_out1__0_carry__0),
        .O(\mem_reg[2][7]_3 [0]));
  LUT6 #(
    .INIT(64'h0F3355000F3355FF)) 
    o_out1__59_carry_i_8
       (.I0(\mem_reg_n_0_[2][7] ),
        .I1(\mem_reg_n_0_[1][7] ),
        .I2(\mem_reg_n_0_[3][7] ),
        .I3(\rd_pntr_reg_n_0_[1] ),
        .I4(\rd_pntr_reg_n_0_[0] ),
        .I5(\mem_reg_n_0_[0][7] ),
        .O(\mem_reg[2][7]_1 ));
  LUT6 #(
    .INIT(64'h5500330F55FF330F)) 
    o_out1__59_carry_i_9
       (.I0(\mem_reg_n_0_[3][6] ),
        .I1(\mem_reg_n_0_[2][6] ),
        .I2(\mem_reg_n_0_[0][6] ),
        .I3(\rd_pntr_reg_n_0_[1] ),
        .I4(\rd_pntr_reg_n_0_[0] ),
        .I5(\mem_reg_n_0_[1][6] ),
        .O(\mem_reg[3][6]_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    o_out1__86_carry__1_i_3
       (.I0(CO),
        .I1(o_out1__86_carry__1_0[2]),
        .I2(o_out1__86_carry__1_1),
        .O(o_out1__59_carry__1[2]));
  LUT4 #(
    .INIT(16'h8778)) 
    o_out1__86_carry__1_i_4
       (.I0(o_out1__86_carry__1[1]),
        .I1(o_out1__86_carry__1_0[1]),
        .I2(CO),
        .I3(o_out1__86_carry__1_0[2]),
        .O(o_out1__59_carry__1[1]));
  LUT4 #(
    .INIT(16'h8778)) 
    o_out1__86_carry__1_i_5
       (.I0(o_out1__86_carry__1[0]),
        .I1(o_out1__86_carry__1_0[0]),
        .I2(o_out1__86_carry__1[1]),
        .I3(o_out1__86_carry__1_0[1]),
        .O(o_out1__59_carry__1[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[15]_i_3__0 
       (.I0(\o_out_reg[15]_0 [2]),
        .I1(m_axis_data[2]),
        .O(\o_out[15]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[15]_i_4 
       (.I0(\o_out_reg[15]_0 [1]),
        .I1(m_axis_data[1]),
        .O(\o_out[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[15]_i_5 
       (.I0(\o_out_reg[15]_0 [0]),
        .I1(m_axis_data[0]),
        .O(\o_out[15]_i_5_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \o_out_reg[15]_i_1 
       (.CI(\o_out_reg[15] ),
        .CO({\NLW_o_out_reg[15]_i_1_CO_UNCONNECTED [3],\o_out_reg[15]_i_1_n_1 ,\o_out_reg[15]_i_1_n_2 ,\o_out_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\o_out_reg[15]_0 }),
        .O(O),
        .S({\o_out_reg[15]_1 ,\o_out[15]_i_3__0_n_0 ,\o_out[15]_i_4_n_0 ,\o_out[15]_i_5_n_0 }));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \o_y[0]_i_1 
       (.I0(\mem_reg_n_0_[3][0] ),
        .I1(\mem_reg_n_0_[2][0] ),
        .I2(\mem_reg_n_0_[1][0] ),
        .I3(\rd_pntr_reg_n_0_[0] ),
        .I4(\rd_pntr_reg_n_0_[1] ),
        .I5(\mem_reg_n_0_[0][0] ),
        .O(\mem_reg[0][7]_0 [0]));
  LUT6 #(
    .INIT(64'hFBF8CBC83B380B08)) 
    \o_y[1]_i_1 
       (.I0(\mem_reg_n_0_[1][1] ),
        .I1(\rd_pntr_reg_n_0_[0] ),
        .I2(\rd_pntr_reg_n_0_[1] ),
        .I3(\mem_reg_n_0_[0][1] ),
        .I4(\mem_reg_n_0_[2][1] ),
        .I5(\mem_reg_n_0_[3][1] ),
        .O(\mem_reg[0][7]_0 [1]));
  LUT6 #(
    .INIT(64'hFBF8CBC83B380B08)) 
    \o_y[2]_i_1 
       (.I0(\mem_reg_n_0_[1][2] ),
        .I1(\rd_pntr_reg_n_0_[0] ),
        .I2(\rd_pntr_reg_n_0_[1] ),
        .I3(\mem_reg_n_0_[0][2] ),
        .I4(\mem_reg_n_0_[2][2] ),
        .I5(\mem_reg_n_0_[3][2] ),
        .O(\mem_reg[0][7]_0 [2]));
  LUT6 #(
    .INIT(64'hFBF8CBC83B380B08)) 
    \o_y[3]_i_1 
       (.I0(\mem_reg_n_0_[1][3] ),
        .I1(\rd_pntr_reg_n_0_[0] ),
        .I2(\rd_pntr_reg_n_0_[1] ),
        .I3(\mem_reg_n_0_[0][3] ),
        .I4(\mem_reg_n_0_[2][3] ),
        .I5(\mem_reg_n_0_[3][3] ),
        .O(\mem_reg[0][7]_0 [3]));
  LUT6 #(
    .INIT(64'hFBF8CBC83B380B08)) 
    \o_y[4]_i_1 
       (.I0(\mem_reg_n_0_[1][4] ),
        .I1(\rd_pntr_reg_n_0_[0] ),
        .I2(\rd_pntr_reg_n_0_[1] ),
        .I3(\mem_reg_n_0_[0][4] ),
        .I4(\mem_reg_n_0_[2][4] ),
        .I5(\mem_reg_n_0_[3][4] ),
        .O(\mem_reg[0][7]_0 [4]));
  LUT6 #(
    .INIT(64'hFECEF2C23E0E3202)) 
    \o_y[5]_i_1 
       (.I0(\mem_reg_n_0_[0][5] ),
        .I1(\rd_pntr_reg_n_0_[1] ),
        .I2(\rd_pntr_reg_n_0_[0] ),
        .I3(\mem_reg_n_0_[1][5] ),
        .I4(\mem_reg_n_0_[2][5] ),
        .I5(\mem_reg_n_0_[3][5] ),
        .O(\mem_reg[0][7]_0 [5]));
  LUT6 #(
    .INIT(64'hFBF8CBC83B380B08)) 
    \o_y[6]_i_1 
       (.I0(\mem_reg_n_0_[1][6] ),
        .I1(\rd_pntr_reg_n_0_[0] ),
        .I2(\rd_pntr_reg_n_0_[1] ),
        .I3(\mem_reg_n_0_[0][6] ),
        .I4(\mem_reg_n_0_[2][6] ),
        .I5(\mem_reg_n_0_[3][6] ),
        .O(\mem_reg[0][7]_0 [6]));
  LUT6 #(
    .INIT(64'hFE3EF232CE0EC202)) 
    \o_y[7]_i_1 
       (.I0(\mem_reg_n_0_[0][7] ),
        .I1(\rd_pntr_reg_n_0_[0] ),
        .I2(\rd_pntr_reg_n_0_[1] ),
        .I3(\mem_reg_n_0_[3][7] ),
        .I4(\mem_reg_n_0_[1][7] ),
        .I5(\mem_reg_n_0_[2][7] ),
        .O(\mem_reg[0][7]_0 [7]));
  LUT1 #(
    .INIT(2'h1)) 
    \rd_pntr[0]_i_1__0 
       (.I0(\rd_pntr_reg_n_0_[0] ),
        .O(\rd_pntr[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_pntr[1]_i_1__0 
       (.I0(\rd_pntr_reg_n_0_[0] ),
        .I1(\rd_pntr_reg_n_0_[1] ),
        .O(\rd_pntr[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0440444444440440)) 
    \rd_pntr[1]_i_4 
       (.I0(PS[0]),
        .I1(PS[1]),
        .I2(\wr_pntr_reg_n_0_[0] ),
        .I3(\rd_pntr_reg_n_0_[0] ),
        .I4(\wr_pntr_reg_n_0_[1] ),
        .I5(\rd_pntr_reg_n_0_[1] ),
        .O(\FSM_sequential_PS_reg[0] ));
  FDRE \rd_pntr_reg[0] 
       (.C(axi_clk),
        .CE(\rd_pntr_reg[0]_0 ),
        .D(\rd_pntr[0]_i_1__0_n_0 ),
        .Q(\rd_pntr_reg_n_0_[0] ),
        .R(SR));
  FDRE \rd_pntr_reg[1] 
       (.C(axi_clk),
        .CE(\rd_pntr_reg[0]_0 ),
        .D(\rd_pntr[1]_i_1__0_n_0 ),
        .Q(\rd_pntr_reg_n_0_[1] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h0000BDDB)) 
    s_axis_ready_INST_0
       (.I0(\wr_pntr_reg_n_0_[0] ),
        .I1(\rd_pntr_reg_n_0_[0] ),
        .I2(\rd_pntr_reg_n_0_[1] ),
        .I3(\wr_pntr_reg_n_0_[1] ),
        .I4(s_axis_ready),
        .O(\wr_pntr_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \wr_pntr[0]_i_1__0 
       (.I0(\wr_pntr_reg_n_0_[0] ),
        .O(\wr_pntr[0]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \wr_pntr[1]_i_1 
       (.I0(\wr_pntr_reg[0]_0 ),
        .I1(s_axis_valid),
        .I2(PS[1]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_pntr[1]_i_1__0 
       (.I0(\wr_pntr_reg_n_0_[0] ),
        .I1(\wr_pntr_reg_n_0_[1] ),
        .O(\wr_pntr[1]_i_1__0_n_0 ));
  FDRE \wr_pntr_reg[0] 
       (.C(axi_clk),
        .CE(E),
        .D(\wr_pntr[0]_i_1__0_n_0 ),
        .Q(\wr_pntr_reg_n_0_[0] ),
        .R(SR));
  FDRE \wr_pntr_reg[1] 
       (.C(axi_clk),
        .CE(E),
        .D(\wr_pntr[1]_i_1__0_n_0 ),
        .Q(\wr_pntr_reg_n_0_[1] ),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "MAC" *) 
module design_1_SystolicArrayAxiWrap_0_0_MAC
   (m_axis_data,
    CO,
    o_out1__30_carry__1_i_4,
    o_out1__59_carry__0_i_8,
    o_out1__59_carry__1_i_2,
    o_out1__86_carry__1_i_5,
    \o_x_reg[1]_0 ,
    Q,
    \a21_buffer_reg[1] ,
    \o_y_reg[7]_0 ,
    s_axis_valid_0,
    E,
    \o_out_reg[15]_0 ,
    \b12_buffer_reg[2] ,
    \o_x_reg[3]_0 ,
    \b12_buffer_reg[5] ,
    \b12_buffer_reg[3] ,
    \b12_buffer_reg[7] ,
    \b12_buffer_reg[2]_0 ,
    \o_x_reg[1]_1 ,
    \b12_buffer_reg[5]_0 ,
    \o_x_reg[1]_2 ,
    \b12_buffer_reg[7]_0 ,
    \b12_buffer_reg[7]_1 ,
    \o_y_reg[2]_0 ,
    \a21_buffer_reg[3] ,
    \o_y_reg[5]_0 ,
    \o_y_reg[3]_0 ,
    \o_y_reg[7]_1 ,
    \o_y_reg[2]_1 ,
    \a21_buffer_reg[1]_0 ,
    \o_y_reg[5]_1 ,
    \a21_buffer_reg[1]_1 ,
    \o_y_reg[7]_2 ,
    \o_y_reg[7]_3 ,
    \o_out_reg[11]_0 ,
    \o_out_reg[15]_1 ,
    \o_out_reg[15]_2 ,
    \b12_buffer_reg[1] ,
    \b12_buffer_reg[1]_0 ,
    \b12_buffer_reg[4] ,
    \b12_buffer_reg[4]_0 ,
    \o_x_reg[5]_0 ,
    \b12_buffer_reg[6] ,
    o_out1__59_carry__1_0,
    \o_y_reg[1]_0 ,
    \o_y_reg[1]_1 ,
    \o_y_reg[4]_0 ,
    \o_y_reg[4]_1 ,
    \a21_buffer_reg[5] ,
    \o_y_reg[6]_0 ,
    o_out1__59_carry__1_1,
    p_0_in,
    axi_clk,
    O,
    DI,
    S,
    o_out1__86_carry_i_8_0,
    o_out1__86_carry_i_8_1,
    o_out1__86_carry__0_i_3_0,
    o_out1__86_carry__0_i_3_1,
    \o_out[3]_i_2_0 ,
    \o_out[3]_i_2_1 ,
    o_out1__86_carry__0_i_4_0,
    o_out1__86_carry__0_i_4_1,
    o_out1__86_carry__1_i_5_0,
    o_out1__86_carry__1_i_5_1,
    o_out1__86_carry_i_1_0,
    o_out1__86_carry_i_1_1,
    o_out1__86_carry__0_i_6_0,
    o_out1__86_carry__0_i_6_1,
    o_out1__86_carry__1_i_3,
    o_out1__86_carry__1_i_3_0,
    \o_out_reg[15]_3 ,
    o_out1__59_carry__1_2,
    o_out1__59_carry__1_3,
    \FSM_sequential_PS_reg[0] ,
    s_axis_valid,
    PS,
    axi_rst_n,
    m_axis_ready,
    \o_out_reg[15]_4 ,
    \o_out_reg[15]_5 ,
    \o_out_reg[15]_6 ,
    \o_out_reg[15]_7 ,
    \o_out_reg[15]_8 ,
    \o_out_reg[15]_9 ,
    o_out1__86_carry__1_0,
    o_out1__86_carry__1_1,
    o_out1__86_carry__1_2,
    o_out1__86_carry__1_3,
    \o_out_reg[15]_10 ,
    o_out1__86_carry__1_4,
    o_out1__86_carry__1_5,
    o_out1__86_carry__1_6,
    o_out1__86_carry__1_7,
    D,
    \o_y_reg[7]_4 );
  output [15:0]m_axis_data;
  output [0:0]CO;
  output [1:0]o_out1__30_carry__1_i_4;
  output [2:0]o_out1__59_carry__0_i_8;
  output [0:0]o_out1__59_carry__1_i_2;
  output [2:0]o_out1__86_carry__1_i_5;
  output [3:0]\o_x_reg[1]_0 ;
  output [7:0]Q;
  output [3:0]\a21_buffer_reg[1] ;
  output [7:0]\o_y_reg[7]_0 ;
  output s_axis_valid_0;
  output [0:0]E;
  output [0:0]\o_out_reg[15]_0 ;
  output [3:0]\b12_buffer_reg[2] ;
  output [2:0]\o_x_reg[3]_0 ;
  output [3:0]\b12_buffer_reg[5] ;
  output [2:0]\b12_buffer_reg[3] ;
  output [2:0]\b12_buffer_reg[7] ;
  output [1:0]\b12_buffer_reg[2]_0 ;
  output [3:0]\o_x_reg[1]_1 ;
  output [1:0]\b12_buffer_reg[5]_0 ;
  output [3:0]\o_x_reg[1]_2 ;
  output [3:0]\b12_buffer_reg[7]_0 ;
  output [0:0]\b12_buffer_reg[7]_1 ;
  output [3:0]\o_y_reg[2]_0 ;
  output [2:0]\a21_buffer_reg[3] ;
  output [3:0]\o_y_reg[5]_0 ;
  output [2:0]\o_y_reg[3]_0 ;
  output [2:0]\o_y_reg[7]_1 ;
  output [1:0]\o_y_reg[2]_1 ;
  output [3:0]\a21_buffer_reg[1]_0 ;
  output [1:0]\o_y_reg[5]_1 ;
  output [3:0]\a21_buffer_reg[1]_1 ;
  output [3:0]\o_y_reg[7]_2 ;
  output [0:0]\o_y_reg[7]_3 ;
  output [0:0]\o_out_reg[11]_0 ;
  output [3:0]\o_out_reg[15]_1 ;
  output [3:0]\o_out_reg[15]_2 ;
  output [3:0]\b12_buffer_reg[1] ;
  output [1:0]\b12_buffer_reg[1]_0 ;
  output [3:0]\b12_buffer_reg[4] ;
  output [1:0]\b12_buffer_reg[4]_0 ;
  output [3:0]\o_x_reg[5]_0 ;
  output [0:0]\b12_buffer_reg[6] ;
  output [2:0]o_out1__59_carry__1_0;
  output [3:0]\o_y_reg[1]_0 ;
  output [1:0]\o_y_reg[1]_1 ;
  output [3:0]\o_y_reg[4]_0 ;
  output [1:0]\o_y_reg[4]_1 ;
  output [3:0]\a21_buffer_reg[5] ;
  output [0:0]\o_y_reg[6]_0 ;
  output [2:0]o_out1__59_carry__1_1;
  input p_0_in;
  input axi_clk;
  input [3:0]O;
  input [2:0]DI;
  input [3:0]S;
  input [3:0]o_out1__86_carry_i_8_0;
  input [3:0]o_out1__86_carry_i_8_1;
  input [1:0]o_out1__86_carry__0_i_3_0;
  input [1:0]o_out1__86_carry__0_i_3_1;
  input [2:0]\o_out[3]_i_2_0 ;
  input [3:0]\o_out[3]_i_2_1 ;
  input [3:0]o_out1__86_carry__0_i_4_0;
  input [3:0]o_out1__86_carry__0_i_4_1;
  input [1:0]o_out1__86_carry__1_i_5_0;
  input [1:0]o_out1__86_carry__1_i_5_1;
  input [2:0]o_out1__86_carry_i_1_0;
  input [3:0]o_out1__86_carry_i_1_1;
  input [3:0]o_out1__86_carry__0_i_6_0;
  input [3:0]o_out1__86_carry__0_i_6_1;
  input [0:0]o_out1__86_carry__1_i_3;
  input [0:0]o_out1__86_carry__1_i_3_0;
  input [2:0]\o_out_reg[15]_3 ;
  input [7:0]o_out1__59_carry__1_2;
  input [7:0]o_out1__59_carry__1_3;
  input \FSM_sequential_PS_reg[0] ;
  input s_axis_valid;
  input [1:0]PS;
  input axi_rst_n;
  input m_axis_ready;
  input [0:0]\o_out_reg[15]_4 ;
  input [2:0]\o_out_reg[15]_5 ;
  input [0:0]\o_out_reg[15]_6 ;
  input [0:0]\o_out_reg[15]_7 ;
  input [2:0]\o_out_reg[15]_8 ;
  input [0:0]\o_out_reg[15]_9 ;
  input [1:0]o_out1__86_carry__1_0;
  input [2:0]o_out1__86_carry__1_1;
  input [0:0]o_out1__86_carry__1_2;
  input [0:0]o_out1__86_carry__1_3;
  input [5:0]\o_out_reg[15]_10 ;
  input [1:0]o_out1__86_carry__1_4;
  input [2:0]o_out1__86_carry__1_5;
  input [0:0]o_out1__86_carry__1_6;
  input [0:0]o_out1__86_carry__1_7;
  input [7:0]D;
  input [7:0]\o_y_reg[7]_4 ;

  wire [0:0]CO;
  wire [7:0]D;
  wire [2:0]DI;
  wire [0:0]E;
  wire \FSM_sequential_PS[0]_i_2_n_0 ;
  wire \FSM_sequential_PS_reg[0] ;
  wire [3:0]O;
  wire [1:0]PS;
  wire [7:0]Q;
  wire [3:0]S;
  wire [3:0]\a21_buffer_reg[1] ;
  wire [3:0]\a21_buffer_reg[1]_0 ;
  wire [3:0]\a21_buffer_reg[1]_1 ;
  wire [2:0]\a21_buffer_reg[3] ;
  wire [3:0]\a21_buffer_reg[5] ;
  wire axi_clk;
  wire axi_rst_n;
  wire [3:0]\b12_buffer_reg[1] ;
  wire [1:0]\b12_buffer_reg[1]_0 ;
  wire [3:0]\b12_buffer_reg[2] ;
  wire [1:0]\b12_buffer_reg[2]_0 ;
  wire [2:0]\b12_buffer_reg[3] ;
  wire [3:0]\b12_buffer_reg[4] ;
  wire [1:0]\b12_buffer_reg[4]_0 ;
  wire [3:0]\b12_buffer_reg[5] ;
  wire [1:0]\b12_buffer_reg[5]_0 ;
  wire [0:0]\b12_buffer_reg[6] ;
  wire [2:0]\b12_buffer_reg[7] ;
  wire [3:0]\b12_buffer_reg[7]_0 ;
  wire [0:0]\b12_buffer_reg[7]_1 ;
  wire [15:0]m_axis_data;
  wire m_axis_ready;
  wire o_out1__0_carry__0_i_10__0_n_0;
  wire o_out1__0_carry__0_i_10__2_n_0;
  wire o_out1__0_carry__0_i_11__0_n_0;
  wire o_out1__0_carry__0_i_11__2_n_0;
  wire o_out1__0_carry__0_i_12__0_n_0;
  wire o_out1__0_carry__0_i_12__2_n_0;
  wire o_out1__0_carry__0_i_9__0_n_0;
  wire o_out1__0_carry__0_i_9__2_n_0;
  wire o_out1__0_carry__0_n_0;
  wire o_out1__0_carry__0_n_1;
  wire o_out1__0_carry__0_n_2;
  wire o_out1__0_carry__0_n_3;
  wire o_out1__0_carry__0_n_4;
  wire o_out1__0_carry__0_n_5;
  wire o_out1__0_carry__0_n_6;
  wire o_out1__0_carry__0_n_7;
  wire o_out1__0_carry__1_n_1;
  wire o_out1__0_carry__1_n_3;
  wire o_out1__0_carry__1_n_6;
  wire o_out1__0_carry__1_n_7;
  wire o_out1__0_carry_n_0;
  wire o_out1__0_carry_n_1;
  wire o_out1__0_carry_n_2;
  wire o_out1__0_carry_n_3;
  wire o_out1__0_carry_n_4;
  wire o_out1__0_carry_n_5;
  wire o_out1__0_carry_n_6;
  wire o_out1__0_carry_n_7;
  wire o_out1__30_carry__0_i_10__0_n_0;
  wire o_out1__30_carry__0_i_10__2_n_0;
  wire o_out1__30_carry__0_i_11__0_n_0;
  wire o_out1__30_carry__0_i_11__2_n_0;
  wire o_out1__30_carry__0_i_12__0_n_0;
  wire o_out1__30_carry__0_i_12__2_n_0;
  wire o_out1__30_carry__0_i_9__0_n_0;
  wire o_out1__30_carry__0_i_9__2_n_0;
  wire o_out1__30_carry__0_n_0;
  wire o_out1__30_carry__0_n_1;
  wire o_out1__30_carry__0_n_2;
  wire o_out1__30_carry__0_n_3;
  wire o_out1__30_carry__0_n_4;
  wire o_out1__30_carry__0_n_5;
  wire o_out1__30_carry__0_n_6;
  wire o_out1__30_carry__0_n_7;
  wire [1:0]o_out1__30_carry__1_i_4;
  wire o_out1__30_carry__1_n_3;
  wire o_out1__30_carry_n_0;
  wire o_out1__30_carry_n_1;
  wire o_out1__30_carry_n_2;
  wire o_out1__30_carry_n_3;
  wire o_out1__30_carry_n_4;
  wire o_out1__30_carry_n_5;
  wire o_out1__30_carry_n_6;
  wire o_out1__30_carry_n_7;
  wire [2:0]o_out1__59_carry__0_i_8;
  wire o_out1__59_carry__0_n_0;
  wire o_out1__59_carry__0_n_1;
  wire o_out1__59_carry__0_n_2;
  wire o_out1__59_carry__0_n_3;
  wire o_out1__59_carry__0_n_7;
  wire [2:0]o_out1__59_carry__1_0;
  wire [2:0]o_out1__59_carry__1_1;
  wire [7:0]o_out1__59_carry__1_2;
  wire [7:0]o_out1__59_carry__1_3;
  wire [0:0]o_out1__59_carry__1_i_2;
  wire o_out1__59_carry__1_n_3;
  wire o_out1__59_carry__1_n_6;
  wire o_out1__59_carry_n_0;
  wire o_out1__59_carry_n_1;
  wire o_out1__59_carry_n_2;
  wire o_out1__59_carry_n_3;
  wire o_out1__59_carry_n_4;
  wire o_out1__59_carry_n_5;
  wire o_out1__59_carry_n_6;
  wire o_out1__59_carry_n_7;
  wire o_out1__86_carry__0_i_1_n_0;
  wire o_out1__86_carry__0_i_2_n_0;
  wire [1:0]o_out1__86_carry__0_i_3_0;
  wire [1:0]o_out1__86_carry__0_i_3_1;
  wire o_out1__86_carry__0_i_3_n_0;
  wire [3:0]o_out1__86_carry__0_i_4_0;
  wire [3:0]o_out1__86_carry__0_i_4_1;
  wire o_out1__86_carry__0_i_4_n_0;
  wire o_out1__86_carry__0_i_5_n_0;
  wire [3:0]o_out1__86_carry__0_i_6_0;
  wire [3:0]o_out1__86_carry__0_i_6_1;
  wire o_out1__86_carry__0_i_6_n_0;
  wire o_out1__86_carry__0_i_7_n_0;
  wire o_out1__86_carry__0_i_8_n_0;
  wire o_out1__86_carry__0_n_0;
  wire o_out1__86_carry__0_n_1;
  wire o_out1__86_carry__0_n_2;
  wire o_out1__86_carry__0_n_3;
  wire o_out1__86_carry__0_n_4;
  wire o_out1__86_carry__0_n_5;
  wire o_out1__86_carry__0_n_6;
  wire o_out1__86_carry__0_n_7;
  wire [1:0]o_out1__86_carry__1_0;
  wire [2:0]o_out1__86_carry__1_1;
  wire [0:0]o_out1__86_carry__1_2;
  wire [0:0]o_out1__86_carry__1_3;
  wire [1:0]o_out1__86_carry__1_4;
  wire [2:0]o_out1__86_carry__1_5;
  wire [0:0]o_out1__86_carry__1_6;
  wire [0:0]o_out1__86_carry__1_7;
  wire o_out1__86_carry__1_i_1_n_0;
  wire o_out1__86_carry__1_i_2_n_0;
  wire [0:0]o_out1__86_carry__1_i_3;
  wire [0:0]o_out1__86_carry__1_i_3_0;
  wire [2:0]o_out1__86_carry__1_i_5;
  wire [1:0]o_out1__86_carry__1_i_5_0;
  wire [1:0]o_out1__86_carry__1_i_5_1;
  wire o_out1__86_carry__1_n_1;
  wire o_out1__86_carry__1_n_2;
  wire o_out1__86_carry__1_n_3;
  wire o_out1__86_carry__1_n_4;
  wire [2:0]o_out1__86_carry_i_1_0;
  wire [3:0]o_out1__86_carry_i_1_1;
  wire o_out1__86_carry_i_1_n_0;
  wire o_out1__86_carry_i_2_n_0;
  wire o_out1__86_carry_i_3_n_0;
  wire o_out1__86_carry_i_4_n_0;
  wire o_out1__86_carry_i_5_n_0;
  wire o_out1__86_carry_i_6_n_0;
  wire o_out1__86_carry_i_7_n_0;
  wire [3:0]o_out1__86_carry_i_8_0;
  wire [3:0]o_out1__86_carry_i_8_1;
  wire o_out1__86_carry_i_8_n_0;
  wire o_out1__86_carry_n_0;
  wire o_out1__86_carry_n_1;
  wire o_out1__86_carry_n_2;
  wire o_out1__86_carry_n_3;
  wire o_out1__86_carry_n_4;
  wire o_out1__86_carry_n_5;
  wire o_out1__86_carry_n_6;
  wire o_out1__86_carry_n_7;
  wire \o_out[11]_i_2_n_0 ;
  wire \o_out[11]_i_3_n_0 ;
  wire \o_out[11]_i_4_n_0 ;
  wire \o_out[11]_i_5_n_0 ;
  wire \o_out[15]_i_3__1_n_0 ;
  wire \o_out[15]_i_3__3_n_0 ;
  wire \o_out[15]_i_4__0_n_0 ;
  wire \o_out[15]_i_4__2_n_0 ;
  wire \o_out[15]_i_5__0_n_0 ;
  wire \o_out[15]_i_5__2_n_0 ;
  wire [2:0]\o_out[3]_i_2_0 ;
  wire [3:0]\o_out[3]_i_2_1 ;
  wire \o_out[3]_i_2_n_0 ;
  wire \o_out[3]_i_3_n_0 ;
  wire \o_out[3]_i_4_n_0 ;
  wire \o_out[3]_i_5_n_0 ;
  wire \o_out[7]_i_2_n_0 ;
  wire \o_out[7]_i_3_n_0 ;
  wire \o_out[7]_i_4_n_0 ;
  wire \o_out[7]_i_5_n_0 ;
  wire [0:0]\o_out_reg[11]_0 ;
  wire \o_out_reg[11]_i_1_n_1 ;
  wire \o_out_reg[11]_i_1_n_2 ;
  wire \o_out_reg[11]_i_1_n_3 ;
  wire \o_out_reg[11]_i_1_n_4 ;
  wire \o_out_reg[11]_i_1_n_5 ;
  wire \o_out_reg[11]_i_1_n_6 ;
  wire \o_out_reg[11]_i_1_n_7 ;
  wire [0:0]\o_out_reg[15]_0 ;
  wire [3:0]\o_out_reg[15]_1 ;
  wire [5:0]\o_out_reg[15]_10 ;
  wire [3:0]\o_out_reg[15]_2 ;
  wire [2:0]\o_out_reg[15]_3 ;
  wire [0:0]\o_out_reg[15]_4 ;
  wire [2:0]\o_out_reg[15]_5 ;
  wire [0:0]\o_out_reg[15]_6 ;
  wire [0:0]\o_out_reg[15]_7 ;
  wire [2:0]\o_out_reg[15]_8 ;
  wire [0:0]\o_out_reg[15]_9 ;
  wire \o_out_reg[15]_i_1__0_n_1 ;
  wire \o_out_reg[15]_i_1__0_n_2 ;
  wire \o_out_reg[15]_i_1__0_n_3 ;
  wire \o_out_reg[15]_i_1__2_n_1 ;
  wire \o_out_reg[15]_i_1__2_n_2 ;
  wire \o_out_reg[15]_i_1__2_n_3 ;
  wire \o_out_reg[3]_i_1_n_0 ;
  wire \o_out_reg[3]_i_1_n_1 ;
  wire \o_out_reg[3]_i_1_n_2 ;
  wire \o_out_reg[3]_i_1_n_3 ;
  wire \o_out_reg[3]_i_1_n_4 ;
  wire \o_out_reg[3]_i_1_n_5 ;
  wire \o_out_reg[3]_i_1_n_6 ;
  wire \o_out_reg[3]_i_1_n_7 ;
  wire \o_out_reg[7]_i_1_n_0 ;
  wire \o_out_reg[7]_i_1_n_1 ;
  wire \o_out_reg[7]_i_1_n_2 ;
  wire \o_out_reg[7]_i_1_n_3 ;
  wire \o_out_reg[7]_i_1_n_4 ;
  wire \o_out_reg[7]_i_1_n_5 ;
  wire \o_out_reg[7]_i_1_n_6 ;
  wire \o_out_reg[7]_i_1_n_7 ;
  wire [3:0]\o_x_reg[1]_0 ;
  wire [3:0]\o_x_reg[1]_1 ;
  wire [3:0]\o_x_reg[1]_2 ;
  wire [2:0]\o_x_reg[3]_0 ;
  wire [3:0]\o_x_reg[5]_0 ;
  wire [3:0]\o_y_reg[1]_0 ;
  wire [1:0]\o_y_reg[1]_1 ;
  wire [3:0]\o_y_reg[2]_0 ;
  wire [1:0]\o_y_reg[2]_1 ;
  wire [2:0]\o_y_reg[3]_0 ;
  wire [3:0]\o_y_reg[4]_0 ;
  wire [1:0]\o_y_reg[4]_1 ;
  wire [3:0]\o_y_reg[5]_0 ;
  wire [1:0]\o_y_reg[5]_1 ;
  wire [0:0]\o_y_reg[6]_0 ;
  wire [7:0]\o_y_reg[7]_0 ;
  wire [2:0]\o_y_reg[7]_1 ;
  wire [3:0]\o_y_reg[7]_2 ;
  wire [0:0]\o_y_reg[7]_3 ;
  wire [7:0]\o_y_reg[7]_4 ;
  wire p_0_in;
  wire [2:0]p_0_in__0;
  wire s_axis_valid;
  wire s_axis_valid_0;
  wire [2:0]transaction_cnt;
  wire [3:1]NLW_o_out1__0_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_o_out1__0_carry__1_O_UNCONNECTED;
  wire [3:1]NLW_o_out1__30_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_o_out1__30_carry__1_O_UNCONNECTED;
  wire [3:1]NLW_o_out1__59_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_o_out1__59_carry__1_O_UNCONNECTED;
  wire [3:3]NLW_o_out1__86_carry__1_CO_UNCONNECTED;
  wire [3:3]\NLW_o_out_reg[15]_i_1__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_o_out_reg[15]_i_1__2_CO_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hAAEA0000)) 
    \FSM_sequential_PS[0]_i_1 
       (.I0(\FSM_sequential_PS[0]_i_2_n_0 ),
        .I1(\FSM_sequential_PS_reg[0] ),
        .I2(s_axis_valid),
        .I3(PS[1]),
        .I4(axi_rst_n),
        .O(s_axis_valid_0));
  LUT6 #(
    .INIT(64'h00FF000080800000)) 
    \FSM_sequential_PS[0]_i_2 
       (.I0(transaction_cnt[1]),
        .I1(transaction_cnt[0]),
        .I2(transaction_cnt[2]),
        .I3(m_axis_ready),
        .I4(PS[1]),
        .I5(PS[0]),
        .O(\FSM_sequential_PS[0]_i_2_n_0 ));
  CARRY4 o_out1__0_carry
       (.CI(1'b0),
        .CO({o_out1__0_carry_n_0,o_out1__0_carry_n_1,o_out1__0_carry_n_2,o_out1__0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({DI,1'b0}),
        .O({o_out1__0_carry_n_4,o_out1__0_carry_n_5,o_out1__0_carry_n_6,o_out1__0_carry_n_7}),
        .S(S));
  CARRY4 o_out1__0_carry__0
       (.CI(o_out1__0_carry_n_0),
        .CO({o_out1__0_carry__0_n_0,o_out1__0_carry__0_n_1,o_out1__0_carry__0_n_2,o_out1__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(o_out1__86_carry_i_8_0),
        .O({o_out1__0_carry__0_n_4,o_out1__0_carry__0_n_5,o_out1__0_carry__0_n_6,o_out1__0_carry__0_n_7}),
        .S(o_out1__86_carry_i_8_1));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__0_carry__0_i_10__0
       (.I0(o_out1__59_carry__1_2[0]),
        .I1(Q[6]),
        .O(o_out1__0_carry__0_i_10__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__0_carry__0_i_10__2
       (.I0(\o_y_reg[7]_0 [0]),
        .I1(o_out1__59_carry__1_3[6]),
        .O(o_out1__0_carry__0_i_10__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__0_carry__0_i_11__0
       (.I0(o_out1__59_carry__1_2[0]),
        .I1(Q[5]),
        .O(o_out1__0_carry__0_i_11__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__0_carry__0_i_11__2
       (.I0(\o_y_reg[7]_0 [0]),
        .I1(o_out1__59_carry__1_3[5]),
        .O(o_out1__0_carry__0_i_11__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__0_carry__0_i_12__0
       (.I0(o_out1__59_carry__1_2[0]),
        .I1(Q[4]),
        .O(o_out1__0_carry__0_i_12__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__0_carry__0_i_12__2
       (.I0(\o_y_reg[7]_0 [0]),
        .I1(o_out1__59_carry__1_3[4]),
        .O(o_out1__0_carry__0_i_12__2_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    o_out1__0_carry__0_i_1__0
       (.I0(o_out1__59_carry__1_2[2]),
        .I1(Q[4]),
        .I2(o_out1__59_carry__1_2[1]),
        .I3(Q[5]),
        .I4(o_out1__59_carry__1_2[0]),
        .I5(Q[6]),
        .O(\b12_buffer_reg[2] [3]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    o_out1__0_carry__0_i_1__2
       (.I0(\o_y_reg[7]_0 [2]),
        .I1(o_out1__59_carry__1_3[4]),
        .I2(\o_y_reg[7]_0 [1]),
        .I3(o_out1__59_carry__1_3[5]),
        .I4(\o_y_reg[7]_0 [0]),
        .I5(o_out1__59_carry__1_3[6]),
        .O(\o_y_reg[2]_0 [3]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    o_out1__0_carry__0_i_2__0
       (.I0(o_out1__59_carry__1_2[2]),
        .I1(Q[3]),
        .I2(o_out1__59_carry__1_2[1]),
        .I3(Q[4]),
        .I4(o_out1__59_carry__1_2[0]),
        .I5(Q[5]),
        .O(\b12_buffer_reg[2] [2]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    o_out1__0_carry__0_i_2__2
       (.I0(\o_y_reg[7]_0 [2]),
        .I1(o_out1__59_carry__1_3[3]),
        .I2(\o_y_reg[7]_0 [1]),
        .I3(o_out1__59_carry__1_3[4]),
        .I4(\o_y_reg[7]_0 [0]),
        .I5(o_out1__59_carry__1_3[5]),
        .O(\o_y_reg[2]_0 [2]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    o_out1__0_carry__0_i_3__0
       (.I0(o_out1__59_carry__1_2[2]),
        .I1(Q[2]),
        .I2(o_out1__59_carry__1_2[1]),
        .I3(Q[3]),
        .I4(o_out1__59_carry__1_2[0]),
        .I5(Q[4]),
        .O(\b12_buffer_reg[2] [1]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    o_out1__0_carry__0_i_3__2
       (.I0(\o_y_reg[7]_0 [2]),
        .I1(o_out1__59_carry__1_3[2]),
        .I2(\o_y_reg[7]_0 [1]),
        .I3(o_out1__59_carry__1_3[3]),
        .I4(\o_y_reg[7]_0 [0]),
        .I5(o_out1__59_carry__1_3[4]),
        .O(\o_y_reg[2]_0 [1]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    o_out1__0_carry__0_i_4__0
       (.I0(o_out1__59_carry__1_2[2]),
        .I1(Q[1]),
        .I2(o_out1__59_carry__1_2[1]),
        .I3(Q[2]),
        .I4(o_out1__59_carry__1_2[0]),
        .I5(Q[3]),
        .O(\b12_buffer_reg[2] [0]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    o_out1__0_carry__0_i_4__2
       (.I0(\o_y_reg[7]_0 [2]),
        .I1(o_out1__59_carry__1_3[1]),
        .I2(\o_y_reg[7]_0 [1]),
        .I3(o_out1__59_carry__1_3[2]),
        .I4(\o_y_reg[7]_0 [0]),
        .I5(o_out1__59_carry__1_3[3]),
        .O(\o_y_reg[2]_0 [0]));
  LUT6 #(
    .INIT(64'h9666699969996999)) 
    o_out1__0_carry__0_i_5__0
       (.I0(\b12_buffer_reg[2] [3]),
        .I1(o_out1__0_carry__0_i_9__0_n_0),
        .I2(o_out1__59_carry__1_2[1]),
        .I3(Q[6]),
        .I4(o_out1__59_carry__1_2[0]),
        .I5(Q[7]),
        .O(\b12_buffer_reg[1] [3]));
  LUT6 #(
    .INIT(64'h9666699969996999)) 
    o_out1__0_carry__0_i_5__2
       (.I0(\o_y_reg[2]_0 [3]),
        .I1(o_out1__0_carry__0_i_9__2_n_0),
        .I2(\o_y_reg[7]_0 [1]),
        .I3(o_out1__59_carry__1_3[6]),
        .I4(\o_y_reg[7]_0 [0]),
        .I5(o_out1__59_carry__1_3[7]),
        .O(\o_y_reg[1]_0 [3]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    o_out1__0_carry__0_i_6__0
       (.I0(\b12_buffer_reg[2] [2]),
        .I1(Q[5]),
        .I2(o_out1__59_carry__1_2[1]),
        .I3(Q[4]),
        .I4(o_out1__59_carry__1_2[2]),
        .I5(o_out1__0_carry__0_i_10__0_n_0),
        .O(\b12_buffer_reg[1] [2]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    o_out1__0_carry__0_i_6__2
       (.I0(\o_y_reg[2]_0 [2]),
        .I1(o_out1__59_carry__1_3[5]),
        .I2(\o_y_reg[7]_0 [1]),
        .I3(o_out1__59_carry__1_3[4]),
        .I4(\o_y_reg[7]_0 [2]),
        .I5(o_out1__0_carry__0_i_10__2_n_0),
        .O(\o_y_reg[1]_0 [2]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    o_out1__0_carry__0_i_7__0
       (.I0(\b12_buffer_reg[2] [1]),
        .I1(Q[4]),
        .I2(o_out1__59_carry__1_2[1]),
        .I3(Q[3]),
        .I4(o_out1__59_carry__1_2[2]),
        .I5(o_out1__0_carry__0_i_11__0_n_0),
        .O(\b12_buffer_reg[1] [1]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    o_out1__0_carry__0_i_7__2
       (.I0(\o_y_reg[2]_0 [1]),
        .I1(o_out1__59_carry__1_3[4]),
        .I2(\o_y_reg[7]_0 [1]),
        .I3(o_out1__59_carry__1_3[3]),
        .I4(\o_y_reg[7]_0 [2]),
        .I5(o_out1__0_carry__0_i_11__2_n_0),
        .O(\o_y_reg[1]_0 [1]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    o_out1__0_carry__0_i_8__0
       (.I0(\b12_buffer_reg[2] [0]),
        .I1(Q[3]),
        .I2(o_out1__59_carry__1_2[1]),
        .I3(Q[2]),
        .I4(o_out1__59_carry__1_2[2]),
        .I5(o_out1__0_carry__0_i_12__0_n_0),
        .O(\b12_buffer_reg[1] [0]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    o_out1__0_carry__0_i_8__2
       (.I0(\o_y_reg[2]_0 [0]),
        .I1(o_out1__59_carry__1_3[3]),
        .I2(\o_y_reg[7]_0 [1]),
        .I3(o_out1__59_carry__1_3[2]),
        .I4(\o_y_reg[7]_0 [2]),
        .I5(o_out1__0_carry__0_i_12__2_n_0),
        .O(\o_y_reg[1]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__0_carry__0_i_9__0
       (.I0(Q[5]),
        .I1(o_out1__59_carry__1_2[2]),
        .O(o_out1__0_carry__0_i_9__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__0_carry__0_i_9__2
       (.I0(o_out1__59_carry__1_3[5]),
        .I1(\o_y_reg[7]_0 [2]),
        .O(o_out1__0_carry__0_i_9__2_n_0));
  CARRY4 o_out1__0_carry__1
       (.CI(o_out1__0_carry__0_n_0),
        .CO({NLW_o_out1__0_carry__1_CO_UNCONNECTED[3],o_out1__0_carry__1_n_1,NLW_o_out1__0_carry__1_CO_UNCONNECTED[1],o_out1__0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,o_out1__86_carry__0_i_3_0}),
        .O({NLW_o_out1__0_carry__1_O_UNCONNECTED[3:2],o_out1__0_carry__1_n_6,o_out1__0_carry__1_n_7}),
        .S({1'b0,1'b1,o_out1__86_carry__0_i_3_1}));
  LUT4 #(
    .INIT(16'h0888)) 
    o_out1__0_carry__1_i_1__0
       (.I0(o_out1__59_carry__1_2[2]),
        .I1(Q[6]),
        .I2(o_out1__59_carry__1_2[1]),
        .I3(Q[7]),
        .O(\b12_buffer_reg[2]_0 [1]));
  LUT4 #(
    .INIT(16'h0888)) 
    o_out1__0_carry__1_i_1__2
       (.I0(\o_y_reg[7]_0 [2]),
        .I1(o_out1__59_carry__1_3[6]),
        .I2(\o_y_reg[7]_0 [1]),
        .I3(o_out1__59_carry__1_3[7]),
        .O(\o_y_reg[2]_1 [1]));
  LUT6 #(
    .INIT(64'h8000F888F888F888)) 
    o_out1__0_carry__1_i_2__0
       (.I0(o_out1__59_carry__1_2[2]),
        .I1(Q[5]),
        .I2(o_out1__59_carry__1_2[1]),
        .I3(Q[6]),
        .I4(o_out1__59_carry__1_2[0]),
        .I5(Q[7]),
        .O(\b12_buffer_reg[2]_0 [0]));
  LUT6 #(
    .INIT(64'h8000F888F888F888)) 
    o_out1__0_carry__1_i_2__2
       (.I0(\o_y_reg[7]_0 [2]),
        .I1(o_out1__59_carry__1_3[5]),
        .I2(\o_y_reg[7]_0 [1]),
        .I3(o_out1__59_carry__1_3[6]),
        .I4(\o_y_reg[7]_0 [0]),
        .I5(o_out1__59_carry__1_3[7]),
        .O(\o_y_reg[2]_1 [0]));
  LUT4 #(
    .INIT(16'h4F3F)) 
    o_out1__0_carry__1_i_3__0
       (.I0(o_out1__59_carry__1_2[1]),
        .I1(Q[6]),
        .I2(o_out1__59_carry__1_2[2]),
        .I3(Q[7]),
        .O(\b12_buffer_reg[1]_0 [1]));
  LUT4 #(
    .INIT(16'h4F3F)) 
    o_out1__0_carry__1_i_3__2
       (.I0(\o_y_reg[7]_0 [1]),
        .I1(o_out1__59_carry__1_3[6]),
        .I2(\o_y_reg[7]_0 [2]),
        .I3(o_out1__59_carry__1_3[7]),
        .O(\o_y_reg[1]_1 [1]));
  LUT6 #(
    .INIT(64'h25404FBFF03FCF3F)) 
    o_out1__0_carry__1_i_4__0
       (.I0(o_out1__59_carry__1_2[0]),
        .I1(Q[5]),
        .I2(o_out1__59_carry__1_2[2]),
        .I3(Q[6]),
        .I4(o_out1__59_carry__1_2[1]),
        .I5(Q[7]),
        .O(\b12_buffer_reg[1]_0 [0]));
  LUT6 #(
    .INIT(64'h25404FBFF03FCF3F)) 
    o_out1__0_carry__1_i_4__2
       (.I0(\o_y_reg[7]_0 [0]),
        .I1(o_out1__59_carry__1_3[5]),
        .I2(\o_y_reg[7]_0 [2]),
        .I3(o_out1__59_carry__1_3[6]),
        .I4(\o_y_reg[7]_0 [1]),
        .I5(o_out1__59_carry__1_3[7]),
        .O(\o_y_reg[1]_1 [0]));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    o_out1__0_carry_i_1__0
       (.I0(Q[3]),
        .I1(o_out1__59_carry__1_2[0]),
        .I2(o_out1__59_carry__1_2[2]),
        .I3(Q[1]),
        .I4(o_out1__59_carry__1_2[1]),
        .I5(Q[2]),
        .O(\o_x_reg[3]_0 [2]));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    o_out1__0_carry_i_1__2
       (.I0(o_out1__59_carry__1_3[3]),
        .I1(\o_y_reg[7]_0 [0]),
        .I2(\o_y_reg[7]_0 [2]),
        .I3(o_out1__59_carry__1_3[1]),
        .I4(\o_y_reg[7]_0 [1]),
        .I5(o_out1__59_carry__1_3[2]),
        .O(\a21_buffer_reg[3] [2]));
  LUT4 #(
    .INIT(16'h7888)) 
    o_out1__0_carry_i_2__0
       (.I0(o_out1__59_carry__1_2[1]),
        .I1(Q[1]),
        .I2(o_out1__59_carry__1_2[2]),
        .I3(Q[0]),
        .O(\o_x_reg[3]_0 [1]));
  LUT4 #(
    .INIT(16'h7888)) 
    o_out1__0_carry_i_2__2
       (.I0(\o_y_reg[7]_0 [1]),
        .I1(o_out1__59_carry__1_3[1]),
        .I2(\o_y_reg[7]_0 [2]),
        .I3(o_out1__59_carry__1_3[0]),
        .O(\a21_buffer_reg[3] [1]));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__0_carry_i_3__0
       (.I0(Q[0]),
        .I1(o_out1__59_carry__1_2[1]),
        .O(\o_x_reg[3]_0 [0]));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__0_carry_i_3__2
       (.I0(o_out1__59_carry__1_3[0]),
        .I1(\o_y_reg[7]_0 [1]),
        .O(\a21_buffer_reg[3] [0]));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    o_out1__0_carry_i_4__0
       (.I0(\o_x_reg[3]_0 [2]),
        .I1(Q[1]),
        .I2(o_out1__59_carry__1_2[2]),
        .I3(Q[0]),
        .I4(o_out1__59_carry__1_2[1]),
        .O(\o_x_reg[1]_1 [3]));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    o_out1__0_carry_i_4__2
       (.I0(\a21_buffer_reg[3] [2]),
        .I1(o_out1__59_carry__1_3[1]),
        .I2(\o_y_reg[7]_0 [2]),
        .I3(o_out1__59_carry__1_3[0]),
        .I4(\o_y_reg[7]_0 [1]),
        .O(\a21_buffer_reg[1]_0 [3]));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    o_out1__0_carry_i_5__0
       (.I0(Q[0]),
        .I1(o_out1__59_carry__1_2[2]),
        .I2(Q[1]),
        .I3(o_out1__59_carry__1_2[1]),
        .I4(Q[2]),
        .I5(o_out1__59_carry__1_2[0]),
        .O(\o_x_reg[1]_1 [2]));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    o_out1__0_carry_i_5__2
       (.I0(o_out1__59_carry__1_3[0]),
        .I1(\o_y_reg[7]_0 [2]),
        .I2(o_out1__59_carry__1_3[1]),
        .I3(\o_y_reg[7]_0 [1]),
        .I4(o_out1__59_carry__1_3[2]),
        .I5(\o_y_reg[7]_0 [0]),
        .O(\a21_buffer_reg[1]_0 [2]));
  LUT4 #(
    .INIT(16'h7888)) 
    o_out1__0_carry_i_6__0
       (.I0(Q[1]),
        .I1(o_out1__59_carry__1_2[0]),
        .I2(o_out1__59_carry__1_2[1]),
        .I3(Q[0]),
        .O(\o_x_reg[1]_1 [1]));
  LUT4 #(
    .INIT(16'h7888)) 
    o_out1__0_carry_i_6__2
       (.I0(o_out1__59_carry__1_3[1]),
        .I1(\o_y_reg[7]_0 [0]),
        .I2(\o_y_reg[7]_0 [1]),
        .I3(o_out1__59_carry__1_3[0]),
        .O(\a21_buffer_reg[1]_0 [1]));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__0_carry_i_7__0
       (.I0(o_out1__59_carry__1_2[0]),
        .I1(Q[0]),
        .O(\o_x_reg[1]_1 [0]));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__0_carry_i_7__2
       (.I0(\o_y_reg[7]_0 [0]),
        .I1(o_out1__59_carry__1_3[0]),
        .O(\a21_buffer_reg[1]_0 [0]));
  CARRY4 o_out1__30_carry
       (.CI(1'b0),
        .CO({o_out1__30_carry_n_0,o_out1__30_carry_n_1,o_out1__30_carry_n_2,o_out1__30_carry_n_3}),
        .CYINIT(1'b0),
        .DI({\o_out[3]_i_2_0 ,1'b0}),
        .O({o_out1__30_carry_n_4,o_out1__30_carry_n_5,o_out1__30_carry_n_6,o_out1__30_carry_n_7}),
        .S(\o_out[3]_i_2_1 ));
  CARRY4 o_out1__30_carry__0
       (.CI(o_out1__30_carry_n_0),
        .CO({o_out1__30_carry__0_n_0,o_out1__30_carry__0_n_1,o_out1__30_carry__0_n_2,o_out1__30_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(o_out1__86_carry__0_i_4_0),
        .O({o_out1__30_carry__0_n_4,o_out1__30_carry__0_n_5,o_out1__30_carry__0_n_6,o_out1__30_carry__0_n_7}),
        .S(o_out1__86_carry__0_i_4_1));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__30_carry__0_i_10__0
       (.I0(Q[6]),
        .I1(o_out1__59_carry__1_2[3]),
        .O(o_out1__30_carry__0_i_10__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__30_carry__0_i_10__2
       (.I0(o_out1__59_carry__1_3[6]),
        .I1(\o_y_reg[7]_0 [3]),
        .O(o_out1__30_carry__0_i_10__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__30_carry__0_i_11__0
       (.I0(Q[5]),
        .I1(o_out1__59_carry__1_2[3]),
        .O(o_out1__30_carry__0_i_11__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__30_carry__0_i_11__2
       (.I0(o_out1__59_carry__1_3[5]),
        .I1(\o_y_reg[7]_0 [3]),
        .O(o_out1__30_carry__0_i_11__2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__30_carry__0_i_12__0
       (.I0(Q[4]),
        .I1(o_out1__59_carry__1_2[3]),
        .O(o_out1__30_carry__0_i_12__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__30_carry__0_i_12__2
       (.I0(o_out1__59_carry__1_3[4]),
        .I1(\o_y_reg[7]_0 [3]),
        .O(o_out1__30_carry__0_i_12__2_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    o_out1__30_carry__0_i_1__0
       (.I0(o_out1__59_carry__1_2[5]),
        .I1(Q[4]),
        .I2(o_out1__59_carry__1_2[4]),
        .I3(Q[5]),
        .I4(Q[6]),
        .I5(o_out1__59_carry__1_2[3]),
        .O(\b12_buffer_reg[5] [3]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    o_out1__30_carry__0_i_1__2
       (.I0(\o_y_reg[7]_0 [5]),
        .I1(o_out1__59_carry__1_3[4]),
        .I2(\o_y_reg[7]_0 [4]),
        .I3(o_out1__59_carry__1_3[5]),
        .I4(o_out1__59_carry__1_3[6]),
        .I5(\o_y_reg[7]_0 [3]),
        .O(\o_y_reg[5]_0 [3]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    o_out1__30_carry__0_i_2__0
       (.I0(o_out1__59_carry__1_2[5]),
        .I1(Q[3]),
        .I2(o_out1__59_carry__1_2[4]),
        .I3(Q[4]),
        .I4(Q[5]),
        .I5(o_out1__59_carry__1_2[3]),
        .O(\b12_buffer_reg[5] [2]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    o_out1__30_carry__0_i_2__2
       (.I0(\o_y_reg[7]_0 [5]),
        .I1(o_out1__59_carry__1_3[3]),
        .I2(\o_y_reg[7]_0 [4]),
        .I3(o_out1__59_carry__1_3[4]),
        .I4(o_out1__59_carry__1_3[5]),
        .I5(\o_y_reg[7]_0 [3]),
        .O(\o_y_reg[5]_0 [2]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    o_out1__30_carry__0_i_3__0
       (.I0(o_out1__59_carry__1_2[5]),
        .I1(Q[2]),
        .I2(o_out1__59_carry__1_2[4]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(o_out1__59_carry__1_2[3]),
        .O(\b12_buffer_reg[5] [1]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    o_out1__30_carry__0_i_3__2
       (.I0(\o_y_reg[7]_0 [5]),
        .I1(o_out1__59_carry__1_3[2]),
        .I2(\o_y_reg[7]_0 [4]),
        .I3(o_out1__59_carry__1_3[3]),
        .I4(o_out1__59_carry__1_3[4]),
        .I5(\o_y_reg[7]_0 [3]),
        .O(\o_y_reg[5]_0 [1]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    o_out1__30_carry__0_i_4__0
       (.I0(o_out1__59_carry__1_2[5]),
        .I1(Q[1]),
        .I2(o_out1__59_carry__1_2[4]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(o_out1__59_carry__1_2[3]),
        .O(\b12_buffer_reg[5] [0]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    o_out1__30_carry__0_i_4__2
       (.I0(\o_y_reg[7]_0 [5]),
        .I1(o_out1__59_carry__1_3[1]),
        .I2(\o_y_reg[7]_0 [4]),
        .I3(o_out1__59_carry__1_3[2]),
        .I4(o_out1__59_carry__1_3[3]),
        .I5(\o_y_reg[7]_0 [3]),
        .O(\o_y_reg[5]_0 [0]));
  LUT6 #(
    .INIT(64'h9666699969996999)) 
    o_out1__30_carry__0_i_5__0
       (.I0(\b12_buffer_reg[5] [3]),
        .I1(o_out1__30_carry__0_i_9__0_n_0),
        .I2(o_out1__59_carry__1_2[4]),
        .I3(Q[6]),
        .I4(Q[7]),
        .I5(o_out1__59_carry__1_2[3]),
        .O(\b12_buffer_reg[4] [3]));
  LUT6 #(
    .INIT(64'h9666699969996999)) 
    o_out1__30_carry__0_i_5__2
       (.I0(\o_y_reg[5]_0 [3]),
        .I1(o_out1__30_carry__0_i_9__2_n_0),
        .I2(\o_y_reg[7]_0 [4]),
        .I3(o_out1__59_carry__1_3[6]),
        .I4(o_out1__59_carry__1_3[7]),
        .I5(\o_y_reg[7]_0 [3]),
        .O(\o_y_reg[4]_0 [3]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    o_out1__30_carry__0_i_6__0
       (.I0(\b12_buffer_reg[5] [2]),
        .I1(Q[5]),
        .I2(o_out1__59_carry__1_2[4]),
        .I3(Q[4]),
        .I4(o_out1__59_carry__1_2[5]),
        .I5(o_out1__30_carry__0_i_10__0_n_0),
        .O(\b12_buffer_reg[4] [2]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    o_out1__30_carry__0_i_6__2
       (.I0(\o_y_reg[5]_0 [2]),
        .I1(o_out1__59_carry__1_3[5]),
        .I2(\o_y_reg[7]_0 [4]),
        .I3(o_out1__59_carry__1_3[4]),
        .I4(\o_y_reg[7]_0 [5]),
        .I5(o_out1__30_carry__0_i_10__2_n_0),
        .O(\o_y_reg[4]_0 [2]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    o_out1__30_carry__0_i_7__0
       (.I0(\b12_buffer_reg[5] [1]),
        .I1(Q[4]),
        .I2(o_out1__59_carry__1_2[4]),
        .I3(Q[3]),
        .I4(o_out1__59_carry__1_2[5]),
        .I5(o_out1__30_carry__0_i_11__0_n_0),
        .O(\b12_buffer_reg[4] [1]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    o_out1__30_carry__0_i_7__2
       (.I0(\o_y_reg[5]_0 [1]),
        .I1(o_out1__59_carry__1_3[4]),
        .I2(\o_y_reg[7]_0 [4]),
        .I3(o_out1__59_carry__1_3[3]),
        .I4(\o_y_reg[7]_0 [5]),
        .I5(o_out1__30_carry__0_i_11__2_n_0),
        .O(\o_y_reg[4]_0 [1]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    o_out1__30_carry__0_i_8__0
       (.I0(\b12_buffer_reg[5] [0]),
        .I1(Q[3]),
        .I2(o_out1__59_carry__1_2[4]),
        .I3(Q[2]),
        .I4(o_out1__59_carry__1_2[5]),
        .I5(o_out1__30_carry__0_i_12__0_n_0),
        .O(\b12_buffer_reg[4] [0]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    o_out1__30_carry__0_i_8__2
       (.I0(\o_y_reg[5]_0 [0]),
        .I1(o_out1__59_carry__1_3[3]),
        .I2(\o_y_reg[7]_0 [4]),
        .I3(o_out1__59_carry__1_3[2]),
        .I4(\o_y_reg[7]_0 [5]),
        .I5(o_out1__30_carry__0_i_12__2_n_0),
        .O(\o_y_reg[4]_0 [0]));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__30_carry__0_i_9__0
       (.I0(Q[5]),
        .I1(o_out1__59_carry__1_2[5]),
        .O(o_out1__30_carry__0_i_9__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__30_carry__0_i_9__2
       (.I0(o_out1__59_carry__1_3[5]),
        .I1(\o_y_reg[7]_0 [5]),
        .O(o_out1__30_carry__0_i_9__2_n_0));
  CARRY4 o_out1__30_carry__1
       (.CI(o_out1__30_carry__0_n_0),
        .CO({NLW_o_out1__30_carry__1_CO_UNCONNECTED[3],CO,NLW_o_out1__30_carry__1_CO_UNCONNECTED[1],o_out1__30_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,o_out1__86_carry__1_i_5_0}),
        .O({NLW_o_out1__30_carry__1_O_UNCONNECTED[3:2],o_out1__30_carry__1_i_4}),
        .S({1'b0,1'b1,o_out1__86_carry__1_i_5_1}));
  LUT4 #(
    .INIT(16'h0888)) 
    o_out1__30_carry__1_i_1__0
       (.I0(o_out1__59_carry__1_2[5]),
        .I1(Q[6]),
        .I2(o_out1__59_carry__1_2[4]),
        .I3(Q[7]),
        .O(\b12_buffer_reg[5]_0 [1]));
  LUT4 #(
    .INIT(16'h0888)) 
    o_out1__30_carry__1_i_1__2
       (.I0(\o_y_reg[7]_0 [5]),
        .I1(o_out1__59_carry__1_3[6]),
        .I2(\o_y_reg[7]_0 [4]),
        .I3(o_out1__59_carry__1_3[7]),
        .O(\o_y_reg[5]_1 [1]));
  LUT6 #(
    .INIT(64'h8000F888F888F888)) 
    o_out1__30_carry__1_i_2__0
       (.I0(o_out1__59_carry__1_2[5]),
        .I1(Q[5]),
        .I2(o_out1__59_carry__1_2[4]),
        .I3(Q[6]),
        .I4(Q[7]),
        .I5(o_out1__59_carry__1_2[3]),
        .O(\b12_buffer_reg[5]_0 [0]));
  LUT6 #(
    .INIT(64'h8000F888F888F888)) 
    o_out1__30_carry__1_i_2__2
       (.I0(\o_y_reg[7]_0 [5]),
        .I1(o_out1__59_carry__1_3[5]),
        .I2(\o_y_reg[7]_0 [4]),
        .I3(o_out1__59_carry__1_3[6]),
        .I4(o_out1__59_carry__1_3[7]),
        .I5(\o_y_reg[7]_0 [3]),
        .O(\o_y_reg[5]_1 [0]));
  LUT4 #(
    .INIT(16'h4F3F)) 
    o_out1__30_carry__1_i_3__0
       (.I0(o_out1__59_carry__1_2[4]),
        .I1(Q[6]),
        .I2(o_out1__59_carry__1_2[5]),
        .I3(Q[7]),
        .O(\b12_buffer_reg[4]_0 [1]));
  LUT4 #(
    .INIT(16'h4F3F)) 
    o_out1__30_carry__1_i_3__2
       (.I0(\o_y_reg[7]_0 [4]),
        .I1(o_out1__59_carry__1_3[6]),
        .I2(\o_y_reg[7]_0 [5]),
        .I3(o_out1__59_carry__1_3[7]),
        .O(\o_y_reg[4]_1 [1]));
  LUT6 #(
    .INIT(64'h25404FBFF03FCF3F)) 
    o_out1__30_carry__1_i_4__0
       (.I0(o_out1__59_carry__1_2[3]),
        .I1(Q[5]),
        .I2(o_out1__59_carry__1_2[5]),
        .I3(Q[6]),
        .I4(o_out1__59_carry__1_2[4]),
        .I5(Q[7]),
        .O(\b12_buffer_reg[4]_0 [0]));
  LUT6 #(
    .INIT(64'h25404FBFF03FCF3F)) 
    o_out1__30_carry__1_i_4__2
       (.I0(\o_y_reg[7]_0 [3]),
        .I1(o_out1__59_carry__1_3[5]),
        .I2(\o_y_reg[7]_0 [5]),
        .I3(o_out1__59_carry__1_3[6]),
        .I4(\o_y_reg[7]_0 [4]),
        .I5(o_out1__59_carry__1_3[7]),
        .O(\o_y_reg[4]_1 [0]));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    o_out1__30_carry_i_1__0
       (.I0(o_out1__59_carry__1_2[3]),
        .I1(Q[3]),
        .I2(o_out1__59_carry__1_2[5]),
        .I3(Q[1]),
        .I4(o_out1__59_carry__1_2[4]),
        .I5(Q[2]),
        .O(\b12_buffer_reg[3] [2]));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    o_out1__30_carry_i_1__2
       (.I0(\o_y_reg[7]_0 [3]),
        .I1(o_out1__59_carry__1_3[3]),
        .I2(\o_y_reg[7]_0 [5]),
        .I3(o_out1__59_carry__1_3[1]),
        .I4(\o_y_reg[7]_0 [4]),
        .I5(o_out1__59_carry__1_3[2]),
        .O(\o_y_reg[3]_0 [2]));
  LUT4 #(
    .INIT(16'h7888)) 
    o_out1__30_carry_i_2__0
       (.I0(o_out1__59_carry__1_2[4]),
        .I1(Q[1]),
        .I2(o_out1__59_carry__1_2[5]),
        .I3(Q[0]),
        .O(\b12_buffer_reg[3] [1]));
  LUT4 #(
    .INIT(16'h7888)) 
    o_out1__30_carry_i_2__2
       (.I0(\o_y_reg[7]_0 [4]),
        .I1(o_out1__59_carry__1_3[1]),
        .I2(\o_y_reg[7]_0 [5]),
        .I3(o_out1__59_carry__1_3[0]),
        .O(\o_y_reg[3]_0 [1]));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__30_carry_i_3__0
       (.I0(Q[0]),
        .I1(o_out1__59_carry__1_2[4]),
        .O(\b12_buffer_reg[3] [0]));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__30_carry_i_3__2
       (.I0(o_out1__59_carry__1_3[0]),
        .I1(\o_y_reg[7]_0 [4]),
        .O(\o_y_reg[3]_0 [0]));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    o_out1__30_carry_i_4__0
       (.I0(\b12_buffer_reg[3] [2]),
        .I1(Q[1]),
        .I2(o_out1__59_carry__1_2[5]),
        .I3(Q[0]),
        .I4(o_out1__59_carry__1_2[4]),
        .O(\o_x_reg[1]_2 [3]));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    o_out1__30_carry_i_4__2
       (.I0(\o_y_reg[3]_0 [2]),
        .I1(o_out1__59_carry__1_3[1]),
        .I2(\o_y_reg[7]_0 [5]),
        .I3(o_out1__59_carry__1_3[0]),
        .I4(\o_y_reg[7]_0 [4]),
        .O(\a21_buffer_reg[1]_1 [3]));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    o_out1__30_carry_i_5__0
       (.I0(Q[0]),
        .I1(o_out1__59_carry__1_2[5]),
        .I2(Q[1]),
        .I3(o_out1__59_carry__1_2[4]),
        .I4(o_out1__59_carry__1_2[3]),
        .I5(Q[2]),
        .O(\o_x_reg[1]_2 [2]));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    o_out1__30_carry_i_5__2
       (.I0(o_out1__59_carry__1_3[0]),
        .I1(\o_y_reg[7]_0 [5]),
        .I2(o_out1__59_carry__1_3[1]),
        .I3(\o_y_reg[7]_0 [4]),
        .I4(\o_y_reg[7]_0 [3]),
        .I5(o_out1__59_carry__1_3[2]),
        .O(\a21_buffer_reg[1]_1 [2]));
  LUT4 #(
    .INIT(16'h7888)) 
    o_out1__30_carry_i_6__0
       (.I0(o_out1__59_carry__1_2[3]),
        .I1(Q[1]),
        .I2(o_out1__59_carry__1_2[4]),
        .I3(Q[0]),
        .O(\o_x_reg[1]_2 [1]));
  LUT4 #(
    .INIT(16'h7888)) 
    o_out1__30_carry_i_6__2
       (.I0(\o_y_reg[7]_0 [3]),
        .I1(o_out1__59_carry__1_3[1]),
        .I2(\o_y_reg[7]_0 [4]),
        .I3(o_out1__59_carry__1_3[0]),
        .O(\a21_buffer_reg[1]_1 [1]));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__30_carry_i_7__0
       (.I0(Q[0]),
        .I1(o_out1__59_carry__1_2[3]),
        .O(\o_x_reg[1]_2 [0]));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__30_carry_i_7__2
       (.I0(o_out1__59_carry__1_3[0]),
        .I1(\o_y_reg[7]_0 [3]),
        .O(\a21_buffer_reg[1]_1 [0]));
  CARRY4 o_out1__59_carry
       (.CI(1'b0),
        .CO({o_out1__59_carry_n_0,o_out1__59_carry_n_1,o_out1__59_carry_n_2,o_out1__59_carry_n_3}),
        .CYINIT(1'b0),
        .DI({o_out1__86_carry_i_1_0,1'b0}),
        .O({o_out1__59_carry_n_4,o_out1__59_carry_n_5,o_out1__59_carry_n_6,o_out1__59_carry_n_7}),
        .S(o_out1__86_carry_i_1_1));
  CARRY4 o_out1__59_carry__0
       (.CI(o_out1__59_carry_n_0),
        .CO({o_out1__59_carry__0_n_0,o_out1__59_carry__0_n_1,o_out1__59_carry__0_n_2,o_out1__59_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(o_out1__86_carry__0_i_6_0),
        .O({o_out1__59_carry__0_i_8,o_out1__59_carry__0_n_7}),
        .S(o_out1__86_carry__0_i_6_1));
  LUT4 #(
    .INIT(16'h7000)) 
    o_out1__59_carry__0_i_1__0
       (.I0(o_out1__59_carry__1_2[7]),
        .I1(Q[5]),
        .I2(o_out1__59_carry__1_2[6]),
        .I3(Q[6]),
        .O(\b12_buffer_reg[7]_0 [3]));
  LUT4 #(
    .INIT(16'h7000)) 
    o_out1__59_carry__0_i_1__2
       (.I0(\o_y_reg[7]_0 [7]),
        .I1(o_out1__59_carry__1_3[5]),
        .I2(\o_y_reg[7]_0 [6]),
        .I3(o_out1__59_carry__1_3[6]),
        .O(\o_y_reg[7]_2 [3]));
  LUT4 #(
    .INIT(16'h7000)) 
    o_out1__59_carry__0_i_2__0
       (.I0(o_out1__59_carry__1_2[7]),
        .I1(Q[4]),
        .I2(o_out1__59_carry__1_2[6]),
        .I3(Q[5]),
        .O(\b12_buffer_reg[7]_0 [2]));
  LUT4 #(
    .INIT(16'h7000)) 
    o_out1__59_carry__0_i_2__2
       (.I0(\o_y_reg[7]_0 [7]),
        .I1(o_out1__59_carry__1_3[4]),
        .I2(\o_y_reg[7]_0 [6]),
        .I3(o_out1__59_carry__1_3[5]),
        .O(\o_y_reg[7]_2 [2]));
  LUT4 #(
    .INIT(16'h7000)) 
    o_out1__59_carry__0_i_3__0
       (.I0(o_out1__59_carry__1_2[7]),
        .I1(Q[3]),
        .I2(o_out1__59_carry__1_2[6]),
        .I3(Q[4]),
        .O(\b12_buffer_reg[7]_0 [1]));
  LUT4 #(
    .INIT(16'h7000)) 
    o_out1__59_carry__0_i_3__2
       (.I0(\o_y_reg[7]_0 [7]),
        .I1(o_out1__59_carry__1_3[3]),
        .I2(\o_y_reg[7]_0 [6]),
        .I3(o_out1__59_carry__1_3[4]),
        .O(\o_y_reg[7]_2 [1]));
  LUT4 #(
    .INIT(16'h7000)) 
    o_out1__59_carry__0_i_4__0
       (.I0(o_out1__59_carry__1_2[7]),
        .I1(Q[2]),
        .I2(o_out1__59_carry__1_2[6]),
        .I3(Q[3]),
        .O(\b12_buffer_reg[7]_0 [0]));
  LUT4 #(
    .INIT(16'h7000)) 
    o_out1__59_carry__0_i_4__2
       (.I0(\o_y_reg[7]_0 [7]),
        .I1(o_out1__59_carry__1_3[2]),
        .I2(\o_y_reg[7]_0 [6]),
        .I3(o_out1__59_carry__1_3[3]),
        .O(\o_y_reg[7]_2 [0]));
  LUT5 #(
    .INIT(32'h6FC030C0)) 
    o_out1__59_carry__0_i_5__0
       (.I0(Q[5]),
        .I1(Q[7]),
        .I2(o_out1__59_carry__1_2[6]),
        .I3(Q[6]),
        .I4(o_out1__59_carry__1_2[7]),
        .O(\o_x_reg[5]_0 [3]));
  LUT5 #(
    .INIT(32'h6FC030C0)) 
    o_out1__59_carry__0_i_5__2
       (.I0(o_out1__59_carry__1_3[5]),
        .I1(o_out1__59_carry__1_3[7]),
        .I2(\o_y_reg[7]_0 [6]),
        .I3(o_out1__59_carry__1_3[6]),
        .I4(\o_y_reg[7]_0 [7]),
        .O(\a21_buffer_reg[5] [3]));
  LUT5 #(
    .INIT(32'h903FCF3F)) 
    o_out1__59_carry__0_i_6__0
       (.I0(Q[4]),
        .I1(Q[6]),
        .I2(o_out1__59_carry__1_2[6]),
        .I3(Q[5]),
        .I4(o_out1__59_carry__1_2[7]),
        .O(\o_x_reg[5]_0 [2]));
  LUT5 #(
    .INIT(32'h903FCF3F)) 
    o_out1__59_carry__0_i_6__2
       (.I0(o_out1__59_carry__1_3[4]),
        .I1(o_out1__59_carry__1_3[6]),
        .I2(\o_y_reg[7]_0 [6]),
        .I3(o_out1__59_carry__1_3[5]),
        .I4(\o_y_reg[7]_0 [7]),
        .O(\a21_buffer_reg[5] [2]));
  LUT5 #(
    .INIT(32'h903FCF3F)) 
    o_out1__59_carry__0_i_7__0
       (.I0(Q[3]),
        .I1(Q[5]),
        .I2(o_out1__59_carry__1_2[6]),
        .I3(Q[4]),
        .I4(o_out1__59_carry__1_2[7]),
        .O(\o_x_reg[5]_0 [1]));
  LUT5 #(
    .INIT(32'h903FCF3F)) 
    o_out1__59_carry__0_i_7__2
       (.I0(o_out1__59_carry__1_3[3]),
        .I1(o_out1__59_carry__1_3[5]),
        .I2(\o_y_reg[7]_0 [6]),
        .I3(o_out1__59_carry__1_3[4]),
        .I4(\o_y_reg[7]_0 [7]),
        .O(\a21_buffer_reg[5] [1]));
  LUT5 #(
    .INIT(32'h903FCF3F)) 
    o_out1__59_carry__0_i_8__0
       (.I0(Q[2]),
        .I1(Q[4]),
        .I2(o_out1__59_carry__1_2[6]),
        .I3(Q[3]),
        .I4(o_out1__59_carry__1_2[7]),
        .O(\o_x_reg[5]_0 [0]));
  LUT5 #(
    .INIT(32'h903FCF3F)) 
    o_out1__59_carry__0_i_8__2
       (.I0(o_out1__59_carry__1_3[2]),
        .I1(o_out1__59_carry__1_3[4]),
        .I2(\o_y_reg[7]_0 [6]),
        .I3(o_out1__59_carry__1_3[3]),
        .I4(\o_y_reg[7]_0 [7]),
        .O(\a21_buffer_reg[5] [0]));
  CARRY4 o_out1__59_carry__1
       (.CI(o_out1__59_carry__0_n_0),
        .CO({NLW_o_out1__59_carry__1_CO_UNCONNECTED[3:1],o_out1__59_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,o_out1__86_carry__1_i_3}),
        .O({NLW_o_out1__59_carry__1_O_UNCONNECTED[3:2],o_out1__59_carry__1_n_6,o_out1__59_carry__1_i_2}),
        .S({1'b0,1'b0,1'b1,o_out1__86_carry__1_i_3_0}));
  LUT4 #(
    .INIT(16'h0777)) 
    o_out1__59_carry__1_i_1__0
       (.I0(o_out1__59_carry__1_2[7]),
        .I1(Q[6]),
        .I2(o_out1__59_carry__1_2[6]),
        .I3(Q[7]),
        .O(\b12_buffer_reg[7]_1 ));
  LUT4 #(
    .INIT(16'h0777)) 
    o_out1__59_carry__1_i_1__2
       (.I0(\o_y_reg[7]_0 [7]),
        .I1(o_out1__59_carry__1_3[6]),
        .I2(\o_y_reg[7]_0 [6]),
        .I3(o_out1__59_carry__1_3[7]),
        .O(\o_y_reg[7]_3 ));
  LUT4 #(
    .INIT(16'hE53F)) 
    o_out1__59_carry__1_i_2__0
       (.I0(o_out1__59_carry__1_2[6]),
        .I1(Q[6]),
        .I2(o_out1__59_carry__1_2[7]),
        .I3(Q[7]),
        .O(\b12_buffer_reg[6] ));
  LUT4 #(
    .INIT(16'hE53F)) 
    o_out1__59_carry__1_i_2__2
       (.I0(\o_y_reg[7]_0 [6]),
        .I1(o_out1__59_carry__1_3[6]),
        .I2(\o_y_reg[7]_0 [7]),
        .I3(o_out1__59_carry__1_3[7]),
        .O(\o_y_reg[6]_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    o_out1__59_carry_i_1__0
       (.I0(o_out1__59_carry__1_2[7]),
        .I1(Q[1]),
        .O(\b12_buffer_reg[7] [2]));
  LUT2 #(
    .INIT(4'h7)) 
    o_out1__59_carry_i_1__2
       (.I0(\o_y_reg[7]_0 [7]),
        .I1(o_out1__59_carry__1_3[1]),
        .O(\o_y_reg[7]_1 [2]));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__59_carry_i_2__0
       (.I0(Q[1]),
        .I1(o_out1__59_carry__1_2[7]),
        .O(\b12_buffer_reg[7] [1]));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__59_carry_i_2__2
       (.I0(o_out1__59_carry__1_3[1]),
        .I1(\o_y_reg[7]_0 [7]),
        .O(\o_y_reg[7]_1 [1]));
  LUT2 #(
    .INIT(4'h7)) 
    o_out1__59_carry_i_3__0
       (.I0(Q[0]),
        .I1(o_out1__59_carry__1_2[7]),
        .O(\b12_buffer_reg[7] [0]));
  LUT2 #(
    .INIT(4'h7)) 
    o_out1__59_carry_i_3__2
       (.I0(o_out1__59_carry__1_3[0]),
        .I1(\o_y_reg[7]_0 [7]),
        .O(\o_y_reg[7]_1 [0]));
  LUT5 #(
    .INIT(32'h956AC0C0)) 
    o_out1__59_carry_i_4__0
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(o_out1__59_carry__1_2[6]),
        .I3(Q[2]),
        .I4(o_out1__59_carry__1_2[7]),
        .O(\o_x_reg[1]_0 [3]));
  LUT5 #(
    .INIT(32'h956AC0C0)) 
    o_out1__59_carry_i_4__2
       (.I0(o_out1__59_carry__1_3[1]),
        .I1(o_out1__59_carry__1_3[3]),
        .I2(\o_y_reg[7]_0 [6]),
        .I3(o_out1__59_carry__1_3[2]),
        .I4(\o_y_reg[7]_0 [7]),
        .O(\a21_buffer_reg[1] [3]));
  LUT4 #(
    .INIT(16'h7888)) 
    o_out1__59_carry_i_5__0
       (.I0(o_out1__59_carry__1_2[7]),
        .I1(Q[1]),
        .I2(o_out1__59_carry__1_2[6]),
        .I3(Q[2]),
        .O(\o_x_reg[1]_0 [2]));
  LUT4 #(
    .INIT(16'h7888)) 
    o_out1__59_carry_i_5__2
       (.I0(\o_y_reg[7]_0 [7]),
        .I1(o_out1__59_carry__1_3[1]),
        .I2(\o_y_reg[7]_0 [6]),
        .I3(o_out1__59_carry__1_3[2]),
        .O(\a21_buffer_reg[1] [2]));
  LUT4 #(
    .INIT(16'h8777)) 
    o_out1__59_carry_i_6__0
       (.I0(o_out1__59_carry__1_2[7]),
        .I1(Q[0]),
        .I2(o_out1__59_carry__1_2[6]),
        .I3(Q[1]),
        .O(\o_x_reg[1]_0 [1]));
  LUT4 #(
    .INIT(16'h8777)) 
    o_out1__59_carry_i_6__2
       (.I0(\o_y_reg[7]_0 [7]),
        .I1(o_out1__59_carry__1_3[0]),
        .I2(\o_y_reg[7]_0 [6]),
        .I3(o_out1__59_carry__1_3[1]),
        .O(\a21_buffer_reg[1] [1]));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__59_carry_i_7__0
       (.I0(Q[0]),
        .I1(o_out1__59_carry__1_2[6]),
        .O(\o_x_reg[1]_0 [0]));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__59_carry_i_7__2
       (.I0(o_out1__59_carry__1_3[0]),
        .I1(\o_y_reg[7]_0 [6]),
        .O(\a21_buffer_reg[1] [0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 o_out1__86_carry
       (.CI(1'b0),
        .CO({o_out1__86_carry_n_0,o_out1__86_carry_n_1,o_out1__86_carry_n_2,o_out1__86_carry_n_3}),
        .CYINIT(1'b0),
        .DI({o_out1__86_carry_i_1_n_0,o_out1__86_carry_i_2_n_0,o_out1__86_carry_i_3_n_0,o_out1__86_carry_i_4_n_0}),
        .O({o_out1__86_carry_n_4,o_out1__86_carry_n_5,o_out1__86_carry_n_6,o_out1__86_carry_n_7}),
        .S({o_out1__86_carry_i_5_n_0,o_out1__86_carry_i_6_n_0,o_out1__86_carry_i_7_n_0,o_out1__86_carry_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 o_out1__86_carry__0
       (.CI(o_out1__86_carry_n_0),
        .CO({o_out1__86_carry__0_n_0,o_out1__86_carry__0_n_1,o_out1__86_carry__0_n_2,o_out1__86_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({o_out1__86_carry__0_i_1_n_0,o_out1__86_carry__0_i_2_n_0,o_out1__86_carry__0_i_3_n_0,o_out1__86_carry__0_i_4_n_0}),
        .O({o_out1__86_carry__0_n_4,o_out1__86_carry__0_n_5,o_out1__86_carry__0_n_6,o_out1__86_carry__0_n_7}),
        .S({o_out1__86_carry__0_i_5_n_0,o_out1__86_carry__0_i_6_n_0,o_out1__86_carry__0_i_7_n_0,o_out1__86_carry__0_i_8_n_0}));
  LUT3 #(
    .INIT(8'hE8)) 
    o_out1__86_carry__0_i_1
       (.I0(o_out1__59_carry__0_n_7),
        .I1(o_out1__0_carry__1_n_1),
        .I2(o_out1__30_carry__0_n_4),
        .O(o_out1__86_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    o_out1__86_carry__0_i_2
       (.I0(o_out1__59_carry_n_4),
        .I1(o_out1__0_carry__1_n_6),
        .I2(o_out1__30_carry__0_n_5),
        .O(o_out1__86_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    o_out1__86_carry__0_i_3
       (.I0(o_out1__59_carry_n_5),
        .I1(o_out1__0_carry__1_n_7),
        .I2(o_out1__30_carry__0_n_6),
        .O(o_out1__86_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    o_out1__86_carry__0_i_4
       (.I0(o_out1__59_carry_n_6),
        .I1(o_out1__0_carry__0_n_4),
        .I2(o_out1__30_carry__0_n_7),
        .O(o_out1__86_carry__0_i_4_n_0));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    o_out1__86_carry__0_i_5
       (.I0(o_out1__30_carry__0_n_4),
        .I1(o_out1__0_carry__1_n_1),
        .I2(o_out1__59_carry__0_n_7),
        .I3(o_out1__30_carry__1_i_4[0]),
        .I4(o_out1__59_carry__0_i_8[0]),
        .O(o_out1__86_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    o_out1__86_carry__0_i_6
       (.I0(o_out1__86_carry__0_i_2_n_0),
        .I1(o_out1__59_carry__0_n_7),
        .I2(o_out1__0_carry__1_n_1),
        .I3(o_out1__30_carry__0_n_4),
        .O(o_out1__86_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    o_out1__86_carry__0_i_7
       (.I0(o_out1__59_carry_n_4),
        .I1(o_out1__0_carry__1_n_6),
        .I2(o_out1__30_carry__0_n_5),
        .I3(o_out1__86_carry__0_i_3_n_0),
        .O(o_out1__86_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    o_out1__86_carry__0_i_8
       (.I0(o_out1__59_carry_n_5),
        .I1(o_out1__0_carry__1_n_7),
        .I2(o_out1__30_carry__0_n_6),
        .I3(o_out1__86_carry__0_i_4_n_0),
        .O(o_out1__86_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 o_out1__86_carry__1
       (.CI(o_out1__86_carry__0_n_0),
        .CO({NLW_o_out1__86_carry__1_CO_UNCONNECTED[3],o_out1__86_carry__1_n_1,o_out1__86_carry__1_n_2,o_out1__86_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,o_out1__59_carry__1_i_2,o_out1__86_carry__1_i_1_n_0,o_out1__86_carry__1_i_2_n_0}),
        .O({o_out1__86_carry__1_n_4,o_out1__86_carry__1_i_5}),
        .S({o_out1__59_carry__1_n_6,\o_out_reg[15]_3 }));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__86_carry__1_i_1
       (.I0(o_out1__59_carry__0_i_8[1]),
        .I1(o_out1__30_carry__1_i_4[1]),
        .O(o_out1__86_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__86_carry__1_i_2
       (.I0(o_out1__59_carry__0_i_8[0]),
        .I1(o_out1__30_carry__1_i_4[0]),
        .O(o_out1__86_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h78)) 
    o_out1__86_carry__1_i_3__0
       (.I0(o_out1__86_carry__1_2),
        .I1(o_out1__86_carry__1_1[2]),
        .I2(o_out1__86_carry__1_3),
        .O(o_out1__59_carry__1_0[2]));
  LUT3 #(
    .INIT(8'h78)) 
    o_out1__86_carry__1_i_3__2
       (.I0(o_out1__86_carry__1_6),
        .I1(o_out1__86_carry__1_5[2]),
        .I2(o_out1__86_carry__1_7),
        .O(o_out1__59_carry__1_1[2]));
  LUT4 #(
    .INIT(16'h8778)) 
    o_out1__86_carry__1_i_4__0
       (.I0(o_out1__86_carry__1_0[1]),
        .I1(o_out1__86_carry__1_1[1]),
        .I2(o_out1__86_carry__1_2),
        .I3(o_out1__86_carry__1_1[2]),
        .O(o_out1__59_carry__1_0[1]));
  LUT4 #(
    .INIT(16'h8778)) 
    o_out1__86_carry__1_i_4__2
       (.I0(o_out1__86_carry__1_4[1]),
        .I1(o_out1__86_carry__1_5[1]),
        .I2(o_out1__86_carry__1_6),
        .I3(o_out1__86_carry__1_5[2]),
        .O(o_out1__59_carry__1_1[1]));
  LUT4 #(
    .INIT(16'h8778)) 
    o_out1__86_carry__1_i_5__0
       (.I0(o_out1__86_carry__1_0[0]),
        .I1(o_out1__86_carry__1_1[0]),
        .I2(o_out1__86_carry__1_0[1]),
        .I3(o_out1__86_carry__1_1[1]),
        .O(o_out1__59_carry__1_0[0]));
  LUT4 #(
    .INIT(16'h8778)) 
    o_out1__86_carry__1_i_5__2
       (.I0(o_out1__86_carry__1_4[0]),
        .I1(o_out1__86_carry__1_5[0]),
        .I2(o_out1__86_carry__1_4[1]),
        .I3(o_out1__86_carry__1_5[1]),
        .O(o_out1__59_carry__1_1[0]));
  LUT3 #(
    .INIT(8'hE8)) 
    o_out1__86_carry_i_1
       (.I0(o_out1__59_carry_n_7),
        .I1(o_out1__0_carry__0_n_5),
        .I2(o_out1__30_carry_n_4),
        .O(o_out1__86_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__86_carry_i_2
       (.I0(o_out1__30_carry_n_5),
        .I1(o_out1__0_carry__0_n_6),
        .O(o_out1__86_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__86_carry_i_3
       (.I0(o_out1__30_carry_n_6),
        .I1(o_out1__0_carry__0_n_7),
        .O(o_out1__86_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__86_carry_i_4
       (.I0(o_out1__0_carry_n_4),
        .I1(o_out1__30_carry_n_7),
        .O(o_out1__86_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    o_out1__86_carry_i_5
       (.I0(o_out1__59_carry_n_6),
        .I1(o_out1__0_carry__0_n_4),
        .I2(o_out1__30_carry__0_n_7),
        .I3(o_out1__86_carry_i_1_n_0),
        .O(o_out1__86_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    o_out1__86_carry_i_6
       (.I0(o_out1__59_carry_n_7),
        .I1(o_out1__0_carry__0_n_5),
        .I2(o_out1__30_carry_n_4),
        .I3(o_out1__86_carry_i_2_n_0),
        .O(o_out1__86_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9666)) 
    o_out1__86_carry_i_7
       (.I0(o_out1__30_carry_n_5),
        .I1(o_out1__0_carry__0_n_6),
        .I2(o_out1__0_carry__0_n_7),
        .I3(o_out1__30_carry_n_6),
        .O(o_out1__86_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    o_out1__86_carry_i_8
       (.I0(o_out1__30_carry_n_7),
        .I1(o_out1__0_carry_n_4),
        .I2(o_out1__0_carry__0_n_7),
        .I3(o_out1__30_carry_n_6),
        .O(o_out1__86_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[11]_i_2 
       (.I0(o_out1__86_carry__0_n_4),
        .I1(m_axis_data[11]),
        .O(\o_out[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[11]_i_3 
       (.I0(o_out1__86_carry__0_n_5),
        .I1(m_axis_data[10]),
        .O(\o_out[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[11]_i_4 
       (.I0(o_out1__86_carry__0_n_6),
        .I1(m_axis_data[9]),
        .O(\o_out[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[11]_i_5 
       (.I0(o_out1__86_carry__0_n_7),
        .I1(m_axis_data[8]),
        .O(\o_out[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[15]_i_2 
       (.I0(m_axis_data[15]),
        .I1(o_out1__86_carry__1_n_4),
        .O(\o_out_reg[15]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[15]_i_3__1 
       (.I0(\o_out_reg[15]_5 [2]),
        .I1(\o_out_reg[15]_10 [2]),
        .O(\o_out[15]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[15]_i_3__3 
       (.I0(\o_out_reg[15]_8 [2]),
        .I1(\o_out_reg[15]_10 [5]),
        .O(\o_out[15]_i_3__3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[15]_i_4__0 
       (.I0(\o_out_reg[15]_5 [1]),
        .I1(\o_out_reg[15]_10 [1]),
        .O(\o_out[15]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[15]_i_4__2 
       (.I0(\o_out_reg[15]_8 [1]),
        .I1(\o_out_reg[15]_10 [4]),
        .O(\o_out[15]_i_4__2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[15]_i_5__0 
       (.I0(\o_out_reg[15]_5 [0]),
        .I1(\o_out_reg[15]_10 [0]),
        .O(\o_out[15]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[15]_i_5__2 
       (.I0(\o_out_reg[15]_8 [0]),
        .I1(\o_out_reg[15]_10 [3]),
        .O(\o_out[15]_i_5__2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \o_out[3]_i_2 
       (.I0(o_out1__30_carry_n_7),
        .I1(o_out1__0_carry_n_4),
        .I2(m_axis_data[3]),
        .O(\o_out[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[3]_i_3 
       (.I0(o_out1__0_carry_n_5),
        .I1(m_axis_data[2]),
        .O(\o_out[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[3]_i_4 
       (.I0(o_out1__0_carry_n_6),
        .I1(m_axis_data[1]),
        .O(\o_out[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[3]_i_5 
       (.I0(o_out1__0_carry_n_7),
        .I1(m_axis_data[0]),
        .O(\o_out[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[7]_i_2 
       (.I0(o_out1__86_carry_n_4),
        .I1(m_axis_data[7]),
        .O(\o_out[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[7]_i_3 
       (.I0(o_out1__86_carry_n_5),
        .I1(m_axis_data[6]),
        .O(\o_out[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[7]_i_4 
       (.I0(o_out1__86_carry_n_6),
        .I1(m_axis_data[5]),
        .O(\o_out[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[7]_i_5 
       (.I0(o_out1__86_carry_n_7),
        .I1(m_axis_data[4]),
        .O(\o_out[7]_i_5_n_0 ));
  FDRE \o_out_reg[0] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[3]_i_1_n_7 ),
        .Q(m_axis_data[0]),
        .R(p_0_in));
  FDRE \o_out_reg[10] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[11]_i_1_n_5 ),
        .Q(m_axis_data[10]),
        .R(p_0_in));
  FDRE \o_out_reg[11] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[11]_i_1_n_4 ),
        .Q(m_axis_data[11]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \o_out_reg[11]_i_1 
       (.CI(\o_out_reg[7]_i_1_n_0 ),
        .CO({\o_out_reg[11]_0 ,\o_out_reg[11]_i_1_n_1 ,\o_out_reg[11]_i_1_n_2 ,\o_out_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({o_out1__86_carry__0_n_4,o_out1__86_carry__0_n_5,o_out1__86_carry__0_n_6,o_out1__86_carry__0_n_7}),
        .O({\o_out_reg[11]_i_1_n_4 ,\o_out_reg[11]_i_1_n_5 ,\o_out_reg[11]_i_1_n_6 ,\o_out_reg[11]_i_1_n_7 }),
        .S({\o_out[11]_i_2_n_0 ,\o_out[11]_i_3_n_0 ,\o_out[11]_i_4_n_0 ,\o_out[11]_i_5_n_0 }));
  FDRE \o_out_reg[12] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(O[0]),
        .Q(m_axis_data[12]),
        .R(p_0_in));
  FDRE \o_out_reg[13] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(O[1]),
        .Q(m_axis_data[13]),
        .R(p_0_in));
  FDRE \o_out_reg[14] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(O[2]),
        .Q(m_axis_data[14]),
        .R(p_0_in));
  FDRE \o_out_reg[15] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(O[3]),
        .Q(m_axis_data[15]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \o_out_reg[15]_i_1__0 
       (.CI(\o_out_reg[15]_4 ),
        .CO({\NLW_o_out_reg[15]_i_1__0_CO_UNCONNECTED [3],\o_out_reg[15]_i_1__0_n_1 ,\o_out_reg[15]_i_1__0_n_2 ,\o_out_reg[15]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\o_out_reg[15]_5 }),
        .O(\o_out_reg[15]_1 ),
        .S({\o_out_reg[15]_6 ,\o_out[15]_i_3__1_n_0 ,\o_out[15]_i_4__0_n_0 ,\o_out[15]_i_5__0_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \o_out_reg[15]_i_1__2 
       (.CI(\o_out_reg[15]_7 ),
        .CO({\NLW_o_out_reg[15]_i_1__2_CO_UNCONNECTED [3],\o_out_reg[15]_i_1__2_n_1 ,\o_out_reg[15]_i_1__2_n_2 ,\o_out_reg[15]_i_1__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\o_out_reg[15]_8 }),
        .O(\o_out_reg[15]_2 ),
        .S({\o_out_reg[15]_9 ,\o_out[15]_i_3__3_n_0 ,\o_out[15]_i_4__2_n_0 ,\o_out[15]_i_5__2_n_0 }));
  FDRE \o_out_reg[1] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[3]_i_1_n_6 ),
        .Q(m_axis_data[1]),
        .R(p_0_in));
  FDRE \o_out_reg[2] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[3]_i_1_n_5 ),
        .Q(m_axis_data[2]),
        .R(p_0_in));
  FDRE \o_out_reg[3] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[3]_i_1_n_4 ),
        .Q(m_axis_data[3]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \o_out_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\o_out_reg[3]_i_1_n_0 ,\o_out_reg[3]_i_1_n_1 ,\o_out_reg[3]_i_1_n_2 ,\o_out_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({m_axis_data[3],o_out1__0_carry_n_5,o_out1__0_carry_n_6,o_out1__0_carry_n_7}),
        .O({\o_out_reg[3]_i_1_n_4 ,\o_out_reg[3]_i_1_n_5 ,\o_out_reg[3]_i_1_n_6 ,\o_out_reg[3]_i_1_n_7 }),
        .S({\o_out[3]_i_2_n_0 ,\o_out[3]_i_3_n_0 ,\o_out[3]_i_4_n_0 ,\o_out[3]_i_5_n_0 }));
  FDRE \o_out_reg[4] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[7]_i_1_n_7 ),
        .Q(m_axis_data[4]),
        .R(p_0_in));
  FDRE \o_out_reg[5] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[7]_i_1_n_6 ),
        .Q(m_axis_data[5]),
        .R(p_0_in));
  FDRE \o_out_reg[6] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[7]_i_1_n_5 ),
        .Q(m_axis_data[6]),
        .R(p_0_in));
  FDRE \o_out_reg[7] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[7]_i_1_n_4 ),
        .Q(m_axis_data[7]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \o_out_reg[7]_i_1 
       (.CI(\o_out_reg[3]_i_1_n_0 ),
        .CO({\o_out_reg[7]_i_1_n_0 ,\o_out_reg[7]_i_1_n_1 ,\o_out_reg[7]_i_1_n_2 ,\o_out_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({o_out1__86_carry_n_4,o_out1__86_carry_n_5,o_out1__86_carry_n_6,o_out1__86_carry_n_7}),
        .O({\o_out_reg[7]_i_1_n_4 ,\o_out_reg[7]_i_1_n_5 ,\o_out_reg[7]_i_1_n_6 ,\o_out_reg[7]_i_1_n_7 }),
        .S({\o_out[7]_i_2_n_0 ,\o_out[7]_i_3_n_0 ,\o_out[7]_i_4_n_0 ,\o_out[7]_i_5_n_0 }));
  FDRE \o_out_reg[8] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[11]_i_1_n_7 ),
        .Q(m_axis_data[8]),
        .R(p_0_in));
  FDRE \o_out_reg[9] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[11]_i_1_n_6 ),
        .Q(m_axis_data[9]),
        .R(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    \o_transaction_cnt[0]_i_1 
       (.I0(transaction_cnt[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \o_transaction_cnt[1]_i_1 
       (.I0(transaction_cnt[0]),
        .I1(transaction_cnt[1]),
        .O(p_0_in__0[1]));
  LUT3 #(
    .INIT(8'h7F)) 
    \o_transaction_cnt[2]_i_1 
       (.I0(transaction_cnt[1]),
        .I1(transaction_cnt[0]),
        .I2(transaction_cnt[2]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \o_transaction_cnt[2]_i_2 
       (.I0(transaction_cnt[2]),
        .I1(transaction_cnt[0]),
        .I2(transaction_cnt[1]),
        .O(p_0_in__0[2]));
  FDRE \o_transaction_cnt_reg[0] 
       (.C(axi_clk),
        .CE(E),
        .D(p_0_in__0[0]),
        .Q(transaction_cnt[0]),
        .R(p_0_in));
  FDRE \o_transaction_cnt_reg[1] 
       (.C(axi_clk),
        .CE(E),
        .D(p_0_in__0[1]),
        .Q(transaction_cnt[1]),
        .R(p_0_in));
  FDRE \o_transaction_cnt_reg[2] 
       (.C(axi_clk),
        .CE(E),
        .D(p_0_in__0[2]),
        .Q(transaction_cnt[2]),
        .R(p_0_in));
  FDRE \o_x_reg[0] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(p_0_in));
  FDRE \o_x_reg[1] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(p_0_in));
  FDRE \o_x_reg[2] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(p_0_in));
  FDRE \o_x_reg[3] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(p_0_in));
  FDRE \o_x_reg[4] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[4]),
        .R(p_0_in));
  FDRE \o_x_reg[5] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(D[5]),
        .Q(Q[5]),
        .R(p_0_in));
  FDRE \o_x_reg[6] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(D[6]),
        .Q(Q[6]),
        .R(p_0_in));
  FDRE \o_x_reg[7] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(D[7]),
        .Q(Q[7]),
        .R(p_0_in));
  FDRE \o_y_reg[0] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_y_reg[7]_4 [0]),
        .Q(\o_y_reg[7]_0 [0]),
        .R(p_0_in));
  FDRE \o_y_reg[1] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_y_reg[7]_4 [1]),
        .Q(\o_y_reg[7]_0 [1]),
        .R(p_0_in));
  FDRE \o_y_reg[2] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_y_reg[7]_4 [2]),
        .Q(\o_y_reg[7]_0 [2]),
        .R(p_0_in));
  FDRE \o_y_reg[3] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_y_reg[7]_4 [3]),
        .Q(\o_y_reg[7]_0 [3]),
        .R(p_0_in));
  FDRE \o_y_reg[4] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_y_reg[7]_4 [4]),
        .Q(\o_y_reg[7]_0 [4]),
        .R(p_0_in));
  FDRE \o_y_reg[5] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_y_reg[7]_4 [5]),
        .Q(\o_y_reg[7]_0 [5]),
        .R(p_0_in));
  FDRE \o_y_reg[6] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_y_reg[7]_4 [6]),
        .Q(\o_y_reg[7]_0 [6]),
        .R(p_0_in));
  FDRE \o_y_reg[7] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_y_reg[7]_4 [7]),
        .Q(\o_y_reg[7]_0 [7]),
        .R(p_0_in));
endmodule

(* ORIG_REF_NAME = "MAC" *) 
module design_1_SystolicArrayAxiWrap_0_0_MAC_1
   (m_axis_data,
    \b12_buffer_reg[5] ,
    \b12_buffer_reg[5]_0 ,
    \b12_buffer_reg[7] ,
    \b12_buffer_reg[7]_0 ,
    o_out1__86_carry__1_i_5__0,
    S,
    \o_out_reg[15]_0 ,
    DI,
    \o_x_reg[3]_0 ,
    \b13_buffer2_reg[5] ,
    \b13_buffer2_reg[3] ,
    \b13_buffer2_reg[7] ,
    \b13_buffer2_reg[2] ,
    \o_x_reg[1]_0 ,
    \b13_buffer2_reg[5]_0 ,
    \o_x_reg[1]_1 ,
    \b13_buffer2_reg[7]_0 ,
    \b13_buffer2_reg[7]_1 ,
    \o_y_reg[2]_0 ,
    \o_y_reg[7]_0 ,
    \o_y_reg[5]_0 ,
    \o_y_reg[3]_0 ,
    \o_y_reg[7]_1 ,
    \o_y_reg[2]_1 ,
    \o_y_reg[0]_0 ,
    \o_y_reg[5]_1 ,
    \o_y_reg[7]_2 ,
    \o_y_reg[7]_3 ,
    \o_out_reg[11]_0 ,
    O,
    \o_out_reg[15]_1 ,
    \b13_buffer2_reg[1] ,
    \b13_buffer2_reg[1]_0 ,
    \b13_buffer2_reg[4] ,
    \b13_buffer2_reg[4]_0 ,
    \o_x_reg[5]_0 ,
    \b13_buffer2_reg[6] ,
    o_out1__59_carry__1_0,
    \o_y_reg[1]_0 ,
    \o_y_reg[1]_1 ,
    \o_y_reg[1]_2 ,
    \o_x_reg[1]_2 ,
    \o_y_reg[4]_0 ,
    \o_y_reg[4]_1 ,
    \o_y_reg[7]_4 ,
    \o_y_reg[6]_0 ,
    o_out1__59_carry__1_1,
    p_0_in,
    axi_clk,
    \o_out_reg[15]_2 ,
    \o_out_reg[3]_0 ,
    \o_out_reg[3]_1 ,
    o_out1__86_carry_i_8__0_0,
    o_out1__86_carry_i_8__0_1,
    o_out1__86_carry__0_i_3__0_0,
    o_out1__86_carry__0_i_3__0_1,
    \o_out[3]_i_2__0_0 ,
    \o_out[3]_i_2__0_1 ,
    o_out1__86_carry__0_i_4__0_0,
    o_out1__86_carry__0_i_4__0_1,
    o_out1__86_carry__1_i_5__0_0,
    o_out1__86_carry__1_i_5__0_1,
    o_out1__86_carry_i_1__0_0,
    o_out1__86_carry_i_1__0_1,
    o_out1__86_carry__0_i_6__0_0,
    o_out1__86_carry__0_i_6__0_1,
    o_out1__86_carry__1_i_3__0,
    o_out1__86_carry__1_i_3__0_0,
    \o_out_reg[15]_3 ,
    Q,
    o_out1__59_carry__1_2,
    CO,
    \o_out_reg[15]_4 ,
    \o_out_reg[15]_5 ,
    \o_out_reg[15]_6 ,
    \o_out_reg[15]_7 ,
    \o_out_reg[15]_8 ,
    o_out1__86_carry__1_0,
    o_out1__86_carry__1_1,
    o_out1__86_carry__1_2,
    o_out1__86_carry__1_3,
    \o_out_reg[15]_9 ,
    o_out1__0_carry__0_0,
    o_out1__30_carry__0_0,
    o_out1__30_carry__0_1,
    o_out1__30_carry__0_2,
    o_out1__30_carry__0_3,
    o_out1__86_carry__1_4,
    o_out1__86_carry__1_5,
    o_out1__86_carry__1_6,
    o_out1__86_carry__1_7,
    D,
    \o_y_reg[7]_5 );
  output [15:0]m_axis_data;
  output [0:0]\b12_buffer_reg[5] ;
  output [1:0]\b12_buffer_reg[5]_0 ;
  output [2:0]\b12_buffer_reg[7] ;
  output [0:0]\b12_buffer_reg[7]_0 ;
  output [2:0]o_out1__86_carry__1_i_5__0;
  output [3:0]S;
  output [0:0]\o_out_reg[15]_0 ;
  output [3:0]DI;
  output [2:0]\o_x_reg[3]_0 ;
  output [3:0]\b13_buffer2_reg[5] ;
  output [2:0]\b13_buffer2_reg[3] ;
  output [2:0]\b13_buffer2_reg[7] ;
  output [1:0]\b13_buffer2_reg[2] ;
  output [3:0]\o_x_reg[1]_0 ;
  output [1:0]\b13_buffer2_reg[5]_0 ;
  output [3:0]\o_x_reg[1]_1 ;
  output [3:0]\b13_buffer2_reg[7]_0 ;
  output [0:0]\b13_buffer2_reg[7]_1 ;
  output [3:0]\o_y_reg[2]_0 ;
  output [7:0]\o_y_reg[7]_0 ;
  output [3:0]\o_y_reg[5]_0 ;
  output [1:0]\o_y_reg[3]_0 ;
  output [0:0]\o_y_reg[7]_1 ;
  output [1:0]\o_y_reg[2]_1 ;
  output [0:0]\o_y_reg[0]_0 ;
  output [1:0]\o_y_reg[5]_1 ;
  output [3:0]\o_y_reg[7]_2 ;
  output [0:0]\o_y_reg[7]_3 ;
  output [0:0]\o_out_reg[11]_0 ;
  output [3:0]O;
  output [3:0]\o_out_reg[15]_1 ;
  output [3:0]\b13_buffer2_reg[1] ;
  output [1:0]\b13_buffer2_reg[1]_0 ;
  output [3:0]\b13_buffer2_reg[4] ;
  output [1:0]\b13_buffer2_reg[4]_0 ;
  output [3:0]\o_x_reg[5]_0 ;
  output [0:0]\b13_buffer2_reg[6] ;
  output [2:0]o_out1__59_carry__1_0;
  output [0:0]\o_y_reg[1]_0 ;
  output [3:0]\o_y_reg[1]_1 ;
  output [1:0]\o_y_reg[1]_2 ;
  output [1:0]\o_x_reg[1]_2 ;
  output [3:0]\o_y_reg[4]_0 ;
  output [1:0]\o_y_reg[4]_1 ;
  output [1:0]\o_y_reg[7]_4 ;
  output [0:0]\o_y_reg[6]_0 ;
  output [2:0]o_out1__59_carry__1_1;
  input p_0_in;
  input axi_clk;
  input [3:0]\o_out_reg[15]_2 ;
  input [2:0]\o_out_reg[3]_0 ;
  input [3:0]\o_out_reg[3]_1 ;
  input [3:0]o_out1__86_carry_i_8__0_0;
  input [3:0]o_out1__86_carry_i_8__0_1;
  input [1:0]o_out1__86_carry__0_i_3__0_0;
  input [1:0]o_out1__86_carry__0_i_3__0_1;
  input [2:0]\o_out[3]_i_2__0_0 ;
  input [3:0]\o_out[3]_i_2__0_1 ;
  input [3:0]o_out1__86_carry__0_i_4__0_0;
  input [3:0]o_out1__86_carry__0_i_4__0_1;
  input [1:0]o_out1__86_carry__1_i_5__0_0;
  input [1:0]o_out1__86_carry__1_i_5__0_1;
  input [2:0]o_out1__86_carry_i_1__0_0;
  input [3:0]o_out1__86_carry_i_1__0_1;
  input [3:0]o_out1__86_carry__0_i_6__0_0;
  input [3:0]o_out1__86_carry__0_i_6__0_1;
  input [0:0]o_out1__86_carry__1_i_3__0;
  input [0:0]o_out1__86_carry__1_i_3__0_0;
  input [2:0]\o_out_reg[15]_3 ;
  input [7:0]Q;
  input [7:0]o_out1__59_carry__1_2;
  input [0:0]CO;
  input [2:0]\o_out_reg[15]_4 ;
  input [0:0]\o_out_reg[15]_5 ;
  input [0:0]\o_out_reg[15]_6 ;
  input [2:0]\o_out_reg[15]_7 ;
  input [0:0]\o_out_reg[15]_8 ;
  input [1:0]o_out1__86_carry__1_0;
  input [2:0]o_out1__86_carry__1_1;
  input [0:0]o_out1__86_carry__1_2;
  input [0:0]o_out1__86_carry__1_3;
  input [5:0]\o_out_reg[15]_9 ;
  input o_out1__0_carry__0_0;
  input o_out1__30_carry__0_0;
  input o_out1__30_carry__0_1;
  input o_out1__30_carry__0_2;
  input o_out1__30_carry__0_3;
  input [1:0]o_out1__86_carry__1_4;
  input [2:0]o_out1__86_carry__1_5;
  input [0:0]o_out1__86_carry__1_6;
  input [0:0]o_out1__86_carry__1_7;
  input [7:0]D;
  input [7:0]\o_y_reg[7]_5 ;

  wire [0:0]CO;
  wire [7:0]D;
  wire [3:0]DI;
  wire [3:0]O;
  wire [7:0]Q;
  wire [3:0]S;
  wire axi_clk;
  wire [0:0]\b12_buffer_reg[5] ;
  wire [1:0]\b12_buffer_reg[5]_0 ;
  wire [2:0]\b12_buffer_reg[7] ;
  wire [0:0]\b12_buffer_reg[7]_0 ;
  wire [3:0]\b13_buffer2_reg[1] ;
  wire [1:0]\b13_buffer2_reg[1]_0 ;
  wire [1:0]\b13_buffer2_reg[2] ;
  wire [2:0]\b13_buffer2_reg[3] ;
  wire [3:0]\b13_buffer2_reg[4] ;
  wire [1:0]\b13_buffer2_reg[4]_0 ;
  wire [3:0]\b13_buffer2_reg[5] ;
  wire [1:0]\b13_buffer2_reg[5]_0 ;
  wire [0:0]\b13_buffer2_reg[6] ;
  wire [2:0]\b13_buffer2_reg[7] ;
  wire [3:0]\b13_buffer2_reg[7]_0 ;
  wire [0:0]\b13_buffer2_reg[7]_1 ;
  wire [15:0]m_axis_data;
  wire o_out1__0_carry__0_0;
  wire o_out1__0_carry__0_i_10__1_n_0;
  wire o_out1__0_carry__0_i_10__3_n_0;
  wire o_out1__0_carry__0_i_11__1_n_0;
  wire o_out1__0_carry__0_i_11__3_n_0;
  wire o_out1__0_carry__0_i_12__1_n_0;
  wire o_out1__0_carry__0_i_12__3_n_0;
  wire o_out1__0_carry__0_i_9__1_n_0;
  wire o_out1__0_carry__0_n_0;
  wire o_out1__0_carry__0_n_1;
  wire o_out1__0_carry__0_n_2;
  wire o_out1__0_carry__0_n_3;
  wire o_out1__0_carry__0_n_4;
  wire o_out1__0_carry__0_n_5;
  wire o_out1__0_carry__0_n_6;
  wire o_out1__0_carry__0_n_7;
  wire o_out1__0_carry__1_n_1;
  wire o_out1__0_carry__1_n_3;
  wire o_out1__0_carry__1_n_6;
  wire o_out1__0_carry__1_n_7;
  wire o_out1__0_carry_n_0;
  wire o_out1__0_carry_n_1;
  wire o_out1__0_carry_n_2;
  wire o_out1__0_carry_n_3;
  wire o_out1__0_carry_n_4;
  wire o_out1__0_carry_n_5;
  wire o_out1__0_carry_n_6;
  wire o_out1__0_carry_n_7;
  wire o_out1__30_carry__0_0;
  wire o_out1__30_carry__0_1;
  wire o_out1__30_carry__0_2;
  wire o_out1__30_carry__0_3;
  wire o_out1__30_carry__0_i_10__1_n_0;
  wire o_out1__30_carry__0_i_11__1_n_0;
  wire o_out1__30_carry__0_i_12__1_n_0;
  wire o_out1__30_carry__0_i_9__1_n_0;
  wire o_out1__30_carry__0_n_0;
  wire o_out1__30_carry__0_n_1;
  wire o_out1__30_carry__0_n_2;
  wire o_out1__30_carry__0_n_3;
  wire o_out1__30_carry__0_n_4;
  wire o_out1__30_carry__0_n_5;
  wire o_out1__30_carry__0_n_6;
  wire o_out1__30_carry__0_n_7;
  wire o_out1__30_carry__1_n_3;
  wire o_out1__30_carry_n_0;
  wire o_out1__30_carry_n_1;
  wire o_out1__30_carry_n_2;
  wire o_out1__30_carry_n_3;
  wire o_out1__30_carry_n_4;
  wire o_out1__30_carry_n_5;
  wire o_out1__30_carry_n_6;
  wire o_out1__30_carry_n_7;
  wire o_out1__59_carry__0_n_0;
  wire o_out1__59_carry__0_n_1;
  wire o_out1__59_carry__0_n_2;
  wire o_out1__59_carry__0_n_3;
  wire o_out1__59_carry__0_n_7;
  wire [2:0]o_out1__59_carry__1_0;
  wire [2:0]o_out1__59_carry__1_1;
  wire [7:0]o_out1__59_carry__1_2;
  wire o_out1__59_carry__1_n_3;
  wire o_out1__59_carry__1_n_6;
  wire o_out1__59_carry_n_0;
  wire o_out1__59_carry_n_1;
  wire o_out1__59_carry_n_2;
  wire o_out1__59_carry_n_3;
  wire o_out1__59_carry_n_4;
  wire o_out1__59_carry_n_5;
  wire o_out1__59_carry_n_6;
  wire o_out1__59_carry_n_7;
  wire o_out1__86_carry__0_i_1__0_n_0;
  wire o_out1__86_carry__0_i_2__0_n_0;
  wire [1:0]o_out1__86_carry__0_i_3__0_0;
  wire [1:0]o_out1__86_carry__0_i_3__0_1;
  wire o_out1__86_carry__0_i_3__0_n_0;
  wire [3:0]o_out1__86_carry__0_i_4__0_0;
  wire [3:0]o_out1__86_carry__0_i_4__0_1;
  wire o_out1__86_carry__0_i_4__0_n_0;
  wire o_out1__86_carry__0_i_5__0_n_0;
  wire [3:0]o_out1__86_carry__0_i_6__0_0;
  wire [3:0]o_out1__86_carry__0_i_6__0_1;
  wire o_out1__86_carry__0_i_6__0_n_0;
  wire o_out1__86_carry__0_i_7__0_n_0;
  wire o_out1__86_carry__0_i_8__0_n_0;
  wire o_out1__86_carry__0_n_0;
  wire o_out1__86_carry__0_n_1;
  wire o_out1__86_carry__0_n_2;
  wire o_out1__86_carry__0_n_3;
  wire o_out1__86_carry__0_n_4;
  wire o_out1__86_carry__0_n_5;
  wire o_out1__86_carry__0_n_6;
  wire o_out1__86_carry__0_n_7;
  wire [1:0]o_out1__86_carry__1_0;
  wire [2:0]o_out1__86_carry__1_1;
  wire [0:0]o_out1__86_carry__1_2;
  wire [0:0]o_out1__86_carry__1_3;
  wire [1:0]o_out1__86_carry__1_4;
  wire [2:0]o_out1__86_carry__1_5;
  wire [0:0]o_out1__86_carry__1_6;
  wire [0:0]o_out1__86_carry__1_7;
  wire o_out1__86_carry__1_i_1__0_n_0;
  wire o_out1__86_carry__1_i_2__0_n_0;
  wire [0:0]o_out1__86_carry__1_i_3__0;
  wire [0:0]o_out1__86_carry__1_i_3__0_0;
  wire [2:0]o_out1__86_carry__1_i_5__0;
  wire [1:0]o_out1__86_carry__1_i_5__0_0;
  wire [1:0]o_out1__86_carry__1_i_5__0_1;
  wire o_out1__86_carry__1_n_1;
  wire o_out1__86_carry__1_n_2;
  wire o_out1__86_carry__1_n_3;
  wire o_out1__86_carry__1_n_4;
  wire [2:0]o_out1__86_carry_i_1__0_0;
  wire [3:0]o_out1__86_carry_i_1__0_1;
  wire o_out1__86_carry_i_1__0_n_0;
  wire o_out1__86_carry_i_2__0_n_0;
  wire o_out1__86_carry_i_3__0_n_0;
  wire o_out1__86_carry_i_4__0_n_0;
  wire o_out1__86_carry_i_5__0_n_0;
  wire o_out1__86_carry_i_6__0_n_0;
  wire o_out1__86_carry_i_7__0_n_0;
  wire [3:0]o_out1__86_carry_i_8__0_0;
  wire [3:0]o_out1__86_carry_i_8__0_1;
  wire o_out1__86_carry_i_8__0_n_0;
  wire o_out1__86_carry_n_0;
  wire o_out1__86_carry_n_1;
  wire o_out1__86_carry_n_2;
  wire o_out1__86_carry_n_3;
  wire o_out1__86_carry_n_4;
  wire o_out1__86_carry_n_5;
  wire o_out1__86_carry_n_6;
  wire o_out1__86_carry_n_7;
  wire \o_out[11]_i_2__0_n_0 ;
  wire \o_out[11]_i_3__0_n_0 ;
  wire \o_out[11]_i_4__0_n_0 ;
  wire \o_out[11]_i_5__0_n_0 ;
  wire \o_out[15]_i_3__2_n_0 ;
  wire \o_out[15]_i_3__4_n_0 ;
  wire \o_out[15]_i_4__1_n_0 ;
  wire \o_out[15]_i_4__3_n_0 ;
  wire \o_out[15]_i_5__1_n_0 ;
  wire \o_out[15]_i_5__3_n_0 ;
  wire [2:0]\o_out[3]_i_2__0_0 ;
  wire [3:0]\o_out[3]_i_2__0_1 ;
  wire \o_out[3]_i_2__0_n_0 ;
  wire \o_out[3]_i_3__0_n_0 ;
  wire \o_out[3]_i_4__0_n_0 ;
  wire \o_out[3]_i_5__0_n_0 ;
  wire \o_out[7]_i_2__0_n_0 ;
  wire \o_out[7]_i_3__0_n_0 ;
  wire \o_out[7]_i_4__0_n_0 ;
  wire \o_out[7]_i_5__0_n_0 ;
  wire [0:0]\o_out_reg[11]_0 ;
  wire \o_out_reg[11]_i_1__0_n_1 ;
  wire \o_out_reg[11]_i_1__0_n_2 ;
  wire \o_out_reg[11]_i_1__0_n_3 ;
  wire \o_out_reg[11]_i_1__0_n_4 ;
  wire \o_out_reg[11]_i_1__0_n_5 ;
  wire \o_out_reg[11]_i_1__0_n_6 ;
  wire \o_out_reg[11]_i_1__0_n_7 ;
  wire [0:0]\o_out_reg[15]_0 ;
  wire [3:0]\o_out_reg[15]_1 ;
  wire [3:0]\o_out_reg[15]_2 ;
  wire [2:0]\o_out_reg[15]_3 ;
  wire [2:0]\o_out_reg[15]_4 ;
  wire [0:0]\o_out_reg[15]_5 ;
  wire [0:0]\o_out_reg[15]_6 ;
  wire [2:0]\o_out_reg[15]_7 ;
  wire [0:0]\o_out_reg[15]_8 ;
  wire [5:0]\o_out_reg[15]_9 ;
  wire \o_out_reg[15]_i_1__1_n_1 ;
  wire \o_out_reg[15]_i_1__1_n_2 ;
  wire \o_out_reg[15]_i_1__1_n_3 ;
  wire \o_out_reg[15]_i_1__3_n_1 ;
  wire \o_out_reg[15]_i_1__3_n_2 ;
  wire \o_out_reg[15]_i_1__3_n_3 ;
  wire [2:0]\o_out_reg[3]_0 ;
  wire [3:0]\o_out_reg[3]_1 ;
  wire \o_out_reg[3]_i_1__0_n_0 ;
  wire \o_out_reg[3]_i_1__0_n_1 ;
  wire \o_out_reg[3]_i_1__0_n_2 ;
  wire \o_out_reg[3]_i_1__0_n_3 ;
  wire \o_out_reg[3]_i_1__0_n_4 ;
  wire \o_out_reg[3]_i_1__0_n_5 ;
  wire \o_out_reg[3]_i_1__0_n_6 ;
  wire \o_out_reg[3]_i_1__0_n_7 ;
  wire \o_out_reg[7]_i_1__0_n_0 ;
  wire \o_out_reg[7]_i_1__0_n_1 ;
  wire \o_out_reg[7]_i_1__0_n_2 ;
  wire \o_out_reg[7]_i_1__0_n_3 ;
  wire \o_out_reg[7]_i_1__0_n_4 ;
  wire \o_out_reg[7]_i_1__0_n_5 ;
  wire \o_out_reg[7]_i_1__0_n_6 ;
  wire \o_out_reg[7]_i_1__0_n_7 ;
  wire [3:0]\o_x_reg[1]_0 ;
  wire [3:0]\o_x_reg[1]_1 ;
  wire [1:0]\o_x_reg[1]_2 ;
  wire [2:0]\o_x_reg[3]_0 ;
  wire [3:0]\o_x_reg[5]_0 ;
  wire \o_x_reg_n_0_[0] ;
  wire \o_x_reg_n_0_[1] ;
  wire \o_x_reg_n_0_[2] ;
  wire \o_x_reg_n_0_[3] ;
  wire \o_x_reg_n_0_[4] ;
  wire \o_x_reg_n_0_[5] ;
  wire \o_x_reg_n_0_[6] ;
  wire \o_x_reg_n_0_[7] ;
  wire [0:0]\o_y_reg[0]_0 ;
  wire [0:0]\o_y_reg[1]_0 ;
  wire [3:0]\o_y_reg[1]_1 ;
  wire [1:0]\o_y_reg[1]_2 ;
  wire [3:0]\o_y_reg[2]_0 ;
  wire [1:0]\o_y_reg[2]_1 ;
  wire [1:0]\o_y_reg[3]_0 ;
  wire [3:0]\o_y_reg[4]_0 ;
  wire [1:0]\o_y_reg[4]_1 ;
  wire [3:0]\o_y_reg[5]_0 ;
  wire [1:0]\o_y_reg[5]_1 ;
  wire [0:0]\o_y_reg[6]_0 ;
  wire [7:0]\o_y_reg[7]_0 ;
  wire [0:0]\o_y_reg[7]_1 ;
  wire [3:0]\o_y_reg[7]_2 ;
  wire [0:0]\o_y_reg[7]_3 ;
  wire [1:0]\o_y_reg[7]_4 ;
  wire [7:0]\o_y_reg[7]_5 ;
  wire p_0_in;
  wire [3:1]NLW_o_out1__0_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_o_out1__0_carry__1_O_UNCONNECTED;
  wire [3:1]NLW_o_out1__30_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_o_out1__30_carry__1_O_UNCONNECTED;
  wire [3:1]NLW_o_out1__59_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_o_out1__59_carry__1_O_UNCONNECTED;
  wire [3:3]NLW_o_out1__86_carry__1_CO_UNCONNECTED;
  wire [3:3]\NLW_o_out_reg[15]_i_1__1_CO_UNCONNECTED ;
  wire [3:3]\NLW_o_out_reg[15]_i_1__3_CO_UNCONNECTED ;

  CARRY4 o_out1__0_carry
       (.CI(1'b0),
        .CO({o_out1__0_carry_n_0,o_out1__0_carry_n_1,o_out1__0_carry_n_2,o_out1__0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({\o_out_reg[3]_0 ,1'b0}),
        .O({o_out1__0_carry_n_4,o_out1__0_carry_n_5,o_out1__0_carry_n_6,o_out1__0_carry_n_7}),
        .S(\o_out_reg[3]_1 ));
  CARRY4 o_out1__0_carry__0
       (.CI(o_out1__0_carry_n_0),
        .CO({o_out1__0_carry__0_n_0,o_out1__0_carry__0_n_1,o_out1__0_carry__0_n_2,o_out1__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(o_out1__86_carry_i_8__0_0),
        .O({o_out1__0_carry__0_n_4,o_out1__0_carry__0_n_5,o_out1__0_carry__0_n_6,o_out1__0_carry__0_n_7}),
        .S(o_out1__86_carry_i_8__0_1));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__0_carry__0_i_10__1
       (.I0(Q[0]),
        .I1(\o_x_reg_n_0_[6] ),
        .O(o_out1__0_carry__0_i_10__1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__0_carry__0_i_10__3
       (.I0(\o_y_reg[7]_0 [0]),
        .I1(o_out1__59_carry__1_2[6]),
        .O(o_out1__0_carry__0_i_10__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__0_carry__0_i_11__1
       (.I0(Q[0]),
        .I1(\o_x_reg_n_0_[5] ),
        .O(o_out1__0_carry__0_i_11__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__0_carry__0_i_11__3
       (.I0(\o_y_reg[7]_0 [0]),
        .I1(o_out1__59_carry__1_2[5]),
        .O(o_out1__0_carry__0_i_11__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__0_carry__0_i_12__1
       (.I0(Q[0]),
        .I1(\o_x_reg_n_0_[4] ),
        .O(o_out1__0_carry__0_i_12__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__0_carry__0_i_12__3
       (.I0(\o_y_reg[7]_0 [0]),
        .I1(o_out1__59_carry__1_2[4]),
        .O(o_out1__0_carry__0_i_12__3_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    o_out1__0_carry__0_i_1__1
       (.I0(Q[2]),
        .I1(\o_x_reg_n_0_[4] ),
        .I2(Q[1]),
        .I3(\o_x_reg_n_0_[5] ),
        .I4(Q[0]),
        .I5(\o_x_reg_n_0_[6] ),
        .O(DI[3]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    o_out1__0_carry__0_i_1__3
       (.I0(\o_y_reg[7]_0 [2]),
        .I1(o_out1__59_carry__1_2[4]),
        .I2(\o_y_reg[7]_0 [1]),
        .I3(o_out1__59_carry__1_2[5]),
        .I4(\o_y_reg[7]_0 [0]),
        .I5(o_out1__59_carry__1_2[6]),
        .O(\o_y_reg[2]_0 [3]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    o_out1__0_carry__0_i_2__1
       (.I0(Q[2]),
        .I1(\o_x_reg_n_0_[3] ),
        .I2(Q[1]),
        .I3(\o_x_reg_n_0_[4] ),
        .I4(Q[0]),
        .I5(\o_x_reg_n_0_[5] ),
        .O(DI[2]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    o_out1__0_carry__0_i_2__3
       (.I0(\o_y_reg[7]_0 [2]),
        .I1(o_out1__59_carry__1_2[3]),
        .I2(\o_y_reg[7]_0 [1]),
        .I3(o_out1__59_carry__1_2[4]),
        .I4(\o_y_reg[7]_0 [0]),
        .I5(o_out1__59_carry__1_2[5]),
        .O(\o_y_reg[2]_0 [2]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    o_out1__0_carry__0_i_3__1
       (.I0(Q[2]),
        .I1(\o_x_reg_n_0_[2] ),
        .I2(Q[1]),
        .I3(\o_x_reg_n_0_[3] ),
        .I4(Q[0]),
        .I5(\o_x_reg_n_0_[4] ),
        .O(DI[1]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    o_out1__0_carry__0_i_3__3
       (.I0(\o_y_reg[7]_0 [2]),
        .I1(o_out1__59_carry__1_2[2]),
        .I2(\o_y_reg[7]_0 [1]),
        .I3(o_out1__59_carry__1_2[3]),
        .I4(\o_y_reg[7]_0 [0]),
        .I5(o_out1__59_carry__1_2[4]),
        .O(\o_y_reg[2]_0 [1]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    o_out1__0_carry__0_i_4__1
       (.I0(Q[2]),
        .I1(\o_x_reg_n_0_[1] ),
        .I2(Q[1]),
        .I3(\o_x_reg_n_0_[2] ),
        .I4(Q[0]),
        .I5(\o_x_reg_n_0_[3] ),
        .O(DI[0]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    o_out1__0_carry__0_i_4__3
       (.I0(\o_y_reg[7]_0 [2]),
        .I1(o_out1__59_carry__1_2[1]),
        .I2(\o_y_reg[7]_0 [1]),
        .I3(o_out1__59_carry__1_2[2]),
        .I4(\o_y_reg[7]_0 [0]),
        .I5(o_out1__59_carry__1_2[3]),
        .O(\o_y_reg[2]_0 [0]));
  LUT6 #(
    .INIT(64'h9666699969996999)) 
    o_out1__0_carry__0_i_5__1
       (.I0(DI[3]),
        .I1(o_out1__0_carry__0_i_9__1_n_0),
        .I2(Q[1]),
        .I3(\o_x_reg_n_0_[6] ),
        .I4(Q[0]),
        .I5(\o_x_reg_n_0_[7] ),
        .O(\b13_buffer2_reg[1] [3]));
  LUT6 #(
    .INIT(64'h9666699969996999)) 
    o_out1__0_carry__0_i_5__3
       (.I0(\o_y_reg[2]_0 [3]),
        .I1(o_out1__0_carry__0_0),
        .I2(\o_y_reg[7]_0 [1]),
        .I3(o_out1__59_carry__1_2[6]),
        .I4(\o_y_reg[7]_0 [0]),
        .I5(o_out1__59_carry__1_2[7]),
        .O(\o_y_reg[1]_1 [3]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    o_out1__0_carry__0_i_6__1
       (.I0(DI[2]),
        .I1(\o_x_reg_n_0_[5] ),
        .I2(Q[1]),
        .I3(\o_x_reg_n_0_[4] ),
        .I4(Q[2]),
        .I5(o_out1__0_carry__0_i_10__1_n_0),
        .O(\b13_buffer2_reg[1] [2]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    o_out1__0_carry__0_i_6__3
       (.I0(\o_y_reg[2]_0 [2]),
        .I1(o_out1__59_carry__1_2[5]),
        .I2(\o_y_reg[7]_0 [1]),
        .I3(o_out1__59_carry__1_2[4]),
        .I4(\o_y_reg[7]_0 [2]),
        .I5(o_out1__0_carry__0_i_10__3_n_0),
        .O(\o_y_reg[1]_1 [2]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    o_out1__0_carry__0_i_7__1
       (.I0(DI[1]),
        .I1(\o_x_reg_n_0_[4] ),
        .I2(Q[1]),
        .I3(\o_x_reg_n_0_[3] ),
        .I4(Q[2]),
        .I5(o_out1__0_carry__0_i_11__1_n_0),
        .O(\b13_buffer2_reg[1] [1]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    o_out1__0_carry__0_i_7__3
       (.I0(\o_y_reg[2]_0 [1]),
        .I1(o_out1__59_carry__1_2[4]),
        .I2(\o_y_reg[7]_0 [1]),
        .I3(o_out1__59_carry__1_2[3]),
        .I4(\o_y_reg[7]_0 [2]),
        .I5(o_out1__0_carry__0_i_11__3_n_0),
        .O(\o_y_reg[1]_1 [1]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    o_out1__0_carry__0_i_8__1
       (.I0(DI[0]),
        .I1(\o_x_reg_n_0_[3] ),
        .I2(Q[1]),
        .I3(\o_x_reg_n_0_[2] ),
        .I4(Q[2]),
        .I5(o_out1__0_carry__0_i_12__1_n_0),
        .O(\b13_buffer2_reg[1] [0]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    o_out1__0_carry__0_i_8__3
       (.I0(\o_y_reg[2]_0 [0]),
        .I1(o_out1__59_carry__1_2[3]),
        .I2(\o_y_reg[7]_0 [1]),
        .I3(o_out1__59_carry__1_2[2]),
        .I4(\o_y_reg[7]_0 [2]),
        .I5(o_out1__0_carry__0_i_12__3_n_0),
        .O(\o_y_reg[1]_1 [0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__0_carry__0_i_9__1
       (.I0(\o_x_reg_n_0_[5] ),
        .I1(Q[2]),
        .O(o_out1__0_carry__0_i_9__1_n_0));
  CARRY4 o_out1__0_carry__1
       (.CI(o_out1__0_carry__0_n_0),
        .CO({NLW_o_out1__0_carry__1_CO_UNCONNECTED[3],o_out1__0_carry__1_n_1,NLW_o_out1__0_carry__1_CO_UNCONNECTED[1],o_out1__0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,o_out1__86_carry__0_i_3__0_0}),
        .O({NLW_o_out1__0_carry__1_O_UNCONNECTED[3:2],o_out1__0_carry__1_n_6,o_out1__0_carry__1_n_7}),
        .S({1'b0,1'b1,o_out1__86_carry__0_i_3__0_1}));
  LUT4 #(
    .INIT(16'h0888)) 
    o_out1__0_carry__1_i_1__1
       (.I0(Q[2]),
        .I1(\o_x_reg_n_0_[6] ),
        .I2(Q[1]),
        .I3(\o_x_reg_n_0_[7] ),
        .O(\b13_buffer2_reg[2] [1]));
  LUT4 #(
    .INIT(16'h0888)) 
    o_out1__0_carry__1_i_1__3
       (.I0(\o_y_reg[7]_0 [2]),
        .I1(o_out1__59_carry__1_2[6]),
        .I2(\o_y_reg[7]_0 [1]),
        .I3(o_out1__59_carry__1_2[7]),
        .O(\o_y_reg[2]_1 [1]));
  LUT6 #(
    .INIT(64'h8000F888F888F888)) 
    o_out1__0_carry__1_i_2__1
       (.I0(Q[2]),
        .I1(\o_x_reg_n_0_[5] ),
        .I2(Q[1]),
        .I3(\o_x_reg_n_0_[6] ),
        .I4(Q[0]),
        .I5(\o_x_reg_n_0_[7] ),
        .O(\b13_buffer2_reg[2] [0]));
  LUT6 #(
    .INIT(64'h8000F888F888F888)) 
    o_out1__0_carry__1_i_2__3
       (.I0(\o_y_reg[7]_0 [2]),
        .I1(o_out1__59_carry__1_2[5]),
        .I2(\o_y_reg[7]_0 [1]),
        .I3(o_out1__59_carry__1_2[6]),
        .I4(\o_y_reg[7]_0 [0]),
        .I5(o_out1__59_carry__1_2[7]),
        .O(\o_y_reg[2]_1 [0]));
  LUT4 #(
    .INIT(16'h4F3F)) 
    o_out1__0_carry__1_i_3__1
       (.I0(Q[1]),
        .I1(\o_x_reg_n_0_[6] ),
        .I2(Q[2]),
        .I3(\o_x_reg_n_0_[7] ),
        .O(\b13_buffer2_reg[1]_0 [1]));
  LUT4 #(
    .INIT(16'h4F3F)) 
    o_out1__0_carry__1_i_3__3
       (.I0(\o_y_reg[7]_0 [1]),
        .I1(o_out1__59_carry__1_2[6]),
        .I2(\o_y_reg[7]_0 [2]),
        .I3(o_out1__59_carry__1_2[7]),
        .O(\o_y_reg[1]_2 [1]));
  LUT6 #(
    .INIT(64'h25404FBFF03FCF3F)) 
    o_out1__0_carry__1_i_4__1
       (.I0(Q[0]),
        .I1(\o_x_reg_n_0_[5] ),
        .I2(Q[2]),
        .I3(\o_x_reg_n_0_[6] ),
        .I4(Q[1]),
        .I5(\o_x_reg_n_0_[7] ),
        .O(\b13_buffer2_reg[1]_0 [0]));
  LUT6 #(
    .INIT(64'h25404FBFF03FCF3F)) 
    o_out1__0_carry__1_i_4__3
       (.I0(\o_y_reg[7]_0 [0]),
        .I1(o_out1__59_carry__1_2[5]),
        .I2(\o_y_reg[7]_0 [2]),
        .I3(o_out1__59_carry__1_2[6]),
        .I4(\o_y_reg[7]_0 [1]),
        .I5(o_out1__59_carry__1_2[7]),
        .O(\o_y_reg[1]_2 [0]));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    o_out1__0_carry_i_1__1
       (.I0(\o_x_reg_n_0_[3] ),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(\o_x_reg_n_0_[1] ),
        .I4(Q[1]),
        .I5(\o_x_reg_n_0_[2] ),
        .O(\o_x_reg[3]_0 [2]));
  LUT4 #(
    .INIT(16'h7888)) 
    o_out1__0_carry_i_2__1
       (.I0(Q[1]),
        .I1(\o_x_reg_n_0_[1] ),
        .I2(Q[2]),
        .I3(\o_x_reg_n_0_[0] ),
        .O(\o_x_reg[3]_0 [1]));
  LUT4 #(
    .INIT(16'h7888)) 
    o_out1__0_carry_i_2__3
       (.I0(\o_y_reg[7]_0 [1]),
        .I1(o_out1__59_carry__1_2[1]),
        .I2(\o_y_reg[7]_0 [2]),
        .I3(o_out1__59_carry__1_2[0]),
        .O(\o_y_reg[1]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__0_carry_i_3__1
       (.I0(\o_x_reg_n_0_[0] ),
        .I1(Q[1]),
        .O(\o_x_reg[3]_0 [0]));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    o_out1__0_carry_i_4__1
       (.I0(\o_x_reg[3]_0 [2]),
        .I1(\o_x_reg_n_0_[1] ),
        .I2(Q[2]),
        .I3(\o_x_reg_n_0_[0] ),
        .I4(Q[1]),
        .O(\o_x_reg[1]_0 [3]));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    o_out1__0_carry_i_5__1
       (.I0(\o_x_reg_n_0_[0] ),
        .I1(Q[2]),
        .I2(\o_x_reg_n_0_[1] ),
        .I3(Q[1]),
        .I4(\o_x_reg_n_0_[2] ),
        .I5(Q[0]),
        .O(\o_x_reg[1]_0 [2]));
  LUT4 #(
    .INIT(16'h7888)) 
    o_out1__0_carry_i_6__1
       (.I0(\o_x_reg_n_0_[1] ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\o_x_reg_n_0_[0] ),
        .O(\o_x_reg[1]_0 [1]));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__0_carry_i_7__1
       (.I0(Q[0]),
        .I1(\o_x_reg_n_0_[0] ),
        .O(\o_x_reg[1]_0 [0]));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__0_carry_i_7__3
       (.I0(\o_y_reg[7]_0 [0]),
        .I1(o_out1__59_carry__1_2[0]),
        .O(\o_y_reg[0]_0 ));
  CARRY4 o_out1__30_carry
       (.CI(1'b0),
        .CO({o_out1__30_carry_n_0,o_out1__30_carry_n_1,o_out1__30_carry_n_2,o_out1__30_carry_n_3}),
        .CYINIT(1'b0),
        .DI({\o_out[3]_i_2__0_0 ,1'b0}),
        .O({o_out1__30_carry_n_4,o_out1__30_carry_n_5,o_out1__30_carry_n_6,o_out1__30_carry_n_7}),
        .S(\o_out[3]_i_2__0_1 ));
  CARRY4 o_out1__30_carry__0
       (.CI(o_out1__30_carry_n_0),
        .CO({o_out1__30_carry__0_n_0,o_out1__30_carry__0_n_1,o_out1__30_carry__0_n_2,o_out1__30_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(o_out1__86_carry__0_i_4__0_0),
        .O({o_out1__30_carry__0_n_4,o_out1__30_carry__0_n_5,o_out1__30_carry__0_n_6,o_out1__30_carry__0_n_7}),
        .S(o_out1__86_carry__0_i_4__0_1));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__30_carry__0_i_10__1
       (.I0(\o_x_reg_n_0_[6] ),
        .I1(Q[3]),
        .O(o_out1__30_carry__0_i_10__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__30_carry__0_i_11__1
       (.I0(\o_x_reg_n_0_[5] ),
        .I1(Q[3]),
        .O(o_out1__30_carry__0_i_11__1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__30_carry__0_i_12__1
       (.I0(\o_x_reg_n_0_[4] ),
        .I1(Q[3]),
        .O(o_out1__30_carry__0_i_12__1_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    o_out1__30_carry__0_i_1__1
       (.I0(Q[5]),
        .I1(\o_x_reg_n_0_[4] ),
        .I2(Q[4]),
        .I3(\o_x_reg_n_0_[5] ),
        .I4(\o_x_reg_n_0_[6] ),
        .I5(Q[3]),
        .O(\b13_buffer2_reg[5] [3]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    o_out1__30_carry__0_i_1__3
       (.I0(\o_y_reg[7]_0 [5]),
        .I1(o_out1__59_carry__1_2[4]),
        .I2(\o_y_reg[7]_0 [4]),
        .I3(o_out1__59_carry__1_2[5]),
        .I4(o_out1__59_carry__1_2[6]),
        .I5(\o_y_reg[7]_0 [3]),
        .O(\o_y_reg[5]_0 [3]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    o_out1__30_carry__0_i_2__1
       (.I0(Q[5]),
        .I1(\o_x_reg_n_0_[3] ),
        .I2(Q[4]),
        .I3(\o_x_reg_n_0_[4] ),
        .I4(\o_x_reg_n_0_[5] ),
        .I5(Q[3]),
        .O(\b13_buffer2_reg[5] [2]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    o_out1__30_carry__0_i_2__3
       (.I0(\o_y_reg[7]_0 [5]),
        .I1(o_out1__59_carry__1_2[3]),
        .I2(\o_y_reg[7]_0 [4]),
        .I3(o_out1__59_carry__1_2[4]),
        .I4(o_out1__59_carry__1_2[5]),
        .I5(\o_y_reg[7]_0 [3]),
        .O(\o_y_reg[5]_0 [2]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    o_out1__30_carry__0_i_3__1
       (.I0(Q[5]),
        .I1(\o_x_reg_n_0_[2] ),
        .I2(Q[4]),
        .I3(\o_x_reg_n_0_[3] ),
        .I4(\o_x_reg_n_0_[4] ),
        .I5(Q[3]),
        .O(\b13_buffer2_reg[5] [1]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    o_out1__30_carry__0_i_3__3
       (.I0(\o_y_reg[7]_0 [5]),
        .I1(o_out1__59_carry__1_2[2]),
        .I2(\o_y_reg[7]_0 [4]),
        .I3(o_out1__59_carry__1_2[3]),
        .I4(o_out1__59_carry__1_2[4]),
        .I5(\o_y_reg[7]_0 [3]),
        .O(\o_y_reg[5]_0 [1]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    o_out1__30_carry__0_i_4__1
       (.I0(Q[5]),
        .I1(\o_x_reg_n_0_[1] ),
        .I2(Q[4]),
        .I3(\o_x_reg_n_0_[2] ),
        .I4(\o_x_reg_n_0_[3] ),
        .I5(Q[3]),
        .O(\b13_buffer2_reg[5] [0]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    o_out1__30_carry__0_i_4__3
       (.I0(\o_y_reg[7]_0 [5]),
        .I1(o_out1__59_carry__1_2[1]),
        .I2(\o_y_reg[7]_0 [4]),
        .I3(o_out1__59_carry__1_2[2]),
        .I4(o_out1__59_carry__1_2[3]),
        .I5(\o_y_reg[7]_0 [3]),
        .O(\o_y_reg[5]_0 [0]));
  LUT6 #(
    .INIT(64'h9666699969996999)) 
    o_out1__30_carry__0_i_5__1
       (.I0(\b13_buffer2_reg[5] [3]),
        .I1(o_out1__30_carry__0_i_9__1_n_0),
        .I2(Q[4]),
        .I3(\o_x_reg_n_0_[6] ),
        .I4(\o_x_reg_n_0_[7] ),
        .I5(Q[3]),
        .O(\b13_buffer2_reg[4] [3]));
  LUT6 #(
    .INIT(64'h9666699969996999)) 
    o_out1__30_carry__0_i_5__3
       (.I0(\o_y_reg[5]_0 [3]),
        .I1(o_out1__30_carry__0_3),
        .I2(\o_y_reg[7]_0 [4]),
        .I3(o_out1__59_carry__1_2[6]),
        .I4(o_out1__59_carry__1_2[7]),
        .I5(\o_y_reg[7]_0 [3]),
        .O(\o_y_reg[4]_0 [3]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    o_out1__30_carry__0_i_6__1
       (.I0(\b13_buffer2_reg[5] [2]),
        .I1(\o_x_reg_n_0_[5] ),
        .I2(Q[4]),
        .I3(\o_x_reg_n_0_[4] ),
        .I4(Q[5]),
        .I5(o_out1__30_carry__0_i_10__1_n_0),
        .O(\b13_buffer2_reg[4] [2]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    o_out1__30_carry__0_i_6__3
       (.I0(\o_y_reg[5]_0 [2]),
        .I1(o_out1__59_carry__1_2[5]),
        .I2(\o_y_reg[7]_0 [4]),
        .I3(o_out1__59_carry__1_2[4]),
        .I4(\o_y_reg[7]_0 [5]),
        .I5(o_out1__30_carry__0_2),
        .O(\o_y_reg[4]_0 [2]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    o_out1__30_carry__0_i_7__1
       (.I0(\b13_buffer2_reg[5] [1]),
        .I1(\o_x_reg_n_0_[4] ),
        .I2(Q[4]),
        .I3(\o_x_reg_n_0_[3] ),
        .I4(Q[5]),
        .I5(o_out1__30_carry__0_i_11__1_n_0),
        .O(\b13_buffer2_reg[4] [1]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    o_out1__30_carry__0_i_7__3
       (.I0(\o_y_reg[5]_0 [1]),
        .I1(o_out1__59_carry__1_2[4]),
        .I2(\o_y_reg[7]_0 [4]),
        .I3(o_out1__59_carry__1_2[3]),
        .I4(\o_y_reg[7]_0 [5]),
        .I5(o_out1__30_carry__0_1),
        .O(\o_y_reg[4]_0 [1]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    o_out1__30_carry__0_i_8__1
       (.I0(\b13_buffer2_reg[5] [0]),
        .I1(\o_x_reg_n_0_[3] ),
        .I2(Q[4]),
        .I3(\o_x_reg_n_0_[2] ),
        .I4(Q[5]),
        .I5(o_out1__30_carry__0_i_12__1_n_0),
        .O(\b13_buffer2_reg[4] [0]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    o_out1__30_carry__0_i_8__3
       (.I0(\o_y_reg[5]_0 [0]),
        .I1(o_out1__59_carry__1_2[3]),
        .I2(\o_y_reg[7]_0 [4]),
        .I3(o_out1__59_carry__1_2[2]),
        .I4(\o_y_reg[7]_0 [5]),
        .I5(o_out1__30_carry__0_0),
        .O(\o_y_reg[4]_0 [0]));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__30_carry__0_i_9__1
       (.I0(\o_x_reg_n_0_[5] ),
        .I1(Q[5]),
        .O(o_out1__30_carry__0_i_9__1_n_0));
  CARRY4 o_out1__30_carry__1
       (.CI(o_out1__30_carry__0_n_0),
        .CO({NLW_o_out1__30_carry__1_CO_UNCONNECTED[3],\b12_buffer_reg[5] ,NLW_o_out1__30_carry__1_CO_UNCONNECTED[1],o_out1__30_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,o_out1__86_carry__1_i_5__0_0}),
        .O({NLW_o_out1__30_carry__1_O_UNCONNECTED[3:2],\b12_buffer_reg[5]_0 }),
        .S({1'b0,1'b1,o_out1__86_carry__1_i_5__0_1}));
  LUT4 #(
    .INIT(16'h0888)) 
    o_out1__30_carry__1_i_1__1
       (.I0(Q[5]),
        .I1(\o_x_reg_n_0_[6] ),
        .I2(Q[4]),
        .I3(\o_x_reg_n_0_[7] ),
        .O(\b13_buffer2_reg[5]_0 [1]));
  LUT4 #(
    .INIT(16'h0888)) 
    o_out1__30_carry__1_i_1__3
       (.I0(\o_y_reg[7]_0 [5]),
        .I1(o_out1__59_carry__1_2[6]),
        .I2(\o_y_reg[7]_0 [4]),
        .I3(o_out1__59_carry__1_2[7]),
        .O(\o_y_reg[5]_1 [1]));
  LUT6 #(
    .INIT(64'h8000F888F888F888)) 
    o_out1__30_carry__1_i_2__1
       (.I0(Q[5]),
        .I1(\o_x_reg_n_0_[5] ),
        .I2(Q[4]),
        .I3(\o_x_reg_n_0_[6] ),
        .I4(\o_x_reg_n_0_[7] ),
        .I5(Q[3]),
        .O(\b13_buffer2_reg[5]_0 [0]));
  LUT6 #(
    .INIT(64'h8000F888F888F888)) 
    o_out1__30_carry__1_i_2__3
       (.I0(\o_y_reg[7]_0 [5]),
        .I1(o_out1__59_carry__1_2[5]),
        .I2(\o_y_reg[7]_0 [4]),
        .I3(o_out1__59_carry__1_2[6]),
        .I4(o_out1__59_carry__1_2[7]),
        .I5(\o_y_reg[7]_0 [3]),
        .O(\o_y_reg[5]_1 [0]));
  LUT4 #(
    .INIT(16'h4F3F)) 
    o_out1__30_carry__1_i_3__1
       (.I0(Q[4]),
        .I1(\o_x_reg_n_0_[6] ),
        .I2(Q[5]),
        .I3(\o_x_reg_n_0_[7] ),
        .O(\b13_buffer2_reg[4]_0 [1]));
  LUT4 #(
    .INIT(16'h4F3F)) 
    o_out1__30_carry__1_i_3__3
       (.I0(\o_y_reg[7]_0 [4]),
        .I1(o_out1__59_carry__1_2[6]),
        .I2(\o_y_reg[7]_0 [5]),
        .I3(o_out1__59_carry__1_2[7]),
        .O(\o_y_reg[4]_1 [1]));
  LUT6 #(
    .INIT(64'h25404FBFF03FCF3F)) 
    o_out1__30_carry__1_i_4__1
       (.I0(Q[3]),
        .I1(\o_x_reg_n_0_[5] ),
        .I2(Q[5]),
        .I3(\o_x_reg_n_0_[6] ),
        .I4(Q[4]),
        .I5(\o_x_reg_n_0_[7] ),
        .O(\b13_buffer2_reg[4]_0 [0]));
  LUT6 #(
    .INIT(64'h25404FBFF03FCF3F)) 
    o_out1__30_carry__1_i_4__3
       (.I0(\o_y_reg[7]_0 [3]),
        .I1(o_out1__59_carry__1_2[5]),
        .I2(\o_y_reg[7]_0 [5]),
        .I3(o_out1__59_carry__1_2[6]),
        .I4(\o_y_reg[7]_0 [4]),
        .I5(o_out1__59_carry__1_2[7]),
        .O(\o_y_reg[4]_1 [0]));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    o_out1__30_carry_i_1__1
       (.I0(Q[3]),
        .I1(\o_x_reg_n_0_[3] ),
        .I2(Q[5]),
        .I3(\o_x_reg_n_0_[1] ),
        .I4(Q[4]),
        .I5(\o_x_reg_n_0_[2] ),
        .O(\b13_buffer2_reg[3] [2]));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    o_out1__30_carry_i_1__3
       (.I0(\o_y_reg[7]_0 [3]),
        .I1(o_out1__59_carry__1_2[3]),
        .I2(\o_y_reg[7]_0 [5]),
        .I3(o_out1__59_carry__1_2[1]),
        .I4(\o_y_reg[7]_0 [4]),
        .I5(o_out1__59_carry__1_2[2]),
        .O(\o_y_reg[3]_0 [1]));
  LUT4 #(
    .INIT(16'h7888)) 
    o_out1__30_carry_i_2__1
       (.I0(Q[4]),
        .I1(\o_x_reg_n_0_[1] ),
        .I2(Q[5]),
        .I3(\o_x_reg_n_0_[0] ),
        .O(\b13_buffer2_reg[3] [1]));
  LUT4 #(
    .INIT(16'h7888)) 
    o_out1__30_carry_i_2__3
       (.I0(\o_y_reg[7]_0 [4]),
        .I1(o_out1__59_carry__1_2[1]),
        .I2(\o_y_reg[7]_0 [5]),
        .I3(o_out1__59_carry__1_2[0]),
        .O(\o_y_reg[3]_0 [0]));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__30_carry_i_3__1
       (.I0(\o_x_reg_n_0_[0] ),
        .I1(Q[4]),
        .O(\b13_buffer2_reg[3] [0]));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    o_out1__30_carry_i_4__1
       (.I0(\b13_buffer2_reg[3] [2]),
        .I1(\o_x_reg_n_0_[1] ),
        .I2(Q[5]),
        .I3(\o_x_reg_n_0_[0] ),
        .I4(Q[4]),
        .O(\o_x_reg[1]_1 [3]));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    o_out1__30_carry_i_4__3
       (.I0(\o_y_reg[3]_0 [1]),
        .I1(o_out1__59_carry__1_2[1]),
        .I2(\o_y_reg[7]_0 [5]),
        .I3(o_out1__59_carry__1_2[0]),
        .I4(\o_y_reg[7]_0 [4]),
        .O(\o_x_reg[1]_2 [1]));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    o_out1__30_carry_i_5__1
       (.I0(\o_x_reg_n_0_[0] ),
        .I1(Q[5]),
        .I2(\o_x_reg_n_0_[1] ),
        .I3(Q[4]),
        .I4(Q[3]),
        .I5(\o_x_reg_n_0_[2] ),
        .O(\o_x_reg[1]_1 [2]));
  LUT4 #(
    .INIT(16'h7888)) 
    o_out1__30_carry_i_6__1
       (.I0(Q[3]),
        .I1(\o_x_reg_n_0_[1] ),
        .I2(Q[4]),
        .I3(\o_x_reg_n_0_[0] ),
        .O(\o_x_reg[1]_1 [1]));
  LUT4 #(
    .INIT(16'h7888)) 
    o_out1__30_carry_i_6__3
       (.I0(\o_y_reg[7]_0 [3]),
        .I1(o_out1__59_carry__1_2[1]),
        .I2(\o_y_reg[7]_0 [4]),
        .I3(o_out1__59_carry__1_2[0]),
        .O(\o_x_reg[1]_2 [0]));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__30_carry_i_7__1
       (.I0(\o_x_reg_n_0_[0] ),
        .I1(Q[3]),
        .O(\o_x_reg[1]_1 [0]));
  CARRY4 o_out1__59_carry
       (.CI(1'b0),
        .CO({o_out1__59_carry_n_0,o_out1__59_carry_n_1,o_out1__59_carry_n_2,o_out1__59_carry_n_3}),
        .CYINIT(1'b0),
        .DI({o_out1__86_carry_i_1__0_0,1'b0}),
        .O({o_out1__59_carry_n_4,o_out1__59_carry_n_5,o_out1__59_carry_n_6,o_out1__59_carry_n_7}),
        .S(o_out1__86_carry_i_1__0_1));
  CARRY4 o_out1__59_carry__0
       (.CI(o_out1__59_carry_n_0),
        .CO({o_out1__59_carry__0_n_0,o_out1__59_carry__0_n_1,o_out1__59_carry__0_n_2,o_out1__59_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(o_out1__86_carry__0_i_6__0_0),
        .O({\b12_buffer_reg[7] ,o_out1__59_carry__0_n_7}),
        .S(o_out1__86_carry__0_i_6__0_1));
  LUT4 #(
    .INIT(16'h7000)) 
    o_out1__59_carry__0_i_1__1
       (.I0(Q[7]),
        .I1(\o_x_reg_n_0_[5] ),
        .I2(Q[6]),
        .I3(\o_x_reg_n_0_[6] ),
        .O(\b13_buffer2_reg[7]_0 [3]));
  LUT4 #(
    .INIT(16'h7000)) 
    o_out1__59_carry__0_i_1__3
       (.I0(\o_y_reg[7]_0 [7]),
        .I1(o_out1__59_carry__1_2[5]),
        .I2(\o_y_reg[7]_0 [6]),
        .I3(o_out1__59_carry__1_2[6]),
        .O(\o_y_reg[7]_2 [3]));
  LUT4 #(
    .INIT(16'h7000)) 
    o_out1__59_carry__0_i_2__1
       (.I0(Q[7]),
        .I1(\o_x_reg_n_0_[4] ),
        .I2(Q[6]),
        .I3(\o_x_reg_n_0_[5] ),
        .O(\b13_buffer2_reg[7]_0 [2]));
  LUT4 #(
    .INIT(16'h7000)) 
    o_out1__59_carry__0_i_2__3
       (.I0(\o_y_reg[7]_0 [7]),
        .I1(o_out1__59_carry__1_2[4]),
        .I2(\o_y_reg[7]_0 [6]),
        .I3(o_out1__59_carry__1_2[5]),
        .O(\o_y_reg[7]_2 [2]));
  LUT4 #(
    .INIT(16'h7000)) 
    o_out1__59_carry__0_i_3__1
       (.I0(Q[7]),
        .I1(\o_x_reg_n_0_[3] ),
        .I2(Q[6]),
        .I3(\o_x_reg_n_0_[4] ),
        .O(\b13_buffer2_reg[7]_0 [1]));
  LUT4 #(
    .INIT(16'h7000)) 
    o_out1__59_carry__0_i_3__3
       (.I0(\o_y_reg[7]_0 [7]),
        .I1(o_out1__59_carry__1_2[3]),
        .I2(\o_y_reg[7]_0 [6]),
        .I3(o_out1__59_carry__1_2[4]),
        .O(\o_y_reg[7]_2 [1]));
  LUT4 #(
    .INIT(16'h7000)) 
    o_out1__59_carry__0_i_4__1
       (.I0(Q[7]),
        .I1(\o_x_reg_n_0_[2] ),
        .I2(Q[6]),
        .I3(\o_x_reg_n_0_[3] ),
        .O(\b13_buffer2_reg[7]_0 [0]));
  LUT4 #(
    .INIT(16'h7000)) 
    o_out1__59_carry__0_i_4__3
       (.I0(\o_y_reg[7]_0 [7]),
        .I1(o_out1__59_carry__1_2[2]),
        .I2(\o_y_reg[7]_0 [6]),
        .I3(o_out1__59_carry__1_2[3]),
        .O(\o_y_reg[7]_2 [0]));
  LUT5 #(
    .INIT(32'h6FC030C0)) 
    o_out1__59_carry__0_i_5__1
       (.I0(\o_x_reg_n_0_[5] ),
        .I1(\o_x_reg_n_0_[7] ),
        .I2(Q[6]),
        .I3(\o_x_reg_n_0_[6] ),
        .I4(Q[7]),
        .O(\o_x_reg[5]_0 [3]));
  LUT5 #(
    .INIT(32'h903FCF3F)) 
    o_out1__59_carry__0_i_6__1
       (.I0(\o_x_reg_n_0_[4] ),
        .I1(\o_x_reg_n_0_[6] ),
        .I2(Q[6]),
        .I3(\o_x_reg_n_0_[5] ),
        .I4(Q[7]),
        .O(\o_x_reg[5]_0 [2]));
  LUT5 #(
    .INIT(32'h903FCF3F)) 
    o_out1__59_carry__0_i_7__1
       (.I0(\o_x_reg_n_0_[3] ),
        .I1(\o_x_reg_n_0_[5] ),
        .I2(Q[6]),
        .I3(\o_x_reg_n_0_[4] ),
        .I4(Q[7]),
        .O(\o_x_reg[5]_0 [1]));
  LUT5 #(
    .INIT(32'h903FCF3F)) 
    o_out1__59_carry__0_i_8__1
       (.I0(\o_x_reg_n_0_[2] ),
        .I1(\o_x_reg_n_0_[4] ),
        .I2(Q[6]),
        .I3(\o_x_reg_n_0_[3] ),
        .I4(Q[7]),
        .O(\o_x_reg[5]_0 [0]));
  CARRY4 o_out1__59_carry__1
       (.CI(o_out1__59_carry__0_n_0),
        .CO({NLW_o_out1__59_carry__1_CO_UNCONNECTED[3:1],o_out1__59_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,o_out1__86_carry__1_i_3__0}),
        .O({NLW_o_out1__59_carry__1_O_UNCONNECTED[3:2],o_out1__59_carry__1_n_6,\b12_buffer_reg[7]_0 }),
        .S({1'b0,1'b0,1'b1,o_out1__86_carry__1_i_3__0_0}));
  LUT4 #(
    .INIT(16'h0777)) 
    o_out1__59_carry__1_i_1__1
       (.I0(Q[7]),
        .I1(\o_x_reg_n_0_[6] ),
        .I2(Q[6]),
        .I3(\o_x_reg_n_0_[7] ),
        .O(\b13_buffer2_reg[7]_1 ));
  LUT4 #(
    .INIT(16'h0777)) 
    o_out1__59_carry__1_i_1__3
       (.I0(\o_y_reg[7]_0 [7]),
        .I1(o_out1__59_carry__1_2[6]),
        .I2(\o_y_reg[7]_0 [6]),
        .I3(o_out1__59_carry__1_2[7]),
        .O(\o_y_reg[7]_3 ));
  LUT4 #(
    .INIT(16'hE53F)) 
    o_out1__59_carry__1_i_2__1
       (.I0(Q[6]),
        .I1(\o_x_reg_n_0_[6] ),
        .I2(Q[7]),
        .I3(\o_x_reg_n_0_[7] ),
        .O(\b13_buffer2_reg[6] ));
  LUT4 #(
    .INIT(16'hE53F)) 
    o_out1__59_carry__1_i_2__3
       (.I0(\o_y_reg[7]_0 [6]),
        .I1(o_out1__59_carry__1_2[6]),
        .I2(\o_y_reg[7]_0 [7]),
        .I3(o_out1__59_carry__1_2[7]),
        .O(\o_y_reg[6]_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    o_out1__59_carry_i_1__1
       (.I0(Q[7]),
        .I1(\o_x_reg_n_0_[1] ),
        .O(\b13_buffer2_reg[7] [2]));
  LUT2 #(
    .INIT(4'h7)) 
    o_out1__59_carry_i_1__3
       (.I0(\o_y_reg[7]_0 [7]),
        .I1(o_out1__59_carry__1_2[1]),
        .O(\o_y_reg[7]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__59_carry_i_2__1
       (.I0(\o_x_reg_n_0_[1] ),
        .I1(Q[7]),
        .O(\b13_buffer2_reg[7] [1]));
  LUT2 #(
    .INIT(4'h7)) 
    o_out1__59_carry_i_3__1
       (.I0(\o_x_reg_n_0_[0] ),
        .I1(Q[7]),
        .O(\b13_buffer2_reg[7] [0]));
  LUT5 #(
    .INIT(32'h956AC0C0)) 
    o_out1__59_carry_i_4__1
       (.I0(\o_x_reg_n_0_[1] ),
        .I1(\o_x_reg_n_0_[3] ),
        .I2(Q[6]),
        .I3(\o_x_reg_n_0_[2] ),
        .I4(Q[7]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'h7888)) 
    o_out1__59_carry_i_5__1
       (.I0(Q[7]),
        .I1(\o_x_reg_n_0_[1] ),
        .I2(Q[6]),
        .I3(\o_x_reg_n_0_[2] ),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h7888)) 
    o_out1__59_carry_i_5__3
       (.I0(\o_y_reg[7]_0 [7]),
        .I1(o_out1__59_carry__1_2[1]),
        .I2(\o_y_reg[7]_0 [6]),
        .I3(o_out1__59_carry__1_2[2]),
        .O(\o_y_reg[7]_4 [1]));
  LUT4 #(
    .INIT(16'h8777)) 
    o_out1__59_carry_i_6__1
       (.I0(Q[7]),
        .I1(\o_x_reg_n_0_[0] ),
        .I2(Q[6]),
        .I3(\o_x_reg_n_0_[1] ),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h8777)) 
    o_out1__59_carry_i_6__3
       (.I0(\o_y_reg[7]_0 [7]),
        .I1(o_out1__59_carry__1_2[0]),
        .I2(\o_y_reg[7]_0 [6]),
        .I3(o_out1__59_carry__1_2[1]),
        .O(\o_y_reg[7]_4 [0]));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__59_carry_i_7__1
       (.I0(\o_x_reg_n_0_[0] ),
        .I1(Q[6]),
        .O(S[0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 o_out1__86_carry
       (.CI(1'b0),
        .CO({o_out1__86_carry_n_0,o_out1__86_carry_n_1,o_out1__86_carry_n_2,o_out1__86_carry_n_3}),
        .CYINIT(1'b0),
        .DI({o_out1__86_carry_i_1__0_n_0,o_out1__86_carry_i_2__0_n_0,o_out1__86_carry_i_3__0_n_0,o_out1__86_carry_i_4__0_n_0}),
        .O({o_out1__86_carry_n_4,o_out1__86_carry_n_5,o_out1__86_carry_n_6,o_out1__86_carry_n_7}),
        .S({o_out1__86_carry_i_5__0_n_0,o_out1__86_carry_i_6__0_n_0,o_out1__86_carry_i_7__0_n_0,o_out1__86_carry_i_8__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 o_out1__86_carry__0
       (.CI(o_out1__86_carry_n_0),
        .CO({o_out1__86_carry__0_n_0,o_out1__86_carry__0_n_1,o_out1__86_carry__0_n_2,o_out1__86_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({o_out1__86_carry__0_i_1__0_n_0,o_out1__86_carry__0_i_2__0_n_0,o_out1__86_carry__0_i_3__0_n_0,o_out1__86_carry__0_i_4__0_n_0}),
        .O({o_out1__86_carry__0_n_4,o_out1__86_carry__0_n_5,o_out1__86_carry__0_n_6,o_out1__86_carry__0_n_7}),
        .S({o_out1__86_carry__0_i_5__0_n_0,o_out1__86_carry__0_i_6__0_n_0,o_out1__86_carry__0_i_7__0_n_0,o_out1__86_carry__0_i_8__0_n_0}));
  LUT3 #(
    .INIT(8'hE8)) 
    o_out1__86_carry__0_i_1__0
       (.I0(o_out1__59_carry__0_n_7),
        .I1(o_out1__0_carry__1_n_1),
        .I2(o_out1__30_carry__0_n_4),
        .O(o_out1__86_carry__0_i_1__0_n_0));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    o_out1__86_carry__0_i_2__0
       (.I0(o_out1__59_carry_n_4),
        .I1(o_out1__0_carry__1_n_6),
        .I2(o_out1__30_carry__0_n_5),
        .O(o_out1__86_carry__0_i_2__0_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    o_out1__86_carry__0_i_3__0
       (.I0(o_out1__59_carry_n_5),
        .I1(o_out1__0_carry__1_n_7),
        .I2(o_out1__30_carry__0_n_6),
        .O(o_out1__86_carry__0_i_3__0_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    o_out1__86_carry__0_i_4__0
       (.I0(o_out1__59_carry_n_6),
        .I1(o_out1__0_carry__0_n_4),
        .I2(o_out1__30_carry__0_n_7),
        .O(o_out1__86_carry__0_i_4__0_n_0));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    o_out1__86_carry__0_i_5__0
       (.I0(o_out1__30_carry__0_n_4),
        .I1(o_out1__0_carry__1_n_1),
        .I2(o_out1__59_carry__0_n_7),
        .I3(\b12_buffer_reg[5]_0 [0]),
        .I4(\b12_buffer_reg[7] [0]),
        .O(o_out1__86_carry__0_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    o_out1__86_carry__0_i_6__0
       (.I0(o_out1__86_carry__0_i_2__0_n_0),
        .I1(o_out1__59_carry__0_n_7),
        .I2(o_out1__0_carry__1_n_1),
        .I3(o_out1__30_carry__0_n_4),
        .O(o_out1__86_carry__0_i_6__0_n_0));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    o_out1__86_carry__0_i_7__0
       (.I0(o_out1__59_carry_n_4),
        .I1(o_out1__0_carry__1_n_6),
        .I2(o_out1__30_carry__0_n_5),
        .I3(o_out1__86_carry__0_i_3__0_n_0),
        .O(o_out1__86_carry__0_i_7__0_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    o_out1__86_carry__0_i_8__0
       (.I0(o_out1__59_carry_n_5),
        .I1(o_out1__0_carry__1_n_7),
        .I2(o_out1__30_carry__0_n_6),
        .I3(o_out1__86_carry__0_i_4__0_n_0),
        .O(o_out1__86_carry__0_i_8__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 o_out1__86_carry__1
       (.CI(o_out1__86_carry__0_n_0),
        .CO({NLW_o_out1__86_carry__1_CO_UNCONNECTED[3],o_out1__86_carry__1_n_1,o_out1__86_carry__1_n_2,o_out1__86_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\b12_buffer_reg[7]_0 ,o_out1__86_carry__1_i_1__0_n_0,o_out1__86_carry__1_i_2__0_n_0}),
        .O({o_out1__86_carry__1_n_4,o_out1__86_carry__1_i_5__0}),
        .S({o_out1__59_carry__1_n_6,\o_out_reg[15]_3 }));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__86_carry__1_i_1__0
       (.I0(\b12_buffer_reg[7] [1]),
        .I1(\b12_buffer_reg[5]_0 [1]),
        .O(o_out1__86_carry__1_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__86_carry__1_i_2__0
       (.I0(\b12_buffer_reg[7] [0]),
        .I1(\b12_buffer_reg[5]_0 [0]),
        .O(o_out1__86_carry__1_i_2__0_n_0));
  LUT3 #(
    .INIT(8'h78)) 
    o_out1__86_carry__1_i_3__1
       (.I0(o_out1__86_carry__1_2),
        .I1(o_out1__86_carry__1_1[2]),
        .I2(o_out1__86_carry__1_3),
        .O(o_out1__59_carry__1_0[2]));
  LUT3 #(
    .INIT(8'h78)) 
    o_out1__86_carry__1_i_3__3
       (.I0(o_out1__86_carry__1_6),
        .I1(o_out1__86_carry__1_5[2]),
        .I2(o_out1__86_carry__1_7),
        .O(o_out1__59_carry__1_1[2]));
  LUT4 #(
    .INIT(16'h8778)) 
    o_out1__86_carry__1_i_4__1
       (.I0(o_out1__86_carry__1_0[1]),
        .I1(o_out1__86_carry__1_1[1]),
        .I2(o_out1__86_carry__1_2),
        .I3(o_out1__86_carry__1_1[2]),
        .O(o_out1__59_carry__1_0[1]));
  LUT4 #(
    .INIT(16'h8778)) 
    o_out1__86_carry__1_i_4__3
       (.I0(o_out1__86_carry__1_4[1]),
        .I1(o_out1__86_carry__1_5[1]),
        .I2(o_out1__86_carry__1_6),
        .I3(o_out1__86_carry__1_5[2]),
        .O(o_out1__59_carry__1_1[1]));
  LUT4 #(
    .INIT(16'h8778)) 
    o_out1__86_carry__1_i_5__1
       (.I0(o_out1__86_carry__1_0[0]),
        .I1(o_out1__86_carry__1_1[0]),
        .I2(o_out1__86_carry__1_0[1]),
        .I3(o_out1__86_carry__1_1[1]),
        .O(o_out1__59_carry__1_0[0]));
  LUT4 #(
    .INIT(16'h8778)) 
    o_out1__86_carry__1_i_5__3
       (.I0(o_out1__86_carry__1_4[0]),
        .I1(o_out1__86_carry__1_5[0]),
        .I2(o_out1__86_carry__1_4[1]),
        .I3(o_out1__86_carry__1_5[1]),
        .O(o_out1__59_carry__1_1[0]));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    o_out1__86_carry_i_1__0
       (.I0(o_out1__59_carry_n_7),
        .I1(o_out1__0_carry__0_n_5),
        .I2(o_out1__30_carry_n_4),
        .O(o_out1__86_carry_i_1__0_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__86_carry_i_2__0
       (.I0(o_out1__30_carry_n_5),
        .I1(o_out1__0_carry__0_n_6),
        .O(o_out1__86_carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__86_carry_i_3__0
       (.I0(o_out1__30_carry_n_6),
        .I1(o_out1__0_carry__0_n_7),
        .O(o_out1__86_carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__86_carry_i_4__0
       (.I0(o_out1__0_carry_n_4),
        .I1(o_out1__30_carry_n_7),
        .O(o_out1__86_carry_i_4__0_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    o_out1__86_carry_i_5__0
       (.I0(o_out1__59_carry_n_6),
        .I1(o_out1__0_carry__0_n_4),
        .I2(o_out1__30_carry__0_n_7),
        .I3(o_out1__86_carry_i_1__0_n_0),
        .O(o_out1__86_carry_i_5__0_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    o_out1__86_carry_i_6__0
       (.I0(o_out1__59_carry_n_7),
        .I1(o_out1__0_carry__0_n_5),
        .I2(o_out1__30_carry_n_4),
        .I3(o_out1__86_carry_i_2__0_n_0),
        .O(o_out1__86_carry_i_6__0_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    o_out1__86_carry_i_7__0
       (.I0(o_out1__30_carry_n_5),
        .I1(o_out1__0_carry__0_n_6),
        .I2(o_out1__0_carry__0_n_7),
        .I3(o_out1__30_carry_n_6),
        .O(o_out1__86_carry_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    o_out1__86_carry_i_8__0
       (.I0(o_out1__30_carry_n_7),
        .I1(o_out1__0_carry_n_4),
        .I2(o_out1__0_carry__0_n_7),
        .I3(o_out1__30_carry_n_6),
        .O(o_out1__86_carry_i_8__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[11]_i_2__0 
       (.I0(o_out1__86_carry__0_n_4),
        .I1(m_axis_data[11]),
        .O(\o_out[11]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[11]_i_3__0 
       (.I0(o_out1__86_carry__0_n_5),
        .I1(m_axis_data[10]),
        .O(\o_out[11]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[11]_i_4__0 
       (.I0(o_out1__86_carry__0_n_6),
        .I1(m_axis_data[9]),
        .O(\o_out[11]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[11]_i_5__0 
       (.I0(o_out1__86_carry__0_n_7),
        .I1(m_axis_data[8]),
        .O(\o_out[11]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[15]_i_2__0 
       (.I0(m_axis_data[15]),
        .I1(o_out1__86_carry__1_n_4),
        .O(\o_out_reg[15]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[15]_i_3__2 
       (.I0(\o_out_reg[15]_4 [2]),
        .I1(\o_out_reg[15]_9 [2]),
        .O(\o_out[15]_i_3__2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[15]_i_3__4 
       (.I0(\o_out_reg[15]_7 [2]),
        .I1(\o_out_reg[15]_9 [5]),
        .O(\o_out[15]_i_3__4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[15]_i_4__1 
       (.I0(\o_out_reg[15]_4 [1]),
        .I1(\o_out_reg[15]_9 [1]),
        .O(\o_out[15]_i_4__1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[15]_i_4__3 
       (.I0(\o_out_reg[15]_7 [1]),
        .I1(\o_out_reg[15]_9 [4]),
        .O(\o_out[15]_i_4__3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[15]_i_5__1 
       (.I0(\o_out_reg[15]_4 [0]),
        .I1(\o_out_reg[15]_9 [0]),
        .O(\o_out[15]_i_5__1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[15]_i_5__3 
       (.I0(\o_out_reg[15]_7 [0]),
        .I1(\o_out_reg[15]_9 [3]),
        .O(\o_out[15]_i_5__3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \o_out[3]_i_2__0 
       (.I0(o_out1__30_carry_n_7),
        .I1(o_out1__0_carry_n_4),
        .I2(m_axis_data[3]),
        .O(\o_out[3]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[3]_i_3__0 
       (.I0(o_out1__0_carry_n_5),
        .I1(m_axis_data[2]),
        .O(\o_out[3]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[3]_i_4__0 
       (.I0(o_out1__0_carry_n_6),
        .I1(m_axis_data[1]),
        .O(\o_out[3]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[3]_i_5__0 
       (.I0(o_out1__0_carry_n_7),
        .I1(m_axis_data[0]),
        .O(\o_out[3]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[7]_i_2__0 
       (.I0(o_out1__86_carry_n_4),
        .I1(m_axis_data[7]),
        .O(\o_out[7]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[7]_i_3__0 
       (.I0(o_out1__86_carry_n_5),
        .I1(m_axis_data[6]),
        .O(\o_out[7]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[7]_i_4__0 
       (.I0(o_out1__86_carry_n_6),
        .I1(m_axis_data[5]),
        .O(\o_out[7]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[7]_i_5__0 
       (.I0(o_out1__86_carry_n_7),
        .I1(m_axis_data[4]),
        .O(\o_out[7]_i_5__0_n_0 ));
  FDRE \o_out_reg[0] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[3]_i_1__0_n_7 ),
        .Q(m_axis_data[0]),
        .R(p_0_in));
  FDRE \o_out_reg[10] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[11]_i_1__0_n_5 ),
        .Q(m_axis_data[10]),
        .R(p_0_in));
  FDRE \o_out_reg[11] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[11]_i_1__0_n_4 ),
        .Q(m_axis_data[11]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \o_out_reg[11]_i_1__0 
       (.CI(\o_out_reg[7]_i_1__0_n_0 ),
        .CO({\o_out_reg[11]_0 ,\o_out_reg[11]_i_1__0_n_1 ,\o_out_reg[11]_i_1__0_n_2 ,\o_out_reg[11]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({o_out1__86_carry__0_n_4,o_out1__86_carry__0_n_5,o_out1__86_carry__0_n_6,o_out1__86_carry__0_n_7}),
        .O({\o_out_reg[11]_i_1__0_n_4 ,\o_out_reg[11]_i_1__0_n_5 ,\o_out_reg[11]_i_1__0_n_6 ,\o_out_reg[11]_i_1__0_n_7 }),
        .S({\o_out[11]_i_2__0_n_0 ,\o_out[11]_i_3__0_n_0 ,\o_out[11]_i_4__0_n_0 ,\o_out[11]_i_5__0_n_0 }));
  FDRE \o_out_reg[12] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[15]_2 [0]),
        .Q(m_axis_data[12]),
        .R(p_0_in));
  FDRE \o_out_reg[13] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[15]_2 [1]),
        .Q(m_axis_data[13]),
        .R(p_0_in));
  FDRE \o_out_reg[14] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[15]_2 [2]),
        .Q(m_axis_data[14]),
        .R(p_0_in));
  FDRE \o_out_reg[15] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[15]_2 [3]),
        .Q(m_axis_data[15]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \o_out_reg[15]_i_1__1 
       (.CI(CO),
        .CO({\NLW_o_out_reg[15]_i_1__1_CO_UNCONNECTED [3],\o_out_reg[15]_i_1__1_n_1 ,\o_out_reg[15]_i_1__1_n_2 ,\o_out_reg[15]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\o_out_reg[15]_4 }),
        .O(O),
        .S({\o_out_reg[15]_5 ,\o_out[15]_i_3__2_n_0 ,\o_out[15]_i_4__1_n_0 ,\o_out[15]_i_5__1_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \o_out_reg[15]_i_1__3 
       (.CI(\o_out_reg[15]_6 ),
        .CO({\NLW_o_out_reg[15]_i_1__3_CO_UNCONNECTED [3],\o_out_reg[15]_i_1__3_n_1 ,\o_out_reg[15]_i_1__3_n_2 ,\o_out_reg[15]_i_1__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\o_out_reg[15]_7 }),
        .O(\o_out_reg[15]_1 ),
        .S({\o_out_reg[15]_8 ,\o_out[15]_i_3__4_n_0 ,\o_out[15]_i_4__3_n_0 ,\o_out[15]_i_5__3_n_0 }));
  FDRE \o_out_reg[1] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[3]_i_1__0_n_6 ),
        .Q(m_axis_data[1]),
        .R(p_0_in));
  FDRE \o_out_reg[2] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[3]_i_1__0_n_5 ),
        .Q(m_axis_data[2]),
        .R(p_0_in));
  FDRE \o_out_reg[3] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[3]_i_1__0_n_4 ),
        .Q(m_axis_data[3]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \o_out_reg[3]_i_1__0 
       (.CI(1'b0),
        .CO({\o_out_reg[3]_i_1__0_n_0 ,\o_out_reg[3]_i_1__0_n_1 ,\o_out_reg[3]_i_1__0_n_2 ,\o_out_reg[3]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({m_axis_data[3],o_out1__0_carry_n_5,o_out1__0_carry_n_6,o_out1__0_carry_n_7}),
        .O({\o_out_reg[3]_i_1__0_n_4 ,\o_out_reg[3]_i_1__0_n_5 ,\o_out_reg[3]_i_1__0_n_6 ,\o_out_reg[3]_i_1__0_n_7 }),
        .S({\o_out[3]_i_2__0_n_0 ,\o_out[3]_i_3__0_n_0 ,\o_out[3]_i_4__0_n_0 ,\o_out[3]_i_5__0_n_0 }));
  FDRE \o_out_reg[4] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[7]_i_1__0_n_7 ),
        .Q(m_axis_data[4]),
        .R(p_0_in));
  FDRE \o_out_reg[5] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[7]_i_1__0_n_6 ),
        .Q(m_axis_data[5]),
        .R(p_0_in));
  FDRE \o_out_reg[6] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[7]_i_1__0_n_5 ),
        .Q(m_axis_data[6]),
        .R(p_0_in));
  FDRE \o_out_reg[7] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[7]_i_1__0_n_4 ),
        .Q(m_axis_data[7]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \o_out_reg[7]_i_1__0 
       (.CI(\o_out_reg[3]_i_1__0_n_0 ),
        .CO({\o_out_reg[7]_i_1__0_n_0 ,\o_out_reg[7]_i_1__0_n_1 ,\o_out_reg[7]_i_1__0_n_2 ,\o_out_reg[7]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({o_out1__86_carry_n_4,o_out1__86_carry_n_5,o_out1__86_carry_n_6,o_out1__86_carry_n_7}),
        .O({\o_out_reg[7]_i_1__0_n_4 ,\o_out_reg[7]_i_1__0_n_5 ,\o_out_reg[7]_i_1__0_n_6 ,\o_out_reg[7]_i_1__0_n_7 }),
        .S({\o_out[7]_i_2__0_n_0 ,\o_out[7]_i_3__0_n_0 ,\o_out[7]_i_4__0_n_0 ,\o_out[7]_i_5__0_n_0 }));
  FDRE \o_out_reg[8] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[11]_i_1__0_n_7 ),
        .Q(m_axis_data[8]),
        .R(p_0_in));
  FDRE \o_out_reg[9] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[11]_i_1__0_n_6 ),
        .Q(m_axis_data[9]),
        .R(p_0_in));
  FDRE \o_x_reg[0] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(\o_x_reg_n_0_[0] ),
        .R(p_0_in));
  FDRE \o_x_reg[1] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(\o_x_reg_n_0_[1] ),
        .R(p_0_in));
  FDRE \o_x_reg[2] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(\o_x_reg_n_0_[2] ),
        .R(p_0_in));
  FDRE \o_x_reg[3] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(\o_x_reg_n_0_[3] ),
        .R(p_0_in));
  FDRE \o_x_reg[4] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(\o_x_reg_n_0_[4] ),
        .R(p_0_in));
  FDRE \o_x_reg[5] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(D[5]),
        .Q(\o_x_reg_n_0_[5] ),
        .R(p_0_in));
  FDRE \o_x_reg[6] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(D[6]),
        .Q(\o_x_reg_n_0_[6] ),
        .R(p_0_in));
  FDRE \o_x_reg[7] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(D[7]),
        .Q(\o_x_reg_n_0_[7] ),
        .R(p_0_in));
  FDRE \o_y_reg[0] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_y_reg[7]_5 [0]),
        .Q(\o_y_reg[7]_0 [0]),
        .R(p_0_in));
  FDRE \o_y_reg[1] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_y_reg[7]_5 [1]),
        .Q(\o_y_reg[7]_0 [1]),
        .R(p_0_in));
  FDRE \o_y_reg[2] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_y_reg[7]_5 [2]),
        .Q(\o_y_reg[7]_0 [2]),
        .R(p_0_in));
  FDRE \o_y_reg[3] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_y_reg[7]_5 [3]),
        .Q(\o_y_reg[7]_0 [3]),
        .R(p_0_in));
  FDRE \o_y_reg[4] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_y_reg[7]_5 [4]),
        .Q(\o_y_reg[7]_0 [4]),
        .R(p_0_in));
  FDRE \o_y_reg[5] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_y_reg[7]_5 [5]),
        .Q(\o_y_reg[7]_0 [5]),
        .R(p_0_in));
  FDRE \o_y_reg[6] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_y_reg[7]_5 [6]),
        .Q(\o_y_reg[7]_0 [6]),
        .R(p_0_in));
  FDRE \o_y_reg[7] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_y_reg[7]_5 [7]),
        .Q(\o_y_reg[7]_0 [7]),
        .R(p_0_in));
endmodule

(* ORIG_REF_NAME = "MAC" *) 
module design_1_SystolicArrayAxiWrap_0_0_MAC_2
   (m_axis_data,
    \b13_buffer2_reg[5] ,
    \b13_buffer2_reg[5]_0 ,
    \b13_buffer2_reg[7] ,
    \b13_buffer2_reg[7]_0 ,
    o_out1__86_carry__1_i_5__1,
    \o_out_reg[15]_0 ,
    \o_y_reg[2]_0 ,
    Q,
    \o_y_reg[5]_0 ,
    \o_y_reg[3]_0 ,
    \o_y_reg[7]_0 ,
    \o_y_reg[2]_1 ,
    \o_y_reg[0]_0 ,
    \o_y_reg[5]_1 ,
    \o_y_reg[7]_1 ,
    \o_y_reg[7]_2 ,
    CO,
    \o_out_reg[15]_1 ,
    \o_y_reg[1]_0 ,
    \o_y_reg[1]_1 ,
    \o_y_reg[1]_2 ,
    \o_x_reg[1] ,
    \o_y_reg[4]_0 ,
    \o_y_reg[4]_1 ,
    \o_y_reg[7]_3 ,
    \o_y_reg[6]_0 ,
    o_out1__59_carry__1_0,
    p_0_in,
    axi_clk,
    O,
    \o_out_reg[3]_0 ,
    \o_out_reg[3]_1 ,
    DI,
    o_out1__86_carry_i_8__1_0,
    o_out1__86_carry__0_i_3__1_0,
    o_out1__86_carry__0_i_3__1_1,
    \o_out[3]_i_2__1_0 ,
    \o_out[3]_i_2__1_1 ,
    o_out1__86_carry__0_i_4__1_0,
    o_out1__86_carry__0_i_4__1_1,
    o_out1__86_carry__1_i_5__1_0,
    o_out1__86_carry__1_i_5__1_1,
    o_out1__86_carry_i_1__1_0,
    S,
    o_out1__86_carry__0_i_6__1_0,
    o_out1__86_carry__0_i_6__1_1,
    o_out1__86_carry__1_i_3__1,
    o_out1__86_carry__1_i_3__1_0,
    \o_out_reg[15]_2 ,
    o_out1__59_carry__1_1,
    \o_out_reg[15]_3 ,
    \o_out_reg[15]_4 ,
    \o_out_reg[15]_5 ,
    o_out1__0_carry__0_0,
    o_out1__30_carry__0_0,
    o_out1__30_carry__0_1,
    o_out1__30_carry__0_2,
    o_out1__30_carry__0_3,
    o_out1__86_carry__1_0,
    o_out1__86_carry__1_1,
    o_out1__86_carry__1_2,
    o_out1__86_carry__1_3,
    \o_out_reg[15]_6 ,
    \o_y_reg[7]_4 );
  output [15:0]m_axis_data;
  output [0:0]\b13_buffer2_reg[5] ;
  output [1:0]\b13_buffer2_reg[5]_0 ;
  output [2:0]\b13_buffer2_reg[7] ;
  output [0:0]\b13_buffer2_reg[7]_0 ;
  output [2:0]o_out1__86_carry__1_i_5__1;
  output [0:0]\o_out_reg[15]_0 ;
  output [3:0]\o_y_reg[2]_0 ;
  output [7:0]Q;
  output [3:0]\o_y_reg[5]_0 ;
  output [1:0]\o_y_reg[3]_0 ;
  output [0:0]\o_y_reg[7]_0 ;
  output [1:0]\o_y_reg[2]_1 ;
  output [0:0]\o_y_reg[0]_0 ;
  output [1:0]\o_y_reg[5]_1 ;
  output [3:0]\o_y_reg[7]_1 ;
  output [0:0]\o_y_reg[7]_2 ;
  output [0:0]CO;
  output [3:0]\o_out_reg[15]_1 ;
  output [0:0]\o_y_reg[1]_0 ;
  output [3:0]\o_y_reg[1]_1 ;
  output [1:0]\o_y_reg[1]_2 ;
  output [1:0]\o_x_reg[1] ;
  output [3:0]\o_y_reg[4]_0 ;
  output [1:0]\o_y_reg[4]_1 ;
  output [1:0]\o_y_reg[7]_3 ;
  output [0:0]\o_y_reg[6]_0 ;
  output [2:0]o_out1__59_carry__1_0;
  input p_0_in;
  input axi_clk;
  input [3:0]O;
  input [2:0]\o_out_reg[3]_0 ;
  input [3:0]\o_out_reg[3]_1 ;
  input [3:0]DI;
  input [3:0]o_out1__86_carry_i_8__1_0;
  input [1:0]o_out1__86_carry__0_i_3__1_0;
  input [1:0]o_out1__86_carry__0_i_3__1_1;
  input [2:0]\o_out[3]_i_2__1_0 ;
  input [3:0]\o_out[3]_i_2__1_1 ;
  input [3:0]o_out1__86_carry__0_i_4__1_0;
  input [3:0]o_out1__86_carry__0_i_4__1_1;
  input [1:0]o_out1__86_carry__1_i_5__1_0;
  input [1:0]o_out1__86_carry__1_i_5__1_1;
  input [2:0]o_out1__86_carry_i_1__1_0;
  input [3:0]S;
  input [3:0]o_out1__86_carry__0_i_6__1_0;
  input [3:0]o_out1__86_carry__0_i_6__1_1;
  input [0:0]o_out1__86_carry__1_i_3__1;
  input [0:0]o_out1__86_carry__1_i_3__1_0;
  input [2:0]\o_out_reg[15]_2 ;
  input [7:0]o_out1__59_carry__1_1;
  input [0:0]\o_out_reg[15]_3 ;
  input [2:0]\o_out_reg[15]_4 ;
  input [0:0]\o_out_reg[15]_5 ;
  input o_out1__0_carry__0_0;
  input o_out1__30_carry__0_0;
  input o_out1__30_carry__0_1;
  input o_out1__30_carry__0_2;
  input o_out1__30_carry__0_3;
  input [1:0]o_out1__86_carry__1_0;
  input [2:0]o_out1__86_carry__1_1;
  input [0:0]o_out1__86_carry__1_2;
  input [0:0]o_out1__86_carry__1_3;
  input [2:0]\o_out_reg[15]_6 ;
  input [7:0]\o_y_reg[7]_4 ;

  wire [0:0]CO;
  wire [3:0]DI;
  wire [3:0]O;
  wire [7:0]Q;
  wire [3:0]S;
  wire axi_clk;
  wire [0:0]\b13_buffer2_reg[5] ;
  wire [1:0]\b13_buffer2_reg[5]_0 ;
  wire [2:0]\b13_buffer2_reg[7] ;
  wire [0:0]\b13_buffer2_reg[7]_0 ;
  wire [15:0]m_axis_data;
  wire o_out1__0_carry__0_0;
  wire o_out1__0_carry__0_i_10__4_n_0;
  wire o_out1__0_carry__0_i_11__4_n_0;
  wire o_out1__0_carry__0_i_12__4_n_0;
  wire o_out1__0_carry__0_n_0;
  wire o_out1__0_carry__0_n_1;
  wire o_out1__0_carry__0_n_2;
  wire o_out1__0_carry__0_n_3;
  wire o_out1__0_carry__0_n_4;
  wire o_out1__0_carry__0_n_5;
  wire o_out1__0_carry__0_n_6;
  wire o_out1__0_carry__0_n_7;
  wire o_out1__0_carry__1_n_1;
  wire o_out1__0_carry__1_n_3;
  wire o_out1__0_carry__1_n_6;
  wire o_out1__0_carry__1_n_7;
  wire o_out1__0_carry_n_0;
  wire o_out1__0_carry_n_1;
  wire o_out1__0_carry_n_2;
  wire o_out1__0_carry_n_3;
  wire o_out1__0_carry_n_4;
  wire o_out1__0_carry_n_5;
  wire o_out1__0_carry_n_6;
  wire o_out1__0_carry_n_7;
  wire o_out1__30_carry__0_0;
  wire o_out1__30_carry__0_1;
  wire o_out1__30_carry__0_2;
  wire o_out1__30_carry__0_3;
  wire o_out1__30_carry__0_n_0;
  wire o_out1__30_carry__0_n_1;
  wire o_out1__30_carry__0_n_2;
  wire o_out1__30_carry__0_n_3;
  wire o_out1__30_carry__0_n_4;
  wire o_out1__30_carry__0_n_5;
  wire o_out1__30_carry__0_n_6;
  wire o_out1__30_carry__0_n_7;
  wire o_out1__30_carry__1_n_3;
  wire o_out1__30_carry_n_0;
  wire o_out1__30_carry_n_1;
  wire o_out1__30_carry_n_2;
  wire o_out1__30_carry_n_3;
  wire o_out1__30_carry_n_4;
  wire o_out1__30_carry_n_5;
  wire o_out1__30_carry_n_6;
  wire o_out1__30_carry_n_7;
  wire o_out1__59_carry__0_n_0;
  wire o_out1__59_carry__0_n_1;
  wire o_out1__59_carry__0_n_2;
  wire o_out1__59_carry__0_n_3;
  wire o_out1__59_carry__0_n_7;
  wire [2:0]o_out1__59_carry__1_0;
  wire [7:0]o_out1__59_carry__1_1;
  wire o_out1__59_carry__1_n_3;
  wire o_out1__59_carry__1_n_6;
  wire o_out1__59_carry_n_0;
  wire o_out1__59_carry_n_1;
  wire o_out1__59_carry_n_2;
  wire o_out1__59_carry_n_3;
  wire o_out1__59_carry_n_4;
  wire o_out1__59_carry_n_5;
  wire o_out1__59_carry_n_6;
  wire o_out1__59_carry_n_7;
  wire o_out1__86_carry__0_i_1__1_n_0;
  wire o_out1__86_carry__0_i_2__1_n_0;
  wire [1:0]o_out1__86_carry__0_i_3__1_0;
  wire [1:0]o_out1__86_carry__0_i_3__1_1;
  wire o_out1__86_carry__0_i_3__1_n_0;
  wire [3:0]o_out1__86_carry__0_i_4__1_0;
  wire [3:0]o_out1__86_carry__0_i_4__1_1;
  wire o_out1__86_carry__0_i_4__1_n_0;
  wire o_out1__86_carry__0_i_5__1_n_0;
  wire [3:0]o_out1__86_carry__0_i_6__1_0;
  wire [3:0]o_out1__86_carry__0_i_6__1_1;
  wire o_out1__86_carry__0_i_6__1_n_0;
  wire o_out1__86_carry__0_i_7__1_n_0;
  wire o_out1__86_carry__0_i_8__1_n_0;
  wire o_out1__86_carry__0_n_0;
  wire o_out1__86_carry__0_n_1;
  wire o_out1__86_carry__0_n_2;
  wire o_out1__86_carry__0_n_3;
  wire o_out1__86_carry__0_n_4;
  wire o_out1__86_carry__0_n_5;
  wire o_out1__86_carry__0_n_6;
  wire o_out1__86_carry__0_n_7;
  wire [1:0]o_out1__86_carry__1_0;
  wire [2:0]o_out1__86_carry__1_1;
  wire [0:0]o_out1__86_carry__1_2;
  wire [0:0]o_out1__86_carry__1_3;
  wire o_out1__86_carry__1_i_1__1_n_0;
  wire o_out1__86_carry__1_i_2__1_n_0;
  wire [0:0]o_out1__86_carry__1_i_3__1;
  wire [0:0]o_out1__86_carry__1_i_3__1_0;
  wire [2:0]o_out1__86_carry__1_i_5__1;
  wire [1:0]o_out1__86_carry__1_i_5__1_0;
  wire [1:0]o_out1__86_carry__1_i_5__1_1;
  wire o_out1__86_carry__1_n_1;
  wire o_out1__86_carry__1_n_2;
  wire o_out1__86_carry__1_n_3;
  wire o_out1__86_carry__1_n_4;
  wire [2:0]o_out1__86_carry_i_1__1_0;
  wire o_out1__86_carry_i_1__1_n_0;
  wire o_out1__86_carry_i_2__1_n_0;
  wire o_out1__86_carry_i_3__1_n_0;
  wire o_out1__86_carry_i_4__1_n_0;
  wire o_out1__86_carry_i_5__1_n_0;
  wire o_out1__86_carry_i_6__1_n_0;
  wire o_out1__86_carry_i_7__1_n_0;
  wire [3:0]o_out1__86_carry_i_8__1_0;
  wire o_out1__86_carry_i_8__1_n_0;
  wire o_out1__86_carry_n_0;
  wire o_out1__86_carry_n_1;
  wire o_out1__86_carry_n_2;
  wire o_out1__86_carry_n_3;
  wire o_out1__86_carry_n_4;
  wire o_out1__86_carry_n_5;
  wire o_out1__86_carry_n_6;
  wire o_out1__86_carry_n_7;
  wire \o_out[11]_i_2__1_n_0 ;
  wire \o_out[11]_i_3__1_n_0 ;
  wire \o_out[11]_i_4__1_n_0 ;
  wire \o_out[11]_i_5__1_n_0 ;
  wire \o_out[15]_i_3__5_n_0 ;
  wire \o_out[15]_i_4__4_n_0 ;
  wire \o_out[15]_i_5__4_n_0 ;
  wire [2:0]\o_out[3]_i_2__1_0 ;
  wire [3:0]\o_out[3]_i_2__1_1 ;
  wire \o_out[3]_i_2__1_n_0 ;
  wire \o_out[3]_i_3__1_n_0 ;
  wire \o_out[3]_i_4__1_n_0 ;
  wire \o_out[3]_i_5__1_n_0 ;
  wire \o_out[7]_i_2__1_n_0 ;
  wire \o_out[7]_i_3__1_n_0 ;
  wire \o_out[7]_i_4__1_n_0 ;
  wire \o_out[7]_i_5__1_n_0 ;
  wire \o_out_reg[11]_i_1__1_n_1 ;
  wire \o_out_reg[11]_i_1__1_n_2 ;
  wire \o_out_reg[11]_i_1__1_n_3 ;
  wire \o_out_reg[11]_i_1__1_n_4 ;
  wire \o_out_reg[11]_i_1__1_n_5 ;
  wire \o_out_reg[11]_i_1__1_n_6 ;
  wire \o_out_reg[11]_i_1__1_n_7 ;
  wire [0:0]\o_out_reg[15]_0 ;
  wire [3:0]\o_out_reg[15]_1 ;
  wire [2:0]\o_out_reg[15]_2 ;
  wire [0:0]\o_out_reg[15]_3 ;
  wire [2:0]\o_out_reg[15]_4 ;
  wire [0:0]\o_out_reg[15]_5 ;
  wire [2:0]\o_out_reg[15]_6 ;
  wire \o_out_reg[15]_i_1__4_n_1 ;
  wire \o_out_reg[15]_i_1__4_n_2 ;
  wire \o_out_reg[15]_i_1__4_n_3 ;
  wire [2:0]\o_out_reg[3]_0 ;
  wire [3:0]\o_out_reg[3]_1 ;
  wire \o_out_reg[3]_i_1__1_n_0 ;
  wire \o_out_reg[3]_i_1__1_n_1 ;
  wire \o_out_reg[3]_i_1__1_n_2 ;
  wire \o_out_reg[3]_i_1__1_n_3 ;
  wire \o_out_reg[3]_i_1__1_n_4 ;
  wire \o_out_reg[3]_i_1__1_n_5 ;
  wire \o_out_reg[3]_i_1__1_n_6 ;
  wire \o_out_reg[3]_i_1__1_n_7 ;
  wire \o_out_reg[7]_i_1__1_n_0 ;
  wire \o_out_reg[7]_i_1__1_n_1 ;
  wire \o_out_reg[7]_i_1__1_n_2 ;
  wire \o_out_reg[7]_i_1__1_n_3 ;
  wire \o_out_reg[7]_i_1__1_n_4 ;
  wire \o_out_reg[7]_i_1__1_n_5 ;
  wire \o_out_reg[7]_i_1__1_n_6 ;
  wire \o_out_reg[7]_i_1__1_n_7 ;
  wire [1:0]\o_x_reg[1] ;
  wire [0:0]\o_y_reg[0]_0 ;
  wire [0:0]\o_y_reg[1]_0 ;
  wire [3:0]\o_y_reg[1]_1 ;
  wire [1:0]\o_y_reg[1]_2 ;
  wire [3:0]\o_y_reg[2]_0 ;
  wire [1:0]\o_y_reg[2]_1 ;
  wire [1:0]\o_y_reg[3]_0 ;
  wire [3:0]\o_y_reg[4]_0 ;
  wire [1:0]\o_y_reg[4]_1 ;
  wire [3:0]\o_y_reg[5]_0 ;
  wire [1:0]\o_y_reg[5]_1 ;
  wire [0:0]\o_y_reg[6]_0 ;
  wire [0:0]\o_y_reg[7]_0 ;
  wire [3:0]\o_y_reg[7]_1 ;
  wire [0:0]\o_y_reg[7]_2 ;
  wire [1:0]\o_y_reg[7]_3 ;
  wire [7:0]\o_y_reg[7]_4 ;
  wire p_0_in;
  wire [3:1]NLW_o_out1__0_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_o_out1__0_carry__1_O_UNCONNECTED;
  wire [3:1]NLW_o_out1__30_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_o_out1__30_carry__1_O_UNCONNECTED;
  wire [3:1]NLW_o_out1__59_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_o_out1__59_carry__1_O_UNCONNECTED;
  wire [3:3]NLW_o_out1__86_carry__1_CO_UNCONNECTED;
  wire [3:3]\NLW_o_out_reg[15]_i_1__4_CO_UNCONNECTED ;

  CARRY4 o_out1__0_carry
       (.CI(1'b0),
        .CO({o_out1__0_carry_n_0,o_out1__0_carry_n_1,o_out1__0_carry_n_2,o_out1__0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({\o_out_reg[3]_0 ,1'b0}),
        .O({o_out1__0_carry_n_4,o_out1__0_carry_n_5,o_out1__0_carry_n_6,o_out1__0_carry_n_7}),
        .S(\o_out_reg[3]_1 ));
  CARRY4 o_out1__0_carry__0
       (.CI(o_out1__0_carry_n_0),
        .CO({o_out1__0_carry__0_n_0,o_out1__0_carry__0_n_1,o_out1__0_carry__0_n_2,o_out1__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(DI),
        .O({o_out1__0_carry__0_n_4,o_out1__0_carry__0_n_5,o_out1__0_carry__0_n_6,o_out1__0_carry__0_n_7}),
        .S(o_out1__86_carry_i_8__1_0));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__0_carry__0_i_10__4
       (.I0(Q[0]),
        .I1(o_out1__59_carry__1_1[6]),
        .O(o_out1__0_carry__0_i_10__4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__0_carry__0_i_11__4
       (.I0(Q[0]),
        .I1(o_out1__59_carry__1_1[5]),
        .O(o_out1__0_carry__0_i_11__4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__0_carry__0_i_12__4
       (.I0(Q[0]),
        .I1(o_out1__59_carry__1_1[4]),
        .O(o_out1__0_carry__0_i_12__4_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    o_out1__0_carry__0_i_1__4
       (.I0(Q[2]),
        .I1(o_out1__59_carry__1_1[4]),
        .I2(Q[1]),
        .I3(o_out1__59_carry__1_1[5]),
        .I4(Q[0]),
        .I5(o_out1__59_carry__1_1[6]),
        .O(\o_y_reg[2]_0 [3]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    o_out1__0_carry__0_i_2__4
       (.I0(Q[2]),
        .I1(o_out1__59_carry__1_1[3]),
        .I2(Q[1]),
        .I3(o_out1__59_carry__1_1[4]),
        .I4(Q[0]),
        .I5(o_out1__59_carry__1_1[5]),
        .O(\o_y_reg[2]_0 [2]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    o_out1__0_carry__0_i_3__4
       (.I0(Q[2]),
        .I1(o_out1__59_carry__1_1[2]),
        .I2(Q[1]),
        .I3(o_out1__59_carry__1_1[3]),
        .I4(Q[0]),
        .I5(o_out1__59_carry__1_1[4]),
        .O(\o_y_reg[2]_0 [1]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    o_out1__0_carry__0_i_4__4
       (.I0(Q[2]),
        .I1(o_out1__59_carry__1_1[1]),
        .I2(Q[1]),
        .I3(o_out1__59_carry__1_1[2]),
        .I4(Q[0]),
        .I5(o_out1__59_carry__1_1[3]),
        .O(\o_y_reg[2]_0 [0]));
  LUT6 #(
    .INIT(64'h9666699969996999)) 
    o_out1__0_carry__0_i_5__4
       (.I0(\o_y_reg[2]_0 [3]),
        .I1(o_out1__0_carry__0_0),
        .I2(Q[1]),
        .I3(o_out1__59_carry__1_1[6]),
        .I4(Q[0]),
        .I5(o_out1__59_carry__1_1[7]),
        .O(\o_y_reg[1]_1 [3]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    o_out1__0_carry__0_i_6__4
       (.I0(\o_y_reg[2]_0 [2]),
        .I1(o_out1__59_carry__1_1[5]),
        .I2(Q[1]),
        .I3(o_out1__59_carry__1_1[4]),
        .I4(Q[2]),
        .I5(o_out1__0_carry__0_i_10__4_n_0),
        .O(\o_y_reg[1]_1 [2]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    o_out1__0_carry__0_i_7__4
       (.I0(\o_y_reg[2]_0 [1]),
        .I1(o_out1__59_carry__1_1[4]),
        .I2(Q[1]),
        .I3(o_out1__59_carry__1_1[3]),
        .I4(Q[2]),
        .I5(o_out1__0_carry__0_i_11__4_n_0),
        .O(\o_y_reg[1]_1 [1]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    o_out1__0_carry__0_i_8__4
       (.I0(\o_y_reg[2]_0 [0]),
        .I1(o_out1__59_carry__1_1[3]),
        .I2(Q[1]),
        .I3(o_out1__59_carry__1_1[2]),
        .I4(Q[2]),
        .I5(o_out1__0_carry__0_i_12__4_n_0),
        .O(\o_y_reg[1]_1 [0]));
  CARRY4 o_out1__0_carry__1
       (.CI(o_out1__0_carry__0_n_0),
        .CO({NLW_o_out1__0_carry__1_CO_UNCONNECTED[3],o_out1__0_carry__1_n_1,NLW_o_out1__0_carry__1_CO_UNCONNECTED[1],o_out1__0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,o_out1__86_carry__0_i_3__1_0}),
        .O({NLW_o_out1__0_carry__1_O_UNCONNECTED[3:2],o_out1__0_carry__1_n_6,o_out1__0_carry__1_n_7}),
        .S({1'b0,1'b1,o_out1__86_carry__0_i_3__1_1}));
  LUT4 #(
    .INIT(16'h0888)) 
    o_out1__0_carry__1_i_1__4
       (.I0(Q[2]),
        .I1(o_out1__59_carry__1_1[6]),
        .I2(Q[1]),
        .I3(o_out1__59_carry__1_1[7]),
        .O(\o_y_reg[2]_1 [1]));
  LUT6 #(
    .INIT(64'h8000F888F888F888)) 
    o_out1__0_carry__1_i_2__4
       (.I0(Q[2]),
        .I1(o_out1__59_carry__1_1[5]),
        .I2(Q[1]),
        .I3(o_out1__59_carry__1_1[6]),
        .I4(Q[0]),
        .I5(o_out1__59_carry__1_1[7]),
        .O(\o_y_reg[2]_1 [0]));
  LUT4 #(
    .INIT(16'h4F3F)) 
    o_out1__0_carry__1_i_3__4
       (.I0(Q[1]),
        .I1(o_out1__59_carry__1_1[6]),
        .I2(Q[2]),
        .I3(o_out1__59_carry__1_1[7]),
        .O(\o_y_reg[1]_2 [1]));
  LUT6 #(
    .INIT(64'h25404FBFF03FCF3F)) 
    o_out1__0_carry__1_i_4__4
       (.I0(Q[0]),
        .I1(o_out1__59_carry__1_1[5]),
        .I2(Q[2]),
        .I3(o_out1__59_carry__1_1[6]),
        .I4(Q[1]),
        .I5(o_out1__59_carry__1_1[7]),
        .O(\o_y_reg[1]_2 [0]));
  LUT4 #(
    .INIT(16'h7888)) 
    o_out1__0_carry_i_2__4
       (.I0(Q[1]),
        .I1(o_out1__59_carry__1_1[1]),
        .I2(Q[2]),
        .I3(o_out1__59_carry__1_1[0]),
        .O(\o_y_reg[1]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__0_carry_i_7__4
       (.I0(Q[0]),
        .I1(o_out1__59_carry__1_1[0]),
        .O(\o_y_reg[0]_0 ));
  CARRY4 o_out1__30_carry
       (.CI(1'b0),
        .CO({o_out1__30_carry_n_0,o_out1__30_carry_n_1,o_out1__30_carry_n_2,o_out1__30_carry_n_3}),
        .CYINIT(1'b0),
        .DI({\o_out[3]_i_2__1_0 ,1'b0}),
        .O({o_out1__30_carry_n_4,o_out1__30_carry_n_5,o_out1__30_carry_n_6,o_out1__30_carry_n_7}),
        .S(\o_out[3]_i_2__1_1 ));
  CARRY4 o_out1__30_carry__0
       (.CI(o_out1__30_carry_n_0),
        .CO({o_out1__30_carry__0_n_0,o_out1__30_carry__0_n_1,o_out1__30_carry__0_n_2,o_out1__30_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(o_out1__86_carry__0_i_4__1_0),
        .O({o_out1__30_carry__0_n_4,o_out1__30_carry__0_n_5,o_out1__30_carry__0_n_6,o_out1__30_carry__0_n_7}),
        .S(o_out1__86_carry__0_i_4__1_1));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    o_out1__30_carry__0_i_1__4
       (.I0(Q[5]),
        .I1(o_out1__59_carry__1_1[4]),
        .I2(Q[4]),
        .I3(o_out1__59_carry__1_1[5]),
        .I4(o_out1__59_carry__1_1[6]),
        .I5(Q[3]),
        .O(\o_y_reg[5]_0 [3]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    o_out1__30_carry__0_i_2__4
       (.I0(Q[5]),
        .I1(o_out1__59_carry__1_1[3]),
        .I2(Q[4]),
        .I3(o_out1__59_carry__1_1[4]),
        .I4(o_out1__59_carry__1_1[5]),
        .I5(Q[3]),
        .O(\o_y_reg[5]_0 [2]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    o_out1__30_carry__0_i_3__4
       (.I0(Q[5]),
        .I1(o_out1__59_carry__1_1[2]),
        .I2(Q[4]),
        .I3(o_out1__59_carry__1_1[3]),
        .I4(o_out1__59_carry__1_1[4]),
        .I5(Q[3]),
        .O(\o_y_reg[5]_0 [1]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    o_out1__30_carry__0_i_4__4
       (.I0(Q[5]),
        .I1(o_out1__59_carry__1_1[1]),
        .I2(Q[4]),
        .I3(o_out1__59_carry__1_1[2]),
        .I4(o_out1__59_carry__1_1[3]),
        .I5(Q[3]),
        .O(\o_y_reg[5]_0 [0]));
  LUT6 #(
    .INIT(64'h9666699969996999)) 
    o_out1__30_carry__0_i_5__4
       (.I0(\o_y_reg[5]_0 [3]),
        .I1(o_out1__30_carry__0_3),
        .I2(Q[4]),
        .I3(o_out1__59_carry__1_1[6]),
        .I4(o_out1__59_carry__1_1[7]),
        .I5(Q[3]),
        .O(\o_y_reg[4]_0 [3]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    o_out1__30_carry__0_i_6__4
       (.I0(\o_y_reg[5]_0 [2]),
        .I1(o_out1__59_carry__1_1[5]),
        .I2(Q[4]),
        .I3(o_out1__59_carry__1_1[4]),
        .I4(Q[5]),
        .I5(o_out1__30_carry__0_2),
        .O(\o_y_reg[4]_0 [2]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    o_out1__30_carry__0_i_7__4
       (.I0(\o_y_reg[5]_0 [1]),
        .I1(o_out1__59_carry__1_1[4]),
        .I2(Q[4]),
        .I3(o_out1__59_carry__1_1[3]),
        .I4(Q[5]),
        .I5(o_out1__30_carry__0_1),
        .O(\o_y_reg[4]_0 [1]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    o_out1__30_carry__0_i_8__4
       (.I0(\o_y_reg[5]_0 [0]),
        .I1(o_out1__59_carry__1_1[3]),
        .I2(Q[4]),
        .I3(o_out1__59_carry__1_1[2]),
        .I4(Q[5]),
        .I5(o_out1__30_carry__0_0),
        .O(\o_y_reg[4]_0 [0]));
  CARRY4 o_out1__30_carry__1
       (.CI(o_out1__30_carry__0_n_0),
        .CO({NLW_o_out1__30_carry__1_CO_UNCONNECTED[3],\b13_buffer2_reg[5] ,NLW_o_out1__30_carry__1_CO_UNCONNECTED[1],o_out1__30_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,o_out1__86_carry__1_i_5__1_0}),
        .O({NLW_o_out1__30_carry__1_O_UNCONNECTED[3:2],\b13_buffer2_reg[5]_0 }),
        .S({1'b0,1'b1,o_out1__86_carry__1_i_5__1_1}));
  LUT4 #(
    .INIT(16'h0888)) 
    o_out1__30_carry__1_i_1__4
       (.I0(Q[5]),
        .I1(o_out1__59_carry__1_1[6]),
        .I2(Q[4]),
        .I3(o_out1__59_carry__1_1[7]),
        .O(\o_y_reg[5]_1 [1]));
  LUT6 #(
    .INIT(64'h8000F888F888F888)) 
    o_out1__30_carry__1_i_2__4
       (.I0(Q[5]),
        .I1(o_out1__59_carry__1_1[5]),
        .I2(Q[4]),
        .I3(o_out1__59_carry__1_1[6]),
        .I4(o_out1__59_carry__1_1[7]),
        .I5(Q[3]),
        .O(\o_y_reg[5]_1 [0]));
  LUT4 #(
    .INIT(16'h4F3F)) 
    o_out1__30_carry__1_i_3__4
       (.I0(Q[4]),
        .I1(o_out1__59_carry__1_1[6]),
        .I2(Q[5]),
        .I3(o_out1__59_carry__1_1[7]),
        .O(\o_y_reg[4]_1 [1]));
  LUT6 #(
    .INIT(64'h25404FBFF03FCF3F)) 
    o_out1__30_carry__1_i_4__4
       (.I0(Q[3]),
        .I1(o_out1__59_carry__1_1[5]),
        .I2(Q[5]),
        .I3(o_out1__59_carry__1_1[6]),
        .I4(Q[4]),
        .I5(o_out1__59_carry__1_1[7]),
        .O(\o_y_reg[4]_1 [0]));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    o_out1__30_carry_i_1__4
       (.I0(Q[3]),
        .I1(o_out1__59_carry__1_1[3]),
        .I2(Q[5]),
        .I3(o_out1__59_carry__1_1[1]),
        .I4(Q[4]),
        .I5(o_out1__59_carry__1_1[2]),
        .O(\o_y_reg[3]_0 [1]));
  LUT4 #(
    .INIT(16'h7888)) 
    o_out1__30_carry_i_2__4
       (.I0(Q[4]),
        .I1(o_out1__59_carry__1_1[1]),
        .I2(Q[5]),
        .I3(o_out1__59_carry__1_1[0]),
        .O(\o_y_reg[3]_0 [0]));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    o_out1__30_carry_i_4__4
       (.I0(\o_y_reg[3]_0 [1]),
        .I1(o_out1__59_carry__1_1[1]),
        .I2(Q[5]),
        .I3(o_out1__59_carry__1_1[0]),
        .I4(Q[4]),
        .O(\o_x_reg[1] [1]));
  LUT4 #(
    .INIT(16'h7888)) 
    o_out1__30_carry_i_6__4
       (.I0(Q[3]),
        .I1(o_out1__59_carry__1_1[1]),
        .I2(Q[4]),
        .I3(o_out1__59_carry__1_1[0]),
        .O(\o_x_reg[1] [0]));
  CARRY4 o_out1__59_carry
       (.CI(1'b0),
        .CO({o_out1__59_carry_n_0,o_out1__59_carry_n_1,o_out1__59_carry_n_2,o_out1__59_carry_n_3}),
        .CYINIT(1'b0),
        .DI({o_out1__86_carry_i_1__1_0,1'b0}),
        .O({o_out1__59_carry_n_4,o_out1__59_carry_n_5,o_out1__59_carry_n_6,o_out1__59_carry_n_7}),
        .S(S));
  CARRY4 o_out1__59_carry__0
       (.CI(o_out1__59_carry_n_0),
        .CO({o_out1__59_carry__0_n_0,o_out1__59_carry__0_n_1,o_out1__59_carry__0_n_2,o_out1__59_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(o_out1__86_carry__0_i_6__1_0),
        .O({\b13_buffer2_reg[7] ,o_out1__59_carry__0_n_7}),
        .S(o_out1__86_carry__0_i_6__1_1));
  LUT4 #(
    .INIT(16'h7000)) 
    o_out1__59_carry__0_i_1__4
       (.I0(Q[7]),
        .I1(o_out1__59_carry__1_1[5]),
        .I2(Q[6]),
        .I3(o_out1__59_carry__1_1[6]),
        .O(\o_y_reg[7]_1 [3]));
  LUT4 #(
    .INIT(16'h7000)) 
    o_out1__59_carry__0_i_2__4
       (.I0(Q[7]),
        .I1(o_out1__59_carry__1_1[4]),
        .I2(Q[6]),
        .I3(o_out1__59_carry__1_1[5]),
        .O(\o_y_reg[7]_1 [2]));
  LUT4 #(
    .INIT(16'h7000)) 
    o_out1__59_carry__0_i_3__4
       (.I0(Q[7]),
        .I1(o_out1__59_carry__1_1[3]),
        .I2(Q[6]),
        .I3(o_out1__59_carry__1_1[4]),
        .O(\o_y_reg[7]_1 [1]));
  LUT4 #(
    .INIT(16'h7000)) 
    o_out1__59_carry__0_i_4__4
       (.I0(Q[7]),
        .I1(o_out1__59_carry__1_1[2]),
        .I2(Q[6]),
        .I3(o_out1__59_carry__1_1[3]),
        .O(\o_y_reg[7]_1 [0]));
  CARRY4 o_out1__59_carry__1
       (.CI(o_out1__59_carry__0_n_0),
        .CO({NLW_o_out1__59_carry__1_CO_UNCONNECTED[3:1],o_out1__59_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,o_out1__86_carry__1_i_3__1}),
        .O({NLW_o_out1__59_carry__1_O_UNCONNECTED[3:2],o_out1__59_carry__1_n_6,\b13_buffer2_reg[7]_0 }),
        .S({1'b0,1'b0,1'b1,o_out1__86_carry__1_i_3__1_0}));
  LUT4 #(
    .INIT(16'h0777)) 
    o_out1__59_carry__1_i_1__4
       (.I0(Q[7]),
        .I1(o_out1__59_carry__1_1[6]),
        .I2(Q[6]),
        .I3(o_out1__59_carry__1_1[7]),
        .O(\o_y_reg[7]_2 ));
  LUT4 #(
    .INIT(16'hE53F)) 
    o_out1__59_carry__1_i_2__4
       (.I0(Q[6]),
        .I1(o_out1__59_carry__1_1[6]),
        .I2(Q[7]),
        .I3(o_out1__59_carry__1_1[7]),
        .O(\o_y_reg[6]_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    o_out1__59_carry_i_1__4
       (.I0(Q[7]),
        .I1(o_out1__59_carry__1_1[1]),
        .O(\o_y_reg[7]_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    o_out1__59_carry_i_5__4
       (.I0(Q[7]),
        .I1(o_out1__59_carry__1_1[1]),
        .I2(Q[6]),
        .I3(o_out1__59_carry__1_1[2]),
        .O(\o_y_reg[7]_3 [1]));
  LUT4 #(
    .INIT(16'h8777)) 
    o_out1__59_carry_i_6__4
       (.I0(Q[7]),
        .I1(o_out1__59_carry__1_1[0]),
        .I2(Q[6]),
        .I3(o_out1__59_carry__1_1[1]),
        .O(\o_y_reg[7]_3 [0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 o_out1__86_carry
       (.CI(1'b0),
        .CO({o_out1__86_carry_n_0,o_out1__86_carry_n_1,o_out1__86_carry_n_2,o_out1__86_carry_n_3}),
        .CYINIT(1'b0),
        .DI({o_out1__86_carry_i_1__1_n_0,o_out1__86_carry_i_2__1_n_0,o_out1__86_carry_i_3__1_n_0,o_out1__86_carry_i_4__1_n_0}),
        .O({o_out1__86_carry_n_4,o_out1__86_carry_n_5,o_out1__86_carry_n_6,o_out1__86_carry_n_7}),
        .S({o_out1__86_carry_i_5__1_n_0,o_out1__86_carry_i_6__1_n_0,o_out1__86_carry_i_7__1_n_0,o_out1__86_carry_i_8__1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 o_out1__86_carry__0
       (.CI(o_out1__86_carry_n_0),
        .CO({o_out1__86_carry__0_n_0,o_out1__86_carry__0_n_1,o_out1__86_carry__0_n_2,o_out1__86_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({o_out1__86_carry__0_i_1__1_n_0,o_out1__86_carry__0_i_2__1_n_0,o_out1__86_carry__0_i_3__1_n_0,o_out1__86_carry__0_i_4__1_n_0}),
        .O({o_out1__86_carry__0_n_4,o_out1__86_carry__0_n_5,o_out1__86_carry__0_n_6,o_out1__86_carry__0_n_7}),
        .S({o_out1__86_carry__0_i_5__1_n_0,o_out1__86_carry__0_i_6__1_n_0,o_out1__86_carry__0_i_7__1_n_0,o_out1__86_carry__0_i_8__1_n_0}));
  LUT3 #(
    .INIT(8'hE8)) 
    o_out1__86_carry__0_i_1__1
       (.I0(o_out1__59_carry__0_n_7),
        .I1(o_out1__0_carry__1_n_1),
        .I2(o_out1__30_carry__0_n_4),
        .O(o_out1__86_carry__0_i_1__1_n_0));
  (* HLUTNM = "lutpair9" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    o_out1__86_carry__0_i_2__1
       (.I0(o_out1__59_carry_n_4),
        .I1(o_out1__0_carry__1_n_6),
        .I2(o_out1__30_carry__0_n_5),
        .O(o_out1__86_carry__0_i_2__1_n_0));
  (* HLUTNM = "lutpair8" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    o_out1__86_carry__0_i_3__1
       (.I0(o_out1__59_carry_n_5),
        .I1(o_out1__0_carry__1_n_7),
        .I2(o_out1__30_carry__0_n_6),
        .O(o_out1__86_carry__0_i_3__1_n_0));
  (* HLUTNM = "lutpair7" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    o_out1__86_carry__0_i_4__1
       (.I0(o_out1__59_carry_n_6),
        .I1(o_out1__0_carry__0_n_4),
        .I2(o_out1__30_carry__0_n_7),
        .O(o_out1__86_carry__0_i_4__1_n_0));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    o_out1__86_carry__0_i_5__1
       (.I0(o_out1__30_carry__0_n_4),
        .I1(o_out1__0_carry__1_n_1),
        .I2(o_out1__59_carry__0_n_7),
        .I3(\b13_buffer2_reg[5]_0 [0]),
        .I4(\b13_buffer2_reg[7] [0]),
        .O(o_out1__86_carry__0_i_5__1_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    o_out1__86_carry__0_i_6__1
       (.I0(o_out1__86_carry__0_i_2__1_n_0),
        .I1(o_out1__59_carry__0_n_7),
        .I2(o_out1__0_carry__1_n_1),
        .I3(o_out1__30_carry__0_n_4),
        .O(o_out1__86_carry__0_i_6__1_n_0));
  (* HLUTNM = "lutpair9" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    o_out1__86_carry__0_i_7__1
       (.I0(o_out1__59_carry_n_4),
        .I1(o_out1__0_carry__1_n_6),
        .I2(o_out1__30_carry__0_n_5),
        .I3(o_out1__86_carry__0_i_3__1_n_0),
        .O(o_out1__86_carry__0_i_7__1_n_0));
  (* HLUTNM = "lutpair8" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    o_out1__86_carry__0_i_8__1
       (.I0(o_out1__59_carry_n_5),
        .I1(o_out1__0_carry__1_n_7),
        .I2(o_out1__30_carry__0_n_6),
        .I3(o_out1__86_carry__0_i_4__1_n_0),
        .O(o_out1__86_carry__0_i_8__1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 o_out1__86_carry__1
       (.CI(o_out1__86_carry__0_n_0),
        .CO({NLW_o_out1__86_carry__1_CO_UNCONNECTED[3],o_out1__86_carry__1_n_1,o_out1__86_carry__1_n_2,o_out1__86_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\b13_buffer2_reg[7]_0 ,o_out1__86_carry__1_i_1__1_n_0,o_out1__86_carry__1_i_2__1_n_0}),
        .O({o_out1__86_carry__1_n_4,o_out1__86_carry__1_i_5__1}),
        .S({o_out1__59_carry__1_n_6,\o_out_reg[15]_2 }));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__86_carry__1_i_1__1
       (.I0(\b13_buffer2_reg[7] [1]),
        .I1(\b13_buffer2_reg[5]_0 [1]),
        .O(o_out1__86_carry__1_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__86_carry__1_i_2__1
       (.I0(\b13_buffer2_reg[7] [0]),
        .I1(\b13_buffer2_reg[5]_0 [0]),
        .O(o_out1__86_carry__1_i_2__1_n_0));
  LUT3 #(
    .INIT(8'h78)) 
    o_out1__86_carry__1_i_3__4
       (.I0(o_out1__86_carry__1_2),
        .I1(o_out1__86_carry__1_1[2]),
        .I2(o_out1__86_carry__1_3),
        .O(o_out1__59_carry__1_0[2]));
  LUT4 #(
    .INIT(16'h8778)) 
    o_out1__86_carry__1_i_4__4
       (.I0(o_out1__86_carry__1_0[1]),
        .I1(o_out1__86_carry__1_1[1]),
        .I2(o_out1__86_carry__1_2),
        .I3(o_out1__86_carry__1_1[2]),
        .O(o_out1__59_carry__1_0[1]));
  LUT4 #(
    .INIT(16'h8778)) 
    o_out1__86_carry__1_i_5__4
       (.I0(o_out1__86_carry__1_0[0]),
        .I1(o_out1__86_carry__1_1[0]),
        .I2(o_out1__86_carry__1_0[1]),
        .I3(o_out1__86_carry__1_1[1]),
        .O(o_out1__59_carry__1_0[0]));
  (* HLUTNM = "lutpair6" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    o_out1__86_carry_i_1__1
       (.I0(o_out1__59_carry_n_7),
        .I1(o_out1__0_carry__0_n_5),
        .I2(o_out1__30_carry_n_4),
        .O(o_out1__86_carry_i_1__1_n_0));
  (* HLUTNM = "lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__86_carry_i_2__1
       (.I0(o_out1__30_carry_n_5),
        .I1(o_out1__0_carry__0_n_6),
        .O(o_out1__86_carry_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__86_carry_i_3__1
       (.I0(o_out1__30_carry_n_6),
        .I1(o_out1__0_carry__0_n_7),
        .O(o_out1__86_carry_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__86_carry_i_4__1
       (.I0(o_out1__0_carry_n_4),
        .I1(o_out1__30_carry_n_7),
        .O(o_out1__86_carry_i_4__1_n_0));
  (* HLUTNM = "lutpair7" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    o_out1__86_carry_i_5__1
       (.I0(o_out1__59_carry_n_6),
        .I1(o_out1__0_carry__0_n_4),
        .I2(o_out1__30_carry__0_n_7),
        .I3(o_out1__86_carry_i_1__1_n_0),
        .O(o_out1__86_carry_i_5__1_n_0));
  (* HLUTNM = "lutpair6" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    o_out1__86_carry_i_6__1
       (.I0(o_out1__59_carry_n_7),
        .I1(o_out1__0_carry__0_n_5),
        .I2(o_out1__30_carry_n_4),
        .I3(o_out1__86_carry_i_2__1_n_0),
        .O(o_out1__86_carry_i_6__1_n_0));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    o_out1__86_carry_i_7__1
       (.I0(o_out1__30_carry_n_5),
        .I1(o_out1__0_carry__0_n_6),
        .I2(o_out1__0_carry__0_n_7),
        .I3(o_out1__30_carry_n_6),
        .O(o_out1__86_carry_i_7__1_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    o_out1__86_carry_i_8__1
       (.I0(o_out1__30_carry_n_7),
        .I1(o_out1__0_carry_n_4),
        .I2(o_out1__0_carry__0_n_7),
        .I3(o_out1__30_carry_n_6),
        .O(o_out1__86_carry_i_8__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[11]_i_2__1 
       (.I0(o_out1__86_carry__0_n_4),
        .I1(m_axis_data[11]),
        .O(\o_out[11]_i_2__1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[11]_i_3__1 
       (.I0(o_out1__86_carry__0_n_5),
        .I1(m_axis_data[10]),
        .O(\o_out[11]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[11]_i_4__1 
       (.I0(o_out1__86_carry__0_n_6),
        .I1(m_axis_data[9]),
        .O(\o_out[11]_i_4__1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[11]_i_5__1 
       (.I0(o_out1__86_carry__0_n_7),
        .I1(m_axis_data[8]),
        .O(\o_out[11]_i_5__1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[15]_i_2__1 
       (.I0(m_axis_data[15]),
        .I1(o_out1__86_carry__1_n_4),
        .O(\o_out_reg[15]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[15]_i_3__5 
       (.I0(\o_out_reg[15]_4 [2]),
        .I1(\o_out_reg[15]_6 [2]),
        .O(\o_out[15]_i_3__5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[15]_i_4__4 
       (.I0(\o_out_reg[15]_4 [1]),
        .I1(\o_out_reg[15]_6 [1]),
        .O(\o_out[15]_i_4__4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[15]_i_5__4 
       (.I0(\o_out_reg[15]_4 [0]),
        .I1(\o_out_reg[15]_6 [0]),
        .O(\o_out[15]_i_5__4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \o_out[3]_i_2__1 
       (.I0(o_out1__30_carry_n_7),
        .I1(o_out1__0_carry_n_4),
        .I2(m_axis_data[3]),
        .O(\o_out[3]_i_2__1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[3]_i_3__1 
       (.I0(o_out1__0_carry_n_5),
        .I1(m_axis_data[2]),
        .O(\o_out[3]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[3]_i_4__1 
       (.I0(o_out1__0_carry_n_6),
        .I1(m_axis_data[1]),
        .O(\o_out[3]_i_4__1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[3]_i_5__1 
       (.I0(o_out1__0_carry_n_7),
        .I1(m_axis_data[0]),
        .O(\o_out[3]_i_5__1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[7]_i_2__1 
       (.I0(o_out1__86_carry_n_4),
        .I1(m_axis_data[7]),
        .O(\o_out[7]_i_2__1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[7]_i_3__1 
       (.I0(o_out1__86_carry_n_5),
        .I1(m_axis_data[6]),
        .O(\o_out[7]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[7]_i_4__1 
       (.I0(o_out1__86_carry_n_6),
        .I1(m_axis_data[5]),
        .O(\o_out[7]_i_4__1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[7]_i_5__1 
       (.I0(o_out1__86_carry_n_7),
        .I1(m_axis_data[4]),
        .O(\o_out[7]_i_5__1_n_0 ));
  FDRE \o_out_reg[0] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[3]_i_1__1_n_7 ),
        .Q(m_axis_data[0]),
        .R(p_0_in));
  FDRE \o_out_reg[10] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[11]_i_1__1_n_5 ),
        .Q(m_axis_data[10]),
        .R(p_0_in));
  FDRE \o_out_reg[11] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[11]_i_1__1_n_4 ),
        .Q(m_axis_data[11]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \o_out_reg[11]_i_1__1 
       (.CI(\o_out_reg[7]_i_1__1_n_0 ),
        .CO({CO,\o_out_reg[11]_i_1__1_n_1 ,\o_out_reg[11]_i_1__1_n_2 ,\o_out_reg[11]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({o_out1__86_carry__0_n_4,o_out1__86_carry__0_n_5,o_out1__86_carry__0_n_6,o_out1__86_carry__0_n_7}),
        .O({\o_out_reg[11]_i_1__1_n_4 ,\o_out_reg[11]_i_1__1_n_5 ,\o_out_reg[11]_i_1__1_n_6 ,\o_out_reg[11]_i_1__1_n_7 }),
        .S({\o_out[11]_i_2__1_n_0 ,\o_out[11]_i_3__1_n_0 ,\o_out[11]_i_4__1_n_0 ,\o_out[11]_i_5__1_n_0 }));
  FDRE \o_out_reg[12] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(O[0]),
        .Q(m_axis_data[12]),
        .R(p_0_in));
  FDRE \o_out_reg[13] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(O[1]),
        .Q(m_axis_data[13]),
        .R(p_0_in));
  FDRE \o_out_reg[14] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(O[2]),
        .Q(m_axis_data[14]),
        .R(p_0_in));
  FDRE \o_out_reg[15] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(O[3]),
        .Q(m_axis_data[15]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \o_out_reg[15]_i_1__4 
       (.CI(\o_out_reg[15]_3 ),
        .CO({\NLW_o_out_reg[15]_i_1__4_CO_UNCONNECTED [3],\o_out_reg[15]_i_1__4_n_1 ,\o_out_reg[15]_i_1__4_n_2 ,\o_out_reg[15]_i_1__4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\o_out_reg[15]_4 }),
        .O(\o_out_reg[15]_1 ),
        .S({\o_out_reg[15]_5 ,\o_out[15]_i_3__5_n_0 ,\o_out[15]_i_4__4_n_0 ,\o_out[15]_i_5__4_n_0 }));
  FDRE \o_out_reg[1] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[3]_i_1__1_n_6 ),
        .Q(m_axis_data[1]),
        .R(p_0_in));
  FDRE \o_out_reg[2] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[3]_i_1__1_n_5 ),
        .Q(m_axis_data[2]),
        .R(p_0_in));
  FDRE \o_out_reg[3] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[3]_i_1__1_n_4 ),
        .Q(m_axis_data[3]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \o_out_reg[3]_i_1__1 
       (.CI(1'b0),
        .CO({\o_out_reg[3]_i_1__1_n_0 ,\o_out_reg[3]_i_1__1_n_1 ,\o_out_reg[3]_i_1__1_n_2 ,\o_out_reg[3]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({m_axis_data[3],o_out1__0_carry_n_5,o_out1__0_carry_n_6,o_out1__0_carry_n_7}),
        .O({\o_out_reg[3]_i_1__1_n_4 ,\o_out_reg[3]_i_1__1_n_5 ,\o_out_reg[3]_i_1__1_n_6 ,\o_out_reg[3]_i_1__1_n_7 }),
        .S({\o_out[3]_i_2__1_n_0 ,\o_out[3]_i_3__1_n_0 ,\o_out[3]_i_4__1_n_0 ,\o_out[3]_i_5__1_n_0 }));
  FDRE \o_out_reg[4] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[7]_i_1__1_n_7 ),
        .Q(m_axis_data[4]),
        .R(p_0_in));
  FDRE \o_out_reg[5] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[7]_i_1__1_n_6 ),
        .Q(m_axis_data[5]),
        .R(p_0_in));
  FDRE \o_out_reg[6] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[7]_i_1__1_n_5 ),
        .Q(m_axis_data[6]),
        .R(p_0_in));
  FDRE \o_out_reg[7] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[7]_i_1__1_n_4 ),
        .Q(m_axis_data[7]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \o_out_reg[7]_i_1__1 
       (.CI(\o_out_reg[3]_i_1__1_n_0 ),
        .CO({\o_out_reg[7]_i_1__1_n_0 ,\o_out_reg[7]_i_1__1_n_1 ,\o_out_reg[7]_i_1__1_n_2 ,\o_out_reg[7]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({o_out1__86_carry_n_4,o_out1__86_carry_n_5,o_out1__86_carry_n_6,o_out1__86_carry_n_7}),
        .O({\o_out_reg[7]_i_1__1_n_4 ,\o_out_reg[7]_i_1__1_n_5 ,\o_out_reg[7]_i_1__1_n_6 ,\o_out_reg[7]_i_1__1_n_7 }),
        .S({\o_out[7]_i_2__1_n_0 ,\o_out[7]_i_3__1_n_0 ,\o_out[7]_i_4__1_n_0 ,\o_out[7]_i_5__1_n_0 }));
  FDRE \o_out_reg[8] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[11]_i_1__1_n_7 ),
        .Q(m_axis_data[8]),
        .R(p_0_in));
  FDRE \o_out_reg[9] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[11]_i_1__1_n_6 ),
        .Q(m_axis_data[9]),
        .R(p_0_in));
  FDRE \o_y_reg[0] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_y_reg[7]_4 [0]),
        .Q(Q[0]),
        .R(p_0_in));
  FDRE \o_y_reg[1] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_y_reg[7]_4 [1]),
        .Q(Q[1]),
        .R(p_0_in));
  FDRE \o_y_reg[2] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_y_reg[7]_4 [2]),
        .Q(Q[2]),
        .R(p_0_in));
  FDRE \o_y_reg[3] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_y_reg[7]_4 [3]),
        .Q(Q[3]),
        .R(p_0_in));
  FDRE \o_y_reg[4] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_y_reg[7]_4 [4]),
        .Q(Q[4]),
        .R(p_0_in));
  FDRE \o_y_reg[5] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_y_reg[7]_4 [5]),
        .Q(Q[5]),
        .R(p_0_in));
  FDRE \o_y_reg[6] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_y_reg[7]_4 [6]),
        .Q(Q[6]),
        .R(p_0_in));
  FDRE \o_y_reg[7] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_y_reg[7]_4 [7]),
        .Q(Q[7]),
        .R(p_0_in));
endmodule

(* ORIG_REF_NAME = "MAC" *) 
module design_1_SystolicArrayAxiWrap_0_0_MAC_3
   (m_axis_data,
    \o_y_reg[5]_0 ,
    \o_y_reg[5]_1 ,
    \o_y_reg[7]_0 ,
    \o_y_reg[7]_1 ,
    o_out1__86_carry__1_i_5__2,
    S,
    Q,
    \a31_buffer2_reg[1] ,
    \o_out_reg[15]_0 ,
    DI,
    \o_x_reg[1]_0 ,
    \o_x_reg[5]_0 ,
    \o_x_reg[0]_0 ,
    \o_x_reg[4]_0 ,
    \o_x_reg[5]_1 ,
    \o_x_reg[5]_2 ,
    \o_x_reg[6]_0 ,
    \o_x_reg[0]_1 ,
    \o_y_reg[2]_0 ,
    \a31_buffer2_reg[3] ,
    \o_y_reg[5]_2 ,
    \o_y_reg[3]_0 ,
    \o_y_reg[7]_2 ,
    \o_y_reg[2]_1 ,
    \a31_buffer2_reg[1]_0 ,
    \o_y_reg[5]_3 ,
    \a31_buffer2_reg[1]_1 ,
    \o_y_reg[7]_3 ,
    \o_y_reg[7]_4 ,
    \o_out_reg[11]_0 ,
    O,
    \o_x_reg[1]_1 ,
    \o_x_reg[5]_3 ,
    \o_y_reg[1]_0 ,
    \o_y_reg[1]_1 ,
    \o_y_reg[4]_0 ,
    \o_y_reg[4]_1 ,
    \a31_buffer2_reg[5] ,
    \o_y_reg[6]_0 ,
    o_out1__59_carry__1_0,
    p_0_in,
    axi_clk,
    \o_out_reg[15]_1 ,
    \o_out_reg[3]_0 ,
    \o_out_reg[3]_1 ,
    o_out1__86_carry_i_8__2_0,
    o_out1__86_carry_i_8__2_1,
    o_out1__86_carry__0_i_3__2_0,
    o_out1__86_carry__0_i_3__2_1,
    \o_out[3]_i_2__2_0 ,
    \o_out[3]_i_2__2_1 ,
    o_out1__86_carry__0_i_4__2_0,
    o_out1__86_carry__0_i_4__2_1,
    o_out1__86_carry__1_i_5__2_0,
    o_out1__86_carry__1_i_5__2_1,
    o_out1__86_carry_i_1__2_0,
    o_out1__86_carry_i_1__2_1,
    o_out1__86_carry__0_i_6__2_0,
    o_out1__86_carry__0_i_6__2_1,
    o_out1__86_carry__1_i_3__2,
    o_out1__86_carry__1_i_3__2_0,
    \o_out_reg[15]_2 ,
    o_out1__59_carry_0,
    o_out1__59_carry__1_1,
    CO,
    \o_out_reg[15]_3 ,
    \o_out_reg[15]_4 ,
    o_out1__86_carry__1_0,
    o_out1__86_carry__1_1,
    o_out1__86_carry__1_2,
    o_out1__86_carry__1_3,
    \o_out_reg[15]_5 ,
    \o_x_reg[7]_0 ,
    D);
  output [15:0]m_axis_data;
  output [0:0]\o_y_reg[5]_0 ;
  output [1:0]\o_y_reg[5]_1 ;
  output [2:0]\o_y_reg[7]_0 ;
  output [0:0]\o_y_reg[7]_1 ;
  output [2:0]o_out1__86_carry__1_i_5__2;
  output [1:0]S;
  output [7:0]Q;
  output [3:0]\a31_buffer2_reg[1] ;
  output [0:0]\o_out_reg[15]_0 ;
  output [1:0]DI;
  output [1:0]\o_x_reg[1]_0 ;
  output \o_x_reg[5]_0 ;
  output [0:0]\o_x_reg[0]_0 ;
  output \o_x_reg[4]_0 ;
  output \o_x_reg[5]_1 ;
  output \o_x_reg[5]_2 ;
  output \o_x_reg[6]_0 ;
  output [1:0]\o_x_reg[0]_1 ;
  output [3:0]\o_y_reg[2]_0 ;
  output [2:0]\a31_buffer2_reg[3] ;
  output [3:0]\o_y_reg[5]_2 ;
  output [2:0]\o_y_reg[3]_0 ;
  output [2:0]\o_y_reg[7]_2 ;
  output [1:0]\o_y_reg[2]_1 ;
  output [3:0]\a31_buffer2_reg[1]_0 ;
  output [1:0]\o_y_reg[5]_3 ;
  output [3:0]\a31_buffer2_reg[1]_1 ;
  output [3:0]\o_y_reg[7]_3 ;
  output [0:0]\o_y_reg[7]_4 ;
  output [0:0]\o_out_reg[11]_0 ;
  output [3:0]O;
  output [2:0]\o_x_reg[1]_1 ;
  output [3:0]\o_x_reg[5]_3 ;
  output [3:0]\o_y_reg[1]_0 ;
  output [1:0]\o_y_reg[1]_1 ;
  output [3:0]\o_y_reg[4]_0 ;
  output [1:0]\o_y_reg[4]_1 ;
  output [3:0]\a31_buffer2_reg[5] ;
  output [0:0]\o_y_reg[6]_0 ;
  output [2:0]o_out1__59_carry__1_0;
  input p_0_in;
  input axi_clk;
  input [3:0]\o_out_reg[15]_1 ;
  input [2:0]\o_out_reg[3]_0 ;
  input [3:0]\o_out_reg[3]_1 ;
  input [3:0]o_out1__86_carry_i_8__2_0;
  input [3:0]o_out1__86_carry_i_8__2_1;
  input [1:0]o_out1__86_carry__0_i_3__2_0;
  input [1:0]o_out1__86_carry__0_i_3__2_1;
  input [2:0]\o_out[3]_i_2__2_0 ;
  input [3:0]\o_out[3]_i_2__2_1 ;
  input [3:0]o_out1__86_carry__0_i_4__2_0;
  input [3:0]o_out1__86_carry__0_i_4__2_1;
  input [1:0]o_out1__86_carry__1_i_5__2_0;
  input [1:0]o_out1__86_carry__1_i_5__2_1;
  input [2:0]o_out1__86_carry_i_1__2_0;
  input [3:0]o_out1__86_carry_i_1__2_1;
  input [3:0]o_out1__86_carry__0_i_6__2_0;
  input [3:0]o_out1__86_carry__0_i_6__2_1;
  input [0:0]o_out1__86_carry__1_i_3__2;
  input [0:0]o_out1__86_carry__1_i_3__2_0;
  input [2:0]\o_out_reg[15]_2 ;
  input [7:0]o_out1__59_carry_0;
  input [7:0]o_out1__59_carry__1_1;
  input [0:0]CO;
  input [2:0]\o_out_reg[15]_3 ;
  input [0:0]\o_out_reg[15]_4 ;
  input [1:0]o_out1__86_carry__1_0;
  input [2:0]o_out1__86_carry__1_1;
  input [0:0]o_out1__86_carry__1_2;
  input [0:0]o_out1__86_carry__1_3;
  input [2:0]\o_out_reg[15]_5 ;
  input [7:0]\o_x_reg[7]_0 ;
  input [7:0]D;

  wire [0:0]CO;
  wire [7:0]D;
  wire [1:0]DI;
  wire [3:0]O;
  wire [7:0]Q;
  wire [1:0]S;
  wire [3:0]\a31_buffer2_reg[1] ;
  wire [3:0]\a31_buffer2_reg[1]_0 ;
  wire [3:0]\a31_buffer2_reg[1]_1 ;
  wire [2:0]\a31_buffer2_reg[3] ;
  wire [3:0]\a31_buffer2_reg[5] ;
  wire axi_clk;
  wire [15:0]m_axis_data;
  wire o_out1__0_carry__0_i_10__5_n_0;
  wire o_out1__0_carry__0_i_11__5_n_0;
  wire o_out1__0_carry__0_i_12__5_n_0;
  wire o_out1__0_carry__0_i_9__5_n_0;
  wire o_out1__0_carry__0_n_0;
  wire o_out1__0_carry__0_n_1;
  wire o_out1__0_carry__0_n_2;
  wire o_out1__0_carry__0_n_3;
  wire o_out1__0_carry__0_n_4;
  wire o_out1__0_carry__0_n_5;
  wire o_out1__0_carry__0_n_6;
  wire o_out1__0_carry__0_n_7;
  wire o_out1__0_carry__1_n_1;
  wire o_out1__0_carry__1_n_3;
  wire o_out1__0_carry__1_n_6;
  wire o_out1__0_carry__1_n_7;
  wire o_out1__0_carry_n_0;
  wire o_out1__0_carry_n_1;
  wire o_out1__0_carry_n_2;
  wire o_out1__0_carry_n_3;
  wire o_out1__0_carry_n_4;
  wire o_out1__0_carry_n_5;
  wire o_out1__0_carry_n_6;
  wire o_out1__0_carry_n_7;
  wire o_out1__30_carry__0_i_10__5_n_0;
  wire o_out1__30_carry__0_i_11__5_n_0;
  wire o_out1__30_carry__0_i_12__5_n_0;
  wire o_out1__30_carry__0_i_9__5_n_0;
  wire o_out1__30_carry__0_n_0;
  wire o_out1__30_carry__0_n_1;
  wire o_out1__30_carry__0_n_2;
  wire o_out1__30_carry__0_n_3;
  wire o_out1__30_carry__0_n_4;
  wire o_out1__30_carry__0_n_5;
  wire o_out1__30_carry__0_n_6;
  wire o_out1__30_carry__0_n_7;
  wire o_out1__30_carry__1_n_3;
  wire o_out1__30_carry_n_0;
  wire o_out1__30_carry_n_1;
  wire o_out1__30_carry_n_2;
  wire o_out1__30_carry_n_3;
  wire o_out1__30_carry_n_4;
  wire o_out1__30_carry_n_5;
  wire o_out1__30_carry_n_6;
  wire o_out1__30_carry_n_7;
  wire [7:0]o_out1__59_carry_0;
  wire o_out1__59_carry__0_n_0;
  wire o_out1__59_carry__0_n_1;
  wire o_out1__59_carry__0_n_2;
  wire o_out1__59_carry__0_n_3;
  wire o_out1__59_carry__0_n_7;
  wire [2:0]o_out1__59_carry__1_0;
  wire [7:0]o_out1__59_carry__1_1;
  wire o_out1__59_carry__1_n_3;
  wire o_out1__59_carry__1_n_6;
  wire o_out1__59_carry_n_0;
  wire o_out1__59_carry_n_1;
  wire o_out1__59_carry_n_2;
  wire o_out1__59_carry_n_3;
  wire o_out1__59_carry_n_4;
  wire o_out1__59_carry_n_5;
  wire o_out1__59_carry_n_6;
  wire o_out1__59_carry_n_7;
  wire o_out1__86_carry__0_i_1__2_n_0;
  wire o_out1__86_carry__0_i_2__2_n_0;
  wire [1:0]o_out1__86_carry__0_i_3__2_0;
  wire [1:0]o_out1__86_carry__0_i_3__2_1;
  wire o_out1__86_carry__0_i_3__2_n_0;
  wire [3:0]o_out1__86_carry__0_i_4__2_0;
  wire [3:0]o_out1__86_carry__0_i_4__2_1;
  wire o_out1__86_carry__0_i_4__2_n_0;
  wire o_out1__86_carry__0_i_5__2_n_0;
  wire [3:0]o_out1__86_carry__0_i_6__2_0;
  wire [3:0]o_out1__86_carry__0_i_6__2_1;
  wire o_out1__86_carry__0_i_6__2_n_0;
  wire o_out1__86_carry__0_i_7__2_n_0;
  wire o_out1__86_carry__0_i_8__2_n_0;
  wire o_out1__86_carry__0_n_0;
  wire o_out1__86_carry__0_n_1;
  wire o_out1__86_carry__0_n_2;
  wire o_out1__86_carry__0_n_3;
  wire o_out1__86_carry__0_n_4;
  wire o_out1__86_carry__0_n_5;
  wire o_out1__86_carry__0_n_6;
  wire o_out1__86_carry__0_n_7;
  wire [1:0]o_out1__86_carry__1_0;
  wire [2:0]o_out1__86_carry__1_1;
  wire [0:0]o_out1__86_carry__1_2;
  wire [0:0]o_out1__86_carry__1_3;
  wire o_out1__86_carry__1_i_1__2_n_0;
  wire o_out1__86_carry__1_i_2__2_n_0;
  wire [0:0]o_out1__86_carry__1_i_3__2;
  wire [0:0]o_out1__86_carry__1_i_3__2_0;
  wire [2:0]o_out1__86_carry__1_i_5__2;
  wire [1:0]o_out1__86_carry__1_i_5__2_0;
  wire [1:0]o_out1__86_carry__1_i_5__2_1;
  wire o_out1__86_carry__1_n_1;
  wire o_out1__86_carry__1_n_2;
  wire o_out1__86_carry__1_n_3;
  wire o_out1__86_carry__1_n_4;
  wire [2:0]o_out1__86_carry_i_1__2_0;
  wire [3:0]o_out1__86_carry_i_1__2_1;
  wire o_out1__86_carry_i_1__2_n_0;
  wire o_out1__86_carry_i_2__2_n_0;
  wire o_out1__86_carry_i_3__2_n_0;
  wire o_out1__86_carry_i_4__2_n_0;
  wire o_out1__86_carry_i_5__2_n_0;
  wire o_out1__86_carry_i_6__2_n_0;
  wire o_out1__86_carry_i_7__2_n_0;
  wire [3:0]o_out1__86_carry_i_8__2_0;
  wire [3:0]o_out1__86_carry_i_8__2_1;
  wire o_out1__86_carry_i_8__2_n_0;
  wire o_out1__86_carry_n_0;
  wire o_out1__86_carry_n_1;
  wire o_out1__86_carry_n_2;
  wire o_out1__86_carry_n_3;
  wire o_out1__86_carry_n_4;
  wire o_out1__86_carry_n_5;
  wire o_out1__86_carry_n_6;
  wire o_out1__86_carry_n_7;
  wire \o_out[11]_i_2__2_n_0 ;
  wire \o_out[11]_i_3__2_n_0 ;
  wire \o_out[11]_i_4__2_n_0 ;
  wire \o_out[11]_i_5__2_n_0 ;
  wire \o_out[15]_i_3__6_n_0 ;
  wire \o_out[15]_i_4__5_n_0 ;
  wire \o_out[15]_i_5__5_n_0 ;
  wire [2:0]\o_out[3]_i_2__2_0 ;
  wire [3:0]\o_out[3]_i_2__2_1 ;
  wire \o_out[3]_i_2__2_n_0 ;
  wire \o_out[3]_i_3__2_n_0 ;
  wire \o_out[3]_i_4__2_n_0 ;
  wire \o_out[3]_i_5__2_n_0 ;
  wire \o_out[7]_i_2__2_n_0 ;
  wire \o_out[7]_i_3__2_n_0 ;
  wire \o_out[7]_i_4__2_n_0 ;
  wire \o_out[7]_i_5__2_n_0 ;
  wire [0:0]\o_out_reg[11]_0 ;
  wire \o_out_reg[11]_i_1__2_n_1 ;
  wire \o_out_reg[11]_i_1__2_n_2 ;
  wire \o_out_reg[11]_i_1__2_n_3 ;
  wire \o_out_reg[11]_i_1__2_n_4 ;
  wire \o_out_reg[11]_i_1__2_n_5 ;
  wire \o_out_reg[11]_i_1__2_n_6 ;
  wire \o_out_reg[11]_i_1__2_n_7 ;
  wire [0:0]\o_out_reg[15]_0 ;
  wire [3:0]\o_out_reg[15]_1 ;
  wire [2:0]\o_out_reg[15]_2 ;
  wire [2:0]\o_out_reg[15]_3 ;
  wire [0:0]\o_out_reg[15]_4 ;
  wire [2:0]\o_out_reg[15]_5 ;
  wire \o_out_reg[15]_i_1__5_n_1 ;
  wire \o_out_reg[15]_i_1__5_n_2 ;
  wire \o_out_reg[15]_i_1__5_n_3 ;
  wire [2:0]\o_out_reg[3]_0 ;
  wire [3:0]\o_out_reg[3]_1 ;
  wire \o_out_reg[3]_i_1__2_n_0 ;
  wire \o_out_reg[3]_i_1__2_n_1 ;
  wire \o_out_reg[3]_i_1__2_n_2 ;
  wire \o_out_reg[3]_i_1__2_n_3 ;
  wire \o_out_reg[3]_i_1__2_n_4 ;
  wire \o_out_reg[3]_i_1__2_n_5 ;
  wire \o_out_reg[3]_i_1__2_n_6 ;
  wire \o_out_reg[3]_i_1__2_n_7 ;
  wire \o_out_reg[7]_i_1__2_n_0 ;
  wire \o_out_reg[7]_i_1__2_n_1 ;
  wire \o_out_reg[7]_i_1__2_n_2 ;
  wire \o_out_reg[7]_i_1__2_n_3 ;
  wire \o_out_reg[7]_i_1__2_n_4 ;
  wire \o_out_reg[7]_i_1__2_n_5 ;
  wire \o_out_reg[7]_i_1__2_n_6 ;
  wire \o_out_reg[7]_i_1__2_n_7 ;
  wire [0:0]\o_x_reg[0]_0 ;
  wire [1:0]\o_x_reg[0]_1 ;
  wire [1:0]\o_x_reg[1]_0 ;
  wire [2:0]\o_x_reg[1]_1 ;
  wire \o_x_reg[4]_0 ;
  wire \o_x_reg[5]_0 ;
  wire \o_x_reg[5]_1 ;
  wire \o_x_reg[5]_2 ;
  wire [3:0]\o_x_reg[5]_3 ;
  wire \o_x_reg[6]_0 ;
  wire [7:0]\o_x_reg[7]_0 ;
  wire [3:0]\o_y_reg[1]_0 ;
  wire [1:0]\o_y_reg[1]_1 ;
  wire [3:0]\o_y_reg[2]_0 ;
  wire [1:0]\o_y_reg[2]_1 ;
  wire [2:0]\o_y_reg[3]_0 ;
  wire [3:0]\o_y_reg[4]_0 ;
  wire [1:0]\o_y_reg[4]_1 ;
  wire [0:0]\o_y_reg[5]_0 ;
  wire [1:0]\o_y_reg[5]_1 ;
  wire [3:0]\o_y_reg[5]_2 ;
  wire [1:0]\o_y_reg[5]_3 ;
  wire [0:0]\o_y_reg[6]_0 ;
  wire [2:0]\o_y_reg[7]_0 ;
  wire [0:0]\o_y_reg[7]_1 ;
  wire [2:0]\o_y_reg[7]_2 ;
  wire [3:0]\o_y_reg[7]_3 ;
  wire [0:0]\o_y_reg[7]_4 ;
  wire \o_y_reg_n_0_[0] ;
  wire \o_y_reg_n_0_[1] ;
  wire \o_y_reg_n_0_[2] ;
  wire \o_y_reg_n_0_[3] ;
  wire \o_y_reg_n_0_[4] ;
  wire \o_y_reg_n_0_[5] ;
  wire \o_y_reg_n_0_[6] ;
  wire \o_y_reg_n_0_[7] ;
  wire p_0_in;
  wire [3:1]NLW_o_out1__0_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_o_out1__0_carry__1_O_UNCONNECTED;
  wire [3:1]NLW_o_out1__30_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_o_out1__30_carry__1_O_UNCONNECTED;
  wire [3:1]NLW_o_out1__59_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_o_out1__59_carry__1_O_UNCONNECTED;
  wire [3:3]NLW_o_out1__86_carry__1_CO_UNCONNECTED;
  wire [3:3]\NLW_o_out_reg[15]_i_1__5_CO_UNCONNECTED ;

  CARRY4 o_out1__0_carry
       (.CI(1'b0),
        .CO({o_out1__0_carry_n_0,o_out1__0_carry_n_1,o_out1__0_carry_n_2,o_out1__0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({\o_out_reg[3]_0 ,1'b0}),
        .O({o_out1__0_carry_n_4,o_out1__0_carry_n_5,o_out1__0_carry_n_6,o_out1__0_carry_n_7}),
        .S(\o_out_reg[3]_1 ));
  CARRY4 o_out1__0_carry__0
       (.CI(o_out1__0_carry_n_0),
        .CO({o_out1__0_carry__0_n_0,o_out1__0_carry__0_n_1,o_out1__0_carry__0_n_2,o_out1__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(o_out1__86_carry_i_8__2_0),
        .O({o_out1__0_carry__0_n_4,o_out1__0_carry__0_n_5,o_out1__0_carry__0_n_6,o_out1__0_carry__0_n_7}),
        .S(o_out1__86_carry_i_8__2_1));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__0_carry__0_i_10__5
       (.I0(\o_y_reg_n_0_[0] ),
        .I1(o_out1__59_carry__1_1[6]),
        .O(o_out1__0_carry__0_i_10__5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__0_carry__0_i_11__5
       (.I0(\o_y_reg_n_0_[0] ),
        .I1(o_out1__59_carry__1_1[5]),
        .O(o_out1__0_carry__0_i_11__5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__0_carry__0_i_12__5
       (.I0(\o_y_reg_n_0_[0] ),
        .I1(o_out1__59_carry__1_1[4]),
        .O(o_out1__0_carry__0_i_12__5_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    o_out1__0_carry__0_i_1__5
       (.I0(\o_y_reg_n_0_[2] ),
        .I1(o_out1__59_carry__1_1[4]),
        .I2(\o_y_reg_n_0_[1] ),
        .I3(o_out1__59_carry__1_1[5]),
        .I4(\o_y_reg_n_0_[0] ),
        .I5(o_out1__59_carry__1_1[6]),
        .O(\o_y_reg[2]_0 [3]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    o_out1__0_carry__0_i_2__5
       (.I0(\o_y_reg_n_0_[2] ),
        .I1(o_out1__59_carry__1_1[3]),
        .I2(\o_y_reg_n_0_[1] ),
        .I3(o_out1__59_carry__1_1[4]),
        .I4(\o_y_reg_n_0_[0] ),
        .I5(o_out1__59_carry__1_1[5]),
        .O(\o_y_reg[2]_0 [2]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    o_out1__0_carry__0_i_3__5
       (.I0(\o_y_reg_n_0_[2] ),
        .I1(o_out1__59_carry__1_1[2]),
        .I2(\o_y_reg_n_0_[1] ),
        .I3(o_out1__59_carry__1_1[3]),
        .I4(\o_y_reg_n_0_[0] ),
        .I5(o_out1__59_carry__1_1[4]),
        .O(\o_y_reg[2]_0 [1]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    o_out1__0_carry__0_i_4__5
       (.I0(\o_y_reg_n_0_[2] ),
        .I1(o_out1__59_carry__1_1[1]),
        .I2(\o_y_reg_n_0_[1] ),
        .I3(o_out1__59_carry__1_1[2]),
        .I4(\o_y_reg_n_0_[0] ),
        .I5(o_out1__59_carry__1_1[3]),
        .O(\o_y_reg[2]_0 [0]));
  LUT6 #(
    .INIT(64'h9666699969996999)) 
    o_out1__0_carry__0_i_5__5
       (.I0(\o_y_reg[2]_0 [3]),
        .I1(o_out1__0_carry__0_i_9__5_n_0),
        .I2(\o_y_reg_n_0_[1] ),
        .I3(o_out1__59_carry__1_1[6]),
        .I4(\o_y_reg_n_0_[0] ),
        .I5(o_out1__59_carry__1_1[7]),
        .O(\o_y_reg[1]_0 [3]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    o_out1__0_carry__0_i_6__5
       (.I0(\o_y_reg[2]_0 [2]),
        .I1(o_out1__59_carry__1_1[5]),
        .I2(\o_y_reg_n_0_[1] ),
        .I3(o_out1__59_carry__1_1[4]),
        .I4(\o_y_reg_n_0_[2] ),
        .I5(o_out1__0_carry__0_i_10__5_n_0),
        .O(\o_y_reg[1]_0 [2]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    o_out1__0_carry__0_i_7__5
       (.I0(\o_y_reg[2]_0 [1]),
        .I1(o_out1__59_carry__1_1[4]),
        .I2(\o_y_reg_n_0_[1] ),
        .I3(o_out1__59_carry__1_1[3]),
        .I4(\o_y_reg_n_0_[2] ),
        .I5(o_out1__0_carry__0_i_11__5_n_0),
        .O(\o_y_reg[1]_0 [1]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    o_out1__0_carry__0_i_8__5
       (.I0(\o_y_reg[2]_0 [0]),
        .I1(o_out1__59_carry__1_1[3]),
        .I2(\o_y_reg_n_0_[1] ),
        .I3(o_out1__59_carry__1_1[2]),
        .I4(\o_y_reg_n_0_[2] ),
        .I5(o_out1__0_carry__0_i_12__5_n_0),
        .O(\o_y_reg[1]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__0_carry__0_i_9__3
       (.I0(Q[5]),
        .I1(o_out1__59_carry_0[2]),
        .O(\o_x_reg[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__0_carry__0_i_9__5
       (.I0(o_out1__59_carry__1_1[5]),
        .I1(\o_y_reg_n_0_[2] ),
        .O(o_out1__0_carry__0_i_9__5_n_0));
  CARRY4 o_out1__0_carry__1
       (.CI(o_out1__0_carry__0_n_0),
        .CO({NLW_o_out1__0_carry__1_CO_UNCONNECTED[3],o_out1__0_carry__1_n_1,NLW_o_out1__0_carry__1_CO_UNCONNECTED[1],o_out1__0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,o_out1__86_carry__0_i_3__2_0}),
        .O({NLW_o_out1__0_carry__1_O_UNCONNECTED[3:2],o_out1__0_carry__1_n_6,o_out1__0_carry__1_n_7}),
        .S({1'b0,1'b1,o_out1__86_carry__0_i_3__2_1}));
  LUT4 #(
    .INIT(16'h0888)) 
    o_out1__0_carry__1_i_1__5
       (.I0(\o_y_reg_n_0_[2] ),
        .I1(o_out1__59_carry__1_1[6]),
        .I2(\o_y_reg_n_0_[1] ),
        .I3(o_out1__59_carry__1_1[7]),
        .O(\o_y_reg[2]_1 [1]));
  LUT6 #(
    .INIT(64'h8000F888F888F888)) 
    o_out1__0_carry__1_i_2__5
       (.I0(\o_y_reg_n_0_[2] ),
        .I1(o_out1__59_carry__1_1[5]),
        .I2(\o_y_reg_n_0_[1] ),
        .I3(o_out1__59_carry__1_1[6]),
        .I4(\o_y_reg_n_0_[0] ),
        .I5(o_out1__59_carry__1_1[7]),
        .O(\o_y_reg[2]_1 [0]));
  LUT4 #(
    .INIT(16'h4F3F)) 
    o_out1__0_carry__1_i_3__5
       (.I0(\o_y_reg_n_0_[1] ),
        .I1(o_out1__59_carry__1_1[6]),
        .I2(\o_y_reg_n_0_[2] ),
        .I3(o_out1__59_carry__1_1[7]),
        .O(\o_y_reg[1]_1 [1]));
  LUT6 #(
    .INIT(64'h25404FBFF03FCF3F)) 
    o_out1__0_carry__1_i_4__5
       (.I0(\o_y_reg_n_0_[0] ),
        .I1(o_out1__59_carry__1_1[5]),
        .I2(\o_y_reg_n_0_[2] ),
        .I3(o_out1__59_carry__1_1[6]),
        .I4(\o_y_reg_n_0_[1] ),
        .I5(o_out1__59_carry__1_1[7]),
        .O(\o_y_reg[1]_1 [0]));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    o_out1__0_carry_i_1__3
       (.I0(Q[3]),
        .I1(o_out1__59_carry_0[0]),
        .I2(o_out1__59_carry_0[2]),
        .I3(Q[1]),
        .I4(o_out1__59_carry_0[1]),
        .I5(Q[2]),
        .O(DI[1]));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    o_out1__0_carry_i_1__5
       (.I0(o_out1__59_carry__1_1[3]),
        .I1(\o_y_reg_n_0_[0] ),
        .I2(\o_y_reg_n_0_[2] ),
        .I3(o_out1__59_carry__1_1[1]),
        .I4(\o_y_reg_n_0_[1] ),
        .I5(o_out1__59_carry__1_1[2]),
        .O(\a31_buffer2_reg[3] [2]));
  LUT4 #(
    .INIT(16'h7888)) 
    o_out1__0_carry_i_2__5
       (.I0(\o_y_reg_n_0_[1] ),
        .I1(o_out1__59_carry__1_1[1]),
        .I2(\o_y_reg_n_0_[2] ),
        .I3(o_out1__59_carry__1_1[0]),
        .O(\a31_buffer2_reg[3] [1]));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__0_carry_i_3__3
       (.I0(Q[0]),
        .I1(o_out1__59_carry_0[1]),
        .O(DI[0]));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__0_carry_i_3__5
       (.I0(o_out1__59_carry__1_1[0]),
        .I1(\o_y_reg_n_0_[1] ),
        .O(\a31_buffer2_reg[3] [0]));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    o_out1__0_carry_i_4__3
       (.I0(DI[1]),
        .I1(Q[1]),
        .I2(o_out1__59_carry_0[2]),
        .I3(Q[0]),
        .I4(o_out1__59_carry_0[1]),
        .O(\o_x_reg[1]_1 [2]));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    o_out1__0_carry_i_4__5
       (.I0(\a31_buffer2_reg[3] [2]),
        .I1(o_out1__59_carry__1_1[1]),
        .I2(\o_y_reg_n_0_[2] ),
        .I3(o_out1__59_carry__1_1[0]),
        .I4(\o_y_reg_n_0_[1] ),
        .O(\a31_buffer2_reg[1]_0 [3]));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    o_out1__0_carry_i_5__3
       (.I0(Q[0]),
        .I1(o_out1__59_carry_0[2]),
        .I2(Q[1]),
        .I3(o_out1__59_carry_0[1]),
        .I4(Q[2]),
        .I5(o_out1__59_carry_0[0]),
        .O(\o_x_reg[1]_1 [1]));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    o_out1__0_carry_i_5__5
       (.I0(o_out1__59_carry__1_1[0]),
        .I1(\o_y_reg_n_0_[2] ),
        .I2(o_out1__59_carry__1_1[1]),
        .I3(\o_y_reg_n_0_[1] ),
        .I4(o_out1__59_carry__1_1[2]),
        .I5(\o_y_reg_n_0_[0] ),
        .O(\a31_buffer2_reg[1]_0 [2]));
  LUT4 #(
    .INIT(16'h7888)) 
    o_out1__0_carry_i_6__3
       (.I0(Q[1]),
        .I1(o_out1__59_carry_0[0]),
        .I2(o_out1__59_carry_0[1]),
        .I3(Q[0]),
        .O(\o_x_reg[1]_1 [0]));
  LUT4 #(
    .INIT(16'h7888)) 
    o_out1__0_carry_i_6__5
       (.I0(o_out1__59_carry__1_1[1]),
        .I1(\o_y_reg_n_0_[0] ),
        .I2(\o_y_reg_n_0_[1] ),
        .I3(o_out1__59_carry__1_1[0]),
        .O(\a31_buffer2_reg[1]_0 [1]));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__0_carry_i_7__5
       (.I0(\o_y_reg_n_0_[0] ),
        .I1(o_out1__59_carry__1_1[0]),
        .O(\a31_buffer2_reg[1]_0 [0]));
  CARRY4 o_out1__30_carry
       (.CI(1'b0),
        .CO({o_out1__30_carry_n_0,o_out1__30_carry_n_1,o_out1__30_carry_n_2,o_out1__30_carry_n_3}),
        .CYINIT(1'b0),
        .DI({\o_out[3]_i_2__2_0 ,1'b0}),
        .O({o_out1__30_carry_n_4,o_out1__30_carry_n_5,o_out1__30_carry_n_6,o_out1__30_carry_n_7}),
        .S(\o_out[3]_i_2__2_1 ));
  CARRY4 o_out1__30_carry__0
       (.CI(o_out1__30_carry_n_0),
        .CO({o_out1__30_carry__0_n_0,o_out1__30_carry__0_n_1,o_out1__30_carry__0_n_2,o_out1__30_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(o_out1__86_carry__0_i_4__2_0),
        .O({o_out1__30_carry__0_n_4,o_out1__30_carry__0_n_5,o_out1__30_carry__0_n_6,o_out1__30_carry__0_n_7}),
        .S(o_out1__86_carry__0_i_4__2_1));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__30_carry__0_i_10__3
       (.I0(Q[6]),
        .I1(o_out1__59_carry_0[3]),
        .O(\o_x_reg[6]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__30_carry__0_i_10__5
       (.I0(o_out1__59_carry__1_1[6]),
        .I1(\o_y_reg_n_0_[3] ),
        .O(o_out1__30_carry__0_i_10__5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__30_carry__0_i_11__3
       (.I0(Q[5]),
        .I1(o_out1__59_carry_0[3]),
        .O(\o_x_reg[5]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__30_carry__0_i_11__5
       (.I0(o_out1__59_carry__1_1[5]),
        .I1(\o_y_reg_n_0_[3] ),
        .O(o_out1__30_carry__0_i_11__5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__30_carry__0_i_12__3
       (.I0(Q[4]),
        .I1(o_out1__59_carry_0[3]),
        .O(\o_x_reg[4]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__30_carry__0_i_12__5
       (.I0(o_out1__59_carry__1_1[4]),
        .I1(\o_y_reg_n_0_[3] ),
        .O(o_out1__30_carry__0_i_12__5_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    o_out1__30_carry__0_i_1__5
       (.I0(\o_y_reg_n_0_[5] ),
        .I1(o_out1__59_carry__1_1[4]),
        .I2(\o_y_reg_n_0_[4] ),
        .I3(o_out1__59_carry__1_1[5]),
        .I4(o_out1__59_carry__1_1[6]),
        .I5(\o_y_reg_n_0_[3] ),
        .O(\o_y_reg[5]_2 [3]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    o_out1__30_carry__0_i_2__5
       (.I0(\o_y_reg_n_0_[5] ),
        .I1(o_out1__59_carry__1_1[3]),
        .I2(\o_y_reg_n_0_[4] ),
        .I3(o_out1__59_carry__1_1[4]),
        .I4(o_out1__59_carry__1_1[5]),
        .I5(\o_y_reg_n_0_[3] ),
        .O(\o_y_reg[5]_2 [2]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    o_out1__30_carry__0_i_3__5
       (.I0(\o_y_reg_n_0_[5] ),
        .I1(o_out1__59_carry__1_1[2]),
        .I2(\o_y_reg_n_0_[4] ),
        .I3(o_out1__59_carry__1_1[3]),
        .I4(o_out1__59_carry__1_1[4]),
        .I5(\o_y_reg_n_0_[3] ),
        .O(\o_y_reg[5]_2 [1]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    o_out1__30_carry__0_i_4__5
       (.I0(\o_y_reg_n_0_[5] ),
        .I1(o_out1__59_carry__1_1[1]),
        .I2(\o_y_reg_n_0_[4] ),
        .I3(o_out1__59_carry__1_1[2]),
        .I4(o_out1__59_carry__1_1[3]),
        .I5(\o_y_reg_n_0_[3] ),
        .O(\o_y_reg[5]_2 [0]));
  LUT6 #(
    .INIT(64'h9666699969996999)) 
    o_out1__30_carry__0_i_5__5
       (.I0(\o_y_reg[5]_2 [3]),
        .I1(o_out1__30_carry__0_i_9__5_n_0),
        .I2(\o_y_reg_n_0_[4] ),
        .I3(o_out1__59_carry__1_1[6]),
        .I4(o_out1__59_carry__1_1[7]),
        .I5(\o_y_reg_n_0_[3] ),
        .O(\o_y_reg[4]_0 [3]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    o_out1__30_carry__0_i_6__5
       (.I0(\o_y_reg[5]_2 [2]),
        .I1(o_out1__59_carry__1_1[5]),
        .I2(\o_y_reg_n_0_[4] ),
        .I3(o_out1__59_carry__1_1[4]),
        .I4(\o_y_reg_n_0_[5] ),
        .I5(o_out1__30_carry__0_i_10__5_n_0),
        .O(\o_y_reg[4]_0 [2]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    o_out1__30_carry__0_i_7__5
       (.I0(\o_y_reg[5]_2 [1]),
        .I1(o_out1__59_carry__1_1[4]),
        .I2(\o_y_reg_n_0_[4] ),
        .I3(o_out1__59_carry__1_1[3]),
        .I4(\o_y_reg_n_0_[5] ),
        .I5(o_out1__30_carry__0_i_11__5_n_0),
        .O(\o_y_reg[4]_0 [1]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    o_out1__30_carry__0_i_8__5
       (.I0(\o_y_reg[5]_2 [0]),
        .I1(o_out1__59_carry__1_1[3]),
        .I2(\o_y_reg_n_0_[4] ),
        .I3(o_out1__59_carry__1_1[2]),
        .I4(\o_y_reg_n_0_[5] ),
        .I5(o_out1__30_carry__0_i_12__5_n_0),
        .O(\o_y_reg[4]_0 [0]));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__30_carry__0_i_9__3
       (.I0(Q[5]),
        .I1(o_out1__59_carry_0[5]),
        .O(\o_x_reg[5]_2 ));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__30_carry__0_i_9__5
       (.I0(o_out1__59_carry__1_1[5]),
        .I1(\o_y_reg_n_0_[5] ),
        .O(o_out1__30_carry__0_i_9__5_n_0));
  CARRY4 o_out1__30_carry__1
       (.CI(o_out1__30_carry__0_n_0),
        .CO({NLW_o_out1__30_carry__1_CO_UNCONNECTED[3],\o_y_reg[5]_0 ,NLW_o_out1__30_carry__1_CO_UNCONNECTED[1],o_out1__30_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,o_out1__86_carry__1_i_5__2_0}),
        .O({NLW_o_out1__30_carry__1_O_UNCONNECTED[3:2],\o_y_reg[5]_1 }),
        .S({1'b0,1'b1,o_out1__86_carry__1_i_5__2_1}));
  LUT4 #(
    .INIT(16'h0888)) 
    o_out1__30_carry__1_i_1__5
       (.I0(\o_y_reg_n_0_[5] ),
        .I1(o_out1__59_carry__1_1[6]),
        .I2(\o_y_reg_n_0_[4] ),
        .I3(o_out1__59_carry__1_1[7]),
        .O(\o_y_reg[5]_3 [1]));
  LUT6 #(
    .INIT(64'h8000F888F888F888)) 
    o_out1__30_carry__1_i_2__5
       (.I0(\o_y_reg_n_0_[5] ),
        .I1(o_out1__59_carry__1_1[5]),
        .I2(\o_y_reg_n_0_[4] ),
        .I3(o_out1__59_carry__1_1[6]),
        .I4(o_out1__59_carry__1_1[7]),
        .I5(\o_y_reg_n_0_[3] ),
        .O(\o_y_reg[5]_3 [0]));
  LUT4 #(
    .INIT(16'h4F3F)) 
    o_out1__30_carry__1_i_3__5
       (.I0(\o_y_reg_n_0_[4] ),
        .I1(o_out1__59_carry__1_1[6]),
        .I2(\o_y_reg_n_0_[5] ),
        .I3(o_out1__59_carry__1_1[7]),
        .O(\o_y_reg[4]_1 [1]));
  LUT6 #(
    .INIT(64'h25404FBFF03FCF3F)) 
    o_out1__30_carry__1_i_4__5
       (.I0(\o_y_reg_n_0_[3] ),
        .I1(o_out1__59_carry__1_1[5]),
        .I2(\o_y_reg_n_0_[5] ),
        .I3(o_out1__59_carry__1_1[6]),
        .I4(\o_y_reg_n_0_[4] ),
        .I5(o_out1__59_carry__1_1[7]),
        .O(\o_y_reg[4]_1 [0]));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    o_out1__30_carry_i_1__5
       (.I0(\o_y_reg_n_0_[3] ),
        .I1(o_out1__59_carry__1_1[3]),
        .I2(\o_y_reg_n_0_[5] ),
        .I3(o_out1__59_carry__1_1[1]),
        .I4(\o_y_reg_n_0_[4] ),
        .I5(o_out1__59_carry__1_1[2]),
        .O(\o_y_reg[3]_0 [2]));
  LUT4 #(
    .INIT(16'h7888)) 
    o_out1__30_carry_i_2__5
       (.I0(\o_y_reg_n_0_[4] ),
        .I1(o_out1__59_carry__1_1[1]),
        .I2(\o_y_reg_n_0_[5] ),
        .I3(o_out1__59_carry__1_1[0]),
        .O(\o_y_reg[3]_0 [1]));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__30_carry_i_3__3
       (.I0(Q[0]),
        .I1(o_out1__59_carry_0[4]),
        .O(\o_x_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__30_carry_i_3__5
       (.I0(o_out1__59_carry__1_1[0]),
        .I1(\o_y_reg_n_0_[4] ),
        .O(\o_y_reg[3]_0 [0]));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    o_out1__30_carry_i_4__5
       (.I0(\o_y_reg[3]_0 [2]),
        .I1(o_out1__59_carry__1_1[1]),
        .I2(\o_y_reg_n_0_[5] ),
        .I3(o_out1__59_carry__1_1[0]),
        .I4(\o_y_reg_n_0_[4] ),
        .O(\a31_buffer2_reg[1]_1 [3]));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    o_out1__30_carry_i_5__3
       (.I0(Q[0]),
        .I1(o_out1__59_carry_0[5]),
        .I2(Q[1]),
        .I3(o_out1__59_carry_0[4]),
        .I4(o_out1__59_carry_0[3]),
        .I5(Q[2]),
        .O(\o_x_reg[0]_1 [1]));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    o_out1__30_carry_i_5__5
       (.I0(o_out1__59_carry__1_1[0]),
        .I1(\o_y_reg_n_0_[5] ),
        .I2(o_out1__59_carry__1_1[1]),
        .I3(\o_y_reg_n_0_[4] ),
        .I4(\o_y_reg_n_0_[3] ),
        .I5(o_out1__59_carry__1_1[2]),
        .O(\a31_buffer2_reg[1]_1 [2]));
  LUT4 #(
    .INIT(16'h7888)) 
    o_out1__30_carry_i_6__5
       (.I0(\o_y_reg_n_0_[3] ),
        .I1(o_out1__59_carry__1_1[1]),
        .I2(\o_y_reg_n_0_[4] ),
        .I3(o_out1__59_carry__1_1[0]),
        .O(\a31_buffer2_reg[1]_1 [1]));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__30_carry_i_7__3
       (.I0(Q[0]),
        .I1(o_out1__59_carry_0[3]),
        .O(\o_x_reg[0]_1 [0]));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__30_carry_i_7__5
       (.I0(o_out1__59_carry__1_1[0]),
        .I1(\o_y_reg_n_0_[3] ),
        .O(\a31_buffer2_reg[1]_1 [0]));
  CARRY4 o_out1__59_carry
       (.CI(1'b0),
        .CO({o_out1__59_carry_n_0,o_out1__59_carry_n_1,o_out1__59_carry_n_2,o_out1__59_carry_n_3}),
        .CYINIT(1'b0),
        .DI({o_out1__86_carry_i_1__2_0,1'b0}),
        .O({o_out1__59_carry_n_4,o_out1__59_carry_n_5,o_out1__59_carry_n_6,o_out1__59_carry_n_7}),
        .S(o_out1__86_carry_i_1__2_1));
  CARRY4 o_out1__59_carry__0
       (.CI(o_out1__59_carry_n_0),
        .CO({o_out1__59_carry__0_n_0,o_out1__59_carry__0_n_1,o_out1__59_carry__0_n_2,o_out1__59_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(o_out1__86_carry__0_i_6__2_0),
        .O({\o_y_reg[7]_0 ,o_out1__59_carry__0_n_7}),
        .S(o_out1__86_carry__0_i_6__2_1));
  LUT4 #(
    .INIT(16'h7000)) 
    o_out1__59_carry__0_i_1__5
       (.I0(\o_y_reg_n_0_[7] ),
        .I1(o_out1__59_carry__1_1[5]),
        .I2(\o_y_reg_n_0_[6] ),
        .I3(o_out1__59_carry__1_1[6]),
        .O(\o_y_reg[7]_3 [3]));
  LUT4 #(
    .INIT(16'h7000)) 
    o_out1__59_carry__0_i_2__5
       (.I0(\o_y_reg_n_0_[7] ),
        .I1(o_out1__59_carry__1_1[4]),
        .I2(\o_y_reg_n_0_[6] ),
        .I3(o_out1__59_carry__1_1[5]),
        .O(\o_y_reg[7]_3 [2]));
  LUT4 #(
    .INIT(16'h7000)) 
    o_out1__59_carry__0_i_3__5
       (.I0(\o_y_reg_n_0_[7] ),
        .I1(o_out1__59_carry__1_1[3]),
        .I2(\o_y_reg_n_0_[6] ),
        .I3(o_out1__59_carry__1_1[4]),
        .O(\o_y_reg[7]_3 [1]));
  LUT4 #(
    .INIT(16'h7000)) 
    o_out1__59_carry__0_i_4__5
       (.I0(\o_y_reg_n_0_[7] ),
        .I1(o_out1__59_carry__1_1[2]),
        .I2(\o_y_reg_n_0_[6] ),
        .I3(o_out1__59_carry__1_1[3]),
        .O(\o_y_reg[7]_3 [0]));
  LUT5 #(
    .INIT(32'h6FC030C0)) 
    o_out1__59_carry__0_i_5__3
       (.I0(Q[5]),
        .I1(Q[7]),
        .I2(o_out1__59_carry_0[6]),
        .I3(Q[6]),
        .I4(o_out1__59_carry_0[7]),
        .O(\o_x_reg[5]_3 [3]));
  LUT5 #(
    .INIT(32'h6FC030C0)) 
    o_out1__59_carry__0_i_5__5
       (.I0(o_out1__59_carry__1_1[5]),
        .I1(o_out1__59_carry__1_1[7]),
        .I2(\o_y_reg_n_0_[6] ),
        .I3(o_out1__59_carry__1_1[6]),
        .I4(\o_y_reg_n_0_[7] ),
        .O(\a31_buffer2_reg[5] [3]));
  LUT5 #(
    .INIT(32'h903FCF3F)) 
    o_out1__59_carry__0_i_6__3
       (.I0(Q[4]),
        .I1(Q[6]),
        .I2(o_out1__59_carry_0[6]),
        .I3(Q[5]),
        .I4(o_out1__59_carry_0[7]),
        .O(\o_x_reg[5]_3 [2]));
  LUT5 #(
    .INIT(32'h903FCF3F)) 
    o_out1__59_carry__0_i_6__5
       (.I0(o_out1__59_carry__1_1[4]),
        .I1(o_out1__59_carry__1_1[6]),
        .I2(\o_y_reg_n_0_[6] ),
        .I3(o_out1__59_carry__1_1[5]),
        .I4(\o_y_reg_n_0_[7] ),
        .O(\a31_buffer2_reg[5] [2]));
  LUT5 #(
    .INIT(32'h903FCF3F)) 
    o_out1__59_carry__0_i_7__3
       (.I0(Q[3]),
        .I1(Q[5]),
        .I2(o_out1__59_carry_0[6]),
        .I3(Q[4]),
        .I4(o_out1__59_carry_0[7]),
        .O(\o_x_reg[5]_3 [1]));
  LUT5 #(
    .INIT(32'h903FCF3F)) 
    o_out1__59_carry__0_i_7__5
       (.I0(o_out1__59_carry__1_1[3]),
        .I1(o_out1__59_carry__1_1[5]),
        .I2(\o_y_reg_n_0_[6] ),
        .I3(o_out1__59_carry__1_1[4]),
        .I4(\o_y_reg_n_0_[7] ),
        .O(\a31_buffer2_reg[5] [1]));
  LUT5 #(
    .INIT(32'h903FCF3F)) 
    o_out1__59_carry__0_i_8__3
       (.I0(Q[2]),
        .I1(Q[4]),
        .I2(o_out1__59_carry_0[6]),
        .I3(Q[3]),
        .I4(o_out1__59_carry_0[7]),
        .O(\o_x_reg[5]_3 [0]));
  LUT5 #(
    .INIT(32'h903FCF3F)) 
    o_out1__59_carry__0_i_8__5
       (.I0(o_out1__59_carry__1_1[2]),
        .I1(o_out1__59_carry__1_1[4]),
        .I2(\o_y_reg_n_0_[6] ),
        .I3(o_out1__59_carry__1_1[3]),
        .I4(\o_y_reg_n_0_[7] ),
        .O(\a31_buffer2_reg[5] [0]));
  CARRY4 o_out1__59_carry__1
       (.CI(o_out1__59_carry__0_n_0),
        .CO({NLW_o_out1__59_carry__1_CO_UNCONNECTED[3:1],o_out1__59_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,o_out1__86_carry__1_i_3__2}),
        .O({NLW_o_out1__59_carry__1_O_UNCONNECTED[3:2],o_out1__59_carry__1_n_6,\o_y_reg[7]_1 }),
        .S({1'b0,1'b0,1'b1,o_out1__86_carry__1_i_3__2_0}));
  LUT4 #(
    .INIT(16'h0777)) 
    o_out1__59_carry__1_i_1__5
       (.I0(\o_y_reg_n_0_[7] ),
        .I1(o_out1__59_carry__1_1[6]),
        .I2(\o_y_reg_n_0_[6] ),
        .I3(o_out1__59_carry__1_1[7]),
        .O(\o_y_reg[7]_4 ));
  LUT4 #(
    .INIT(16'hE53F)) 
    o_out1__59_carry__1_i_2__5
       (.I0(\o_y_reg_n_0_[6] ),
        .I1(o_out1__59_carry__1_1[6]),
        .I2(\o_y_reg_n_0_[7] ),
        .I3(o_out1__59_carry__1_1[7]),
        .O(\o_y_reg[6]_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    o_out1__59_carry_i_1__5
       (.I0(\o_y_reg_n_0_[7] ),
        .I1(o_out1__59_carry__1_1[1]),
        .O(\o_y_reg[7]_2 [2]));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__59_carry_i_2__3
       (.I0(Q[1]),
        .I1(o_out1__59_carry_0[7]),
        .O(\o_x_reg[1]_0 [1]));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__59_carry_i_2__5
       (.I0(o_out1__59_carry__1_1[1]),
        .I1(\o_y_reg_n_0_[7] ),
        .O(\o_y_reg[7]_2 [1]));
  LUT2 #(
    .INIT(4'h7)) 
    o_out1__59_carry_i_3__3
       (.I0(Q[0]),
        .I1(o_out1__59_carry_0[7]),
        .O(\o_x_reg[1]_0 [0]));
  LUT2 #(
    .INIT(4'h7)) 
    o_out1__59_carry_i_3__5
       (.I0(o_out1__59_carry__1_1[0]),
        .I1(\o_y_reg_n_0_[7] ),
        .O(\o_y_reg[7]_2 [0]));
  LUT5 #(
    .INIT(32'h956AC0C0)) 
    o_out1__59_carry_i_4__3
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(o_out1__59_carry_0[6]),
        .I3(Q[2]),
        .I4(o_out1__59_carry_0[7]),
        .O(S[1]));
  LUT5 #(
    .INIT(32'h956AC0C0)) 
    o_out1__59_carry_i_4__5
       (.I0(o_out1__59_carry__1_1[1]),
        .I1(o_out1__59_carry__1_1[3]),
        .I2(\o_y_reg_n_0_[6] ),
        .I3(o_out1__59_carry__1_1[2]),
        .I4(\o_y_reg_n_0_[7] ),
        .O(\a31_buffer2_reg[1] [3]));
  LUT4 #(
    .INIT(16'h7888)) 
    o_out1__59_carry_i_5__5
       (.I0(\o_y_reg_n_0_[7] ),
        .I1(o_out1__59_carry__1_1[1]),
        .I2(\o_y_reg_n_0_[6] ),
        .I3(o_out1__59_carry__1_1[2]),
        .O(\a31_buffer2_reg[1] [2]));
  LUT4 #(
    .INIT(16'h8777)) 
    o_out1__59_carry_i_6__5
       (.I0(\o_y_reg_n_0_[7] ),
        .I1(o_out1__59_carry__1_1[0]),
        .I2(\o_y_reg_n_0_[6] ),
        .I3(o_out1__59_carry__1_1[1]),
        .O(\a31_buffer2_reg[1] [1]));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__59_carry_i_7__3
       (.I0(Q[0]),
        .I1(o_out1__59_carry_0[6]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__59_carry_i_7__5
       (.I0(o_out1__59_carry__1_1[0]),
        .I1(\o_y_reg_n_0_[6] ),
        .O(\a31_buffer2_reg[1] [0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 o_out1__86_carry
       (.CI(1'b0),
        .CO({o_out1__86_carry_n_0,o_out1__86_carry_n_1,o_out1__86_carry_n_2,o_out1__86_carry_n_3}),
        .CYINIT(1'b0),
        .DI({o_out1__86_carry_i_1__2_n_0,o_out1__86_carry_i_2__2_n_0,o_out1__86_carry_i_3__2_n_0,o_out1__86_carry_i_4__2_n_0}),
        .O({o_out1__86_carry_n_4,o_out1__86_carry_n_5,o_out1__86_carry_n_6,o_out1__86_carry_n_7}),
        .S({o_out1__86_carry_i_5__2_n_0,o_out1__86_carry_i_6__2_n_0,o_out1__86_carry_i_7__2_n_0,o_out1__86_carry_i_8__2_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 o_out1__86_carry__0
       (.CI(o_out1__86_carry_n_0),
        .CO({o_out1__86_carry__0_n_0,o_out1__86_carry__0_n_1,o_out1__86_carry__0_n_2,o_out1__86_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({o_out1__86_carry__0_i_1__2_n_0,o_out1__86_carry__0_i_2__2_n_0,o_out1__86_carry__0_i_3__2_n_0,o_out1__86_carry__0_i_4__2_n_0}),
        .O({o_out1__86_carry__0_n_4,o_out1__86_carry__0_n_5,o_out1__86_carry__0_n_6,o_out1__86_carry__0_n_7}),
        .S({o_out1__86_carry__0_i_5__2_n_0,o_out1__86_carry__0_i_6__2_n_0,o_out1__86_carry__0_i_7__2_n_0,o_out1__86_carry__0_i_8__2_n_0}));
  LUT3 #(
    .INIT(8'hE8)) 
    o_out1__86_carry__0_i_1__2
       (.I0(o_out1__59_carry__0_n_7),
        .I1(o_out1__0_carry__1_n_1),
        .I2(o_out1__30_carry__0_n_4),
        .O(o_out1__86_carry__0_i_1__2_n_0));
  (* HLUTNM = "lutpair14" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    o_out1__86_carry__0_i_2__2
       (.I0(o_out1__59_carry_n_4),
        .I1(o_out1__0_carry__1_n_6),
        .I2(o_out1__30_carry__0_n_5),
        .O(o_out1__86_carry__0_i_2__2_n_0));
  (* HLUTNM = "lutpair13" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    o_out1__86_carry__0_i_3__2
       (.I0(o_out1__59_carry_n_5),
        .I1(o_out1__0_carry__1_n_7),
        .I2(o_out1__30_carry__0_n_6),
        .O(o_out1__86_carry__0_i_3__2_n_0));
  (* HLUTNM = "lutpair12" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    o_out1__86_carry__0_i_4__2
       (.I0(o_out1__59_carry_n_6),
        .I1(o_out1__0_carry__0_n_4),
        .I2(o_out1__30_carry__0_n_7),
        .O(o_out1__86_carry__0_i_4__2_n_0));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    o_out1__86_carry__0_i_5__2
       (.I0(o_out1__30_carry__0_n_4),
        .I1(o_out1__0_carry__1_n_1),
        .I2(o_out1__59_carry__0_n_7),
        .I3(\o_y_reg[5]_1 [0]),
        .I4(\o_y_reg[7]_0 [0]),
        .O(o_out1__86_carry__0_i_5__2_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    o_out1__86_carry__0_i_6__2
       (.I0(o_out1__86_carry__0_i_2__2_n_0),
        .I1(o_out1__59_carry__0_n_7),
        .I2(o_out1__0_carry__1_n_1),
        .I3(o_out1__30_carry__0_n_4),
        .O(o_out1__86_carry__0_i_6__2_n_0));
  (* HLUTNM = "lutpair14" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    o_out1__86_carry__0_i_7__2
       (.I0(o_out1__59_carry_n_4),
        .I1(o_out1__0_carry__1_n_6),
        .I2(o_out1__30_carry__0_n_5),
        .I3(o_out1__86_carry__0_i_3__2_n_0),
        .O(o_out1__86_carry__0_i_7__2_n_0));
  (* HLUTNM = "lutpair13" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    o_out1__86_carry__0_i_8__2
       (.I0(o_out1__59_carry_n_5),
        .I1(o_out1__0_carry__1_n_7),
        .I2(o_out1__30_carry__0_n_6),
        .I3(o_out1__86_carry__0_i_4__2_n_0),
        .O(o_out1__86_carry__0_i_8__2_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 o_out1__86_carry__1
       (.CI(o_out1__86_carry__0_n_0),
        .CO({NLW_o_out1__86_carry__1_CO_UNCONNECTED[3],o_out1__86_carry__1_n_1,o_out1__86_carry__1_n_2,o_out1__86_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\o_y_reg[7]_1 ,o_out1__86_carry__1_i_1__2_n_0,o_out1__86_carry__1_i_2__2_n_0}),
        .O({o_out1__86_carry__1_n_4,o_out1__86_carry__1_i_5__2}),
        .S({o_out1__59_carry__1_n_6,\o_out_reg[15]_2 }));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__86_carry__1_i_1__2
       (.I0(\o_y_reg[7]_0 [1]),
        .I1(\o_y_reg[5]_1 [1]),
        .O(o_out1__86_carry__1_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__86_carry__1_i_2__2
       (.I0(\o_y_reg[7]_0 [0]),
        .I1(\o_y_reg[5]_1 [0]),
        .O(o_out1__86_carry__1_i_2__2_n_0));
  LUT3 #(
    .INIT(8'h78)) 
    o_out1__86_carry__1_i_3__5
       (.I0(o_out1__86_carry__1_2),
        .I1(o_out1__86_carry__1_1[2]),
        .I2(o_out1__86_carry__1_3),
        .O(o_out1__59_carry__1_0[2]));
  LUT4 #(
    .INIT(16'h8778)) 
    o_out1__86_carry__1_i_4__5
       (.I0(o_out1__86_carry__1_0[1]),
        .I1(o_out1__86_carry__1_1[1]),
        .I2(o_out1__86_carry__1_2),
        .I3(o_out1__86_carry__1_1[2]),
        .O(o_out1__59_carry__1_0[1]));
  LUT4 #(
    .INIT(16'h8778)) 
    o_out1__86_carry__1_i_5__5
       (.I0(o_out1__86_carry__1_0[0]),
        .I1(o_out1__86_carry__1_1[0]),
        .I2(o_out1__86_carry__1_0[1]),
        .I3(o_out1__86_carry__1_1[1]),
        .O(o_out1__59_carry__1_0[0]));
  (* HLUTNM = "lutpair11" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    o_out1__86_carry_i_1__2
       (.I0(o_out1__59_carry_n_7),
        .I1(o_out1__0_carry__0_n_5),
        .I2(o_out1__30_carry_n_4),
        .O(o_out1__86_carry_i_1__2_n_0));
  (* HLUTNM = "lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__86_carry_i_2__2
       (.I0(o_out1__30_carry_n_5),
        .I1(o_out1__0_carry__0_n_6),
        .O(o_out1__86_carry_i_2__2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__86_carry_i_3__2
       (.I0(o_out1__30_carry_n_6),
        .I1(o_out1__0_carry__0_n_7),
        .O(o_out1__86_carry_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__86_carry_i_4__2
       (.I0(o_out1__0_carry_n_4),
        .I1(o_out1__30_carry_n_7),
        .O(o_out1__86_carry_i_4__2_n_0));
  (* HLUTNM = "lutpair12" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    o_out1__86_carry_i_5__2
       (.I0(o_out1__59_carry_n_6),
        .I1(o_out1__0_carry__0_n_4),
        .I2(o_out1__30_carry__0_n_7),
        .I3(o_out1__86_carry_i_1__2_n_0),
        .O(o_out1__86_carry_i_5__2_n_0));
  (* HLUTNM = "lutpair11" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    o_out1__86_carry_i_6__2
       (.I0(o_out1__59_carry_n_7),
        .I1(o_out1__0_carry__0_n_5),
        .I2(o_out1__30_carry_n_4),
        .I3(o_out1__86_carry_i_2__2_n_0),
        .O(o_out1__86_carry_i_6__2_n_0));
  (* HLUTNM = "lutpair10" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    o_out1__86_carry_i_7__2
       (.I0(o_out1__30_carry_n_5),
        .I1(o_out1__0_carry__0_n_6),
        .I2(o_out1__0_carry__0_n_7),
        .I3(o_out1__30_carry_n_6),
        .O(o_out1__86_carry_i_7__2_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    o_out1__86_carry_i_8__2
       (.I0(o_out1__30_carry_n_7),
        .I1(o_out1__0_carry_n_4),
        .I2(o_out1__0_carry__0_n_7),
        .I3(o_out1__30_carry_n_6),
        .O(o_out1__86_carry_i_8__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[11]_i_2__2 
       (.I0(o_out1__86_carry__0_n_4),
        .I1(m_axis_data[11]),
        .O(\o_out[11]_i_2__2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[11]_i_3__2 
       (.I0(o_out1__86_carry__0_n_5),
        .I1(m_axis_data[10]),
        .O(\o_out[11]_i_3__2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[11]_i_4__2 
       (.I0(o_out1__86_carry__0_n_6),
        .I1(m_axis_data[9]),
        .O(\o_out[11]_i_4__2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[11]_i_5__2 
       (.I0(o_out1__86_carry__0_n_7),
        .I1(m_axis_data[8]),
        .O(\o_out[11]_i_5__2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[15]_i_2__2 
       (.I0(m_axis_data[15]),
        .I1(o_out1__86_carry__1_n_4),
        .O(\o_out_reg[15]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[15]_i_3__6 
       (.I0(\o_out_reg[15]_3 [2]),
        .I1(\o_out_reg[15]_5 [2]),
        .O(\o_out[15]_i_3__6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[15]_i_4__5 
       (.I0(\o_out_reg[15]_3 [1]),
        .I1(\o_out_reg[15]_5 [1]),
        .O(\o_out[15]_i_4__5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[15]_i_5__5 
       (.I0(\o_out_reg[15]_3 [0]),
        .I1(\o_out_reg[15]_5 [0]),
        .O(\o_out[15]_i_5__5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \o_out[3]_i_2__2 
       (.I0(o_out1__30_carry_n_7),
        .I1(o_out1__0_carry_n_4),
        .I2(m_axis_data[3]),
        .O(\o_out[3]_i_2__2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[3]_i_3__2 
       (.I0(o_out1__0_carry_n_5),
        .I1(m_axis_data[2]),
        .O(\o_out[3]_i_3__2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[3]_i_4__2 
       (.I0(o_out1__0_carry_n_6),
        .I1(m_axis_data[1]),
        .O(\o_out[3]_i_4__2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[3]_i_5__2 
       (.I0(o_out1__0_carry_n_7),
        .I1(m_axis_data[0]),
        .O(\o_out[3]_i_5__2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[7]_i_2__2 
       (.I0(o_out1__86_carry_n_4),
        .I1(m_axis_data[7]),
        .O(\o_out[7]_i_2__2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[7]_i_3__2 
       (.I0(o_out1__86_carry_n_5),
        .I1(m_axis_data[6]),
        .O(\o_out[7]_i_3__2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[7]_i_4__2 
       (.I0(o_out1__86_carry_n_6),
        .I1(m_axis_data[5]),
        .O(\o_out[7]_i_4__2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[7]_i_5__2 
       (.I0(o_out1__86_carry_n_7),
        .I1(m_axis_data[4]),
        .O(\o_out[7]_i_5__2_n_0 ));
  FDRE \o_out_reg[0] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[3]_i_1__2_n_7 ),
        .Q(m_axis_data[0]),
        .R(p_0_in));
  FDRE \o_out_reg[10] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[11]_i_1__2_n_5 ),
        .Q(m_axis_data[10]),
        .R(p_0_in));
  FDRE \o_out_reg[11] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[11]_i_1__2_n_4 ),
        .Q(m_axis_data[11]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \o_out_reg[11]_i_1__2 
       (.CI(\o_out_reg[7]_i_1__2_n_0 ),
        .CO({\o_out_reg[11]_0 ,\o_out_reg[11]_i_1__2_n_1 ,\o_out_reg[11]_i_1__2_n_2 ,\o_out_reg[11]_i_1__2_n_3 }),
        .CYINIT(1'b0),
        .DI({o_out1__86_carry__0_n_4,o_out1__86_carry__0_n_5,o_out1__86_carry__0_n_6,o_out1__86_carry__0_n_7}),
        .O({\o_out_reg[11]_i_1__2_n_4 ,\o_out_reg[11]_i_1__2_n_5 ,\o_out_reg[11]_i_1__2_n_6 ,\o_out_reg[11]_i_1__2_n_7 }),
        .S({\o_out[11]_i_2__2_n_0 ,\o_out[11]_i_3__2_n_0 ,\o_out[11]_i_4__2_n_0 ,\o_out[11]_i_5__2_n_0 }));
  FDRE \o_out_reg[12] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[15]_1 [0]),
        .Q(m_axis_data[12]),
        .R(p_0_in));
  FDRE \o_out_reg[13] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[15]_1 [1]),
        .Q(m_axis_data[13]),
        .R(p_0_in));
  FDRE \o_out_reg[14] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[15]_1 [2]),
        .Q(m_axis_data[14]),
        .R(p_0_in));
  FDRE \o_out_reg[15] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[15]_1 [3]),
        .Q(m_axis_data[15]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \o_out_reg[15]_i_1__5 
       (.CI(CO),
        .CO({\NLW_o_out_reg[15]_i_1__5_CO_UNCONNECTED [3],\o_out_reg[15]_i_1__5_n_1 ,\o_out_reg[15]_i_1__5_n_2 ,\o_out_reg[15]_i_1__5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\o_out_reg[15]_3 }),
        .O(O),
        .S({\o_out_reg[15]_4 ,\o_out[15]_i_3__6_n_0 ,\o_out[15]_i_4__5_n_0 ,\o_out[15]_i_5__5_n_0 }));
  FDRE \o_out_reg[1] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[3]_i_1__2_n_6 ),
        .Q(m_axis_data[1]),
        .R(p_0_in));
  FDRE \o_out_reg[2] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[3]_i_1__2_n_5 ),
        .Q(m_axis_data[2]),
        .R(p_0_in));
  FDRE \o_out_reg[3] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[3]_i_1__2_n_4 ),
        .Q(m_axis_data[3]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \o_out_reg[3]_i_1__2 
       (.CI(1'b0),
        .CO({\o_out_reg[3]_i_1__2_n_0 ,\o_out_reg[3]_i_1__2_n_1 ,\o_out_reg[3]_i_1__2_n_2 ,\o_out_reg[3]_i_1__2_n_3 }),
        .CYINIT(1'b0),
        .DI({m_axis_data[3],o_out1__0_carry_n_5,o_out1__0_carry_n_6,o_out1__0_carry_n_7}),
        .O({\o_out_reg[3]_i_1__2_n_4 ,\o_out_reg[3]_i_1__2_n_5 ,\o_out_reg[3]_i_1__2_n_6 ,\o_out_reg[3]_i_1__2_n_7 }),
        .S({\o_out[3]_i_2__2_n_0 ,\o_out[3]_i_3__2_n_0 ,\o_out[3]_i_4__2_n_0 ,\o_out[3]_i_5__2_n_0 }));
  FDRE \o_out_reg[4] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[7]_i_1__2_n_7 ),
        .Q(m_axis_data[4]),
        .R(p_0_in));
  FDRE \o_out_reg[5] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[7]_i_1__2_n_6 ),
        .Q(m_axis_data[5]),
        .R(p_0_in));
  FDRE \o_out_reg[6] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[7]_i_1__2_n_5 ),
        .Q(m_axis_data[6]),
        .R(p_0_in));
  FDRE \o_out_reg[7] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[7]_i_1__2_n_4 ),
        .Q(m_axis_data[7]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \o_out_reg[7]_i_1__2 
       (.CI(\o_out_reg[3]_i_1__2_n_0 ),
        .CO({\o_out_reg[7]_i_1__2_n_0 ,\o_out_reg[7]_i_1__2_n_1 ,\o_out_reg[7]_i_1__2_n_2 ,\o_out_reg[7]_i_1__2_n_3 }),
        .CYINIT(1'b0),
        .DI({o_out1__86_carry_n_4,o_out1__86_carry_n_5,o_out1__86_carry_n_6,o_out1__86_carry_n_7}),
        .O({\o_out_reg[7]_i_1__2_n_4 ,\o_out_reg[7]_i_1__2_n_5 ,\o_out_reg[7]_i_1__2_n_6 ,\o_out_reg[7]_i_1__2_n_7 }),
        .S({\o_out[7]_i_2__2_n_0 ,\o_out[7]_i_3__2_n_0 ,\o_out[7]_i_4__2_n_0 ,\o_out[7]_i_5__2_n_0 }));
  FDRE \o_out_reg[8] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[11]_i_1__2_n_7 ),
        .Q(m_axis_data[8]),
        .R(p_0_in));
  FDRE \o_out_reg[9] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[11]_i_1__2_n_6 ),
        .Q(m_axis_data[9]),
        .R(p_0_in));
  FDRE \o_x_reg[0] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_x_reg[7]_0 [0]),
        .Q(Q[0]),
        .R(p_0_in));
  FDRE \o_x_reg[1] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_x_reg[7]_0 [1]),
        .Q(Q[1]),
        .R(p_0_in));
  FDRE \o_x_reg[2] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_x_reg[7]_0 [2]),
        .Q(Q[2]),
        .R(p_0_in));
  FDRE \o_x_reg[3] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_x_reg[7]_0 [3]),
        .Q(Q[3]),
        .R(p_0_in));
  FDRE \o_x_reg[4] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_x_reg[7]_0 [4]),
        .Q(Q[4]),
        .R(p_0_in));
  FDRE \o_x_reg[5] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_x_reg[7]_0 [5]),
        .Q(Q[5]),
        .R(p_0_in));
  FDRE \o_x_reg[6] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_x_reg[7]_0 [6]),
        .Q(Q[6]),
        .R(p_0_in));
  FDRE \o_x_reg[7] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_x_reg[7]_0 [7]),
        .Q(Q[7]),
        .R(p_0_in));
  FDRE \o_y_reg[0] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(\o_y_reg_n_0_[0] ),
        .R(p_0_in));
  FDRE \o_y_reg[1] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(\o_y_reg_n_0_[1] ),
        .R(p_0_in));
  FDRE \o_y_reg[2] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(\o_y_reg_n_0_[2] ),
        .R(p_0_in));
  FDRE \o_y_reg[3] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(\o_y_reg_n_0_[3] ),
        .R(p_0_in));
  FDRE \o_y_reg[4] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(\o_y_reg_n_0_[4] ),
        .R(p_0_in));
  FDRE \o_y_reg[5] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(D[5]),
        .Q(\o_y_reg_n_0_[5] ),
        .R(p_0_in));
  FDRE \o_y_reg[6] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(D[6]),
        .Q(\o_y_reg_n_0_[6] ),
        .R(p_0_in));
  FDRE \o_y_reg[7] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(D[7]),
        .Q(\o_y_reg_n_0_[7] ),
        .R(p_0_in));
endmodule

(* ORIG_REF_NAME = "MAC" *) 
module design_1_SystolicArrayAxiWrap_0_0_MAC_4
   (m_axis_data,
    \o_y_reg[5]_0 ,
    \o_y_reg[5]_1 ,
    \o_y_reg[7]_0 ,
    \o_y_reg[7]_1 ,
    o_out1__86_carry__1_i_5__3,
    \o_x_reg[1]_0 ,
    Q,
    \o_out_reg[15]_0 ,
    \o_x_reg[3]_0 ,
    \o_x_reg[1]_1 ,
    \o_x_reg[5]_0 ,
    \o_x_reg[0]_0 ,
    \o_x_reg[4]_0 ,
    \o_x_reg[5]_1 ,
    \o_x_reg[5]_2 ,
    \o_x_reg[6]_0 ,
    \o_x_reg[0]_1 ,
    \o_y_reg[2]_0 ,
    \o_y_reg[7]_2 ,
    \o_y_reg[5]_2 ,
    \o_y_reg[3]_0 ,
    \o_y_reg[7]_3 ,
    \o_y_reg[2]_1 ,
    \o_y_reg[0]_0 ,
    \o_y_reg[5]_3 ,
    \o_y_reg[7]_4 ,
    \o_y_reg[7]_5 ,
    \o_out_reg[11]_0 ,
    O,
    \o_x_reg[1]_2 ,
    \o_x_reg[5]_3 ,
    \o_y_reg[1]_0 ,
    \o_y_reg[1]_1 ,
    \o_y_reg[1]_2 ,
    \o_x_reg[1]_3 ,
    \o_y_reg[4]_0 ,
    \o_y_reg[4]_1 ,
    \o_y_reg[7]_6 ,
    \o_y_reg[6]_0 ,
    o_out1__59_carry__1_0,
    p_0_in,
    axi_clk,
    \o_out_reg[15]_1 ,
    DI,
    S,
    o_out1__86_carry_i_8__3_0,
    o_out1__86_carry_i_8__3_1,
    o_out1__86_carry__0_i_3__3_0,
    o_out1__86_carry__0_i_3__3_1,
    \o_out[3]_i_2__3_0 ,
    \o_out[3]_i_2__3_1 ,
    o_out1__86_carry__0_i_4__3_0,
    o_out1__86_carry__0_i_4__3_1,
    o_out1__86_carry__1_i_5__3_0,
    o_out1__86_carry__1_i_5__3_1,
    o_out1__86_carry_i_1__3_0,
    o_out1__86_carry_i_1__3_1,
    o_out1__86_carry__0_i_6__3_0,
    o_out1__86_carry__0_i_6__3_1,
    o_out1__86_carry__1_i_3__3,
    o_out1__86_carry__1_i_3__3_0,
    \o_out_reg[15]_2 ,
    o_out1__59_carry_0,
    o_out1__59_carry__1_1,
    CO,
    \o_out_reg[15]_3 ,
    \o_out_reg[15]_4 ,
    o_out1__0_carry__0_0,
    o_out1__30_carry__0_0,
    o_out1__30_carry__0_1,
    o_out1__30_carry__0_2,
    o_out1__30_carry__0_3,
    o_out1__86_carry__1_0,
    o_out1__86_carry__1_1,
    o_out1__86_carry__1_2,
    o_out1__86_carry__1_3,
    \o_out_reg[15]_5 ,
    D,
    \o_y_reg[7]_7 );
  output [15:0]m_axis_data;
  output [0:0]\o_y_reg[5]_0 ;
  output [1:0]\o_y_reg[5]_1 ;
  output [2:0]\o_y_reg[7]_0 ;
  output [0:0]\o_y_reg[7]_1 ;
  output [2:0]o_out1__86_carry__1_i_5__3;
  output [1:0]\o_x_reg[1]_0 ;
  output [7:0]Q;
  output [0:0]\o_out_reg[15]_0 ;
  output [1:0]\o_x_reg[3]_0 ;
  output [1:0]\o_x_reg[1]_1 ;
  output \o_x_reg[5]_0 ;
  output [0:0]\o_x_reg[0]_0 ;
  output \o_x_reg[4]_0 ;
  output \o_x_reg[5]_1 ;
  output \o_x_reg[5]_2 ;
  output \o_x_reg[6]_0 ;
  output [1:0]\o_x_reg[0]_1 ;
  output [3:0]\o_y_reg[2]_0 ;
  output [7:0]\o_y_reg[7]_2 ;
  output [3:0]\o_y_reg[5]_2 ;
  output [1:0]\o_y_reg[3]_0 ;
  output [0:0]\o_y_reg[7]_3 ;
  output [1:0]\o_y_reg[2]_1 ;
  output [0:0]\o_y_reg[0]_0 ;
  output [1:0]\o_y_reg[5]_3 ;
  output [3:0]\o_y_reg[7]_4 ;
  output [0:0]\o_y_reg[7]_5 ;
  output [0:0]\o_out_reg[11]_0 ;
  output [3:0]O;
  output [2:0]\o_x_reg[1]_2 ;
  output [3:0]\o_x_reg[5]_3 ;
  output [0:0]\o_y_reg[1]_0 ;
  output [3:0]\o_y_reg[1]_1 ;
  output [1:0]\o_y_reg[1]_2 ;
  output [1:0]\o_x_reg[1]_3 ;
  output [3:0]\o_y_reg[4]_0 ;
  output [1:0]\o_y_reg[4]_1 ;
  output [1:0]\o_y_reg[7]_6 ;
  output [0:0]\o_y_reg[6]_0 ;
  output [2:0]o_out1__59_carry__1_0;
  input p_0_in;
  input axi_clk;
  input [3:0]\o_out_reg[15]_1 ;
  input [2:0]DI;
  input [3:0]S;
  input [3:0]o_out1__86_carry_i_8__3_0;
  input [3:0]o_out1__86_carry_i_8__3_1;
  input [1:0]o_out1__86_carry__0_i_3__3_0;
  input [1:0]o_out1__86_carry__0_i_3__3_1;
  input [2:0]\o_out[3]_i_2__3_0 ;
  input [3:0]\o_out[3]_i_2__3_1 ;
  input [3:0]o_out1__86_carry__0_i_4__3_0;
  input [3:0]o_out1__86_carry__0_i_4__3_1;
  input [1:0]o_out1__86_carry__1_i_5__3_0;
  input [1:0]o_out1__86_carry__1_i_5__3_1;
  input [2:0]o_out1__86_carry_i_1__3_0;
  input [3:0]o_out1__86_carry_i_1__3_1;
  input [3:0]o_out1__86_carry__0_i_6__3_0;
  input [3:0]o_out1__86_carry__0_i_6__3_1;
  input [0:0]o_out1__86_carry__1_i_3__3;
  input [0:0]o_out1__86_carry__1_i_3__3_0;
  input [2:0]\o_out_reg[15]_2 ;
  input [7:0]o_out1__59_carry_0;
  input [7:0]o_out1__59_carry__1_1;
  input [0:0]CO;
  input [2:0]\o_out_reg[15]_3 ;
  input [0:0]\o_out_reg[15]_4 ;
  input o_out1__0_carry__0_0;
  input o_out1__30_carry__0_0;
  input o_out1__30_carry__0_1;
  input o_out1__30_carry__0_2;
  input o_out1__30_carry__0_3;
  input [1:0]o_out1__86_carry__1_0;
  input [2:0]o_out1__86_carry__1_1;
  input [0:0]o_out1__86_carry__1_2;
  input [0:0]o_out1__86_carry__1_3;
  input [2:0]\o_out_reg[15]_5 ;
  input [7:0]D;
  input [7:0]\o_y_reg[7]_7 ;

  wire [0:0]CO;
  wire [7:0]D;
  wire [2:0]DI;
  wire [3:0]O;
  wire [7:0]Q;
  wire [3:0]S;
  wire axi_clk;
  wire [15:0]m_axis_data;
  wire o_out1__0_carry__0_0;
  wire o_out1__0_carry__0_i_10__6_n_0;
  wire o_out1__0_carry__0_i_11__6_n_0;
  wire o_out1__0_carry__0_i_12__6_n_0;
  wire o_out1__0_carry__0_n_0;
  wire o_out1__0_carry__0_n_1;
  wire o_out1__0_carry__0_n_2;
  wire o_out1__0_carry__0_n_3;
  wire o_out1__0_carry__0_n_4;
  wire o_out1__0_carry__0_n_5;
  wire o_out1__0_carry__0_n_6;
  wire o_out1__0_carry__0_n_7;
  wire o_out1__0_carry__1_n_1;
  wire o_out1__0_carry__1_n_3;
  wire o_out1__0_carry__1_n_6;
  wire o_out1__0_carry__1_n_7;
  wire o_out1__0_carry_n_0;
  wire o_out1__0_carry_n_1;
  wire o_out1__0_carry_n_2;
  wire o_out1__0_carry_n_3;
  wire o_out1__0_carry_n_4;
  wire o_out1__0_carry_n_5;
  wire o_out1__0_carry_n_6;
  wire o_out1__0_carry_n_7;
  wire o_out1__30_carry__0_0;
  wire o_out1__30_carry__0_1;
  wire o_out1__30_carry__0_2;
  wire o_out1__30_carry__0_3;
  wire o_out1__30_carry__0_n_0;
  wire o_out1__30_carry__0_n_1;
  wire o_out1__30_carry__0_n_2;
  wire o_out1__30_carry__0_n_3;
  wire o_out1__30_carry__0_n_4;
  wire o_out1__30_carry__0_n_5;
  wire o_out1__30_carry__0_n_6;
  wire o_out1__30_carry__0_n_7;
  wire o_out1__30_carry__1_n_3;
  wire o_out1__30_carry_n_0;
  wire o_out1__30_carry_n_1;
  wire o_out1__30_carry_n_2;
  wire o_out1__30_carry_n_3;
  wire o_out1__30_carry_n_4;
  wire o_out1__30_carry_n_5;
  wire o_out1__30_carry_n_6;
  wire o_out1__30_carry_n_7;
  wire [7:0]o_out1__59_carry_0;
  wire o_out1__59_carry__0_n_0;
  wire o_out1__59_carry__0_n_1;
  wire o_out1__59_carry__0_n_2;
  wire o_out1__59_carry__0_n_3;
  wire o_out1__59_carry__0_n_7;
  wire [2:0]o_out1__59_carry__1_0;
  wire [7:0]o_out1__59_carry__1_1;
  wire o_out1__59_carry__1_n_3;
  wire o_out1__59_carry__1_n_6;
  wire o_out1__59_carry_n_0;
  wire o_out1__59_carry_n_1;
  wire o_out1__59_carry_n_2;
  wire o_out1__59_carry_n_3;
  wire o_out1__59_carry_n_4;
  wire o_out1__59_carry_n_5;
  wire o_out1__59_carry_n_6;
  wire o_out1__59_carry_n_7;
  wire o_out1__86_carry__0_i_1__3_n_0;
  wire o_out1__86_carry__0_i_2__3_n_0;
  wire [1:0]o_out1__86_carry__0_i_3__3_0;
  wire [1:0]o_out1__86_carry__0_i_3__3_1;
  wire o_out1__86_carry__0_i_3__3_n_0;
  wire [3:0]o_out1__86_carry__0_i_4__3_0;
  wire [3:0]o_out1__86_carry__0_i_4__3_1;
  wire o_out1__86_carry__0_i_4__3_n_0;
  wire o_out1__86_carry__0_i_5__3_n_0;
  wire [3:0]o_out1__86_carry__0_i_6__3_0;
  wire [3:0]o_out1__86_carry__0_i_6__3_1;
  wire o_out1__86_carry__0_i_6__3_n_0;
  wire o_out1__86_carry__0_i_7__3_n_0;
  wire o_out1__86_carry__0_i_8__3_n_0;
  wire o_out1__86_carry__0_n_0;
  wire o_out1__86_carry__0_n_1;
  wire o_out1__86_carry__0_n_2;
  wire o_out1__86_carry__0_n_3;
  wire o_out1__86_carry__0_n_4;
  wire o_out1__86_carry__0_n_5;
  wire o_out1__86_carry__0_n_6;
  wire o_out1__86_carry__0_n_7;
  wire [1:0]o_out1__86_carry__1_0;
  wire [2:0]o_out1__86_carry__1_1;
  wire [0:0]o_out1__86_carry__1_2;
  wire [0:0]o_out1__86_carry__1_3;
  wire o_out1__86_carry__1_i_1__3_n_0;
  wire o_out1__86_carry__1_i_2__3_n_0;
  wire [0:0]o_out1__86_carry__1_i_3__3;
  wire [0:0]o_out1__86_carry__1_i_3__3_0;
  wire [2:0]o_out1__86_carry__1_i_5__3;
  wire [1:0]o_out1__86_carry__1_i_5__3_0;
  wire [1:0]o_out1__86_carry__1_i_5__3_1;
  wire o_out1__86_carry__1_n_1;
  wire o_out1__86_carry__1_n_2;
  wire o_out1__86_carry__1_n_3;
  wire o_out1__86_carry__1_n_4;
  wire [2:0]o_out1__86_carry_i_1__3_0;
  wire [3:0]o_out1__86_carry_i_1__3_1;
  wire o_out1__86_carry_i_1__3_n_0;
  wire o_out1__86_carry_i_2__3_n_0;
  wire o_out1__86_carry_i_3__3_n_0;
  wire o_out1__86_carry_i_4__3_n_0;
  wire o_out1__86_carry_i_5__3_n_0;
  wire o_out1__86_carry_i_6__3_n_0;
  wire o_out1__86_carry_i_7__3_n_0;
  wire [3:0]o_out1__86_carry_i_8__3_0;
  wire [3:0]o_out1__86_carry_i_8__3_1;
  wire o_out1__86_carry_i_8__3_n_0;
  wire o_out1__86_carry_n_0;
  wire o_out1__86_carry_n_1;
  wire o_out1__86_carry_n_2;
  wire o_out1__86_carry_n_3;
  wire o_out1__86_carry_n_4;
  wire o_out1__86_carry_n_5;
  wire o_out1__86_carry_n_6;
  wire o_out1__86_carry_n_7;
  wire \o_out[11]_i_2__3_n_0 ;
  wire \o_out[11]_i_3__3_n_0 ;
  wire \o_out[11]_i_4__3_n_0 ;
  wire \o_out[11]_i_5__3_n_0 ;
  wire \o_out[15]_i_3__7_n_0 ;
  wire \o_out[15]_i_4__6_n_0 ;
  wire \o_out[15]_i_5__6_n_0 ;
  wire [2:0]\o_out[3]_i_2__3_0 ;
  wire [3:0]\o_out[3]_i_2__3_1 ;
  wire \o_out[3]_i_2__3_n_0 ;
  wire \o_out[3]_i_3__3_n_0 ;
  wire \o_out[3]_i_4__3_n_0 ;
  wire \o_out[3]_i_5__3_n_0 ;
  wire \o_out[7]_i_2__3_n_0 ;
  wire \o_out[7]_i_3__3_n_0 ;
  wire \o_out[7]_i_4__3_n_0 ;
  wire \o_out[7]_i_5__3_n_0 ;
  wire [0:0]\o_out_reg[11]_0 ;
  wire \o_out_reg[11]_i_1__3_n_1 ;
  wire \o_out_reg[11]_i_1__3_n_2 ;
  wire \o_out_reg[11]_i_1__3_n_3 ;
  wire \o_out_reg[11]_i_1__3_n_4 ;
  wire \o_out_reg[11]_i_1__3_n_5 ;
  wire \o_out_reg[11]_i_1__3_n_6 ;
  wire \o_out_reg[11]_i_1__3_n_7 ;
  wire [0:0]\o_out_reg[15]_0 ;
  wire [3:0]\o_out_reg[15]_1 ;
  wire [2:0]\o_out_reg[15]_2 ;
  wire [2:0]\o_out_reg[15]_3 ;
  wire [0:0]\o_out_reg[15]_4 ;
  wire [2:0]\o_out_reg[15]_5 ;
  wire \o_out_reg[15]_i_1__6_n_1 ;
  wire \o_out_reg[15]_i_1__6_n_2 ;
  wire \o_out_reg[15]_i_1__6_n_3 ;
  wire \o_out_reg[3]_i_1__3_n_0 ;
  wire \o_out_reg[3]_i_1__3_n_1 ;
  wire \o_out_reg[3]_i_1__3_n_2 ;
  wire \o_out_reg[3]_i_1__3_n_3 ;
  wire \o_out_reg[3]_i_1__3_n_4 ;
  wire \o_out_reg[3]_i_1__3_n_5 ;
  wire \o_out_reg[3]_i_1__3_n_6 ;
  wire \o_out_reg[3]_i_1__3_n_7 ;
  wire \o_out_reg[7]_i_1__3_n_0 ;
  wire \o_out_reg[7]_i_1__3_n_1 ;
  wire \o_out_reg[7]_i_1__3_n_2 ;
  wire \o_out_reg[7]_i_1__3_n_3 ;
  wire \o_out_reg[7]_i_1__3_n_4 ;
  wire \o_out_reg[7]_i_1__3_n_5 ;
  wire \o_out_reg[7]_i_1__3_n_6 ;
  wire \o_out_reg[7]_i_1__3_n_7 ;
  wire [0:0]\o_x_reg[0]_0 ;
  wire [1:0]\o_x_reg[0]_1 ;
  wire [1:0]\o_x_reg[1]_0 ;
  wire [1:0]\o_x_reg[1]_1 ;
  wire [2:0]\o_x_reg[1]_2 ;
  wire [1:0]\o_x_reg[1]_3 ;
  wire [1:0]\o_x_reg[3]_0 ;
  wire \o_x_reg[4]_0 ;
  wire \o_x_reg[5]_0 ;
  wire \o_x_reg[5]_1 ;
  wire \o_x_reg[5]_2 ;
  wire [3:0]\o_x_reg[5]_3 ;
  wire \o_x_reg[6]_0 ;
  wire [0:0]\o_y_reg[0]_0 ;
  wire [0:0]\o_y_reg[1]_0 ;
  wire [3:0]\o_y_reg[1]_1 ;
  wire [1:0]\o_y_reg[1]_2 ;
  wire [3:0]\o_y_reg[2]_0 ;
  wire [1:0]\o_y_reg[2]_1 ;
  wire [1:0]\o_y_reg[3]_0 ;
  wire [3:0]\o_y_reg[4]_0 ;
  wire [1:0]\o_y_reg[4]_1 ;
  wire [0:0]\o_y_reg[5]_0 ;
  wire [1:0]\o_y_reg[5]_1 ;
  wire [3:0]\o_y_reg[5]_2 ;
  wire [1:0]\o_y_reg[5]_3 ;
  wire [0:0]\o_y_reg[6]_0 ;
  wire [2:0]\o_y_reg[7]_0 ;
  wire [0:0]\o_y_reg[7]_1 ;
  wire [7:0]\o_y_reg[7]_2 ;
  wire [0:0]\o_y_reg[7]_3 ;
  wire [3:0]\o_y_reg[7]_4 ;
  wire [0:0]\o_y_reg[7]_5 ;
  wire [1:0]\o_y_reg[7]_6 ;
  wire [7:0]\o_y_reg[7]_7 ;
  wire p_0_in;
  wire [3:1]NLW_o_out1__0_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_o_out1__0_carry__1_O_UNCONNECTED;
  wire [3:1]NLW_o_out1__30_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_o_out1__30_carry__1_O_UNCONNECTED;
  wire [3:1]NLW_o_out1__59_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_o_out1__59_carry__1_O_UNCONNECTED;
  wire [3:3]NLW_o_out1__86_carry__1_CO_UNCONNECTED;
  wire [3:3]\NLW_o_out_reg[15]_i_1__6_CO_UNCONNECTED ;

  CARRY4 o_out1__0_carry
       (.CI(1'b0),
        .CO({o_out1__0_carry_n_0,o_out1__0_carry_n_1,o_out1__0_carry_n_2,o_out1__0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({DI,1'b0}),
        .O({o_out1__0_carry_n_4,o_out1__0_carry_n_5,o_out1__0_carry_n_6,o_out1__0_carry_n_7}),
        .S(S));
  CARRY4 o_out1__0_carry__0
       (.CI(o_out1__0_carry_n_0),
        .CO({o_out1__0_carry__0_n_0,o_out1__0_carry__0_n_1,o_out1__0_carry__0_n_2,o_out1__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(o_out1__86_carry_i_8__3_0),
        .O({o_out1__0_carry__0_n_4,o_out1__0_carry__0_n_5,o_out1__0_carry__0_n_6,o_out1__0_carry__0_n_7}),
        .S(o_out1__86_carry_i_8__3_1));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__0_carry__0_i_10__6
       (.I0(\o_y_reg[7]_2 [0]),
        .I1(o_out1__59_carry__1_1[6]),
        .O(o_out1__0_carry__0_i_10__6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__0_carry__0_i_11__6
       (.I0(\o_y_reg[7]_2 [0]),
        .I1(o_out1__59_carry__1_1[5]),
        .O(o_out1__0_carry__0_i_11__6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__0_carry__0_i_12__6
       (.I0(\o_y_reg[7]_2 [0]),
        .I1(o_out1__59_carry__1_1[4]),
        .O(o_out1__0_carry__0_i_12__6_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    o_out1__0_carry__0_i_1__6
       (.I0(\o_y_reg[7]_2 [2]),
        .I1(o_out1__59_carry__1_1[4]),
        .I2(\o_y_reg[7]_2 [1]),
        .I3(o_out1__59_carry__1_1[5]),
        .I4(\o_y_reg[7]_2 [0]),
        .I5(o_out1__59_carry__1_1[6]),
        .O(\o_y_reg[2]_0 [3]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    o_out1__0_carry__0_i_2__6
       (.I0(\o_y_reg[7]_2 [2]),
        .I1(o_out1__59_carry__1_1[3]),
        .I2(\o_y_reg[7]_2 [1]),
        .I3(o_out1__59_carry__1_1[4]),
        .I4(\o_y_reg[7]_2 [0]),
        .I5(o_out1__59_carry__1_1[5]),
        .O(\o_y_reg[2]_0 [2]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    o_out1__0_carry__0_i_3__6
       (.I0(\o_y_reg[7]_2 [2]),
        .I1(o_out1__59_carry__1_1[2]),
        .I2(\o_y_reg[7]_2 [1]),
        .I3(o_out1__59_carry__1_1[3]),
        .I4(\o_y_reg[7]_2 [0]),
        .I5(o_out1__59_carry__1_1[4]),
        .O(\o_y_reg[2]_0 [1]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    o_out1__0_carry__0_i_4__6
       (.I0(\o_y_reg[7]_2 [2]),
        .I1(o_out1__59_carry__1_1[1]),
        .I2(\o_y_reg[7]_2 [1]),
        .I3(o_out1__59_carry__1_1[2]),
        .I4(\o_y_reg[7]_2 [0]),
        .I5(o_out1__59_carry__1_1[3]),
        .O(\o_y_reg[2]_0 [0]));
  LUT6 #(
    .INIT(64'h9666699969996999)) 
    o_out1__0_carry__0_i_5__6
       (.I0(\o_y_reg[2]_0 [3]),
        .I1(o_out1__0_carry__0_0),
        .I2(\o_y_reg[7]_2 [1]),
        .I3(o_out1__59_carry__1_1[6]),
        .I4(\o_y_reg[7]_2 [0]),
        .I5(o_out1__59_carry__1_1[7]),
        .O(\o_y_reg[1]_1 [3]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    o_out1__0_carry__0_i_6__6
       (.I0(\o_y_reg[2]_0 [2]),
        .I1(o_out1__59_carry__1_1[5]),
        .I2(\o_y_reg[7]_2 [1]),
        .I3(o_out1__59_carry__1_1[4]),
        .I4(\o_y_reg[7]_2 [2]),
        .I5(o_out1__0_carry__0_i_10__6_n_0),
        .O(\o_y_reg[1]_1 [2]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    o_out1__0_carry__0_i_7__6
       (.I0(\o_y_reg[2]_0 [1]),
        .I1(o_out1__59_carry__1_1[4]),
        .I2(\o_y_reg[7]_2 [1]),
        .I3(o_out1__59_carry__1_1[3]),
        .I4(\o_y_reg[7]_2 [2]),
        .I5(o_out1__0_carry__0_i_11__6_n_0),
        .O(\o_y_reg[1]_1 [1]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    o_out1__0_carry__0_i_8__6
       (.I0(\o_y_reg[2]_0 [0]),
        .I1(o_out1__59_carry__1_1[3]),
        .I2(\o_y_reg[7]_2 [1]),
        .I3(o_out1__59_carry__1_1[2]),
        .I4(\o_y_reg[7]_2 [2]),
        .I5(o_out1__0_carry__0_i_12__6_n_0),
        .O(\o_y_reg[1]_1 [0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__0_carry__0_i_9__4
       (.I0(Q[5]),
        .I1(o_out1__59_carry_0[2]),
        .O(\o_x_reg[5]_0 ));
  CARRY4 o_out1__0_carry__1
       (.CI(o_out1__0_carry__0_n_0),
        .CO({NLW_o_out1__0_carry__1_CO_UNCONNECTED[3],o_out1__0_carry__1_n_1,NLW_o_out1__0_carry__1_CO_UNCONNECTED[1],o_out1__0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,o_out1__86_carry__0_i_3__3_0}),
        .O({NLW_o_out1__0_carry__1_O_UNCONNECTED[3:2],o_out1__0_carry__1_n_6,o_out1__0_carry__1_n_7}),
        .S({1'b0,1'b1,o_out1__86_carry__0_i_3__3_1}));
  LUT4 #(
    .INIT(16'h0888)) 
    o_out1__0_carry__1_i_1__6
       (.I0(\o_y_reg[7]_2 [2]),
        .I1(o_out1__59_carry__1_1[6]),
        .I2(\o_y_reg[7]_2 [1]),
        .I3(o_out1__59_carry__1_1[7]),
        .O(\o_y_reg[2]_1 [1]));
  LUT6 #(
    .INIT(64'h8000F888F888F888)) 
    o_out1__0_carry__1_i_2__6
       (.I0(\o_y_reg[7]_2 [2]),
        .I1(o_out1__59_carry__1_1[5]),
        .I2(\o_y_reg[7]_2 [1]),
        .I3(o_out1__59_carry__1_1[6]),
        .I4(\o_y_reg[7]_2 [0]),
        .I5(o_out1__59_carry__1_1[7]),
        .O(\o_y_reg[2]_1 [0]));
  LUT4 #(
    .INIT(16'h4F3F)) 
    o_out1__0_carry__1_i_3__6
       (.I0(\o_y_reg[7]_2 [1]),
        .I1(o_out1__59_carry__1_1[6]),
        .I2(\o_y_reg[7]_2 [2]),
        .I3(o_out1__59_carry__1_1[7]),
        .O(\o_y_reg[1]_2 [1]));
  LUT6 #(
    .INIT(64'h25404FBFF03FCF3F)) 
    o_out1__0_carry__1_i_4__6
       (.I0(\o_y_reg[7]_2 [0]),
        .I1(o_out1__59_carry__1_1[5]),
        .I2(\o_y_reg[7]_2 [2]),
        .I3(o_out1__59_carry__1_1[6]),
        .I4(\o_y_reg[7]_2 [1]),
        .I5(o_out1__59_carry__1_1[7]),
        .O(\o_y_reg[1]_2 [0]));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    o_out1__0_carry_i_1__4
       (.I0(Q[3]),
        .I1(o_out1__59_carry_0[0]),
        .I2(o_out1__59_carry_0[2]),
        .I3(Q[1]),
        .I4(o_out1__59_carry_0[1]),
        .I5(Q[2]),
        .O(\o_x_reg[3]_0 [1]));
  LUT4 #(
    .INIT(16'h7888)) 
    o_out1__0_carry_i_2__6
       (.I0(\o_y_reg[7]_2 [1]),
        .I1(o_out1__59_carry__1_1[1]),
        .I2(\o_y_reg[7]_2 [2]),
        .I3(o_out1__59_carry__1_1[0]),
        .O(\o_y_reg[1]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__0_carry_i_3__4
       (.I0(Q[0]),
        .I1(o_out1__59_carry_0[1]),
        .O(\o_x_reg[3]_0 [0]));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    o_out1__0_carry_i_4__4
       (.I0(\o_x_reg[3]_0 [1]),
        .I1(Q[1]),
        .I2(o_out1__59_carry_0[2]),
        .I3(Q[0]),
        .I4(o_out1__59_carry_0[1]),
        .O(\o_x_reg[1]_2 [2]));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    o_out1__0_carry_i_5__4
       (.I0(Q[0]),
        .I1(o_out1__59_carry_0[2]),
        .I2(Q[1]),
        .I3(o_out1__59_carry_0[1]),
        .I4(Q[2]),
        .I5(o_out1__59_carry_0[0]),
        .O(\o_x_reg[1]_2 [1]));
  LUT4 #(
    .INIT(16'h7888)) 
    o_out1__0_carry_i_6__4
       (.I0(Q[1]),
        .I1(o_out1__59_carry_0[0]),
        .I2(o_out1__59_carry_0[1]),
        .I3(Q[0]),
        .O(\o_x_reg[1]_2 [0]));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__0_carry_i_7__6
       (.I0(\o_y_reg[7]_2 [0]),
        .I1(o_out1__59_carry__1_1[0]),
        .O(\o_y_reg[0]_0 ));
  CARRY4 o_out1__30_carry
       (.CI(1'b0),
        .CO({o_out1__30_carry_n_0,o_out1__30_carry_n_1,o_out1__30_carry_n_2,o_out1__30_carry_n_3}),
        .CYINIT(1'b0),
        .DI({\o_out[3]_i_2__3_0 ,1'b0}),
        .O({o_out1__30_carry_n_4,o_out1__30_carry_n_5,o_out1__30_carry_n_6,o_out1__30_carry_n_7}),
        .S(\o_out[3]_i_2__3_1 ));
  CARRY4 o_out1__30_carry__0
       (.CI(o_out1__30_carry_n_0),
        .CO({o_out1__30_carry__0_n_0,o_out1__30_carry__0_n_1,o_out1__30_carry__0_n_2,o_out1__30_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(o_out1__86_carry__0_i_4__3_0),
        .O({o_out1__30_carry__0_n_4,o_out1__30_carry__0_n_5,o_out1__30_carry__0_n_6,o_out1__30_carry__0_n_7}),
        .S(o_out1__86_carry__0_i_4__3_1));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__30_carry__0_i_10__4
       (.I0(Q[6]),
        .I1(o_out1__59_carry_0[3]),
        .O(\o_x_reg[6]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__30_carry__0_i_11__4
       (.I0(Q[5]),
        .I1(o_out1__59_carry_0[3]),
        .O(\o_x_reg[5]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__30_carry__0_i_12__4
       (.I0(Q[4]),
        .I1(o_out1__59_carry_0[3]),
        .O(\o_x_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    o_out1__30_carry__0_i_1__6
       (.I0(\o_y_reg[7]_2 [5]),
        .I1(o_out1__59_carry__1_1[4]),
        .I2(\o_y_reg[7]_2 [4]),
        .I3(o_out1__59_carry__1_1[5]),
        .I4(o_out1__59_carry__1_1[6]),
        .I5(\o_y_reg[7]_2 [3]),
        .O(\o_y_reg[5]_2 [3]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    o_out1__30_carry__0_i_2__6
       (.I0(\o_y_reg[7]_2 [5]),
        .I1(o_out1__59_carry__1_1[3]),
        .I2(\o_y_reg[7]_2 [4]),
        .I3(o_out1__59_carry__1_1[4]),
        .I4(o_out1__59_carry__1_1[5]),
        .I5(\o_y_reg[7]_2 [3]),
        .O(\o_y_reg[5]_2 [2]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    o_out1__30_carry__0_i_3__6
       (.I0(\o_y_reg[7]_2 [5]),
        .I1(o_out1__59_carry__1_1[2]),
        .I2(\o_y_reg[7]_2 [4]),
        .I3(o_out1__59_carry__1_1[3]),
        .I4(o_out1__59_carry__1_1[4]),
        .I5(\o_y_reg[7]_2 [3]),
        .O(\o_y_reg[5]_2 [1]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    o_out1__30_carry__0_i_4__6
       (.I0(\o_y_reg[7]_2 [5]),
        .I1(o_out1__59_carry__1_1[1]),
        .I2(\o_y_reg[7]_2 [4]),
        .I3(o_out1__59_carry__1_1[2]),
        .I4(o_out1__59_carry__1_1[3]),
        .I5(\o_y_reg[7]_2 [3]),
        .O(\o_y_reg[5]_2 [0]));
  LUT6 #(
    .INIT(64'h9666699969996999)) 
    o_out1__30_carry__0_i_5__6
       (.I0(\o_y_reg[5]_2 [3]),
        .I1(o_out1__30_carry__0_3),
        .I2(\o_y_reg[7]_2 [4]),
        .I3(o_out1__59_carry__1_1[6]),
        .I4(o_out1__59_carry__1_1[7]),
        .I5(\o_y_reg[7]_2 [3]),
        .O(\o_y_reg[4]_0 [3]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    o_out1__30_carry__0_i_6__6
       (.I0(\o_y_reg[5]_2 [2]),
        .I1(o_out1__59_carry__1_1[5]),
        .I2(\o_y_reg[7]_2 [4]),
        .I3(o_out1__59_carry__1_1[4]),
        .I4(\o_y_reg[7]_2 [5]),
        .I5(o_out1__30_carry__0_2),
        .O(\o_y_reg[4]_0 [2]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    o_out1__30_carry__0_i_7__6
       (.I0(\o_y_reg[5]_2 [1]),
        .I1(o_out1__59_carry__1_1[4]),
        .I2(\o_y_reg[7]_2 [4]),
        .I3(o_out1__59_carry__1_1[3]),
        .I4(\o_y_reg[7]_2 [5]),
        .I5(o_out1__30_carry__0_1),
        .O(\o_y_reg[4]_0 [1]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    o_out1__30_carry__0_i_8__6
       (.I0(\o_y_reg[5]_2 [0]),
        .I1(o_out1__59_carry__1_1[3]),
        .I2(\o_y_reg[7]_2 [4]),
        .I3(o_out1__59_carry__1_1[2]),
        .I4(\o_y_reg[7]_2 [5]),
        .I5(o_out1__30_carry__0_0),
        .O(\o_y_reg[4]_0 [0]));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__30_carry__0_i_9__4
       (.I0(Q[5]),
        .I1(o_out1__59_carry_0[5]),
        .O(\o_x_reg[5]_2 ));
  CARRY4 o_out1__30_carry__1
       (.CI(o_out1__30_carry__0_n_0),
        .CO({NLW_o_out1__30_carry__1_CO_UNCONNECTED[3],\o_y_reg[5]_0 ,NLW_o_out1__30_carry__1_CO_UNCONNECTED[1],o_out1__30_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,o_out1__86_carry__1_i_5__3_0}),
        .O({NLW_o_out1__30_carry__1_O_UNCONNECTED[3:2],\o_y_reg[5]_1 }),
        .S({1'b0,1'b1,o_out1__86_carry__1_i_5__3_1}));
  LUT4 #(
    .INIT(16'h0888)) 
    o_out1__30_carry__1_i_1__6
       (.I0(\o_y_reg[7]_2 [5]),
        .I1(o_out1__59_carry__1_1[6]),
        .I2(\o_y_reg[7]_2 [4]),
        .I3(o_out1__59_carry__1_1[7]),
        .O(\o_y_reg[5]_3 [1]));
  LUT6 #(
    .INIT(64'h8000F888F888F888)) 
    o_out1__30_carry__1_i_2__6
       (.I0(\o_y_reg[7]_2 [5]),
        .I1(o_out1__59_carry__1_1[5]),
        .I2(\o_y_reg[7]_2 [4]),
        .I3(o_out1__59_carry__1_1[6]),
        .I4(o_out1__59_carry__1_1[7]),
        .I5(\o_y_reg[7]_2 [3]),
        .O(\o_y_reg[5]_3 [0]));
  LUT4 #(
    .INIT(16'h4F3F)) 
    o_out1__30_carry__1_i_3__6
       (.I0(\o_y_reg[7]_2 [4]),
        .I1(o_out1__59_carry__1_1[6]),
        .I2(\o_y_reg[7]_2 [5]),
        .I3(o_out1__59_carry__1_1[7]),
        .O(\o_y_reg[4]_1 [1]));
  LUT6 #(
    .INIT(64'h25404FBFF03FCF3F)) 
    o_out1__30_carry__1_i_4__6
       (.I0(\o_y_reg[7]_2 [3]),
        .I1(o_out1__59_carry__1_1[5]),
        .I2(\o_y_reg[7]_2 [5]),
        .I3(o_out1__59_carry__1_1[6]),
        .I4(\o_y_reg[7]_2 [4]),
        .I5(o_out1__59_carry__1_1[7]),
        .O(\o_y_reg[4]_1 [0]));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    o_out1__30_carry_i_1__6
       (.I0(\o_y_reg[7]_2 [3]),
        .I1(o_out1__59_carry__1_1[3]),
        .I2(\o_y_reg[7]_2 [5]),
        .I3(o_out1__59_carry__1_1[1]),
        .I4(\o_y_reg[7]_2 [4]),
        .I5(o_out1__59_carry__1_1[2]),
        .O(\o_y_reg[3]_0 [1]));
  LUT4 #(
    .INIT(16'h7888)) 
    o_out1__30_carry_i_2__6
       (.I0(\o_y_reg[7]_2 [4]),
        .I1(o_out1__59_carry__1_1[1]),
        .I2(\o_y_reg[7]_2 [5]),
        .I3(o_out1__59_carry__1_1[0]),
        .O(\o_y_reg[3]_0 [0]));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__30_carry_i_3__4
       (.I0(Q[0]),
        .I1(o_out1__59_carry_0[4]),
        .O(\o_x_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    o_out1__30_carry_i_4__6
       (.I0(\o_y_reg[3]_0 [1]),
        .I1(o_out1__59_carry__1_1[1]),
        .I2(\o_y_reg[7]_2 [5]),
        .I3(o_out1__59_carry__1_1[0]),
        .I4(\o_y_reg[7]_2 [4]),
        .O(\o_x_reg[1]_3 [1]));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    o_out1__30_carry_i_5__4
       (.I0(Q[0]),
        .I1(o_out1__59_carry_0[5]),
        .I2(Q[1]),
        .I3(o_out1__59_carry_0[4]),
        .I4(o_out1__59_carry_0[3]),
        .I5(Q[2]),
        .O(\o_x_reg[0]_1 [1]));
  LUT4 #(
    .INIT(16'h7888)) 
    o_out1__30_carry_i_6__6
       (.I0(\o_y_reg[7]_2 [3]),
        .I1(o_out1__59_carry__1_1[1]),
        .I2(\o_y_reg[7]_2 [4]),
        .I3(o_out1__59_carry__1_1[0]),
        .O(\o_x_reg[1]_3 [0]));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__30_carry_i_7__4
       (.I0(Q[0]),
        .I1(o_out1__59_carry_0[3]),
        .O(\o_x_reg[0]_1 [0]));
  CARRY4 o_out1__59_carry
       (.CI(1'b0),
        .CO({o_out1__59_carry_n_0,o_out1__59_carry_n_1,o_out1__59_carry_n_2,o_out1__59_carry_n_3}),
        .CYINIT(1'b0),
        .DI({o_out1__86_carry_i_1__3_0,1'b0}),
        .O({o_out1__59_carry_n_4,o_out1__59_carry_n_5,o_out1__59_carry_n_6,o_out1__59_carry_n_7}),
        .S(o_out1__86_carry_i_1__3_1));
  CARRY4 o_out1__59_carry__0
       (.CI(o_out1__59_carry_n_0),
        .CO({o_out1__59_carry__0_n_0,o_out1__59_carry__0_n_1,o_out1__59_carry__0_n_2,o_out1__59_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(o_out1__86_carry__0_i_6__3_0),
        .O({\o_y_reg[7]_0 ,o_out1__59_carry__0_n_7}),
        .S(o_out1__86_carry__0_i_6__3_1));
  LUT4 #(
    .INIT(16'h7000)) 
    o_out1__59_carry__0_i_1__6
       (.I0(\o_y_reg[7]_2 [7]),
        .I1(o_out1__59_carry__1_1[5]),
        .I2(\o_y_reg[7]_2 [6]),
        .I3(o_out1__59_carry__1_1[6]),
        .O(\o_y_reg[7]_4 [3]));
  LUT4 #(
    .INIT(16'h7000)) 
    o_out1__59_carry__0_i_2__6
       (.I0(\o_y_reg[7]_2 [7]),
        .I1(o_out1__59_carry__1_1[4]),
        .I2(\o_y_reg[7]_2 [6]),
        .I3(o_out1__59_carry__1_1[5]),
        .O(\o_y_reg[7]_4 [2]));
  LUT4 #(
    .INIT(16'h7000)) 
    o_out1__59_carry__0_i_3__6
       (.I0(\o_y_reg[7]_2 [7]),
        .I1(o_out1__59_carry__1_1[3]),
        .I2(\o_y_reg[7]_2 [6]),
        .I3(o_out1__59_carry__1_1[4]),
        .O(\o_y_reg[7]_4 [1]));
  LUT4 #(
    .INIT(16'h7000)) 
    o_out1__59_carry__0_i_4__6
       (.I0(\o_y_reg[7]_2 [7]),
        .I1(o_out1__59_carry__1_1[2]),
        .I2(\o_y_reg[7]_2 [6]),
        .I3(o_out1__59_carry__1_1[3]),
        .O(\o_y_reg[7]_4 [0]));
  LUT5 #(
    .INIT(32'h6FC030C0)) 
    o_out1__59_carry__0_i_5__4
       (.I0(Q[5]),
        .I1(Q[7]),
        .I2(o_out1__59_carry_0[6]),
        .I3(Q[6]),
        .I4(o_out1__59_carry_0[7]),
        .O(\o_x_reg[5]_3 [3]));
  LUT5 #(
    .INIT(32'h903FCF3F)) 
    o_out1__59_carry__0_i_6__4
       (.I0(Q[4]),
        .I1(Q[6]),
        .I2(o_out1__59_carry_0[6]),
        .I3(Q[5]),
        .I4(o_out1__59_carry_0[7]),
        .O(\o_x_reg[5]_3 [2]));
  LUT5 #(
    .INIT(32'h903FCF3F)) 
    o_out1__59_carry__0_i_7__4
       (.I0(Q[3]),
        .I1(Q[5]),
        .I2(o_out1__59_carry_0[6]),
        .I3(Q[4]),
        .I4(o_out1__59_carry_0[7]),
        .O(\o_x_reg[5]_3 [1]));
  LUT5 #(
    .INIT(32'h903FCF3F)) 
    o_out1__59_carry__0_i_8__4
       (.I0(Q[2]),
        .I1(Q[4]),
        .I2(o_out1__59_carry_0[6]),
        .I3(Q[3]),
        .I4(o_out1__59_carry_0[7]),
        .O(\o_x_reg[5]_3 [0]));
  CARRY4 o_out1__59_carry__1
       (.CI(o_out1__59_carry__0_n_0),
        .CO({NLW_o_out1__59_carry__1_CO_UNCONNECTED[3:1],o_out1__59_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,o_out1__86_carry__1_i_3__3}),
        .O({NLW_o_out1__59_carry__1_O_UNCONNECTED[3:2],o_out1__59_carry__1_n_6,\o_y_reg[7]_1 }),
        .S({1'b0,1'b0,1'b1,o_out1__86_carry__1_i_3__3_0}));
  LUT4 #(
    .INIT(16'h0777)) 
    o_out1__59_carry__1_i_1__6
       (.I0(\o_y_reg[7]_2 [7]),
        .I1(o_out1__59_carry__1_1[6]),
        .I2(\o_y_reg[7]_2 [6]),
        .I3(o_out1__59_carry__1_1[7]),
        .O(\o_y_reg[7]_5 ));
  LUT4 #(
    .INIT(16'hE53F)) 
    o_out1__59_carry__1_i_2__6
       (.I0(\o_y_reg[7]_2 [6]),
        .I1(o_out1__59_carry__1_1[6]),
        .I2(\o_y_reg[7]_2 [7]),
        .I3(o_out1__59_carry__1_1[7]),
        .O(\o_y_reg[6]_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    o_out1__59_carry_i_1__6
       (.I0(\o_y_reg[7]_2 [7]),
        .I1(o_out1__59_carry__1_1[1]),
        .O(\o_y_reg[7]_3 ));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__59_carry_i_2__4
       (.I0(Q[1]),
        .I1(o_out1__59_carry_0[7]),
        .O(\o_x_reg[1]_1 [1]));
  LUT2 #(
    .INIT(4'h7)) 
    o_out1__59_carry_i_3__4
       (.I0(Q[0]),
        .I1(o_out1__59_carry_0[7]),
        .O(\o_x_reg[1]_1 [0]));
  LUT5 #(
    .INIT(32'h956AC0C0)) 
    o_out1__59_carry_i_4__4
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(o_out1__59_carry_0[6]),
        .I3(Q[2]),
        .I4(o_out1__59_carry_0[7]),
        .O(\o_x_reg[1]_0 [1]));
  LUT4 #(
    .INIT(16'h7888)) 
    o_out1__59_carry_i_5__6
       (.I0(\o_y_reg[7]_2 [7]),
        .I1(o_out1__59_carry__1_1[1]),
        .I2(\o_y_reg[7]_2 [6]),
        .I3(o_out1__59_carry__1_1[2]),
        .O(\o_y_reg[7]_6 [1]));
  LUT4 #(
    .INIT(16'h8777)) 
    o_out1__59_carry_i_6__6
       (.I0(\o_y_reg[7]_2 [7]),
        .I1(o_out1__59_carry__1_1[0]),
        .I2(\o_y_reg[7]_2 [6]),
        .I3(o_out1__59_carry__1_1[1]),
        .O(\o_y_reg[7]_6 [0]));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__59_carry_i_7__4
       (.I0(Q[0]),
        .I1(o_out1__59_carry_0[6]),
        .O(\o_x_reg[1]_0 [0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 o_out1__86_carry
       (.CI(1'b0),
        .CO({o_out1__86_carry_n_0,o_out1__86_carry_n_1,o_out1__86_carry_n_2,o_out1__86_carry_n_3}),
        .CYINIT(1'b0),
        .DI({o_out1__86_carry_i_1__3_n_0,o_out1__86_carry_i_2__3_n_0,o_out1__86_carry_i_3__3_n_0,o_out1__86_carry_i_4__3_n_0}),
        .O({o_out1__86_carry_n_4,o_out1__86_carry_n_5,o_out1__86_carry_n_6,o_out1__86_carry_n_7}),
        .S({o_out1__86_carry_i_5__3_n_0,o_out1__86_carry_i_6__3_n_0,o_out1__86_carry_i_7__3_n_0,o_out1__86_carry_i_8__3_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 o_out1__86_carry__0
       (.CI(o_out1__86_carry_n_0),
        .CO({o_out1__86_carry__0_n_0,o_out1__86_carry__0_n_1,o_out1__86_carry__0_n_2,o_out1__86_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({o_out1__86_carry__0_i_1__3_n_0,o_out1__86_carry__0_i_2__3_n_0,o_out1__86_carry__0_i_3__3_n_0,o_out1__86_carry__0_i_4__3_n_0}),
        .O({o_out1__86_carry__0_n_4,o_out1__86_carry__0_n_5,o_out1__86_carry__0_n_6,o_out1__86_carry__0_n_7}),
        .S({o_out1__86_carry__0_i_5__3_n_0,o_out1__86_carry__0_i_6__3_n_0,o_out1__86_carry__0_i_7__3_n_0,o_out1__86_carry__0_i_8__3_n_0}));
  LUT3 #(
    .INIT(8'hE8)) 
    o_out1__86_carry__0_i_1__3
       (.I0(o_out1__59_carry__0_n_7),
        .I1(o_out1__0_carry__1_n_1),
        .I2(o_out1__30_carry__0_n_4),
        .O(o_out1__86_carry__0_i_1__3_n_0));
  (* HLUTNM = "lutpair19" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    o_out1__86_carry__0_i_2__3
       (.I0(o_out1__59_carry_n_4),
        .I1(o_out1__0_carry__1_n_6),
        .I2(o_out1__30_carry__0_n_5),
        .O(o_out1__86_carry__0_i_2__3_n_0));
  (* HLUTNM = "lutpair18" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    o_out1__86_carry__0_i_3__3
       (.I0(o_out1__59_carry_n_5),
        .I1(o_out1__0_carry__1_n_7),
        .I2(o_out1__30_carry__0_n_6),
        .O(o_out1__86_carry__0_i_3__3_n_0));
  (* HLUTNM = "lutpair17" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    o_out1__86_carry__0_i_4__3
       (.I0(o_out1__59_carry_n_6),
        .I1(o_out1__0_carry__0_n_4),
        .I2(o_out1__30_carry__0_n_7),
        .O(o_out1__86_carry__0_i_4__3_n_0));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    o_out1__86_carry__0_i_5__3
       (.I0(o_out1__30_carry__0_n_4),
        .I1(o_out1__0_carry__1_n_1),
        .I2(o_out1__59_carry__0_n_7),
        .I3(\o_y_reg[5]_1 [0]),
        .I4(\o_y_reg[7]_0 [0]),
        .O(o_out1__86_carry__0_i_5__3_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    o_out1__86_carry__0_i_6__3
       (.I0(o_out1__86_carry__0_i_2__3_n_0),
        .I1(o_out1__59_carry__0_n_7),
        .I2(o_out1__0_carry__1_n_1),
        .I3(o_out1__30_carry__0_n_4),
        .O(o_out1__86_carry__0_i_6__3_n_0));
  (* HLUTNM = "lutpair19" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    o_out1__86_carry__0_i_7__3
       (.I0(o_out1__59_carry_n_4),
        .I1(o_out1__0_carry__1_n_6),
        .I2(o_out1__30_carry__0_n_5),
        .I3(o_out1__86_carry__0_i_3__3_n_0),
        .O(o_out1__86_carry__0_i_7__3_n_0));
  (* HLUTNM = "lutpair18" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    o_out1__86_carry__0_i_8__3
       (.I0(o_out1__59_carry_n_5),
        .I1(o_out1__0_carry__1_n_7),
        .I2(o_out1__30_carry__0_n_6),
        .I3(o_out1__86_carry__0_i_4__3_n_0),
        .O(o_out1__86_carry__0_i_8__3_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 o_out1__86_carry__1
       (.CI(o_out1__86_carry__0_n_0),
        .CO({NLW_o_out1__86_carry__1_CO_UNCONNECTED[3],o_out1__86_carry__1_n_1,o_out1__86_carry__1_n_2,o_out1__86_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\o_y_reg[7]_1 ,o_out1__86_carry__1_i_1__3_n_0,o_out1__86_carry__1_i_2__3_n_0}),
        .O({o_out1__86_carry__1_n_4,o_out1__86_carry__1_i_5__3}),
        .S({o_out1__59_carry__1_n_6,\o_out_reg[15]_2 }));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__86_carry__1_i_1__3
       (.I0(\o_y_reg[7]_0 [1]),
        .I1(\o_y_reg[5]_1 [1]),
        .O(o_out1__86_carry__1_i_1__3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__86_carry__1_i_2__3
       (.I0(\o_y_reg[7]_0 [0]),
        .I1(\o_y_reg[5]_1 [0]),
        .O(o_out1__86_carry__1_i_2__3_n_0));
  LUT3 #(
    .INIT(8'h78)) 
    o_out1__86_carry__1_i_3__6
       (.I0(o_out1__86_carry__1_2),
        .I1(o_out1__86_carry__1_1[2]),
        .I2(o_out1__86_carry__1_3),
        .O(o_out1__59_carry__1_0[2]));
  LUT4 #(
    .INIT(16'h8778)) 
    o_out1__86_carry__1_i_4__6
       (.I0(o_out1__86_carry__1_0[1]),
        .I1(o_out1__86_carry__1_1[1]),
        .I2(o_out1__86_carry__1_2),
        .I3(o_out1__86_carry__1_1[2]),
        .O(o_out1__59_carry__1_0[1]));
  LUT4 #(
    .INIT(16'h8778)) 
    o_out1__86_carry__1_i_5__6
       (.I0(o_out1__86_carry__1_0[0]),
        .I1(o_out1__86_carry__1_1[0]),
        .I2(o_out1__86_carry__1_0[1]),
        .I3(o_out1__86_carry__1_1[1]),
        .O(o_out1__59_carry__1_0[0]));
  (* HLUTNM = "lutpair16" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    o_out1__86_carry_i_1__3
       (.I0(o_out1__59_carry_n_7),
        .I1(o_out1__0_carry__0_n_5),
        .I2(o_out1__30_carry_n_4),
        .O(o_out1__86_carry_i_1__3_n_0));
  (* HLUTNM = "lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__86_carry_i_2__3
       (.I0(o_out1__30_carry_n_5),
        .I1(o_out1__0_carry__0_n_6),
        .O(o_out1__86_carry_i_2__3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__86_carry_i_3__3
       (.I0(o_out1__30_carry_n_6),
        .I1(o_out1__0_carry__0_n_7),
        .O(o_out1__86_carry_i_3__3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__86_carry_i_4__3
       (.I0(o_out1__0_carry_n_4),
        .I1(o_out1__30_carry_n_7),
        .O(o_out1__86_carry_i_4__3_n_0));
  (* HLUTNM = "lutpair17" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    o_out1__86_carry_i_5__3
       (.I0(o_out1__59_carry_n_6),
        .I1(o_out1__0_carry__0_n_4),
        .I2(o_out1__30_carry__0_n_7),
        .I3(o_out1__86_carry_i_1__3_n_0),
        .O(o_out1__86_carry_i_5__3_n_0));
  (* HLUTNM = "lutpair16" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    o_out1__86_carry_i_6__3
       (.I0(o_out1__59_carry_n_7),
        .I1(o_out1__0_carry__0_n_5),
        .I2(o_out1__30_carry_n_4),
        .I3(o_out1__86_carry_i_2__3_n_0),
        .O(o_out1__86_carry_i_6__3_n_0));
  (* HLUTNM = "lutpair15" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    o_out1__86_carry_i_7__3
       (.I0(o_out1__30_carry_n_5),
        .I1(o_out1__0_carry__0_n_6),
        .I2(o_out1__0_carry__0_n_7),
        .I3(o_out1__30_carry_n_6),
        .O(o_out1__86_carry_i_7__3_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    o_out1__86_carry_i_8__3
       (.I0(o_out1__30_carry_n_7),
        .I1(o_out1__0_carry_n_4),
        .I2(o_out1__0_carry__0_n_7),
        .I3(o_out1__30_carry_n_6),
        .O(o_out1__86_carry_i_8__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[11]_i_2__3 
       (.I0(o_out1__86_carry__0_n_4),
        .I1(m_axis_data[11]),
        .O(\o_out[11]_i_2__3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[11]_i_3__3 
       (.I0(o_out1__86_carry__0_n_5),
        .I1(m_axis_data[10]),
        .O(\o_out[11]_i_3__3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[11]_i_4__3 
       (.I0(o_out1__86_carry__0_n_6),
        .I1(m_axis_data[9]),
        .O(\o_out[11]_i_4__3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[11]_i_5__3 
       (.I0(o_out1__86_carry__0_n_7),
        .I1(m_axis_data[8]),
        .O(\o_out[11]_i_5__3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[15]_i_2__3 
       (.I0(m_axis_data[15]),
        .I1(o_out1__86_carry__1_n_4),
        .O(\o_out_reg[15]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[15]_i_3__7 
       (.I0(\o_out_reg[15]_3 [2]),
        .I1(\o_out_reg[15]_5 [2]),
        .O(\o_out[15]_i_3__7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[15]_i_4__6 
       (.I0(\o_out_reg[15]_3 [1]),
        .I1(\o_out_reg[15]_5 [1]),
        .O(\o_out[15]_i_4__6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[15]_i_5__6 
       (.I0(\o_out_reg[15]_3 [0]),
        .I1(\o_out_reg[15]_5 [0]),
        .O(\o_out[15]_i_5__6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \o_out[3]_i_2__3 
       (.I0(o_out1__30_carry_n_7),
        .I1(o_out1__0_carry_n_4),
        .I2(m_axis_data[3]),
        .O(\o_out[3]_i_2__3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[3]_i_3__3 
       (.I0(o_out1__0_carry_n_5),
        .I1(m_axis_data[2]),
        .O(\o_out[3]_i_3__3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[3]_i_4__3 
       (.I0(o_out1__0_carry_n_6),
        .I1(m_axis_data[1]),
        .O(\o_out[3]_i_4__3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[3]_i_5__3 
       (.I0(o_out1__0_carry_n_7),
        .I1(m_axis_data[0]),
        .O(\o_out[3]_i_5__3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[7]_i_2__3 
       (.I0(o_out1__86_carry_n_4),
        .I1(m_axis_data[7]),
        .O(\o_out[7]_i_2__3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[7]_i_3__3 
       (.I0(o_out1__86_carry_n_5),
        .I1(m_axis_data[6]),
        .O(\o_out[7]_i_3__3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[7]_i_4__3 
       (.I0(o_out1__86_carry_n_6),
        .I1(m_axis_data[5]),
        .O(\o_out[7]_i_4__3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[7]_i_5__3 
       (.I0(o_out1__86_carry_n_7),
        .I1(m_axis_data[4]),
        .O(\o_out[7]_i_5__3_n_0 ));
  FDRE \o_out_reg[0] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[3]_i_1__3_n_7 ),
        .Q(m_axis_data[0]),
        .R(p_0_in));
  FDRE \o_out_reg[10] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[11]_i_1__3_n_5 ),
        .Q(m_axis_data[10]),
        .R(p_0_in));
  FDRE \o_out_reg[11] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[11]_i_1__3_n_4 ),
        .Q(m_axis_data[11]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \o_out_reg[11]_i_1__3 
       (.CI(\o_out_reg[7]_i_1__3_n_0 ),
        .CO({\o_out_reg[11]_0 ,\o_out_reg[11]_i_1__3_n_1 ,\o_out_reg[11]_i_1__3_n_2 ,\o_out_reg[11]_i_1__3_n_3 }),
        .CYINIT(1'b0),
        .DI({o_out1__86_carry__0_n_4,o_out1__86_carry__0_n_5,o_out1__86_carry__0_n_6,o_out1__86_carry__0_n_7}),
        .O({\o_out_reg[11]_i_1__3_n_4 ,\o_out_reg[11]_i_1__3_n_5 ,\o_out_reg[11]_i_1__3_n_6 ,\o_out_reg[11]_i_1__3_n_7 }),
        .S({\o_out[11]_i_2__3_n_0 ,\o_out[11]_i_3__3_n_0 ,\o_out[11]_i_4__3_n_0 ,\o_out[11]_i_5__3_n_0 }));
  FDRE \o_out_reg[12] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[15]_1 [0]),
        .Q(m_axis_data[12]),
        .R(p_0_in));
  FDRE \o_out_reg[13] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[15]_1 [1]),
        .Q(m_axis_data[13]),
        .R(p_0_in));
  FDRE \o_out_reg[14] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[15]_1 [2]),
        .Q(m_axis_data[14]),
        .R(p_0_in));
  FDRE \o_out_reg[15] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[15]_1 [3]),
        .Q(m_axis_data[15]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \o_out_reg[15]_i_1__6 
       (.CI(CO),
        .CO({\NLW_o_out_reg[15]_i_1__6_CO_UNCONNECTED [3],\o_out_reg[15]_i_1__6_n_1 ,\o_out_reg[15]_i_1__6_n_2 ,\o_out_reg[15]_i_1__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\o_out_reg[15]_3 }),
        .O(O),
        .S({\o_out_reg[15]_4 ,\o_out[15]_i_3__7_n_0 ,\o_out[15]_i_4__6_n_0 ,\o_out[15]_i_5__6_n_0 }));
  FDRE \o_out_reg[1] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[3]_i_1__3_n_6 ),
        .Q(m_axis_data[1]),
        .R(p_0_in));
  FDRE \o_out_reg[2] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[3]_i_1__3_n_5 ),
        .Q(m_axis_data[2]),
        .R(p_0_in));
  FDRE \o_out_reg[3] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[3]_i_1__3_n_4 ),
        .Q(m_axis_data[3]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \o_out_reg[3]_i_1__3 
       (.CI(1'b0),
        .CO({\o_out_reg[3]_i_1__3_n_0 ,\o_out_reg[3]_i_1__3_n_1 ,\o_out_reg[3]_i_1__3_n_2 ,\o_out_reg[3]_i_1__3_n_3 }),
        .CYINIT(1'b0),
        .DI({m_axis_data[3],o_out1__0_carry_n_5,o_out1__0_carry_n_6,o_out1__0_carry_n_7}),
        .O({\o_out_reg[3]_i_1__3_n_4 ,\o_out_reg[3]_i_1__3_n_5 ,\o_out_reg[3]_i_1__3_n_6 ,\o_out_reg[3]_i_1__3_n_7 }),
        .S({\o_out[3]_i_2__3_n_0 ,\o_out[3]_i_3__3_n_0 ,\o_out[3]_i_4__3_n_0 ,\o_out[3]_i_5__3_n_0 }));
  FDRE \o_out_reg[4] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[7]_i_1__3_n_7 ),
        .Q(m_axis_data[4]),
        .R(p_0_in));
  FDRE \o_out_reg[5] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[7]_i_1__3_n_6 ),
        .Q(m_axis_data[5]),
        .R(p_0_in));
  FDRE \o_out_reg[6] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[7]_i_1__3_n_5 ),
        .Q(m_axis_data[6]),
        .R(p_0_in));
  FDRE \o_out_reg[7] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[7]_i_1__3_n_4 ),
        .Q(m_axis_data[7]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \o_out_reg[7]_i_1__3 
       (.CI(\o_out_reg[3]_i_1__3_n_0 ),
        .CO({\o_out_reg[7]_i_1__3_n_0 ,\o_out_reg[7]_i_1__3_n_1 ,\o_out_reg[7]_i_1__3_n_2 ,\o_out_reg[7]_i_1__3_n_3 }),
        .CYINIT(1'b0),
        .DI({o_out1__86_carry_n_4,o_out1__86_carry_n_5,o_out1__86_carry_n_6,o_out1__86_carry_n_7}),
        .O({\o_out_reg[7]_i_1__3_n_4 ,\o_out_reg[7]_i_1__3_n_5 ,\o_out_reg[7]_i_1__3_n_6 ,\o_out_reg[7]_i_1__3_n_7 }),
        .S({\o_out[7]_i_2__3_n_0 ,\o_out[7]_i_3__3_n_0 ,\o_out[7]_i_4__3_n_0 ,\o_out[7]_i_5__3_n_0 }));
  FDRE \o_out_reg[8] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[11]_i_1__3_n_7 ),
        .Q(m_axis_data[8]),
        .R(p_0_in));
  FDRE \o_out_reg[9] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[11]_i_1__3_n_6 ),
        .Q(m_axis_data[9]),
        .R(p_0_in));
  FDRE \o_x_reg[0] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(p_0_in));
  FDRE \o_x_reg[1] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(p_0_in));
  FDRE \o_x_reg[2] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(p_0_in));
  FDRE \o_x_reg[3] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(p_0_in));
  FDRE \o_x_reg[4] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[4]),
        .R(p_0_in));
  FDRE \o_x_reg[5] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(D[5]),
        .Q(Q[5]),
        .R(p_0_in));
  FDRE \o_x_reg[6] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(D[6]),
        .Q(Q[6]),
        .R(p_0_in));
  FDRE \o_x_reg[7] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(D[7]),
        .Q(Q[7]),
        .R(p_0_in));
  FDRE \o_y_reg[0] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_y_reg[7]_7 [0]),
        .Q(\o_y_reg[7]_2 [0]),
        .R(p_0_in));
  FDRE \o_y_reg[1] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_y_reg[7]_7 [1]),
        .Q(\o_y_reg[7]_2 [1]),
        .R(p_0_in));
  FDRE \o_y_reg[2] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_y_reg[7]_7 [2]),
        .Q(\o_y_reg[7]_2 [2]),
        .R(p_0_in));
  FDRE \o_y_reg[3] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_y_reg[7]_7 [3]),
        .Q(\o_y_reg[7]_2 [3]),
        .R(p_0_in));
  FDRE \o_y_reg[4] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_y_reg[7]_7 [4]),
        .Q(\o_y_reg[7]_2 [4]),
        .R(p_0_in));
  FDRE \o_y_reg[5] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_y_reg[7]_7 [5]),
        .Q(\o_y_reg[7]_2 [5]),
        .R(p_0_in));
  FDRE \o_y_reg[6] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_y_reg[7]_7 [6]),
        .Q(\o_y_reg[7]_2 [6]),
        .R(p_0_in));
  FDRE \o_y_reg[7] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_y_reg[7]_7 [7]),
        .Q(\o_y_reg[7]_2 [7]),
        .R(p_0_in));
endmodule

(* ORIG_REF_NAME = "MAC" *) 
module design_1_SystolicArrayAxiWrap_0_0_MAC_5
   (m_axis_data,
    \o_y_reg[5]_0 ,
    \o_y_reg[5]_1 ,
    \o_y_reg[7]_0 ,
    \o_y_reg[7]_1 ,
    o_out1__86_carry__1_i_5__4,
    \o_out_reg[15]_0 ,
    \o_y_reg[2]_0 ,
    Q,
    \o_y_reg[5]_2 ,
    \o_y_reg[3]_0 ,
    \o_y_reg[7]_2 ,
    \o_y_reg[2]_1 ,
    \o_y_reg[0]_0 ,
    \o_y_reg[5]_3 ,
    \o_y_reg[7]_3 ,
    \o_y_reg[7]_4 ,
    \o_out_reg[11]_0 ,
    O,
    \o_y_reg[1]_0 ,
    \o_y_reg[1]_1 ,
    \o_y_reg[1]_2 ,
    \o_x_reg[1] ,
    \o_y_reg[4]_0 ,
    \o_y_reg[4]_1 ,
    \o_y_reg[7]_5 ,
    \o_y_reg[6]_0 ,
    o_out1__59_carry__1_0,
    p_0_in,
    axi_clk,
    \o_out_reg[15]_1 ,
    DI,
    S,
    o_out1__86_carry_i_8__4_0,
    o_out1__86_carry_i_8__4_1,
    o_out1__86_carry__0_i_3__4_0,
    o_out1__86_carry__0_i_3__4_1,
    \o_out[3]_i_2__4_0 ,
    \o_out[3]_i_2__4_1 ,
    o_out1__86_carry__0_i_4__4_0,
    o_out1__86_carry__0_i_4__4_1,
    o_out1__86_carry__1_i_5__4_0,
    o_out1__86_carry__1_i_5__4_1,
    o_out1__86_carry_i_1__4_0,
    o_out1__86_carry_i_1__4_1,
    o_out1__86_carry__0_i_6__4_0,
    o_out1__86_carry__0_i_6__4_1,
    o_out1__86_carry__1_i_3__4,
    o_out1__86_carry__1_i_3__4_0,
    \o_out_reg[15]_2 ,
    o_out1__59_carry__1_1,
    CO,
    \o_out_reg[15]_3 ,
    \o_out_reg[15]_4 ,
    o_out1__0_carry__0_0,
    o_out1__30_carry__0_0,
    o_out1__30_carry__0_1,
    o_out1__30_carry__0_2,
    o_out1__30_carry__0_3,
    o_out1__86_carry__1_0,
    o_out1__86_carry__1_1,
    o_out1__86_carry__1_2,
    o_out1__86_carry__1_3,
    \o_out_reg[15]_5 ,
    D);
  output [15:0]m_axis_data;
  output [0:0]\o_y_reg[5]_0 ;
  output [1:0]\o_y_reg[5]_1 ;
  output [2:0]\o_y_reg[7]_0 ;
  output [0:0]\o_y_reg[7]_1 ;
  output [2:0]o_out1__86_carry__1_i_5__4;
  output [0:0]\o_out_reg[15]_0 ;
  output [3:0]\o_y_reg[2]_0 ;
  output [7:0]Q;
  output [3:0]\o_y_reg[5]_2 ;
  output [1:0]\o_y_reg[3]_0 ;
  output [0:0]\o_y_reg[7]_2 ;
  output [1:0]\o_y_reg[2]_1 ;
  output [0:0]\o_y_reg[0]_0 ;
  output [1:0]\o_y_reg[5]_3 ;
  output [3:0]\o_y_reg[7]_3 ;
  output [0:0]\o_y_reg[7]_4 ;
  output [0:0]\o_out_reg[11]_0 ;
  output [3:0]O;
  output [0:0]\o_y_reg[1]_0 ;
  output [3:0]\o_y_reg[1]_1 ;
  output [1:0]\o_y_reg[1]_2 ;
  output [1:0]\o_x_reg[1] ;
  output [3:0]\o_y_reg[4]_0 ;
  output [1:0]\o_y_reg[4]_1 ;
  output [1:0]\o_y_reg[7]_5 ;
  output [0:0]\o_y_reg[6]_0 ;
  output [2:0]o_out1__59_carry__1_0;
  input p_0_in;
  input axi_clk;
  input [3:0]\o_out_reg[15]_1 ;
  input [2:0]DI;
  input [3:0]S;
  input [3:0]o_out1__86_carry_i_8__4_0;
  input [3:0]o_out1__86_carry_i_8__4_1;
  input [1:0]o_out1__86_carry__0_i_3__4_0;
  input [1:0]o_out1__86_carry__0_i_3__4_1;
  input [2:0]\o_out[3]_i_2__4_0 ;
  input [3:0]\o_out[3]_i_2__4_1 ;
  input [3:0]o_out1__86_carry__0_i_4__4_0;
  input [3:0]o_out1__86_carry__0_i_4__4_1;
  input [1:0]o_out1__86_carry__1_i_5__4_0;
  input [1:0]o_out1__86_carry__1_i_5__4_1;
  input [2:0]o_out1__86_carry_i_1__4_0;
  input [3:0]o_out1__86_carry_i_1__4_1;
  input [3:0]o_out1__86_carry__0_i_6__4_0;
  input [3:0]o_out1__86_carry__0_i_6__4_1;
  input [0:0]o_out1__86_carry__1_i_3__4;
  input [0:0]o_out1__86_carry__1_i_3__4_0;
  input [2:0]\o_out_reg[15]_2 ;
  input [7:0]o_out1__59_carry__1_1;
  input [0:0]CO;
  input [2:0]\o_out_reg[15]_3 ;
  input [0:0]\o_out_reg[15]_4 ;
  input o_out1__0_carry__0_0;
  input o_out1__30_carry__0_0;
  input o_out1__30_carry__0_1;
  input o_out1__30_carry__0_2;
  input o_out1__30_carry__0_3;
  input [1:0]o_out1__86_carry__1_0;
  input [2:0]o_out1__86_carry__1_1;
  input [0:0]o_out1__86_carry__1_2;
  input [0:0]o_out1__86_carry__1_3;
  input [2:0]\o_out_reg[15]_5 ;
  input [7:0]D;

  wire [0:0]CO;
  wire [7:0]D;
  wire [2:0]DI;
  wire [3:0]O;
  wire [7:0]Q;
  wire [3:0]S;
  wire axi_clk;
  wire [15:0]m_axis_data;
  wire o_out1__0_carry__0_0;
  wire o_out1__0_carry__0_i_10__7_n_0;
  wire o_out1__0_carry__0_i_11__7_n_0;
  wire o_out1__0_carry__0_i_12__7_n_0;
  wire o_out1__0_carry__0_n_0;
  wire o_out1__0_carry__0_n_1;
  wire o_out1__0_carry__0_n_2;
  wire o_out1__0_carry__0_n_3;
  wire o_out1__0_carry__0_n_4;
  wire o_out1__0_carry__0_n_5;
  wire o_out1__0_carry__0_n_6;
  wire o_out1__0_carry__0_n_7;
  wire o_out1__0_carry__1_n_1;
  wire o_out1__0_carry__1_n_3;
  wire o_out1__0_carry__1_n_6;
  wire o_out1__0_carry__1_n_7;
  wire o_out1__0_carry_n_0;
  wire o_out1__0_carry_n_1;
  wire o_out1__0_carry_n_2;
  wire o_out1__0_carry_n_3;
  wire o_out1__0_carry_n_4;
  wire o_out1__0_carry_n_5;
  wire o_out1__0_carry_n_6;
  wire o_out1__0_carry_n_7;
  wire o_out1__30_carry__0_0;
  wire o_out1__30_carry__0_1;
  wire o_out1__30_carry__0_2;
  wire o_out1__30_carry__0_3;
  wire o_out1__30_carry__0_n_0;
  wire o_out1__30_carry__0_n_1;
  wire o_out1__30_carry__0_n_2;
  wire o_out1__30_carry__0_n_3;
  wire o_out1__30_carry__0_n_4;
  wire o_out1__30_carry__0_n_5;
  wire o_out1__30_carry__0_n_6;
  wire o_out1__30_carry__0_n_7;
  wire o_out1__30_carry__1_n_3;
  wire o_out1__30_carry_n_0;
  wire o_out1__30_carry_n_1;
  wire o_out1__30_carry_n_2;
  wire o_out1__30_carry_n_3;
  wire o_out1__30_carry_n_4;
  wire o_out1__30_carry_n_5;
  wire o_out1__30_carry_n_6;
  wire o_out1__30_carry_n_7;
  wire o_out1__59_carry__0_n_0;
  wire o_out1__59_carry__0_n_1;
  wire o_out1__59_carry__0_n_2;
  wire o_out1__59_carry__0_n_3;
  wire o_out1__59_carry__0_n_7;
  wire [2:0]o_out1__59_carry__1_0;
  wire [7:0]o_out1__59_carry__1_1;
  wire o_out1__59_carry__1_n_3;
  wire o_out1__59_carry__1_n_6;
  wire o_out1__59_carry_n_0;
  wire o_out1__59_carry_n_1;
  wire o_out1__59_carry_n_2;
  wire o_out1__59_carry_n_3;
  wire o_out1__59_carry_n_4;
  wire o_out1__59_carry_n_5;
  wire o_out1__59_carry_n_6;
  wire o_out1__59_carry_n_7;
  wire o_out1__86_carry__0_i_1__4_n_0;
  wire o_out1__86_carry__0_i_2__4_n_0;
  wire [1:0]o_out1__86_carry__0_i_3__4_0;
  wire [1:0]o_out1__86_carry__0_i_3__4_1;
  wire o_out1__86_carry__0_i_3__4_n_0;
  wire [3:0]o_out1__86_carry__0_i_4__4_0;
  wire [3:0]o_out1__86_carry__0_i_4__4_1;
  wire o_out1__86_carry__0_i_4__4_n_0;
  wire o_out1__86_carry__0_i_5__4_n_0;
  wire [3:0]o_out1__86_carry__0_i_6__4_0;
  wire [3:0]o_out1__86_carry__0_i_6__4_1;
  wire o_out1__86_carry__0_i_6__4_n_0;
  wire o_out1__86_carry__0_i_7__4_n_0;
  wire o_out1__86_carry__0_i_8__4_n_0;
  wire o_out1__86_carry__0_n_0;
  wire o_out1__86_carry__0_n_1;
  wire o_out1__86_carry__0_n_2;
  wire o_out1__86_carry__0_n_3;
  wire o_out1__86_carry__0_n_4;
  wire o_out1__86_carry__0_n_5;
  wire o_out1__86_carry__0_n_6;
  wire o_out1__86_carry__0_n_7;
  wire [1:0]o_out1__86_carry__1_0;
  wire [2:0]o_out1__86_carry__1_1;
  wire [0:0]o_out1__86_carry__1_2;
  wire [0:0]o_out1__86_carry__1_3;
  wire o_out1__86_carry__1_i_1__4_n_0;
  wire o_out1__86_carry__1_i_2__4_n_0;
  wire [0:0]o_out1__86_carry__1_i_3__4;
  wire [0:0]o_out1__86_carry__1_i_3__4_0;
  wire [2:0]o_out1__86_carry__1_i_5__4;
  wire [1:0]o_out1__86_carry__1_i_5__4_0;
  wire [1:0]o_out1__86_carry__1_i_5__4_1;
  wire o_out1__86_carry__1_n_1;
  wire o_out1__86_carry__1_n_2;
  wire o_out1__86_carry__1_n_3;
  wire o_out1__86_carry__1_n_4;
  wire [2:0]o_out1__86_carry_i_1__4_0;
  wire [3:0]o_out1__86_carry_i_1__4_1;
  wire o_out1__86_carry_i_1__4_n_0;
  wire o_out1__86_carry_i_2__4_n_0;
  wire o_out1__86_carry_i_3__4_n_0;
  wire o_out1__86_carry_i_4__4_n_0;
  wire o_out1__86_carry_i_5__4_n_0;
  wire o_out1__86_carry_i_6__4_n_0;
  wire o_out1__86_carry_i_7__4_n_0;
  wire [3:0]o_out1__86_carry_i_8__4_0;
  wire [3:0]o_out1__86_carry_i_8__4_1;
  wire o_out1__86_carry_i_8__4_n_0;
  wire o_out1__86_carry_n_0;
  wire o_out1__86_carry_n_1;
  wire o_out1__86_carry_n_2;
  wire o_out1__86_carry_n_3;
  wire o_out1__86_carry_n_4;
  wire o_out1__86_carry_n_5;
  wire o_out1__86_carry_n_6;
  wire o_out1__86_carry_n_7;
  wire \o_out[11]_i_2__4_n_0 ;
  wire \o_out[11]_i_3__4_n_0 ;
  wire \o_out[11]_i_4__4_n_0 ;
  wire \o_out[11]_i_5__4_n_0 ;
  wire \o_out[15]_i_4__7_n_0 ;
  wire \o_out[15]_i_5__7_n_0 ;
  wire \o_out[15]_i_6_n_0 ;
  wire [2:0]\o_out[3]_i_2__4_0 ;
  wire [3:0]\o_out[3]_i_2__4_1 ;
  wire \o_out[3]_i_2__4_n_0 ;
  wire \o_out[3]_i_3__4_n_0 ;
  wire \o_out[3]_i_4__4_n_0 ;
  wire \o_out[3]_i_5__4_n_0 ;
  wire \o_out[7]_i_2__4_n_0 ;
  wire \o_out[7]_i_3__4_n_0 ;
  wire \o_out[7]_i_4__4_n_0 ;
  wire \o_out[7]_i_5__4_n_0 ;
  wire [0:0]\o_out_reg[11]_0 ;
  wire \o_out_reg[11]_i_1__4_n_1 ;
  wire \o_out_reg[11]_i_1__4_n_2 ;
  wire \o_out_reg[11]_i_1__4_n_3 ;
  wire \o_out_reg[11]_i_1__4_n_4 ;
  wire \o_out_reg[11]_i_1__4_n_5 ;
  wire \o_out_reg[11]_i_1__4_n_6 ;
  wire \o_out_reg[11]_i_1__4_n_7 ;
  wire [0:0]\o_out_reg[15]_0 ;
  wire [3:0]\o_out_reg[15]_1 ;
  wire [2:0]\o_out_reg[15]_2 ;
  wire [2:0]\o_out_reg[15]_3 ;
  wire [0:0]\o_out_reg[15]_4 ;
  wire [2:0]\o_out_reg[15]_5 ;
  wire \o_out_reg[15]_i_2_n_1 ;
  wire \o_out_reg[15]_i_2_n_2 ;
  wire \o_out_reg[15]_i_2_n_3 ;
  wire \o_out_reg[3]_i_1__4_n_0 ;
  wire \o_out_reg[3]_i_1__4_n_1 ;
  wire \o_out_reg[3]_i_1__4_n_2 ;
  wire \o_out_reg[3]_i_1__4_n_3 ;
  wire \o_out_reg[3]_i_1__4_n_4 ;
  wire \o_out_reg[3]_i_1__4_n_5 ;
  wire \o_out_reg[3]_i_1__4_n_6 ;
  wire \o_out_reg[3]_i_1__4_n_7 ;
  wire \o_out_reg[7]_i_1__4_n_0 ;
  wire \o_out_reg[7]_i_1__4_n_1 ;
  wire \o_out_reg[7]_i_1__4_n_2 ;
  wire \o_out_reg[7]_i_1__4_n_3 ;
  wire \o_out_reg[7]_i_1__4_n_4 ;
  wire \o_out_reg[7]_i_1__4_n_5 ;
  wire \o_out_reg[7]_i_1__4_n_6 ;
  wire \o_out_reg[7]_i_1__4_n_7 ;
  wire [1:0]\o_x_reg[1] ;
  wire [0:0]\o_y_reg[0]_0 ;
  wire [0:0]\o_y_reg[1]_0 ;
  wire [3:0]\o_y_reg[1]_1 ;
  wire [1:0]\o_y_reg[1]_2 ;
  wire [3:0]\o_y_reg[2]_0 ;
  wire [1:0]\o_y_reg[2]_1 ;
  wire [1:0]\o_y_reg[3]_0 ;
  wire [3:0]\o_y_reg[4]_0 ;
  wire [1:0]\o_y_reg[4]_1 ;
  wire [0:0]\o_y_reg[5]_0 ;
  wire [1:0]\o_y_reg[5]_1 ;
  wire [3:0]\o_y_reg[5]_2 ;
  wire [1:0]\o_y_reg[5]_3 ;
  wire [0:0]\o_y_reg[6]_0 ;
  wire [2:0]\o_y_reg[7]_0 ;
  wire [0:0]\o_y_reg[7]_1 ;
  wire [0:0]\o_y_reg[7]_2 ;
  wire [3:0]\o_y_reg[7]_3 ;
  wire [0:0]\o_y_reg[7]_4 ;
  wire [1:0]\o_y_reg[7]_5 ;
  wire p_0_in;
  wire [3:1]NLW_o_out1__0_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_o_out1__0_carry__1_O_UNCONNECTED;
  wire [3:1]NLW_o_out1__30_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_o_out1__30_carry__1_O_UNCONNECTED;
  wire [3:1]NLW_o_out1__59_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_o_out1__59_carry__1_O_UNCONNECTED;
  wire [3:3]NLW_o_out1__86_carry__1_CO_UNCONNECTED;
  wire [3:3]\NLW_o_out_reg[15]_i_2_CO_UNCONNECTED ;

  CARRY4 o_out1__0_carry
       (.CI(1'b0),
        .CO({o_out1__0_carry_n_0,o_out1__0_carry_n_1,o_out1__0_carry_n_2,o_out1__0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({DI,1'b0}),
        .O({o_out1__0_carry_n_4,o_out1__0_carry_n_5,o_out1__0_carry_n_6,o_out1__0_carry_n_7}),
        .S(S));
  CARRY4 o_out1__0_carry__0
       (.CI(o_out1__0_carry_n_0),
        .CO({o_out1__0_carry__0_n_0,o_out1__0_carry__0_n_1,o_out1__0_carry__0_n_2,o_out1__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(o_out1__86_carry_i_8__4_0),
        .O({o_out1__0_carry__0_n_4,o_out1__0_carry__0_n_5,o_out1__0_carry__0_n_6,o_out1__0_carry__0_n_7}),
        .S(o_out1__86_carry_i_8__4_1));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__0_carry__0_i_10__7
       (.I0(Q[0]),
        .I1(o_out1__59_carry__1_1[6]),
        .O(o_out1__0_carry__0_i_10__7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__0_carry__0_i_11__7
       (.I0(Q[0]),
        .I1(o_out1__59_carry__1_1[5]),
        .O(o_out1__0_carry__0_i_11__7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__0_carry__0_i_12__7
       (.I0(Q[0]),
        .I1(o_out1__59_carry__1_1[4]),
        .O(o_out1__0_carry__0_i_12__7_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    o_out1__0_carry__0_i_1__7
       (.I0(Q[2]),
        .I1(o_out1__59_carry__1_1[4]),
        .I2(Q[1]),
        .I3(o_out1__59_carry__1_1[5]),
        .I4(Q[0]),
        .I5(o_out1__59_carry__1_1[6]),
        .O(\o_y_reg[2]_0 [3]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    o_out1__0_carry__0_i_2__7
       (.I0(Q[2]),
        .I1(o_out1__59_carry__1_1[3]),
        .I2(Q[1]),
        .I3(o_out1__59_carry__1_1[4]),
        .I4(Q[0]),
        .I5(o_out1__59_carry__1_1[5]),
        .O(\o_y_reg[2]_0 [2]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    o_out1__0_carry__0_i_3__7
       (.I0(Q[2]),
        .I1(o_out1__59_carry__1_1[2]),
        .I2(Q[1]),
        .I3(o_out1__59_carry__1_1[3]),
        .I4(Q[0]),
        .I5(o_out1__59_carry__1_1[4]),
        .O(\o_y_reg[2]_0 [1]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    o_out1__0_carry__0_i_4__7
       (.I0(Q[2]),
        .I1(o_out1__59_carry__1_1[1]),
        .I2(Q[1]),
        .I3(o_out1__59_carry__1_1[2]),
        .I4(Q[0]),
        .I5(o_out1__59_carry__1_1[3]),
        .O(\o_y_reg[2]_0 [0]));
  LUT6 #(
    .INIT(64'h9666699969996999)) 
    o_out1__0_carry__0_i_5__7
       (.I0(\o_y_reg[2]_0 [3]),
        .I1(o_out1__0_carry__0_0),
        .I2(Q[1]),
        .I3(o_out1__59_carry__1_1[6]),
        .I4(Q[0]),
        .I5(o_out1__59_carry__1_1[7]),
        .O(\o_y_reg[1]_1 [3]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    o_out1__0_carry__0_i_6__7
       (.I0(\o_y_reg[2]_0 [2]),
        .I1(o_out1__59_carry__1_1[5]),
        .I2(Q[1]),
        .I3(o_out1__59_carry__1_1[4]),
        .I4(Q[2]),
        .I5(o_out1__0_carry__0_i_10__7_n_0),
        .O(\o_y_reg[1]_1 [2]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    o_out1__0_carry__0_i_7__7
       (.I0(\o_y_reg[2]_0 [1]),
        .I1(o_out1__59_carry__1_1[4]),
        .I2(Q[1]),
        .I3(o_out1__59_carry__1_1[3]),
        .I4(Q[2]),
        .I5(o_out1__0_carry__0_i_11__7_n_0),
        .O(\o_y_reg[1]_1 [1]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    o_out1__0_carry__0_i_8__7
       (.I0(\o_y_reg[2]_0 [0]),
        .I1(o_out1__59_carry__1_1[3]),
        .I2(Q[1]),
        .I3(o_out1__59_carry__1_1[2]),
        .I4(Q[2]),
        .I5(o_out1__0_carry__0_i_12__7_n_0),
        .O(\o_y_reg[1]_1 [0]));
  CARRY4 o_out1__0_carry__1
       (.CI(o_out1__0_carry__0_n_0),
        .CO({NLW_o_out1__0_carry__1_CO_UNCONNECTED[3],o_out1__0_carry__1_n_1,NLW_o_out1__0_carry__1_CO_UNCONNECTED[1],o_out1__0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,o_out1__86_carry__0_i_3__4_0}),
        .O({NLW_o_out1__0_carry__1_O_UNCONNECTED[3:2],o_out1__0_carry__1_n_6,o_out1__0_carry__1_n_7}),
        .S({1'b0,1'b1,o_out1__86_carry__0_i_3__4_1}));
  LUT4 #(
    .INIT(16'h0888)) 
    o_out1__0_carry__1_i_1__7
       (.I0(Q[2]),
        .I1(o_out1__59_carry__1_1[6]),
        .I2(Q[1]),
        .I3(o_out1__59_carry__1_1[7]),
        .O(\o_y_reg[2]_1 [1]));
  LUT6 #(
    .INIT(64'h8000F888F888F888)) 
    o_out1__0_carry__1_i_2__7
       (.I0(Q[2]),
        .I1(o_out1__59_carry__1_1[5]),
        .I2(Q[1]),
        .I3(o_out1__59_carry__1_1[6]),
        .I4(Q[0]),
        .I5(o_out1__59_carry__1_1[7]),
        .O(\o_y_reg[2]_1 [0]));
  LUT4 #(
    .INIT(16'h4F3F)) 
    o_out1__0_carry__1_i_3__7
       (.I0(Q[1]),
        .I1(o_out1__59_carry__1_1[6]),
        .I2(Q[2]),
        .I3(o_out1__59_carry__1_1[7]),
        .O(\o_y_reg[1]_2 [1]));
  LUT6 #(
    .INIT(64'h25404FBFF03FCF3F)) 
    o_out1__0_carry__1_i_4__7
       (.I0(Q[0]),
        .I1(o_out1__59_carry__1_1[5]),
        .I2(Q[2]),
        .I3(o_out1__59_carry__1_1[6]),
        .I4(Q[1]),
        .I5(o_out1__59_carry__1_1[7]),
        .O(\o_y_reg[1]_2 [0]));
  LUT4 #(
    .INIT(16'h7888)) 
    o_out1__0_carry_i_2__7
       (.I0(Q[1]),
        .I1(o_out1__59_carry__1_1[1]),
        .I2(Q[2]),
        .I3(o_out1__59_carry__1_1[0]),
        .O(\o_y_reg[1]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__0_carry_i_7__7
       (.I0(Q[0]),
        .I1(o_out1__59_carry__1_1[0]),
        .O(\o_y_reg[0]_0 ));
  CARRY4 o_out1__30_carry
       (.CI(1'b0),
        .CO({o_out1__30_carry_n_0,o_out1__30_carry_n_1,o_out1__30_carry_n_2,o_out1__30_carry_n_3}),
        .CYINIT(1'b0),
        .DI({\o_out[3]_i_2__4_0 ,1'b0}),
        .O({o_out1__30_carry_n_4,o_out1__30_carry_n_5,o_out1__30_carry_n_6,o_out1__30_carry_n_7}),
        .S(\o_out[3]_i_2__4_1 ));
  CARRY4 o_out1__30_carry__0
       (.CI(o_out1__30_carry_n_0),
        .CO({o_out1__30_carry__0_n_0,o_out1__30_carry__0_n_1,o_out1__30_carry__0_n_2,o_out1__30_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(o_out1__86_carry__0_i_4__4_0),
        .O({o_out1__30_carry__0_n_4,o_out1__30_carry__0_n_5,o_out1__30_carry__0_n_6,o_out1__30_carry__0_n_7}),
        .S(o_out1__86_carry__0_i_4__4_1));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    o_out1__30_carry__0_i_1__7
       (.I0(Q[5]),
        .I1(o_out1__59_carry__1_1[4]),
        .I2(Q[4]),
        .I3(o_out1__59_carry__1_1[5]),
        .I4(o_out1__59_carry__1_1[6]),
        .I5(Q[3]),
        .O(\o_y_reg[5]_2 [3]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    o_out1__30_carry__0_i_2__7
       (.I0(Q[5]),
        .I1(o_out1__59_carry__1_1[3]),
        .I2(Q[4]),
        .I3(o_out1__59_carry__1_1[4]),
        .I4(o_out1__59_carry__1_1[5]),
        .I5(Q[3]),
        .O(\o_y_reg[5]_2 [2]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    o_out1__30_carry__0_i_3__7
       (.I0(Q[5]),
        .I1(o_out1__59_carry__1_1[2]),
        .I2(Q[4]),
        .I3(o_out1__59_carry__1_1[3]),
        .I4(o_out1__59_carry__1_1[4]),
        .I5(Q[3]),
        .O(\o_y_reg[5]_2 [1]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    o_out1__30_carry__0_i_4__7
       (.I0(Q[5]),
        .I1(o_out1__59_carry__1_1[1]),
        .I2(Q[4]),
        .I3(o_out1__59_carry__1_1[2]),
        .I4(o_out1__59_carry__1_1[3]),
        .I5(Q[3]),
        .O(\o_y_reg[5]_2 [0]));
  LUT6 #(
    .INIT(64'h9666699969996999)) 
    o_out1__30_carry__0_i_5__7
       (.I0(\o_y_reg[5]_2 [3]),
        .I1(o_out1__30_carry__0_3),
        .I2(Q[4]),
        .I3(o_out1__59_carry__1_1[6]),
        .I4(o_out1__59_carry__1_1[7]),
        .I5(Q[3]),
        .O(\o_y_reg[4]_0 [3]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    o_out1__30_carry__0_i_6__7
       (.I0(\o_y_reg[5]_2 [2]),
        .I1(o_out1__59_carry__1_1[5]),
        .I2(Q[4]),
        .I3(o_out1__59_carry__1_1[4]),
        .I4(Q[5]),
        .I5(o_out1__30_carry__0_2),
        .O(\o_y_reg[4]_0 [2]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    o_out1__30_carry__0_i_7__7
       (.I0(\o_y_reg[5]_2 [1]),
        .I1(o_out1__59_carry__1_1[4]),
        .I2(Q[4]),
        .I3(o_out1__59_carry__1_1[3]),
        .I4(Q[5]),
        .I5(o_out1__30_carry__0_1),
        .O(\o_y_reg[4]_0 [1]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    o_out1__30_carry__0_i_8__7
       (.I0(\o_y_reg[5]_2 [0]),
        .I1(o_out1__59_carry__1_1[3]),
        .I2(Q[4]),
        .I3(o_out1__59_carry__1_1[2]),
        .I4(Q[5]),
        .I5(o_out1__30_carry__0_0),
        .O(\o_y_reg[4]_0 [0]));
  CARRY4 o_out1__30_carry__1
       (.CI(o_out1__30_carry__0_n_0),
        .CO({NLW_o_out1__30_carry__1_CO_UNCONNECTED[3],\o_y_reg[5]_0 ,NLW_o_out1__30_carry__1_CO_UNCONNECTED[1],o_out1__30_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,o_out1__86_carry__1_i_5__4_0}),
        .O({NLW_o_out1__30_carry__1_O_UNCONNECTED[3:2],\o_y_reg[5]_1 }),
        .S({1'b0,1'b1,o_out1__86_carry__1_i_5__4_1}));
  LUT4 #(
    .INIT(16'h0888)) 
    o_out1__30_carry__1_i_1__7
       (.I0(Q[5]),
        .I1(o_out1__59_carry__1_1[6]),
        .I2(Q[4]),
        .I3(o_out1__59_carry__1_1[7]),
        .O(\o_y_reg[5]_3 [1]));
  LUT6 #(
    .INIT(64'h8000F888F888F888)) 
    o_out1__30_carry__1_i_2__7
       (.I0(Q[5]),
        .I1(o_out1__59_carry__1_1[5]),
        .I2(Q[4]),
        .I3(o_out1__59_carry__1_1[6]),
        .I4(o_out1__59_carry__1_1[7]),
        .I5(Q[3]),
        .O(\o_y_reg[5]_3 [0]));
  LUT4 #(
    .INIT(16'h4F3F)) 
    o_out1__30_carry__1_i_3__7
       (.I0(Q[4]),
        .I1(o_out1__59_carry__1_1[6]),
        .I2(Q[5]),
        .I3(o_out1__59_carry__1_1[7]),
        .O(\o_y_reg[4]_1 [1]));
  LUT6 #(
    .INIT(64'h25404FBFF03FCF3F)) 
    o_out1__30_carry__1_i_4__7
       (.I0(Q[3]),
        .I1(o_out1__59_carry__1_1[5]),
        .I2(Q[5]),
        .I3(o_out1__59_carry__1_1[6]),
        .I4(Q[4]),
        .I5(o_out1__59_carry__1_1[7]),
        .O(\o_y_reg[4]_1 [0]));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    o_out1__30_carry_i_1__7
       (.I0(Q[3]),
        .I1(o_out1__59_carry__1_1[3]),
        .I2(Q[5]),
        .I3(o_out1__59_carry__1_1[1]),
        .I4(Q[4]),
        .I5(o_out1__59_carry__1_1[2]),
        .O(\o_y_reg[3]_0 [1]));
  LUT4 #(
    .INIT(16'h7888)) 
    o_out1__30_carry_i_2__7
       (.I0(Q[4]),
        .I1(o_out1__59_carry__1_1[1]),
        .I2(Q[5]),
        .I3(o_out1__59_carry__1_1[0]),
        .O(\o_y_reg[3]_0 [0]));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    o_out1__30_carry_i_4__7
       (.I0(\o_y_reg[3]_0 [1]),
        .I1(o_out1__59_carry__1_1[1]),
        .I2(Q[5]),
        .I3(o_out1__59_carry__1_1[0]),
        .I4(Q[4]),
        .O(\o_x_reg[1] [1]));
  LUT4 #(
    .INIT(16'h7888)) 
    o_out1__30_carry_i_6__7
       (.I0(Q[3]),
        .I1(o_out1__59_carry__1_1[1]),
        .I2(Q[4]),
        .I3(o_out1__59_carry__1_1[0]),
        .O(\o_x_reg[1] [0]));
  CARRY4 o_out1__59_carry
       (.CI(1'b0),
        .CO({o_out1__59_carry_n_0,o_out1__59_carry_n_1,o_out1__59_carry_n_2,o_out1__59_carry_n_3}),
        .CYINIT(1'b0),
        .DI({o_out1__86_carry_i_1__4_0,1'b0}),
        .O({o_out1__59_carry_n_4,o_out1__59_carry_n_5,o_out1__59_carry_n_6,o_out1__59_carry_n_7}),
        .S(o_out1__86_carry_i_1__4_1));
  CARRY4 o_out1__59_carry__0
       (.CI(o_out1__59_carry_n_0),
        .CO({o_out1__59_carry__0_n_0,o_out1__59_carry__0_n_1,o_out1__59_carry__0_n_2,o_out1__59_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(o_out1__86_carry__0_i_6__4_0),
        .O({\o_y_reg[7]_0 ,o_out1__59_carry__0_n_7}),
        .S(o_out1__86_carry__0_i_6__4_1));
  LUT4 #(
    .INIT(16'h7000)) 
    o_out1__59_carry__0_i_1__7
       (.I0(Q[7]),
        .I1(o_out1__59_carry__1_1[5]),
        .I2(Q[6]),
        .I3(o_out1__59_carry__1_1[6]),
        .O(\o_y_reg[7]_3 [3]));
  LUT4 #(
    .INIT(16'h7000)) 
    o_out1__59_carry__0_i_2__7
       (.I0(Q[7]),
        .I1(o_out1__59_carry__1_1[4]),
        .I2(Q[6]),
        .I3(o_out1__59_carry__1_1[5]),
        .O(\o_y_reg[7]_3 [2]));
  LUT4 #(
    .INIT(16'h7000)) 
    o_out1__59_carry__0_i_3__7
       (.I0(Q[7]),
        .I1(o_out1__59_carry__1_1[3]),
        .I2(Q[6]),
        .I3(o_out1__59_carry__1_1[4]),
        .O(\o_y_reg[7]_3 [1]));
  LUT4 #(
    .INIT(16'h7000)) 
    o_out1__59_carry__0_i_4__7
       (.I0(Q[7]),
        .I1(o_out1__59_carry__1_1[2]),
        .I2(Q[6]),
        .I3(o_out1__59_carry__1_1[3]),
        .O(\o_y_reg[7]_3 [0]));
  CARRY4 o_out1__59_carry__1
       (.CI(o_out1__59_carry__0_n_0),
        .CO({NLW_o_out1__59_carry__1_CO_UNCONNECTED[3:1],o_out1__59_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,o_out1__86_carry__1_i_3__4}),
        .O({NLW_o_out1__59_carry__1_O_UNCONNECTED[3:2],o_out1__59_carry__1_n_6,\o_y_reg[7]_1 }),
        .S({1'b0,1'b0,1'b1,o_out1__86_carry__1_i_3__4_0}));
  LUT4 #(
    .INIT(16'h0777)) 
    o_out1__59_carry__1_i_1__7
       (.I0(Q[7]),
        .I1(o_out1__59_carry__1_1[6]),
        .I2(Q[6]),
        .I3(o_out1__59_carry__1_1[7]),
        .O(\o_y_reg[7]_4 ));
  LUT4 #(
    .INIT(16'hE53F)) 
    o_out1__59_carry__1_i_2__7
       (.I0(Q[6]),
        .I1(o_out1__59_carry__1_1[6]),
        .I2(Q[7]),
        .I3(o_out1__59_carry__1_1[7]),
        .O(\o_y_reg[6]_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    o_out1__59_carry_i_1__7
       (.I0(Q[7]),
        .I1(o_out1__59_carry__1_1[1]),
        .O(\o_y_reg[7]_2 ));
  LUT4 #(
    .INIT(16'h7888)) 
    o_out1__59_carry_i_5__7
       (.I0(Q[7]),
        .I1(o_out1__59_carry__1_1[1]),
        .I2(Q[6]),
        .I3(o_out1__59_carry__1_1[2]),
        .O(\o_y_reg[7]_5 [1]));
  LUT4 #(
    .INIT(16'h8777)) 
    o_out1__59_carry_i_6__7
       (.I0(Q[7]),
        .I1(o_out1__59_carry__1_1[0]),
        .I2(Q[6]),
        .I3(o_out1__59_carry__1_1[1]),
        .O(\o_y_reg[7]_5 [0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 o_out1__86_carry
       (.CI(1'b0),
        .CO({o_out1__86_carry_n_0,o_out1__86_carry_n_1,o_out1__86_carry_n_2,o_out1__86_carry_n_3}),
        .CYINIT(1'b0),
        .DI({o_out1__86_carry_i_1__4_n_0,o_out1__86_carry_i_2__4_n_0,o_out1__86_carry_i_3__4_n_0,o_out1__86_carry_i_4__4_n_0}),
        .O({o_out1__86_carry_n_4,o_out1__86_carry_n_5,o_out1__86_carry_n_6,o_out1__86_carry_n_7}),
        .S({o_out1__86_carry_i_5__4_n_0,o_out1__86_carry_i_6__4_n_0,o_out1__86_carry_i_7__4_n_0,o_out1__86_carry_i_8__4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 o_out1__86_carry__0
       (.CI(o_out1__86_carry_n_0),
        .CO({o_out1__86_carry__0_n_0,o_out1__86_carry__0_n_1,o_out1__86_carry__0_n_2,o_out1__86_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({o_out1__86_carry__0_i_1__4_n_0,o_out1__86_carry__0_i_2__4_n_0,o_out1__86_carry__0_i_3__4_n_0,o_out1__86_carry__0_i_4__4_n_0}),
        .O({o_out1__86_carry__0_n_4,o_out1__86_carry__0_n_5,o_out1__86_carry__0_n_6,o_out1__86_carry__0_n_7}),
        .S({o_out1__86_carry__0_i_5__4_n_0,o_out1__86_carry__0_i_6__4_n_0,o_out1__86_carry__0_i_7__4_n_0,o_out1__86_carry__0_i_8__4_n_0}));
  LUT3 #(
    .INIT(8'hE8)) 
    o_out1__86_carry__0_i_1__4
       (.I0(o_out1__59_carry__0_n_7),
        .I1(o_out1__0_carry__1_n_1),
        .I2(o_out1__30_carry__0_n_4),
        .O(o_out1__86_carry__0_i_1__4_n_0));
  (* HLUTNM = "lutpair24" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    o_out1__86_carry__0_i_2__4
       (.I0(o_out1__59_carry_n_4),
        .I1(o_out1__0_carry__1_n_6),
        .I2(o_out1__30_carry__0_n_5),
        .O(o_out1__86_carry__0_i_2__4_n_0));
  (* HLUTNM = "lutpair23" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    o_out1__86_carry__0_i_3__4
       (.I0(o_out1__59_carry_n_5),
        .I1(o_out1__0_carry__1_n_7),
        .I2(o_out1__30_carry__0_n_6),
        .O(o_out1__86_carry__0_i_3__4_n_0));
  (* HLUTNM = "lutpair22" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    o_out1__86_carry__0_i_4__4
       (.I0(o_out1__59_carry_n_6),
        .I1(o_out1__0_carry__0_n_4),
        .I2(o_out1__30_carry__0_n_7),
        .O(o_out1__86_carry__0_i_4__4_n_0));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    o_out1__86_carry__0_i_5__4
       (.I0(o_out1__30_carry__0_n_4),
        .I1(o_out1__0_carry__1_n_1),
        .I2(o_out1__59_carry__0_n_7),
        .I3(\o_y_reg[5]_1 [0]),
        .I4(\o_y_reg[7]_0 [0]),
        .O(o_out1__86_carry__0_i_5__4_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    o_out1__86_carry__0_i_6__4
       (.I0(o_out1__86_carry__0_i_2__4_n_0),
        .I1(o_out1__59_carry__0_n_7),
        .I2(o_out1__0_carry__1_n_1),
        .I3(o_out1__30_carry__0_n_4),
        .O(o_out1__86_carry__0_i_6__4_n_0));
  (* HLUTNM = "lutpair24" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    o_out1__86_carry__0_i_7__4
       (.I0(o_out1__59_carry_n_4),
        .I1(o_out1__0_carry__1_n_6),
        .I2(o_out1__30_carry__0_n_5),
        .I3(o_out1__86_carry__0_i_3__4_n_0),
        .O(o_out1__86_carry__0_i_7__4_n_0));
  (* HLUTNM = "lutpair23" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    o_out1__86_carry__0_i_8__4
       (.I0(o_out1__59_carry_n_5),
        .I1(o_out1__0_carry__1_n_7),
        .I2(o_out1__30_carry__0_n_6),
        .I3(o_out1__86_carry__0_i_4__4_n_0),
        .O(o_out1__86_carry__0_i_8__4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 o_out1__86_carry__1
       (.CI(o_out1__86_carry__0_n_0),
        .CO({NLW_o_out1__86_carry__1_CO_UNCONNECTED[3],o_out1__86_carry__1_n_1,o_out1__86_carry__1_n_2,o_out1__86_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\o_y_reg[7]_1 ,o_out1__86_carry__1_i_1__4_n_0,o_out1__86_carry__1_i_2__4_n_0}),
        .O({o_out1__86_carry__1_n_4,o_out1__86_carry__1_i_5__4}),
        .S({o_out1__59_carry__1_n_6,\o_out_reg[15]_2 }));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__86_carry__1_i_1__4
       (.I0(\o_y_reg[7]_0 [1]),
        .I1(\o_y_reg[5]_1 [1]),
        .O(o_out1__86_carry__1_i_1__4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__86_carry__1_i_2__4
       (.I0(\o_y_reg[7]_0 [0]),
        .I1(\o_y_reg[5]_1 [0]),
        .O(o_out1__86_carry__1_i_2__4_n_0));
  LUT3 #(
    .INIT(8'h78)) 
    o_out1__86_carry__1_i_3__7
       (.I0(o_out1__86_carry__1_2),
        .I1(o_out1__86_carry__1_1[2]),
        .I2(o_out1__86_carry__1_3),
        .O(o_out1__59_carry__1_0[2]));
  LUT4 #(
    .INIT(16'h8778)) 
    o_out1__86_carry__1_i_4__7
       (.I0(o_out1__86_carry__1_0[1]),
        .I1(o_out1__86_carry__1_1[1]),
        .I2(o_out1__86_carry__1_2),
        .I3(o_out1__86_carry__1_1[2]),
        .O(o_out1__59_carry__1_0[1]));
  LUT4 #(
    .INIT(16'h8778)) 
    o_out1__86_carry__1_i_5__7
       (.I0(o_out1__86_carry__1_0[0]),
        .I1(o_out1__86_carry__1_1[0]),
        .I2(o_out1__86_carry__1_0[1]),
        .I3(o_out1__86_carry__1_1[1]),
        .O(o_out1__59_carry__1_0[0]));
  (* HLUTNM = "lutpair21" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    o_out1__86_carry_i_1__4
       (.I0(o_out1__59_carry_n_7),
        .I1(o_out1__0_carry__0_n_5),
        .I2(o_out1__30_carry_n_4),
        .O(o_out1__86_carry_i_1__4_n_0));
  (* HLUTNM = "lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__86_carry_i_2__4
       (.I0(o_out1__30_carry_n_5),
        .I1(o_out1__0_carry__0_n_6),
        .O(o_out1__86_carry_i_2__4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__86_carry_i_3__4
       (.I0(o_out1__30_carry_n_6),
        .I1(o_out1__0_carry__0_n_7),
        .O(o_out1__86_carry_i_3__4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__86_carry_i_4__4
       (.I0(o_out1__0_carry_n_4),
        .I1(o_out1__30_carry_n_7),
        .O(o_out1__86_carry_i_4__4_n_0));
  (* HLUTNM = "lutpair22" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    o_out1__86_carry_i_5__4
       (.I0(o_out1__59_carry_n_6),
        .I1(o_out1__0_carry__0_n_4),
        .I2(o_out1__30_carry__0_n_7),
        .I3(o_out1__86_carry_i_1__4_n_0),
        .O(o_out1__86_carry_i_5__4_n_0));
  (* HLUTNM = "lutpair21" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    o_out1__86_carry_i_6__4
       (.I0(o_out1__59_carry_n_7),
        .I1(o_out1__0_carry__0_n_5),
        .I2(o_out1__30_carry_n_4),
        .I3(o_out1__86_carry_i_2__4_n_0),
        .O(o_out1__86_carry_i_6__4_n_0));
  (* HLUTNM = "lutpair20" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    o_out1__86_carry_i_7__4
       (.I0(o_out1__30_carry_n_5),
        .I1(o_out1__0_carry__0_n_6),
        .I2(o_out1__0_carry__0_n_7),
        .I3(o_out1__30_carry_n_6),
        .O(o_out1__86_carry_i_7__4_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    o_out1__86_carry_i_8__4
       (.I0(o_out1__30_carry_n_7),
        .I1(o_out1__0_carry_n_4),
        .I2(o_out1__0_carry__0_n_7),
        .I3(o_out1__30_carry_n_6),
        .O(o_out1__86_carry_i_8__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[11]_i_2__4 
       (.I0(o_out1__86_carry__0_n_4),
        .I1(m_axis_data[11]),
        .O(\o_out[11]_i_2__4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[11]_i_3__4 
       (.I0(o_out1__86_carry__0_n_5),
        .I1(m_axis_data[10]),
        .O(\o_out[11]_i_3__4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[11]_i_4__4 
       (.I0(o_out1__86_carry__0_n_6),
        .I1(m_axis_data[9]),
        .O(\o_out[11]_i_4__4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[11]_i_5__4 
       (.I0(o_out1__86_carry__0_n_7),
        .I1(m_axis_data[8]),
        .O(\o_out[11]_i_5__4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[15]_i_2__4 
       (.I0(m_axis_data[15]),
        .I1(o_out1__86_carry__1_n_4),
        .O(\o_out_reg[15]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[15]_i_4__7 
       (.I0(\o_out_reg[15]_3 [2]),
        .I1(\o_out_reg[15]_5 [2]),
        .O(\o_out[15]_i_4__7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[15]_i_5__7 
       (.I0(\o_out_reg[15]_3 [1]),
        .I1(\o_out_reg[15]_5 [1]),
        .O(\o_out[15]_i_5__7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[15]_i_6 
       (.I0(\o_out_reg[15]_3 [0]),
        .I1(\o_out_reg[15]_5 [0]),
        .O(\o_out[15]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \o_out[3]_i_2__4 
       (.I0(o_out1__30_carry_n_7),
        .I1(o_out1__0_carry_n_4),
        .I2(m_axis_data[3]),
        .O(\o_out[3]_i_2__4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[3]_i_3__4 
       (.I0(o_out1__0_carry_n_5),
        .I1(m_axis_data[2]),
        .O(\o_out[3]_i_3__4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[3]_i_4__4 
       (.I0(o_out1__0_carry_n_6),
        .I1(m_axis_data[1]),
        .O(\o_out[3]_i_4__4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[3]_i_5__4 
       (.I0(o_out1__0_carry_n_7),
        .I1(m_axis_data[0]),
        .O(\o_out[3]_i_5__4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[7]_i_2__4 
       (.I0(o_out1__86_carry_n_4),
        .I1(m_axis_data[7]),
        .O(\o_out[7]_i_2__4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[7]_i_3__4 
       (.I0(o_out1__86_carry_n_5),
        .I1(m_axis_data[6]),
        .O(\o_out[7]_i_3__4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[7]_i_4__4 
       (.I0(o_out1__86_carry_n_6),
        .I1(m_axis_data[5]),
        .O(\o_out[7]_i_4__4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[7]_i_5__4 
       (.I0(o_out1__86_carry_n_7),
        .I1(m_axis_data[4]),
        .O(\o_out[7]_i_5__4_n_0 ));
  FDRE \o_out_reg[0] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[3]_i_1__4_n_7 ),
        .Q(m_axis_data[0]),
        .R(p_0_in));
  FDRE \o_out_reg[10] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[11]_i_1__4_n_5 ),
        .Q(m_axis_data[10]),
        .R(p_0_in));
  FDRE \o_out_reg[11] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[11]_i_1__4_n_4 ),
        .Q(m_axis_data[11]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \o_out_reg[11]_i_1__4 
       (.CI(\o_out_reg[7]_i_1__4_n_0 ),
        .CO({\o_out_reg[11]_0 ,\o_out_reg[11]_i_1__4_n_1 ,\o_out_reg[11]_i_1__4_n_2 ,\o_out_reg[11]_i_1__4_n_3 }),
        .CYINIT(1'b0),
        .DI({o_out1__86_carry__0_n_4,o_out1__86_carry__0_n_5,o_out1__86_carry__0_n_6,o_out1__86_carry__0_n_7}),
        .O({\o_out_reg[11]_i_1__4_n_4 ,\o_out_reg[11]_i_1__4_n_5 ,\o_out_reg[11]_i_1__4_n_6 ,\o_out_reg[11]_i_1__4_n_7 }),
        .S({\o_out[11]_i_2__4_n_0 ,\o_out[11]_i_3__4_n_0 ,\o_out[11]_i_4__4_n_0 ,\o_out[11]_i_5__4_n_0 }));
  FDRE \o_out_reg[12] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[15]_1 [0]),
        .Q(m_axis_data[12]),
        .R(p_0_in));
  FDRE \o_out_reg[13] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[15]_1 [1]),
        .Q(m_axis_data[13]),
        .R(p_0_in));
  FDRE \o_out_reg[14] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[15]_1 [2]),
        .Q(m_axis_data[14]),
        .R(p_0_in));
  FDRE \o_out_reg[15] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[15]_1 [3]),
        .Q(m_axis_data[15]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \o_out_reg[15]_i_2 
       (.CI(CO),
        .CO({\NLW_o_out_reg[15]_i_2_CO_UNCONNECTED [3],\o_out_reg[15]_i_2_n_1 ,\o_out_reg[15]_i_2_n_2 ,\o_out_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\o_out_reg[15]_3 }),
        .O(O),
        .S({\o_out_reg[15]_4 ,\o_out[15]_i_4__7_n_0 ,\o_out[15]_i_5__7_n_0 ,\o_out[15]_i_6_n_0 }));
  FDRE \o_out_reg[1] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[3]_i_1__4_n_6 ),
        .Q(m_axis_data[1]),
        .R(p_0_in));
  FDRE \o_out_reg[2] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[3]_i_1__4_n_5 ),
        .Q(m_axis_data[2]),
        .R(p_0_in));
  FDRE \o_out_reg[3] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[3]_i_1__4_n_4 ),
        .Q(m_axis_data[3]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \o_out_reg[3]_i_1__4 
       (.CI(1'b0),
        .CO({\o_out_reg[3]_i_1__4_n_0 ,\o_out_reg[3]_i_1__4_n_1 ,\o_out_reg[3]_i_1__4_n_2 ,\o_out_reg[3]_i_1__4_n_3 }),
        .CYINIT(1'b0),
        .DI({m_axis_data[3],o_out1__0_carry_n_5,o_out1__0_carry_n_6,o_out1__0_carry_n_7}),
        .O({\o_out_reg[3]_i_1__4_n_4 ,\o_out_reg[3]_i_1__4_n_5 ,\o_out_reg[3]_i_1__4_n_6 ,\o_out_reg[3]_i_1__4_n_7 }),
        .S({\o_out[3]_i_2__4_n_0 ,\o_out[3]_i_3__4_n_0 ,\o_out[3]_i_4__4_n_0 ,\o_out[3]_i_5__4_n_0 }));
  FDRE \o_out_reg[4] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[7]_i_1__4_n_7 ),
        .Q(m_axis_data[4]),
        .R(p_0_in));
  FDRE \o_out_reg[5] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[7]_i_1__4_n_6 ),
        .Q(m_axis_data[5]),
        .R(p_0_in));
  FDRE \o_out_reg[6] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[7]_i_1__4_n_5 ),
        .Q(m_axis_data[6]),
        .R(p_0_in));
  FDRE \o_out_reg[7] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[7]_i_1__4_n_4 ),
        .Q(m_axis_data[7]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \o_out_reg[7]_i_1__4 
       (.CI(\o_out_reg[3]_i_1__4_n_0 ),
        .CO({\o_out_reg[7]_i_1__4_n_0 ,\o_out_reg[7]_i_1__4_n_1 ,\o_out_reg[7]_i_1__4_n_2 ,\o_out_reg[7]_i_1__4_n_3 }),
        .CYINIT(1'b0),
        .DI({o_out1__86_carry_n_4,o_out1__86_carry_n_5,o_out1__86_carry_n_6,o_out1__86_carry_n_7}),
        .O({\o_out_reg[7]_i_1__4_n_4 ,\o_out_reg[7]_i_1__4_n_5 ,\o_out_reg[7]_i_1__4_n_6 ,\o_out_reg[7]_i_1__4_n_7 }),
        .S({\o_out[7]_i_2__4_n_0 ,\o_out[7]_i_3__4_n_0 ,\o_out[7]_i_4__4_n_0 ,\o_out[7]_i_5__4_n_0 }));
  FDRE \o_out_reg[8] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[11]_i_1__4_n_7 ),
        .Q(m_axis_data[8]),
        .R(p_0_in));
  FDRE \o_out_reg[9] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[11]_i_1__4_n_6 ),
        .Q(m_axis_data[9]),
        .R(p_0_in));
  FDRE \o_y_reg[0] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(p_0_in));
  FDRE \o_y_reg[1] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(p_0_in));
  FDRE \o_y_reg[2] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(p_0_in));
  FDRE \o_y_reg[3] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(p_0_in));
  FDRE \o_y_reg[4] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[4]),
        .R(p_0_in));
  FDRE \o_y_reg[5] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(D[5]),
        .Q(Q[5]),
        .R(p_0_in));
  FDRE \o_y_reg[6] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(D[6]),
        .Q(Q[6]),
        .R(p_0_in));
  FDRE \o_y_reg[7] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(D[7]),
        .Q(Q[7]),
        .R(p_0_in));
endmodule

(* ORIG_REF_NAME = "MAC" *) 
module design_1_SystolicArrayAxiWrap_0_0_MAC_6
   (m_axis_data,
    \o_y_reg[5] ,
    \o_y_reg[5]_0 ,
    \o_y_reg[7] ,
    \o_y_reg[7]_0 ,
    o_out1__86_carry__1_i_5__5,
    S,
    Q,
    \o_out_reg[15]_0 ,
    DI,
    \o_x_reg[1]_0 ,
    \o_x_reg[5]_0 ,
    \o_x_reg[0]_0 ,
    \o_x_reg[4]_0 ,
    \o_x_reg[5]_1 ,
    \o_x_reg[5]_2 ,
    \o_x_reg[6]_0 ,
    \o_x_reg[0]_1 ,
    CO,
    \o_x_reg[1]_1 ,
    \o_x_reg[5]_3 ,
    p_0_in,
    axi_clk,
    O,
    \o_out_reg[3]_0 ,
    \o_out_reg[3]_1 ,
    o_out1__86_carry_i_8__5_0,
    o_out1__86_carry_i_8__5_1,
    o_out1__86_carry__0_i_3__5_0,
    o_out1__86_carry__0_i_3__5_1,
    \o_out[3]_i_2__5_0 ,
    \o_out[3]_i_2__5_1 ,
    o_out1__86_carry__0_i_4__5_0,
    o_out1__86_carry__0_i_4__5_1,
    o_out1__86_carry__1_i_5__5_0,
    o_out1__86_carry__1_i_5__5_1,
    o_out1__86_carry_i_1__5_0,
    o_out1__86_carry_i_1__5_1,
    o_out1__86_carry__0_i_6__5_0,
    o_out1__86_carry__0_i_6__5_1,
    o_out1__86_carry__1_i_3__5,
    o_out1__86_carry__1_i_3__5_0,
    \o_out_reg[15]_1 ,
    o_out1__59_carry_0,
    \o_x_reg[7]_0 );
  output [15:0]m_axis_data;
  output [0:0]\o_y_reg[5] ;
  output [1:0]\o_y_reg[5]_0 ;
  output [2:0]\o_y_reg[7] ;
  output [0:0]\o_y_reg[7]_0 ;
  output [2:0]o_out1__86_carry__1_i_5__5;
  output [1:0]S;
  output [7:0]Q;
  output [0:0]\o_out_reg[15]_0 ;
  output [1:0]DI;
  output [1:0]\o_x_reg[1]_0 ;
  output \o_x_reg[5]_0 ;
  output [0:0]\o_x_reg[0]_0 ;
  output \o_x_reg[4]_0 ;
  output \o_x_reg[5]_1 ;
  output \o_x_reg[5]_2 ;
  output \o_x_reg[6]_0 ;
  output [1:0]\o_x_reg[0]_1 ;
  output [0:0]CO;
  output [2:0]\o_x_reg[1]_1 ;
  output [3:0]\o_x_reg[5]_3 ;
  input p_0_in;
  input axi_clk;
  input [3:0]O;
  input [2:0]\o_out_reg[3]_0 ;
  input [3:0]\o_out_reg[3]_1 ;
  input [3:0]o_out1__86_carry_i_8__5_0;
  input [3:0]o_out1__86_carry_i_8__5_1;
  input [1:0]o_out1__86_carry__0_i_3__5_0;
  input [1:0]o_out1__86_carry__0_i_3__5_1;
  input [2:0]\o_out[3]_i_2__5_0 ;
  input [3:0]\o_out[3]_i_2__5_1 ;
  input [3:0]o_out1__86_carry__0_i_4__5_0;
  input [3:0]o_out1__86_carry__0_i_4__5_1;
  input [1:0]o_out1__86_carry__1_i_5__5_0;
  input [1:0]o_out1__86_carry__1_i_5__5_1;
  input [2:0]o_out1__86_carry_i_1__5_0;
  input [3:0]o_out1__86_carry_i_1__5_1;
  input [3:0]o_out1__86_carry__0_i_6__5_0;
  input [3:0]o_out1__86_carry__0_i_6__5_1;
  input [0:0]o_out1__86_carry__1_i_3__5;
  input [0:0]o_out1__86_carry__1_i_3__5_0;
  input [2:0]\o_out_reg[15]_1 ;
  input [7:0]o_out1__59_carry_0;
  input [7:0]\o_x_reg[7]_0 ;

  wire [0:0]CO;
  wire [1:0]DI;
  wire [3:0]O;
  wire [7:0]Q;
  wire [1:0]S;
  wire axi_clk;
  wire [15:0]m_axis_data;
  wire o_out1__0_carry__0_n_0;
  wire o_out1__0_carry__0_n_1;
  wire o_out1__0_carry__0_n_2;
  wire o_out1__0_carry__0_n_3;
  wire o_out1__0_carry__0_n_4;
  wire o_out1__0_carry__0_n_5;
  wire o_out1__0_carry__0_n_6;
  wire o_out1__0_carry__0_n_7;
  wire o_out1__0_carry__1_n_1;
  wire o_out1__0_carry__1_n_3;
  wire o_out1__0_carry__1_n_6;
  wire o_out1__0_carry__1_n_7;
  wire o_out1__0_carry_n_0;
  wire o_out1__0_carry_n_1;
  wire o_out1__0_carry_n_2;
  wire o_out1__0_carry_n_3;
  wire o_out1__0_carry_n_4;
  wire o_out1__0_carry_n_5;
  wire o_out1__0_carry_n_6;
  wire o_out1__0_carry_n_7;
  wire o_out1__30_carry__0_n_0;
  wire o_out1__30_carry__0_n_1;
  wire o_out1__30_carry__0_n_2;
  wire o_out1__30_carry__0_n_3;
  wire o_out1__30_carry__0_n_4;
  wire o_out1__30_carry__0_n_5;
  wire o_out1__30_carry__0_n_6;
  wire o_out1__30_carry__0_n_7;
  wire o_out1__30_carry__1_n_3;
  wire o_out1__30_carry_n_0;
  wire o_out1__30_carry_n_1;
  wire o_out1__30_carry_n_2;
  wire o_out1__30_carry_n_3;
  wire o_out1__30_carry_n_4;
  wire o_out1__30_carry_n_5;
  wire o_out1__30_carry_n_6;
  wire o_out1__30_carry_n_7;
  wire [7:0]o_out1__59_carry_0;
  wire o_out1__59_carry__0_n_0;
  wire o_out1__59_carry__0_n_1;
  wire o_out1__59_carry__0_n_2;
  wire o_out1__59_carry__0_n_3;
  wire o_out1__59_carry__0_n_7;
  wire o_out1__59_carry__1_n_3;
  wire o_out1__59_carry__1_n_6;
  wire o_out1__59_carry_n_0;
  wire o_out1__59_carry_n_1;
  wire o_out1__59_carry_n_2;
  wire o_out1__59_carry_n_3;
  wire o_out1__59_carry_n_4;
  wire o_out1__59_carry_n_5;
  wire o_out1__59_carry_n_6;
  wire o_out1__59_carry_n_7;
  wire o_out1__86_carry__0_i_1__5_n_0;
  wire o_out1__86_carry__0_i_2__5_n_0;
  wire [1:0]o_out1__86_carry__0_i_3__5_0;
  wire [1:0]o_out1__86_carry__0_i_3__5_1;
  wire o_out1__86_carry__0_i_3__5_n_0;
  wire [3:0]o_out1__86_carry__0_i_4__5_0;
  wire [3:0]o_out1__86_carry__0_i_4__5_1;
  wire o_out1__86_carry__0_i_4__5_n_0;
  wire o_out1__86_carry__0_i_5__5_n_0;
  wire [3:0]o_out1__86_carry__0_i_6__5_0;
  wire [3:0]o_out1__86_carry__0_i_6__5_1;
  wire o_out1__86_carry__0_i_6__5_n_0;
  wire o_out1__86_carry__0_i_7__5_n_0;
  wire o_out1__86_carry__0_i_8__5_n_0;
  wire o_out1__86_carry__0_n_0;
  wire o_out1__86_carry__0_n_1;
  wire o_out1__86_carry__0_n_2;
  wire o_out1__86_carry__0_n_3;
  wire o_out1__86_carry__0_n_4;
  wire o_out1__86_carry__0_n_5;
  wire o_out1__86_carry__0_n_6;
  wire o_out1__86_carry__0_n_7;
  wire o_out1__86_carry__1_i_1__5_n_0;
  wire o_out1__86_carry__1_i_2__5_n_0;
  wire [0:0]o_out1__86_carry__1_i_3__5;
  wire [0:0]o_out1__86_carry__1_i_3__5_0;
  wire [2:0]o_out1__86_carry__1_i_5__5;
  wire [1:0]o_out1__86_carry__1_i_5__5_0;
  wire [1:0]o_out1__86_carry__1_i_5__5_1;
  wire o_out1__86_carry__1_n_1;
  wire o_out1__86_carry__1_n_2;
  wire o_out1__86_carry__1_n_3;
  wire o_out1__86_carry__1_n_4;
  wire [2:0]o_out1__86_carry_i_1__5_0;
  wire [3:0]o_out1__86_carry_i_1__5_1;
  wire o_out1__86_carry_i_1__5_n_0;
  wire o_out1__86_carry_i_2__5_n_0;
  wire o_out1__86_carry_i_3__5_n_0;
  wire o_out1__86_carry_i_4__5_n_0;
  wire o_out1__86_carry_i_5__5_n_0;
  wire o_out1__86_carry_i_6__5_n_0;
  wire o_out1__86_carry_i_7__5_n_0;
  wire [3:0]o_out1__86_carry_i_8__5_0;
  wire [3:0]o_out1__86_carry_i_8__5_1;
  wire o_out1__86_carry_i_8__5_n_0;
  wire o_out1__86_carry_n_0;
  wire o_out1__86_carry_n_1;
  wire o_out1__86_carry_n_2;
  wire o_out1__86_carry_n_3;
  wire o_out1__86_carry_n_4;
  wire o_out1__86_carry_n_5;
  wire o_out1__86_carry_n_6;
  wire o_out1__86_carry_n_7;
  wire \o_out[11]_i_2__5_n_0 ;
  wire \o_out[11]_i_3__5_n_0 ;
  wire \o_out[11]_i_4__5_n_0 ;
  wire \o_out[11]_i_5__5_n_0 ;
  wire [2:0]\o_out[3]_i_2__5_0 ;
  wire [3:0]\o_out[3]_i_2__5_1 ;
  wire \o_out[3]_i_2__5_n_0 ;
  wire \o_out[3]_i_3__5_n_0 ;
  wire \o_out[3]_i_4__5_n_0 ;
  wire \o_out[3]_i_5__5_n_0 ;
  wire \o_out[7]_i_2__5_n_0 ;
  wire \o_out[7]_i_3__5_n_0 ;
  wire \o_out[7]_i_4__5_n_0 ;
  wire \o_out[7]_i_5__5_n_0 ;
  wire \o_out_reg[11]_i_1__5_n_1 ;
  wire \o_out_reg[11]_i_1__5_n_2 ;
  wire \o_out_reg[11]_i_1__5_n_3 ;
  wire \o_out_reg[11]_i_1__5_n_4 ;
  wire \o_out_reg[11]_i_1__5_n_5 ;
  wire \o_out_reg[11]_i_1__5_n_6 ;
  wire \o_out_reg[11]_i_1__5_n_7 ;
  wire [0:0]\o_out_reg[15]_0 ;
  wire [2:0]\o_out_reg[15]_1 ;
  wire [2:0]\o_out_reg[3]_0 ;
  wire [3:0]\o_out_reg[3]_1 ;
  wire \o_out_reg[3]_i_1__5_n_0 ;
  wire \o_out_reg[3]_i_1__5_n_1 ;
  wire \o_out_reg[3]_i_1__5_n_2 ;
  wire \o_out_reg[3]_i_1__5_n_3 ;
  wire \o_out_reg[3]_i_1__5_n_4 ;
  wire \o_out_reg[3]_i_1__5_n_5 ;
  wire \o_out_reg[3]_i_1__5_n_6 ;
  wire \o_out_reg[3]_i_1__5_n_7 ;
  wire \o_out_reg[7]_i_1__5_n_0 ;
  wire \o_out_reg[7]_i_1__5_n_1 ;
  wire \o_out_reg[7]_i_1__5_n_2 ;
  wire \o_out_reg[7]_i_1__5_n_3 ;
  wire \o_out_reg[7]_i_1__5_n_4 ;
  wire \o_out_reg[7]_i_1__5_n_5 ;
  wire \o_out_reg[7]_i_1__5_n_6 ;
  wire \o_out_reg[7]_i_1__5_n_7 ;
  wire [0:0]\o_x_reg[0]_0 ;
  wire [1:0]\o_x_reg[0]_1 ;
  wire [1:0]\o_x_reg[1]_0 ;
  wire [2:0]\o_x_reg[1]_1 ;
  wire \o_x_reg[4]_0 ;
  wire \o_x_reg[5]_0 ;
  wire \o_x_reg[5]_1 ;
  wire \o_x_reg[5]_2 ;
  wire [3:0]\o_x_reg[5]_3 ;
  wire \o_x_reg[6]_0 ;
  wire [7:0]\o_x_reg[7]_0 ;
  wire [0:0]\o_y_reg[5] ;
  wire [1:0]\o_y_reg[5]_0 ;
  wire [2:0]\o_y_reg[7] ;
  wire [0:0]\o_y_reg[7]_0 ;
  wire p_0_in;
  wire [3:1]NLW_o_out1__0_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_o_out1__0_carry__1_O_UNCONNECTED;
  wire [3:1]NLW_o_out1__30_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_o_out1__30_carry__1_O_UNCONNECTED;
  wire [3:1]NLW_o_out1__59_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_o_out1__59_carry__1_O_UNCONNECTED;
  wire [3:3]NLW_o_out1__86_carry__1_CO_UNCONNECTED;

  CARRY4 o_out1__0_carry
       (.CI(1'b0),
        .CO({o_out1__0_carry_n_0,o_out1__0_carry_n_1,o_out1__0_carry_n_2,o_out1__0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({\o_out_reg[3]_0 ,1'b0}),
        .O({o_out1__0_carry_n_4,o_out1__0_carry_n_5,o_out1__0_carry_n_6,o_out1__0_carry_n_7}),
        .S(\o_out_reg[3]_1 ));
  CARRY4 o_out1__0_carry__0
       (.CI(o_out1__0_carry_n_0),
        .CO({o_out1__0_carry__0_n_0,o_out1__0_carry__0_n_1,o_out1__0_carry__0_n_2,o_out1__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(o_out1__86_carry_i_8__5_0),
        .O({o_out1__0_carry__0_n_4,o_out1__0_carry__0_n_5,o_out1__0_carry__0_n_6,o_out1__0_carry__0_n_7}),
        .S(o_out1__86_carry_i_8__5_1));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__0_carry__0_i_9__6
       (.I0(Q[5]),
        .I1(o_out1__59_carry_0[2]),
        .O(\o_x_reg[5]_0 ));
  CARRY4 o_out1__0_carry__1
       (.CI(o_out1__0_carry__0_n_0),
        .CO({NLW_o_out1__0_carry__1_CO_UNCONNECTED[3],o_out1__0_carry__1_n_1,NLW_o_out1__0_carry__1_CO_UNCONNECTED[1],o_out1__0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,o_out1__86_carry__0_i_3__5_0}),
        .O({NLW_o_out1__0_carry__1_O_UNCONNECTED[3:2],o_out1__0_carry__1_n_6,o_out1__0_carry__1_n_7}),
        .S({1'b0,1'b1,o_out1__86_carry__0_i_3__5_1}));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    o_out1__0_carry_i_1__6
       (.I0(Q[3]),
        .I1(o_out1__59_carry_0[0]),
        .I2(o_out1__59_carry_0[2]),
        .I3(Q[1]),
        .I4(o_out1__59_carry_0[1]),
        .I5(Q[2]),
        .O(DI[1]));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__0_carry_i_3__6
       (.I0(Q[0]),
        .I1(o_out1__59_carry_0[1]),
        .O(DI[0]));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    o_out1__0_carry_i_4__6
       (.I0(DI[1]),
        .I1(Q[1]),
        .I2(o_out1__59_carry_0[2]),
        .I3(Q[0]),
        .I4(o_out1__59_carry_0[1]),
        .O(\o_x_reg[1]_1 [2]));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    o_out1__0_carry_i_5__6
       (.I0(Q[0]),
        .I1(o_out1__59_carry_0[2]),
        .I2(Q[1]),
        .I3(o_out1__59_carry_0[1]),
        .I4(Q[2]),
        .I5(o_out1__59_carry_0[0]),
        .O(\o_x_reg[1]_1 [1]));
  LUT4 #(
    .INIT(16'h7888)) 
    o_out1__0_carry_i_6__6
       (.I0(Q[1]),
        .I1(o_out1__59_carry_0[0]),
        .I2(o_out1__59_carry_0[1]),
        .I3(Q[0]),
        .O(\o_x_reg[1]_1 [0]));
  CARRY4 o_out1__30_carry
       (.CI(1'b0),
        .CO({o_out1__30_carry_n_0,o_out1__30_carry_n_1,o_out1__30_carry_n_2,o_out1__30_carry_n_3}),
        .CYINIT(1'b0),
        .DI({\o_out[3]_i_2__5_0 ,1'b0}),
        .O({o_out1__30_carry_n_4,o_out1__30_carry_n_5,o_out1__30_carry_n_6,o_out1__30_carry_n_7}),
        .S(\o_out[3]_i_2__5_1 ));
  CARRY4 o_out1__30_carry__0
       (.CI(o_out1__30_carry_n_0),
        .CO({o_out1__30_carry__0_n_0,o_out1__30_carry__0_n_1,o_out1__30_carry__0_n_2,o_out1__30_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(o_out1__86_carry__0_i_4__5_0),
        .O({o_out1__30_carry__0_n_4,o_out1__30_carry__0_n_5,o_out1__30_carry__0_n_6,o_out1__30_carry__0_n_7}),
        .S(o_out1__86_carry__0_i_4__5_1));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__30_carry__0_i_10__6
       (.I0(Q[6]),
        .I1(o_out1__59_carry_0[3]),
        .O(\o_x_reg[6]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__30_carry__0_i_11__6
       (.I0(Q[5]),
        .I1(o_out1__59_carry_0[3]),
        .O(\o_x_reg[5]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__30_carry__0_i_12__6
       (.I0(Q[4]),
        .I1(o_out1__59_carry_0[3]),
        .O(\o_x_reg[4]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__30_carry__0_i_9__6
       (.I0(Q[5]),
        .I1(o_out1__59_carry_0[5]),
        .O(\o_x_reg[5]_2 ));
  CARRY4 o_out1__30_carry__1
       (.CI(o_out1__30_carry__0_n_0),
        .CO({NLW_o_out1__30_carry__1_CO_UNCONNECTED[3],\o_y_reg[5] ,NLW_o_out1__30_carry__1_CO_UNCONNECTED[1],o_out1__30_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,o_out1__86_carry__1_i_5__5_0}),
        .O({NLW_o_out1__30_carry__1_O_UNCONNECTED[3:2],\o_y_reg[5]_0 }),
        .S({1'b0,1'b1,o_out1__86_carry__1_i_5__5_1}));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__30_carry_i_3__6
       (.I0(Q[0]),
        .I1(o_out1__59_carry_0[4]),
        .O(\o_x_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    o_out1__30_carry_i_5__6
       (.I0(Q[0]),
        .I1(o_out1__59_carry_0[5]),
        .I2(Q[1]),
        .I3(o_out1__59_carry_0[4]),
        .I4(o_out1__59_carry_0[3]),
        .I5(Q[2]),
        .O(\o_x_reg[0]_1 [1]));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__30_carry_i_7__6
       (.I0(Q[0]),
        .I1(o_out1__59_carry_0[3]),
        .O(\o_x_reg[0]_1 [0]));
  CARRY4 o_out1__59_carry
       (.CI(1'b0),
        .CO({o_out1__59_carry_n_0,o_out1__59_carry_n_1,o_out1__59_carry_n_2,o_out1__59_carry_n_3}),
        .CYINIT(1'b0),
        .DI({o_out1__86_carry_i_1__5_0,1'b0}),
        .O({o_out1__59_carry_n_4,o_out1__59_carry_n_5,o_out1__59_carry_n_6,o_out1__59_carry_n_7}),
        .S(o_out1__86_carry_i_1__5_1));
  CARRY4 o_out1__59_carry__0
       (.CI(o_out1__59_carry_n_0),
        .CO({o_out1__59_carry__0_n_0,o_out1__59_carry__0_n_1,o_out1__59_carry__0_n_2,o_out1__59_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(o_out1__86_carry__0_i_6__5_0),
        .O({\o_y_reg[7] ,o_out1__59_carry__0_n_7}),
        .S(o_out1__86_carry__0_i_6__5_1));
  LUT5 #(
    .INIT(32'h6FC030C0)) 
    o_out1__59_carry__0_i_5__6
       (.I0(Q[5]),
        .I1(Q[7]),
        .I2(o_out1__59_carry_0[6]),
        .I3(Q[6]),
        .I4(o_out1__59_carry_0[7]),
        .O(\o_x_reg[5]_3 [3]));
  LUT5 #(
    .INIT(32'h903FCF3F)) 
    o_out1__59_carry__0_i_6__6
       (.I0(Q[4]),
        .I1(Q[6]),
        .I2(o_out1__59_carry_0[6]),
        .I3(Q[5]),
        .I4(o_out1__59_carry_0[7]),
        .O(\o_x_reg[5]_3 [2]));
  LUT5 #(
    .INIT(32'h903FCF3F)) 
    o_out1__59_carry__0_i_7__6
       (.I0(Q[3]),
        .I1(Q[5]),
        .I2(o_out1__59_carry_0[6]),
        .I3(Q[4]),
        .I4(o_out1__59_carry_0[7]),
        .O(\o_x_reg[5]_3 [1]));
  LUT5 #(
    .INIT(32'h903FCF3F)) 
    o_out1__59_carry__0_i_8__6
       (.I0(Q[2]),
        .I1(Q[4]),
        .I2(o_out1__59_carry_0[6]),
        .I3(Q[3]),
        .I4(o_out1__59_carry_0[7]),
        .O(\o_x_reg[5]_3 [0]));
  CARRY4 o_out1__59_carry__1
       (.CI(o_out1__59_carry__0_n_0),
        .CO({NLW_o_out1__59_carry__1_CO_UNCONNECTED[3:1],o_out1__59_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,o_out1__86_carry__1_i_3__5}),
        .O({NLW_o_out1__59_carry__1_O_UNCONNECTED[3:2],o_out1__59_carry__1_n_6,\o_y_reg[7]_0 }),
        .S({1'b0,1'b0,1'b1,o_out1__86_carry__1_i_3__5_0}));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__59_carry_i_2__6
       (.I0(Q[1]),
        .I1(o_out1__59_carry_0[7]),
        .O(\o_x_reg[1]_0 [1]));
  LUT2 #(
    .INIT(4'h7)) 
    o_out1__59_carry_i_3__6
       (.I0(Q[0]),
        .I1(o_out1__59_carry_0[7]),
        .O(\o_x_reg[1]_0 [0]));
  LUT5 #(
    .INIT(32'h956AC0C0)) 
    o_out1__59_carry_i_4__6
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(o_out1__59_carry_0[6]),
        .I3(Q[2]),
        .I4(o_out1__59_carry_0[7]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__59_carry_i_7__6
       (.I0(Q[0]),
        .I1(o_out1__59_carry_0[6]),
        .O(S[0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 o_out1__86_carry
       (.CI(1'b0),
        .CO({o_out1__86_carry_n_0,o_out1__86_carry_n_1,o_out1__86_carry_n_2,o_out1__86_carry_n_3}),
        .CYINIT(1'b0),
        .DI({o_out1__86_carry_i_1__5_n_0,o_out1__86_carry_i_2__5_n_0,o_out1__86_carry_i_3__5_n_0,o_out1__86_carry_i_4__5_n_0}),
        .O({o_out1__86_carry_n_4,o_out1__86_carry_n_5,o_out1__86_carry_n_6,o_out1__86_carry_n_7}),
        .S({o_out1__86_carry_i_5__5_n_0,o_out1__86_carry_i_6__5_n_0,o_out1__86_carry_i_7__5_n_0,o_out1__86_carry_i_8__5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 o_out1__86_carry__0
       (.CI(o_out1__86_carry_n_0),
        .CO({o_out1__86_carry__0_n_0,o_out1__86_carry__0_n_1,o_out1__86_carry__0_n_2,o_out1__86_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({o_out1__86_carry__0_i_1__5_n_0,o_out1__86_carry__0_i_2__5_n_0,o_out1__86_carry__0_i_3__5_n_0,o_out1__86_carry__0_i_4__5_n_0}),
        .O({o_out1__86_carry__0_n_4,o_out1__86_carry__0_n_5,o_out1__86_carry__0_n_6,o_out1__86_carry__0_n_7}),
        .S({o_out1__86_carry__0_i_5__5_n_0,o_out1__86_carry__0_i_6__5_n_0,o_out1__86_carry__0_i_7__5_n_0,o_out1__86_carry__0_i_8__5_n_0}));
  LUT3 #(
    .INIT(8'hE8)) 
    o_out1__86_carry__0_i_1__5
       (.I0(o_out1__59_carry__0_n_7),
        .I1(o_out1__0_carry__1_n_1),
        .I2(o_out1__30_carry__0_n_4),
        .O(o_out1__86_carry__0_i_1__5_n_0));
  (* HLUTNM = "lutpair29" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    o_out1__86_carry__0_i_2__5
       (.I0(o_out1__59_carry_n_4),
        .I1(o_out1__0_carry__1_n_6),
        .I2(o_out1__30_carry__0_n_5),
        .O(o_out1__86_carry__0_i_2__5_n_0));
  (* HLUTNM = "lutpair28" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    o_out1__86_carry__0_i_3__5
       (.I0(o_out1__59_carry_n_5),
        .I1(o_out1__0_carry__1_n_7),
        .I2(o_out1__30_carry__0_n_6),
        .O(o_out1__86_carry__0_i_3__5_n_0));
  (* HLUTNM = "lutpair27" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    o_out1__86_carry__0_i_4__5
       (.I0(o_out1__59_carry_n_6),
        .I1(o_out1__0_carry__0_n_4),
        .I2(o_out1__30_carry__0_n_7),
        .O(o_out1__86_carry__0_i_4__5_n_0));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    o_out1__86_carry__0_i_5__5
       (.I0(o_out1__30_carry__0_n_4),
        .I1(o_out1__0_carry__1_n_1),
        .I2(o_out1__59_carry__0_n_7),
        .I3(\o_y_reg[5]_0 [0]),
        .I4(\o_y_reg[7] [0]),
        .O(o_out1__86_carry__0_i_5__5_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    o_out1__86_carry__0_i_6__5
       (.I0(o_out1__86_carry__0_i_2__5_n_0),
        .I1(o_out1__59_carry__0_n_7),
        .I2(o_out1__0_carry__1_n_1),
        .I3(o_out1__30_carry__0_n_4),
        .O(o_out1__86_carry__0_i_6__5_n_0));
  (* HLUTNM = "lutpair29" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    o_out1__86_carry__0_i_7__5
       (.I0(o_out1__59_carry_n_4),
        .I1(o_out1__0_carry__1_n_6),
        .I2(o_out1__30_carry__0_n_5),
        .I3(o_out1__86_carry__0_i_3__5_n_0),
        .O(o_out1__86_carry__0_i_7__5_n_0));
  (* HLUTNM = "lutpair28" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    o_out1__86_carry__0_i_8__5
       (.I0(o_out1__59_carry_n_5),
        .I1(o_out1__0_carry__1_n_7),
        .I2(o_out1__30_carry__0_n_6),
        .I3(o_out1__86_carry__0_i_4__5_n_0),
        .O(o_out1__86_carry__0_i_8__5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 o_out1__86_carry__1
       (.CI(o_out1__86_carry__0_n_0),
        .CO({NLW_o_out1__86_carry__1_CO_UNCONNECTED[3],o_out1__86_carry__1_n_1,o_out1__86_carry__1_n_2,o_out1__86_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\o_y_reg[7]_0 ,o_out1__86_carry__1_i_1__5_n_0,o_out1__86_carry__1_i_2__5_n_0}),
        .O({o_out1__86_carry__1_n_4,o_out1__86_carry__1_i_5__5}),
        .S({o_out1__59_carry__1_n_6,\o_out_reg[15]_1 }));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__86_carry__1_i_1__5
       (.I0(\o_y_reg[7] [1]),
        .I1(\o_y_reg[5]_0 [1]),
        .O(o_out1__86_carry__1_i_1__5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__86_carry__1_i_2__5
       (.I0(\o_y_reg[7] [0]),
        .I1(\o_y_reg[5]_0 [0]),
        .O(o_out1__86_carry__1_i_2__5_n_0));
  (* HLUTNM = "lutpair26" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    o_out1__86_carry_i_1__5
       (.I0(o_out1__59_carry_n_7),
        .I1(o_out1__0_carry__0_n_5),
        .I2(o_out1__30_carry_n_4),
        .O(o_out1__86_carry_i_1__5_n_0));
  (* HLUTNM = "lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__86_carry_i_2__5
       (.I0(o_out1__30_carry_n_5),
        .I1(o_out1__0_carry__0_n_6),
        .O(o_out1__86_carry_i_2__5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__86_carry_i_3__5
       (.I0(o_out1__30_carry_n_6),
        .I1(o_out1__0_carry__0_n_7),
        .O(o_out1__86_carry_i_3__5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__86_carry_i_4__5
       (.I0(o_out1__0_carry_n_4),
        .I1(o_out1__30_carry_n_7),
        .O(o_out1__86_carry_i_4__5_n_0));
  (* HLUTNM = "lutpair27" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    o_out1__86_carry_i_5__5
       (.I0(o_out1__59_carry_n_6),
        .I1(o_out1__0_carry__0_n_4),
        .I2(o_out1__30_carry__0_n_7),
        .I3(o_out1__86_carry_i_1__5_n_0),
        .O(o_out1__86_carry_i_5__5_n_0));
  (* HLUTNM = "lutpair26" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    o_out1__86_carry_i_6__5
       (.I0(o_out1__59_carry_n_7),
        .I1(o_out1__0_carry__0_n_5),
        .I2(o_out1__30_carry_n_4),
        .I3(o_out1__86_carry_i_2__5_n_0),
        .O(o_out1__86_carry_i_6__5_n_0));
  (* HLUTNM = "lutpair25" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    o_out1__86_carry_i_7__5
       (.I0(o_out1__30_carry_n_5),
        .I1(o_out1__0_carry__0_n_6),
        .I2(o_out1__0_carry__0_n_7),
        .I3(o_out1__30_carry_n_6),
        .O(o_out1__86_carry_i_7__5_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    o_out1__86_carry_i_8__5
       (.I0(o_out1__30_carry_n_7),
        .I1(o_out1__0_carry_n_4),
        .I2(o_out1__0_carry__0_n_7),
        .I3(o_out1__30_carry_n_6),
        .O(o_out1__86_carry_i_8__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[11]_i_2__5 
       (.I0(o_out1__86_carry__0_n_4),
        .I1(m_axis_data[11]),
        .O(\o_out[11]_i_2__5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[11]_i_3__5 
       (.I0(o_out1__86_carry__0_n_5),
        .I1(m_axis_data[10]),
        .O(\o_out[11]_i_3__5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[11]_i_4__5 
       (.I0(o_out1__86_carry__0_n_6),
        .I1(m_axis_data[9]),
        .O(\o_out[11]_i_4__5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[11]_i_5__5 
       (.I0(o_out1__86_carry__0_n_7),
        .I1(m_axis_data[8]),
        .O(\o_out[11]_i_5__5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[15]_i_2__5 
       (.I0(m_axis_data[15]),
        .I1(o_out1__86_carry__1_n_4),
        .O(\o_out_reg[15]_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \o_out[3]_i_2__5 
       (.I0(o_out1__30_carry_n_7),
        .I1(o_out1__0_carry_n_4),
        .I2(m_axis_data[3]),
        .O(\o_out[3]_i_2__5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[3]_i_3__5 
       (.I0(o_out1__0_carry_n_5),
        .I1(m_axis_data[2]),
        .O(\o_out[3]_i_3__5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[3]_i_4__5 
       (.I0(o_out1__0_carry_n_6),
        .I1(m_axis_data[1]),
        .O(\o_out[3]_i_4__5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[3]_i_5__5 
       (.I0(o_out1__0_carry_n_7),
        .I1(m_axis_data[0]),
        .O(\o_out[3]_i_5__5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[7]_i_2__5 
       (.I0(o_out1__86_carry_n_4),
        .I1(m_axis_data[7]),
        .O(\o_out[7]_i_2__5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[7]_i_3__5 
       (.I0(o_out1__86_carry_n_5),
        .I1(m_axis_data[6]),
        .O(\o_out[7]_i_3__5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[7]_i_4__5 
       (.I0(o_out1__86_carry_n_6),
        .I1(m_axis_data[5]),
        .O(\o_out[7]_i_4__5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[7]_i_5__5 
       (.I0(o_out1__86_carry_n_7),
        .I1(m_axis_data[4]),
        .O(\o_out[7]_i_5__5_n_0 ));
  FDRE \o_out_reg[0] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[3]_i_1__5_n_7 ),
        .Q(m_axis_data[0]),
        .R(p_0_in));
  FDRE \o_out_reg[10] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[11]_i_1__5_n_5 ),
        .Q(m_axis_data[10]),
        .R(p_0_in));
  FDRE \o_out_reg[11] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[11]_i_1__5_n_4 ),
        .Q(m_axis_data[11]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \o_out_reg[11]_i_1__5 
       (.CI(\o_out_reg[7]_i_1__5_n_0 ),
        .CO({CO,\o_out_reg[11]_i_1__5_n_1 ,\o_out_reg[11]_i_1__5_n_2 ,\o_out_reg[11]_i_1__5_n_3 }),
        .CYINIT(1'b0),
        .DI({o_out1__86_carry__0_n_4,o_out1__86_carry__0_n_5,o_out1__86_carry__0_n_6,o_out1__86_carry__0_n_7}),
        .O({\o_out_reg[11]_i_1__5_n_4 ,\o_out_reg[11]_i_1__5_n_5 ,\o_out_reg[11]_i_1__5_n_6 ,\o_out_reg[11]_i_1__5_n_7 }),
        .S({\o_out[11]_i_2__5_n_0 ,\o_out[11]_i_3__5_n_0 ,\o_out[11]_i_4__5_n_0 ,\o_out[11]_i_5__5_n_0 }));
  FDRE \o_out_reg[12] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(O[0]),
        .Q(m_axis_data[12]),
        .R(p_0_in));
  FDRE \o_out_reg[13] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(O[1]),
        .Q(m_axis_data[13]),
        .R(p_0_in));
  FDRE \o_out_reg[14] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(O[2]),
        .Q(m_axis_data[14]),
        .R(p_0_in));
  FDRE \o_out_reg[15] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(O[3]),
        .Q(m_axis_data[15]),
        .R(p_0_in));
  FDRE \o_out_reg[1] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[3]_i_1__5_n_6 ),
        .Q(m_axis_data[1]),
        .R(p_0_in));
  FDRE \o_out_reg[2] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[3]_i_1__5_n_5 ),
        .Q(m_axis_data[2]),
        .R(p_0_in));
  FDRE \o_out_reg[3] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[3]_i_1__5_n_4 ),
        .Q(m_axis_data[3]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \o_out_reg[3]_i_1__5 
       (.CI(1'b0),
        .CO({\o_out_reg[3]_i_1__5_n_0 ,\o_out_reg[3]_i_1__5_n_1 ,\o_out_reg[3]_i_1__5_n_2 ,\o_out_reg[3]_i_1__5_n_3 }),
        .CYINIT(1'b0),
        .DI({m_axis_data[3],o_out1__0_carry_n_5,o_out1__0_carry_n_6,o_out1__0_carry_n_7}),
        .O({\o_out_reg[3]_i_1__5_n_4 ,\o_out_reg[3]_i_1__5_n_5 ,\o_out_reg[3]_i_1__5_n_6 ,\o_out_reg[3]_i_1__5_n_7 }),
        .S({\o_out[3]_i_2__5_n_0 ,\o_out[3]_i_3__5_n_0 ,\o_out[3]_i_4__5_n_0 ,\o_out[3]_i_5__5_n_0 }));
  FDRE \o_out_reg[4] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[7]_i_1__5_n_7 ),
        .Q(m_axis_data[4]),
        .R(p_0_in));
  FDRE \o_out_reg[5] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[7]_i_1__5_n_6 ),
        .Q(m_axis_data[5]),
        .R(p_0_in));
  FDRE \o_out_reg[6] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[7]_i_1__5_n_5 ),
        .Q(m_axis_data[6]),
        .R(p_0_in));
  FDRE \o_out_reg[7] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[7]_i_1__5_n_4 ),
        .Q(m_axis_data[7]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \o_out_reg[7]_i_1__5 
       (.CI(\o_out_reg[3]_i_1__5_n_0 ),
        .CO({\o_out_reg[7]_i_1__5_n_0 ,\o_out_reg[7]_i_1__5_n_1 ,\o_out_reg[7]_i_1__5_n_2 ,\o_out_reg[7]_i_1__5_n_3 }),
        .CYINIT(1'b0),
        .DI({o_out1__86_carry_n_4,o_out1__86_carry_n_5,o_out1__86_carry_n_6,o_out1__86_carry_n_7}),
        .O({\o_out_reg[7]_i_1__5_n_4 ,\o_out_reg[7]_i_1__5_n_5 ,\o_out_reg[7]_i_1__5_n_6 ,\o_out_reg[7]_i_1__5_n_7 }),
        .S({\o_out[7]_i_2__5_n_0 ,\o_out[7]_i_3__5_n_0 ,\o_out[7]_i_4__5_n_0 ,\o_out[7]_i_5__5_n_0 }));
  FDRE \o_out_reg[8] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[11]_i_1__5_n_7 ),
        .Q(m_axis_data[8]),
        .R(p_0_in));
  FDRE \o_out_reg[9] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[11]_i_1__5_n_6 ),
        .Q(m_axis_data[9]),
        .R(p_0_in));
  FDRE \o_x_reg[0] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_x_reg[7]_0 [0]),
        .Q(Q[0]),
        .R(p_0_in));
  FDRE \o_x_reg[1] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_x_reg[7]_0 [1]),
        .Q(Q[1]),
        .R(p_0_in));
  FDRE \o_x_reg[2] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_x_reg[7]_0 [2]),
        .Q(Q[2]),
        .R(p_0_in));
  FDRE \o_x_reg[3] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_x_reg[7]_0 [3]),
        .Q(Q[3]),
        .R(p_0_in));
  FDRE \o_x_reg[4] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_x_reg[7]_0 [4]),
        .Q(Q[4]),
        .R(p_0_in));
  FDRE \o_x_reg[5] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_x_reg[7]_0 [5]),
        .Q(Q[5]),
        .R(p_0_in));
  FDRE \o_x_reg[6] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_x_reg[7]_0 [6]),
        .Q(Q[6]),
        .R(p_0_in));
  FDRE \o_x_reg[7] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_x_reg[7]_0 [7]),
        .Q(Q[7]),
        .R(p_0_in));
endmodule

(* ORIG_REF_NAME = "MAC" *) 
module design_1_SystolicArrayAxiWrap_0_0_MAC_7
   (m_axis_data,
    \o_y_reg[5] ,
    \o_y_reg[5]_0 ,
    \o_y_reg[7] ,
    \o_y_reg[7]_0 ,
    o_out1__86_carry__1_i_5__6,
    \o_x_reg[1]_0 ,
    Q,
    \o_out_reg[15]_0 ,
    \o_x_reg[3]_0 ,
    \o_x_reg[1]_1 ,
    \o_x_reg[5]_0 ,
    \o_x_reg[0]_0 ,
    \o_x_reg[4]_0 ,
    \o_x_reg[5]_1 ,
    \o_x_reg[5]_2 ,
    \o_x_reg[6]_0 ,
    \o_x_reg[0]_1 ,
    CO,
    \o_x_reg[1]_2 ,
    \o_x_reg[5]_3 ,
    p_0_in,
    axi_clk,
    O,
    DI,
    S,
    o_out1__86_carry_i_8__6_0,
    o_out1__86_carry_i_8__6_1,
    o_out1__86_carry__0_i_3__6_0,
    o_out1__86_carry__0_i_3__6_1,
    \o_out[3]_i_2__6_0 ,
    \o_out[3]_i_2__6_1 ,
    o_out1__86_carry__0_i_4__6_0,
    o_out1__86_carry__0_i_4__6_1,
    o_out1__86_carry__1_i_5__6_0,
    o_out1__86_carry__1_i_5__6_1,
    o_out1__86_carry_i_1__6_0,
    o_out1__86_carry_i_1__6_1,
    o_out1__86_carry__0_i_6__6_0,
    o_out1__86_carry__0_i_6__6_1,
    o_out1__86_carry__1_i_3__6,
    o_out1__86_carry__1_i_3__6_0,
    \o_out_reg[15]_1 ,
    o_out1__59_carry_0,
    D);
  output [15:0]m_axis_data;
  output [0:0]\o_y_reg[5] ;
  output [1:0]\o_y_reg[5]_0 ;
  output [2:0]\o_y_reg[7] ;
  output [0:0]\o_y_reg[7]_0 ;
  output [2:0]o_out1__86_carry__1_i_5__6;
  output [1:0]\o_x_reg[1]_0 ;
  output [7:0]Q;
  output [0:0]\o_out_reg[15]_0 ;
  output [1:0]\o_x_reg[3]_0 ;
  output [1:0]\o_x_reg[1]_1 ;
  output \o_x_reg[5]_0 ;
  output [0:0]\o_x_reg[0]_0 ;
  output \o_x_reg[4]_0 ;
  output \o_x_reg[5]_1 ;
  output \o_x_reg[5]_2 ;
  output \o_x_reg[6]_0 ;
  output [1:0]\o_x_reg[0]_1 ;
  output [0:0]CO;
  output [2:0]\o_x_reg[1]_2 ;
  output [3:0]\o_x_reg[5]_3 ;
  input p_0_in;
  input axi_clk;
  input [3:0]O;
  input [2:0]DI;
  input [3:0]S;
  input [3:0]o_out1__86_carry_i_8__6_0;
  input [3:0]o_out1__86_carry_i_8__6_1;
  input [1:0]o_out1__86_carry__0_i_3__6_0;
  input [1:0]o_out1__86_carry__0_i_3__6_1;
  input [2:0]\o_out[3]_i_2__6_0 ;
  input [3:0]\o_out[3]_i_2__6_1 ;
  input [3:0]o_out1__86_carry__0_i_4__6_0;
  input [3:0]o_out1__86_carry__0_i_4__6_1;
  input [1:0]o_out1__86_carry__1_i_5__6_0;
  input [1:0]o_out1__86_carry__1_i_5__6_1;
  input [2:0]o_out1__86_carry_i_1__6_0;
  input [3:0]o_out1__86_carry_i_1__6_1;
  input [3:0]o_out1__86_carry__0_i_6__6_0;
  input [3:0]o_out1__86_carry__0_i_6__6_1;
  input [0:0]o_out1__86_carry__1_i_3__6;
  input [0:0]o_out1__86_carry__1_i_3__6_0;
  input [2:0]\o_out_reg[15]_1 ;
  input [7:0]o_out1__59_carry_0;
  input [7:0]D;

  wire [0:0]CO;
  wire [7:0]D;
  wire [2:0]DI;
  wire [3:0]O;
  wire [7:0]Q;
  wire [3:0]S;
  wire axi_clk;
  wire [15:0]m_axis_data;
  wire o_out1__0_carry__0_n_0;
  wire o_out1__0_carry__0_n_1;
  wire o_out1__0_carry__0_n_2;
  wire o_out1__0_carry__0_n_3;
  wire o_out1__0_carry__0_n_4;
  wire o_out1__0_carry__0_n_5;
  wire o_out1__0_carry__0_n_6;
  wire o_out1__0_carry__0_n_7;
  wire o_out1__0_carry__1_n_1;
  wire o_out1__0_carry__1_n_3;
  wire o_out1__0_carry__1_n_6;
  wire o_out1__0_carry__1_n_7;
  wire o_out1__0_carry_n_0;
  wire o_out1__0_carry_n_1;
  wire o_out1__0_carry_n_2;
  wire o_out1__0_carry_n_3;
  wire o_out1__0_carry_n_4;
  wire o_out1__0_carry_n_5;
  wire o_out1__0_carry_n_6;
  wire o_out1__0_carry_n_7;
  wire o_out1__30_carry__0_n_0;
  wire o_out1__30_carry__0_n_1;
  wire o_out1__30_carry__0_n_2;
  wire o_out1__30_carry__0_n_3;
  wire o_out1__30_carry__0_n_4;
  wire o_out1__30_carry__0_n_5;
  wire o_out1__30_carry__0_n_6;
  wire o_out1__30_carry__0_n_7;
  wire o_out1__30_carry__1_n_3;
  wire o_out1__30_carry_n_0;
  wire o_out1__30_carry_n_1;
  wire o_out1__30_carry_n_2;
  wire o_out1__30_carry_n_3;
  wire o_out1__30_carry_n_4;
  wire o_out1__30_carry_n_5;
  wire o_out1__30_carry_n_6;
  wire o_out1__30_carry_n_7;
  wire [7:0]o_out1__59_carry_0;
  wire o_out1__59_carry__0_n_0;
  wire o_out1__59_carry__0_n_1;
  wire o_out1__59_carry__0_n_2;
  wire o_out1__59_carry__0_n_3;
  wire o_out1__59_carry__0_n_7;
  wire o_out1__59_carry__1_n_3;
  wire o_out1__59_carry__1_n_6;
  wire o_out1__59_carry_n_0;
  wire o_out1__59_carry_n_1;
  wire o_out1__59_carry_n_2;
  wire o_out1__59_carry_n_3;
  wire o_out1__59_carry_n_4;
  wire o_out1__59_carry_n_5;
  wire o_out1__59_carry_n_6;
  wire o_out1__59_carry_n_7;
  wire o_out1__86_carry__0_i_1__6_n_0;
  wire o_out1__86_carry__0_i_2__6_n_0;
  wire [1:0]o_out1__86_carry__0_i_3__6_0;
  wire [1:0]o_out1__86_carry__0_i_3__6_1;
  wire o_out1__86_carry__0_i_3__6_n_0;
  wire [3:0]o_out1__86_carry__0_i_4__6_0;
  wire [3:0]o_out1__86_carry__0_i_4__6_1;
  wire o_out1__86_carry__0_i_4__6_n_0;
  wire o_out1__86_carry__0_i_5__6_n_0;
  wire [3:0]o_out1__86_carry__0_i_6__6_0;
  wire [3:0]o_out1__86_carry__0_i_6__6_1;
  wire o_out1__86_carry__0_i_6__6_n_0;
  wire o_out1__86_carry__0_i_7__6_n_0;
  wire o_out1__86_carry__0_i_8__6_n_0;
  wire o_out1__86_carry__0_n_0;
  wire o_out1__86_carry__0_n_1;
  wire o_out1__86_carry__0_n_2;
  wire o_out1__86_carry__0_n_3;
  wire o_out1__86_carry__0_n_4;
  wire o_out1__86_carry__0_n_5;
  wire o_out1__86_carry__0_n_6;
  wire o_out1__86_carry__0_n_7;
  wire o_out1__86_carry__1_i_1__6_n_0;
  wire o_out1__86_carry__1_i_2__6_n_0;
  wire [0:0]o_out1__86_carry__1_i_3__6;
  wire [0:0]o_out1__86_carry__1_i_3__6_0;
  wire [2:0]o_out1__86_carry__1_i_5__6;
  wire [1:0]o_out1__86_carry__1_i_5__6_0;
  wire [1:0]o_out1__86_carry__1_i_5__6_1;
  wire o_out1__86_carry__1_n_1;
  wire o_out1__86_carry__1_n_2;
  wire o_out1__86_carry__1_n_3;
  wire o_out1__86_carry__1_n_4;
  wire [2:0]o_out1__86_carry_i_1__6_0;
  wire [3:0]o_out1__86_carry_i_1__6_1;
  wire o_out1__86_carry_i_1__6_n_0;
  wire o_out1__86_carry_i_2__6_n_0;
  wire o_out1__86_carry_i_3__6_n_0;
  wire o_out1__86_carry_i_4__6_n_0;
  wire o_out1__86_carry_i_5__6_n_0;
  wire o_out1__86_carry_i_6__6_n_0;
  wire o_out1__86_carry_i_7__6_n_0;
  wire [3:0]o_out1__86_carry_i_8__6_0;
  wire [3:0]o_out1__86_carry_i_8__6_1;
  wire o_out1__86_carry_i_8__6_n_0;
  wire o_out1__86_carry_n_0;
  wire o_out1__86_carry_n_1;
  wire o_out1__86_carry_n_2;
  wire o_out1__86_carry_n_3;
  wire o_out1__86_carry_n_4;
  wire o_out1__86_carry_n_5;
  wire o_out1__86_carry_n_6;
  wire o_out1__86_carry_n_7;
  wire \o_out[11]_i_2__6_n_0 ;
  wire \o_out[11]_i_3__6_n_0 ;
  wire \o_out[11]_i_4__6_n_0 ;
  wire \o_out[11]_i_5__6_n_0 ;
  wire [2:0]\o_out[3]_i_2__6_0 ;
  wire [3:0]\o_out[3]_i_2__6_1 ;
  wire \o_out[3]_i_2__6_n_0 ;
  wire \o_out[3]_i_3__6_n_0 ;
  wire \o_out[3]_i_4__6_n_0 ;
  wire \o_out[3]_i_5__6_n_0 ;
  wire \o_out[7]_i_2__6_n_0 ;
  wire \o_out[7]_i_3__6_n_0 ;
  wire \o_out[7]_i_4__6_n_0 ;
  wire \o_out[7]_i_5__6_n_0 ;
  wire \o_out_reg[11]_i_1__6_n_1 ;
  wire \o_out_reg[11]_i_1__6_n_2 ;
  wire \o_out_reg[11]_i_1__6_n_3 ;
  wire \o_out_reg[11]_i_1__6_n_4 ;
  wire \o_out_reg[11]_i_1__6_n_5 ;
  wire \o_out_reg[11]_i_1__6_n_6 ;
  wire \o_out_reg[11]_i_1__6_n_7 ;
  wire [0:0]\o_out_reg[15]_0 ;
  wire [2:0]\o_out_reg[15]_1 ;
  wire \o_out_reg[3]_i_1__6_n_0 ;
  wire \o_out_reg[3]_i_1__6_n_1 ;
  wire \o_out_reg[3]_i_1__6_n_2 ;
  wire \o_out_reg[3]_i_1__6_n_3 ;
  wire \o_out_reg[3]_i_1__6_n_4 ;
  wire \o_out_reg[3]_i_1__6_n_5 ;
  wire \o_out_reg[3]_i_1__6_n_6 ;
  wire \o_out_reg[3]_i_1__6_n_7 ;
  wire \o_out_reg[7]_i_1__6_n_0 ;
  wire \o_out_reg[7]_i_1__6_n_1 ;
  wire \o_out_reg[7]_i_1__6_n_2 ;
  wire \o_out_reg[7]_i_1__6_n_3 ;
  wire \o_out_reg[7]_i_1__6_n_4 ;
  wire \o_out_reg[7]_i_1__6_n_5 ;
  wire \o_out_reg[7]_i_1__6_n_6 ;
  wire \o_out_reg[7]_i_1__6_n_7 ;
  wire [0:0]\o_x_reg[0]_0 ;
  wire [1:0]\o_x_reg[0]_1 ;
  wire [1:0]\o_x_reg[1]_0 ;
  wire [1:0]\o_x_reg[1]_1 ;
  wire [2:0]\o_x_reg[1]_2 ;
  wire [1:0]\o_x_reg[3]_0 ;
  wire \o_x_reg[4]_0 ;
  wire \o_x_reg[5]_0 ;
  wire \o_x_reg[5]_1 ;
  wire \o_x_reg[5]_2 ;
  wire [3:0]\o_x_reg[5]_3 ;
  wire \o_x_reg[6]_0 ;
  wire [0:0]\o_y_reg[5] ;
  wire [1:0]\o_y_reg[5]_0 ;
  wire [2:0]\o_y_reg[7] ;
  wire [0:0]\o_y_reg[7]_0 ;
  wire p_0_in;
  wire [3:1]NLW_o_out1__0_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_o_out1__0_carry__1_O_UNCONNECTED;
  wire [3:1]NLW_o_out1__30_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_o_out1__30_carry__1_O_UNCONNECTED;
  wire [3:1]NLW_o_out1__59_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_o_out1__59_carry__1_O_UNCONNECTED;
  wire [3:3]NLW_o_out1__86_carry__1_CO_UNCONNECTED;

  CARRY4 o_out1__0_carry
       (.CI(1'b0),
        .CO({o_out1__0_carry_n_0,o_out1__0_carry_n_1,o_out1__0_carry_n_2,o_out1__0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({DI,1'b0}),
        .O({o_out1__0_carry_n_4,o_out1__0_carry_n_5,o_out1__0_carry_n_6,o_out1__0_carry_n_7}),
        .S(S));
  CARRY4 o_out1__0_carry__0
       (.CI(o_out1__0_carry_n_0),
        .CO({o_out1__0_carry__0_n_0,o_out1__0_carry__0_n_1,o_out1__0_carry__0_n_2,o_out1__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(o_out1__86_carry_i_8__6_0),
        .O({o_out1__0_carry__0_n_4,o_out1__0_carry__0_n_5,o_out1__0_carry__0_n_6,o_out1__0_carry__0_n_7}),
        .S(o_out1__86_carry_i_8__6_1));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__0_carry__0_i_9__7
       (.I0(Q[5]),
        .I1(o_out1__59_carry_0[2]),
        .O(\o_x_reg[5]_0 ));
  CARRY4 o_out1__0_carry__1
       (.CI(o_out1__0_carry__0_n_0),
        .CO({NLW_o_out1__0_carry__1_CO_UNCONNECTED[3],o_out1__0_carry__1_n_1,NLW_o_out1__0_carry__1_CO_UNCONNECTED[1],o_out1__0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,o_out1__86_carry__0_i_3__6_0}),
        .O({NLW_o_out1__0_carry__1_O_UNCONNECTED[3:2],o_out1__0_carry__1_n_6,o_out1__0_carry__1_n_7}),
        .S({1'b0,1'b1,o_out1__86_carry__0_i_3__6_1}));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    o_out1__0_carry_i_1__7
       (.I0(Q[3]),
        .I1(o_out1__59_carry_0[0]),
        .I2(o_out1__59_carry_0[2]),
        .I3(Q[1]),
        .I4(o_out1__59_carry_0[1]),
        .I5(Q[2]),
        .O(\o_x_reg[3]_0 [1]));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__0_carry_i_3__7
       (.I0(Q[0]),
        .I1(o_out1__59_carry_0[1]),
        .O(\o_x_reg[3]_0 [0]));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    o_out1__0_carry_i_4__7
       (.I0(\o_x_reg[3]_0 [1]),
        .I1(Q[1]),
        .I2(o_out1__59_carry_0[2]),
        .I3(Q[0]),
        .I4(o_out1__59_carry_0[1]),
        .O(\o_x_reg[1]_2 [2]));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    o_out1__0_carry_i_5__7
       (.I0(Q[0]),
        .I1(o_out1__59_carry_0[2]),
        .I2(Q[1]),
        .I3(o_out1__59_carry_0[1]),
        .I4(Q[2]),
        .I5(o_out1__59_carry_0[0]),
        .O(\o_x_reg[1]_2 [1]));
  LUT4 #(
    .INIT(16'h7888)) 
    o_out1__0_carry_i_6__7
       (.I0(Q[1]),
        .I1(o_out1__59_carry_0[0]),
        .I2(o_out1__59_carry_0[1]),
        .I3(Q[0]),
        .O(\o_x_reg[1]_2 [0]));
  CARRY4 o_out1__30_carry
       (.CI(1'b0),
        .CO({o_out1__30_carry_n_0,o_out1__30_carry_n_1,o_out1__30_carry_n_2,o_out1__30_carry_n_3}),
        .CYINIT(1'b0),
        .DI({\o_out[3]_i_2__6_0 ,1'b0}),
        .O({o_out1__30_carry_n_4,o_out1__30_carry_n_5,o_out1__30_carry_n_6,o_out1__30_carry_n_7}),
        .S(\o_out[3]_i_2__6_1 ));
  CARRY4 o_out1__30_carry__0
       (.CI(o_out1__30_carry_n_0),
        .CO({o_out1__30_carry__0_n_0,o_out1__30_carry__0_n_1,o_out1__30_carry__0_n_2,o_out1__30_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(o_out1__86_carry__0_i_4__6_0),
        .O({o_out1__30_carry__0_n_4,o_out1__30_carry__0_n_5,o_out1__30_carry__0_n_6,o_out1__30_carry__0_n_7}),
        .S(o_out1__86_carry__0_i_4__6_1));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__30_carry__0_i_10__7
       (.I0(Q[6]),
        .I1(o_out1__59_carry_0[3]),
        .O(\o_x_reg[6]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__30_carry__0_i_11__7
       (.I0(Q[5]),
        .I1(o_out1__59_carry_0[3]),
        .O(\o_x_reg[5]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__30_carry__0_i_12__7
       (.I0(Q[4]),
        .I1(o_out1__59_carry_0[3]),
        .O(\o_x_reg[4]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__30_carry__0_i_9__7
       (.I0(Q[5]),
        .I1(o_out1__59_carry_0[5]),
        .O(\o_x_reg[5]_2 ));
  CARRY4 o_out1__30_carry__1
       (.CI(o_out1__30_carry__0_n_0),
        .CO({NLW_o_out1__30_carry__1_CO_UNCONNECTED[3],\o_y_reg[5] ,NLW_o_out1__30_carry__1_CO_UNCONNECTED[1],o_out1__30_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,o_out1__86_carry__1_i_5__6_0}),
        .O({NLW_o_out1__30_carry__1_O_UNCONNECTED[3:2],\o_y_reg[5]_0 }),
        .S({1'b0,1'b1,o_out1__86_carry__1_i_5__6_1}));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__30_carry_i_3__7
       (.I0(Q[0]),
        .I1(o_out1__59_carry_0[4]),
        .O(\o_x_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    o_out1__30_carry_i_5__7
       (.I0(Q[0]),
        .I1(o_out1__59_carry_0[5]),
        .I2(Q[1]),
        .I3(o_out1__59_carry_0[4]),
        .I4(o_out1__59_carry_0[3]),
        .I5(Q[2]),
        .O(\o_x_reg[0]_1 [1]));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__30_carry_i_7__7
       (.I0(Q[0]),
        .I1(o_out1__59_carry_0[3]),
        .O(\o_x_reg[0]_1 [0]));
  CARRY4 o_out1__59_carry
       (.CI(1'b0),
        .CO({o_out1__59_carry_n_0,o_out1__59_carry_n_1,o_out1__59_carry_n_2,o_out1__59_carry_n_3}),
        .CYINIT(1'b0),
        .DI({o_out1__86_carry_i_1__6_0,1'b0}),
        .O({o_out1__59_carry_n_4,o_out1__59_carry_n_5,o_out1__59_carry_n_6,o_out1__59_carry_n_7}),
        .S(o_out1__86_carry_i_1__6_1));
  CARRY4 o_out1__59_carry__0
       (.CI(o_out1__59_carry_n_0),
        .CO({o_out1__59_carry__0_n_0,o_out1__59_carry__0_n_1,o_out1__59_carry__0_n_2,o_out1__59_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(o_out1__86_carry__0_i_6__6_0),
        .O({\o_y_reg[7] ,o_out1__59_carry__0_n_7}),
        .S(o_out1__86_carry__0_i_6__6_1));
  LUT5 #(
    .INIT(32'h6FC030C0)) 
    o_out1__59_carry__0_i_5__7
       (.I0(Q[5]),
        .I1(Q[7]),
        .I2(o_out1__59_carry_0[6]),
        .I3(Q[6]),
        .I4(o_out1__59_carry_0[7]),
        .O(\o_x_reg[5]_3 [3]));
  LUT5 #(
    .INIT(32'h903FCF3F)) 
    o_out1__59_carry__0_i_6__7
       (.I0(Q[4]),
        .I1(Q[6]),
        .I2(o_out1__59_carry_0[6]),
        .I3(Q[5]),
        .I4(o_out1__59_carry_0[7]),
        .O(\o_x_reg[5]_3 [2]));
  LUT5 #(
    .INIT(32'h903FCF3F)) 
    o_out1__59_carry__0_i_7__7
       (.I0(Q[3]),
        .I1(Q[5]),
        .I2(o_out1__59_carry_0[6]),
        .I3(Q[4]),
        .I4(o_out1__59_carry_0[7]),
        .O(\o_x_reg[5]_3 [1]));
  LUT5 #(
    .INIT(32'h903FCF3F)) 
    o_out1__59_carry__0_i_8__7
       (.I0(Q[2]),
        .I1(Q[4]),
        .I2(o_out1__59_carry_0[6]),
        .I3(Q[3]),
        .I4(o_out1__59_carry_0[7]),
        .O(\o_x_reg[5]_3 [0]));
  CARRY4 o_out1__59_carry__1
       (.CI(o_out1__59_carry__0_n_0),
        .CO({NLW_o_out1__59_carry__1_CO_UNCONNECTED[3:1],o_out1__59_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,o_out1__86_carry__1_i_3__6}),
        .O({NLW_o_out1__59_carry__1_O_UNCONNECTED[3:2],o_out1__59_carry__1_n_6,\o_y_reg[7]_0 }),
        .S({1'b0,1'b0,1'b1,o_out1__86_carry__1_i_3__6_0}));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__59_carry_i_2__7
       (.I0(Q[1]),
        .I1(o_out1__59_carry_0[7]),
        .O(\o_x_reg[1]_1 [1]));
  LUT2 #(
    .INIT(4'h7)) 
    o_out1__59_carry_i_3__7
       (.I0(Q[0]),
        .I1(o_out1__59_carry_0[7]),
        .O(\o_x_reg[1]_1 [0]));
  LUT5 #(
    .INIT(32'h956AC0C0)) 
    o_out1__59_carry_i_4__7
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(o_out1__59_carry_0[6]),
        .I3(Q[2]),
        .I4(o_out1__59_carry_0[7]),
        .O(\o_x_reg[1]_0 [1]));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__59_carry_i_7__7
       (.I0(Q[0]),
        .I1(o_out1__59_carry_0[6]),
        .O(\o_x_reg[1]_0 [0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 o_out1__86_carry
       (.CI(1'b0),
        .CO({o_out1__86_carry_n_0,o_out1__86_carry_n_1,o_out1__86_carry_n_2,o_out1__86_carry_n_3}),
        .CYINIT(1'b0),
        .DI({o_out1__86_carry_i_1__6_n_0,o_out1__86_carry_i_2__6_n_0,o_out1__86_carry_i_3__6_n_0,o_out1__86_carry_i_4__6_n_0}),
        .O({o_out1__86_carry_n_4,o_out1__86_carry_n_5,o_out1__86_carry_n_6,o_out1__86_carry_n_7}),
        .S({o_out1__86_carry_i_5__6_n_0,o_out1__86_carry_i_6__6_n_0,o_out1__86_carry_i_7__6_n_0,o_out1__86_carry_i_8__6_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 o_out1__86_carry__0
       (.CI(o_out1__86_carry_n_0),
        .CO({o_out1__86_carry__0_n_0,o_out1__86_carry__0_n_1,o_out1__86_carry__0_n_2,o_out1__86_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({o_out1__86_carry__0_i_1__6_n_0,o_out1__86_carry__0_i_2__6_n_0,o_out1__86_carry__0_i_3__6_n_0,o_out1__86_carry__0_i_4__6_n_0}),
        .O({o_out1__86_carry__0_n_4,o_out1__86_carry__0_n_5,o_out1__86_carry__0_n_6,o_out1__86_carry__0_n_7}),
        .S({o_out1__86_carry__0_i_5__6_n_0,o_out1__86_carry__0_i_6__6_n_0,o_out1__86_carry__0_i_7__6_n_0,o_out1__86_carry__0_i_8__6_n_0}));
  LUT3 #(
    .INIT(8'hE8)) 
    o_out1__86_carry__0_i_1__6
       (.I0(o_out1__59_carry__0_n_7),
        .I1(o_out1__0_carry__1_n_1),
        .I2(o_out1__30_carry__0_n_4),
        .O(o_out1__86_carry__0_i_1__6_n_0));
  (* HLUTNM = "lutpair34" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    o_out1__86_carry__0_i_2__6
       (.I0(o_out1__59_carry_n_4),
        .I1(o_out1__0_carry__1_n_6),
        .I2(o_out1__30_carry__0_n_5),
        .O(o_out1__86_carry__0_i_2__6_n_0));
  (* HLUTNM = "lutpair33" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    o_out1__86_carry__0_i_3__6
       (.I0(o_out1__59_carry_n_5),
        .I1(o_out1__0_carry__1_n_7),
        .I2(o_out1__30_carry__0_n_6),
        .O(o_out1__86_carry__0_i_3__6_n_0));
  (* HLUTNM = "lutpair32" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    o_out1__86_carry__0_i_4__6
       (.I0(o_out1__59_carry_n_6),
        .I1(o_out1__0_carry__0_n_4),
        .I2(o_out1__30_carry__0_n_7),
        .O(o_out1__86_carry__0_i_4__6_n_0));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    o_out1__86_carry__0_i_5__6
       (.I0(o_out1__30_carry__0_n_4),
        .I1(o_out1__0_carry__1_n_1),
        .I2(o_out1__59_carry__0_n_7),
        .I3(\o_y_reg[5]_0 [0]),
        .I4(\o_y_reg[7] [0]),
        .O(o_out1__86_carry__0_i_5__6_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    o_out1__86_carry__0_i_6__6
       (.I0(o_out1__86_carry__0_i_2__6_n_0),
        .I1(o_out1__59_carry__0_n_7),
        .I2(o_out1__0_carry__1_n_1),
        .I3(o_out1__30_carry__0_n_4),
        .O(o_out1__86_carry__0_i_6__6_n_0));
  (* HLUTNM = "lutpair34" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    o_out1__86_carry__0_i_7__6
       (.I0(o_out1__59_carry_n_4),
        .I1(o_out1__0_carry__1_n_6),
        .I2(o_out1__30_carry__0_n_5),
        .I3(o_out1__86_carry__0_i_3__6_n_0),
        .O(o_out1__86_carry__0_i_7__6_n_0));
  (* HLUTNM = "lutpair33" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    o_out1__86_carry__0_i_8__6
       (.I0(o_out1__59_carry_n_5),
        .I1(o_out1__0_carry__1_n_7),
        .I2(o_out1__30_carry__0_n_6),
        .I3(o_out1__86_carry__0_i_4__6_n_0),
        .O(o_out1__86_carry__0_i_8__6_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 o_out1__86_carry__1
       (.CI(o_out1__86_carry__0_n_0),
        .CO({NLW_o_out1__86_carry__1_CO_UNCONNECTED[3],o_out1__86_carry__1_n_1,o_out1__86_carry__1_n_2,o_out1__86_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\o_y_reg[7]_0 ,o_out1__86_carry__1_i_1__6_n_0,o_out1__86_carry__1_i_2__6_n_0}),
        .O({o_out1__86_carry__1_n_4,o_out1__86_carry__1_i_5__6}),
        .S({o_out1__59_carry__1_n_6,\o_out_reg[15]_1 }));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__86_carry__1_i_1__6
       (.I0(\o_y_reg[7] [1]),
        .I1(\o_y_reg[5]_0 [1]),
        .O(o_out1__86_carry__1_i_1__6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__86_carry__1_i_2__6
       (.I0(\o_y_reg[7] [0]),
        .I1(\o_y_reg[5]_0 [0]),
        .O(o_out1__86_carry__1_i_2__6_n_0));
  (* HLUTNM = "lutpair31" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    o_out1__86_carry_i_1__6
       (.I0(o_out1__59_carry_n_7),
        .I1(o_out1__0_carry__0_n_5),
        .I2(o_out1__30_carry_n_4),
        .O(o_out1__86_carry_i_1__6_n_0));
  (* HLUTNM = "lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__86_carry_i_2__6
       (.I0(o_out1__30_carry_n_5),
        .I1(o_out1__0_carry__0_n_6),
        .O(o_out1__86_carry_i_2__6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__86_carry_i_3__6
       (.I0(o_out1__30_carry_n_6),
        .I1(o_out1__0_carry__0_n_7),
        .O(o_out1__86_carry_i_3__6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__86_carry_i_4__6
       (.I0(o_out1__0_carry_n_4),
        .I1(o_out1__30_carry_n_7),
        .O(o_out1__86_carry_i_4__6_n_0));
  (* HLUTNM = "lutpair32" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    o_out1__86_carry_i_5__6
       (.I0(o_out1__59_carry_n_6),
        .I1(o_out1__0_carry__0_n_4),
        .I2(o_out1__30_carry__0_n_7),
        .I3(o_out1__86_carry_i_1__6_n_0),
        .O(o_out1__86_carry_i_5__6_n_0));
  (* HLUTNM = "lutpair31" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    o_out1__86_carry_i_6__6
       (.I0(o_out1__59_carry_n_7),
        .I1(o_out1__0_carry__0_n_5),
        .I2(o_out1__30_carry_n_4),
        .I3(o_out1__86_carry_i_2__6_n_0),
        .O(o_out1__86_carry_i_6__6_n_0));
  (* HLUTNM = "lutpair30" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    o_out1__86_carry_i_7__6
       (.I0(o_out1__30_carry_n_5),
        .I1(o_out1__0_carry__0_n_6),
        .I2(o_out1__0_carry__0_n_7),
        .I3(o_out1__30_carry_n_6),
        .O(o_out1__86_carry_i_7__6_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    o_out1__86_carry_i_8__6
       (.I0(o_out1__30_carry_n_7),
        .I1(o_out1__0_carry_n_4),
        .I2(o_out1__0_carry__0_n_7),
        .I3(o_out1__30_carry_n_6),
        .O(o_out1__86_carry_i_8__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[11]_i_2__6 
       (.I0(o_out1__86_carry__0_n_4),
        .I1(m_axis_data[11]),
        .O(\o_out[11]_i_2__6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[11]_i_3__6 
       (.I0(o_out1__86_carry__0_n_5),
        .I1(m_axis_data[10]),
        .O(\o_out[11]_i_3__6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[11]_i_4__6 
       (.I0(o_out1__86_carry__0_n_6),
        .I1(m_axis_data[9]),
        .O(\o_out[11]_i_4__6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[11]_i_5__6 
       (.I0(o_out1__86_carry__0_n_7),
        .I1(m_axis_data[8]),
        .O(\o_out[11]_i_5__6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[15]_i_2__6 
       (.I0(m_axis_data[15]),
        .I1(o_out1__86_carry__1_n_4),
        .O(\o_out_reg[15]_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \o_out[3]_i_2__6 
       (.I0(o_out1__30_carry_n_7),
        .I1(o_out1__0_carry_n_4),
        .I2(m_axis_data[3]),
        .O(\o_out[3]_i_2__6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[3]_i_3__6 
       (.I0(o_out1__0_carry_n_5),
        .I1(m_axis_data[2]),
        .O(\o_out[3]_i_3__6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[3]_i_4__6 
       (.I0(o_out1__0_carry_n_6),
        .I1(m_axis_data[1]),
        .O(\o_out[3]_i_4__6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[3]_i_5__6 
       (.I0(o_out1__0_carry_n_7),
        .I1(m_axis_data[0]),
        .O(\o_out[3]_i_5__6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[7]_i_2__6 
       (.I0(o_out1__86_carry_n_4),
        .I1(m_axis_data[7]),
        .O(\o_out[7]_i_2__6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[7]_i_3__6 
       (.I0(o_out1__86_carry_n_5),
        .I1(m_axis_data[6]),
        .O(\o_out[7]_i_3__6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[7]_i_4__6 
       (.I0(o_out1__86_carry_n_6),
        .I1(m_axis_data[5]),
        .O(\o_out[7]_i_4__6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[7]_i_5__6 
       (.I0(o_out1__86_carry_n_7),
        .I1(m_axis_data[4]),
        .O(\o_out[7]_i_5__6_n_0 ));
  FDRE \o_out_reg[0] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[3]_i_1__6_n_7 ),
        .Q(m_axis_data[0]),
        .R(p_0_in));
  FDRE \o_out_reg[10] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[11]_i_1__6_n_5 ),
        .Q(m_axis_data[10]),
        .R(p_0_in));
  FDRE \o_out_reg[11] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[11]_i_1__6_n_4 ),
        .Q(m_axis_data[11]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \o_out_reg[11]_i_1__6 
       (.CI(\o_out_reg[7]_i_1__6_n_0 ),
        .CO({CO,\o_out_reg[11]_i_1__6_n_1 ,\o_out_reg[11]_i_1__6_n_2 ,\o_out_reg[11]_i_1__6_n_3 }),
        .CYINIT(1'b0),
        .DI({o_out1__86_carry__0_n_4,o_out1__86_carry__0_n_5,o_out1__86_carry__0_n_6,o_out1__86_carry__0_n_7}),
        .O({\o_out_reg[11]_i_1__6_n_4 ,\o_out_reg[11]_i_1__6_n_5 ,\o_out_reg[11]_i_1__6_n_6 ,\o_out_reg[11]_i_1__6_n_7 }),
        .S({\o_out[11]_i_2__6_n_0 ,\o_out[11]_i_3__6_n_0 ,\o_out[11]_i_4__6_n_0 ,\o_out[11]_i_5__6_n_0 }));
  FDRE \o_out_reg[12] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(O[0]),
        .Q(m_axis_data[12]),
        .R(p_0_in));
  FDRE \o_out_reg[13] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(O[1]),
        .Q(m_axis_data[13]),
        .R(p_0_in));
  FDRE \o_out_reg[14] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(O[2]),
        .Q(m_axis_data[14]),
        .R(p_0_in));
  FDRE \o_out_reg[15] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(O[3]),
        .Q(m_axis_data[15]),
        .R(p_0_in));
  FDRE \o_out_reg[1] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[3]_i_1__6_n_6 ),
        .Q(m_axis_data[1]),
        .R(p_0_in));
  FDRE \o_out_reg[2] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[3]_i_1__6_n_5 ),
        .Q(m_axis_data[2]),
        .R(p_0_in));
  FDRE \o_out_reg[3] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[3]_i_1__6_n_4 ),
        .Q(m_axis_data[3]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \o_out_reg[3]_i_1__6 
       (.CI(1'b0),
        .CO({\o_out_reg[3]_i_1__6_n_0 ,\o_out_reg[3]_i_1__6_n_1 ,\o_out_reg[3]_i_1__6_n_2 ,\o_out_reg[3]_i_1__6_n_3 }),
        .CYINIT(1'b0),
        .DI({m_axis_data[3],o_out1__0_carry_n_5,o_out1__0_carry_n_6,o_out1__0_carry_n_7}),
        .O({\o_out_reg[3]_i_1__6_n_4 ,\o_out_reg[3]_i_1__6_n_5 ,\o_out_reg[3]_i_1__6_n_6 ,\o_out_reg[3]_i_1__6_n_7 }),
        .S({\o_out[3]_i_2__6_n_0 ,\o_out[3]_i_3__6_n_0 ,\o_out[3]_i_4__6_n_0 ,\o_out[3]_i_5__6_n_0 }));
  FDRE \o_out_reg[4] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[7]_i_1__6_n_7 ),
        .Q(m_axis_data[4]),
        .R(p_0_in));
  FDRE \o_out_reg[5] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[7]_i_1__6_n_6 ),
        .Q(m_axis_data[5]),
        .R(p_0_in));
  FDRE \o_out_reg[6] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[7]_i_1__6_n_5 ),
        .Q(m_axis_data[6]),
        .R(p_0_in));
  FDRE \o_out_reg[7] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[7]_i_1__6_n_4 ),
        .Q(m_axis_data[7]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \o_out_reg[7]_i_1__6 
       (.CI(\o_out_reg[3]_i_1__6_n_0 ),
        .CO({\o_out_reg[7]_i_1__6_n_0 ,\o_out_reg[7]_i_1__6_n_1 ,\o_out_reg[7]_i_1__6_n_2 ,\o_out_reg[7]_i_1__6_n_3 }),
        .CYINIT(1'b0),
        .DI({o_out1__86_carry_n_4,o_out1__86_carry_n_5,o_out1__86_carry_n_6,o_out1__86_carry_n_7}),
        .O({\o_out_reg[7]_i_1__6_n_4 ,\o_out_reg[7]_i_1__6_n_5 ,\o_out_reg[7]_i_1__6_n_6 ,\o_out_reg[7]_i_1__6_n_7 }),
        .S({\o_out[7]_i_2__6_n_0 ,\o_out[7]_i_3__6_n_0 ,\o_out[7]_i_4__6_n_0 ,\o_out[7]_i_5__6_n_0 }));
  FDRE \o_out_reg[8] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[11]_i_1__6_n_7 ),
        .Q(m_axis_data[8]),
        .R(p_0_in));
  FDRE \o_out_reg[9] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[11]_i_1__6_n_6 ),
        .Q(m_axis_data[9]),
        .R(p_0_in));
  FDRE \o_x_reg[0] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(p_0_in));
  FDRE \o_x_reg[1] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(p_0_in));
  FDRE \o_x_reg[2] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(p_0_in));
  FDRE \o_x_reg[3] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(p_0_in));
  FDRE \o_x_reg[4] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[4]),
        .R(p_0_in));
  FDRE \o_x_reg[5] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(D[5]),
        .Q(Q[5]),
        .R(p_0_in));
  FDRE \o_x_reg[6] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(D[6]),
        .Q(Q[6]),
        .R(p_0_in));
  FDRE \o_x_reg[7] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(D[7]),
        .Q(Q[7]),
        .R(p_0_in));
endmodule

(* ORIG_REF_NAME = "MAC" *) 
module design_1_SystolicArrayAxiWrap_0_0_MAC_8
   (m_axis_data,
    o_out1__86_carry__1_i_5__7,
    \o_y_reg[5] ,
    \o_y_reg[5]_0 ,
    \o_y_reg[7] ,
    \o_y_reg[7]_0 ,
    \o_out_reg[15]_0 ,
    CO,
    p_0_in,
    axi_clk,
    O,
    DI,
    S,
    o_out1__86_carry_i_8__7_0,
    o_out1__86_carry_i_8__7_1,
    o_out1__86_carry__0_i_3__7_0,
    o_out1__86_carry__0_i_3__7_1,
    \o_out[3]_i_2__7_0 ,
    \o_out[3]_i_2__7_1 ,
    o_out1__86_carry__0_i_4__7_0,
    o_out1__86_carry__0_i_4__7_1,
    o_out1__86_carry__1_i_5__7_0,
    o_out1__86_carry__1_i_5__7_1,
    o_out1__86_carry_i_1__7_0,
    o_out1__86_carry_i_1__7_1,
    o_out1__86_carry__0_i_6__7_0,
    o_out1__86_carry__0_i_6__7_1,
    o_out1__86_carry__1_i_3__7,
    o_out1__86_carry__1_i_3__7_0,
    \o_out_reg[15]_1 );
  output [15:0]m_axis_data;
  output [2:0]o_out1__86_carry__1_i_5__7;
  output [0:0]\o_y_reg[5] ;
  output [1:0]\o_y_reg[5]_0 ;
  output [2:0]\o_y_reg[7] ;
  output [0:0]\o_y_reg[7]_0 ;
  output [0:0]\o_out_reg[15]_0 ;
  output [0:0]CO;
  input p_0_in;
  input axi_clk;
  input [3:0]O;
  input [2:0]DI;
  input [3:0]S;
  input [3:0]o_out1__86_carry_i_8__7_0;
  input [3:0]o_out1__86_carry_i_8__7_1;
  input [1:0]o_out1__86_carry__0_i_3__7_0;
  input [1:0]o_out1__86_carry__0_i_3__7_1;
  input [2:0]\o_out[3]_i_2__7_0 ;
  input [3:0]\o_out[3]_i_2__7_1 ;
  input [3:0]o_out1__86_carry__0_i_4__7_0;
  input [3:0]o_out1__86_carry__0_i_4__7_1;
  input [1:0]o_out1__86_carry__1_i_5__7_0;
  input [1:0]o_out1__86_carry__1_i_5__7_1;
  input [2:0]o_out1__86_carry_i_1__7_0;
  input [3:0]o_out1__86_carry_i_1__7_1;
  input [3:0]o_out1__86_carry__0_i_6__7_0;
  input [3:0]o_out1__86_carry__0_i_6__7_1;
  input [0:0]o_out1__86_carry__1_i_3__7;
  input [0:0]o_out1__86_carry__1_i_3__7_0;
  input [2:0]\o_out_reg[15]_1 ;

  wire [0:0]CO;
  wire [2:0]DI;
  wire [3:0]O;
  wire [3:0]S;
  wire axi_clk;
  wire [15:0]m_axis_data;
  wire [15:0]o_out1;
  wire o_out1__0_carry__0_n_0;
  wire o_out1__0_carry__0_n_1;
  wire o_out1__0_carry__0_n_2;
  wire o_out1__0_carry__0_n_3;
  wire o_out1__0_carry__0_n_4;
  wire o_out1__0_carry__0_n_5;
  wire o_out1__0_carry__0_n_6;
  wire o_out1__0_carry__0_n_7;
  wire o_out1__0_carry__1_n_1;
  wire o_out1__0_carry__1_n_3;
  wire o_out1__0_carry__1_n_6;
  wire o_out1__0_carry__1_n_7;
  wire o_out1__0_carry_n_0;
  wire o_out1__0_carry_n_1;
  wire o_out1__0_carry_n_2;
  wire o_out1__0_carry_n_3;
  wire o_out1__0_carry_n_4;
  wire o_out1__30_carry__0_n_0;
  wire o_out1__30_carry__0_n_1;
  wire o_out1__30_carry__0_n_2;
  wire o_out1__30_carry__0_n_3;
  wire o_out1__30_carry__0_n_4;
  wire o_out1__30_carry__0_n_5;
  wire o_out1__30_carry__0_n_6;
  wire o_out1__30_carry__0_n_7;
  wire o_out1__30_carry__1_n_3;
  wire o_out1__30_carry_n_0;
  wire o_out1__30_carry_n_1;
  wire o_out1__30_carry_n_2;
  wire o_out1__30_carry_n_3;
  wire o_out1__30_carry_n_4;
  wire o_out1__30_carry_n_5;
  wire o_out1__30_carry_n_6;
  wire o_out1__30_carry_n_7;
  wire o_out1__59_carry__0_n_0;
  wire o_out1__59_carry__0_n_1;
  wire o_out1__59_carry__0_n_2;
  wire o_out1__59_carry__0_n_3;
  wire o_out1__59_carry__0_n_7;
  wire o_out1__59_carry__1_n_3;
  wire o_out1__59_carry__1_n_6;
  wire o_out1__59_carry_n_0;
  wire o_out1__59_carry_n_1;
  wire o_out1__59_carry_n_2;
  wire o_out1__59_carry_n_3;
  wire o_out1__59_carry_n_4;
  wire o_out1__59_carry_n_5;
  wire o_out1__59_carry_n_6;
  wire o_out1__59_carry_n_7;
  wire o_out1__86_carry__0_i_1__7_n_0;
  wire o_out1__86_carry__0_i_2__7_n_0;
  wire [1:0]o_out1__86_carry__0_i_3__7_0;
  wire [1:0]o_out1__86_carry__0_i_3__7_1;
  wire o_out1__86_carry__0_i_3__7_n_0;
  wire [3:0]o_out1__86_carry__0_i_4__7_0;
  wire [3:0]o_out1__86_carry__0_i_4__7_1;
  wire o_out1__86_carry__0_i_4__7_n_0;
  wire o_out1__86_carry__0_i_5__7_n_0;
  wire [3:0]o_out1__86_carry__0_i_6__7_0;
  wire [3:0]o_out1__86_carry__0_i_6__7_1;
  wire o_out1__86_carry__0_i_6__7_n_0;
  wire o_out1__86_carry__0_i_7__7_n_0;
  wire o_out1__86_carry__0_i_8__7_n_0;
  wire o_out1__86_carry__0_n_0;
  wire o_out1__86_carry__0_n_1;
  wire o_out1__86_carry__0_n_2;
  wire o_out1__86_carry__0_n_3;
  wire o_out1__86_carry__1_i_1__7_n_0;
  wire o_out1__86_carry__1_i_2__7_n_0;
  wire [0:0]o_out1__86_carry__1_i_3__7;
  wire [0:0]o_out1__86_carry__1_i_3__7_0;
  wire [2:0]o_out1__86_carry__1_i_5__7;
  wire [1:0]o_out1__86_carry__1_i_5__7_0;
  wire [1:0]o_out1__86_carry__1_i_5__7_1;
  wire o_out1__86_carry__1_n_1;
  wire o_out1__86_carry__1_n_2;
  wire o_out1__86_carry__1_n_3;
  wire [2:0]o_out1__86_carry_i_1__7_0;
  wire [3:0]o_out1__86_carry_i_1__7_1;
  wire o_out1__86_carry_i_1__7_n_0;
  wire o_out1__86_carry_i_2__7_n_0;
  wire o_out1__86_carry_i_3__7_n_0;
  wire o_out1__86_carry_i_4__7_n_0;
  wire o_out1__86_carry_i_5__7_n_0;
  wire o_out1__86_carry_i_6__7_n_0;
  wire o_out1__86_carry_i_7__7_n_0;
  wire [3:0]o_out1__86_carry_i_8__7_0;
  wire [3:0]o_out1__86_carry_i_8__7_1;
  wire o_out1__86_carry_i_8__7_n_0;
  wire o_out1__86_carry_n_0;
  wire o_out1__86_carry_n_1;
  wire o_out1__86_carry_n_2;
  wire o_out1__86_carry_n_3;
  wire \o_out[11]_i_2__7_n_0 ;
  wire \o_out[11]_i_3__7_n_0 ;
  wire \o_out[11]_i_4__7_n_0 ;
  wire \o_out[11]_i_5__7_n_0 ;
  wire [2:0]\o_out[3]_i_2__7_0 ;
  wire [3:0]\o_out[3]_i_2__7_1 ;
  wire \o_out[3]_i_2__7_n_0 ;
  wire \o_out[3]_i_3__7_n_0 ;
  wire \o_out[3]_i_4__7_n_0 ;
  wire \o_out[3]_i_5__7_n_0 ;
  wire \o_out[7]_i_2__7_n_0 ;
  wire \o_out[7]_i_3__7_n_0 ;
  wire \o_out[7]_i_4__7_n_0 ;
  wire \o_out[7]_i_5__7_n_0 ;
  wire \o_out_reg[11]_i_1__7_n_1 ;
  wire \o_out_reg[11]_i_1__7_n_2 ;
  wire \o_out_reg[11]_i_1__7_n_3 ;
  wire \o_out_reg[11]_i_1__7_n_4 ;
  wire \o_out_reg[11]_i_1__7_n_5 ;
  wire \o_out_reg[11]_i_1__7_n_6 ;
  wire \o_out_reg[11]_i_1__7_n_7 ;
  wire [0:0]\o_out_reg[15]_0 ;
  wire [2:0]\o_out_reg[15]_1 ;
  wire \o_out_reg[3]_i_1__7_n_0 ;
  wire \o_out_reg[3]_i_1__7_n_1 ;
  wire \o_out_reg[3]_i_1__7_n_2 ;
  wire \o_out_reg[3]_i_1__7_n_3 ;
  wire \o_out_reg[3]_i_1__7_n_4 ;
  wire \o_out_reg[3]_i_1__7_n_5 ;
  wire \o_out_reg[3]_i_1__7_n_6 ;
  wire \o_out_reg[3]_i_1__7_n_7 ;
  wire \o_out_reg[7]_i_1__7_n_0 ;
  wire \o_out_reg[7]_i_1__7_n_1 ;
  wire \o_out_reg[7]_i_1__7_n_2 ;
  wire \o_out_reg[7]_i_1__7_n_3 ;
  wire \o_out_reg[7]_i_1__7_n_4 ;
  wire \o_out_reg[7]_i_1__7_n_5 ;
  wire \o_out_reg[7]_i_1__7_n_6 ;
  wire \o_out_reg[7]_i_1__7_n_7 ;
  wire [0:0]\o_y_reg[5] ;
  wire [1:0]\o_y_reg[5]_0 ;
  wire [2:0]\o_y_reg[7] ;
  wire [0:0]\o_y_reg[7]_0 ;
  wire p_0_in;
  wire [3:1]NLW_o_out1__0_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_o_out1__0_carry__1_O_UNCONNECTED;
  wire [3:1]NLW_o_out1__30_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_o_out1__30_carry__1_O_UNCONNECTED;
  wire [3:1]NLW_o_out1__59_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_o_out1__59_carry__1_O_UNCONNECTED;
  wire [3:3]NLW_o_out1__86_carry__1_CO_UNCONNECTED;

  CARRY4 o_out1__0_carry
       (.CI(1'b0),
        .CO({o_out1__0_carry_n_0,o_out1__0_carry_n_1,o_out1__0_carry_n_2,o_out1__0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({DI,1'b0}),
        .O({o_out1__0_carry_n_4,o_out1[2:0]}),
        .S(S));
  CARRY4 o_out1__0_carry__0
       (.CI(o_out1__0_carry_n_0),
        .CO({o_out1__0_carry__0_n_0,o_out1__0_carry__0_n_1,o_out1__0_carry__0_n_2,o_out1__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(o_out1__86_carry_i_8__7_0),
        .O({o_out1__0_carry__0_n_4,o_out1__0_carry__0_n_5,o_out1__0_carry__0_n_6,o_out1__0_carry__0_n_7}),
        .S(o_out1__86_carry_i_8__7_1));
  CARRY4 o_out1__0_carry__1
       (.CI(o_out1__0_carry__0_n_0),
        .CO({NLW_o_out1__0_carry__1_CO_UNCONNECTED[3],o_out1__0_carry__1_n_1,NLW_o_out1__0_carry__1_CO_UNCONNECTED[1],o_out1__0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,o_out1__86_carry__0_i_3__7_0}),
        .O({NLW_o_out1__0_carry__1_O_UNCONNECTED[3:2],o_out1__0_carry__1_n_6,o_out1__0_carry__1_n_7}),
        .S({1'b0,1'b1,o_out1__86_carry__0_i_3__7_1}));
  CARRY4 o_out1__30_carry
       (.CI(1'b0),
        .CO({o_out1__30_carry_n_0,o_out1__30_carry_n_1,o_out1__30_carry_n_2,o_out1__30_carry_n_3}),
        .CYINIT(1'b0),
        .DI({\o_out[3]_i_2__7_0 ,1'b0}),
        .O({o_out1__30_carry_n_4,o_out1__30_carry_n_5,o_out1__30_carry_n_6,o_out1__30_carry_n_7}),
        .S(\o_out[3]_i_2__7_1 ));
  CARRY4 o_out1__30_carry__0
       (.CI(o_out1__30_carry_n_0),
        .CO({o_out1__30_carry__0_n_0,o_out1__30_carry__0_n_1,o_out1__30_carry__0_n_2,o_out1__30_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(o_out1__86_carry__0_i_4__7_0),
        .O({o_out1__30_carry__0_n_4,o_out1__30_carry__0_n_5,o_out1__30_carry__0_n_6,o_out1__30_carry__0_n_7}),
        .S(o_out1__86_carry__0_i_4__7_1));
  CARRY4 o_out1__30_carry__1
       (.CI(o_out1__30_carry__0_n_0),
        .CO({NLW_o_out1__30_carry__1_CO_UNCONNECTED[3],\o_y_reg[5] ,NLW_o_out1__30_carry__1_CO_UNCONNECTED[1],o_out1__30_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,o_out1__86_carry__1_i_5__7_0}),
        .O({NLW_o_out1__30_carry__1_O_UNCONNECTED[3:2],\o_y_reg[5]_0 }),
        .S({1'b0,1'b1,o_out1__86_carry__1_i_5__7_1}));
  CARRY4 o_out1__59_carry
       (.CI(1'b0),
        .CO({o_out1__59_carry_n_0,o_out1__59_carry_n_1,o_out1__59_carry_n_2,o_out1__59_carry_n_3}),
        .CYINIT(1'b0),
        .DI({o_out1__86_carry_i_1__7_0,1'b0}),
        .O({o_out1__59_carry_n_4,o_out1__59_carry_n_5,o_out1__59_carry_n_6,o_out1__59_carry_n_7}),
        .S(o_out1__86_carry_i_1__7_1));
  CARRY4 o_out1__59_carry__0
       (.CI(o_out1__59_carry_n_0),
        .CO({o_out1__59_carry__0_n_0,o_out1__59_carry__0_n_1,o_out1__59_carry__0_n_2,o_out1__59_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(o_out1__86_carry__0_i_6__7_0),
        .O({\o_y_reg[7] ,o_out1__59_carry__0_n_7}),
        .S(o_out1__86_carry__0_i_6__7_1));
  CARRY4 o_out1__59_carry__1
       (.CI(o_out1__59_carry__0_n_0),
        .CO({NLW_o_out1__59_carry__1_CO_UNCONNECTED[3:1],o_out1__59_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,o_out1__86_carry__1_i_3__7}),
        .O({NLW_o_out1__59_carry__1_O_UNCONNECTED[3:2],o_out1__59_carry__1_n_6,\o_y_reg[7]_0 }),
        .S({1'b0,1'b0,1'b1,o_out1__86_carry__1_i_3__7_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 o_out1__86_carry
       (.CI(1'b0),
        .CO({o_out1__86_carry_n_0,o_out1__86_carry_n_1,o_out1__86_carry_n_2,o_out1__86_carry_n_3}),
        .CYINIT(1'b0),
        .DI({o_out1__86_carry_i_1__7_n_0,o_out1__86_carry_i_2__7_n_0,o_out1__86_carry_i_3__7_n_0,o_out1__86_carry_i_4__7_n_0}),
        .O(o_out1[7:4]),
        .S({o_out1__86_carry_i_5__7_n_0,o_out1__86_carry_i_6__7_n_0,o_out1__86_carry_i_7__7_n_0,o_out1__86_carry_i_8__7_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 o_out1__86_carry__0
       (.CI(o_out1__86_carry_n_0),
        .CO({o_out1__86_carry__0_n_0,o_out1__86_carry__0_n_1,o_out1__86_carry__0_n_2,o_out1__86_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({o_out1__86_carry__0_i_1__7_n_0,o_out1__86_carry__0_i_2__7_n_0,o_out1__86_carry__0_i_3__7_n_0,o_out1__86_carry__0_i_4__7_n_0}),
        .O(o_out1[11:8]),
        .S({o_out1__86_carry__0_i_5__7_n_0,o_out1__86_carry__0_i_6__7_n_0,o_out1__86_carry__0_i_7__7_n_0,o_out1__86_carry__0_i_8__7_n_0}));
  LUT3 #(
    .INIT(8'hE8)) 
    o_out1__86_carry__0_i_1__7
       (.I0(o_out1__59_carry__0_n_7),
        .I1(o_out1__0_carry__1_n_1),
        .I2(o_out1__30_carry__0_n_4),
        .O(o_out1__86_carry__0_i_1__7_n_0));
  (* HLUTNM = "lutpair39" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    o_out1__86_carry__0_i_2__7
       (.I0(o_out1__59_carry_n_4),
        .I1(o_out1__0_carry__1_n_6),
        .I2(o_out1__30_carry__0_n_5),
        .O(o_out1__86_carry__0_i_2__7_n_0));
  (* HLUTNM = "lutpair38" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    o_out1__86_carry__0_i_3__7
       (.I0(o_out1__59_carry_n_5),
        .I1(o_out1__0_carry__1_n_7),
        .I2(o_out1__30_carry__0_n_6),
        .O(o_out1__86_carry__0_i_3__7_n_0));
  (* HLUTNM = "lutpair37" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    o_out1__86_carry__0_i_4__7
       (.I0(o_out1__59_carry_n_6),
        .I1(o_out1__0_carry__0_n_4),
        .I2(o_out1__30_carry__0_n_7),
        .O(o_out1__86_carry__0_i_4__7_n_0));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    o_out1__86_carry__0_i_5__7
       (.I0(o_out1__30_carry__0_n_4),
        .I1(o_out1__0_carry__1_n_1),
        .I2(o_out1__59_carry__0_n_7),
        .I3(\o_y_reg[5]_0 [0]),
        .I4(\o_y_reg[7] [0]),
        .O(o_out1__86_carry__0_i_5__7_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    o_out1__86_carry__0_i_6__7
       (.I0(o_out1__86_carry__0_i_2__7_n_0),
        .I1(o_out1__59_carry__0_n_7),
        .I2(o_out1__0_carry__1_n_1),
        .I3(o_out1__30_carry__0_n_4),
        .O(o_out1__86_carry__0_i_6__7_n_0));
  (* HLUTNM = "lutpair39" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    o_out1__86_carry__0_i_7__7
       (.I0(o_out1__59_carry_n_4),
        .I1(o_out1__0_carry__1_n_6),
        .I2(o_out1__30_carry__0_n_5),
        .I3(o_out1__86_carry__0_i_3__7_n_0),
        .O(o_out1__86_carry__0_i_7__7_n_0));
  (* HLUTNM = "lutpair38" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    o_out1__86_carry__0_i_8__7
       (.I0(o_out1__59_carry_n_5),
        .I1(o_out1__0_carry__1_n_7),
        .I2(o_out1__30_carry__0_n_6),
        .I3(o_out1__86_carry__0_i_4__7_n_0),
        .O(o_out1__86_carry__0_i_8__7_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 o_out1__86_carry__1
       (.CI(o_out1__86_carry__0_n_0),
        .CO({NLW_o_out1__86_carry__1_CO_UNCONNECTED[3],o_out1__86_carry__1_n_1,o_out1__86_carry__1_n_2,o_out1__86_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\o_y_reg[7]_0 ,o_out1__86_carry__1_i_1__7_n_0,o_out1__86_carry__1_i_2__7_n_0}),
        .O({o_out1[15],o_out1__86_carry__1_i_5__7}),
        .S({o_out1__59_carry__1_n_6,\o_out_reg[15]_1 }));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__86_carry__1_i_1__7
       (.I0(\o_y_reg[7] [1]),
        .I1(\o_y_reg[5]_0 [1]),
        .O(o_out1__86_carry__1_i_1__7_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__86_carry__1_i_2__7
       (.I0(\o_y_reg[7] [0]),
        .I1(\o_y_reg[5]_0 [0]),
        .O(o_out1__86_carry__1_i_2__7_n_0));
  (* HLUTNM = "lutpair36" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    o_out1__86_carry_i_1__7
       (.I0(o_out1__59_carry_n_7),
        .I1(o_out1__0_carry__0_n_5),
        .I2(o_out1__30_carry_n_4),
        .O(o_out1__86_carry_i_1__7_n_0));
  (* HLUTNM = "lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__86_carry_i_2__7
       (.I0(o_out1__30_carry_n_5),
        .I1(o_out1__0_carry__0_n_6),
        .O(o_out1__86_carry_i_2__7_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__86_carry_i_3__7
       (.I0(o_out1__30_carry_n_6),
        .I1(o_out1__0_carry__0_n_7),
        .O(o_out1__86_carry_i_3__7_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    o_out1__86_carry_i_4__7
       (.I0(o_out1__0_carry_n_4),
        .I1(o_out1__30_carry_n_7),
        .O(o_out1__86_carry_i_4__7_n_0));
  (* HLUTNM = "lutpair37" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    o_out1__86_carry_i_5__7
       (.I0(o_out1__59_carry_n_6),
        .I1(o_out1__0_carry__0_n_4),
        .I2(o_out1__30_carry__0_n_7),
        .I3(o_out1__86_carry_i_1__7_n_0),
        .O(o_out1__86_carry_i_5__7_n_0));
  (* HLUTNM = "lutpair36" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    o_out1__86_carry_i_6__7
       (.I0(o_out1__59_carry_n_7),
        .I1(o_out1__0_carry__0_n_5),
        .I2(o_out1__30_carry_n_4),
        .I3(o_out1__86_carry_i_2__7_n_0),
        .O(o_out1__86_carry_i_6__7_n_0));
  (* HLUTNM = "lutpair35" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    o_out1__86_carry_i_7__7
       (.I0(o_out1__30_carry_n_5),
        .I1(o_out1__0_carry__0_n_6),
        .I2(o_out1__0_carry__0_n_7),
        .I3(o_out1__30_carry_n_6),
        .O(o_out1__86_carry_i_7__7_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    o_out1__86_carry_i_8__7
       (.I0(o_out1__30_carry_n_7),
        .I1(o_out1__0_carry_n_4),
        .I2(o_out1__0_carry__0_n_7),
        .I3(o_out1__30_carry_n_6),
        .O(o_out1__86_carry_i_8__7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[11]_i_2__7 
       (.I0(o_out1[11]),
        .I1(m_axis_data[11]),
        .O(\o_out[11]_i_2__7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[11]_i_3__7 
       (.I0(o_out1[10]),
        .I1(m_axis_data[10]),
        .O(\o_out[11]_i_3__7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[11]_i_4__7 
       (.I0(o_out1[9]),
        .I1(m_axis_data[9]),
        .O(\o_out[11]_i_4__7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[11]_i_5__7 
       (.I0(o_out1[8]),
        .I1(m_axis_data[8]),
        .O(\o_out[11]_i_5__7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[15]_i_3 
       (.I0(m_axis_data[15]),
        .I1(o_out1[15]),
        .O(\o_out_reg[15]_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \o_out[3]_i_2__7 
       (.I0(o_out1__30_carry_n_7),
        .I1(o_out1__0_carry_n_4),
        .I2(m_axis_data[3]),
        .O(\o_out[3]_i_2__7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[3]_i_3__7 
       (.I0(o_out1[2]),
        .I1(m_axis_data[2]),
        .O(\o_out[3]_i_3__7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[3]_i_4__7 
       (.I0(o_out1[1]),
        .I1(m_axis_data[1]),
        .O(\o_out[3]_i_4__7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[3]_i_5__7 
       (.I0(o_out1[0]),
        .I1(m_axis_data[0]),
        .O(\o_out[3]_i_5__7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[7]_i_2__7 
       (.I0(o_out1[7]),
        .I1(m_axis_data[7]),
        .O(\o_out[7]_i_2__7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[7]_i_3__7 
       (.I0(o_out1[6]),
        .I1(m_axis_data[6]),
        .O(\o_out[7]_i_3__7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[7]_i_4__7 
       (.I0(o_out1[5]),
        .I1(m_axis_data[5]),
        .O(\o_out[7]_i_4__7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[7]_i_5__7 
       (.I0(o_out1[4]),
        .I1(m_axis_data[4]),
        .O(\o_out[7]_i_5__7_n_0 ));
  FDRE \o_out_reg[0] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[3]_i_1__7_n_7 ),
        .Q(m_axis_data[0]),
        .R(p_0_in));
  FDRE \o_out_reg[10] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[11]_i_1__7_n_5 ),
        .Q(m_axis_data[10]),
        .R(p_0_in));
  FDRE \o_out_reg[11] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[11]_i_1__7_n_4 ),
        .Q(m_axis_data[11]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \o_out_reg[11]_i_1__7 
       (.CI(\o_out_reg[7]_i_1__7_n_0 ),
        .CO({CO,\o_out_reg[11]_i_1__7_n_1 ,\o_out_reg[11]_i_1__7_n_2 ,\o_out_reg[11]_i_1__7_n_3 }),
        .CYINIT(1'b0),
        .DI(o_out1[11:8]),
        .O({\o_out_reg[11]_i_1__7_n_4 ,\o_out_reg[11]_i_1__7_n_5 ,\o_out_reg[11]_i_1__7_n_6 ,\o_out_reg[11]_i_1__7_n_7 }),
        .S({\o_out[11]_i_2__7_n_0 ,\o_out[11]_i_3__7_n_0 ,\o_out[11]_i_4__7_n_0 ,\o_out[11]_i_5__7_n_0 }));
  FDRE \o_out_reg[12] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(O[0]),
        .Q(m_axis_data[12]),
        .R(p_0_in));
  FDRE \o_out_reg[13] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(O[1]),
        .Q(m_axis_data[13]),
        .R(p_0_in));
  FDRE \o_out_reg[14] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(O[2]),
        .Q(m_axis_data[14]),
        .R(p_0_in));
  FDRE \o_out_reg[15] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(O[3]),
        .Q(m_axis_data[15]),
        .R(p_0_in));
  FDRE \o_out_reg[1] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[3]_i_1__7_n_6 ),
        .Q(m_axis_data[1]),
        .R(p_0_in));
  FDRE \o_out_reg[2] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[3]_i_1__7_n_5 ),
        .Q(m_axis_data[2]),
        .R(p_0_in));
  FDRE \o_out_reg[3] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[3]_i_1__7_n_4 ),
        .Q(m_axis_data[3]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \o_out_reg[3]_i_1__7 
       (.CI(1'b0),
        .CO({\o_out_reg[3]_i_1__7_n_0 ,\o_out_reg[3]_i_1__7_n_1 ,\o_out_reg[3]_i_1__7_n_2 ,\o_out_reg[3]_i_1__7_n_3 }),
        .CYINIT(1'b0),
        .DI({m_axis_data[3],o_out1[2:0]}),
        .O({\o_out_reg[3]_i_1__7_n_4 ,\o_out_reg[3]_i_1__7_n_5 ,\o_out_reg[3]_i_1__7_n_6 ,\o_out_reg[3]_i_1__7_n_7 }),
        .S({\o_out[3]_i_2__7_n_0 ,\o_out[3]_i_3__7_n_0 ,\o_out[3]_i_4__7_n_0 ,\o_out[3]_i_5__7_n_0 }));
  FDRE \o_out_reg[4] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[7]_i_1__7_n_7 ),
        .Q(m_axis_data[4]),
        .R(p_0_in));
  FDRE \o_out_reg[5] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[7]_i_1__7_n_6 ),
        .Q(m_axis_data[5]),
        .R(p_0_in));
  FDRE \o_out_reg[6] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[7]_i_1__7_n_5 ),
        .Q(m_axis_data[6]),
        .R(p_0_in));
  FDRE \o_out_reg[7] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[7]_i_1__7_n_4 ),
        .Q(m_axis_data[7]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \o_out_reg[7]_i_1__7 
       (.CI(\o_out_reg[3]_i_1__7_n_0 ),
        .CO({\o_out_reg[7]_i_1__7_n_0 ,\o_out_reg[7]_i_1__7_n_1 ,\o_out_reg[7]_i_1__7_n_2 ,\o_out_reg[7]_i_1__7_n_3 }),
        .CYINIT(1'b0),
        .DI(o_out1[7:4]),
        .O({\o_out_reg[7]_i_1__7_n_4 ,\o_out_reg[7]_i_1__7_n_5 ,\o_out_reg[7]_i_1__7_n_6 ,\o_out_reg[7]_i_1__7_n_7 }),
        .S({\o_out[7]_i_2__7_n_0 ,\o_out[7]_i_3__7_n_0 ,\o_out[7]_i_4__7_n_0 ,\o_out[7]_i_5__7_n_0 }));
  FDRE \o_out_reg[8] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[11]_i_1__7_n_7 ),
        .Q(m_axis_data[8]),
        .R(p_0_in));
  FDRE \o_out_reg[9] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\o_out_reg[11]_i_1__7_n_6 ),
        .Q(m_axis_data[9]),
        .R(p_0_in));
endmodule

(* ORIG_REF_NAME = "SystolicArray" *) 
module design_1_SystolicArrayAxiWrap_0_0_SystolicArray
   (m_axis_data,
    CO,
    o_out1__30_carry__1_i_4,
    o_out1__59_carry__0_i_8,
    o_out1__59_carry__1_i_2,
    o_out1__86_carry__1_i_5,
    s_axis_valid_0,
    E,
    \o_out_reg[15] ,
    \o_out_reg[11] ,
    p_0_in,
    axi_clk,
    O,
    DI,
    S,
    o_out1__86_carry_i_8,
    o_out1__86_carry_i_8_0,
    o_out1__86_carry__0_i_3,
    o_out1__86_carry__0_i_3_0,
    \o_out[3]_i_2 ,
    \o_out[3]_i_2_0 ,
    o_out1__86_carry__0_i_4,
    o_out1__86_carry__0_i_4_0,
    o_out1__86_carry__1_i_5_0,
    o_out1__86_carry__1_i_5_1,
    o_out1__86_carry_i_1,
    o_out1__86_carry_i_1_0,
    o_out1__86_carry__0_i_6,
    o_out1__86_carry__0_i_6_0,
    o_out1__86_carry__1_i_3,
    o_out1__86_carry__1_i_3_0,
    \o_out_reg[15]_0 ,
    \FSM_sequential_PS_reg[0] ,
    s_axis_valid,
    PS,
    axi_rst_n,
    m_axis_ready,
    D,
    \o_x_reg[7] ,
    \o_x_reg[6] ,
    \o_x_reg[5] ,
    \o_x_reg[4] ,
    \o_x_reg[3] ,
    \o_x_reg[2] ,
    \o_x_reg[1] ,
    \b13_buffer1_reg[7]_0 ,
    \o_y_reg[7] ,
    \a21_buffer_reg[7]_0 ,
    \a31_buffer1_reg[7]_0 );
  output [143:0]m_axis_data;
  output [0:0]CO;
  output [1:0]o_out1__30_carry__1_i_4;
  output [2:0]o_out1__59_carry__0_i_8;
  output [0:0]o_out1__59_carry__1_i_2;
  output [2:0]o_out1__86_carry__1_i_5;
  output s_axis_valid_0;
  output [0:0]E;
  output [0:0]\o_out_reg[15] ;
  output [0:0]\o_out_reg[11] ;
  input p_0_in;
  input axi_clk;
  input [3:0]O;
  input [2:0]DI;
  input [3:0]S;
  input [3:0]o_out1__86_carry_i_8;
  input [3:0]o_out1__86_carry_i_8_0;
  input [1:0]o_out1__86_carry__0_i_3;
  input [1:0]o_out1__86_carry__0_i_3_0;
  input [2:0]\o_out[3]_i_2 ;
  input [3:0]\o_out[3]_i_2_0 ;
  input [3:0]o_out1__86_carry__0_i_4;
  input [3:0]o_out1__86_carry__0_i_4_0;
  input [1:0]o_out1__86_carry__1_i_5_0;
  input [1:0]o_out1__86_carry__1_i_5_1;
  input [2:0]o_out1__86_carry_i_1;
  input [3:0]o_out1__86_carry_i_1_0;
  input [3:0]o_out1__86_carry__0_i_6;
  input [3:0]o_out1__86_carry__0_i_6_0;
  input [0:0]o_out1__86_carry__1_i_3;
  input [0:0]o_out1__86_carry__1_i_3_0;
  input [2:0]\o_out_reg[15]_0 ;
  input \FSM_sequential_PS_reg[0] ;
  input s_axis_valid;
  input [1:0]PS;
  input axi_rst_n;
  input m_axis_ready;
  input [7:0]D;
  input \o_x_reg[7] ;
  input \o_x_reg[6] ;
  input \o_x_reg[5] ;
  input \o_x_reg[4] ;
  input \o_x_reg[3] ;
  input \o_x_reg[2] ;
  input [1:0]\o_x_reg[1] ;
  input [7:0]\b13_buffer1_reg[7]_0 ;
  input [7:0]\o_y_reg[7] ;
  input [7:0]\a21_buffer_reg[7]_0 ;
  input [7:0]\a31_buffer1_reg[7]_0 ;

  wire [7:0]A;
  wire [0:0]CO;
  wire [7:0]D;
  wire [2:0]DI;
  wire [0:0]E;
  wire \FSM_sequential_PS_reg[0] ;
  wire [3:0]O;
  wire [1:0]PS;
  wire [3:0]S;
  wire [7:0]\a21_buffer_reg[7]_0 ;
  wire \a21_buffer_reg_n_0_[0] ;
  wire \a21_buffer_reg_n_0_[1] ;
  wire \a21_buffer_reg_n_0_[2] ;
  wire \a21_buffer_reg_n_0_[3] ;
  wire \a21_buffer_reg_n_0_[4] ;
  wire \a21_buffer_reg_n_0_[5] ;
  wire \a21_buffer_reg_n_0_[6] ;
  wire \a21_buffer_reg_n_0_[7] ;
  wire [7:0]a31_buffer1;
  wire [7:0]\a31_buffer1_reg[7]_0 ;
  wire \a31_buffer2_reg_n_0_[0] ;
  wire \a31_buffer2_reg_n_0_[1] ;
  wire \a31_buffer2_reg_n_0_[2] ;
  wire \a31_buffer2_reg_n_0_[3] ;
  wire \a31_buffer2_reg_n_0_[4] ;
  wire \a31_buffer2_reg_n_0_[5] ;
  wire \a31_buffer2_reg_n_0_[6] ;
  wire \a31_buffer2_reg_n_0_[7] ;
  wire axi_clk;
  wire axi_rst_n;
  wire [7:0]b12_buffer;
  wire [7:0]b13_buffer1;
  wire [7:0]\b13_buffer1_reg[7]_0 ;
  wire [7:0]b13_buffer2;
  wire [143:0]m_axis_data;
  wire m_axis_ready;
  wire mac11_n_100;
  wire mac11_n_101;
  wire mac11_n_102;
  wire mac11_n_103;
  wire mac11_n_104;
  wire mac11_n_105;
  wire mac11_n_106;
  wire mac11_n_107;
  wire mac11_n_108;
  wire mac11_n_109;
  wire mac11_n_110;
  wire mac11_n_111;
  wire mac11_n_112;
  wire mac11_n_113;
  wire mac11_n_114;
  wire mac11_n_115;
  wire mac11_n_116;
  wire mac11_n_117;
  wire mac11_n_118;
  wire mac11_n_119;
  wire mac11_n_120;
  wire mac11_n_122;
  wire mac11_n_123;
  wire mac11_n_124;
  wire mac11_n_125;
  wire mac11_n_126;
  wire mac11_n_127;
  wire mac11_n_128;
  wire mac11_n_129;
  wire mac11_n_130;
  wire mac11_n_131;
  wire mac11_n_132;
  wire mac11_n_133;
  wire mac11_n_134;
  wire mac11_n_135;
  wire mac11_n_136;
  wire mac11_n_137;
  wire mac11_n_138;
  wire mac11_n_139;
  wire mac11_n_140;
  wire mac11_n_141;
  wire mac11_n_142;
  wire mac11_n_143;
  wire mac11_n_144;
  wire mac11_n_145;
  wire mac11_n_146;
  wire mac11_n_147;
  wire mac11_n_148;
  wire mac11_n_149;
  wire mac11_n_150;
  wire mac11_n_151;
  wire mac11_n_152;
  wire mac11_n_153;
  wire mac11_n_154;
  wire mac11_n_155;
  wire mac11_n_156;
  wire mac11_n_157;
  wire mac11_n_158;
  wire mac11_n_159;
  wire mac11_n_160;
  wire mac11_n_161;
  wire mac11_n_162;
  wire mac11_n_163;
  wire mac11_n_164;
  wire mac11_n_165;
  wire mac11_n_166;
  wire mac11_n_167;
  wire mac11_n_168;
  wire mac11_n_169;
  wire mac11_n_26;
  wire mac11_n_27;
  wire mac11_n_28;
  wire mac11_n_29;
  wire mac11_n_38;
  wire mac11_n_39;
  wire mac11_n_40;
  wire mac11_n_41;
  wire mac11_n_53;
  wire mac11_n_54;
  wire mac11_n_55;
  wire mac11_n_56;
  wire mac11_n_57;
  wire mac11_n_58;
  wire mac11_n_59;
  wire mac11_n_60;
  wire mac11_n_61;
  wire mac11_n_62;
  wire mac11_n_63;
  wire mac11_n_64;
  wire mac11_n_65;
  wire mac11_n_66;
  wire mac11_n_67;
  wire mac11_n_68;
  wire mac11_n_69;
  wire mac11_n_70;
  wire mac11_n_71;
  wire mac11_n_72;
  wire mac11_n_73;
  wire mac11_n_74;
  wire mac11_n_75;
  wire mac11_n_76;
  wire mac11_n_77;
  wire mac11_n_78;
  wire mac11_n_79;
  wire mac11_n_80;
  wire mac11_n_81;
  wire mac11_n_82;
  wire mac11_n_83;
  wire mac11_n_84;
  wire mac11_n_85;
  wire mac11_n_86;
  wire mac11_n_87;
  wire mac11_n_88;
  wire mac11_n_89;
  wire mac11_n_90;
  wire mac11_n_91;
  wire mac11_n_92;
  wire mac11_n_93;
  wire mac11_n_94;
  wire mac11_n_95;
  wire mac11_n_96;
  wire mac11_n_97;
  wire mac11_n_98;
  wire mac11_n_99;
  wire mac12_n_100;
  wire mac12_n_101;
  wire mac12_n_102;
  wire mac12_n_103;
  wire mac12_n_104;
  wire mac12_n_105;
  wire mac12_n_106;
  wire mac12_n_107;
  wire mac12_n_108;
  wire mac12_n_109;
  wire mac12_n_110;
  wire mac12_n_111;
  wire mac12_n_112;
  wire mac12_n_113;
  wire mac12_n_114;
  wire mac12_n_115;
  wire mac12_n_116;
  wire mac12_n_117;
  wire mac12_n_118;
  wire mac12_n_119;
  wire mac12_n_120;
  wire mac12_n_121;
  wire mac12_n_122;
  wire mac12_n_123;
  wire mac12_n_124;
  wire mac12_n_125;
  wire mac12_n_126;
  wire mac12_n_127;
  wire mac12_n_128;
  wire mac12_n_129;
  wire mac12_n_130;
  wire mac12_n_131;
  wire mac12_n_132;
  wire mac12_n_133;
  wire mac12_n_134;
  wire mac12_n_135;
  wire mac12_n_136;
  wire mac12_n_137;
  wire mac12_n_138;
  wire mac12_n_139;
  wire mac12_n_140;
  wire mac12_n_141;
  wire mac12_n_142;
  wire mac12_n_143;
  wire mac12_n_16;
  wire mac12_n_17;
  wire mac12_n_18;
  wire mac12_n_19;
  wire mac12_n_20;
  wire mac12_n_21;
  wire mac12_n_22;
  wire mac12_n_23;
  wire mac12_n_24;
  wire mac12_n_25;
  wire mac12_n_26;
  wire mac12_n_27;
  wire mac12_n_28;
  wire mac12_n_29;
  wire mac12_n_30;
  wire mac12_n_31;
  wire mac12_n_32;
  wire mac12_n_33;
  wire mac12_n_34;
  wire mac12_n_35;
  wire mac12_n_36;
  wire mac12_n_37;
  wire mac12_n_38;
  wire mac12_n_39;
  wire mac12_n_40;
  wire mac12_n_41;
  wire mac12_n_42;
  wire mac12_n_43;
  wire mac12_n_44;
  wire mac12_n_45;
  wire mac12_n_46;
  wire mac12_n_47;
  wire mac12_n_48;
  wire mac12_n_49;
  wire mac12_n_50;
  wire mac12_n_51;
  wire mac12_n_52;
  wire mac12_n_53;
  wire mac12_n_54;
  wire mac12_n_55;
  wire mac12_n_56;
  wire mac12_n_57;
  wire mac12_n_58;
  wire mac12_n_59;
  wire mac12_n_60;
  wire mac12_n_61;
  wire mac12_n_62;
  wire mac12_n_63;
  wire mac12_n_64;
  wire mac12_n_65;
  wire mac12_n_66;
  wire mac12_n_67;
  wire mac12_n_68;
  wire mac12_n_69;
  wire mac12_n_70;
  wire mac12_n_71;
  wire mac12_n_72;
  wire mac12_n_73;
  wire mac12_n_74;
  wire mac12_n_75;
  wire mac12_n_76;
  wire mac12_n_77;
  wire mac12_n_78;
  wire mac12_n_79;
  wire mac12_n_80;
  wire mac12_n_81;
  wire mac12_n_82;
  wire mac12_n_83;
  wire mac12_n_84;
  wire mac12_n_85;
  wire mac12_n_86;
  wire mac12_n_87;
  wire mac12_n_88;
  wire mac12_n_89;
  wire mac12_n_90;
  wire mac12_n_91;
  wire mac12_n_92;
  wire mac12_n_93;
  wire mac12_n_94;
  wire mac12_n_95;
  wire mac12_n_96;
  wire mac12_n_97;
  wire mac12_n_98;
  wire mac12_n_99;
  wire mac13_n_16;
  wire mac13_n_17;
  wire mac13_n_18;
  wire mac13_n_19;
  wire mac13_n_20;
  wire mac13_n_21;
  wire mac13_n_22;
  wire mac13_n_23;
  wire mac13_n_24;
  wire mac13_n_25;
  wire mac13_n_26;
  wire mac13_n_27;
  wire mac13_n_28;
  wire mac13_n_29;
  wire mac13_n_30;
  wire mac13_n_31;
  wire mac13_n_32;
  wire mac13_n_33;
  wire mac13_n_34;
  wire mac13_n_35;
  wire mac13_n_36;
  wire mac13_n_37;
  wire mac13_n_38;
  wire mac13_n_39;
  wire mac13_n_40;
  wire mac13_n_41;
  wire mac13_n_42;
  wire mac13_n_43;
  wire mac13_n_44;
  wire mac13_n_45;
  wire mac13_n_46;
  wire mac13_n_47;
  wire mac13_n_48;
  wire mac13_n_49;
  wire mac13_n_50;
  wire mac13_n_51;
  wire mac13_n_52;
  wire mac13_n_53;
  wire mac13_n_54;
  wire mac13_n_55;
  wire mac13_n_56;
  wire mac13_n_57;
  wire mac13_n_58;
  wire mac13_n_59;
  wire mac13_n_60;
  wire mac13_n_61;
  wire mac13_n_62;
  wire mac13_n_63;
  wire mac13_n_64;
  wire mac13_n_65;
  wire mac13_n_66;
  wire mac13_n_67;
  wire mac13_n_68;
  wire mac13_n_69;
  wire mac13_n_70;
  wire mac13_n_71;
  wire mac13_n_72;
  wire mac13_n_73;
  wire mac13_n_74;
  wire mac13_n_75;
  wire mac13_n_76;
  wire mac13_n_77;
  wire mac13_n_78;
  wire mac13_n_79;
  wire mac13_n_80;
  wire mac13_n_81;
  wire mac21_n_100;
  wire mac21_n_101;
  wire mac21_n_102;
  wire mac21_n_103;
  wire mac21_n_104;
  wire mac21_n_105;
  wire mac21_n_106;
  wire mac21_n_107;
  wire mac21_n_108;
  wire mac21_n_109;
  wire mac21_n_110;
  wire mac21_n_111;
  wire mac21_n_112;
  wire mac21_n_113;
  wire mac21_n_114;
  wire mac21_n_115;
  wire mac21_n_116;
  wire mac21_n_117;
  wire mac21_n_118;
  wire mac21_n_16;
  wire mac21_n_17;
  wire mac21_n_18;
  wire mac21_n_19;
  wire mac21_n_20;
  wire mac21_n_21;
  wire mac21_n_22;
  wire mac21_n_23;
  wire mac21_n_24;
  wire mac21_n_25;
  wire mac21_n_26;
  wire mac21_n_27;
  wire mac21_n_28;
  wire mac21_n_29;
  wire mac21_n_30;
  wire mac21_n_31;
  wire mac21_n_32;
  wire mac21_n_33;
  wire mac21_n_34;
  wire mac21_n_35;
  wire mac21_n_36;
  wire mac21_n_37;
  wire mac21_n_38;
  wire mac21_n_39;
  wire mac21_n_40;
  wire mac21_n_41;
  wire mac21_n_42;
  wire mac21_n_43;
  wire mac21_n_44;
  wire mac21_n_45;
  wire mac21_n_46;
  wire mac21_n_47;
  wire mac21_n_48;
  wire mac21_n_49;
  wire mac21_n_50;
  wire mac21_n_51;
  wire mac21_n_52;
  wire mac21_n_53;
  wire mac21_n_54;
  wire mac21_n_55;
  wire mac21_n_56;
  wire mac21_n_57;
  wire mac21_n_58;
  wire mac21_n_59;
  wire mac21_n_60;
  wire mac21_n_61;
  wire mac21_n_62;
  wire mac21_n_63;
  wire mac21_n_64;
  wire mac21_n_65;
  wire mac21_n_66;
  wire mac21_n_67;
  wire mac21_n_68;
  wire mac21_n_69;
  wire mac21_n_70;
  wire mac21_n_71;
  wire mac21_n_72;
  wire mac21_n_73;
  wire mac21_n_74;
  wire mac21_n_75;
  wire mac21_n_76;
  wire mac21_n_77;
  wire mac21_n_78;
  wire mac21_n_79;
  wire mac21_n_80;
  wire mac21_n_81;
  wire mac21_n_82;
  wire mac21_n_83;
  wire mac21_n_84;
  wire mac21_n_85;
  wire mac21_n_86;
  wire mac21_n_87;
  wire mac21_n_88;
  wire mac21_n_89;
  wire mac21_n_90;
  wire mac21_n_91;
  wire mac21_n_92;
  wire mac21_n_93;
  wire mac21_n_94;
  wire mac21_n_95;
  wire mac21_n_96;
  wire mac21_n_97;
  wire mac21_n_98;
  wire mac21_n_99;
  wire mac22_n_100;
  wire mac22_n_101;
  wire mac22_n_102;
  wire mac22_n_103;
  wire mac22_n_104;
  wire mac22_n_105;
  wire mac22_n_106;
  wire mac22_n_107;
  wire mac22_n_108;
  wire mac22_n_109;
  wire mac22_n_110;
  wire mac22_n_16;
  wire mac22_n_17;
  wire mac22_n_18;
  wire mac22_n_19;
  wire mac22_n_20;
  wire mac22_n_21;
  wire mac22_n_22;
  wire mac22_n_23;
  wire mac22_n_24;
  wire mac22_n_25;
  wire mac22_n_26;
  wire mac22_n_27;
  wire mac22_n_28;
  wire mac22_n_29;
  wire mac22_n_30;
  wire mac22_n_31;
  wire mac22_n_32;
  wire mac22_n_33;
  wire mac22_n_34;
  wire mac22_n_35;
  wire mac22_n_36;
  wire mac22_n_37;
  wire mac22_n_38;
  wire mac22_n_39;
  wire mac22_n_40;
  wire mac22_n_41;
  wire mac22_n_42;
  wire mac22_n_43;
  wire mac22_n_44;
  wire mac22_n_45;
  wire mac22_n_46;
  wire mac22_n_47;
  wire mac22_n_48;
  wire mac22_n_49;
  wire mac22_n_50;
  wire mac22_n_51;
  wire mac22_n_52;
  wire mac22_n_53;
  wire mac22_n_54;
  wire mac22_n_55;
  wire mac22_n_56;
  wire mac22_n_57;
  wire mac22_n_58;
  wire mac22_n_59;
  wire mac22_n_60;
  wire mac22_n_61;
  wire mac22_n_62;
  wire mac22_n_63;
  wire mac22_n_64;
  wire mac22_n_65;
  wire mac22_n_66;
  wire mac22_n_67;
  wire mac22_n_68;
  wire mac22_n_69;
  wire mac22_n_70;
  wire mac22_n_71;
  wire mac22_n_72;
  wire mac22_n_73;
  wire mac22_n_74;
  wire mac22_n_75;
  wire mac22_n_76;
  wire mac22_n_77;
  wire mac22_n_78;
  wire mac22_n_79;
  wire mac22_n_80;
  wire mac22_n_81;
  wire mac22_n_82;
  wire mac22_n_83;
  wire mac22_n_84;
  wire mac22_n_85;
  wire mac22_n_86;
  wire mac22_n_87;
  wire mac22_n_88;
  wire mac22_n_89;
  wire mac22_n_90;
  wire mac22_n_91;
  wire mac22_n_92;
  wire mac22_n_93;
  wire mac22_n_94;
  wire mac22_n_95;
  wire mac22_n_96;
  wire mac22_n_97;
  wire mac22_n_98;
  wire mac22_n_99;
  wire mac23_n_16;
  wire mac23_n_17;
  wire mac23_n_18;
  wire mac23_n_19;
  wire mac23_n_20;
  wire mac23_n_21;
  wire mac23_n_22;
  wire mac23_n_23;
  wire mac23_n_24;
  wire mac23_n_25;
  wire mac23_n_26;
  wire mac23_n_27;
  wire mac23_n_28;
  wire mac23_n_29;
  wire mac23_n_30;
  wire mac23_n_31;
  wire mac23_n_32;
  wire mac23_n_33;
  wire mac23_n_34;
  wire mac23_n_35;
  wire mac23_n_36;
  wire mac23_n_37;
  wire mac23_n_38;
  wire mac23_n_39;
  wire mac23_n_40;
  wire mac23_n_41;
  wire mac23_n_42;
  wire mac23_n_43;
  wire mac23_n_44;
  wire mac23_n_45;
  wire mac23_n_46;
  wire mac23_n_47;
  wire mac23_n_48;
  wire mac23_n_49;
  wire mac23_n_50;
  wire mac23_n_51;
  wire mac23_n_52;
  wire mac23_n_53;
  wire mac23_n_54;
  wire mac23_n_55;
  wire mac23_n_56;
  wire mac23_n_57;
  wire mac23_n_58;
  wire mac23_n_59;
  wire mac23_n_60;
  wire mac23_n_61;
  wire mac23_n_62;
  wire mac23_n_63;
  wire mac23_n_64;
  wire mac23_n_65;
  wire mac23_n_66;
  wire mac23_n_67;
  wire mac23_n_68;
  wire mac23_n_69;
  wire mac23_n_70;
  wire mac23_n_71;
  wire mac23_n_72;
  wire mac23_n_73;
  wire mac23_n_74;
  wire mac23_n_75;
  wire mac23_n_76;
  wire mac23_n_77;
  wire mac23_n_78;
  wire mac23_n_79;
  wire mac23_n_80;
  wire mac23_n_81;
  wire mac31_n_16;
  wire mac31_n_17;
  wire mac31_n_18;
  wire mac31_n_19;
  wire mac31_n_20;
  wire mac31_n_21;
  wire mac31_n_22;
  wire mac31_n_23;
  wire mac31_n_24;
  wire mac31_n_25;
  wire mac31_n_26;
  wire mac31_n_27;
  wire mac31_n_28;
  wire mac31_n_29;
  wire mac31_n_30;
  wire mac31_n_31;
  wire mac31_n_32;
  wire mac31_n_33;
  wire mac31_n_34;
  wire mac31_n_35;
  wire mac31_n_36;
  wire mac31_n_37;
  wire mac31_n_38;
  wire mac31_n_39;
  wire mac31_n_40;
  wire mac31_n_41;
  wire mac31_n_42;
  wire mac31_n_43;
  wire mac31_n_44;
  wire mac31_n_45;
  wire mac31_n_46;
  wire mac31_n_47;
  wire mac31_n_48;
  wire mac31_n_49;
  wire mac31_n_50;
  wire mac31_n_51;
  wire mac31_n_52;
  wire mac31_n_53;
  wire mac31_n_54;
  wire mac31_n_55;
  wire mac31_n_56;
  wire mac32_n_16;
  wire mac32_n_17;
  wire mac32_n_18;
  wire mac32_n_19;
  wire mac32_n_20;
  wire mac32_n_21;
  wire mac32_n_22;
  wire mac32_n_23;
  wire mac32_n_24;
  wire mac32_n_25;
  wire mac32_n_26;
  wire mac32_n_27;
  wire mac32_n_28;
  wire mac32_n_29;
  wire mac32_n_30;
  wire mac32_n_31;
  wire mac32_n_32;
  wire mac32_n_33;
  wire mac32_n_34;
  wire mac32_n_35;
  wire mac32_n_36;
  wire mac32_n_37;
  wire mac32_n_38;
  wire mac32_n_39;
  wire mac32_n_40;
  wire mac32_n_41;
  wire mac32_n_42;
  wire mac32_n_43;
  wire mac32_n_44;
  wire mac32_n_45;
  wire mac32_n_46;
  wire mac32_n_47;
  wire mac32_n_48;
  wire mac32_n_49;
  wire mac32_n_50;
  wire mac32_n_51;
  wire mac32_n_52;
  wire mac32_n_53;
  wire mac32_n_54;
  wire mac32_n_55;
  wire mac32_n_56;
  wire mac33_n_19;
  wire mac33_n_20;
  wire mac33_n_21;
  wire mac33_n_22;
  wire mac33_n_23;
  wire mac33_n_24;
  wire mac33_n_25;
  wire mac33_n_26;
  wire mac33_n_27;
  wire [14:12]o_out1;
  wire [1:0]o_out1__30_carry__1_i_4;
  wire [2:0]o_out1__59_carry__0_i_8;
  wire [0:0]o_out1__59_carry__1_i_2;
  wire [1:0]o_out1__86_carry__0_i_3;
  wire [1:0]o_out1__86_carry__0_i_3_0;
  wire [3:0]o_out1__86_carry__0_i_4;
  wire [3:0]o_out1__86_carry__0_i_4_0;
  wire [3:0]o_out1__86_carry__0_i_6;
  wire [3:0]o_out1__86_carry__0_i_6_0;
  wire [0:0]o_out1__86_carry__1_i_3;
  wire [0:0]o_out1__86_carry__1_i_3_0;
  wire [2:0]o_out1__86_carry__1_i_5;
  wire [1:0]o_out1__86_carry__1_i_5_0;
  wire [1:0]o_out1__86_carry__1_i_5_1;
  wire [2:0]o_out1__86_carry_i_1;
  wire [3:0]o_out1__86_carry_i_1_0;
  wire [3:0]o_out1__86_carry_i_8;
  wire [3:0]o_out1__86_carry_i_8_0;
  wire [2:0]\o_out[3]_i_2 ;
  wire [3:0]\o_out[3]_i_2_0 ;
  wire [0:0]\o_out_reg[11] ;
  wire [0:0]\o_out_reg[15] ;
  wire [2:0]\o_out_reg[15]_0 ;
  wire [1:0]\o_x_reg[1] ;
  wire \o_x_reg[2] ;
  wire \o_x_reg[3] ;
  wire \o_x_reg[4] ;
  wire \o_x_reg[5] ;
  wire \o_x_reg[6] ;
  wire \o_x_reg[7] ;
  wire [7:0]o_y;
  wire [7:0]\o_y_reg[7] ;
  wire p_0_in;
  wire s_axis_valid;
  wire s_axis_valid_0;

  FDRE \a21_buffer_reg[0] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\a21_buffer_reg[7]_0 [0]),
        .Q(\a21_buffer_reg_n_0_[0] ),
        .R(p_0_in));
  FDRE \a21_buffer_reg[1] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\a21_buffer_reg[7]_0 [1]),
        .Q(\a21_buffer_reg_n_0_[1] ),
        .R(p_0_in));
  FDRE \a21_buffer_reg[2] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\a21_buffer_reg[7]_0 [2]),
        .Q(\a21_buffer_reg_n_0_[2] ),
        .R(p_0_in));
  FDRE \a21_buffer_reg[3] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\a21_buffer_reg[7]_0 [3]),
        .Q(\a21_buffer_reg_n_0_[3] ),
        .R(p_0_in));
  FDRE \a21_buffer_reg[4] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\a21_buffer_reg[7]_0 [4]),
        .Q(\a21_buffer_reg_n_0_[4] ),
        .R(p_0_in));
  FDRE \a21_buffer_reg[5] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\a21_buffer_reg[7]_0 [5]),
        .Q(\a21_buffer_reg_n_0_[5] ),
        .R(p_0_in));
  FDRE \a21_buffer_reg[6] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\a21_buffer_reg[7]_0 [6]),
        .Q(\a21_buffer_reg_n_0_[6] ),
        .R(p_0_in));
  FDRE \a21_buffer_reg[7] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\a21_buffer_reg[7]_0 [7]),
        .Q(\a21_buffer_reg_n_0_[7] ),
        .R(p_0_in));
  FDRE \a31_buffer1_reg[0] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\a31_buffer1_reg[7]_0 [0]),
        .Q(a31_buffer1[0]),
        .R(p_0_in));
  FDRE \a31_buffer1_reg[1] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\a31_buffer1_reg[7]_0 [1]),
        .Q(a31_buffer1[1]),
        .R(p_0_in));
  FDRE \a31_buffer1_reg[2] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\a31_buffer1_reg[7]_0 [2]),
        .Q(a31_buffer1[2]),
        .R(p_0_in));
  FDRE \a31_buffer1_reg[3] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\a31_buffer1_reg[7]_0 [3]),
        .Q(a31_buffer1[3]),
        .R(p_0_in));
  FDRE \a31_buffer1_reg[4] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\a31_buffer1_reg[7]_0 [4]),
        .Q(a31_buffer1[4]),
        .R(p_0_in));
  FDRE \a31_buffer1_reg[5] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\a31_buffer1_reg[7]_0 [5]),
        .Q(a31_buffer1[5]),
        .R(p_0_in));
  FDRE \a31_buffer1_reg[6] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\a31_buffer1_reg[7]_0 [6]),
        .Q(a31_buffer1[6]),
        .R(p_0_in));
  FDRE \a31_buffer1_reg[7] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\a31_buffer1_reg[7]_0 [7]),
        .Q(a31_buffer1[7]),
        .R(p_0_in));
  FDRE \a31_buffer2_reg[0] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(a31_buffer1[0]),
        .Q(\a31_buffer2_reg_n_0_[0] ),
        .R(p_0_in));
  FDRE \a31_buffer2_reg[1] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(a31_buffer1[1]),
        .Q(\a31_buffer2_reg_n_0_[1] ),
        .R(p_0_in));
  FDRE \a31_buffer2_reg[2] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(a31_buffer1[2]),
        .Q(\a31_buffer2_reg_n_0_[2] ),
        .R(p_0_in));
  FDRE \a31_buffer2_reg[3] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(a31_buffer1[3]),
        .Q(\a31_buffer2_reg_n_0_[3] ),
        .R(p_0_in));
  FDRE \a31_buffer2_reg[4] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(a31_buffer1[4]),
        .Q(\a31_buffer2_reg_n_0_[4] ),
        .R(p_0_in));
  FDRE \a31_buffer2_reg[5] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(a31_buffer1[5]),
        .Q(\a31_buffer2_reg_n_0_[5] ),
        .R(p_0_in));
  FDRE \a31_buffer2_reg[6] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(a31_buffer1[6]),
        .Q(\a31_buffer2_reg_n_0_[6] ),
        .R(p_0_in));
  FDRE \a31_buffer2_reg[7] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(a31_buffer1[7]),
        .Q(\a31_buffer2_reg_n_0_[7] ),
        .R(p_0_in));
  FDRE \b12_buffer_reg[0] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(b12_buffer[0]),
        .R(p_0_in));
  FDRE \b12_buffer_reg[1] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(b12_buffer[1]),
        .R(p_0_in));
  FDRE \b12_buffer_reg[2] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(b12_buffer[2]),
        .R(p_0_in));
  FDRE \b12_buffer_reg[3] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(b12_buffer[3]),
        .R(p_0_in));
  FDRE \b12_buffer_reg[4] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(b12_buffer[4]),
        .R(p_0_in));
  FDRE \b12_buffer_reg[5] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(D[5]),
        .Q(b12_buffer[5]),
        .R(p_0_in));
  FDRE \b12_buffer_reg[6] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(D[6]),
        .Q(b12_buffer[6]),
        .R(p_0_in));
  FDRE \b12_buffer_reg[7] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(D[7]),
        .Q(b12_buffer[7]),
        .R(p_0_in));
  FDRE \b13_buffer1_reg[0] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\b13_buffer1_reg[7]_0 [0]),
        .Q(b13_buffer1[0]),
        .R(p_0_in));
  FDRE \b13_buffer1_reg[1] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\b13_buffer1_reg[7]_0 [1]),
        .Q(b13_buffer1[1]),
        .R(p_0_in));
  FDRE \b13_buffer1_reg[2] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\b13_buffer1_reg[7]_0 [2]),
        .Q(b13_buffer1[2]),
        .R(p_0_in));
  FDRE \b13_buffer1_reg[3] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\b13_buffer1_reg[7]_0 [3]),
        .Q(b13_buffer1[3]),
        .R(p_0_in));
  FDRE \b13_buffer1_reg[4] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\b13_buffer1_reg[7]_0 [4]),
        .Q(b13_buffer1[4]),
        .R(p_0_in));
  FDRE \b13_buffer1_reg[5] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\b13_buffer1_reg[7]_0 [5]),
        .Q(b13_buffer1[5]),
        .R(p_0_in));
  FDRE \b13_buffer1_reg[6] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\b13_buffer1_reg[7]_0 [6]),
        .Q(b13_buffer1[6]),
        .R(p_0_in));
  FDRE \b13_buffer1_reg[7] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(\b13_buffer1_reg[7]_0 [7]),
        .Q(b13_buffer1[7]),
        .R(p_0_in));
  FDRE \b13_buffer2_reg[0] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(b13_buffer1[0]),
        .Q(b13_buffer2[0]),
        .R(p_0_in));
  FDRE \b13_buffer2_reg[1] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(b13_buffer1[1]),
        .Q(b13_buffer2[1]),
        .R(p_0_in));
  FDRE \b13_buffer2_reg[2] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(b13_buffer1[2]),
        .Q(b13_buffer2[2]),
        .R(p_0_in));
  FDRE \b13_buffer2_reg[3] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(b13_buffer1[3]),
        .Q(b13_buffer2[3]),
        .R(p_0_in));
  FDRE \b13_buffer2_reg[4] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(b13_buffer1[4]),
        .Q(b13_buffer2[4]),
        .R(p_0_in));
  FDRE \b13_buffer2_reg[5] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(b13_buffer1[5]),
        .Q(b13_buffer2[5]),
        .R(p_0_in));
  FDRE \b13_buffer2_reg[6] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(b13_buffer1[6]),
        .Q(b13_buffer2[6]),
        .R(p_0_in));
  FDRE \b13_buffer2_reg[7] 
       (.C(axi_clk),
        .CE(1'b1),
        .D(b13_buffer1[7]),
        .Q(b13_buffer2[7]),
        .R(p_0_in));
  design_1_SystolicArrayAxiWrap_0_0_MAC mac11
       (.CO(CO),
        .D({\o_x_reg[7] ,\o_x_reg[6] ,\o_x_reg[5] ,\o_x_reg[4] ,\o_x_reg[3] ,\o_x_reg[2] ,\o_x_reg[1] }),
        .DI(DI),
        .E(E),
        .\FSM_sequential_PS_reg[0] (\FSM_sequential_PS_reg[0] ),
        .O(O),
        .PS(PS),
        .Q(A),
        .S(S),
        .\a21_buffer_reg[1] ({mac11_n_38,mac11_n_39,mac11_n_40,mac11_n_41}),
        .\a21_buffer_reg[1]_0 ({mac11_n_106,mac11_n_107,mac11_n_108,mac11_n_109}),
        .\a21_buffer_reg[1]_1 ({mac11_n_112,mac11_n_113,mac11_n_114,mac11_n_115}),
        .\a21_buffer_reg[3] ({mac11_n_91,mac11_n_92,mac11_n_93}),
        .\a21_buffer_reg[5] ({mac11_n_162,mac11_n_163,mac11_n_164,mac11_n_165}),
        .axi_clk(axi_clk),
        .axi_rst_n(axi_rst_n),
        .\b12_buffer_reg[1] ({mac11_n_130,mac11_n_131,mac11_n_132,mac11_n_133}),
        .\b12_buffer_reg[1]_0 ({mac11_n_134,mac11_n_135}),
        .\b12_buffer_reg[2] ({mac11_n_53,mac11_n_54,mac11_n_55,mac11_n_56}),
        .\b12_buffer_reg[2]_0 ({mac11_n_70,mac11_n_71}),
        .\b12_buffer_reg[3] ({mac11_n_64,mac11_n_65,mac11_n_66}),
        .\b12_buffer_reg[4] ({mac11_n_136,mac11_n_137,mac11_n_138,mac11_n_139}),
        .\b12_buffer_reg[4]_0 ({mac11_n_140,mac11_n_141}),
        .\b12_buffer_reg[5] ({mac11_n_60,mac11_n_61,mac11_n_62,mac11_n_63}),
        .\b12_buffer_reg[5]_0 ({mac11_n_76,mac11_n_77}),
        .\b12_buffer_reg[6] (mac11_n_146),
        .\b12_buffer_reg[7] ({mac11_n_67,mac11_n_68,mac11_n_69}),
        .\b12_buffer_reg[7]_0 ({mac11_n_82,mac11_n_83,mac11_n_84,mac11_n_85}),
        .\b12_buffer_reg[7]_1 (mac11_n_86),
        .m_axis_data(m_axis_data[15:0]),
        .m_axis_ready(m_axis_ready),
        .o_out1__30_carry__1_i_4(o_out1__30_carry__1_i_4),
        .o_out1__59_carry__0_i_8(o_out1__59_carry__0_i_8),
        .o_out1__59_carry__1_0({mac11_n_147,mac11_n_148,mac11_n_149}),
        .o_out1__59_carry__1_1({mac11_n_167,mac11_n_168,mac11_n_169}),
        .o_out1__59_carry__1_2(b12_buffer),
        .o_out1__59_carry__1_3({\a21_buffer_reg_n_0_[7] ,\a21_buffer_reg_n_0_[6] ,\a21_buffer_reg_n_0_[5] ,\a21_buffer_reg_n_0_[4] ,\a21_buffer_reg_n_0_[3] ,\a21_buffer_reg_n_0_[2] ,\a21_buffer_reg_n_0_[1] ,\a21_buffer_reg_n_0_[0] }),
        .o_out1__59_carry__1_i_2(o_out1__59_carry__1_i_2),
        .o_out1__86_carry__0_i_3_0(o_out1__86_carry__0_i_3),
        .o_out1__86_carry__0_i_3_1(o_out1__86_carry__0_i_3_0),
        .o_out1__86_carry__0_i_4_0(o_out1__86_carry__0_i_4),
        .o_out1__86_carry__0_i_4_1(o_out1__86_carry__0_i_4_0),
        .o_out1__86_carry__0_i_6_0(o_out1__86_carry__0_i_6),
        .o_out1__86_carry__0_i_6_1(o_out1__86_carry__0_i_6_0),
        .o_out1__86_carry__1_0({mac12_n_17,mac12_n_18}),
        .o_out1__86_carry__1_1({mac12_n_19,mac12_n_20,mac12_n_21}),
        .o_out1__86_carry__1_2(mac12_n_16),
        .o_out1__86_carry__1_3(mac12_n_22),
        .o_out1__86_carry__1_4({mac21_n_17,mac21_n_18}),
        .o_out1__86_carry__1_5({mac21_n_19,mac21_n_20,mac21_n_21}),
        .o_out1__86_carry__1_6(mac21_n_16),
        .o_out1__86_carry__1_7(mac21_n_22),
        .o_out1__86_carry__1_i_3(o_out1__86_carry__1_i_3),
        .o_out1__86_carry__1_i_3_0(o_out1__86_carry__1_i_3_0),
        .o_out1__86_carry__1_i_5(o_out1__86_carry__1_i_5),
        .o_out1__86_carry__1_i_5_0(o_out1__86_carry__1_i_5_0),
        .o_out1__86_carry__1_i_5_1(o_out1__86_carry__1_i_5_1),
        .o_out1__86_carry_i_1_0(o_out1__86_carry_i_1),
        .o_out1__86_carry_i_1_1(o_out1__86_carry_i_1_0),
        .o_out1__86_carry_i_8_0(o_out1__86_carry_i_8),
        .o_out1__86_carry_i_8_1(o_out1__86_carry_i_8_0),
        .\o_out[3]_i_2_0 (\o_out[3]_i_2 ),
        .\o_out[3]_i_2_1 (\o_out[3]_i_2_0 ),
        .\o_out_reg[11]_0 (\o_out_reg[11] ),
        .\o_out_reg[15]_0 (\o_out_reg[15] ),
        .\o_out_reg[15]_1 ({mac11_n_122,mac11_n_123,mac11_n_124,mac11_n_125}),
        .\o_out_reg[15]_10 ({m_axis_data[62:60],m_axis_data[30:28]}),
        .\o_out_reg[15]_2 ({mac11_n_126,mac11_n_127,mac11_n_128,mac11_n_129}),
        .\o_out_reg[15]_3 (\o_out_reg[15]_0 ),
        .\o_out_reg[15]_4 (mac12_n_94),
        .\o_out_reg[15]_5 ({mac12_n_23,mac12_n_24,mac12_n_25}),
        .\o_out_reg[15]_6 (mac12_n_30),
        .\o_out_reg[15]_7 (mac21_n_87),
        .\o_out_reg[15]_8 ({mac21_n_23,mac21_n_24,mac21_n_25}),
        .\o_out_reg[15]_9 (mac21_n_40),
        .\o_x_reg[1]_0 ({mac11_n_26,mac11_n_27,mac11_n_28,mac11_n_29}),
        .\o_x_reg[1]_1 ({mac11_n_72,mac11_n_73,mac11_n_74,mac11_n_75}),
        .\o_x_reg[1]_2 ({mac11_n_78,mac11_n_79,mac11_n_80,mac11_n_81}),
        .\o_x_reg[3]_0 ({mac11_n_57,mac11_n_58,mac11_n_59}),
        .\o_x_reg[5]_0 ({mac11_n_142,mac11_n_143,mac11_n_144,mac11_n_145}),
        .\o_y_reg[1]_0 ({mac11_n_150,mac11_n_151,mac11_n_152,mac11_n_153}),
        .\o_y_reg[1]_1 ({mac11_n_154,mac11_n_155}),
        .\o_y_reg[2]_0 ({mac11_n_87,mac11_n_88,mac11_n_89,mac11_n_90}),
        .\o_y_reg[2]_1 ({mac11_n_104,mac11_n_105}),
        .\o_y_reg[3]_0 ({mac11_n_98,mac11_n_99,mac11_n_100}),
        .\o_y_reg[4]_0 ({mac11_n_156,mac11_n_157,mac11_n_158,mac11_n_159}),
        .\o_y_reg[4]_1 ({mac11_n_160,mac11_n_161}),
        .\o_y_reg[5]_0 ({mac11_n_94,mac11_n_95,mac11_n_96,mac11_n_97}),
        .\o_y_reg[5]_1 ({mac11_n_110,mac11_n_111}),
        .\o_y_reg[6]_0 (mac11_n_166),
        .\o_y_reg[7]_0 (o_y),
        .\o_y_reg[7]_1 ({mac11_n_101,mac11_n_102,mac11_n_103}),
        .\o_y_reg[7]_2 ({mac11_n_116,mac11_n_117,mac11_n_118,mac11_n_119}),
        .\o_y_reg[7]_3 (mac11_n_120),
        .\o_y_reg[7]_4 (\o_y_reg[7] ),
        .p_0_in(p_0_in),
        .s_axis_valid(s_axis_valid),
        .s_axis_valid_0(s_axis_valid_0));
  design_1_SystolicArrayAxiWrap_0_0_MAC_1 mac12
       (.CO(mac13_n_56),
        .D(A),
        .DI({mac12_n_31,mac12_n_32,mac12_n_33,mac12_n_34}),
        .O({mac12_n_95,mac12_n_96,mac12_n_97,mac12_n_98}),
        .Q(b13_buffer2),
        .S({mac12_n_26,mac12_n_27,mac12_n_28,mac12_n_29}),
        .axi_clk(axi_clk),
        .\b12_buffer_reg[5] (mac12_n_16),
        .\b12_buffer_reg[5]_0 ({mac12_n_17,mac12_n_18}),
        .\b12_buffer_reg[7] ({mac12_n_19,mac12_n_20,mac12_n_21}),
        .\b12_buffer_reg[7]_0 (mac12_n_22),
        .\b13_buffer2_reg[1] ({mac12_n_103,mac12_n_104,mac12_n_105,mac12_n_106}),
        .\b13_buffer2_reg[1]_0 ({mac12_n_107,mac12_n_108}),
        .\b13_buffer2_reg[2] ({mac12_n_48,mac12_n_49}),
        .\b13_buffer2_reg[3] ({mac12_n_42,mac12_n_43,mac12_n_44}),
        .\b13_buffer2_reg[4] ({mac12_n_109,mac12_n_110,mac12_n_111,mac12_n_112}),
        .\b13_buffer2_reg[4]_0 ({mac12_n_113,mac12_n_114}),
        .\b13_buffer2_reg[5] ({mac12_n_38,mac12_n_39,mac12_n_40,mac12_n_41}),
        .\b13_buffer2_reg[5]_0 ({mac12_n_54,mac12_n_55}),
        .\b13_buffer2_reg[6] (mac12_n_119),
        .\b13_buffer2_reg[7] ({mac12_n_45,mac12_n_46,mac12_n_47}),
        .\b13_buffer2_reg[7]_0 ({mac12_n_60,mac12_n_61,mac12_n_62,mac12_n_63}),
        .\b13_buffer2_reg[7]_1 (mac12_n_64),
        .m_axis_data(m_axis_data[31:16]),
        .o_out1__0_carry__0_0(mac21_n_45),
        .o_out1__30_carry__0_0(mac21_n_47),
        .o_out1__30_carry__0_1(mac21_n_48),
        .o_out1__30_carry__0_2(mac21_n_50),
        .o_out1__30_carry__0_3(mac21_n_49),
        .o_out1__59_carry__1_0({mac12_n_120,mac12_n_121,mac12_n_122}),
        .o_out1__59_carry__1_1({mac12_n_141,mac12_n_142,mac12_n_143}),
        .o_out1__59_carry__1_2({mac21_n_28,mac21_n_29,mac21_n_30,mac21_n_31,mac21_n_32,mac21_n_33,mac21_n_34,mac21_n_35}),
        .o_out1__86_carry__0_i_3__0_0({mac11_n_70,mac11_n_71}),
        .o_out1__86_carry__0_i_3__0_1({mac11_n_134,mac11_n_135}),
        .o_out1__86_carry__0_i_4__0_0({mac11_n_60,mac11_n_61,mac11_n_62,mac11_n_63}),
        .o_out1__86_carry__0_i_4__0_1({mac11_n_136,mac11_n_137,mac11_n_138,mac11_n_139}),
        .o_out1__86_carry__0_i_6__0_0({mac11_n_82,mac11_n_83,mac11_n_84,mac11_n_85}),
        .o_out1__86_carry__0_i_6__0_1({mac11_n_142,mac11_n_143,mac11_n_144,mac11_n_145}),
        .o_out1__86_carry__1_0({mac13_n_17,mac13_n_18}),
        .o_out1__86_carry__1_1({mac13_n_19,mac13_n_20,mac13_n_21}),
        .o_out1__86_carry__1_2(mac13_n_16),
        .o_out1__86_carry__1_3(mac13_n_22),
        .o_out1__86_carry__1_4({mac22_n_17,mac22_n_18}),
        .o_out1__86_carry__1_5({mac22_n_19,mac22_n_20,mac22_n_21}),
        .o_out1__86_carry__1_6(mac22_n_16),
        .o_out1__86_carry__1_7(mac22_n_22),
        .o_out1__86_carry__1_i_3__0(mac11_n_86),
        .o_out1__86_carry__1_i_3__0_0(mac11_n_146),
        .o_out1__86_carry__1_i_5__0({mac12_n_23,mac12_n_24,mac12_n_25}),
        .o_out1__86_carry__1_i_5__0_0({mac11_n_76,mac11_n_77}),
        .o_out1__86_carry__1_i_5__0_1({mac11_n_140,mac11_n_141}),
        .o_out1__86_carry_i_1__0_0({mac11_n_67,mac11_n_68,mac11_n_69}),
        .o_out1__86_carry_i_1__0_1({mac11_n_26,mac11_n_27,mac11_n_28,mac11_n_29}),
        .o_out1__86_carry_i_8__0_0({mac11_n_53,mac11_n_54,mac11_n_55,mac11_n_56}),
        .o_out1__86_carry_i_8__0_1({mac11_n_130,mac11_n_131,mac11_n_132,mac11_n_133}),
        .\o_out[3]_i_2__0_0 ({mac11_n_64,mac11_n_65,mac11_n_66}),
        .\o_out[3]_i_2__0_1 ({mac11_n_78,mac11_n_79,mac11_n_80,mac11_n_81}),
        .\o_out_reg[11]_0 (mac12_n_94),
        .\o_out_reg[15]_0 (mac12_n_30),
        .\o_out_reg[15]_1 ({mac12_n_99,mac12_n_100,mac12_n_101,mac12_n_102}),
        .\o_out_reg[15]_2 ({mac11_n_122,mac11_n_123,mac11_n_124,mac11_n_125}),
        .\o_out_reg[15]_3 ({mac11_n_147,mac11_n_148,mac11_n_149}),
        .\o_out_reg[15]_4 ({mac13_n_23,mac13_n_24,mac13_n_25}),
        .\o_out_reg[15]_5 (mac13_n_26),
        .\o_out_reg[15]_6 (mac22_n_78),
        .\o_out_reg[15]_7 ({mac22_n_23,mac22_n_24,mac22_n_25}),
        .\o_out_reg[15]_8 (mac22_n_36),
        .\o_out_reg[15]_9 ({m_axis_data[78:76],m_axis_data[46:44]}),
        .\o_out_reg[3]_0 ({mac11_n_57,mac11_n_58,mac11_n_59}),
        .\o_out_reg[3]_1 ({mac11_n_72,mac11_n_73,mac11_n_74,mac11_n_75}),
        .\o_x_reg[1]_0 ({mac12_n_50,mac12_n_51,mac12_n_52,mac12_n_53}),
        .\o_x_reg[1]_1 ({mac12_n_56,mac12_n_57,mac12_n_58,mac12_n_59}),
        .\o_x_reg[1]_2 ({mac12_n_130,mac12_n_131}),
        .\o_x_reg[3]_0 ({mac12_n_35,mac12_n_36,mac12_n_37}),
        .\o_x_reg[5]_0 ({mac12_n_115,mac12_n_116,mac12_n_117,mac12_n_118}),
        .\o_y_reg[0]_0 (mac12_n_86),
        .\o_y_reg[1]_0 (mac12_n_123),
        .\o_y_reg[1]_1 ({mac12_n_124,mac12_n_125,mac12_n_126,mac12_n_127}),
        .\o_y_reg[1]_2 ({mac12_n_128,mac12_n_129}),
        .\o_y_reg[2]_0 ({mac12_n_65,mac12_n_66,mac12_n_67,mac12_n_68}),
        .\o_y_reg[2]_1 ({mac12_n_84,mac12_n_85}),
        .\o_y_reg[3]_0 ({mac12_n_81,mac12_n_82}),
        .\o_y_reg[4]_0 ({mac12_n_132,mac12_n_133,mac12_n_134,mac12_n_135}),
        .\o_y_reg[4]_1 ({mac12_n_136,mac12_n_137}),
        .\o_y_reg[5]_0 ({mac12_n_77,mac12_n_78,mac12_n_79,mac12_n_80}),
        .\o_y_reg[5]_1 ({mac12_n_87,mac12_n_88}),
        .\o_y_reg[6]_0 (mac12_n_140),
        .\o_y_reg[7]_0 ({mac12_n_69,mac12_n_70,mac12_n_71,mac12_n_72,mac12_n_73,mac12_n_74,mac12_n_75,mac12_n_76}),
        .\o_y_reg[7]_1 (mac12_n_83),
        .\o_y_reg[7]_2 ({mac12_n_89,mac12_n_90,mac12_n_91,mac12_n_92}),
        .\o_y_reg[7]_3 (mac12_n_93),
        .\o_y_reg[7]_4 ({mac12_n_138,mac12_n_139}),
        .\o_y_reg[7]_5 (b12_buffer),
        .p_0_in(p_0_in));
  design_1_SystolicArrayAxiWrap_0_0_MAC_2 mac13
       (.CO(mac13_n_56),
        .DI({mac12_n_31,mac12_n_32,mac12_n_33,mac12_n_34}),
        .O({mac12_n_95,mac12_n_96,mac12_n_97,mac12_n_98}),
        .Q({mac13_n_31,mac13_n_32,mac13_n_33,mac13_n_34,mac13_n_35,mac13_n_36,mac13_n_37,mac13_n_38}),
        .S({mac12_n_26,mac12_n_27,mac12_n_28,mac12_n_29}),
        .axi_clk(axi_clk),
        .\b13_buffer2_reg[5] (mac13_n_16),
        .\b13_buffer2_reg[5]_0 ({mac13_n_17,mac13_n_18}),
        .\b13_buffer2_reg[7] ({mac13_n_19,mac13_n_20,mac13_n_21}),
        .\b13_buffer2_reg[7]_0 (mac13_n_22),
        .m_axis_data(m_axis_data[47:32]),
        .o_out1__0_carry__0_0(mac22_n_41),
        .o_out1__30_carry__0_0(mac22_n_43),
        .o_out1__30_carry__0_1(mac22_n_44),
        .o_out1__30_carry__0_2(mac22_n_46),
        .o_out1__30_carry__0_3(mac22_n_45),
        .o_out1__59_carry__1_0({mac13_n_79,mac13_n_80,mac13_n_81}),
        .o_out1__59_carry__1_1({mac22_n_28,mac22_n_29,mac22_n_30,mac22_n_31,mac22_n_32,mac22_n_33,mac22_n_34,mac22_n_35}),
        .o_out1__86_carry__0_i_3__1_0({mac12_n_48,mac12_n_49}),
        .o_out1__86_carry__0_i_3__1_1({mac12_n_107,mac12_n_108}),
        .o_out1__86_carry__0_i_4__1_0({mac12_n_38,mac12_n_39,mac12_n_40,mac12_n_41}),
        .o_out1__86_carry__0_i_4__1_1({mac12_n_109,mac12_n_110,mac12_n_111,mac12_n_112}),
        .o_out1__86_carry__0_i_6__1_0({mac12_n_60,mac12_n_61,mac12_n_62,mac12_n_63}),
        .o_out1__86_carry__0_i_6__1_1({mac12_n_115,mac12_n_116,mac12_n_117,mac12_n_118}),
        .o_out1__86_carry__1_0({mac23_n_17,mac23_n_18}),
        .o_out1__86_carry__1_1({mac23_n_19,mac23_n_20,mac23_n_21}),
        .o_out1__86_carry__1_2(mac23_n_16),
        .o_out1__86_carry__1_3(mac23_n_22),
        .o_out1__86_carry__1_i_3__1(mac12_n_64),
        .o_out1__86_carry__1_i_3__1_0(mac12_n_119),
        .o_out1__86_carry__1_i_5__1({mac13_n_23,mac13_n_24,mac13_n_25}),
        .o_out1__86_carry__1_i_5__1_0({mac12_n_54,mac12_n_55}),
        .o_out1__86_carry__1_i_5__1_1({mac12_n_113,mac12_n_114}),
        .o_out1__86_carry_i_1__1_0({mac12_n_45,mac12_n_46,mac12_n_47}),
        .o_out1__86_carry_i_8__1_0({mac12_n_103,mac12_n_104,mac12_n_105,mac12_n_106}),
        .\o_out[3]_i_2__1_0 ({mac12_n_42,mac12_n_43,mac12_n_44}),
        .\o_out[3]_i_2__1_1 ({mac12_n_56,mac12_n_57,mac12_n_58,mac12_n_59}),
        .\o_out_reg[15]_0 (mac13_n_26),
        .\o_out_reg[15]_1 ({mac13_n_57,mac13_n_58,mac13_n_59,mac13_n_60}),
        .\o_out_reg[15]_2 ({mac12_n_120,mac12_n_121,mac12_n_122}),
        .\o_out_reg[15]_3 (mac23_n_56),
        .\o_out_reg[15]_4 ({mac23_n_23,mac23_n_24,mac23_n_25}),
        .\o_out_reg[15]_5 (mac23_n_26),
        .\o_out_reg[15]_6 (m_axis_data[94:92]),
        .\o_out_reg[3]_0 ({mac12_n_35,mac12_n_36,mac12_n_37}),
        .\o_out_reg[3]_1 ({mac12_n_50,mac12_n_51,mac12_n_52,mac12_n_53}),
        .\o_x_reg[1] ({mac13_n_68,mac13_n_69}),
        .\o_y_reg[0]_0 (mac13_n_48),
        .\o_y_reg[1]_0 (mac13_n_61),
        .\o_y_reg[1]_1 ({mac13_n_62,mac13_n_63,mac13_n_64,mac13_n_65}),
        .\o_y_reg[1]_2 ({mac13_n_66,mac13_n_67}),
        .\o_y_reg[2]_0 ({mac13_n_27,mac13_n_28,mac13_n_29,mac13_n_30}),
        .\o_y_reg[2]_1 ({mac13_n_46,mac13_n_47}),
        .\o_y_reg[3]_0 ({mac13_n_43,mac13_n_44}),
        .\o_y_reg[4]_0 ({mac13_n_70,mac13_n_71,mac13_n_72,mac13_n_73}),
        .\o_y_reg[4]_1 ({mac13_n_74,mac13_n_75}),
        .\o_y_reg[5]_0 ({mac13_n_39,mac13_n_40,mac13_n_41,mac13_n_42}),
        .\o_y_reg[5]_1 ({mac13_n_49,mac13_n_50}),
        .\o_y_reg[6]_0 (mac13_n_78),
        .\o_y_reg[7]_0 (mac13_n_45),
        .\o_y_reg[7]_1 ({mac13_n_51,mac13_n_52,mac13_n_53,mac13_n_54}),
        .\o_y_reg[7]_2 (mac13_n_55),
        .\o_y_reg[7]_3 ({mac13_n_76,mac13_n_77}),
        .\o_y_reg[7]_4 (b13_buffer2),
        .p_0_in(p_0_in));
  design_1_SystolicArrayAxiWrap_0_0_MAC_3 mac21
       (.CO(mac31_n_49),
        .D(o_y),
        .DI({mac21_n_41,mac21_n_42}),
        .O({mac21_n_88,mac21_n_89,mac21_n_90,mac21_n_91}),
        .Q({mac21_n_28,mac21_n_29,mac21_n_30,mac21_n_31,mac21_n_32,mac21_n_33,mac21_n_34,mac21_n_35}),
        .S({mac21_n_26,mac21_n_27}),
        .\a31_buffer2_reg[1] ({mac21_n_36,mac21_n_37,mac21_n_38,mac21_n_39}),
        .\a31_buffer2_reg[1]_0 ({mac21_n_72,mac21_n_73,mac21_n_74,mac21_n_75}),
        .\a31_buffer2_reg[1]_1 ({mac21_n_78,mac21_n_79,mac21_n_80,mac21_n_81}),
        .\a31_buffer2_reg[3] ({mac21_n_57,mac21_n_58,mac21_n_59}),
        .\a31_buffer2_reg[5] ({mac21_n_111,mac21_n_112,mac21_n_113,mac21_n_114}),
        .axi_clk(axi_clk),
        .m_axis_data(m_axis_data[63:48]),
        .o_out1__59_carry_0({mac12_n_69,mac12_n_70,mac12_n_71,mac12_n_72,mac12_n_73,mac12_n_74,mac12_n_75,mac12_n_76}),
        .o_out1__59_carry__1_0({mac21_n_116,mac21_n_117,mac21_n_118}),
        .o_out1__59_carry__1_1({\a31_buffer2_reg_n_0_[7] ,\a31_buffer2_reg_n_0_[6] ,\a31_buffer2_reg_n_0_[5] ,\a31_buffer2_reg_n_0_[4] ,\a31_buffer2_reg_n_0_[3] ,\a31_buffer2_reg_n_0_[2] ,\a31_buffer2_reg_n_0_[1] ,\a31_buffer2_reg_n_0_[0] }),
        .o_out1__86_carry__0_i_3__2_0({mac11_n_104,mac11_n_105}),
        .o_out1__86_carry__0_i_3__2_1({mac11_n_154,mac11_n_155}),
        .o_out1__86_carry__0_i_4__2_0({mac11_n_94,mac11_n_95,mac11_n_96,mac11_n_97}),
        .o_out1__86_carry__0_i_4__2_1({mac11_n_156,mac11_n_157,mac11_n_158,mac11_n_159}),
        .o_out1__86_carry__0_i_6__2_0({mac11_n_116,mac11_n_117,mac11_n_118,mac11_n_119}),
        .o_out1__86_carry__0_i_6__2_1({mac11_n_162,mac11_n_163,mac11_n_164,mac11_n_165}),
        .o_out1__86_carry__1_0({mac31_n_17,mac31_n_18}),
        .o_out1__86_carry__1_1({mac31_n_19,mac31_n_20,mac31_n_21}),
        .o_out1__86_carry__1_2(mac31_n_16),
        .o_out1__86_carry__1_3(mac31_n_22),
        .o_out1__86_carry__1_i_3__2(mac11_n_120),
        .o_out1__86_carry__1_i_3__2_0(mac11_n_166),
        .o_out1__86_carry__1_i_5__2({mac21_n_23,mac21_n_24,mac21_n_25}),
        .o_out1__86_carry__1_i_5__2_0({mac11_n_110,mac11_n_111}),
        .o_out1__86_carry__1_i_5__2_1({mac11_n_160,mac11_n_161}),
        .o_out1__86_carry_i_1__2_0({mac11_n_101,mac11_n_102,mac11_n_103}),
        .o_out1__86_carry_i_1__2_1({mac11_n_38,mac11_n_39,mac11_n_40,mac11_n_41}),
        .o_out1__86_carry_i_8__2_0({mac11_n_87,mac11_n_88,mac11_n_89,mac11_n_90}),
        .o_out1__86_carry_i_8__2_1({mac11_n_150,mac11_n_151,mac11_n_152,mac11_n_153}),
        .\o_out[3]_i_2__2_0 ({mac11_n_98,mac11_n_99,mac11_n_100}),
        .\o_out[3]_i_2__2_1 ({mac11_n_112,mac11_n_113,mac11_n_114,mac11_n_115}),
        .\o_out_reg[11]_0 (mac21_n_87),
        .\o_out_reg[15]_0 (mac21_n_40),
        .\o_out_reg[15]_1 ({mac11_n_126,mac11_n_127,mac11_n_128,mac11_n_129}),
        .\o_out_reg[15]_2 ({mac11_n_167,mac11_n_168,mac11_n_169}),
        .\o_out_reg[15]_3 ({mac31_n_23,mac31_n_24,mac31_n_25}),
        .\o_out_reg[15]_4 (mac31_n_36),
        .\o_out_reg[15]_5 (m_axis_data[110:108]),
        .\o_out_reg[3]_0 ({mac11_n_91,mac11_n_92,mac11_n_93}),
        .\o_out_reg[3]_1 ({mac11_n_106,mac11_n_107,mac11_n_108,mac11_n_109}),
        .\o_x_reg[0]_0 (mac21_n_46),
        .\o_x_reg[0]_1 ({mac21_n_51,mac21_n_52}),
        .\o_x_reg[1]_0 ({mac21_n_43,mac21_n_44}),
        .\o_x_reg[1]_1 ({mac21_n_92,mac21_n_93,mac21_n_94}),
        .\o_x_reg[4]_0 (mac21_n_47),
        .\o_x_reg[5]_0 (mac21_n_45),
        .\o_x_reg[5]_1 (mac21_n_48),
        .\o_x_reg[5]_2 (mac21_n_49),
        .\o_x_reg[5]_3 ({mac21_n_95,mac21_n_96,mac21_n_97,mac21_n_98}),
        .\o_x_reg[6]_0 (mac21_n_50),
        .\o_x_reg[7]_0 ({\a21_buffer_reg_n_0_[7] ,\a21_buffer_reg_n_0_[6] ,\a21_buffer_reg_n_0_[5] ,\a21_buffer_reg_n_0_[4] ,\a21_buffer_reg_n_0_[3] ,\a21_buffer_reg_n_0_[2] ,\a21_buffer_reg_n_0_[1] ,\a21_buffer_reg_n_0_[0] }),
        .\o_y_reg[1]_0 ({mac21_n_99,mac21_n_100,mac21_n_101,mac21_n_102}),
        .\o_y_reg[1]_1 ({mac21_n_103,mac21_n_104}),
        .\o_y_reg[2]_0 ({mac21_n_53,mac21_n_54,mac21_n_55,mac21_n_56}),
        .\o_y_reg[2]_1 ({mac21_n_70,mac21_n_71}),
        .\o_y_reg[3]_0 ({mac21_n_64,mac21_n_65,mac21_n_66}),
        .\o_y_reg[4]_0 ({mac21_n_105,mac21_n_106,mac21_n_107,mac21_n_108}),
        .\o_y_reg[4]_1 ({mac21_n_109,mac21_n_110}),
        .\o_y_reg[5]_0 (mac21_n_16),
        .\o_y_reg[5]_1 ({mac21_n_17,mac21_n_18}),
        .\o_y_reg[5]_2 ({mac21_n_60,mac21_n_61,mac21_n_62,mac21_n_63}),
        .\o_y_reg[5]_3 ({mac21_n_76,mac21_n_77}),
        .\o_y_reg[6]_0 (mac21_n_115),
        .\o_y_reg[7]_0 ({mac21_n_19,mac21_n_20,mac21_n_21}),
        .\o_y_reg[7]_1 (mac21_n_22),
        .\o_y_reg[7]_2 ({mac21_n_67,mac21_n_68,mac21_n_69}),
        .\o_y_reg[7]_3 ({mac21_n_82,mac21_n_83,mac21_n_84,mac21_n_85}),
        .\o_y_reg[7]_4 (mac21_n_86),
        .p_0_in(p_0_in));
  design_1_SystolicArrayAxiWrap_0_0_MAC_4 mac22
       (.CO(mac32_n_49),
        .D({mac21_n_28,mac21_n_29,mac21_n_30,mac21_n_31,mac21_n_32,mac21_n_33,mac21_n_34,mac21_n_35}),
        .DI({mac21_n_41,mac12_n_123,mac21_n_42}),
        .O({mac22_n_79,mac22_n_80,mac22_n_81,mac22_n_82}),
        .Q({mac22_n_28,mac22_n_29,mac22_n_30,mac22_n_31,mac22_n_32,mac22_n_33,mac22_n_34,mac22_n_35}),
        .S({mac21_n_92,mac21_n_93,mac21_n_94,mac12_n_86}),
        .axi_clk(axi_clk),
        .m_axis_data(m_axis_data[79:64]),
        .o_out1__0_carry__0_0(mac31_n_41),
        .o_out1__30_carry__0_0(mac31_n_43),
        .o_out1__30_carry__0_1(mac31_n_44),
        .o_out1__30_carry__0_2(mac31_n_46),
        .o_out1__30_carry__0_3(mac31_n_45),
        .o_out1__59_carry_0({mac13_n_31,mac13_n_32,mac13_n_33,mac13_n_34,mac13_n_35,mac13_n_36,mac13_n_37,mac13_n_38}),
        .o_out1__59_carry__1_0({mac22_n_108,mac22_n_109,mac22_n_110}),
        .o_out1__59_carry__1_1({mac31_n_28,mac31_n_29,mac31_n_30,mac31_n_31,mac31_n_32,mac31_n_33,mac31_n_34,mac31_n_35}),
        .o_out1__86_carry__0_i_3__3_0({mac12_n_84,mac12_n_85}),
        .o_out1__86_carry__0_i_3__3_1({mac12_n_128,mac12_n_129}),
        .o_out1__86_carry__0_i_4__3_0({mac12_n_77,mac12_n_78,mac12_n_79,mac12_n_80}),
        .o_out1__86_carry__0_i_4__3_1({mac12_n_132,mac12_n_133,mac12_n_134,mac12_n_135}),
        .o_out1__86_carry__0_i_6__3_0({mac12_n_89,mac12_n_90,mac12_n_91,mac12_n_92}),
        .o_out1__86_carry__0_i_6__3_1({mac21_n_95,mac21_n_96,mac21_n_97,mac21_n_98}),
        .o_out1__86_carry__1_0({mac32_n_17,mac32_n_18}),
        .o_out1__86_carry__1_1({mac32_n_19,mac32_n_20,mac32_n_21}),
        .o_out1__86_carry__1_2(mac32_n_16),
        .o_out1__86_carry__1_3(mac32_n_22),
        .o_out1__86_carry__1_i_3__3(mac12_n_93),
        .o_out1__86_carry__1_i_3__3_0(mac12_n_140),
        .o_out1__86_carry__1_i_5__3({mac22_n_23,mac22_n_24,mac22_n_25}),
        .o_out1__86_carry__1_i_5__3_0({mac12_n_87,mac12_n_88}),
        .o_out1__86_carry__1_i_5__3_1({mac12_n_136,mac12_n_137}),
        .o_out1__86_carry_i_1__3_0({mac12_n_83,mac21_n_43,mac21_n_44}),
        .o_out1__86_carry_i_1__3_1({mac21_n_26,mac12_n_138,mac12_n_139,mac21_n_27}),
        .o_out1__86_carry_i_8__3_0({mac12_n_65,mac12_n_66,mac12_n_67,mac12_n_68}),
        .o_out1__86_carry_i_8__3_1({mac12_n_124,mac12_n_125,mac12_n_126,mac12_n_127}),
        .\o_out[3]_i_2__3_0 ({mac12_n_81,mac12_n_82,mac21_n_46}),
        .\o_out[3]_i_2__3_1 ({mac12_n_130,mac21_n_51,mac12_n_131,mac21_n_52}),
        .\o_out_reg[11]_0 (mac22_n_78),
        .\o_out_reg[15]_0 (mac22_n_36),
        .\o_out_reg[15]_1 ({mac12_n_99,mac12_n_100,mac12_n_101,mac12_n_102}),
        .\o_out_reg[15]_2 ({mac12_n_141,mac12_n_142,mac12_n_143}),
        .\o_out_reg[15]_3 ({mac32_n_23,mac32_n_24,mac32_n_25}),
        .\o_out_reg[15]_4 (mac32_n_36),
        .\o_out_reg[15]_5 (m_axis_data[126:124]),
        .\o_x_reg[0]_0 (mac22_n_42),
        .\o_x_reg[0]_1 ({mac22_n_47,mac22_n_48}),
        .\o_x_reg[1]_0 ({mac22_n_26,mac22_n_27}),
        .\o_x_reg[1]_1 ({mac22_n_39,mac22_n_40}),
        .\o_x_reg[1]_2 ({mac22_n_83,mac22_n_84,mac22_n_85}),
        .\o_x_reg[1]_3 ({mac22_n_97,mac22_n_98}),
        .\o_x_reg[3]_0 ({mac22_n_37,mac22_n_38}),
        .\o_x_reg[4]_0 (mac22_n_43),
        .\o_x_reg[5]_0 (mac22_n_41),
        .\o_x_reg[5]_1 (mac22_n_44),
        .\o_x_reg[5]_2 (mac22_n_45),
        .\o_x_reg[5]_3 ({mac22_n_86,mac22_n_87,mac22_n_88,mac22_n_89}),
        .\o_x_reg[6]_0 (mac22_n_46),
        .\o_y_reg[0]_0 (mac22_n_70),
        .\o_y_reg[1]_0 (mac22_n_90),
        .\o_y_reg[1]_1 ({mac22_n_91,mac22_n_92,mac22_n_93,mac22_n_94}),
        .\o_y_reg[1]_2 ({mac22_n_95,mac22_n_96}),
        .\o_y_reg[2]_0 ({mac22_n_49,mac22_n_50,mac22_n_51,mac22_n_52}),
        .\o_y_reg[2]_1 ({mac22_n_68,mac22_n_69}),
        .\o_y_reg[3]_0 ({mac22_n_65,mac22_n_66}),
        .\o_y_reg[4]_0 ({mac22_n_99,mac22_n_100,mac22_n_101,mac22_n_102}),
        .\o_y_reg[4]_1 ({mac22_n_103,mac22_n_104}),
        .\o_y_reg[5]_0 (mac22_n_16),
        .\o_y_reg[5]_1 ({mac22_n_17,mac22_n_18}),
        .\o_y_reg[5]_2 ({mac22_n_61,mac22_n_62,mac22_n_63,mac22_n_64}),
        .\o_y_reg[5]_3 ({mac22_n_71,mac22_n_72}),
        .\o_y_reg[6]_0 (mac22_n_107),
        .\o_y_reg[7]_0 ({mac22_n_19,mac22_n_20,mac22_n_21}),
        .\o_y_reg[7]_1 (mac22_n_22),
        .\o_y_reg[7]_2 ({mac22_n_53,mac22_n_54,mac22_n_55,mac22_n_56,mac22_n_57,mac22_n_58,mac22_n_59,mac22_n_60}),
        .\o_y_reg[7]_3 (mac22_n_67),
        .\o_y_reg[7]_4 ({mac22_n_73,mac22_n_74,mac22_n_75,mac22_n_76}),
        .\o_y_reg[7]_5 (mac22_n_77),
        .\o_y_reg[7]_6 ({mac22_n_105,mac22_n_106}),
        .\o_y_reg[7]_7 ({mac12_n_69,mac12_n_70,mac12_n_71,mac12_n_72,mac12_n_73,mac12_n_74,mac12_n_75,mac12_n_76}),
        .p_0_in(p_0_in));
  design_1_SystolicArrayAxiWrap_0_0_MAC_5 mac23
       (.CO(mac33_n_27),
        .D({mac13_n_31,mac13_n_32,mac13_n_33,mac13_n_34,mac13_n_35,mac13_n_36,mac13_n_37,mac13_n_38}),
        .DI({mac22_n_37,mac13_n_61,mac22_n_38}),
        .O({mac23_n_57,mac23_n_58,mac23_n_59,mac23_n_60}),
        .Q({mac23_n_31,mac23_n_32,mac23_n_33,mac23_n_34,mac23_n_35,mac23_n_36,mac23_n_37,mac23_n_38}),
        .S({mac22_n_83,mac22_n_84,mac22_n_85,mac13_n_48}),
        .axi_clk(axi_clk),
        .m_axis_data(m_axis_data[95:80]),
        .o_out1__0_carry__0_0(mac32_n_41),
        .o_out1__30_carry__0_0(mac32_n_43),
        .o_out1__30_carry__0_1(mac32_n_44),
        .o_out1__30_carry__0_2(mac32_n_46),
        .o_out1__30_carry__0_3(mac32_n_45),
        .o_out1__59_carry__1_0({mac23_n_79,mac23_n_80,mac23_n_81}),
        .o_out1__59_carry__1_1({mac32_n_28,mac32_n_29,mac32_n_30,mac32_n_31,mac32_n_32,mac32_n_33,mac32_n_34,mac32_n_35}),
        .o_out1__86_carry__0_i_3__4_0({mac13_n_46,mac13_n_47}),
        .o_out1__86_carry__0_i_3__4_1({mac13_n_66,mac13_n_67}),
        .o_out1__86_carry__0_i_4__4_0({mac13_n_39,mac13_n_40,mac13_n_41,mac13_n_42}),
        .o_out1__86_carry__0_i_4__4_1({mac13_n_70,mac13_n_71,mac13_n_72,mac13_n_73}),
        .o_out1__86_carry__0_i_6__4_0({mac13_n_51,mac13_n_52,mac13_n_53,mac13_n_54}),
        .o_out1__86_carry__0_i_6__4_1({mac22_n_86,mac22_n_87,mac22_n_88,mac22_n_89}),
        .o_out1__86_carry__1_0({mac33_n_20,mac33_n_21}),
        .o_out1__86_carry__1_1({mac33_n_22,mac33_n_23,mac33_n_24}),
        .o_out1__86_carry__1_2(mac33_n_19),
        .o_out1__86_carry__1_3(mac33_n_25),
        .o_out1__86_carry__1_i_3__4(mac13_n_55),
        .o_out1__86_carry__1_i_3__4_0(mac13_n_78),
        .o_out1__86_carry__1_i_5__4({mac23_n_23,mac23_n_24,mac23_n_25}),
        .o_out1__86_carry__1_i_5__4_0({mac13_n_49,mac13_n_50}),
        .o_out1__86_carry__1_i_5__4_1({mac13_n_74,mac13_n_75}),
        .o_out1__86_carry_i_1__4_0({mac13_n_45,mac22_n_39,mac22_n_40}),
        .o_out1__86_carry_i_1__4_1({mac22_n_26,mac13_n_76,mac13_n_77,mac22_n_27}),
        .o_out1__86_carry_i_8__4_0({mac13_n_27,mac13_n_28,mac13_n_29,mac13_n_30}),
        .o_out1__86_carry_i_8__4_1({mac13_n_62,mac13_n_63,mac13_n_64,mac13_n_65}),
        .\o_out[3]_i_2__4_0 ({mac13_n_43,mac13_n_44,mac22_n_42}),
        .\o_out[3]_i_2__4_1 ({mac13_n_68,mac22_n_47,mac13_n_69,mac22_n_48}),
        .\o_out_reg[11]_0 (mac23_n_56),
        .\o_out_reg[15]_0 (mac23_n_26),
        .\o_out_reg[15]_1 ({mac13_n_57,mac13_n_58,mac13_n_59,mac13_n_60}),
        .\o_out_reg[15]_2 ({mac13_n_79,mac13_n_80,mac13_n_81}),
        .\o_out_reg[15]_3 (o_out1),
        .\o_out_reg[15]_4 (mac33_n_26),
        .\o_out_reg[15]_5 (m_axis_data[142:140]),
        .\o_x_reg[1] ({mac23_n_68,mac23_n_69}),
        .\o_y_reg[0]_0 (mac23_n_48),
        .\o_y_reg[1]_0 (mac23_n_61),
        .\o_y_reg[1]_1 ({mac23_n_62,mac23_n_63,mac23_n_64,mac23_n_65}),
        .\o_y_reg[1]_2 ({mac23_n_66,mac23_n_67}),
        .\o_y_reg[2]_0 ({mac23_n_27,mac23_n_28,mac23_n_29,mac23_n_30}),
        .\o_y_reg[2]_1 ({mac23_n_46,mac23_n_47}),
        .\o_y_reg[3]_0 ({mac23_n_43,mac23_n_44}),
        .\o_y_reg[4]_0 ({mac23_n_70,mac23_n_71,mac23_n_72,mac23_n_73}),
        .\o_y_reg[4]_1 ({mac23_n_74,mac23_n_75}),
        .\o_y_reg[5]_0 (mac23_n_16),
        .\o_y_reg[5]_1 ({mac23_n_17,mac23_n_18}),
        .\o_y_reg[5]_2 ({mac23_n_39,mac23_n_40,mac23_n_41,mac23_n_42}),
        .\o_y_reg[5]_3 ({mac23_n_49,mac23_n_50}),
        .\o_y_reg[6]_0 (mac23_n_78),
        .\o_y_reg[7]_0 ({mac23_n_19,mac23_n_20,mac23_n_21}),
        .\o_y_reg[7]_1 (mac23_n_22),
        .\o_y_reg[7]_2 (mac23_n_45),
        .\o_y_reg[7]_3 ({mac23_n_51,mac23_n_52,mac23_n_53,mac23_n_54}),
        .\o_y_reg[7]_4 (mac23_n_55),
        .\o_y_reg[7]_5 ({mac23_n_76,mac23_n_77}),
        .p_0_in(p_0_in));
  design_1_SystolicArrayAxiWrap_0_0_MAC_6 mac31
       (.CO(mac31_n_49),
        .DI({mac31_n_37,mac31_n_38}),
        .O({mac21_n_88,mac21_n_89,mac21_n_90,mac21_n_91}),
        .Q({mac31_n_28,mac31_n_29,mac31_n_30,mac31_n_31,mac31_n_32,mac31_n_33,mac31_n_34,mac31_n_35}),
        .S({mac31_n_26,mac31_n_27}),
        .axi_clk(axi_clk),
        .m_axis_data(m_axis_data[111:96]),
        .o_out1__59_carry_0({mac22_n_53,mac22_n_54,mac22_n_55,mac22_n_56,mac22_n_57,mac22_n_58,mac22_n_59,mac22_n_60}),
        .o_out1__86_carry__0_i_3__5_0({mac21_n_70,mac21_n_71}),
        .o_out1__86_carry__0_i_3__5_1({mac21_n_103,mac21_n_104}),
        .o_out1__86_carry__0_i_4__5_0({mac21_n_60,mac21_n_61,mac21_n_62,mac21_n_63}),
        .o_out1__86_carry__0_i_4__5_1({mac21_n_105,mac21_n_106,mac21_n_107,mac21_n_108}),
        .o_out1__86_carry__0_i_6__5_0({mac21_n_82,mac21_n_83,mac21_n_84,mac21_n_85}),
        .o_out1__86_carry__0_i_6__5_1({mac21_n_111,mac21_n_112,mac21_n_113,mac21_n_114}),
        .o_out1__86_carry__1_i_3__5(mac21_n_86),
        .o_out1__86_carry__1_i_3__5_0(mac21_n_115),
        .o_out1__86_carry__1_i_5__5({mac31_n_23,mac31_n_24,mac31_n_25}),
        .o_out1__86_carry__1_i_5__5_0({mac21_n_76,mac21_n_77}),
        .o_out1__86_carry__1_i_5__5_1({mac21_n_109,mac21_n_110}),
        .o_out1__86_carry_i_1__5_0({mac21_n_67,mac21_n_68,mac21_n_69}),
        .o_out1__86_carry_i_1__5_1({mac21_n_36,mac21_n_37,mac21_n_38,mac21_n_39}),
        .o_out1__86_carry_i_8__5_0({mac21_n_53,mac21_n_54,mac21_n_55,mac21_n_56}),
        .o_out1__86_carry_i_8__5_1({mac21_n_99,mac21_n_100,mac21_n_101,mac21_n_102}),
        .\o_out[3]_i_2__5_0 ({mac21_n_64,mac21_n_65,mac21_n_66}),
        .\o_out[3]_i_2__5_1 ({mac21_n_78,mac21_n_79,mac21_n_80,mac21_n_81}),
        .\o_out_reg[15]_0 (mac31_n_36),
        .\o_out_reg[15]_1 ({mac21_n_116,mac21_n_117,mac21_n_118}),
        .\o_out_reg[3]_0 ({mac21_n_57,mac21_n_58,mac21_n_59}),
        .\o_out_reg[3]_1 ({mac21_n_72,mac21_n_73,mac21_n_74,mac21_n_75}),
        .\o_x_reg[0]_0 (mac31_n_42),
        .\o_x_reg[0]_1 ({mac31_n_47,mac31_n_48}),
        .\o_x_reg[1]_0 ({mac31_n_39,mac31_n_40}),
        .\o_x_reg[1]_1 ({mac31_n_50,mac31_n_51,mac31_n_52}),
        .\o_x_reg[4]_0 (mac31_n_43),
        .\o_x_reg[5]_0 (mac31_n_41),
        .\o_x_reg[5]_1 (mac31_n_44),
        .\o_x_reg[5]_2 (mac31_n_45),
        .\o_x_reg[5]_3 ({mac31_n_53,mac31_n_54,mac31_n_55,mac31_n_56}),
        .\o_x_reg[6]_0 (mac31_n_46),
        .\o_x_reg[7]_0 ({\a31_buffer2_reg_n_0_[7] ,\a31_buffer2_reg_n_0_[6] ,\a31_buffer2_reg_n_0_[5] ,\a31_buffer2_reg_n_0_[4] ,\a31_buffer2_reg_n_0_[3] ,\a31_buffer2_reg_n_0_[2] ,\a31_buffer2_reg_n_0_[1] ,\a31_buffer2_reg_n_0_[0] }),
        .\o_y_reg[5] (mac31_n_16),
        .\o_y_reg[5]_0 ({mac31_n_17,mac31_n_18}),
        .\o_y_reg[7] ({mac31_n_19,mac31_n_20,mac31_n_21}),
        .\o_y_reg[7]_0 (mac31_n_22),
        .p_0_in(p_0_in));
  design_1_SystolicArrayAxiWrap_0_0_MAC_7 mac32
       (.CO(mac32_n_49),
        .D({mac31_n_28,mac31_n_29,mac31_n_30,mac31_n_31,mac31_n_32,mac31_n_33,mac31_n_34,mac31_n_35}),
        .DI({mac31_n_37,mac22_n_90,mac31_n_38}),
        .O({mac22_n_79,mac22_n_80,mac22_n_81,mac22_n_82}),
        .Q({mac32_n_28,mac32_n_29,mac32_n_30,mac32_n_31,mac32_n_32,mac32_n_33,mac32_n_34,mac32_n_35}),
        .S({mac31_n_50,mac31_n_51,mac31_n_52,mac22_n_70}),
        .axi_clk(axi_clk),
        .m_axis_data(m_axis_data[127:112]),
        .o_out1__59_carry_0({mac23_n_31,mac23_n_32,mac23_n_33,mac23_n_34,mac23_n_35,mac23_n_36,mac23_n_37,mac23_n_38}),
        .o_out1__86_carry__0_i_3__6_0({mac22_n_68,mac22_n_69}),
        .o_out1__86_carry__0_i_3__6_1({mac22_n_95,mac22_n_96}),
        .o_out1__86_carry__0_i_4__6_0({mac22_n_61,mac22_n_62,mac22_n_63,mac22_n_64}),
        .o_out1__86_carry__0_i_4__6_1({mac22_n_99,mac22_n_100,mac22_n_101,mac22_n_102}),
        .o_out1__86_carry__0_i_6__6_0({mac22_n_73,mac22_n_74,mac22_n_75,mac22_n_76}),
        .o_out1__86_carry__0_i_6__6_1({mac31_n_53,mac31_n_54,mac31_n_55,mac31_n_56}),
        .o_out1__86_carry__1_i_3__6(mac22_n_77),
        .o_out1__86_carry__1_i_3__6_0(mac22_n_107),
        .o_out1__86_carry__1_i_5__6({mac32_n_23,mac32_n_24,mac32_n_25}),
        .o_out1__86_carry__1_i_5__6_0({mac22_n_71,mac22_n_72}),
        .o_out1__86_carry__1_i_5__6_1({mac22_n_103,mac22_n_104}),
        .o_out1__86_carry_i_1__6_0({mac22_n_67,mac31_n_39,mac31_n_40}),
        .o_out1__86_carry_i_1__6_1({mac31_n_26,mac22_n_105,mac22_n_106,mac31_n_27}),
        .o_out1__86_carry_i_8__6_0({mac22_n_49,mac22_n_50,mac22_n_51,mac22_n_52}),
        .o_out1__86_carry_i_8__6_1({mac22_n_91,mac22_n_92,mac22_n_93,mac22_n_94}),
        .\o_out[3]_i_2__6_0 ({mac22_n_65,mac22_n_66,mac31_n_42}),
        .\o_out[3]_i_2__6_1 ({mac22_n_97,mac31_n_47,mac22_n_98,mac31_n_48}),
        .\o_out_reg[15]_0 (mac32_n_36),
        .\o_out_reg[15]_1 ({mac22_n_108,mac22_n_109,mac22_n_110}),
        .\o_x_reg[0]_0 (mac32_n_42),
        .\o_x_reg[0]_1 ({mac32_n_47,mac32_n_48}),
        .\o_x_reg[1]_0 ({mac32_n_26,mac32_n_27}),
        .\o_x_reg[1]_1 ({mac32_n_39,mac32_n_40}),
        .\o_x_reg[1]_2 ({mac32_n_50,mac32_n_51,mac32_n_52}),
        .\o_x_reg[3]_0 ({mac32_n_37,mac32_n_38}),
        .\o_x_reg[4]_0 (mac32_n_43),
        .\o_x_reg[5]_0 (mac32_n_41),
        .\o_x_reg[5]_1 (mac32_n_44),
        .\o_x_reg[5]_2 (mac32_n_45),
        .\o_x_reg[5]_3 ({mac32_n_53,mac32_n_54,mac32_n_55,mac32_n_56}),
        .\o_x_reg[6]_0 (mac32_n_46),
        .\o_y_reg[5] (mac32_n_16),
        .\o_y_reg[5]_0 ({mac32_n_17,mac32_n_18}),
        .\o_y_reg[7] ({mac32_n_19,mac32_n_20,mac32_n_21}),
        .\o_y_reg[7]_0 (mac32_n_22),
        .p_0_in(p_0_in));
  design_1_SystolicArrayAxiWrap_0_0_MAC_8 mac33
       (.CO(mac33_n_27),
        .DI({mac32_n_37,mac23_n_61,mac32_n_38}),
        .O({mac23_n_57,mac23_n_58,mac23_n_59,mac23_n_60}),
        .S({mac32_n_50,mac32_n_51,mac32_n_52,mac23_n_48}),
        .axi_clk(axi_clk),
        .m_axis_data(m_axis_data[143:128]),
        .o_out1__86_carry__0_i_3__7_0({mac23_n_46,mac23_n_47}),
        .o_out1__86_carry__0_i_3__7_1({mac23_n_66,mac23_n_67}),
        .o_out1__86_carry__0_i_4__7_0({mac23_n_39,mac23_n_40,mac23_n_41,mac23_n_42}),
        .o_out1__86_carry__0_i_4__7_1({mac23_n_70,mac23_n_71,mac23_n_72,mac23_n_73}),
        .o_out1__86_carry__0_i_6__7_0({mac23_n_51,mac23_n_52,mac23_n_53,mac23_n_54}),
        .o_out1__86_carry__0_i_6__7_1({mac32_n_53,mac32_n_54,mac32_n_55,mac32_n_56}),
        .o_out1__86_carry__1_i_3__7(mac23_n_55),
        .o_out1__86_carry__1_i_3__7_0(mac23_n_78),
        .o_out1__86_carry__1_i_5__7(o_out1),
        .o_out1__86_carry__1_i_5__7_0({mac23_n_49,mac23_n_50}),
        .o_out1__86_carry__1_i_5__7_1({mac23_n_74,mac23_n_75}),
        .o_out1__86_carry_i_1__7_0({mac23_n_45,mac32_n_39,mac32_n_40}),
        .o_out1__86_carry_i_1__7_1({mac32_n_26,mac23_n_76,mac23_n_77,mac32_n_27}),
        .o_out1__86_carry_i_8__7_0({mac23_n_27,mac23_n_28,mac23_n_29,mac23_n_30}),
        .o_out1__86_carry_i_8__7_1({mac23_n_62,mac23_n_63,mac23_n_64,mac23_n_65}),
        .\o_out[3]_i_2__7_0 ({mac23_n_43,mac23_n_44,mac32_n_42}),
        .\o_out[3]_i_2__7_1 ({mac23_n_68,mac32_n_47,mac23_n_69,mac32_n_48}),
        .\o_out_reg[15]_0 (mac33_n_26),
        .\o_out_reg[15]_1 ({mac23_n_79,mac23_n_80,mac23_n_81}),
        .\o_y_reg[5] (mac33_n_19),
        .\o_y_reg[5]_0 ({mac33_n_20,mac33_n_21}),
        .\o_y_reg[7] ({mac33_n_22,mac33_n_23,mac33_n_24}),
        .\o_y_reg[7]_0 (mac33_n_25),
        .p_0_in(p_0_in));
endmodule

(* ORIG_REF_NAME = "SystolicArrayAxiWrapper" *) 
module design_1_SystolicArrayAxiWrap_0_0_SystolicArrayAxiWrapper
   (\wr_pntr_reg[0] ,
    m_axis_data,
    m_axis_valid,
    m_axis_ready,
    axi_rst_n,
    s_axis_valid,
    axi_clk,
    s_axis_data);
  output \wr_pntr_reg[0] ;
  output [143:0]m_axis_data;
  output m_axis_valid;
  input m_axis_ready;
  input axi_rst_n;
  input s_axis_valid;
  input axi_clk;
  input [47:0]s_axis_data;

  wire [7:0]A21;
  wire [7:0]A31;
  wire A_Buffer_n_0;
  wire A_Buffer_n_1;
  wire A_Buffer_n_10;
  wire A_Buffer_n_11;
  wire A_Buffer_n_12;
  wire A_Buffer_n_13;
  wire A_Buffer_n_14;
  wire A_Buffer_n_15;
  wire A_Buffer_n_16;
  wire A_Buffer_n_17;
  wire A_Buffer_n_18;
  wire A_Buffer_n_19;
  wire A_Buffer_n_2;
  wire A_Buffer_n_20;
  wire A_Buffer_n_21;
  wire A_Buffer_n_22;
  wire A_Buffer_n_23;
  wire A_Buffer_n_24;
  wire A_Buffer_n_25;
  wire A_Buffer_n_26;
  wire A_Buffer_n_27;
  wire A_Buffer_n_28;
  wire A_Buffer_n_29;
  wire A_Buffer_n_3;
  wire A_Buffer_n_30;
  wire A_Buffer_n_31;
  wire A_Buffer_n_32;
  wire A_Buffer_n_4;
  wire A_Buffer_n_49;
  wire A_Buffer_n_5;
  wire A_Buffer_n_50;
  wire A_Buffer_n_51;
  wire A_Buffer_n_52;
  wire A_Buffer_n_53;
  wire A_Buffer_n_54;
  wire A_Buffer_n_55;
  wire A_Buffer_n_56;
  wire A_Buffer_n_57;
  wire A_Buffer_n_58;
  wire A_Buffer_n_59;
  wire A_Buffer_n_60;
  wire A_Buffer_n_61;
  wire A_Buffer_n_7;
  wire A_Buffer_n_8;
  wire A_Buffer_n_9;
  wire Array_n_144;
  wire Array_n_145;
  wire Array_n_146;
  wire Array_n_147;
  wire Array_n_148;
  wire Array_n_149;
  wire Array_n_150;
  wire Array_n_151;
  wire Array_n_152;
  wire Array_n_153;
  wire Array_n_154;
  wire Array_n_155;
  wire Array_n_156;
  wire Array_n_157;
  wire [7:0]B12;
  wire [7:0]B13;
  wire B_Buffer_n_19;
  wire B_Buffer_n_2;
  wire B_Buffer_n_20;
  wire B_Buffer_n_21;
  wire B_Buffer_n_22;
  wire B_Buffer_n_23;
  wire B_Buffer_n_24;
  wire B_Buffer_n_25;
  wire B_Buffer_n_26;
  wire B_Buffer_n_27;
  wire B_Buffer_n_28;
  wire B_Buffer_n_29;
  wire B_Buffer_n_30;
  wire B_Buffer_n_31;
  wire B_Buffer_n_32;
  wire B_Buffer_n_33;
  wire B_Buffer_n_34;
  wire B_Buffer_n_35;
  wire B_Buffer_n_36;
  wire B_Buffer_n_37;
  wire B_Buffer_n_38;
  wire B_Buffer_n_39;
  wire B_Buffer_n_40;
  wire B_Buffer_n_41;
  wire B_Buffer_n_42;
  wire B_Buffer_n_43;
  wire B_Buffer_n_44;
  wire B_Buffer_n_45;
  wire B_Buffer_n_46;
  wire B_Buffer_n_47;
  wire B_Buffer_n_48;
  wire B_Buffer_n_49;
  wire B_Buffer_n_50;
  wire B_Buffer_n_51;
  wire B_Buffer_n_52;
  wire B_Buffer_n_53;
  wire B_Buffer_n_54;
  wire B_Buffer_n_55;
  wire B_Buffer_n_56;
  wire B_Buffer_n_57;
  wire B_Buffer_n_58;
  wire B_Buffer_n_59;
  wire B_Buffer_n_60;
  wire B_Buffer_n_61;
  wire B_Buffer_n_62;
  wire B_Buffer_n_63;
  wire B_Buffer_n_64;
  wire B_Buffer_n_65;
  wire B_Buffer_n_66;
  wire B_Buffer_n_67;
  wire Controller_n_2;
  wire [1:0]PS;
  wire axi_clk;
  wire axi_rst_n;
  wire [143:0]m_axis_data;
  wire m_axis_ready;
  wire m_axis_valid;
  wire p_0_in;
  wire rd_pntr0;
  wire [47:0]s_axis_data;
  wire s_axis_valid;
  wire wr_pntr0;
  wire \wr_pntr_reg[0] ;

  design_1_SystolicArrayAxiWrap_0_0_InputBuffer A_Buffer
       (.D(A21),
        .DI({A_Buffer_n_7,A_Buffer_n_8,A_Buffer_n_9,A_Buffer_n_10}),
        .E(rd_pntr0),
        .PS(PS[1]),
        .S({A_Buffer_n_0,A_Buffer_n_1}),
        .SR(Controller_n_2),
        .axi_clk(axi_clk),
        .\mem_reg[1][1]_0 ({A_Buffer_n_49,A_Buffer_n_50}),
        .\mem_reg[2][23]_0 (A31),
        .\mem_reg[2][7]_0 (A_Buffer_n_18),
        .\mem_reg[3][0]_0 (A_Buffer_n_16),
        .\mem_reg[3][0]_1 (A_Buffer_n_22),
        .\mem_reg[3][0]_2 (\wr_pntr_reg[0] ),
        .\mem_reg[3][1]_0 (A_Buffer_n_2),
        .\mem_reg[3][1]_1 ({A_Buffer_n_14,A_Buffer_n_15}),
        .\mem_reg[3][2]_0 (A_Buffer_n_4),
        .\mem_reg[3][2]_1 ({A_Buffer_n_23,A_Buffer_n_24,A_Buffer_n_25}),
        .\mem_reg[3][2]_2 ({A_Buffer_n_51,A_Buffer_n_52,A_Buffer_n_53}),
        .\mem_reg[3][3]_0 (A_Buffer_n_3),
        .\mem_reg[3][3]_1 (A_Buffer_n_21),
        .\mem_reg[3][3]_2 ({A_Buffer_n_30,A_Buffer_n_31}),
        .\mem_reg[3][3]_3 (A_Buffer_n_32),
        .\mem_reg[3][4]_0 (A_Buffer_n_13),
        .\mem_reg[3][4]_1 ({A_Buffer_n_19,A_Buffer_n_20}),
        .\mem_reg[3][4]_2 ({A_Buffer_n_28,A_Buffer_n_29}),
        .\mem_reg[3][5]_0 (A_Buffer_n_11),
        .\mem_reg[3][5]_1 (A_Buffer_n_26),
        .\mem_reg[3][5]_2 ({A_Buffer_n_58,A_Buffer_n_59,A_Buffer_n_60,A_Buffer_n_61}),
        .\mem_reg[3][6]_0 (A_Buffer_n_12),
        .\mem_reg[3][6]_1 (A_Buffer_n_17),
        .\mem_reg[3][6]_2 (A_Buffer_n_27),
        .\mem_reg[3][6]_3 ({A_Buffer_n_54,A_Buffer_n_55}),
        .\mem_reg[3][6]_4 ({A_Buffer_n_56,A_Buffer_n_57}),
        .o_out1__0_carry(B_Buffer_n_41),
        .o_out1__0_carry_0(B_Buffer_n_40),
        .o_out1__0_carry_1(B_Buffer_n_30),
        .o_out1__0_carry_2(B_Buffer_n_44),
        .o_out1__0_carry__0(B_Buffer_n_45),
        .o_out1__0_carry__0_0(B_Buffer_n_46),
        .o_out1__30_carry(B_Buffer_n_32),
        .o_out1__30_carry__0(B_Buffer_n_33),
        .o_out1__30_carry_i_4_0(B_Buffer_n_34),
        .o_out1__59_carry(B_Buffer_n_21),
        .o_out1__59_carry_0(B_Buffer_n_20),
        .\rd_pntr_reg[0]_0 (A_Buffer_n_5),
        .\rd_pntr_reg[1]_0 (B_Buffer_n_2),
        .\rd_pntr_reg[1]_1 (Array_n_155),
        .s_axis_data(s_axis_data[23:0]),
        .s_axis_valid(s_axis_valid),
        .\wr_pntr_reg[0]_0 (wr_pntr0));
  design_1_SystolicArrayAxiWrap_0_0_SystolicArray Array
       (.CO(Array_n_144),
        .D(B12),
        .DI({A_Buffer_n_30,B_Buffer_n_52,A_Buffer_n_31}),
        .E(Array_n_155),
        .\FSM_sequential_PS_reg[0] (\wr_pntr_reg[0] ),
        .O({B_Buffer_n_48,B_Buffer_n_49,B_Buffer_n_50,B_Buffer_n_51}),
        .PS(PS),
        .S({A_Buffer_n_51,A_Buffer_n_52,A_Buffer_n_53,B_Buffer_n_47}),
        .\a21_buffer_reg[7]_0 (A21),
        .\a31_buffer1_reg[7]_0 (A31),
        .axi_clk(axi_clk),
        .axi_rst_n(axi_rst_n),
        .\b13_buffer1_reg[7]_0 (B13),
        .m_axis_data(m_axis_data),
        .m_axis_ready(m_axis_ready),
        .o_out1__30_carry__1_i_4({Array_n_145,Array_n_146}),
        .o_out1__59_carry__0_i_8({Array_n_147,Array_n_148,Array_n_149}),
        .o_out1__59_carry__1_i_2(Array_n_150),
        .o_out1__86_carry__0_i_3({A_Buffer_n_27,B_Buffer_n_39}),
        .o_out1__86_carry__0_i_3_0({B_Buffer_n_55,B_Buffer_n_56}),
        .o_out1__86_carry__0_i_4({A_Buffer_n_19,A_Buffer_n_20,B_Buffer_n_35,B_Buffer_n_36}),
        .o_out1__86_carry__0_i_4_0({A_Buffer_n_56,A_Buffer_n_57,B_Buffer_n_58,B_Buffer_n_59}),
        .o_out1__86_carry__0_i_6({A_Buffer_n_7,A_Buffer_n_8,A_Buffer_n_9,A_Buffer_n_10}),
        .o_out1__86_carry__0_i_6_0({A_Buffer_n_58,A_Buffer_n_59,A_Buffer_n_60,A_Buffer_n_61}),
        .o_out1__86_carry__1_i_3(B_Buffer_n_19),
        .o_out1__86_carry__1_i_3_0(B_Buffer_n_64),
        .o_out1__86_carry__1_i_5({Array_n_151,Array_n_152,Array_n_153}),
        .o_out1__86_carry__1_i_5_0({A_Buffer_n_17,B_Buffer_n_31}),
        .o_out1__86_carry__1_i_5_1({B_Buffer_n_60,B_Buffer_n_61}),
        .o_out1__86_carry_i_1({B_Buffer_n_22,A_Buffer_n_14,A_Buffer_n_15}),
        .o_out1__86_carry_i_1_0({A_Buffer_n_0,B_Buffer_n_62,B_Buffer_n_63,A_Buffer_n_1}),
        .o_out1__86_carry_i_8({A_Buffer_n_28,A_Buffer_n_29,B_Buffer_n_42,B_Buffer_n_43}),
        .o_out1__86_carry_i_8_0({A_Buffer_n_54,A_Buffer_n_55,B_Buffer_n_53,B_Buffer_n_54}),
        .\o_out[3]_i_2 ({B_Buffer_n_37,B_Buffer_n_38,A_Buffer_n_22}),
        .\o_out[3]_i_2_0 ({A_Buffer_n_23,A_Buffer_n_24,B_Buffer_n_57,A_Buffer_n_25}),
        .\o_out_reg[11] (Array_n_157),
        .\o_out_reg[15] (Array_n_156),
        .\o_out_reg[15]_0 ({B_Buffer_n_65,B_Buffer_n_66,B_Buffer_n_67}),
        .\o_x_reg[1] ({A_Buffer_n_49,A_Buffer_n_50}),
        .\o_x_reg[2] (A_Buffer_n_4),
        .\o_x_reg[3] (A_Buffer_n_3),
        .\o_x_reg[4] (A_Buffer_n_13),
        .\o_x_reg[5] (A_Buffer_n_11),
        .\o_x_reg[6] (A_Buffer_n_12),
        .\o_x_reg[7] (A_Buffer_n_18),
        .\o_y_reg[7] ({B_Buffer_n_23,B_Buffer_n_24,B_Buffer_n_25,B_Buffer_n_26,B_Buffer_n_27,B_Buffer_n_28,B_Buffer_n_29,B_Buffer_n_30}),
        .p_0_in(p_0_in),
        .s_axis_valid(s_axis_valid),
        .s_axis_valid_0(Array_n_154));
  design_1_SystolicArrayAxiWrap_0_0_InputBuffer_0 B_Buffer
       (.CO(Array_n_144),
        .D(B12),
        .DI(B_Buffer_n_52),
        .E(wr_pntr0),
        .\FSM_sequential_PS_reg[0] (B_Buffer_n_2),
        .O({B_Buffer_n_48,B_Buffer_n_49,B_Buffer_n_50,B_Buffer_n_51}),
        .PS(PS),
        .S(B_Buffer_n_47),
        .SR(Controller_n_2),
        .axi_clk(axi_clk),
        .m_axis_data(m_axis_data[14:12]),
        .\mem_reg[0][7]_0 ({B_Buffer_n_23,B_Buffer_n_24,B_Buffer_n_25,B_Buffer_n_26,B_Buffer_n_27,B_Buffer_n_28,B_Buffer_n_29,B_Buffer_n_30}),
        .\mem_reg[2][23]_0 (B13),
        .\mem_reg[2][7]_0 (B_Buffer_n_19),
        .\mem_reg[2][7]_1 (B_Buffer_n_20),
        .\mem_reg[2][7]_2 (B_Buffer_n_22),
        .\mem_reg[2][7]_3 ({B_Buffer_n_62,B_Buffer_n_63}),
        .\mem_reg[3][0]_0 (B_Buffer_n_44),
        .\mem_reg[3][0]_1 (B_Buffer_n_45),
        .\mem_reg[3][0]_2 (B_Buffer_n_46),
        .\mem_reg[3][1]_0 (B_Buffer_n_39),
        .\mem_reg[3][1]_1 (B_Buffer_n_40),
        .\mem_reg[3][1]_2 ({B_Buffer_n_55,B_Buffer_n_56}),
        .\mem_reg[3][2]_0 (B_Buffer_n_41),
        .\mem_reg[3][2]_1 ({B_Buffer_n_42,B_Buffer_n_43}),
        .\mem_reg[3][3]_0 (B_Buffer_n_34),
        .\mem_reg[3][3]_1 ({B_Buffer_n_37,B_Buffer_n_38}),
        .\mem_reg[3][3]_2 (B_Buffer_n_57),
        .\mem_reg[3][4]_0 (B_Buffer_n_31),
        .\mem_reg[3][4]_1 (B_Buffer_n_32),
        .\mem_reg[3][4]_2 ({B_Buffer_n_53,B_Buffer_n_54}),
        .\mem_reg[3][4]_3 ({B_Buffer_n_58,B_Buffer_n_59}),
        .\mem_reg[3][4]_4 ({B_Buffer_n_60,B_Buffer_n_61}),
        .\mem_reg[3][5]_0 (B_Buffer_n_33),
        .\mem_reg[3][5]_1 ({B_Buffer_n_35,B_Buffer_n_36}),
        .\mem_reg[3][6]_0 (B_Buffer_n_21),
        .\mem_reg[3][6]_1 (B_Buffer_n_64),
        .o_out1__0_carry(A_Buffer_n_16),
        .o_out1__0_carry__0(A_Buffer_n_2),
        .o_out1__0_carry__0_0(A_Buffer_n_4),
        .o_out1__0_carry__0_1(A_Buffer_n_13),
        .o_out1__0_carry__0_2(A_Buffer_n_32),
        .o_out1__0_carry__0_i_5(A_Buffer_n_18),
        .o_out1__0_carry__0_i_6(A_Buffer_n_12),
        .o_out1__0_carry__0_i_7_0(A_Buffer_n_11),
        .o_out1__0_carry_i_4(A_Buffer_n_3),
        .o_out1__30_carry__0(A_Buffer_n_21),
        .o_out1__30_carry__0_0(A_Buffer_n_26),
        .o_out1__59_carry__1({B_Buffer_n_65,B_Buffer_n_66,B_Buffer_n_67}),
        .o_out1__86_carry__1({Array_n_145,Array_n_146}),
        .o_out1__86_carry__1_0({Array_n_147,Array_n_148,Array_n_149}),
        .o_out1__86_carry__1_1(Array_n_150),
        .\o_out_reg[15] (Array_n_157),
        .\o_out_reg[15]_0 ({Array_n_151,Array_n_152,Array_n_153}),
        .\o_out_reg[15]_1 (Array_n_156),
        .\rd_pntr_reg[0]_0 (rd_pntr0),
        .s_axis_data(s_axis_data[47:24]),
        .s_axis_ready(A_Buffer_n_5),
        .s_axis_valid(s_axis_valid),
        .\wr_pntr_reg[0]_0 (\wr_pntr_reg[0] ));
  design_1_SystolicArrayAxiWrap_0_0_ArrayController Controller
       (.\FSM_sequential_PS_reg[0]_0 (Array_n_154),
        .PS(PS),
        .SR(Controller_n_2),
        .axi_clk(axi_clk),
        .axi_rst_n(axi_rst_n),
        .m_axis_ready(m_axis_ready),
        .m_axis_valid(m_axis_valid),
        .\o_out_reg[0] (\wr_pntr_reg[0] ),
        .p_0_in(p_0_in),
        .s_axis_valid(s_axis_valid));
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
