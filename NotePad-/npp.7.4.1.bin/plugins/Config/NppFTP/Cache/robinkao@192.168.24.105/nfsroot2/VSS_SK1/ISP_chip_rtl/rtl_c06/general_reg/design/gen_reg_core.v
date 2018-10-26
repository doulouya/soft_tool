module gen_reg_core_reg(
   //input
  input    wire             gen_reg_core_ip_clk           ,
  input    wire             gen_reg_core_ip_rst_n         ,
  input    wire             gen_reg_core_ioa_cs           ,
  input    wire  [14-1:0]   gen_reg_core_ioa_a            ,
  input    wire             gen_reg_core_ioa_rd           ,
  input    wire             gen_reg_core_ioa_wr           ,
  input    wire  [32-1:0]   gen_reg_core_ioa_wdata        ,
  input    wire             gen_reg_core_scan_en          ,
  input    wire  [16-1:0]   chip_id_in                    ,
  input    wire             interrupt_depth_top_in        ,
  input    wire             interrupt_lvhwirp_top_a_0_in  ,
  input    wire             interrupt_lvhwirp_top_b_0_in  ,
  input    wire             interrupt_lvlumanr_a_0_in     ,
  input    wire             interrupt_lvlumanr_a_1_in     ,
  input    wire             interrupt_lsc_b_2_in          ,
  input    wire             interrupt_lsc_b_3_in          ,
  input    wire             interrupt_lvsharp_a_0_in      ,
  input    wire             interrupt_lvsharp_a_1_in      ,
  input    wire             interrupt_y_bin_a_0_in        ,
  input    wire             interrupt_y_bin_a_1_in        ,
  input    wire             interrupt_bayer_scl_a_0_in    ,
  input    wire             interrupt_bayer_scl_a_1_in    ,
  input    wire             interrupt_y_bin_b_0_in        ,
  input    wire             interrupt_y_bin_b_1_in        ,
  input    wire             interrupt_compress_rotate_a_0_in,
  input    wire             interrupt_compress_rotate_b_0_in,
  input    wire             interrupt_decompress_a_0_in   ,
  input    wire             interrupt_decompress_b_0_in   ,
  input    wire             interrupt_depth_scl_up_a_0_in ,
  input    wire             interrupt_irp_top_in          ,
  input    wire             interrupt_mono_scl_a_0_in     ,
  input    wire             interrupt_mono_scl_a_1_in     ,
  input    wire             interrupt_lvlumanr_b_0_in     ,
  input    wire             interrupt_lvlumanr_b_1_in     ,
  input    wire             interrupt_lsc_a_0_in          ,
  input    wire             interrupt_ppe_a_0_in          ,
  input    wire             interrupt_pp_mrg_a_0_in       ,
  input    wire             interrupt_cbc_a_0_in          ,
  input    wire             interrupt_abc_a_0_in          ,
  input    wire             interrupt_ppc_a_0_in          ,
  input    wire             interrupt_two_pd_ws_a_0_in    ,
  input    wire             interrupt_standby_top_in      ,
  input    wire             interrupt_dpc_top_in          ,
  input    wire             interrupt_isp_if_bridge_a_0_in,
  input    wire             interrupt_isp_if_bridge_a_1_in,
  input    wire             interrupt_uspi_a_0_in         ,
  input    wire             interrupt_senif56_asyn_d16_0_w_softrst_ok_in,
  input    wire             interrupt_senif56_asyn_d16_0_r_softrst_ok_in,
  input    wire             interrupt_senif56_asyn_d16_1_w_softrst_ok_in,
  input    wire             interrupt_senif56_asyn_d16_1_r_softrst_ok_in,
  input    wire             interrupt_yuv420_444_a_0_in   ,
  input    wire             interrupt_tx_top_out_mux_a_0_in,
  input    wire             interrupt_tx_top_out_mux_a_1_in,
  input    wire             interrupt_oc_ram_wrapper7_in  ,
  input    wire             interrupt_mipi_csi2_tx_1_in   ,
  input    wire             interrupt_mipi_tx_phy_if_1_in ,
  input    wire             interrupt_mipi_csi2_rx_0_in   ,
  input    wire             interrupt_mipi_csi2_rx_1_in   ,
  input    wire             interrupt_mipi_slvds_rx_phy_if_0_in,
  input    wire             interrupt_mipi_slvds_rx_phy_if_1_in,
  input    wire             interrupt_ssi_ctl_a_0_in      ,
  input    wire             interrupt_ppi_bridge_a_0_in   ,
  input    wire             interrupt_ppi_bridge_a_1_in   ,
  input    wire             interrupt_mipi_line_read_a_0_in,
  input    wire             interrupt_mipi_line_read_a_1_in,
  input    wire             interrupt_fpga_i2c_0_in       ,
  input    wire             interrupt_fpga_i2c_1_in       ,
  input    wire             interrupt_fpga_i2c_2_in       ,
  input    wire             interrupt_i2c_0_in            ,
  input    wire             interrupt_i2c_1_in            ,
  input    wire             interrupt_expo_gain_ctrl_0_in ,
  input    wire             interrupt_expo_gain_ctrl_1_in ,
  input    wire             interrupt_fpga_i2c_3_in       ,
  input    wire             interrupt_fpga_i2c_4_in       ,
  input    wire             interrupt_lzrw_a_0_in         ,
  input    wire             interrupt_rectify_a_0_in      ,
  input    wire             interrupt_rectify_b_0_in      ,
  input    wire             interrupt_sw_intr_in          ,
  input    wire             interrupt_gpio_in             ,
  input    wire             interrupt_aio_in              ,
  input    wire             interrupt_i2c_boot_in         ,
  input    wire             interrupt_ioa_in              ,
  input    wire             interrupt_wpl_in              ,
  input    wire             interrupt_spi_nor_in          ,
  input    wire             interrupt_uspi_e_0_in         ,
  input    wire             interrupt_fpga_uspi_firefox_in,
  input    wire             interrupt_i2c_slave_top_0_in  ,
  input    wire             interrupt_pll_wait_cnt_dn_in  ,
  input    wire             interrupt_arb_bus_stdby_0_in  ,
  input    wire             interrupt_arb_bus_dpc_0_in    ,
  input    wire             interrupt_spi_switch_done_in  ,
  input    wire             interrupt_arb_bus_depth_0_in  ,
  input    wire             interrupt_i2c_switch_done_in  ,
  input    wire             interrupt_dp_top_a_0_in       ,
  input    wire             interrupt_dg_mcc_a_0_in       ,
  input    wire             interrupt_dg_ca_a_0_in        ,
  input    wire             interrupt_ddr_cfg_in          ,
  input    wire             interrupt_pll_fix_lock_in     ,
  input    wire             interrupt_pll_var_lock_in     ,
  input    wire             interrupt_pll_fix_fbslip_in   ,
  input    wire             interrupt_pll_var_fbslip_in   ,
  input    wire             interrupt_pll_fix_rfslip_in   ,
  input    wire             interrupt_pll_var_rfslip_in   ,
  input    wire             interrupt_pll_ext_lock_in     ,
  input    wire             interrupt_pll_ext_fbslip_in   ,
  input    wire             interrupt_pll_ext_rfslip_in   ,
  input    wire             interrupt_hdr_top_in          ,
  input    wire             interrupt_id_det_a_0_in       ,
  input    wire             interrupt_id_det_a_1_in       ,
  input    wire             interrupt_bayer_binning_a_0_in,
  input    wire             interrupt_bayer_binning_a_1_in,
  input    wire             interrupt_rlb_a_0_in          ,
  input    wire             interrupt_rlb_b_0_in          ,
  input    wire             interrupt_rdn_a_0_in          ,
  input    wire             interrupt_rdn_b_0_in          ,
  input    wire             interrupt_tx_top_in           ,
  input    wire             interrupt_tx_line_merge_2l_a_0_in,
  input    wire             interrupt_tx_line_merge_2l_b_0_in,
  input    wire             interrupt_hdr_interpolation_a_0_in,
  input    wire             interrupt_hdr_blending_a_0_in ,
  input    wire             interrupt_hdr_ae_a_0_in       ,
  input    wire             interrupt_hdr_ae_a_1_in       ,
  input    wire             interrupt_tx_line_merge_2l_c_0_in,
  input    wire             interrupt_tx_line_merge_2l_d_0_in,
  input    wire             interrupt_lsc_c_0_in          ,
  input    wire             sw_intr_trigger_00_in         ,
  input    wire             sw_intr_trigger_00_in_ctl     ,
  input    wire             sw_intr_trigger_01_in         ,
  input    wire             sw_intr_trigger_01_in_ctl     ,
  input    wire             sw_intr_trigger_02_in         ,
  input    wire             sw_intr_trigger_02_in_ctl     ,
  input    wire             sw_intr_trigger_03_in         ,
  input    wire             sw_intr_trigger_03_in_ctl     ,
  input    wire             sw_intr_trigger_04_in         ,
  input    wire             sw_intr_trigger_04_in_ctl     ,
  input    wire             sw_intr_trigger_05_in         ,
  input    wire             sw_intr_trigger_05_in_ctl     ,
  input    wire             sw_intr_trigger_06_in         ,
  input    wire             sw_intr_trigger_06_in_ctl     ,
  input    wire             sw_intr_trigger_07_in         ,
  input    wire             sw_intr_trigger_07_in_ctl     ,
  input    wire             sw_intr_trigger_08_in         ,
  input    wire             sw_intr_trigger_08_in_ctl     ,
  input    wire             sw_intr_trigger_09_in         ,
  input    wire             sw_intr_trigger_09_in_ctl     ,
  input    wire             sw_intr_trigger_10_in         ,
  input    wire             sw_intr_trigger_10_in_ctl     ,
  input    wire             sw_intr_trigger_11_in         ,
  input    wire             sw_intr_trigger_11_in_ctl     ,
  input    wire             sw_intr_trigger_12_in         ,
  input    wire             sw_intr_trigger_12_in_ctl     ,
  input    wire             sw_intr_trigger_13_in         ,
  input    wire             sw_intr_trigger_13_in_ctl     ,
  input    wire             sw_intr_trigger_14_in         ,
  input    wire             sw_intr_trigger_14_in_ctl     ,
  input    wire             sw_intr_trigger_15_in         ,
  input    wire             sw_intr_trigger_15_in_ctl     ,
  input    wire             sw_intr_trigger_16_in         ,
  input    wire             sw_intr_trigger_16_in_ctl     ,
  input    wire             sw_intr_trigger_17_in         ,
  input    wire             sw_intr_trigger_17_in_ctl     ,
  input    wire             sw_intr_trigger_18_in         ,
  input    wire             sw_intr_trigger_18_in_ctl     ,
  input    wire             sw_intr_trigger_19_in         ,
  input    wire             sw_intr_trigger_19_in_ctl     ,
  input    wire             sw_intr_trigger_20_in         ,
  input    wire             sw_intr_trigger_20_in_ctl     ,
  input    wire             sw_intr_trigger_21_in         ,
  input    wire             sw_intr_trigger_21_in_ctl     ,
  input    wire             sw_intr_trigger_22_in         ,
  input    wire             sw_intr_trigger_22_in_ctl     ,
  input    wire             sw_intr_trigger_23_in         ,
  input    wire             sw_intr_trigger_23_in_ctl     ,
  input    wire             sw_intr_trigger_24_in         ,
  input    wire             sw_intr_trigger_24_in_ctl     ,
  input    wire             sw_intr_trigger_25_in         ,
  input    wire             sw_intr_trigger_25_in_ctl     ,
  input    wire             sw_intr_trigger_26_in         ,
  input    wire             sw_intr_trigger_26_in_ctl     ,
  input    wire             sw_intr_trigger_27_in         ,
  input    wire             sw_intr_trigger_27_in_ctl     ,
  input    wire             sw_intr_trigger_28_in         ,
  input    wire             sw_intr_trigger_28_in_ctl     ,
  input    wire             sw_intr_trigger_29_in         ,
  input    wire             sw_intr_trigger_29_in_ctl     ,
  input    wire             sw_intr_trigger_30_in         ,
  input    wire             sw_intr_trigger_30_in_ctl     ,
  input    wire             sw_intr_trigger_31_in         ,
  input    wire             sw_intr_trigger_31_in_ctl     ,
  input    wire             sw_intr_level_00_in           ,
  input    wire             sw_intr_level_01_in           ,
  input    wire             sw_intr_level_02_in           ,
  input    wire             sw_intr_level_03_in           ,
  input    wire             sw_intr_level_04_in           ,
  input    wire             sw_intr_level_05_in           ,
  input    wire             sw_intr_level_06_in           ,
  input    wire             sw_intr_level_07_in           ,
  input    wire             sw_intr_level_08_in           ,
  input    wire             sw_intr_level_09_in           ,
  input    wire             sw_intr_level_10_in           ,
  input    wire             sw_intr_level_11_in           ,
  input    wire             sw_intr_level_12_in           ,
  input    wire             sw_intr_level_13_in           ,
  input    wire             sw_intr_level_14_in           ,
  input    wire             sw_intr_level_15_in           ,
  input    wire             sw_intr_level_16_in           ,
  input    wire             sw_intr_level_17_in           ,
  input    wire             sw_intr_level_18_in           ,
  input    wire             sw_intr_level_19_in           ,
  input    wire             sw_intr_level_20_in           ,
  input    wire             sw_intr_level_21_in           ,
  input    wire             sw_intr_level_22_in           ,
  input    wire             sw_intr_level_23_in           ,
  input    wire             sw_intr_level_24_in           ,
  input    wire             sw_intr_level_25_in           ,
  input    wire             sw_intr_level_26_in           ,
  input    wire             sw_intr_level_27_in           ,
  input    wire             sw_intr_level_28_in           ,
  input    wire             sw_intr_level_29_in           ,
  input    wire             sw_intr_level_30_in           ,
  input    wire             sw_intr_level_31_in           ,
  input    wire  [10-1:0]   sys_conf_in                   ,
  input    wire  [10-1:0]   current_bootstrap_value_in    ,
  input    wire             spi_debug_mode_control_in     ,
  input    wire             spi_debug_mode_control_in_ctl ,
  input    wire             spi_switch_status_in          ,
  input    wire             i2c_switch_status_in          ,
  input    wire             ppi_bridge_a_0_error_status_out_in,
  input    wire             ppi_bridge_a_0_lookback_test_deskew_mode_fail_in,
  input    wire             ppi_bridge_a_0_lookback_test_hs_mode_fail_in,
  input    wire             ppi_bridge_a_0_lookback_test_ulps_mode_fail_in,
  input    wire             ppi_bridge_a_1_error_status_out_in,
  input    wire             ppi_bridge_a_1_lookback_test_deskew_mode_fail_in,
  input    wire             ppi_bridge_a_1_lookback_test_hs_mode_fail_in,
  input    wire             ppi_bridge_a_1_lookback_test_ulps_mode_fail_in,
  input    wire             isp_if_bridge_a_0_lookback_test_fail_in,
  input    wire             isp_if_bridge_a_1_lookback_test_fail_in,
  input    wire             mipi_csi2_rx_1_phy_error_status_out_in,
  input    wire             mipi_csi2_rx_1_ctl_error_status_out_in,
  input    wire             mipi_slvds_rx_phy_if_1_dll_error_status_out_in,
  input    wire             mipi_slvds_rx_phy_if_1_error_status_out_in,
  input    wire             arasan_0_prbs_fail_in         ,
  //output
  output   wire             gen_reg_core_ioa_rdy          ,
  output   reg   [32-1:0]   gen_reg_core_ioa_rdata        ,
  output   wire  [32-1:0]   rft_reg_out                   ,
  output   wire             gen_reg_core_intr_base_int4   ,
  output   wire             gen_reg_core_intr_ap_int      ,
  output   wire             gen_reg_core_intr_base_int5   ,
  output   wire             gen_reg_core_intr_base_int6   ,
  output   wire             gen_reg_core_intr_base_int9   ,
  output   wire             gen_reg_core_intr_base_int8   ,
  output   wire             gen_reg_core_intr_base_int10  ,
  output   wire             srampd_lvhwirp_top_a_0_out    ,
  output   wire             srampd_lvhwirp_top_b_0_out    ,
  output   wire             srampd_lvlumanr_a_0_out       ,
  output   wire             srampd_lvlumanr_a_1_out       ,
  output   wire             srampd_lsc_b_2_out            ,
  output   wire             srampd_lsc_b_3_out            ,
  output   wire             srampd_lvsharp_a_0_out        ,
  output   wire             srampd_lvsharp_a_1_out        ,
  output   wire             srampd_y_bin_a_0_out          ,
  output   wire             srampd_y_bin_a_1_out          ,
  output   wire             srampd_bayer_scl_a_0_out      ,
  output   wire             srampd_bayer_scl_a_1_out      ,
  output   wire             srampd_y_bin_b_top_0_out      ,
  output   wire             srampd_compress_rotate_a_0_out,
  output   wire             srampd_compress_rotate_b_0_out,
  output   wire             srampd_decompress_a_0_out     ,
  output   wire             srampd_decompress_b_0_out     ,
  output   wire             srampd_depth_scl_up_a_0_out   ,
  output   wire             srampd_mono_scl_a_0_out       ,
  output   wire             srampd_mono_scl_a_1_out       ,
  output   wire             srampd_lvlumanr_b_top_0_out   ,
  output   wire             srampd_lsc_a_0_out            ,
  output   wire             srampd_ppe_a_0_out            ,
  output   wire             srampd_cbc_a_0_out            ,
  output   wire             srampd_abc_a_0_out            ,
  output   wire             srampd_ppc_a_0_out            ,
  output   wire             srampd_two_pd_ws_a_0_out      ,
  output   wire             srampd_uspi_a_0_out           ,
  output   wire             srampd_yuv420_444_a_0_out     ,
  output   wire             srampd_tx_top_out_mux_a_0_out ,
  output   wire             srampd_tx_top_out_mux_a_1_out ,
  output   wire             srampd_mipi_csi2_tx_0_out     ,
  output   wire             srampd_mipi_csi2_rx_0_out     ,
  output   wire             srampd_oc_ram_wrapper0_out    ,
  output   wire             srampd_oc_ram_wrapper3_out    ,
  output   wire             srampd_oc_ram_wrapper6_out    ,
  output   wire             srampd_mipi_line_read_a_0_out ,
  output   wire             srampd_mipi_line_read_a_1_out ,
  output   wire             srampd_oc_ram_wrapper7_out    ,
  output   wire             srampd_base_arc_out           ,
  output   wire             srampd_lzrw_a_0_out           ,
  output   wire             srampd_idd_buffer_0_out       ,
  output   wire             srampd_spi_nor_out            ,
  output   wire             srampd_uspi_e_0_out           ,
  output   wire             srampd_i2c_slave_top_0_out    ,
  output   wire             srampd_rectify_a_0_rse_dma_out_out,
  output   wire             srampd_rectify_b_0_rse_dma_out_out,
  output   wire             srampd_dg_mcc_a_0_out         ,
  output   wire             srampd_dg_ca_a_0_out          ,
  output   wire             srampd_dp_mem_write_out       ,
  output   wire             srampd_dp_src_read_out        ,
  output   wire             srampd_dp_mid_out             ,
  output   wire             srampd_dp_img_seg_out         ,
  output   wire             srampd_dp_instag_l_out        ,
  output   wire             srampd_dp_instag_h_out        ,
  output   wire             srampd_id_det_a_0_out         ,
  output   wire             srampd_id_det_a_1_out         ,
  output   wire             srampd_bayer_binning_a_0_out  ,
  output   wire             srampd_bayer_binning_a_1_out  ,
  output   wire             srampd_rlb_a_0_out            ,
  output   wire             srampd_rlb_b_0_out            ,
  output   wire             srampd_rdn_a_0_out            ,
  output   wire             srampd_rdn_b_0_out            ,
  output   wire             srampd_tx_line_merge_2l_a_0_out,
  output   wire             srampd_tx_line_merge_2l_b_0_out,
  output   wire             srampd_hdr_interpolation_a_0_out,
  output   wire             srampd_hdr_blending_a_0_out   ,
  output   wire             srampd_hdr_ae_a_0_out         ,
  output   wire             srampd_hdr_ae_a_1_out         ,
  output   wire             srampd_tx_line_merge_2l_c_0_out,
  output   wire             srampd_tx_line_merge_2l_d_0_out,
  output   wire             srampd_lsc_c_0_out            ,
  output   wire             iso_pd_standby_out            ,
  output   wire             iso_pd_dpc_out                ,
  output   wire             iso_pd_hdr_out                ,
  output   wire             iso_pd_irp_depth_out          ,
  output   wire             psw_pd_standby_out            ,
  output   wire             psw_pd_dpc_out                ,
  output   wire             psw_pd_hdr_out                ,
  output   wire             psw_pd_irp_depth_out          ,
  output   wire             sw_intr_trigger_00_out        ,
  output   wire             sw_intr_trigger_01_out        ,
  output   wire             sw_intr_trigger_02_out        ,
  output   wire             sw_intr_trigger_03_out        ,
  output   wire             sw_intr_trigger_04_out        ,
  output   wire             sw_intr_trigger_05_out        ,
  output   wire             sw_intr_trigger_06_out        ,
  output   wire             sw_intr_trigger_07_out        ,
  output   wire             sw_intr_trigger_08_out        ,
  output   wire             sw_intr_trigger_09_out        ,
  output   wire             sw_intr_trigger_10_out        ,
  output   wire             sw_intr_trigger_11_out        ,
  output   wire             sw_intr_trigger_12_out        ,
  output   wire             sw_intr_trigger_13_out        ,
  output   wire             sw_intr_trigger_14_out        ,
  output   wire             sw_intr_trigger_15_out        ,
  output   wire             sw_intr_trigger_16_out        ,
  output   wire             sw_intr_trigger_17_out        ,
  output   wire             sw_intr_trigger_18_out        ,
  output   wire             sw_intr_trigger_19_out        ,
  output   wire             sw_intr_trigger_20_out        ,
  output   wire             sw_intr_trigger_21_out        ,
  output   wire             sw_intr_trigger_22_out        ,
  output   wire             sw_intr_trigger_23_out        ,
  output   wire             sw_intr_trigger_24_out        ,
  output   wire             sw_intr_trigger_25_out        ,
  output   wire             sw_intr_trigger_26_out        ,
  output   wire             sw_intr_trigger_27_out        ,
  output   wire             sw_intr_trigger_28_out        ,
  output   wire             sw_intr_trigger_29_out        ,
  output   wire             sw_intr_trigger_30_out        ,
  output   wire             sw_intr_trigger_31_out        ,
  output   wire             gen_reg_core_intr_interrupt_sw_intr,
  output   wire  [10-1:0]   inv_sys_conf_out              ,
  output   wire             senif56_asyn_d16_0_softrst_out,
  output   wire             senif56_asyn_d16_1_softrst_out,
  output   wire             mipi_tx_phy_if_1_test_mode0_out,
  output   wire             spi_debug_mode_control_out    ,
  output   wire             i2c_debug_mode_control_out    ,
  output   wire             mipi_ppi_source_sel_1_out     ,
  output   wire             mipi_ppi_source_sel_0_out     ,
  output   wire             pll_wait_cnt_en_out           ,
  output   wire  [16-1:0]   pll_wait_cnt_cyc_out          
);

  wire         [32-1: 0]    rft_reg_rdata_out   ;
  wire         [32-1: 0]    boot_mode_debug_flag_rdata_out;
  wire         [32-1: 0]    magic_number_rdata_out;
  wire         [16-1: 0]    chip_id_rdata_out   ;
  wire                      interrupt_depth_top_en_base_int4_rdata_out;
  wire                      interrupt_lvhwirp_top_a_0_en_base_int4_rdata_out;
  wire                      interrupt_lvhwirp_top_b_0_en_base_int4_rdata_out;
  wire                      interrupt_lvlumanr_a_0_en_base_int4_rdata_out;
  wire                      interrupt_lvlumanr_a_1_en_base_int4_rdata_out;
  wire                      interrupt_lsc_b_2_en_base_int4_rdata_out;
  wire                      interrupt_lsc_b_3_en_base_int4_rdata_out;
  wire                      interrupt_lvsharp_a_0_en_base_int4_rdata_out;
  wire                      interrupt_lvsharp_a_1_en_base_int4_rdata_out;
  wire                      interrupt_y_bin_a_0_en_base_int4_rdata_out;
  wire                      interrupt_y_bin_a_1_en_base_int4_rdata_out;
  wire                      interrupt_bayer_scl_a_0_en_base_int4_rdata_out;
  wire                      interrupt_bayer_scl_a_1_en_base_int4_rdata_out;
  wire                      interrupt_y_bin_b_0_en_base_int4_rdata_out;
  wire                      interrupt_y_bin_b_1_en_base_int4_rdata_out;
  wire                      interrupt_compress_rotate_a_0_en_base_int4_rdata_out;
  wire                      interrupt_compress_rotate_b_0_en_base_int4_rdata_out;
  wire                      interrupt_decompress_a_0_en_base_int4_rdata_out;
  wire                      interrupt_decompress_b_0_en_base_int4_rdata_out;
  wire                      interrupt_depth_scl_up_a_0_en_base_int4_rdata_out;
  wire                      interrupt_irp_top_en_base_int4_rdata_out;
  wire                      interrupt_mono_scl_a_0_en_base_int4_rdata_out;
  wire                      interrupt_mono_scl_a_1_en_base_int4_rdata_out;
  wire                      interrupt_lvlumanr_b_0_en_base_int4_rdata_out;
  wire                      interrupt_lvlumanr_b_1_en_base_int4_rdata_out;
  wire                      interrupt_depth_top_en_ap_int_rdata_out;
  wire                      interrupt_lvhwirp_top_a_0_en_ap_int_rdata_out;
  wire                      interrupt_lvhwirp_top_b_0_en_ap_int_rdata_out;
  wire                      interrupt_lvlumanr_a_0_en_ap_int_rdata_out;
  wire                      interrupt_lvlumanr_a_1_en_ap_int_rdata_out;
  wire                      interrupt_lsc_b_2_en_ap_int_rdata_out;
  wire                      interrupt_lsc_b_3_en_ap_int_rdata_out;
  wire                      interrupt_lvsharp_a_0_en_ap_int_rdata_out;
  wire                      interrupt_lvsharp_a_1_en_ap_int_rdata_out;
  wire                      interrupt_y_bin_a_0_en_ap_int_rdata_out;
  wire                      interrupt_y_bin_a_1_en_ap_int_rdata_out;
  wire                      interrupt_bayer_scl_a_0_en_ap_int_rdata_out;
  wire                      interrupt_bayer_scl_a_1_en_ap_int_rdata_out;
  wire                      interrupt_y_bin_b_0_en_ap_int_rdata_out;
  wire                      interrupt_y_bin_b_1_en_ap_int_rdata_out;
  wire                      interrupt_compress_rotate_a_0_en_ap_int_rdata_out;
  wire                      interrupt_compress_rotate_b_0_en_ap_int_rdata_out;
  wire                      interrupt_decompress_a_0_en_ap_int_rdata_out;
  wire                      interrupt_decompress_b_0_en_ap_int_rdata_out;
  wire                      interrupt_depth_scl_up_a_0_en_ap_int_rdata_out;
  wire                      interrupt_irp_top_en_ap_int_rdata_out;
  wire                      interrupt_mono_scl_a_0_en_ap_int_rdata_out;
  wire                      interrupt_mono_scl_a_1_en_ap_int_rdata_out;
  wire                      interrupt_lvlumanr_b_0_en_ap_int_rdata_out;
  wire                      interrupt_lvlumanr_b_1_en_ap_int_rdata_out;
  wire                      interrupt_depth_top_rdata_out;
  wire                      interrupt_lvhwirp_top_a_0_rdata_out;
  wire                      interrupt_lvhwirp_top_b_0_rdata_out;
  wire                      interrupt_lvlumanr_a_0_rdata_out;
  wire                      interrupt_lvlumanr_a_1_rdata_out;
  wire                      interrupt_lsc_b_2_rdata_out;
  wire                      interrupt_lsc_b_3_rdata_out;
  wire                      interrupt_lvsharp_a_0_rdata_out;
  wire                      interrupt_lvsharp_a_1_rdata_out;
  wire                      interrupt_y_bin_a_0_rdata_out;
  wire                      interrupt_y_bin_a_1_rdata_out;
  wire                      interrupt_bayer_scl_a_0_rdata_out;
  wire                      interrupt_bayer_scl_a_1_rdata_out;
  wire                      interrupt_y_bin_b_0_rdata_out;
  wire                      interrupt_y_bin_b_1_rdata_out;
  wire                      interrupt_compress_rotate_a_0_rdata_out;
  wire                      interrupt_compress_rotate_b_0_rdata_out;
  wire                      interrupt_decompress_a_0_rdata_out;
  wire                      interrupt_decompress_b_0_rdata_out;
  wire                      interrupt_depth_scl_up_a_0_rdata_out;
  wire                      interrupt_irp_top_rdata_out;
  wire                      interrupt_mono_scl_a_0_rdata_out;
  wire                      interrupt_mono_scl_a_1_rdata_out;
  wire                      interrupt_lvlumanr_b_0_rdata_out;
  wire                      interrupt_lvlumanr_b_1_rdata_out;
  wire                      interrupt_lsc_a_0_en_base_int5_rdata_out;
  wire                      interrupt_ppe_a_0_en_base_int5_rdata_out;
  wire                      interrupt_pp_mrg_a_0_en_base_int5_rdata_out;
  wire                      interrupt_cbc_a_0_en_base_int5_rdata_out;
  wire                      interrupt_abc_a_0_en_base_int5_rdata_out;
  wire                      interrupt_ppc_a_0_en_base_int5_rdata_out;
  wire                      interrupt_two_pd_ws_a_0_en_base_int5_rdata_out;
  wire                      interrupt_standby_top_en_base_int5_rdata_out;
  wire                      interrupt_dpc_top_en_base_int5_rdata_out;
  wire                      interrupt_isp_if_bridge_a_0_en_base_int5_rdata_out;
  wire                      interrupt_isp_if_bridge_a_1_en_base_int5_rdata_out;
  wire                      interrupt_uspi_a_0_en_base_int5_rdata_out;
  wire                      interrupt_senif56_asyn_d16_0_w_softrst_ok_en_base_int5_rdata_out;
  wire                      interrupt_senif56_asyn_d16_0_r_softrst_ok_en_base_int5_rdata_out;
  wire                      interrupt_senif56_asyn_d16_1_w_softrst_ok_en_base_int5_rdata_out;
  wire                      interrupt_senif56_asyn_d16_1_r_softrst_ok_en_base_int5_rdata_out;
  wire                      interrupt_yuv420_444_a_0_en_base_int5_rdata_out;
  wire                      interrupt_tx_top_out_mux_a_0_en_base_int5_rdata_out;
  wire                      interrupt_tx_top_out_mux_a_1_en_base_int5_rdata_out;
  wire                      interrupt_oc_ram_wrapper7_en_base_int5_rdata_out;
  wire                      interrupt_lsc_a_0_en_ap_int_rdata_out;
  wire                      interrupt_ppe_a_0_en_ap_int_rdata_out;
  wire                      interrupt_pp_mrg_a_0_en_ap_int_rdata_out;
  wire                      interrupt_cbc_a_0_en_ap_int_rdata_out;
  wire                      interrupt_abc_a_0_en_ap_int_rdata_out;
  wire                      interrupt_ppc_a_0_en_ap_int_rdata_out;
  wire                      interrupt_two_pd_ws_a_0_en_ap_int_rdata_out;
  wire                      interrupt_standby_top_en_ap_int_rdata_out;
  wire                      interrupt_dpc_top_en_ap_int_rdata_out;
  wire                      interrupt_isp_if_bridge_a_0_en_ap_int_rdata_out;
  wire                      interrupt_isp_if_bridge_a_1_en_ap_int_rdata_out;
  wire                      interrupt_uspi_a_0_en_ap_int_rdata_out;
  wire                      interrupt_senif56_asyn_d16_0_w_softrst_ok_en_ap_int_rdata_out;
  wire                      interrupt_senif56_asyn_d16_0_r_softrst_ok_en_ap_int_rdata_out;
  wire                      interrupt_senif56_asyn_d16_1_w_softrst_ok_en_ap_int_rdata_out;
  wire                      interrupt_senif56_asyn_d16_1_r_softrst_ok_en_ap_int_rdata_out;
  wire                      interrupt_yuv420_444_a_0_en_ap_int_rdata_out;
  wire                      interrupt_tx_top_out_mux_a_0_en_ap_int_rdata_out;
  wire                      interrupt_tx_top_out_mux_a_1_en_ap_int_rdata_out;
  wire                      interrupt_oc_ram_wrapper7_en_ap_int_rdata_out;
  wire                      interrupt_lsc_a_0_rdata_out;
  wire                      interrupt_ppe_a_0_rdata_out;
  wire                      interrupt_pp_mrg_a_0_rdata_out;
  wire                      interrupt_cbc_a_0_rdata_out;
  wire                      interrupt_abc_a_0_rdata_out;
  wire                      interrupt_ppc_a_0_rdata_out;
  wire                      interrupt_two_pd_ws_a_0_rdata_out;
  wire                      interrupt_standby_top_rdata_out;
  wire                      interrupt_dpc_top_rdata_out;
  wire                      interrupt_isp_if_bridge_a_0_rdata_out;
  wire                      interrupt_isp_if_bridge_a_1_rdata_out;
  wire                      interrupt_uspi_a_0_rdata_out;
  wire                      interrupt_senif56_asyn_d16_0_w_softrst_ok_rdata_out;
  wire                      interrupt_senif56_asyn_d16_0_r_softrst_ok_rdata_out;
  wire                      interrupt_senif56_asyn_d16_1_w_softrst_ok_rdata_out;
  wire                      interrupt_senif56_asyn_d16_1_r_softrst_ok_rdata_out;
  wire                      interrupt_yuv420_444_a_0_rdata_out;
  wire                      interrupt_tx_top_out_mux_a_0_rdata_out;
  wire                      interrupt_tx_top_out_mux_a_1_rdata_out;
  wire                      interrupt_oc_ram_wrapper7_rdata_out;
  wire                      interrupt_mipi_csi2_tx_1_en_base_int6_rdata_out;
  wire                      interrupt_mipi_tx_phy_if_1_en_base_int6_rdata_out;
  wire                      interrupt_mipi_csi2_rx_0_en_base_int6_rdata_out;
  wire                      interrupt_mipi_csi2_rx_1_en_base_int6_rdata_out;
  wire                      interrupt_mipi_slvds_rx_phy_if_0_en_base_int6_rdata_out;
  wire                      interrupt_mipi_slvds_rx_phy_if_1_en_base_int6_rdata_out;
  wire                      interrupt_ssi_ctl_a_0_en_base_int6_rdata_out;
  wire                      interrupt_ppi_bridge_a_0_en_base_int6_rdata_out;
  wire                      interrupt_ppi_bridge_a_1_en_base_int6_rdata_out;
  wire                      interrupt_mipi_line_read_a_0_en_base_int6_rdata_out;
  wire                      interrupt_mipi_line_read_a_1_en_base_int6_rdata_out;
  wire                      interrupt_fpga_i2c_0_en_base_int6_rdata_out;
  wire                      interrupt_fpga_i2c_1_en_base_int6_rdata_out;
  wire                      interrupt_fpga_i2c_2_en_base_int6_rdata_out;
  wire                      interrupt_i2c_0_en_base_int6_rdata_out;
  wire                      interrupt_i2c_1_en_base_int6_rdata_out;
  wire                      interrupt_expo_gain_ctrl_0_en_base_int6_rdata_out;
  wire                      interrupt_expo_gain_ctrl_1_en_base_int6_rdata_out;
  wire                      interrupt_fpga_i2c_3_en_base_int6_rdata_out;
  wire                      interrupt_fpga_i2c_4_en_base_int6_rdata_out;
  wire                      interrupt_lzrw_a_0_en_base_int6_rdata_out;
  wire                      interrupt_mipi_csi2_tx_1_en_ap_int_rdata_out;
  wire                      interrupt_mipi_tx_phy_if_1_en_ap_int_rdata_out;
  wire                      interrupt_mipi_csi2_rx_0_en_ap_int_rdata_out;
  wire                      interrupt_mipi_csi2_rx_1_en_ap_int_rdata_out;
  wire                      interrupt_mipi_slvds_rx_phy_if_0_en_ap_int_rdata_out;
  wire                      interrupt_mipi_slvds_rx_phy_if_1_en_ap_int_rdata_out;
  wire                      interrupt_ssi_ctl_a_0_en_ap_int_rdata_out;
  wire                      interrupt_ppi_bridge_a_0_en_ap_int_rdata_out;
  wire                      interrupt_ppi_bridge_a_1_en_ap_int_rdata_out;
  wire                      interrupt_mipi_line_read_a_0_en_ap_int_rdata_out;
  wire                      interrupt_mipi_line_read_a_1_en_ap_int_rdata_out;
  wire                      interrupt_fpga_i2c_0_en_ap_int_rdata_out;
  wire                      interrupt_fpga_i2c_1_en_ap_int_rdata_out;
  wire                      interrupt_fpga_i2c_2_en_ap_int_rdata_out;
  wire                      interrupt_i2c_0_en_ap_int_rdata_out;
  wire                      interrupt_i2c_1_en_ap_int_rdata_out;
  wire                      interrupt_expo_gain_ctrl_0_en_ap_int_rdata_out;
  wire                      interrupt_expo_gain_ctrl_1_en_ap_int_rdata_out;
  wire                      interrupt_fpga_i2c_3_en_ap_int_rdata_out;
  wire                      interrupt_fpga_i2c_4_en_ap_int_rdata_out;
  wire                      interrupt_lzrw_a_0_en_ap_int_rdata_out;
  wire                      interrupt_mipi_csi2_tx_1_rdata_out;
  wire                      interrupt_mipi_tx_phy_if_1_rdata_out;
  wire                      interrupt_mipi_csi2_rx_0_rdata_out;
  wire                      interrupt_mipi_csi2_rx_1_rdata_out;
  wire                      interrupt_mipi_slvds_rx_phy_if_0_rdata_out;
  wire                      interrupt_mipi_slvds_rx_phy_if_1_rdata_out;
  wire                      interrupt_ssi_ctl_a_0_rdata_out;
  wire                      interrupt_ppi_bridge_a_0_rdata_out;
  wire                      interrupt_ppi_bridge_a_1_rdata_out;
  wire                      interrupt_mipi_line_read_a_0_rdata_out;
  wire                      interrupt_mipi_line_read_a_1_rdata_out;
  wire                      interrupt_fpga_i2c_0_rdata_out;
  wire                      interrupt_fpga_i2c_1_rdata_out;
  wire                      interrupt_fpga_i2c_2_rdata_out;
  wire                      interrupt_i2c_0_rdata_out;
  wire                      interrupt_i2c_1_rdata_out;
  wire                      interrupt_expo_gain_ctrl_0_rdata_out;
  wire                      interrupt_expo_gain_ctrl_1_rdata_out;
  wire                      interrupt_fpga_i2c_3_rdata_out;
  wire                      interrupt_fpga_i2c_4_rdata_out;
  wire                      interrupt_lzrw_a_0_rdata_out;
  wire                      interrupt_rectify_a_0_en_base_int9_rdata_out;
  wire                      interrupt_rectify_b_0_en_base_int9_rdata_out;
  wire                      interrupt_sw_intr_en_base_int9_rdata_out;
  wire                      interrupt_gpio_en_base_int9_rdata_out;
  wire                      interrupt_aio_en_base_int9_rdata_out;
  wire                      interrupt_i2c_boot_en_base_int9_rdata_out;
  wire                      interrupt_ioa_en_base_int9_rdata_out;
  wire                      interrupt_wpl_en_base_int9_rdata_out;
  wire                      interrupt_spi_nor_en_base_int9_rdata_out;
  wire                      interrupt_uspi_e_0_en_base_int9_rdata_out;
  wire                      interrupt_fpga_uspi_firefox_en_base_int9_rdata_out;
  wire                      interrupt_i2c_slave_top_0_en_base_int9_rdata_out;
  wire                      interrupt_pll_wait_cnt_dn_en_base_int9_rdata_out;
  wire                      interrupt_arb_bus_stdby_0_en_base_int9_rdata_out;
  wire                      interrupt_arb_bus_dpc_0_en_base_int9_rdata_out;
  wire                      interrupt_spi_switch_done_en_base_int9_rdata_out;
  wire                      interrupt_arb_bus_depth_0_en_base_int9_rdata_out;
  wire                      interrupt_i2c_switch_done_en_base_int9_rdata_out;
  wire                      interrupt_rectify_a_0_en_ap_int_rdata_out;
  wire                      interrupt_rectify_b_0_en_ap_int_rdata_out;
  wire                      interrupt_sw_intr_en_ap_int_rdata_out;
  wire                      interrupt_gpio_en_ap_int_rdata_out;
  wire                      interrupt_aio_en_ap_int_rdata_out;
  wire                      interrupt_i2c_boot_en_ap_int_rdata_out;
  wire                      interrupt_ioa_en_ap_int_rdata_out;
  wire                      interrupt_wpl_en_ap_int_rdata_out;
  wire                      interrupt_spi_nor_en_ap_int_rdata_out;
  wire                      interrupt_uspi_e_0_en_ap_int_rdata_out;
  wire                      interrupt_fpga_uspi_firefox_en_ap_int_rdata_out;
  wire                      interrupt_i2c_slave_top_0_en_ap_int_rdata_out;
  wire                      interrupt_pll_wait_cnt_dn_en_ap_int_rdata_out;
  wire                      interrupt_arb_bus_stdby_0_en_ap_int_rdata_out;
  wire                      interrupt_arb_bus_dpc_0_en_ap_int_rdata_out;
  wire                      interrupt_spi_switch_done_en_ap_int_rdata_out;
  wire                      interrupt_arb_bus_depth_0_en_ap_int_rdata_out;
  wire                      interrupt_i2c_switch_done_en_ap_int_rdata_out;
  wire                      interrupt_rectify_a_0_rdata_out;
  wire                      interrupt_rectify_b_0_rdata_out;
  wire                      interrupt_sw_intr_rdata_out;
  wire                      interrupt_gpio_rdata_out;
  wire                      interrupt_aio_rdata_out;
  wire                      interrupt_i2c_boot_rdata_out;
  wire                      interrupt_ioa_rdata_out;
  wire                      interrupt_wpl_rdata_out;
  wire                      interrupt_spi_nor_rdata_out;
  wire                      interrupt_uspi_e_0_rdata_out;
  wire                      interrupt_fpga_uspi_firefox_rdata_out;
  wire                      interrupt_i2c_slave_top_0_rdata_out;
  wire                      interrupt_pll_wait_cnt_dn_rdata_out;
  wire                      interrupt_arb_bus_stdby_0_rdata_out;
  wire                      interrupt_arb_bus_dpc_0_rdata_out;
  wire                      interrupt_spi_switch_done_rdata_out;
  wire                      interrupt_arb_bus_depth_0_rdata_out;
  wire                      interrupt_i2c_switch_done_rdata_out;
  wire                      interrupt_dp_top_a_0_en_base_int8_rdata_out;
  wire                      interrupt_dg_mcc_a_0_en_base_int8_rdata_out;
  wire                      interrupt_dg_ca_a_0_en_base_int8_rdata_out;
  wire                      interrupt_ddr_cfg_en_base_int8_rdata_out;
  wire                      interrupt_pll_fix_lock_en_base_int8_rdata_out;
  wire                      interrupt_pll_var_lock_en_base_int8_rdata_out;
  wire                      interrupt_pll_fix_fbslip_en_base_int8_rdata_out;
  wire                      interrupt_pll_var_fbslip_en_base_int8_rdata_out;
  wire                      interrupt_pll_fix_rfslip_en_base_int8_rdata_out;
  wire                      interrupt_pll_var_rfslip_en_base_int8_rdata_out;
  wire                      interrupt_pll_ext_lock_en_base_int8_rdata_out;
  wire                      interrupt_pll_ext_fbslip_en_base_int8_rdata_out;
  wire                      interrupt_pll_ext_rfslip_en_base_int8_rdata_out;
  wire                      interrupt_dp_top_a_0_en_ap_int_rdata_out;
  wire                      interrupt_dg_mcc_a_0_en_ap_int_rdata_out;
  wire                      interrupt_dg_ca_a_0_en_ap_int_rdata_out;
  wire                      interrupt_ddr_cfg_en_ap_int_rdata_out;
  wire                      interrupt_pll_fix_lock_en_ap_int_rdata_out;
  wire                      interrupt_pll_var_lock_en_ap_int_rdata_out;
  wire                      interrupt_pll_fix_fbslip_en_ap_int_rdata_out;
  wire                      interrupt_pll_var_fbslip_en_ap_int_rdata_out;
  wire                      interrupt_pll_fix_rfslip_en_ap_int_rdata_out;
  wire                      interrupt_pll_var_rfslip_en_ap_int_rdata_out;
  wire                      interrupt_pll_ext_lock_en_ap_int_rdata_out;
  wire                      interrupt_pll_ext_fbslip_en_ap_int_rdata_out;
  wire                      interrupt_pll_ext_rfslip_en_ap_int_rdata_out;
  wire                      interrupt_dp_top_a_0_rdata_out;
  wire                      interrupt_dg_mcc_a_0_rdata_out;
  wire                      interrupt_dg_ca_a_0_rdata_out;
  wire                      interrupt_ddr_cfg_rdata_out;
  wire                      interrupt_pll_fix_lock_rdata_out;
  wire                      interrupt_pll_var_lock_rdata_out;
  wire                      interrupt_pll_fix_fbslip_rdata_out;
  wire                      interrupt_pll_var_fbslip_rdata_out;
  wire                      interrupt_pll_fix_rfslip_rdata_out;
  wire                      interrupt_pll_var_rfslip_rdata_out;
  wire                      interrupt_pll_ext_lock_rdata_out;
  wire                      interrupt_pll_ext_fbslip_rdata_out;
  wire                      interrupt_pll_ext_rfslip_rdata_out;
  wire                      interrupt_hdr_top_en_base_int10_rdata_out;
  wire                      interrupt_id_det_a_0_en_base_int10_rdata_out;
  wire                      interrupt_id_det_a_1_en_base_int10_rdata_out;
  wire                      interrupt_bayer_binning_a_0_en_base_int10_rdata_out;
  wire                      interrupt_bayer_binning_a_1_en_base_int10_rdata_out;
  wire                      interrupt_rlb_a_0_en_base_int10_rdata_out;
  wire                      interrupt_rlb_b_0_en_base_int10_rdata_out;
  wire                      interrupt_rdn_a_0_en_base_int10_rdata_out;
  wire                      interrupt_rdn_b_0_en_base_int10_rdata_out;
  wire                      interrupt_tx_top_en_base_int10_rdata_out;
  wire                      interrupt_tx_line_merge_2l_a_0_en_base_int10_rdata_out;
  wire                      interrupt_tx_line_merge_2l_b_0_en_base_int10_rdata_out;
  wire                      interrupt_hdr_interpolation_a_0_en_base_int10_rdata_out;
  wire                      interrupt_hdr_blending_a_0_en_base_int10_rdata_out;
  wire                      interrupt_hdr_ae_a_0_en_base_int10_rdata_out;
  wire                      interrupt_hdr_ae_a_1_en_base_int10_rdata_out;
  wire                      interrupt_tx_line_merge_2l_c_0_en_base_int10_rdata_out;
  wire                      interrupt_tx_line_merge_2l_d_0_en_base_int10_rdata_out;
  wire                      interrupt_lsc_c_0_en_base_int10_rdata_out;
  wire                      interrupt_hdr_top_en_ap_int_rdata_out;
  wire                      interrupt_id_det_a_0_en_ap_int_rdata_out;
  wire                      interrupt_id_det_a_1_en_ap_int_rdata_out;
  wire                      interrupt_bayer_binning_a_0_en_ap_int_rdata_out;
  wire                      interrupt_bayer_binning_a_1_en_ap_int_rdata_out;
  wire                      interrupt_rlb_a_0_en_ap_int_rdata_out;
  wire                      interrupt_rlb_b_0_en_ap_int_rdata_out;
  wire                      interrupt_rdn_a_0_en_ap_int_rdata_out;
  wire                      interrupt_rdn_b_0_en_ap_int_rdata_out;
  wire                      interrupt_tx_top_en_ap_int_rdata_out;
  wire                      interrupt_tx_line_merge_2l_a_0_en_ap_int_rdata_out;
  wire                      interrupt_tx_line_merge_2l_b_0_en_ap_int_rdata_out;
  wire                      interrupt_hdr_interpolation_a_0_en_ap_int_rdata_out;
  wire                      interrupt_hdr_blending_a_0_en_ap_int_rdata_out;
  wire                      interrupt_hdr_ae_a_0_en_ap_int_rdata_out;
  wire                      interrupt_hdr_ae_a_1_en_ap_int_rdata_out;
  wire                      interrupt_tx_line_merge_2l_c_0_en_ap_int_rdata_out;
  wire                      interrupt_tx_line_merge_2l_d_0_en_ap_int_rdata_out;
  wire                      interrupt_lsc_c_0_en_ap_int_rdata_out;
  wire                      interrupt_hdr_top_rdata_out;
  wire                      interrupt_id_det_a_0_rdata_out;
  wire                      interrupt_id_det_a_1_rdata_out;
  wire                      interrupt_bayer_binning_a_0_rdata_out;
  wire                      interrupt_bayer_binning_a_1_rdata_out;
  wire                      interrupt_rlb_a_0_rdata_out;
  wire                      interrupt_rlb_b_0_rdata_out;
  wire                      interrupt_rdn_a_0_rdata_out;
  wire                      interrupt_rdn_b_0_rdata_out;
  wire                      interrupt_tx_top_rdata_out;
  wire                      interrupt_tx_line_merge_2l_a_0_rdata_out;
  wire                      interrupt_tx_line_merge_2l_b_0_rdata_out;
  wire                      interrupt_hdr_interpolation_a_0_rdata_out;
  wire                      interrupt_hdr_blending_a_0_rdata_out;
  wire                      interrupt_hdr_ae_a_0_rdata_out;
  wire                      interrupt_hdr_ae_a_1_rdata_out;
  wire                      interrupt_tx_line_merge_2l_c_0_rdata_out;
  wire                      interrupt_tx_line_merge_2l_d_0_rdata_out;
  wire                      interrupt_lsc_c_0_rdata_out;
  wire                      srampd_lvhwirp_top_a_0_rdata_out;
  wire                      srampd_lvhwirp_top_b_0_rdata_out;
  wire                      srampd_lvlumanr_a_0_rdata_out;
  wire                      srampd_lvlumanr_a_1_rdata_out;
  wire                      srampd_lsc_b_2_rdata_out;
  wire                      srampd_lsc_b_3_rdata_out;
  wire                      srampd_lvsharp_a_0_rdata_out;
  wire                      srampd_lvsharp_a_1_rdata_out;
  wire                      srampd_y_bin_a_0_rdata_out;
  wire                      srampd_y_bin_a_1_rdata_out;
  wire                      srampd_bayer_scl_a_0_rdata_out;
  wire                      srampd_bayer_scl_a_1_rdata_out;
  wire                      srampd_y_bin_b_top_0_rdata_out;
  wire                      srampd_compress_rotate_a_0_rdata_out;
  wire                      srampd_compress_rotate_b_0_rdata_out;
  wire                      srampd_decompress_a_0_rdata_out;
  wire                      srampd_decompress_b_0_rdata_out;
  wire                      srampd_depth_scl_up_a_0_rdata_out;
  wire                      srampd_mono_scl_a_0_rdata_out;
  wire                      srampd_mono_scl_a_1_rdata_out;
  wire                      srampd_lvlumanr_b_top_0_rdata_out;
  wire                      srampd_lsc_a_0_rdata_out;
  wire                      srampd_ppe_a_0_rdata_out;
  wire                      srampd_cbc_a_0_rdata_out;
  wire                      srampd_abc_a_0_rdata_out;
  wire                      srampd_ppc_a_0_rdata_out;
  wire                      srampd_two_pd_ws_a_0_rdata_out;
  wire                      srampd_uspi_a_0_rdata_out;
  wire                      srampd_yuv420_444_a_0_rdata_out;
  wire                      srampd_tx_top_out_mux_a_0_rdata_out;
  wire                      srampd_tx_top_out_mux_a_1_rdata_out;
  wire                      srampd_mipi_csi2_tx_0_rdata_out;
  wire                      srampd_mipi_csi2_rx_0_rdata_out;
  wire                      srampd_oc_ram_wrapper0_rdata_out;
  wire                      srampd_oc_ram_wrapper3_rdata_out;
  wire                      srampd_oc_ram_wrapper6_rdata_out;
  wire                      srampd_mipi_line_read_a_0_rdata_out;
  wire                      srampd_mipi_line_read_a_1_rdata_out;
  wire                      srampd_oc_ram_wrapper7_rdata_out;
  wire                      srampd_base_arc_rdata_out;
  wire                      srampd_lzrw_a_0_rdata_out;
  wire                      srampd_idd_buffer_0_rdata_out;
  wire                      srampd_spi_nor_rdata_out;
  wire                      srampd_uspi_e_0_rdata_out;
  wire                      srampd_i2c_slave_top_0_rdata_out;
  wire                      srampd_rectify_a_0_rse_dma_out_rdata_out;
  wire                      srampd_rectify_b_0_rse_dma_out_rdata_out;
  wire                      srampd_dg_mcc_a_0_rdata_out;
  wire                      srampd_dg_ca_a_0_rdata_out;
  wire                      srampd_dp_mem_write_rdata_out;
  wire                      srampd_dp_src_read_rdata_out;
  wire                      srampd_dp_mid_rdata_out;
  wire                      srampd_dp_img_seg_rdata_out;
  wire                      srampd_dp_instag_l_rdata_out;
  wire                      srampd_dp_instag_h_rdata_out;
  wire                      srampd_id_det_a_0_rdata_out;
  wire                      srampd_id_det_a_1_rdata_out;
  wire                      srampd_bayer_binning_a_0_rdata_out;
  wire                      srampd_bayer_binning_a_1_rdata_out;
  wire                      srampd_rlb_a_0_rdata_out;
  wire                      srampd_rlb_b_0_rdata_out;
  wire                      srampd_rdn_a_0_rdata_out;
  wire                      srampd_rdn_b_0_rdata_out;
  wire                      srampd_tx_line_merge_2l_a_0_rdata_out;
  wire                      srampd_tx_line_merge_2l_b_0_rdata_out;
  wire                      srampd_hdr_interpolation_a_0_rdata_out;
  wire                      srampd_hdr_blending_a_0_rdata_out;
  wire                      srampd_hdr_ae_a_0_rdata_out;
  wire                      srampd_hdr_ae_a_1_rdata_out;
  wire                      srampd_tx_line_merge_2l_c_0_rdata_out;
  wire                      srampd_tx_line_merge_2l_d_0_rdata_out;
  wire                      srampd_lsc_c_0_rdata_out;
  wire                      iso_pd_standby_rdata_out;
  wire                      iso_pd_dpc_rdata_out;
  wire                      iso_pd_hdr_rdata_out;
  wire                      iso_pd_irp_depth_rdata_out;
  wire                      psw_pd_standby_rdata_out;
  wire                      psw_pd_dpc_rdata_out;
  wire                      psw_pd_hdr_rdata_out;
  wire                      psw_pd_irp_depth_rdata_out;
  wire                      sw_intr_trigger_00_rdata_out;
  wire                      sw_intr_trigger_01_rdata_out;
  wire                      sw_intr_trigger_02_rdata_out;
  wire                      sw_intr_trigger_03_rdata_out;
  wire                      sw_intr_trigger_04_rdata_out;
  wire                      sw_intr_trigger_05_rdata_out;
  wire                      sw_intr_trigger_06_rdata_out;
  wire                      sw_intr_trigger_07_rdata_out;
  wire                      sw_intr_trigger_08_rdata_out;
  wire                      sw_intr_trigger_09_rdata_out;
  wire                      sw_intr_trigger_10_rdata_out;
  wire                      sw_intr_trigger_11_rdata_out;
  wire                      sw_intr_trigger_12_rdata_out;
  wire                      sw_intr_trigger_13_rdata_out;
  wire                      sw_intr_trigger_14_rdata_out;
  wire                      sw_intr_trigger_15_rdata_out;
  wire                      sw_intr_trigger_16_rdata_out;
  wire                      sw_intr_trigger_17_rdata_out;
  wire                      sw_intr_trigger_18_rdata_out;
  wire                      sw_intr_trigger_19_rdata_out;
  wire                      sw_intr_trigger_20_rdata_out;
  wire                      sw_intr_trigger_21_rdata_out;
  wire                      sw_intr_trigger_22_rdata_out;
  wire                      sw_intr_trigger_23_rdata_out;
  wire                      sw_intr_trigger_24_rdata_out;
  wire                      sw_intr_trigger_25_rdata_out;
  wire                      sw_intr_trigger_26_rdata_out;
  wire                      sw_intr_trigger_27_rdata_out;
  wire                      sw_intr_trigger_28_rdata_out;
  wire                      sw_intr_trigger_29_rdata_out;
  wire                      sw_intr_trigger_30_rdata_out;
  wire                      sw_intr_trigger_31_rdata_out;
  wire                      sw_intr_level_00_en_interrupt_sw_intr_rdata_out;
  wire                      sw_intr_level_01_en_interrupt_sw_intr_rdata_out;
  wire                      sw_intr_level_02_en_interrupt_sw_intr_rdata_out;
  wire                      sw_intr_level_03_en_interrupt_sw_intr_rdata_out;
  wire                      sw_intr_level_04_en_interrupt_sw_intr_rdata_out;
  wire                      sw_intr_level_05_en_interrupt_sw_intr_rdata_out;
  wire                      sw_intr_level_06_en_interrupt_sw_intr_rdata_out;
  wire                      sw_intr_level_07_en_interrupt_sw_intr_rdata_out;
  wire                      sw_intr_level_08_en_interrupt_sw_intr_rdata_out;
  wire                      sw_intr_level_09_en_interrupt_sw_intr_rdata_out;
  wire                      sw_intr_level_10_en_interrupt_sw_intr_rdata_out;
  wire                      sw_intr_level_11_en_interrupt_sw_intr_rdata_out;
  wire                      sw_intr_level_12_en_interrupt_sw_intr_rdata_out;
  wire                      sw_intr_level_13_en_interrupt_sw_intr_rdata_out;
  wire                      sw_intr_level_14_en_interrupt_sw_intr_rdata_out;
  wire                      sw_intr_level_15_en_interrupt_sw_intr_rdata_out;
  wire                      sw_intr_level_16_en_interrupt_sw_intr_rdata_out;
  wire                      sw_intr_level_17_en_interrupt_sw_intr_rdata_out;
  wire                      sw_intr_level_18_en_interrupt_sw_intr_rdata_out;
  wire                      sw_intr_level_19_en_interrupt_sw_intr_rdata_out;
  wire                      sw_intr_level_20_en_interrupt_sw_intr_rdata_out;
  wire                      sw_intr_level_21_en_interrupt_sw_intr_rdata_out;
  wire                      sw_intr_level_22_en_interrupt_sw_intr_rdata_out;
  wire                      sw_intr_level_23_en_interrupt_sw_intr_rdata_out;
  wire                      sw_intr_level_24_en_interrupt_sw_intr_rdata_out;
  wire                      sw_intr_level_25_en_interrupt_sw_intr_rdata_out;
  wire                      sw_intr_level_26_en_interrupt_sw_intr_rdata_out;
  wire                      sw_intr_level_27_en_interrupt_sw_intr_rdata_out;
  wire                      sw_intr_level_28_en_interrupt_sw_intr_rdata_out;
  wire                      sw_intr_level_29_en_interrupt_sw_intr_rdata_out;
  wire                      sw_intr_level_30_en_interrupt_sw_intr_rdata_out;
  wire                      sw_intr_level_31_en_interrupt_sw_intr_rdata_out;
  wire                      sw_intr_level_00_rdata_out;
  wire                      sw_intr_level_01_rdata_out;
  wire                      sw_intr_level_02_rdata_out;
  wire                      sw_intr_level_03_rdata_out;
  wire                      sw_intr_level_04_rdata_out;
  wire                      sw_intr_level_05_rdata_out;
  wire                      sw_intr_level_06_rdata_out;
  wire                      sw_intr_level_07_rdata_out;
  wire                      sw_intr_level_08_rdata_out;
  wire                      sw_intr_level_09_rdata_out;
  wire                      sw_intr_level_10_rdata_out;
  wire                      sw_intr_level_11_rdata_out;
  wire                      sw_intr_level_12_rdata_out;
  wire                      sw_intr_level_13_rdata_out;
  wire                      sw_intr_level_14_rdata_out;
  wire                      sw_intr_level_15_rdata_out;
  wire                      sw_intr_level_16_rdata_out;
  wire                      sw_intr_level_17_rdata_out;
  wire                      sw_intr_level_18_rdata_out;
  wire                      sw_intr_level_19_rdata_out;
  wire                      sw_intr_level_20_rdata_out;
  wire                      sw_intr_level_21_rdata_out;
  wire                      sw_intr_level_22_rdata_out;
  wire                      sw_intr_level_23_rdata_out;
  wire                      sw_intr_level_24_rdata_out;
  wire                      sw_intr_level_25_rdata_out;
  wire                      sw_intr_level_26_rdata_out;
  wire                      sw_intr_level_27_rdata_out;
  wire                      sw_intr_level_28_rdata_out;
  wire                      sw_intr_level_29_rdata_out;
  wire                      sw_intr_level_30_rdata_out;
  wire                      sw_intr_level_31_rdata_out;
  wire         [10-1: 0]    sys_conf_rdata_out  ;
  wire         [10-1: 0]    inv_sys_conf_rdata_out;
  wire         [10-1: 0]    current_bootstrap_value_rdata_out;
  wire                      senif56_asyn_d16_0_softrst_rdata_out;
  wire                      senif56_asyn_d16_1_softrst_rdata_out;
  wire                      mipi_tx_phy_if_1_test_mode0_rdata_out;
  wire                      spi_debug_mode_control_rdata_out;
  wire                      spi_switch_status_rdata_out;
  wire                      i2c_debug_mode_control_rdata_out;
  wire                      i2c_switch_status_rdata_out;
  wire                      mipi_ppi_source_sel_1_rdata_out;
  wire                      mipi_ppi_source_sel_0_rdata_out;
  wire                      pll_wait_cnt_en_rdata_out;
  wire         [16-1: 0]    pll_wait_cnt_cyc_rdata_out;
  wire                      ppi_bridge_a_0_error_status_out_rdata_out;
  wire                      ppi_bridge_a_0_lookback_test_deskew_mode_fail_rdata_out;
  wire                      ppi_bridge_a_0_lookback_test_hs_mode_fail_rdata_out;
  wire                      ppi_bridge_a_0_lookback_test_ulps_mode_fail_rdata_out;
  wire                      ppi_bridge_a_1_error_status_out_rdata_out;
  wire                      ppi_bridge_a_1_lookback_test_deskew_mode_fail_rdata_out;
  wire                      ppi_bridge_a_1_lookback_test_hs_mode_fail_rdata_out;
  wire                      ppi_bridge_a_1_lookback_test_ulps_mode_fail_rdata_out;
  wire                      isp_if_bridge_a_0_lookback_test_fail_rdata_out;
  wire                      isp_if_bridge_a_1_lookback_test_fail_rdata_out;
  wire                      mipi_csi2_rx_1_phy_error_status_out_rdata_out;
  wire                      mipi_csi2_rx_1_ctl_error_status_out_rdata_out;
  wire                      mipi_slvds_rx_phy_if_1_dll_error_status_out_rdata_out;
  wire                      mipi_slvds_rx_phy_if_1_error_status_out_rdata_out;
  wire                      arasan_0_prbs_fail_rdata_out;
  wire         [32-1: 0]    reg_version_rdata_out;

  ip_io_rd KS_RdCtl(
    .ip_hrst    (~gen_reg_core_ip_rst_n),
    .ip_clk     (gen_reg_core_ip_clk),
    .ioa_cs     (gen_reg_core_ioa_cs),
    .ioa_rd     (gen_reg_core_ioa_rd),
    .ip_rd_wait (gen_reg_core_ip_rd_wait),
    .ip_rd_req  (ip_rd_req),
    .ip_rd_gnt  (ip_rd_gnt),
    .ip_rd_reg  (ip_rd_reg),
    .scan_en    (gen_reg_core_scan_en) 
  );

  ip_io_wr KS_WrCtl(
    .ip_hrst    (~gen_reg_core_ip_rst_n),
    .ip_clk     (gen_reg_core_ip_clk),
    .ioa_cs     (gen_reg_core_ioa_cs),
    .ioa_wr     (gen_reg_core_ioa_wr),
    .ip_wr_wait (gen_reg_core_ip_wr_wait),
    .ip_wr_req  (ip_wr_req),
    .ip_wr_gnt  (ip_wr_gnt),
    .ip_wr      (ip_wr),
    .scan_en    (gen_reg_core_scan_en) 
  );

  assign gen_reg_core_ioa_rdy = ~(gen_reg_core_ip_rd_wait | gen_reg_core_ip_wr_wait); 


  general_type_reg  #(
    .REGISTER_NAME      ("RFTREG"            ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (32                  ),
    .FIELD_OFFSET       (14'h0               ),
    .FIELD_START_BIT    (0                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (32'h0               ),
    .SUB_TYPE           ("rw"                ) 
  )
  rft_reg_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (rft_reg_rdata_out   ),
    .reg_out            (rft_reg_out         ) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("BOOT_MODE_DEBUG_FLAG"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (32                  ),
    .FIELD_OFFSET       (14'h4               ),
    .FIELD_START_BIT    (0                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (32'h0               ),
    .SUB_TYPE           ("rw"                ) 
  )
  boot_mode_debug_flag_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (boot_mode_debug_flag_rdata_out),
    .reg_out            (                    ) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("MAGIC_NUMBER"      ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (32                  ),
    .FIELD_OFFSET       (14'h8               ),
    .FIELD_START_BIT    (0                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (32'h0               ),
    .SUB_TYPE           ("rw"                ) 
  )
  magic_number_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (magic_number_rdata_out),
    .reg_out            (                    ) 
  );

  hot_wire_type_reg  #(
    .REGISTER_NAME      ("CHIP_ID"           ),
    .IOA_ADR_WIDTH      (14                  ),
    .FIELD_SIZE         (16                  ),
    .FIELD_OFFSET       (14'h20              ),
    .FIELD_START_BIT    (0                   ) 
  )
  chip_id_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .reg_in             (chip_id_in          ),
    .reg_rdata_out      (chip_id_rdata_out   ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE4_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h24              ),
    .FIELD_START_BIT    (0                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_depth_top_en_interrupt_depth_top_en_base_int4_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_depth_top_en_base_int4),
    .reg_rdata_out      (interrupt_depth_top_en_base_int4_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE4_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h24              ),
    .FIELD_START_BIT    (1                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_lvhwirp_top_a_0_en_interrupt_lvhwirp_top_a_0_en_base_int4_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_lvhwirp_top_a_0_en_base_int4),
    .reg_rdata_out      (interrupt_lvhwirp_top_a_0_en_base_int4_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE4_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h24              ),
    .FIELD_START_BIT    (2                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_lvhwirp_top_b_0_en_interrupt_lvhwirp_top_b_0_en_base_int4_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_lvhwirp_top_b_0_en_base_int4),
    .reg_rdata_out      (interrupt_lvhwirp_top_b_0_en_base_int4_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE4_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h24              ),
    .FIELD_START_BIT    (3                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_lvlumanr_a_0_en_interrupt_lvlumanr_a_0_en_base_int4_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_lvlumanr_a_0_en_base_int4),
    .reg_rdata_out      (interrupt_lvlumanr_a_0_en_base_int4_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE4_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h24              ),
    .FIELD_START_BIT    (4                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_lvlumanr_a_1_en_interrupt_lvlumanr_a_1_en_base_int4_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_lvlumanr_a_1_en_base_int4),
    .reg_rdata_out      (interrupt_lvlumanr_a_1_en_base_int4_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE4_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h24              ),
    .FIELD_START_BIT    (5                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_lsc_b_2_en_interrupt_lsc_b_2_en_base_int4_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_lsc_b_2_en_base_int4),
    .reg_rdata_out      (interrupt_lsc_b_2_en_base_int4_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE4_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h24              ),
    .FIELD_START_BIT    (6                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_lsc_b_3_en_interrupt_lsc_b_3_en_base_int4_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_lsc_b_3_en_base_int4),
    .reg_rdata_out      (interrupt_lsc_b_3_en_base_int4_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE4_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h24              ),
    .FIELD_START_BIT    (7                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_lvsharp_a_0_en_interrupt_lvsharp_a_0_en_base_int4_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_lvsharp_a_0_en_base_int4),
    .reg_rdata_out      (interrupt_lvsharp_a_0_en_base_int4_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE4_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h24              ),
    .FIELD_START_BIT    (8                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_lvsharp_a_1_en_interrupt_lvsharp_a_1_en_base_int4_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_lvsharp_a_1_en_base_int4),
    .reg_rdata_out      (interrupt_lvsharp_a_1_en_base_int4_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE4_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h24              ),
    .FIELD_START_BIT    (9                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_y_bin_a_0_en_interrupt_y_bin_a_0_en_base_int4_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_y_bin_a_0_en_base_int4),
    .reg_rdata_out      (interrupt_y_bin_a_0_en_base_int4_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE4_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h24              ),
    .FIELD_START_BIT    (10                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_y_bin_a_1_en_interrupt_y_bin_a_1_en_base_int4_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_y_bin_a_1_en_base_int4),
    .reg_rdata_out      (interrupt_y_bin_a_1_en_base_int4_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE4_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h24              ),
    .FIELD_START_BIT    (13                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_bayer_scl_a_0_en_interrupt_bayer_scl_a_0_en_base_int4_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_bayer_scl_a_0_en_base_int4),
    .reg_rdata_out      (interrupt_bayer_scl_a_0_en_base_int4_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE4_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h24              ),
    .FIELD_START_BIT    (14                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_bayer_scl_a_1_en_interrupt_bayer_scl_a_1_en_base_int4_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_bayer_scl_a_1_en_base_int4),
    .reg_rdata_out      (interrupt_bayer_scl_a_1_en_base_int4_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE4_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h24              ),
    .FIELD_START_BIT    (15                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_y_bin_b_0_en_interrupt_y_bin_b_0_en_base_int4_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_y_bin_b_0_en_base_int4),
    .reg_rdata_out      (interrupt_y_bin_b_0_en_base_int4_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE4_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h24              ),
    .FIELD_START_BIT    (16                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_y_bin_b_1_en_interrupt_y_bin_b_1_en_base_int4_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_y_bin_b_1_en_base_int4),
    .reg_rdata_out      (interrupt_y_bin_b_1_en_base_int4_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE4_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h24              ),
    .FIELD_START_BIT    (17                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_compress_rotate_a_0_en_interrupt_compress_rotate_a_0_en_base_int4_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_compress_rotate_a_0_en_base_int4),
    .reg_rdata_out      (interrupt_compress_rotate_a_0_en_base_int4_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE4_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h24              ),
    .FIELD_START_BIT    (18                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_compress_rotate_b_0_en_interrupt_compress_rotate_b_0_en_base_int4_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_compress_rotate_b_0_en_base_int4),
    .reg_rdata_out      (interrupt_compress_rotate_b_0_en_base_int4_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE4_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h24              ),
    .FIELD_START_BIT    (19                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_decompress_a_0_en_interrupt_decompress_a_0_en_base_int4_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_decompress_a_0_en_base_int4),
    .reg_rdata_out      (interrupt_decompress_a_0_en_base_int4_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE4_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h24              ),
    .FIELD_START_BIT    (20                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_decompress_b_0_en_interrupt_decompress_b_0_en_base_int4_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_decompress_b_0_en_base_int4),
    .reg_rdata_out      (interrupt_decompress_b_0_en_base_int4_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE4_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h24              ),
    .FIELD_START_BIT    (22                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_depth_scl_up_a_0_en_interrupt_depth_scl_up_a_0_en_base_int4_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_depth_scl_up_a_0_en_base_int4),
    .reg_rdata_out      (interrupt_depth_scl_up_a_0_en_base_int4_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE4_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h24              ),
    .FIELD_START_BIT    (23                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_irp_top_en_interrupt_irp_top_en_base_int4_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_irp_top_en_base_int4),
    .reg_rdata_out      (interrupt_irp_top_en_base_int4_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE4_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h24              ),
    .FIELD_START_BIT    (24                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_mono_scl_a_0_en_interrupt_mono_scl_a_0_en_base_int4_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_mono_scl_a_0_en_base_int4),
    .reg_rdata_out      (interrupt_mono_scl_a_0_en_base_int4_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE4_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h24              ),
    .FIELD_START_BIT    (25                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_mono_scl_a_1_en_interrupt_mono_scl_a_1_en_base_int4_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_mono_scl_a_1_en_base_int4),
    .reg_rdata_out      (interrupt_mono_scl_a_1_en_base_int4_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE4_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h24              ),
    .FIELD_START_BIT    (26                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_lvlumanr_b_0_en_interrupt_lvlumanr_b_0_en_base_int4_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_lvlumanr_b_0_en_base_int4),
    .reg_rdata_out      (interrupt_lvlumanr_b_0_en_base_int4_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE4_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h24              ),
    .FIELD_START_BIT    (27                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_lvlumanr_b_1_en_interrupt_lvlumanr_b_1_en_base_int4_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_lvlumanr_b_1_en_base_int4),
    .reg_rdata_out      (interrupt_lvlumanr_b_1_en_base_int4_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE4_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h28              ),
    .FIELD_START_BIT    (0                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_depth_top_en_interrupt_depth_top_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_depth_top_en_ap_int),
    .reg_rdata_out      (interrupt_depth_top_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE4_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h28              ),
    .FIELD_START_BIT    (1                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_lvhwirp_top_a_0_en_interrupt_lvhwirp_top_a_0_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_lvhwirp_top_a_0_en_ap_int),
    .reg_rdata_out      (interrupt_lvhwirp_top_a_0_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE4_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h28              ),
    .FIELD_START_BIT    (2                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_lvhwirp_top_b_0_en_interrupt_lvhwirp_top_b_0_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_lvhwirp_top_b_0_en_ap_int),
    .reg_rdata_out      (interrupt_lvhwirp_top_b_0_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE4_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h28              ),
    .FIELD_START_BIT    (3                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_lvlumanr_a_0_en_interrupt_lvlumanr_a_0_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_lvlumanr_a_0_en_ap_int),
    .reg_rdata_out      (interrupt_lvlumanr_a_0_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE4_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h28              ),
    .FIELD_START_BIT    (4                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_lvlumanr_a_1_en_interrupt_lvlumanr_a_1_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_lvlumanr_a_1_en_ap_int),
    .reg_rdata_out      (interrupt_lvlumanr_a_1_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE4_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h28              ),
    .FIELD_START_BIT    (5                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_lsc_b_2_en_interrupt_lsc_b_2_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_lsc_b_2_en_ap_int),
    .reg_rdata_out      (interrupt_lsc_b_2_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE4_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h28              ),
    .FIELD_START_BIT    (6                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_lsc_b_3_en_interrupt_lsc_b_3_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_lsc_b_3_en_ap_int),
    .reg_rdata_out      (interrupt_lsc_b_3_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE4_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h28              ),
    .FIELD_START_BIT    (7                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_lvsharp_a_0_en_interrupt_lvsharp_a_0_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_lvsharp_a_0_en_ap_int),
    .reg_rdata_out      (interrupt_lvsharp_a_0_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE4_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h28              ),
    .FIELD_START_BIT    (8                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_lvsharp_a_1_en_interrupt_lvsharp_a_1_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_lvsharp_a_1_en_ap_int),
    .reg_rdata_out      (interrupt_lvsharp_a_1_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE4_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h28              ),
    .FIELD_START_BIT    (9                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_y_bin_a_0_en_interrupt_y_bin_a_0_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_y_bin_a_0_en_ap_int),
    .reg_rdata_out      (interrupt_y_bin_a_0_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE4_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h28              ),
    .FIELD_START_BIT    (10                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_y_bin_a_1_en_interrupt_y_bin_a_1_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_y_bin_a_1_en_ap_int),
    .reg_rdata_out      (interrupt_y_bin_a_1_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE4_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h28              ),
    .FIELD_START_BIT    (13                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_bayer_scl_a_0_en_interrupt_bayer_scl_a_0_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_bayer_scl_a_0_en_ap_int),
    .reg_rdata_out      (interrupt_bayer_scl_a_0_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE4_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h28              ),
    .FIELD_START_BIT    (14                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_bayer_scl_a_1_en_interrupt_bayer_scl_a_1_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_bayer_scl_a_1_en_ap_int),
    .reg_rdata_out      (interrupt_bayer_scl_a_1_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE4_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h28              ),
    .FIELD_START_BIT    (15                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_y_bin_b_0_en_interrupt_y_bin_b_0_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_y_bin_b_0_en_ap_int),
    .reg_rdata_out      (interrupt_y_bin_b_0_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE4_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h28              ),
    .FIELD_START_BIT    (16                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_y_bin_b_1_en_interrupt_y_bin_b_1_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_y_bin_b_1_en_ap_int),
    .reg_rdata_out      (interrupt_y_bin_b_1_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE4_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h28              ),
    .FIELD_START_BIT    (17                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_compress_rotate_a_0_en_interrupt_compress_rotate_a_0_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_compress_rotate_a_0_en_ap_int),
    .reg_rdata_out      (interrupt_compress_rotate_a_0_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE4_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h28              ),
    .FIELD_START_BIT    (18                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_compress_rotate_b_0_en_interrupt_compress_rotate_b_0_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_compress_rotate_b_0_en_ap_int),
    .reg_rdata_out      (interrupt_compress_rotate_b_0_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE4_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h28              ),
    .FIELD_START_BIT    (19                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_decompress_a_0_en_interrupt_decompress_a_0_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_decompress_a_0_en_ap_int),
    .reg_rdata_out      (interrupt_decompress_a_0_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE4_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h28              ),
    .FIELD_START_BIT    (20                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_decompress_b_0_en_interrupt_decompress_b_0_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_decompress_b_0_en_ap_int),
    .reg_rdata_out      (interrupt_decompress_b_0_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE4_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h28              ),
    .FIELD_START_BIT    (22                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_depth_scl_up_a_0_en_interrupt_depth_scl_up_a_0_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_depth_scl_up_a_0_en_ap_int),
    .reg_rdata_out      (interrupt_depth_scl_up_a_0_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE4_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h28              ),
    .FIELD_START_BIT    (23                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_irp_top_en_interrupt_irp_top_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_irp_top_en_ap_int),
    .reg_rdata_out      (interrupt_irp_top_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE4_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h28              ),
    .FIELD_START_BIT    (24                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_mono_scl_a_0_en_interrupt_mono_scl_a_0_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_mono_scl_a_0_en_ap_int),
    .reg_rdata_out      (interrupt_mono_scl_a_0_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE4_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h28              ),
    .FIELD_START_BIT    (25                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_mono_scl_a_1_en_interrupt_mono_scl_a_1_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_mono_scl_a_1_en_ap_int),
    .reg_rdata_out      (interrupt_mono_scl_a_1_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE4_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h28              ),
    .FIELD_START_BIT    (26                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_lvlumanr_b_0_en_interrupt_lvlumanr_b_0_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_lvlumanr_b_0_en_ap_int),
    .reg_rdata_out      (interrupt_lvlumanr_b_0_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE4_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h28              ),
    .FIELD_START_BIT    (27                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_lvlumanr_b_1_en_interrupt_lvlumanr_b_1_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_lvlumanr_b_1_en_ap_int),
    .reg_rdata_out      (interrupt_lvlumanr_b_1_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS4"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h2c              ),
    .FIELD_START_BIT    (0                   ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_depth_top_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_depth_top_in),
    .reg_rdata_out      (interrupt_depth_top_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS4"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h2c              ),
    .FIELD_START_BIT    (1                   ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_lvhwirp_top_a_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_lvhwirp_top_a_0_in),
    .reg_rdata_out      (interrupt_lvhwirp_top_a_0_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS4"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h2c              ),
    .FIELD_START_BIT    (2                   ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_lvhwirp_top_b_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_lvhwirp_top_b_0_in),
    .reg_rdata_out      (interrupt_lvhwirp_top_b_0_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS4"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h2c              ),
    .FIELD_START_BIT    (3                   ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_lvlumanr_a_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_lvlumanr_a_0_in),
    .reg_rdata_out      (interrupt_lvlumanr_a_0_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS4"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h2c              ),
    .FIELD_START_BIT    (4                   ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_lvlumanr_a_1_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_lvlumanr_a_1_in),
    .reg_rdata_out      (interrupt_lvlumanr_a_1_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS4"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h2c              ),
    .FIELD_START_BIT    (5                   ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_lsc_b_2_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_lsc_b_2_in),
    .reg_rdata_out      (interrupt_lsc_b_2_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS4"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h2c              ),
    .FIELD_START_BIT    (6                   ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_lsc_b_3_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_lsc_b_3_in),
    .reg_rdata_out      (interrupt_lsc_b_3_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS4"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h2c              ),
    .FIELD_START_BIT    (7                   ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_lvsharp_a_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_lvsharp_a_0_in),
    .reg_rdata_out      (interrupt_lvsharp_a_0_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS4"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h2c              ),
    .FIELD_START_BIT    (8                   ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_lvsharp_a_1_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_lvsharp_a_1_in),
    .reg_rdata_out      (interrupt_lvsharp_a_1_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS4"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h2c              ),
    .FIELD_START_BIT    (9                   ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_y_bin_a_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_y_bin_a_0_in),
    .reg_rdata_out      (interrupt_y_bin_a_0_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS4"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h2c              ),
    .FIELD_START_BIT    (10                  ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_y_bin_a_1_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_y_bin_a_1_in),
    .reg_rdata_out      (interrupt_y_bin_a_1_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS4"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h2c              ),
    .FIELD_START_BIT    (13                  ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_bayer_scl_a_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_bayer_scl_a_0_in),
    .reg_rdata_out      (interrupt_bayer_scl_a_0_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS4"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h2c              ),
    .FIELD_START_BIT    (14                  ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_bayer_scl_a_1_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_bayer_scl_a_1_in),
    .reg_rdata_out      (interrupt_bayer_scl_a_1_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS4"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h2c              ),
    .FIELD_START_BIT    (15                  ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_y_bin_b_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_y_bin_b_0_in),
    .reg_rdata_out      (interrupt_y_bin_b_0_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS4"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h2c              ),
    .FIELD_START_BIT    (16                  ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_y_bin_b_1_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_y_bin_b_1_in),
    .reg_rdata_out      (interrupt_y_bin_b_1_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS4"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h2c              ),
    .FIELD_START_BIT    (17                  ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_compress_rotate_a_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_compress_rotate_a_0_in),
    .reg_rdata_out      (interrupt_compress_rotate_a_0_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS4"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h2c              ),
    .FIELD_START_BIT    (18                  ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_compress_rotate_b_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_compress_rotate_b_0_in),
    .reg_rdata_out      (interrupt_compress_rotate_b_0_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS4"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h2c              ),
    .FIELD_START_BIT    (19                  ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_decompress_a_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_decompress_a_0_in),
    .reg_rdata_out      (interrupt_decompress_a_0_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS4"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h2c              ),
    .FIELD_START_BIT    (20                  ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_decompress_b_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_decompress_b_0_in),
    .reg_rdata_out      (interrupt_decompress_b_0_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS4"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h2c              ),
    .FIELD_START_BIT    (22                  ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_depth_scl_up_a_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_depth_scl_up_a_0_in),
    .reg_rdata_out      (interrupt_depth_scl_up_a_0_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS4"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h2c              ),
    .FIELD_START_BIT    (23                  ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_irp_top_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_irp_top_in),
    .reg_rdata_out      (interrupt_irp_top_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS4"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h2c              ),
    .FIELD_START_BIT    (24                  ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_mono_scl_a_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_mono_scl_a_0_in),
    .reg_rdata_out      (interrupt_mono_scl_a_0_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS4"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h2c              ),
    .FIELD_START_BIT    (25                  ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_mono_scl_a_1_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_mono_scl_a_1_in),
    .reg_rdata_out      (interrupt_mono_scl_a_1_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS4"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h2c              ),
    .FIELD_START_BIT    (26                  ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_lvlumanr_b_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_lvlumanr_b_0_in),
    .reg_rdata_out      (interrupt_lvlumanr_b_0_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS4"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h2c              ),
    .FIELD_START_BIT    (27                  ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_lvlumanr_b_1_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_lvlumanr_b_1_in),
    .reg_rdata_out      (interrupt_lvlumanr_b_1_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE5_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h30              ),
    .FIELD_START_BIT    (0                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_lsc_a_0_en_interrupt_lsc_a_0_en_base_int5_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_lsc_a_0_en_base_int5),
    .reg_rdata_out      (interrupt_lsc_a_0_en_base_int5_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE5_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h30              ),
    .FIELD_START_BIT    (1                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_ppe_a_0_en_interrupt_ppe_a_0_en_base_int5_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_ppe_a_0_en_base_int5),
    .reg_rdata_out      (interrupt_ppe_a_0_en_base_int5_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE5_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h30              ),
    .FIELD_START_BIT    (2                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_pp_mrg_a_0_en_interrupt_pp_mrg_a_0_en_base_int5_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_pp_mrg_a_0_en_base_int5),
    .reg_rdata_out      (interrupt_pp_mrg_a_0_en_base_int5_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE5_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h30              ),
    .FIELD_START_BIT    (3                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_cbc_a_0_en_interrupt_cbc_a_0_en_base_int5_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_cbc_a_0_en_base_int5),
    .reg_rdata_out      (interrupt_cbc_a_0_en_base_int5_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE5_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h30              ),
    .FIELD_START_BIT    (4                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_abc_a_0_en_interrupt_abc_a_0_en_base_int5_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_abc_a_0_en_base_int5),
    .reg_rdata_out      (interrupt_abc_a_0_en_base_int5_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE5_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h30              ),
    .FIELD_START_BIT    (5                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_ppc_a_0_en_interrupt_ppc_a_0_en_base_int5_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_ppc_a_0_en_base_int5),
    .reg_rdata_out      (interrupt_ppc_a_0_en_base_int5_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE5_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h30              ),
    .FIELD_START_BIT    (6                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_two_pd_ws_a_0_en_interrupt_two_pd_ws_a_0_en_base_int5_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_two_pd_ws_a_0_en_base_int5),
    .reg_rdata_out      (interrupt_two_pd_ws_a_0_en_base_int5_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE5_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h30              ),
    .FIELD_START_BIT    (7                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_standby_top_en_interrupt_standby_top_en_base_int5_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_standby_top_en_base_int5),
    .reg_rdata_out      (interrupt_standby_top_en_base_int5_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE5_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h30              ),
    .FIELD_START_BIT    (8                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_dpc_top_en_interrupt_dpc_top_en_base_int5_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_dpc_top_en_base_int5),
    .reg_rdata_out      (interrupt_dpc_top_en_base_int5_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE5_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h30              ),
    .FIELD_START_BIT    (9                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_isp_if_bridge_a_0_en_interrupt_isp_if_bridge_a_0_en_base_int5_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_isp_if_bridge_a_0_en_base_int5),
    .reg_rdata_out      (interrupt_isp_if_bridge_a_0_en_base_int5_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE5_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h30              ),
    .FIELD_START_BIT    (10                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_isp_if_bridge_a_1_en_interrupt_isp_if_bridge_a_1_en_base_int5_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_isp_if_bridge_a_1_en_base_int5),
    .reg_rdata_out      (interrupt_isp_if_bridge_a_1_en_base_int5_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE5_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h30              ),
    .FIELD_START_BIT    (12                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_uspi_a_0_en_interrupt_uspi_a_0_en_base_int5_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_uspi_a_0_en_base_int5),
    .reg_rdata_out      (interrupt_uspi_a_0_en_base_int5_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE5_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h30              ),
    .FIELD_START_BIT    (16                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_senif56_asyn_d16_0_w_softrst_ok_en_interrupt_senif56_asyn_d16_0_w_softrst_ok_en_base_int5_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_senif56_asyn_d16_0_w_softrst_ok_en_base_int5),
    .reg_rdata_out      (interrupt_senif56_asyn_d16_0_w_softrst_ok_en_base_int5_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE5_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h30              ),
    .FIELD_START_BIT    (17                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_senif56_asyn_d16_0_r_softrst_ok_en_interrupt_senif56_asyn_d16_0_r_softrst_ok_en_base_int5_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_senif56_asyn_d16_0_r_softrst_ok_en_base_int5),
    .reg_rdata_out      (interrupt_senif56_asyn_d16_0_r_softrst_ok_en_base_int5_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE5_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h30              ),
    .FIELD_START_BIT    (18                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_senif56_asyn_d16_1_w_softrst_ok_en_interrupt_senif56_asyn_d16_1_w_softrst_ok_en_base_int5_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_senif56_asyn_d16_1_w_softrst_ok_en_base_int5),
    .reg_rdata_out      (interrupt_senif56_asyn_d16_1_w_softrst_ok_en_base_int5_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE5_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h30              ),
    .FIELD_START_BIT    (19                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_senif56_asyn_d16_1_r_softrst_ok_en_interrupt_senif56_asyn_d16_1_r_softrst_ok_en_base_int5_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_senif56_asyn_d16_1_r_softrst_ok_en_base_int5),
    .reg_rdata_out      (interrupt_senif56_asyn_d16_1_r_softrst_ok_en_base_int5_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE5_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h30              ),
    .FIELD_START_BIT    (20                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_yuv420_444_a_0_en_interrupt_yuv420_444_a_0_en_base_int5_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_yuv420_444_a_0_en_base_int5),
    .reg_rdata_out      (interrupt_yuv420_444_a_0_en_base_int5_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE5_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h30              ),
    .FIELD_START_BIT    (21                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_tx_top_out_mux_a_0_en_interrupt_tx_top_out_mux_a_0_en_base_int5_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_tx_top_out_mux_a_0_en_base_int5),
    .reg_rdata_out      (interrupt_tx_top_out_mux_a_0_en_base_int5_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE5_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h30              ),
    .FIELD_START_BIT    (22                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_tx_top_out_mux_a_1_en_interrupt_tx_top_out_mux_a_1_en_base_int5_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_tx_top_out_mux_a_1_en_base_int5),
    .reg_rdata_out      (interrupt_tx_top_out_mux_a_1_en_base_int5_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE5_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h30              ),
    .FIELD_START_BIT    (23                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_oc_ram_wrapper7_en_interrupt_oc_ram_wrapper7_en_base_int5_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_oc_ram_wrapper7_en_base_int5),
    .reg_rdata_out      (interrupt_oc_ram_wrapper7_en_base_int5_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE5_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h34              ),
    .FIELD_START_BIT    (0                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_lsc_a_0_en_interrupt_lsc_a_0_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_lsc_a_0_en_ap_int),
    .reg_rdata_out      (interrupt_lsc_a_0_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE5_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h34              ),
    .FIELD_START_BIT    (1                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_ppe_a_0_en_interrupt_ppe_a_0_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_ppe_a_0_en_ap_int),
    .reg_rdata_out      (interrupt_ppe_a_0_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE5_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h34              ),
    .FIELD_START_BIT    (2                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_pp_mrg_a_0_en_interrupt_pp_mrg_a_0_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_pp_mrg_a_0_en_ap_int),
    .reg_rdata_out      (interrupt_pp_mrg_a_0_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE5_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h34              ),
    .FIELD_START_BIT    (3                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_cbc_a_0_en_interrupt_cbc_a_0_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_cbc_a_0_en_ap_int),
    .reg_rdata_out      (interrupt_cbc_a_0_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE5_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h34              ),
    .FIELD_START_BIT    (4                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_abc_a_0_en_interrupt_abc_a_0_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_abc_a_0_en_ap_int),
    .reg_rdata_out      (interrupt_abc_a_0_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE5_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h34              ),
    .FIELD_START_BIT    (5                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_ppc_a_0_en_interrupt_ppc_a_0_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_ppc_a_0_en_ap_int),
    .reg_rdata_out      (interrupt_ppc_a_0_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE5_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h34              ),
    .FIELD_START_BIT    (6                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_two_pd_ws_a_0_en_interrupt_two_pd_ws_a_0_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_two_pd_ws_a_0_en_ap_int),
    .reg_rdata_out      (interrupt_two_pd_ws_a_0_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE5_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h34              ),
    .FIELD_START_BIT    (7                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_standby_top_en_interrupt_standby_top_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_standby_top_en_ap_int),
    .reg_rdata_out      (interrupt_standby_top_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE5_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h34              ),
    .FIELD_START_BIT    (8                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_dpc_top_en_interrupt_dpc_top_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_dpc_top_en_ap_int),
    .reg_rdata_out      (interrupt_dpc_top_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE5_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h34              ),
    .FIELD_START_BIT    (9                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_isp_if_bridge_a_0_en_interrupt_isp_if_bridge_a_0_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_isp_if_bridge_a_0_en_ap_int),
    .reg_rdata_out      (interrupt_isp_if_bridge_a_0_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE5_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h34              ),
    .FIELD_START_BIT    (10                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_isp_if_bridge_a_1_en_interrupt_isp_if_bridge_a_1_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_isp_if_bridge_a_1_en_ap_int),
    .reg_rdata_out      (interrupt_isp_if_bridge_a_1_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE5_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h34              ),
    .FIELD_START_BIT    (12                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_uspi_a_0_en_interrupt_uspi_a_0_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_uspi_a_0_en_ap_int),
    .reg_rdata_out      (interrupt_uspi_a_0_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE5_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h34              ),
    .FIELD_START_BIT    (16                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_senif56_asyn_d16_0_w_softrst_ok_en_interrupt_senif56_asyn_d16_0_w_softrst_ok_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_senif56_asyn_d16_0_w_softrst_ok_en_ap_int),
    .reg_rdata_out      (interrupt_senif56_asyn_d16_0_w_softrst_ok_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE5_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h34              ),
    .FIELD_START_BIT    (17                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_senif56_asyn_d16_0_r_softrst_ok_en_interrupt_senif56_asyn_d16_0_r_softrst_ok_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_senif56_asyn_d16_0_r_softrst_ok_en_ap_int),
    .reg_rdata_out      (interrupt_senif56_asyn_d16_0_r_softrst_ok_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE5_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h34              ),
    .FIELD_START_BIT    (18                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_senif56_asyn_d16_1_w_softrst_ok_en_interrupt_senif56_asyn_d16_1_w_softrst_ok_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_senif56_asyn_d16_1_w_softrst_ok_en_ap_int),
    .reg_rdata_out      (interrupt_senif56_asyn_d16_1_w_softrst_ok_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE5_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h34              ),
    .FIELD_START_BIT    (19                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_senif56_asyn_d16_1_r_softrst_ok_en_interrupt_senif56_asyn_d16_1_r_softrst_ok_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_senif56_asyn_d16_1_r_softrst_ok_en_ap_int),
    .reg_rdata_out      (interrupt_senif56_asyn_d16_1_r_softrst_ok_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE5_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h34              ),
    .FIELD_START_BIT    (20                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_yuv420_444_a_0_en_interrupt_yuv420_444_a_0_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_yuv420_444_a_0_en_ap_int),
    .reg_rdata_out      (interrupt_yuv420_444_a_0_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE5_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h34              ),
    .FIELD_START_BIT    (21                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_tx_top_out_mux_a_0_en_interrupt_tx_top_out_mux_a_0_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_tx_top_out_mux_a_0_en_ap_int),
    .reg_rdata_out      (interrupt_tx_top_out_mux_a_0_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE5_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h34              ),
    .FIELD_START_BIT    (22                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_tx_top_out_mux_a_1_en_interrupt_tx_top_out_mux_a_1_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_tx_top_out_mux_a_1_en_ap_int),
    .reg_rdata_out      (interrupt_tx_top_out_mux_a_1_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE5_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h34              ),
    .FIELD_START_BIT    (23                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_oc_ram_wrapper7_en_interrupt_oc_ram_wrapper7_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_oc_ram_wrapper7_en_ap_int),
    .reg_rdata_out      (interrupt_oc_ram_wrapper7_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS5"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h38              ),
    .FIELD_START_BIT    (0                   ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_lsc_a_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_lsc_a_0_in),
    .reg_rdata_out      (interrupt_lsc_a_0_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS5"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h38              ),
    .FIELD_START_BIT    (1                   ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_ppe_a_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_ppe_a_0_in),
    .reg_rdata_out      (interrupt_ppe_a_0_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS5"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h38              ),
    .FIELD_START_BIT    (2                   ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_pp_mrg_a_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_pp_mrg_a_0_in),
    .reg_rdata_out      (interrupt_pp_mrg_a_0_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS5"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h38              ),
    .FIELD_START_BIT    (3                   ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_cbc_a_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_cbc_a_0_in),
    .reg_rdata_out      (interrupt_cbc_a_0_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS5"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h38              ),
    .FIELD_START_BIT    (4                   ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_abc_a_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_abc_a_0_in),
    .reg_rdata_out      (interrupt_abc_a_0_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS5"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h38              ),
    .FIELD_START_BIT    (5                   ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_ppc_a_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_ppc_a_0_in),
    .reg_rdata_out      (interrupt_ppc_a_0_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS5"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h38              ),
    .FIELD_START_BIT    (6                   ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_two_pd_ws_a_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_two_pd_ws_a_0_in),
    .reg_rdata_out      (interrupt_two_pd_ws_a_0_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS5"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h38              ),
    .FIELD_START_BIT    (7                   ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_standby_top_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_standby_top_in),
    .reg_rdata_out      (interrupt_standby_top_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS5"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h38              ),
    .FIELD_START_BIT    (8                   ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_dpc_top_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_dpc_top_in),
    .reg_rdata_out      (interrupt_dpc_top_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS5"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h38              ),
    .FIELD_START_BIT    (9                   ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_isp_if_bridge_a_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_isp_if_bridge_a_0_in),
    .reg_rdata_out      (interrupt_isp_if_bridge_a_0_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS5"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h38              ),
    .FIELD_START_BIT    (10                  ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_isp_if_bridge_a_1_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_isp_if_bridge_a_1_in),
    .reg_rdata_out      (interrupt_isp_if_bridge_a_1_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS5"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h38              ),
    .FIELD_START_BIT    (12                  ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_uspi_a_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_uspi_a_0_in),
    .reg_rdata_out      (interrupt_uspi_a_0_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS5"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h38              ),
    .FIELD_START_BIT    (16                  ),
    .SUB_TYPE           ("posedge"           ) 
  )
  interrupt_senif56_asyn_d16_0_w_softrst_ok_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_senif56_asyn_d16_0_w_softrst_ok_in),
    .reg_rdata_out      (interrupt_senif56_asyn_d16_0_w_softrst_ok_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS5"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h38              ),
    .FIELD_START_BIT    (17                  ),
    .SUB_TYPE           ("posedge"           ) 
  )
  interrupt_senif56_asyn_d16_0_r_softrst_ok_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_senif56_asyn_d16_0_r_softrst_ok_in),
    .reg_rdata_out      (interrupt_senif56_asyn_d16_0_r_softrst_ok_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS5"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h38              ),
    .FIELD_START_BIT    (18                  ),
    .SUB_TYPE           ("posedge"           ) 
  )
  interrupt_senif56_asyn_d16_1_w_softrst_ok_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_senif56_asyn_d16_1_w_softrst_ok_in),
    .reg_rdata_out      (interrupt_senif56_asyn_d16_1_w_softrst_ok_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS5"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h38              ),
    .FIELD_START_BIT    (19                  ),
    .SUB_TYPE           ("posedge"           ) 
  )
  interrupt_senif56_asyn_d16_1_r_softrst_ok_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_senif56_asyn_d16_1_r_softrst_ok_in),
    .reg_rdata_out      (interrupt_senif56_asyn_d16_1_r_softrst_ok_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS5"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h38              ),
    .FIELD_START_BIT    (20                  ),
    .SUB_TYPE           ("posedge"           ) 
  )
  interrupt_yuv420_444_a_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_yuv420_444_a_0_in),
    .reg_rdata_out      (interrupt_yuv420_444_a_0_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS5"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h38              ),
    .FIELD_START_BIT    (21                  ),
    .SUB_TYPE           ("posedge"           ) 
  )
  interrupt_tx_top_out_mux_a_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_tx_top_out_mux_a_0_in),
    .reg_rdata_out      (interrupt_tx_top_out_mux_a_0_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS5"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h38              ),
    .FIELD_START_BIT    (22                  ),
    .SUB_TYPE           ("posedge"           ) 
  )
  interrupt_tx_top_out_mux_a_1_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_tx_top_out_mux_a_1_in),
    .reg_rdata_out      (interrupt_tx_top_out_mux_a_1_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS5"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h38              ),
    .FIELD_START_BIT    (23                  ),
    .SUB_TYPE           ("posedge"           ) 
  )
  interrupt_oc_ram_wrapper7_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_oc_ram_wrapper7_in),
    .reg_rdata_out      (interrupt_oc_ram_wrapper7_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE6_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h3c              ),
    .FIELD_START_BIT    (1                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_mipi_csi2_tx_1_en_interrupt_mipi_csi2_tx_1_en_base_int6_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_mipi_csi2_tx_1_en_base_int6),
    .reg_rdata_out      (interrupt_mipi_csi2_tx_1_en_base_int6_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE6_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h3c              ),
    .FIELD_START_BIT    (4                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_mipi_tx_phy_if_1_en_interrupt_mipi_tx_phy_if_1_en_base_int6_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_mipi_tx_phy_if_1_en_base_int6),
    .reg_rdata_out      (interrupt_mipi_tx_phy_if_1_en_base_int6_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE6_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h3c              ),
    .FIELD_START_BIT    (6                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_mipi_csi2_rx_0_en_interrupt_mipi_csi2_rx_0_en_base_int6_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_mipi_csi2_rx_0_en_base_int6),
    .reg_rdata_out      (interrupt_mipi_csi2_rx_0_en_base_int6_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE6_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h3c              ),
    .FIELD_START_BIT    (7                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_mipi_csi2_rx_1_en_interrupt_mipi_csi2_rx_1_en_base_int6_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_mipi_csi2_rx_1_en_base_int6),
    .reg_rdata_out      (interrupt_mipi_csi2_rx_1_en_base_int6_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE6_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h3c              ),
    .FIELD_START_BIT    (8                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_mipi_slvds_rx_phy_if_0_en_interrupt_mipi_slvds_rx_phy_if_0_en_base_int6_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_mipi_slvds_rx_phy_if_0_en_base_int6),
    .reg_rdata_out      (interrupt_mipi_slvds_rx_phy_if_0_en_base_int6_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE6_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h3c              ),
    .FIELD_START_BIT    (9                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_mipi_slvds_rx_phy_if_1_en_interrupt_mipi_slvds_rx_phy_if_1_en_base_int6_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_mipi_slvds_rx_phy_if_1_en_base_int6),
    .reg_rdata_out      (interrupt_mipi_slvds_rx_phy_if_1_en_base_int6_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE6_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h3c              ),
    .FIELD_START_BIT    (10                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_ssi_ctl_a_0_en_interrupt_ssi_ctl_a_0_en_base_int6_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_ssi_ctl_a_0_en_base_int6),
    .reg_rdata_out      (interrupt_ssi_ctl_a_0_en_base_int6_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE6_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h3c              ),
    .FIELD_START_BIT    (11                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_ppi_bridge_a_0_en_interrupt_ppi_bridge_a_0_en_base_int6_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_ppi_bridge_a_0_en_base_int6),
    .reg_rdata_out      (interrupt_ppi_bridge_a_0_en_base_int6_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE6_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h3c              ),
    .FIELD_START_BIT    (12                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_ppi_bridge_a_1_en_interrupt_ppi_bridge_a_1_en_base_int6_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_ppi_bridge_a_1_en_base_int6),
    .reg_rdata_out      (interrupt_ppi_bridge_a_1_en_base_int6_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE6_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h3c              ),
    .FIELD_START_BIT    (16                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_mipi_line_read_a_0_en_interrupt_mipi_line_read_a_0_en_base_int6_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_mipi_line_read_a_0_en_base_int6),
    .reg_rdata_out      (interrupt_mipi_line_read_a_0_en_base_int6_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE6_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h3c              ),
    .FIELD_START_BIT    (17                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_mipi_line_read_a_1_en_interrupt_mipi_line_read_a_1_en_base_int6_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_mipi_line_read_a_1_en_base_int6),
    .reg_rdata_out      (interrupt_mipi_line_read_a_1_en_base_int6_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE6_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h3c              ),
    .FIELD_START_BIT    (18                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_fpga_i2c_0_en_interrupt_fpga_i2c_0_en_base_int6_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_fpga_i2c_0_en_base_int6),
    .reg_rdata_out      (interrupt_fpga_i2c_0_en_base_int6_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE6_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h3c              ),
    .FIELD_START_BIT    (19                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_fpga_i2c_1_en_interrupt_fpga_i2c_1_en_base_int6_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_fpga_i2c_1_en_base_int6),
    .reg_rdata_out      (interrupt_fpga_i2c_1_en_base_int6_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE6_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h3c              ),
    .FIELD_START_BIT    (20                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_fpga_i2c_2_en_interrupt_fpga_i2c_2_en_base_int6_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_fpga_i2c_2_en_base_int6),
    .reg_rdata_out      (interrupt_fpga_i2c_2_en_base_int6_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE6_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h3c              ),
    .FIELD_START_BIT    (22                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_i2c_0_en_interrupt_i2c_0_en_base_int6_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_i2c_0_en_base_int6),
    .reg_rdata_out      (interrupt_i2c_0_en_base_int6_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE6_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h3c              ),
    .FIELD_START_BIT    (23                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_i2c_1_en_interrupt_i2c_1_en_base_int6_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_i2c_1_en_base_int6),
    .reg_rdata_out      (interrupt_i2c_1_en_base_int6_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE6_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h3c              ),
    .FIELD_START_BIT    (24                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_expo_gain_ctrl_0_en_interrupt_expo_gain_ctrl_0_en_base_int6_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_expo_gain_ctrl_0_en_base_int6),
    .reg_rdata_out      (interrupt_expo_gain_ctrl_0_en_base_int6_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE6_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h3c              ),
    .FIELD_START_BIT    (25                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_expo_gain_ctrl_1_en_interrupt_expo_gain_ctrl_1_en_base_int6_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_expo_gain_ctrl_1_en_base_int6),
    .reg_rdata_out      (interrupt_expo_gain_ctrl_1_en_base_int6_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE6_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h3c              ),
    .FIELD_START_BIT    (26                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_fpga_i2c_3_en_interrupt_fpga_i2c_3_en_base_int6_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_fpga_i2c_3_en_base_int6),
    .reg_rdata_out      (interrupt_fpga_i2c_3_en_base_int6_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE6_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h3c              ),
    .FIELD_START_BIT    (27                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_fpga_i2c_4_en_interrupt_fpga_i2c_4_en_base_int6_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_fpga_i2c_4_en_base_int6),
    .reg_rdata_out      (interrupt_fpga_i2c_4_en_base_int6_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE6_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h3c              ),
    .FIELD_START_BIT    (28                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_lzrw_a_0_en_interrupt_lzrw_a_0_en_base_int6_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_lzrw_a_0_en_base_int6),
    .reg_rdata_out      (interrupt_lzrw_a_0_en_base_int6_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE6_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h40              ),
    .FIELD_START_BIT    (1                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_mipi_csi2_tx_1_en_interrupt_mipi_csi2_tx_1_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_mipi_csi2_tx_1_en_ap_int),
    .reg_rdata_out      (interrupt_mipi_csi2_tx_1_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE6_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h40              ),
    .FIELD_START_BIT    (4                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_mipi_tx_phy_if_1_en_interrupt_mipi_tx_phy_if_1_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_mipi_tx_phy_if_1_en_ap_int),
    .reg_rdata_out      (interrupt_mipi_tx_phy_if_1_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE6_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h40              ),
    .FIELD_START_BIT    (6                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_mipi_csi2_rx_0_en_interrupt_mipi_csi2_rx_0_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_mipi_csi2_rx_0_en_ap_int),
    .reg_rdata_out      (interrupt_mipi_csi2_rx_0_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE6_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h40              ),
    .FIELD_START_BIT    (7                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_mipi_csi2_rx_1_en_interrupt_mipi_csi2_rx_1_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_mipi_csi2_rx_1_en_ap_int),
    .reg_rdata_out      (interrupt_mipi_csi2_rx_1_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE6_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h40              ),
    .FIELD_START_BIT    (8                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_mipi_slvds_rx_phy_if_0_en_interrupt_mipi_slvds_rx_phy_if_0_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_mipi_slvds_rx_phy_if_0_en_ap_int),
    .reg_rdata_out      (interrupt_mipi_slvds_rx_phy_if_0_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE6_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h40              ),
    .FIELD_START_BIT    (9                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_mipi_slvds_rx_phy_if_1_en_interrupt_mipi_slvds_rx_phy_if_1_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_mipi_slvds_rx_phy_if_1_en_ap_int),
    .reg_rdata_out      (interrupt_mipi_slvds_rx_phy_if_1_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE6_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h40              ),
    .FIELD_START_BIT    (10                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_ssi_ctl_a_0_en_interrupt_ssi_ctl_a_0_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_ssi_ctl_a_0_en_ap_int),
    .reg_rdata_out      (interrupt_ssi_ctl_a_0_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE6_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h40              ),
    .FIELD_START_BIT    (11                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_ppi_bridge_a_0_en_interrupt_ppi_bridge_a_0_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_ppi_bridge_a_0_en_ap_int),
    .reg_rdata_out      (interrupt_ppi_bridge_a_0_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE6_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h40              ),
    .FIELD_START_BIT    (12                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_ppi_bridge_a_1_en_interrupt_ppi_bridge_a_1_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_ppi_bridge_a_1_en_ap_int),
    .reg_rdata_out      (interrupt_ppi_bridge_a_1_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE6_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h40              ),
    .FIELD_START_BIT    (16                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_mipi_line_read_a_0_en_interrupt_mipi_line_read_a_0_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_mipi_line_read_a_0_en_ap_int),
    .reg_rdata_out      (interrupt_mipi_line_read_a_0_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE6_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h40              ),
    .FIELD_START_BIT    (17                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_mipi_line_read_a_1_en_interrupt_mipi_line_read_a_1_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_mipi_line_read_a_1_en_ap_int),
    .reg_rdata_out      (interrupt_mipi_line_read_a_1_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE6_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h40              ),
    .FIELD_START_BIT    (18                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_fpga_i2c_0_en_interrupt_fpga_i2c_0_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_fpga_i2c_0_en_ap_int),
    .reg_rdata_out      (interrupt_fpga_i2c_0_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE6_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h40              ),
    .FIELD_START_BIT    (19                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_fpga_i2c_1_en_interrupt_fpga_i2c_1_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_fpga_i2c_1_en_ap_int),
    .reg_rdata_out      (interrupt_fpga_i2c_1_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE6_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h40              ),
    .FIELD_START_BIT    (20                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_fpga_i2c_2_en_interrupt_fpga_i2c_2_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_fpga_i2c_2_en_ap_int),
    .reg_rdata_out      (interrupt_fpga_i2c_2_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE6_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h40              ),
    .FIELD_START_BIT    (22                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_i2c_0_en_interrupt_i2c_0_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_i2c_0_en_ap_int),
    .reg_rdata_out      (interrupt_i2c_0_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE6_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h40              ),
    .FIELD_START_BIT    (23                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_i2c_1_en_interrupt_i2c_1_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_i2c_1_en_ap_int),
    .reg_rdata_out      (interrupt_i2c_1_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE6_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h40              ),
    .FIELD_START_BIT    (24                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_expo_gain_ctrl_0_en_interrupt_expo_gain_ctrl_0_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_expo_gain_ctrl_0_en_ap_int),
    .reg_rdata_out      (interrupt_expo_gain_ctrl_0_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE6_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h40              ),
    .FIELD_START_BIT    (25                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_expo_gain_ctrl_1_en_interrupt_expo_gain_ctrl_1_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_expo_gain_ctrl_1_en_ap_int),
    .reg_rdata_out      (interrupt_expo_gain_ctrl_1_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE6_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h40              ),
    .FIELD_START_BIT    (26                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_fpga_i2c_3_en_interrupt_fpga_i2c_3_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_fpga_i2c_3_en_ap_int),
    .reg_rdata_out      (interrupt_fpga_i2c_3_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE6_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h40              ),
    .FIELD_START_BIT    (27                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_fpga_i2c_4_en_interrupt_fpga_i2c_4_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_fpga_i2c_4_en_ap_int),
    .reg_rdata_out      (interrupt_fpga_i2c_4_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE6_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h40              ),
    .FIELD_START_BIT    (28                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_lzrw_a_0_en_interrupt_lzrw_a_0_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_lzrw_a_0_en_ap_int),
    .reg_rdata_out      (interrupt_lzrw_a_0_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS6"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h44              ),
    .FIELD_START_BIT    (1                   ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_mipi_csi2_tx_1_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_mipi_csi2_tx_1_in),
    .reg_rdata_out      (interrupt_mipi_csi2_tx_1_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS6"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h44              ),
    .FIELD_START_BIT    (4                   ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_mipi_tx_phy_if_1_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_mipi_tx_phy_if_1_in),
    .reg_rdata_out      (interrupt_mipi_tx_phy_if_1_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS6"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h44              ),
    .FIELD_START_BIT    (6                   ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_mipi_csi2_rx_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_mipi_csi2_rx_0_in),
    .reg_rdata_out      (interrupt_mipi_csi2_rx_0_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS6"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h44              ),
    .FIELD_START_BIT    (7                   ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_mipi_csi2_rx_1_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_mipi_csi2_rx_1_in),
    .reg_rdata_out      (interrupt_mipi_csi2_rx_1_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS6"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h44              ),
    .FIELD_START_BIT    (8                   ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_mipi_slvds_rx_phy_if_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_mipi_slvds_rx_phy_if_0_in),
    .reg_rdata_out      (interrupt_mipi_slvds_rx_phy_if_0_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS6"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h44              ),
    .FIELD_START_BIT    (9                   ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_mipi_slvds_rx_phy_if_1_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_mipi_slvds_rx_phy_if_1_in),
    .reg_rdata_out      (interrupt_mipi_slvds_rx_phy_if_1_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS6"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h44              ),
    .FIELD_START_BIT    (10                  ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_ssi_ctl_a_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_ssi_ctl_a_0_in),
    .reg_rdata_out      (interrupt_ssi_ctl_a_0_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS6"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h44              ),
    .FIELD_START_BIT    (11                  ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_ppi_bridge_a_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_ppi_bridge_a_0_in),
    .reg_rdata_out      (interrupt_ppi_bridge_a_0_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS6"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h44              ),
    .FIELD_START_BIT    (12                  ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_ppi_bridge_a_1_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_ppi_bridge_a_1_in),
    .reg_rdata_out      (interrupt_ppi_bridge_a_1_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS6"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h44              ),
    .FIELD_START_BIT    (16                  ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_mipi_line_read_a_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_mipi_line_read_a_0_in),
    .reg_rdata_out      (interrupt_mipi_line_read_a_0_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS6"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h44              ),
    .FIELD_START_BIT    (17                  ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_mipi_line_read_a_1_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_mipi_line_read_a_1_in),
    .reg_rdata_out      (interrupt_mipi_line_read_a_1_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS6"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h44              ),
    .FIELD_START_BIT    (18                  ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_fpga_i2c_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_fpga_i2c_0_in),
    .reg_rdata_out      (interrupt_fpga_i2c_0_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS6"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h44              ),
    .FIELD_START_BIT    (19                  ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_fpga_i2c_1_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_fpga_i2c_1_in),
    .reg_rdata_out      (interrupt_fpga_i2c_1_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS6"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h44              ),
    .FIELD_START_BIT    (20                  ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_fpga_i2c_2_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_fpga_i2c_2_in),
    .reg_rdata_out      (interrupt_fpga_i2c_2_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS6"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h44              ),
    .FIELD_START_BIT    (22                  ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_i2c_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_i2c_0_in  ),
    .reg_rdata_out      (interrupt_i2c_0_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS6"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h44              ),
    .FIELD_START_BIT    (23                  ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_i2c_1_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_i2c_1_in  ),
    .reg_rdata_out      (interrupt_i2c_1_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS6"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h44              ),
    .FIELD_START_BIT    (24                  ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_expo_gain_ctrl_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_expo_gain_ctrl_0_in),
    .reg_rdata_out      (interrupt_expo_gain_ctrl_0_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS6"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h44              ),
    .FIELD_START_BIT    (25                  ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_expo_gain_ctrl_1_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_expo_gain_ctrl_1_in),
    .reg_rdata_out      (interrupt_expo_gain_ctrl_1_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS6"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h44              ),
    .FIELD_START_BIT    (26                  ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_fpga_i2c_3_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_fpga_i2c_3_in),
    .reg_rdata_out      (interrupt_fpga_i2c_3_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS6"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h44              ),
    .FIELD_START_BIT    (27                  ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_fpga_i2c_4_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_fpga_i2c_4_in),
    .reg_rdata_out      (interrupt_fpga_i2c_4_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS6"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h44              ),
    .FIELD_START_BIT    (28                  ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_lzrw_a_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_lzrw_a_0_in),
    .reg_rdata_out      (interrupt_lzrw_a_0_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE9_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h54              ),
    .FIELD_START_BIT    (0                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_rectify_a_0_en_interrupt_rectify_a_0_en_base_int9_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_rectify_a_0_en_base_int9),
    .reg_rdata_out      (interrupt_rectify_a_0_en_base_int9_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE9_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h54              ),
    .FIELD_START_BIT    (1                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_rectify_b_0_en_interrupt_rectify_b_0_en_base_int9_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_rectify_b_0_en_base_int9),
    .reg_rdata_out      (interrupt_rectify_b_0_en_base_int9_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE9_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h54              ),
    .FIELD_START_BIT    (7                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_sw_intr_en_interrupt_sw_intr_en_base_int9_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_sw_intr_en_base_int9),
    .reg_rdata_out      (interrupt_sw_intr_en_base_int9_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE9_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h54              ),
    .FIELD_START_BIT    (9                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_gpio_en_interrupt_gpio_en_base_int9_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_gpio_en_base_int9),
    .reg_rdata_out      (interrupt_gpio_en_base_int9_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE9_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h54              ),
    .FIELD_START_BIT    (10                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_aio_en_interrupt_aio_en_base_int9_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_aio_en_base_int9),
    .reg_rdata_out      (interrupt_aio_en_base_int9_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE9_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h54              ),
    .FIELD_START_BIT    (11                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_i2c_boot_en_interrupt_i2c_boot_en_base_int9_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_i2c_boot_en_base_int9),
    .reg_rdata_out      (interrupt_i2c_boot_en_base_int9_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE9_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h54              ),
    .FIELD_START_BIT    (12                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_ioa_en_interrupt_ioa_en_base_int9_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_ioa_en_base_int9),
    .reg_rdata_out      (interrupt_ioa_en_base_int9_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE9_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h54              ),
    .FIELD_START_BIT    (13                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_wpl_en_interrupt_wpl_en_base_int9_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_wpl_en_base_int9),
    .reg_rdata_out      (interrupt_wpl_en_base_int9_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE9_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h54              ),
    .FIELD_START_BIT    (14                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_spi_nor_en_interrupt_spi_nor_en_base_int9_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_spi_nor_en_base_int9),
    .reg_rdata_out      (interrupt_spi_nor_en_base_int9_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE9_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h54              ),
    .FIELD_START_BIT    (15                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_uspi_e_0_en_interrupt_uspi_e_0_en_base_int9_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_uspi_e_0_en_base_int9),
    .reg_rdata_out      (interrupt_uspi_e_0_en_base_int9_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE9_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h54              ),
    .FIELD_START_BIT    (16                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_fpga_uspi_firefox_en_interrupt_fpga_uspi_firefox_en_base_int9_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_fpga_uspi_firefox_en_base_int9),
    .reg_rdata_out      (interrupt_fpga_uspi_firefox_en_base_int9_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE9_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h54              ),
    .FIELD_START_BIT    (17                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_i2c_slave_top_0_en_interrupt_i2c_slave_top_0_en_base_int9_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_i2c_slave_top_0_en_base_int9),
    .reg_rdata_out      (interrupt_i2c_slave_top_0_en_base_int9_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE9_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h54              ),
    .FIELD_START_BIT    (22                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_pll_wait_cnt_dn_en_interrupt_pll_wait_cnt_dn_en_base_int9_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_pll_wait_cnt_dn_en_base_int9),
    .reg_rdata_out      (interrupt_pll_wait_cnt_dn_en_base_int9_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE9_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h54              ),
    .FIELD_START_BIT    (23                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_arb_bus_stdby_0_en_interrupt_arb_bus_stdby_0_en_base_int9_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_arb_bus_stdby_0_en_base_int9),
    .reg_rdata_out      (interrupt_arb_bus_stdby_0_en_base_int9_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE9_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h54              ),
    .FIELD_START_BIT    (24                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_arb_bus_dpc_0_en_interrupt_arb_bus_dpc_0_en_base_int9_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_arb_bus_dpc_0_en_base_int9),
    .reg_rdata_out      (interrupt_arb_bus_dpc_0_en_base_int9_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE9_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h54              ),
    .FIELD_START_BIT    (25                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_spi_switch_done_en_interrupt_spi_switch_done_en_base_int9_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_spi_switch_done_en_base_int9),
    .reg_rdata_out      (interrupt_spi_switch_done_en_base_int9_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE9_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h54              ),
    .FIELD_START_BIT    (26                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_arb_bus_depth_0_en_interrupt_arb_bus_depth_0_en_base_int9_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_arb_bus_depth_0_en_base_int9),
    .reg_rdata_out      (interrupt_arb_bus_depth_0_en_base_int9_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE9_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h54              ),
    .FIELD_START_BIT    (27                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_i2c_switch_done_en_interrupt_i2c_switch_done_en_base_int9_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_i2c_switch_done_en_base_int9),
    .reg_rdata_out      (interrupt_i2c_switch_done_en_base_int9_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE9_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h58              ),
    .FIELD_START_BIT    (0                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_rectify_a_0_en_interrupt_rectify_a_0_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_rectify_a_0_en_ap_int),
    .reg_rdata_out      (interrupt_rectify_a_0_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE9_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h58              ),
    .FIELD_START_BIT    (1                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_rectify_b_0_en_interrupt_rectify_b_0_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_rectify_b_0_en_ap_int),
    .reg_rdata_out      (interrupt_rectify_b_0_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE9_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h58              ),
    .FIELD_START_BIT    (7                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_sw_intr_en_interrupt_sw_intr_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_sw_intr_en_ap_int),
    .reg_rdata_out      (interrupt_sw_intr_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE9_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h58              ),
    .FIELD_START_BIT    (9                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_gpio_en_interrupt_gpio_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_gpio_en_ap_int),
    .reg_rdata_out      (interrupt_gpio_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE9_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h58              ),
    .FIELD_START_BIT    (10                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_aio_en_interrupt_aio_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_aio_en_ap_int),
    .reg_rdata_out      (interrupt_aio_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE9_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h58              ),
    .FIELD_START_BIT    (11                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_i2c_boot_en_interrupt_i2c_boot_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_i2c_boot_en_ap_int),
    .reg_rdata_out      (interrupt_i2c_boot_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE9_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h58              ),
    .FIELD_START_BIT    (12                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_ioa_en_interrupt_ioa_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_ioa_en_ap_int),
    .reg_rdata_out      (interrupt_ioa_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE9_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h58              ),
    .FIELD_START_BIT    (13                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_wpl_en_interrupt_wpl_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_wpl_en_ap_int),
    .reg_rdata_out      (interrupt_wpl_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE9_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h58              ),
    .FIELD_START_BIT    (14                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_spi_nor_en_interrupt_spi_nor_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_spi_nor_en_ap_int),
    .reg_rdata_out      (interrupt_spi_nor_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE9_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h58              ),
    .FIELD_START_BIT    (15                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_uspi_e_0_en_interrupt_uspi_e_0_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_uspi_e_0_en_ap_int),
    .reg_rdata_out      (interrupt_uspi_e_0_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE9_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h58              ),
    .FIELD_START_BIT    (16                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_fpga_uspi_firefox_en_interrupt_fpga_uspi_firefox_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_fpga_uspi_firefox_en_ap_int),
    .reg_rdata_out      (interrupt_fpga_uspi_firefox_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE9_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h58              ),
    .FIELD_START_BIT    (17                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_i2c_slave_top_0_en_interrupt_i2c_slave_top_0_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_i2c_slave_top_0_en_ap_int),
    .reg_rdata_out      (interrupt_i2c_slave_top_0_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE9_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h58              ),
    .FIELD_START_BIT    (22                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_pll_wait_cnt_dn_en_interrupt_pll_wait_cnt_dn_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_pll_wait_cnt_dn_en_ap_int),
    .reg_rdata_out      (interrupt_pll_wait_cnt_dn_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE9_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h58              ),
    .FIELD_START_BIT    (23                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_arb_bus_stdby_0_en_interrupt_arb_bus_stdby_0_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_arb_bus_stdby_0_en_ap_int),
    .reg_rdata_out      (interrupt_arb_bus_stdby_0_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE9_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h58              ),
    .FIELD_START_BIT    (24                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_arb_bus_dpc_0_en_interrupt_arb_bus_dpc_0_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_arb_bus_dpc_0_en_ap_int),
    .reg_rdata_out      (interrupt_arb_bus_dpc_0_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE9_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h58              ),
    .FIELD_START_BIT    (25                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_spi_switch_done_en_interrupt_spi_switch_done_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_spi_switch_done_en_ap_int),
    .reg_rdata_out      (interrupt_spi_switch_done_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE9_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h58              ),
    .FIELD_START_BIT    (26                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_arb_bus_depth_0_en_interrupt_arb_bus_depth_0_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_arb_bus_depth_0_en_ap_int),
    .reg_rdata_out      (interrupt_arb_bus_depth_0_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE9_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h58              ),
    .FIELD_START_BIT    (27                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_i2c_switch_done_en_interrupt_i2c_switch_done_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_i2c_switch_done_en_ap_int),
    .reg_rdata_out      (interrupt_i2c_switch_done_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS9"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h5c              ),
    .FIELD_START_BIT    (0                   ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_rectify_a_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_rectify_a_0_in),
    .reg_rdata_out      (interrupt_rectify_a_0_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS9"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h5c              ),
    .FIELD_START_BIT    (1                   ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_rectify_b_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_rectify_b_0_in),
    .reg_rdata_out      (interrupt_rectify_b_0_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS9"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h5c              ),
    .FIELD_START_BIT    (7                   ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_sw_intr_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_sw_intr_in),
    .reg_rdata_out      (interrupt_sw_intr_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS9"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h5c              ),
    .FIELD_START_BIT    (9                   ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_gpio_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_gpio_in   ),
    .reg_rdata_out      (interrupt_gpio_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS9"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h5c              ),
    .FIELD_START_BIT    (10                  ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_aio_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_aio_in    ),
    .reg_rdata_out      (interrupt_aio_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS9"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h5c              ),
    .FIELD_START_BIT    (11                  ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_i2c_boot_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_i2c_boot_in),
    .reg_rdata_out      (interrupt_i2c_boot_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS9"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h5c              ),
    .FIELD_START_BIT    (12                  ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_ioa_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_ioa_in    ),
    .reg_rdata_out      (interrupt_ioa_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS9"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h5c              ),
    .FIELD_START_BIT    (13                  ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_wpl_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_wpl_in    ),
    .reg_rdata_out      (interrupt_wpl_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS9"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h5c              ),
    .FIELD_START_BIT    (14                  ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_spi_nor_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_spi_nor_in),
    .reg_rdata_out      (interrupt_spi_nor_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS9"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h5c              ),
    .FIELD_START_BIT    (15                  ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_uspi_e_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_uspi_e_0_in),
    .reg_rdata_out      (interrupt_uspi_e_0_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS9"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h5c              ),
    .FIELD_START_BIT    (16                  ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_fpga_uspi_firefox_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_fpga_uspi_firefox_in),
    .reg_rdata_out      (interrupt_fpga_uspi_firefox_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS9"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h5c              ),
    .FIELD_START_BIT    (17                  ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_i2c_slave_top_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_i2c_slave_top_0_in),
    .reg_rdata_out      (interrupt_i2c_slave_top_0_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS9"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h5c              ),
    .FIELD_START_BIT    (22                  ),
    .SUB_TYPE           ("posedge"           ) 
  )
  interrupt_pll_wait_cnt_dn_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_pll_wait_cnt_dn_in),
    .reg_rdata_out      (interrupt_pll_wait_cnt_dn_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS9"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h5c              ),
    .FIELD_START_BIT    (23                  ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_arb_bus_stdby_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_arb_bus_stdby_0_in),
    .reg_rdata_out      (interrupt_arb_bus_stdby_0_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS9"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h5c              ),
    .FIELD_START_BIT    (24                  ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_arb_bus_dpc_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_arb_bus_dpc_0_in),
    .reg_rdata_out      (interrupt_arb_bus_dpc_0_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS9"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h5c              ),
    .FIELD_START_BIT    (25                  ),
    .SUB_TYPE           ("bothedge"          ) 
  )
  interrupt_spi_switch_done_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_spi_switch_done_in),
    .reg_rdata_out      (interrupt_spi_switch_done_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS9"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h5c              ),
    .FIELD_START_BIT    (26                  ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_arb_bus_depth_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_arb_bus_depth_0_in),
    .reg_rdata_out      (interrupt_arb_bus_depth_0_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS9"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h5c              ),
    .FIELD_START_BIT    (27                  ),
    .SUB_TYPE           ("bothedge"          ) 
  )
  interrupt_i2c_switch_done_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_i2c_switch_done_in),
    .reg_rdata_out      (interrupt_i2c_switch_done_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE8_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h70              ),
    .FIELD_START_BIT    (0                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_dp_top_a_0_en_interrupt_dp_top_a_0_en_base_int8_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_dp_top_a_0_en_base_int8),
    .reg_rdata_out      (interrupt_dp_top_a_0_en_base_int8_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE8_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h70              ),
    .FIELD_START_BIT    (1                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_dg_mcc_a_0_en_interrupt_dg_mcc_a_0_en_base_int8_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_dg_mcc_a_0_en_base_int8),
    .reg_rdata_out      (interrupt_dg_mcc_a_0_en_base_int8_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE8_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h70              ),
    .FIELD_START_BIT    (2                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_dg_ca_a_0_en_interrupt_dg_ca_a_0_en_base_int8_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_dg_ca_a_0_en_base_int8),
    .reg_rdata_out      (interrupt_dg_ca_a_0_en_base_int8_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE8_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h70              ),
    .FIELD_START_BIT    (9                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_ddr_cfg_en_interrupt_ddr_cfg_en_base_int8_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_ddr_cfg_en_base_int8),
    .reg_rdata_out      (interrupt_ddr_cfg_en_base_int8_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE8_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h70              ),
    .FIELD_START_BIT    (10                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_pll_fix_lock_en_interrupt_pll_fix_lock_en_base_int8_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_pll_fix_lock_en_base_int8),
    .reg_rdata_out      (interrupt_pll_fix_lock_en_base_int8_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE8_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h70              ),
    .FIELD_START_BIT    (11                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_pll_var_lock_en_interrupt_pll_var_lock_en_base_int8_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_pll_var_lock_en_base_int8),
    .reg_rdata_out      (interrupt_pll_var_lock_en_base_int8_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE8_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h70              ),
    .FIELD_START_BIT    (12                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_pll_fix_fbslip_en_interrupt_pll_fix_fbslip_en_base_int8_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_pll_fix_fbslip_en_base_int8),
    .reg_rdata_out      (interrupt_pll_fix_fbslip_en_base_int8_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE8_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h70              ),
    .FIELD_START_BIT    (13                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_pll_var_fbslip_en_interrupt_pll_var_fbslip_en_base_int8_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_pll_var_fbslip_en_base_int8),
    .reg_rdata_out      (interrupt_pll_var_fbslip_en_base_int8_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE8_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h70              ),
    .FIELD_START_BIT    (14                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_pll_fix_rfslip_en_interrupt_pll_fix_rfslip_en_base_int8_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_pll_fix_rfslip_en_base_int8),
    .reg_rdata_out      (interrupt_pll_fix_rfslip_en_base_int8_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE8_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h70              ),
    .FIELD_START_BIT    (15                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_pll_var_rfslip_en_interrupt_pll_var_rfslip_en_base_int8_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_pll_var_rfslip_en_base_int8),
    .reg_rdata_out      (interrupt_pll_var_rfslip_en_base_int8_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE8_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h70              ),
    .FIELD_START_BIT    (19                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_pll_ext_lock_en_interrupt_pll_ext_lock_en_base_int8_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_pll_ext_lock_en_base_int8),
    .reg_rdata_out      (interrupt_pll_ext_lock_en_base_int8_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE8_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h70              ),
    .FIELD_START_BIT    (20                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_pll_ext_fbslip_en_interrupt_pll_ext_fbslip_en_base_int8_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_pll_ext_fbslip_en_base_int8),
    .reg_rdata_out      (interrupt_pll_ext_fbslip_en_base_int8_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE8_BASE"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h70              ),
    .FIELD_START_BIT    (21                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_pll_ext_rfslip_en_interrupt_pll_ext_rfslip_en_base_int8_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_pll_ext_rfslip_en_base_int8),
    .reg_rdata_out      (interrupt_pll_ext_rfslip_en_base_int8_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE8_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h74              ),
    .FIELD_START_BIT    (0                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_dp_top_a_0_en_interrupt_dp_top_a_0_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_dp_top_a_0_en_ap_int),
    .reg_rdata_out      (interrupt_dp_top_a_0_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE8_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h74              ),
    .FIELD_START_BIT    (1                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_dg_mcc_a_0_en_interrupt_dg_mcc_a_0_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_dg_mcc_a_0_en_ap_int),
    .reg_rdata_out      (interrupt_dg_mcc_a_0_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE8_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h74              ),
    .FIELD_START_BIT    (2                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_dg_ca_a_0_en_interrupt_dg_ca_a_0_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_dg_ca_a_0_en_ap_int),
    .reg_rdata_out      (interrupt_dg_ca_a_0_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE8_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h74              ),
    .FIELD_START_BIT    (9                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_ddr_cfg_en_interrupt_ddr_cfg_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_ddr_cfg_en_ap_int),
    .reg_rdata_out      (interrupt_ddr_cfg_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE8_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h74              ),
    .FIELD_START_BIT    (10                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_pll_fix_lock_en_interrupt_pll_fix_lock_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_pll_fix_lock_en_ap_int),
    .reg_rdata_out      (interrupt_pll_fix_lock_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE8_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h74              ),
    .FIELD_START_BIT    (11                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_pll_var_lock_en_interrupt_pll_var_lock_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_pll_var_lock_en_ap_int),
    .reg_rdata_out      (interrupt_pll_var_lock_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE8_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h74              ),
    .FIELD_START_BIT    (12                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_pll_fix_fbslip_en_interrupt_pll_fix_fbslip_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_pll_fix_fbslip_en_ap_int),
    .reg_rdata_out      (interrupt_pll_fix_fbslip_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE8_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h74              ),
    .FIELD_START_BIT    (13                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_pll_var_fbslip_en_interrupt_pll_var_fbslip_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_pll_var_fbslip_en_ap_int),
    .reg_rdata_out      (interrupt_pll_var_fbslip_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE8_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h74              ),
    .FIELD_START_BIT    (14                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_pll_fix_rfslip_en_interrupt_pll_fix_rfslip_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_pll_fix_rfslip_en_ap_int),
    .reg_rdata_out      (interrupt_pll_fix_rfslip_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE8_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h74              ),
    .FIELD_START_BIT    (15                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_pll_var_rfslip_en_interrupt_pll_var_rfslip_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_pll_var_rfslip_en_ap_int),
    .reg_rdata_out      (interrupt_pll_var_rfslip_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE8_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h74              ),
    .FIELD_START_BIT    (19                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_pll_ext_lock_en_interrupt_pll_ext_lock_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_pll_ext_lock_en_ap_int),
    .reg_rdata_out      (interrupt_pll_ext_lock_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE8_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h74              ),
    .FIELD_START_BIT    (20                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_pll_ext_fbslip_en_interrupt_pll_ext_fbslip_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_pll_ext_fbslip_en_ap_int),
    .reg_rdata_out      (interrupt_pll_ext_fbslip_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE8_AP"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h74              ),
    .FIELD_START_BIT    (21                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_pll_ext_rfslip_en_interrupt_pll_ext_rfslip_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_pll_ext_rfslip_en_ap_int),
    .reg_rdata_out      (interrupt_pll_ext_rfslip_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS8"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h78              ),
    .FIELD_START_BIT    (0                   ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_dp_top_a_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_dp_top_a_0_in),
    .reg_rdata_out      (interrupt_dp_top_a_0_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS8"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h78              ),
    .FIELD_START_BIT    (1                   ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_dg_mcc_a_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_dg_mcc_a_0_in),
    .reg_rdata_out      (interrupt_dg_mcc_a_0_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS8"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h78              ),
    .FIELD_START_BIT    (2                   ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_dg_ca_a_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_dg_ca_a_0_in),
    .reg_rdata_out      (interrupt_dg_ca_a_0_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS8"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h78              ),
    .FIELD_START_BIT    (9                   ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_ddr_cfg_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_ddr_cfg_in),
    .reg_rdata_out      (interrupt_ddr_cfg_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS8"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h78              ),
    .FIELD_START_BIT    (10                  ),
    .SUB_TYPE           ("level"             ) 
  )
  interrupt_pll_fix_lock_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_pll_fix_lock_in),
    .reg_rdata_out      (interrupt_pll_fix_lock_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS8"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h78              ),
    .FIELD_START_BIT    (11                  ),
    .SUB_TYPE           ("level"             ) 
  )
  interrupt_pll_var_lock_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_pll_var_lock_in),
    .reg_rdata_out      (interrupt_pll_var_lock_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS8"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h78              ),
    .FIELD_START_BIT    (12                  ),
    .SUB_TYPE           ("level"             ) 
  )
  interrupt_pll_fix_fbslip_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_pll_fix_fbslip_in),
    .reg_rdata_out      (interrupt_pll_fix_fbslip_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS8"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h78              ),
    .FIELD_START_BIT    (13                  ),
    .SUB_TYPE           ("level"             ) 
  )
  interrupt_pll_var_fbslip_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_pll_var_fbslip_in),
    .reg_rdata_out      (interrupt_pll_var_fbslip_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS8"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h78              ),
    .FIELD_START_BIT    (14                  ),
    .SUB_TYPE           ("level"             ) 
  )
  interrupt_pll_fix_rfslip_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_pll_fix_rfslip_in),
    .reg_rdata_out      (interrupt_pll_fix_rfslip_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS8"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h78              ),
    .FIELD_START_BIT    (15                  ),
    .SUB_TYPE           ("level"             ) 
  )
  interrupt_pll_var_rfslip_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_pll_var_rfslip_in),
    .reg_rdata_out      (interrupt_pll_var_rfslip_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS8"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h78              ),
    .FIELD_START_BIT    (19                  ),
    .SUB_TYPE           ("level"             ) 
  )
  interrupt_pll_ext_lock_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_pll_ext_lock_in),
    .reg_rdata_out      (interrupt_pll_ext_lock_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS8"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h78              ),
    .FIELD_START_BIT    (20                  ),
    .SUB_TYPE           ("level"             ) 
  )
  interrupt_pll_ext_fbslip_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_pll_ext_fbslip_in),
    .reg_rdata_out      (interrupt_pll_ext_fbslip_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS8"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h78              ),
    .FIELD_START_BIT    (21                  ),
    .SUB_TYPE           ("level"             ) 
  )
  interrupt_pll_ext_rfslip_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_pll_ext_rfslip_in),
    .reg_rdata_out      (interrupt_pll_ext_rfslip_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE10_BASE" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h7c              ),
    .FIELD_START_BIT    (0                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_hdr_top_en_interrupt_hdr_top_en_base_int10_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_hdr_top_en_base_int10),
    .reg_rdata_out      (interrupt_hdr_top_en_base_int10_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE10_BASE" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h7c              ),
    .FIELD_START_BIT    (1                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_id_det_a_0_en_interrupt_id_det_a_0_en_base_int10_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_id_det_a_0_en_base_int10),
    .reg_rdata_out      (interrupt_id_det_a_0_en_base_int10_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE10_BASE" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h7c              ),
    .FIELD_START_BIT    (2                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_id_det_a_1_en_interrupt_id_det_a_1_en_base_int10_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_id_det_a_1_en_base_int10),
    .reg_rdata_out      (interrupt_id_det_a_1_en_base_int10_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE10_BASE" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h7c              ),
    .FIELD_START_BIT    (3                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_bayer_binning_a_0_en_interrupt_bayer_binning_a_0_en_base_int10_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_bayer_binning_a_0_en_base_int10),
    .reg_rdata_out      (interrupt_bayer_binning_a_0_en_base_int10_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE10_BASE" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h7c              ),
    .FIELD_START_BIT    (4                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_bayer_binning_a_1_en_interrupt_bayer_binning_a_1_en_base_int10_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_bayer_binning_a_1_en_base_int10),
    .reg_rdata_out      (interrupt_bayer_binning_a_1_en_base_int10_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE10_BASE" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h7c              ),
    .FIELD_START_BIT    (5                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_rlb_a_0_en_interrupt_rlb_a_0_en_base_int10_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_rlb_a_0_en_base_int10),
    .reg_rdata_out      (interrupt_rlb_a_0_en_base_int10_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE10_BASE" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h7c              ),
    .FIELD_START_BIT    (6                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_rlb_b_0_en_interrupt_rlb_b_0_en_base_int10_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_rlb_b_0_en_base_int10),
    .reg_rdata_out      (interrupt_rlb_b_0_en_base_int10_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE10_BASE" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h7c              ),
    .FIELD_START_BIT    (7                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_rdn_a_0_en_interrupt_rdn_a_0_en_base_int10_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_rdn_a_0_en_base_int10),
    .reg_rdata_out      (interrupt_rdn_a_0_en_base_int10_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE10_BASE" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h7c              ),
    .FIELD_START_BIT    (8                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_rdn_b_0_en_interrupt_rdn_b_0_en_base_int10_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_rdn_b_0_en_base_int10),
    .reg_rdata_out      (interrupt_rdn_b_0_en_base_int10_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE10_BASE" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h7c              ),
    .FIELD_START_BIT    (12                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_tx_top_en_interrupt_tx_top_en_base_int10_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_tx_top_en_base_int10),
    .reg_rdata_out      (interrupt_tx_top_en_base_int10_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE10_BASE" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h7c              ),
    .FIELD_START_BIT    (13                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_tx_line_merge_2l_a_0_en_interrupt_tx_line_merge_2l_a_0_en_base_int10_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_tx_line_merge_2l_a_0_en_base_int10),
    .reg_rdata_out      (interrupt_tx_line_merge_2l_a_0_en_base_int10_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE10_BASE" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h7c              ),
    .FIELD_START_BIT    (14                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_tx_line_merge_2l_b_0_en_interrupt_tx_line_merge_2l_b_0_en_base_int10_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_tx_line_merge_2l_b_0_en_base_int10),
    .reg_rdata_out      (interrupt_tx_line_merge_2l_b_0_en_base_int10_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE10_BASE" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h7c              ),
    .FIELD_START_BIT    (15                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_hdr_interpolation_a_0_en_interrupt_hdr_interpolation_a_0_en_base_int10_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_hdr_interpolation_a_0_en_base_int10),
    .reg_rdata_out      (interrupt_hdr_interpolation_a_0_en_base_int10_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE10_BASE" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h7c              ),
    .FIELD_START_BIT    (16                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_hdr_blending_a_0_en_interrupt_hdr_blending_a_0_en_base_int10_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_hdr_blending_a_0_en_base_int10),
    .reg_rdata_out      (interrupt_hdr_blending_a_0_en_base_int10_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE10_BASE" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h7c              ),
    .FIELD_START_BIT    (19                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_hdr_ae_a_0_en_interrupt_hdr_ae_a_0_en_base_int10_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_hdr_ae_a_0_en_base_int10),
    .reg_rdata_out      (interrupt_hdr_ae_a_0_en_base_int10_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE10_BASE" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h7c              ),
    .FIELD_START_BIT    (20                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_hdr_ae_a_1_en_interrupt_hdr_ae_a_1_en_base_int10_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_hdr_ae_a_1_en_base_int10),
    .reg_rdata_out      (interrupt_hdr_ae_a_1_en_base_int10_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE10_BASE" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h7c              ),
    .FIELD_START_BIT    (21                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_tx_line_merge_2l_c_0_en_interrupt_tx_line_merge_2l_c_0_en_base_int10_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_tx_line_merge_2l_c_0_en_base_int10),
    .reg_rdata_out      (interrupt_tx_line_merge_2l_c_0_en_base_int10_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE10_BASE" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h7c              ),
    .FIELD_START_BIT    (22                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_tx_line_merge_2l_d_0_en_interrupt_tx_line_merge_2l_d_0_en_base_int10_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_tx_line_merge_2l_d_0_en_base_int10),
    .reg_rdata_out      (interrupt_tx_line_merge_2l_d_0_en_base_int10_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE10_BASE" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h7c              ),
    .FIELD_START_BIT    (23                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_lsc_c_0_en_interrupt_lsc_c_0_en_base_int10_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_lsc_c_0_en_base_int10),
    .reg_rdata_out      (interrupt_lsc_c_0_en_base_int10_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE10_AP"   ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h80              ),
    .FIELD_START_BIT    (0                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_hdr_top_en_interrupt_hdr_top_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_hdr_top_en_ap_int),
    .reg_rdata_out      (interrupt_hdr_top_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE10_AP"   ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h80              ),
    .FIELD_START_BIT    (1                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_id_det_a_0_en_interrupt_id_det_a_0_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_id_det_a_0_en_ap_int),
    .reg_rdata_out      (interrupt_id_det_a_0_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE10_AP"   ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h80              ),
    .FIELD_START_BIT    (2                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_id_det_a_1_en_interrupt_id_det_a_1_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_id_det_a_1_en_ap_int),
    .reg_rdata_out      (interrupt_id_det_a_1_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE10_AP"   ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h80              ),
    .FIELD_START_BIT    (3                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_bayer_binning_a_0_en_interrupt_bayer_binning_a_0_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_bayer_binning_a_0_en_ap_int),
    .reg_rdata_out      (interrupt_bayer_binning_a_0_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE10_AP"   ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h80              ),
    .FIELD_START_BIT    (4                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_bayer_binning_a_1_en_interrupt_bayer_binning_a_1_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_bayer_binning_a_1_en_ap_int),
    .reg_rdata_out      (interrupt_bayer_binning_a_1_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE10_AP"   ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h80              ),
    .FIELD_START_BIT    (5                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_rlb_a_0_en_interrupt_rlb_a_0_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_rlb_a_0_en_ap_int),
    .reg_rdata_out      (interrupt_rlb_a_0_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE10_AP"   ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h80              ),
    .FIELD_START_BIT    (6                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_rlb_b_0_en_interrupt_rlb_b_0_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_rlb_b_0_en_ap_int),
    .reg_rdata_out      (interrupt_rlb_b_0_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE10_AP"   ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h80              ),
    .FIELD_START_BIT    (7                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_rdn_a_0_en_interrupt_rdn_a_0_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_rdn_a_0_en_ap_int),
    .reg_rdata_out      (interrupt_rdn_a_0_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE10_AP"   ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h80              ),
    .FIELD_START_BIT    (8                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_rdn_b_0_en_interrupt_rdn_b_0_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_rdn_b_0_en_ap_int),
    .reg_rdata_out      (interrupt_rdn_b_0_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE10_AP"   ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h80              ),
    .FIELD_START_BIT    (12                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_tx_top_en_interrupt_tx_top_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_tx_top_en_ap_int),
    .reg_rdata_out      (interrupt_tx_top_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE10_AP"   ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h80              ),
    .FIELD_START_BIT    (13                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_tx_line_merge_2l_a_0_en_interrupt_tx_line_merge_2l_a_0_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_tx_line_merge_2l_a_0_en_ap_int),
    .reg_rdata_out      (interrupt_tx_line_merge_2l_a_0_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE10_AP"   ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h80              ),
    .FIELD_START_BIT    (14                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_tx_line_merge_2l_b_0_en_interrupt_tx_line_merge_2l_b_0_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_tx_line_merge_2l_b_0_en_ap_int),
    .reg_rdata_out      (interrupt_tx_line_merge_2l_b_0_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE10_AP"   ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h80              ),
    .FIELD_START_BIT    (15                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_hdr_interpolation_a_0_en_interrupt_hdr_interpolation_a_0_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_hdr_interpolation_a_0_en_ap_int),
    .reg_rdata_out      (interrupt_hdr_interpolation_a_0_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE10_AP"   ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h80              ),
    .FIELD_START_BIT    (16                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_hdr_blending_a_0_en_interrupt_hdr_blending_a_0_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_hdr_blending_a_0_en_ap_int),
    .reg_rdata_out      (interrupt_hdr_blending_a_0_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE10_AP"   ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h80              ),
    .FIELD_START_BIT    (19                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_hdr_ae_a_0_en_interrupt_hdr_ae_a_0_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_hdr_ae_a_0_en_ap_int),
    .reg_rdata_out      (interrupt_hdr_ae_a_0_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE10_AP"   ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h80              ),
    .FIELD_START_BIT    (20                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_hdr_ae_a_1_en_interrupt_hdr_ae_a_1_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_hdr_ae_a_1_en_ap_int),
    .reg_rdata_out      (interrupt_hdr_ae_a_1_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE10_AP"   ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h80              ),
    .FIELD_START_BIT    (21                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_tx_line_merge_2l_c_0_en_interrupt_tx_line_merge_2l_c_0_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_tx_line_merge_2l_c_0_en_ap_int),
    .reg_rdata_out      (interrupt_tx_line_merge_2l_c_0_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE10_AP"   ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h80              ),
    .FIELD_START_BIT    (22                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_tx_line_merge_2l_d_0_en_interrupt_tx_line_merge_2l_d_0_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_tx_line_merge_2l_d_0_en_ap_int),
    .reg_rdata_out      (interrupt_tx_line_merge_2l_d_0_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_ENABLE10_AP"   ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h80              ),
    .FIELD_START_BIT    (23                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  interrupt_lsc_c_0_en_interrupt_lsc_c_0_en_ap_int_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (interrupt_lsc_c_0_en_ap_int),
    .reg_rdata_out      (interrupt_lsc_c_0_en_ap_int_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS10"      ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h84              ),
    .FIELD_START_BIT    (0                   ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_hdr_top_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_hdr_top_in),
    .reg_rdata_out      (interrupt_hdr_top_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS10"      ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h84              ),
    .FIELD_START_BIT    (1                   ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_id_det_a_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_id_det_a_0_in),
    .reg_rdata_out      (interrupt_id_det_a_0_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS10"      ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h84              ),
    .FIELD_START_BIT    (2                   ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_id_det_a_1_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_id_det_a_1_in),
    .reg_rdata_out      (interrupt_id_det_a_1_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS10"      ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h84              ),
    .FIELD_START_BIT    (3                   ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_bayer_binning_a_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_bayer_binning_a_0_in),
    .reg_rdata_out      (interrupt_bayer_binning_a_0_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS10"      ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h84              ),
    .FIELD_START_BIT    (4                   ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_bayer_binning_a_1_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_bayer_binning_a_1_in),
    .reg_rdata_out      (interrupt_bayer_binning_a_1_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS10"      ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h84              ),
    .FIELD_START_BIT    (5                   ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_rlb_a_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_rlb_a_0_in),
    .reg_rdata_out      (interrupt_rlb_a_0_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS10"      ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h84              ),
    .FIELD_START_BIT    (6                   ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_rlb_b_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_rlb_b_0_in),
    .reg_rdata_out      (interrupt_rlb_b_0_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS10"      ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h84              ),
    .FIELD_START_BIT    (7                   ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_rdn_a_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_rdn_a_0_in),
    .reg_rdata_out      (interrupt_rdn_a_0_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS10"      ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h84              ),
    .FIELD_START_BIT    (8                   ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_rdn_b_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_rdn_b_0_in),
    .reg_rdata_out      (interrupt_rdn_b_0_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS10"      ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h84              ),
    .FIELD_START_BIT    (12                  ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_tx_top_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_tx_top_in ),
    .reg_rdata_out      (interrupt_tx_top_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS10"      ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h84              ),
    .FIELD_START_BIT    (13                  ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_tx_line_merge_2l_a_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_tx_line_merge_2l_a_0_in),
    .reg_rdata_out      (interrupt_tx_line_merge_2l_a_0_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS10"      ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h84              ),
    .FIELD_START_BIT    (14                  ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_tx_line_merge_2l_b_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_tx_line_merge_2l_b_0_in),
    .reg_rdata_out      (interrupt_tx_line_merge_2l_b_0_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS10"      ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h84              ),
    .FIELD_START_BIT    (15                  ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_hdr_interpolation_a_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_hdr_interpolation_a_0_in),
    .reg_rdata_out      (interrupt_hdr_interpolation_a_0_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS10"      ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h84              ),
    .FIELD_START_BIT    (16                  ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_hdr_blending_a_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_hdr_blending_a_0_in),
    .reg_rdata_out      (interrupt_hdr_blending_a_0_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS10"      ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h84              ),
    .FIELD_START_BIT    (19                  ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_hdr_ae_a_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_hdr_ae_a_0_in),
    .reg_rdata_out      (interrupt_hdr_ae_a_0_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS10"      ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h84              ),
    .FIELD_START_BIT    (20                  ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_hdr_ae_a_1_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_hdr_ae_a_1_in),
    .reg_rdata_out      (interrupt_hdr_ae_a_1_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS10"      ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h84              ),
    .FIELD_START_BIT    (21                  ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_tx_line_merge_2l_c_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_tx_line_merge_2l_c_0_in),
    .reg_rdata_out      (interrupt_tx_line_merge_2l_c_0_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS10"      ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h84              ),
    .FIELD_START_BIT    (22                  ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_tx_line_merge_2l_d_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_tx_line_merge_2l_d_0_in),
    .reg_rdata_out      (interrupt_tx_line_merge_2l_d_0_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS10"      ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'h84              ),
    .FIELD_START_BIT    (23                  ),
    .SUB_TYPE           ("hotwire"           ) 
  )
  interrupt_lsc_c_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (interrupt_lsc_c_0_in),
    .reg_rdata_out      (interrupt_lsc_c_0_rdata_out),
    .reg_out            (                    ) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_0" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h88              ),
    .FIELD_START_BIT    (1                   ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_lvhwirp_top_a_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_lvhwirp_top_a_0_rdata_out),
    .reg_out            (srampd_lvhwirp_top_a_0_out) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_0" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h88              ),
    .FIELD_START_BIT    (2                   ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_lvhwirp_top_b_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_lvhwirp_top_b_0_rdata_out),
    .reg_out            (srampd_lvhwirp_top_b_0_out) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_0" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h88              ),
    .FIELD_START_BIT    (3                   ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_lvlumanr_a_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_lvlumanr_a_0_rdata_out),
    .reg_out            (srampd_lvlumanr_a_0_out) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_0" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h88              ),
    .FIELD_START_BIT    (4                   ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_lvlumanr_a_1_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_lvlumanr_a_1_rdata_out),
    .reg_out            (srampd_lvlumanr_a_1_out) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_0" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h88              ),
    .FIELD_START_BIT    (5                   ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_lsc_b_2_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_lsc_b_2_rdata_out),
    .reg_out            (srampd_lsc_b_2_out  ) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_0" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h88              ),
    .FIELD_START_BIT    (6                   ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_lsc_b_3_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_lsc_b_3_rdata_out),
    .reg_out            (srampd_lsc_b_3_out  ) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_0" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h88              ),
    .FIELD_START_BIT    (7                   ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_lvsharp_a_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_lvsharp_a_0_rdata_out),
    .reg_out            (srampd_lvsharp_a_0_out) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_0" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h88              ),
    .FIELD_START_BIT    (8                   ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_lvsharp_a_1_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_lvsharp_a_1_rdata_out),
    .reg_out            (srampd_lvsharp_a_1_out) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_0" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h88              ),
    .FIELD_START_BIT    (9                   ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_y_bin_a_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_y_bin_a_0_rdata_out),
    .reg_out            (srampd_y_bin_a_0_out) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_0" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h88              ),
    .FIELD_START_BIT    (10                  ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_y_bin_a_1_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_y_bin_a_1_rdata_out),
    .reg_out            (srampd_y_bin_a_1_out) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_0" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h88              ),
    .FIELD_START_BIT    (13                  ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_bayer_scl_a_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_bayer_scl_a_0_rdata_out),
    .reg_out            (srampd_bayer_scl_a_0_out) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_0" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h88              ),
    .FIELD_START_BIT    (14                  ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_bayer_scl_a_1_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_bayer_scl_a_1_rdata_out),
    .reg_out            (srampd_bayer_scl_a_1_out) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_0" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h88              ),
    .FIELD_START_BIT    (15                  ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_y_bin_b_top_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_y_bin_b_top_0_rdata_out),
    .reg_out            (srampd_y_bin_b_top_0_out) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_0" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h88              ),
    .FIELD_START_BIT    (17                  ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_compress_rotate_a_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_compress_rotate_a_0_rdata_out),
    .reg_out            (srampd_compress_rotate_a_0_out) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_0" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h88              ),
    .FIELD_START_BIT    (18                  ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_compress_rotate_b_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_compress_rotate_b_0_rdata_out),
    .reg_out            (srampd_compress_rotate_b_0_out) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_0" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h88              ),
    .FIELD_START_BIT    (19                  ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_decompress_a_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_decompress_a_0_rdata_out),
    .reg_out            (srampd_decompress_a_0_out) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_0" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h88              ),
    .FIELD_START_BIT    (20                  ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_decompress_b_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_decompress_b_0_rdata_out),
    .reg_out            (srampd_decompress_b_0_out) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_0" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h88              ),
    .FIELD_START_BIT    (22                  ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_depth_scl_up_a_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_depth_scl_up_a_0_rdata_out),
    .reg_out            (srampd_depth_scl_up_a_0_out) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_0" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h88              ),
    .FIELD_START_BIT    (24                  ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_mono_scl_a_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_mono_scl_a_0_rdata_out),
    .reg_out            (srampd_mono_scl_a_0_out) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_0" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h88              ),
    .FIELD_START_BIT    (25                  ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_mono_scl_a_1_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_mono_scl_a_1_rdata_out),
    .reg_out            (srampd_mono_scl_a_1_out) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_0" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h88              ),
    .FIELD_START_BIT    (26                  ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_lvlumanr_b_top_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_lvlumanr_b_top_0_rdata_out),
    .reg_out            (srampd_lvlumanr_b_top_0_out) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_1" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h8c              ),
    .FIELD_START_BIT    (0                   ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_lsc_a_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_lsc_a_0_rdata_out),
    .reg_out            (srampd_lsc_a_0_out  ) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_1" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h8c              ),
    .FIELD_START_BIT    (1                   ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_ppe_a_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_ppe_a_0_rdata_out),
    .reg_out            (srampd_ppe_a_0_out  ) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_1" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h8c              ),
    .FIELD_START_BIT    (3                   ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_cbc_a_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_cbc_a_0_rdata_out),
    .reg_out            (srampd_cbc_a_0_out  ) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_1" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h8c              ),
    .FIELD_START_BIT    (4                   ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_abc_a_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_abc_a_0_rdata_out),
    .reg_out            (srampd_abc_a_0_out  ) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_1" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h8c              ),
    .FIELD_START_BIT    (5                   ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_ppc_a_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_ppc_a_0_rdata_out),
    .reg_out            (srampd_ppc_a_0_out  ) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_1" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h8c              ),
    .FIELD_START_BIT    (6                   ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_two_pd_ws_a_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_two_pd_ws_a_0_rdata_out),
    .reg_out            (srampd_two_pd_ws_a_0_out) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_1" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h8c              ),
    .FIELD_START_BIT    (12                  ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h0                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_uspi_a_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_uspi_a_0_rdata_out),
    .reg_out            (srampd_uspi_a_0_out ) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_1" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h8c              ),
    .FIELD_START_BIT    (20                  ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_yuv420_444_a_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_yuv420_444_a_0_rdata_out),
    .reg_out            (srampd_yuv420_444_a_0_out) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_1" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h8c              ),
    .FIELD_START_BIT    (21                  ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_tx_top_out_mux_a_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_tx_top_out_mux_a_0_rdata_out),
    .reg_out            (srampd_tx_top_out_mux_a_0_out) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_1" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h8c              ),
    .FIELD_START_BIT    (22                  ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_tx_top_out_mux_a_1_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_tx_top_out_mux_a_1_rdata_out),
    .reg_out            (srampd_tx_top_out_mux_a_1_out) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_2" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h90              ),
    .FIELD_START_BIT    (0                   ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_mipi_csi2_tx_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_mipi_csi2_tx_0_rdata_out),
    .reg_out            (srampd_mipi_csi2_tx_0_out) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_2" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h90              ),
    .FIELD_START_BIT    (6                   ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_mipi_csi2_rx_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_mipi_csi2_rx_0_rdata_out),
    .reg_out            (srampd_mipi_csi2_rx_0_out) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_2" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h90              ),
    .FIELD_START_BIT    (9                   ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_oc_ram_wrapper0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_oc_ram_wrapper0_rdata_out),
    .reg_out            (srampd_oc_ram_wrapper0_out) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_2" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h90              ),
    .FIELD_START_BIT    (12                  ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_oc_ram_wrapper3_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_oc_ram_wrapper3_rdata_out),
    .reg_out            (srampd_oc_ram_wrapper3_out) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_2" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h90              ),
    .FIELD_START_BIT    (15                  ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_oc_ram_wrapper6_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_oc_ram_wrapper6_rdata_out),
    .reg_out            (srampd_oc_ram_wrapper6_out) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_2" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h90              ),
    .FIELD_START_BIT    (16                  ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_mipi_line_read_a_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_mipi_line_read_a_0_rdata_out),
    .reg_out            (srampd_mipi_line_read_a_0_out) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_2" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h90              ),
    .FIELD_START_BIT    (17                  ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_mipi_line_read_a_1_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_mipi_line_read_a_1_rdata_out),
    .reg_out            (srampd_mipi_line_read_a_1_out) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_2" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h90              ),
    .FIELD_START_BIT    (18                  ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_oc_ram_wrapper7_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_oc_ram_wrapper7_rdata_out),
    .reg_out            (srampd_oc_ram_wrapper7_out) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_2" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h90              ),
    .FIELD_START_BIT    (22                  ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_base_arc_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_base_arc_rdata_out),
    .reg_out            (srampd_base_arc_out ) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_2" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h90              ),
    .FIELD_START_BIT    (28                  ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_lzrw_a_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_lzrw_a_0_rdata_out),
    .reg_out            (srampd_lzrw_a_0_out ) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_2" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h90              ),
    .FIELD_START_BIT    (29                  ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_idd_buffer_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_idd_buffer_0_rdata_out),
    .reg_out            (srampd_idd_buffer_0_out) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_3" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h94              ),
    .FIELD_START_BIT    (14                  ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_spi_nor_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_spi_nor_rdata_out),
    .reg_out            (srampd_spi_nor_out  ) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_3" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h94              ),
    .FIELD_START_BIT    (15                  ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h0                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_uspi_e_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_uspi_e_0_rdata_out),
    .reg_out            (srampd_uspi_e_0_out ) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_3" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h94              ),
    .FIELD_START_BIT    (17                  ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h0                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_i2c_slave_top_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_i2c_slave_top_0_rdata_out),
    .reg_out            (srampd_i2c_slave_top_0_out) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_3" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h94              ),
    .FIELD_START_BIT    (18                  ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_rectify_a_0_rse_dma_out_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_rectify_a_0_rse_dma_out_rdata_out),
    .reg_out            (srampd_rectify_a_0_rse_dma_out_out) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_3" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h94              ),
    .FIELD_START_BIT    (19                  ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_rectify_b_0_rse_dma_out_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_rectify_b_0_rse_dma_out_rdata_out),
    .reg_out            (srampd_rectify_b_0_rse_dma_out_out) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_4" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h98              ),
    .FIELD_START_BIT    (1                   ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_dg_mcc_a_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_dg_mcc_a_0_rdata_out),
    .reg_out            (srampd_dg_mcc_a_0_out) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_4" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h98              ),
    .FIELD_START_BIT    (2                   ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_dg_ca_a_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_dg_ca_a_0_rdata_out),
    .reg_out            (srampd_dg_ca_a_0_out) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_4" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h98              ),
    .FIELD_START_BIT    (3                   ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_dp_mem_write_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_dp_mem_write_rdata_out),
    .reg_out            (srampd_dp_mem_write_out) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_4" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h98              ),
    .FIELD_START_BIT    (4                   ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_dp_src_read_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_dp_src_read_rdata_out),
    .reg_out            (srampd_dp_src_read_out) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_4" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h98              ),
    .FIELD_START_BIT    (5                   ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_dp_mid_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_dp_mid_rdata_out),
    .reg_out            (srampd_dp_mid_out   ) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_4" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h98              ),
    .FIELD_START_BIT    (6                   ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_dp_img_seg_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_dp_img_seg_rdata_out),
    .reg_out            (srampd_dp_img_seg_out) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_4" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h98              ),
    .FIELD_START_BIT    (7                   ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_dp_instag_l_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_dp_instag_l_rdata_out),
    .reg_out            (srampd_dp_instag_l_out) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_4" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h98              ),
    .FIELD_START_BIT    (8                   ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_dp_instag_h_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_dp_instag_h_rdata_out),
    .reg_out            (srampd_dp_instag_h_out) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_5" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h9c              ),
    .FIELD_START_BIT    (1                   ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_id_det_a_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_id_det_a_0_rdata_out),
    .reg_out            (srampd_id_det_a_0_out) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_5" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h9c              ),
    .FIELD_START_BIT    (2                   ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_id_det_a_1_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_id_det_a_1_rdata_out),
    .reg_out            (srampd_id_det_a_1_out) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_5" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h9c              ),
    .FIELD_START_BIT    (3                   ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_bayer_binning_a_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_bayer_binning_a_0_rdata_out),
    .reg_out            (srampd_bayer_binning_a_0_out) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_5" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h9c              ),
    .FIELD_START_BIT    (4                   ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_bayer_binning_a_1_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_bayer_binning_a_1_rdata_out),
    .reg_out            (srampd_bayer_binning_a_1_out) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_5" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h9c              ),
    .FIELD_START_BIT    (5                   ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_rlb_a_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_rlb_a_0_rdata_out),
    .reg_out            (srampd_rlb_a_0_out  ) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_5" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h9c              ),
    .FIELD_START_BIT    (6                   ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_rlb_b_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_rlb_b_0_rdata_out),
    .reg_out            (srampd_rlb_b_0_out  ) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_5" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h9c              ),
    .FIELD_START_BIT    (7                   ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_rdn_a_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_rdn_a_0_rdata_out),
    .reg_out            (srampd_rdn_a_0_out  ) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_5" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h9c              ),
    .FIELD_START_BIT    (8                   ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_rdn_b_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_rdn_b_0_rdata_out),
    .reg_out            (srampd_rdn_b_0_out  ) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_5" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h9c              ),
    .FIELD_START_BIT    (13                  ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_tx_line_merge_2l_a_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_tx_line_merge_2l_a_0_rdata_out),
    .reg_out            (srampd_tx_line_merge_2l_a_0_out) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_5" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h9c              ),
    .FIELD_START_BIT    (14                  ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_tx_line_merge_2l_b_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_tx_line_merge_2l_b_0_rdata_out),
    .reg_out            (srampd_tx_line_merge_2l_b_0_out) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_5" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h9c              ),
    .FIELD_START_BIT    (15                  ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_hdr_interpolation_a_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_hdr_interpolation_a_0_rdata_out),
    .reg_out            (srampd_hdr_interpolation_a_0_out) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_5" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h9c              ),
    .FIELD_START_BIT    (16                  ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_hdr_blending_a_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_hdr_blending_a_0_rdata_out),
    .reg_out            (srampd_hdr_blending_a_0_out) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_5" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h9c              ),
    .FIELD_START_BIT    (19                  ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_hdr_ae_a_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_hdr_ae_a_0_rdata_out),
    .reg_out            (srampd_hdr_ae_a_0_out) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_5" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h9c              ),
    .FIELD_START_BIT    (20                  ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_hdr_ae_a_1_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_hdr_ae_a_1_rdata_out),
    .reg_out            (srampd_hdr_ae_a_1_out) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_5" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h9c              ),
    .FIELD_START_BIT    (21                  ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_tx_line_merge_2l_c_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_tx_line_merge_2l_c_0_rdata_out),
    .reg_out            (srampd_tx_line_merge_2l_c_0_out) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_5" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h9c              ),
    .FIELD_START_BIT    (22                  ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_tx_line_merge_2l_d_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_tx_line_merge_2l_d_0_rdata_out),
    .reg_out            (srampd_tx_line_merge_2l_d_0_out) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SRAM_POWER_DOWN_5" ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h9c              ),
    .FIELD_START_BIT    (23                  ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  srampd_lsc_c_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (srampd_lsc_c_0_rdata_out),
    .reg_out            (srampd_lsc_c_0_out  ) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("ISO_CTRL"          ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'ha0              ),
    .FIELD_START_BIT    (0                   ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  iso_pd_standby_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (iso_pd_standby_rdata_out),
    .reg_out            (iso_pd_standby_out  ) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("ISO_CTRL"          ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'ha0              ),
    .FIELD_START_BIT    (1                   ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  iso_pd_dpc_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (iso_pd_dpc_rdata_out),
    .reg_out            (iso_pd_dpc_out      ) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("ISO_CTRL"          ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'ha0              ),
    .FIELD_START_BIT    (2                   ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  iso_pd_hdr_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (iso_pd_hdr_rdata_out),
    .reg_out            (iso_pd_hdr_out      ) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("ISO_CTRL"          ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'ha0              ),
    .FIELD_START_BIT    (3                   ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  iso_pd_irp_depth_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (iso_pd_irp_depth_rdata_out),
    .reg_out            (iso_pd_irp_depth_out) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("PSW_CTRL"          ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'ha4              ),
    .FIELD_START_BIT    (0                   ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  psw_pd_standby_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (psw_pd_standby_rdata_out),
    .reg_out            (psw_pd_standby_out  ) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("PSW_CTRL"          ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'ha4              ),
    .FIELD_START_BIT    (1                   ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  psw_pd_dpc_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (psw_pd_dpc_rdata_out),
    .reg_out            (psw_pd_dpc_out      ) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("PSW_CTRL"          ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'ha4              ),
    .FIELD_START_BIT    (2                   ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  psw_pd_hdr_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (psw_pd_hdr_rdata_out),
    .reg_out            (psw_pd_hdr_out      ) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("PSW_CTRL"          ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'ha4              ),
    .FIELD_START_BIT    (3                   ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  psw_pd_irp_depth_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (psw_pd_irp_depth_rdata_out),
    .reg_out            (psw_pd_irp_depth_out) 
  );

  update_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'ha8              ),
    .FIELD_START_BIT    (0                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ),
    .SUB_TYPE           ("rw_cpu"            ) 
  )
  sw_intr_trigger_00_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .update_in          (sw_intr_trigger_00_in),
    .update_ctl         (sw_intr_trigger_00_in_ctl),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (sw_intr_trigger_00_rdata_out),
    .reg_out            (sw_intr_trigger_00_out) 
  );

  update_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'ha8              ),
    .FIELD_START_BIT    (1                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ),
    .SUB_TYPE           ("rw_cpu"            ) 
  )
  sw_intr_trigger_01_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .update_in          (sw_intr_trigger_01_in),
    .update_ctl         (sw_intr_trigger_01_in_ctl),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (sw_intr_trigger_01_rdata_out),
    .reg_out            (sw_intr_trigger_01_out) 
  );

  update_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'ha8              ),
    .FIELD_START_BIT    (2                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ),
    .SUB_TYPE           ("rw_cpu"            ) 
  )
  sw_intr_trigger_02_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .update_in          (sw_intr_trigger_02_in),
    .update_ctl         (sw_intr_trigger_02_in_ctl),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (sw_intr_trigger_02_rdata_out),
    .reg_out            (sw_intr_trigger_02_out) 
  );

  update_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'ha8              ),
    .FIELD_START_BIT    (3                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ),
    .SUB_TYPE           ("rw_cpu"            ) 
  )
  sw_intr_trigger_03_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .update_in          (sw_intr_trigger_03_in),
    .update_ctl         (sw_intr_trigger_03_in_ctl),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (sw_intr_trigger_03_rdata_out),
    .reg_out            (sw_intr_trigger_03_out) 
  );

  update_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'ha8              ),
    .FIELD_START_BIT    (4                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ),
    .SUB_TYPE           ("rw_cpu"            ) 
  )
  sw_intr_trigger_04_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .update_in          (sw_intr_trigger_04_in),
    .update_ctl         (sw_intr_trigger_04_in_ctl),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (sw_intr_trigger_04_rdata_out),
    .reg_out            (sw_intr_trigger_04_out) 
  );

  update_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'ha8              ),
    .FIELD_START_BIT    (5                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ),
    .SUB_TYPE           ("rw_cpu"            ) 
  )
  sw_intr_trigger_05_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .update_in          (sw_intr_trigger_05_in),
    .update_ctl         (sw_intr_trigger_05_in_ctl),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (sw_intr_trigger_05_rdata_out),
    .reg_out            (sw_intr_trigger_05_out) 
  );

  update_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'ha8              ),
    .FIELD_START_BIT    (6                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ),
    .SUB_TYPE           ("rw_cpu"            ) 
  )
  sw_intr_trigger_06_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .update_in          (sw_intr_trigger_06_in),
    .update_ctl         (sw_intr_trigger_06_in_ctl),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (sw_intr_trigger_06_rdata_out),
    .reg_out            (sw_intr_trigger_06_out) 
  );

  update_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'ha8              ),
    .FIELD_START_BIT    (7                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ),
    .SUB_TYPE           ("rw_cpu"            ) 
  )
  sw_intr_trigger_07_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .update_in          (sw_intr_trigger_07_in),
    .update_ctl         (sw_intr_trigger_07_in_ctl),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (sw_intr_trigger_07_rdata_out),
    .reg_out            (sw_intr_trigger_07_out) 
  );

  update_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'ha8              ),
    .FIELD_START_BIT    (8                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ),
    .SUB_TYPE           ("rw_cpu"            ) 
  )
  sw_intr_trigger_08_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .update_in          (sw_intr_trigger_08_in),
    .update_ctl         (sw_intr_trigger_08_in_ctl),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (sw_intr_trigger_08_rdata_out),
    .reg_out            (sw_intr_trigger_08_out) 
  );

  update_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'ha8              ),
    .FIELD_START_BIT    (9                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ),
    .SUB_TYPE           ("rw_cpu"            ) 
  )
  sw_intr_trigger_09_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .update_in          (sw_intr_trigger_09_in),
    .update_ctl         (sw_intr_trigger_09_in_ctl),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (sw_intr_trigger_09_rdata_out),
    .reg_out            (sw_intr_trigger_09_out) 
  );

  update_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'ha8              ),
    .FIELD_START_BIT    (10                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ),
    .SUB_TYPE           ("rw_cpu"            ) 
  )
  sw_intr_trigger_10_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .update_in          (sw_intr_trigger_10_in),
    .update_ctl         (sw_intr_trigger_10_in_ctl),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (sw_intr_trigger_10_rdata_out),
    .reg_out            (sw_intr_trigger_10_out) 
  );

  update_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'ha8              ),
    .FIELD_START_BIT    (11                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ),
    .SUB_TYPE           ("rw_cpu"            ) 
  )
  sw_intr_trigger_11_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .update_in          (sw_intr_trigger_11_in),
    .update_ctl         (sw_intr_trigger_11_in_ctl),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (sw_intr_trigger_11_rdata_out),
    .reg_out            (sw_intr_trigger_11_out) 
  );

  update_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'ha8              ),
    .FIELD_START_BIT    (12                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ),
    .SUB_TYPE           ("rw_cpu"            ) 
  )
  sw_intr_trigger_12_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .update_in          (sw_intr_trigger_12_in),
    .update_ctl         (sw_intr_trigger_12_in_ctl),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (sw_intr_trigger_12_rdata_out),
    .reg_out            (sw_intr_trigger_12_out) 
  );

  update_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'ha8              ),
    .FIELD_START_BIT    (13                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ),
    .SUB_TYPE           ("rw_cpu"            ) 
  )
  sw_intr_trigger_13_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .update_in          (sw_intr_trigger_13_in),
    .update_ctl         (sw_intr_trigger_13_in_ctl),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (sw_intr_trigger_13_rdata_out),
    .reg_out            (sw_intr_trigger_13_out) 
  );

  update_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'ha8              ),
    .FIELD_START_BIT    (14                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ),
    .SUB_TYPE           ("rw_cpu"            ) 
  )
  sw_intr_trigger_14_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .update_in          (sw_intr_trigger_14_in),
    .update_ctl         (sw_intr_trigger_14_in_ctl),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (sw_intr_trigger_14_rdata_out),
    .reg_out            (sw_intr_trigger_14_out) 
  );

  update_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'ha8              ),
    .FIELD_START_BIT    (15                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ),
    .SUB_TYPE           ("rw_cpu"            ) 
  )
  sw_intr_trigger_15_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .update_in          (sw_intr_trigger_15_in),
    .update_ctl         (sw_intr_trigger_15_in_ctl),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (sw_intr_trigger_15_rdata_out),
    .reg_out            (sw_intr_trigger_15_out) 
  );

  update_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'ha8              ),
    .FIELD_START_BIT    (16                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ),
    .SUB_TYPE           ("rw_cpu"            ) 
  )
  sw_intr_trigger_16_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .update_in          (sw_intr_trigger_16_in),
    .update_ctl         (sw_intr_trigger_16_in_ctl),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (sw_intr_trigger_16_rdata_out),
    .reg_out            (sw_intr_trigger_16_out) 
  );

  update_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'ha8              ),
    .FIELD_START_BIT    (17                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ),
    .SUB_TYPE           ("rw_cpu"            ) 
  )
  sw_intr_trigger_17_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .update_in          (sw_intr_trigger_17_in),
    .update_ctl         (sw_intr_trigger_17_in_ctl),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (sw_intr_trigger_17_rdata_out),
    .reg_out            (sw_intr_trigger_17_out) 
  );

  update_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'ha8              ),
    .FIELD_START_BIT    (18                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ),
    .SUB_TYPE           ("rw_cpu"            ) 
  )
  sw_intr_trigger_18_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .update_in          (sw_intr_trigger_18_in),
    .update_ctl         (sw_intr_trigger_18_in_ctl),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (sw_intr_trigger_18_rdata_out),
    .reg_out            (sw_intr_trigger_18_out) 
  );

  update_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'ha8              ),
    .FIELD_START_BIT    (19                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ),
    .SUB_TYPE           ("rw_cpu"            ) 
  )
  sw_intr_trigger_19_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .update_in          (sw_intr_trigger_19_in),
    .update_ctl         (sw_intr_trigger_19_in_ctl),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (sw_intr_trigger_19_rdata_out),
    .reg_out            (sw_intr_trigger_19_out) 
  );

  update_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'ha8              ),
    .FIELD_START_BIT    (20                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ),
    .SUB_TYPE           ("rw_cpu"            ) 
  )
  sw_intr_trigger_20_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .update_in          (sw_intr_trigger_20_in),
    .update_ctl         (sw_intr_trigger_20_in_ctl),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (sw_intr_trigger_20_rdata_out),
    .reg_out            (sw_intr_trigger_20_out) 
  );

  update_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'ha8              ),
    .FIELD_START_BIT    (21                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ),
    .SUB_TYPE           ("rw_cpu"            ) 
  )
  sw_intr_trigger_21_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .update_in          (sw_intr_trigger_21_in),
    .update_ctl         (sw_intr_trigger_21_in_ctl),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (sw_intr_trigger_21_rdata_out),
    .reg_out            (sw_intr_trigger_21_out) 
  );

  update_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'ha8              ),
    .FIELD_START_BIT    (22                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ),
    .SUB_TYPE           ("rw_cpu"            ) 
  )
  sw_intr_trigger_22_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .update_in          (sw_intr_trigger_22_in),
    .update_ctl         (sw_intr_trigger_22_in_ctl),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (sw_intr_trigger_22_rdata_out),
    .reg_out            (sw_intr_trigger_22_out) 
  );

  update_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'ha8              ),
    .FIELD_START_BIT    (23                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ),
    .SUB_TYPE           ("rw_cpu"            ) 
  )
  sw_intr_trigger_23_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .update_in          (sw_intr_trigger_23_in),
    .update_ctl         (sw_intr_trigger_23_in_ctl),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (sw_intr_trigger_23_rdata_out),
    .reg_out            (sw_intr_trigger_23_out) 
  );

  update_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'ha8              ),
    .FIELD_START_BIT    (24                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ),
    .SUB_TYPE           ("rw_cpu"            ) 
  )
  sw_intr_trigger_24_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .update_in          (sw_intr_trigger_24_in),
    .update_ctl         (sw_intr_trigger_24_in_ctl),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (sw_intr_trigger_24_rdata_out),
    .reg_out            (sw_intr_trigger_24_out) 
  );

  update_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'ha8              ),
    .FIELD_START_BIT    (25                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ),
    .SUB_TYPE           ("rw_cpu"            ) 
  )
  sw_intr_trigger_25_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .update_in          (sw_intr_trigger_25_in),
    .update_ctl         (sw_intr_trigger_25_in_ctl),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (sw_intr_trigger_25_rdata_out),
    .reg_out            (sw_intr_trigger_25_out) 
  );

  update_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'ha8              ),
    .FIELD_START_BIT    (26                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ),
    .SUB_TYPE           ("rw_cpu"            ) 
  )
  sw_intr_trigger_26_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .update_in          (sw_intr_trigger_26_in),
    .update_ctl         (sw_intr_trigger_26_in_ctl),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (sw_intr_trigger_26_rdata_out),
    .reg_out            (sw_intr_trigger_26_out) 
  );

  update_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'ha8              ),
    .FIELD_START_BIT    (27                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ),
    .SUB_TYPE           ("rw_cpu"            ) 
  )
  sw_intr_trigger_27_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .update_in          (sw_intr_trigger_27_in),
    .update_ctl         (sw_intr_trigger_27_in_ctl),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (sw_intr_trigger_27_rdata_out),
    .reg_out            (sw_intr_trigger_27_out) 
  );

  update_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'ha8              ),
    .FIELD_START_BIT    (28                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ),
    .SUB_TYPE           ("rw_cpu"            ) 
  )
  sw_intr_trigger_28_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .update_in          (sw_intr_trigger_28_in),
    .update_ctl         (sw_intr_trigger_28_in_ctl),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (sw_intr_trigger_28_rdata_out),
    .reg_out            (sw_intr_trigger_28_out) 
  );

  update_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'ha8              ),
    .FIELD_START_BIT    (29                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ),
    .SUB_TYPE           ("rw_cpu"            ) 
  )
  sw_intr_trigger_29_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .update_in          (sw_intr_trigger_29_in),
    .update_ctl         (sw_intr_trigger_29_in_ctl),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (sw_intr_trigger_29_rdata_out),
    .reg_out            (sw_intr_trigger_29_out) 
  );

  update_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'ha8              ),
    .FIELD_START_BIT    (30                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ),
    .SUB_TYPE           ("rw_cpu"            ) 
  )
  sw_intr_trigger_30_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .update_in          (sw_intr_trigger_30_in),
    .update_ctl         (sw_intr_trigger_30_in_ctl),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (sw_intr_trigger_30_rdata_out),
    .reg_out            (sw_intr_trigger_30_out) 
  );

  update_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE"    ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'ha8              ),
    .FIELD_START_BIT    (31                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ),
    .SUB_TYPE           ("rw_cpu"            ) 
  )
  sw_intr_trigger_31_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .update_in          (sw_intr_trigger_31_in),
    .update_ctl         (sw_intr_trigger_31_in_ctl),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (sw_intr_trigger_31_rdata_out),
    .reg_out            (sw_intr_trigger_31_out) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE_ENABLE"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'hb0              ),
    .FIELD_START_BIT    (0                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  sw_intr_level_00_en_sw_intr_level_00_en_interrupt_sw_intr_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (sw_intr_level_00_en_interrupt_sw_intr),
    .reg_rdata_out      (sw_intr_level_00_en_interrupt_sw_intr_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE_ENABLE"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'hb0              ),
    .FIELD_START_BIT    (1                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  sw_intr_level_01_en_sw_intr_level_01_en_interrupt_sw_intr_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (sw_intr_level_01_en_interrupt_sw_intr),
    .reg_rdata_out      (sw_intr_level_01_en_interrupt_sw_intr_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE_ENABLE"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'hb0              ),
    .FIELD_START_BIT    (2                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  sw_intr_level_02_en_sw_intr_level_02_en_interrupt_sw_intr_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (sw_intr_level_02_en_interrupt_sw_intr),
    .reg_rdata_out      (sw_intr_level_02_en_interrupt_sw_intr_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE_ENABLE"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'hb0              ),
    .FIELD_START_BIT    (3                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  sw_intr_level_03_en_sw_intr_level_03_en_interrupt_sw_intr_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (sw_intr_level_03_en_interrupt_sw_intr),
    .reg_rdata_out      (sw_intr_level_03_en_interrupt_sw_intr_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE_ENABLE"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'hb0              ),
    .FIELD_START_BIT    (4                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  sw_intr_level_04_en_sw_intr_level_04_en_interrupt_sw_intr_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (sw_intr_level_04_en_interrupt_sw_intr),
    .reg_rdata_out      (sw_intr_level_04_en_interrupt_sw_intr_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE_ENABLE"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'hb0              ),
    .FIELD_START_BIT    (5                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  sw_intr_level_05_en_sw_intr_level_05_en_interrupt_sw_intr_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (sw_intr_level_05_en_interrupt_sw_intr),
    .reg_rdata_out      (sw_intr_level_05_en_interrupt_sw_intr_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE_ENABLE"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'hb0              ),
    .FIELD_START_BIT    (6                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  sw_intr_level_06_en_sw_intr_level_06_en_interrupt_sw_intr_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (sw_intr_level_06_en_interrupt_sw_intr),
    .reg_rdata_out      (sw_intr_level_06_en_interrupt_sw_intr_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE_ENABLE"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'hb0              ),
    .FIELD_START_BIT    (7                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  sw_intr_level_07_en_sw_intr_level_07_en_interrupt_sw_intr_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (sw_intr_level_07_en_interrupt_sw_intr),
    .reg_rdata_out      (sw_intr_level_07_en_interrupt_sw_intr_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE_ENABLE"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'hb0              ),
    .FIELD_START_BIT    (8                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  sw_intr_level_08_en_sw_intr_level_08_en_interrupt_sw_intr_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (sw_intr_level_08_en_interrupt_sw_intr),
    .reg_rdata_out      (sw_intr_level_08_en_interrupt_sw_intr_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE_ENABLE"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'hb0              ),
    .FIELD_START_BIT    (9                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  sw_intr_level_09_en_sw_intr_level_09_en_interrupt_sw_intr_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (sw_intr_level_09_en_interrupt_sw_intr),
    .reg_rdata_out      (sw_intr_level_09_en_interrupt_sw_intr_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE_ENABLE"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'hb0              ),
    .FIELD_START_BIT    (10                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  sw_intr_level_10_en_sw_intr_level_10_en_interrupt_sw_intr_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (sw_intr_level_10_en_interrupt_sw_intr),
    .reg_rdata_out      (sw_intr_level_10_en_interrupt_sw_intr_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE_ENABLE"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'hb0              ),
    .FIELD_START_BIT    (11                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  sw_intr_level_11_en_sw_intr_level_11_en_interrupt_sw_intr_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (sw_intr_level_11_en_interrupt_sw_intr),
    .reg_rdata_out      (sw_intr_level_11_en_interrupt_sw_intr_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE_ENABLE"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'hb0              ),
    .FIELD_START_BIT    (12                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  sw_intr_level_12_en_sw_intr_level_12_en_interrupt_sw_intr_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (sw_intr_level_12_en_interrupt_sw_intr),
    .reg_rdata_out      (sw_intr_level_12_en_interrupt_sw_intr_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE_ENABLE"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'hb0              ),
    .FIELD_START_BIT    (13                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  sw_intr_level_13_en_sw_intr_level_13_en_interrupt_sw_intr_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (sw_intr_level_13_en_interrupt_sw_intr),
    .reg_rdata_out      (sw_intr_level_13_en_interrupt_sw_intr_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE_ENABLE"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'hb0              ),
    .FIELD_START_BIT    (14                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  sw_intr_level_14_en_sw_intr_level_14_en_interrupt_sw_intr_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (sw_intr_level_14_en_interrupt_sw_intr),
    .reg_rdata_out      (sw_intr_level_14_en_interrupt_sw_intr_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE_ENABLE"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'hb0              ),
    .FIELD_START_BIT    (15                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  sw_intr_level_15_en_sw_intr_level_15_en_interrupt_sw_intr_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (sw_intr_level_15_en_interrupt_sw_intr),
    .reg_rdata_out      (sw_intr_level_15_en_interrupt_sw_intr_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE_ENABLE"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'hb0              ),
    .FIELD_START_BIT    (16                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  sw_intr_level_16_en_sw_intr_level_16_en_interrupt_sw_intr_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (sw_intr_level_16_en_interrupt_sw_intr),
    .reg_rdata_out      (sw_intr_level_16_en_interrupt_sw_intr_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE_ENABLE"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'hb0              ),
    .FIELD_START_BIT    (17                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  sw_intr_level_17_en_sw_intr_level_17_en_interrupt_sw_intr_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (sw_intr_level_17_en_interrupt_sw_intr),
    .reg_rdata_out      (sw_intr_level_17_en_interrupt_sw_intr_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE_ENABLE"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'hb0              ),
    .FIELD_START_BIT    (18                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  sw_intr_level_18_en_sw_intr_level_18_en_interrupt_sw_intr_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (sw_intr_level_18_en_interrupt_sw_intr),
    .reg_rdata_out      (sw_intr_level_18_en_interrupt_sw_intr_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE_ENABLE"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'hb0              ),
    .FIELD_START_BIT    (19                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  sw_intr_level_19_en_sw_intr_level_19_en_interrupt_sw_intr_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (sw_intr_level_19_en_interrupt_sw_intr),
    .reg_rdata_out      (sw_intr_level_19_en_interrupt_sw_intr_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE_ENABLE"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'hb0              ),
    .FIELD_START_BIT    (20                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  sw_intr_level_20_en_sw_intr_level_20_en_interrupt_sw_intr_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (sw_intr_level_20_en_interrupt_sw_intr),
    .reg_rdata_out      (sw_intr_level_20_en_interrupt_sw_intr_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE_ENABLE"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'hb0              ),
    .FIELD_START_BIT    (21                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  sw_intr_level_21_en_sw_intr_level_21_en_interrupt_sw_intr_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (sw_intr_level_21_en_interrupt_sw_intr),
    .reg_rdata_out      (sw_intr_level_21_en_interrupt_sw_intr_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE_ENABLE"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'hb0              ),
    .FIELD_START_BIT    (22                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  sw_intr_level_22_en_sw_intr_level_22_en_interrupt_sw_intr_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (sw_intr_level_22_en_interrupt_sw_intr),
    .reg_rdata_out      (sw_intr_level_22_en_interrupt_sw_intr_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE_ENABLE"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'hb0              ),
    .FIELD_START_BIT    (23                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  sw_intr_level_23_en_sw_intr_level_23_en_interrupt_sw_intr_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (sw_intr_level_23_en_interrupt_sw_intr),
    .reg_rdata_out      (sw_intr_level_23_en_interrupt_sw_intr_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE_ENABLE"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'hb0              ),
    .FIELD_START_BIT    (24                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  sw_intr_level_24_en_sw_intr_level_24_en_interrupt_sw_intr_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (sw_intr_level_24_en_interrupt_sw_intr),
    .reg_rdata_out      (sw_intr_level_24_en_interrupt_sw_intr_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE_ENABLE"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'hb0              ),
    .FIELD_START_BIT    (25                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  sw_intr_level_25_en_sw_intr_level_25_en_interrupt_sw_intr_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (sw_intr_level_25_en_interrupt_sw_intr),
    .reg_rdata_out      (sw_intr_level_25_en_interrupt_sw_intr_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE_ENABLE"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'hb0              ),
    .FIELD_START_BIT    (26                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  sw_intr_level_26_en_sw_intr_level_26_en_interrupt_sw_intr_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (sw_intr_level_26_en_interrupt_sw_intr),
    .reg_rdata_out      (sw_intr_level_26_en_interrupt_sw_intr_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE_ENABLE"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'hb0              ),
    .FIELD_START_BIT    (27                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  sw_intr_level_27_en_sw_intr_level_27_en_interrupt_sw_intr_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (sw_intr_level_27_en_interrupt_sw_intr),
    .reg_rdata_out      (sw_intr_level_27_en_interrupt_sw_intr_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE_ENABLE"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'hb0              ),
    .FIELD_START_BIT    (28                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  sw_intr_level_28_en_sw_intr_level_28_en_interrupt_sw_intr_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (sw_intr_level_28_en_interrupt_sw_intr),
    .reg_rdata_out      (sw_intr_level_28_en_interrupt_sw_intr_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE_ENABLE"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'hb0              ),
    .FIELD_START_BIT    (29                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  sw_intr_level_29_en_sw_intr_level_29_en_interrupt_sw_intr_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (sw_intr_level_29_en_interrupt_sw_intr),
    .reg_rdata_out      (sw_intr_level_29_en_interrupt_sw_intr_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE_ENABLE"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'hb0              ),
    .FIELD_START_BIT    (30                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  sw_intr_level_30_en_sw_intr_level_30_en_interrupt_sw_intr_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (sw_intr_level_30_en_interrupt_sw_intr),
    .reg_rdata_out      (sw_intr_level_30_en_interrupt_sw_intr_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE_ENABLE"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'hb0              ),
    .FIELD_START_BIT    (31                  ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  sw_intr_level_31_en_sw_intr_level_31_en_interrupt_sw_intr_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_line_en        (sw_intr_level_31_en_interrupt_sw_intr),
    .reg_rdata_out      (sw_intr_level_31_en_interrupt_sw_intr_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE_STATUS"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'hb4              ),
    .FIELD_START_BIT    (0                   ),
    .SUB_TYPE           ("posedge"           ) 
  )
  sw_intr_level_00_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (sw_intr_level_00_in ),
    .reg_rdata_out      (sw_intr_level_00_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE_STATUS"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'hb4              ),
    .FIELD_START_BIT    (1                   ),
    .SUB_TYPE           ("posedge"           ) 
  )
  sw_intr_level_01_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (sw_intr_level_01_in ),
    .reg_rdata_out      (sw_intr_level_01_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE_STATUS"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'hb4              ),
    .FIELD_START_BIT    (2                   ),
    .SUB_TYPE           ("posedge"           ) 
  )
  sw_intr_level_02_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (sw_intr_level_02_in ),
    .reg_rdata_out      (sw_intr_level_02_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE_STATUS"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'hb4              ),
    .FIELD_START_BIT    (3                   ),
    .SUB_TYPE           ("posedge"           ) 
  )
  sw_intr_level_03_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (sw_intr_level_03_in ),
    .reg_rdata_out      (sw_intr_level_03_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE_STATUS"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'hb4              ),
    .FIELD_START_BIT    (4                   ),
    .SUB_TYPE           ("posedge"           ) 
  )
  sw_intr_level_04_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (sw_intr_level_04_in ),
    .reg_rdata_out      (sw_intr_level_04_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE_STATUS"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'hb4              ),
    .FIELD_START_BIT    (5                   ),
    .SUB_TYPE           ("posedge"           ) 
  )
  sw_intr_level_05_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (sw_intr_level_05_in ),
    .reg_rdata_out      (sw_intr_level_05_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE_STATUS"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'hb4              ),
    .FIELD_START_BIT    (6                   ),
    .SUB_TYPE           ("posedge"           ) 
  )
  sw_intr_level_06_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (sw_intr_level_06_in ),
    .reg_rdata_out      (sw_intr_level_06_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE_STATUS"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'hb4              ),
    .FIELD_START_BIT    (7                   ),
    .SUB_TYPE           ("posedge"           ) 
  )
  sw_intr_level_07_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (sw_intr_level_07_in ),
    .reg_rdata_out      (sw_intr_level_07_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE_STATUS"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'hb4              ),
    .FIELD_START_BIT    (8                   ),
    .SUB_TYPE           ("posedge"           ) 
  )
  sw_intr_level_08_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (sw_intr_level_08_in ),
    .reg_rdata_out      (sw_intr_level_08_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE_STATUS"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'hb4              ),
    .FIELD_START_BIT    (9                   ),
    .SUB_TYPE           ("posedge"           ) 
  )
  sw_intr_level_09_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (sw_intr_level_09_in ),
    .reg_rdata_out      (sw_intr_level_09_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE_STATUS"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'hb4              ),
    .FIELD_START_BIT    (10                  ),
    .SUB_TYPE           ("posedge"           ) 
  )
  sw_intr_level_10_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (sw_intr_level_10_in ),
    .reg_rdata_out      (sw_intr_level_10_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE_STATUS"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'hb4              ),
    .FIELD_START_BIT    (11                  ),
    .SUB_TYPE           ("posedge"           ) 
  )
  sw_intr_level_11_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (sw_intr_level_11_in ),
    .reg_rdata_out      (sw_intr_level_11_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE_STATUS"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'hb4              ),
    .FIELD_START_BIT    (12                  ),
    .SUB_TYPE           ("posedge"           ) 
  )
  sw_intr_level_12_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (sw_intr_level_12_in ),
    .reg_rdata_out      (sw_intr_level_12_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE_STATUS"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'hb4              ),
    .FIELD_START_BIT    (13                  ),
    .SUB_TYPE           ("posedge"           ) 
  )
  sw_intr_level_13_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (sw_intr_level_13_in ),
    .reg_rdata_out      (sw_intr_level_13_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE_STATUS"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'hb4              ),
    .FIELD_START_BIT    (14                  ),
    .SUB_TYPE           ("posedge"           ) 
  )
  sw_intr_level_14_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (sw_intr_level_14_in ),
    .reg_rdata_out      (sw_intr_level_14_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE_STATUS"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'hb4              ),
    .FIELD_START_BIT    (15                  ),
    .SUB_TYPE           ("posedge"           ) 
  )
  sw_intr_level_15_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (sw_intr_level_15_in ),
    .reg_rdata_out      (sw_intr_level_15_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE_STATUS"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'hb4              ),
    .FIELD_START_BIT    (16                  ),
    .SUB_TYPE           ("posedge"           ) 
  )
  sw_intr_level_16_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (sw_intr_level_16_in ),
    .reg_rdata_out      (sw_intr_level_16_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE_STATUS"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'hb4              ),
    .FIELD_START_BIT    (17                  ),
    .SUB_TYPE           ("posedge"           ) 
  )
  sw_intr_level_17_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (sw_intr_level_17_in ),
    .reg_rdata_out      (sw_intr_level_17_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE_STATUS"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'hb4              ),
    .FIELD_START_BIT    (18                  ),
    .SUB_TYPE           ("posedge"           ) 
  )
  sw_intr_level_18_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (sw_intr_level_18_in ),
    .reg_rdata_out      (sw_intr_level_18_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE_STATUS"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'hb4              ),
    .FIELD_START_BIT    (19                  ),
    .SUB_TYPE           ("posedge"           ) 
  )
  sw_intr_level_19_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (sw_intr_level_19_in ),
    .reg_rdata_out      (sw_intr_level_19_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE_STATUS"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'hb4              ),
    .FIELD_START_BIT    (20                  ),
    .SUB_TYPE           ("posedge"           ) 
  )
  sw_intr_level_20_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (sw_intr_level_20_in ),
    .reg_rdata_out      (sw_intr_level_20_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE_STATUS"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'hb4              ),
    .FIELD_START_BIT    (21                  ),
    .SUB_TYPE           ("posedge"           ) 
  )
  sw_intr_level_21_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (sw_intr_level_21_in ),
    .reg_rdata_out      (sw_intr_level_21_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE_STATUS"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'hb4              ),
    .FIELD_START_BIT    (22                  ),
    .SUB_TYPE           ("posedge"           ) 
  )
  sw_intr_level_22_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (sw_intr_level_22_in ),
    .reg_rdata_out      (sw_intr_level_22_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE_STATUS"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'hb4              ),
    .FIELD_START_BIT    (23                  ),
    .SUB_TYPE           ("posedge"           ) 
  )
  sw_intr_level_23_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (sw_intr_level_23_in ),
    .reg_rdata_out      (sw_intr_level_23_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE_STATUS"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'hb4              ),
    .FIELD_START_BIT    (24                  ),
    .SUB_TYPE           ("posedge"           ) 
  )
  sw_intr_level_24_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (sw_intr_level_24_in ),
    .reg_rdata_out      (sw_intr_level_24_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE_STATUS"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'hb4              ),
    .FIELD_START_BIT    (25                  ),
    .SUB_TYPE           ("posedge"           ) 
  )
  sw_intr_level_25_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (sw_intr_level_25_in ),
    .reg_rdata_out      (sw_intr_level_25_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE_STATUS"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'hb4              ),
    .FIELD_START_BIT    (26                  ),
    .SUB_TYPE           ("posedge"           ) 
  )
  sw_intr_level_26_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (sw_intr_level_26_in ),
    .reg_rdata_out      (sw_intr_level_26_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE_STATUS"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'hb4              ),
    .FIELD_START_BIT    (27                  ),
    .SUB_TYPE           ("posedge"           ) 
  )
  sw_intr_level_27_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (sw_intr_level_27_in ),
    .reg_rdata_out      (sw_intr_level_27_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE_STATUS"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'hb4              ),
    .FIELD_START_BIT    (28                  ),
    .SUB_TYPE           ("posedge"           ) 
  )
  sw_intr_level_28_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (sw_intr_level_28_in ),
    .reg_rdata_out      (sw_intr_level_28_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE_STATUS"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'hb4              ),
    .FIELD_START_BIT    (29                  ),
    .SUB_TYPE           ("posedge"           ) 
  )
  sw_intr_level_29_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (sw_intr_level_29_in ),
    .reg_rdata_out      (sw_intr_level_29_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE_STATUS"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'hb4              ),
    .FIELD_START_BIT    (30                  ),
    .SUB_TYPE           ("posedge"           ) 
  )
  sw_intr_level_30_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (sw_intr_level_30_in ),
    .reg_rdata_out      (sw_intr_level_30_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INTERRUPT_FIRE_STATUS"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (14'hb4              ),
    .FIELD_START_BIT    (31                  ),
    .SUB_TYPE           ("posedge"           ) 
  )
  sw_intr_level_31_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .int_in             (sw_intr_level_31_in ),
    .reg_rdata_out      (sw_intr_level_31_rdata_out),
    .reg_out            (                    ) 
  );

  hot_wire_type_reg  #(
    .REGISTER_NAME      ("SYSTEM_CONFIGURATION_REGISTER"),
    .IOA_ADR_WIDTH      (14                  ),
    .FIELD_SIZE         (10                  ),
    .FIELD_OFFSET       (14'hf0              ),
    .FIELD_START_BIT    (0                   ) 
  )
  sys_conf_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .reg_in             (sys_conf_in         ),
    .reg_rdata_out      (sys_conf_rdata_out  ) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("INVERSE_SYSTEM_CONFIGURATION_REGISTER"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (10                  ),
    .FIELD_OFFSET       (14'hf4              ),
    .FIELD_START_BIT    (0                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (10'h0               ),
    .SUB_TYPE           ("rw"                ) 
  )
  inv_sys_conf_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (inv_sys_conf_rdata_out),
    .reg_out            (inv_sys_conf_out    ) 
  );

  hot_wire_type_reg  #(
    .REGISTER_NAME      ("CURRENT_BOOTSTRAP_VALUE"),
    .IOA_ADR_WIDTH      (14                  ),
    .FIELD_SIZE         (10                  ),
    .FIELD_OFFSET       (14'hf8              ),
    .FIELD_START_BIT    (0                   ) 
  )
  current_bootstrap_value_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .reg_in             (current_bootstrap_value_in),
    .reg_rdata_out      (current_bootstrap_value_rdata_out) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("FIFO_SOFT_RST"     ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h100             ),
    .FIELD_START_BIT    (0                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  senif56_asyn_d16_0_softrst_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (senif56_asyn_d16_0_softrst_rdata_out),
    .reg_out            (senif56_asyn_d16_0_softrst_out) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("FIFO_SOFT_RST"     ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h100             ),
    .FIELD_START_BIT    (1                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  senif56_asyn_d16_1_softrst_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (senif56_asyn_d16_1_softrst_rdata_out),
    .reg_out            (senif56_asyn_d16_1_softrst_out) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("MIPI_TX_TEST_MODE0"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h208             ),
    .FIELD_START_BIT    (1                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ),
    .SUB_TYPE           ("rw"                ) 
  )
  mipi_tx_phy_if_1_test_mode0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (mipi_tx_phy_if_1_test_mode0_rdata_out),
    .reg_out            (mipi_tx_phy_if_1_test_mode0_out) 
  );

  update_type_reg  #(
    .REGISTER_NAME      ("SPI_DEBUG_EN_CONFIGURATION"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h240             ),
    .FIELD_START_BIT    (0                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw_cpu"            ) 
  )
  spi_debug_mode_control_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .update_in          (spi_debug_mode_control_in),
    .update_ctl         (spi_debug_mode_control_in_ctl),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (spi_debug_mode_control_rdata_out),
    .reg_out            (spi_debug_mode_control_out) 
  );

  hot_wire_type_reg  #(
    .REGISTER_NAME      ("SPI_SWITCH_STATUS" ),
    .IOA_ADR_WIDTH      (14                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h248             ),
    .FIELD_START_BIT    (0                   ) 
  )
  spi_switch_status_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .reg_in             (spi_switch_status_in),
    .reg_rdata_out      (spi_switch_status_rdata_out) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("I2C_DEBUG_EN_CONFIGURATION"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h250             ),
    .FIELD_START_BIT    (0                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  i2c_debug_mode_control_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (i2c_debug_mode_control_rdata_out),
    .reg_out            (i2c_debug_mode_control_out) 
  );

  hot_wire_type_reg  #(
    .REGISTER_NAME      ("I2C_SWITCH_STATUS" ),
    .IOA_ADR_WIDTH      (14                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h258             ),
    .FIELD_START_BIT    (0                   ) 
  )
  i2c_switch_status_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .reg_in             (i2c_switch_status_in),
    .reg_rdata_out      (i2c_switch_status_rdata_out) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("MIPI_PPI_SOURCE_SEL_1"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h280             ),
    .FIELD_START_BIT    (0                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  mipi_ppi_source_sel_1_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (mipi_ppi_source_sel_1_rdata_out),
    .reg_out            (mipi_ppi_source_sel_1_out) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("MIPI_PPI_SOURCE_SEL_0"),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h284             ),
    .FIELD_START_BIT    (0                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  mipi_ppi_source_sel_0_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (mipi_ppi_source_sel_0_rdata_out),
    .reg_out            (mipi_ppi_source_sel_0_out) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("PLL_WAIT_CNT_EN"   ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h410             ),
    .FIELD_START_BIT    (0                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ),
    .SUB_TYPE           ("rw"                ) 
  )
  pll_wait_cnt_en_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (pll_wait_cnt_en_rdata_out),
    .reg_out            (pll_wait_cnt_en_out ) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("PLL_WAIT_CNT_CYC"  ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (16                  ),
    .FIELD_OFFSET       (14'h414             ),
    .FIELD_START_BIT    (0                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (16'h1ff             ),
    .SUB_TYPE           ("rw"                ) 
  )
  pll_wait_cnt_cyc_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (pll_wait_cnt_cyc_rdata_out),
    .reg_out            (pll_wait_cnt_cyc_out) 
  );

  hot_wire_type_reg  #(
    .REGISTER_NAME      ("DFT_STATUS"        ),
    .IOA_ADR_WIDTH      (14                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h500             ),
    .FIELD_START_BIT    (0                   ) 
  )
  ppi_bridge_a_0_error_status_out_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .reg_in             (ppi_bridge_a_0_error_status_out_in),
    .reg_rdata_out      (ppi_bridge_a_0_error_status_out_rdata_out) 
  );

  hot_wire_type_reg  #(
    .REGISTER_NAME      ("DFT_STATUS"        ),
    .IOA_ADR_WIDTH      (14                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h500             ),
    .FIELD_START_BIT    (1                   ) 
  )
  ppi_bridge_a_0_lookback_test_deskew_mode_fail_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .reg_in             (ppi_bridge_a_0_lookback_test_deskew_mode_fail_in),
    .reg_rdata_out      (ppi_bridge_a_0_lookback_test_deskew_mode_fail_rdata_out) 
  );

  hot_wire_type_reg  #(
    .REGISTER_NAME      ("DFT_STATUS"        ),
    .IOA_ADR_WIDTH      (14                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h500             ),
    .FIELD_START_BIT    (2                   ) 
  )
  ppi_bridge_a_0_lookback_test_hs_mode_fail_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .reg_in             (ppi_bridge_a_0_lookback_test_hs_mode_fail_in),
    .reg_rdata_out      (ppi_bridge_a_0_lookback_test_hs_mode_fail_rdata_out) 
  );

  hot_wire_type_reg  #(
    .REGISTER_NAME      ("DFT_STATUS"        ),
    .IOA_ADR_WIDTH      (14                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h500             ),
    .FIELD_START_BIT    (3                   ) 
  )
  ppi_bridge_a_0_lookback_test_ulps_mode_fail_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .reg_in             (ppi_bridge_a_0_lookback_test_ulps_mode_fail_in),
    .reg_rdata_out      (ppi_bridge_a_0_lookback_test_ulps_mode_fail_rdata_out) 
  );

  hot_wire_type_reg  #(
    .REGISTER_NAME      ("DFT_STATUS"        ),
    .IOA_ADR_WIDTH      (14                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h500             ),
    .FIELD_START_BIT    (4                   ) 
  )
  ppi_bridge_a_1_error_status_out_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .reg_in             (ppi_bridge_a_1_error_status_out_in),
    .reg_rdata_out      (ppi_bridge_a_1_error_status_out_rdata_out) 
  );

  hot_wire_type_reg  #(
    .REGISTER_NAME      ("DFT_STATUS"        ),
    .IOA_ADR_WIDTH      (14                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h500             ),
    .FIELD_START_BIT    (5                   ) 
  )
  ppi_bridge_a_1_lookback_test_deskew_mode_fail_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .reg_in             (ppi_bridge_a_1_lookback_test_deskew_mode_fail_in),
    .reg_rdata_out      (ppi_bridge_a_1_lookback_test_deskew_mode_fail_rdata_out) 
  );

  hot_wire_type_reg  #(
    .REGISTER_NAME      ("DFT_STATUS"        ),
    .IOA_ADR_WIDTH      (14                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h500             ),
    .FIELD_START_BIT    (6                   ) 
  )
  ppi_bridge_a_1_lookback_test_hs_mode_fail_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .reg_in             (ppi_bridge_a_1_lookback_test_hs_mode_fail_in),
    .reg_rdata_out      (ppi_bridge_a_1_lookback_test_hs_mode_fail_rdata_out) 
  );

  hot_wire_type_reg  #(
    .REGISTER_NAME      ("DFT_STATUS"        ),
    .IOA_ADR_WIDTH      (14                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h500             ),
    .FIELD_START_BIT    (7                   ) 
  )
  ppi_bridge_a_1_lookback_test_ulps_mode_fail_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .reg_in             (ppi_bridge_a_1_lookback_test_ulps_mode_fail_in),
    .reg_rdata_out      (ppi_bridge_a_1_lookback_test_ulps_mode_fail_rdata_out) 
  );

  hot_wire_type_reg  #(
    .REGISTER_NAME      ("DFT_STATUS"        ),
    .IOA_ADR_WIDTH      (14                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h500             ),
    .FIELD_START_BIT    (8                   ) 
  )
  isp_if_bridge_a_0_lookback_test_fail_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .reg_in             (isp_if_bridge_a_0_lookback_test_fail_in),
    .reg_rdata_out      (isp_if_bridge_a_0_lookback_test_fail_rdata_out) 
  );

  hot_wire_type_reg  #(
    .REGISTER_NAME      ("DFT_STATUS"        ),
    .IOA_ADR_WIDTH      (14                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h500             ),
    .FIELD_START_BIT    (9                   ) 
  )
  isp_if_bridge_a_1_lookback_test_fail_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .reg_in             (isp_if_bridge_a_1_lookback_test_fail_in),
    .reg_rdata_out      (isp_if_bridge_a_1_lookback_test_fail_rdata_out) 
  );

  hot_wire_type_reg  #(
    .REGISTER_NAME      ("DFT_STATUS"        ),
    .IOA_ADR_WIDTH      (14                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h500             ),
    .FIELD_START_BIT    (10                  ) 
  )
  mipi_csi2_rx_1_phy_error_status_out_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .reg_in             (mipi_csi2_rx_1_phy_error_status_out_in),
    .reg_rdata_out      (mipi_csi2_rx_1_phy_error_status_out_rdata_out) 
  );

  hot_wire_type_reg  #(
    .REGISTER_NAME      ("DFT_STATUS"        ),
    .IOA_ADR_WIDTH      (14                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h500             ),
    .FIELD_START_BIT    (11                  ) 
  )
  mipi_csi2_rx_1_ctl_error_status_out_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .reg_in             (mipi_csi2_rx_1_ctl_error_status_out_in),
    .reg_rdata_out      (mipi_csi2_rx_1_ctl_error_status_out_rdata_out) 
  );

  hot_wire_type_reg  #(
    .REGISTER_NAME      ("DFT_STATUS"        ),
    .IOA_ADR_WIDTH      (14                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h500             ),
    .FIELD_START_BIT    (12                  ) 
  )
  mipi_slvds_rx_phy_if_1_dll_error_status_out_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .reg_in             (mipi_slvds_rx_phy_if_1_dll_error_status_out_in),
    .reg_rdata_out      (mipi_slvds_rx_phy_if_1_dll_error_status_out_rdata_out) 
  );

  hot_wire_type_reg  #(
    .REGISTER_NAME      ("DFT_STATUS"        ),
    .IOA_ADR_WIDTH      (14                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h500             ),
    .FIELD_START_BIT    (13                  ) 
  )
  mipi_slvds_rx_phy_if_1_error_status_out_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .reg_in             (mipi_slvds_rx_phy_if_1_error_status_out_in),
    .reg_rdata_out      (mipi_slvds_rx_phy_if_1_error_status_out_rdata_out) 
  );

  hot_wire_type_reg  #(
    .REGISTER_NAME      ("DFT_STATUS"        ),
    .IOA_ADR_WIDTH      (14                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (14'h500             ),
    .FIELD_START_BIT    (14                  ) 
  )
  arasan_0_prbs_fail_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .reg_in             (arasan_0_prbs_fail_in),
    .reg_rdata_out      (arasan_0_prbs_fail_rdata_out) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("REG_VERSION"       ),
    .IOA_ADR_WIDTH      (14                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (32                  ),
    .FIELD_OFFSET       (14'hf00             ),
    .FIELD_START_BIT    (0                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (32'h4               ),
    .SUB_TYPE           ("r"                 ) 
  )
  reg_version_0  (
    .ip_clk             (gen_reg_core_ip_clk ),
    .ip_rst_n           (gen_reg_core_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (gen_reg_core_ioa_a  ),
    .ioa_wdata          (gen_reg_core_ioa_wdata),
    .reg_rdata_out      (reg_version_rdata_out),
    .reg_out            (                    ) 
  );


  // interrupt line
  assign gen_reg_core_intr_base_int4 = 
    (interrupt_depth_top_rdata_out & interrupt_depth_top_en_base_int4) |
    (interrupt_lvhwirp_top_a_0_rdata_out & interrupt_lvhwirp_top_a_0_en_base_int4) |
    (interrupt_lvhwirp_top_b_0_rdata_out & interrupt_lvhwirp_top_b_0_en_base_int4) |
    (interrupt_lvlumanr_a_0_rdata_out & interrupt_lvlumanr_a_0_en_base_int4) |
    (interrupt_lvlumanr_a_1_rdata_out & interrupt_lvlumanr_a_1_en_base_int4) |
    (interrupt_lsc_b_2_rdata_out & interrupt_lsc_b_2_en_base_int4) |
    (interrupt_lsc_b_3_rdata_out & interrupt_lsc_b_3_en_base_int4) |
    (interrupt_lvsharp_a_0_rdata_out & interrupt_lvsharp_a_0_en_base_int4) |
    (interrupt_lvsharp_a_1_rdata_out & interrupt_lvsharp_a_1_en_base_int4) |
    (interrupt_y_bin_a_0_rdata_out & interrupt_y_bin_a_0_en_base_int4) |
    (interrupt_y_bin_a_1_rdata_out & interrupt_y_bin_a_1_en_base_int4) |
    (interrupt_bayer_scl_a_0_rdata_out & interrupt_bayer_scl_a_0_en_base_int4) |
    (interrupt_bayer_scl_a_1_rdata_out & interrupt_bayer_scl_a_1_en_base_int4) |
    (interrupt_y_bin_b_0_rdata_out & interrupt_y_bin_b_0_en_base_int4) |
    (interrupt_y_bin_b_1_rdata_out & interrupt_y_bin_b_1_en_base_int4) |
    (interrupt_compress_rotate_a_0_rdata_out & interrupt_compress_rotate_a_0_en_base_int4) |
    (interrupt_compress_rotate_b_0_rdata_out & interrupt_compress_rotate_b_0_en_base_int4) |
    (interrupt_decompress_a_0_rdata_out & interrupt_decompress_a_0_en_base_int4) |
    (interrupt_decompress_b_0_rdata_out & interrupt_decompress_b_0_en_base_int4) |
    (interrupt_depth_scl_up_a_0_rdata_out & interrupt_depth_scl_up_a_0_en_base_int4) |
    (interrupt_irp_top_rdata_out & interrupt_irp_top_en_base_int4) |
    (interrupt_mono_scl_a_0_rdata_out & interrupt_mono_scl_a_0_en_base_int4) |
    (interrupt_mono_scl_a_1_rdata_out & interrupt_mono_scl_a_1_en_base_int4) |
    (interrupt_lvlumanr_b_0_rdata_out & interrupt_lvlumanr_b_0_en_base_int4) |
    (interrupt_lvlumanr_b_1_rdata_out & interrupt_lvlumanr_b_1_en_base_int4)   ;
  assign gen_reg_core_intr_ap_int = 
    (interrupt_depth_top_rdata_out & interrupt_depth_top_en_ap_int) |
    (interrupt_lvhwirp_top_a_0_rdata_out & interrupt_lvhwirp_top_a_0_en_ap_int) |
    (interrupt_lvhwirp_top_b_0_rdata_out & interrupt_lvhwirp_top_b_0_en_ap_int) |
    (interrupt_lvlumanr_a_0_rdata_out & interrupt_lvlumanr_a_0_en_ap_int) |
    (interrupt_lvlumanr_a_1_rdata_out & interrupt_lvlumanr_a_1_en_ap_int) |
    (interrupt_lsc_b_2_rdata_out & interrupt_lsc_b_2_en_ap_int) |
    (interrupt_lsc_b_3_rdata_out & interrupt_lsc_b_3_en_ap_int) |
    (interrupt_lvsharp_a_0_rdata_out & interrupt_lvsharp_a_0_en_ap_int) |
    (interrupt_lvsharp_a_1_rdata_out & interrupt_lvsharp_a_1_en_ap_int) |
    (interrupt_y_bin_a_0_rdata_out & interrupt_y_bin_a_0_en_ap_int) |
    (interrupt_y_bin_a_1_rdata_out & interrupt_y_bin_a_1_en_ap_int) |
    (interrupt_bayer_scl_a_0_rdata_out & interrupt_bayer_scl_a_0_en_ap_int) |
    (interrupt_bayer_scl_a_1_rdata_out & interrupt_bayer_scl_a_1_en_ap_int) |
    (interrupt_y_bin_b_0_rdata_out & interrupt_y_bin_b_0_en_ap_int) |
    (interrupt_y_bin_b_1_rdata_out & interrupt_y_bin_b_1_en_ap_int) |
    (interrupt_compress_rotate_a_0_rdata_out & interrupt_compress_rotate_a_0_en_ap_int) |
    (interrupt_compress_rotate_b_0_rdata_out & interrupt_compress_rotate_b_0_en_ap_int) |
    (interrupt_decompress_a_0_rdata_out & interrupt_decompress_a_0_en_ap_int) |
    (interrupt_decompress_b_0_rdata_out & interrupt_decompress_b_0_en_ap_int) |
    (interrupt_depth_scl_up_a_0_rdata_out & interrupt_depth_scl_up_a_0_en_ap_int) |
    (interrupt_irp_top_rdata_out & interrupt_irp_top_en_ap_int) |
    (interrupt_mono_scl_a_0_rdata_out & interrupt_mono_scl_a_0_en_ap_int) |
    (interrupt_mono_scl_a_1_rdata_out & interrupt_mono_scl_a_1_en_ap_int) |
    (interrupt_lvlumanr_b_0_rdata_out & interrupt_lvlumanr_b_0_en_ap_int) |
    (interrupt_lvlumanr_b_1_rdata_out & interrupt_lvlumanr_b_1_en_ap_int) |
    (interrupt_lsc_a_0_rdata_out & interrupt_lsc_a_0_en_ap_int) |
    (interrupt_ppe_a_0_rdata_out & interrupt_ppe_a_0_en_ap_int) |
    (interrupt_pp_mrg_a_0_rdata_out & interrupt_pp_mrg_a_0_en_ap_int) |
    (interrupt_cbc_a_0_rdata_out & interrupt_cbc_a_0_en_ap_int) |
    (interrupt_abc_a_0_rdata_out & interrupt_abc_a_0_en_ap_int) |
    (interrupt_ppc_a_0_rdata_out & interrupt_ppc_a_0_en_ap_int) |
    (interrupt_two_pd_ws_a_0_rdata_out & interrupt_two_pd_ws_a_0_en_ap_int) |
    (interrupt_standby_top_rdata_out & interrupt_standby_top_en_ap_int) |
    (interrupt_dpc_top_rdata_out & interrupt_dpc_top_en_ap_int) |
    (interrupt_isp_if_bridge_a_0_rdata_out & interrupt_isp_if_bridge_a_0_en_ap_int) |
    (interrupt_isp_if_bridge_a_1_rdata_out & interrupt_isp_if_bridge_a_1_en_ap_int) |
    (interrupt_uspi_a_0_rdata_out & interrupt_uspi_a_0_en_ap_int) |
    (interrupt_senif56_asyn_d16_0_w_softrst_ok_rdata_out & interrupt_senif56_asyn_d16_0_w_softrst_ok_en_ap_int) |
    (interrupt_senif56_asyn_d16_0_r_softrst_ok_rdata_out & interrupt_senif56_asyn_d16_0_r_softrst_ok_en_ap_int) |
    (interrupt_senif56_asyn_d16_1_w_softrst_ok_rdata_out & interrupt_senif56_asyn_d16_1_w_softrst_ok_en_ap_int) |
    (interrupt_senif56_asyn_d16_1_r_softrst_ok_rdata_out & interrupt_senif56_asyn_d16_1_r_softrst_ok_en_ap_int) |
    (interrupt_yuv420_444_a_0_rdata_out & interrupt_yuv420_444_a_0_en_ap_int) |
    (interrupt_tx_top_out_mux_a_0_rdata_out & interrupt_tx_top_out_mux_a_0_en_ap_int) |
    (interrupt_tx_top_out_mux_a_1_rdata_out & interrupt_tx_top_out_mux_a_1_en_ap_int) |
    (interrupt_oc_ram_wrapper7_rdata_out & interrupt_oc_ram_wrapper7_en_ap_int) |
    (interrupt_mipi_csi2_tx_1_rdata_out & interrupt_mipi_csi2_tx_1_en_ap_int) |
    (interrupt_mipi_tx_phy_if_1_rdata_out & interrupt_mipi_tx_phy_if_1_en_ap_int) |
    (interrupt_mipi_csi2_rx_0_rdata_out & interrupt_mipi_csi2_rx_0_en_ap_int) |
    (interrupt_mipi_csi2_rx_1_rdata_out & interrupt_mipi_csi2_rx_1_en_ap_int) |
    (interrupt_mipi_slvds_rx_phy_if_0_rdata_out & interrupt_mipi_slvds_rx_phy_if_0_en_ap_int) |
    (interrupt_mipi_slvds_rx_phy_if_1_rdata_out & interrupt_mipi_slvds_rx_phy_if_1_en_ap_int) |
    (interrupt_ssi_ctl_a_0_rdata_out & interrupt_ssi_ctl_a_0_en_ap_int) |
    (interrupt_ppi_bridge_a_0_rdata_out & interrupt_ppi_bridge_a_0_en_ap_int) |
    (interrupt_ppi_bridge_a_1_rdata_out & interrupt_ppi_bridge_a_1_en_ap_int) |
    (interrupt_mipi_line_read_a_0_rdata_out & interrupt_mipi_line_read_a_0_en_ap_int) |
    (interrupt_mipi_line_read_a_1_rdata_out & interrupt_mipi_line_read_a_1_en_ap_int) |
    (interrupt_fpga_i2c_0_rdata_out & interrupt_fpga_i2c_0_en_ap_int) |
    (interrupt_fpga_i2c_1_rdata_out & interrupt_fpga_i2c_1_en_ap_int) |
    (interrupt_fpga_i2c_2_rdata_out & interrupt_fpga_i2c_2_en_ap_int) |
    (interrupt_i2c_0_rdata_out & interrupt_i2c_0_en_ap_int) |
    (interrupt_i2c_1_rdata_out & interrupt_i2c_1_en_ap_int) |
    (interrupt_expo_gain_ctrl_0_rdata_out & interrupt_expo_gain_ctrl_0_en_ap_int) |
    (interrupt_expo_gain_ctrl_1_rdata_out & interrupt_expo_gain_ctrl_1_en_ap_int) |
    (interrupt_fpga_i2c_3_rdata_out & interrupt_fpga_i2c_3_en_ap_int) |
    (interrupt_fpga_i2c_4_rdata_out & interrupt_fpga_i2c_4_en_ap_int) |
    (interrupt_lzrw_a_0_rdata_out & interrupt_lzrw_a_0_en_ap_int) |
    (interrupt_rectify_a_0_rdata_out & interrupt_rectify_a_0_en_ap_int) |
    (interrupt_rectify_b_0_rdata_out & interrupt_rectify_b_0_en_ap_int) |
    (interrupt_sw_intr_rdata_out & interrupt_sw_intr_en_ap_int) |
    (interrupt_gpio_rdata_out & interrupt_gpio_en_ap_int) |
    (interrupt_aio_rdata_out & interrupt_aio_en_ap_int) |
    (interrupt_i2c_boot_rdata_out & interrupt_i2c_boot_en_ap_int) |
    (interrupt_ioa_rdata_out & interrupt_ioa_en_ap_int) |
    (interrupt_wpl_rdata_out & interrupt_wpl_en_ap_int) |
    (interrupt_spi_nor_rdata_out & interrupt_spi_nor_en_ap_int) |
    (interrupt_uspi_e_0_rdata_out & interrupt_uspi_e_0_en_ap_int) |
    (interrupt_fpga_uspi_firefox_rdata_out & interrupt_fpga_uspi_firefox_en_ap_int) |
    (interrupt_i2c_slave_top_0_rdata_out & interrupt_i2c_slave_top_0_en_ap_int) |
    (interrupt_pll_wait_cnt_dn_rdata_out & interrupt_pll_wait_cnt_dn_en_ap_int) |
    (interrupt_arb_bus_stdby_0_rdata_out & interrupt_arb_bus_stdby_0_en_ap_int) |
    (interrupt_arb_bus_dpc_0_rdata_out & interrupt_arb_bus_dpc_0_en_ap_int) |
    (interrupt_spi_switch_done_rdata_out & interrupt_spi_switch_done_en_ap_int) |
    (interrupt_arb_bus_depth_0_rdata_out & interrupt_arb_bus_depth_0_en_ap_int) |
    (interrupt_i2c_switch_done_rdata_out & interrupt_i2c_switch_done_en_ap_int) |
    (interrupt_dp_top_a_0_rdata_out & interrupt_dp_top_a_0_en_ap_int) |
    (interrupt_dg_mcc_a_0_rdata_out & interrupt_dg_mcc_a_0_en_ap_int) |
    (interrupt_dg_ca_a_0_rdata_out & interrupt_dg_ca_a_0_en_ap_int) |
    (interrupt_ddr_cfg_rdata_out & interrupt_ddr_cfg_en_ap_int) |
    (interrupt_pll_fix_lock_rdata_out & interrupt_pll_fix_lock_en_ap_int) |
    (interrupt_pll_var_lock_rdata_out & interrupt_pll_var_lock_en_ap_int) |
    (interrupt_pll_fix_fbslip_rdata_out & interrupt_pll_fix_fbslip_en_ap_int) |
    (interrupt_pll_var_fbslip_rdata_out & interrupt_pll_var_fbslip_en_ap_int) |
    (interrupt_pll_fix_rfslip_rdata_out & interrupt_pll_fix_rfslip_en_ap_int) |
    (interrupt_pll_var_rfslip_rdata_out & interrupt_pll_var_rfslip_en_ap_int) |
    (interrupt_pll_ext_lock_rdata_out & interrupt_pll_ext_lock_en_ap_int) |
    (interrupt_pll_ext_fbslip_rdata_out & interrupt_pll_ext_fbslip_en_ap_int) |
    (interrupt_pll_ext_rfslip_rdata_out & interrupt_pll_ext_rfslip_en_ap_int) |
    (interrupt_hdr_top_rdata_out & interrupt_hdr_top_en_ap_int) |
    (interrupt_id_det_a_0_rdata_out & interrupt_id_det_a_0_en_ap_int) |
    (interrupt_id_det_a_1_rdata_out & interrupt_id_det_a_1_en_ap_int) |
    (interrupt_bayer_binning_a_0_rdata_out & interrupt_bayer_binning_a_0_en_ap_int) |
    (interrupt_bayer_binning_a_1_rdata_out & interrupt_bayer_binning_a_1_en_ap_int) |
    (interrupt_rlb_a_0_rdata_out & interrupt_rlb_a_0_en_ap_int) |
    (interrupt_rlb_b_0_rdata_out & interrupt_rlb_b_0_en_ap_int) |
    (interrupt_rdn_a_0_rdata_out & interrupt_rdn_a_0_en_ap_int) |
    (interrupt_rdn_b_0_rdata_out & interrupt_rdn_b_0_en_ap_int) |
    (interrupt_tx_top_rdata_out & interrupt_tx_top_en_ap_int) |
    (interrupt_tx_line_merge_2l_a_0_rdata_out & interrupt_tx_line_merge_2l_a_0_en_ap_int) |
    (interrupt_tx_line_merge_2l_b_0_rdata_out & interrupt_tx_line_merge_2l_b_0_en_ap_int) |
    (interrupt_hdr_interpolation_a_0_rdata_out & interrupt_hdr_interpolation_a_0_en_ap_int) |
    (interrupt_hdr_blending_a_0_rdata_out & interrupt_hdr_blending_a_0_en_ap_int) |
    (interrupt_hdr_ae_a_0_rdata_out & interrupt_hdr_ae_a_0_en_ap_int) |
    (interrupt_hdr_ae_a_1_rdata_out & interrupt_hdr_ae_a_1_en_ap_int) |
    (interrupt_tx_line_merge_2l_c_0_rdata_out & interrupt_tx_line_merge_2l_c_0_en_ap_int) |
    (interrupt_tx_line_merge_2l_d_0_rdata_out & interrupt_tx_line_merge_2l_d_0_en_ap_int) |
    (interrupt_lsc_c_0_rdata_out & interrupt_lsc_c_0_en_ap_int)   ;
  assign gen_reg_core_intr_base_int5 = 
    (interrupt_lsc_a_0_rdata_out & interrupt_lsc_a_0_en_base_int5) |
    (interrupt_ppe_a_0_rdata_out & interrupt_ppe_a_0_en_base_int5) |
    (interrupt_pp_mrg_a_0_rdata_out & interrupt_pp_mrg_a_0_en_base_int5) |
    (interrupt_cbc_a_0_rdata_out & interrupt_cbc_a_0_en_base_int5) |
    (interrupt_abc_a_0_rdata_out & interrupt_abc_a_0_en_base_int5) |
    (interrupt_ppc_a_0_rdata_out & interrupt_ppc_a_0_en_base_int5) |
    (interrupt_two_pd_ws_a_0_rdata_out & interrupt_two_pd_ws_a_0_en_base_int5) |
    (interrupt_standby_top_rdata_out & interrupt_standby_top_en_base_int5) |
    (interrupt_dpc_top_rdata_out & interrupt_dpc_top_en_base_int5) |
    (interrupt_isp_if_bridge_a_0_rdata_out & interrupt_isp_if_bridge_a_0_en_base_int5) |
    (interrupt_isp_if_bridge_a_1_rdata_out & interrupt_isp_if_bridge_a_1_en_base_int5) |
    (interrupt_uspi_a_0_rdata_out & interrupt_uspi_a_0_en_base_int5) |
    (interrupt_senif56_asyn_d16_0_w_softrst_ok_rdata_out & interrupt_senif56_asyn_d16_0_w_softrst_ok_en_base_int5) |
    (interrupt_senif56_asyn_d16_0_r_softrst_ok_rdata_out & interrupt_senif56_asyn_d16_0_r_softrst_ok_en_base_int5) |
    (interrupt_senif56_asyn_d16_1_w_softrst_ok_rdata_out & interrupt_senif56_asyn_d16_1_w_softrst_ok_en_base_int5) |
    (interrupt_senif56_asyn_d16_1_r_softrst_ok_rdata_out & interrupt_senif56_asyn_d16_1_r_softrst_ok_en_base_int5) |
    (interrupt_yuv420_444_a_0_rdata_out & interrupt_yuv420_444_a_0_en_base_int5) |
    (interrupt_tx_top_out_mux_a_0_rdata_out & interrupt_tx_top_out_mux_a_0_en_base_int5) |
    (interrupt_tx_top_out_mux_a_1_rdata_out & interrupt_tx_top_out_mux_a_1_en_base_int5) |
    (interrupt_oc_ram_wrapper7_rdata_out & interrupt_oc_ram_wrapper7_en_base_int5)   ;
  assign gen_reg_core_intr_base_int6 = 
    (interrupt_mipi_csi2_tx_1_rdata_out & interrupt_mipi_csi2_tx_1_en_base_int6) |
    (interrupt_mipi_tx_phy_if_1_rdata_out & interrupt_mipi_tx_phy_if_1_en_base_int6) |
    (interrupt_mipi_csi2_rx_0_rdata_out & interrupt_mipi_csi2_rx_0_en_base_int6) |
    (interrupt_mipi_csi2_rx_1_rdata_out & interrupt_mipi_csi2_rx_1_en_base_int6) |
    (interrupt_mipi_slvds_rx_phy_if_0_rdata_out & interrupt_mipi_slvds_rx_phy_if_0_en_base_int6) |
    (interrupt_mipi_slvds_rx_phy_if_1_rdata_out & interrupt_mipi_slvds_rx_phy_if_1_en_base_int6) |
    (interrupt_ssi_ctl_a_0_rdata_out & interrupt_ssi_ctl_a_0_en_base_int6) |
    (interrupt_ppi_bridge_a_0_rdata_out & interrupt_ppi_bridge_a_0_en_base_int6) |
    (interrupt_ppi_bridge_a_1_rdata_out & interrupt_ppi_bridge_a_1_en_base_int6) |
    (interrupt_mipi_line_read_a_0_rdata_out & interrupt_mipi_line_read_a_0_en_base_int6) |
    (interrupt_mipi_line_read_a_1_rdata_out & interrupt_mipi_line_read_a_1_en_base_int6) |
    (interrupt_fpga_i2c_0_rdata_out & interrupt_fpga_i2c_0_en_base_int6) |
    (interrupt_fpga_i2c_1_rdata_out & interrupt_fpga_i2c_1_en_base_int6) |
    (interrupt_fpga_i2c_2_rdata_out & interrupt_fpga_i2c_2_en_base_int6) |
    (interrupt_i2c_0_rdata_out & interrupt_i2c_0_en_base_int6) |
    (interrupt_i2c_1_rdata_out & interrupt_i2c_1_en_base_int6) |
    (interrupt_expo_gain_ctrl_0_rdata_out & interrupt_expo_gain_ctrl_0_en_base_int6) |
    (interrupt_expo_gain_ctrl_1_rdata_out & interrupt_expo_gain_ctrl_1_en_base_int6) |
    (interrupt_fpga_i2c_3_rdata_out & interrupt_fpga_i2c_3_en_base_int6) |
    (interrupt_fpga_i2c_4_rdata_out & interrupt_fpga_i2c_4_en_base_int6) |
    (interrupt_lzrw_a_0_rdata_out & interrupt_lzrw_a_0_en_base_int6)   ;
  assign gen_reg_core_intr_base_int9 = 
    (interrupt_rectify_a_0_rdata_out & interrupt_rectify_a_0_en_base_int9) |
    (interrupt_rectify_b_0_rdata_out & interrupt_rectify_b_0_en_base_int9) |
    (interrupt_sw_intr_rdata_out & interrupt_sw_intr_en_base_int9) |
    (interrupt_gpio_rdata_out & interrupt_gpio_en_base_int9) |
    (interrupt_aio_rdata_out & interrupt_aio_en_base_int9) |
    (interrupt_i2c_boot_rdata_out & interrupt_i2c_boot_en_base_int9) |
    (interrupt_ioa_rdata_out & interrupt_ioa_en_base_int9) |
    (interrupt_wpl_rdata_out & interrupt_wpl_en_base_int9) |
    (interrupt_spi_nor_rdata_out & interrupt_spi_nor_en_base_int9) |
    (interrupt_uspi_e_0_rdata_out & interrupt_uspi_e_0_en_base_int9) |
    (interrupt_fpga_uspi_firefox_rdata_out & interrupt_fpga_uspi_firefox_en_base_int9) |
    (interrupt_i2c_slave_top_0_rdata_out & interrupt_i2c_slave_top_0_en_base_int9) |
    (interrupt_pll_wait_cnt_dn_rdata_out & interrupt_pll_wait_cnt_dn_en_base_int9) |
    (interrupt_arb_bus_stdby_0_rdata_out & interrupt_arb_bus_stdby_0_en_base_int9) |
    (interrupt_arb_bus_dpc_0_rdata_out & interrupt_arb_bus_dpc_0_en_base_int9) |
    (interrupt_spi_switch_done_rdata_out & interrupt_spi_switch_done_en_base_int9) |
    (interrupt_arb_bus_depth_0_rdata_out & interrupt_arb_bus_depth_0_en_base_int9) |
    (interrupt_i2c_switch_done_rdata_out & interrupt_i2c_switch_done_en_base_int9)   ;
  assign gen_reg_core_intr_base_int8 = 
    (interrupt_dp_top_a_0_rdata_out & interrupt_dp_top_a_0_en_base_int8) |
    (interrupt_dg_mcc_a_0_rdata_out & interrupt_dg_mcc_a_0_en_base_int8) |
    (interrupt_dg_ca_a_0_rdata_out & interrupt_dg_ca_a_0_en_base_int8) |
    (interrupt_ddr_cfg_rdata_out & interrupt_ddr_cfg_en_base_int8) |
    (interrupt_pll_fix_lock_rdata_out & interrupt_pll_fix_lock_en_base_int8) |
    (interrupt_pll_var_lock_rdata_out & interrupt_pll_var_lock_en_base_int8) |
    (interrupt_pll_fix_fbslip_rdata_out & interrupt_pll_fix_fbslip_en_base_int8) |
    (interrupt_pll_var_fbslip_rdata_out & interrupt_pll_var_fbslip_en_base_int8) |
    (interrupt_pll_fix_rfslip_rdata_out & interrupt_pll_fix_rfslip_en_base_int8) |
    (interrupt_pll_var_rfslip_rdata_out & interrupt_pll_var_rfslip_en_base_int8) |
    (interrupt_pll_ext_lock_rdata_out & interrupt_pll_ext_lock_en_base_int8) |
    (interrupt_pll_ext_fbslip_rdata_out & interrupt_pll_ext_fbslip_en_base_int8) |
    (interrupt_pll_ext_rfslip_rdata_out & interrupt_pll_ext_rfslip_en_base_int8)   ;
  assign gen_reg_core_intr_base_int10 = 
    (interrupt_hdr_top_rdata_out & interrupt_hdr_top_en_base_int10) |
    (interrupt_id_det_a_0_rdata_out & interrupt_id_det_a_0_en_base_int10) |
    (interrupt_id_det_a_1_rdata_out & interrupt_id_det_a_1_en_base_int10) |
    (interrupt_bayer_binning_a_0_rdata_out & interrupt_bayer_binning_a_0_en_base_int10) |
    (interrupt_bayer_binning_a_1_rdata_out & interrupt_bayer_binning_a_1_en_base_int10) |
    (interrupt_rlb_a_0_rdata_out & interrupt_rlb_a_0_en_base_int10) |
    (interrupt_rlb_b_0_rdata_out & interrupt_rlb_b_0_en_base_int10) |
    (interrupt_rdn_a_0_rdata_out & interrupt_rdn_a_0_en_base_int10) |
    (interrupt_rdn_b_0_rdata_out & interrupt_rdn_b_0_en_base_int10) |
    (interrupt_tx_top_rdata_out & interrupt_tx_top_en_base_int10) |
    (interrupt_tx_line_merge_2l_a_0_rdata_out & interrupt_tx_line_merge_2l_a_0_en_base_int10) |
    (interrupt_tx_line_merge_2l_b_0_rdata_out & interrupt_tx_line_merge_2l_b_0_en_base_int10) |
    (interrupt_hdr_interpolation_a_0_rdata_out & interrupt_hdr_interpolation_a_0_en_base_int10) |
    (interrupt_hdr_blending_a_0_rdata_out & interrupt_hdr_blending_a_0_en_base_int10) |
    (interrupt_hdr_ae_a_0_rdata_out & interrupt_hdr_ae_a_0_en_base_int10) |
    (interrupt_hdr_ae_a_1_rdata_out & interrupt_hdr_ae_a_1_en_base_int10) |
    (interrupt_tx_line_merge_2l_c_0_rdata_out & interrupt_tx_line_merge_2l_c_0_en_base_int10) |
    (interrupt_tx_line_merge_2l_d_0_rdata_out & interrupt_tx_line_merge_2l_d_0_en_base_int10) |
    (interrupt_lsc_c_0_rdata_out & interrupt_lsc_c_0_en_base_int10)   ;
  assign gen_reg_core_intr_interrupt_sw_intr = 
    (sw_intr_level_00_rdata_out & sw_intr_level_00_en_interrupt_sw_intr) |
    (sw_intr_level_01_rdata_out & sw_intr_level_01_en_interrupt_sw_intr) |
    (sw_intr_level_02_rdata_out & sw_intr_level_02_en_interrupt_sw_intr) |
    (sw_intr_level_03_rdata_out & sw_intr_level_03_en_interrupt_sw_intr) |
    (sw_intr_level_04_rdata_out & sw_intr_level_04_en_interrupt_sw_intr) |
    (sw_intr_level_05_rdata_out & sw_intr_level_05_en_interrupt_sw_intr) |
    (sw_intr_level_06_rdata_out & sw_intr_level_06_en_interrupt_sw_intr) |
    (sw_intr_level_07_rdata_out & sw_intr_level_07_en_interrupt_sw_intr) |
    (sw_intr_level_08_rdata_out & sw_intr_level_08_en_interrupt_sw_intr) |
    (sw_intr_level_09_rdata_out & sw_intr_level_09_en_interrupt_sw_intr) |
    (sw_intr_level_10_rdata_out & sw_intr_level_10_en_interrupt_sw_intr) |
    (sw_intr_level_11_rdata_out & sw_intr_level_11_en_interrupt_sw_intr) |
    (sw_intr_level_12_rdata_out & sw_intr_level_12_en_interrupt_sw_intr) |
    (sw_intr_level_13_rdata_out & sw_intr_level_13_en_interrupt_sw_intr) |
    (sw_intr_level_14_rdata_out & sw_intr_level_14_en_interrupt_sw_intr) |
    (sw_intr_level_15_rdata_out & sw_intr_level_15_en_interrupt_sw_intr) |
    (sw_intr_level_16_rdata_out & sw_intr_level_16_en_interrupt_sw_intr) |
    (sw_intr_level_17_rdata_out & sw_intr_level_17_en_interrupt_sw_intr) |
    (sw_intr_level_18_rdata_out & sw_intr_level_18_en_interrupt_sw_intr) |
    (sw_intr_level_19_rdata_out & sw_intr_level_19_en_interrupt_sw_intr) |
    (sw_intr_level_20_rdata_out & sw_intr_level_20_en_interrupt_sw_intr) |
    (sw_intr_level_21_rdata_out & sw_intr_level_21_en_interrupt_sw_intr) |
    (sw_intr_level_22_rdata_out & sw_intr_level_22_en_interrupt_sw_intr) |
    (sw_intr_level_23_rdata_out & sw_intr_level_23_en_interrupt_sw_intr) |
    (sw_intr_level_24_rdata_out & sw_intr_level_24_en_interrupt_sw_intr) |
    (sw_intr_level_25_rdata_out & sw_intr_level_25_en_interrupt_sw_intr) |
    (sw_intr_level_26_rdata_out & sw_intr_level_26_en_interrupt_sw_intr) |
    (sw_intr_level_27_rdata_out & sw_intr_level_27_en_interrupt_sw_intr) |
    (sw_intr_level_28_rdata_out & sw_intr_level_28_en_interrupt_sw_intr) |
    (sw_intr_level_29_rdata_out & sw_intr_level_29_en_interrupt_sw_intr) |
    (sw_intr_level_30_rdata_out & sw_intr_level_30_en_interrupt_sw_intr) |
    (sw_intr_level_31_rdata_out & sw_intr_level_31_en_interrupt_sw_intr)   ;

  // ip_wr_gnt
  assign ip_rd_gnt = 
    ip_rd_req  ;

  // ip_wr_gnt
  assign ip_wr_gnt = 
    ip_wr_req  ;

  // ioa_rdata
  always @ (posedge gen_reg_core_ip_clk or negedge gen_reg_core_ip_rst_n) begin
    if (~gen_reg_core_ip_rst_n) 
      gen_reg_core_ioa_rdata <= #1 32'b0;
    else if (ip_rd_reg) 
      case (gen_reg_core_ioa_a) //synopsys parallel_case 
        16'h0: gen_reg_core_ioa_rdata <= #1 {rft_reg_rdata_out} ;
        16'h4: gen_reg_core_ioa_rdata <= #1 {boot_mode_debug_flag_rdata_out} ;
        16'h8: gen_reg_core_ioa_rdata <= #1 {magic_number_rdata_out} ;
        16'h20: gen_reg_core_ioa_rdata <= #1 {16'h0, chip_id_rdata_out} ;
        16'h24: gen_reg_core_ioa_rdata <= #1 {4'h0, interrupt_lvlumanr_b_1_en_base_int4_rdata_out, interrupt_lvlumanr_b_0_en_base_int4_rdata_out, interrupt_mono_scl_a_1_en_base_int4_rdata_out, interrupt_mono_scl_a_0_en_base_int4_rdata_out, interrupt_irp_top_en_base_int4_rdata_out, interrupt_depth_scl_up_a_0_en_base_int4_rdata_out, 1'h0, interrupt_decompress_b_0_en_base_int4_rdata_out, interrupt_decompress_a_0_en_base_int4_rdata_out, interrupt_compress_rotate_b_0_en_base_int4_rdata_out, interrupt_compress_rotate_a_0_en_base_int4_rdata_out, interrupt_y_bin_b_1_en_base_int4_rdata_out, interrupt_y_bin_b_0_en_base_int4_rdata_out, interrupt_bayer_scl_a_1_en_base_int4_rdata_out, interrupt_bayer_scl_a_0_en_base_int4_rdata_out, 2'h0, interrupt_y_bin_a_1_en_base_int4_rdata_out, interrupt_y_bin_a_0_en_base_int4_rdata_out, interrupt_lvsharp_a_1_en_base_int4_rdata_out, interrupt_lvsharp_a_0_en_base_int4_rdata_out, interrupt_lsc_b_3_en_base_int4_rdata_out, interrupt_lsc_b_2_en_base_int4_rdata_out, interrupt_lvlumanr_a_1_en_base_int4_rdata_out, interrupt_lvlumanr_a_0_en_base_int4_rdata_out, interrupt_lvhwirp_top_b_0_en_base_int4_rdata_out, interrupt_lvhwirp_top_a_0_en_base_int4_rdata_out, interrupt_depth_top_en_base_int4_rdata_out} ;
        16'h28: gen_reg_core_ioa_rdata <= #1 {4'h0, interrupt_lvlumanr_b_1_en_ap_int_rdata_out, interrupt_lvlumanr_b_0_en_ap_int_rdata_out, interrupt_mono_scl_a_1_en_ap_int_rdata_out, interrupt_mono_scl_a_0_en_ap_int_rdata_out, interrupt_irp_top_en_ap_int_rdata_out, interrupt_depth_scl_up_a_0_en_ap_int_rdata_out, 1'h0, interrupt_decompress_b_0_en_ap_int_rdata_out, interrupt_decompress_a_0_en_ap_int_rdata_out, interrupt_compress_rotate_b_0_en_ap_int_rdata_out, interrupt_compress_rotate_a_0_en_ap_int_rdata_out, interrupt_y_bin_b_1_en_ap_int_rdata_out, interrupt_y_bin_b_0_en_ap_int_rdata_out, interrupt_bayer_scl_a_1_en_ap_int_rdata_out, interrupt_bayer_scl_a_0_en_ap_int_rdata_out, 2'h0, interrupt_y_bin_a_1_en_ap_int_rdata_out, interrupt_y_bin_a_0_en_ap_int_rdata_out, interrupt_lvsharp_a_1_en_ap_int_rdata_out, interrupt_lvsharp_a_0_en_ap_int_rdata_out, interrupt_lsc_b_3_en_ap_int_rdata_out, interrupt_lsc_b_2_en_ap_int_rdata_out, interrupt_lvlumanr_a_1_en_ap_int_rdata_out, interrupt_lvlumanr_a_0_en_ap_int_rdata_out, interrupt_lvhwirp_top_b_0_en_ap_int_rdata_out, interrupt_lvhwirp_top_a_0_en_ap_int_rdata_out, interrupt_depth_top_en_ap_int_rdata_out} ;
        16'h2c: gen_reg_core_ioa_rdata <= #1 {4'h0, interrupt_lvlumanr_b_1_rdata_out, interrupt_lvlumanr_b_0_rdata_out, interrupt_mono_scl_a_1_rdata_out, interrupt_mono_scl_a_0_rdata_out, interrupt_irp_top_rdata_out, interrupt_depth_scl_up_a_0_rdata_out, 1'h0, interrupt_decompress_b_0_rdata_out, interrupt_decompress_a_0_rdata_out, interrupt_compress_rotate_b_0_rdata_out, interrupt_compress_rotate_a_0_rdata_out, interrupt_y_bin_b_1_rdata_out, interrupt_y_bin_b_0_rdata_out, interrupt_bayer_scl_a_1_rdata_out, interrupt_bayer_scl_a_0_rdata_out, 2'h0, interrupt_y_bin_a_1_rdata_out, interrupt_y_bin_a_0_rdata_out, interrupt_lvsharp_a_1_rdata_out, interrupt_lvsharp_a_0_rdata_out, interrupt_lsc_b_3_rdata_out, interrupt_lsc_b_2_rdata_out, interrupt_lvlumanr_a_1_rdata_out, interrupt_lvlumanr_a_0_rdata_out, interrupt_lvhwirp_top_b_0_rdata_out, interrupt_lvhwirp_top_a_0_rdata_out, interrupt_depth_top_rdata_out} ;
        16'h30: gen_reg_core_ioa_rdata <= #1 {8'h0, interrupt_oc_ram_wrapper7_en_base_int5_rdata_out, interrupt_tx_top_out_mux_a_1_en_base_int5_rdata_out, interrupt_tx_top_out_mux_a_0_en_base_int5_rdata_out, interrupt_yuv420_444_a_0_en_base_int5_rdata_out, interrupt_senif56_asyn_d16_1_r_softrst_ok_en_base_int5_rdata_out, interrupt_senif56_asyn_d16_1_w_softrst_ok_en_base_int5_rdata_out, interrupt_senif56_asyn_d16_0_r_softrst_ok_en_base_int5_rdata_out, interrupt_senif56_asyn_d16_0_w_softrst_ok_en_base_int5_rdata_out, 3'h0, interrupt_uspi_a_0_en_base_int5_rdata_out, 1'h0, interrupt_isp_if_bridge_a_1_en_base_int5_rdata_out, interrupt_isp_if_bridge_a_0_en_base_int5_rdata_out, interrupt_dpc_top_en_base_int5_rdata_out, interrupt_standby_top_en_base_int5_rdata_out, interrupt_two_pd_ws_a_0_en_base_int5_rdata_out, interrupt_ppc_a_0_en_base_int5_rdata_out, interrupt_abc_a_0_en_base_int5_rdata_out, interrupt_cbc_a_0_en_base_int5_rdata_out, interrupt_pp_mrg_a_0_en_base_int5_rdata_out, interrupt_ppe_a_0_en_base_int5_rdata_out, interrupt_lsc_a_0_en_base_int5_rdata_out} ;
        16'h34: gen_reg_core_ioa_rdata <= #1 {8'h0, interrupt_oc_ram_wrapper7_en_ap_int_rdata_out, interrupt_tx_top_out_mux_a_1_en_ap_int_rdata_out, interrupt_tx_top_out_mux_a_0_en_ap_int_rdata_out, interrupt_yuv420_444_a_0_en_ap_int_rdata_out, interrupt_senif56_asyn_d16_1_r_softrst_ok_en_ap_int_rdata_out, interrupt_senif56_asyn_d16_1_w_softrst_ok_en_ap_int_rdata_out, interrupt_senif56_asyn_d16_0_r_softrst_ok_en_ap_int_rdata_out, interrupt_senif56_asyn_d16_0_w_softrst_ok_en_ap_int_rdata_out, 3'h0, interrupt_uspi_a_0_en_ap_int_rdata_out, 1'h0, interrupt_isp_if_bridge_a_1_en_ap_int_rdata_out, interrupt_isp_if_bridge_a_0_en_ap_int_rdata_out, interrupt_dpc_top_en_ap_int_rdata_out, interrupt_standby_top_en_ap_int_rdata_out, interrupt_two_pd_ws_a_0_en_ap_int_rdata_out, interrupt_ppc_a_0_en_ap_int_rdata_out, interrupt_abc_a_0_en_ap_int_rdata_out, interrupt_cbc_a_0_en_ap_int_rdata_out, interrupt_pp_mrg_a_0_en_ap_int_rdata_out, interrupt_ppe_a_0_en_ap_int_rdata_out, interrupt_lsc_a_0_en_ap_int_rdata_out} ;
        16'h38: gen_reg_core_ioa_rdata <= #1 {8'h0, interrupt_oc_ram_wrapper7_rdata_out, interrupt_tx_top_out_mux_a_1_rdata_out, interrupt_tx_top_out_mux_a_0_rdata_out, interrupt_yuv420_444_a_0_rdata_out, interrupt_senif56_asyn_d16_1_r_softrst_ok_rdata_out, interrupt_senif56_asyn_d16_1_w_softrst_ok_rdata_out, interrupt_senif56_asyn_d16_0_r_softrst_ok_rdata_out, interrupt_senif56_asyn_d16_0_w_softrst_ok_rdata_out, 3'h0, interrupt_uspi_a_0_rdata_out, 1'h0, interrupt_isp_if_bridge_a_1_rdata_out, interrupt_isp_if_bridge_a_0_rdata_out, interrupt_dpc_top_rdata_out, interrupt_standby_top_rdata_out, interrupt_two_pd_ws_a_0_rdata_out, interrupt_ppc_a_0_rdata_out, interrupt_abc_a_0_rdata_out, interrupt_cbc_a_0_rdata_out, interrupt_pp_mrg_a_0_rdata_out, interrupt_ppe_a_0_rdata_out, interrupt_lsc_a_0_rdata_out} ;
        16'h3c: gen_reg_core_ioa_rdata <= #1 {3'h0, interrupt_lzrw_a_0_en_base_int6_rdata_out, interrupt_fpga_i2c_4_en_base_int6_rdata_out, interrupt_fpga_i2c_3_en_base_int6_rdata_out, interrupt_expo_gain_ctrl_1_en_base_int6_rdata_out, interrupt_expo_gain_ctrl_0_en_base_int6_rdata_out, interrupt_i2c_1_en_base_int6_rdata_out, interrupt_i2c_0_en_base_int6_rdata_out, 1'h0, interrupt_fpga_i2c_2_en_base_int6_rdata_out, interrupt_fpga_i2c_1_en_base_int6_rdata_out, interrupt_fpga_i2c_0_en_base_int6_rdata_out, interrupt_mipi_line_read_a_1_en_base_int6_rdata_out, interrupt_mipi_line_read_a_0_en_base_int6_rdata_out, 3'h0, interrupt_ppi_bridge_a_1_en_base_int6_rdata_out, interrupt_ppi_bridge_a_0_en_base_int6_rdata_out, interrupt_ssi_ctl_a_0_en_base_int6_rdata_out, interrupt_mipi_slvds_rx_phy_if_1_en_base_int6_rdata_out, interrupt_mipi_slvds_rx_phy_if_0_en_base_int6_rdata_out, interrupt_mipi_csi2_rx_1_en_base_int6_rdata_out, interrupt_mipi_csi2_rx_0_en_base_int6_rdata_out, 1'h0, interrupt_mipi_tx_phy_if_1_en_base_int6_rdata_out, 2'h0, interrupt_mipi_csi2_tx_1_en_base_int6_rdata_out, 1'h0} ;
        16'h40: gen_reg_core_ioa_rdata <= #1 {3'h0, interrupt_lzrw_a_0_en_ap_int_rdata_out, interrupt_fpga_i2c_4_en_ap_int_rdata_out, interrupt_fpga_i2c_3_en_ap_int_rdata_out, interrupt_expo_gain_ctrl_1_en_ap_int_rdata_out, interrupt_expo_gain_ctrl_0_en_ap_int_rdata_out, interrupt_i2c_1_en_ap_int_rdata_out, interrupt_i2c_0_en_ap_int_rdata_out, 1'h0, interrupt_fpga_i2c_2_en_ap_int_rdata_out, interrupt_fpga_i2c_1_en_ap_int_rdata_out, interrupt_fpga_i2c_0_en_ap_int_rdata_out, interrupt_mipi_line_read_a_1_en_ap_int_rdata_out, interrupt_mipi_line_read_a_0_en_ap_int_rdata_out, 3'h0, interrupt_ppi_bridge_a_1_en_ap_int_rdata_out, interrupt_ppi_bridge_a_0_en_ap_int_rdata_out, interrupt_ssi_ctl_a_0_en_ap_int_rdata_out, interrupt_mipi_slvds_rx_phy_if_1_en_ap_int_rdata_out, interrupt_mipi_slvds_rx_phy_if_0_en_ap_int_rdata_out, interrupt_mipi_csi2_rx_1_en_ap_int_rdata_out, interrupt_mipi_csi2_rx_0_en_ap_int_rdata_out, 1'h0, interrupt_mipi_tx_phy_if_1_en_ap_int_rdata_out, 2'h0, interrupt_mipi_csi2_tx_1_en_ap_int_rdata_out, 1'h0} ;
        16'h44: gen_reg_core_ioa_rdata <= #1 {3'h0, interrupt_lzrw_a_0_rdata_out, interrupt_fpga_i2c_4_rdata_out, interrupt_fpga_i2c_3_rdata_out, interrupt_expo_gain_ctrl_1_rdata_out, interrupt_expo_gain_ctrl_0_rdata_out, interrupt_i2c_1_rdata_out, interrupt_i2c_0_rdata_out, 1'h0, interrupt_fpga_i2c_2_rdata_out, interrupt_fpga_i2c_1_rdata_out, interrupt_fpga_i2c_0_rdata_out, interrupt_mipi_line_read_a_1_rdata_out, interrupt_mipi_line_read_a_0_rdata_out, 3'h0, interrupt_ppi_bridge_a_1_rdata_out, interrupt_ppi_bridge_a_0_rdata_out, interrupt_ssi_ctl_a_0_rdata_out, interrupt_mipi_slvds_rx_phy_if_1_rdata_out, interrupt_mipi_slvds_rx_phy_if_0_rdata_out, interrupt_mipi_csi2_rx_1_rdata_out, interrupt_mipi_csi2_rx_0_rdata_out, 1'h0, interrupt_mipi_tx_phy_if_1_rdata_out, 2'h0, interrupt_mipi_csi2_tx_1_rdata_out, 1'h0} ;
        16'h54: gen_reg_core_ioa_rdata <= #1 {4'h0, interrupt_i2c_switch_done_en_base_int9_rdata_out, interrupt_arb_bus_depth_0_en_base_int9_rdata_out, interrupt_spi_switch_done_en_base_int9_rdata_out, interrupt_arb_bus_dpc_0_en_base_int9_rdata_out, interrupt_arb_bus_stdby_0_en_base_int9_rdata_out, interrupt_pll_wait_cnt_dn_en_base_int9_rdata_out, 4'h0, interrupt_i2c_slave_top_0_en_base_int9_rdata_out, interrupt_fpga_uspi_firefox_en_base_int9_rdata_out, interrupt_uspi_e_0_en_base_int9_rdata_out, interrupt_spi_nor_en_base_int9_rdata_out, interrupt_wpl_en_base_int9_rdata_out, interrupt_ioa_en_base_int9_rdata_out, interrupt_i2c_boot_en_base_int9_rdata_out, interrupt_aio_en_base_int9_rdata_out, interrupt_gpio_en_base_int9_rdata_out, 1'h0, interrupt_sw_intr_en_base_int9_rdata_out, 5'h0, interrupt_rectify_b_0_en_base_int9_rdata_out, interrupt_rectify_a_0_en_base_int9_rdata_out} ;
        16'h58: gen_reg_core_ioa_rdata <= #1 {4'h0, interrupt_i2c_switch_done_en_ap_int_rdata_out, interrupt_arb_bus_depth_0_en_ap_int_rdata_out, interrupt_spi_switch_done_en_ap_int_rdata_out, interrupt_arb_bus_dpc_0_en_ap_int_rdata_out, interrupt_arb_bus_stdby_0_en_ap_int_rdata_out, interrupt_pll_wait_cnt_dn_en_ap_int_rdata_out, 4'h0, interrupt_i2c_slave_top_0_en_ap_int_rdata_out, interrupt_fpga_uspi_firefox_en_ap_int_rdata_out, interrupt_uspi_e_0_en_ap_int_rdata_out, interrupt_spi_nor_en_ap_int_rdata_out, interrupt_wpl_en_ap_int_rdata_out, interrupt_ioa_en_ap_int_rdata_out, interrupt_i2c_boot_en_ap_int_rdata_out, interrupt_aio_en_ap_int_rdata_out, interrupt_gpio_en_ap_int_rdata_out, 1'h0, interrupt_sw_intr_en_ap_int_rdata_out, 5'h0, interrupt_rectify_b_0_en_ap_int_rdata_out, interrupt_rectify_a_0_en_ap_int_rdata_out} ;
        16'h5c: gen_reg_core_ioa_rdata <= #1 {4'h0, interrupt_i2c_switch_done_rdata_out, interrupt_arb_bus_depth_0_rdata_out, interrupt_spi_switch_done_rdata_out, interrupt_arb_bus_dpc_0_rdata_out, interrupt_arb_bus_stdby_0_rdata_out, interrupt_pll_wait_cnt_dn_rdata_out, 4'h0, interrupt_i2c_slave_top_0_rdata_out, interrupt_fpga_uspi_firefox_rdata_out, interrupt_uspi_e_0_rdata_out, interrupt_spi_nor_rdata_out, interrupt_wpl_rdata_out, interrupt_ioa_rdata_out, interrupt_i2c_boot_rdata_out, interrupt_aio_rdata_out, interrupt_gpio_rdata_out, 1'h0, interrupt_sw_intr_rdata_out, 5'h0, interrupt_rectify_b_0_rdata_out, interrupt_rectify_a_0_rdata_out} ;
        16'h70: gen_reg_core_ioa_rdata <= #1 {10'h0, interrupt_pll_ext_rfslip_en_base_int8_rdata_out, interrupt_pll_ext_fbslip_en_base_int8_rdata_out, interrupt_pll_ext_lock_en_base_int8_rdata_out, 3'h0, interrupt_pll_var_rfslip_en_base_int8_rdata_out, interrupt_pll_fix_rfslip_en_base_int8_rdata_out, interrupt_pll_var_fbslip_en_base_int8_rdata_out, interrupt_pll_fix_fbslip_en_base_int8_rdata_out, interrupt_pll_var_lock_en_base_int8_rdata_out, interrupt_pll_fix_lock_en_base_int8_rdata_out, interrupt_ddr_cfg_en_base_int8_rdata_out, 6'h0, interrupt_dg_ca_a_0_en_base_int8_rdata_out, interrupt_dg_mcc_a_0_en_base_int8_rdata_out, interrupt_dp_top_a_0_en_base_int8_rdata_out} ;
        16'h74: gen_reg_core_ioa_rdata <= #1 {10'h0, interrupt_pll_ext_rfslip_en_ap_int_rdata_out, interrupt_pll_ext_fbslip_en_ap_int_rdata_out, interrupt_pll_ext_lock_en_ap_int_rdata_out, 3'h0, interrupt_pll_var_rfslip_en_ap_int_rdata_out, interrupt_pll_fix_rfslip_en_ap_int_rdata_out, interrupt_pll_var_fbslip_en_ap_int_rdata_out, interrupt_pll_fix_fbslip_en_ap_int_rdata_out, interrupt_pll_var_lock_en_ap_int_rdata_out, interrupt_pll_fix_lock_en_ap_int_rdata_out, interrupt_ddr_cfg_en_ap_int_rdata_out, 6'h0, interrupt_dg_ca_a_0_en_ap_int_rdata_out, interrupt_dg_mcc_a_0_en_ap_int_rdata_out, interrupt_dp_top_a_0_en_ap_int_rdata_out} ;
        16'h78: gen_reg_core_ioa_rdata <= #1 {10'h0, interrupt_pll_ext_rfslip_rdata_out, interrupt_pll_ext_fbslip_rdata_out, interrupt_pll_ext_lock_rdata_out, 3'h0, interrupt_pll_var_rfslip_rdata_out, interrupt_pll_fix_rfslip_rdata_out, interrupt_pll_var_fbslip_rdata_out, interrupt_pll_fix_fbslip_rdata_out, interrupt_pll_var_lock_rdata_out, interrupt_pll_fix_lock_rdata_out, interrupt_ddr_cfg_rdata_out, 6'h0, interrupt_dg_ca_a_0_rdata_out, interrupt_dg_mcc_a_0_rdata_out, interrupt_dp_top_a_0_rdata_out} ;
        16'h7c: gen_reg_core_ioa_rdata <= #1 {8'h0, interrupt_lsc_c_0_en_base_int10_rdata_out, interrupt_tx_line_merge_2l_d_0_en_base_int10_rdata_out, interrupt_tx_line_merge_2l_c_0_en_base_int10_rdata_out, interrupt_hdr_ae_a_1_en_base_int10_rdata_out, interrupt_hdr_ae_a_0_en_base_int10_rdata_out, 2'h0, interrupt_hdr_blending_a_0_en_base_int10_rdata_out, interrupt_hdr_interpolation_a_0_en_base_int10_rdata_out, interrupt_tx_line_merge_2l_b_0_en_base_int10_rdata_out, interrupt_tx_line_merge_2l_a_0_en_base_int10_rdata_out, interrupt_tx_top_en_base_int10_rdata_out, 3'h0, interrupt_rdn_b_0_en_base_int10_rdata_out, interrupt_rdn_a_0_en_base_int10_rdata_out, interrupt_rlb_b_0_en_base_int10_rdata_out, interrupt_rlb_a_0_en_base_int10_rdata_out, interrupt_bayer_binning_a_1_en_base_int10_rdata_out, interrupt_bayer_binning_a_0_en_base_int10_rdata_out, interrupt_id_det_a_1_en_base_int10_rdata_out, interrupt_id_det_a_0_en_base_int10_rdata_out, interrupt_hdr_top_en_base_int10_rdata_out} ;
        16'h80: gen_reg_core_ioa_rdata <= #1 {8'h0, interrupt_lsc_c_0_en_ap_int_rdata_out, interrupt_tx_line_merge_2l_d_0_en_ap_int_rdata_out, interrupt_tx_line_merge_2l_c_0_en_ap_int_rdata_out, interrupt_hdr_ae_a_1_en_ap_int_rdata_out, interrupt_hdr_ae_a_0_en_ap_int_rdata_out, 2'h0, interrupt_hdr_blending_a_0_en_ap_int_rdata_out, interrupt_hdr_interpolation_a_0_en_ap_int_rdata_out, interrupt_tx_line_merge_2l_b_0_en_ap_int_rdata_out, interrupt_tx_line_merge_2l_a_0_en_ap_int_rdata_out, interrupt_tx_top_en_ap_int_rdata_out, 3'h0, interrupt_rdn_b_0_en_ap_int_rdata_out, interrupt_rdn_a_0_en_ap_int_rdata_out, interrupt_rlb_b_0_en_ap_int_rdata_out, interrupt_rlb_a_0_en_ap_int_rdata_out, interrupt_bayer_binning_a_1_en_ap_int_rdata_out, interrupt_bayer_binning_a_0_en_ap_int_rdata_out, interrupt_id_det_a_1_en_ap_int_rdata_out, interrupt_id_det_a_0_en_ap_int_rdata_out, interrupt_hdr_top_en_ap_int_rdata_out} ;
        16'h84: gen_reg_core_ioa_rdata <= #1 {8'h0, interrupt_lsc_c_0_rdata_out, interrupt_tx_line_merge_2l_d_0_rdata_out, interrupt_tx_line_merge_2l_c_0_rdata_out, interrupt_hdr_ae_a_1_rdata_out, interrupt_hdr_ae_a_0_rdata_out, 2'h0, interrupt_hdr_blending_a_0_rdata_out, interrupt_hdr_interpolation_a_0_rdata_out, interrupt_tx_line_merge_2l_b_0_rdata_out, interrupt_tx_line_merge_2l_a_0_rdata_out, interrupt_tx_top_rdata_out, 3'h0, interrupt_rdn_b_0_rdata_out, interrupt_rdn_a_0_rdata_out, interrupt_rlb_b_0_rdata_out, interrupt_rlb_a_0_rdata_out, interrupt_bayer_binning_a_1_rdata_out, interrupt_bayer_binning_a_0_rdata_out, interrupt_id_det_a_1_rdata_out, interrupt_id_det_a_0_rdata_out, interrupt_hdr_top_rdata_out} ;
        16'h88: gen_reg_core_ioa_rdata <= #1 {5'h0, srampd_lvlumanr_b_top_0_rdata_out, srampd_mono_scl_a_1_rdata_out, srampd_mono_scl_a_0_rdata_out, 1'h0, srampd_depth_scl_up_a_0_rdata_out, 1'h0, srampd_decompress_b_0_rdata_out, srampd_decompress_a_0_rdata_out, srampd_compress_rotate_b_0_rdata_out, srampd_compress_rotate_a_0_rdata_out, 1'h0, srampd_y_bin_b_top_0_rdata_out, srampd_bayer_scl_a_1_rdata_out, srampd_bayer_scl_a_0_rdata_out, 2'h0, srampd_y_bin_a_1_rdata_out, srampd_y_bin_a_0_rdata_out, srampd_lvsharp_a_1_rdata_out, srampd_lvsharp_a_0_rdata_out, srampd_lsc_b_3_rdata_out, srampd_lsc_b_2_rdata_out, srampd_lvlumanr_a_1_rdata_out, srampd_lvlumanr_a_0_rdata_out, srampd_lvhwirp_top_b_0_rdata_out, srampd_lvhwirp_top_a_0_rdata_out, 1'h0} ;
        16'h8c: gen_reg_core_ioa_rdata <= #1 {9'h0, srampd_tx_top_out_mux_a_1_rdata_out, srampd_tx_top_out_mux_a_0_rdata_out, srampd_yuv420_444_a_0_rdata_out, 7'h0, srampd_uspi_a_0_rdata_out, 5'h0, srampd_two_pd_ws_a_0_rdata_out, srampd_ppc_a_0_rdata_out, srampd_abc_a_0_rdata_out, srampd_cbc_a_0_rdata_out, 1'h0, srampd_ppe_a_0_rdata_out, srampd_lsc_a_0_rdata_out} ;
        16'h90: gen_reg_core_ioa_rdata <= #1 {2'h0, srampd_idd_buffer_0_rdata_out, srampd_lzrw_a_0_rdata_out, 5'h0, srampd_base_arc_rdata_out, 3'h0, srampd_oc_ram_wrapper7_rdata_out, srampd_mipi_line_read_a_1_rdata_out, srampd_mipi_line_read_a_0_rdata_out, srampd_oc_ram_wrapper6_rdata_out, 2'h0, srampd_oc_ram_wrapper3_rdata_out, 2'h0, srampd_oc_ram_wrapper0_rdata_out, 2'h0, srampd_mipi_csi2_rx_0_rdata_out, 5'h0, srampd_mipi_csi2_tx_0_rdata_out} ;
        16'h94: gen_reg_core_ioa_rdata <= #1 {12'h0, srampd_rectify_b_0_rse_dma_out_rdata_out, srampd_rectify_a_0_rse_dma_out_rdata_out, srampd_i2c_slave_top_0_rdata_out, 1'h0, srampd_uspi_e_0_rdata_out, srampd_spi_nor_rdata_out, 14'h0} ;
        16'h98: gen_reg_core_ioa_rdata <= #1 {23'h0, srampd_dp_instag_h_rdata_out, srampd_dp_instag_l_rdata_out, srampd_dp_img_seg_rdata_out, srampd_dp_mid_rdata_out, srampd_dp_src_read_rdata_out, srampd_dp_mem_write_rdata_out, srampd_dg_ca_a_0_rdata_out, srampd_dg_mcc_a_0_rdata_out, 1'h0} ;
        16'h9c: gen_reg_core_ioa_rdata <= #1 {8'h0, srampd_lsc_c_0_rdata_out, srampd_tx_line_merge_2l_d_0_rdata_out, srampd_tx_line_merge_2l_c_0_rdata_out, srampd_hdr_ae_a_1_rdata_out, srampd_hdr_ae_a_0_rdata_out, 2'h0, srampd_hdr_blending_a_0_rdata_out, srampd_hdr_interpolation_a_0_rdata_out, srampd_tx_line_merge_2l_b_0_rdata_out, srampd_tx_line_merge_2l_a_0_rdata_out, 4'h0, srampd_rdn_b_0_rdata_out, srampd_rdn_a_0_rdata_out, srampd_rlb_b_0_rdata_out, srampd_rlb_a_0_rdata_out, srampd_bayer_binning_a_1_rdata_out, srampd_bayer_binning_a_0_rdata_out, srampd_id_det_a_1_rdata_out, srampd_id_det_a_0_rdata_out, 1'h0} ;
        16'ha0: gen_reg_core_ioa_rdata <= #1 {28'h0, iso_pd_irp_depth_rdata_out, iso_pd_hdr_rdata_out, iso_pd_dpc_rdata_out, iso_pd_standby_rdata_out} ;
        16'ha4: gen_reg_core_ioa_rdata <= #1 {28'h0, psw_pd_irp_depth_rdata_out, psw_pd_hdr_rdata_out, psw_pd_dpc_rdata_out, psw_pd_standby_rdata_out} ;
        16'ha8: gen_reg_core_ioa_rdata <= #1 {sw_intr_trigger_31_rdata_out, sw_intr_trigger_30_rdata_out, sw_intr_trigger_29_rdata_out, sw_intr_trigger_28_rdata_out, sw_intr_trigger_27_rdata_out, sw_intr_trigger_26_rdata_out, sw_intr_trigger_25_rdata_out, sw_intr_trigger_24_rdata_out, sw_intr_trigger_23_rdata_out, sw_intr_trigger_22_rdata_out, sw_intr_trigger_21_rdata_out, sw_intr_trigger_20_rdata_out, sw_intr_trigger_19_rdata_out, sw_intr_trigger_18_rdata_out, sw_intr_trigger_17_rdata_out, sw_intr_trigger_16_rdata_out, sw_intr_trigger_15_rdata_out, sw_intr_trigger_14_rdata_out, sw_intr_trigger_13_rdata_out, sw_intr_trigger_12_rdata_out, sw_intr_trigger_11_rdata_out, sw_intr_trigger_10_rdata_out, sw_intr_trigger_09_rdata_out, sw_intr_trigger_08_rdata_out, sw_intr_trigger_07_rdata_out, sw_intr_trigger_06_rdata_out, sw_intr_trigger_05_rdata_out, sw_intr_trigger_04_rdata_out, sw_intr_trigger_03_rdata_out, sw_intr_trigger_02_rdata_out, sw_intr_trigger_01_rdata_out, sw_intr_trigger_00_rdata_out} ;
        16'hb0: gen_reg_core_ioa_rdata <= #1 {sw_intr_level_31_en_interrupt_sw_intr_rdata_out, sw_intr_level_30_en_interrupt_sw_intr_rdata_out, sw_intr_level_29_en_interrupt_sw_intr_rdata_out, sw_intr_level_28_en_interrupt_sw_intr_rdata_out, sw_intr_level_27_en_interrupt_sw_intr_rdata_out, sw_intr_level_26_en_interrupt_sw_intr_rdata_out, sw_intr_level_25_en_interrupt_sw_intr_rdata_out, sw_intr_level_24_en_interrupt_sw_intr_rdata_out, sw_intr_level_23_en_interrupt_sw_intr_rdata_out, sw_intr_level_22_en_interrupt_sw_intr_rdata_out, sw_intr_level_21_en_interrupt_sw_intr_rdata_out, sw_intr_level_20_en_interrupt_sw_intr_rdata_out, sw_intr_level_19_en_interrupt_sw_intr_rdata_out, sw_intr_level_18_en_interrupt_sw_intr_rdata_out, sw_intr_level_17_en_interrupt_sw_intr_rdata_out, sw_intr_level_16_en_interrupt_sw_intr_rdata_out, sw_intr_level_15_en_interrupt_sw_intr_rdata_out, sw_intr_level_14_en_interrupt_sw_intr_rdata_out, sw_intr_level_13_en_interrupt_sw_intr_rdata_out, sw_intr_level_12_en_interrupt_sw_intr_rdata_out, sw_intr_level_11_en_interrupt_sw_intr_rdata_out, sw_intr_level_10_en_interrupt_sw_intr_rdata_out, sw_intr_level_09_en_interrupt_sw_intr_rdata_out, sw_intr_level_08_en_interrupt_sw_intr_rdata_out, sw_intr_level_07_en_interrupt_sw_intr_rdata_out, sw_intr_level_06_en_interrupt_sw_intr_rdata_out, sw_intr_level_05_en_interrupt_sw_intr_rdata_out, sw_intr_level_04_en_interrupt_sw_intr_rdata_out, sw_intr_level_03_en_interrupt_sw_intr_rdata_out, sw_intr_level_02_en_interrupt_sw_intr_rdata_out, sw_intr_level_01_en_interrupt_sw_intr_rdata_out, sw_intr_level_00_en_interrupt_sw_intr_rdata_out} ;
        16'hb4: gen_reg_core_ioa_rdata <= #1 {sw_intr_level_31_rdata_out, sw_intr_level_30_rdata_out, sw_intr_level_29_rdata_out, sw_intr_level_28_rdata_out, sw_intr_level_27_rdata_out, sw_intr_level_26_rdata_out, sw_intr_level_25_rdata_out, sw_intr_level_24_rdata_out, sw_intr_level_23_rdata_out, sw_intr_level_22_rdata_out, sw_intr_level_21_rdata_out, sw_intr_level_20_rdata_out, sw_intr_level_19_rdata_out, sw_intr_level_18_rdata_out, sw_intr_level_17_rdata_out, sw_intr_level_16_rdata_out, sw_intr_level_15_rdata_out, sw_intr_level_14_rdata_out, sw_intr_level_13_rdata_out, sw_intr_level_12_rdata_out, sw_intr_level_11_rdata_out, sw_intr_level_10_rdata_out, sw_intr_level_09_rdata_out, sw_intr_level_08_rdata_out, sw_intr_level_07_rdata_out, sw_intr_level_06_rdata_out, sw_intr_level_05_rdata_out, sw_intr_level_04_rdata_out, sw_intr_level_03_rdata_out, sw_intr_level_02_rdata_out, sw_intr_level_01_rdata_out, sw_intr_level_00_rdata_out} ;
        16'hf0: gen_reg_core_ioa_rdata <= #1 {22'h0, sys_conf_rdata_out} ;
        16'hf4: gen_reg_core_ioa_rdata <= #1 {22'h0, inv_sys_conf_rdata_out} ;
        16'hf8: gen_reg_core_ioa_rdata <= #1 {22'h0, current_bootstrap_value_rdata_out} ;
        16'h100: gen_reg_core_ioa_rdata <= #1 {30'h0, senif56_asyn_d16_1_softrst_rdata_out, senif56_asyn_d16_0_softrst_rdata_out} ;
        16'h208: gen_reg_core_ioa_rdata <= #1 {30'h0, mipi_tx_phy_if_1_test_mode0_rdata_out, 1'h0} ;
        16'h240: gen_reg_core_ioa_rdata <= #1 {31'h0, spi_debug_mode_control_rdata_out} ;
        16'h248: gen_reg_core_ioa_rdata <= #1 {31'h0, spi_switch_status_rdata_out} ;
        16'h250: gen_reg_core_ioa_rdata <= #1 {31'h0, i2c_debug_mode_control_rdata_out} ;
        16'h258: gen_reg_core_ioa_rdata <= #1 {31'h0, i2c_switch_status_rdata_out} ;
        16'h280: gen_reg_core_ioa_rdata <= #1 {31'h0, mipi_ppi_source_sel_1_rdata_out} ;
        16'h284: gen_reg_core_ioa_rdata <= #1 {31'h0, mipi_ppi_source_sel_0_rdata_out} ;
        16'h410: gen_reg_core_ioa_rdata <= #1 {31'h0, pll_wait_cnt_en_rdata_out} ;
        16'h414: gen_reg_core_ioa_rdata <= #1 {16'h0, pll_wait_cnt_cyc_rdata_out} ;
        16'h500: gen_reg_core_ioa_rdata <= #1 {17'h0, arasan_0_prbs_fail_rdata_out, mipi_slvds_rx_phy_if_1_error_status_out_rdata_out, mipi_slvds_rx_phy_if_1_dll_error_status_out_rdata_out, mipi_csi2_rx_1_ctl_error_status_out_rdata_out, mipi_csi2_rx_1_phy_error_status_out_rdata_out, isp_if_bridge_a_1_lookback_test_fail_rdata_out, isp_if_bridge_a_0_lookback_test_fail_rdata_out, ppi_bridge_a_1_lookback_test_ulps_mode_fail_rdata_out, ppi_bridge_a_1_lookback_test_hs_mode_fail_rdata_out, ppi_bridge_a_1_lookback_test_deskew_mode_fail_rdata_out, ppi_bridge_a_1_error_status_out_rdata_out, ppi_bridge_a_0_lookback_test_ulps_mode_fail_rdata_out, ppi_bridge_a_0_lookback_test_hs_mode_fail_rdata_out, ppi_bridge_a_0_lookback_test_deskew_mode_fail_rdata_out, ppi_bridge_a_0_error_status_out_rdata_out} ;
        16'hf00: gen_reg_core_ioa_rdata <= #1 {reg_version_rdata_out} ;
        default: gen_reg_core_ioa_rdata <= #1 32'b0 ;
      endcase 
  end 

endmodule
