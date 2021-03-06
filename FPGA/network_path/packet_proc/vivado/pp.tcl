#
# Vivado (TM) v2015.2 (64-bit)
#
# pp.tcl: Tcl script for re-creating project 'pp'
#
# Generated by Vivado on Tue Jul 05 10:37:56 CEST 2016
# IP Build 1264090 on Wed Jun 24 14:22:01 MDT 2015
#
# This file contains the Vivado Tcl commands for re-creating the project to the state*
# when this script was generated. In order to re-create the project, please source this
# file in the Vivado Tcl Shell.
#
# * Note that the runs in the created project will be configured the same way as the
#   original project, however they will not be launched automatically. To regenerate the
#   run results please launch the synthesis/implementation runs as needed.
#
#*****************************************************************************************
# NOTE: In order to use this script for source control purposes, please make sure that the
#       following files are added to the source control system:-
#
# 1. This project restoration tcl script (pp.tcl) that was generated.
#
# 2. The following source(s) files that were local or imported into the original project.
#    (Please see the '$orig_proj_dir' and '$origin_dir' variable setting below at the start of the script)
#
#    <none>
#
# 3. The following remote source files that were added to the original project:-
#
#    "/home/rolf/ntp_proj/trunk/FPGA/network_path/packet_proc/SHA1/hdl/sha1_stage.v"
#    "/home/rolf/ntp_proj/trunk/FPGA/network_path/packet_proc/MD5/hdl/md5_stage.v"
#    "/home/rolf/ntp_proj/trunk/FPGA/network_path/packet_proc/MD5/hdl/md5_pipe.v"
#    "/home/rolf/ntp_proj/trunk/FPGA/network_path/packet_proc/SHA1/hdl/sha1_pipe.v"
#    "/home/rolf/ntp_proj/trunk/FPGA/network_path/packet_proc/SHA1/ip/chunk_del/chunk_del.xci"
#    "/home/rolf/ntp_proj/trunk/FPGA/network_path/packet_proc/SHA1/ip/sum_del/sum_del.xci"
#    "/home/rolf/ntp_proj/trunk/FPGA/network_path/packet_proc/MD5/ip/chunk_del_md5/chunk_del_md5.xci"
#    "/home/rolf/ntp_proj/trunk/FPGA/network_path/packet_proc/MD5/ip/sum_del_md5/sum_del_md5.xci"
#    "/home/rolf/ntp_proj/trunk/FPGA/network_path/packet_proc/MD5/hdl/md5.v"
#    "/home/rolf/ntp_proj/trunk/FPGA/network_path/packet_proc/SHA1/hdl/sha1.v"
#    "/home/rolf/ntp_proj/trunk/FPGA/network_path/GMAC/hdl/oc_mac_crc_func.h"
#    "/home/rolf/ntp_proj/trunk/FPGA/network_path/GMAC/hdl/oc_mac.h"
#    "/home/rolf/ntp_proj/trunk/FPGA/network_path/GMAC/hdl/tx_dequeue.v"
#    "/home/rolf/ntp_proj/trunk/FPGA/network_path/GMAC/hdl/tx_control.v"
#    "/home/rolf/ntp_proj/trunk/FPGA/network_path/GMAC/hdl/rx_enqueue.v"
#    "/home/rolf/ntp_proj/trunk/FPGA/network_path/GMAC/hdl/rx_control.v"
#    "/home/rolf/ntp_proj/trunk/FPGA/network_path/packet_proc/hdl/pp_par.v"
#    "/home/rolf/ntp_proj/trunk/FPGA/network_path/packet_proc/hdl/pp_md5.v"
#    "/home/rolf/ntp_proj/trunk/FPGA/network_path/packet_proc/hdl/pp_sha1.v"
#    "/home/rolf/ntp_proj/trunk/FPGA/network_path/GMAC/hdl/oc_mac.v"
#    "/home/rolf/ntp_proj/trunk/FPGA/network_path/packet_proc/hdl/pp_tx.v"
#    "/home/rolf/ntp_proj/trunk/FPGA/network_path/packet_proc/hdl/pp_rx.v"
#    "/home/rolf/ntp_proj/trunk/FPGA/network_path/packet_proc/hdl/pp_pipes.v"
#    "/home/rolf/ntp_proj/trunk/FPGA/network_path/packet_proc/hdl/pp_top.v"
#    "/home/rolf/ntp_proj/trunk/FPGA/keymem/ip/axi_keymem_ctrl/axi_keymem_ctrl.xci"
#    "/home/rolf/ntp_proj/trunk/FPGA/keymem/ip/keymem/keymem.xci"
#    "/home/rolf/ntp_proj/trunk/FPGA/xilinx/v7_xt_conn_trd/hardware/sources/hdl/common/synchronizer_simple.v"
#    "/home/rolf/ntp_proj/trunk/FPGA/xilinx/v7_xt_conn_trd/hardware/sources/hdl/common/synchronizer_vector.v"
#    "/home/rolf/ntp_proj/trunk/FPGA/network_path/packet_proc/ip/pp_fifo_ss/pp_fifo_ss.xci"
#    "/home/rolf/ntp_proj/trunk/FPGA/network_path/packet_proc/ip/pp_fifo_sc/pp_fifo_sc.xci"
#    "/home/rolf/ntp_proj/trunk/FPGA/network_path/packet_proc/ip/pp_fifo/pp_fifo.xci"
#    "/home/rolf/ntp_proj/trunk/FPGA/keymem/hdl/keymem_top.v"
#    "/home/rolf/ntp_proj/trunk/FPGA/misc/axi4_if.sv"
#    "/home/rolf/ntp_proj/trunk/FPGA/network_path/hdl/network_path_axi_slave.v"
#    "/home/rolf/ntp_proj/trunk/FPGA/network_path/packet_proc/SHA1/tb/tb_sha1_func.sv"
#    "/home/rolf/ntp_proj/trunk/FPGA/network_path/packet_proc/MD5/tb/tb_md5_func.sv"
#    "/home/rolf/ntp_proj/trunk/FPGA/network_path/packet_proc/tb/tb_pp_ipv6.v"
#    "/home/rolf/ntp_proj/trunk/FPGA/network_path/packet_proc/hdl/pp_par.v"
#    "/home/rolf/ntp_proj/trunk/FPGA/network_path/packet_proc/tb/tb_pp_ipv4.v"
#    "/home/rolf/ntp_proj/trunk/FPGA/network_path/packet_proc/tb/tb_pp_top.sv"
#    "/home/rolf/ntp_proj/trunk/FPGA/network_path/packet_proc/tb/pp_top_nomac.v"
#    "/home/rolf/ntp_proj/trunk/FPGA/network_path/packet_proc/tb/tb_pp_nomac.sv"
#    "/home/rolf/ntp_proj/trunk/FPGA/network_path/GMAC/hdl/oc_mac_crc_func.h"
#    "/home/rolf/ntp_proj/trunk/FPGA/network_path/GMAC/hdl/oc_mac.h"
#
#*****************************************************************************************

