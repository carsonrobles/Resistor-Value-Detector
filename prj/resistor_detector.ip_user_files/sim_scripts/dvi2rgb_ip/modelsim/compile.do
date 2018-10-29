vlib work
vlib msim

vlib msim/xil_defaultlib

vmap xil_defaultlib msim/xil_defaultlib

vcom -work xil_defaultlib -64 -93 \
"../../../../../src/ip/dvi2rgb_ip/src/SyncBase.vhd" \
"../../../../../src/ip/dvi2rgb_ip/src/EEPROM_8b.vhd" \
"../../../../../src/ip/dvi2rgb_ip/src/TWI_SlaveCtl.vhd" \
"../../../../../src/ip/dvi2rgb_ip/src/GlitchFilter.vhd" \
"../../../../../src/ip/dvi2rgb_ip/src/SyncAsync.vhd" \
"../../../../../src/ip/dvi2rgb_ip/src/DVI_Constants.vhd" \
"../../../../../src/ip/dvi2rgb_ip/src/SyncAsyncReset.vhd" \
"../../../../../src/ip/dvi2rgb_ip/src/PhaseAlign.vhd" \
"../../../../../src/ip/dvi2rgb_ip/src/InputSERDES.vhd" \
"../../../../../src/ip/dvi2rgb_ip/src/ChannelBond.vhd" \
"../../../../../src/ip/dvi2rgb_ip/src/TMDS_Decoder.vhd" \
"../../../../../src/ip/dvi2rgb_ip/src/TMDS_Clocking.vhd" \
"../../../../../src/ip/dvi2rgb_ip/src/dvi2rgb.vhd" \
"../../../../../src/ip/dvi2rgb_ip/sim/dvi2rgb_ip.vhd" \


