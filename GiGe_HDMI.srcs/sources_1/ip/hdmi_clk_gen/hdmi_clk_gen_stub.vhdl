-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Wed Aug 21 23:06:45 2024
-- Host        : DESKTOP-F7R7CT8 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/fpga_image/vivadoproject_2019.2/GiGe_HDMI/GiGe_HDMI.srcs/sources_1/ip/hdmi_clk_gen/hdmi_clk_gen_stub.vhdl
-- Design      : hdmi_clk_gen
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity hdmi_clk_gen is
  Port ( 
    p1_clk : out STD_LOGIC;
    clk1x : out STD_LOGIC;
    clk5x : out STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end hdmi_clk_gen;

architecture stub of hdmi_clk_gen is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "p1_clk,clk1x,clk5x,locked,clk_in1";
begin
end;
