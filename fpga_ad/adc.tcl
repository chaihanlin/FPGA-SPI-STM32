# Copyright (C) 2018  Intel Corporation. All rights reserved.
# Your use of Intel Corporation's design tools, logic functions 
# and other software and tools, and its AMPP partner logic 
# functions, and any output files from any of the foregoing 
# (including device programming or simulation files), and any 
# associated documentation or information are expressly subject 
# to the terms and conditions of the Intel Program License 
# Subscription Agreement, the Intel Quartus Prime License Agreement,
# the Intel FPGA IP License Agreement, or other applicable license
# agreement, including, without limitation, that your use is for
# the sole purpose of programming logic devices manufactured by
# Intel and sold by Intel or its authorized distributors.  Please
# refer to the applicable agreement for further details.

# Quartus Prime: Generate Tcl File for Project
# File: adc.tcl
# Generated on: Wed Aug 25 14:25:02 2021

# Load Quartus Prime Tcl Project package
package require ::quartus::project

set need_to_close_project 0
set make_assignments 1

# Check that the right project is open
if {[is_project_open]} {
	if {[string compare $quartus(project) "adc"]} {
		puts "Project adc is not open"
		set make_assignments 0
	}
} else {
	# Only open if not already open
	if {[project_exists adc]} {
		project_open -revision adc adc
	} else {
		project_new -revision adc adc
	}
	set need_to_close_project 1
}

