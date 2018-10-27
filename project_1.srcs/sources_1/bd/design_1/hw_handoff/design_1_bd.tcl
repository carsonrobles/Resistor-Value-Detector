
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2015.4
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   puts "ERROR: This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl

# If you do not already have a project created,
# you can create a project using the following command:
#    create_project project_1 myproj -part xc7z010clg400-1

# CHECKING IF PROJECT EXISTS
if { [get_projects -quiet] eq "" } {
   puts "ERROR: Please open or create a project!"
   return 1
}



# CHANGE DESIGN NAME HERE
set design_name design_1

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "ERROR: Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      puts "INFO: Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   puts "INFO: Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   puts "INFO: Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   puts "INFO: Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

puts "INFO: Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   puts $errMsg
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set DDC [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 DDC ]

  # Create ports
  set HDMI_HPD [ create_bd_port -dir O -from 0 -to 0 HDMI_HPD ]
  set HDMI_OUT_EN [ create_bd_port -dir O -from 0 -to 0 HDMI_OUT_EN ]
  set TMDS_Clk_n [ create_bd_port -dir I TMDS_Clk_n ]
  set TMDS_Clk_p [ create_bd_port -dir I TMDS_Clk_p ]
  set TMDS_Data_n [ create_bd_port -dir I -from 2 -to 0 TMDS_Data_n ]
  set TMDS_Data_p [ create_bd_port -dir I -from 2 -to 0 TMDS_Data_p ]
  set clk_in1 [ create_bd_port -dir I -type clk clk_in1 ]
  set_property -dict [ list \
CONFIG.FREQ_HZ {125000000} \
 ] $clk_in1
  set vga_pBlue [ create_bd_port -dir O -from 4 -to 0 vga_pBlue ]
  set vga_pGreen [ create_bd_port -dir O -from 5 -to 0 vga_pGreen ]
  set vga_pHSync [ create_bd_port -dir O vga_pHSync ]
  set vga_pRed [ create_bd_port -dir O -from 4 -to 0 vga_pRed ]
  set vga_pVSync [ create_bd_port -dir O vga_pVSync ]

  # Create instance: Gnd, and set properties
  set Gnd [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 Gnd ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
 ] $Gnd

  # Create instance: Vdd, and set properties
  set Vdd [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 Vdd ]

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:5.2 clk_wiz_0 ]
  set_property -dict [ list \
CONFIG.CLKIN1_JITTER_PS {80.0} \
CONFIG.CLKOUT1_DRIVES {BUFG} \
CONFIG.CLKOUT1_JITTER {109.241} \
CONFIG.CLKOUT1_PHASE_ERROR {96.948} \
CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {200.000} \
CONFIG.CLKOUT2_DRIVES {BUFG} \
CONFIG.CLKOUT3_DRIVES {BUFG} \
CONFIG.CLKOUT4_DRIVES {BUFG} \
CONFIG.CLKOUT5_DRIVES {BUFG} \
CONFIG.CLKOUT6_DRIVES {BUFG} \
CONFIG.CLKOUT7_DRIVES {BUFG} \
CONFIG.MMCM_CLKFBOUT_MULT_F {8} \
CONFIG.MMCM_CLKIN1_PERIOD {8.0} \
CONFIG.MMCM_CLKOUT0_DIVIDE_F {5} \
CONFIG.MMCM_COMPENSATION {ZHOLD} \
CONFIG.MMCM_DIVCLK_DIVIDE {1} \
CONFIG.PRIMITIVE {PLL} \
CONFIG.PRIM_IN_FREQ {125} \
 ] $clk_wiz_0

  # Create instance: dvi2rgb_0, and set properties
  set dvi2rgb_0 [ create_bd_cell -type ip -vlnv digilentinc.com:ip:dvi2rgb:1.4 dvi2rgb_0 ]
  set_property -dict [ list \
CONFIG.kClkRange {1} \
 ] $dvi2rgb_0

  # Create instance: rgb2vga_0, and set properties
  set rgb2vga_0 [ create_bd_cell -type ip -vlnv digilentinc.com:ip:rgb2vga:1.0 rgb2vga_0 ]

  # Create interface connections
  connect_bd_intf_net -intf_net dvi2rgb_0_DDC [get_bd_intf_ports DDC] [get_bd_intf_pins dvi2rgb_0/DDC]
  connect_bd_intf_net -intf_net dvi2rgb_0_RGB [get_bd_intf_pins dvi2rgb_0/RGB] [get_bd_intf_pins rgb2vga_0/vid_in]

  # Create port connections
  connect_bd_net -net Gnd_dout [get_bd_ports HDMI_OUT_EN] [get_bd_pins Gnd/dout] [get_bd_pins clk_wiz_0/reset]
  connect_bd_net -net TMDS_Clk_n_1 [get_bd_ports TMDS_Clk_n] [get_bd_pins dvi2rgb_0/TMDS_Clk_n]
  connect_bd_net -net TMDS_Clk_p_1 [get_bd_ports TMDS_Clk_p] [get_bd_pins dvi2rgb_0/TMDS_Clk_p]
  connect_bd_net -net TMDS_Data_n_1 [get_bd_ports TMDS_Data_n] [get_bd_pins dvi2rgb_0/TMDS_Data_n]
  connect_bd_net -net TMDS_Data_p_1 [get_bd_ports TMDS_Data_p] [get_bd_pins dvi2rgb_0/TMDS_Data_p]
  connect_bd_net -net Vdd_dout [get_bd_ports HDMI_HPD] [get_bd_pins Vdd/dout] [get_bd_pins dvi2rgb_0/aRst] [get_bd_pins dvi2rgb_0/pRst]
  connect_bd_net -net clk_in1_1 [get_bd_ports clk_in1] [get_bd_pins clk_wiz_0/clk_in1]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins dvi2rgb_0/RefClk]
  connect_bd_net -net dvi2rgb_0_PixelClk [get_bd_pins dvi2rgb_0/PixelClk] [get_bd_pins rgb2vga_0/PixelClk]
  connect_bd_net -net rgb2vga_0_vga_pBlue [get_bd_ports vga_pBlue] [get_bd_pins rgb2vga_0/vga_pBlue]
  connect_bd_net -net rgb2vga_0_vga_pGreen [get_bd_ports vga_pGreen] [get_bd_pins rgb2vga_0/vga_pGreen]
  connect_bd_net -net rgb2vga_0_vga_pHSync [get_bd_ports vga_pHSync] [get_bd_pins rgb2vga_0/vga_pHSync]
  connect_bd_net -net rgb2vga_0_vga_pRed [get_bd_ports vga_pRed] [get_bd_pins rgb2vga_0/vga_pRed]
  connect_bd_net -net rgb2vga_0_vga_pVSync [get_bd_ports vga_pVSync] [get_bd_pins rgb2vga_0/vga_pVSync]

  # Create address segments

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   guistr: "# # String gsaved with Nlview 6.5.5  2015-06-26 bk=1.3371 VDI=38 GEI=35 GUI=JA:1.8
#  -string -flagsOSRD
preplace port TMDS_Clk_n -pg 1 -y -150 -defaultsOSRD
preplace port vga_pVSync -pg 1 -y -10 -defaultsOSRD
preplace port vga_pHSync -pg 1 -y -30 -defaultsOSRD
preplace port TMDS_Clk_p -pg 1 -y -170 -defaultsOSRD
preplace port clk_in1 -pg 1 -y 70 -defaultsOSRD
preplace port DDC -pg 1 -y -150 -defaultsOSRD
preplace portBus TMDS_Data_n -pg 1 -y -110 -defaultsOSRD
preplace portBus TMDS_Data_p -pg 1 -y -130 -defaultsOSRD
preplace portBus HDMI_HPD -pg 1 -y 170 -defaultsOSRD
preplace portBus vga_pGreen -pg 1 -y -70 -defaultsOSRD
preplace portBus vga_pRed -pg 1 -y -90 -defaultsOSRD
preplace portBus HDMI_OUT_EN -pg 1 -y 210 -defaultsOSRD
preplace portBus vga_pBlue -pg 1 -y -50 -defaultsOSRD
preplace inst Gnd -pg 1 -lvl 1 -y 210 -defaultsOSRD
preplace inst clk_wiz_0 -pg 1 -lvl 2 -y 80 -defaultsOSRD
preplace inst Vdd -pg 1 -lvl 3 -y 170 -defaultsOSRD
preplace inst dvi2rgb_0 -pg 1 -lvl 4 -y -120 -defaultsOSRD
preplace inst rgb2vga_0 -pg 1 -lvl 5 -y -50 -defaultsOSRD
preplace netloc rgb2vga_0_vga_pRed 1 5 1 N
preplace netloc TMDS_Clk_p_1 1 0 4 NJ -170 NJ -170 NJ -170 NJ
preplace netloc rgb2vga_0_vga_pGreen 1 5 1 N
preplace netloc clk_in1_1 1 0 2 NJ 70 N
preplace netloc TMDS_Clk_n_1 1 0 4 NJ -150 NJ -150 NJ -150 NJ
preplace netloc dvi2rgb_0_DDC 1 4 2 NJ -150 NJ
preplace netloc TMDS_Data_p_1 1 0 4 NJ -130 NJ -130 NJ -130 NJ
preplace netloc rgb2vga_0_vga_pVSync 1 5 1 N
preplace netloc rgb2vga_0_vga_pHSync 1 5 1 N
preplace netloc TMDS_Data_n_1 1 0 4 NJ -110 NJ -110 NJ -110 NJ
preplace netloc clk_wiz_0_clk_out1 1 2 2 NJ -90 NJ
preplace netloc Gnd_dout 1 1 5 -200 210 NJ 220 NJ 210 NJ 210 N
preplace netloc dvi2rgb_0_RGB 1 4 1 450
preplace netloc Vdd_dout 1 3 3 130 170 NJ 170 N
preplace netloc rgb2vga_0_vga_pBlue 1 5 1 N
preplace netloc dvi2rgb_0_PixelClk 1 4 1 440
levelinfo -pg 1 -360 -270 -100 60 290 660 790 -top -390 -bot 340
",
}

  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


