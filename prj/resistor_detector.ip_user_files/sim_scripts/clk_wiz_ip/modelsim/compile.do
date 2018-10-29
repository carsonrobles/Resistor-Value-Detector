vlib work
vlib msim

vlib msim/xil_defaultlib

vmap xil_defaultlib msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../../../src/ip/clk_wiz_ip/clk_wiz_ip_clk_wiz.v" \
"../../../../../src/ip/clk_wiz_ip/clk_wiz_ip.v" \


vlog -work xil_defaultlib "glbl.v"

