PROJ_PATH = /home/carson/poly/cpe439/Resistor-Value-Detector
PART      = xc7z010clg400-1

CONSTR    = $(PROJ_PATH)/src/xdc/constraints.xdc
HDR       = $(wildcard $(PROJ_PATH)/src/rtl/*.svh)
SRC       = $(wildcard $(PROJ_PATH)/src/rtl/*.sv)

TOP       = top
SYNTH_DCP = $(PROJ_PATH)/prj/$(TOP)_synth.dcp
PLACE_DCP = $(PROJ_PATH)/prj/$(TOP)_place.dcp
ROUTE_DCP = $(PROJ_PATH)/prj/$(TOP)_route.dcp
BIT       = $(PROJ_PATH)/prj/$(TOP).bit

.PHONY: compile
.PHONY: synth
.PHONY: place
.PHONY: route
.PHONY: bit
.PHONY: clean

compile: $(BIT)

# TODO (carson): script doesn't work
#prog:
	#vivado -nojournal -log $(PROJ_PATH)/prj/program.log -mode batch \
		-source $(PROJ_PATH)/scripts/program.tcl -tclargs $(PART) $(TOP) $(CONSTR) "$(SRC)" $@

synth: $(SYNTH_DCP)
place: $(PLACE_DCP)
route: $(ROUTE_DCP)
bit  : $(BIT)

# synthesis
$(SYNTH_DCP): $(PROJ_PATH)/scripts/synth.tcl Makefile $(CONSTR) $(HDR) $(SRC)
	# synth.tcl args
	#   0: part
	#   1: top level module name
	#   2: constraints file
	#   3: sources
	#   4: output dcp file name
	vivado -nojournal -log $(PROJ_PATH)/prj/synth.log -mode batch \
		-source $< -tclargs $(PART) $(TOP) $(CONSTR) "$(SRC)" $@

# place
$(PLACE_DCP): $(PROJ_PATH)/scripts/place.tcl Makefile $(SYNTH_DCP)
	# place.tcl args
	#   0: synthesis checkpoint (dcp)
	#   1: output dcp file name
	vivado -nojournal -log $(PROJ_PATH)/prj/place.log -mode batch \
		-source $< -tclargs $(SYNTH_DCP) $@

# route
$(ROUTE_DCP): $(PROJ_PATH)/scripts/route.tcl Makefile $(PLACE_DCP)
	# route.tcl args
	#   0: placement checkpoint (dcp)
	#   1: output dcp file name
	vivado -nojournal -log $(PROJ_PATH)/prj/route.log -mode batch \
		-source $< -tclargs $(PLACE_DCP) $@


# generate bitstream
$(BIT): $(PROJ_PATH)/scripts/bitstream.tcl Makefile $(ROUTE_DCP)
	# bitstream.tcl args
	#   0: routed checkpoint (dcp)
	#   1: output bit file name
	vivado -nojournal -log $(PROJ_PATH)/prj/bitstream.log -mode batch \
		-source $< -tclargs $(ROUTE_DCP) $@

# remove output files
clean:
	# remove misc Xilinx files
	rm -rf .Xil usage_statistics_webtalk.*
	rm -rf $(PROJ_PATH)/prj/vivado* $(PROJ_PATH)/prj/*.log

	# remove generated checkpoint files and bit file
	rm -rf $(SYNTH_DCP) $(PLACE_DCP) $(ROUTE_DCP) $(BIT)