# Make assignments
if {$make_assignments} {
	set_global_assignment -name FAMILY "Cyclone IV E"
	set_global_assignment -name DEVICE EP4CE10E22C8
	set_global_assignment -name TOP_LEVEL_ENTITY ad
	set_global_assignment -name ORIGINAL_QUARTUS_VERSION 18.1.0
	set_global_assignment -name PROJECT_CREATION_TIME_DATE "20:08:04  AUGUST 14, 2021"
	set_global_assignment -name LAST_QUARTUS_VERSION "18.1.0 Standard Edition"
	set_global_assignment -name PROJECT_OUTPUT_DIRECTORY output_files
	set_global_assignment -name MIN_CORE_JUNCTION_TEMP 0
	set_global_assignment -name MAX_CORE_JUNCTION_TEMP 85
	set_global_assignment -name DEVICE_FILTER_PIN_COUNT 144
	set_global_assignment -name DEVICE_FILTER_SPEED_GRADE 8
	set_global_assignment -name ERROR_CHECK_FREQUENCY_DIVISOR 1
	set_global_assignment -name NOMINAL_CORE_SUPPLY_VOLTAGE 1.2V
	set_global_assignment -name EDA_SIMULATION_TOOL "ModelSim-Altera (Verilog)"
	set_global_assignment -name EDA_TIME_SCALE "1 ps" -section_id eda_simulation
	set_global_assignment -name EDA_OUTPUT_DATA_FORMAT "VERILOG HDL" -section_id eda_simulation
	set_global_assignment -name VERILOG_FILE ad.v
	set_global_assignment -name QIP_FILE pll.qip
	set_global_assignment -name POWER_PRESET_COOLING_SOLUTION "23 MM HEAT SINK WITH 200 LFPM AIRFLOW"
	set_global_assignment -name POWER_BOARD_THERMAL_MODEL "NONE (CONSERVATIVE)"
	set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST ON -section_id eda_simulation
	set_global_assignment -name PARTITION_NETLIST_TYPE SOURCE -section_id Top
	set_global_assignment -name PARTITION_FITTER_PRESERVATION_LEVEL PLACEMENT_AND_ROUTING -section_id Top
	set_global_assignment -name PARTITION_COLOR 16764057 -section_id Top
	set_global_assignment -name ENABLE_OCT_DONE OFF
	set_global_assignment -name USE_CONFIGURATION_DEVICE OFF
	set_global_assignment -name CRC_ERROR_OPEN_DRAIN OFF
	set_global_assignment -name CYCLONEII_RESERVE_NCEO_AFTER_CONFIGURATION "USE AS REGULAR IO"
	set_global_assignment -name OUTPUT_IO_TIMING_NEAR_END_VMEAS "HALF VCCIO" -rise
	set_global_assignment -name OUTPUT_IO_TIMING_NEAR_END_VMEAS "HALF VCCIO" -fall
	set_global_assignment -name OUTPUT_IO_TIMING_FAR_END_VMEAS "HALF SIGNAL SWING" -rise
	set_global_assignment -name OUTPUT_IO_TIMING_FAR_END_VMEAS "HALF SIGNAL SWING" -fall
	set_global_assignment -name ENABLE_SIGNALTAP ON
	set_global_assignment -name USE_SIGNALTAP_FILE output_files/stp1.stp
	set_global_assignment -name SIGNALTAP_FILE output_files/stp1.stp
	set_global_assignment -name SLD_NODE_CREATOR_ID 110 -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_ENTITY_NAME sld_signaltap -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_RAM_BLOCK_TYPE=AUTO" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_DATA_BITS=15" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_TRIGGER_BITS=15" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_STORAGE_QUALIFIER_BITS=15" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_NODE_INFO=805334528" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_POWER_UP_TRIGGER=0" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_STORAGE_QUALIFIER_INVERSION_MASK_LENGTH=0" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_ATTRIBUTE_MEM_MODE=OFF" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_STATE_FLOW_USE_GENERATED=0" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_STATE_BITS=11" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_BUFFER_FULL_STOP=1" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_CURRENT_RESOURCE_WIDTH=1" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_INCREMENTAL_ROUTING=1" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_TRIGGER_LEVEL=1" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_TRIGGER_IN_ENABLED=0" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_TRIGGER_PIPELINE=0" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_RAM_PIPELINE=0" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_COUNTER_PIPELINE=0" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_ADVANCED_TRIGGER_ENTITY=basic,1," -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_TRIGGER_LEVEL_PIPELINE=1" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_ENABLE_ADVANCED_TRIGGER=0" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_INVERSION_MASK=000000000000000000000000000000000000000000000000000000000000000000000" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_INVERSION_MASK_LENGTH=69" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_SEGMENT_SIZE=1024" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_SAMPLE_DEPTH=1024" -section_id auto_signaltap_0
	set_global_assignment -name SLD_FILE db/stp1_auto_stripped.stp
	set_location_assignment PIN_101 -to clk10M
	set_location_assignment PIN_99 -to Data[0]
	set_location_assignment PIN_87 -to Data[1]
	set_location_assignment PIN_85 -to Data[2]
	set_location_assignment PIN_83 -to Data[3]
	set_location_assignment PIN_77 -to Data[4]
	set_location_assignment PIN_75 -to Data[5]
	set_location_assignment PIN_76 -to Data[6]
	set_location_assignment PIN_100 -to Data[11]
	set_location_assignment PIN_80 -to Data[7]
	set_location_assignment PIN_84 -to Data[8]
	set_location_assignment PIN_86 -to Data[9]
	set_location_assignment PIN_98 -to Data[10]
	set_location_assignment PIN_103 -to otr
	set_location_assignment PIN_23 -to clk
	set_location_assignment PIN_24 -to rst
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_clk -to clk -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[0] -to Data[0] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[1] -to Data[10] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[2] -to Data[11] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[3] -to Data[12] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[4] -to Data[1] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[5] -to Data[2] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[6] -to Data[3] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[7] -to Data[4] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[8] -to Data[5] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[9] -to Data[6] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[10] -to Data[7] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[11] -to Data[8] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[12] -to Data[9] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[13] -to clk10M -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[14] -to rst -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[0] -to Data[0] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[1] -to Data[10] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[2] -to Data[11] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[3] -to Data[12] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[4] -to Data[1] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[5] -to Data[2] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[6] -to Data[3] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[7] -to Data[4] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[8] -to Data[5] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[9] -to Data[6] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[10] -to Data[7] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[11] -to Data[8] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[12] -to Data[9] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[13] -to clk10M -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[14] -to rst -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[0] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[1] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[2] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[3] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[4] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[5] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[6] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[7] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[8] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[9] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[10] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[11] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[12] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[13] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[14] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[15] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[19] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[21] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[26] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[16] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[17] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[18] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[20] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[22] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[23] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[24] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[25] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[27] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[28] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[29] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[30] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[31] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name PARTITION_HIERARCHY root_partition -to | -section_id Top

	# Commit assignments
	export_assignments

	# Close project
	if {$need_to_close_project} {
		project_close
	}
}
