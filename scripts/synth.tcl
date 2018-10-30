# command line args
set part      [lindex $argv 0]
set module    [lindex $argv 1]
set constr    [lindex $argv 2]
set vsrc      [lindex $argv 3]
set output    [lindex $argv 4]

create_project $module -in_memory -part $part
add_files $vsrc
read_ip ./src/ip/clk_wiz_ip/clk_wiz_ip.xci
read_ip ./src/ip/dvi2rgb_ip/dvi2rgb_ip.xci
read_ip ./src/ip/rgb2vga_ip/rgb2vga_ip.xci
read_xdc $constr

synth_design -name $module -top $module -part $part
write_checkpoint -force $output