# Set the reference directory for source file relative paths (by default the value is script directory path)
set origin_dir "."

# Set the directory path for the original project from where this script was exported
set orig_proj_dir "[file normalize "$origin_dir/pp"]"

# Create project
create_project pp ./pp

# Set the directory path for the new project
set proj_dir [get_property directory [current_project]]

# Set project properties
set obj [get_projects pp]
set_property "board_part" "xilinx.com:vc709:part0:1.6" $obj
set_property "default_lib" "xil_defaultlib" $obj
set_property "simulator_language" "Mixed" $obj
set_property "target_simulator" "Questa" $obj

# Create 'sources_1' fileset (if not found)
if {[string equal [get_filesets -quiet sources_1] ""]} {
  create_fileset -srcset sources_1
}

# Set 'sources_1' fileset object
set obj [get_filesets sources_1]
set files [list \
 "[file normalize "$origin_dir/../SHA1/hdl/sha1_stage.v"]"\
 "[file normalize "$origin_dir/../MD5/hdl/md5_stage.v"]"\
 "[file normalize "$origin_dir/../MD5/hdl/md5_pipe.v"]"\
 "[file normalize "$origin_dir/../SHA1/hdl/sha1_pipe.v"]"\
 "[file normalize "$origin_dir/../SHA1/ip/chunk_del/chunk_del.xci"]"\
 "[file normalize "$origin_dir/../SHA1/ip/sum_del/sum_del.xci"]"\
 "[file normalize "$origin_dir/../MD5/ip/chunk_del_md5/chunk_del_md5.xci"]"\
 "[file normalize "$origin_dir/../MD5/ip/sum_del_md5/sum_del_md5.xci"]"\
 "[file normalize "$origin_dir/../MD5/hdl/md5.v"]"\
 "[file normalize "$origin_dir/../SHA1/hdl/sha1.v"]"\
 "[file normalize "$origin_dir/../../GMAC/hdl/oc_mac_crc_func.h"]"\
 "[file normalize "$origin_dir/../../GMAC/hdl/oc_mac.h"]"\
 "[file normalize "$origin_dir/../../GMAC/hdl/tx_dequeue.v"]"\
 "[file normalize "$origin_dir/../../GMAC/hdl/tx_control.v"]"\
 "[file normalize "$origin_dir/../../GMAC/hdl/rx_enqueue.v"]"\
 "[file normalize "$origin_dir/../../GMAC/hdl/rx_control.v"]"\
 "[file normalize "$origin_dir/../hdl/pp_par.v"]"\
 "[file normalize "$origin_dir/../hdl/pp_md5.v"]"\
 "[file normalize "$origin_dir/../hdl/pp_sha1.v"]"\
 "[file normalize "$origin_dir/../../GMAC/hdl/oc_mac.v"]"\
 "[file normalize "$origin_dir/../hdl/pp_tx.v"]"\
 "[file normalize "$origin_dir/../hdl/pp_rx.v"]"\
 "[file normalize "$origin_dir/../hdl/pp_pipes.v"]"\
 "[file normalize "$origin_dir/../hdl/pp_top.v"]"\
 "[file normalize "$origin_dir/../../../keymem/ip/axi_keymem_ctrl/axi_keymem_ctrl.xci"]"\
 "[file normalize "$origin_dir/../../../keymem/ip/keymem/keymem.xci"]"\
 "[file normalize "$origin_dir/../../../xilinx/v7_xt_conn_trd/hardware/sources/hdl/common/synchronizer_simple.v"]"\
 "[file normalize "$origin_dir/../../../xilinx/v7_xt_conn_trd/hardware/sources/hdl/common/synchronizer_vector.v"]"\
]
add_files -norecurse -fileset $obj $files

