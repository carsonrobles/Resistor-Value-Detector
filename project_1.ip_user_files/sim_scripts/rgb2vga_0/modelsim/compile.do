vlib work
vlib msim

vlib msim/xil_defaultlib

vmap xil_defaultlib msim/xil_defaultlib

vcom -work xil_defaultlib -64 -93 \
"../../../../project_1.srcs/sources_1/ip/rgb2vga_0/src/rgb2vga.vhd" \
"../../../../project_1.srcs/sources_1/ip/rgb2vga_0/sim/rgb2vga_0.vhd" \


