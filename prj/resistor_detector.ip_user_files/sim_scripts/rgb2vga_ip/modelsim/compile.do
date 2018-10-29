vlib work
vlib msim

vlib msim/xil_defaultlib

vmap xil_defaultlib msim/xil_defaultlib

vcom -work xil_defaultlib -64 -93 \
"../../../../../src/ip/rgb2vga_ip/src/rgb2vga.vhd" \
"../../../../../src/ip/rgb2vga_ip/sim/rgb2vga_ip.vhd" \