# Set 'sources_1' fileset file properties for remote files
set file "$origin_dir/../SHA1/ip/chunk_del/chunk_del.xci"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
if { ![get_property "is_locked" $file_obj] } {
  set_property "synth_checkpoint_mode" "Singular" $file_obj
}

set file "$origin_dir/../SHA1/ip/sum_del/sum_del.xci"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
if { ![get_property "is_locked" $file_obj] } {
  set_property "synth_checkpoint_mode" "Singular" $file_obj
}

set file "$origin_dir/../MD5/ip/chunk_del_md5/chunk_del_md5.xci"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
if { ![get_property "is_locked" $file_obj] } {
  set_property "synth_checkpoint_mode" "Singular" $file_obj
}

set file "$origin_dir/../MD5/ip/sum_del_md5/sum_del_md5.xci"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
if { ![get_property "is_locked" $file_obj] } {
  set_property "synth_checkpoint_mode" "Singular" $file_obj
}

set file "$origin_dir/../../GMAC/hdl/oc_mac_crc_func.h"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property "file_type" "Verilog Header" $file_obj

set file "$origin_dir/../../GMAC/hdl/oc_mac.h"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property "file_type" "Verilog Header" $file_obj

set file "$origin_dir/../hdl/pp_par.v"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property "file_type" "Verilog Header" $file_obj

