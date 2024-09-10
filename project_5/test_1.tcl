# Copyright (C) 2024  Intel Corporation. All rights reserved.
# Your use of Intel Corporation's design tools, logic functions 
# and other software and tools, and any partner logic 
# functions, and any output files from any of the foregoing 
# (including device programming or simulation files), and any 
# associated documentation or information are expressly subject 
# to the terms and conditions of the Intel Program License 
# Subscription Agreement, the Intel Quartus Prime License Agreement,
# the Intel FPGA IP License Agreement, or other applicable license
# agreement, including, without limitation, that your use is for
# the sole purpose of programming logic devices manufactured by
# Intel and sold by Intel or its authorized distributors.  Please
# refer to the applicable agreement for further details, at
# https://fpgasoftware.intel.com/eula.

# Quartus Prime: Generate Tcl File for Project
# File: test_1.tcl
# Generated on: Mon Sep  9 23:19:11 2024

# Load Quartus Prime Tcl Project package
package require ::quartus::project

set need_to_close_project 0
set make_assignments 1

# Check that the right project is open
if {[is_project_open]} {
	if {[string compare $quartus(project) "test_1"]} {
		puts "Project test_1 is not open"
		set make_assignments 0
	}
} else {
	# Only open if not already open
	if {[project_exists test_1]} {
		project_open -revision test_1 test_1
	} else {
		project_new -revision test_1 test_1
	}
	set need_to_close_project 1
}

# Make assignments
if {$make_assignments} {
	set_global_assignment -name FAMILY "Cyclone 10 LP"
	set_global_assignment -name DEVICE 10CL016YU484C8G
	set_global_assignment -name ORIGINAL_QUARTUS_VERSION 23.1STD.1
	set_global_assignment -name PROJECT_CREATION_TIME_DATE "22:17:53  SEPTEMBER 09, 2024"
	set_global_assignment -name LAST_QUARTUS_VERSION "23.1std.1 Lite Edition"
	set_global_assignment -name PROJECT_OUTPUT_DIRECTORY output_files
	set_global_assignment -name MIN_CORE_JUNCTION_TEMP 0
	set_global_assignment -name MAX_CORE_JUNCTION_TEMP 85
	set_global_assignment -name DEVICE_FILTER_PIN_COUNT 484
	set_global_assignment -name ERROR_CHECK_FREQUENCY_DIVISOR 1
	set_global_assignment -name NOMINAL_CORE_SUPPLY_VOLTAGE 1.2V
	set_global_assignment -name EDA_DESIGN_ENTRY_SYNTHESIS_TOOL Synplify
	set_global_assignment -name EDA_LMF_FILE synplcty.lmf -section_id eda_design_synthesis
	set_global_assignment -name EDA_INPUT_DATA_FORMAT VQM -section_id eda_design_synthesis
	set_global_assignment -name EDA_SIMULATION_TOOL "Questa Intel FPGA (Verilog)"
	set_global_assignment -name EDA_TIME_SCALE "1 ps" -section_id eda_simulation
	set_global_assignment -name EDA_OUTPUT_DATA_FORMAT "VERILOG HDL" -section_id eda_simulation
	set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_board_design_timing
	set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_board_design_symbol
	set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_board_design_signal_integrity
	set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_board_design_boundary_scan
	set_global_assignment -name VERILOG_FILE test_1.v
	set_global_assignment -name PARTITION_NETLIST_TYPE SOURCE -section_id Top
	set_global_assignment -name PARTITION_FITTER_PRESERVATION_LEVEL PLACEMENT_AND_ROUTING -section_id Top
	set_global_assignment -name PARTITION_COLOR 16764057 -section_id Top
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to c
	set_location_assignment PIN_W17 -to c
	set_location_assignment PIN_Y17 -to d
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to d
	set_location_assignment PIN_P4 -to a
	set_location_assignment PIN_P3 -to b
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to b
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to a
	set_instance_assignment -name PARTITION_HIERARCHY root_partition -to | -section_id Top

	# Commit assignments
	export_assignments

	# Close project
	if {$need_to_close_project} {
		project_close
	}
}
