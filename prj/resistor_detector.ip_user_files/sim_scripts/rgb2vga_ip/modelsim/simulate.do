onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L secureip -L xil_defaultlib -lib xil_defaultlib xil_defaultlib.rgb2vga_ip

do {wave.do}

view wave
view structure
view signals

do {rgb2vga_ip.udo}

run -all

quit -force