set file "$origin_dir/../../../keymem/ip/axi_keymem_ctrl/axi_keymem_ctrl.xci"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
if { ![get_property "is_locked" $file_obj] } {
  set_property "synth_checkpoint_mode" "Singular" $file_obj
}

set file "$origin_dir/../../../keymem/ip/keymem/keymem.xci"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
if { ![get_property "is_locked" $file_obj] } {
  set_property "synth_checkpoint_mode" "Singular" $file_obj
}


# Set 'sources_1' fileset file properties for local files
# None

# Set 'sources_1' fileset properties
set obj [get_filesets sources_1]
set_property "top" "pp_top" $obj

# Set 'sources_1' fileset object
set obj [get_filesets sources_1]
set files [list \
 "[file normalize "$origin_dir/../ip/pp_fifo_ss/pp_fifo_ss.xci"]"\
]
add_files -norecurse -fileset $obj $files

# Set 'sources_1' fileset file properties for remote files
set file "$origin_dir/../ip/pp_fifo_ss/pp_fifo_ss.xci"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
if { ![get_property "is_locked" $file_obj] } {
  set_property "synth_checkpoint_mode" "Singular" $file_obj
}


# Set 'sources_1' fileset file properties for local files
# None

# Set 'sources_1' fileset object
set obj [get_filesets sources_1]
set files [list \
 "[file normalize "$origin_dir/../ip/pp_fifo_sc/pp_fifo_sc.xci"]"\
]
add_files -norecurse -fileset $obj $files

# Set 'sources_1' fileset file properties for remote files
set file "$origin_dir/../ip/pp_fifo_sc/pp_fifo_sc.xci"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
if { ![get_property "is_locked" $file_obj] } {
  set_property "synth_checkpoint_mode" "Singular" $file_obj
}


# Set 'sources_1' fileset file properties for local files
# None

# Set 'sources_1' fileset object
set obj [get_filesets sources_1]
set files [list \
 "[file normalize "$origin_dir/../ip/pp_fifo/pp_fifo.xci"]"\
]
add_files -norecurse -fileset $obj $files

# Set 'sources_1' fileset file properties for remote files
set file "$origin_dir/../ip/pp_fifo/pp_fifo.xci"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
if { ![get_property "is_locked" $file_obj] } {
  set_property "synth_checkpoint_mode" "Singular" $file_obj
}


# Set 'sources_1' fileset file properties for local files
# None

# Create 'constrs_1' fileset (if not found)
if {[string equal [get_filesets -quiet constrs_1] ""]} {
  create_fileset -constrset constrs_1
}

# Set 'constrs_1' fileset object
set obj [get_filesets constrs_1]

# Empty (no sources present)

# Set 'constrs_1' fileset properties
set obj [get_filesets constrs_1]

# Create 'sim_1' fileset (if not found)
if {[string equal [get_filesets -quiet sim_1] ""]} {
  create_fileset -simset sim_1
}

# Set 'sim_1' fileset object
set obj [get_filesets sim_1]
set files [list \
 "[file normalize "$origin_dir/../../../keymem/hdl/keymem_top.v"]"\
 "[file normalize "$origin_dir/../../../misc/axi4_if.sv"]"\
 "[file normalize "$origin_dir/../../hdl/network_path_axi_slave.v"]"\
 "[file normalize "$origin_dir/../SHA1/tb/tb_sha1_func.sv"]"\
 "[file normalize "$origin_dir/../MD5/tb/tb_md5_func.sv"]"\
 "[file normalize "$origin_dir/../tb/tb_pp_ipv6.v"]"\
 "[file normalize "$origin_dir/../hdl/pp_par.v"]"\
 "[file normalize "$origin_dir/../tb/tb_pp_ipv4.v"]"\
 "[file normalize "$origin_dir/../tb/tb_pp_top.sv"]"\
 "[file normalize "$origin_dir/../tb/pp_top_nomac.v"]"\
 "[file normalize "$origin_dir/../tb/tb_pp_nomac.sv"]"\
 "[file normalize "$origin_dir/../../GMAC/hdl/oc_mac_crc_func.h"]"\
 "[file normalize "$origin_dir/../../GMAC/hdl/oc_mac.h"]"\
]
add_files -norecurse -fileset $obj $files

