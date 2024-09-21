vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr "+incdir+../../../ipstatic" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/clk_125_gen/clk_125_gen_clk_wiz.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/clk_125_gen/clk_125_gen.v" \


vlog -work xil_defaultlib \
"glbl.v"

