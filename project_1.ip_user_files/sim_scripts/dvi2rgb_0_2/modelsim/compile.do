vlib work
vlib msim

vlib msim/xil_defaultlib

vmap xil_defaultlib msim/xil_defaultlib

vcom -work xil_defaultlib -64 -93 \
"../../../../project_1.srcs/sources_1/ip/dvi2rgb_0_2/src/SyncBase.vhd" \
"../../../../project_1.srcs/sources_1/ip/dvi2rgb_0_2/src/EEPROM_8b.vhd" \
"../../../../project_1.srcs/sources_1/ip/dvi2rgb_0_2/src/TWI_SlaveCtl.vhd" \
"../../../../project_1.srcs/sources_1/ip/dvi2rgb_0_2/src/GlitchFilter.vhd" \
"../../../../project_1.srcs/sources_1/ip/dvi2rgb_0_2/src/SyncAsync.vhd" \
"../../../../project_1.srcs/sources_1/ip/dvi2rgb_0_2/src/DVI_Constants.vhd" \
"../../../../project_1.srcs/sources_1/ip/dvi2rgb_0_2/src/SyncAsyncReset.vhd" \
"../../../../project_1.srcs/sources_1/ip/dvi2rgb_0_2/src/PhaseAlign.vhd" \
"../../../../project_1.srcs/sources_1/ip/dvi2rgb_0_2/src/InputSERDES.vhd" \
"../../../../project_1.srcs/sources_1/ip/dvi2rgb_0_2/src/ChannelBond.vhd" \
"../../../../project_1.srcs/sources_1/ip/dvi2rgb_0_2/src/TMDS_Decoder.vhd" \
"../../../../project_1.srcs/sources_1/ip/dvi2rgb_0_2/src/TMDS_Clocking.vhd" \
"../../../../project_1.srcs/sources_1/ip/dvi2rgb_0_2/src/dvi2rgb.vhd" \
"../../../../project_1.srcs/sources_1/ip/dvi2rgb_0_2/sim/dvi2rgb_0.vhd" \


