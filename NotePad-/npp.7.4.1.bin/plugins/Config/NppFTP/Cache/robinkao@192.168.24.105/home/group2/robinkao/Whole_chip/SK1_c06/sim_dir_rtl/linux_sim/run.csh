#!/bin/csh -f

#-----------------------------------------------------------------------------
#File        : run.csh
#Author      : Elmer
#Created     : 2017/3/17
#Function    : for FPGA / Whole_Chip simulation
#Modified    : 

#-----------------------------------------------------------------------------

# basic setting 
set SIM_MODE=Whole_Chip                      # FPGA / Whole_Chip

# Test case
#set SIM_CASE="dpc_hdr_bp_case_1"        
set SIM_CASE="SK1_chip_id"       
#set SIM_CASE="beh_arc_rw_ocram"     
#set SIM_CASE="gpio"       
#set SIM_CASE="fake_dram"       
#set SIM_CASE="jtag_read_chipid"       


# Basic parameters
set dram_type="ddr3"
set trap_case="cpu_sleep_pll"

# --- Whole_Chip setting ---
set run_cov=0                   # Run coverage or not
#set run_cov=1
set data_base_dir=/nfsroot2/VSS_SK1
set netlist=ISP_chip_rtl
set rtl_netlist=rtl
set version=rtl_c06
set timing=max                  # max or min
set LOCAL_SIM=disable            # enable / disable
set CPF_MODE=cpf_rtl            # disable / cpf_rtl / cpf_netlist

# ------- FPGA setting -----
set sim_type="post_partition"

set CHIP       = "SK1"
set FPGA_OWNER = "elmer"
set FPGA_ENV   = "fpga_env_c02"
set FPGA_BODY  = "IRP_DPC_TEMP_NORDN"  # DDR  
set FPGA_HAPS  = "2000"         #330 550 760     
set FPGA_DATA_BASE = /FPGA/$FPGA_OWNER/{$CHIP}_FPGA
set prj_files  = $FPGA_DATA_BASE/fpga_build/{$FPGA_ENV}/Work/Partition_file/{$FPGA_BODY}_{$FPGA_HAPS}/rev_1/synthesis_files/mb_uB/mb_uB_mixed.prj
echo "Info: Setting Done"

# ------- Preparing -------

if ($SIM_MODE == "FPGA") then
  set EXT_PARA_1=$2
  set EXT_PARA_2=$3
  set EXT_PARA_3=$4
else 
  set EXT_PARA_1=$1
  set EXT_PARA_2=$2
  set EXT_PARA_3=$3
endif

  if (-e ../rtl_result) then
    rm ../rtl_result -rf
    mkdir ../rtl_result -p
  else 
    mkdir ../rtl_result -p
  endif
  
  if (-e ../cmodel_result) then
    rm ../cmodel_result -rf
    mkdir ../cmodel_result -p
  else 
    mkdir ../cmodel_result -p
  endif

echo "Info: START sim_case"


# --- Run sim & compare ---
  if ($SIM_CASE == "dpc_hdr_bp_case_1") then
  
    source sim_case.csh 
  
 # source run_c_model.csh
  
    diff -s -i ../source/mipi_line_read_src.txt ../rtl_result/hdr_ae_a_0_out.txt 
    diff -s -i ../source/mipi_line_read_src.txt ../rtl_result/tx_line_merge_2l_a_out.txt 
  
  else if ( $SIM_CASE == "SK1_chip_id" )  then

    source sim_case.csh 
  
  else if ( $SIM_CASE == "beh_arc_rw_ocram" ) then
 
    source sim_case.csh 
 
  else if ( $SIM_CASE == "gpio" ) then
  
    set trap_case="cpu_sleep_pll_cpu_on"
    source sim_case.csh 

  else if ( $SIM_CASE == "fake_dram" ) then
 
    source sim_case.csh 
    diff -i -s -b --brief ../result.txt ../golden_result.txt 
  
  else if ( $SIM_CASE == "jtag_read_chipid" ) then
  
    source sim_case.csh 
    
 endif