# Set 'sim_1' fileset file properties for remote files
set file "$origin_dir/../../../misc/axi4_if.sv"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sim_1] [list "*$file"]]
set_property "file_type" "SystemVerilog" $file_obj

set file "$origin_dir/../SHA1/tb/tb_sha1_func.sv"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sim_1] [list "*$file"]]
set_property "file_type" "Verilog Header" $file_obj

set file "$origin_dir/../MD5/tb/tb_md5_func.sv"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sim_1] [list "*$file"]]
set_property "file_type" "Verilog Header" $file_obj

set file "$origin_dir/../tb/tb_pp_ipv6.v"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sim_1] [list "*$file"]]
set_property "file_type" "Verilog Header" $file_obj

set file "$origin_dir/../hdl/pp_par.v"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sim_1] [list "*$file"]]
set_property "file_type" "Verilog Header" $file_obj

set file "$origin_dir/../tb/tb_pp_ipv4.v"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sim_1] [list "*$file"]]
set_property "file_type" "Verilog Header" $file_obj

set file "$origin_dir/../tb/tb_pp_top.sv"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sim_1] [list "*$file"]]
set_property "file_type" "SystemVerilog" $file_obj
set_property "used_in_implementation" "0" $file_obj
set_property "used_in_synthesis" "0" $file_obj

set file "$origin_dir/../tb/tb_pp_nomac.sv"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sim_1] [list "*$file"]]
set_property "file_type" "SystemVerilog" $file_obj

set file "$origin_dir/../../GMAC/hdl/oc_mac_crc_func.h"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sim_1] [list "*$file"]]
set_property "file_type" "Verilog Header" $file_obj

set file "$origin_dir/../../GMAC/hdl/oc_mac.h"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sim_1] [list "*$file"]]
set_property "file_type" "Verilog Header" $file_obj


# Set 'sim_1' fileset file properties for local files
# None

# Set 'sim_1' fileset properties
set obj [get_filesets sim_1]
set_property "runtime" "" $obj
set_property "top" "tb_pp_top" $obj

# Create 'synth_1' run (if not found)
if {[string equal [get_runs -quiet synth_1] ""]} {
  create_run -name synth_1 -part xc7vx690tffg1761-2 -flow {Vivado Synthesis 2015} -strategy "Vivado Synthesis Defaults" -constrset constrs_1
} else {
  set_property strategy "Vivado Synthesis Defaults" [get_runs synth_1]
  set_property flow "Vivado Synthesis 2015" [get_runs synth_1]
}
set obj [get_runs synth_1]
set_property "needs_refresh" "1" $obj

# set the current synth run
current_run -synthesis [get_runs synth_1]

# Create 'impl_1' run (if not found)
if {[string equal [get_runs -quiet impl_1] ""]} {
  create_run -name impl_1 -part xc7vx690tffg1761-2 -flow {Vivado Implementation 2015} -strategy "Vivado Implementation Defaults" -constrset constrs_1 -parent_run synth_1
} else {
  set_property strategy "Vivado Implementation Defaults" [get_runs impl_1]
  set_property flow "Vivado Implementation 2015" [get_runs impl_1]
}
set obj [get_runs impl_1]
set_property "needs_refresh" "1" $obj
set_property "steps.write_bitstream.args.readback_file" "0" $obj
set_property "steps.write_bitstream.args.verbose" "0" $obj

# set the current impl run
current_run -implementation [get_runs impl_1]

puts "INFO: Project created:pp"
