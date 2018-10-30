// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.4 (lin64) Build 1412921 Wed Nov 18 09:44:32 MST 2015
// Date        : Tue Oct 30 13:13:47 2018
// Host        : ubuntu running 64-bit Ubuntu 16.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/carson/poly/cpe439/Resistor-Value-Detector/src/ip/dvi2rgb_ip/dvi2rgb_ip_sim_netlist.v
// Design      : dvi2rgb_ip
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dvi2rgb_ip,dvi2rgb,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dvi2rgb,Vivado 2015.4" *) 
(* NotValidForBitStream *)
module dvi2rgb_ip
   (TMDS_Clk_p,
    TMDS_Clk_n,
    TMDS_Data_p,
    TMDS_Data_n,
    RefClk,
    aRst_n,
    vid_pData,
    vid_pVDE,
    vid_pHSync,
    vid_pVSync,
    PixelClk,
    aPixelClkLckd,
    DDC_SDA_I,
    DDC_SDA_O,
    DDC_SDA_T,
    DDC_SCL_I,
    DDC_SCL_O,
    DDC_SCL_T,
    pRst_n);
  (* x_interface_info = "digilentinc.com:interface:tmds:1.0 TMDS CLK_P" *) input TMDS_Clk_p;
  (* x_interface_info = "digilentinc.com:interface:tmds:1.0 TMDS CLK_N" *) input TMDS_Clk_n;
  (* x_interface_info = "digilentinc.com:interface:tmds:1.0 TMDS DATA_P" *) input [2:0]TMDS_Data_p;
  (* x_interface_info = "digilentinc.com:interface:tmds:1.0 TMDS DATA_N" *) input [2:0]TMDS_Data_n;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 RefClk CLK" *) input RefClk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 AsyncRst_n RST" *) input aRst_n;
  (* x_interface_info = "xilinx.com:interface:vid_io:1.0 RGB DATA" *) output [23:0]vid_pData;
  (* x_interface_info = "xilinx.com:interface:vid_io:1.0 RGB ACTIVE_VIDEO" *) output vid_pVDE;
  (* x_interface_info = "xilinx.com:interface:vid_io:1.0 RGB HSYNC" *) output vid_pHSync;
  (* x_interface_info = "xilinx.com:interface:vid_io:1.0 RGB VSYNC" *) output vid_pVSync;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 PixelClk CLK" *) output PixelClk;
  output aPixelClkLckd;
  (* x_interface_info = "xilinx.com:interface:iic:1.0 DDC SDA_I" *) input DDC_SDA_I;
  (* x_interface_info = "xilinx.com:interface:iic:1.0 DDC SDA_O" *) output DDC_SDA_O;
  (* x_interface_info = "xilinx.com:interface:iic:1.0 DDC SDA_T" *) output DDC_SDA_T;
  (* x_interface_info = "xilinx.com:interface:iic:1.0 DDC SCL_I" *) input DDC_SCL_I;
  (* x_interface_info = "xilinx.com:interface:iic:1.0 DDC SCL_O" *) output DDC_SCL_O;
  (* x_interface_info = "xilinx.com:interface:iic:1.0 DDC SCL_T" *) output DDC_SCL_T;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 SyncRst_n RST" *) input pRst_n;

  wire DDC_SCL_I;
  wire DDC_SCL_O;
  wire DDC_SCL_T;
  wire DDC_SDA_I;
  wire DDC_SDA_O;
  wire DDC_SDA_T;
  wire PixelClk;
  wire RefClk;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "TMDS_33" *) wire TMDS_Clk_n;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "TMDS_33" *) wire TMDS_Clk_p;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "TMDS_33" *) wire [2:0]TMDS_Data_n;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "TMDS_33" *) wire [2:0]TMDS_Data_p;
  wire aPixelClkLckd;
  wire aRst_n;
  wire pRst_n;
  wire [23:0]vid_pData;
  wire vid_pHSync;
  wire vid_pVDE;
  wire vid_pVSync;
  wire NLW_U0_SerialClk_UNCONNECTED;

  (* kClkRange = "2" *) 
  (* kEmulateDDC = "TRUE" *) 
  (* kIDLY_TapValuePs = "78" *) 
  (* kIDLY_TapWidth = "5" *) 
  (* kRstActiveHigh = "FALSE" *) 
  dvi2rgb_ip_dvi2rgb U0
       (.DDC_SCL_I(DDC_SCL_I),
        .DDC_SCL_O(DDC_SCL_O),
        .DDC_SCL_T(DDC_SCL_T),
        .DDC_SDA_I(DDC_SDA_I),
        .DDC_SDA_O(DDC_SDA_O),
        .DDC_SDA_T(DDC_SDA_T),
        .PixelClk(PixelClk),
        .RefClk(RefClk),
        .SerialClk(NLW_U0_SerialClk_UNCONNECTED),
        .TMDS_Clk_n(TMDS_Clk_n),
        .TMDS_Clk_p(TMDS_Clk_p),
        .TMDS_Data_n(TMDS_Data_n),
        .TMDS_Data_p(TMDS_Data_p),
        .aPixelClkLckd(aPixelClkLckd),
        .aRst(1'b0),
        .aRst_n(aRst_n),
        .pRst(1'b0),
        .pRst_n(pRst_n),
        .vid_pData(vid_pData),
        .vid_pHSync(vid_pHSync),
        .vid_pVDE(vid_pVDE),
        .vid_pVSync(vid_pVSync));
endmodule

(* ORIG_REF_NAME = "ChannelBond" *) 
module dvi2rgb_ip_ChannelBond
   (pAllVld_q,
    D,
    pC1_reg,
    pC1_reg_0,
    pAllVld,
    rMMCM_LckdRisingFlag_reg,
    pAllVldBgnFlag0,
    SR,
    pRdy_0,
    pRdy_1,
    pDataInRaw);
  output pAllVld_q;
  output [7:0]D;
  output [0:0]pC1_reg;
  output pC1_reg_0;
  input pAllVld;
  input rMMCM_LckdRisingFlag_reg;
  input pAllVldBgnFlag0;
  input [0:0]SR;
  input pRdy_0;
  input pRdy_1;
  input [9:0]pDataInRaw;

  wire [7:0]D;
  wire [0:0]SR;
  wire pAllVld;
  wire pAllVldBgnFlag;
  wire pAllVldBgnFlag0;
  wire pAllVld_q;
  wire pBlnkBgnFlag;
  wire pBlnkBgnFlag_i_1_n_0;
  wire [0:0]pC1_reg;
  wire pC1_reg_0;
  wire \pDataFIFO_reg_n_0_[9] ;
  wire [8:0]pDataInBnd;
  wire [9:0]pDataInRaw;
  wire \pDataIn[0]_i_2_n_0 ;
  wire \pDataIn[0]_i_3_n_0 ;
  wire \pDataIn[0]_i_4_n_0 ;
  wire \pDataIn[1]_i_2_n_0 ;
  wire \pDataIn[3]_i_2_n_0 ;
  wire \pDataIn[4]_i_2_n_0 ;
  wire \pDataIn[5]_i_2_n_0 ;
  wire \pDataIn[5]_i_3_n_0 ;
  wire \pDataIn[7]_i_3_n_0 ;
  wire pMeRdy_int_i_1_n_0;
  wire [4:0]pRdA;
  wire [4:0]pRdA_reg__0;
  wire pRdEn;
  wire pRdEn_i_1_n_0;
  wire pRdy_0;
  wire pRdy_1;
  wire pTokenFlag;
  wire pTokenFlag0;
  wire pTokenFlag_q;
  wire [4:0]pWrA_reg__0;
  wire [4:0]p_0_in__0;
  wire [4:0]p_0_in__1;
  wire [9:0]p_0_out;
  wire rMMCM_LckdRisingFlag_reg;
  wire [1:0]NLW_pFIFO_reg_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_pFIFO_reg_0_31_6_9_DOC_UNCONNECTED;
  wire [1:0]NLW_pFIFO_reg_0_31_6_9_DOD_UNCONNECTED;

  FDRE pAllVldBgnFlag_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pAllVldBgnFlag0),
        .Q(pAllVldBgnFlag),
        .R(1'b0));
  FDRE pAllVld_q_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pAllVld),
        .Q(pAllVld_q),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    pBlnkBgnFlag_i_1
       (.I0(pTokenFlag),
        .I1(pTokenFlag_q),
        .O(pBlnkBgnFlag_i_1_n_0));
  FDRE pBlnkBgnFlag_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pBlnkBgnFlag_i_1_n_0),
        .Q(pBlnkBgnFlag),
        .R(1'b0));
  FDRE \pDataFIFO_reg[0] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(p_0_out[0]),
        .Q(pDataInBnd[0]),
        .R(1'b0));
  FDRE \pDataFIFO_reg[1] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(p_0_out[1]),
        .Q(pDataInBnd[1]),
        .R(1'b0));
  FDRE \pDataFIFO_reg[2] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(p_0_out[2]),
        .Q(pDataInBnd[2]),
        .R(1'b0));
  FDRE \pDataFIFO_reg[3] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(p_0_out[3]),
        .Q(pDataInBnd[3]),
        .R(1'b0));
  FDRE \pDataFIFO_reg[4] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(p_0_out[4]),
        .Q(pDataInBnd[4]),
        .R(1'b0));
  FDRE \pDataFIFO_reg[5] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(p_0_out[5]),
        .Q(pDataInBnd[5]),
        .R(1'b0));
  FDRE \pDataFIFO_reg[6] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(p_0_out[6]),
        .Q(pDataInBnd[6]),
        .R(1'b0));
  FDRE \pDataFIFO_reg[7] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(p_0_out[7]),
        .Q(pDataInBnd[7]),
        .R(1'b0));
  FDRE \pDataFIFO_reg[8] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(p_0_out[8]),
        .Q(pDataInBnd[8]),
        .R(1'b0));
  FDRE \pDataFIFO_reg[9] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(p_0_out[9]),
        .Q(\pDataFIFO_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000FEFEFF000000)) 
    \pDataIn[0]_i_1 
       (.I0(\pDataIn[0]_i_2_n_0 ),
        .I1(\pDataIn[5]_i_3_n_0 ),
        .I2(\pDataIn[0]_i_3_n_0 ),
        .I3(\pDataIn[0]_i_4_n_0 ),
        .I4(pDataInBnd[0]),
        .I5(\pDataFIFO_reg_n_0_[9] ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \pDataIn[0]_i_2 
       (.I0(pDataInBnd[5]),
        .I1(pDataInBnd[4]),
        .O(\pDataIn[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \pDataIn[0]_i_3 
       (.I0(pDataInBnd[6]),
        .I1(pDataInBnd[7]),
        .I2(pDataInBnd[8]),
        .O(\pDataIn[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \pDataIn[0]_i_4 
       (.I0(\pDataIn[1]_i_2_n_0 ),
        .I1(pDataInBnd[1]),
        .I2(pDataInBnd[8]),
        .O(\pDataIn[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'h38C3)) 
    \pDataIn[1]_i_1 
       (.I0(\pDataIn[1]_i_2_n_0 ),
        .I1(pDataInBnd[0]),
        .I2(pDataInBnd[8]),
        .I3(pDataInBnd[1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFBFFFFFF)) 
    \pDataIn[1]_i_2 
       (.I0(pDataInBnd[6]),
        .I1(pDataInBnd[7]),
        .I2(pDataInBnd[4]),
        .I3(pDataInBnd[5]),
        .I4(pDataInBnd[3]),
        .I5(pDataInBnd[2]),
        .O(\pDataIn[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'h0FF0E00F)) 
    \pDataIn[2]_i_1 
       (.I0(\pDataIn[3]_i_2_n_0 ),
        .I1(pDataInBnd[3]),
        .I2(pDataInBnd[8]),
        .I3(pDataInBnd[2]),
        .I4(pDataInBnd[1]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'h0EF0F00F)) 
    \pDataIn[3]_i_1 
       (.I0(pDataInBnd[1]),
        .I1(\pDataIn[3]_i_2_n_0 ),
        .I2(pDataInBnd[3]),
        .I3(pDataInBnd[8]),
        .I4(pDataInBnd[2]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    \pDataIn[3]_i_2 
       (.I0(pDataInBnd[0]),
        .I1(pDataInBnd[7]),
        .I2(pDataInBnd[6]),
        .I3(pDataInBnd[4]),
        .I4(pDataInBnd[5]),
        .O(\pDataIn[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00FEFF00FF0000FF)) 
    \pDataIn[4]_i_1 
       (.I0(pDataInBnd[5]),
        .I1(\pDataIn[4]_i_2_n_0 ),
        .I2(\pDataIn[5]_i_2_n_0 ),
        .I3(pDataInBnd[3]),
        .I4(pDataInBnd[8]),
        .I5(pDataInBnd[4]),
        .O(D[4]));
  LUT2 #(
    .INIT(4'hB)) 
    \pDataIn[4]_i_2 
       (.I0(pDataInBnd[1]),
        .I1(pDataInBnd[2]),
        .O(\pDataIn[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'h0EF0F00F)) 
    \pDataIn[5]_i_1 
       (.I0(\pDataIn[5]_i_2_n_0 ),
        .I1(\pDataIn[5]_i_3_n_0 ),
        .I2(pDataInBnd[5]),
        .I3(pDataInBnd[4]),
        .I4(pDataInBnd[8]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \pDataIn[5]_i_2 
       (.I0(pDataInBnd[6]),
        .I1(pDataInBnd[7]),
        .I2(pDataInBnd[0]),
        .O(\pDataIn[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \pDataIn[5]_i_3 
       (.I0(pDataInBnd[2]),
        .I1(pDataInBnd[1]),
        .I2(pDataInBnd[3]),
        .O(\pDataIn[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00FFFF00FD0000FF)) 
    \pDataIn[6]_i_1 
       (.I0(pDataInBnd[4]),
        .I1(pDataInBnd[7]),
        .I2(\pDataIn[7]_i_3_n_0 ),
        .I3(pDataInBnd[8]),
        .I4(pDataInBnd[6]),
        .I5(pDataInBnd[5]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \pDataIn[7]_i_1__1 
       (.I0(pC1_reg_0),
        .I1(pRdy_0),
        .I2(pRdy_1),
        .O(pC1_reg));
  LUT6 #(
    .INIT(64'h3CC338C33CC33CC3)) 
    \pDataIn[7]_i_2 
       (.I0(\pDataIn[7]_i_3_n_0 ),
        .I1(pDataInBnd[8]),
        .I2(pDataInBnd[7]),
        .I3(pDataInBnd[6]),
        .I4(pDataInBnd[5]),
        .I5(pDataInBnd[4]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \pDataIn[7]_i_3 
       (.I0(pDataInBnd[3]),
        .I1(pDataInBnd[1]),
        .I2(pDataInBnd[2]),
        .I3(pDataInBnd[0]),
        .O(\pDataIn[7]_i_3_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M pFIFO_reg_0_31_0_5
       (.ADDRA(pRdA),
        .ADDRB(pRdA),
        .ADDRC(pRdA),
        .ADDRD(pWrA_reg__0),
        .DIA(pDataInRaw[1:0]),
        .DIB(pDataInRaw[3:2]),
        .DIC(pDataInRaw[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[1:0]),
        .DOB(p_0_out[3:2]),
        .DOC(p_0_out[5:4]),
        .DOD(NLW_pFIFO_reg_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(rMMCM_LckdRisingFlag_reg),
        .WE(pAllVld));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M pFIFO_reg_0_31_6_9
       (.ADDRA(pRdA),
        .ADDRB(pRdA),
        .ADDRC(pRdA),
        .ADDRD(pWrA_reg__0),
        .DIA(pDataInRaw[7:6]),
        .DIB(pDataInRaw[9:8]),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[7:6]),
        .DOB(p_0_out[9:8]),
        .DOC(NLW_pFIFO_reg_0_31_6_9_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_pFIFO_reg_0_31_6_9_DOD_UNCONNECTED[1:0]),
        .WCLK(rMMCM_LckdRisingFlag_reg),
        .WE(pAllVld));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'hE)) 
    pMeRdy_int_i_1
       (.I0(pBlnkBgnFlag),
        .I1(pC1_reg_0),
        .O(pMeRdy_int_i_1_n_0));
  FDRE pMeRdy_int_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pMeRdy_int_i_1_n_0),
        .Q(pC1_reg_0),
        .R(SR));
  FDRE \pRdA_reg[0] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(pRdEn),
        .D(p_0_in__1[0]),
        .Q(pRdA_reg__0[0]),
        .R(SR));
  FDRE \pRdA_reg[1] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(pRdEn),
        .D(p_0_in__1[1]),
        .Q(pRdA_reg__0[1]),
        .R(SR));
  FDRE \pRdA_reg[2] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(pRdEn),
        .D(p_0_in__1[2]),
        .Q(pRdA_reg__0[2]),
        .R(SR));
  FDRE \pRdA_reg[3] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(pRdEn),
        .D(p_0_in__1[3]),
        .Q(pRdA_reg__0[3]),
        .R(SR));
  FDRE \pRdA_reg[4] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(pRdEn),
        .D(p_0_in__1[4]),
        .Q(pRdA_reg__0[4]),
        .R(SR));
  FDRE \pRdA_reg_rep[0] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(pRdEn),
        .D(p_0_in__1[0]),
        .Q(pRdA[0]),
        .R(SR));
  FDRE \pRdA_reg_rep[1] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(pRdEn),
        .D(p_0_in__1[1]),
        .Q(pRdA[1]),
        .R(SR));
  FDRE \pRdA_reg_rep[2] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(pRdEn),
        .D(p_0_in__1[2]),
        .Q(pRdA[2]),
        .R(SR));
  FDRE \pRdA_reg_rep[3] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(pRdEn),
        .D(p_0_in__1[3]),
        .Q(pRdA[3]),
        .R(SR));
  FDRE \pRdA_reg_rep[4] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(pRdEn),
        .D(p_0_in__1[4]),
        .Q(pRdA[4]),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \pRdA_rep[0]_i_1 
       (.I0(pRdA_reg__0[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pRdA_rep[1]_i_1 
       (.I0(pRdA_reg__0[0]),
        .I1(pRdA_reg__0[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \pRdA_rep[2]_i_1 
       (.I0(pRdA_reg__0[1]),
        .I1(pRdA_reg__0[0]),
        .I2(pRdA_reg__0[2]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \pRdA_rep[3]_i_1 
       (.I0(pRdA_reg__0[2]),
        .I1(pRdA_reg__0[0]),
        .I2(pRdA_reg__0[1]),
        .I3(pRdA_reg__0[3]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \pRdA_rep[4]_i_2 
       (.I0(pRdA_reg__0[3]),
        .I1(pRdA_reg__0[1]),
        .I2(pRdA_reg__0[0]),
        .I3(pRdA_reg__0[2]),
        .I4(pRdA_reg__0[4]),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'hEAAAFFFFEAAAEAAA)) 
    pRdEn_i_1
       (.I0(pAllVldBgnFlag),
        .I1(pRdy_1),
        .I2(pC1_reg_0),
        .I3(pRdy_0),
        .I4(pBlnkBgnFlag),
        .I5(pRdEn),
        .O(pRdEn_i_1_n_0));
  FDRE pRdEn_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pRdEn_i_1_n_0),
        .Q(pRdEn),
        .R(SR));
  LUT6 #(
    .INIT(64'h5575FFFF55755575)) 
    pTokenFlag_i_1
       (.I0(pRdEn),
        .I1(\pDataIn[5]_i_3_n_0 ),
        .I2(pDataInBnd[8]),
        .I3(\pDataIn[3]_i_2_n_0 ),
        .I4(\pDataIn[0]_i_4_n_0 ),
        .I5(pDataInBnd[0]),
        .O(pTokenFlag0));
  FDRE pTokenFlag_q_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pTokenFlag),
        .Q(pTokenFlag_q),
        .R(1'b0));
  FDRE pTokenFlag_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pTokenFlag0),
        .Q(pTokenFlag),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \pWrA[0]_i_1 
       (.I0(pWrA_reg__0[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pWrA[1]_i_1 
       (.I0(pWrA_reg__0[0]),
        .I1(pWrA_reg__0[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \pWrA[2]_i_1 
       (.I0(pWrA_reg__0[1]),
        .I1(pWrA_reg__0[0]),
        .I2(pWrA_reg__0[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \pWrA[3]_i_1 
       (.I0(pWrA_reg__0[2]),
        .I1(pWrA_reg__0[0]),
        .I2(pWrA_reg__0[1]),
        .I3(pWrA_reg__0[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \pWrA[4]_i_1 
       (.I0(pWrA_reg__0[3]),
        .I1(pWrA_reg__0[1]),
        .I2(pWrA_reg__0[0]),
        .I3(pWrA_reg__0[2]),
        .I4(pWrA_reg__0[4]),
        .O(p_0_in__0[4]));
  FDRE \pWrA_reg[0] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(p_0_in__0[0]),
        .Q(pWrA_reg__0[0]),
        .R(SR));
  FDRE \pWrA_reg[1] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(p_0_in__0[1]),
        .Q(pWrA_reg__0[1]),
        .R(SR));
  FDRE \pWrA_reg[2] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(p_0_in__0[2]),
        .Q(pWrA_reg__0[2]),
        .R(SR));
  FDRE \pWrA_reg[3] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(p_0_in__0[3]),
        .Q(pWrA_reg__0[3]),
        .R(SR));
  FDRE \pWrA_reg[4] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(p_0_in__0[4]),
        .Q(pWrA_reg__0[4]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "ChannelBond" *) 
module dvi2rgb_ip_ChannelBond_10
   (pAllVld_q,
    D,
    \pDataIn_reg[7] ,
    \pDataIn_reg[7]_0 ,
    rMMCM_LckdRisingFlag_reg,
    pAllVld,
    pAllVldBgnFlag0,
    SR,
    pRdy_2,
    pRdy_0,
    pDataInRaw);
  output pAllVld_q;
  output [7:0]D;
  output [0:0]\pDataIn_reg[7] ;
  output \pDataIn_reg[7]_0 ;
  input rMMCM_LckdRisingFlag_reg;
  input pAllVld;
  input pAllVldBgnFlag0;
  input [0:0]SR;
  input pRdy_2;
  input pRdy_0;
  input [9:0]pDataInRaw;

  wire [7:0]D;
  wire [0:0]SR;
  wire pAllVld;
  wire pAllVldBgnFlag;
  wire pAllVldBgnFlag0;
  wire pAllVld_q;
  wire pBlnkBgnFlag;
  wire pBlnkBgnFlag_i_1__0_n_0;
  wire \pDataFIFO_reg_n_0_[9] ;
  wire [8:0]pDataInBnd;
  wire [9:0]pDataInRaw;
  wire \pDataIn[0]_i_2__0_n_0 ;
  wire \pDataIn[0]_i_3__0_n_0 ;
  wire \pDataIn[0]_i_4__0_n_0 ;
  wire \pDataIn[1]_i_2__0_n_0 ;
  wire \pDataIn[3]_i_2__0_n_0 ;
  wire \pDataIn[4]_i_2__0_n_0 ;
  wire \pDataIn[5]_i_2__0_n_0 ;
  wire \pDataIn[5]_i_3__0_n_0 ;
  wire \pDataIn[7]_i_3__0_n_0 ;
  wire [0:0]\pDataIn_reg[7] ;
  wire \pDataIn_reg[7]_0 ;
  wire pMeRdy_int_i_1_n_0;
  wire [4:0]pRdA;
  wire [4:0]pRdA_reg__0;
  wire pRdEn;
  wire pRdEn_i_1__0_n_0;
  wire pRdy_0;
  wire pRdy_2;
  wire pTokenFlag;
  wire pTokenFlag0;
  wire pTokenFlag_q;
  wire [4:0]pWrA_reg__0;
  wire [4:0]p_0_in__0;
  wire [4:0]p_0_in__1;
  wire [9:0]p_0_out;
  wire rMMCM_LckdRisingFlag_reg;
  wire [1:0]NLW_pFIFO_reg_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_pFIFO_reg_0_31_6_9_DOC_UNCONNECTED;
  wire [1:0]NLW_pFIFO_reg_0_31_6_9_DOD_UNCONNECTED;

  FDRE pAllVldBgnFlag_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pAllVldBgnFlag0),
        .Q(pAllVldBgnFlag),
        .R(1'b0));
  FDRE pAllVld_q_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pAllVld),
        .Q(pAllVld_q),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    pBlnkBgnFlag_i_1__0
       (.I0(pTokenFlag),
        .I1(pTokenFlag_q),
        .O(pBlnkBgnFlag_i_1__0_n_0));
  FDRE pBlnkBgnFlag_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pBlnkBgnFlag_i_1__0_n_0),
        .Q(pBlnkBgnFlag),
        .R(1'b0));
  FDRE \pDataFIFO_reg[0] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(p_0_out[0]),
        .Q(pDataInBnd[0]),
        .R(1'b0));
  FDRE \pDataFIFO_reg[1] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(p_0_out[1]),
        .Q(pDataInBnd[1]),
        .R(1'b0));
  FDRE \pDataFIFO_reg[2] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(p_0_out[2]),
        .Q(pDataInBnd[2]),
        .R(1'b0));
  FDRE \pDataFIFO_reg[3] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(p_0_out[3]),
        .Q(pDataInBnd[3]),
        .R(1'b0));
  FDRE \pDataFIFO_reg[4] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(p_0_out[4]),
        .Q(pDataInBnd[4]),
        .R(1'b0));
  FDRE \pDataFIFO_reg[5] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(p_0_out[5]),
        .Q(pDataInBnd[5]),
        .R(1'b0));
  FDRE \pDataFIFO_reg[6] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(p_0_out[6]),
        .Q(pDataInBnd[6]),
        .R(1'b0));
  FDRE \pDataFIFO_reg[7] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(p_0_out[7]),
        .Q(pDataInBnd[7]),
        .R(1'b0));
  FDRE \pDataFIFO_reg[8] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(p_0_out[8]),
        .Q(pDataInBnd[8]),
        .R(1'b0));
  FDRE \pDataFIFO_reg[9] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(p_0_out[9]),
        .Q(\pDataFIFO_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000FEFEFF000000)) 
    \pDataIn[0]_i_1__0 
       (.I0(\pDataIn[0]_i_2__0_n_0 ),
        .I1(\pDataIn[5]_i_3__0_n_0 ),
        .I2(\pDataIn[0]_i_3__0_n_0 ),
        .I3(\pDataIn[0]_i_4__0_n_0 ),
        .I4(pDataInBnd[0]),
        .I5(\pDataFIFO_reg_n_0_[9] ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \pDataIn[0]_i_2__0 
       (.I0(pDataInBnd[5]),
        .I1(pDataInBnd[4]),
        .O(\pDataIn[0]_i_2__0_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \pDataIn[0]_i_3__0 
       (.I0(pDataInBnd[6]),
        .I1(pDataInBnd[7]),
        .I2(pDataInBnd[8]),
        .O(\pDataIn[0]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \pDataIn[0]_i_4__0 
       (.I0(\pDataIn[1]_i_2__0_n_0 ),
        .I1(pDataInBnd[1]),
        .I2(pDataInBnd[8]),
        .O(\pDataIn[0]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h38C3)) 
    \pDataIn[1]_i_1__0 
       (.I0(\pDataIn[1]_i_2__0_n_0 ),
        .I1(pDataInBnd[0]),
        .I2(pDataInBnd[8]),
        .I3(pDataInBnd[1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFBFFFFFF)) 
    \pDataIn[1]_i_2__0 
       (.I0(pDataInBnd[6]),
        .I1(pDataInBnd[7]),
        .I2(pDataInBnd[4]),
        .I3(pDataInBnd[5]),
        .I4(pDataInBnd[3]),
        .I5(pDataInBnd[2]),
        .O(\pDataIn[1]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h0FF0E00F)) 
    \pDataIn[2]_i_1__0 
       (.I0(\pDataIn[3]_i_2__0_n_0 ),
        .I1(pDataInBnd[3]),
        .I2(pDataInBnd[8]),
        .I3(pDataInBnd[2]),
        .I4(pDataInBnd[1]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h0EF0F00F)) 
    \pDataIn[3]_i_1__0 
       (.I0(pDataInBnd[1]),
        .I1(\pDataIn[3]_i_2__0_n_0 ),
        .I2(pDataInBnd[3]),
        .I3(pDataInBnd[8]),
        .I4(pDataInBnd[2]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    \pDataIn[3]_i_2__0 
       (.I0(pDataInBnd[0]),
        .I1(pDataInBnd[7]),
        .I2(pDataInBnd[6]),
        .I3(pDataInBnd[4]),
        .I4(pDataInBnd[5]),
        .O(\pDataIn[3]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00FEFF00FF0000FF)) 
    \pDataIn[4]_i_1__0 
       (.I0(pDataInBnd[5]),
        .I1(\pDataIn[4]_i_2__0_n_0 ),
        .I2(\pDataIn[5]_i_2__0_n_0 ),
        .I3(pDataInBnd[3]),
        .I4(pDataInBnd[8]),
        .I5(pDataInBnd[4]),
        .O(D[4]));
  LUT2 #(
    .INIT(4'hB)) 
    \pDataIn[4]_i_2__0 
       (.I0(pDataInBnd[1]),
        .I1(pDataInBnd[2]),
        .O(\pDataIn[4]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h0EF0F00F)) 
    \pDataIn[5]_i_1__0 
       (.I0(\pDataIn[5]_i_2__0_n_0 ),
        .I1(\pDataIn[5]_i_3__0_n_0 ),
        .I2(pDataInBnd[5]),
        .I3(pDataInBnd[4]),
        .I4(pDataInBnd[8]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \pDataIn[5]_i_2__0 
       (.I0(pDataInBnd[6]),
        .I1(pDataInBnd[7]),
        .I2(pDataInBnd[0]),
        .O(\pDataIn[5]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \pDataIn[5]_i_3__0 
       (.I0(pDataInBnd[2]),
        .I1(pDataInBnd[1]),
        .I2(pDataInBnd[3]),
        .O(\pDataIn[5]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h00FFFF00FD0000FF)) 
    \pDataIn[6]_i_1__0 
       (.I0(pDataInBnd[4]),
        .I1(pDataInBnd[7]),
        .I2(\pDataIn[7]_i_3__0_n_0 ),
        .I3(pDataInBnd[8]),
        .I4(pDataInBnd[6]),
        .I5(pDataInBnd[5]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \pDataIn[7]_i_1 
       (.I0(\pDataIn_reg[7]_0 ),
        .I1(pRdy_2),
        .I2(pRdy_0),
        .O(\pDataIn_reg[7] ));
  LUT6 #(
    .INIT(64'h3CC338C33CC33CC3)) 
    \pDataIn[7]_i_2__0 
       (.I0(\pDataIn[7]_i_3__0_n_0 ),
        .I1(pDataInBnd[8]),
        .I2(pDataInBnd[7]),
        .I3(pDataInBnd[6]),
        .I4(pDataInBnd[5]),
        .I5(pDataInBnd[4]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \pDataIn[7]_i_3__0 
       (.I0(pDataInBnd[3]),
        .I1(pDataInBnd[1]),
        .I2(pDataInBnd[2]),
        .I3(pDataInBnd[0]),
        .O(\pDataIn[7]_i_3__0_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M pFIFO_reg_0_31_0_5
       (.ADDRA(pRdA),
        .ADDRB(pRdA),
        .ADDRC(pRdA),
        .ADDRD(pWrA_reg__0),
        .DIA(pDataInRaw[1:0]),
        .DIB(pDataInRaw[3:2]),
        .DIC(pDataInRaw[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[1:0]),
        .DOB(p_0_out[3:2]),
        .DOC(p_0_out[5:4]),
        .DOD(NLW_pFIFO_reg_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(rMMCM_LckdRisingFlag_reg),
        .WE(pAllVld));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M pFIFO_reg_0_31_6_9
       (.ADDRA(pRdA),
        .ADDRB(pRdA),
        .ADDRC(pRdA),
        .ADDRD(pWrA_reg__0),
        .DIA(pDataInRaw[7:6]),
        .DIB(pDataInRaw[9:8]),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[7:6]),
        .DOB(p_0_out[9:8]),
        .DOC(NLW_pFIFO_reg_0_31_6_9_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_pFIFO_reg_0_31_6_9_DOD_UNCONNECTED[1:0]),
        .WCLK(rMMCM_LckdRisingFlag_reg),
        .WE(pAllVld));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'hE)) 
    pMeRdy_int_i_1
       (.I0(pBlnkBgnFlag),
        .I1(\pDataIn_reg[7]_0 ),
        .O(pMeRdy_int_i_1_n_0));
  FDRE pMeRdy_int_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pMeRdy_int_i_1_n_0),
        .Q(\pDataIn_reg[7]_0 ),
        .R(SR));
  FDRE \pRdA_reg[0] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(pRdEn),
        .D(p_0_in__1[0]),
        .Q(pRdA_reg__0[0]),
        .R(SR));
  FDRE \pRdA_reg[1] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(pRdEn),
        .D(p_0_in__1[1]),
        .Q(pRdA_reg__0[1]),
        .R(SR));
  FDRE \pRdA_reg[2] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(pRdEn),
        .D(p_0_in__1[2]),
        .Q(pRdA_reg__0[2]),
        .R(SR));
  FDRE \pRdA_reg[3] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(pRdEn),
        .D(p_0_in__1[3]),
        .Q(pRdA_reg__0[3]),
        .R(SR));
  FDRE \pRdA_reg[4] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(pRdEn),
        .D(p_0_in__1[4]),
        .Q(pRdA_reg__0[4]),
        .R(SR));
  FDRE \pRdA_reg_rep[0] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(pRdEn),
        .D(p_0_in__1[0]),
        .Q(pRdA[0]),
        .R(SR));
  FDRE \pRdA_reg_rep[1] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(pRdEn),
        .D(p_0_in__1[1]),
        .Q(pRdA[1]),
        .R(SR));
  FDRE \pRdA_reg_rep[2] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(pRdEn),
        .D(p_0_in__1[2]),
        .Q(pRdA[2]),
        .R(SR));
  FDRE \pRdA_reg_rep[3] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(pRdEn),
        .D(p_0_in__1[3]),
        .Q(pRdA[3]),
        .R(SR));
  FDRE \pRdA_reg_rep[4] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(pRdEn),
        .D(p_0_in__1[4]),
        .Q(pRdA[4]),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \pRdA_rep[0]_i_1__0 
       (.I0(pRdA_reg__0[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pRdA_rep[1]_i_1__0 
       (.I0(pRdA_reg__0[0]),
        .I1(pRdA_reg__0[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \pRdA_rep[2]_i_1__0 
       (.I0(pRdA_reg__0[1]),
        .I1(pRdA_reg__0[0]),
        .I2(pRdA_reg__0[2]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \pRdA_rep[3]_i_1__0 
       (.I0(pRdA_reg__0[2]),
        .I1(pRdA_reg__0[0]),
        .I2(pRdA_reg__0[1]),
        .I3(pRdA_reg__0[3]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \pRdA_rep[4]_i_1__0 
       (.I0(pRdA_reg__0[3]),
        .I1(pRdA_reg__0[1]),
        .I2(pRdA_reg__0[0]),
        .I3(pRdA_reg__0[2]),
        .I4(pRdA_reg__0[4]),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'hEAAAFFFFEAAAEAAA)) 
    pRdEn_i_1__0
       (.I0(pAllVldBgnFlag),
        .I1(pRdy_0),
        .I2(\pDataIn_reg[7]_0 ),
        .I3(pRdy_2),
        .I4(pBlnkBgnFlag),
        .I5(pRdEn),
        .O(pRdEn_i_1__0_n_0));
  FDRE pRdEn_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pRdEn_i_1__0_n_0),
        .Q(pRdEn),
        .R(SR));
  LUT6 #(
    .INIT(64'h5575FFFF55755575)) 
    pTokenFlag_i_1__0
       (.I0(pRdEn),
        .I1(\pDataIn[5]_i_3__0_n_0 ),
        .I2(pDataInBnd[8]),
        .I3(\pDataIn[3]_i_2__0_n_0 ),
        .I4(\pDataIn[0]_i_4__0_n_0 ),
        .I5(pDataInBnd[0]),
        .O(pTokenFlag0));
  FDRE pTokenFlag_q_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pTokenFlag),
        .Q(pTokenFlag_q),
        .R(1'b0));
  FDRE pTokenFlag_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pTokenFlag0),
        .Q(pTokenFlag),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \pWrA[0]_i_1__0 
       (.I0(pWrA_reg__0[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pWrA[1]_i_1__0 
       (.I0(pWrA_reg__0[0]),
        .I1(pWrA_reg__0[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \pWrA[2]_i_1__0 
       (.I0(pWrA_reg__0[1]),
        .I1(pWrA_reg__0[0]),
        .I2(pWrA_reg__0[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \pWrA[3]_i_1__0 
       (.I0(pWrA_reg__0[2]),
        .I1(pWrA_reg__0[0]),
        .I2(pWrA_reg__0[1]),
        .I3(pWrA_reg__0[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \pWrA[4]_i_1__0 
       (.I0(pWrA_reg__0[3]),
        .I1(pWrA_reg__0[1]),
        .I2(pWrA_reg__0[0]),
        .I3(pWrA_reg__0[2]),
        .I4(pWrA_reg__0[4]),
        .O(p_0_in__0[4]));
  FDRE \pWrA_reg[0] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(p_0_in__0[0]),
        .Q(pWrA_reg__0[0]),
        .R(SR));
  FDRE \pWrA_reg[1] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(p_0_in__0[1]),
        .Q(pWrA_reg__0[1]),
        .R(SR));
  FDRE \pWrA_reg[2] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(p_0_in__0[2]),
        .Q(pWrA_reg__0[2]),
        .R(SR));
  FDRE \pWrA_reg[3] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(p_0_in__0[3]),
        .Q(pWrA_reg__0[3]),
        .R(SR));
  FDRE \pWrA_reg[4] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(p_0_in__0[4]),
        .Q(pWrA_reg__0[4]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "ChannelBond" *) 
module dvi2rgb_ip_ChannelBond_17
   (pAllVld_q,
    D,
    pVde,
    \pDataIn_reg[7] ,
    \pDataIn_reg[7]_0 ,
    pC1_reg,
    pC0_reg,
    pAllVld,
    rMMCM_LckdRisingFlag_reg,
    pAllVldBgnFlag0,
    pAligned_reg,
    pRdy_1,
    pRdy_2,
    vid_pVSync,
    vid_pHSync,
    pDataInRaw);
  output pAllVld_q;
  output [7:0]D;
  output pVde;
  output [0:0]\pDataIn_reg[7] ;
  output \pDataIn_reg[7]_0 ;
  output pC1_reg;
  output pC0_reg;
  input pAllVld;
  input rMMCM_LckdRisingFlag_reg;
  input pAllVldBgnFlag0;
  input [0:0]pAligned_reg;
  input pRdy_1;
  input pRdy_2;
  input vid_pVSync;
  input vid_pHSync;
  input [9:0]pDataInRaw;

  wire [7:0]D;
  wire [0:0]pAligned_reg;
  wire pAllVld;
  wire pAllVldBgnFlag;
  wire pAllVldBgnFlag0;
  wire pAllVld_q;
  wire pBlnkBgnFlag;
  wire pBlnkBgnFlag_i_1__1_n_0;
  wire pC0;
  wire pC0_reg;
  wire pC1_reg;
  wire \pDataFIFO_reg_n_0_[9] ;
  wire [8:0]pDataInBnd;
  wire [9:0]pDataInRaw;
  wire \pDataIn[0]_i_2__1_n_0 ;
  wire \pDataIn[0]_i_3__1_n_0 ;
  wire \pDataIn[1]_i_2__1_n_0 ;
  wire \pDataIn[3]_i_2__1_n_0 ;
  wire \pDataIn[4]_i_2__1_n_0 ;
  wire \pDataIn[5]_i_2__1_n_0 ;
  wire \pDataIn[6]_i_2_n_0 ;
  wire \pDataIn[7]_i_3__1_n_0 ;
  wire \pDataIn[7]_i_4_n_0 ;
  wire [0:0]\pDataIn_reg[7] ;
  wire \pDataIn_reg[7]_0 ;
  wire pMeRdy_int_i_1_n_0;
  wire [4:0]pRdA;
  wire [4:0]pRdA_reg__0;
  wire pRdEn;
  wire pRdEn_i_1__1_n_0;
  wire pRdy_1;
  wire pRdy_2;
  wire pTokenFlag;
  wire pTokenFlag0;
  wire pTokenFlag_q;
  wire pVde;
  wire pVde_i_2_n_0;
  wire [4:0]pWrA_reg__0;
  wire [4:0]p_0_in__0;
  wire [4:0]p_0_in__1;
  wire [9:0]p_0_out;
  wire rMMCM_LckdRisingFlag_reg;
  wire vid_pHSync;
  wire vid_pVSync;
  wire [1:0]NLW_pFIFO_reg_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_pFIFO_reg_0_31_6_9_DOC_UNCONNECTED;
  wire [1:0]NLW_pFIFO_reg_0_31_6_9_DOD_UNCONNECTED;

  FDRE pAllVldBgnFlag_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pAllVldBgnFlag0),
        .Q(pAllVldBgnFlag),
        .R(1'b0));
  FDRE pAllVld_q_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pAllVld),
        .Q(pAllVld_q),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    pBlnkBgnFlag_i_1__1
       (.I0(pTokenFlag),
        .I1(pTokenFlag_q),
        .O(pBlnkBgnFlag_i_1__1_n_0));
  FDRE pBlnkBgnFlag_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pBlnkBgnFlag_i_1__1_n_0),
        .Q(pBlnkBgnFlag),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h74)) 
    pC0_i_1
       (.I0(pDataInBnd[8]),
        .I1(pC0),
        .I2(vid_pHSync),
        .O(pC0_reg));
  LUT6 #(
    .INIT(64'h11110F0011110000)) 
    pC0_i_2
       (.I0(\pDataIn[3]_i_2__1_n_0 ),
        .I1(\pDataIn[7]_i_3__1_n_0 ),
        .I2(\pDataIn[1]_i_2__1_n_0 ),
        .I3(pDataInBnd[1]),
        .I4(pDataInBnd[8]),
        .I5(pDataInBnd[0]),
        .O(pC0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h6F60)) 
    pC1_i_1
       (.I0(\pDataFIFO_reg_n_0_[9] ),
        .I1(pDataInBnd[8]),
        .I2(pC0),
        .I3(vid_pVSync),
        .O(pC1_reg));
  FDRE \pDataFIFO_reg[0] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(p_0_out[0]),
        .Q(pDataInBnd[0]),
        .R(1'b0));
  FDRE \pDataFIFO_reg[1] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(p_0_out[1]),
        .Q(pDataInBnd[1]),
        .R(1'b0));
  FDRE \pDataFIFO_reg[2] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(p_0_out[2]),
        .Q(pDataInBnd[2]),
        .R(1'b0));
  FDRE \pDataFIFO_reg[3] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(p_0_out[3]),
        .Q(pDataInBnd[3]),
        .R(1'b0));
  FDRE \pDataFIFO_reg[4] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(p_0_out[4]),
        .Q(pDataInBnd[4]),
        .R(1'b0));
  FDRE \pDataFIFO_reg[5] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(p_0_out[5]),
        .Q(pDataInBnd[5]),
        .R(1'b0));
  FDRE \pDataFIFO_reg[6] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(p_0_out[6]),
        .Q(pDataInBnd[6]),
        .R(1'b0));
  FDRE \pDataFIFO_reg[7] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(p_0_out[7]),
        .Q(pDataInBnd[7]),
        .R(1'b0));
  FDRE \pDataFIFO_reg[8] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(p_0_out[8]),
        .Q(pDataInBnd[8]),
        .R(1'b0));
  FDRE \pDataFIFO_reg[9] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(p_0_out[9]),
        .Q(\pDataFIFO_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000FEFEFF000000)) 
    \pDataIn[0]_i_1__1 
       (.I0(\pDataIn[7]_i_4_n_0 ),
        .I1(\pDataIn[7]_i_3__1_n_0 ),
        .I2(\pDataIn[0]_i_2__1_n_0 ),
        .I3(\pDataIn[0]_i_3__1_n_0 ),
        .I4(pDataInBnd[0]),
        .I5(\pDataFIFO_reg_n_0_[9] ),
        .O(D[0]));
  LUT3 #(
    .INIT(8'hDF)) 
    \pDataIn[0]_i_2__1 
       (.I0(pDataInBnd[6]),
        .I1(pDataInBnd[7]),
        .I2(pDataInBnd[8]),
        .O(\pDataIn[0]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \pDataIn[0]_i_3__1 
       (.I0(\pDataIn[1]_i_2__1_n_0 ),
        .I1(pDataInBnd[1]),
        .I2(pDataInBnd[8]),
        .O(\pDataIn[0]_i_3__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h38C3)) 
    \pDataIn[1]_i_1__1 
       (.I0(\pDataIn[1]_i_2__1_n_0 ),
        .I1(pDataInBnd[0]),
        .I2(pDataInBnd[8]),
        .I3(pDataInBnd[1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFBFFFFFF)) 
    \pDataIn[1]_i_2__1 
       (.I0(pDataInBnd[6]),
        .I1(pDataInBnd[7]),
        .I2(pDataInBnd[4]),
        .I3(pDataInBnd[5]),
        .I4(pDataInBnd[3]),
        .I5(pDataInBnd[2]),
        .O(\pDataIn[1]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0FF0E00F)) 
    \pDataIn[2]_i_1__1 
       (.I0(\pDataIn[3]_i_2__1_n_0 ),
        .I1(pDataInBnd[3]),
        .I2(pDataInBnd[8]),
        .I3(pDataInBnd[2]),
        .I4(pDataInBnd[1]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0EF0F00F)) 
    \pDataIn[3]_i_1__1 
       (.I0(pDataInBnd[1]),
        .I1(\pDataIn[3]_i_2__1_n_0 ),
        .I2(pDataInBnd[3]),
        .I3(pDataInBnd[8]),
        .I4(pDataInBnd[2]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    \pDataIn[3]_i_2__1 
       (.I0(pDataInBnd[0]),
        .I1(pDataInBnd[7]),
        .I2(pDataInBnd[6]),
        .I3(pDataInBnd[4]),
        .I4(pDataInBnd[5]),
        .O(\pDataIn[3]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h00FEFF00FF0000FF)) 
    \pDataIn[4]_i_1__1 
       (.I0(pDataInBnd[5]),
        .I1(\pDataIn[4]_i_2__1_n_0 ),
        .I2(\pDataIn[5]_i_2__1_n_0 ),
        .I3(pDataInBnd[3]),
        .I4(pDataInBnd[8]),
        .I5(pDataInBnd[4]),
        .O(D[4]));
  LUT2 #(
    .INIT(4'hB)) 
    \pDataIn[4]_i_2__1 
       (.I0(pDataInBnd[1]),
        .I1(pDataInBnd[2]),
        .O(\pDataIn[4]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h0EF0F00F)) 
    \pDataIn[5]_i_1__1 
       (.I0(\pDataIn[5]_i_2__1_n_0 ),
        .I1(\pDataIn[7]_i_3__1_n_0 ),
        .I2(pDataInBnd[5]),
        .I3(pDataInBnd[4]),
        .I4(pDataInBnd[8]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \pDataIn[5]_i_2__1 
       (.I0(pDataInBnd[6]),
        .I1(pDataInBnd[7]),
        .I2(pDataInBnd[0]),
        .O(\pDataIn[5]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h00FFFF00FD0000FF)) 
    \pDataIn[6]_i_1__1 
       (.I0(pDataInBnd[4]),
        .I1(pDataInBnd[7]),
        .I2(\pDataIn[6]_i_2_n_0 ),
        .I3(pDataInBnd[8]),
        .I4(pDataInBnd[6]),
        .I5(pDataInBnd[5]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \pDataIn[6]_i_2 
       (.I0(pDataInBnd[3]),
        .I1(pDataInBnd[1]),
        .I2(pDataInBnd[2]),
        .I3(pDataInBnd[0]),
        .O(\pDataIn[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \pDataIn[7]_i_1__0 
       (.I0(\pDataIn_reg[7]_0 ),
        .I1(pRdy_1),
        .I2(pRdy_2),
        .O(\pDataIn_reg[7] ));
  LUT6 #(
    .INIT(64'h0FF0F00F0FE0F00F)) 
    \pDataIn[7]_i_2__1 
       (.I0(pDataInBnd[0]),
        .I1(\pDataIn[7]_i_3__1_n_0 ),
        .I2(pDataInBnd[8]),
        .I3(pDataInBnd[7]),
        .I4(pDataInBnd[6]),
        .I5(\pDataIn[7]_i_4_n_0 ),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \pDataIn[7]_i_3__1 
       (.I0(pDataInBnd[2]),
        .I1(pDataInBnd[1]),
        .I2(pDataInBnd[3]),
        .O(\pDataIn[7]_i_3__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \pDataIn[7]_i_4 
       (.I0(pDataInBnd[5]),
        .I1(pDataInBnd[4]),
        .O(\pDataIn[7]_i_4_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M pFIFO_reg_0_31_0_5
       (.ADDRA(pRdA),
        .ADDRB(pRdA),
        .ADDRC(pRdA),
        .ADDRD(pWrA_reg__0),
        .DIA(pDataInRaw[1:0]),
        .DIB(pDataInRaw[3:2]),
        .DIC(pDataInRaw[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[1:0]),
        .DOB(p_0_out[3:2]),
        .DOC(p_0_out[5:4]),
        .DOD(NLW_pFIFO_reg_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(rMMCM_LckdRisingFlag_reg),
        .WE(pAllVld));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M pFIFO_reg_0_31_6_9
       (.ADDRA(pRdA),
        .ADDRB(pRdA),
        .ADDRC(pRdA),
        .ADDRD(pWrA_reg__0),
        .DIA(pDataInRaw[7:6]),
        .DIB(pDataInRaw[9:8]),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[7:6]),
        .DOB(p_0_out[9:8]),
        .DOC(NLW_pFIFO_reg_0_31_6_9_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_pFIFO_reg_0_31_6_9_DOD_UNCONNECTED[1:0]),
        .WCLK(rMMCM_LckdRisingFlag_reg),
        .WE(pAllVld));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hE)) 
    pMeRdy_int_i_1
       (.I0(pBlnkBgnFlag),
        .I1(\pDataIn_reg[7]_0 ),
        .O(pMeRdy_int_i_1_n_0));
  FDRE pMeRdy_int_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pMeRdy_int_i_1_n_0),
        .Q(\pDataIn_reg[7]_0 ),
        .R(pAligned_reg));
  FDRE \pRdA_reg[0] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(pRdEn),
        .D(p_0_in__1[0]),
        .Q(pRdA_reg__0[0]),
        .R(pAligned_reg));
  FDRE \pRdA_reg[1] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(pRdEn),
        .D(p_0_in__1[1]),
        .Q(pRdA_reg__0[1]),
        .R(pAligned_reg));
  FDRE \pRdA_reg[2] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(pRdEn),
        .D(p_0_in__1[2]),
        .Q(pRdA_reg__0[2]),
        .R(pAligned_reg));
  FDRE \pRdA_reg[3] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(pRdEn),
        .D(p_0_in__1[3]),
        .Q(pRdA_reg__0[3]),
        .R(pAligned_reg));
  FDRE \pRdA_reg[4] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(pRdEn),
        .D(p_0_in__1[4]),
        .Q(pRdA_reg__0[4]),
        .R(pAligned_reg));
  FDRE \pRdA_reg_rep[0] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(pRdEn),
        .D(p_0_in__1[0]),
        .Q(pRdA[0]),
        .R(pAligned_reg));
  FDRE \pRdA_reg_rep[1] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(pRdEn),
        .D(p_0_in__1[1]),
        .Q(pRdA[1]),
        .R(pAligned_reg));
  FDRE \pRdA_reg_rep[2] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(pRdEn),
        .D(p_0_in__1[2]),
        .Q(pRdA[2]),
        .R(pAligned_reg));
  FDRE \pRdA_reg_rep[3] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(pRdEn),
        .D(p_0_in__1[3]),
        .Q(pRdA[3]),
        .R(pAligned_reg));
  FDRE \pRdA_reg_rep[4] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(pRdEn),
        .D(p_0_in__1[4]),
        .Q(pRdA[4]),
        .R(pAligned_reg));
  LUT1 #(
    .INIT(2'h1)) 
    \pRdA_rep[0]_i_1__1 
       (.I0(pRdA_reg__0[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pRdA_rep[1]_i_1__1 
       (.I0(pRdA_reg__0[0]),
        .I1(pRdA_reg__0[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \pRdA_rep[2]_i_1__1 
       (.I0(pRdA_reg__0[1]),
        .I1(pRdA_reg__0[0]),
        .I2(pRdA_reg__0[2]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \pRdA_rep[3]_i_1__1 
       (.I0(pRdA_reg__0[2]),
        .I1(pRdA_reg__0[0]),
        .I2(pRdA_reg__0[1]),
        .I3(pRdA_reg__0[3]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \pRdA_rep[4]_i_1__1 
       (.I0(pRdA_reg__0[3]),
        .I1(pRdA_reg__0[1]),
        .I2(pRdA_reg__0[0]),
        .I3(pRdA_reg__0[2]),
        .I4(pRdA_reg__0[4]),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'hEAAAFFFFEAAAEAAA)) 
    pRdEn_i_1__1
       (.I0(pAllVldBgnFlag),
        .I1(pRdy_2),
        .I2(\pDataIn_reg[7]_0 ),
        .I3(pRdy_1),
        .I4(pBlnkBgnFlag),
        .I5(pRdEn),
        .O(pRdEn_i_1__1_n_0));
  FDRE pRdEn_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pRdEn_i_1__1_n_0),
        .Q(pRdEn),
        .R(pAligned_reg));
  LUT6 #(
    .INIT(64'h5575FFFF55755575)) 
    pTokenFlag_i_1__1
       (.I0(pRdEn),
        .I1(\pDataIn[7]_i_3__1_n_0 ),
        .I2(pDataInBnd[8]),
        .I3(\pDataIn[3]_i_2__1_n_0 ),
        .I4(\pDataIn[0]_i_3__1_n_0 ),
        .I5(pDataInBnd[0]),
        .O(pTokenFlag0));
  FDRE pTokenFlag_q_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pTokenFlag),
        .Q(pTokenFlag_q),
        .R(1'b0));
  FDRE pTokenFlag_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pTokenFlag0),
        .Q(pTokenFlag),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFF0BFBFFFFFBFBF)) 
    pVde_i_1
       (.I0(pVde_i_2_n_0),
        .I1(pDataInBnd[2]),
        .I2(pDataInBnd[8]),
        .I3(\pDataIn[1]_i_2__1_n_0 ),
        .I4(pDataInBnd[1]),
        .I5(pDataInBnd[0]),
        .O(pVde));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFBF)) 
    pVde_i_2
       (.I0(pDataInBnd[5]),
        .I1(pDataInBnd[4]),
        .I2(pDataInBnd[6]),
        .I3(pDataInBnd[7]),
        .I4(pDataInBnd[0]),
        .I5(pDataInBnd[3]),
        .O(pVde_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \pWrA[0]_i_1__1 
       (.I0(pWrA_reg__0[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pWrA[1]_i_1__1 
       (.I0(pWrA_reg__0[0]),
        .I1(pWrA_reg__0[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \pWrA[2]_i_1__1 
       (.I0(pWrA_reg__0[1]),
        .I1(pWrA_reg__0[0]),
        .I2(pWrA_reg__0[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \pWrA[3]_i_1__1 
       (.I0(pWrA_reg__0[2]),
        .I1(pWrA_reg__0[0]),
        .I2(pWrA_reg__0[1]),
        .I3(pWrA_reg__0[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \pWrA[4]_i_1__1 
       (.I0(pWrA_reg__0[3]),
        .I1(pWrA_reg__0[1]),
        .I2(pWrA_reg__0[0]),
        .I3(pWrA_reg__0[2]),
        .I4(pWrA_reg__0[4]),
        .O(p_0_in__0[4]));
  FDRE \pWrA_reg[0] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(p_0_in__0[0]),
        .Q(pWrA_reg__0[0]),
        .R(pAligned_reg));
  FDRE \pWrA_reg[1] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(p_0_in__0[1]),
        .Q(pWrA_reg__0[1]),
        .R(pAligned_reg));
  FDRE \pWrA_reg[2] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(p_0_in__0[2]),
        .Q(pWrA_reg__0[2]),
        .R(pAligned_reg));
  FDRE \pWrA_reg[3] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(p_0_in__0[3]),
        .Q(pWrA_reg__0[3]),
        .R(pAligned_reg));
  FDRE \pWrA_reg[4] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(p_0_in__0[4]),
        .Q(pWrA_reg__0[4]),
        .R(pAligned_reg));
endmodule

(* ORIG_REF_NAME = "EEPROM_8b" *) 
module dvi2rgb_ip_EEPROM_8b
   (DDC_SDA_T,
    RefClk,
    DDC_SDA_I,
    DDC_SCL_I);
  output DDC_SDA_T;
  input RefClk;
  input DDC_SDA_I;
  input DDC_SCL_I;

  wire DDC_SCL_I;
  wire DDC_SDA_I;
  wire DDC_SDA_T;
  wire I2C_SlaveController_n_10;
  wire I2C_SlaveController_n_11;
  wire I2C_SlaveController_n_2;
  wire I2C_SlaveController_n_4;
  wire I2C_SlaveController_n_5;
  wire I2C_SlaveController_n_6;
  wire I2C_SlaveController_n_7;
  wire I2C_SlaveController_n_8;
  wire I2C_SlaveController_n_9;
  wire RefClk;
  wire [6:0]sAddr;
  wire [6:0]sAddr_0;
  wire \sAddr_rep[3]_i_2_n_0 ;
  wire \sAddr_rep[4]_i_2_n_0 ;
  wire \sAddr_rep[6]_i_3_n_0 ;
  wire [7:0]sI2C_DataOut;
  wire \sI2C_DataOut[0]_i_2_n_0 ;
  wire \sI2C_DataOut[0]_i_3_n_0 ;
  wire \sI2C_DataOut[1]_i_2_n_0 ;
  wire \sI2C_DataOut[1]_i_3_n_0 ;
  wire \sI2C_DataOut[2]_i_2_n_0 ;
  wire \sI2C_DataOut[2]_i_3_n_0 ;
  wire \sI2C_DataOut[3]_i_2_n_0 ;
  wire \sI2C_DataOut[3]_i_3_n_0 ;
  wire \sI2C_DataOut[4]_i_2_n_0 ;
  wire \sI2C_DataOut[4]_i_3_n_0 ;
  wire \sI2C_DataOut[5]_i_2_n_0 ;
  wire \sI2C_DataOut[5]_i_3_n_0 ;
  wire \sI2C_DataOut[6]_i_2_n_0 ;
  wire \sI2C_DataOut[6]_i_3_n_0 ;
  wire \sI2C_DataOut[7]_i_2_n_0 ;
  wire \sI2C_DataOut[7]_i_3_n_0 ;
  wire \sI2C_DataOut_reg[0]_i_1_n_0 ;
  wire \sI2C_DataOut_reg[1]_i_1_n_0 ;
  wire \sI2C_DataOut_reg[2]_i_1_n_0 ;
  wire \sI2C_DataOut_reg[3]_i_1_n_0 ;
  wire \sI2C_DataOut_reg[4]_i_1_n_0 ;
  wire \sI2C_DataOut_reg[5]_i_1_n_0 ;
  wire \sI2C_DataOut_reg[6]_i_1_n_0 ;
  wire \sI2C_DataOut_reg[7]_i_1_n_0 ;
  wire sI2C_Done;
  wire sI2C_End;
  wire [1:0]sState;
  wire \sState[0]_i_1_n_0 ;
  wire \sState[1]_i_1_n_0 ;

  dvi2rgb_ip_TWI_SlaveCtl I2C_SlaveController
       (.D({I2C_SlaveController_n_5,I2C_SlaveController_n_6,I2C_SlaveController_n_7,I2C_SlaveController_n_8,I2C_SlaveController_n_9,I2C_SlaveController_n_10,I2C_SlaveController_n_11}),
        .DDC_SCL_I(DDC_SCL_I),
        .DDC_SDA_I(DDC_SDA_I),
        .DDC_SDA_T(DDC_SDA_T),
        .E(I2C_SlaveController_n_4),
        .Q(sI2C_DataOut),
        .RefClk(RefClk),
        .rd_wrn_reg_0(I2C_SlaveController_n_2),
        .\sAddr_reg[3] (\sAddr_rep[4]_i_2_n_0 ),
        .\sAddr_reg[4] (\sAddr_rep[6]_i_3_n_0 ),
        .\sAddr_reg[6] (sAddr),
        .sI2C_Done(sI2C_Done),
        .sI2C_End(sI2C_End),
        .sState(sState),
        .\sState_reg[0] (\sAddr_rep[3]_i_2_n_0 ));
  FDRE \sAddr_reg[0] 
       (.C(RefClk),
        .CE(I2C_SlaveController_n_4),
        .D(I2C_SlaveController_n_11),
        .Q(sAddr[0]),
        .R(1'b0));
  FDRE \sAddr_reg[1] 
       (.C(RefClk),
        .CE(I2C_SlaveController_n_4),
        .D(I2C_SlaveController_n_10),
        .Q(sAddr[1]),
        .R(1'b0));
  FDRE \sAddr_reg[2] 
       (.C(RefClk),
        .CE(I2C_SlaveController_n_4),
        .D(I2C_SlaveController_n_9),
        .Q(sAddr[2]),
        .R(1'b0));
  FDRE \sAddr_reg[3] 
       (.C(RefClk),
        .CE(I2C_SlaveController_n_4),
        .D(I2C_SlaveController_n_8),
        .Q(sAddr[3]),
        .R(1'b0));
  FDRE \sAddr_reg[4] 
       (.C(RefClk),
        .CE(I2C_SlaveController_n_4),
        .D(I2C_SlaveController_n_7),
        .Q(sAddr[4]),
        .R(1'b0));
  FDRE \sAddr_reg[5] 
       (.C(RefClk),
        .CE(I2C_SlaveController_n_4),
        .D(I2C_SlaveController_n_6),
        .Q(sAddr[5]),
        .R(1'b0));
  FDRE \sAddr_reg[6] 
       (.C(RefClk),
        .CE(I2C_SlaveController_n_4),
        .D(I2C_SlaveController_n_5),
        .Q(sAddr[6]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \sAddr_reg_rep[0] 
       (.C(RefClk),
        .CE(I2C_SlaveController_n_4),
        .D(I2C_SlaveController_n_11),
        .Q(sAddr_0[0]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \sAddr_reg_rep[1] 
       (.C(RefClk),
        .CE(I2C_SlaveController_n_4),
        .D(I2C_SlaveController_n_10),
        .Q(sAddr_0[1]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \sAddr_reg_rep[2] 
       (.C(RefClk),
        .CE(I2C_SlaveController_n_4),
        .D(I2C_SlaveController_n_9),
        .Q(sAddr_0[2]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \sAddr_reg_rep[3] 
       (.C(RefClk),
        .CE(I2C_SlaveController_n_4),
        .D(I2C_SlaveController_n_8),
        .Q(sAddr_0[3]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \sAddr_reg_rep[4] 
       (.C(RefClk),
        .CE(I2C_SlaveController_n_4),
        .D(I2C_SlaveController_n_7),
        .Q(sAddr_0[4]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \sAddr_reg_rep[5] 
       (.C(RefClk),
        .CE(I2C_SlaveController_n_4),
        .D(I2C_SlaveController_n_6),
        .Q(sAddr_0[5]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \sAddr_reg_rep[6] 
       (.C(RefClk),
        .CE(I2C_SlaveController_n_4),
        .D(I2C_SlaveController_n_5),
        .Q(sAddr_0[6]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \sAddr_rep[3]_i_2 
       (.I0(sState[0]),
        .I1(sState[1]),
        .O(\sAddr_rep[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \sAddr_rep[4]_i_2 
       (.I0(sAddr[3]),
        .I1(sAddr[0]),
        .I2(sAddr[1]),
        .I3(sAddr[2]),
        .O(\sAddr_rep[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \sAddr_rep[6]_i_3 
       (.I0(sAddr[4]),
        .I1(sAddr[2]),
        .I2(sAddr[1]),
        .I3(sAddr[0]),
        .I4(sAddr[3]),
        .O(\sAddr_rep[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0122033332231B1E)) 
    \sI2C_DataOut[0]_i_2 
       (.I0(sAddr_0[4]),
        .I1(sAddr_0[6]),
        .I2(sAddr_0[0]),
        .I3(sAddr_0[1]),
        .I4(sAddr_0[5]),
        .I5(sAddr_0[2]),
        .O(\sI2C_DataOut[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8500050D48084020)) 
    \sI2C_DataOut[0]_i_3 
       (.I0(sAddr_0[4]),
        .I1(sAddr_0[1]),
        .I2(sAddr_0[6]),
        .I3(sAddr_0[2]),
        .I4(sAddr_0[0]),
        .I5(sAddr_0[5]),
        .O(\sI2C_DataOut[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2100C13100019114)) 
    \sI2C_DataOut[1]_i_2 
       (.I0(sAddr_0[4]),
        .I1(sAddr_0[6]),
        .I2(sAddr_0[0]),
        .I3(sAddr_0[1]),
        .I4(sAddr_0[5]),
        .I5(sAddr_0[2]),
        .O(\sI2C_DataOut[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0400000000082800)) 
    \sI2C_DataOut[1]_i_3 
       (.I0(sAddr_0[4]),
        .I1(sAddr_0[0]),
        .I2(sAddr_0[5]),
        .I3(sAddr_0[2]),
        .I4(sAddr_0[1]),
        .I5(sAddr_0[6]),
        .O(\sI2C_DataOut[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000CB1D0101B992)) 
    \sI2C_DataOut[2]_i_2 
       (.I0(sAddr_0[4]),
        .I1(sAddr_0[6]),
        .I2(sAddr_0[0]),
        .I3(sAddr_0[1]),
        .I4(sAddr_0[5]),
        .I5(sAddr_0[2]),
        .O(\sI2C_DataOut[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000664300000200)) 
    \sI2C_DataOut[2]_i_3 
       (.I0(sAddr_0[4]),
        .I1(sAddr_0[6]),
        .I2(sAddr_0[1]),
        .I3(sAddr_0[2]),
        .I4(sAddr_0[5]),
        .I5(sAddr_0[0]),
        .O(\sI2C_DataOut[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h20010111631191B8)) 
    \sI2C_DataOut[3]_i_2 
       (.I0(sAddr_0[4]),
        .I1(sAddr_0[6]),
        .I2(sAddr_0[0]),
        .I3(sAddr_0[1]),
        .I4(sAddr_0[2]),
        .I5(sAddr_0[5]),
        .O(\sI2C_DataOut[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0002004302006028)) 
    \sI2C_DataOut[3]_i_3 
       (.I0(sAddr_0[4]),
        .I1(sAddr_0[6]),
        .I2(sAddr_0[1]),
        .I3(sAddr_0[2]),
        .I4(sAddr_0[5]),
        .I5(sAddr_0[0]),
        .O(\sI2C_DataOut[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h03000000E33D1134)) 
    \sI2C_DataOut[4]_i_2 
       (.I0(sAddr_0[4]),
        .I1(sAddr_0[6]),
        .I2(sAddr_0[0]),
        .I3(sAddr_0[1]),
        .I4(sAddr_0[2]),
        .I5(sAddr_0[5]),
        .O(\sI2C_DataOut[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h482010080A020A05)) 
    \sI2C_DataOut[4]_i_3 
       (.I0(sAddr_0[4]),
        .I1(sAddr_0[5]),
        .I2(sAddr_0[6]),
        .I3(sAddr_0[1]),
        .I4(sAddr_0[2]),
        .I5(sAddr_0[0]),
        .O(\sI2C_DataOut[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h02220222A531D130)) 
    \sI2C_DataOut[5]_i_2 
       (.I0(sAddr_0[4]),
        .I1(sAddr_0[5]),
        .I2(sAddr_0[2]),
        .I3(sAddr_0[1]),
        .I4(sAddr_0[0]),
        .I5(sAddr_0[6]),
        .O(\sI2C_DataOut[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2000606B22004400)) 
    \sI2C_DataOut[5]_i_3 
       (.I0(sAddr_0[4]),
        .I1(sAddr_0[6]),
        .I2(sAddr_0[1]),
        .I3(sAddr_0[2]),
        .I4(sAddr_0[5]),
        .I5(sAddr_0[0]),
        .O(\sI2C_DataOut[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000110A91D9998)) 
    \sI2C_DataOut[6]_i_2 
       (.I0(sAddr_0[4]),
        .I1(sAddr_0[6]),
        .I2(sAddr_0[0]),
        .I3(sAddr_0[1]),
        .I4(sAddr_0[2]),
        .I5(sAddr_0[5]),
        .O(\sI2C_DataOut[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2002444020116238)) 
    \sI2C_DataOut[6]_i_3 
       (.I0(sAddr_0[4]),
        .I1(sAddr_0[6]),
        .I2(sAddr_0[0]),
        .I3(sAddr_0[2]),
        .I4(sAddr_0[5]),
        .I5(sAddr_0[1]),
        .O(\sI2C_DataOut[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001115130)) 
    \sI2C_DataOut[7]_i_2 
       (.I0(sAddr_0[4]),
        .I1(sAddr_0[5]),
        .I2(sAddr_0[2]),
        .I3(sAddr_0[1]),
        .I4(sAddr_0[0]),
        .I5(sAddr_0[6]),
        .O(\sI2C_DataOut[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000002013116300)) 
    \sI2C_DataOut[7]_i_3 
       (.I0(sAddr_0[4]),
        .I1(sAddr_0[6]),
        .I2(sAddr_0[1]),
        .I3(sAddr_0[0]),
        .I4(sAddr_0[5]),
        .I5(sAddr_0[2]),
        .O(\sI2C_DataOut[7]_i_3_n_0 ));
  FDRE \sI2C_DataOut_reg[0] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\sI2C_DataOut_reg[0]_i_1_n_0 ),
        .Q(sI2C_DataOut[0]),
        .R(1'b0));
  MUXF7 \sI2C_DataOut_reg[0]_i_1 
       (.I0(\sI2C_DataOut[0]_i_2_n_0 ),
        .I1(\sI2C_DataOut[0]_i_3_n_0 ),
        .O(\sI2C_DataOut_reg[0]_i_1_n_0 ),
        .S(sAddr_0[3]));
  FDRE \sI2C_DataOut_reg[1] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\sI2C_DataOut_reg[1]_i_1_n_0 ),
        .Q(sI2C_DataOut[1]),
        .R(1'b0));
  MUXF7 \sI2C_DataOut_reg[1]_i_1 
       (.I0(\sI2C_DataOut[1]_i_2_n_0 ),
        .I1(\sI2C_DataOut[1]_i_3_n_0 ),
        .O(\sI2C_DataOut_reg[1]_i_1_n_0 ),
        .S(sAddr_0[3]));
  FDRE \sI2C_DataOut_reg[2] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\sI2C_DataOut_reg[2]_i_1_n_0 ),
        .Q(sI2C_DataOut[2]),
        .R(1'b0));
  MUXF7 \sI2C_DataOut_reg[2]_i_1 
       (.I0(\sI2C_DataOut[2]_i_2_n_0 ),
        .I1(\sI2C_DataOut[2]_i_3_n_0 ),
        .O(\sI2C_DataOut_reg[2]_i_1_n_0 ),
        .S(sAddr_0[3]));
  FDRE \sI2C_DataOut_reg[3] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\sI2C_DataOut_reg[3]_i_1_n_0 ),
        .Q(sI2C_DataOut[3]),
        .R(1'b0));
  MUXF7 \sI2C_DataOut_reg[3]_i_1 
       (.I0(\sI2C_DataOut[3]_i_2_n_0 ),
        .I1(\sI2C_DataOut[3]_i_3_n_0 ),
        .O(\sI2C_DataOut_reg[3]_i_1_n_0 ),
        .S(sAddr_0[3]));
  FDRE \sI2C_DataOut_reg[4] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\sI2C_DataOut_reg[4]_i_1_n_0 ),
        .Q(sI2C_DataOut[4]),
        .R(1'b0));
  MUXF7 \sI2C_DataOut_reg[4]_i_1 
       (.I0(\sI2C_DataOut[4]_i_2_n_0 ),
        .I1(\sI2C_DataOut[4]_i_3_n_0 ),
        .O(\sI2C_DataOut_reg[4]_i_1_n_0 ),
        .S(sAddr_0[3]));
  FDRE \sI2C_DataOut_reg[5] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\sI2C_DataOut_reg[5]_i_1_n_0 ),
        .Q(sI2C_DataOut[5]),
        .R(1'b0));
  MUXF7 \sI2C_DataOut_reg[5]_i_1 
       (.I0(\sI2C_DataOut[5]_i_2_n_0 ),
        .I1(\sI2C_DataOut[5]_i_3_n_0 ),
        .O(\sI2C_DataOut_reg[5]_i_1_n_0 ),
        .S(sAddr_0[3]));
  FDRE \sI2C_DataOut_reg[6] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\sI2C_DataOut_reg[6]_i_1_n_0 ),
        .Q(sI2C_DataOut[6]),
        .R(1'b0));
  MUXF7 \sI2C_DataOut_reg[6]_i_1 
       (.I0(\sI2C_DataOut[6]_i_2_n_0 ),
        .I1(\sI2C_DataOut[6]_i_3_n_0 ),
        .O(\sI2C_DataOut_reg[6]_i_1_n_0 ),
        .S(sAddr_0[3]));
  FDRE \sI2C_DataOut_reg[7] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\sI2C_DataOut_reg[7]_i_1_n_0 ),
        .Q(sI2C_DataOut[7]),
        .R(1'b0));
  MUXF7 \sI2C_DataOut_reg[7]_i_1 
       (.I0(\sI2C_DataOut[7]_i_2_n_0 ),
        .I1(\sI2C_DataOut[7]_i_3_n_0 ),
        .O(\sI2C_DataOut_reg[7]_i_1_n_0 ),
        .S(sAddr_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT4 #(
    .INIT(16'h024E)) 
    \sState[0]_i_1 
       (.I0(sI2C_Done),
        .I1(sState[0]),
        .I2(sState[1]),
        .I3(sI2C_End),
        .O(\sState[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT5 #(
    .INIT(32'h0004FF04)) 
    \sState[1]_i_1 
       (.I0(I2C_SlaveController_n_2),
        .I1(sI2C_Done),
        .I2(sState[0]),
        .I3(sState[1]),
        .I4(sI2C_End),
        .O(\sState[1]_i_1_n_0 ));
  FDRE \sState_reg[0] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\sState[0]_i_1_n_0 ),
        .Q(sState[0]),
        .R(1'b0));
  FDRE \sState_reg[1] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\sState[1]_i_1_n_0 ),
        .Q(sState[1]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "GlitchFilter" *) 
module dvi2rgb_ip_GlitchFilter
   (\Filter.sOut_reg_0 ,
    dScl_reg,
    out,
    RefClk,
    SR);
  output \Filter.sOut_reg_0 ;
  output dScl_reg;
  input [0:0]out;
  input RefClk;
  input [0:0]SR;

  wire \Filter.cntPeriods[1]_i_1__0_n_0 ;
  wire \Filter.cntPeriods[2]_i_1__0_n_0 ;
  wire \Filter.cntPeriods[3]_i_2__0_n_0 ;
  wire \Filter.cntPeriods[3]_i_3__0_n_0 ;
  wire [3:0]\Filter.cntPeriods_reg__0 ;
  wire \Filter.sOut_i_1__0_n_0 ;
  wire \Filter.sOut_reg_0 ;
  wire RefClk;
  wire [0:0]SR;
  wire dScl_reg;
  wire [0:0]out;
  wire [0:0]p_0_in__0;

  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \Filter.cntPeriods[0]_i_1__0 
       (.I0(\Filter.cntPeriods_reg__0 [0]),
        .O(p_0_in__0));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \Filter.cntPeriods[1]_i_1__0 
       (.I0(\Filter.cntPeriods_reg__0 [0]),
        .I1(\Filter.cntPeriods_reg__0 [1]),
        .O(\Filter.cntPeriods[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \Filter.cntPeriods[2]_i_1__0 
       (.I0(\Filter.cntPeriods_reg__0 [1]),
        .I1(\Filter.cntPeriods_reg__0 [0]),
        .I2(\Filter.cntPeriods_reg__0 [2]),
        .O(\Filter.cntPeriods[2]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \Filter.cntPeriods[3]_i_2__0 
       (.I0(\Filter.cntPeriods_reg__0 [1]),
        .I1(\Filter.cntPeriods_reg__0 [0]),
        .I2(\Filter.cntPeriods_reg__0 [2]),
        .I3(\Filter.cntPeriods_reg__0 [3]),
        .O(\Filter.cntPeriods[3]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \Filter.cntPeriods[3]_i_3__0 
       (.I0(\Filter.cntPeriods_reg__0 [2]),
        .I1(\Filter.cntPeriods_reg__0 [0]),
        .I2(\Filter.cntPeriods_reg__0 [1]),
        .I3(\Filter.cntPeriods_reg__0 [3]),
        .O(\Filter.cntPeriods[3]_i_3__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Filter.cntPeriods_reg[0] 
       (.C(RefClk),
        .CE(\Filter.cntPeriods[3]_i_2__0_n_0 ),
        .D(p_0_in__0),
        .Q(\Filter.cntPeriods_reg__0 [0]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \Filter.cntPeriods_reg[1] 
       (.C(RefClk),
        .CE(\Filter.cntPeriods[3]_i_2__0_n_0 ),
        .D(\Filter.cntPeriods[1]_i_1__0_n_0 ),
        .Q(\Filter.cntPeriods_reg__0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \Filter.cntPeriods_reg[2] 
       (.C(RefClk),
        .CE(\Filter.cntPeriods[3]_i_2__0_n_0 ),
        .D(\Filter.cntPeriods[2]_i_1__0_n_0 ),
        .Q(\Filter.cntPeriods_reg__0 [2]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \Filter.cntPeriods_reg[3] 
       (.C(RefClk),
        .CE(\Filter.cntPeriods[3]_i_2__0_n_0 ),
        .D(\Filter.cntPeriods[3]_i_3__0_n_0 ),
        .Q(\Filter.cntPeriods_reg__0 [3]),
        .S(SR));
  FDRE \Filter.sIn_q_reg 
       (.C(RefClk),
        .CE(1'b1),
        .D(out),
        .Q(\Filter.sOut_reg_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \Filter.sOut_i_1__0 
       (.I0(\Filter.sOut_reg_0 ),
        .I1(\Filter.cntPeriods_reg__0 [3]),
        .I2(\Filter.cntPeriods_reg__0 [2]),
        .I3(\Filter.cntPeriods_reg__0 [0]),
        .I4(\Filter.cntPeriods_reg__0 [1]),
        .I5(dScl_reg),
        .O(\Filter.sOut_i_1__0_n_0 ));
  FDRE \Filter.sOut_reg 
       (.C(RefClk),
        .CE(1'b1),
        .D(\Filter.sOut_i_1__0_n_0 ),
        .Q(dScl_reg),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "GlitchFilter" *) 
module dvi2rgb_ip_GlitchFilter_6
   (sIn_q,
    sOut,
    out,
    RefClk,
    SR);
  output sIn_q;
  output sOut;
  input [0:0]out;
  input RefClk;
  input [0:0]SR;

  wire \Filter.cntPeriods[1]_i_1_n_0 ;
  wire \Filter.cntPeriods[2]_i_1_n_0 ;
  wire \Filter.cntPeriods[3]_i_3_n_0 ;
  wire [3:0]\Filter.cntPeriods_reg__0 ;
  wire \Filter.sOut_i_1_n_0 ;
  wire RefClk;
  wire [0:0]SR;
  wire [0:0]out;
  wire [0:0]p_0_in;
  wire sIn_q;
  wire sOut;
  wire sel;

  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \Filter.cntPeriods[0]_i_1 
       (.I0(\Filter.cntPeriods_reg__0 [0]),
        .O(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \Filter.cntPeriods[1]_i_1 
       (.I0(\Filter.cntPeriods_reg__0 [0]),
        .I1(\Filter.cntPeriods_reg__0 [1]),
        .O(\Filter.cntPeriods[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \Filter.cntPeriods[2]_i_1 
       (.I0(\Filter.cntPeriods_reg__0 [1]),
        .I1(\Filter.cntPeriods_reg__0 [0]),
        .I2(\Filter.cntPeriods_reg__0 [2]),
        .O(\Filter.cntPeriods[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \Filter.cntPeriods[3]_i_2 
       (.I0(\Filter.cntPeriods_reg__0 [1]),
        .I1(\Filter.cntPeriods_reg__0 [0]),
        .I2(\Filter.cntPeriods_reg__0 [2]),
        .I3(\Filter.cntPeriods_reg__0 [3]),
        .O(sel));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \Filter.cntPeriods[3]_i_3 
       (.I0(\Filter.cntPeriods_reg__0 [2]),
        .I1(\Filter.cntPeriods_reg__0 [0]),
        .I2(\Filter.cntPeriods_reg__0 [1]),
        .I3(\Filter.cntPeriods_reg__0 [3]),
        .O(\Filter.cntPeriods[3]_i_3_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Filter.cntPeriods_reg[0] 
       (.C(RefClk),
        .CE(sel),
        .D(p_0_in),
        .Q(\Filter.cntPeriods_reg__0 [0]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \Filter.cntPeriods_reg[1] 
       (.C(RefClk),
        .CE(sel),
        .D(\Filter.cntPeriods[1]_i_1_n_0 ),
        .Q(\Filter.cntPeriods_reg__0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \Filter.cntPeriods_reg[2] 
       (.C(RefClk),
        .CE(sel),
        .D(\Filter.cntPeriods[2]_i_1_n_0 ),
        .Q(\Filter.cntPeriods_reg__0 [2]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \Filter.cntPeriods_reg[3] 
       (.C(RefClk),
        .CE(sel),
        .D(\Filter.cntPeriods[3]_i_3_n_0 ),
        .Q(\Filter.cntPeriods_reg__0 [3]),
        .S(SR));
  FDRE \Filter.sIn_q_reg 
       (.C(RefClk),
        .CE(1'b1),
        .D(out),
        .Q(sIn_q),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \Filter.sOut_i_1 
       (.I0(sIn_q),
        .I1(\Filter.cntPeriods_reg__0 [3]),
        .I2(\Filter.cntPeriods_reg__0 [2]),
        .I3(\Filter.cntPeriods_reg__0 [0]),
        .I4(\Filter.cntPeriods_reg__0 [1]),
        .I5(sOut),
        .O(\Filter.sOut_i_1_n_0 ));
  FDRE \Filter.sOut_reg 
       (.C(RefClk),
        .CE(1'b1),
        .D(\Filter.sOut_i_1_n_0 ),
        .Q(sOut),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "InputSERDES" *) 
module dvi2rgb_ip_InputSERDES
   (D,
    pDataInRaw,
    TMDS_Data_p,
    TMDS_Data_n,
    rMMCM_LckdRisingFlag_reg,
    pIDLY_CE,
    pIDLY_INC,
    pIDLY_LD,
    pBitslip,
    \rMMCM_Reset_q_reg[0] ,
    CLKB,
    out);
  output [4:0]D;
  output [9:0]pDataInRaw;
  input [0:0]TMDS_Data_p;
  input [0:0]TMDS_Data_n;
  input rMMCM_LckdRisingFlag_reg;
  input pIDLY_CE;
  input pIDLY_INC;
  input pIDLY_LD;
  input pBitslip;
  input \rMMCM_Reset_q_reg[0] ;
  input CLKB;
  input [0:0]out;

  wire CLKB;
  wire [4:0]D;
  wire DDLY;
  wire IDATAIN;
  wire SHIFTIN1;
  wire SHIFTIN2;
  wire [0:0]TMDS_Data_n;
  wire [0:0]TMDS_Data_p;
  wire [0:0]out;
  wire pBitslip;
  wire [9:0]pDataInRaw;
  wire pIDLY_CE;
  wire pIDLY_INC;
  wire pIDLY_LD;
  wire rMMCM_LckdRisingFlag_reg;
  wire \rMMCM_Reset_q_reg[0] ;
  wire NLW_DeserializerMaster_O_UNCONNECTED;
  wire NLW_DeserializerSlave_O_UNCONNECTED;
  wire NLW_DeserializerSlave_Q1_UNCONNECTED;
  wire NLW_DeserializerSlave_Q2_UNCONNECTED;
  wire NLW_DeserializerSlave_Q5_UNCONNECTED;
  wire NLW_DeserializerSlave_Q6_UNCONNECTED;
  wire NLW_DeserializerSlave_Q7_UNCONNECTED;
  wire NLW_DeserializerSlave_Q8_UNCONNECTED;
  wire NLW_DeserializerSlave_SHIFTOUT1_UNCONNECTED;
  wire NLW_DeserializerSlave_SHIFTOUT2_UNCONNECTED;

  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("DDR"),
    .DATA_WIDTH(10),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("IFD"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    DeserializerMaster
       (.BITSLIP(pBitslip),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(\rMMCM_Reset_q_reg[0] ),
        .CLKB(CLKB),
        .CLKDIV(rMMCM_LckdRisingFlag_reg),
        .CLKDIVP(1'b0),
        .D(1'b0),
        .DDLY(DDLY),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_DeserializerMaster_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(pDataInRaw[9]),
        .Q2(pDataInRaw[8]),
        .Q3(pDataInRaw[7]),
        .Q4(pDataInRaw[6]),
        .Q5(pDataInRaw[5]),
        .Q6(pDataInRaw[4]),
        .Q7(pDataInRaw[3]),
        .Q8(pDataInRaw[2]),
        .RST(out),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(SHIFTIN1),
        .SHIFTOUT2(SHIFTIN2));
  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("DDR"),
    .DATA_WIDTH(10),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("IFD"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("SLAVE"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    DeserializerSlave
       (.BITSLIP(pBitslip),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(\rMMCM_Reset_q_reg[0] ),
        .CLKB(CLKB),
        .CLKDIV(rMMCM_LckdRisingFlag_reg),
        .CLKDIVP(1'b0),
        .D(1'b0),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_DeserializerSlave_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(NLW_DeserializerSlave_Q1_UNCONNECTED),
        .Q2(NLW_DeserializerSlave_Q2_UNCONNECTED),
        .Q3(pDataInRaw[1]),
        .Q4(pDataInRaw[0]),
        .Q5(NLW_DeserializerSlave_Q5_UNCONNECTED),
        .Q6(NLW_DeserializerSlave_Q6_UNCONNECTED),
        .Q7(NLW_DeserializerSlave_Q7_UNCONNECTED),
        .Q8(NLW_DeserializerSlave_Q8_UNCONNECTED),
        .RST(out),
        .SHIFTIN1(SHIFTIN1),
        .SHIFTIN2(SHIFTIN2),
        .SHIFTOUT1(NLW_DeserializerSlave_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_DeserializerSlave_SHIFTOUT2_UNCONNECTED));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  (* box_type = "PRIMITIVE" *) 
  IBUFDS #(
    .DQS_BIAS("FALSE")) 
    InputBuffer
       (.I(TMDS_Data_p),
        .IB(TMDS_Data_n),
        .O(IDATAIN));
  (* box_type = "PRIMITIVE" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("TRUE"),
    .IDELAY_TYPE("VARIABLE"),
    .IDELAY_VALUE(0),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
    InputDelay
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(pIDLY_CE),
        .CINVCTRL(1'b0),
        .CNTVALUEIN({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEOUT(D),
        .DATAIN(1'b0),
        .DATAOUT(DDLY),
        .IDATAIN(IDATAIN),
        .INC(pIDLY_INC),
        .LD(pIDLY_LD),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
endmodule

(* ORIG_REF_NAME = "InputSERDES" *) 
module dvi2rgb_ip_InputSERDES_11
   (D,
    pDataInRaw,
    TMDS_Data_p,
    TMDS_Data_n,
    rMMCM_LckdRisingFlag_reg,
    pIDLY_CE,
    pIDLY_INC,
    pIDLY_LD,
    pBitslip,
    \rMMCM_Reset_q_reg[0] ,
    CLKB,
    AS);
  output [4:0]D;
  output [9:0]pDataInRaw;
  input [0:0]TMDS_Data_p;
  input [0:0]TMDS_Data_n;
  input rMMCM_LckdRisingFlag_reg;
  input pIDLY_CE;
  input pIDLY_INC;
  input pIDLY_LD;
  input pBitslip;
  input \rMMCM_Reset_q_reg[0] ;
  input CLKB;
  input [0:0]AS;

  wire [0:0]AS;
  wire CLKB;
  wire [4:0]D;
  wire DDLY;
  wire IDATAIN;
  wire SHIFTIN1;
  wire SHIFTIN2;
  wire [0:0]TMDS_Data_n;
  wire [0:0]TMDS_Data_p;
  wire pBitslip;
  wire [9:0]pDataInRaw;
  wire pIDLY_CE;
  wire pIDLY_INC;
  wire pIDLY_LD;
  wire rMMCM_LckdRisingFlag_reg;
  wire \rMMCM_Reset_q_reg[0] ;
  wire NLW_DeserializerMaster_O_UNCONNECTED;
  wire NLW_DeserializerSlave_O_UNCONNECTED;
  wire NLW_DeserializerSlave_Q1_UNCONNECTED;
  wire NLW_DeserializerSlave_Q2_UNCONNECTED;
  wire NLW_DeserializerSlave_Q5_UNCONNECTED;
  wire NLW_DeserializerSlave_Q6_UNCONNECTED;
  wire NLW_DeserializerSlave_Q7_UNCONNECTED;
  wire NLW_DeserializerSlave_Q8_UNCONNECTED;
  wire NLW_DeserializerSlave_SHIFTOUT1_UNCONNECTED;
  wire NLW_DeserializerSlave_SHIFTOUT2_UNCONNECTED;

  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("DDR"),
    .DATA_WIDTH(10),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("IFD"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    DeserializerMaster
       (.BITSLIP(pBitslip),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(\rMMCM_Reset_q_reg[0] ),
        .CLKB(CLKB),
        .CLKDIV(rMMCM_LckdRisingFlag_reg),
        .CLKDIVP(1'b0),
        .D(1'b0),
        .DDLY(DDLY),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_DeserializerMaster_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(pDataInRaw[9]),
        .Q2(pDataInRaw[8]),
        .Q3(pDataInRaw[7]),
        .Q4(pDataInRaw[6]),
        .Q5(pDataInRaw[5]),
        .Q6(pDataInRaw[4]),
        .Q7(pDataInRaw[3]),
        .Q8(pDataInRaw[2]),
        .RST(AS),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(SHIFTIN1),
        .SHIFTOUT2(SHIFTIN2));
  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("DDR"),
    .DATA_WIDTH(10),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("IFD"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("SLAVE"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    DeserializerSlave
       (.BITSLIP(pBitslip),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(\rMMCM_Reset_q_reg[0] ),
        .CLKB(CLKB),
        .CLKDIV(rMMCM_LckdRisingFlag_reg),
        .CLKDIVP(1'b0),
        .D(1'b0),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_DeserializerSlave_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(NLW_DeserializerSlave_Q1_UNCONNECTED),
        .Q2(NLW_DeserializerSlave_Q2_UNCONNECTED),
        .Q3(pDataInRaw[1]),
        .Q4(pDataInRaw[0]),
        .Q5(NLW_DeserializerSlave_Q5_UNCONNECTED),
        .Q6(NLW_DeserializerSlave_Q6_UNCONNECTED),
        .Q7(NLW_DeserializerSlave_Q7_UNCONNECTED),
        .Q8(NLW_DeserializerSlave_Q8_UNCONNECTED),
        .RST(AS),
        .SHIFTIN1(SHIFTIN1),
        .SHIFTIN2(SHIFTIN2),
        .SHIFTOUT1(NLW_DeserializerSlave_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_DeserializerSlave_SHIFTOUT2_UNCONNECTED));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  (* box_type = "PRIMITIVE" *) 
  IBUFDS #(
    .DQS_BIAS("FALSE")) 
    InputBuffer
       (.I(TMDS_Data_p),
        .IB(TMDS_Data_n),
        .O(IDATAIN));
  (* box_type = "PRIMITIVE" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("TRUE"),
    .IDELAY_TYPE("VARIABLE"),
    .IDELAY_VALUE(0),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
    InputDelay
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(pIDLY_CE),
        .CINVCTRL(1'b0),
        .CNTVALUEIN({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEOUT(D),
        .DATAIN(1'b0),
        .DATAOUT(DDLY),
        .IDATAIN(IDATAIN),
        .INC(pIDLY_INC),
        .LD(pIDLY_LD),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
endmodule

(* ORIG_REF_NAME = "InputSERDES" *) 
module dvi2rgb_ip_InputSERDES_18
   (D,
    pDataInRaw,
    TMDS_Data_p,
    TMDS_Data_n,
    rMMCM_LckdRisingFlag_reg,
    pIDLY_CE,
    pIDLY_INC,
    pIDLY_LD,
    pBitslip,
    \rMMCM_Reset_q_reg[0] ,
    CLKB,
    AS);
  output [4:0]D;
  output [9:0]pDataInRaw;
  input [0:0]TMDS_Data_p;
  input [0:0]TMDS_Data_n;
  input rMMCM_LckdRisingFlag_reg;
  input pIDLY_CE;
  input pIDLY_INC;
  input pIDLY_LD;
  input pBitslip;
  input \rMMCM_Reset_q_reg[0] ;
  input CLKB;
  input [0:0]AS;

  wire [0:0]AS;
  wire CLKB;
  wire [4:0]D;
  wire DDLY;
  wire IDATAIN;
  wire SHIFTIN1;
  wire SHIFTIN2;
  wire [0:0]TMDS_Data_n;
  wire [0:0]TMDS_Data_p;
  wire pBitslip;
  wire [9:0]pDataInRaw;
  wire pIDLY_CE;
  wire pIDLY_INC;
  wire pIDLY_LD;
  wire rMMCM_LckdRisingFlag_reg;
  wire \rMMCM_Reset_q_reg[0] ;
  wire NLW_DeserializerMaster_O_UNCONNECTED;
  wire NLW_DeserializerSlave_O_UNCONNECTED;
  wire NLW_DeserializerSlave_Q1_UNCONNECTED;
  wire NLW_DeserializerSlave_Q2_UNCONNECTED;
  wire NLW_DeserializerSlave_Q5_UNCONNECTED;
  wire NLW_DeserializerSlave_Q6_UNCONNECTED;
  wire NLW_DeserializerSlave_Q7_UNCONNECTED;
  wire NLW_DeserializerSlave_Q8_UNCONNECTED;
  wire NLW_DeserializerSlave_SHIFTOUT1_UNCONNECTED;
  wire NLW_DeserializerSlave_SHIFTOUT2_UNCONNECTED;

  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("DDR"),
    .DATA_WIDTH(10),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("IFD"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    DeserializerMaster
       (.BITSLIP(pBitslip),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(\rMMCM_Reset_q_reg[0] ),
        .CLKB(CLKB),
        .CLKDIV(rMMCM_LckdRisingFlag_reg),
        .CLKDIVP(1'b0),
        .D(1'b0),
        .DDLY(DDLY),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_DeserializerMaster_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(pDataInRaw[9]),
        .Q2(pDataInRaw[8]),
        .Q3(pDataInRaw[7]),
        .Q4(pDataInRaw[6]),
        .Q5(pDataInRaw[5]),
        .Q6(pDataInRaw[4]),
        .Q7(pDataInRaw[3]),
        .Q8(pDataInRaw[2]),
        .RST(AS),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(SHIFTIN1),
        .SHIFTOUT2(SHIFTIN2));
  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("DDR"),
    .DATA_WIDTH(10),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("IFD"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("SLAVE"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    DeserializerSlave
       (.BITSLIP(pBitslip),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(\rMMCM_Reset_q_reg[0] ),
        .CLKB(CLKB),
        .CLKDIV(rMMCM_LckdRisingFlag_reg),
        .CLKDIVP(1'b0),
        .D(1'b0),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_DeserializerSlave_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(NLW_DeserializerSlave_Q1_UNCONNECTED),
        .Q2(NLW_DeserializerSlave_Q2_UNCONNECTED),
        .Q3(pDataInRaw[1]),
        .Q4(pDataInRaw[0]),
        .Q5(NLW_DeserializerSlave_Q5_UNCONNECTED),
        .Q6(NLW_DeserializerSlave_Q6_UNCONNECTED),
        .Q7(NLW_DeserializerSlave_Q7_UNCONNECTED),
        .Q8(NLW_DeserializerSlave_Q8_UNCONNECTED),
        .RST(AS),
        .SHIFTIN1(SHIFTIN1),
        .SHIFTIN2(SHIFTIN2),
        .SHIFTOUT1(NLW_DeserializerSlave_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_DeserializerSlave_SHIFTOUT2_UNCONNECTED));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  (* box_type = "PRIMITIVE" *) 
  IBUFDS #(
    .DQS_BIAS("FALSE")) 
    InputBuffer
       (.I(TMDS_Data_p),
        .IB(TMDS_Data_n),
        .O(IDATAIN));
  (* box_type = "PRIMITIVE" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("TRUE"),
    .IDELAY_TYPE("VARIABLE"),
    .IDELAY_VALUE(0),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
    InputDelay
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(pIDLY_CE),
        .CINVCTRL(1'b0),
        .CNTVALUEIN({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEOUT(D),
        .DATAIN(1'b0),
        .DATAOUT(DDLY),
        .IDATAIN(IDATAIN),
        .INC(pIDLY_INC),
        .LD(pIDLY_LD),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
endmodule

(* ORIG_REF_NAME = "PhaseAlign" *) 
module dvi2rgb_ip_PhaseAlign
   (pIDLY_CE,
    pIDLY_LD,
    pVld_2,
    pAlignErr_q_reg,
    iIn_q_reg,
    pAllVldBgnFlag0,
    pBitslip_reg,
    pIDLY_INC,
    rMMCM_LckdRisingFlag_reg,
    out,
    pVld_0,
    pVld_1,
    pAllVld_q,
    pAlignErr_q,
    D,
    pIDLY_CE_reg_0,
    SR);
  output pIDLY_CE;
  output pIDLY_LD;
  output pVld_2;
  output pAlignErr_q_reg;
  output iIn_q_reg;
  output pAllVldBgnFlag0;
  output pBitslip_reg;
  output pIDLY_INC;
  input rMMCM_LckdRisingFlag_reg;
  input [0:0]out;
  input pVld_0;
  input pVld_1;
  input pAllVld_q;
  input pAlignErr_q;
  input [8:0]D;
  input [4:0]pIDLY_CE_reg_0;
  input [0:0]SR;

  wire [8:0]D;
  wire [0:0]SR;
  wire iIn_q_i_2_n_0;
  wire iIn_q_i_3_n_0;
  wire iIn_q_reg;
  wire [0:0]out;
  wire pAlignErr_q;
  wire pAlignErr_q_reg;
  wire pAligned;
  wire pAligned_i_2_n_0;
  wire pAllVldBgnFlag0;
  wire pAllVld_q;
  wire pBitslip_reg;
  wire pBlankBegin;
  wire pBlankBegin_i_1_n_0;
  wire \pCenterTap[0]_i_1_n_0 ;
  wire \pCenterTap[1]_i_1_n_0 ;
  wire \pCenterTap[2]_i_1_n_0 ;
  wire \pCenterTap[3]_i_1_n_0 ;
  wire \pCenterTap[4]_i_1_n_0 ;
  wire \pCenterTap[5]_i_1_n_0 ;
  wire \pCenterTap[5]_i_2_n_0 ;
  wire \pCenterTap[5]_i_3_n_0 ;
  wire \pCenterTap[5]_i_4_n_0 ;
  wire \pCenterTap[5]_i_5_n_0 ;
  wire \pCenterTap_reg_n_0_[0] ;
  wire \pCenterTap_reg_n_0_[1] ;
  wire \pCenterTap_reg_n_0_[2] ;
  wire \pCenterTap_reg_n_0_[3] ;
  wire \pCenterTap_reg_n_0_[4] ;
  wire \pCenterTap_reg_n_0_[5] ;
  wire [6:0]pCtlTknCnt_reg__0;
  wire pCtlTknOvf_i_1_n_0;
  wire pCtlTknOvf_i_2_n_0;
  wire pCtlTknOvf_reg_n_0;
  wire pCtlTknRst;
  wire [8:0]pDataQ;
  wire pDelayCenter;
  wire pDelayCenter_i_1_n_0;
  wire pDelayCenter_i_2_n_0;
  wire pDelayOvf;
  wire pDelayOvf_i_1_n_0;
  wire [1:0]pDelayWaitCnt;
  wire \pDelayWaitCnt[0]_i_1_n_0 ;
  wire \pDelayWaitCnt[1]_i_1_n_0 ;
  wire pDelayWaitOvf;
  wire pDelayWaitOvf_i_1_n_0;
  wire pDelayWaitOvf_i_2_n_0;
  wire pDelayWaitOvf_i_3_n_0;
  wire pError;
  wire \pEyeOpenCnt[0]_i_1_n_0 ;
  wire \pEyeOpenCnt[1]_i_1_n_0 ;
  wire \pEyeOpenCnt[2]_i_1_n_0 ;
  wire \pEyeOpenCnt[3]_i_1_n_0 ;
  wire \pEyeOpenCnt[3]_i_2_n_0 ;
  wire \pEyeOpenCnt[4]_i_1_n_0 ;
  wire \pEyeOpenCnt[4]_i_2_n_0 ;
  wire \pEyeOpenCnt[4]_i_3_n_0 ;
  wire \pEyeOpenCnt_reg_n_0_[0] ;
  wire \pEyeOpenCnt_reg_n_0_[1] ;
  wire \pEyeOpenCnt_reg_n_0_[2] ;
  wire \pEyeOpenCnt_reg_n_0_[3] ;
  wire \pEyeOpenCnt_reg_n_0_[4] ;
  wire pFoundEyeFlag;
  wire pFoundEyeFlag_i_1_n_0;
  wire pFoundEyeFlag_i_2_n_0;
  wire pFoundEyeFlag_i_3_n_0;
  wire pFoundJtrFlag;
  wire pFoundJtrFlag_i_1_n_0;
  wire pIDLY_CE;
  wire pIDLY_CE_0;
  wire [4:0]pIDLY_CE_reg_0;
  wire \pIDLY_CNT_Q_reg_n_0_[0] ;
  wire \pIDLY_CNT_Q_reg_n_0_[1] ;
  wire \pIDLY_CNT_Q_reg_n_0_[2] ;
  wire \pIDLY_CNT_Q_reg_n_0_[3] ;
  wire \pIDLY_CNT_Q_reg_n_0_[4] ;
  wire pIDLY_INC;
  wire pIDLY_INC_i_1_n_0;
  wire pIDLY_LD;
  wire pIDLY_LD_1;
  wire pStateNxt;
  wire \pState[0]_i_1_n_0 ;
  wire \pState[0]_i_2_n_0 ;
  wire \pState[0]_i_3_n_0 ;
  wire \pState[0]_i_4_n_0 ;
  wire \pState[0]_i_5_n_0 ;
  wire \pState[10]_i_2_n_0 ;
  wire \pState[10]_i_3_n_0 ;
  wire \pState[10]_i_4_n_0 ;
  wire \pState[10]_i_5_n_0 ;
  wire \pState[10]_i_6_n_0 ;
  wire \pState[1]_i_1_n_0 ;
  wire \pState[1]_i_2_n_0 ;
  wire \pState[2]_i_1_n_0 ;
  wire \pState[3]_i_1_n_0 ;
  wire \pState[4]_i_1_n_0 ;
  wire \pState[5]_i_1_n_0 ;
  wire \pState[5]_i_2_n_0 ;
  wire \pState[6]_i_1_n_0 ;
  wire \pState[7]_i_1_n_0 ;
  wire \pState[7]_i_2_n_0 ;
  wire \pState[7]_i_3_n_0 ;
  wire \pState[8]_i_1_n_0 ;
  wire \pState[8]_i_2_n_0 ;
  wire \pState[9]_i_1_n_0 ;
  wire \pState_reg_n_0_[0] ;
  wire \pState_reg_n_0_[10] ;
  wire \pState_reg_n_0_[1] ;
  wire \pState_reg_n_0_[2] ;
  wire \pState_reg_n_0_[3] ;
  wire \pState_reg_n_0_[4] ;
  wire \pState_reg_n_0_[5] ;
  wire \pState_reg_n_0_[6] ;
  wire \pState_reg_n_0_[7] ;
  wire \pState_reg_n_0_[8] ;
  wire \pState_reg_n_0_[9] ;
  wire pTknFlag;
  wire pTknFlag0;
  wire pTknFlagQ;
  wire pTknFlag_i_2_n_0;
  wire pTknFlag_i_3_n_0;
  wire pVld_0;
  wire pVld_1;
  wire pVld_2;
  wire [6:0]p_0_in;
  wire rMMCM_LckdRisingFlag_reg;

  LUT3 #(
    .INIT(8'hEB)) 
    iIn_q_i_1
       (.I0(iIn_q_i_2_n_0),
        .I1(\pState_reg_n_0_[2] ),
        .I2(\pState_reg_n_0_[1] ),
        .O(iIn_q_reg));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    iIn_q_i_2
       (.I0(\pState_reg_n_0_[7] ),
        .I1(\pState_reg_n_0_[5] ),
        .I2(\pState_reg_n_0_[10] ),
        .I3(\pState_reg_n_0_[9] ),
        .I4(\pState[0]_i_3_n_0 ),
        .I5(iIn_q_i_3_n_0),
        .O(iIn_q_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'hE)) 
    iIn_q_i_3
       (.I0(\pState_reg_n_0_[6] ),
        .I1(\pState_reg_n_0_[8] ),
        .O(iIn_q_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    pAligned_i_1
       (.I0(\pState_reg_n_0_[5] ),
        .I1(\pState_reg_n_0_[7] ),
        .I2(\pState_reg_n_0_[9] ),
        .I3(\pState_reg_n_0_[10] ),
        .I4(pAligned_i_2_n_0),
        .O(pAligned));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    pAligned_i_2
       (.I0(\pState_reg_n_0_[3] ),
        .I1(\pState_reg_n_0_[0] ),
        .I2(\pState_reg_n_0_[4] ),
        .I3(iIn_q_i_3_n_0),
        .I4(\pState_reg_n_0_[1] ),
        .I5(\pState_reg_n_0_[2] ),
        .O(pAligned_i_2_n_0));
  FDRE pAligned_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pAligned),
        .Q(pVld_2),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0080)) 
    pAllVldBgnFlag_i_1
       (.I0(pVld_0),
        .I1(pVld_2),
        .I2(pVld_1),
        .I3(pAllVld_q),
        .O(pAllVldBgnFlag0));
  LUT2 #(
    .INIT(4'h2)) 
    pBitslip_i_1
       (.I0(pAlignErr_q_reg),
        .I1(pAlignErr_q),
        .O(pBitslip_reg));
  LUT2 #(
    .INIT(4'h2)) 
    pBlankBegin_i_1
       (.I0(pTknFlag),
        .I1(pTknFlagQ),
        .O(pBlankBegin_i_1_n_0));
  FDRE pBlankBegin_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pBlankBegin_i_1_n_0),
        .Q(pBlankBegin),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h6F)) 
    \pCenterTap[0]_i_1 
       (.I0(\pCenterTap_reg_n_0_[0] ),
        .I1(\pCenterTap[5]_i_3_n_0 ),
        .I2(\pCenterTap[5]_i_4_n_0 ),
        .O(\pCenterTap[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2EE2)) 
    \pCenterTap[1]_i_1 
       (.I0(\pIDLY_CNT_Q_reg_n_0_[0] ),
        .I1(\pCenterTap[5]_i_4_n_0 ),
        .I2(\pCenterTap_reg_n_0_[1] ),
        .I3(\pCenterTap_reg_n_0_[0] ),
        .O(\pCenterTap[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2EEEE222)) 
    \pCenterTap[2]_i_1 
       (.I0(\pIDLY_CNT_Q_reg_n_0_[1] ),
        .I1(\pCenterTap[5]_i_4_n_0 ),
        .I2(\pCenterTap_reg_n_0_[1] ),
        .I3(\pCenterTap_reg_n_0_[0] ),
        .I4(\pCenterTap_reg_n_0_[2] ),
        .O(\pCenterTap[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2EEEEEEEE2222222)) 
    \pCenterTap[3]_i_1 
       (.I0(\pIDLY_CNT_Q_reg_n_0_[2] ),
        .I1(\pCenterTap[5]_i_4_n_0 ),
        .I2(\pCenterTap_reg_n_0_[2] ),
        .I3(\pCenterTap_reg_n_0_[0] ),
        .I4(\pCenterTap_reg_n_0_[1] ),
        .I5(\pCenterTap_reg_n_0_[3] ),
        .O(\pCenterTap[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE22E)) 
    \pCenterTap[4]_i_1 
       (.I0(\pIDLY_CNT_Q_reg_n_0_[3] ),
        .I1(\pCenterTap[5]_i_4_n_0 ),
        .I2(\pCenterTap[5]_i_5_n_0 ),
        .I3(\pCenterTap_reg_n_0_[4] ),
        .O(\pCenterTap[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \pCenterTap[5]_i_1 
       (.I0(\pCenterTap[5]_i_3_n_0 ),
        .I1(\pCenterTap[5]_i_4_n_0 ),
        .O(\pCenterTap[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEE2E22E2)) 
    \pCenterTap[5]_i_2 
       (.I0(\pIDLY_CNT_Q_reg_n_0_[4] ),
        .I1(\pCenterTap[5]_i_4_n_0 ),
        .I2(\pCenterTap_reg_n_0_[4] ),
        .I3(\pCenterTap[5]_i_5_n_0 ),
        .I4(\pCenterTap_reg_n_0_[5] ),
        .O(\pCenterTap[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \pCenterTap[5]_i_3 
       (.I0(\pState_reg_n_0_[0] ),
        .I1(\pState_reg_n_0_[4] ),
        .I2(\pState_reg_n_0_[3] ),
        .I3(\pState[5]_i_2_n_0 ),
        .O(\pCenterTap[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'hFBEB)) 
    \pCenterTap[5]_i_4 
       (.I0(\pState[7]_i_2_n_0 ),
        .I1(\pState_reg_n_0_[0] ),
        .I2(\pState_reg_n_0_[4] ),
        .I3(pFoundEyeFlag),
        .O(\pCenterTap[5]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \pCenterTap[5]_i_5 
       (.I0(\pCenterTap_reg_n_0_[2] ),
        .I1(\pCenterTap_reg_n_0_[0] ),
        .I2(\pCenterTap_reg_n_0_[1] ),
        .I3(\pCenterTap_reg_n_0_[3] ),
        .O(\pCenterTap[5]_i_5_n_0 ));
  FDRE \pCenterTap_reg[0] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(\pCenterTap[0]_i_1_n_0 ),
        .Q(\pCenterTap_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \pCenterTap_reg[1] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(\pCenterTap[5]_i_1_n_0 ),
        .D(\pCenterTap[1]_i_1_n_0 ),
        .Q(\pCenterTap_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \pCenterTap_reg[2] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(\pCenterTap[5]_i_1_n_0 ),
        .D(\pCenterTap[2]_i_1_n_0 ),
        .Q(\pCenterTap_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \pCenterTap_reg[3] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(\pCenterTap[5]_i_1_n_0 ),
        .D(\pCenterTap[3]_i_1_n_0 ),
        .Q(\pCenterTap_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \pCenterTap_reg[4] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(\pCenterTap[5]_i_1_n_0 ),
        .D(\pCenterTap[4]_i_1_n_0 ),
        .Q(\pCenterTap_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \pCenterTap_reg[5] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(\pCenterTap[5]_i_1_n_0 ),
        .D(\pCenterTap[5]_i_2_n_0 ),
        .Q(\pCenterTap_reg_n_0_[5] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \pCtlTknCnt[0]_i_1 
       (.I0(pCtlTknCnt_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pCtlTknCnt[1]_i_1 
       (.I0(pCtlTknCnt_reg__0[0]),
        .I1(pCtlTknCnt_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \pCtlTknCnt[2]_i_1 
       (.I0(pCtlTknCnt_reg__0[1]),
        .I1(pCtlTknCnt_reg__0[0]),
        .I2(pCtlTknCnt_reg__0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \pCtlTknCnt[3]_i_1 
       (.I0(pCtlTknCnt_reg__0[2]),
        .I1(pCtlTknCnt_reg__0[0]),
        .I2(pCtlTknCnt_reg__0[1]),
        .I3(pCtlTknCnt_reg__0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \pCtlTknCnt[4]_i_1 
       (.I0(pCtlTknCnt_reg__0[3]),
        .I1(pCtlTknCnt_reg__0[1]),
        .I2(pCtlTknCnt_reg__0[0]),
        .I3(pCtlTknCnt_reg__0[2]),
        .I4(pCtlTknCnt_reg__0[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \pCtlTknCnt[5]_i_1 
       (.I0(pCtlTknCnt_reg__0[4]),
        .I1(pCtlTknCnt_reg__0[2]),
        .I2(pCtlTknCnt_reg__0[0]),
        .I3(pCtlTknCnt_reg__0[1]),
        .I4(pCtlTknCnt_reg__0[3]),
        .I5(pCtlTknCnt_reg__0[5]),
        .O(p_0_in[5]));
  LUT3 #(
    .INIT(8'hFD)) 
    \pCtlTknCnt[6]_i_1 
       (.I0(\pState_reg_n_0_[2] ),
        .I1(\pState_reg_n_0_[1] ),
        .I2(iIn_q_i_2_n_0),
        .O(pCtlTknRst));
  LUT2 #(
    .INIT(4'h9)) 
    \pCtlTknCnt[6]_i_2 
       (.I0(pCtlTknOvf_i_2_n_0),
        .I1(pCtlTknCnt_reg__0[6]),
        .O(p_0_in[6]));
  FDRE \pCtlTknCnt_reg[0] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(pCtlTknCnt_reg__0[0]),
        .R(pCtlTknRst));
  FDRE \pCtlTknCnt_reg[1] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(pCtlTknCnt_reg__0[1]),
        .R(pCtlTknRst));
  FDRE \pCtlTknCnt_reg[2] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(pCtlTknCnt_reg__0[2]),
        .R(pCtlTknRst));
  FDRE \pCtlTknCnt_reg[3] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(pCtlTknCnt_reg__0[3]),
        .R(pCtlTknRst));
  FDRE \pCtlTknCnt_reg[4] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(pCtlTknCnt_reg__0[4]),
        .R(pCtlTknRst));
  FDRE \pCtlTknCnt_reg[5] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(pCtlTknCnt_reg__0[5]),
        .R(pCtlTknRst));
  FDRE \pCtlTknCnt_reg[6] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(pCtlTknCnt_reg__0[6]),
        .R(pCtlTknRst));
  LUT4 #(
    .INIT(16'hAA30)) 
    pCtlTknOvf_i_1
       (.I0(pCtlTknOvf_reg_n_0),
        .I1(pCtlTknOvf_i_2_n_0),
        .I2(pCtlTknCnt_reg__0[6]),
        .I3(pCtlTknRst),
        .O(pCtlTknOvf_i_1_n_0));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    pCtlTknOvf_i_2
       (.I0(pCtlTknCnt_reg__0[4]),
        .I1(pCtlTknCnt_reg__0[2]),
        .I2(pCtlTknCnt_reg__0[0]),
        .I3(pCtlTknCnt_reg__0[1]),
        .I4(pCtlTknCnt_reg__0[3]),
        .I5(pCtlTknCnt_reg__0[5]),
        .O(pCtlTknOvf_i_2_n_0));
  FDRE pCtlTknOvf_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pCtlTknOvf_i_1_n_0),
        .Q(pCtlTknOvf_reg_n_0),
        .R(1'b0));
  FDRE \pDataQ_reg[0] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(D[0]),
        .Q(pDataQ[0]),
        .R(1'b0));
  FDRE \pDataQ_reg[1] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(D[1]),
        .Q(pDataQ[1]),
        .R(1'b0));
  FDRE \pDataQ_reg[2] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(D[2]),
        .Q(pDataQ[2]),
        .R(1'b0));
  FDRE \pDataQ_reg[3] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(D[3]),
        .Q(pDataQ[3]),
        .R(1'b0));
  FDRE \pDataQ_reg[4] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(D[4]),
        .Q(pDataQ[4]),
        .R(1'b0));
  FDRE \pDataQ_reg[5] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(D[5]),
        .Q(pDataQ[5]),
        .R(1'b0));
  FDRE \pDataQ_reg[6] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(D[6]),
        .Q(pDataQ[6]),
        .R(1'b0));
  FDRE \pDataQ_reg[7] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(D[7]),
        .Q(pDataQ[7]),
        .R(1'b0));
  FDRE \pDataQ_reg[8] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(D[8]),
        .Q(pDataQ[8]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h82000082)) 
    pDelayCenter_i_1
       (.I0(pDelayCenter_i_2_n_0),
        .I1(\pCenterTap_reg_n_0_[5] ),
        .I2(\pIDLY_CNT_Q_reg_n_0_[4] ),
        .I3(\pCenterTap_reg_n_0_[4] ),
        .I4(\pIDLY_CNT_Q_reg_n_0_[3] ),
        .O(pDelayCenter_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pDelayCenter_i_2
       (.I0(\pCenterTap_reg_n_0_[3] ),
        .I1(\pIDLY_CNT_Q_reg_n_0_[2] ),
        .I2(\pCenterTap_reg_n_0_[2] ),
        .I3(\pIDLY_CNT_Q_reg_n_0_[1] ),
        .I4(\pIDLY_CNT_Q_reg_n_0_[0] ),
        .I5(\pCenterTap_reg_n_0_[1] ),
        .O(pDelayCenter_i_2_n_0));
  FDRE pDelayCenter_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pDelayCenter_i_1_n_0),
        .Q(pDelayCenter),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000001)) 
    pDelayOvf_i_1
       (.I0(\pIDLY_CNT_Q_reg_n_0_[0] ),
        .I1(\pIDLY_CNT_Q_reg_n_0_[1] ),
        .I2(\pIDLY_CNT_Q_reg_n_0_[2] ),
        .I3(\pIDLY_CNT_Q_reg_n_0_[4] ),
        .I4(\pIDLY_CNT_Q_reg_n_0_[3] ),
        .O(pDelayOvf_i_1_n_0));
  FDRE pDelayOvf_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pDelayOvf_i_1_n_0),
        .Q(pDelayOvf),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'h0110)) 
    \pDelayWaitCnt[0]_i_1 
       (.I0(pDelayWaitCnt[0]),
        .I1(pDelayWaitOvf_i_2_n_0),
        .I2(\pState_reg_n_0_[8] ),
        .I3(\pState_reg_n_0_[6] ),
        .O(\pDelayWaitCnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'h00060600)) 
    \pDelayWaitCnt[1]_i_1 
       (.I0(pDelayWaitCnt[1]),
        .I1(pDelayWaitCnt[0]),
        .I2(pDelayWaitOvf_i_2_n_0),
        .I3(\pState_reg_n_0_[8] ),
        .I4(\pState_reg_n_0_[6] ),
        .O(\pDelayWaitCnt[1]_i_1_n_0 ));
  FDRE \pDelayWaitCnt_reg[0] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(\pDelayWaitCnt[0]_i_1_n_0 ),
        .Q(pDelayWaitCnt[0]),
        .R(1'b0));
  FDRE \pDelayWaitCnt_reg[1] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(\pDelayWaitCnt[1]_i_1_n_0 ),
        .Q(pDelayWaitCnt[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF090F0F6F090F090)) 
    pDelayWaitOvf_i_1
       (.I0(\pState_reg_n_0_[6] ),
        .I1(\pState_reg_n_0_[8] ),
        .I2(pDelayWaitOvf),
        .I3(pDelayWaitOvf_i_2_n_0),
        .I4(pDelayWaitCnt[0]),
        .I5(pDelayWaitCnt[1]),
        .O(pDelayWaitOvf_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    pDelayWaitOvf_i_2
       (.I0(\pState_reg_n_0_[7] ),
        .I1(\pState_reg_n_0_[5] ),
        .I2(pDelayWaitOvf_i_3_n_0),
        .I3(\pState[0]_i_3_n_0 ),
        .I4(\pState_reg_n_0_[2] ),
        .I5(\pState_reg_n_0_[1] ),
        .O(pDelayWaitOvf_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'hE)) 
    pDelayWaitOvf_i_3
       (.I0(\pState_reg_n_0_[9] ),
        .I1(\pState_reg_n_0_[10] ),
        .O(pDelayWaitOvf_i_3_n_0));
  FDRE pDelayWaitOvf_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pDelayWaitOvf_i_1_n_0),
        .Q(pDelayWaitOvf),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    pError_i_1
       (.I0(\pState_reg_n_0_[5] ),
        .I1(\pState_reg_n_0_[7] ),
        .I2(\pState_reg_n_0_[10] ),
        .I3(\pState_reg_n_0_[9] ),
        .I4(pAligned_i_2_n_0),
        .O(pError));
  FDRE pError_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pError),
        .Q(pAlignErr_q_reg),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCC3C80C)) 
    \pEyeOpenCnt[0]_i_1 
       (.I0(pFoundEyeFlag),
        .I1(\pEyeOpenCnt_reg_n_0_[0] ),
        .I2(\pState_reg_n_0_[0] ),
        .I3(\pState_reg_n_0_[4] ),
        .I4(\pState_reg_n_0_[3] ),
        .I5(\pState[5]_i_2_n_0 ),
        .O(\pEyeOpenCnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'hCACAF0C0)) 
    \pEyeOpenCnt[1]_i_1 
       (.I0(\pCenterTap[5]_i_3_n_0 ),
        .I1(\pEyeOpenCnt[4]_i_3_n_0 ),
        .I2(\pEyeOpenCnt_reg_n_0_[1] ),
        .I3(\pState_reg_n_0_[3] ),
        .I4(\pEyeOpenCnt_reg_n_0_[0] ),
        .O(\pEyeOpenCnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFFFA000CCCCA000)) 
    \pEyeOpenCnt[2]_i_1 
       (.I0(\pCenterTap[5]_i_3_n_0 ),
        .I1(\pEyeOpenCnt[4]_i_3_n_0 ),
        .I2(\pEyeOpenCnt_reg_n_0_[0] ),
        .I3(\pEyeOpenCnt_reg_n_0_[1] ),
        .I4(\pEyeOpenCnt_reg_n_0_[2] ),
        .I5(\pState_reg_n_0_[3] ),
        .O(\pEyeOpenCnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEECCEE0000F000)) 
    \pEyeOpenCnt[3]_i_1 
       (.I0(\pState_reg_n_0_[3] ),
        .I1(\pEyeOpenCnt[4]_i_3_n_0 ),
        .I2(\pCenterTap[5]_i_3_n_0 ),
        .I3(\pEyeOpenCnt_reg_n_0_[2] ),
        .I4(\pEyeOpenCnt[3]_i_2_n_0 ),
        .I5(\pEyeOpenCnt_reg_n_0_[3] ),
        .O(\pEyeOpenCnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \pEyeOpenCnt[3]_i_2 
       (.I0(\pEyeOpenCnt_reg_n_0_[0] ),
        .I1(\pEyeOpenCnt_reg_n_0_[1] ),
        .O(\pEyeOpenCnt[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F8F8F0005808)) 
    \pEyeOpenCnt[4]_i_1 
       (.I0(\pEyeOpenCnt_reg_n_0_[3] ),
        .I1(\pCenterTap[5]_i_3_n_0 ),
        .I2(\pEyeOpenCnt_reg_n_0_[4] ),
        .I3(\pState_reg_n_0_[3] ),
        .I4(\pEyeOpenCnt[4]_i_2_n_0 ),
        .I5(\pEyeOpenCnt[4]_i_3_n_0 ),
        .O(\pEyeOpenCnt[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \pEyeOpenCnt[4]_i_2 
       (.I0(\pEyeOpenCnt_reg_n_0_[1] ),
        .I1(\pEyeOpenCnt_reg_n_0_[0] ),
        .I2(\pEyeOpenCnt_reg_n_0_[2] ),
        .O(\pEyeOpenCnt[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'hFFFFEBE9)) 
    \pEyeOpenCnt[4]_i_3 
       (.I0(\pState_reg_n_0_[4] ),
        .I1(\pState_reg_n_0_[0] ),
        .I2(\pState_reg_n_0_[3] ),
        .I3(pFoundEyeFlag),
        .I4(\pState[5]_i_2_n_0 ),
        .O(\pEyeOpenCnt[4]_i_3_n_0 ));
  FDRE \pEyeOpenCnt_reg[0] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(\pEyeOpenCnt[0]_i_1_n_0 ),
        .Q(\pEyeOpenCnt_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \pEyeOpenCnt_reg[1] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(\pEyeOpenCnt[1]_i_1_n_0 ),
        .Q(\pEyeOpenCnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \pEyeOpenCnt_reg[2] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(\pEyeOpenCnt[2]_i_1_n_0 ),
        .Q(\pEyeOpenCnt_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \pEyeOpenCnt_reg[3] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(\pEyeOpenCnt[3]_i_1_n_0 ),
        .Q(\pEyeOpenCnt_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \pEyeOpenCnt_reg[4] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(\pEyeOpenCnt[4]_i_1_n_0 ),
        .Q(\pEyeOpenCnt_reg_n_0_[4] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAABFAA80)) 
    pFoundEyeFlag_i_1
       (.I0(pFoundEyeFlag_i_2_n_0),
        .I1(\pCenterTap[5]_i_3_n_0 ),
        .I2(pFoundEyeFlag_i_3_n_0),
        .I3(pIDLY_LD_1),
        .I4(pFoundEyeFlag),
        .O(pFoundEyeFlag_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    pFoundEyeFlag_i_2
       (.I0(\pEyeOpenCnt[3]_i_2_n_0 ),
        .I1(\pState_reg_n_0_[3] ),
        .I2(\pEyeOpenCnt_reg_n_0_[4] ),
        .I3(pFoundJtrFlag),
        .I4(\pEyeOpenCnt_reg_n_0_[2] ),
        .I5(\pEyeOpenCnt_reg_n_0_[3] ),
        .O(pFoundEyeFlag_i_2_n_0));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    pFoundEyeFlag_i_3
       (.I0(\pEyeOpenCnt_reg_n_0_[3] ),
        .I1(\pEyeOpenCnt_reg_n_0_[4] ),
        .I2(pFoundJtrFlag),
        .I3(\pEyeOpenCnt_reg_n_0_[2] ),
        .I4(\pEyeOpenCnt_reg_n_0_[1] ),
        .I5(\pEyeOpenCnt_reg_n_0_[0] ),
        .O(pFoundEyeFlag_i_3_n_0));
  FDRE pFoundEyeFlag_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pFoundEyeFlag_i_1_n_0),
        .Q(pFoundEyeFlag),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'hFB10)) 
    pFoundJtrFlag_i_1
       (.I0(\pState[7]_i_2_n_0 ),
        .I1(\pState_reg_n_0_[0] ),
        .I2(\pState_reg_n_0_[4] ),
        .I3(pFoundJtrFlag),
        .O(pFoundJtrFlag_i_1_n_0));
  FDRE pFoundJtrFlag_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pFoundJtrFlag_i_1_n_0),
        .Q(pFoundJtrFlag),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'h28)) 
    pIDLY_CE_i_1
       (.I0(\pState[8]_i_2_n_0 ),
        .I1(\pState_reg_n_0_[5] ),
        .I2(\pState_reg_n_0_[7] ),
        .O(pIDLY_CE_0));
  FDRE pIDLY_CE_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pIDLY_CE_0),
        .Q(pIDLY_CE),
        .R(1'b0));
  FDRE \pIDLY_CNT_Q_reg[0] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pIDLY_CE_reg_0[0]),
        .Q(\pIDLY_CNT_Q_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \pIDLY_CNT_Q_reg[1] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pIDLY_CE_reg_0[1]),
        .Q(\pIDLY_CNT_Q_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \pIDLY_CNT_Q_reg[2] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pIDLY_CE_reg_0[2]),
        .Q(\pIDLY_CNT_Q_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \pIDLY_CNT_Q_reg[3] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pIDLY_CE_reg_0[3]),
        .Q(\pIDLY_CNT_Q_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \pIDLY_CNT_Q_reg[4] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pIDLY_CE_reg_0[4]),
        .Q(\pIDLY_CNT_Q_reg_n_0_[4] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'hA2EA)) 
    pIDLY_INC_i_1
       (.I0(pIDLY_INC),
        .I1(\pState[8]_i_2_n_0 ),
        .I2(\pState_reg_n_0_[5] ),
        .I3(\pState_reg_n_0_[7] ),
        .O(pIDLY_INC_i_1_n_0));
  FDRE pIDLY_INC_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pIDLY_INC_i_1_n_0),
        .Q(pIDLY_INC),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'h04)) 
    pIDLY_LD_i_1
       (.I0(\pState_reg_n_0_[4] ),
        .I1(\pState_reg_n_0_[0] ),
        .I2(\pState[7]_i_2_n_0 ),
        .O(pIDLY_LD_1));
  FDRE pIDLY_LD_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pIDLY_LD_1),
        .Q(pIDLY_LD),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'hFFFEFEEB)) 
    \pState[0]_i_1 
       (.I0(\pState[0]_i_2_n_0 ),
        .I1(\pState_reg_n_0_[5] ),
        .I2(\pState_reg_n_0_[7] ),
        .I3(\pState[0]_i_3_n_0 ),
        .I4(\pState[0]_i_4_n_0 ),
        .O(\pState[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFFFA)) 
    \pState[0]_i_2 
       (.I0(\pState[0]_i_5_n_0 ),
        .I1(\pState_reg_n_0_[3] ),
        .I2(\pState_reg_n_0_[9] ),
        .I3(\pState_reg_n_0_[10] ),
        .I4(\pState_reg_n_0_[0] ),
        .I5(\pState_reg_n_0_[4] ),
        .O(\pState[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \pState[0]_i_3 
       (.I0(\pState_reg_n_0_[4] ),
        .I1(\pState_reg_n_0_[0] ),
        .I2(\pState_reg_n_0_[3] ),
        .O(\pState[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \pState[0]_i_4 
       (.I0(\pState_reg_n_0_[2] ),
        .I1(\pState_reg_n_0_[1] ),
        .I2(\pState_reg_n_0_[8] ),
        .I3(\pState_reg_n_0_[6] ),
        .O(\pState[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'hFEE8)) 
    \pState[0]_i_5 
       (.I0(\pState_reg_n_0_[6] ),
        .I1(\pState_reg_n_0_[8] ),
        .I2(\pState_reg_n_0_[1] ),
        .I3(\pState_reg_n_0_[2] ),
        .O(\pState[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFAEA)) 
    \pState[10]_i_1 
       (.I0(\pState[10]_i_3_n_0 ),
        .I1(out),
        .I2(\pState_reg_n_0_[1] ),
        .I3(pBlankBegin),
        .I4(\pState[10]_i_4_n_0 ),
        .I5(\pState[10]_i_5_n_0 ),
        .O(pStateNxt));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \pState[10]_i_2 
       (.I0(pDelayOvf),
        .I1(\pState_reg_n_0_[6] ),
        .I2(\pState_reg_n_0_[8] ),
        .I3(pDelayWaitOvf_i_2_n_0),
        .O(\pState[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001011)) 
    \pState[10]_i_3 
       (.I0(\pState_reg_n_0_[9] ),
        .I1(\pState_reg_n_0_[10] ),
        .I2(pCtlTknOvf_reg_n_0),
        .I3(pTknFlagQ),
        .I4(\pState_reg_n_0_[1] ),
        .I5(iIn_q_i_3_n_0),
        .O(\pState[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF0FEE1FEE1)) 
    \pState[10]_i_4 
       (.I0(\pState_reg_n_0_[1] ),
        .I1(\pState_reg_n_0_[2] ),
        .I2(\pState_reg_n_0_[10] ),
        .I3(\pState_reg_n_0_[9] ),
        .I4(pDelayWaitOvf),
        .I5(iIn_q_i_3_n_0),
        .O(\pState[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEE8)) 
    \pState[10]_i_5 
       (.I0(\pState_reg_n_0_[6] ),
        .I1(\pState_reg_n_0_[8] ),
        .I2(\pState_reg_n_0_[1] ),
        .I3(\pState_reg_n_0_[2] ),
        .I4(\pState[10]_i_6_n_0 ),
        .I5(\pState[0]_i_3_n_0 ),
        .O(\pState[10]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \pState[10]_i_6 
       (.I0(\pState_reg_n_0_[5] ),
        .I1(\pState_reg_n_0_[7] ),
        .O(\pState[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hABABABABABFFABAB)) 
    \pState[1]_i_1 
       (.I0(\pState[1]_i_2_n_0 ),
        .I1(pCtlTknRst),
        .I2(pTknFlagQ),
        .I3(\pState[7]_i_2_n_0 ),
        .I4(\pState_reg_n_0_[0] ),
        .I5(\pState_reg_n_0_[4] ),
        .O(\pState[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \pState[1]_i_2 
       (.I0(pDelayOvf),
        .I1(\pState_reg_n_0_[6] ),
        .I2(\pState_reg_n_0_[8] ),
        .I3(pDelayWaitOvf_i_2_n_0),
        .O(\pState[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \pState[2]_i_1 
       (.I0(\pState_reg_n_0_[1] ),
        .I1(pBlankBegin),
        .I2(\pState_reg_n_0_[2] ),
        .I3(iIn_q_i_2_n_0),
        .O(\pState[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \pState[3]_i_1 
       (.I0(pTknFlagQ),
        .I1(pCtlTknRst),
        .O(\pState[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \pState[4]_i_1 
       (.I0(\pState_reg_n_0_[1] ),
        .I1(\pState_reg_n_0_[2] ),
        .I2(pBlankBegin),
        .I3(iIn_q_i_2_n_0),
        .O(\pState[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'h00000130)) 
    \pState[5]_i_1 
       (.I0(pFoundEyeFlag),
        .I1(\pState[5]_i_2_n_0 ),
        .I2(\pState_reg_n_0_[3] ),
        .I3(\pState_reg_n_0_[4] ),
        .I4(\pState_reg_n_0_[0] ),
        .O(\pState[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \pState[5]_i_2 
       (.I0(\pState_reg_n_0_[9] ),
        .I1(\pState_reg_n_0_[10] ),
        .I2(\pState_reg_n_0_[5] ),
        .I3(\pState_reg_n_0_[7] ),
        .I4(\pState[0]_i_4_n_0 ),
        .O(\pState[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \pState[6]_i_1 
       (.I0(\pState_reg_n_0_[7] ),
        .I1(\pState_reg_n_0_[5] ),
        .I2(\pState[8]_i_2_n_0 ),
        .O(\pState[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0010FFFF00100010)) 
    \pState[7]_i_1 
       (.I0(pDelayWaitOvf_i_2_n_0),
        .I1(\pState_reg_n_0_[6] ),
        .I2(\pState_reg_n_0_[8] ),
        .I3(pDelayCenter),
        .I4(\pState[7]_i_2_n_0 ),
        .I5(\pState[7]_i_3_n_0 ),
        .O(\pState[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \pState[7]_i_2 
       (.I0(\pState[0]_i_4_n_0 ),
        .I1(\pState_reg_n_0_[7] ),
        .I2(\pState_reg_n_0_[5] ),
        .I3(\pState_reg_n_0_[10] ),
        .I4(\pState_reg_n_0_[9] ),
        .I5(\pState_reg_n_0_[3] ),
        .O(\pState[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \pState[7]_i_3 
       (.I0(\pState_reg_n_0_[0] ),
        .I1(\pState_reg_n_0_[4] ),
        .I2(pFoundEyeFlag),
        .O(\pState[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \pState[8]_i_1 
       (.I0(\pState_reg_n_0_[5] ),
        .I1(\pState_reg_n_0_[7] ),
        .I2(\pState[8]_i_2_n_0 ),
        .O(\pState[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \pState[8]_i_2 
       (.I0(\pState[0]_i_4_n_0 ),
        .I1(\pState_reg_n_0_[4] ),
        .I2(\pState_reg_n_0_[0] ),
        .I3(\pState_reg_n_0_[3] ),
        .I4(\pState_reg_n_0_[10] ),
        .I5(\pState_reg_n_0_[9] ),
        .O(\pState[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \pState[9]_i_1 
       (.I0(pDelayCenter),
        .I1(\pState_reg_n_0_[8] ),
        .I2(\pState_reg_n_0_[6] ),
        .I3(pDelayWaitOvf_i_2_n_0),
        .O(\pState[9]_i_1_n_0 ));
  FDSE \pState_reg[0] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(pStateNxt),
        .D(\pState[0]_i_1_n_0 ),
        .Q(\pState_reg_n_0_[0] ),
        .S(SR));
  FDRE \pState_reg[10] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(pStateNxt),
        .D(\pState[10]_i_2_n_0 ),
        .Q(\pState_reg_n_0_[10] ),
        .R(SR));
  FDRE \pState_reg[1] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(pStateNxt),
        .D(\pState[1]_i_1_n_0 ),
        .Q(\pState_reg_n_0_[1] ),
        .R(SR));
  FDRE \pState_reg[2] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(pStateNxt),
        .D(\pState[2]_i_1_n_0 ),
        .Q(\pState_reg_n_0_[2] ),
        .R(SR));
  FDRE \pState_reg[3] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(pStateNxt),
        .D(\pState[3]_i_1_n_0 ),
        .Q(\pState_reg_n_0_[3] ),
        .R(SR));
  FDRE \pState_reg[4] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(pStateNxt),
        .D(\pState[4]_i_1_n_0 ),
        .Q(\pState_reg_n_0_[4] ),
        .R(SR));
  FDRE \pState_reg[5] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(pStateNxt),
        .D(\pState[5]_i_1_n_0 ),
        .Q(\pState_reg_n_0_[5] ),
        .R(SR));
  FDRE \pState_reg[6] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(pStateNxt),
        .D(\pState[6]_i_1_n_0 ),
        .Q(\pState_reg_n_0_[6] ),
        .R(SR));
  FDRE \pState_reg[7] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(pStateNxt),
        .D(\pState[7]_i_1_n_0 ),
        .Q(\pState_reg_n_0_[7] ),
        .R(SR));
  FDRE \pState_reg[8] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(pStateNxt),
        .D(\pState[8]_i_1_n_0 ),
        .Q(\pState_reg_n_0_[8] ),
        .R(SR));
  FDRE \pState_reg[9] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(pStateNxt),
        .D(\pState[9]_i_1_n_0 ),
        .Q(\pState_reg_n_0_[9] ),
        .R(SR));
  FDRE pTknFlagQ_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pTknFlag),
        .Q(pTknFlagQ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h80800300)) 
    pTknFlag_i_1
       (.I0(pTknFlag_i_2_n_0),
        .I1(pDataQ[8]),
        .I2(pDataQ[2]),
        .I3(pTknFlag_i_3_n_0),
        .I4(pDataQ[6]),
        .O(pTknFlag0));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    pTknFlag_i_2
       (.I0(pDataQ[3]),
        .I1(pDataQ[5]),
        .I2(pDataQ[7]),
        .I3(pDataQ[0]),
        .I4(pDataQ[1]),
        .I5(pDataQ[4]),
        .O(pTknFlag_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    pTknFlag_i_3
       (.I0(pDataQ[3]),
        .I1(pDataQ[5]),
        .I2(pDataQ[7]),
        .I3(pDataQ[0]),
        .I4(pDataQ[1]),
        .I5(pDataQ[4]),
        .O(pTknFlag_i_3_n_0));
  FDRE pTknFlag_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pTknFlag0),
        .Q(pTknFlag),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "PhaseAlign" *) 
module dvi2rgb_ip_PhaseAlign_12
   (pIDLY_CE,
    pIDLY_LD,
    pVld_1,
    pAlignErr_q_reg,
    iIn_q_reg,
    pAllVldBgnFlag0,
    SR,
    pBitslip_reg,
    pIDLY_INC,
    rMMCM_LckdRisingFlag_reg,
    out,
    pVld_0,
    pVld_2,
    pAllVld_q,
    pAlignErr_q,
    D,
    pIDLY_CE_reg_0,
    SS);
  output pIDLY_CE;
  output pIDLY_LD;
  output pVld_1;
  output pAlignErr_q_reg;
  output iIn_q_reg;
  output pAllVldBgnFlag0;
  output [0:0]SR;
  output pBitslip_reg;
  output pIDLY_INC;
  input rMMCM_LckdRisingFlag_reg;
  input [0:0]out;
  input pVld_0;
  input pVld_2;
  input pAllVld_q;
  input pAlignErr_q;
  input [8:0]D;
  input [4:0]pIDLY_CE_reg_0;
  input [0:0]SS;

  wire [8:0]D;
  wire [0:0]SR;
  wire [0:0]SS;
  wire iIn_q_i_2__0_n_0;
  wire iIn_q_i_3__0_n_0;
  wire iIn_q_reg;
  wire [0:0]out;
  wire pAlignErr_q;
  wire pAlignErr_q_reg;
  wire pAligned;
  wire pAligned_i_2__0_n_0;
  wire pAllVldBgnFlag0;
  wire pAllVld_q;
  wire pBitslip_reg;
  wire pBlankBegin;
  wire pBlankBegin_i_1__0_n_0;
  wire \pCenterTap[0]_i_1_n_0 ;
  wire \pCenterTap[1]_i_1__0_n_0 ;
  wire \pCenterTap[2]_i_1__0_n_0 ;
  wire \pCenterTap[3]_i_1__0_n_0 ;
  wire \pCenterTap[4]_i_1__0_n_0 ;
  wire \pCenterTap[5]_i_1__0_n_0 ;
  wire \pCenterTap[5]_i_2__0_n_0 ;
  wire \pCenterTap[5]_i_3__0_n_0 ;
  wire \pCenterTap[5]_i_4__0_n_0 ;
  wire \pCenterTap[5]_i_5__0_n_0 ;
  wire \pCenterTap_reg_n_0_[0] ;
  wire \pCenterTap_reg_n_0_[1] ;
  wire \pCenterTap_reg_n_0_[2] ;
  wire \pCenterTap_reg_n_0_[3] ;
  wire \pCenterTap_reg_n_0_[4] ;
  wire \pCenterTap_reg_n_0_[5] ;
  wire [6:0]pCtlTknCnt_reg__0;
  wire pCtlTknOvf_i_1_n_0;
  wire pCtlTknOvf_i_2__0_n_0;
  wire pCtlTknOvf_reg_n_0;
  wire pCtlTknRst;
  wire \pDataQ_reg_n_0_[0] ;
  wire \pDataQ_reg_n_0_[1] ;
  wire \pDataQ_reg_n_0_[2] ;
  wire \pDataQ_reg_n_0_[3] ;
  wire \pDataQ_reg_n_0_[4] ;
  wire \pDataQ_reg_n_0_[5] ;
  wire \pDataQ_reg_n_0_[6] ;
  wire \pDataQ_reg_n_0_[7] ;
  wire \pDataQ_reg_n_0_[8] ;
  wire pDelayCenter_i_1__0_n_0;
  wire pDelayCenter_i_2__0_n_0;
  wire pDelayCenter_reg_n_0;
  wire pDelayOvf_i_1__0_n_0;
  wire pDelayOvf_reg_n_0;
  wire [1:0]pDelayWaitCnt;
  wire \pDelayWaitCnt[0]_i_1_n_0 ;
  wire \pDelayWaitCnt[1]_i_1_n_0 ;
  wire pDelayWaitOvf_i_1__0_n_0;
  wire pDelayWaitOvf_i_2__0_n_0;
  wire pDelayWaitOvf_i_3__0_n_0;
  wire pDelayWaitOvf_reg_n_0;
  wire pError;
  wire \pEyeOpenCnt[0]_i_1__0_n_0 ;
  wire \pEyeOpenCnt[1]_i_1__0_n_0 ;
  wire \pEyeOpenCnt[2]_i_1__0_n_0 ;
  wire \pEyeOpenCnt[3]_i_1__0_n_0 ;
  wire \pEyeOpenCnt[3]_i_2__0_n_0 ;
  wire \pEyeOpenCnt[4]_i_1__0_n_0 ;
  wire \pEyeOpenCnt[4]_i_2__0_n_0 ;
  wire \pEyeOpenCnt[4]_i_3__0_n_0 ;
  wire \pEyeOpenCnt_reg_n_0_[0] ;
  wire \pEyeOpenCnt_reg_n_0_[1] ;
  wire \pEyeOpenCnt_reg_n_0_[2] ;
  wire \pEyeOpenCnt_reg_n_0_[3] ;
  wire \pEyeOpenCnt_reg_n_0_[4] ;
  wire pFoundEyeFlag;
  wire pFoundEyeFlag_i_1__0_n_0;
  wire pFoundEyeFlag_i_2__0_n_0;
  wire pFoundEyeFlag_i_3__0_n_0;
  wire pFoundJtrFlag;
  wire pFoundJtrFlag_i_1__0_n_0;
  wire pIDLY_CE;
  wire pIDLY_CE_0;
  wire [4:0]pIDLY_CE_reg_0;
  wire \pIDLY_CNT_Q_reg_n_0_[0] ;
  wire \pIDLY_CNT_Q_reg_n_0_[1] ;
  wire \pIDLY_CNT_Q_reg_n_0_[2] ;
  wire \pIDLY_CNT_Q_reg_n_0_[3] ;
  wire \pIDLY_CNT_Q_reg_n_0_[4] ;
  wire pIDLY_INC;
  wire pIDLY_INC_i_1_n_0;
  wire pIDLY_LD;
  wire pIDLY_LD_1;
  wire pStateNxt;
  wire \pState[0]_i_1__0_n_0 ;
  wire \pState[0]_i_2__0_n_0 ;
  wire \pState[0]_i_3__0_n_0 ;
  wire \pState[0]_i_4__0_n_0 ;
  wire \pState[0]_i_5__0_n_0 ;
  wire \pState[10]_i_2__0_n_0 ;
  wire \pState[10]_i_3__0_n_0 ;
  wire \pState[10]_i_4__0_n_0 ;
  wire \pState[10]_i_5__0_n_0 ;
  wire \pState[10]_i_6__0_n_0 ;
  wire \pState[1]_i_1__0_n_0 ;
  wire \pState[1]_i_2__0_n_0 ;
  wire \pState[2]_i_1__0_n_0 ;
  wire \pState[3]_i_1__0_n_0 ;
  wire \pState[4]_i_1__0_n_0 ;
  wire \pState[5]_i_1__0_n_0 ;
  wire \pState[5]_i_2__0_n_0 ;
  wire \pState[6]_i_1__0_n_0 ;
  wire \pState[7]_i_1__0_n_0 ;
  wire \pState[7]_i_2__0_n_0 ;
  wire \pState[7]_i_3__0_n_0 ;
  wire \pState[8]_i_1__0_n_0 ;
  wire \pState[8]_i_2__0_n_0 ;
  wire \pState[9]_i_1__0_n_0 ;
  wire \pState_reg_n_0_[0] ;
  wire \pState_reg_n_0_[10] ;
  wire \pState_reg_n_0_[1] ;
  wire \pState_reg_n_0_[2] ;
  wire \pState_reg_n_0_[3] ;
  wire \pState_reg_n_0_[4] ;
  wire \pState_reg_n_0_[5] ;
  wire \pState_reg_n_0_[6] ;
  wire \pState_reg_n_0_[7] ;
  wire \pState_reg_n_0_[8] ;
  wire \pState_reg_n_0_[9] ;
  wire pTknFlag;
  wire pTknFlag0;
  wire pTknFlagQ;
  wire pTknFlag_i_2__0_n_0;
  wire pTknFlag_i_3__0_n_0;
  wire pVld_0;
  wire pVld_1;
  wire pVld_2;
  wire [6:0]p_0_in;
  wire rMMCM_LckdRisingFlag_reg;

  LUT3 #(
    .INIT(8'hEB)) 
    iIn_q_i_1__0
       (.I0(iIn_q_i_2__0_n_0),
        .I1(\pState_reg_n_0_[2] ),
        .I2(\pState_reg_n_0_[1] ),
        .O(iIn_q_reg));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    iIn_q_i_2__0
       (.I0(\pState_reg_n_0_[7] ),
        .I1(\pState_reg_n_0_[5] ),
        .I2(\pState_reg_n_0_[10] ),
        .I3(\pState_reg_n_0_[9] ),
        .I4(\pState[0]_i_3__0_n_0 ),
        .I5(iIn_q_i_3__0_n_0),
        .O(iIn_q_i_2__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'hE)) 
    iIn_q_i_3__0
       (.I0(\pState_reg_n_0_[6] ),
        .I1(\pState_reg_n_0_[8] ),
        .O(iIn_q_i_3__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    pAligned_i_1__0
       (.I0(\pState_reg_n_0_[5] ),
        .I1(\pState_reg_n_0_[7] ),
        .I2(\pState_reg_n_0_[9] ),
        .I3(\pState_reg_n_0_[10] ),
        .I4(pAligned_i_2__0_n_0),
        .O(pAligned));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    pAligned_i_2__0
       (.I0(\pState_reg_n_0_[3] ),
        .I1(\pState_reg_n_0_[0] ),
        .I2(\pState_reg_n_0_[4] ),
        .I3(iIn_q_i_3__0_n_0),
        .I4(\pState_reg_n_0_[1] ),
        .I5(\pState_reg_n_0_[2] ),
        .O(pAligned_i_2__0_n_0));
  FDRE pAligned_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pAligned),
        .Q(pVld_1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    pAllVldBgnFlag_i_1__0
       (.I0(pVld_0),
        .I1(pVld_2),
        .I2(pVld_1),
        .I3(pAllVld_q),
        .O(pAllVldBgnFlag0));
  LUT2 #(
    .INIT(4'h2)) 
    pBitslip_i_1__0
       (.I0(pAlignErr_q_reg),
        .I1(pAlignErr_q),
        .O(pBitslip_reg));
  LUT2 #(
    .INIT(4'h2)) 
    pBlankBegin_i_1__0
       (.I0(pTknFlag),
        .I1(pTknFlagQ),
        .O(pBlankBegin_i_1__0_n_0));
  FDRE pBlankBegin_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pBlankBegin_i_1__0_n_0),
        .Q(pBlankBegin),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h6F)) 
    \pCenterTap[0]_i_1 
       (.I0(\pCenterTap_reg_n_0_[0] ),
        .I1(\pCenterTap[5]_i_3__0_n_0 ),
        .I2(\pCenterTap[5]_i_4__0_n_0 ),
        .O(\pCenterTap[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2EE2)) 
    \pCenterTap[1]_i_1__0 
       (.I0(\pIDLY_CNT_Q_reg_n_0_[0] ),
        .I1(\pCenterTap[5]_i_4__0_n_0 ),
        .I2(\pCenterTap_reg_n_0_[1] ),
        .I3(\pCenterTap_reg_n_0_[0] ),
        .O(\pCenterTap[1]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h2EEEE222)) 
    \pCenterTap[2]_i_1__0 
       (.I0(\pIDLY_CNT_Q_reg_n_0_[1] ),
        .I1(\pCenterTap[5]_i_4__0_n_0 ),
        .I2(\pCenterTap_reg_n_0_[1] ),
        .I3(\pCenterTap_reg_n_0_[0] ),
        .I4(\pCenterTap_reg_n_0_[2] ),
        .O(\pCenterTap[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h2EEEEEEEE2222222)) 
    \pCenterTap[3]_i_1__0 
       (.I0(\pIDLY_CNT_Q_reg_n_0_[2] ),
        .I1(\pCenterTap[5]_i_4__0_n_0 ),
        .I2(\pCenterTap_reg_n_0_[2] ),
        .I3(\pCenterTap_reg_n_0_[0] ),
        .I4(\pCenterTap_reg_n_0_[1] ),
        .I5(\pCenterTap_reg_n_0_[3] ),
        .O(\pCenterTap[3]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hE22E)) 
    \pCenterTap[4]_i_1__0 
       (.I0(\pIDLY_CNT_Q_reg_n_0_[3] ),
        .I1(\pCenterTap[5]_i_4__0_n_0 ),
        .I2(\pCenterTap[5]_i_5__0_n_0 ),
        .I3(\pCenterTap_reg_n_0_[4] ),
        .O(\pCenterTap[4]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \pCenterTap[5]_i_1__0 
       (.I0(\pCenterTap[5]_i_3__0_n_0 ),
        .I1(\pCenterTap[5]_i_4__0_n_0 ),
        .O(\pCenterTap[5]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hEE2E22E2)) 
    \pCenterTap[5]_i_2__0 
       (.I0(\pIDLY_CNT_Q_reg_n_0_[4] ),
        .I1(\pCenterTap[5]_i_4__0_n_0 ),
        .I2(\pCenterTap_reg_n_0_[4] ),
        .I3(\pCenterTap[5]_i_5__0_n_0 ),
        .I4(\pCenterTap_reg_n_0_[5] ),
        .O(\pCenterTap[5]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \pCenterTap[5]_i_3__0 
       (.I0(\pState_reg_n_0_[0] ),
        .I1(\pState_reg_n_0_[4] ),
        .I2(\pState_reg_n_0_[3] ),
        .I3(\pState[5]_i_2__0_n_0 ),
        .O(\pCenterTap[5]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'hFBEB)) 
    \pCenterTap[5]_i_4__0 
       (.I0(\pState[7]_i_2__0_n_0 ),
        .I1(\pState_reg_n_0_[0] ),
        .I2(\pState_reg_n_0_[4] ),
        .I3(pFoundEyeFlag),
        .O(\pCenterTap[5]_i_4__0_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \pCenterTap[5]_i_5__0 
       (.I0(\pCenterTap_reg_n_0_[2] ),
        .I1(\pCenterTap_reg_n_0_[0] ),
        .I2(\pCenterTap_reg_n_0_[1] ),
        .I3(\pCenterTap_reg_n_0_[3] ),
        .O(\pCenterTap[5]_i_5__0_n_0 ));
  FDRE \pCenterTap_reg[0] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(\pCenterTap[0]_i_1_n_0 ),
        .Q(\pCenterTap_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \pCenterTap_reg[1] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(\pCenterTap[5]_i_1__0_n_0 ),
        .D(\pCenterTap[1]_i_1__0_n_0 ),
        .Q(\pCenterTap_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \pCenterTap_reg[2] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(\pCenterTap[5]_i_1__0_n_0 ),
        .D(\pCenterTap[2]_i_1__0_n_0 ),
        .Q(\pCenterTap_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \pCenterTap_reg[3] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(\pCenterTap[5]_i_1__0_n_0 ),
        .D(\pCenterTap[3]_i_1__0_n_0 ),
        .Q(\pCenterTap_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \pCenterTap_reg[4] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(\pCenterTap[5]_i_1__0_n_0 ),
        .D(\pCenterTap[4]_i_1__0_n_0 ),
        .Q(\pCenterTap_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \pCenterTap_reg[5] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(\pCenterTap[5]_i_1__0_n_0 ),
        .D(\pCenterTap[5]_i_2__0_n_0 ),
        .Q(\pCenterTap_reg_n_0_[5] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \pCtlTknCnt[0]_i_1__0 
       (.I0(pCtlTknCnt_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pCtlTknCnt[1]_i_1__0 
       (.I0(pCtlTknCnt_reg__0[0]),
        .I1(pCtlTknCnt_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \pCtlTknCnt[2]_i_1__0 
       (.I0(pCtlTknCnt_reg__0[1]),
        .I1(pCtlTknCnt_reg__0[0]),
        .I2(pCtlTknCnt_reg__0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \pCtlTknCnt[3]_i_1__0 
       (.I0(pCtlTknCnt_reg__0[2]),
        .I1(pCtlTknCnt_reg__0[0]),
        .I2(pCtlTknCnt_reg__0[1]),
        .I3(pCtlTknCnt_reg__0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \pCtlTknCnt[4]_i_1__0 
       (.I0(pCtlTknCnt_reg__0[3]),
        .I1(pCtlTknCnt_reg__0[1]),
        .I2(pCtlTknCnt_reg__0[0]),
        .I3(pCtlTknCnt_reg__0[2]),
        .I4(pCtlTknCnt_reg__0[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \pCtlTknCnt[5]_i_1__0 
       (.I0(pCtlTknCnt_reg__0[4]),
        .I1(pCtlTknCnt_reg__0[2]),
        .I2(pCtlTknCnt_reg__0[0]),
        .I3(pCtlTknCnt_reg__0[1]),
        .I4(pCtlTknCnt_reg__0[3]),
        .I5(pCtlTknCnt_reg__0[5]),
        .O(p_0_in[5]));
  LUT3 #(
    .INIT(8'hFD)) 
    \pCtlTknCnt[6]_i_1__0 
       (.I0(\pState_reg_n_0_[2] ),
        .I1(\pState_reg_n_0_[1] ),
        .I2(iIn_q_i_2__0_n_0),
        .O(pCtlTknRst));
  LUT2 #(
    .INIT(4'h9)) 
    \pCtlTknCnt[6]_i_2__0 
       (.I0(pCtlTknOvf_i_2__0_n_0),
        .I1(pCtlTknCnt_reg__0[6]),
        .O(p_0_in[6]));
  FDRE \pCtlTknCnt_reg[0] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(pCtlTknCnt_reg__0[0]),
        .R(pCtlTknRst));
  FDRE \pCtlTknCnt_reg[1] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(pCtlTknCnt_reg__0[1]),
        .R(pCtlTknRst));
  FDRE \pCtlTknCnt_reg[2] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(pCtlTknCnt_reg__0[2]),
        .R(pCtlTknRst));
  FDRE \pCtlTknCnt_reg[3] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(pCtlTknCnt_reg__0[3]),
        .R(pCtlTknRst));
  FDRE \pCtlTknCnt_reg[4] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(pCtlTknCnt_reg__0[4]),
        .R(pCtlTknRst));
  FDRE \pCtlTknCnt_reg[5] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(pCtlTknCnt_reg__0[5]),
        .R(pCtlTknRst));
  FDRE \pCtlTknCnt_reg[6] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(pCtlTknCnt_reg__0[6]),
        .R(pCtlTknRst));
  LUT4 #(
    .INIT(16'hAA30)) 
    pCtlTknOvf_i_1
       (.I0(pCtlTknOvf_reg_n_0),
        .I1(pCtlTknOvf_i_2__0_n_0),
        .I2(pCtlTknCnt_reg__0[6]),
        .I3(pCtlTknRst),
        .O(pCtlTknOvf_i_1_n_0));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    pCtlTknOvf_i_2__0
       (.I0(pCtlTknCnt_reg__0[4]),
        .I1(pCtlTknCnt_reg__0[2]),
        .I2(pCtlTknCnt_reg__0[0]),
        .I3(pCtlTknCnt_reg__0[1]),
        .I4(pCtlTknCnt_reg__0[3]),
        .I5(pCtlTknCnt_reg__0[5]),
        .O(pCtlTknOvf_i_2__0_n_0));
  FDRE pCtlTknOvf_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pCtlTknOvf_i_1_n_0),
        .Q(pCtlTknOvf_reg_n_0),
        .R(1'b0));
  FDRE \pDataQ_reg[0] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(D[0]),
        .Q(\pDataQ_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \pDataQ_reg[1] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(D[1]),
        .Q(\pDataQ_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \pDataQ_reg[2] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(D[2]),
        .Q(\pDataQ_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \pDataQ_reg[3] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(D[3]),
        .Q(\pDataQ_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \pDataQ_reg[4] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(D[4]),
        .Q(\pDataQ_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \pDataQ_reg[5] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(D[5]),
        .Q(\pDataQ_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \pDataQ_reg[6] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(D[6]),
        .Q(\pDataQ_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \pDataQ_reg[7] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(D[7]),
        .Q(\pDataQ_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \pDataQ_reg[8] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(D[8]),
        .Q(\pDataQ_reg_n_0_[8] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h82000082)) 
    pDelayCenter_i_1__0
       (.I0(pDelayCenter_i_2__0_n_0),
        .I1(\pCenterTap_reg_n_0_[5] ),
        .I2(\pIDLY_CNT_Q_reg_n_0_[4] ),
        .I3(\pCenterTap_reg_n_0_[4] ),
        .I4(\pIDLY_CNT_Q_reg_n_0_[3] ),
        .O(pDelayCenter_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pDelayCenter_i_2__0
       (.I0(\pCenterTap_reg_n_0_[3] ),
        .I1(\pIDLY_CNT_Q_reg_n_0_[2] ),
        .I2(\pCenterTap_reg_n_0_[2] ),
        .I3(\pIDLY_CNT_Q_reg_n_0_[1] ),
        .I4(\pIDLY_CNT_Q_reg_n_0_[0] ),
        .I5(\pCenterTap_reg_n_0_[1] ),
        .O(pDelayCenter_i_2__0_n_0));
  FDRE pDelayCenter_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pDelayCenter_i_1__0_n_0),
        .Q(pDelayCenter_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000001)) 
    pDelayOvf_i_1__0
       (.I0(\pIDLY_CNT_Q_reg_n_0_[0] ),
        .I1(\pIDLY_CNT_Q_reg_n_0_[1] ),
        .I2(\pIDLY_CNT_Q_reg_n_0_[2] ),
        .I3(\pIDLY_CNT_Q_reg_n_0_[4] ),
        .I4(\pIDLY_CNT_Q_reg_n_0_[3] ),
        .O(pDelayOvf_i_1__0_n_0));
  FDRE pDelayOvf_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pDelayOvf_i_1__0_n_0),
        .Q(pDelayOvf_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h0110)) 
    \pDelayWaitCnt[0]_i_1 
       (.I0(pDelayWaitCnt[0]),
        .I1(pDelayWaitOvf_i_2__0_n_0),
        .I2(\pState_reg_n_0_[8] ),
        .I3(\pState_reg_n_0_[6] ),
        .O(\pDelayWaitCnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h00060600)) 
    \pDelayWaitCnt[1]_i_1 
       (.I0(pDelayWaitCnt[1]),
        .I1(pDelayWaitCnt[0]),
        .I2(pDelayWaitOvf_i_2__0_n_0),
        .I3(\pState_reg_n_0_[8] ),
        .I4(\pState_reg_n_0_[6] ),
        .O(\pDelayWaitCnt[1]_i_1_n_0 ));
  FDRE \pDelayWaitCnt_reg[0] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(\pDelayWaitCnt[0]_i_1_n_0 ),
        .Q(pDelayWaitCnt[0]),
        .R(1'b0));
  FDRE \pDelayWaitCnt_reg[1] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(\pDelayWaitCnt[1]_i_1_n_0 ),
        .Q(pDelayWaitCnt[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF090F0F6F090F090)) 
    pDelayWaitOvf_i_1__0
       (.I0(\pState_reg_n_0_[6] ),
        .I1(\pState_reg_n_0_[8] ),
        .I2(pDelayWaitOvf_reg_n_0),
        .I3(pDelayWaitOvf_i_2__0_n_0),
        .I4(pDelayWaitCnt[0]),
        .I5(pDelayWaitCnt[1]),
        .O(pDelayWaitOvf_i_1__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    pDelayWaitOvf_i_2__0
       (.I0(\pState_reg_n_0_[7] ),
        .I1(\pState_reg_n_0_[5] ),
        .I2(pDelayWaitOvf_i_3__0_n_0),
        .I3(\pState[0]_i_3__0_n_0 ),
        .I4(\pState_reg_n_0_[2] ),
        .I5(\pState_reg_n_0_[1] ),
        .O(pDelayWaitOvf_i_2__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'hE)) 
    pDelayWaitOvf_i_3__0
       (.I0(\pState_reg_n_0_[9] ),
        .I1(\pState_reg_n_0_[10] ),
        .O(pDelayWaitOvf_i_3__0_n_0));
  FDRE pDelayWaitOvf_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pDelayWaitOvf_i_1__0_n_0),
        .Q(pDelayWaitOvf_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    pError_i_1__0
       (.I0(\pState_reg_n_0_[5] ),
        .I1(\pState_reg_n_0_[7] ),
        .I2(\pState_reg_n_0_[10] ),
        .I3(\pState_reg_n_0_[9] ),
        .I4(pAligned_i_2__0_n_0),
        .O(pError));
  FDRE pError_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pError),
        .Q(pAlignErr_q_reg),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCC3C80C)) 
    \pEyeOpenCnt[0]_i_1__0 
       (.I0(pFoundEyeFlag),
        .I1(\pEyeOpenCnt_reg_n_0_[0] ),
        .I2(\pState_reg_n_0_[0] ),
        .I3(\pState_reg_n_0_[4] ),
        .I4(\pState_reg_n_0_[3] ),
        .I5(\pState[5]_i_2__0_n_0 ),
        .O(\pEyeOpenCnt[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'hCACAF0C0)) 
    \pEyeOpenCnt[1]_i_1__0 
       (.I0(\pCenterTap[5]_i_3__0_n_0 ),
        .I1(\pEyeOpenCnt[4]_i_3__0_n_0 ),
        .I2(\pEyeOpenCnt_reg_n_0_[1] ),
        .I3(\pState_reg_n_0_[3] ),
        .I4(\pEyeOpenCnt_reg_n_0_[0] ),
        .O(\pEyeOpenCnt[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hCFFFA000CCCCA000)) 
    \pEyeOpenCnt[2]_i_1__0 
       (.I0(\pCenterTap[5]_i_3__0_n_0 ),
        .I1(\pEyeOpenCnt[4]_i_3__0_n_0 ),
        .I2(\pEyeOpenCnt_reg_n_0_[0] ),
        .I3(\pEyeOpenCnt_reg_n_0_[1] ),
        .I4(\pEyeOpenCnt_reg_n_0_[2] ),
        .I5(\pState_reg_n_0_[3] ),
        .O(\pEyeOpenCnt[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hEEEECCEE0000F000)) 
    \pEyeOpenCnt[3]_i_1__0 
       (.I0(\pState_reg_n_0_[3] ),
        .I1(\pEyeOpenCnt[4]_i_3__0_n_0 ),
        .I2(\pCenterTap[5]_i_3__0_n_0 ),
        .I3(\pEyeOpenCnt_reg_n_0_[2] ),
        .I4(\pEyeOpenCnt[3]_i_2__0_n_0 ),
        .I5(\pEyeOpenCnt_reg_n_0_[3] ),
        .O(\pEyeOpenCnt[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \pEyeOpenCnt[3]_i_2__0 
       (.I0(\pEyeOpenCnt_reg_n_0_[0] ),
        .I1(\pEyeOpenCnt_reg_n_0_[1] ),
        .O(\pEyeOpenCnt[3]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F8F8F0005808)) 
    \pEyeOpenCnt[4]_i_1__0 
       (.I0(\pEyeOpenCnt_reg_n_0_[3] ),
        .I1(\pCenterTap[5]_i_3__0_n_0 ),
        .I2(\pEyeOpenCnt_reg_n_0_[4] ),
        .I3(\pState_reg_n_0_[3] ),
        .I4(\pEyeOpenCnt[4]_i_2__0_n_0 ),
        .I5(\pEyeOpenCnt[4]_i_3__0_n_0 ),
        .O(\pEyeOpenCnt[4]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \pEyeOpenCnt[4]_i_2__0 
       (.I0(\pEyeOpenCnt_reg_n_0_[1] ),
        .I1(\pEyeOpenCnt_reg_n_0_[0] ),
        .I2(\pEyeOpenCnt_reg_n_0_[2] ),
        .O(\pEyeOpenCnt[4]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'hFFFFEBE9)) 
    \pEyeOpenCnt[4]_i_3__0 
       (.I0(\pState_reg_n_0_[4] ),
        .I1(\pState_reg_n_0_[0] ),
        .I2(\pState_reg_n_0_[3] ),
        .I3(pFoundEyeFlag),
        .I4(\pState[5]_i_2__0_n_0 ),
        .O(\pEyeOpenCnt[4]_i_3__0_n_0 ));
  FDRE \pEyeOpenCnt_reg[0] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(\pEyeOpenCnt[0]_i_1__0_n_0 ),
        .Q(\pEyeOpenCnt_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \pEyeOpenCnt_reg[1] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(\pEyeOpenCnt[1]_i_1__0_n_0 ),
        .Q(\pEyeOpenCnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \pEyeOpenCnt_reg[2] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(\pEyeOpenCnt[2]_i_1__0_n_0 ),
        .Q(\pEyeOpenCnt_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \pEyeOpenCnt_reg[3] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(\pEyeOpenCnt[3]_i_1__0_n_0 ),
        .Q(\pEyeOpenCnt_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \pEyeOpenCnt_reg[4] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(\pEyeOpenCnt[4]_i_1__0_n_0 ),
        .Q(\pEyeOpenCnt_reg_n_0_[4] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAABFAA80)) 
    pFoundEyeFlag_i_1__0
       (.I0(pFoundEyeFlag_i_2__0_n_0),
        .I1(\pCenterTap[5]_i_3__0_n_0 ),
        .I2(pFoundEyeFlag_i_3__0_n_0),
        .I3(pIDLY_LD_1),
        .I4(pFoundEyeFlag),
        .O(pFoundEyeFlag_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    pFoundEyeFlag_i_2__0
       (.I0(\pEyeOpenCnt[3]_i_2__0_n_0 ),
        .I1(\pState_reg_n_0_[3] ),
        .I2(\pEyeOpenCnt_reg_n_0_[4] ),
        .I3(pFoundJtrFlag),
        .I4(\pEyeOpenCnt_reg_n_0_[2] ),
        .I5(\pEyeOpenCnt_reg_n_0_[3] ),
        .O(pFoundEyeFlag_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    pFoundEyeFlag_i_3__0
       (.I0(\pEyeOpenCnt_reg_n_0_[3] ),
        .I1(\pEyeOpenCnt_reg_n_0_[4] ),
        .I2(pFoundJtrFlag),
        .I3(\pEyeOpenCnt_reg_n_0_[2] ),
        .I4(\pEyeOpenCnt_reg_n_0_[1] ),
        .I5(\pEyeOpenCnt_reg_n_0_[0] ),
        .O(pFoundEyeFlag_i_3__0_n_0));
  FDRE pFoundEyeFlag_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pFoundEyeFlag_i_1__0_n_0),
        .Q(pFoundEyeFlag),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'hFB10)) 
    pFoundJtrFlag_i_1__0
       (.I0(\pState[7]_i_2__0_n_0 ),
        .I1(\pState_reg_n_0_[0] ),
        .I2(\pState_reg_n_0_[4] ),
        .I3(pFoundJtrFlag),
        .O(pFoundJtrFlag_i_1__0_n_0));
  FDRE pFoundJtrFlag_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pFoundJtrFlag_i_1__0_n_0),
        .Q(pFoundJtrFlag),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h28)) 
    pIDLY_CE_i_1__0
       (.I0(\pState[8]_i_2__0_n_0 ),
        .I1(\pState_reg_n_0_[5] ),
        .I2(\pState_reg_n_0_[7] ),
        .O(pIDLY_CE_0));
  FDRE pIDLY_CE_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pIDLY_CE_0),
        .Q(pIDLY_CE),
        .R(1'b0));
  FDRE \pIDLY_CNT_Q_reg[0] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pIDLY_CE_reg_0[0]),
        .Q(\pIDLY_CNT_Q_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \pIDLY_CNT_Q_reg[1] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pIDLY_CE_reg_0[1]),
        .Q(\pIDLY_CNT_Q_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \pIDLY_CNT_Q_reg[2] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pIDLY_CE_reg_0[2]),
        .Q(\pIDLY_CNT_Q_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \pIDLY_CNT_Q_reg[3] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pIDLY_CE_reg_0[3]),
        .Q(\pIDLY_CNT_Q_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \pIDLY_CNT_Q_reg[4] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pIDLY_CE_reg_0[4]),
        .Q(\pIDLY_CNT_Q_reg_n_0_[4] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'hA2EA)) 
    pIDLY_INC_i_1
       (.I0(pIDLY_INC),
        .I1(\pState[8]_i_2__0_n_0 ),
        .I2(\pState_reg_n_0_[5] ),
        .I3(\pState_reg_n_0_[7] ),
        .O(pIDLY_INC_i_1_n_0));
  FDRE pIDLY_INC_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pIDLY_INC_i_1_n_0),
        .Q(pIDLY_INC),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h04)) 
    pIDLY_LD_i_1__0
       (.I0(\pState_reg_n_0_[4] ),
        .I1(\pState_reg_n_0_[0] ),
        .I2(\pState[7]_i_2__0_n_0 ),
        .O(pIDLY_LD_1));
  FDRE pIDLY_LD_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pIDLY_LD_1),
        .Q(pIDLY_LD),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \pRdA_rep[4]_i_1 
       (.I0(pVld_1),
        .I1(pVld_2),
        .I2(pVld_0),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'hFFFEFEEB)) 
    \pState[0]_i_1__0 
       (.I0(\pState[0]_i_2__0_n_0 ),
        .I1(\pState_reg_n_0_[5] ),
        .I2(\pState_reg_n_0_[7] ),
        .I3(\pState[0]_i_3__0_n_0 ),
        .I4(\pState[0]_i_4__0_n_0 ),
        .O(\pState[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFFFA)) 
    \pState[0]_i_2__0 
       (.I0(\pState[0]_i_5__0_n_0 ),
        .I1(\pState_reg_n_0_[3] ),
        .I2(\pState_reg_n_0_[9] ),
        .I3(\pState_reg_n_0_[10] ),
        .I4(\pState_reg_n_0_[0] ),
        .I5(\pState_reg_n_0_[4] ),
        .O(\pState[0]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \pState[0]_i_3__0 
       (.I0(\pState_reg_n_0_[4] ),
        .I1(\pState_reg_n_0_[0] ),
        .I2(\pState_reg_n_0_[3] ),
        .O(\pState[0]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \pState[0]_i_4__0 
       (.I0(\pState_reg_n_0_[2] ),
        .I1(\pState_reg_n_0_[1] ),
        .I2(\pState_reg_n_0_[8] ),
        .I3(\pState_reg_n_0_[6] ),
        .O(\pState[0]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hFEE8)) 
    \pState[0]_i_5__0 
       (.I0(\pState_reg_n_0_[6] ),
        .I1(\pState_reg_n_0_[8] ),
        .I2(\pState_reg_n_0_[1] ),
        .I3(\pState_reg_n_0_[2] ),
        .O(\pState[0]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFAEA)) 
    \pState[10]_i_1__0 
       (.I0(\pState[10]_i_3__0_n_0 ),
        .I1(out),
        .I2(\pState_reg_n_0_[1] ),
        .I3(pBlankBegin),
        .I4(\pState[10]_i_4__0_n_0 ),
        .I5(\pState[10]_i_5__0_n_0 ),
        .O(pStateNxt));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \pState[10]_i_2__0 
       (.I0(pDelayOvf_reg_n_0),
        .I1(\pState_reg_n_0_[6] ),
        .I2(\pState_reg_n_0_[8] ),
        .I3(pDelayWaitOvf_i_2__0_n_0),
        .O(\pState[10]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001011)) 
    \pState[10]_i_3__0 
       (.I0(\pState_reg_n_0_[9] ),
        .I1(\pState_reg_n_0_[10] ),
        .I2(pCtlTknOvf_reg_n_0),
        .I3(pTknFlagQ),
        .I4(\pState_reg_n_0_[1] ),
        .I5(iIn_q_i_3__0_n_0),
        .O(\pState[10]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF0FEE1FEE1)) 
    \pState[10]_i_4__0 
       (.I0(\pState_reg_n_0_[1] ),
        .I1(\pState_reg_n_0_[2] ),
        .I2(\pState_reg_n_0_[10] ),
        .I3(\pState_reg_n_0_[9] ),
        .I4(pDelayWaitOvf_reg_n_0),
        .I5(iIn_q_i_3__0_n_0),
        .O(\pState[10]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEE8)) 
    \pState[10]_i_5__0 
       (.I0(\pState_reg_n_0_[6] ),
        .I1(\pState_reg_n_0_[8] ),
        .I2(\pState_reg_n_0_[1] ),
        .I3(\pState_reg_n_0_[2] ),
        .I4(\pState[10]_i_6__0_n_0 ),
        .I5(\pState[0]_i_3__0_n_0 ),
        .O(\pState[10]_i_5__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \pState[10]_i_6__0 
       (.I0(\pState_reg_n_0_[5] ),
        .I1(\pState_reg_n_0_[7] ),
        .O(\pState[10]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'hABABABABABFFABAB)) 
    \pState[1]_i_1__0 
       (.I0(\pState[1]_i_2__0_n_0 ),
        .I1(pCtlTknRst),
        .I2(pTknFlagQ),
        .I3(\pState[7]_i_2__0_n_0 ),
        .I4(\pState_reg_n_0_[0] ),
        .I5(\pState_reg_n_0_[4] ),
        .O(\pState[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \pState[1]_i_2__0 
       (.I0(pDelayOvf_reg_n_0),
        .I1(\pState_reg_n_0_[6] ),
        .I2(\pState_reg_n_0_[8] ),
        .I3(pDelayWaitOvf_i_2__0_n_0),
        .O(\pState[1]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \pState[2]_i_1__0 
       (.I0(\pState_reg_n_0_[1] ),
        .I1(pBlankBegin),
        .I2(\pState_reg_n_0_[2] ),
        .I3(iIn_q_i_2__0_n_0),
        .O(\pState[2]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \pState[3]_i_1__0 
       (.I0(pTknFlagQ),
        .I1(pCtlTknRst),
        .O(\pState[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \pState[4]_i_1__0 
       (.I0(\pState_reg_n_0_[1] ),
        .I1(\pState_reg_n_0_[2] ),
        .I2(pBlankBegin),
        .I3(iIn_q_i_2__0_n_0),
        .O(\pState[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h00000130)) 
    \pState[5]_i_1__0 
       (.I0(pFoundEyeFlag),
        .I1(\pState[5]_i_2__0_n_0 ),
        .I2(\pState_reg_n_0_[3] ),
        .I3(\pState_reg_n_0_[4] ),
        .I4(\pState_reg_n_0_[0] ),
        .O(\pState[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \pState[5]_i_2__0 
       (.I0(\pState_reg_n_0_[9] ),
        .I1(\pState_reg_n_0_[10] ),
        .I2(\pState_reg_n_0_[5] ),
        .I3(\pState_reg_n_0_[7] ),
        .I4(\pState[0]_i_4__0_n_0 ),
        .O(\pState[5]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \pState[6]_i_1__0 
       (.I0(\pState_reg_n_0_[7] ),
        .I1(\pState_reg_n_0_[5] ),
        .I2(\pState[8]_i_2__0_n_0 ),
        .O(\pState[6]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0010FFFF00100010)) 
    \pState[7]_i_1__0 
       (.I0(pDelayWaitOvf_i_2__0_n_0),
        .I1(\pState_reg_n_0_[6] ),
        .I2(\pState_reg_n_0_[8] ),
        .I3(pDelayCenter_reg_n_0),
        .I4(\pState[7]_i_2__0_n_0 ),
        .I5(\pState[7]_i_3__0_n_0 ),
        .O(\pState[7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \pState[7]_i_2__0 
       (.I0(\pState[0]_i_4__0_n_0 ),
        .I1(\pState_reg_n_0_[7] ),
        .I2(\pState_reg_n_0_[5] ),
        .I3(\pState_reg_n_0_[10] ),
        .I4(\pState_reg_n_0_[9] ),
        .I5(\pState_reg_n_0_[3] ),
        .O(\pState[7]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \pState[7]_i_3__0 
       (.I0(\pState_reg_n_0_[0] ),
        .I1(\pState_reg_n_0_[4] ),
        .I2(pFoundEyeFlag),
        .O(\pState[7]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \pState[8]_i_1__0 
       (.I0(\pState_reg_n_0_[5] ),
        .I1(\pState_reg_n_0_[7] ),
        .I2(\pState[8]_i_2__0_n_0 ),
        .O(\pState[8]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \pState[8]_i_2__0 
       (.I0(\pState[0]_i_4__0_n_0 ),
        .I1(\pState_reg_n_0_[4] ),
        .I2(\pState_reg_n_0_[0] ),
        .I3(\pState_reg_n_0_[3] ),
        .I4(\pState_reg_n_0_[10] ),
        .I5(\pState_reg_n_0_[9] ),
        .O(\pState[8]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \pState[9]_i_1__0 
       (.I0(pDelayCenter_reg_n_0),
        .I1(\pState_reg_n_0_[8] ),
        .I2(\pState_reg_n_0_[6] ),
        .I3(pDelayWaitOvf_i_2__0_n_0),
        .O(\pState[9]_i_1__0_n_0 ));
  FDSE \pState_reg[0] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(pStateNxt),
        .D(\pState[0]_i_1__0_n_0 ),
        .Q(\pState_reg_n_0_[0] ),
        .S(SS));
  FDRE \pState_reg[10] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(pStateNxt),
        .D(\pState[10]_i_2__0_n_0 ),
        .Q(\pState_reg_n_0_[10] ),
        .R(SS));
  FDRE \pState_reg[1] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(pStateNxt),
        .D(\pState[1]_i_1__0_n_0 ),
        .Q(\pState_reg_n_0_[1] ),
        .R(SS));
  FDRE \pState_reg[2] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(pStateNxt),
        .D(\pState[2]_i_1__0_n_0 ),
        .Q(\pState_reg_n_0_[2] ),
        .R(SS));
  FDRE \pState_reg[3] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(pStateNxt),
        .D(\pState[3]_i_1__0_n_0 ),
        .Q(\pState_reg_n_0_[3] ),
        .R(SS));
  FDRE \pState_reg[4] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(pStateNxt),
        .D(\pState[4]_i_1__0_n_0 ),
        .Q(\pState_reg_n_0_[4] ),
        .R(SS));
  FDRE \pState_reg[5] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(pStateNxt),
        .D(\pState[5]_i_1__0_n_0 ),
        .Q(\pState_reg_n_0_[5] ),
        .R(SS));
  FDRE \pState_reg[6] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(pStateNxt),
        .D(\pState[6]_i_1__0_n_0 ),
        .Q(\pState_reg_n_0_[6] ),
        .R(SS));
  FDRE \pState_reg[7] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(pStateNxt),
        .D(\pState[7]_i_1__0_n_0 ),
        .Q(\pState_reg_n_0_[7] ),
        .R(SS));
  FDRE \pState_reg[8] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(pStateNxt),
        .D(\pState[8]_i_1__0_n_0 ),
        .Q(\pState_reg_n_0_[8] ),
        .R(SS));
  FDRE \pState_reg[9] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(pStateNxt),
        .D(\pState[9]_i_1__0_n_0 ),
        .Q(\pState_reg_n_0_[9] ),
        .R(SS));
  FDRE pTknFlagQ_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pTknFlag),
        .Q(pTknFlagQ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h80800300)) 
    pTknFlag_i_1__0
       (.I0(pTknFlag_i_2__0_n_0),
        .I1(\pDataQ_reg_n_0_[8] ),
        .I2(\pDataQ_reg_n_0_[2] ),
        .I3(pTknFlag_i_3__0_n_0),
        .I4(\pDataQ_reg_n_0_[6] ),
        .O(pTknFlag0));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    pTknFlag_i_2__0
       (.I0(\pDataQ_reg_n_0_[3] ),
        .I1(\pDataQ_reg_n_0_[5] ),
        .I2(\pDataQ_reg_n_0_[7] ),
        .I3(\pDataQ_reg_n_0_[0] ),
        .I4(\pDataQ_reg_n_0_[1] ),
        .I5(\pDataQ_reg_n_0_[4] ),
        .O(pTknFlag_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    pTknFlag_i_3__0
       (.I0(\pDataQ_reg_n_0_[3] ),
        .I1(\pDataQ_reg_n_0_[5] ),
        .I2(\pDataQ_reg_n_0_[7] ),
        .I3(\pDataQ_reg_n_0_[0] ),
        .I4(\pDataQ_reg_n_0_[1] ),
        .I5(\pDataQ_reg_n_0_[4] ),
        .O(pTknFlag_i_3__0_n_0));
  FDRE pTknFlag_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pTknFlag0),
        .Q(pTknFlag),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "PhaseAlign" *) 
module dvi2rgb_ip_PhaseAlign_19
   (pIDLY_CE,
    pIDLY_LD,
    pVld_0,
    pAlignErr_q_reg,
    iIn_q_reg,
    pAllVld,
    pAllVldBgnFlag0,
    pBitslip_reg,
    pIDLY_INC,
    rMMCM_LckdRisingFlag_reg,
    out,
    pVld_2,
    pVld_1,
    pAllVld_q,
    pAlignErr_q,
    D,
    pIDLY_CE_reg_0,
    SS);
  output pIDLY_CE;
  output pIDLY_LD;
  output pVld_0;
  output pAlignErr_q_reg;
  output iIn_q_reg;
  output pAllVld;
  output pAllVldBgnFlag0;
  output pBitslip_reg;
  output pIDLY_INC;
  input rMMCM_LckdRisingFlag_reg;
  input [0:0]out;
  input pVld_2;
  input pVld_1;
  input pAllVld_q;
  input pAlignErr_q;
  input [8:0]D;
  input [4:0]pIDLY_CE_reg_0;
  input [0:0]SS;

  wire [8:0]D;
  wire [0:0]SS;
  wire iIn_q_i_2__1_n_0;
  wire iIn_q_i_3__1_n_0;
  wire iIn_q_i_4_n_0;
  wire iIn_q_reg;
  wire [0:0]out;
  wire pAlignErr_q;
  wire pAlignErr_q_reg;
  wire pAligned;
  wire pAligned_i_2__1_n_0;
  wire pAllVld;
  wire pAllVldBgnFlag0;
  wire pAllVld_q;
  wire pBitslip_reg;
  wire pBlankBegin;
  wire pBlankBegin_i_1__1_n_0;
  wire \pCenterTap[0]_i_1_n_0 ;
  wire \pCenterTap[1]_i_1__1_n_0 ;
  wire \pCenterTap[2]_i_1__1_n_0 ;
  wire \pCenterTap[3]_i_1__1_n_0 ;
  wire \pCenterTap[4]_i_1__1_n_0 ;
  wire \pCenterTap[5]_i_1__1_n_0 ;
  wire \pCenterTap[5]_i_2__1_n_0 ;
  wire \pCenterTap[5]_i_3__1_n_0 ;
  wire \pCenterTap[5]_i_4__1_n_0 ;
  wire \pCenterTap[5]_i_5__1_n_0 ;
  wire \pCenterTap_reg_n_0_[0] ;
  wire \pCenterTap_reg_n_0_[1] ;
  wire \pCenterTap_reg_n_0_[2] ;
  wire \pCenterTap_reg_n_0_[3] ;
  wire \pCenterTap_reg_n_0_[4] ;
  wire \pCenterTap_reg_n_0_[5] ;
  wire [6:0]pCtlTknCnt_reg__0;
  wire pCtlTknOvf_i_1_n_0;
  wire pCtlTknOvf_i_2__1_n_0;
  wire pCtlTknOvf_reg_n_0;
  wire pCtlTknRst;
  wire \pDataQ_reg_n_0_[0] ;
  wire \pDataQ_reg_n_0_[1] ;
  wire \pDataQ_reg_n_0_[2] ;
  wire \pDataQ_reg_n_0_[3] ;
  wire \pDataQ_reg_n_0_[4] ;
  wire \pDataQ_reg_n_0_[5] ;
  wire \pDataQ_reg_n_0_[6] ;
  wire \pDataQ_reg_n_0_[7] ;
  wire \pDataQ_reg_n_0_[8] ;
  wire pDelayCenter_i_1__1_n_0;
  wire pDelayCenter_i_2__1_n_0;
  wire pDelayCenter_reg_n_0;
  wire pDelayOvf_i_1__1_n_0;
  wire pDelayOvf_reg_n_0;
  wire [1:0]pDelayWaitCnt;
  wire \pDelayWaitCnt[0]_i_1_n_0 ;
  wire \pDelayWaitCnt[1]_i_1_n_0 ;
  wire pDelayWaitOvf_i_1__1_n_0;
  wire pDelayWaitOvf_i_2__1_n_0;
  wire pDelayWaitOvf_reg_n_0;
  wire pError;
  wire \pEyeOpenCnt[0]_i_1__1_n_0 ;
  wire \pEyeOpenCnt[1]_i_1__1_n_0 ;
  wire \pEyeOpenCnt[2]_i_1__1_n_0 ;
  wire \pEyeOpenCnt[3]_i_1__1_n_0 ;
  wire \pEyeOpenCnt[3]_i_2__1_n_0 ;
  wire \pEyeOpenCnt[4]_i_1__1_n_0 ;
  wire \pEyeOpenCnt[4]_i_2__1_n_0 ;
  wire \pEyeOpenCnt[4]_i_3__1_n_0 ;
  wire \pEyeOpenCnt_reg_n_0_[0] ;
  wire \pEyeOpenCnt_reg_n_0_[1] ;
  wire \pEyeOpenCnt_reg_n_0_[2] ;
  wire \pEyeOpenCnt_reg_n_0_[3] ;
  wire \pEyeOpenCnt_reg_n_0_[4] ;
  wire pFoundEyeFlag;
  wire pFoundEyeFlag_i_1__1_n_0;
  wire pFoundEyeFlag_i_2__1_n_0;
  wire pFoundEyeFlag_i_3__1_n_0;
  wire pFoundJtrFlag;
  wire pFoundJtrFlag_i_1__1_n_0;
  wire pIDLY_CE;
  wire pIDLY_CE_0;
  wire [4:0]pIDLY_CE_reg_0;
  wire \pIDLY_CNT_Q_reg_n_0_[0] ;
  wire \pIDLY_CNT_Q_reg_n_0_[1] ;
  wire \pIDLY_CNT_Q_reg_n_0_[2] ;
  wire \pIDLY_CNT_Q_reg_n_0_[3] ;
  wire \pIDLY_CNT_Q_reg_n_0_[4] ;
  wire pIDLY_INC;
  wire pIDLY_INC_i_1_n_0;
  wire pIDLY_LD;
  wire pIDLY_LD_1;
  wire pStateNxt;
  wire \pState[0]_i_1__1_n_0 ;
  wire \pState[0]_i_2__1_n_0 ;
  wire \pState[0]_i_3__1_n_0 ;
  wire \pState[0]_i_4__1_n_0 ;
  wire \pState[10]_i_2__1_n_0 ;
  wire \pState[10]_i_3__1_n_0 ;
  wire \pState[10]_i_4__1_n_0 ;
  wire \pState[10]_i_5__1_n_0 ;
  wire \pState[10]_i_6__1_n_0 ;
  wire \pState[1]_i_1__1_n_0 ;
  wire \pState[1]_i_2__1_n_0 ;
  wire \pState[2]_i_1__1_n_0 ;
  wire \pState[3]_i_1__1_n_0 ;
  wire \pState[4]_i_1__1_n_0 ;
  wire \pState[5]_i_1__1_n_0 ;
  wire \pState[5]_i_2__1_n_0 ;
  wire \pState[6]_i_1__1_n_0 ;
  wire \pState[7]_i_1__1_n_0 ;
  wire \pState[7]_i_2__1_n_0 ;
  wire \pState[7]_i_3__1_n_0 ;
  wire \pState[8]_i_1__1_n_0 ;
  wire \pState[8]_i_2__1_n_0 ;
  wire \pState[8]_i_3_n_0 ;
  wire \pState[9]_i_1__1_n_0 ;
  wire \pState_reg_n_0_[0] ;
  wire \pState_reg_n_0_[10] ;
  wire \pState_reg_n_0_[1] ;
  wire \pState_reg_n_0_[2] ;
  wire \pState_reg_n_0_[3] ;
  wire \pState_reg_n_0_[4] ;
  wire \pState_reg_n_0_[5] ;
  wire \pState_reg_n_0_[6] ;
  wire \pState_reg_n_0_[7] ;
  wire \pState_reg_n_0_[8] ;
  wire \pState_reg_n_0_[9] ;
  wire pTknFlag;
  wire pTknFlag0;
  wire pTknFlagQ;
  wire pTknFlag_i_2__1_n_0;
  wire pTknFlag_i_3__1_n_0;
  wire pVld_0;
  wire pVld_1;
  wire pVld_2;
  wire [6:0]p_0_in;
  wire rMMCM_LckdRisingFlag_reg;

  LUT3 #(
    .INIT(8'hEB)) 
    iIn_q_i_1__1
       (.I0(iIn_q_i_2__1_n_0),
        .I1(\pState_reg_n_0_[2] ),
        .I2(\pState_reg_n_0_[1] ),
        .O(iIn_q_reg));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    iIn_q_i_2__1
       (.I0(\pState_reg_n_0_[7] ),
        .I1(\pState_reg_n_0_[5] ),
        .I2(\pState_reg_n_0_[10] ),
        .I3(\pState_reg_n_0_[9] ),
        .I4(iIn_q_i_3__1_n_0),
        .I5(iIn_q_i_4_n_0),
        .O(iIn_q_i_2__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    iIn_q_i_3__1
       (.I0(\pState_reg_n_0_[4] ),
        .I1(\pState_reg_n_0_[0] ),
        .I2(\pState_reg_n_0_[3] ),
        .O(iIn_q_i_3__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'hE)) 
    iIn_q_i_4
       (.I0(\pState_reg_n_0_[6] ),
        .I1(\pState_reg_n_0_[8] ),
        .O(iIn_q_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    pAligned_i_1__1
       (.I0(\pState_reg_n_0_[5] ),
        .I1(\pState_reg_n_0_[7] ),
        .I2(\pState_reg_n_0_[9] ),
        .I3(\pState_reg_n_0_[10] ),
        .I4(pAligned_i_2__1_n_0),
        .O(pAligned));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    pAligned_i_2__1
       (.I0(\pState_reg_n_0_[3] ),
        .I1(\pState_reg_n_0_[0] ),
        .I2(\pState_reg_n_0_[4] ),
        .I3(iIn_q_i_4_n_0),
        .I4(\pState_reg_n_0_[1] ),
        .I5(\pState_reg_n_0_[2] ),
        .O(pAligned_i_2__1_n_0));
  FDRE pAligned_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pAligned),
        .Q(pVld_0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0080)) 
    pAllVldBgnFlag_i_1__1
       (.I0(pVld_0),
        .I1(pVld_2),
        .I2(pVld_1),
        .I3(pAllVld_q),
        .O(pAllVldBgnFlag0));
  LUT2 #(
    .INIT(4'h2)) 
    pBitslip_i_1__1
       (.I0(pAlignErr_q_reg),
        .I1(pAlignErr_q),
        .O(pBitslip_reg));
  LUT2 #(
    .INIT(4'h2)) 
    pBlankBegin_i_1__1
       (.I0(pTknFlag),
        .I1(pTknFlagQ),
        .O(pBlankBegin_i_1__1_n_0));
  FDRE pBlankBegin_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pBlankBegin_i_1__1_n_0),
        .Q(pBlankBegin),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h6F)) 
    \pCenterTap[0]_i_1 
       (.I0(\pCenterTap_reg_n_0_[0] ),
        .I1(\pCenterTap[5]_i_3__1_n_0 ),
        .I2(\pCenterTap[5]_i_4__1_n_0 ),
        .O(\pCenterTap[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2EE2)) 
    \pCenterTap[1]_i_1__1 
       (.I0(\pIDLY_CNT_Q_reg_n_0_[0] ),
        .I1(\pCenterTap[5]_i_4__1_n_0 ),
        .I2(\pCenterTap_reg_n_0_[1] ),
        .I3(\pCenterTap_reg_n_0_[0] ),
        .O(\pCenterTap[1]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h2EEEE222)) 
    \pCenterTap[2]_i_1__1 
       (.I0(\pIDLY_CNT_Q_reg_n_0_[1] ),
        .I1(\pCenterTap[5]_i_4__1_n_0 ),
        .I2(\pCenterTap_reg_n_0_[1] ),
        .I3(\pCenterTap_reg_n_0_[0] ),
        .I4(\pCenterTap_reg_n_0_[2] ),
        .O(\pCenterTap[2]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h2EEEEEEEE2222222)) 
    \pCenterTap[3]_i_1__1 
       (.I0(\pIDLY_CNT_Q_reg_n_0_[2] ),
        .I1(\pCenterTap[5]_i_4__1_n_0 ),
        .I2(\pCenterTap_reg_n_0_[2] ),
        .I3(\pCenterTap_reg_n_0_[0] ),
        .I4(\pCenterTap_reg_n_0_[1] ),
        .I5(\pCenterTap_reg_n_0_[3] ),
        .O(\pCenterTap[3]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hE22E)) 
    \pCenterTap[4]_i_1__1 
       (.I0(\pIDLY_CNT_Q_reg_n_0_[3] ),
        .I1(\pCenterTap[5]_i_4__1_n_0 ),
        .I2(\pCenterTap[5]_i_5__1_n_0 ),
        .I3(\pCenterTap_reg_n_0_[4] ),
        .O(\pCenterTap[4]_i_1__1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \pCenterTap[5]_i_1__1 
       (.I0(\pCenterTap[5]_i_3__1_n_0 ),
        .I1(\pCenterTap[5]_i_4__1_n_0 ),
        .O(\pCenterTap[5]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'hEE2E22E2)) 
    \pCenterTap[5]_i_2__1 
       (.I0(\pIDLY_CNT_Q_reg_n_0_[4] ),
        .I1(\pCenterTap[5]_i_4__1_n_0 ),
        .I2(\pCenterTap_reg_n_0_[4] ),
        .I3(\pCenterTap[5]_i_5__1_n_0 ),
        .I4(\pCenterTap_reg_n_0_[5] ),
        .O(\pCenterTap[5]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \pCenterTap[5]_i_3__1 
       (.I0(\pState_reg_n_0_[0] ),
        .I1(\pState_reg_n_0_[4] ),
        .I2(\pState_reg_n_0_[3] ),
        .I3(\pState[5]_i_2__1_n_0 ),
        .O(\pCenterTap[5]_i_3__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hEEFB)) 
    \pCenterTap[5]_i_4__1 
       (.I0(\pState[7]_i_2__1_n_0 ),
        .I1(\pState_reg_n_0_[4] ),
        .I2(pFoundEyeFlag),
        .I3(\pState_reg_n_0_[0] ),
        .O(\pCenterTap[5]_i_4__1_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \pCenterTap[5]_i_5__1 
       (.I0(\pCenterTap_reg_n_0_[2] ),
        .I1(\pCenterTap_reg_n_0_[0] ),
        .I2(\pCenterTap_reg_n_0_[1] ),
        .I3(\pCenterTap_reg_n_0_[3] ),
        .O(\pCenterTap[5]_i_5__1_n_0 ));
  FDRE \pCenterTap_reg[0] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(\pCenterTap[0]_i_1_n_0 ),
        .Q(\pCenterTap_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \pCenterTap_reg[1] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(\pCenterTap[5]_i_1__1_n_0 ),
        .D(\pCenterTap[1]_i_1__1_n_0 ),
        .Q(\pCenterTap_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \pCenterTap_reg[2] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(\pCenterTap[5]_i_1__1_n_0 ),
        .D(\pCenterTap[2]_i_1__1_n_0 ),
        .Q(\pCenterTap_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \pCenterTap_reg[3] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(\pCenterTap[5]_i_1__1_n_0 ),
        .D(\pCenterTap[3]_i_1__1_n_0 ),
        .Q(\pCenterTap_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \pCenterTap_reg[4] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(\pCenterTap[5]_i_1__1_n_0 ),
        .D(\pCenterTap[4]_i_1__1_n_0 ),
        .Q(\pCenterTap_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \pCenterTap_reg[5] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(\pCenterTap[5]_i_1__1_n_0 ),
        .D(\pCenterTap[5]_i_2__1_n_0 ),
        .Q(\pCenterTap_reg_n_0_[5] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \pCtlTknCnt[0]_i_1__1 
       (.I0(pCtlTknCnt_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pCtlTknCnt[1]_i_1__1 
       (.I0(pCtlTknCnt_reg__0[0]),
        .I1(pCtlTknCnt_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \pCtlTknCnt[2]_i_1__1 
       (.I0(pCtlTknCnt_reg__0[1]),
        .I1(pCtlTknCnt_reg__0[0]),
        .I2(pCtlTknCnt_reg__0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \pCtlTknCnt[3]_i_1__1 
       (.I0(pCtlTknCnt_reg__0[2]),
        .I1(pCtlTknCnt_reg__0[0]),
        .I2(pCtlTknCnt_reg__0[1]),
        .I3(pCtlTknCnt_reg__0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \pCtlTknCnt[4]_i_1__1 
       (.I0(pCtlTknCnt_reg__0[3]),
        .I1(pCtlTknCnt_reg__0[1]),
        .I2(pCtlTknCnt_reg__0[0]),
        .I3(pCtlTknCnt_reg__0[2]),
        .I4(pCtlTknCnt_reg__0[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \pCtlTknCnt[5]_i_1__1 
       (.I0(pCtlTknCnt_reg__0[4]),
        .I1(pCtlTknCnt_reg__0[2]),
        .I2(pCtlTknCnt_reg__0[0]),
        .I3(pCtlTknCnt_reg__0[1]),
        .I4(pCtlTknCnt_reg__0[3]),
        .I5(pCtlTknCnt_reg__0[5]),
        .O(p_0_in[5]));
  LUT3 #(
    .INIT(8'hFD)) 
    \pCtlTknCnt[6]_i_1__1 
       (.I0(\pState_reg_n_0_[2] ),
        .I1(\pState_reg_n_0_[1] ),
        .I2(iIn_q_i_2__1_n_0),
        .O(pCtlTknRst));
  LUT2 #(
    .INIT(4'h9)) 
    \pCtlTknCnt[6]_i_2__1 
       (.I0(pCtlTknOvf_i_2__1_n_0),
        .I1(pCtlTknCnt_reg__0[6]),
        .O(p_0_in[6]));
  FDRE \pCtlTknCnt_reg[0] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(pCtlTknCnt_reg__0[0]),
        .R(pCtlTknRst));
  FDRE \pCtlTknCnt_reg[1] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(pCtlTknCnt_reg__0[1]),
        .R(pCtlTknRst));
  FDRE \pCtlTknCnt_reg[2] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(pCtlTknCnt_reg__0[2]),
        .R(pCtlTknRst));
  FDRE \pCtlTknCnt_reg[3] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(pCtlTknCnt_reg__0[3]),
        .R(pCtlTknRst));
  FDRE \pCtlTknCnt_reg[4] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(pCtlTknCnt_reg__0[4]),
        .R(pCtlTknRst));
  FDRE \pCtlTknCnt_reg[5] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(pCtlTknCnt_reg__0[5]),
        .R(pCtlTknRst));
  FDRE \pCtlTknCnt_reg[6] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(pCtlTknCnt_reg__0[6]),
        .R(pCtlTknRst));
  LUT4 #(
    .INIT(16'hAA30)) 
    pCtlTknOvf_i_1
       (.I0(pCtlTknOvf_reg_n_0),
        .I1(pCtlTknOvf_i_2__1_n_0),
        .I2(pCtlTknCnt_reg__0[6]),
        .I3(pCtlTknRst),
        .O(pCtlTknOvf_i_1_n_0));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    pCtlTknOvf_i_2__1
       (.I0(pCtlTknCnt_reg__0[4]),
        .I1(pCtlTknCnt_reg__0[2]),
        .I2(pCtlTknCnt_reg__0[0]),
        .I3(pCtlTknCnt_reg__0[1]),
        .I4(pCtlTknCnt_reg__0[3]),
        .I5(pCtlTknCnt_reg__0[5]),
        .O(pCtlTknOvf_i_2__1_n_0));
  FDRE pCtlTknOvf_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pCtlTknOvf_i_1_n_0),
        .Q(pCtlTknOvf_reg_n_0),
        .R(1'b0));
  FDRE \pDataQ_reg[0] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(D[0]),
        .Q(\pDataQ_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \pDataQ_reg[1] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(D[1]),
        .Q(\pDataQ_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \pDataQ_reg[2] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(D[2]),
        .Q(\pDataQ_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \pDataQ_reg[3] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(D[3]),
        .Q(\pDataQ_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \pDataQ_reg[4] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(D[4]),
        .Q(\pDataQ_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \pDataQ_reg[5] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(D[5]),
        .Q(\pDataQ_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \pDataQ_reg[6] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(D[6]),
        .Q(\pDataQ_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \pDataQ_reg[7] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(D[7]),
        .Q(\pDataQ_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \pDataQ_reg[8] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(D[8]),
        .Q(\pDataQ_reg_n_0_[8] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h82000082)) 
    pDelayCenter_i_1__1
       (.I0(pDelayCenter_i_2__1_n_0),
        .I1(\pCenterTap_reg_n_0_[5] ),
        .I2(\pIDLY_CNT_Q_reg_n_0_[4] ),
        .I3(\pCenterTap_reg_n_0_[4] ),
        .I4(\pIDLY_CNT_Q_reg_n_0_[3] ),
        .O(pDelayCenter_i_1__1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pDelayCenter_i_2__1
       (.I0(\pCenterTap_reg_n_0_[3] ),
        .I1(\pIDLY_CNT_Q_reg_n_0_[2] ),
        .I2(\pCenterTap_reg_n_0_[2] ),
        .I3(\pIDLY_CNT_Q_reg_n_0_[1] ),
        .I4(\pIDLY_CNT_Q_reg_n_0_[0] ),
        .I5(\pCenterTap_reg_n_0_[1] ),
        .O(pDelayCenter_i_2__1_n_0));
  FDRE pDelayCenter_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pDelayCenter_i_1__1_n_0),
        .Q(pDelayCenter_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000001)) 
    pDelayOvf_i_1__1
       (.I0(\pIDLY_CNT_Q_reg_n_0_[0] ),
        .I1(\pIDLY_CNT_Q_reg_n_0_[1] ),
        .I2(\pIDLY_CNT_Q_reg_n_0_[2] ),
        .I3(\pIDLY_CNT_Q_reg_n_0_[4] ),
        .I4(\pIDLY_CNT_Q_reg_n_0_[3] ),
        .O(pDelayOvf_i_1__1_n_0));
  FDRE pDelayOvf_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pDelayOvf_i_1__1_n_0),
        .Q(pDelayOvf_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0110)) 
    \pDelayWaitCnt[0]_i_1 
       (.I0(pDelayWaitCnt[0]),
        .I1(pDelayWaitOvf_i_2__1_n_0),
        .I2(\pState_reg_n_0_[8] ),
        .I3(\pState_reg_n_0_[6] ),
        .O(\pDelayWaitCnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00060600)) 
    \pDelayWaitCnt[1]_i_1 
       (.I0(pDelayWaitCnt[1]),
        .I1(pDelayWaitCnt[0]),
        .I2(pDelayWaitOvf_i_2__1_n_0),
        .I3(\pState_reg_n_0_[8] ),
        .I4(\pState_reg_n_0_[6] ),
        .O(\pDelayWaitCnt[1]_i_1_n_0 ));
  FDRE \pDelayWaitCnt_reg[0] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(\pDelayWaitCnt[0]_i_1_n_0 ),
        .Q(pDelayWaitCnt[0]),
        .R(1'b0));
  FDRE \pDelayWaitCnt_reg[1] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(\pDelayWaitCnt[1]_i_1_n_0 ),
        .Q(pDelayWaitCnt[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF090F0F6F090F090)) 
    pDelayWaitOvf_i_1__1
       (.I0(\pState_reg_n_0_[6] ),
        .I1(\pState_reg_n_0_[8] ),
        .I2(pDelayWaitOvf_reg_n_0),
        .I3(pDelayWaitOvf_i_2__1_n_0),
        .I4(pDelayWaitCnt[0]),
        .I5(pDelayWaitCnt[1]),
        .O(pDelayWaitOvf_i_1__1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    pDelayWaitOvf_i_2__1
       (.I0(\pState_reg_n_0_[7] ),
        .I1(\pState_reg_n_0_[5] ),
        .I2(\pState[0]_i_3__1_n_0 ),
        .I3(iIn_q_i_3__1_n_0),
        .I4(\pState_reg_n_0_[2] ),
        .I5(\pState_reg_n_0_[1] ),
        .O(pDelayWaitOvf_i_2__1_n_0));
  FDRE pDelayWaitOvf_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pDelayWaitOvf_i_1__1_n_0),
        .Q(pDelayWaitOvf_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    pError_i_1__1
       (.I0(\pState_reg_n_0_[5] ),
        .I1(\pState_reg_n_0_[7] ),
        .I2(\pState_reg_n_0_[10] ),
        .I3(\pState_reg_n_0_[9] ),
        .I4(pAligned_i_2__1_n_0),
        .O(pError));
  FDRE pError_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pError),
        .Q(pAlignErr_q_reg),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCC3C80C)) 
    \pEyeOpenCnt[0]_i_1__1 
       (.I0(pFoundEyeFlag),
        .I1(\pEyeOpenCnt_reg_n_0_[0] ),
        .I2(\pState_reg_n_0_[0] ),
        .I3(\pState_reg_n_0_[4] ),
        .I4(\pState_reg_n_0_[3] ),
        .I5(\pState[5]_i_2__1_n_0 ),
        .O(\pEyeOpenCnt[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hCACAF0C0)) 
    \pEyeOpenCnt[1]_i_1__1 
       (.I0(\pCenterTap[5]_i_3__1_n_0 ),
        .I1(\pEyeOpenCnt[4]_i_3__1_n_0 ),
        .I2(\pEyeOpenCnt_reg_n_0_[1] ),
        .I3(\pState_reg_n_0_[3] ),
        .I4(\pEyeOpenCnt_reg_n_0_[0] ),
        .O(\pEyeOpenCnt[1]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hCFFFA000CCCCA000)) 
    \pEyeOpenCnt[2]_i_1__1 
       (.I0(\pCenterTap[5]_i_3__1_n_0 ),
        .I1(\pEyeOpenCnt[4]_i_3__1_n_0 ),
        .I2(\pEyeOpenCnt_reg_n_0_[0] ),
        .I3(\pEyeOpenCnt_reg_n_0_[1] ),
        .I4(\pEyeOpenCnt_reg_n_0_[2] ),
        .I5(\pState_reg_n_0_[3] ),
        .O(\pEyeOpenCnt[2]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEECCEE0000F000)) 
    \pEyeOpenCnt[3]_i_1__1 
       (.I0(\pState_reg_n_0_[3] ),
        .I1(\pEyeOpenCnt[4]_i_3__1_n_0 ),
        .I2(\pCenterTap[5]_i_3__1_n_0 ),
        .I3(\pEyeOpenCnt_reg_n_0_[2] ),
        .I4(\pEyeOpenCnt[3]_i_2__1_n_0 ),
        .I5(\pEyeOpenCnt_reg_n_0_[3] ),
        .O(\pEyeOpenCnt[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \pEyeOpenCnt[3]_i_2__1 
       (.I0(\pEyeOpenCnt_reg_n_0_[0] ),
        .I1(\pEyeOpenCnt_reg_n_0_[1] ),
        .O(\pEyeOpenCnt[3]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F8F8F0005808)) 
    \pEyeOpenCnt[4]_i_1__1 
       (.I0(\pEyeOpenCnt_reg_n_0_[3] ),
        .I1(\pCenterTap[5]_i_3__1_n_0 ),
        .I2(\pEyeOpenCnt_reg_n_0_[4] ),
        .I3(\pState_reg_n_0_[3] ),
        .I4(\pEyeOpenCnt[4]_i_2__1_n_0 ),
        .I5(\pEyeOpenCnt[4]_i_3__1_n_0 ),
        .O(\pEyeOpenCnt[4]_i_1__1_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \pEyeOpenCnt[4]_i_2__1 
       (.I0(\pEyeOpenCnt_reg_n_0_[1] ),
        .I1(\pEyeOpenCnt_reg_n_0_[0] ),
        .I2(\pEyeOpenCnt_reg_n_0_[2] ),
        .O(\pEyeOpenCnt[4]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hFFFFEDE9)) 
    \pEyeOpenCnt[4]_i_3__1 
       (.I0(\pState_reg_n_0_[3] ),
        .I1(\pState_reg_n_0_[4] ),
        .I2(\pState_reg_n_0_[0] ),
        .I3(pFoundEyeFlag),
        .I4(\pState[5]_i_2__1_n_0 ),
        .O(\pEyeOpenCnt[4]_i_3__1_n_0 ));
  FDRE \pEyeOpenCnt_reg[0] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(\pEyeOpenCnt[0]_i_1__1_n_0 ),
        .Q(\pEyeOpenCnt_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \pEyeOpenCnt_reg[1] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(\pEyeOpenCnt[1]_i_1__1_n_0 ),
        .Q(\pEyeOpenCnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \pEyeOpenCnt_reg[2] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(\pEyeOpenCnt[2]_i_1__1_n_0 ),
        .Q(\pEyeOpenCnt_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \pEyeOpenCnt_reg[3] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(\pEyeOpenCnt[3]_i_1__1_n_0 ),
        .Q(\pEyeOpenCnt_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \pEyeOpenCnt_reg[4] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(\pEyeOpenCnt[4]_i_1__1_n_0 ),
        .Q(\pEyeOpenCnt_reg_n_0_[4] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h80)) 
    pFIFO_reg_0_31_0_5_i_1
       (.I0(pVld_0),
        .I1(pVld_2),
        .I2(pVld_1),
        .O(pAllVld));
  LUT5 #(
    .INIT(32'hAABFAA80)) 
    pFoundEyeFlag_i_1__1
       (.I0(pFoundEyeFlag_i_2__1_n_0),
        .I1(\pCenterTap[5]_i_3__1_n_0 ),
        .I2(pFoundEyeFlag_i_3__1_n_0),
        .I3(pIDLY_LD_1),
        .I4(pFoundEyeFlag),
        .O(pFoundEyeFlag_i_1__1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    pFoundEyeFlag_i_2__1
       (.I0(\pEyeOpenCnt[3]_i_2__1_n_0 ),
        .I1(\pState_reg_n_0_[3] ),
        .I2(\pEyeOpenCnt_reg_n_0_[4] ),
        .I3(pFoundJtrFlag),
        .I4(\pEyeOpenCnt_reg_n_0_[2] ),
        .I5(\pEyeOpenCnt_reg_n_0_[3] ),
        .O(pFoundEyeFlag_i_2__1_n_0));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    pFoundEyeFlag_i_3__1
       (.I0(\pEyeOpenCnt_reg_n_0_[3] ),
        .I1(\pEyeOpenCnt_reg_n_0_[4] ),
        .I2(pFoundJtrFlag),
        .I3(\pEyeOpenCnt_reg_n_0_[2] ),
        .I4(\pEyeOpenCnt_reg_n_0_[1] ),
        .I5(\pEyeOpenCnt_reg_n_0_[0] ),
        .O(pFoundEyeFlag_i_3__1_n_0));
  FDRE pFoundEyeFlag_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pFoundEyeFlag_i_1__1_n_0),
        .Q(pFoundEyeFlag),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hFB10)) 
    pFoundJtrFlag_i_1__1
       (.I0(\pState[7]_i_2__1_n_0 ),
        .I1(\pState_reg_n_0_[0] ),
        .I2(\pState_reg_n_0_[4] ),
        .I3(pFoundJtrFlag),
        .O(pFoundJtrFlag_i_1__1_n_0));
  FDRE pFoundJtrFlag_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pFoundJtrFlag_i_1__1_n_0),
        .Q(pFoundJtrFlag),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h28)) 
    pIDLY_CE_i_1__1
       (.I0(\pState[8]_i_2__1_n_0 ),
        .I1(\pState_reg_n_0_[5] ),
        .I2(\pState_reg_n_0_[7] ),
        .O(pIDLY_CE_0));
  FDRE pIDLY_CE_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pIDLY_CE_0),
        .Q(pIDLY_CE),
        .R(1'b0));
  FDRE \pIDLY_CNT_Q_reg[0] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pIDLY_CE_reg_0[0]),
        .Q(\pIDLY_CNT_Q_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \pIDLY_CNT_Q_reg[1] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pIDLY_CE_reg_0[1]),
        .Q(\pIDLY_CNT_Q_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \pIDLY_CNT_Q_reg[2] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pIDLY_CE_reg_0[2]),
        .Q(\pIDLY_CNT_Q_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \pIDLY_CNT_Q_reg[3] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pIDLY_CE_reg_0[3]),
        .Q(\pIDLY_CNT_Q_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \pIDLY_CNT_Q_reg[4] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pIDLY_CE_reg_0[4]),
        .Q(\pIDLY_CNT_Q_reg_n_0_[4] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hA2EA)) 
    pIDLY_INC_i_1
       (.I0(pIDLY_INC),
        .I1(\pState[8]_i_2__1_n_0 ),
        .I2(\pState_reg_n_0_[5] ),
        .I3(\pState_reg_n_0_[7] ),
        .O(pIDLY_INC_i_1_n_0));
  FDRE pIDLY_INC_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pIDLY_INC_i_1_n_0),
        .Q(pIDLY_INC),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h04)) 
    pIDLY_LD_i_1__1
       (.I0(\pState_reg_n_0_[4] ),
        .I1(\pState_reg_n_0_[0] ),
        .I2(\pState[7]_i_2__1_n_0 ),
        .O(pIDLY_LD_1));
  FDRE pIDLY_LD_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pIDLY_LD_1),
        .Q(pIDLY_LD),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFE8)) 
    \pState[0]_i_1__1 
       (.I0(\pState_reg_n_0_[3] ),
        .I1(\pState_reg_n_0_[4] ),
        .I2(\pState_reg_n_0_[0] ),
        .I3(\pState[0]_i_2__1_n_0 ),
        .I4(\pState[0]_i_3__1_n_0 ),
        .I5(\pState[0]_i_4__1_n_0 ),
        .O(\pState[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hFEE8)) 
    \pState[0]_i_2__1 
       (.I0(\pState_reg_n_0_[6] ),
        .I1(\pState_reg_n_0_[8] ),
        .I2(\pState_reg_n_0_[1] ),
        .I3(\pState_reg_n_0_[2] ),
        .O(\pState[0]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \pState[0]_i_3__1 
       (.I0(\pState_reg_n_0_[9] ),
        .I1(\pState_reg_n_0_[10] ),
        .O(\pState[0]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEAAA9)) 
    \pState[0]_i_4__1 
       (.I0(\pState[8]_i_3_n_0 ),
        .I1(\pState_reg_n_0_[4] ),
        .I2(\pState_reg_n_0_[0] ),
        .I3(\pState_reg_n_0_[3] ),
        .I4(\pState_reg_n_0_[7] ),
        .I5(\pState_reg_n_0_[5] ),
        .O(\pState[0]_i_4__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFAEA)) 
    \pState[10]_i_1__1 
       (.I0(\pState[10]_i_3__1_n_0 ),
        .I1(out),
        .I2(\pState_reg_n_0_[1] ),
        .I3(pBlankBegin),
        .I4(\pState[10]_i_4__1_n_0 ),
        .I5(\pState[10]_i_5__1_n_0 ),
        .O(pStateNxt));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \pState[10]_i_2__1 
       (.I0(pDelayOvf_reg_n_0),
        .I1(\pState_reg_n_0_[6] ),
        .I2(\pState_reg_n_0_[8] ),
        .I3(pDelayWaitOvf_i_2__1_n_0),
        .O(\pState[10]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001011)) 
    \pState[10]_i_3__1 
       (.I0(\pState_reg_n_0_[9] ),
        .I1(\pState_reg_n_0_[10] ),
        .I2(pCtlTknOvf_reg_n_0),
        .I3(pTknFlagQ),
        .I4(\pState_reg_n_0_[1] ),
        .I5(iIn_q_i_4_n_0),
        .O(\pState[10]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF0FEE1FEE1)) 
    \pState[10]_i_4__1 
       (.I0(\pState_reg_n_0_[1] ),
        .I1(\pState_reg_n_0_[2] ),
        .I2(\pState_reg_n_0_[10] ),
        .I3(\pState_reg_n_0_[9] ),
        .I4(pDelayWaitOvf_reg_n_0),
        .I5(iIn_q_i_4_n_0),
        .O(\pState[10]_i_4__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEE8)) 
    \pState[10]_i_5__1 
       (.I0(\pState_reg_n_0_[6] ),
        .I1(\pState_reg_n_0_[8] ),
        .I2(\pState_reg_n_0_[1] ),
        .I3(\pState_reg_n_0_[2] ),
        .I4(\pState[10]_i_6__1_n_0 ),
        .I5(iIn_q_i_3__1_n_0),
        .O(\pState[10]_i_5__1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \pState[10]_i_6__1 
       (.I0(\pState_reg_n_0_[5] ),
        .I1(\pState_reg_n_0_[7] ),
        .O(\pState[10]_i_6__1_n_0 ));
  LUT6 #(
    .INIT(64'hABABABABABFFABAB)) 
    \pState[1]_i_1__1 
       (.I0(\pState[1]_i_2__1_n_0 ),
        .I1(pCtlTknRst),
        .I2(pTknFlagQ),
        .I3(\pState[7]_i_2__1_n_0 ),
        .I4(\pState_reg_n_0_[0] ),
        .I5(\pState_reg_n_0_[4] ),
        .O(\pState[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \pState[1]_i_2__1 
       (.I0(pDelayOvf_reg_n_0),
        .I1(\pState_reg_n_0_[6] ),
        .I2(\pState_reg_n_0_[8] ),
        .I3(pDelayWaitOvf_i_2__1_n_0),
        .O(\pState[1]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \pState[2]_i_1__1 
       (.I0(\pState_reg_n_0_[1] ),
        .I1(pBlankBegin),
        .I2(\pState_reg_n_0_[2] ),
        .I3(iIn_q_i_2__1_n_0),
        .O(\pState[2]_i_1__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \pState[3]_i_1__1 
       (.I0(pTknFlagQ),
        .I1(pCtlTknRst),
        .O(\pState[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \pState[4]_i_1__1 
       (.I0(\pState_reg_n_0_[1] ),
        .I1(\pState_reg_n_0_[2] ),
        .I2(pBlankBegin),
        .I3(iIn_q_i_2__1_n_0),
        .O(\pState[4]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h00000130)) 
    \pState[5]_i_1__1 
       (.I0(pFoundEyeFlag),
        .I1(\pState[5]_i_2__1_n_0 ),
        .I2(\pState_reg_n_0_[3] ),
        .I3(\pState_reg_n_0_[4] ),
        .I4(\pState_reg_n_0_[0] ),
        .O(\pState[5]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \pState[5]_i_2__1 
       (.I0(\pState_reg_n_0_[9] ),
        .I1(\pState_reg_n_0_[10] ),
        .I2(\pState_reg_n_0_[5] ),
        .I3(\pState_reg_n_0_[7] ),
        .I4(\pState[8]_i_3_n_0 ),
        .O(\pState[5]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \pState[6]_i_1__1 
       (.I0(\pState_reg_n_0_[7] ),
        .I1(\pState_reg_n_0_[5] ),
        .I2(\pState[8]_i_2__1_n_0 ),
        .O(\pState[6]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0010FFFF00100010)) 
    \pState[7]_i_1__1 
       (.I0(pDelayWaitOvf_i_2__1_n_0),
        .I1(\pState_reg_n_0_[6] ),
        .I2(\pState_reg_n_0_[8] ),
        .I3(pDelayCenter_reg_n_0),
        .I4(\pState[7]_i_2__1_n_0 ),
        .I5(\pState[7]_i_3__1_n_0 ),
        .O(\pState[7]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \pState[7]_i_2__1 
       (.I0(\pState[8]_i_3_n_0 ),
        .I1(\pState_reg_n_0_[7] ),
        .I2(\pState_reg_n_0_[5] ),
        .I3(\pState_reg_n_0_[10] ),
        .I4(\pState_reg_n_0_[9] ),
        .I5(\pState_reg_n_0_[3] ),
        .O(\pState[7]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \pState[7]_i_3__1 
       (.I0(\pState_reg_n_0_[0] ),
        .I1(\pState_reg_n_0_[4] ),
        .I2(pFoundEyeFlag),
        .O(\pState[7]_i_3__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \pState[8]_i_1__1 
       (.I0(\pState_reg_n_0_[5] ),
        .I1(\pState_reg_n_0_[7] ),
        .I2(\pState[8]_i_2__1_n_0 ),
        .O(\pState[8]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \pState[8]_i_2__1 
       (.I0(\pState[8]_i_3_n_0 ),
        .I1(\pState_reg_n_0_[4] ),
        .I2(\pState_reg_n_0_[0] ),
        .I3(\pState_reg_n_0_[3] ),
        .I4(\pState_reg_n_0_[10] ),
        .I5(\pState_reg_n_0_[9] ),
        .O(\pState[8]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \pState[8]_i_3 
       (.I0(\pState_reg_n_0_[2] ),
        .I1(\pState_reg_n_0_[1] ),
        .I2(\pState_reg_n_0_[8] ),
        .I3(\pState_reg_n_0_[6] ),
        .O(\pState[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \pState[9]_i_1__1 
       (.I0(pDelayCenter_reg_n_0),
        .I1(\pState_reg_n_0_[8] ),
        .I2(\pState_reg_n_0_[6] ),
        .I3(pDelayWaitOvf_i_2__1_n_0),
        .O(\pState[9]_i_1__1_n_0 ));
  FDSE \pState_reg[0] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(pStateNxt),
        .D(\pState[0]_i_1__1_n_0 ),
        .Q(\pState_reg_n_0_[0] ),
        .S(SS));
  FDRE \pState_reg[10] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(pStateNxt),
        .D(\pState[10]_i_2__1_n_0 ),
        .Q(\pState_reg_n_0_[10] ),
        .R(SS));
  FDRE \pState_reg[1] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(pStateNxt),
        .D(\pState[1]_i_1__1_n_0 ),
        .Q(\pState_reg_n_0_[1] ),
        .R(SS));
  FDRE \pState_reg[2] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(pStateNxt),
        .D(\pState[2]_i_1__1_n_0 ),
        .Q(\pState_reg_n_0_[2] ),
        .R(SS));
  FDRE \pState_reg[3] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(pStateNxt),
        .D(\pState[3]_i_1__1_n_0 ),
        .Q(\pState_reg_n_0_[3] ),
        .R(SS));
  FDRE \pState_reg[4] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(pStateNxt),
        .D(\pState[4]_i_1__1_n_0 ),
        .Q(\pState_reg_n_0_[4] ),
        .R(SS));
  FDRE \pState_reg[5] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(pStateNxt),
        .D(\pState[5]_i_1__1_n_0 ),
        .Q(\pState_reg_n_0_[5] ),
        .R(SS));
  FDRE \pState_reg[6] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(pStateNxt),
        .D(\pState[6]_i_1__1_n_0 ),
        .Q(\pState_reg_n_0_[6] ),
        .R(SS));
  FDRE \pState_reg[7] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(pStateNxt),
        .D(\pState[7]_i_1__1_n_0 ),
        .Q(\pState_reg_n_0_[7] ),
        .R(SS));
  FDRE \pState_reg[8] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(pStateNxt),
        .D(\pState[8]_i_1__1_n_0 ),
        .Q(\pState_reg_n_0_[8] ),
        .R(SS));
  FDRE \pState_reg[9] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(pStateNxt),
        .D(\pState[9]_i_1__1_n_0 ),
        .Q(\pState_reg_n_0_[9] ),
        .R(SS));
  FDRE pTknFlagQ_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pTknFlag),
        .Q(pTknFlagQ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h80800300)) 
    pTknFlag_i_1__1
       (.I0(pTknFlag_i_2__1_n_0),
        .I1(\pDataQ_reg_n_0_[8] ),
        .I2(\pDataQ_reg_n_0_[2] ),
        .I3(pTknFlag_i_3__1_n_0),
        .I4(\pDataQ_reg_n_0_[6] ),
        .O(pTknFlag0));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    pTknFlag_i_2__1
       (.I0(\pDataQ_reg_n_0_[3] ),
        .I1(\pDataQ_reg_n_0_[5] ),
        .I2(\pDataQ_reg_n_0_[7] ),
        .I3(\pDataQ_reg_n_0_[0] ),
        .I4(\pDataQ_reg_n_0_[1] ),
        .I5(\pDataQ_reg_n_0_[4] ),
        .O(pTknFlag_i_2__1_n_0));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    pTknFlag_i_3__1
       (.I0(\pDataQ_reg_n_0_[3] ),
        .I1(\pDataQ_reg_n_0_[5] ),
        .I2(\pDataQ_reg_n_0_[7] ),
        .I3(\pDataQ_reg_n_0_[0] ),
        .I4(\pDataQ_reg_n_0_[1] ),
        .I5(\pDataQ_reg_n_0_[4] ),
        .O(pTknFlag_i_3__1_n_0));
  FDRE pTknFlag_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pTknFlag0),
        .Q(pTknFlag),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "ResetBridge" *) 
module dvi2rgb_ip_ResetBridge
   (out,
    aLocked_reg,
    rMMCM_LckdRisingFlag_reg);
  output [0:0]out;
  input aLocked_reg;
  input rMMCM_LckdRisingFlag_reg;

  (* RTL_KEEP = "true" *) wire aRst_int;
  wire [0:0]out;
  wire rMMCM_LckdRisingFlag_reg;

  assign aRst_int = aLocked_reg;
  dvi2rgb_ip_SyncAsync_5 SyncAsyncx
       (.AS(aRst_int),
        .out(out),
        .rMMCM_LckdRisingFlag_reg(rMMCM_LckdRisingFlag_reg));
endmodule

(* ORIG_REF_NAME = "ResetBridge" *) 
module dvi2rgb_ip_ResetBridge_2
   (SS,
    aRst_n,
    RefClk);
  output [0:0]SS;
  input aRst_n;
  input RefClk;

  wire RefClk;
  wire [0:0]SS;
  (* RTL_KEEP = "true" *) wire aRst_int_0;
  wire aRst_n;

  dvi2rgb_ip_SyncAsync_4 SyncAsyncx
       (.AS(aRst_int_0),
        .RefClk(RefClk),
        .SS(SS));
  LUT1 #(
    .INIT(2'h1)) 
    aRst_int_inferred_i_1__0
       (.I0(aRst_n),
        .O(aRst_int_0));
endmodule

(* ORIG_REF_NAME = "ResetBridge" *) 
module dvi2rgb_ip_ResetBridge_3
   (out,
    aDlyLckd,
    RefClk);
  output [0:0]out;
  input aDlyLckd;
  input RefClk;

  wire RefClk;
  wire aDlyLckd;
  (* RTL_KEEP = "true" *) wire aRst_int;
  wire [0:0]out;

  dvi2rgb_ip_SyncAsync SyncAsyncx
       (.AS(aRst_int),
        .RefClk(RefClk),
        .out(out));
  LUT1 #(
    .INIT(2'h1)) 
    aRst_int_inferred_i_1
       (.I0(aDlyLckd),
        .O(aRst_int));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module dvi2rgb_ip_SyncAsync
   (out,
    RefClk,
    AS);
  output [0:0]out;
  input RefClk;
  input [0:0]AS;

  wire [0:0]AS;
  wire RefClk;
  (* async_reg = "true" *) wire [1:0]oSyncStages;

  assign out[0] = oSyncStages[1];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \oSyncStages_reg[0] 
       (.C(RefClk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(AS),
        .Q(oSyncStages[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \oSyncStages_reg[1] 
       (.C(RefClk),
        .CE(1'b1),
        .D(oSyncStages[0]),
        .PRE(AS),
        .Q(oSyncStages[1]));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module dvi2rgb_ip_SyncAsync_15
   (out,
    RefClk,
    AS,
    D);
  output [0:0]out;
  input RefClk;
  input [0:0]AS;
  input [0:0]D;

  wire [0:0]AS;
  wire [0:0]D;
  wire RefClk;
  (* async_reg = "true" *) wire [1:0]oSyncStages;

  assign out[0] = oSyncStages[1];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \oSyncStages_reg[0] 
       (.C(RefClk),
        .CE(1'b1),
        .D(D),
        .PRE(AS),
        .Q(oSyncStages[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \oSyncStages_reg[1] 
       (.C(RefClk),
        .CE(1'b1),
        .D(oSyncStages[0]),
        .PRE(AS),
        .Q(oSyncStages[1]));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module dvi2rgb_ip_SyncAsync_22
   (out,
    RefClk,
    AS,
    D);
  output [0:0]out;
  input RefClk;
  input [0:0]AS;
  input [0:0]D;

  wire [0:0]AS;
  wire [0:0]D;
  wire RefClk;
  (* async_reg = "true" *) wire [1:0]oSyncStages;

  assign out[0] = oSyncStages[1];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \oSyncStages_reg[0] 
       (.C(RefClk),
        .CE(1'b1),
        .D(D),
        .PRE(AS),
        .Q(oSyncStages[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \oSyncStages_reg[1] 
       (.C(RefClk),
        .CE(1'b1),
        .D(oSyncStages[0]),
        .PRE(AS),
        .Q(oSyncStages[1]));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module dvi2rgb_ip_SyncAsync_4
   (SS,
    RefClk,
    AS);
  output [0:0]SS;
  input RefClk;
  input [0:0]AS;

  wire [0:0]AS;
  wire RefClk;
  (* async_reg = "true" *) wire [1:0]oSyncStages;

  assign SS[0] = oSyncStages[1];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \oSyncStages_reg[0] 
       (.C(RefClk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(AS),
        .Q(oSyncStages[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \oSyncStages_reg[1] 
       (.C(RefClk),
        .CE(1'b1),
        .D(oSyncStages[0]),
        .PRE(AS),
        .Q(oSyncStages[1]));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module dvi2rgb_ip_SyncAsync_5
   (out,
    rMMCM_LckdRisingFlag_reg,
    AS);
  output [0:0]out;
  input rMMCM_LckdRisingFlag_reg;
  input [0:0]AS;

  wire [0:0]AS;
  (* async_reg = "true" *) wire [1:0]oSyncStages;
  wire rMMCM_LckdRisingFlag_reg;

  assign out[0] = oSyncStages[1];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \oSyncStages_reg[0] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(1'b0),
        .PRE(AS),
        .Q(oSyncStages[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \oSyncStages_reg[1] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(oSyncStages[0]),
        .PRE(AS),
        .Q(oSyncStages[1]));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module dvi2rgb_ip_SyncAsync_7
   (out,
    SR,
    \Filter.sIn_q_reg ,
    RefClk,
    DDC_SCL_I);
  output [0:0]out;
  output [0:0]SR;
  input \Filter.sIn_q_reg ;
  input RefClk;
  input DDC_SCL_I;

  wire DDC_SCL_I;
  wire \Filter.sIn_q_reg ;
  wire RefClk;
  wire [0:0]SR;
  (* async_reg = "true" *) wire [1:0]oSyncStages;

  assign out[0] = oSyncStages[1];
  LUT2 #(
    .INIT(4'h6)) 
    \Filter.cntPeriods[3]_i_1__0 
       (.I0(oSyncStages[1]),
        .I1(\Filter.sIn_q_reg ),
        .O(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \oSyncStages_reg[0] 
       (.C(RefClk),
        .CE(1'b1),
        .D(DDC_SCL_I),
        .Q(oSyncStages[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \oSyncStages_reg[1] 
       (.C(RefClk),
        .CE(1'b1),
        .D(oSyncStages[0]),
        .Q(oSyncStages[1]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module dvi2rgb_ip_SyncAsync_8
   (out,
    SR,
    sIn_q,
    RefClk,
    DDC_SDA_I);
  output [0:0]out;
  output [0:0]SR;
  input sIn_q;
  input RefClk;
  input DDC_SDA_I;

  wire DDC_SDA_I;
  wire RefClk;
  wire [0:0]SR;
  (* async_reg = "true" *) wire [1:0]oSyncStages;
  wire sIn_q;

  assign out[0] = oSyncStages[1];
  LUT2 #(
    .INIT(4'h6)) 
    \Filter.cntPeriods[3]_i_1 
       (.I0(oSyncStages[1]),
        .I1(sIn_q),
        .O(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \oSyncStages_reg[0] 
       (.C(RefClk),
        .CE(1'b1),
        .D(DDC_SDA_I),
        .Q(oSyncStages[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \oSyncStages_reg[1] 
       (.C(RefClk),
        .CE(1'b1),
        .D(oSyncStages[0]),
        .Q(oSyncStages[1]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module dvi2rgb_ip_SyncAsync_9
   (out,
    RefClk,
    \oSyncStages_reg[1]_0 ,
    D);
  output [0:0]out;
  input RefClk;
  input [0:0]\oSyncStages_reg[1]_0 ;
  input [0:0]D;

  wire [0:0]D;
  wire RefClk;
  (* async_reg = "true" *) wire [1:0]oSyncStages;
  wire [0:0]\oSyncStages_reg[1]_0 ;

  assign out[0] = oSyncStages[1];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \oSyncStages_reg[0] 
       (.C(RefClk),
        .CE(1'b1),
        .D(D),
        .PRE(\oSyncStages_reg[1]_0 ),
        .Q(oSyncStages[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \oSyncStages_reg[1] 
       (.C(RefClk),
        .CE(1'b1),
        .D(oSyncStages[0]),
        .PRE(\oSyncStages_reg[1]_0 ),
        .Q(oSyncStages[1]));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module dvi2rgb_ip_SyncAsync__parameterized0
   (D,
    rMMCM_LckdRisingFlag_reg,
    rMMCM_LckdFallingFlag_reg,
    Q,
    RefClk,
    \rMMCM_Reset_q_reg[0] );
  output [0:0]D;
  output rMMCM_LckdRisingFlag_reg;
  output rMMCM_LckdFallingFlag_reg;
  input [0:0]Q;
  input RefClk;
  input [0:0]\rMMCM_Reset_q_reg[0] ;

  wire [0:0]Q;
  wire RefClk;
  (* async_reg = "true" *) wire [1:0]oSyncStages;
  wire rMMCM_LckdFallingFlag_reg;
  wire rMMCM_LckdRisingFlag_reg;
  wire [0:0]\rMMCM_Reset_q_reg[0] ;

  assign D[0] = oSyncStages[1];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[0] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\rMMCM_Reset_q_reg[0] ),
        .Q(oSyncStages[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[1] 
       (.C(RefClk),
        .CE(1'b1),
        .D(oSyncStages[0]),
        .Q(oSyncStages[1]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    rMMCM_LckdFallingFlag_i_1
       (.I0(Q),
        .I1(oSyncStages[1]),
        .O(rMMCM_LckdFallingFlag_reg));
  LUT2 #(
    .INIT(4'h2)) 
    rMMCM_LckdRisingFlag_i_1
       (.I0(oSyncStages[1]),
        .I1(Q),
        .O(rMMCM_LckdRisingFlag_reg));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module dvi2rgb_ip_SyncAsync__parameterized1
   (out,
    rMMCM_LckdRisingFlag_reg,
    \oSyncStages_reg[1]_0 ,
    D);
  output [0:0]out;
  input rMMCM_LckdRisingFlag_reg;
  input [0:0]\oSyncStages_reg[1]_0 ;
  input [0:0]D;

  wire [0:0]D;
  (* async_reg = "true" *) wire [1:0]oSyncStages;
  wire [0:0]\oSyncStages_reg[1]_0 ;
  wire rMMCM_LckdRisingFlag_reg;

  assign out[0] = oSyncStages[1];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[0] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .CLR(\oSyncStages_reg[1]_0 ),
        .D(D),
        .Q(oSyncStages[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[1] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .CLR(\oSyncStages_reg[1]_0 ),
        .D(oSyncStages[0]),
        .Q(oSyncStages[1]));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module dvi2rgb_ip_SyncAsync__parameterized1_16
   (out,
    rMMCM_LckdRisingFlag_reg,
    AS,
    D);
  output [0:0]out;
  input rMMCM_LckdRisingFlag_reg;
  input [0:0]AS;
  input [0:0]D;

  wire [0:0]AS;
  wire [0:0]D;
  (* async_reg = "true" *) wire [1:0]oSyncStages;
  wire rMMCM_LckdRisingFlag_reg;

  assign out[0] = oSyncStages[1];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[0] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .CLR(AS),
        .D(D),
        .Q(oSyncStages[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[1] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .CLR(AS),
        .D(oSyncStages[0]),
        .Q(oSyncStages[1]));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module dvi2rgb_ip_SyncAsync__parameterized1_23
   (out,
    rMMCM_LckdRisingFlag_reg,
    AS,
    D);
  output [0:0]out;
  input rMMCM_LckdRisingFlag_reg;
  input [0:0]AS;
  input [0:0]D;

  wire [0:0]AS;
  wire [0:0]D;
  (* async_reg = "true" *) wire [1:0]oSyncStages;
  wire rMMCM_LckdRisingFlag_reg;

  assign out[0] = oSyncStages[1];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[0] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .CLR(AS),
        .D(D),
        .Q(oSyncStages[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[1] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .CLR(AS),
        .D(oSyncStages[0]),
        .Q(oSyncStages[1]));
endmodule

(* ORIG_REF_NAME = "SyncBase" *) 
module dvi2rgb_ip_SyncBase
   (out,
    iIn_q_reg_0,
    iIn_q_reg_1,
    iIn_q_reg_2,
    iIn_q_reg_3,
    RefClk,
    \oSyncStages_reg[1] ,
    \rTimeoutCnt_reg[23] ,
    rMMCM_LckdRisingFlag_reg);
  output [0:0]out;
  output iIn_q_reg_0;
  output iIn_q_reg_1;
  output iIn_q_reg_2;
  output iIn_q_reg_3;
  input RefClk;
  input [0:0]\oSyncStages_reg[1] ;
  input [23:0]\rTimeoutCnt_reg[23] ;
  input rMMCM_LckdRisingFlag_reg;

  wire RefClk;
  wire iIn_q;
  wire iIn_q_i_1__2_n_0;
  wire iIn_q_reg_0;
  wire iIn_q_reg_1;
  wire iIn_q_reg_2;
  wire iIn_q_reg_3;
  wire [0:0]\oSyncStages_reg[1] ;
  wire [0:0]out;
  wire rMMCM_LckdRisingFlag_reg;
  wire [23:0]\rTimeoutCnt_reg[23] ;

  dvi2rgb_ip_SyncAsync__parameterized1 SyncAsyncx
       (.D(iIn_q),
        .\oSyncStages_reg[1]_0 (\oSyncStages_reg[1] ),
        .out(out),
        .rMMCM_LckdRisingFlag_reg(rMMCM_LckdRisingFlag_reg));
  LUT4 #(
    .INIT(16'h4000)) 
    iIn_q_i_1__2
       (.I0(iIn_q_reg_0),
        .I1(iIn_q_reg_1),
        .I2(iIn_q_reg_2),
        .I3(iIn_q_reg_3),
        .O(iIn_q_i_1__2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFBF)) 
    iIn_q_i_2__2
       (.I0(\rTimeoutCnt_reg[23] [7]),
        .I1(\rTimeoutCnt_reg[23] [20]),
        .I2(\rTimeoutCnt_reg[23] [23]),
        .I3(\rTimeoutCnt_reg[23] [13]),
        .I4(\rTimeoutCnt_reg[23] [8]),
        .I5(\rTimeoutCnt_reg[23] [11]),
        .O(iIn_q_reg_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    iIn_q_i_3__2
       (.I0(\rTimeoutCnt_reg[23] [22]),
        .I1(\rTimeoutCnt_reg[23] [18]),
        .I2(\rTimeoutCnt_reg[23] [21]),
        .I3(\rTimeoutCnt_reg[23] [14]),
        .I4(\rTimeoutCnt_reg[23] [16]),
        .I5(\rTimeoutCnt_reg[23] [17]),
        .O(iIn_q_reg_1));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    iIn_q_i_4__0
       (.I0(\rTimeoutCnt_reg[23] [12]),
        .I1(\rTimeoutCnt_reg[23] [15]),
        .I2(\rTimeoutCnt_reg[23] [19]),
        .I3(\rTimeoutCnt_reg[23] [10]),
        .I4(\rTimeoutCnt_reg[23] [6]),
        .I5(\rTimeoutCnt_reg[23] [9]),
        .O(iIn_q_reg_2));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    iIn_q_i_5
       (.I0(\rTimeoutCnt_reg[23] [3]),
        .I1(\rTimeoutCnt_reg[23] [4]),
        .I2(\rTimeoutCnt_reg[23] [5]),
        .I3(\rTimeoutCnt_reg[23] [2]),
        .I4(\rTimeoutCnt_reg[23] [0]),
        .I5(\rTimeoutCnt_reg[23] [1]),
        .O(iIn_q_reg_3));
  FDCE iIn_q_reg
       (.C(RefClk),
        .CE(1'b1),
        .CLR(\oSyncStages_reg[1] ),
        .D(iIn_q_i_1__2_n_0),
        .Q(iIn_q));
endmodule

(* ORIG_REF_NAME = "SyncBase" *) 
module dvi2rgb_ip_SyncBase_13
   (out,
    iIn_q_reg_0,
    iIn_q_reg_1,
    iIn_q_reg_2,
    iIn_q_reg_3,
    RefClk,
    AS,
    \rTimeoutCnt_reg[23] ,
    rMMCM_LckdRisingFlag_reg);
  output [0:0]out;
  output iIn_q_reg_0;
  output iIn_q_reg_1;
  output iIn_q_reg_2;
  output iIn_q_reg_3;
  input RefClk;
  input [0:0]AS;
  input [23:0]\rTimeoutCnt_reg[23] ;
  input rMMCM_LckdRisingFlag_reg;

  wire [0:0]AS;
  wire RefClk;
  wire iIn_q_i_1__3_n_0;
  wire iIn_q_reg_0;
  wire iIn_q_reg_1;
  wire iIn_q_reg_2;
  wire iIn_q_reg_3;
  wire iIn_q_reg_n_0;
  wire [0:0]out;
  wire rMMCM_LckdRisingFlag_reg;
  wire [23:0]\rTimeoutCnt_reg[23] ;

  dvi2rgb_ip_SyncAsync__parameterized1_16 SyncAsyncx
       (.AS(AS),
        .D(iIn_q_reg_n_0),
        .out(out),
        .rMMCM_LckdRisingFlag_reg(rMMCM_LckdRisingFlag_reg));
  LUT4 #(
    .INIT(16'h4000)) 
    iIn_q_i_1__3
       (.I0(iIn_q_reg_0),
        .I1(iIn_q_reg_1),
        .I2(iIn_q_reg_2),
        .I3(iIn_q_reg_3),
        .O(iIn_q_i_1__3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFBF)) 
    iIn_q_i_2__3
       (.I0(\rTimeoutCnt_reg[23] [7]),
        .I1(\rTimeoutCnt_reg[23] [20]),
        .I2(\rTimeoutCnt_reg[23] [23]),
        .I3(\rTimeoutCnt_reg[23] [13]),
        .I4(\rTimeoutCnt_reg[23] [8]),
        .I5(\rTimeoutCnt_reg[23] [11]),
        .O(iIn_q_reg_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    iIn_q_i_3__3
       (.I0(\rTimeoutCnt_reg[23] [22]),
        .I1(\rTimeoutCnt_reg[23] [18]),
        .I2(\rTimeoutCnt_reg[23] [21]),
        .I3(\rTimeoutCnt_reg[23] [14]),
        .I4(\rTimeoutCnt_reg[23] [16]),
        .I5(\rTimeoutCnt_reg[23] [17]),
        .O(iIn_q_reg_1));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    iIn_q_i_4__1
       (.I0(\rTimeoutCnt_reg[23] [12]),
        .I1(\rTimeoutCnt_reg[23] [15]),
        .I2(\rTimeoutCnt_reg[23] [19]),
        .I3(\rTimeoutCnt_reg[23] [10]),
        .I4(\rTimeoutCnt_reg[23] [6]),
        .I5(\rTimeoutCnt_reg[23] [9]),
        .O(iIn_q_reg_2));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    iIn_q_i_5__0
       (.I0(\rTimeoutCnt_reg[23] [3]),
        .I1(\rTimeoutCnt_reg[23] [4]),
        .I2(\rTimeoutCnt_reg[23] [5]),
        .I3(\rTimeoutCnt_reg[23] [2]),
        .I4(\rTimeoutCnt_reg[23] [0]),
        .I5(\rTimeoutCnt_reg[23] [1]),
        .O(iIn_q_reg_3));
  FDCE iIn_q_reg
       (.C(RefClk),
        .CE(1'b1),
        .CLR(AS),
        .D(iIn_q_i_1__3_n_0),
        .Q(iIn_q_reg_n_0));
endmodule

(* ORIG_REF_NAME = "SyncBase" *) 
module dvi2rgb_ip_SyncBase_20
   (out,
    iIn_q_reg_0,
    iIn_q_reg_1,
    iIn_q_reg_2,
    iIn_q_reg_3,
    RefClk,
    AS,
    \rTimeoutCnt_reg[23] ,
    rMMCM_LckdRisingFlag_reg);
  output [0:0]out;
  output iIn_q_reg_0;
  output iIn_q_reg_1;
  output iIn_q_reg_2;
  output iIn_q_reg_3;
  input RefClk;
  input [0:0]AS;
  input [23:0]\rTimeoutCnt_reg[23] ;
  input rMMCM_LckdRisingFlag_reg;

  wire [0:0]AS;
  wire RefClk;
  wire iIn_q_i_1__4_n_0;
  wire iIn_q_reg_0;
  wire iIn_q_reg_1;
  wire iIn_q_reg_2;
  wire iIn_q_reg_3;
  wire iIn_q_reg_n_0;
  wire [0:0]out;
  wire rMMCM_LckdRisingFlag_reg;
  wire [23:0]\rTimeoutCnt_reg[23] ;

  dvi2rgb_ip_SyncAsync__parameterized1_23 SyncAsyncx
       (.AS(AS),
        .D(iIn_q_reg_n_0),
        .out(out),
        .rMMCM_LckdRisingFlag_reg(rMMCM_LckdRisingFlag_reg));
  LUT4 #(
    .INIT(16'h4000)) 
    iIn_q_i_1__4
       (.I0(iIn_q_reg_0),
        .I1(iIn_q_reg_1),
        .I2(iIn_q_reg_2),
        .I3(iIn_q_reg_3),
        .O(iIn_q_i_1__4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFBF)) 
    iIn_q_i_2__4
       (.I0(\rTimeoutCnt_reg[23] [7]),
        .I1(\rTimeoutCnt_reg[23] [20]),
        .I2(\rTimeoutCnt_reg[23] [23]),
        .I3(\rTimeoutCnt_reg[23] [13]),
        .I4(\rTimeoutCnt_reg[23] [8]),
        .I5(\rTimeoutCnt_reg[23] [11]),
        .O(iIn_q_reg_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    iIn_q_i_3__4
       (.I0(\rTimeoutCnt_reg[23] [22]),
        .I1(\rTimeoutCnt_reg[23] [18]),
        .I2(\rTimeoutCnt_reg[23] [21]),
        .I3(\rTimeoutCnt_reg[23] [14]),
        .I4(\rTimeoutCnt_reg[23] [16]),
        .I5(\rTimeoutCnt_reg[23] [17]),
        .O(iIn_q_reg_1));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    iIn_q_i_4__2
       (.I0(\rTimeoutCnt_reg[23] [12]),
        .I1(\rTimeoutCnt_reg[23] [15]),
        .I2(\rTimeoutCnt_reg[23] [19]),
        .I3(\rTimeoutCnt_reg[23] [10]),
        .I4(\rTimeoutCnt_reg[23] [6]),
        .I5(\rTimeoutCnt_reg[23] [9]),
        .O(iIn_q_reg_2));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    iIn_q_i_5__1
       (.I0(\rTimeoutCnt_reg[23] [3]),
        .I1(\rTimeoutCnt_reg[23] [4]),
        .I2(\rTimeoutCnt_reg[23] [5]),
        .I3(\rTimeoutCnt_reg[23] [2]),
        .I4(\rTimeoutCnt_reg[23] [0]),
        .I5(\rTimeoutCnt_reg[23] [1]),
        .O(iIn_q_reg_3));
  FDCE iIn_q_reg
       (.C(RefClk),
        .CE(1'b1),
        .CLR(AS),
        .D(iIn_q_i_1__4_n_0),
        .Q(iIn_q_reg_n_0));
endmodule

(* ORIG_REF_NAME = "SyncBase" *) 
module dvi2rgb_ip_SyncBase__parameterized0
   (out,
    \pState_reg[2] ,
    rMMCM_LckdRisingFlag_reg,
    \oSyncStages_reg[1] ,
    RefClk);
  output [0:0]out;
  input \pState_reg[2] ;
  input rMMCM_LckdRisingFlag_reg;
  input [0:0]\oSyncStages_reg[1] ;
  input RefClk;

  wire RefClk;
  wire iIn_q_reg_n_0;
  wire [0:0]\oSyncStages_reg[1] ;
  wire [0:0]out;
  wire \pState_reg[2] ;
  wire rMMCM_LckdRisingFlag_reg;

  dvi2rgb_ip_SyncAsync_9 SyncAsyncx
       (.D(iIn_q_reg_n_0),
        .RefClk(RefClk),
        .\oSyncStages_reg[1]_0 (\oSyncStages_reg[1] ),
        .out(out));
  FDPE iIn_q_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(\pState_reg[2] ),
        .PRE(\oSyncStages_reg[1] ),
        .Q(iIn_q_reg_n_0));
endmodule

(* ORIG_REF_NAME = "SyncBase" *) 
module dvi2rgb_ip_SyncBase__parameterized0_14
   (out,
    \pState_reg[2] ,
    rMMCM_LckdRisingFlag_reg,
    AS,
    RefClk);
  output [0:0]out;
  input \pState_reg[2] ;
  input rMMCM_LckdRisingFlag_reg;
  input [0:0]AS;
  input RefClk;

  wire [0:0]AS;
  wire RefClk;
  wire iIn_q_reg_n_0;
  wire [0:0]out;
  wire \pState_reg[2] ;
  wire rMMCM_LckdRisingFlag_reg;

  dvi2rgb_ip_SyncAsync_15 SyncAsyncx
       (.AS(AS),
        .D(iIn_q_reg_n_0),
        .RefClk(RefClk),
        .out(out));
  FDPE iIn_q_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(\pState_reg[2] ),
        .PRE(AS),
        .Q(iIn_q_reg_n_0));
endmodule

(* ORIG_REF_NAME = "SyncBase" *) 
module dvi2rgb_ip_SyncBase__parameterized0_21
   (out,
    \pState_reg[2] ,
    rMMCM_LckdRisingFlag_reg,
    AS,
    RefClk);
  output [0:0]out;
  input \pState_reg[2] ;
  input rMMCM_LckdRisingFlag_reg;
  input [0:0]AS;
  input RefClk;

  wire [0:0]AS;
  wire RefClk;
  wire iIn_q_reg_n_0;
  wire [0:0]out;
  wire \pState_reg[2] ;
  wire rMMCM_LckdRisingFlag_reg;

  dvi2rgb_ip_SyncAsync_22 SyncAsyncx
       (.AS(AS),
        .D(iIn_q_reg_n_0),
        .RefClk(RefClk),
        .out(out));
  FDPE iIn_q_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(\pState_reg[2] ),
        .PRE(AS),
        .Q(iIn_q_reg_n_0));
endmodule

(* ORIG_REF_NAME = "TMDS_Clocking" *) 
module dvi2rgb_ip_TMDS_Clocking
   (\pDataQ_reg[8] ,
    PixelClk,
    aPixelClkLckd,
    \oSyncStages_reg[0] ,
    RefClk,
    TMDS_Clk_p,
    TMDS_Clk_n,
    aRst_n);
  output \pDataQ_reg[8] ;
  output PixelClk;
  output aPixelClkLckd;
  output \oSyncStages_reg[0] ;
  input RefClk;
  input TMDS_Clk_p;
  input TMDS_Clk_n;
  input aRst_n;

  wire CLKFBIN;
  wire CLKIN1;
  wire CLR;
  wire DVI_ClkGenerator_n_4;
  wire MMCM_LockSync_n_1;
  wire MMCM_LockSync_n_2;
  wire PixelClk;
  wire RST;
  wire RefClk;
  wire TMDS_Clk_n;
  wire TMDS_Clk_p;
  wire aDlyLckd;
  wire aMMCM_Locked;
  wire aPixelClkLckd;
  wire aRst_n;
  wire \oSyncStages_reg[0] ;
  wire \pDataQ_reg[8] ;
  wire p_0_in;
  wire [0:0]rDlyRstCnt0;
  wire \rDlyRstCnt[1]_i_1_n_0 ;
  wire \rDlyRstCnt[2]_i_1_n_0 ;
  wire \rDlyRstCnt[3]_i_1_n_0 ;
  wire \rDlyRstCnt[4]_i_1_n_0 ;
  wire \rDlyRstCnt[4]_i_2_n_0 ;
  wire [4:0]rDlyRstCnt_reg__0;
  wire rDlyRst_i_1_n_0;
  wire rLockLostRst;
  wire rMMCM_LckdFallingFlag;
  wire rMMCM_Locked;
  wire \rMMCM_Locked_q_reg_n_0_[0] ;
  wire [1:0]rMMCM_Reset_q;
  wire \rMMCM_Reset_q[0]_i_1_n_0 ;
  wire rRdyRst;
  wire NLW_DVI_ClkGenerator_CLKFBOUTB_UNCONNECTED;
  wire NLW_DVI_ClkGenerator_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_DVI_ClkGenerator_CLKINSTOPPED_UNCONNECTED;
  wire NLW_DVI_ClkGenerator_CLKOUT0B_UNCONNECTED;
  wire NLW_DVI_ClkGenerator_CLKOUT1_UNCONNECTED;
  wire NLW_DVI_ClkGenerator_CLKOUT1B_UNCONNECTED;
  wire NLW_DVI_ClkGenerator_CLKOUT2_UNCONNECTED;
  wire NLW_DVI_ClkGenerator_CLKOUT2B_UNCONNECTED;
  wire NLW_DVI_ClkGenerator_CLKOUT3_UNCONNECTED;
  wire NLW_DVI_ClkGenerator_CLKOUT3B_UNCONNECTED;
  wire NLW_DVI_ClkGenerator_CLKOUT4_UNCONNECTED;
  wire NLW_DVI_ClkGenerator_CLKOUT5_UNCONNECTED;
  wire NLW_DVI_ClkGenerator_CLKOUT6_UNCONNECTED;
  wire NLW_DVI_ClkGenerator_DRDY_UNCONNECTED;
  wire NLW_DVI_ClkGenerator_PSDONE_UNCONNECTED;
  wire [15:0]NLW_DVI_ClkGenerator_DO_UNCONNECTED;

  (* box_type = "PRIMITIVE" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(10.000000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(12.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(2.000000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(1),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("INTERNAL"),
    .DIVCLK_DIVIDE(1),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.000000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    DVI_ClkGenerator
       (.CLKFBIN(CLKFBIN),
        .CLKFBOUT(CLKFBIN),
        .CLKFBOUTB(NLW_DVI_ClkGenerator_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_DVI_ClkGenerator_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(CLKIN1),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_DVI_ClkGenerator_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(DVI_ClkGenerator_n_4),
        .CLKOUT0B(NLW_DVI_ClkGenerator_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(NLW_DVI_ClkGenerator_CLKOUT1_UNCONNECTED),
        .CLKOUT1B(NLW_DVI_ClkGenerator_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_DVI_ClkGenerator_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_DVI_ClkGenerator_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_DVI_ClkGenerator_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_DVI_ClkGenerator_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_DVI_ClkGenerator_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_DVI_ClkGenerator_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_DVI_ClkGenerator_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_DVI_ClkGenerator_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_DVI_ClkGenerator_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(aMMCM_Locked),
        .PSCLK(1'b0),
        .PSDONE(NLW_DVI_ClkGenerator_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(rMMCM_Reset_q[0]));
  (* box_type = "PRIMITIVE" *) 
  IDELAYCTRL #(
    .SIM_DEVICE("7SERIES")) 
    IDelayCtrlX
       (.RDY(aDlyLckd),
        .REFCLK(RefClk),
        .RST(RST));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  (* box_type = "PRIMITIVE" *) 
  IBUFDS #(
    .DQS_BIAS("FALSE")) 
    InputBuffer
       (.I(TMDS_Clk_p),
        .IB(TMDS_Clk_n),
        .O(CLKIN1));
  dvi2rgb_ip_ResetBridge_2 LockLostReset
       (.RefClk(RefClk),
        .SS(rLockLostRst),
        .aRst_n(aRst_n));
  dvi2rgb_ip_SyncAsync__parameterized0 MMCM_LockSync
       (.D(rMMCM_Locked),
        .Q(p_0_in),
        .RefClk(RefClk),
        .rMMCM_LckdFallingFlag_reg(MMCM_LockSync_n_2),
        .rMMCM_LckdRisingFlag_reg(MMCM_LockSync_n_1),
        .\rMMCM_Reset_q_reg[0] (aMMCM_Locked));
  (* box_type = "PRIMITIVE" *) 
  BUFR #(
    .BUFR_DIVIDE("5"),
    .SIM_DEVICE("7SERIES")) 
    PixelClkBuffer
       (.CE(1'b1),
        .CLR(CLR),
        .I(DVI_ClkGenerator_n_4),
        .O(PixelClk));
  dvi2rgb_ip_ResetBridge_3 RdyLostReset
       (.RefClk(RefClk),
        .aDlyLckd(aDlyLckd),
        .out(rRdyRst));
  (* box_type = "PRIMITIVE" *) 
  BUFIO SerialClkBuffer
       (.I(DVI_ClkGenerator_n_4),
        .O(\pDataQ_reg[8] ));
  FDCE aLocked_reg
       (.C(RefClk),
        .CE(1'b1),
        .CLR(rRdyRst),
        .D(\rMMCM_Locked_q_reg_n_0_[0] ),
        .Q(aPixelClkLckd));
  LUT1 #(
    .INIT(2'h1)) 
    aRst_int_inferred_i_1__1
       (.I0(aPixelClkLckd),
        .O(\oSyncStages_reg[0] ));
  LUT1 #(
    .INIT(2'h1)) 
    \rDlyRstCnt[0]_i_1 
       (.I0(rDlyRstCnt_reg__0[0]),
        .O(rDlyRstCnt0));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \rDlyRstCnt[1]_i_1 
       (.I0(rDlyRstCnt_reg__0[0]),
        .I1(rDlyRstCnt_reg__0[1]),
        .O(\rDlyRstCnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \rDlyRstCnt[2]_i_1 
       (.I0(rDlyRstCnt_reg__0[1]),
        .I1(rDlyRstCnt_reg__0[0]),
        .I2(rDlyRstCnt_reg__0[2]),
        .O(\rDlyRstCnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \rDlyRstCnt[3]_i_1 
       (.I0(rDlyRstCnt_reg__0[2]),
        .I1(rDlyRstCnt_reg__0[0]),
        .I2(rDlyRstCnt_reg__0[1]),
        .I3(rDlyRstCnt_reg__0[3]),
        .O(\rDlyRstCnt[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \rDlyRstCnt[4]_i_1 
       (.I0(rDlyRstCnt_reg__0[2]),
        .I1(rDlyRstCnt_reg__0[0]),
        .I2(rDlyRstCnt_reg__0[1]),
        .I3(rDlyRstCnt_reg__0[3]),
        .I4(rDlyRstCnt_reg__0[4]),
        .O(\rDlyRstCnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \rDlyRstCnt[4]_i_2 
       (.I0(rDlyRstCnt_reg__0[3]),
        .I1(rDlyRstCnt_reg__0[1]),
        .I2(rDlyRstCnt_reg__0[0]),
        .I3(rDlyRstCnt_reg__0[2]),
        .I4(rDlyRstCnt_reg__0[4]),
        .O(\rDlyRstCnt[4]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rDlyRstCnt_reg[0] 
       (.C(RefClk),
        .CE(\rDlyRstCnt[4]_i_1_n_0 ),
        .D(rDlyRstCnt0),
        .Q(rDlyRstCnt_reg__0[0]),
        .S(rLockLostRst));
  FDSE #(
    .INIT(1'b1)) 
    \rDlyRstCnt_reg[1] 
       (.C(RefClk),
        .CE(\rDlyRstCnt[4]_i_1_n_0 ),
        .D(\rDlyRstCnt[1]_i_1_n_0 ),
        .Q(rDlyRstCnt_reg__0[1]),
        .S(rLockLostRst));
  FDSE #(
    .INIT(1'b1)) 
    \rDlyRstCnt_reg[2] 
       (.C(RefClk),
        .CE(\rDlyRstCnt[4]_i_1_n_0 ),
        .D(\rDlyRstCnt[2]_i_1_n_0 ),
        .Q(rDlyRstCnt_reg__0[2]),
        .S(rLockLostRst));
  FDSE #(
    .INIT(1'b1)) 
    \rDlyRstCnt_reg[3] 
       (.C(RefClk),
        .CE(\rDlyRstCnt[4]_i_1_n_0 ),
        .D(\rDlyRstCnt[3]_i_1_n_0 ),
        .Q(rDlyRstCnt_reg__0[3]),
        .S(rLockLostRst));
  FDSE #(
    .INIT(1'b1)) 
    \rDlyRstCnt_reg[4] 
       (.C(RefClk),
        .CE(\rDlyRstCnt[4]_i_1_n_0 ),
        .D(\rDlyRstCnt[4]_i_2_n_0 ),
        .Q(rDlyRstCnt_reg__0[4]),
        .S(rLockLostRst));
  LUT3 #(
    .INIT(8'hF8)) 
    rDlyRst_i_1
       (.I0(\rDlyRstCnt[4]_i_1_n_0 ),
        .I1(RST),
        .I2(rLockLostRst),
        .O(rDlyRst_i_1_n_0));
  FDRE rDlyRst_reg
       (.C(RefClk),
        .CE(1'b1),
        .D(rDlyRst_i_1_n_0),
        .Q(RST),
        .R(1'b0));
  FDRE rMMCM_LckdFallingFlag_reg
       (.C(RefClk),
        .CE(1'b1),
        .D(MMCM_LockSync_n_2),
        .Q(rMMCM_LckdFallingFlag),
        .R(1'b0));
  FDRE rMMCM_LckdRisingFlag_reg
       (.C(RefClk),
        .CE(1'b1),
        .D(MMCM_LockSync_n_1),
        .Q(CLR),
        .R(1'b0));
  FDRE \rMMCM_Locked_q_reg[0] 
       (.C(RefClk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(\rMMCM_Locked_q_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \rMMCM_Locked_q_reg[1] 
       (.C(RefClk),
        .CE(1'b1),
        .D(rMMCM_Locked),
        .Q(p_0_in),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    \rMMCM_Reset_q[0]_i_1 
       (.I0(rMMCM_LckdFallingFlag),
        .I1(rMMCM_Reset_q[1]),
        .O(\rMMCM_Reset_q[0]_i_1_n_0 ));
  FDPE \rMMCM_Reset_q_reg[0] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\rMMCM_Reset_q[0]_i_1_n_0 ),
        .PRE(rLockLostRst),
        .Q(rMMCM_Reset_q[0]));
  FDPE \rMMCM_Reset_q_reg[1] 
       (.C(RefClk),
        .CE(1'b1),
        .D(rMMCM_LckdFallingFlag),
        .PRE(rLockLostRst),
        .Q(rMMCM_Reset_q[1]));
endmodule

(* ORIG_REF_NAME = "TMDS_Decoder" *) 
module dvi2rgb_ip_TMDS_Decoder
   (pAllVld,
    vid_pVDE,
    pVld_0,
    vid_pHSync,
    vid_pVSync,
    \pDataIn_reg[7]_0 ,
    pRdy_0,
    vid_pData,
    TMDS_Data_p,
    TMDS_Data_n,
    rMMCM_LckdRisingFlag_reg,
    \rMMCM_Reset_q_reg[0] ,
    CLKB,
    AS,
    RefClk,
    SR,
    pAligned_reg,
    pVld_2,
    pVld_1,
    pRdy_1,
    pRdy_2,
    pRst_n);
  output pAllVld;
  output vid_pVDE;
  output pVld_0;
  output vid_pHSync;
  output vid_pVSync;
  output [0:0]\pDataIn_reg[7]_0 ;
  output pRdy_0;
  output [7:0]vid_pData;
  input [0:0]TMDS_Data_p;
  input [0:0]TMDS_Data_n;
  input rMMCM_LckdRisingFlag_reg;
  input \rMMCM_Reset_q_reg[0] ;
  input CLKB;
  input [0:0]AS;
  input RefClk;
  input [0:0]SR;
  input [0:0]pAligned_reg;
  input pVld_2;
  input pVld_1;
  input pRdy_1;
  input pRdy_2;
  input pRst_n;

  wire [0:0]AS;
  wire CLKB;
  wire ChannelBondX_n_12;
  wire ChannelBondX_n_13;
  wire PhaseAlignX_n_3;
  wire PhaseAlignX_n_4;
  wire PhaseAlignX_n_7;
  wire RefClk;
  wire [0:0]SR;
  wire SyncBaseOvf_n_1;
  wire SyncBaseOvf_n_2;
  wire SyncBaseOvf_n_3;
  wire SyncBaseOvf_n_4;
  wire [0:0]TMDS_Data_n;
  wire [0:0]TMDS_Data_p;
  wire pAlignErr_q;
  wire pAlignRst_i_1__1_n_0;
  wire pAlignRst_reg_n_0;
  wire [0:0]pAligned_reg;
  wire pAllVld;
  wire pAllVldBgnFlag0;
  wire pAllVld_q;
  wire pBitslip;
  wire [1:0]pBitslipCnt;
  wire \pBitslipCnt[0]_i_1_n_0 ;
  wire \pBitslipCnt[1]_i_1_n_0 ;
  wire [7:0]pDataIn;
  wire [9:0]pDataInRaw;
  wire [0:0]\pDataIn_reg[7]_0 ;
  wire pIDLY_CE;
  wire [4:0]pIDLY_CNT;
  wire pIDLY_INC;
  wire pIDLY_LD;
  wire pRdy_0;
  wire pRdy_1;
  wire pRdy_2;
  wire pRst_n;
  wire pTimeoutOvf;
  wire pVde;
  wire pVld_0;
  wire pVld_1;
  wire pVld_2;
  wire rMMCM_LckdRisingFlag_reg;
  wire \rMMCM_Reset_q_reg[0] ;
  wire \rTimeoutCnt[0]_i_1__1_n_0 ;
  wire \rTimeoutCnt[0]_i_3__1_n_0 ;
  wire \rTimeoutCnt[0]_i_4__1_n_0 ;
  wire \rTimeoutCnt[0]_i_5__1_n_0 ;
  wire \rTimeoutCnt[0]_i_6__1_n_0 ;
  wire \rTimeoutCnt[12]_i_2__1_n_0 ;
  wire \rTimeoutCnt[12]_i_3__1_n_0 ;
  wire \rTimeoutCnt[12]_i_4__1_n_0 ;
  wire \rTimeoutCnt[12]_i_5__1_n_0 ;
  wire \rTimeoutCnt[16]_i_2__1_n_0 ;
  wire \rTimeoutCnt[16]_i_3__1_n_0 ;
  wire \rTimeoutCnt[16]_i_4__1_n_0 ;
  wire \rTimeoutCnt[16]_i_5__1_n_0 ;
  wire \rTimeoutCnt[20]_i_2__1_n_0 ;
  wire \rTimeoutCnt[20]_i_3__1_n_0 ;
  wire \rTimeoutCnt[20]_i_4__1_n_0 ;
  wire \rTimeoutCnt[20]_i_5__1_n_0 ;
  wire \rTimeoutCnt[4]_i_2__1_n_0 ;
  wire \rTimeoutCnt[4]_i_3__1_n_0 ;
  wire \rTimeoutCnt[4]_i_4__1_n_0 ;
  wire \rTimeoutCnt[4]_i_5__1_n_0 ;
  wire \rTimeoutCnt[8]_i_2__1_n_0 ;
  wire \rTimeoutCnt[8]_i_3__1_n_0 ;
  wire \rTimeoutCnt[8]_i_4__1_n_0 ;
  wire \rTimeoutCnt[8]_i_5__1_n_0 ;
  wire [23:0]rTimeoutCnt_reg;
  wire \rTimeoutCnt_reg[0]_i_2__1_n_0 ;
  wire \rTimeoutCnt_reg[0]_i_2__1_n_1 ;
  wire \rTimeoutCnt_reg[0]_i_2__1_n_2 ;
  wire \rTimeoutCnt_reg[0]_i_2__1_n_3 ;
  wire \rTimeoutCnt_reg[0]_i_2__1_n_4 ;
  wire \rTimeoutCnt_reg[0]_i_2__1_n_5 ;
  wire \rTimeoutCnt_reg[0]_i_2__1_n_6 ;
  wire \rTimeoutCnt_reg[0]_i_2__1_n_7 ;
  wire \rTimeoutCnt_reg[12]_i_1__1_n_0 ;
  wire \rTimeoutCnt_reg[12]_i_1__1_n_1 ;
  wire \rTimeoutCnt_reg[12]_i_1__1_n_2 ;
  wire \rTimeoutCnt_reg[12]_i_1__1_n_3 ;
  wire \rTimeoutCnt_reg[12]_i_1__1_n_4 ;
  wire \rTimeoutCnt_reg[12]_i_1__1_n_5 ;
  wire \rTimeoutCnt_reg[12]_i_1__1_n_6 ;
  wire \rTimeoutCnt_reg[12]_i_1__1_n_7 ;
  wire \rTimeoutCnt_reg[16]_i_1__1_n_0 ;
  wire \rTimeoutCnt_reg[16]_i_1__1_n_1 ;
  wire \rTimeoutCnt_reg[16]_i_1__1_n_2 ;
  wire \rTimeoutCnt_reg[16]_i_1__1_n_3 ;
  wire \rTimeoutCnt_reg[16]_i_1__1_n_4 ;
  wire \rTimeoutCnt_reg[16]_i_1__1_n_5 ;
  wire \rTimeoutCnt_reg[16]_i_1__1_n_6 ;
  wire \rTimeoutCnt_reg[16]_i_1__1_n_7 ;
  wire \rTimeoutCnt_reg[20]_i_1__1_n_1 ;
  wire \rTimeoutCnt_reg[20]_i_1__1_n_2 ;
  wire \rTimeoutCnt_reg[20]_i_1__1_n_3 ;
  wire \rTimeoutCnt_reg[20]_i_1__1_n_4 ;
  wire \rTimeoutCnt_reg[20]_i_1__1_n_5 ;
  wire \rTimeoutCnt_reg[20]_i_1__1_n_6 ;
  wire \rTimeoutCnt_reg[20]_i_1__1_n_7 ;
  wire \rTimeoutCnt_reg[4]_i_1__1_n_0 ;
  wire \rTimeoutCnt_reg[4]_i_1__1_n_1 ;
  wire \rTimeoutCnt_reg[4]_i_1__1_n_2 ;
  wire \rTimeoutCnt_reg[4]_i_1__1_n_3 ;
  wire \rTimeoutCnt_reg[4]_i_1__1_n_4 ;
  wire \rTimeoutCnt_reg[4]_i_1__1_n_5 ;
  wire \rTimeoutCnt_reg[4]_i_1__1_n_6 ;
  wire \rTimeoutCnt_reg[4]_i_1__1_n_7 ;
  wire \rTimeoutCnt_reg[8]_i_1__1_n_0 ;
  wire \rTimeoutCnt_reg[8]_i_1__1_n_1 ;
  wire \rTimeoutCnt_reg[8]_i_1__1_n_2 ;
  wire \rTimeoutCnt_reg[8]_i_1__1_n_3 ;
  wire \rTimeoutCnt_reg[8]_i_1__1_n_4 ;
  wire \rTimeoutCnt_reg[8]_i_1__1_n_5 ;
  wire \rTimeoutCnt_reg[8]_i_1__1_n_6 ;
  wire \rTimeoutCnt_reg[8]_i_1__1_n_7 ;
  wire rTimeoutRst;
  wire [7:0]vid_pData;
  wire vid_pHSync;
  wire vid_pVDE;
  wire vid_pVSync;
  wire [3:3]\NLW_rTimeoutCnt_reg[20]_i_1__1_CO_UNCONNECTED ;

  dvi2rgb_ip_ChannelBond_17 ChannelBondX
       (.D(pDataIn),
        .pAligned_reg(pAligned_reg),
        .pAllVld(pAllVld),
        .pAllVldBgnFlag0(pAllVldBgnFlag0),
        .pAllVld_q(pAllVld_q),
        .pC0_reg(ChannelBondX_n_13),
        .pC1_reg(ChannelBondX_n_12),
        .pDataInRaw(pDataInRaw),
        .\pDataIn_reg[7] (\pDataIn_reg[7]_0 ),
        .\pDataIn_reg[7]_0 (pRdy_0),
        .pRdy_1(pRdy_1),
        .pRdy_2(pRdy_2),
        .pVde(pVde),
        .rMMCM_LckdRisingFlag_reg(rMMCM_LckdRisingFlag_reg),
        .vid_pHSync(vid_pHSync),
        .vid_pVSync(vid_pVSync));
  dvi2rgb_ip_InputSERDES_18 InputSERDES_X
       (.AS(AS),
        .CLKB(CLKB),
        .D(pIDLY_CNT),
        .TMDS_Data_n(TMDS_Data_n),
        .TMDS_Data_p(TMDS_Data_p),
        .pBitslip(pBitslip),
        .pDataInRaw(pDataInRaw),
        .pIDLY_CE(pIDLY_CE),
        .pIDLY_INC(pIDLY_INC),
        .pIDLY_LD(pIDLY_LD),
        .rMMCM_LckdRisingFlag_reg(rMMCM_LckdRisingFlag_reg),
        .\rMMCM_Reset_q_reg[0] (\rMMCM_Reset_q_reg[0] ));
  dvi2rgb_ip_PhaseAlign_19 PhaseAlignX
       (.D(pDataInRaw[8:0]),
        .SS(pAlignRst_reg_n_0),
        .iIn_q_reg(PhaseAlignX_n_4),
        .out(pTimeoutOvf),
        .pAlignErr_q(pAlignErr_q),
        .pAlignErr_q_reg(PhaseAlignX_n_3),
        .pAllVld(pAllVld),
        .pAllVldBgnFlag0(pAllVldBgnFlag0),
        .pAllVld_q(pAllVld_q),
        .pBitslip_reg(PhaseAlignX_n_7),
        .pIDLY_CE(pIDLY_CE),
        .pIDLY_CE_reg_0(pIDLY_CNT),
        .pIDLY_INC(pIDLY_INC),
        .pIDLY_LD(pIDLY_LD),
        .pVld_0(pVld_0),
        .pVld_1(pVld_1),
        .pVld_2(pVld_2),
        .rMMCM_LckdRisingFlag_reg(rMMCM_LckdRisingFlag_reg));
  dvi2rgb_ip_SyncBase_20 SyncBaseOvf
       (.AS(AS),
        .RefClk(RefClk),
        .iIn_q_reg_0(SyncBaseOvf_n_1),
        .iIn_q_reg_1(SyncBaseOvf_n_2),
        .iIn_q_reg_2(SyncBaseOvf_n_3),
        .iIn_q_reg_3(SyncBaseOvf_n_4),
        .out(pTimeoutOvf),
        .rMMCM_LckdRisingFlag_reg(rMMCM_LckdRisingFlag_reg),
        .\rTimeoutCnt_reg[23] (rTimeoutCnt_reg));
  dvi2rgb_ip_SyncBase__parameterized0_21 SyncBaseRst
       (.AS(AS),
        .RefClk(RefClk),
        .out(rTimeoutRst),
        .\pState_reg[2] (PhaseAlignX_n_4),
        .rMMCM_LckdRisingFlag_reg(rMMCM_LckdRisingFlag_reg));
  FDRE pAlignErr_q_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(PhaseAlignX_n_3),
        .Q(pAlignErr_q),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFDDDDD)) 
    pAlignRst_i_1__1
       (.I0(pRst_n),
        .I1(pBitslip),
        .I2(pBitslipCnt[1]),
        .I3(pBitslipCnt[0]),
        .I4(pAlignRst_reg_n_0),
        .O(pAlignRst_i_1__1_n_0));
  FDPE pAlignRst_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pAlignRst_i_1__1_n_0),
        .PRE(AS),
        .Q(pAlignRst_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \pBitslipCnt[0]_i_1 
       (.I0(pBitslipCnt[0]),
        .I1(pBitslipCnt[1]),
        .I2(pBitslip),
        .O(\pBitslipCnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \pBitslipCnt[1]_i_1 
       (.I0(pBitslipCnt[0]),
        .I1(pBitslipCnt[1]),
        .I2(pBitslip),
        .O(\pBitslipCnt[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pBitslipCnt_reg[0] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(\pBitslipCnt[0]_i_1_n_0 ),
        .Q(pBitslipCnt[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \pBitslipCnt_reg[1] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(\pBitslipCnt[1]_i_1_n_0 ),
        .Q(pBitslipCnt[1]),
        .R(1'b0));
  FDRE pBitslip_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(PhaseAlignX_n_7),
        .Q(pBitslip),
        .R(1'b0));
  FDRE pC0_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(ChannelBondX_n_13),
        .Q(vid_pHSync),
        .R(SR));
  FDRE pC1_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(ChannelBondX_n_12),
        .Q(vid_pVSync),
        .R(SR));
  FDRE \pDataIn_reg[0] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pDataIn[0]),
        .Q(vid_pData[0]),
        .R(SR));
  FDRE \pDataIn_reg[1] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pDataIn[1]),
        .Q(vid_pData[1]),
        .R(SR));
  FDRE \pDataIn_reg[2] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pDataIn[2]),
        .Q(vid_pData[2]),
        .R(SR));
  FDRE \pDataIn_reg[3] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pDataIn[3]),
        .Q(vid_pData[3]),
        .R(SR));
  FDRE \pDataIn_reg[4] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pDataIn[4]),
        .Q(vid_pData[4]),
        .R(SR));
  FDRE \pDataIn_reg[5] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pDataIn[5]),
        .Q(vid_pData[5]),
        .R(SR));
  FDRE \pDataIn_reg[6] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pDataIn[6]),
        .Q(vid_pData[6]),
        .R(SR));
  FDRE \pDataIn_reg[7] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pDataIn[7]),
        .Q(vid_pData[7]),
        .R(SR));
  FDRE pVde_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pVde),
        .Q(vid_pVDE),
        .R(SR));
  LUT4 #(
    .INIT(16'hBFFF)) 
    \rTimeoutCnt[0]_i_1__1 
       (.I0(SyncBaseOvf_n_1),
        .I1(SyncBaseOvf_n_2),
        .I2(SyncBaseOvf_n_3),
        .I3(SyncBaseOvf_n_4),
        .O(\rTimeoutCnt[0]_i_1__1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[0]_i_3__1 
       (.I0(rTimeoutCnt_reg[3]),
        .O(\rTimeoutCnt[0]_i_3__1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[0]_i_4__1 
       (.I0(rTimeoutCnt_reg[2]),
        .O(\rTimeoutCnt[0]_i_4__1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[0]_i_5__1 
       (.I0(rTimeoutCnt_reg[1]),
        .O(\rTimeoutCnt[0]_i_5__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rTimeoutCnt[0]_i_6__1 
       (.I0(rTimeoutCnt_reg[0]),
        .O(\rTimeoutCnt[0]_i_6__1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[12]_i_2__1 
       (.I0(rTimeoutCnt_reg[15]),
        .O(\rTimeoutCnt[12]_i_2__1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[12]_i_3__1 
       (.I0(rTimeoutCnt_reg[14]),
        .O(\rTimeoutCnt[12]_i_3__1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[12]_i_4__1 
       (.I0(rTimeoutCnt_reg[13]),
        .O(\rTimeoutCnt[12]_i_4__1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[12]_i_5__1 
       (.I0(rTimeoutCnt_reg[12]),
        .O(\rTimeoutCnt[12]_i_5__1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[16]_i_2__1 
       (.I0(rTimeoutCnt_reg[19]),
        .O(\rTimeoutCnt[16]_i_2__1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[16]_i_3__1 
       (.I0(rTimeoutCnt_reg[18]),
        .O(\rTimeoutCnt[16]_i_3__1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[16]_i_4__1 
       (.I0(rTimeoutCnt_reg[17]),
        .O(\rTimeoutCnt[16]_i_4__1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[16]_i_5__1 
       (.I0(rTimeoutCnt_reg[16]),
        .O(\rTimeoutCnt[16]_i_5__1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[20]_i_2__1 
       (.I0(rTimeoutCnt_reg[23]),
        .O(\rTimeoutCnt[20]_i_2__1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[20]_i_3__1 
       (.I0(rTimeoutCnt_reg[22]),
        .O(\rTimeoutCnt[20]_i_3__1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[20]_i_4__1 
       (.I0(rTimeoutCnt_reg[21]),
        .O(\rTimeoutCnt[20]_i_4__1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[20]_i_5__1 
       (.I0(rTimeoutCnt_reg[20]),
        .O(\rTimeoutCnt[20]_i_5__1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[4]_i_2__1 
       (.I0(rTimeoutCnt_reg[7]),
        .O(\rTimeoutCnt[4]_i_2__1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[4]_i_3__1 
       (.I0(rTimeoutCnt_reg[6]),
        .O(\rTimeoutCnt[4]_i_3__1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[4]_i_4__1 
       (.I0(rTimeoutCnt_reg[5]),
        .O(\rTimeoutCnt[4]_i_4__1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[4]_i_5__1 
       (.I0(rTimeoutCnt_reg[4]),
        .O(\rTimeoutCnt[4]_i_5__1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[8]_i_2__1 
       (.I0(rTimeoutCnt_reg[11]),
        .O(\rTimeoutCnt[8]_i_2__1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[8]_i_3__1 
       (.I0(rTimeoutCnt_reg[10]),
        .O(\rTimeoutCnt[8]_i_3__1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[8]_i_4__1 
       (.I0(rTimeoutCnt_reg[9]),
        .O(\rTimeoutCnt[8]_i_4__1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[8]_i_5__1 
       (.I0(rTimeoutCnt_reg[8]),
        .O(\rTimeoutCnt[8]_i_5__1_n_0 ));
  FDRE \rTimeoutCnt_reg[0] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__1_n_0 ),
        .D(\rTimeoutCnt_reg[0]_i_2__1_n_7 ),
        .Q(rTimeoutCnt_reg[0]),
        .R(rTimeoutRst));
  CARRY4 \rTimeoutCnt_reg[0]_i_2__1 
       (.CI(1'b0),
        .CO({\rTimeoutCnt_reg[0]_i_2__1_n_0 ,\rTimeoutCnt_reg[0]_i_2__1_n_1 ,\rTimeoutCnt_reg[0]_i_2__1_n_2 ,\rTimeoutCnt_reg[0]_i_2__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\rTimeoutCnt_reg[0]_i_2__1_n_4 ,\rTimeoutCnt_reg[0]_i_2__1_n_5 ,\rTimeoutCnt_reg[0]_i_2__1_n_6 ,\rTimeoutCnt_reg[0]_i_2__1_n_7 }),
        .S({\rTimeoutCnt[0]_i_3__1_n_0 ,\rTimeoutCnt[0]_i_4__1_n_0 ,\rTimeoutCnt[0]_i_5__1_n_0 ,\rTimeoutCnt[0]_i_6__1_n_0 }));
  FDRE \rTimeoutCnt_reg[10] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__1_n_0 ),
        .D(\rTimeoutCnt_reg[8]_i_1__1_n_5 ),
        .Q(rTimeoutCnt_reg[10]),
        .R(rTimeoutRst));
  FDRE \rTimeoutCnt_reg[11] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__1_n_0 ),
        .D(\rTimeoutCnt_reg[8]_i_1__1_n_4 ),
        .Q(rTimeoutCnt_reg[11]),
        .R(rTimeoutRst));
  FDRE \rTimeoutCnt_reg[12] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__1_n_0 ),
        .D(\rTimeoutCnt_reg[12]_i_1__1_n_7 ),
        .Q(rTimeoutCnt_reg[12]),
        .R(rTimeoutRst));
  CARRY4 \rTimeoutCnt_reg[12]_i_1__1 
       (.CI(\rTimeoutCnt_reg[8]_i_1__1_n_0 ),
        .CO({\rTimeoutCnt_reg[12]_i_1__1_n_0 ,\rTimeoutCnt_reg[12]_i_1__1_n_1 ,\rTimeoutCnt_reg[12]_i_1__1_n_2 ,\rTimeoutCnt_reg[12]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rTimeoutCnt_reg[12]_i_1__1_n_4 ,\rTimeoutCnt_reg[12]_i_1__1_n_5 ,\rTimeoutCnt_reg[12]_i_1__1_n_6 ,\rTimeoutCnt_reg[12]_i_1__1_n_7 }),
        .S({\rTimeoutCnt[12]_i_2__1_n_0 ,\rTimeoutCnt[12]_i_3__1_n_0 ,\rTimeoutCnt[12]_i_4__1_n_0 ,\rTimeoutCnt[12]_i_5__1_n_0 }));
  FDRE \rTimeoutCnt_reg[13] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__1_n_0 ),
        .D(\rTimeoutCnt_reg[12]_i_1__1_n_6 ),
        .Q(rTimeoutCnt_reg[13]),
        .R(rTimeoutRst));
  FDRE \rTimeoutCnt_reg[14] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__1_n_0 ),
        .D(\rTimeoutCnt_reg[12]_i_1__1_n_5 ),
        .Q(rTimeoutCnt_reg[14]),
        .R(rTimeoutRst));
  FDRE \rTimeoutCnt_reg[15] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__1_n_0 ),
        .D(\rTimeoutCnt_reg[12]_i_1__1_n_4 ),
        .Q(rTimeoutCnt_reg[15]),
        .R(rTimeoutRst));
  FDRE \rTimeoutCnt_reg[16] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__1_n_0 ),
        .D(\rTimeoutCnt_reg[16]_i_1__1_n_7 ),
        .Q(rTimeoutCnt_reg[16]),
        .R(rTimeoutRst));
  CARRY4 \rTimeoutCnt_reg[16]_i_1__1 
       (.CI(\rTimeoutCnt_reg[12]_i_1__1_n_0 ),
        .CO({\rTimeoutCnt_reg[16]_i_1__1_n_0 ,\rTimeoutCnt_reg[16]_i_1__1_n_1 ,\rTimeoutCnt_reg[16]_i_1__1_n_2 ,\rTimeoutCnt_reg[16]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rTimeoutCnt_reg[16]_i_1__1_n_4 ,\rTimeoutCnt_reg[16]_i_1__1_n_5 ,\rTimeoutCnt_reg[16]_i_1__1_n_6 ,\rTimeoutCnt_reg[16]_i_1__1_n_7 }),
        .S({\rTimeoutCnt[16]_i_2__1_n_0 ,\rTimeoutCnt[16]_i_3__1_n_0 ,\rTimeoutCnt[16]_i_4__1_n_0 ,\rTimeoutCnt[16]_i_5__1_n_0 }));
  FDRE \rTimeoutCnt_reg[17] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__1_n_0 ),
        .D(\rTimeoutCnt_reg[16]_i_1__1_n_6 ),
        .Q(rTimeoutCnt_reg[17]),
        .R(rTimeoutRst));
  FDRE \rTimeoutCnt_reg[18] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__1_n_0 ),
        .D(\rTimeoutCnt_reg[16]_i_1__1_n_5 ),
        .Q(rTimeoutCnt_reg[18]),
        .R(rTimeoutRst));
  FDRE \rTimeoutCnt_reg[19] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__1_n_0 ),
        .D(\rTimeoutCnt_reg[16]_i_1__1_n_4 ),
        .Q(rTimeoutCnt_reg[19]),
        .R(rTimeoutRst));
  FDRE \rTimeoutCnt_reg[1] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__1_n_0 ),
        .D(\rTimeoutCnt_reg[0]_i_2__1_n_6 ),
        .Q(rTimeoutCnt_reg[1]),
        .R(rTimeoutRst));
  FDRE \rTimeoutCnt_reg[20] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__1_n_0 ),
        .D(\rTimeoutCnt_reg[20]_i_1__1_n_7 ),
        .Q(rTimeoutCnt_reg[20]),
        .R(rTimeoutRst));
  CARRY4 \rTimeoutCnt_reg[20]_i_1__1 
       (.CI(\rTimeoutCnt_reg[16]_i_1__1_n_0 ),
        .CO({\NLW_rTimeoutCnt_reg[20]_i_1__1_CO_UNCONNECTED [3],\rTimeoutCnt_reg[20]_i_1__1_n_1 ,\rTimeoutCnt_reg[20]_i_1__1_n_2 ,\rTimeoutCnt_reg[20]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rTimeoutCnt_reg[20]_i_1__1_n_4 ,\rTimeoutCnt_reg[20]_i_1__1_n_5 ,\rTimeoutCnt_reg[20]_i_1__1_n_6 ,\rTimeoutCnt_reg[20]_i_1__1_n_7 }),
        .S({\rTimeoutCnt[20]_i_2__1_n_0 ,\rTimeoutCnt[20]_i_3__1_n_0 ,\rTimeoutCnt[20]_i_4__1_n_0 ,\rTimeoutCnt[20]_i_5__1_n_0 }));
  FDRE \rTimeoutCnt_reg[21] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__1_n_0 ),
        .D(\rTimeoutCnt_reg[20]_i_1__1_n_6 ),
        .Q(rTimeoutCnt_reg[21]),
        .R(rTimeoutRst));
  FDRE \rTimeoutCnt_reg[22] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__1_n_0 ),
        .D(\rTimeoutCnt_reg[20]_i_1__1_n_5 ),
        .Q(rTimeoutCnt_reg[22]),
        .R(rTimeoutRst));
  FDRE \rTimeoutCnt_reg[23] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__1_n_0 ),
        .D(\rTimeoutCnt_reg[20]_i_1__1_n_4 ),
        .Q(rTimeoutCnt_reg[23]),
        .R(rTimeoutRst));
  FDRE \rTimeoutCnt_reg[2] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__1_n_0 ),
        .D(\rTimeoutCnt_reg[0]_i_2__1_n_5 ),
        .Q(rTimeoutCnt_reg[2]),
        .R(rTimeoutRst));
  FDRE \rTimeoutCnt_reg[3] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__1_n_0 ),
        .D(\rTimeoutCnt_reg[0]_i_2__1_n_4 ),
        .Q(rTimeoutCnt_reg[3]),
        .R(rTimeoutRst));
  FDRE \rTimeoutCnt_reg[4] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__1_n_0 ),
        .D(\rTimeoutCnt_reg[4]_i_1__1_n_7 ),
        .Q(rTimeoutCnt_reg[4]),
        .R(rTimeoutRst));
  CARRY4 \rTimeoutCnt_reg[4]_i_1__1 
       (.CI(\rTimeoutCnt_reg[0]_i_2__1_n_0 ),
        .CO({\rTimeoutCnt_reg[4]_i_1__1_n_0 ,\rTimeoutCnt_reg[4]_i_1__1_n_1 ,\rTimeoutCnt_reg[4]_i_1__1_n_2 ,\rTimeoutCnt_reg[4]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rTimeoutCnt_reg[4]_i_1__1_n_4 ,\rTimeoutCnt_reg[4]_i_1__1_n_5 ,\rTimeoutCnt_reg[4]_i_1__1_n_6 ,\rTimeoutCnt_reg[4]_i_1__1_n_7 }),
        .S({\rTimeoutCnt[4]_i_2__1_n_0 ,\rTimeoutCnt[4]_i_3__1_n_0 ,\rTimeoutCnt[4]_i_4__1_n_0 ,\rTimeoutCnt[4]_i_5__1_n_0 }));
  FDRE \rTimeoutCnt_reg[5] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__1_n_0 ),
        .D(\rTimeoutCnt_reg[4]_i_1__1_n_6 ),
        .Q(rTimeoutCnt_reg[5]),
        .R(rTimeoutRst));
  FDRE \rTimeoutCnt_reg[6] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__1_n_0 ),
        .D(\rTimeoutCnt_reg[4]_i_1__1_n_5 ),
        .Q(rTimeoutCnt_reg[6]),
        .R(rTimeoutRst));
  FDRE \rTimeoutCnt_reg[7] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__1_n_0 ),
        .D(\rTimeoutCnt_reg[4]_i_1__1_n_4 ),
        .Q(rTimeoutCnt_reg[7]),
        .R(rTimeoutRst));
  FDRE \rTimeoutCnt_reg[8] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__1_n_0 ),
        .D(\rTimeoutCnt_reg[8]_i_1__1_n_7 ),
        .Q(rTimeoutCnt_reg[8]),
        .R(rTimeoutRst));
  CARRY4 \rTimeoutCnt_reg[8]_i_1__1 
       (.CI(\rTimeoutCnt_reg[4]_i_1__1_n_0 ),
        .CO({\rTimeoutCnt_reg[8]_i_1__1_n_0 ,\rTimeoutCnt_reg[8]_i_1__1_n_1 ,\rTimeoutCnt_reg[8]_i_1__1_n_2 ,\rTimeoutCnt_reg[8]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rTimeoutCnt_reg[8]_i_1__1_n_4 ,\rTimeoutCnt_reg[8]_i_1__1_n_5 ,\rTimeoutCnt_reg[8]_i_1__1_n_6 ,\rTimeoutCnt_reg[8]_i_1__1_n_7 }),
        .S({\rTimeoutCnt[8]_i_2__1_n_0 ,\rTimeoutCnt[8]_i_3__1_n_0 ,\rTimeoutCnt[8]_i_4__1_n_0 ,\rTimeoutCnt[8]_i_5__1_n_0 }));
  FDRE \rTimeoutCnt_reg[9] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__1_n_0 ),
        .D(\rTimeoutCnt_reg[8]_i_1__1_n_6 ),
        .Q(rTimeoutCnt_reg[9]),
        .R(rTimeoutRst));
endmodule

(* ORIG_REF_NAME = "TMDS_Decoder" *) 
module dvi2rgb_ip_TMDS_Decoder_0
   (pVld_1,
    SR,
    \pDataIn_reg[7]_0 ,
    pRdy_1,
    vid_pData,
    TMDS_Data_p,
    TMDS_Data_n,
    rMMCM_LckdRisingFlag_reg,
    \rMMCM_Reset_q_reg[0] ,
    CLKB,
    AS,
    RefClk,
    pAllVld,
    pVld_0,
    pVld_2,
    pRdy_2,
    pRdy_0,
    pRst_n,
    pMeRdy_int_reg);
  output pVld_1;
  output [0:0]SR;
  output [0:0]\pDataIn_reg[7]_0 ;
  output pRdy_1;
  output [7:0]vid_pData;
  input [0:0]TMDS_Data_p;
  input [0:0]TMDS_Data_n;
  input rMMCM_LckdRisingFlag_reg;
  input \rMMCM_Reset_q_reg[0] ;
  input CLKB;
  input [0:0]AS;
  input RefClk;
  input pAllVld;
  input pVld_0;
  input pVld_2;
  input pRdy_2;
  input pRdy_0;
  input pRst_n;
  input [0:0]pMeRdy_int_reg;

  wire [0:0]AS;
  wire CLKB;
  wire PhaseAlignX_n_3;
  wire PhaseAlignX_n_4;
  wire PhaseAlignX_n_7;
  wire RefClk;
  wire [0:0]SR;
  wire SyncBaseOvf_n_1;
  wire SyncBaseOvf_n_2;
  wire SyncBaseOvf_n_3;
  wire SyncBaseOvf_n_4;
  wire [0:0]TMDS_Data_n;
  wire [0:0]TMDS_Data_p;
  wire pAlignErr_q;
  wire pAlignRst_i_1__0_n_0;
  wire pAlignRst_reg_n_0;
  wire pAllVld;
  wire pAllVldBgnFlag0;
  wire pAllVld_q;
  wire pBitslip;
  wire [1:0]pBitslipCnt;
  wire \pBitslipCnt[0]_i_1_n_0 ;
  wire \pBitslipCnt[1]_i_1_n_0 ;
  wire [7:0]pDataIn;
  wire [9:0]pDataInRaw;
  wire [0:0]\pDataIn_reg[7]_0 ;
  wire pIDLY_CE;
  wire [4:0]pIDLY_CNT;
  wire pIDLY_INC;
  wire pIDLY_LD;
  wire [0:0]pMeRdy_int_reg;
  wire pRdy_0;
  wire pRdy_1;
  wire pRdy_2;
  wire pRst_n;
  wire pTimeoutOvf;
  wire pVld_0;
  wire pVld_1;
  wire pVld_2;
  wire rMMCM_LckdRisingFlag_reg;
  wire \rMMCM_Reset_q_reg[0] ;
  wire \rTimeoutCnt[0]_i_1__0_n_0 ;
  wire \rTimeoutCnt[0]_i_3__0_n_0 ;
  wire \rTimeoutCnt[0]_i_4__0_n_0 ;
  wire \rTimeoutCnt[0]_i_5__0_n_0 ;
  wire \rTimeoutCnt[0]_i_6__0_n_0 ;
  wire \rTimeoutCnt[12]_i_2__0_n_0 ;
  wire \rTimeoutCnt[12]_i_3__0_n_0 ;
  wire \rTimeoutCnt[12]_i_4__0_n_0 ;
  wire \rTimeoutCnt[12]_i_5__0_n_0 ;
  wire \rTimeoutCnt[16]_i_2__0_n_0 ;
  wire \rTimeoutCnt[16]_i_3__0_n_0 ;
  wire \rTimeoutCnt[16]_i_4__0_n_0 ;
  wire \rTimeoutCnt[16]_i_5__0_n_0 ;
  wire \rTimeoutCnt[20]_i_2__0_n_0 ;
  wire \rTimeoutCnt[20]_i_3__0_n_0 ;
  wire \rTimeoutCnt[20]_i_4__0_n_0 ;
  wire \rTimeoutCnt[20]_i_5__0_n_0 ;
  wire \rTimeoutCnt[4]_i_2__0_n_0 ;
  wire \rTimeoutCnt[4]_i_3__0_n_0 ;
  wire \rTimeoutCnt[4]_i_4__0_n_0 ;
  wire \rTimeoutCnt[4]_i_5__0_n_0 ;
  wire \rTimeoutCnt[8]_i_2__0_n_0 ;
  wire \rTimeoutCnt[8]_i_3__0_n_0 ;
  wire \rTimeoutCnt[8]_i_4__0_n_0 ;
  wire \rTimeoutCnt[8]_i_5__0_n_0 ;
  wire [23:0]rTimeoutCnt_reg;
  wire \rTimeoutCnt_reg[0]_i_2__0_n_0 ;
  wire \rTimeoutCnt_reg[0]_i_2__0_n_1 ;
  wire \rTimeoutCnt_reg[0]_i_2__0_n_2 ;
  wire \rTimeoutCnt_reg[0]_i_2__0_n_3 ;
  wire \rTimeoutCnt_reg[0]_i_2__0_n_4 ;
  wire \rTimeoutCnt_reg[0]_i_2__0_n_5 ;
  wire \rTimeoutCnt_reg[0]_i_2__0_n_6 ;
  wire \rTimeoutCnt_reg[0]_i_2__0_n_7 ;
  wire \rTimeoutCnt_reg[12]_i_1__0_n_0 ;
  wire \rTimeoutCnt_reg[12]_i_1__0_n_1 ;
  wire \rTimeoutCnt_reg[12]_i_1__0_n_2 ;
  wire \rTimeoutCnt_reg[12]_i_1__0_n_3 ;
  wire \rTimeoutCnt_reg[12]_i_1__0_n_4 ;
  wire \rTimeoutCnt_reg[12]_i_1__0_n_5 ;
  wire \rTimeoutCnt_reg[12]_i_1__0_n_6 ;
  wire \rTimeoutCnt_reg[12]_i_1__0_n_7 ;
  wire \rTimeoutCnt_reg[16]_i_1__0_n_0 ;
  wire \rTimeoutCnt_reg[16]_i_1__0_n_1 ;
  wire \rTimeoutCnt_reg[16]_i_1__0_n_2 ;
  wire \rTimeoutCnt_reg[16]_i_1__0_n_3 ;
  wire \rTimeoutCnt_reg[16]_i_1__0_n_4 ;
  wire \rTimeoutCnt_reg[16]_i_1__0_n_5 ;
  wire \rTimeoutCnt_reg[16]_i_1__0_n_6 ;
  wire \rTimeoutCnt_reg[16]_i_1__0_n_7 ;
  wire \rTimeoutCnt_reg[20]_i_1__0_n_1 ;
  wire \rTimeoutCnt_reg[20]_i_1__0_n_2 ;
  wire \rTimeoutCnt_reg[20]_i_1__0_n_3 ;
  wire \rTimeoutCnt_reg[20]_i_1__0_n_4 ;
  wire \rTimeoutCnt_reg[20]_i_1__0_n_5 ;
  wire \rTimeoutCnt_reg[20]_i_1__0_n_6 ;
  wire \rTimeoutCnt_reg[20]_i_1__0_n_7 ;
  wire \rTimeoutCnt_reg[4]_i_1__0_n_0 ;
  wire \rTimeoutCnt_reg[4]_i_1__0_n_1 ;
  wire \rTimeoutCnt_reg[4]_i_1__0_n_2 ;
  wire \rTimeoutCnt_reg[4]_i_1__0_n_3 ;
  wire \rTimeoutCnt_reg[4]_i_1__0_n_4 ;
  wire \rTimeoutCnt_reg[4]_i_1__0_n_5 ;
  wire \rTimeoutCnt_reg[4]_i_1__0_n_6 ;
  wire \rTimeoutCnt_reg[4]_i_1__0_n_7 ;
  wire \rTimeoutCnt_reg[8]_i_1__0_n_0 ;
  wire \rTimeoutCnt_reg[8]_i_1__0_n_1 ;
  wire \rTimeoutCnt_reg[8]_i_1__0_n_2 ;
  wire \rTimeoutCnt_reg[8]_i_1__0_n_3 ;
  wire \rTimeoutCnt_reg[8]_i_1__0_n_4 ;
  wire \rTimeoutCnt_reg[8]_i_1__0_n_5 ;
  wire \rTimeoutCnt_reg[8]_i_1__0_n_6 ;
  wire \rTimeoutCnt_reg[8]_i_1__0_n_7 ;
  wire rTimeoutRst;
  wire [7:0]vid_pData;
  wire [3:3]\NLW_rTimeoutCnt_reg[20]_i_1__0_CO_UNCONNECTED ;

  dvi2rgb_ip_ChannelBond_10 ChannelBondX
       (.D(pDataIn),
        .SR(SR),
        .pAllVld(pAllVld),
        .pAllVldBgnFlag0(pAllVldBgnFlag0),
        .pAllVld_q(pAllVld_q),
        .pDataInRaw(pDataInRaw),
        .\pDataIn_reg[7] (\pDataIn_reg[7]_0 ),
        .\pDataIn_reg[7]_0 (pRdy_1),
        .pRdy_0(pRdy_0),
        .pRdy_2(pRdy_2),
        .rMMCM_LckdRisingFlag_reg(rMMCM_LckdRisingFlag_reg));
  dvi2rgb_ip_InputSERDES_11 InputSERDES_X
       (.AS(AS),
        .CLKB(CLKB),
        .D(pIDLY_CNT),
        .TMDS_Data_n(TMDS_Data_n),
        .TMDS_Data_p(TMDS_Data_p),
        .pBitslip(pBitslip),
        .pDataInRaw(pDataInRaw),
        .pIDLY_CE(pIDLY_CE),
        .pIDLY_INC(pIDLY_INC),
        .pIDLY_LD(pIDLY_LD),
        .rMMCM_LckdRisingFlag_reg(rMMCM_LckdRisingFlag_reg),
        .\rMMCM_Reset_q_reg[0] (\rMMCM_Reset_q_reg[0] ));
  dvi2rgb_ip_PhaseAlign_12 PhaseAlignX
       (.D(pDataInRaw[8:0]),
        .SR(SR),
        .SS(pAlignRst_reg_n_0),
        .iIn_q_reg(PhaseAlignX_n_4),
        .out(pTimeoutOvf),
        .pAlignErr_q(pAlignErr_q),
        .pAlignErr_q_reg(PhaseAlignX_n_3),
        .pAllVldBgnFlag0(pAllVldBgnFlag0),
        .pAllVld_q(pAllVld_q),
        .pBitslip_reg(PhaseAlignX_n_7),
        .pIDLY_CE(pIDLY_CE),
        .pIDLY_CE_reg_0(pIDLY_CNT),
        .pIDLY_INC(pIDLY_INC),
        .pIDLY_LD(pIDLY_LD),
        .pVld_0(pVld_0),
        .pVld_1(pVld_1),
        .pVld_2(pVld_2),
        .rMMCM_LckdRisingFlag_reg(rMMCM_LckdRisingFlag_reg));
  dvi2rgb_ip_SyncBase_13 SyncBaseOvf
       (.AS(AS),
        .RefClk(RefClk),
        .iIn_q_reg_0(SyncBaseOvf_n_1),
        .iIn_q_reg_1(SyncBaseOvf_n_2),
        .iIn_q_reg_2(SyncBaseOvf_n_3),
        .iIn_q_reg_3(SyncBaseOvf_n_4),
        .out(pTimeoutOvf),
        .rMMCM_LckdRisingFlag_reg(rMMCM_LckdRisingFlag_reg),
        .\rTimeoutCnt_reg[23] (rTimeoutCnt_reg));
  dvi2rgb_ip_SyncBase__parameterized0_14 SyncBaseRst
       (.AS(AS),
        .RefClk(RefClk),
        .out(rTimeoutRst),
        .\pState_reg[2] (PhaseAlignX_n_4),
        .rMMCM_LckdRisingFlag_reg(rMMCM_LckdRisingFlag_reg));
  FDRE pAlignErr_q_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(PhaseAlignX_n_3),
        .Q(pAlignErr_q),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFDDDDD)) 
    pAlignRst_i_1__0
       (.I0(pRst_n),
        .I1(pBitslip),
        .I2(pBitslipCnt[1]),
        .I3(pBitslipCnt[0]),
        .I4(pAlignRst_reg_n_0),
        .O(pAlignRst_i_1__0_n_0));
  FDPE pAlignRst_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pAlignRst_i_1__0_n_0),
        .PRE(AS),
        .Q(pAlignRst_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \pBitslipCnt[0]_i_1 
       (.I0(pBitslipCnt[0]),
        .I1(pBitslipCnt[1]),
        .I2(pBitslip),
        .O(\pBitslipCnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \pBitslipCnt[1]_i_1 
       (.I0(pBitslipCnt[0]),
        .I1(pBitslipCnt[1]),
        .I2(pBitslip),
        .O(\pBitslipCnt[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pBitslipCnt_reg[0] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(\pBitslipCnt[0]_i_1_n_0 ),
        .Q(pBitslipCnt[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \pBitslipCnt_reg[1] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(\pBitslipCnt[1]_i_1_n_0 ),
        .Q(pBitslipCnt[1]),
        .R(1'b0));
  FDRE pBitslip_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(PhaseAlignX_n_7),
        .Q(pBitslip),
        .R(1'b0));
  FDRE \pDataIn_reg[0] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pDataIn[0]),
        .Q(vid_pData[0]),
        .R(pMeRdy_int_reg));
  FDRE \pDataIn_reg[1] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pDataIn[1]),
        .Q(vid_pData[1]),
        .R(pMeRdy_int_reg));
  FDRE \pDataIn_reg[2] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pDataIn[2]),
        .Q(vid_pData[2]),
        .R(pMeRdy_int_reg));
  FDRE \pDataIn_reg[3] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pDataIn[3]),
        .Q(vid_pData[3]),
        .R(pMeRdy_int_reg));
  FDRE \pDataIn_reg[4] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pDataIn[4]),
        .Q(vid_pData[4]),
        .R(pMeRdy_int_reg));
  FDRE \pDataIn_reg[5] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pDataIn[5]),
        .Q(vid_pData[5]),
        .R(pMeRdy_int_reg));
  FDRE \pDataIn_reg[6] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pDataIn[6]),
        .Q(vid_pData[6]),
        .R(pMeRdy_int_reg));
  FDRE \pDataIn_reg[7] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pDataIn[7]),
        .Q(vid_pData[7]),
        .R(pMeRdy_int_reg));
  LUT4 #(
    .INIT(16'hBFFF)) 
    \rTimeoutCnt[0]_i_1__0 
       (.I0(SyncBaseOvf_n_1),
        .I1(SyncBaseOvf_n_2),
        .I2(SyncBaseOvf_n_3),
        .I3(SyncBaseOvf_n_4),
        .O(\rTimeoutCnt[0]_i_1__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[0]_i_3__0 
       (.I0(rTimeoutCnt_reg[3]),
        .O(\rTimeoutCnt[0]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[0]_i_4__0 
       (.I0(rTimeoutCnt_reg[2]),
        .O(\rTimeoutCnt[0]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[0]_i_5__0 
       (.I0(rTimeoutCnt_reg[1]),
        .O(\rTimeoutCnt[0]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rTimeoutCnt[0]_i_6__0 
       (.I0(rTimeoutCnt_reg[0]),
        .O(\rTimeoutCnt[0]_i_6__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[12]_i_2__0 
       (.I0(rTimeoutCnt_reg[15]),
        .O(\rTimeoutCnt[12]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[12]_i_3__0 
       (.I0(rTimeoutCnt_reg[14]),
        .O(\rTimeoutCnt[12]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[12]_i_4__0 
       (.I0(rTimeoutCnt_reg[13]),
        .O(\rTimeoutCnt[12]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[12]_i_5__0 
       (.I0(rTimeoutCnt_reg[12]),
        .O(\rTimeoutCnt[12]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[16]_i_2__0 
       (.I0(rTimeoutCnt_reg[19]),
        .O(\rTimeoutCnt[16]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[16]_i_3__0 
       (.I0(rTimeoutCnt_reg[18]),
        .O(\rTimeoutCnt[16]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[16]_i_4__0 
       (.I0(rTimeoutCnt_reg[17]),
        .O(\rTimeoutCnt[16]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[16]_i_5__0 
       (.I0(rTimeoutCnt_reg[16]),
        .O(\rTimeoutCnt[16]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[20]_i_2__0 
       (.I0(rTimeoutCnt_reg[23]),
        .O(\rTimeoutCnt[20]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[20]_i_3__0 
       (.I0(rTimeoutCnt_reg[22]),
        .O(\rTimeoutCnt[20]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[20]_i_4__0 
       (.I0(rTimeoutCnt_reg[21]),
        .O(\rTimeoutCnt[20]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[20]_i_5__0 
       (.I0(rTimeoutCnt_reg[20]),
        .O(\rTimeoutCnt[20]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[4]_i_2__0 
       (.I0(rTimeoutCnt_reg[7]),
        .O(\rTimeoutCnt[4]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[4]_i_3__0 
       (.I0(rTimeoutCnt_reg[6]),
        .O(\rTimeoutCnt[4]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[4]_i_4__0 
       (.I0(rTimeoutCnt_reg[5]),
        .O(\rTimeoutCnt[4]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[4]_i_5__0 
       (.I0(rTimeoutCnt_reg[4]),
        .O(\rTimeoutCnt[4]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[8]_i_2__0 
       (.I0(rTimeoutCnt_reg[11]),
        .O(\rTimeoutCnt[8]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[8]_i_3__0 
       (.I0(rTimeoutCnt_reg[10]),
        .O(\rTimeoutCnt[8]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[8]_i_4__0 
       (.I0(rTimeoutCnt_reg[9]),
        .O(\rTimeoutCnt[8]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[8]_i_5__0 
       (.I0(rTimeoutCnt_reg[8]),
        .O(\rTimeoutCnt[8]_i_5__0_n_0 ));
  FDRE \rTimeoutCnt_reg[0] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__0_n_0 ),
        .D(\rTimeoutCnt_reg[0]_i_2__0_n_7 ),
        .Q(rTimeoutCnt_reg[0]),
        .R(rTimeoutRst));
  CARRY4 \rTimeoutCnt_reg[0]_i_2__0 
       (.CI(1'b0),
        .CO({\rTimeoutCnt_reg[0]_i_2__0_n_0 ,\rTimeoutCnt_reg[0]_i_2__0_n_1 ,\rTimeoutCnt_reg[0]_i_2__0_n_2 ,\rTimeoutCnt_reg[0]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\rTimeoutCnt_reg[0]_i_2__0_n_4 ,\rTimeoutCnt_reg[0]_i_2__0_n_5 ,\rTimeoutCnt_reg[0]_i_2__0_n_6 ,\rTimeoutCnt_reg[0]_i_2__0_n_7 }),
        .S({\rTimeoutCnt[0]_i_3__0_n_0 ,\rTimeoutCnt[0]_i_4__0_n_0 ,\rTimeoutCnt[0]_i_5__0_n_0 ,\rTimeoutCnt[0]_i_6__0_n_0 }));
  FDRE \rTimeoutCnt_reg[10] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__0_n_0 ),
        .D(\rTimeoutCnt_reg[8]_i_1__0_n_5 ),
        .Q(rTimeoutCnt_reg[10]),
        .R(rTimeoutRst));
  FDRE \rTimeoutCnt_reg[11] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__0_n_0 ),
        .D(\rTimeoutCnt_reg[8]_i_1__0_n_4 ),
        .Q(rTimeoutCnt_reg[11]),
        .R(rTimeoutRst));
  FDRE \rTimeoutCnt_reg[12] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__0_n_0 ),
        .D(\rTimeoutCnt_reg[12]_i_1__0_n_7 ),
        .Q(rTimeoutCnt_reg[12]),
        .R(rTimeoutRst));
  CARRY4 \rTimeoutCnt_reg[12]_i_1__0 
       (.CI(\rTimeoutCnt_reg[8]_i_1__0_n_0 ),
        .CO({\rTimeoutCnt_reg[12]_i_1__0_n_0 ,\rTimeoutCnt_reg[12]_i_1__0_n_1 ,\rTimeoutCnt_reg[12]_i_1__0_n_2 ,\rTimeoutCnt_reg[12]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rTimeoutCnt_reg[12]_i_1__0_n_4 ,\rTimeoutCnt_reg[12]_i_1__0_n_5 ,\rTimeoutCnt_reg[12]_i_1__0_n_6 ,\rTimeoutCnt_reg[12]_i_1__0_n_7 }),
        .S({\rTimeoutCnt[12]_i_2__0_n_0 ,\rTimeoutCnt[12]_i_3__0_n_0 ,\rTimeoutCnt[12]_i_4__0_n_0 ,\rTimeoutCnt[12]_i_5__0_n_0 }));
  FDRE \rTimeoutCnt_reg[13] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__0_n_0 ),
        .D(\rTimeoutCnt_reg[12]_i_1__0_n_6 ),
        .Q(rTimeoutCnt_reg[13]),
        .R(rTimeoutRst));
  FDRE \rTimeoutCnt_reg[14] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__0_n_0 ),
        .D(\rTimeoutCnt_reg[12]_i_1__0_n_5 ),
        .Q(rTimeoutCnt_reg[14]),
        .R(rTimeoutRst));
  FDRE \rTimeoutCnt_reg[15] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__0_n_0 ),
        .D(\rTimeoutCnt_reg[12]_i_1__0_n_4 ),
        .Q(rTimeoutCnt_reg[15]),
        .R(rTimeoutRst));
  FDRE \rTimeoutCnt_reg[16] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__0_n_0 ),
        .D(\rTimeoutCnt_reg[16]_i_1__0_n_7 ),
        .Q(rTimeoutCnt_reg[16]),
        .R(rTimeoutRst));
  CARRY4 \rTimeoutCnt_reg[16]_i_1__0 
       (.CI(\rTimeoutCnt_reg[12]_i_1__0_n_0 ),
        .CO({\rTimeoutCnt_reg[16]_i_1__0_n_0 ,\rTimeoutCnt_reg[16]_i_1__0_n_1 ,\rTimeoutCnt_reg[16]_i_1__0_n_2 ,\rTimeoutCnt_reg[16]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rTimeoutCnt_reg[16]_i_1__0_n_4 ,\rTimeoutCnt_reg[16]_i_1__0_n_5 ,\rTimeoutCnt_reg[16]_i_1__0_n_6 ,\rTimeoutCnt_reg[16]_i_1__0_n_7 }),
        .S({\rTimeoutCnt[16]_i_2__0_n_0 ,\rTimeoutCnt[16]_i_3__0_n_0 ,\rTimeoutCnt[16]_i_4__0_n_0 ,\rTimeoutCnt[16]_i_5__0_n_0 }));
  FDRE \rTimeoutCnt_reg[17] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__0_n_0 ),
        .D(\rTimeoutCnt_reg[16]_i_1__0_n_6 ),
        .Q(rTimeoutCnt_reg[17]),
        .R(rTimeoutRst));
  FDRE \rTimeoutCnt_reg[18] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__0_n_0 ),
        .D(\rTimeoutCnt_reg[16]_i_1__0_n_5 ),
        .Q(rTimeoutCnt_reg[18]),
        .R(rTimeoutRst));
  FDRE \rTimeoutCnt_reg[19] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__0_n_0 ),
        .D(\rTimeoutCnt_reg[16]_i_1__0_n_4 ),
        .Q(rTimeoutCnt_reg[19]),
        .R(rTimeoutRst));
  FDRE \rTimeoutCnt_reg[1] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__0_n_0 ),
        .D(\rTimeoutCnt_reg[0]_i_2__0_n_6 ),
        .Q(rTimeoutCnt_reg[1]),
        .R(rTimeoutRst));
  FDRE \rTimeoutCnt_reg[20] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__0_n_0 ),
        .D(\rTimeoutCnt_reg[20]_i_1__0_n_7 ),
        .Q(rTimeoutCnt_reg[20]),
        .R(rTimeoutRst));
  CARRY4 \rTimeoutCnt_reg[20]_i_1__0 
       (.CI(\rTimeoutCnt_reg[16]_i_1__0_n_0 ),
        .CO({\NLW_rTimeoutCnt_reg[20]_i_1__0_CO_UNCONNECTED [3],\rTimeoutCnt_reg[20]_i_1__0_n_1 ,\rTimeoutCnt_reg[20]_i_1__0_n_2 ,\rTimeoutCnt_reg[20]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rTimeoutCnt_reg[20]_i_1__0_n_4 ,\rTimeoutCnt_reg[20]_i_1__0_n_5 ,\rTimeoutCnt_reg[20]_i_1__0_n_6 ,\rTimeoutCnt_reg[20]_i_1__0_n_7 }),
        .S({\rTimeoutCnt[20]_i_2__0_n_0 ,\rTimeoutCnt[20]_i_3__0_n_0 ,\rTimeoutCnt[20]_i_4__0_n_0 ,\rTimeoutCnt[20]_i_5__0_n_0 }));
  FDRE \rTimeoutCnt_reg[21] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__0_n_0 ),
        .D(\rTimeoutCnt_reg[20]_i_1__0_n_6 ),
        .Q(rTimeoutCnt_reg[21]),
        .R(rTimeoutRst));
  FDRE \rTimeoutCnt_reg[22] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__0_n_0 ),
        .D(\rTimeoutCnt_reg[20]_i_1__0_n_5 ),
        .Q(rTimeoutCnt_reg[22]),
        .R(rTimeoutRst));
  FDRE \rTimeoutCnt_reg[23] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__0_n_0 ),
        .D(\rTimeoutCnt_reg[20]_i_1__0_n_4 ),
        .Q(rTimeoutCnt_reg[23]),
        .R(rTimeoutRst));
  FDRE \rTimeoutCnt_reg[2] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__0_n_0 ),
        .D(\rTimeoutCnt_reg[0]_i_2__0_n_5 ),
        .Q(rTimeoutCnt_reg[2]),
        .R(rTimeoutRst));
  FDRE \rTimeoutCnt_reg[3] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__0_n_0 ),
        .D(\rTimeoutCnt_reg[0]_i_2__0_n_4 ),
        .Q(rTimeoutCnt_reg[3]),
        .R(rTimeoutRst));
  FDRE \rTimeoutCnt_reg[4] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__0_n_0 ),
        .D(\rTimeoutCnt_reg[4]_i_1__0_n_7 ),
        .Q(rTimeoutCnt_reg[4]),
        .R(rTimeoutRst));
  CARRY4 \rTimeoutCnt_reg[4]_i_1__0 
       (.CI(\rTimeoutCnt_reg[0]_i_2__0_n_0 ),
        .CO({\rTimeoutCnt_reg[4]_i_1__0_n_0 ,\rTimeoutCnt_reg[4]_i_1__0_n_1 ,\rTimeoutCnt_reg[4]_i_1__0_n_2 ,\rTimeoutCnt_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rTimeoutCnt_reg[4]_i_1__0_n_4 ,\rTimeoutCnt_reg[4]_i_1__0_n_5 ,\rTimeoutCnt_reg[4]_i_1__0_n_6 ,\rTimeoutCnt_reg[4]_i_1__0_n_7 }),
        .S({\rTimeoutCnt[4]_i_2__0_n_0 ,\rTimeoutCnt[4]_i_3__0_n_0 ,\rTimeoutCnt[4]_i_4__0_n_0 ,\rTimeoutCnt[4]_i_5__0_n_0 }));
  FDRE \rTimeoutCnt_reg[5] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__0_n_0 ),
        .D(\rTimeoutCnt_reg[4]_i_1__0_n_6 ),
        .Q(rTimeoutCnt_reg[5]),
        .R(rTimeoutRst));
  FDRE \rTimeoutCnt_reg[6] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__0_n_0 ),
        .D(\rTimeoutCnt_reg[4]_i_1__0_n_5 ),
        .Q(rTimeoutCnt_reg[6]),
        .R(rTimeoutRst));
  FDRE \rTimeoutCnt_reg[7] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__0_n_0 ),
        .D(\rTimeoutCnt_reg[4]_i_1__0_n_4 ),
        .Q(rTimeoutCnt_reg[7]),
        .R(rTimeoutRst));
  FDRE \rTimeoutCnt_reg[8] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__0_n_0 ),
        .D(\rTimeoutCnt_reg[8]_i_1__0_n_7 ),
        .Q(rTimeoutCnt_reg[8]),
        .R(rTimeoutRst));
  CARRY4 \rTimeoutCnt_reg[8]_i_1__0 
       (.CI(\rTimeoutCnt_reg[4]_i_1__0_n_0 ),
        .CO({\rTimeoutCnt_reg[8]_i_1__0_n_0 ,\rTimeoutCnt_reg[8]_i_1__0_n_1 ,\rTimeoutCnt_reg[8]_i_1__0_n_2 ,\rTimeoutCnt_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rTimeoutCnt_reg[8]_i_1__0_n_4 ,\rTimeoutCnt_reg[8]_i_1__0_n_5 ,\rTimeoutCnt_reg[8]_i_1__0_n_6 ,\rTimeoutCnt_reg[8]_i_1__0_n_7 }),
        .S({\rTimeoutCnt[8]_i_2__0_n_0 ,\rTimeoutCnt[8]_i_3__0_n_0 ,\rTimeoutCnt[8]_i_4__0_n_0 ,\rTimeoutCnt[8]_i_5__0_n_0 }));
  FDRE \rTimeoutCnt_reg[9] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1__0_n_0 ),
        .D(\rTimeoutCnt_reg[8]_i_1__0_n_6 ),
        .Q(rTimeoutCnt_reg[9]),
        .R(rTimeoutRst));
endmodule

(* ORIG_REF_NAME = "TMDS_Decoder" *) 
module dvi2rgb_ip_TMDS_Decoder_1
   (pVld_2,
    pC1_reg,
    pRdy_2,
    vid_pData,
    TMDS_Data_p,
    TMDS_Data_n,
    rMMCM_LckdRisingFlag_reg,
    \rMMCM_Reset_q_reg[0] ,
    CLKB,
    out,
    RefClk,
    pAllVld,
    SR,
    pVld_0,
    pVld_1,
    pRdy_0,
    pRdy_1,
    pRst_n,
    pMeRdy_int_reg);
  output pVld_2;
  output [0:0]pC1_reg;
  output pRdy_2;
  output [7:0]vid_pData;
  input [0:0]TMDS_Data_p;
  input [0:0]TMDS_Data_n;
  input rMMCM_LckdRisingFlag_reg;
  input \rMMCM_Reset_q_reg[0] ;
  input CLKB;
  input [0:0]out;
  input RefClk;
  input pAllVld;
  input [0:0]SR;
  input pVld_0;
  input pVld_1;
  input pRdy_0;
  input pRdy_1;
  input pRst_n;
  input [0:0]pMeRdy_int_reg;

  wire CLKB;
  wire PhaseAlignX_n_3;
  wire PhaseAlignX_n_4;
  wire PhaseAlignX_n_6;
  wire RefClk;
  wire [0:0]SR;
  wire SyncBaseOvf_n_1;
  wire SyncBaseOvf_n_2;
  wire SyncBaseOvf_n_3;
  wire SyncBaseOvf_n_4;
  wire [0:0]TMDS_Data_n;
  wire [0:0]TMDS_Data_p;
  wire [0:0]out;
  wire pAlignErr_q;
  wire pAlignRst;
  wire pAlignRst_i_1_n_0;
  wire pAllVld;
  wire pAllVldBgnFlag0;
  wire pAllVld_q;
  wire pBitslip;
  wire [1:0]pBitslipCnt;
  wire \pBitslipCnt[0]_i_1_n_0 ;
  wire \pBitslipCnt[1]_i_1_n_0 ;
  wire [0:0]pC1_reg;
  wire [7:0]pDataIn;
  wire [9:0]pDataInRaw;
  wire pIDLY_CE;
  wire [4:0]pIDLY_CNT;
  wire pIDLY_INC;
  wire pIDLY_LD;
  wire [0:0]pMeRdy_int_reg;
  wire pRdy_0;
  wire pRdy_1;
  wire pRdy_2;
  wire pRst_n;
  wire pTimeoutOvf;
  wire pVld_0;
  wire pVld_1;
  wire pVld_2;
  wire rMMCM_LckdRisingFlag_reg;
  wire \rMMCM_Reset_q_reg[0] ;
  wire \rTimeoutCnt[0]_i_1_n_0 ;
  wire \rTimeoutCnt[0]_i_3_n_0 ;
  wire \rTimeoutCnt[0]_i_4_n_0 ;
  wire \rTimeoutCnt[0]_i_5_n_0 ;
  wire \rTimeoutCnt[0]_i_6_n_0 ;
  wire \rTimeoutCnt[12]_i_2_n_0 ;
  wire \rTimeoutCnt[12]_i_3_n_0 ;
  wire \rTimeoutCnt[12]_i_4_n_0 ;
  wire \rTimeoutCnt[12]_i_5_n_0 ;
  wire \rTimeoutCnt[16]_i_2_n_0 ;
  wire \rTimeoutCnt[16]_i_3_n_0 ;
  wire \rTimeoutCnt[16]_i_4_n_0 ;
  wire \rTimeoutCnt[16]_i_5_n_0 ;
  wire \rTimeoutCnt[20]_i_2_n_0 ;
  wire \rTimeoutCnt[20]_i_3_n_0 ;
  wire \rTimeoutCnt[20]_i_4_n_0 ;
  wire \rTimeoutCnt[20]_i_5_n_0 ;
  wire \rTimeoutCnt[4]_i_2_n_0 ;
  wire \rTimeoutCnt[4]_i_3_n_0 ;
  wire \rTimeoutCnt[4]_i_4_n_0 ;
  wire \rTimeoutCnt[4]_i_5_n_0 ;
  wire \rTimeoutCnt[8]_i_2_n_0 ;
  wire \rTimeoutCnt[8]_i_3_n_0 ;
  wire \rTimeoutCnt[8]_i_4_n_0 ;
  wire \rTimeoutCnt[8]_i_5_n_0 ;
  wire [23:0]rTimeoutCnt_reg;
  wire \rTimeoutCnt_reg[0]_i_2_n_0 ;
  wire \rTimeoutCnt_reg[0]_i_2_n_1 ;
  wire \rTimeoutCnt_reg[0]_i_2_n_2 ;
  wire \rTimeoutCnt_reg[0]_i_2_n_3 ;
  wire \rTimeoutCnt_reg[0]_i_2_n_4 ;
  wire \rTimeoutCnt_reg[0]_i_2_n_5 ;
  wire \rTimeoutCnt_reg[0]_i_2_n_6 ;
  wire \rTimeoutCnt_reg[0]_i_2_n_7 ;
  wire \rTimeoutCnt_reg[12]_i_1_n_0 ;
  wire \rTimeoutCnt_reg[12]_i_1_n_1 ;
  wire \rTimeoutCnt_reg[12]_i_1_n_2 ;
  wire \rTimeoutCnt_reg[12]_i_1_n_3 ;
  wire \rTimeoutCnt_reg[12]_i_1_n_4 ;
  wire \rTimeoutCnt_reg[12]_i_1_n_5 ;
  wire \rTimeoutCnt_reg[12]_i_1_n_6 ;
  wire \rTimeoutCnt_reg[12]_i_1_n_7 ;
  wire \rTimeoutCnt_reg[16]_i_1_n_0 ;
  wire \rTimeoutCnt_reg[16]_i_1_n_1 ;
  wire \rTimeoutCnt_reg[16]_i_1_n_2 ;
  wire \rTimeoutCnt_reg[16]_i_1_n_3 ;
  wire \rTimeoutCnt_reg[16]_i_1_n_4 ;
  wire \rTimeoutCnt_reg[16]_i_1_n_5 ;
  wire \rTimeoutCnt_reg[16]_i_1_n_6 ;
  wire \rTimeoutCnt_reg[16]_i_1_n_7 ;
  wire \rTimeoutCnt_reg[20]_i_1_n_1 ;
  wire \rTimeoutCnt_reg[20]_i_1_n_2 ;
  wire \rTimeoutCnt_reg[20]_i_1_n_3 ;
  wire \rTimeoutCnt_reg[20]_i_1_n_4 ;
  wire \rTimeoutCnt_reg[20]_i_1_n_5 ;
  wire \rTimeoutCnt_reg[20]_i_1_n_6 ;
  wire \rTimeoutCnt_reg[20]_i_1_n_7 ;
  wire \rTimeoutCnt_reg[4]_i_1_n_0 ;
  wire \rTimeoutCnt_reg[4]_i_1_n_1 ;
  wire \rTimeoutCnt_reg[4]_i_1_n_2 ;
  wire \rTimeoutCnt_reg[4]_i_1_n_3 ;
  wire \rTimeoutCnt_reg[4]_i_1_n_4 ;
  wire \rTimeoutCnt_reg[4]_i_1_n_5 ;
  wire \rTimeoutCnt_reg[4]_i_1_n_6 ;
  wire \rTimeoutCnt_reg[4]_i_1_n_7 ;
  wire \rTimeoutCnt_reg[8]_i_1_n_0 ;
  wire \rTimeoutCnt_reg[8]_i_1_n_1 ;
  wire \rTimeoutCnt_reg[8]_i_1_n_2 ;
  wire \rTimeoutCnt_reg[8]_i_1_n_3 ;
  wire \rTimeoutCnt_reg[8]_i_1_n_4 ;
  wire \rTimeoutCnt_reg[8]_i_1_n_5 ;
  wire \rTimeoutCnt_reg[8]_i_1_n_6 ;
  wire \rTimeoutCnt_reg[8]_i_1_n_7 ;
  wire rTimeoutRst;
  wire [7:0]vid_pData;
  wire [3:3]\NLW_rTimeoutCnt_reg[20]_i_1_CO_UNCONNECTED ;

  dvi2rgb_ip_ChannelBond ChannelBondX
       (.D(pDataIn),
        .SR(SR),
        .pAllVld(pAllVld),
        .pAllVldBgnFlag0(pAllVldBgnFlag0),
        .pAllVld_q(pAllVld_q),
        .pC1_reg(pC1_reg),
        .pC1_reg_0(pRdy_2),
        .pDataInRaw(pDataInRaw),
        .pRdy_0(pRdy_0),
        .pRdy_1(pRdy_1),
        .rMMCM_LckdRisingFlag_reg(rMMCM_LckdRisingFlag_reg));
  dvi2rgb_ip_InputSERDES InputSERDES_X
       (.CLKB(CLKB),
        .D(pIDLY_CNT),
        .TMDS_Data_n(TMDS_Data_n),
        .TMDS_Data_p(TMDS_Data_p),
        .out(out),
        .pBitslip(pBitslip),
        .pDataInRaw(pDataInRaw),
        .pIDLY_CE(pIDLY_CE),
        .pIDLY_INC(pIDLY_INC),
        .pIDLY_LD(pIDLY_LD),
        .rMMCM_LckdRisingFlag_reg(rMMCM_LckdRisingFlag_reg),
        .\rMMCM_Reset_q_reg[0] (\rMMCM_Reset_q_reg[0] ));
  dvi2rgb_ip_PhaseAlign PhaseAlignX
       (.D(pDataInRaw[8:0]),
        .SR(pAlignRst),
        .iIn_q_reg(PhaseAlignX_n_4),
        .out(pTimeoutOvf),
        .pAlignErr_q(pAlignErr_q),
        .pAlignErr_q_reg(PhaseAlignX_n_3),
        .pAllVldBgnFlag0(pAllVldBgnFlag0),
        .pAllVld_q(pAllVld_q),
        .pBitslip_reg(PhaseAlignX_n_6),
        .pIDLY_CE(pIDLY_CE),
        .pIDLY_CE_reg_0(pIDLY_CNT),
        .pIDLY_INC(pIDLY_INC),
        .pIDLY_LD(pIDLY_LD),
        .pVld_0(pVld_0),
        .pVld_1(pVld_1),
        .pVld_2(pVld_2),
        .rMMCM_LckdRisingFlag_reg(rMMCM_LckdRisingFlag_reg));
  dvi2rgb_ip_SyncBase SyncBaseOvf
       (.RefClk(RefClk),
        .iIn_q_reg_0(SyncBaseOvf_n_1),
        .iIn_q_reg_1(SyncBaseOvf_n_2),
        .iIn_q_reg_2(SyncBaseOvf_n_3),
        .iIn_q_reg_3(SyncBaseOvf_n_4),
        .\oSyncStages_reg[1] (out),
        .out(pTimeoutOvf),
        .rMMCM_LckdRisingFlag_reg(rMMCM_LckdRisingFlag_reg),
        .\rTimeoutCnt_reg[23] (rTimeoutCnt_reg));
  dvi2rgb_ip_SyncBase__parameterized0 SyncBaseRst
       (.RefClk(RefClk),
        .\oSyncStages_reg[1] (out),
        .out(rTimeoutRst),
        .\pState_reg[2] (PhaseAlignX_n_4),
        .rMMCM_LckdRisingFlag_reg(rMMCM_LckdRisingFlag_reg));
  FDRE pAlignErr_q_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(PhaseAlignX_n_3),
        .Q(pAlignErr_q),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFDDDDD)) 
    pAlignRst_i_1
       (.I0(pRst_n),
        .I1(pBitslip),
        .I2(pBitslipCnt[1]),
        .I3(pBitslipCnt[0]),
        .I4(pAlignRst),
        .O(pAlignRst_i_1_n_0));
  FDPE pAlignRst_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pAlignRst_i_1_n_0),
        .PRE(out),
        .Q(pAlignRst));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \pBitslipCnt[0]_i_1 
       (.I0(pBitslipCnt[0]),
        .I1(pBitslipCnt[1]),
        .I2(pBitslip),
        .O(\pBitslipCnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \pBitslipCnt[1]_i_1 
       (.I0(pBitslipCnt[0]),
        .I1(pBitslipCnt[1]),
        .I2(pBitslip),
        .O(\pBitslipCnt[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pBitslipCnt_reg[0] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(\pBitslipCnt[0]_i_1_n_0 ),
        .Q(pBitslipCnt[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \pBitslipCnt_reg[1] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(\pBitslipCnt[1]_i_1_n_0 ),
        .Q(pBitslipCnt[1]),
        .R(1'b0));
  FDRE pBitslip_reg
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(PhaseAlignX_n_6),
        .Q(pBitslip),
        .R(1'b0));
  FDRE \pDataIn_reg[0] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pDataIn[0]),
        .Q(vid_pData[0]),
        .R(pMeRdy_int_reg));
  FDRE \pDataIn_reg[1] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pDataIn[1]),
        .Q(vid_pData[1]),
        .R(pMeRdy_int_reg));
  FDRE \pDataIn_reg[2] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pDataIn[2]),
        .Q(vid_pData[2]),
        .R(pMeRdy_int_reg));
  FDRE \pDataIn_reg[3] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pDataIn[3]),
        .Q(vid_pData[3]),
        .R(pMeRdy_int_reg));
  FDRE \pDataIn_reg[4] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pDataIn[4]),
        .Q(vid_pData[4]),
        .R(pMeRdy_int_reg));
  FDRE \pDataIn_reg[5] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pDataIn[5]),
        .Q(vid_pData[5]),
        .R(pMeRdy_int_reg));
  FDRE \pDataIn_reg[6] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pDataIn[6]),
        .Q(vid_pData[6]),
        .R(pMeRdy_int_reg));
  FDRE \pDataIn_reg[7] 
       (.C(rMMCM_LckdRisingFlag_reg),
        .CE(1'b1),
        .D(pDataIn[7]),
        .Q(vid_pData[7]),
        .R(pMeRdy_int_reg));
  LUT4 #(
    .INIT(16'hBFFF)) 
    \rTimeoutCnt[0]_i_1 
       (.I0(SyncBaseOvf_n_1),
        .I1(SyncBaseOvf_n_2),
        .I2(SyncBaseOvf_n_3),
        .I3(SyncBaseOvf_n_4),
        .O(\rTimeoutCnt[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[0]_i_3 
       (.I0(rTimeoutCnt_reg[3]),
        .O(\rTimeoutCnt[0]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[0]_i_4 
       (.I0(rTimeoutCnt_reg[2]),
        .O(\rTimeoutCnt[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[0]_i_5 
       (.I0(rTimeoutCnt_reg[1]),
        .O(\rTimeoutCnt[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rTimeoutCnt[0]_i_6 
       (.I0(rTimeoutCnt_reg[0]),
        .O(\rTimeoutCnt[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[12]_i_2 
       (.I0(rTimeoutCnt_reg[15]),
        .O(\rTimeoutCnt[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[12]_i_3 
       (.I0(rTimeoutCnt_reg[14]),
        .O(\rTimeoutCnt[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[12]_i_4 
       (.I0(rTimeoutCnt_reg[13]),
        .O(\rTimeoutCnt[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[12]_i_5 
       (.I0(rTimeoutCnt_reg[12]),
        .O(\rTimeoutCnt[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[16]_i_2 
       (.I0(rTimeoutCnt_reg[19]),
        .O(\rTimeoutCnt[16]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[16]_i_3 
       (.I0(rTimeoutCnt_reg[18]),
        .O(\rTimeoutCnt[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[16]_i_4 
       (.I0(rTimeoutCnt_reg[17]),
        .O(\rTimeoutCnt[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[16]_i_5 
       (.I0(rTimeoutCnt_reg[16]),
        .O(\rTimeoutCnt[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[20]_i_2 
       (.I0(rTimeoutCnt_reg[23]),
        .O(\rTimeoutCnt[20]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[20]_i_3 
       (.I0(rTimeoutCnt_reg[22]),
        .O(\rTimeoutCnt[20]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[20]_i_4 
       (.I0(rTimeoutCnt_reg[21]),
        .O(\rTimeoutCnt[20]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[20]_i_5 
       (.I0(rTimeoutCnt_reg[20]),
        .O(\rTimeoutCnt[20]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[4]_i_2 
       (.I0(rTimeoutCnt_reg[7]),
        .O(\rTimeoutCnt[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[4]_i_3 
       (.I0(rTimeoutCnt_reg[6]),
        .O(\rTimeoutCnt[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[4]_i_4 
       (.I0(rTimeoutCnt_reg[5]),
        .O(\rTimeoutCnt[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[4]_i_5 
       (.I0(rTimeoutCnt_reg[4]),
        .O(\rTimeoutCnt[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[8]_i_2 
       (.I0(rTimeoutCnt_reg[11]),
        .O(\rTimeoutCnt[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[8]_i_3 
       (.I0(rTimeoutCnt_reg[10]),
        .O(\rTimeoutCnt[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[8]_i_4 
       (.I0(rTimeoutCnt_reg[9]),
        .O(\rTimeoutCnt[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rTimeoutCnt[8]_i_5 
       (.I0(rTimeoutCnt_reg[8]),
        .O(\rTimeoutCnt[8]_i_5_n_0 ));
  FDRE \rTimeoutCnt_reg[0] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1_n_0 ),
        .D(\rTimeoutCnt_reg[0]_i_2_n_7 ),
        .Q(rTimeoutCnt_reg[0]),
        .R(rTimeoutRst));
  CARRY4 \rTimeoutCnt_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\rTimeoutCnt_reg[0]_i_2_n_0 ,\rTimeoutCnt_reg[0]_i_2_n_1 ,\rTimeoutCnt_reg[0]_i_2_n_2 ,\rTimeoutCnt_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\rTimeoutCnt_reg[0]_i_2_n_4 ,\rTimeoutCnt_reg[0]_i_2_n_5 ,\rTimeoutCnt_reg[0]_i_2_n_6 ,\rTimeoutCnt_reg[0]_i_2_n_7 }),
        .S({\rTimeoutCnt[0]_i_3_n_0 ,\rTimeoutCnt[0]_i_4_n_0 ,\rTimeoutCnt[0]_i_5_n_0 ,\rTimeoutCnt[0]_i_6_n_0 }));
  FDRE \rTimeoutCnt_reg[10] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1_n_0 ),
        .D(\rTimeoutCnt_reg[8]_i_1_n_5 ),
        .Q(rTimeoutCnt_reg[10]),
        .R(rTimeoutRst));
  FDRE \rTimeoutCnt_reg[11] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1_n_0 ),
        .D(\rTimeoutCnt_reg[8]_i_1_n_4 ),
        .Q(rTimeoutCnt_reg[11]),
        .R(rTimeoutRst));
  FDRE \rTimeoutCnt_reg[12] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1_n_0 ),
        .D(\rTimeoutCnt_reg[12]_i_1_n_7 ),
        .Q(rTimeoutCnt_reg[12]),
        .R(rTimeoutRst));
  CARRY4 \rTimeoutCnt_reg[12]_i_1 
       (.CI(\rTimeoutCnt_reg[8]_i_1_n_0 ),
        .CO({\rTimeoutCnt_reg[12]_i_1_n_0 ,\rTimeoutCnt_reg[12]_i_1_n_1 ,\rTimeoutCnt_reg[12]_i_1_n_2 ,\rTimeoutCnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rTimeoutCnt_reg[12]_i_1_n_4 ,\rTimeoutCnt_reg[12]_i_1_n_5 ,\rTimeoutCnt_reg[12]_i_1_n_6 ,\rTimeoutCnt_reg[12]_i_1_n_7 }),
        .S({\rTimeoutCnt[12]_i_2_n_0 ,\rTimeoutCnt[12]_i_3_n_0 ,\rTimeoutCnt[12]_i_4_n_0 ,\rTimeoutCnt[12]_i_5_n_0 }));
  FDRE \rTimeoutCnt_reg[13] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1_n_0 ),
        .D(\rTimeoutCnt_reg[12]_i_1_n_6 ),
        .Q(rTimeoutCnt_reg[13]),
        .R(rTimeoutRst));
  FDRE \rTimeoutCnt_reg[14] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1_n_0 ),
        .D(\rTimeoutCnt_reg[12]_i_1_n_5 ),
        .Q(rTimeoutCnt_reg[14]),
        .R(rTimeoutRst));
  FDRE \rTimeoutCnt_reg[15] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1_n_0 ),
        .D(\rTimeoutCnt_reg[12]_i_1_n_4 ),
        .Q(rTimeoutCnt_reg[15]),
        .R(rTimeoutRst));
  FDRE \rTimeoutCnt_reg[16] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1_n_0 ),
        .D(\rTimeoutCnt_reg[16]_i_1_n_7 ),
        .Q(rTimeoutCnt_reg[16]),
        .R(rTimeoutRst));
  CARRY4 \rTimeoutCnt_reg[16]_i_1 
       (.CI(\rTimeoutCnt_reg[12]_i_1_n_0 ),
        .CO({\rTimeoutCnt_reg[16]_i_1_n_0 ,\rTimeoutCnt_reg[16]_i_1_n_1 ,\rTimeoutCnt_reg[16]_i_1_n_2 ,\rTimeoutCnt_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rTimeoutCnt_reg[16]_i_1_n_4 ,\rTimeoutCnt_reg[16]_i_1_n_5 ,\rTimeoutCnt_reg[16]_i_1_n_6 ,\rTimeoutCnt_reg[16]_i_1_n_7 }),
        .S({\rTimeoutCnt[16]_i_2_n_0 ,\rTimeoutCnt[16]_i_3_n_0 ,\rTimeoutCnt[16]_i_4_n_0 ,\rTimeoutCnt[16]_i_5_n_0 }));
  FDRE \rTimeoutCnt_reg[17] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1_n_0 ),
        .D(\rTimeoutCnt_reg[16]_i_1_n_6 ),
        .Q(rTimeoutCnt_reg[17]),
        .R(rTimeoutRst));
  FDRE \rTimeoutCnt_reg[18] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1_n_0 ),
        .D(\rTimeoutCnt_reg[16]_i_1_n_5 ),
        .Q(rTimeoutCnt_reg[18]),
        .R(rTimeoutRst));
  FDRE \rTimeoutCnt_reg[19] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1_n_0 ),
        .D(\rTimeoutCnt_reg[16]_i_1_n_4 ),
        .Q(rTimeoutCnt_reg[19]),
        .R(rTimeoutRst));
  FDRE \rTimeoutCnt_reg[1] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1_n_0 ),
        .D(\rTimeoutCnt_reg[0]_i_2_n_6 ),
        .Q(rTimeoutCnt_reg[1]),
        .R(rTimeoutRst));
  FDRE \rTimeoutCnt_reg[20] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1_n_0 ),
        .D(\rTimeoutCnt_reg[20]_i_1_n_7 ),
        .Q(rTimeoutCnt_reg[20]),
        .R(rTimeoutRst));
  CARRY4 \rTimeoutCnt_reg[20]_i_1 
       (.CI(\rTimeoutCnt_reg[16]_i_1_n_0 ),
        .CO({\NLW_rTimeoutCnt_reg[20]_i_1_CO_UNCONNECTED [3],\rTimeoutCnt_reg[20]_i_1_n_1 ,\rTimeoutCnt_reg[20]_i_1_n_2 ,\rTimeoutCnt_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rTimeoutCnt_reg[20]_i_1_n_4 ,\rTimeoutCnt_reg[20]_i_1_n_5 ,\rTimeoutCnt_reg[20]_i_1_n_6 ,\rTimeoutCnt_reg[20]_i_1_n_7 }),
        .S({\rTimeoutCnt[20]_i_2_n_0 ,\rTimeoutCnt[20]_i_3_n_0 ,\rTimeoutCnt[20]_i_4_n_0 ,\rTimeoutCnt[20]_i_5_n_0 }));
  FDRE \rTimeoutCnt_reg[21] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1_n_0 ),
        .D(\rTimeoutCnt_reg[20]_i_1_n_6 ),
        .Q(rTimeoutCnt_reg[21]),
        .R(rTimeoutRst));
  FDRE \rTimeoutCnt_reg[22] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1_n_0 ),
        .D(\rTimeoutCnt_reg[20]_i_1_n_5 ),
        .Q(rTimeoutCnt_reg[22]),
        .R(rTimeoutRst));
  FDRE \rTimeoutCnt_reg[23] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1_n_0 ),
        .D(\rTimeoutCnt_reg[20]_i_1_n_4 ),
        .Q(rTimeoutCnt_reg[23]),
        .R(rTimeoutRst));
  FDRE \rTimeoutCnt_reg[2] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1_n_0 ),
        .D(\rTimeoutCnt_reg[0]_i_2_n_5 ),
        .Q(rTimeoutCnt_reg[2]),
        .R(rTimeoutRst));
  FDRE \rTimeoutCnt_reg[3] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1_n_0 ),
        .D(\rTimeoutCnt_reg[0]_i_2_n_4 ),
        .Q(rTimeoutCnt_reg[3]),
        .R(rTimeoutRst));
  FDRE \rTimeoutCnt_reg[4] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1_n_0 ),
        .D(\rTimeoutCnt_reg[4]_i_1_n_7 ),
        .Q(rTimeoutCnt_reg[4]),
        .R(rTimeoutRst));
  CARRY4 \rTimeoutCnt_reg[4]_i_1 
       (.CI(\rTimeoutCnt_reg[0]_i_2_n_0 ),
        .CO({\rTimeoutCnt_reg[4]_i_1_n_0 ,\rTimeoutCnt_reg[4]_i_1_n_1 ,\rTimeoutCnt_reg[4]_i_1_n_2 ,\rTimeoutCnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rTimeoutCnt_reg[4]_i_1_n_4 ,\rTimeoutCnt_reg[4]_i_1_n_5 ,\rTimeoutCnt_reg[4]_i_1_n_6 ,\rTimeoutCnt_reg[4]_i_1_n_7 }),
        .S({\rTimeoutCnt[4]_i_2_n_0 ,\rTimeoutCnt[4]_i_3_n_0 ,\rTimeoutCnt[4]_i_4_n_0 ,\rTimeoutCnt[4]_i_5_n_0 }));
  FDRE \rTimeoutCnt_reg[5] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1_n_0 ),
        .D(\rTimeoutCnt_reg[4]_i_1_n_6 ),
        .Q(rTimeoutCnt_reg[5]),
        .R(rTimeoutRst));
  FDRE \rTimeoutCnt_reg[6] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1_n_0 ),
        .D(\rTimeoutCnt_reg[4]_i_1_n_5 ),
        .Q(rTimeoutCnt_reg[6]),
        .R(rTimeoutRst));
  FDRE \rTimeoutCnt_reg[7] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1_n_0 ),
        .D(\rTimeoutCnt_reg[4]_i_1_n_4 ),
        .Q(rTimeoutCnt_reg[7]),
        .R(rTimeoutRst));
  FDRE \rTimeoutCnt_reg[8] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1_n_0 ),
        .D(\rTimeoutCnt_reg[8]_i_1_n_7 ),
        .Q(rTimeoutCnt_reg[8]),
        .R(rTimeoutRst));
  CARRY4 \rTimeoutCnt_reg[8]_i_1 
       (.CI(\rTimeoutCnt_reg[4]_i_1_n_0 ),
        .CO({\rTimeoutCnt_reg[8]_i_1_n_0 ,\rTimeoutCnt_reg[8]_i_1_n_1 ,\rTimeoutCnt_reg[8]_i_1_n_2 ,\rTimeoutCnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rTimeoutCnt_reg[8]_i_1_n_4 ,\rTimeoutCnt_reg[8]_i_1_n_5 ,\rTimeoutCnt_reg[8]_i_1_n_6 ,\rTimeoutCnt_reg[8]_i_1_n_7 }),
        .S({\rTimeoutCnt[8]_i_2_n_0 ,\rTimeoutCnt[8]_i_3_n_0 ,\rTimeoutCnt[8]_i_4_n_0 ,\rTimeoutCnt[8]_i_5_n_0 }));
  FDRE \rTimeoutCnt_reg[9] 
       (.C(RefClk),
        .CE(\rTimeoutCnt[0]_i_1_n_0 ),
        .D(\rTimeoutCnt_reg[8]_i_1_n_6 ),
        .Q(rTimeoutCnt_reg[9]),
        .R(rTimeoutRst));
endmodule

(* ORIG_REF_NAME = "TWI_SlaveCtl" *) 
module dvi2rgb_ip_TWI_SlaveCtl
   (sI2C_End,
    sI2C_Done,
    rd_wrn_reg_0,
    DDC_SDA_T,
    E,
    D,
    RefClk,
    Q,
    sState,
    \sAddr_reg[6] ,
    \sState_reg[0] ,
    \sAddr_reg[3] ,
    \sAddr_reg[4] ,
    DDC_SDA_I,
    DDC_SCL_I);
  output sI2C_End;
  output sI2C_Done;
  output rd_wrn_reg_0;
  output DDC_SDA_T;
  output [0:0]E;
  output [6:0]D;
  input RefClk;
  input [7:0]Q;
  input [1:0]sState;
  input [6:0]\sAddr_reg[6] ;
  input \sState_reg[0] ;
  input \sAddr_reg[3] ;
  input \sAddr_reg[4] ;
  input DDC_SDA_I;
  input DDC_SCL_I;

  wire [6:0]D;
  wire DDC_SCL_I;
  wire DDC_SDA_I;
  wire DDC_SDA_T;
  wire DONE_O_i_2_n_0;
  wire DONE_O_i_3_n_0;
  wire DONE_O_i_5_n_0;
  wire [0:0]E;
  wire \FSM_gray_state[0]_i_1_n_0 ;
  wire \FSM_gray_state[0]_i_2_n_0 ;
  wire \FSM_gray_state[0]_i_4_n_0 ;
  wire \FSM_gray_state[0]_i_6_n_0 ;
  wire \FSM_gray_state[0]_i_7_n_0 ;
  wire \FSM_gray_state[1]_i_1_n_0 ;
  wire \FSM_gray_state[1]_i_3_n_0 ;
  wire \FSM_gray_state[1]_i_4_n_0 ;
  wire \FSM_gray_state[1]_i_5_n_0 ;
  wire \FSM_gray_state[1]_i_6_n_0 ;
  wire \FSM_gray_state[2]_i_1_n_0 ;
  wire \FSM_gray_state[2]_i_2_n_0 ;
  wire \FSM_gray_state[2]_i_3_n_0 ;
  wire \FSM_gray_state[2]_i_4_n_0 ;
  wire \FSM_gray_state[2]_i_5_n_0 ;
  wire \FSM_gray_state[2]_i_6_n_0 ;
  wire \FSM_gray_state_reg[1]_i_2_n_0 ;
  wire GlitchF_SCL_n_0;
  wire GlitchF_SCL_n_1;
  wire [7:0]Q;
  wire RefClk;
  wire SyncSCL_n_1;
  wire SyncSDA_n_1;
  wire \bitCount[0]_i_1_n_0 ;
  wire \bitCount[1]_i_1_n_0 ;
  wire \bitCount[2]_i_1_n_0 ;
  wire \bitCount[2]_i_2_n_0 ;
  wire \bitCount_reg_n_0_[0] ;
  wire \bitCount_reg_n_0_[1] ;
  wire \bitCount_reg_n_0_[2] ;
  wire dScl;
  wire dSda;
  wire \dataByte[0]_i_1_n_0 ;
  wire \dataByte[1]_i_1_n_0 ;
  wire \dataByte[2]_i_1_n_0 ;
  wire \dataByte[3]_i_1_n_0 ;
  wire \dataByte[4]_i_1_n_0 ;
  wire \dataByte[5]_i_1_n_0 ;
  wire \dataByte[6]_i_1_n_0 ;
  wire \dataByte[7]_i_1_n_0 ;
  wire \dataByte[7]_i_2_n_0 ;
  wire \dataByte[7]_i_3_n_0 ;
  wire \dataByte[7]_i_4_n_0 ;
  wire \dataByte[7]_i_5_n_0 ;
  wire \dataByte_reg_n_0_[0] ;
  wire \dataByte_reg_n_0_[1] ;
  wire \dataByte_reg_n_0_[2] ;
  wire \dataByte_reg_n_0_[3] ;
  wire \dataByte_reg_n_0_[4] ;
  wire \dataByte_reg_n_0_[5] ;
  wire \dataByte_reg_n_0_[6] ;
  wire \dataByte_reg_n_0_[7] ;
  wire ddScl;
  wire ddSda;
  wire fStart;
  wire fStop;
  wire iDone;
  wire iEnd;
  wire p_0_in6_in;
  wire rd_wrn0;
  wire rd_wrn_i_1_n_0;
  wire rd_wrn_i_2_n_0;
  wire rd_wrn_reg_0;
  wire \sAddr_reg[3] ;
  wire \sAddr_reg[4] ;
  wire [6:0]\sAddr_reg[6] ;
  wire sI2C_Done;
  wire sI2C_End;
  wire sIn_q;
  wire sOut;
  wire sScl;
  wire sSda;
  wire [1:0]sState;
  wire \sState_reg[0] ;
  (* RTL_KEEP = "yes" *) wire [2:0]state;

  LUT4 #(
    .INIT(16'hBFF3)) 
    DDC_SDA_T_INST_0
       (.I0(\dataByte_reg_n_0_[7] ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .O(DDC_SDA_T));
  LUT6 #(
    .INIT(64'hAAAAABAAAAAAAAAA)) 
    DONE_O_i_1
       (.I0(DONE_O_i_2_n_0),
        .I1(\dataByte_reg_n_0_[0] ),
        .I2(\dataByte_reg_n_0_[1] ),
        .I3(\dataByte_reg_n_0_[6] ),
        .I4(DONE_O_i_3_n_0),
        .I5(rd_wrn0),
        .O(iDone));
  LUT6 #(
    .INIT(64'h0000000024000000)) 
    DONE_O_i_2
       (.I0(ddScl),
        .I1(dScl),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[1]),
        .I5(DONE_O_i_5_n_0),
        .O(DONE_O_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    DONE_O_i_3
       (.I0(\dataByte_reg_n_0_[5] ),
        .I1(\dataByte_reg_n_0_[3] ),
        .I2(\dataByte_reg_n_0_[4] ),
        .I3(\dataByte_reg_n_0_[2] ),
        .O(DONE_O_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    DONE_O_i_4
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(DONE_O_i_5_n_0),
        .I4(dScl),
        .I5(ddScl),
        .O(rd_wrn0));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    DONE_O_i_5
       (.I0(\bitCount_reg_n_0_[2] ),
        .I1(\bitCount_reg_n_0_[1] ),
        .I2(\bitCount_reg_n_0_[0] ),
        .O(DONE_O_i_5_n_0));
  FDRE DONE_O_reg
       (.C(RefClk),
        .CE(1'b1),
        .D(iDone),
        .Q(sI2C_Done),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT5 #(
    .INIT(32'h6600E600)) 
    END_O_i_1
       (.I0(dSda),
        .I1(ddSda),
        .I2(p_0_in6_in),
        .I3(dScl),
        .I4(ddScl),
        .O(iEnd));
  LUT3 #(
    .INIT(8'h04)) 
    END_O_i_2
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .O(p_0_in6_in));
  FDRE END_O_reg
       (.C(RefClk),
        .CE(1'b1),
        .D(iEnd),
        .Q(sI2C_End),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \FSM_gray_state[0]_i_1 
       (.I0(\FSM_gray_state[0]_i_2_n_0 ),
        .I1(fStop),
        .I2(\FSM_gray_state[0]_i_4_n_0 ),
        .I3(\FSM_gray_state[2]_i_3_n_0 ),
        .I4(state[0]),
        .O(\FSM_gray_state[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \FSM_gray_state[0]_i_2 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .O(\FSM_gray_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \FSM_gray_state[0]_i_3 
       (.I0(dSda),
        .I1(dScl),
        .I2(ddSda),
        .O(fStop));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \FSM_gray_state[0]_i_4 
       (.I0(fStart),
        .I1(state[1]),
        .I2(\FSM_gray_state[0]_i_6_n_0 ),
        .I3(state[0]),
        .I4(\FSM_gray_state[0]_i_7_n_0 ),
        .O(\FSM_gray_state[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \FSM_gray_state[0]_i_5 
       (.I0(ddSda),
        .I1(dScl),
        .I2(dSda),
        .O(fStart));
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_gray_state[0]_i_6 
       (.I0(\dataByte_reg_n_0_[2] ),
        .I1(\FSM_gray_state[1]_i_6_n_0 ),
        .I2(state[2]),
        .O(\FSM_gray_state[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCFCFFFCFBBBBFBBB)) 
    \FSM_gray_state[0]_i_7 
       (.I0(rd_wrn_reg_0),
        .I1(state[1]),
        .I2(ddSda),
        .I3(dScl),
        .I4(dSda),
        .I5(state[2]),
        .O(\FSM_gray_state[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8AAAFFFF8AAA0000)) 
    \FSM_gray_state[1]_i_1 
       (.I0(\FSM_gray_state_reg[1]_i_2_n_0 ),
        .I1(ddSda),
        .I2(dScl),
        .I3(dSda),
        .I4(\FSM_gray_state[2]_i_3_n_0 ),
        .I5(state[1]),
        .O(\FSM_gray_state[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBB3BAA2A)) 
    \FSM_gray_state[1]_i_3 
       (.I0(state[1]),
        .I1(ddSda),
        .I2(dScl),
        .I3(dSda),
        .I4(state[2]),
        .O(\FSM_gray_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000101F1010)) 
    \FSM_gray_state[1]_i_4 
       (.I0(fStart),
        .I1(\FSM_gray_state[1]_i_5_n_0 ),
        .I2(state[1]),
        .I3(\dataByte_reg_n_0_[2] ),
        .I4(\FSM_gray_state[1]_i_6_n_0 ),
        .I5(state[2]),
        .O(\FSM_gray_state[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_gray_state[1]_i_5 
       (.I0(sState[0]),
        .I1(sState[1]),
        .O(\FSM_gray_state[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \FSM_gray_state[1]_i_6 
       (.I0(\dataByte_reg_n_0_[6] ),
        .I1(\dataByte_reg_n_0_[0] ),
        .I2(\dataByte_reg_n_0_[5] ),
        .I3(\dataByte_reg_n_0_[1] ),
        .I4(\dataByte_reg_n_0_[3] ),
        .I5(\dataByte_reg_n_0_[4] ),
        .O(\FSM_gray_state[1]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_gray_state[2]_i_1 
       (.I0(\FSM_gray_state[2]_i_2_n_0 ),
        .I1(\FSM_gray_state[2]_i_3_n_0 ),
        .I2(state[2]),
        .O(\FSM_gray_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8400848600868486)) 
    \FSM_gray_state[2]_i_2 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(ddSda),
        .I4(dScl),
        .I5(dSda),
        .O(\FSM_gray_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \FSM_gray_state[2]_i_3 
       (.I0(\FSM_gray_state[2]_i_4_n_0 ),
        .I1(state[1]),
        .I2(\FSM_gray_state[2]_i_5_n_0 ),
        .I3(state[2]),
        .I4(state[0]),
        .I5(\FSM_gray_state[2]_i_6_n_0 ),
        .O(\FSM_gray_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0FF00FF077770000)) 
    \FSM_gray_state[2]_i_4 
       (.I0(DONE_O_i_5_n_0),
        .I1(state[2]),
        .I2(ddSda),
        .I3(dSda),
        .I4(ddScl),
        .I5(dScl),
        .O(\FSM_gray_state[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000100)) 
    \FSM_gray_state[2]_i_5 
       (.I0(\bitCount_reg_n_0_[2] ),
        .I1(\bitCount_reg_n_0_[1] ),
        .I2(\bitCount_reg_n_0_[0] ),
        .I3(dScl),
        .I4(ddScl),
        .I5(fStop),
        .O(\FSM_gray_state[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8FBC0CC)) 
    \FSM_gray_state[2]_i_6 
       (.I0(rd_wrn_i_2_n_0),
        .I1(state[1]),
        .I2(fStop),
        .I3(\dataByte[7]_i_5_n_0 ),
        .I4(state[2]),
        .I5(fStart),
        .O(\FSM_gray_state[2]_i_6_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \FSM_gray_state_reg[0] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\FSM_gray_state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \FSM_gray_state_reg[1] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\FSM_gray_state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(1'b0));
  MUXF7 \FSM_gray_state_reg[1]_i_2 
       (.I0(\FSM_gray_state[1]_i_3_n_0 ),
        .I1(\FSM_gray_state[1]_i_4_n_0 ),
        .O(\FSM_gray_state_reg[1]_i_2_n_0 ),
        .S(state[0]));
  (* KEEP = "yes" *) 
  FDRE \FSM_gray_state_reg[2] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\FSM_gray_state[2]_i_1_n_0 ),
        .Q(state[2]),
        .R(1'b0));
  dvi2rgb_ip_GlitchFilter GlitchF_SCL
       (.\Filter.sOut_reg_0 (GlitchF_SCL_n_0),
        .RefClk(RefClk),
        .SR(SyncSCL_n_1),
        .dScl_reg(GlitchF_SCL_n_1),
        .out(sScl));
  dvi2rgb_ip_GlitchFilter_6 GlitchF_SDA
       (.RefClk(RefClk),
        .SR(SyncSDA_n_1),
        .out(sSda),
        .sIn_q(sIn_q),
        .sOut(sOut));
  dvi2rgb_ip_SyncAsync_7 SyncSCL
       (.DDC_SCL_I(DDC_SCL_I),
        .\Filter.sIn_q_reg (GlitchF_SCL_n_0),
        .RefClk(RefClk),
        .SR(SyncSCL_n_1),
        .out(sScl));
  dvi2rgb_ip_SyncAsync_8 SyncSDA
       (.DDC_SDA_I(DDC_SDA_I),
        .RefClk(RefClk),
        .SR(SyncSDA_n_1),
        .out(sSda),
        .sIn_q(sIn_q));
  LUT3 #(
    .INIT(8'h6F)) 
    \bitCount[0]_i_1 
       (.I0(\bitCount_reg_n_0_[0] ),
        .I1(\bitCount[2]_i_2_n_0 ),
        .I2(\dataByte[7]_i_3_n_0 ),
        .O(\bitCount[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'hA6FF)) 
    \bitCount[1]_i_1 
       (.I0(\bitCount_reg_n_0_[1] ),
        .I1(\bitCount[2]_i_2_n_0 ),
        .I2(\bitCount_reg_n_0_[0] ),
        .I3(\dataByte[7]_i_3_n_0 ),
        .O(\bitCount[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT5 #(
    .INIT(32'hAAA6FFFF)) 
    \bitCount[2]_i_1 
       (.I0(\bitCount_reg_n_0_[2] ),
        .I1(\bitCount[2]_i_2_n_0 ),
        .I2(\bitCount_reg_n_0_[1] ),
        .I3(\bitCount_reg_n_0_[0] ),
        .I4(\dataByte[7]_i_3_n_0 ),
        .O(\bitCount[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00804200)) 
    \bitCount[2]_i_2 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(dScl),
        .I4(ddScl),
        .O(\bitCount[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \bitCount_reg[0] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\bitCount[0]_i_1_n_0 ),
        .Q(\bitCount_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \bitCount_reg[1] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\bitCount[1]_i_1_n_0 ),
        .Q(\bitCount_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \bitCount_reg[2] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\bitCount[2]_i_1_n_0 ),
        .Q(\bitCount_reg_n_0_[2] ),
        .R(1'b0));
  FDRE dScl_reg
       (.C(RefClk),
        .CE(1'b1),
        .D(GlitchF_SCL_n_1),
        .Q(dScl),
        .R(1'b0));
  FDRE dSda_reg
       (.C(RefClk),
        .CE(1'b1),
        .D(sOut),
        .Q(dSda),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dataByte[0]_i_1 
       (.I0(dSda),
        .I1(\dataByte[7]_i_3_n_0 ),
        .I2(Q[0]),
        .O(\dataByte[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dataByte[1]_i_1 
       (.I0(\dataByte_reg_n_0_[0] ),
        .I1(\dataByte[7]_i_3_n_0 ),
        .I2(Q[1]),
        .O(\dataByte[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dataByte[2]_i_1 
       (.I0(\dataByte_reg_n_0_[1] ),
        .I1(\dataByte[7]_i_3_n_0 ),
        .I2(Q[2]),
        .O(\dataByte[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dataByte[3]_i_1 
       (.I0(\dataByte_reg_n_0_[2] ),
        .I1(\dataByte[7]_i_3_n_0 ),
        .I2(Q[3]),
        .O(\dataByte[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dataByte[4]_i_1 
       (.I0(\dataByte_reg_n_0_[3] ),
        .I1(\dataByte[7]_i_3_n_0 ),
        .I2(Q[4]),
        .O(\dataByte[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dataByte[5]_i_1 
       (.I0(\dataByte_reg_n_0_[4] ),
        .I1(\dataByte[7]_i_3_n_0 ),
        .I2(Q[5]),
        .O(\dataByte[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dataByte[6]_i_1 
       (.I0(\dataByte_reg_n_0_[5] ),
        .I1(\dataByte[7]_i_3_n_0 ),
        .I2(Q[6]),
        .O(\dataByte[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h20044000FFFFFFFF)) 
    \dataByte[7]_i_1 
       (.I0(ddScl),
        .I1(dScl),
        .I2(state[1]),
        .I3(state[2]),
        .I4(state[0]),
        .I5(\dataByte[7]_i_3_n_0 ),
        .O(\dataByte[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dataByte[7]_i_2 
       (.I0(\dataByte_reg_n_0_[6] ),
        .I1(\dataByte[7]_i_3_n_0 ),
        .I2(Q[7]),
        .O(\dataByte[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0E0E0E0E0E0E0E00)) 
    \dataByte[7]_i_3 
       (.I0(\dataByte[7]_i_4_n_0 ),
        .I1(\dataByte[7]_i_5_n_0 ),
        .I2(fStart),
        .I3(state[1]),
        .I4(state[2]),
        .I5(state[0]),
        .O(\dataByte[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF3AF)) 
    \dataByte[7]_i_4 
       (.I0(ddSda),
        .I1(rd_wrn_reg_0),
        .I2(state[2]),
        .I3(state[1]),
        .I4(state[0]),
        .O(\dataByte[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \dataByte[7]_i_5 
       (.I0(dScl),
        .I1(ddScl),
        .O(\dataByte[7]_i_5_n_0 ));
  FDRE \dataByte_reg[0] 
       (.C(RefClk),
        .CE(\dataByte[7]_i_1_n_0 ),
        .D(\dataByte[0]_i_1_n_0 ),
        .Q(\dataByte_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \dataByte_reg[1] 
       (.C(RefClk),
        .CE(\dataByte[7]_i_1_n_0 ),
        .D(\dataByte[1]_i_1_n_0 ),
        .Q(\dataByte_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \dataByte_reg[2] 
       (.C(RefClk),
        .CE(\dataByte[7]_i_1_n_0 ),
        .D(\dataByte[2]_i_1_n_0 ),
        .Q(\dataByte_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \dataByte_reg[3] 
       (.C(RefClk),
        .CE(\dataByte[7]_i_1_n_0 ),
        .D(\dataByte[3]_i_1_n_0 ),
        .Q(\dataByte_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \dataByte_reg[4] 
       (.C(RefClk),
        .CE(\dataByte[7]_i_1_n_0 ),
        .D(\dataByte[4]_i_1_n_0 ),
        .Q(\dataByte_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \dataByte_reg[5] 
       (.C(RefClk),
        .CE(\dataByte[7]_i_1_n_0 ),
        .D(\dataByte[5]_i_1_n_0 ),
        .Q(\dataByte_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \dataByte_reg[6] 
       (.C(RefClk),
        .CE(\dataByte[7]_i_1_n_0 ),
        .D(\dataByte[6]_i_1_n_0 ),
        .Q(\dataByte_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \dataByte_reg[7] 
       (.C(RefClk),
        .CE(\dataByte[7]_i_1_n_0 ),
        .D(\dataByte[7]_i_2_n_0 ),
        .Q(\dataByte_reg_n_0_[7] ),
        .R(1'b0));
  FDRE ddScl_reg
       (.C(RefClk),
        .CE(1'b1),
        .D(dScl),
        .Q(ddScl),
        .R(1'b0));
  FDRE ddSda_reg
       (.C(RefClk),
        .CE(1'b1),
        .D(dSda),
        .Q(ddSda),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    rd_wrn_i_1
       (.I0(dSda),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(rd_wrn_i_2_n_0),
        .I5(rd_wrn_reg_0),
        .O(rd_wrn_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    rd_wrn_i_2
       (.I0(ddScl),
        .I1(dScl),
        .I2(\bitCount_reg_n_0_[0] ),
        .I3(\bitCount_reg_n_0_[1] ),
        .I4(\bitCount_reg_n_0_[2] ),
        .O(rd_wrn_i_2_n_0));
  FDRE rd_wrn_reg
       (.C(RefClk),
        .CE(1'b1),
        .D(rd_wrn_i_1_n_0),
        .Q(rd_wrn_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'h80BF)) 
    \sAddr_rep[0]_i_1 
       (.I0(\dataByte_reg_n_0_[0] ),
        .I1(sState[0]),
        .I2(sState[1]),
        .I3(\sAddr_reg[6] [0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT5 #(
    .INIT(32'h80BFBF80)) 
    \sAddr_rep[1]_i_1 
       (.I0(\dataByte_reg_n_0_[1] ),
        .I1(sState[0]),
        .I2(sState[1]),
        .I3(\sAddr_reg[6] [0]),
        .I4(\sAddr_reg[6] [1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h80BFBF80BF80BF80)) 
    \sAddr_rep[2]_i_1 
       (.I0(\dataByte_reg_n_0_[2] ),
        .I1(sState[0]),
        .I2(sState[1]),
        .I3(\sAddr_reg[6] [2]),
        .I4(\sAddr_reg[6] [1]),
        .I5(\sAddr_reg[6] [0]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h8BB8B8B8B8B8B8B8)) 
    \sAddr_rep[3]_i_1 
       (.I0(\dataByte_reg_n_0_[3] ),
        .I1(\sState_reg[0] ),
        .I2(\sAddr_reg[6] [3]),
        .I3(\sAddr_reg[6] [0]),
        .I4(\sAddr_reg[6] [1]),
        .I5(\sAddr_reg[6] [2]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'h80BFBF80)) 
    \sAddr_rep[4]_i_1 
       (.I0(\dataByte_reg_n_0_[4] ),
        .I1(sState[0]),
        .I2(sState[1]),
        .I3(\sAddr_reg[6] [4]),
        .I4(\sAddr_reg[3] ),
        .O(D[4]));
  LUT5 #(
    .INIT(32'h80BFBF80)) 
    \sAddr_rep[5]_i_1 
       (.I0(\dataByte_reg_n_0_[5] ),
        .I1(sState[0]),
        .I2(sState[1]),
        .I3(\sAddr_reg[6] [5]),
        .I4(\sAddr_reg[4] ),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sAddr_rep[6]_i_1 
       (.I0(sState[0]),
        .I1(sI2C_Done),
        .O(E));
  LUT6 #(
    .INIT(64'h80BFBF80BF80BF80)) 
    \sAddr_rep[6]_i_2 
       (.I0(\dataByte_reg_n_0_[6] ),
        .I1(sState[0]),
        .I2(sState[1]),
        .I3(\sAddr_reg[6] [6]),
        .I4(\sAddr_reg[4] ),
        .I5(\sAddr_reg[6] [5]),
        .O(D[6]));
endmodule

(* ORIG_REF_NAME = "dvi2rgb" *) (* kClkRange = "2" *) (* kEmulateDDC = "TRUE" *) 
(* kIDLY_TapValuePs = "78" *) (* kIDLY_TapWidth = "5" *) (* kRstActiveHigh = "FALSE" *) 
module dvi2rgb_ip_dvi2rgb
   (TMDS_Clk_p,
    TMDS_Clk_n,
    TMDS_Data_p,
    TMDS_Data_n,
    RefClk,
    aRst,
    aRst_n,
    vid_pData,
    vid_pVDE,
    vid_pHSync,
    vid_pVSync,
    PixelClk,
    SerialClk,
    aPixelClkLckd,
    DDC_SDA_I,
    DDC_SDA_O,
    DDC_SDA_T,
    DDC_SCL_I,
    DDC_SCL_O,
    DDC_SCL_T,
    pRst,
    pRst_n);
  input TMDS_Clk_p;
  input TMDS_Clk_n;
  input [2:0]TMDS_Data_p;
  input [2:0]TMDS_Data_n;
  input RefClk;
  input aRst;
  input aRst_n;
  output [23:0]vid_pData;
  output vid_pVDE;
  output vid_pHSync;
  output vid_pVSync;
  output PixelClk;
  output SerialClk;
  output aPixelClkLckd;
  input DDC_SDA_I;
  output DDC_SDA_O;
  output DDC_SDA_T;
  input DDC_SCL_I;
  output DDC_SCL_O;
  output DDC_SCL_T;
  input pRst;
  input pRst_n;

  wire \<const0> ;
  wire \<const1> ;
  wire DDC_SCL_I;
  wire DDC_SDA_I;
  wire DDC_SDA_T;
  wire \DataDecoders[0].DecoderX_n_5 ;
  wire \DataDecoders[1].DecoderX_n_1 ;
  wire \DataDecoders[1].DecoderX_n_2 ;
  wire \DataDecoders[2].DecoderX_n_1 ;
  wire PixelClk;
  wire RefClk;
  wire SerialClk;
  wire TMDS_Clk_n;
  wire TMDS_Clk_p;
  wire TMDS_ClockingX_n_3;
  wire [2:0]TMDS_Data_n;
  wire [2:0]TMDS_Data_p;
  wire aPixelClkLckd;
  wire aRst_n;
  wire pAllVld;
  wire pLockLostRst;
  wire pRdy_0;
  wire pRdy_1;
  wire pRdy_2;
  wire pRst_n;
  wire pVld_0;
  wire pVld_1;
  wire pVld_2;
  wire [23:0]vid_pData;
  wire vid_pHSync;
  wire vid_pVDE;
  wire vid_pVSync;

  assign DDC_SCL_O = \<const0> ;
  assign DDC_SCL_T = \<const1> ;
  assign DDC_SDA_O = \<const0> ;
  dvi2rgb_ip_TMDS_Decoder \DataDecoders[0].DecoderX 
       (.AS(pLockLostRst),
        .CLKB(SerialClk),
        .RefClk(RefClk),
        .SR(\DataDecoders[2].DecoderX_n_1 ),
        .TMDS_Data_n(TMDS_Data_n[0]),
        .TMDS_Data_p(TMDS_Data_p[0]),
        .pAligned_reg(\DataDecoders[1].DecoderX_n_1 ),
        .pAllVld(pAllVld),
        .\pDataIn_reg[7]_0 (\DataDecoders[0].DecoderX_n_5 ),
        .pRdy_0(pRdy_0),
        .pRdy_1(pRdy_1),
        .pRdy_2(pRdy_2),
        .pRst_n(pRst_n),
        .pVld_0(pVld_0),
        .pVld_1(pVld_1),
        .pVld_2(pVld_2),
        .rMMCM_LckdRisingFlag_reg(PixelClk),
        .\rMMCM_Reset_q_reg[0] (SerialClk),
        .vid_pData(vid_pData[15:8]),
        .vid_pHSync(vid_pHSync),
        .vid_pVDE(vid_pVDE),
        .vid_pVSync(vid_pVSync));
  dvi2rgb_ip_TMDS_Decoder_0 \DataDecoders[1].DecoderX 
       (.AS(pLockLostRst),
        .CLKB(SerialClk),
        .RefClk(RefClk),
        .SR(\DataDecoders[1].DecoderX_n_1 ),
        .TMDS_Data_n(TMDS_Data_n[1]),
        .TMDS_Data_p(TMDS_Data_p[1]),
        .pAllVld(pAllVld),
        .\pDataIn_reg[7]_0 (\DataDecoders[1].DecoderX_n_2 ),
        .pMeRdy_int_reg(\DataDecoders[0].DecoderX_n_5 ),
        .pRdy_0(pRdy_0),
        .pRdy_1(pRdy_1),
        .pRdy_2(pRdy_2),
        .pRst_n(pRst_n),
        .pVld_0(pVld_0),
        .pVld_1(pVld_1),
        .pVld_2(pVld_2),
        .rMMCM_LckdRisingFlag_reg(PixelClk),
        .\rMMCM_Reset_q_reg[0] (SerialClk),
        .vid_pData(vid_pData[7:0]));
  dvi2rgb_ip_TMDS_Decoder_1 \DataDecoders[2].DecoderX 
       (.CLKB(SerialClk),
        .RefClk(RefClk),
        .SR(\DataDecoders[1].DecoderX_n_1 ),
        .TMDS_Data_n(TMDS_Data_n[2]),
        .TMDS_Data_p(TMDS_Data_p[2]),
        .out(pLockLostRst),
        .pAllVld(pAllVld),
        .pC1_reg(\DataDecoders[2].DecoderX_n_1 ),
        .pMeRdy_int_reg(\DataDecoders[1].DecoderX_n_2 ),
        .pRdy_0(pRdy_0),
        .pRdy_1(pRdy_1),
        .pRdy_2(pRdy_2),
        .pRst_n(pRst_n),
        .pVld_0(pVld_0),
        .pVld_1(pVld_1),
        .pVld_2(pVld_2),
        .rMMCM_LckdRisingFlag_reg(PixelClk),
        .\rMMCM_Reset_q_reg[0] (SerialClk),
        .vid_pData(vid_pData[23:16]));
  GND GND
       (.G(\<const0> ));
  dvi2rgb_ip_EEPROM_8b \GenerateDDC.DDC_EEPROM 
       (.DDC_SCL_I(DDC_SCL_I),
        .DDC_SDA_I(DDC_SDA_I),
        .DDC_SDA_T(DDC_SDA_T),
        .RefClk(RefClk));
  dvi2rgb_ip_ResetBridge LockLostReset
       (.aLocked_reg(TMDS_ClockingX_n_3),
        .out(pLockLostRst),
        .rMMCM_LckdRisingFlag_reg(PixelClk));
  dvi2rgb_ip_TMDS_Clocking TMDS_ClockingX
       (.PixelClk(PixelClk),
        .RefClk(RefClk),
        .TMDS_Clk_n(TMDS_Clk_n),
        .TMDS_Clk_p(TMDS_Clk_p),
        .aPixelClkLckd(aPixelClkLckd),
        .aRst_n(aRst_n),
        .\oSyncStages_reg[0] (TMDS_ClockingX_n_3),
        .\pDataQ_reg[8] (SerialClk));
  VCC VCC
       (.P(\<const1> ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

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

endmodule
`endif
