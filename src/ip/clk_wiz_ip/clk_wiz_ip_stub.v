// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.4 (lin64) Build 1412921 Wed Nov 18 09:44:32 MST 2015
// Date        : Sun Oct 28 21:15:12 2018
// Host        : ubuntu running 64-bit Ubuntu 16.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/carson/poly/cpe439/Resistor-Value-Detector/src/ip/clk_wiz_ip/clk_wiz_ip_stub.v
// Design      : clk_wiz_ip
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clk_wiz_ip(clk_i, clk_o, reset, locked)
/* synthesis syn_black_box black_box_pad_pin="clk_i,clk_o,reset,locked" */;
  input clk_i;
  output clk_o;
  input reset;
  output locked;
endmodule
