module mipi_line_read_a_0_reg(
   //input
  input    wire             mipi_line_read_a_0_ip_clk     ,
  input    wire             mipi_line_read_a_0_ip_rst_n   ,
  input    wire             mipi_line_read_a_0_ioa_cs     ,
  input    wire  [12-1:0]   mipi_line_read_a_0_ioa_a      ,
  input    wire             mipi_line_read_a_0_ioa_rd     ,
  input    wire             mipi_line_read_a_0_ioa_wr     ,
  input    wire  [32-1:0]   mipi_line_read_a_0_ioa_wdata  ,
  input    wire             mipi_line_read_a_0_scan_en    ,
  input    wire             op_start_in                   ,
  input    wire             op_start_in_ctl               ,
  input    wire             in_op_done_in                 ,
  input    wire             dma_rst_ok_in                 ,
  input    wire             irp_abnormal_eop_in           ,
  //output
  output   wire             mipi_line_read_a_0_ioa_rdy    ,
  output   reg   [32-1:0]   mipi_line_read_a_0_ioa_rdata  ,
  output   wire             soft_rst_out                  ,
  output   wire             dma_soft_rst_out              ,
  output   wire             op_start_out                  ,
  output   wire  [4-1:0]    pack_format_out               ,
  output   wire             inverse_read_out              ,
  output   wire             sof_out_en_out                ,
  output   wire             lst_lin_out_en_out            ,
  output   wire  [2-1:0]    thru_mode_out                 ,
  output   wire  [32-1:0]   in_start_adr_out              ,
  output   wire  [32-1:0]   in_ring_min_adr_out           ,
  output   wire  [32-1:0]   in_ring_over_adr_out          ,
  output   wire  [16-1:0]   in_line_offset_out            ,
  output   wire  [13-1:0]   first_tile_width_out          ,
  output   wire  [13-1:0]   first_tile_height_out         ,
  output   wire             mipi_line_read_a_0_intr_interrupt,
  output   wire  [2-1:0]    r1_hwswap_reg_out             ,
  output   wire  [16-1:0]   frame_index_out               ,
  output   wire  [2-1:0]    raw10_pix_rem_out             ,
  output   wire  [16-1:0]   h_blank_num_out               ,
  output   wire  [16-1:0]   de_comp_0_size_out            ,
  output   wire             de_comp_0_bypass_out          ,
  output   wire  [2-1:0]    de_comp_0_seq_out             ,
  output   wire  [2-1:0]    de_comp_0_bit_out             ,
  output   wire  [3-1:0]    de_comp_0_ratio_out           ,
  output   wire             de_comp_0_thru_out            
);

  wire                      soft_rst_rdata_out  ;
  wire                      dma_soft_rst_rdata_out;
  wire                      op_start_rdata_out  ;
  wire          [4-1: 0]    pack_format_rdata_out;
  wire                      inverse_read_rdata_out;
  wire                      sof_out_en_rdata_out;
  wire                      lst_lin_out_en_rdata_out;
  wire          [2-1: 0]    thru_mode_rdata_out ;
  wire         [32-1: 0]    in_start_adr_rdata_out;
  wire         [32-1: 0]    in_ring_min_adr_rdata_out;
  wire         [32-1: 0]    in_ring_over_adr_rdata_out;
  wire         [16-1: 0]    in_line_offset_rdata_out;
  wire         [13-1: 0]    first_tile_width_rdata_out;
  wire         [13-1: 0]    first_tile_height_rdata_out;
  wire                      in_op_done_rdata_out;
  wire                      dma_rst_ok_rdata_out;
  wire                      irp_abnormal_eop_rdata_out;
  wire                      in_op_done_en_interrupt_rdata_out;
  wire                      dma_rst_ok_en_interrupt_rdata_out;
  wire                      irp_abnormal_eop_en_interrupt_rdata_out;
  wire          [2-1: 0]    r1_hwswap_reg_rdata_out;
  wire         [16-1: 0]    frame_index_rdata_out;
  wire          [2-1: 0]    raw10_pix_rem_rdata_out;
  wire         [16-1: 0]    h_blank_num_rdata_out;
  wire         [16-1: 0]    de_comp_0_size_rdata_out;
  wire                      de_comp_0_bypass_rdata_out;
  wire          [2-1: 0]    de_comp_0_seq_rdata_out;
  wire          [2-1: 0]    de_comp_0_bit_rdata_out;
  wire          [3-1: 0]    de_comp_0_ratio_rdata_out;
  wire                      de_comp_0_thru_rdata_out;
  wire         [32-1: 0]    reg_version_rdata_out;

  ip_io_rd KS_RdCtl(
    .ip_hrst    (~mipi_line_read_a_0_ip_rst_n),
    .ip_clk     (mipi_line_read_a_0_ip_clk),
    .ioa_cs     (mipi_line_read_a_0_ioa_cs),
    .ioa_rd     (mipi_line_read_a_0_ioa_rd),
    .ip_rd_wait (mipi_line_read_a_0_ip_rd_wait),
    .ip_rd_req  (ip_rd_req),
    .ip_rd_gnt  (ip_rd_gnt),
    .ip_rd_reg  (ip_rd_reg),
    .scan_en    (mipi_line_read_a_0_scan_en) 
  );

  ip_io_wr KS_WrCtl(
    .ip_hrst    (~mipi_line_read_a_0_ip_rst_n),
    .ip_clk     (mipi_line_read_a_0_ip_clk),
    .ioa_cs     (mipi_line_read_a_0_ioa_cs),
    .ioa_wr     (mipi_line_read_a_0_ioa_wr),
    .ip_wr_wait (mipi_line_read_a_0_ip_wr_wait),
    .ip_wr_req  (ip_wr_req),
    .ip_wr_gnt  (ip_wr_gnt),
    .ip_wr      (ip_wr),
    .scan_en    (mipi_line_read_a_0_scan_en) 
  );

  assign mipi_line_read_a_0_ioa_rdy = ~(mipi_line_read_a_0_ip_rd_wait | mipi_line_read_a_0_ip_wr_wait); 


  general_type_reg  #(
    .REGISTER_NAME      ("SOFT_RST"          ),
    .IOA_ADR_WIDTH      (12                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (12'h0               ),
    .FIELD_START_BIT    (0                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  soft_rst_0  (
    .ip_clk             (mipi_line_read_a_0_ip_clk),
    .ip_rst_n           (mipi_line_read_a_0_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (mipi_line_read_a_0_ioa_a),
    .ioa_wdata          (mipi_line_read_a_0_ioa_wdata),
    .reg_rdata_out      (soft_rst_rdata_out  ),
    .reg_out            (soft_rst_out        ) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("SOFT_RST"          ),
    .IOA_ADR_WIDTH      (12                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (12'h0               ),
    .FIELD_START_BIT    (1                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  dma_soft_rst_0  (
    .ip_clk             (mipi_line_read_a_0_ip_clk),
    .ip_rst_n           (mipi_line_read_a_0_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (mipi_line_read_a_0_ioa_a),
    .ioa_wdata          (mipi_line_read_a_0_ioa_wdata),
    .reg_rdata_out      (dma_soft_rst_rdata_out),
    .reg_out            (dma_soft_rst_out    ) 
  );

  update_type_reg  #(
    .REGISTER_NAME      ("OP_START"          ),
    .IOA_ADR_WIDTH      (12                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (12'h4               ),
    .FIELD_START_BIT    (0                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ),
    .SUB_TYPE           ("rw_cpu"            ) 
  )
  op_start_0  (
    .ip_clk             (mipi_line_read_a_0_ip_clk),
    .ip_rst_n           (mipi_line_read_a_0_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .update_in          (op_start_in         ),
    .update_ctl         (op_start_in_ctl     ),
    .ioa_a              (mipi_line_read_a_0_ioa_a),
    .ioa_wdata          (mipi_line_read_a_0_ioa_wdata),
    .reg_rdata_out      (op_start_rdata_out  ),
    .reg_out            (op_start_out        ) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("MIPI_LINE_READ_CTL"),
    .IOA_ADR_WIDTH      (12                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (4                   ),
    .FIELD_OFFSET       (12'h8               ),
    .FIELD_START_BIT    (0                   ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (4'h0                ),
    .SUB_TYPE           ("rw"                ) 
  )
  pack_format_0  (
    .ip_clk             (mipi_line_read_a_0_ip_clk),
    .ip_rst_n           (mipi_line_read_a_0_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (mipi_line_read_a_0_ioa_a),
    .ioa_wdata          (mipi_line_read_a_0_ioa_wdata),
    .reg_rdata_out      (pack_format_rdata_out),
    .reg_out            (pack_format_out     ) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("MIPI_LINE_READ_CTL"),
    .IOA_ADR_WIDTH      (12                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (12'h8               ),
    .FIELD_START_BIT    (4                   ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h0                ),
    .SUB_TYPE           ("rw"                ) 
  )
  inverse_read_0  (
    .ip_clk             (mipi_line_read_a_0_ip_clk),
    .ip_rst_n           (mipi_line_read_a_0_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (mipi_line_read_a_0_ioa_a),
    .ioa_wdata          (mipi_line_read_a_0_ioa_wdata),
    .reg_rdata_out      (inverse_read_rdata_out),
    .reg_out            (inverse_read_out    ) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("MIPI_LINE_READ_CTL"),
    .IOA_ADR_WIDTH      (12                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (12'h8               ),
    .FIELD_START_BIT    (6                   ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  sof_out_en_0  (
    .ip_clk             (mipi_line_read_a_0_ip_clk),
    .ip_rst_n           (mipi_line_read_a_0_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (mipi_line_read_a_0_ioa_a),
    .ioa_wdata          (mipi_line_read_a_0_ioa_wdata),
    .reg_rdata_out      (sof_out_en_rdata_out),
    .reg_out            (sof_out_en_out      ) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("MIPI_LINE_READ_CTL"),
    .IOA_ADR_WIDTH      (12                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (12'h8               ),
    .FIELD_START_BIT    (7                   ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("rw"                ) 
  )
  lst_lin_out_en_0  (
    .ip_clk             (mipi_line_read_a_0_ip_clk),
    .ip_rst_n           (mipi_line_read_a_0_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (mipi_line_read_a_0_ioa_a),
    .ioa_wdata          (mipi_line_read_a_0_ioa_wdata),
    .reg_rdata_out      (lst_lin_out_en_rdata_out),
    .reg_out            (lst_lin_out_en_out  ) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("MIPI_LINE_READ_CTL"),
    .IOA_ADR_WIDTH      (12                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (2                   ),
    .FIELD_OFFSET       (12'h8               ),
    .FIELD_START_BIT    (8                   ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (2'h2                ),
    .SUB_TYPE           ("r"                 ) 
  )
  thru_mode_0  (
    .ip_clk             (mipi_line_read_a_0_ip_clk),
    .ip_rst_n           (mipi_line_read_a_0_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (mipi_line_read_a_0_ioa_a),
    .ioa_wdata          (mipi_line_read_a_0_ioa_wdata),
    .reg_rdata_out      (thru_mode_rdata_out ),
    .reg_out            (thru_mode_out       ) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("IN_BASE_ADR"       ),
    .IOA_ADR_WIDTH      (12                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (32                  ),
    .FIELD_OFFSET       (12'hc               ),
    .FIELD_START_BIT    (0                   ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (32'h0               ),
    .SUB_TYPE           ("rw"                ) 
  )
  in_start_adr_0  (
    .ip_clk             (mipi_line_read_a_0_ip_clk),
    .ip_rst_n           (mipi_line_read_a_0_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (mipi_line_read_a_0_ioa_a),
    .ioa_wdata          (mipi_line_read_a_0_ioa_wdata),
    .reg_rdata_out      (in_start_adr_rdata_out),
    .reg_out            (in_start_adr_out    ) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("IN_RING_MIN"       ),
    .IOA_ADR_WIDTH      (12                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (32                  ),
    .FIELD_OFFSET       (12'h10              ),
    .FIELD_START_BIT    (0                   ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (32'h0               ),
    .SUB_TYPE           ("rw"                ) 
  )
  in_ring_min_adr_0  (
    .ip_clk             (mipi_line_read_a_0_ip_clk),
    .ip_rst_n           (mipi_line_read_a_0_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (mipi_line_read_a_0_ioa_a),
    .ioa_wdata          (mipi_line_read_a_0_ioa_wdata),
    .reg_rdata_out      (in_ring_min_adr_rdata_out),
    .reg_out            (in_ring_min_adr_out ) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("IN_RING_OVER"      ),
    .IOA_ADR_WIDTH      (12                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (32                  ),
    .FIELD_OFFSET       (12'h14              ),
    .FIELD_START_BIT    (0                   ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (32'h0               ),
    .SUB_TYPE           ("rw"                ) 
  )
  in_ring_over_adr_0  (
    .ip_clk             (mipi_line_read_a_0_ip_clk),
    .ip_rst_n           (mipi_line_read_a_0_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (mipi_line_read_a_0_ioa_a),
    .ioa_wdata          (mipi_line_read_a_0_ioa_wdata),
    .reg_rdata_out      (in_ring_over_adr_rdata_out),
    .reg_out            (in_ring_over_adr_out) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("IN_LINE_OFFSET"    ),
    .IOA_ADR_WIDTH      (12                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (16                  ),
    .FIELD_OFFSET       (12'h18              ),
    .FIELD_START_BIT    (0                   ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (16'h0               ),
    .SUB_TYPE           ("rw"                ) 
  )
  in_line_offset_0  (
    .ip_clk             (mipi_line_read_a_0_ip_clk),
    .ip_rst_n           (mipi_line_read_a_0_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (mipi_line_read_a_0_ioa_a),
    .ioa_wdata          (mipi_line_read_a_0_ioa_wdata),
    .reg_rdata_out      (in_line_offset_rdata_out),
    .reg_out            (in_line_offset_out  ) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("IN_SIZE"           ),
    .IOA_ADR_WIDTH      (12                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (13                  ),
    .FIELD_OFFSET       (12'h1c              ),
    .FIELD_START_BIT    (0                   ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (13'h0               ),
    .SUB_TYPE           ("rw"                ) 
  )
  first_tile_width_0  (
    .ip_clk             (mipi_line_read_a_0_ip_clk),
    .ip_rst_n           (mipi_line_read_a_0_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (mipi_line_read_a_0_ioa_a),
    .ioa_wdata          (mipi_line_read_a_0_ioa_wdata),
    .reg_rdata_out      (first_tile_width_rdata_out),
    .reg_out            (first_tile_width_out) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("IN_SIZE"           ),
    .IOA_ADR_WIDTH      (12                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (13                  ),
    .FIELD_OFFSET       (12'h1c              ),
    .FIELD_START_BIT    (16                  ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (13'h0               ),
    .SUB_TYPE           ("rw"                ) 
  )
  first_tile_height_0  (
    .ip_clk             (mipi_line_read_a_0_ip_clk),
    .ip_rst_n           (mipi_line_read_a_0_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (mipi_line_read_a_0_ioa_a),
    .ioa_wdata          (mipi_line_read_a_0_ioa_wdata),
    .reg_rdata_out      (first_tile_height_rdata_out),
    .reg_out            (first_tile_height_out) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS"        ),
    .IOA_ADR_WIDTH      (12                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (12'h20              ),
    .FIELD_START_BIT    (0                   ),
    .SUB_TYPE           ("posedge"           ) 
  )
  in_op_done_0  (
    .ip_clk             (mipi_line_read_a_0_ip_clk),
    .ip_rst_n           (mipi_line_read_a_0_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (mipi_line_read_a_0_ioa_a),
    .ioa_wdata          (mipi_line_read_a_0_ioa_wdata),
    .int_in             (in_op_done_in       ),
    .reg_rdata_out      (in_op_done_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS"        ),
    .IOA_ADR_WIDTH      (12                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (12'h20              ),
    .FIELD_START_BIT    (1                   ),
    .SUB_TYPE           ("posedge"           ) 
  )
  dma_rst_ok_0  (
    .ip_clk             (mipi_line_read_a_0_ip_clk),
    .ip_rst_n           (mipi_line_read_a_0_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (mipi_line_read_a_0_ioa_a),
    .ioa_wdata          (mipi_line_read_a_0_ioa_wdata),
    .int_in             (dma_rst_ok_in       ),
    .reg_rdata_out      (dma_rst_ok_rdata_out),
    .reg_out            (                    ) 
  );

  int_status_type_reg  #(
    .REGISTER_NAME      ("INT_STATUS"        ),
    .IOA_ADR_WIDTH      (12                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (12'h20              ),
    .FIELD_START_BIT    (2                   ),
    .SUB_TYPE           ("posedge"           ) 
  )
  irp_abnormal_eop_0  (
    .ip_clk             (mipi_line_read_a_0_ip_clk),
    .ip_rst_n           (mipi_line_read_a_0_ip_rst_n),
    .ip_wr_req          (ip_wr_req           ),
    .ioa_a              (mipi_line_read_a_0_ioa_a),
    .ioa_wdata          (mipi_line_read_a_0_ioa_wdata),
    .int_in             (irp_abnormal_eop_in ),
    .reg_rdata_out      (irp_abnormal_eop_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_CTL"           ),
    .IOA_ADR_WIDTH      (12                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (12'h24              ),
    .FIELD_START_BIT    (0                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  in_op_done_en_in_op_done_en_interrupt_0  (
    .ip_clk             (mipi_line_read_a_0_ip_clk),
    .ip_rst_n           (mipi_line_read_a_0_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (mipi_line_read_a_0_ioa_a),
    .ioa_wdata          (mipi_line_read_a_0_ioa_wdata),
    .int_line_en        (in_op_done_en_interrupt),
    .reg_rdata_out      (in_op_done_en_interrupt_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_CTL"           ),
    .IOA_ADR_WIDTH      (12                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (12'h24              ),
    .FIELD_START_BIT    (1                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  dma_rst_ok_en_dma_rst_ok_en_interrupt_0  (
    .ip_clk             (mipi_line_read_a_0_ip_clk),
    .ip_rst_n           (mipi_line_read_a_0_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (mipi_line_read_a_0_ioa_a),
    .ioa_wdata          (mipi_line_read_a_0_ioa_wdata),
    .int_line_en        (dma_rst_ok_en_interrupt),
    .reg_rdata_out      (dma_rst_ok_en_interrupt_rdata_out),
    .reg_out            (                    ) 
  );

  int_enable_type_reg  #(
    .REGISTER_NAME      ("INT_CTL"           ),
    .IOA_ADR_WIDTH      (12                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_OFFSET       (12'h24              ),
    .FIELD_START_BIT    (2                   ),
    .MULTI_CYCLE        (0                   ),
    .DEFAULT_VALUE      (1'h0                ) 
  )
  irp_abnormal_eop_en_irp_abnormal_eop_en_interrupt_0  (
    .ip_clk             (mipi_line_read_a_0_ip_clk),
    .ip_rst_n           (mipi_line_read_a_0_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (mipi_line_read_a_0_ioa_a),
    .ioa_wdata          (mipi_line_read_a_0_ioa_wdata),
    .int_line_en        (irp_abnormal_eop_en_interrupt),
    .reg_rdata_out      (irp_abnormal_eop_en_interrupt_rdata_out),
    .reg_out            (                    ) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("DMA_SWAP"          ),
    .IOA_ADR_WIDTH      (12                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (2                   ),
    .FIELD_OFFSET       (12'h2c              ),
    .FIELD_START_BIT    (0                   ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (2'h0                ),
    .SUB_TYPE           ("rw"                ) 
  )
  r1_hwswap_reg_0  (
    .ip_clk             (mipi_line_read_a_0_ip_clk),
    .ip_rst_n           (mipi_line_read_a_0_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (mipi_line_read_a_0_ioa_a),
    .ioa_wdata          (mipi_line_read_a_0_ioa_wdata),
    .reg_rdata_out      (r1_hwswap_reg_rdata_out),
    .reg_out            (r1_hwswap_reg_out   ) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("FRAME_INDEX"       ),
    .IOA_ADR_WIDTH      (12                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (16                  ),
    .FIELD_OFFSET       (12'h30              ),
    .FIELD_START_BIT    (0                   ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (16'h0               ),
    .SUB_TYPE           ("rw"                ) 
  )
  frame_index_0  (
    .ip_clk             (mipi_line_read_a_0_ip_clk),
    .ip_rst_n           (mipi_line_read_a_0_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (mipi_line_read_a_0_ioa_a),
    .ioa_wdata          (mipi_line_read_a_0_ioa_wdata),
    .reg_rdata_out      (frame_index_rdata_out),
    .reg_out            (frame_index_out     ) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("HRAW10_CTL"        ),
    .IOA_ADR_WIDTH      (12                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (2                   ),
    .FIELD_OFFSET       (12'h34              ),
    .FIELD_START_BIT    (0                   ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (2'h0                ),
    .SUB_TYPE           ("rw"                ) 
  )
  raw10_pix_rem_0  (
    .ip_clk             (mipi_line_read_a_0_ip_clk),
    .ip_rst_n           (mipi_line_read_a_0_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (mipi_line_read_a_0_ioa_a),
    .ioa_wdata          (mipi_line_read_a_0_ioa_wdata),
    .reg_rdata_out      (raw10_pix_rem_rdata_out),
    .reg_out            (raw10_pix_rem_out   ) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("H_BLANK_CTL"       ),
    .IOA_ADR_WIDTH      (12                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (16                  ),
    .FIELD_OFFSET       (12'h38              ),
    .FIELD_START_BIT    (0                   ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (16'h0               ),
    .SUB_TYPE           ("rw"                ) 
  )
  h_blank_num_0  (
    .ip_clk             (mipi_line_read_a_0_ip_clk),
    .ip_rst_n           (mipi_line_read_a_0_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (mipi_line_read_a_0_ioa_a),
    .ioa_wdata          (mipi_line_read_a_0_ioa_wdata),
    .reg_rdata_out      (h_blank_num_rdata_out),
    .reg_out            (h_blank_num_out     ) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("DECOMPRESS_0"      ),
    .IOA_ADR_WIDTH      (12                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (16                  ),
    .FIELD_OFFSET       (12'h40              ),
    .FIELD_START_BIT    (0                   ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (16'h0               ),
    .SUB_TYPE           ("r"                 ) 
  )
  de_comp_0_size_0  (
    .ip_clk             (mipi_line_read_a_0_ip_clk),
    .ip_rst_n           (mipi_line_read_a_0_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (mipi_line_read_a_0_ioa_a),
    .ioa_wdata          (mipi_line_read_a_0_ioa_wdata),
    .reg_rdata_out      (de_comp_0_size_rdata_out),
    .reg_out            (de_comp_0_size_out  ) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("DECOMPRESS_0"      ),
    .IOA_ADR_WIDTH      (12                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (12'h40              ),
    .FIELD_START_BIT    (16                  ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h1                ),
    .SUB_TYPE           ("r"                 ) 
  )
  de_comp_0_bypass_0  (
    .ip_clk             (mipi_line_read_a_0_ip_clk),
    .ip_rst_n           (mipi_line_read_a_0_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (mipi_line_read_a_0_ioa_a),
    .ioa_wdata          (mipi_line_read_a_0_ioa_wdata),
    .reg_rdata_out      (de_comp_0_bypass_rdata_out),
    .reg_out            (de_comp_0_bypass_out) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("DECOMPRESS_0"      ),
    .IOA_ADR_WIDTH      (12                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (2                   ),
    .FIELD_OFFSET       (12'h40              ),
    .FIELD_START_BIT    (20                  ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (2'h0                ),
    .SUB_TYPE           ("r"                 ) 
  )
  de_comp_0_seq_0  (
    .ip_clk             (mipi_line_read_a_0_ip_clk),
    .ip_rst_n           (mipi_line_read_a_0_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (mipi_line_read_a_0_ioa_a),
    .ioa_wdata          (mipi_line_read_a_0_ioa_wdata),
    .reg_rdata_out      (de_comp_0_seq_rdata_out),
    .reg_out            (de_comp_0_seq_out   ) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("DECOMPRESS_0"      ),
    .IOA_ADR_WIDTH      (12                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (2                   ),
    .FIELD_OFFSET       (12'h40              ),
    .FIELD_START_BIT    (22                  ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (2'h0                ),
    .SUB_TYPE           ("r"                 ) 
  )
  de_comp_0_bit_0  (
    .ip_clk             (mipi_line_read_a_0_ip_clk),
    .ip_rst_n           (mipi_line_read_a_0_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (mipi_line_read_a_0_ioa_a),
    .ioa_wdata          (mipi_line_read_a_0_ioa_wdata),
    .reg_rdata_out      (de_comp_0_bit_rdata_out),
    .reg_out            (de_comp_0_bit_out   ) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("DECOMPRESS_0"      ),
    .IOA_ADR_WIDTH      (12                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (3                   ),
    .FIELD_OFFSET       (12'h40              ),
    .FIELD_START_BIT    (24                  ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (3'h0                ),
    .SUB_TYPE           ("r"                 ) 
  )
  de_comp_0_ratio_0  (
    .ip_clk             (mipi_line_read_a_0_ip_clk),
    .ip_rst_n           (mipi_line_read_a_0_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (mipi_line_read_a_0_ioa_a),
    .ioa_wdata          (mipi_line_read_a_0_ioa_wdata),
    .reg_rdata_out      (de_comp_0_ratio_rdata_out),
    .reg_out            (de_comp_0_ratio_out ) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("DECOMPRESS_0"      ),
    .IOA_ADR_WIDTH      (12                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (1                   ),
    .FIELD_OFFSET       (12'h40              ),
    .FIELD_START_BIT    (28                  ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (1'h0                ),
    .SUB_TYPE           ("r"                 ) 
  )
  de_comp_0_thru_0  (
    .ip_clk             (mipi_line_read_a_0_ip_clk),
    .ip_rst_n           (mipi_line_read_a_0_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (mipi_line_read_a_0_ioa_a),
    .ioa_wdata          (mipi_line_read_a_0_ioa_wdata),
    .reg_rdata_out      (de_comp_0_thru_rdata_out),
    .reg_out            (de_comp_0_thru_out  ) 
  );

  general_type_reg  #(
    .REGISTER_NAME      ("REG_VERSION"       ),
    .IOA_ADR_WIDTH      (12                  ),
    .IOA_DATA_WIDTH     (32                  ),
    .FIELD_SIZE         (32                  ),
    .FIELD_OFFSET       (12'h50              ),
    .FIELD_START_BIT    (0                   ),
    .MULTI_CYCLE        (2                   ),
    .DEFAULT_VALUE      (32'h1               ),
    .SUB_TYPE           ("r"                 ) 
  )
  reg_version_0  (
    .ip_clk             (mipi_line_read_a_0_ip_clk),
    .ip_rst_n           (mipi_line_read_a_0_ip_rst_n),
    .ip_wr              (ip_wr               ),
    .ioa_a              (mipi_line_read_a_0_ioa_a),
    .ioa_wdata          (mipi_line_read_a_0_ioa_wdata),
    .reg_rdata_out      (reg_version_rdata_out),
    .reg_out            (                    ) 
  );


  // interrupt line
  assign mipi_line_read_a_0_intr_interrupt = 
    (in_op_done_rdata_out & in_op_done_en_interrupt) |
    (dma_rst_ok_rdata_out & dma_rst_ok_en_interrupt) |
    (irp_abnormal_eop_rdata_out & irp_abnormal_eop_en_interrupt)   ;

  // ip_wr_gnt
  assign ip_rd_gnt = 
    ip_rd_req  ;

  // ip_wr_gnt
  assign ip_wr_gnt = 
    ip_wr_req  ;

  // ioa_rdata
  always @ (posedge mipi_line_read_a_0_ip_clk or negedge mipi_line_read_a_0_ip_rst_n) begin
    if (~mipi_line_read_a_0_ip_rst_n) 
      mipi_line_read_a_0_ioa_rdata <= #1 32'b0;
    else if (ip_rd_reg) 
      case (mipi_line_read_a_0_ioa_a) //synopsys parallel_case 
        16'h0: mipi_line_read_a_0_ioa_rdata <= #1 {30'h0, dma_soft_rst_rdata_out, soft_rst_rdata_out} ;
        16'h4: mipi_line_read_a_0_ioa_rdata <= #1 {31'h0, op_start_rdata_out} ;
        16'h8: mipi_line_read_a_0_ioa_rdata <= #1 {22'h0, thru_mode_rdata_out, lst_lin_out_en_rdata_out, sof_out_en_rdata_out, 1'h0, inverse_read_rdata_out, pack_format_rdata_out} ;
        16'hc: mipi_line_read_a_0_ioa_rdata <= #1 {in_start_adr_rdata_out} ;
        16'h10: mipi_line_read_a_0_ioa_rdata <= #1 {in_ring_min_adr_rdata_out} ;
        16'h14: mipi_line_read_a_0_ioa_rdata <= #1 {in_ring_over_adr_rdata_out} ;
        16'h18: mipi_line_read_a_0_ioa_rdata <= #1 {16'h0, in_line_offset_rdata_out} ;
        16'h1c: mipi_line_read_a_0_ioa_rdata <= #1 {3'h0, first_tile_height_rdata_out, 3'h0, first_tile_width_rdata_out} ;
        16'h20: mipi_line_read_a_0_ioa_rdata <= #1 {29'h0, irp_abnormal_eop_rdata_out, dma_rst_ok_rdata_out, in_op_done_rdata_out} ;
        16'h24: mipi_line_read_a_0_ioa_rdata <= #1 {29'h0, irp_abnormal_eop_en_interrupt_rdata_out, dma_rst_ok_en_interrupt_rdata_out, in_op_done_en_interrupt_rdata_out} ;
        16'h2c: mipi_line_read_a_0_ioa_rdata <= #1 {30'h0, r1_hwswap_reg_rdata_out} ;
        16'h30: mipi_line_read_a_0_ioa_rdata <= #1 {16'h0, frame_index_rdata_out} ;
        16'h34: mipi_line_read_a_0_ioa_rdata <= #1 {30'h0, raw10_pix_rem_rdata_out} ;
        16'h38: mipi_line_read_a_0_ioa_rdata <= #1 {16'h0, h_blank_num_rdata_out} ;
        16'h40: mipi_line_read_a_0_ioa_rdata <= #1 {3'h0, de_comp_0_thru_rdata_out, 1'h0, de_comp_0_ratio_rdata_out, de_comp_0_bit_rdata_out, de_comp_0_seq_rdata_out, 3'h0, de_comp_0_bypass_rdata_out, de_comp_0_size_rdata_out} ;
        16'h50: mipi_line_read_a_0_ioa_rdata <= #1 {reg_version_rdata_out} ;
        default: mipi_line_read_a_0_ioa_rdata <= #1 32'b0 ;
      endcase 
  end 

endmodule
