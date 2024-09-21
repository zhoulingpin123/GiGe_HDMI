// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Wed Aug 21 23:06:45 2024
// Host        : DESKTOP-F7R7CT8 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/fpga_image/vivadoproject_2019.2/GiGe_HDMI/GiGe_HDMI.srcs/sources_1/ip/hdmi_clk_gen/hdmi_clk_gen_stub.v
// Design      : hdmi_clk_gen
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module hdmi_clk_gen(p1_clk, clk1x, clk5x, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="p1_clk,clk1x,clk5x,locked,clk_in1" */;
  output p1_clk;
  output clk1x;
  output clk5x;
  output locked;
  input clk_in1;
endmodule
