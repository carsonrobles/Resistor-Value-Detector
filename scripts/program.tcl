# TODO (carson): doesn't work

# Connect to the Digilent Cable on localhost:3121
connect_hw_server -url localhost:3121
current_hw_target [get_hw_targets */xilinx_tcf/Digilent/12345]
open_hw_target

# Program and Refresh the XC7K325T Device
set Device [lindex [get_hw_devices] 0]
current_hw_device $Device
refresh_hw_device -update_hw_probes false $Device
set_property PROGRAM.FILE "./prj/top.bit" $Device
#set_property PROBES.FILE "C:/design.ltx" $Device

program_hw_devices $Device
refresh_hw_device $Device
