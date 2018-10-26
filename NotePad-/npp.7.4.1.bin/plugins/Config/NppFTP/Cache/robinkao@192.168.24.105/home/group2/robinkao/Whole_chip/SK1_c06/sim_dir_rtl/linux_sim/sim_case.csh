#!/bin/csh -f

//for arasan mipi phy
setenv NCPROTECT_KEYDB /nfsroot2/VSS_SK1/ISP_ip/Alchip/MIPI/Arasan/ComPHY_BIST_TB_v1p0_20170417/user_key


#-----------------------------------------------------------------------------
#File        : sim_case.csh
#Author      : Elmer
#Created     : 2017/3/17
#Function    : for FPGA / Whole_Chip simulation
#Modified    : 

#-----------------------------------------------------------------------------

# Clean the directory
echo "Info: Clean the directory"
rm -rf ../*.v
rm -rf ../*.f
rm -rf ../*.txt
rm -rf ../*.log
rm -rf ../*.csh
rm -rf ../*.pl
rm -rf ../*.sti
rm -rf ../*.rpt
rm -rf ../*.prj
rm -rf ../INCA_libs


# ----------------------------------------------------------------------------
# Whole_Chip parameters
set local_dir=`pwd`"/../.."
set chip_module_name="ISP_chip"
set chip=ISP_chip
set stimulus_path=models_and_setup/stimulus
set default_path=models_and_setup/stimulus/default

# ----------------------------------------------------------------------------
# copy default and default case files to sim folder
cp ../../models_and_setup/stimulus/default/*    ../ -rf

# copy the linux sim folder files to sim folder  
echo "Info: Copy files to sim folder" 
if $SIM_MODE == "FPGA"  then
  cp ./*.* ../
  cp ./FPGA_files/*.* ../
  if (-e  ../fpga_model) then
    rm ../fpga_model -f
    ln -s /nfsroot/AltekTool/fpga/fpga_model ../
  else 
    ln -s /nfsroot/AltekTool/fpga/fpga_model ../
  endif
  if (-e ../../FPGA_{$CHIP}_rtl) then
    rm ../../FPGA_{$CHIP}_rtl
    ln -s $FPGA_DATA_BASE/FPGA_{$CHIP}_rtl  ../../FPGA_{$CHIP}_rtl
  else 
    ln -s $FPGA_DATA_BASE/FPGA_{$CHIP}_rtl  ../../FPGA_{$CHIP}_rtl
  endif
else
  cp ./*.* ../
endif  
rm ../run.csh -f
rm ../sim_case.csh -f
# copy default and test case files to sim folder
cp ../../models_and_setup/stimulus/$SIM_CASE/* ../ -rf



# ----------------------------------------------------------------------------

# copy define files
#if $sim_type == "post_partition" then
  #echo "Simulation type is post_partition, copy $fpga_type\_define.v and rename to ../fpga_define.v"
  #cp ../../models_and_setup/stimulus/default/$fpga_type\_define.v ../fpga_define.v
#endif


# copy the bench.v and bench.f
# FPGA / Whole_Chip dram type select
if $SIM_MODE  ==  "FPGA"  then
  cp ./FPGA_files/bench_fpga_ddr3.v ../bench.v  
  cp ./FPGA_files/bench_fpga_ddr3.f ../ENV.f  
  echo "Info: Run FPGA mode, Bench.* copy done."
  echo "Info: DDR type : $dram_type "
else
  echo "Info: Run Whole_Chip mode, Bench.* copy done"
  echo "Info: DDR type : $dram_type "
endif

# define trap value

if $trap_case  ==  cpu_sleep_pll  then 
  # FPGA / Whole_Chip mode
  if $SIM_MODE == "FPGA" then
    #set trap_value=01a
    set trap_value=05a
    echo "Info: Run FPGA mode, Trap value : $trap_value set"
  else
    set trap_value=008
    echo "Info: Run Whole_Chip mode, Trap value : $trap_value set"
  endif

else if $trap_case  ==  cpu_sleep_pll_mode1  then 
  set trap_value=018 
else if $trap_case  ==  cpu_sleep_pll_mode2  then 
  set trap_value=028  
else if $trap_case  ==  cpu_sleep_pll_mode3  then 
  set trap_value=038
else if $trap_case  ==  cpu_sleep_pll_mode4  then 
  set trap_value=088
else if $trap_case  ==  cpu_sleep_pll_mode5  then 
  set trap_value=098 
else if $trap_case  ==  cpu_sleep_pll_mode6  then 
  set trap_value=0a8  
else if $trap_case  ==  cpu_sleep_pll_mode7  then 
  set trap_value=0b8 
else if $trap_case  ==  cpu_sleep_pll_cpu_on  then 
  set trap_value=048 
#else if $trap_case  ==  cpu_sleep_pll_reflock  then
#  set trap_value=000
else if $trap_case  ==  cpu_sleep  then
  set trap_value=00b     # slow clk
#else if $trap_case  ==  cpu_sleep_spi_trans_pll  then
#  set trap_value=010
#else if $trap_case  ==  always_spi_nor_pll_reflock  then 
#  set trap_value=006
else if $trap_case  ==  always_spi_nor_pll  then 
  set trap_value=044
else if $trap_case  ==  always_spi_nor  then 
  set trap_value=007     # slow clk
else if $trap_case  ==  i2c_pll_id40  then 
  set trap_value=00c 
#else if $trap_case  ==  i2c_pll_id40_reflock  then 
#  set trap_value=00c 
else if $trap_case  ==  i2c_pll_id4a  then 
  set trap_value=01c 
else if $trap_case  ==  i2c_pll_id50  then 
  set trap_value=02c 
else if $trap_case  ==  always_i2c_pll_id60  then 
  set trap_value=03c 
#else if $trap_case  ==  always_i2c_pll_id60_reflock  then 
#  set trap_value=03e 
else if $trap_case  ==  uspi_mode_0  then 
  set trap_value=003     # slow clk
else if $trap_case  ==  uspi_mode_1  then 
  set trap_value=013     # slow clk
else if $trap_case  ==  uspi_mode_2  then 
  set trap_value=023     # slow clk
else if $trap_case  ==  uspi_mode_3  then 
  set trap_value=033     # slow clk
else if $trap_case  ==  uspi_mode_4  then 
  set trap_value=083     # slow clk
else if $trap_case  ==  uspi_mode_5  then 
  set trap_value=093     # slow clk
else if $trap_case  ==  uspi_mode_6  then 
  set trap_value=0a3     # slow clk
else if $trap_case  ==  uspi_mode_7  then 
  set trap_value=0b3     # slow clk 
else if $trap_case  ==  uspi_mode_0_pll  then 
  set trap_value=000
else if $trap_case  ==  uspi_mode_1_pll  then 
  set trap_value=010
else if $trap_case  ==  uspi_mode_2_pll  then 
  set trap_value=020
else if $trap_case  ==  uspi_mode_3_pll  then 
  set trap_value=030
else if $trap_case  ==  uspi_mode_4_pll  then 
  set trap_value=080
else if $trap_case  ==  uspi_mode_5_pll  then 
  set trap_value=090
else if $trap_case  ==  uspi_mode_6_pll  then 
  set trap_value=0a0
else if $trap_case  ==  uspi_mode_7_pll  then 
  set trap_value=0b0
else if $trap_case  ==  uspi_mode_1_pll_cpu_on  then 
  set trap_value=050 
#else if $trap_case  ==  always_i2c  then 
# set trap_value=03f     # slow clk
else if $trap_case  ==  cpu_sleep_pll_factor_1  then 
  set trap_value=009
else if $trap_case  ==  cpu_sleep_pll_factor_2  then 
  set trap_value=00a
else if $trap_case  ==  uspi_mode_0_pll_27M  then 
  set trap_value=000
else 
  echo "Error: user defined an invalid bootstrap value"
  exit 0    
endif
echo "EXT_PARA_1=$EXT_PARA_1"
echo "EXT_PARA_2=$EXT_PARA_2"
echo "EXT_PARA_3=$EXT_PARA_3"

# local variables  
set sim_timing=$timing

if "$LOCAL_SIM" == "enable" then
  set default_dir=$local_dir/$default_path
  #set playback_dir=$local_dir/$default_path
  set case_dir=$local_dir/$stimulus_path/$SIM_CASE
  set case_rtl_dir=$local_dir/$stimulus_path/$SIM_CASE/rtl
  set case_gate_dir=$local_dir/$stimulus_path/$SIM_CASE/non_rtl
  set netlist_dir=$local_dir/$netlist/$version
  set f_file_str=$local_dir/$netlist/$version
  set f_file_str_local=$local_dir/$netlist/$version
  #set f_file_str_sa1=$sa1_dir/sa120_chip_rtl/c0_09_eco31_test/sa120_modules
  #set simlog_dir=../simlog
  #set ver_log_dir=$simlog_dir/$netlist
  #set backup_dir=$ver_log_dir/$version
  #set bp_wave_dir=../simlog/$netlist/$version/waves
  #set pattern_dir=../pat
  set sim_case_str=$SIM_CASE\_$sim_timing\_$trap_value\_
  set timing_file=$sim_timing\_timing.log
  
  mkdir $f_file_str_local/chip/design -p
  echo "Info : Whole Chip files are at local."
else
  set default_dir=$local_dir/$default_path
  #set playback_dir=$local_dir/$default_path
  set case_dir=$local_dir/$stimulus_path/$SIM_CASE
  set case_rtl_dir=$local_dir/$stimulus_path/$SIM_CASE/rtl
  set case_gate_dir=$local_dir/$stimulus_path/$SIM_CASE/non_rtl
  set netlist_dir=$data_base_dir/$netlist/$version
  set f_file_str=$data_base_dir/$netlist/$version
  set f_file_str_local=$local_dir/$netlist/$version
  #set f_file_str_sa1=$sa1_dir/sa120_chip_rtl/c0_09_eco31_test/sa120_modules
  #set simlog_dir=../simlog
  #set ver_log_dir=$simlog_dir/$netlist
  #set backup_dir=$ver_log_dir/$version
  #set bp_wave_dir=../simlog/$netlist/$version/waves
  #set pattern_dir=../pat
  set sim_case_str=$SIM_CASE\_$sim_timing\_$trap_value\_
  set timing_file=$sim_timing\_timing.log
  
  mkdir $f_file_str_local/chip/design -p
  echo "Info : Whole Chip files are on the server."
endif

if ! -e $netlist_dir  then
  echo "requested netlist $netlist_dir does ! exist"
  exit 0
else
  echo "Info : get netlist path: $netlist_dir"       
endif

# generate ASIC.f file
# Enter sim folder
cd ../

if $SIM_MODE  ==  "FPGA"  then
  echo " ######################################### "
  echo " ###   Start to generate FPGA ASIC.f   ### "
  echo " ######################################### "
  # param 1: project file name;  2: rtl folder name 3: simulation type, 4, post-ceritfy wrapper name
  set sim_path=`pwd`"/../"
  perl /nfsroot/AltekTool/fpga/project_to_asicf/prj2asicf.pl $prj_files $sim_path $sim_type sk1_chip_mixed.vp
  echo " ###################################### "
  echo " ###   Convert FPGA ASIC.f [Done]   ### "
  echo " ###################################### "
else
  echo "Info: netlist version is $f_file_str."
  echo " ############################################### "
  echo " ###   Start to generate Whole_Chip ASIC.f   ### "
  echo " ############################################### "
   
  grep test ./chip.f
  set RUN_realarc_sim=$?
  grep beh ./chip.f
  set RUN_beharc_sim=$?
  
  # check RTL is in local or in server
  if $RUN_realarc_sim == 0 then # realarc simulation
    echo "Run realarc simulation"
    set dotf_name=$chip_module_name\_test.f
  else if $RUN_beharc_sim == 0 then # behavior arc simulation
    echo "Run behavior arc simulation"
    set dotf_name=$chip_module_name\_beh.f
  else
    echo "sim_case.csh error: ./chip.f is not beh.f or test.f, please check the chip.f content."
    exit 0
  endif
  
  if -e $f_file_str_local/chip/design/$dotf_name then # .f file is in local
    cp $f_file_str_local/chip/design/$dotf_name .
    perl /nfsroot/AltekTool/sim/gendotf_v2.pl "./$dotf_name" "$f_file_str/" "$local_dir/" ASIC_tmp.f
  else if -e $f_file_str/chip/design/$dotf_name then  # .f file is in server
    cp $f_file_str/chip/design/$dotf_name .
    perl /nfsroot/AltekTool/sim/gendotf_v2.pl "./$dotf_name" "$f_file_str/" "$local_dir/" ASIC_tmp.f
  else # can not find .f file
    echo "sim_case.csh error: Cannot find $f_file_str_local/chip/design/$dotf_name"
    echo "or $f_file_str/chip/design/$dotf_name"
    echo "not such file in the specified folder."
    exit 0
  endif
  
  perl /nfsroot/AltekTool/sim/gendotf_v2.pl "./models.f" "$f_file_str/" "$local_dir/" ASIC.f
  more ASIC_tmp.f >> ASIC.f
  
  #perl /nfsroot/AltekTool/sim/gendotf_v2.pl "./ext_chip.f" "$f_file_str_sa1/" "$local_dir/" ext_ASIC.f
  perl /nfsroot/AltekTool/sim/gendotf_v2.pl "./bench.f" "$f_file_str_local/" "$local_dir/" ENV.f
  perl /nfsroot/AltekTool/sim/gendotf_v2.pl "./ext_bench.f" "$f_file_str_local/" "$local_dir/" ext_ENV.f
  
  echo " ############################################ "
  echo " ###   Convert Whole Chip ASIC.f [Done]   ### "
  echo " ############################################ "
    
endif

# ----------------------------------------------------------------------------
# Run coverage or not

set myname=`whoami`
set cov_result=wccov_$version\_$myname\_$SIM_CASE\_$trap_case
  
if $run_cov == "0" then
  echo "Info: Do not run coverage"
  set COV_PARAM=""
else
  echo "Info: run coverage, run coverage, run coverage, run coverage"
  set COV_PARAM = "-coverage     toggle \
                   -coverage     block \
                   -coverage     expr \
                   -covoverwrite \
                   -covfile      cov_cfg.tcl\
                   -covtest      $cov_result\
                   -covdut       sk1_chip\
                  "
endif

# ----------------------------------------------------------------------------

set GLOBAL_PARAM = "+loadpli1=debpli:novas_pli_boot \
            +access+rw \
              +define+$dram_type \
            +define+TRAP=9'h$trap_value \
            -f  wholechip.f \
                        -l ncverilog.log \
             "


if $SIM_MODE == "FPGA" then
  echo " ################################### "
  echo " #####   Run FPGA simulation   ##### "
  echo " ################################### "
    irun \
      $GLOBAL_PARAM \
      -ALLOWREDEFINITION \
      +notimingcheck \
#     -seq_udp_delay 100ps\

else
  if "$CPF_MODE" == "cpf_rtl" then
    echo ""run simulation cpf_rtl""
  
    if $rtl_netlist == "rtl" then
      echo "Info: Run RTL simulation with cpf_rtl option";
      irun \
      $GLOBAL_PARAM \
      +define+$sim_timing \
      -f  lp_sim.f \
       +define+SRC_DIR=\"$netlist_dir\" \
       +$sim_timing\delays  \
        $EXT_PARA_1 $EXT_PARA_2 $EXT_PARA_3 \
        $COV_PARAM
    else 
      echo "Info: Run netlist simulation with cpf_rtl option, netlist simulation does not need coverage setting";
      irun \
      $GLOBAL_PARAM \
      +define+$sim_timing \
        -f  lp_sim.f \
       +define+SRC_DIR=\"$netlist_dir\" \
       +$sim_timing\delays  \
        $EXT_PARA_1 $EXT_PARA_2 $EXT_PARA_3
    endif
  else if "$CPF_MODE" == "cpf_netlist" then
    echo "run simulation cpf_netlist"
    echo "Info: Run netlist simulation with cpf_netlist option, cpf netlist needs to add +nclps_iso_off option";
    irun \
      $GLOBAL_PARAM \
      +define+$sim_timing \
      -f  lp_sim.f \
       +define+SRC_DIR=\"$netlist_dir\" \
       +$sim_timing\delays  \
        $EXT_PARA_1 $EXT_PARA_2 $EXT_PARA_3 \
        +nclps_iso_off
  else
    echo " ######################################### "
    echo " #####   Run Whole_Chip simulation   ##### "
    echo " ######################################### "
    echo "Info: Run RTL simulation without CPF option";
    if $rtl_netlist == "rtl" then
      irun \
      $GLOBAL_PARAM \
      +define+$sim_timing \
       +define+SRC_DIR=\"$netlist_dir\" \
       +$sim_timing\delays  \
        $EXT_PARA_1 $EXT_PARA_2 $EXT_PARA_3 \
        $COV_PARAM
    else 
      echo "Info: Run netlist simulation without CPF option, do not enable coverage";
      irun \
      $GLOBAL_PARAM \
      +define+$sim_timing \
       +define+SRC_DIR=\"$netlist_dir\" \
       +$sim_timing\delays  \
        $EXT_PARA_1 $EXT_PARA_2 $EXT_PARA_3
    endif
  endif
endif  
    
# *----------------------------------------------------------------------------

cd ./linux_sim
