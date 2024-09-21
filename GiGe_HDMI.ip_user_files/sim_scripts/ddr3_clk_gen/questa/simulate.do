onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib ddr3_clk_gen_opt

do {wave.do}

view wave
view structure
view signals

do {ddr3_clk_gen.udo}

run -all

quit -force
