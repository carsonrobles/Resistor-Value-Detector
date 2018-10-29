onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib dvi2rgb_ip_opt

do {wave.do}

view wave
view structure
view signals

do {dvi2rgb_ip.udo}

run -all

quit -force
