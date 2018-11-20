// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Mon Nov 19 16:47:18 2018
// Host        : ubuntu running 64-bit Ubuntu 18.04.1 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/carson/poly/CPE439/Resistor-Value-Detector/src/ip/blk_mem_gen_ip/blk_mem_gen_ip_stub.v
// Design      : blk_mem_gen_ip
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_1,Vivado 2018.2" *)
module blk_mem_gen_ip(clka, ena, wea, addra, dina, douta, clkb, enb, web, addrb, 
  dinb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,wea[0:0],addra[11:0],dina[23:0],douta[23:0],clkb,enb,web[0:0],addrb[11:0],dinb[23:0],doutb[23:0]" */;
  input clka;
  input ena;
  input [0:0]wea;
  input [11:0]addra;
  input [23:0]dina;
  output [23:0]douta;
  input clkb;
  input enb;
  input [0:0]web;
  input [11:0]addrb;
  input [23:0]dinb;
  output [23:0]doutb;
endmodule
