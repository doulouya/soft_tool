module mipi_line_read_a #(
    parameter DATA_W          = 12,
              DATA_THRU       = 4 ,
              MAX_DATA_THRU   = 4 ,
              DE_COMP_S_TYPE  = 0 , // 0: Bayer, 1: YCC
              DE_COMP_EN      = 0 ,
              MEM_DEPTH_W     = 6 ,
              DATA_VBUS_W     = DATA_W*DATA_THRU,
              MAX_DATA_VBUS_W = DATA_W*MAX_DATA_THRU,
              dt              = 1
)(
input                        clk_kernel,
input                        rst_n_kernel,
input                        clk_arb,
input                        rst_n_arb,
input                        raw_rst_n,
// to back
input                        eff48_m_0_req,
output                       eff48_m_0_rdy,
output      [DATA_W-1:0]     eff48_m_0_data_0,
output      [DATA_W-1:0]     eff48_m_0_data_1,
output      [DATA_W-1:0]     eff48_m_0_data_2,
output      [DATA_W-1:0]     eff48_m_0_data_3,
output                       eff48_m_0_veff,
output                       eff48_m_0_heff,
output                       eff48_m_0_sof,
output      [15:0]           eff48_m_0_fidx,
// IOA
input                        ioa_cs,            
input                        ioa_wr,            
input                        ioa_rd,            
input       [11:0]           ioa_a,           
input       [31:0]           ioa_wdata,
output                       ioa_rdy,
output      [31:0]           ioa_rdata,        
// other signal
input                        srampd,
input                        scan_en, 
//BVCI output   
output                       bvci64_m_0_cmdval,      
output      [31:0]           bvci64_m_0_addr,           
output      [7:0]            bvci64_m_0_be,              
output      [1:0]            bvci64_m_0_cmd,              
output      [63:0]           bvci64_m_0_wdata,
output                       bvci64_m_0_eop,
output                       bvci64_m_0_rspack,
//BVCI input  
input       [63:0]           bvci64_m_0_rdata,
input                        bvci64_m_0_cmdack,             
input                        bvci64_m_0_rspval,            
input                        bvci64_m_0_reop,
// interrupt
output                       interrupt
);
      
reg     [MAX_DATA_VBUS_W-1:0]    align_tr_data;
wire    [MAX_DATA_VBUS_W-1:0]    eff48_m_0_data;

// tile read
reg     [31:0]    tr_pack_format;
wire              tr_soft_rst; 
wire              tr_req ; 
wire              tr_rdy ; 
wire    [63:0]    tr_data; 
wire              tr_last_line;     
wire              tr_last_pix;   
wire              in_op_done;

wire              r1_dma_req;         
wire    [31:0]    r1_dma_adr;         
wire     [7:0]    r1_dma_burst_size;  
wire              r1_dma_ack;        
wire              r1_dma_rspval;        
wire    [63:0]    r1_dma_rdata;       
   
wire                         mem_we_n   ;
wire    [MEM_DEPTH_W-1:0]    mem_we_adr ;
wire    [63:0]               mem_we_data;
wire                         mem_rd_n   ;
wire    [MEM_DEPTH_W-1:0]    mem_rd_adr ;
wire    [63:0]               mem_rd_data;

//register bank 
wire              kernel_soft_rst;  
wire              dma_soft_rst;                    
wire              rg_op_start;                      
wire     [3:0]    rg_pack_format;
wire              rg_inverse_read;
wire     [1:0]    rg_thru_mode;
wire              rg_sof_out_en;  
wire              rg_lst_lin_out_en;   
wire     [1:0]    rg_raw10_pix_rem;
wire    [15:0]    rg_h_blank_num ;                
wire    [31:0]    rg_in_start_adr ;                
wire    [31:0]    rg_in_ring_min_adr;          
wire    [31:0]    rg_in_ring_over_adr;         
wire    [15:0]    rg_in_line_offset;                                                 
wire    [12:0]    rg_first_tile_width ;                                    
wire    [12:0]    rg_first_tile_height;                                         
wire     [1:0]    rg_r1_hwswap_reg; 
wire    [15:0]    rg_frame_idx;             
wire              dma_rst_ok;
wire              irp_abnormal_eop;

// decompression setting
wire    [15:0]    rg_de_comp_0_size  ;
wire              rg_de_comp_0_bypass;
wire    [1:0]     rg_de_comp_0_seq   ;
wire    [1:0]     rg_de_comp_0_bit   ;
wire    [2:0]     rg_de_comp_0_ratio ;
wire              rg_de_comp_0_thru  ;

wire              eol_vld = rg_lst_lin_out_en & tr_last_line;

assign eff48_m_0_sof = rg_op_start & rg_sof_out_en;
assign eff48_m_0_fidx = rg_frame_idx;  
 
assign {
        eff48_m_0_data_3, 
        eff48_m_0_data_2, 
        eff48_m_0_data_1, 
        eff48_m_0_data_0  
       } = eff48_m_0_data;
          
conv_eol_to_eff_hb #(
    .dat_w(DATA_VBUS_W),
    .dt(dt) 
) conv_eol_to_eff_hb_0 (
   .clk          (clk_kernel                     ),                     
   .rst          (~rst_n_kernel                  ),                     
   .soft_rst     (kernel_soft_rst                ), 
   .op_start     (rg_op_start                    ),                 
   .h_blank_num  (rg_h_blank_num                 ),                 
   .dat          (align_tr_data[DATA_VBUS_W-1:0] ),
   .eop          (tr_last_pix                    ),
   .eol          (eol_vld                        ),
   .req_out      (tr_req                         ),            
   .rdy_in       (tr_rdy                         ),
   .req_in       (eff48_m_0_req                  ),
   .rdy_out      (eff48_m_0_rdy                  ),
   .dout         (eff48_m_0_data                 ),
   .heff_out     (eff48_m_0_heff                 ),
   .veff_out     (eff48_m_0_veff                 )                
);

always@(*) begin
    tr_pack_format = 0;
    case(DATA_THRU)
        2 : begin
            case(rg_thru_mode)
                2'd0 : begin
                    case(rg_pack_format)
                        4'd0    : tr_pack_format[0]  = 1'b1;
                        4'd1    : tr_pack_format[1]  = 1'b1;
                        4'd2    : tr_pack_format[2]  = 1'b1;
                        4'd3    : tr_pack_format[3]  = 1'b1;
                        4'd4    : tr_pack_format[4]  = 1'b1;
                        4'd5    : tr_pack_format[13] = 1'b1;
                        4'd6    : tr_pack_format[16] = 1'b1;
                        default : tr_pack_format[0]  = 1'b1;
                    endcase
                end
                default : begin
                    case(rg_pack_format)
                        4'd0    : tr_pack_format[4]  = 1'b1;
                        4'd1    : tr_pack_format[5]  = 1'b1;
                        4'd2    : tr_pack_format[6]  = 1'b1;
                        4'd3    : tr_pack_format[7]  = 1'b1;
                        4'd4    : tr_pack_format[8]  = 1'b1;
                        4'd5    : tr_pack_format[14] = 1'b1;
                        4'd6    : tr_pack_format[17] = 1'b1;
                        default : tr_pack_format[4]  = 1'b1;
                    endcase
                end
            endcase
        end
        default : begin
            case(rg_thru_mode)
                2'd0 : begin
                    case(rg_pack_format)
                        4'd0    : tr_pack_format[0]  = 1'b1;
                        4'd1    : tr_pack_format[1]  = 1'b1;
                        4'd2    : tr_pack_format[2]  = 1'b1;
                        4'd3    : tr_pack_format[3]  = 1'b1;
                        4'd4    : tr_pack_format[4]  = 1'b1;
                        4'd5    : tr_pack_format[13] = 1'b1;
                        4'd6    : tr_pack_format[16] = 1'b1;
                        default : tr_pack_format[0]  = 1'b1;
                    endcase
                end
                2'd1 : begin
                    case(rg_pack_format)
                        4'd0    : tr_pack_format[4]  = 1'b1;
                        4'd1    : tr_pack_format[5]  = 1'b1;
                        4'd2    : tr_pack_format[6]  = 1'b1;
                        4'd3    : tr_pack_format[7]  = 1'b1;
                        4'd4    : tr_pack_format[8]  = 1'b1;
                        4'd5    : tr_pack_format[14] = 1'b1;
                        4'd6    : tr_pack_format[17] = 1'b1;
                        default : tr_pack_format[4]  = 1'b1;
                    endcase
                end
                default : begin
                    case(rg_pack_format)
                        4'd0    : tr_pack_format[8]  = 1'b1;
                        4'd1    : tr_pack_format[9]  = 1'b1;
                        4'd2    : tr_pack_format[10] = 1'b1;
                        4'd3    : tr_pack_format[11] = 1'b1;
                        4'd4    : tr_pack_format[12] = 1'b1;
                        4'd5    : tr_pack_format[15] = 1'b1;
                        4'd6    : tr_pack_format[18] = 1'b1;
                        default : tr_pack_format[8]  = 1'b1;
                    endcase
                end
            endcase
        end
    endcase
end

generate
    if(DE_COMP_S_TYPE == 0) begin:Bayer_decomp_order
        always@(*) begin
            align_tr_data = 0;
            if(rg_de_comp_0_bypass) begin
                case(DATA_THRU)
                    1 : begin
                        align_tr_data = tr_data;
                    end
                    2 : begin
                        case(rg_pack_format)
                            4'd0    : align_tr_data = {4'h0, tr_data[15:8] , 4'h0, tr_data[7:0] };
                            4'd1    : align_tr_data = {2'h0, tr_data[19:10], 2'h0, tr_data[9:0] };
                            4'd2    : align_tr_data = {      tr_data[23:12],       tr_data[11:0]}; 
                            4'd3    : align_tr_data = {      tr_data[25:14],       tr_data[11:0]}; 
                            4'd4    : align_tr_data = {      tr_data[27:16],       tr_data[11:0]}; 
                            4'd5    : align_tr_data = {2'h0, tr_data[19:10], 2'h0, tr_data[9:0] }; 
                            4'd6    : align_tr_data = {2'h0, tr_data[19:10], 2'h0, tr_data[9:0] }; 
                            default : align_tr_data = {4'h0, tr_data[15:8] , 4'h0, tr_data[7:0] }; 
                        endcase
                    end
                    default : begin
                        case(rg_pack_format)
                            4'd0    : align_tr_data = {4'h0, tr_data[31:24], 4'h0, tr_data[23:16], 4'h0, tr_data[15:8] , 4'h0, tr_data[7:0] };
                            4'd1    : align_tr_data = {2'h0, tr_data[39:30], 2'h0, tr_data[29:20], 2'h0, tr_data[19:10], 2'h0, tr_data[9:0] };
                            4'd2    : align_tr_data = {      tr_data[47:36],       tr_data[35:24],       tr_data[23:12],       tr_data[11:0]}; 
                            4'd3    : align_tr_data = {      tr_data[47:36],       tr_data[35:24],       tr_data[23:12],       tr_data[11:0]}; 
                            4'd4    : align_tr_data = {      tr_data[59:48],       tr_data[43:32],       tr_data[27:16],       tr_data[11:0]}; 
                            4'd5    : align_tr_data = {2'h0, tr_data[39:30], 2'h0, tr_data[29:20], 2'h0, tr_data[19:10], 2'h0, tr_data[9:0] }; 
                            4'd6    : align_tr_data = {2'h0, tr_data[39:30], 2'h0, tr_data[29:20], 2'h0, tr_data[19:10], 2'h0, tr_data[9:0] }; 
                            default : align_tr_data = {4'h0, tr_data[31:24], 4'h0, tr_data[23:16], 4'h0, tr_data[15:8] , 4'h0, tr_data[7:0] };
                        endcase
                    end
                endcase
            end
            else begin:YCC_decomp_order
                case(DATA_THRU)
                    2 : begin
                        case(rg_de_comp_0_bit)
                            2'd0 : begin
                                align_tr_data = {4'h0, tr_data[15:8] , 4'h0, tr_data[7:0] };
                            end
                            2'd1 : begin
                                align_tr_data = {2'h0, tr_data[19:10], 2'h0, tr_data[9:0] };
                            end
                            default : begin
                                align_tr_data = {      tr_data[23:12],       tr_data[11:0]}; 
                            end
                        endcase
                    end 
                    default : begin
                        case(rg_de_comp_0_bit)
                            2'd0 : begin
                                align_tr_data = {4'h0, tr_data[31:24], 4'h0, tr_data[23:16], 4'h0, tr_data[15:8] , 4'h0, tr_data[7:0] };
                            end
                            2'd1 : begin
                                align_tr_data = {2'h0, tr_data[39:30], 2'h0, tr_data[29:20], 2'h0, tr_data[19:10], 2'h0, tr_data[9:0] };
                            end
                            default : begin
                                align_tr_data = {      tr_data[47:36],       tr_data[35:24],       tr_data[23:12],       tr_data[11:0]}; 
                            end
                        endcase
                    end 
                endcase
            end
        end
    end
    else begin // YCC
        always@(*) begin
            align_tr_data = 0;
            if(rg_de_comp_0_bypass) begin
                case(DATA_THRU)
                    2 : begin
                        case(rg_pack_format)
                            4'd0    : align_tr_data = {4'h0, tr_data[15:8] , 4'h0, tr_data[7:0] };
                            4'd1    : align_tr_data = {2'h0, tr_data[19:10], 2'h0, tr_data[9:0] };
                            4'd2    : align_tr_data = {      tr_data[23:12],       tr_data[11:0]}; 
                            4'd3    : align_tr_data = {      tr_data[25:14],       tr_data[11:0]}; 
                            4'd4    : align_tr_data = {      tr_data[27:16],       tr_data[11:0]}; 
                            4'd5    : align_tr_data = {2'h0, tr_data[19:10], 2'h0, tr_data[9:0] }; 
                            4'd6    : align_tr_data = {2'h0, tr_data[19:10], 2'h0, tr_data[9:0] }; 
                            default : align_tr_data = {4'h0, tr_data[15:8] , 4'h0, tr_data[7:0] }; 
                        endcase
                    end
                    default : begin
                        case(rg_pack_format)
                            4'd0    : align_tr_data = {4'h0, tr_data[31:24], 4'h0, tr_data[23:16], 4'h0, tr_data[15:8] , 4'h0, tr_data[7:0] };
                            4'd1    : align_tr_data = {2'h0, tr_data[39:30], 2'h0, tr_data[29:20], 2'h0, tr_data[19:10], 2'h0, tr_data[9:0] };
                            4'd2    : align_tr_data = {      tr_data[47:36],       tr_data[35:24],       tr_data[23:12],       tr_data[11:0]}; 
                            4'd3    : align_tr_data = {      tr_data[47:36],       tr_data[35:24],       tr_data[23:12],       tr_data[11:0]}; 
                            4'd4    : align_tr_data = {      tr_data[59:48],       tr_data[43:32],       tr_data[27:16],       tr_data[11:0]}; 
                            4'd5    : align_tr_data = {2'h0, tr_data[39:30], 2'h0, tr_data[29:20], 2'h0, tr_data[19:10], 2'h0, tr_data[9:0] }; 
                            4'd6    : align_tr_data = {2'h0, tr_data[39:30], 2'h0, tr_data[29:20], 2'h0, tr_data[19:10], 2'h0, tr_data[9:0] }; 
                            default : align_tr_data = {4'h0, tr_data[31:24], 4'h0, tr_data[23:16], 4'h0, tr_data[15:8] , 4'h0, tr_data[7:0] };
                        endcase
                    end
                endcase
            end
            else begin
                case(DATA_THRU)
                    1 : begin
                        align_tr_data = {4'h0, tr_data[15:8] , 4'h0, tr_data[7:0] };
                    end 
                    default : begin
                        align_tr_data = {4'h0, tr_data[31:24], 4'h0, tr_data[23:16], 4'h0, tr_data[15:8] , 4'h0, tr_data[7:0] };
                    end 
                endcase
            end
        end
    end
endgenerate

decomp_afifo_tile_read #(
    .MEM_DEPTH_W    (MEM_DEPTH_W   ),
    .LINE_OFFSET_W  (16            ),
    .DE_COMP_S_TYPE (DE_COMP_S_TYPE),
    .DE_COMP_EN     (DE_COMP_EN    ),
    .dt             (dt            )
) afifo_tile_read_0 (
    // input
    .clk_kernel                 (clk_kernel              ),
    .clk_arb                    (clk_arb                 ),
    .raw_rst_n                  (raw_rst_n               ),
    .rst_n                      (rst_n_kernel            ),
    .scan_en                    (scan_en                 ),
    .soft_rst                   (tr_soft_rst             ),
    .op_start_in                (rg_op_start             ),                    
    .pack_format_in             (tr_pack_format          ),   
    .inverse_read_en_in         (rg_inverse_read         ),       
    .ring_start_adr_in          (rg_in_start_adr         ),           
    .ring_min_adr_in            (rg_in_ring_min_adr      ),           
    .ring_over_adr_in           (rg_in_ring_over_adr     ),           
    .line_offset_in             (rg_in_line_offset       ),           
    .refetch_size_in            (32'd0                   ),           
    .num_of_refetch_line_in     (13'd0                   ),           
    .num_of_band_in             (13'd0                   ),   
    .first_band_height_in       (rg_first_tile_height    ),         
    .mid_band_height_in         (13'd0                   ),       
    .pre_last_band_height_in    (13'd0                   ),            
    .last_band_height_in        (13'd0                   ),           
    .num_of_tile_in             (13'd0                   ),   
    .first_tile_width_in        (rg_first_tile_width     ),        
    .mid_tile_width_in          (13'd0                   ),      
    .pre_last_tile_width_in     (13'd0                   ),           
    .last_tile_width_in         (13'd0                   ),       
    .raw10_last_pix_rem_in      (rg_raw10_pix_rem        ),          
    .w_fifo_by_burst_size_en_in (1'b1                    ),               
    .st2w_fifo_size_in          (6'd0                    ),      
    .r_fifo_by_burst_size_en_in (1'b0                    ),               
    .st2r_fifo_size_in          (6'd0                    ),      
    .burst_size_bit_in          (4'd8                    ),      
    .mode_sel_in                (16'd0                   ),                     
    .de_comp_s_size             (rg_de_comp_0_size[15:0] ), 
    .de_comp_s_thru             (rg_de_comp_0_thru       ),
    .de_comp_s_seq              (rg_de_comp_0_seq        ), 
    .de_comp_s_bit              (rg_de_comp_0_bit        ), 
    .de_comp_s_ratio            (rg_de_comp_0_ratio      ), 
    .de_comp_s_bypass           (rg_de_comp_0_bypass     ),
    .mem_rd_data                (mem_rd_data[63:0]       ),       
    .dma_ack                    (r1_dma_ack              ),   
    .dma_rspval                 (r1_dma_rspval           ),       
    .dma_rdata                  (r1_dma_rdata            ),     
    .req_in                     (tr_req                  ),  
    .mem_we_n                   (mem_we_n                ),      
    .mem_we_adr                 (mem_we_adr              ), 
    .mem_we_data                (mem_we_data             ),          
    .mem_rd_n                   (mem_rd_n                ),      
    .mem_rd_adr                 (mem_rd_adr              ),
    .dma_req                    (r1_dma_req              ),     
    .dma_adr                    (r1_dma_adr              ),     
    .dma_burst_size             (r1_dma_burst_size       ),            
    .rdy_out                    (tr_rdy                  ),     
    .data_out                   (tr_data                 ),      
    .last_pix_out               (tr_last_pix             ),          
    .last_line_out              (tr_last_line            ),           
    .last_tile_out              (                        ),           
    .last_band_out              (                        ),           
    .soft_rst_ok                (dma_rst_ok              ),         
    .rsp_line_done              (                        ),           
    .rsp_tile_done              (                        ),           
    .rsp_band_done              (                        ),           
    .rsp_frame_done             (                        ),            
    .op_line_done               (                        ),          
    .op_tile_done               (                        ),          
    .op_band_done               (                        ),          
    .op_frame_done              (in_op_done              ),           
    .rdy_falling                (                        )         
);

S2RAM64X64_wrapper ALTEK_PINGPONG_afifo_tr_sram_256B_0(
    // input
    .DI                         (mem_we_data               ),
    .PD                         (srampd                    ),
    .RADR                       (mem_rd_adr                ),
    .RCK                        (clk_kernel                ),
    .REN                        (mem_rd_n                  ),
    .WADR                       (mem_we_adr                ),
    .WCK                        (clk_arb                   ),
    .WEN                        (mem_we_n                  ),
    // output                                              
    .DOUT                       (mem_rd_data               )
    // inout
);

// register bank
mipi_line_read_a_0_reg mipi_line_read_a_0_reg(
    .mipi_line_read_a_0_ioa_cs           (ioa_cs               ),           //mipi_line_read_0_ioa_cs,        
    .mipi_line_read_a_0_ioa_a            (ioa_a                ),           //mipi_line_read_0_ioa_a,         
    .mipi_line_read_a_0_ip_rst_n         (rst_n_kernel         ),                         //mipi_line_read_0_ip_rst,        
    .mipi_line_read_a_0_ip_clk           (clk_kernel           ),                         //mipi_line_read_0_ip_clk,        
    .mipi_line_read_a_0_scan_en          (scan_en              ),          //mipi_line_read_0_scan_en,       
    .mipi_line_read_a_0_ioa_rdy          (ioa_rdy              ),          //mipi_line_read_0_ioa_rdy,       
    .mipi_line_read_a_0_ioa_rd           (ioa_rd               ),          //mipi_line_read_0_ioa_rd,        
    .mipi_line_read_a_0_ioa_rdata        (ioa_rdata            ),          //mipi_line_read_0_ioa_rdata,     
    .mipi_line_read_a_0_ioa_wr           (ioa_wr               ),          //mipi_line_read_0_ioa_wr,        
    .mipi_line_read_a_0_ioa_wdata        (ioa_wdata            ),          //mipi_line_read_0_ioa_wdata,     
    .mipi_line_read_a_0_intr_interrupt   (interrupt            ),          //mipi_line_read_0_intr_interrupt,
    .soft_rst_out                        (kernel_soft_rst      ),                          //soft_rst_out,                   
    .dma_soft_rst_out                    (dma_soft_rst         ),
    .op_start_out                        (rg_op_start          ),                        //op_start_out,                   
    .op_start_in                         (1'b0                 ),                        //op_start_in,                    
    .op_start_in_ctl                     (rg_op_start          ),                        //op_start_in_ctl,                          
    .pack_format_out                     (rg_pack_format[3:0]  ),                        //pack_format_out,                
    .thru_mode_out                       (rg_thru_mode         ),                        //thru_mode_out,  
    .inverse_read_out                    (rg_inverse_read      ),
    .sof_out_en_out                      (rg_sof_out_en        ),                                      //sof_out_en_out,    
    .lst_lin_out_en_out                  (rg_lst_lin_out_en    ),    
    .h_blank_num_out                     (rg_h_blank_num       ),        
    .raw10_pix_rem_out                   (rg_raw10_pix_rem     ),    
    .in_start_adr_out                    (rg_in_start_adr      ),                      //in_start_adr_out,               
    .in_ring_min_adr_out                 (rg_in_ring_min_adr   ),                   //in_ring_min_adr_out,            
    .in_ring_over_adr_out                (rg_in_ring_over_adr  ),                  //in_ring_over_adr_out,           
    .in_line_offset_out                  (rg_in_line_offset    ),                    //in_line_offset_out,             
    .first_tile_width_out                (rg_first_tile_width  ),                  //first_tile_width_out,           
    .first_tile_height_out               (rg_first_tile_height ),                 //first_tile_height_out,          
    .in_op_done_in                       (in_op_done           ),                        //in_op_done_in,                  
    .dma_rst_ok_in                       (dma_rst_ok           ),                      //dma_rst_ok_in,     
    .irp_abnormal_eop_in                 (irp_abnormal_eop     ),                           
    .r1_hwswap_reg_out                   (rg_r1_hwswap_reg     ),                      //r1_hwswap_reg_out
    .frame_index_out                     (rg_frame_idx         ),
    .de_comp_0_size_out                  (rg_de_comp_0_size    ),
    .de_comp_0_bypass_out                (rg_de_comp_0_bypass  ),
    .de_comp_0_seq_out                   (rg_de_comp_0_seq     ),
    .de_comp_0_bit_out                   (rg_de_comp_0_bit     ),
    .de_comp_0_ratio_out                 (rg_de_comp_0_ratio   ),
    .de_comp_0_thru_out                  (rg_de_comp_0_thru    )
);                                                                                   

//irp_dma
afifo_irp_dma afifo_irp_dma_0(
.dma_clk          (clk_arb      ),              
.rst_h_n          (rst_n_arb    ),
.soft_rst_ok      (tr_soft_rst  ),               
.module_dma_rst_n (~dma_soft_rst),
.w1_dma_data   (64'd0),          
.w2_dma_data   (64'd0),  
.w3_dma_data   (64'd0),    
.w4_dma_data   (64'd0),  
.w5_dma_data   (64'd0),  
.w6_dma_data   (64'd0),  
.w7_dma_data   (64'd0),         
.w8_dma_data   (64'd0), 
.w9_dma_data   (64'd0),    
.w10_dma_data  (64'd0),  
.w11_dma_data  (64'd0),  
.w1_dma_req    (1'd0),            
.w2_dma_req    (1'd0),
.w3_dma_req    (1'd0),    
.w4_dma_req    (1'd0),   
.w5_dma_req    (1'd0),    
.w6_dma_req    (1'd0),
.w7_dma_req    (1'd0),            
.w8_dma_req    (1'd0),
.w9_dma_req    (1'd0),    
.w10_dma_req   (1'd0),   
.w11_dma_req   (1'd0),    
.r1_dma_req    (r1_dma_req ),            
.r2_dma_req    (1'd0),
.r3_dma_req    (1'd0),    
.r4_dma_req    (1'd0),    
.r5_dma_req    (1'd0),   
.r6_dma_req    (1'd0), 
.r7_dma_req    (1'd0),            
.r8_dma_req    (1'd0),
.r9_dma_req    (1'd0),    
.r10_dma_req   (1'd0),  
.w1_dmadone (),  
.w2_dmadone (),  
.w3_dmadone (),  
.w4_dmadone (),  
.w5_dmadone (),  
.w6_dmadone (),  
.w7_dmadone (),  
.w8_dmadone (),  
.w9_dmadone (),  
.w10_dmadone(), 
.w11_dmadone(),
.r1_dmadone (),
.r2_dmadone (),
.r3_dmadone (),
.r4_dmadone (),
.r5_dmadone (),
.r6_dmadone (),
.r7_dmadone (),
.r8_dmadone (),
.r9_dmadone (),
.r10_dmadone(), 
.ra_rdata      (bvci64_m_0_rdata ),   
.ra_cmdack     (bvci64_m_0_cmdack),             
.ra_rspval     (bvci64_m_0_rspval),            
.ra_reop       (bvci64_m_0_reop  ),              
.dma_cmdval    (bvci64_m_0_cmdval),           
.dma_address   (bvci64_m_0_addr  ),           
.dma_be        (bvci64_m_0_be    ),          
.dma_cmd       (bvci64_m_0_cmd   ),               
.dma_wdata     (bvci64_m_0_wdata ),
.dma_eop_real  (bvci64_m_0_eop   ),
.dma_rspack    (bvci64_m_0_rspack),
.dma_brstsz    (),
.dma_w1reop    (),
.dma_w2reop    (),
.dma_w3reop    (),
.dma_w4reop    (),
.dma_w5reop    (),
.dma_w6reop    (),
.dma_w7reop    (),
.dma_w8reop    (),
.dma_w9reop    (),
.dma_w10reop   (),
.dma_w11reop   (),
.dma_w1rspval  (),
.dma_w2rspval  (),
.dma_w3rspval  (),
.dma_w4rspval  (),
.dma_w5rspval  (),
.dma_w6rspval  (),
.dma_w7rspval  (),
.dma_w8rspval  (),
.dma_w9rspval  (),
.dma_w10rspval (),
.dma_w11rspval (),
.dma_w1cmdack  (),
.dma_w2cmdack  (),
.dma_w3cmdack  (),
.dma_w4cmdack  (),
.dma_w5cmdack  (),
.dma_w6cmdack  (),
.dma_w7cmdack  (),
.dma_w8cmdack  (),
.dma_w9cmdack  (),
.dma_w10cmdack (),
.dma_w11cmdack (),
.dma_r1cmdack  (r1_dma_ack),
.dma_r2cmdack  (),
.dma_r3cmdack  (),
.dma_r4cmdack  (),
.dma_r5cmdack  (),
.dma_r6cmdack  (),
.dma_r7cmdack  (),
.dma_r8cmdack  (),
.dma_r9cmdack  (),
.dma_r10cmdack (),
.dma_r1rspval  (r1_dma_rspval),
.dma_r2rspval  (),
.dma_r3rspval  (),
.dma_r4rspval  (),
.dma_r5rspval  (),
.dma_r6rspval  (),
.dma_r7rspval  (),
.dma_r8rspval  (),
.dma_r9rspval  (),
.dma_r10rspval (),
.dma_r1data    (r1_dma_rdata),
.dma_r2data    (),
.dma_r3data    (),
.dma_r4data    (),
.dma_r5data    (),
.dma_r6data    (),
.dma_r7data    (),
.dma_r8data    (),
.dma_r9data    (),
.dma_r10data   (),
.dma_grantid   (),
.rsp_grantid   (),
.w1_dma_en_reg(1'd0),
.w2_dma_en_reg(1'd0),
.w3_dma_en_reg(1'd0),
.w4_dma_en_reg(1'd0),
.w5_dma_en_reg(1'd0),
.w6_dma_en_reg(1'd0),
.w7_dma_en_reg(1'd0),
.w8_dma_en_reg(1'd0),
.w9_dma_en_reg(1'd0),
.w10_dma_en_reg(1'd0),
.w11_dma_en_reg(1'd0),
.r1_dma_en_reg (1'b1),
.r2_dma_en_reg (1'd0),
.r3_dma_en_reg (1'd0),
.r4_dma_en_reg (1'd0),
.r5_dma_en_reg (1'd0),
.r6_dma_en_reg (1'd0),
.r7_dma_en_reg (1'd0),
.r8_dma_en_reg (1'd0),
.r9_dma_en_reg (1'd0),
.r10_dma_en_reg(1'd0),
.w1_ramaddr (32'd0),
.w2_ramaddr (32'd0),
.w3_ramaddr (32'd0),
.w4_ramaddr (32'd0),
.w5_ramaddr (32'd0),
.w6_ramaddr (32'd0),
.w7_ramaddr (32'd0),
.w8_ramaddr (32'd0),
.w9_ramaddr (32'd0),
.w10_ramaddr(32'd0),
.w11_ramaddr(32'd0),
.r1_ramaddr    (r1_dma_adr),
.r2_ramaddr    (32'd0),
.r3_ramaddr    (32'd0),
.r4_ramaddr    (32'd0),
.r5_ramaddr    (32'd0),
.r6_ramaddr    (32'd0),
.r7_ramaddr    (32'd0),
.r8_ramaddr    (32'd0),
.r9_ramaddr    (32'd0),
.r10_ramaddr   (32'd0),
.w1_brstsz_reg (8'd0),       
.w2_brstsz_reg (8'd0),     
.w3_brstsz_reg (8'd0),  
.w4_brstsz_reg (8'd0),     
.w5_brstsz_reg (8'd0),    
.w6_brstsz_reg (8'd0),   
.w7_brstsz_reg (8'd0),       
.w8_brstsz_reg (8'd0),     
.w9_brstsz_reg (8'd0),  
.w10_brstsz_reg(8'd0),     
.w11_brstsz_reg(8'd0),   
.r1_brstsz_reg (r1_dma_burst_size[7:0]),       
.r2_brstsz_reg (8'd0),  
.r3_brstsz_reg (8'd0),  
.r4_brstsz_reg (8'd0),  
.r5_brstsz_reg (8'd0), 
.r6_brstsz_reg (8'd0),
.r7_brstsz_reg (8'd0),       
.r8_brstsz_reg (8'd0),  
.r9_brstsz_reg (8'd0),  
.r10_brstsz_reg(8'd0), 
.w1_be_reg (8'd0),               
.w2_be_reg (8'd0),
.w3_be_reg (8'd0),
.w4_be_reg (8'd0),
.w5_be_reg (8'd0),
.w6_be_reg (8'd0),
.w7_be_reg (8'd0),               
.w8_be_reg (8'd0),
.w9_be_reg (8'd0),
.w10_be_reg(8'd0),
.w11_be_reg(8'd0), 
.r1_be_reg     (8'hff), 
.r2_be_reg     (8'd0),
.r3_be_reg     (8'd0),
.r4_be_reg     (8'd0),
.r5_be_reg     (8'd0),
.r6_be_reg     (8'd0),
.r7_be_reg     (8'd0), 
.r8_be_reg     (8'd0),
.r9_be_reg     (8'd0),
.r10_be_reg    (8'd0),
.w1_hwswap_reg(2'd0),
.w2_hwswap_reg(2'd0),
.w3_hwswap_reg(2'd0),
.w4_hwswap_reg(2'd0),
.w5_hwswap_reg(2'd0),
.w6_hwswap_reg(2'd0),
.w7_hwswap_reg(2'd0),
.w8_hwswap_reg(2'd0),
.w9_hwswap_reg(2'd0),
.w10_hwswap_reg(2'd0),
.w11_hwswap_reg(2'd0),
.r1_hwswap_reg (rg_r1_hwswap_reg),
.r2_hwswap_reg (2'd0),
.r3_hwswap_reg (2'd0),
.r4_hwswap_reg (2'd0),
.r5_hwswap_reg (2'd0),
.r6_hwswap_reg (2'd0),
.r7_hwswap_reg (2'd0),
.r8_hwswap_reg (2'd0),
.r9_hwswap_reg (2'd0),
.r10_hwswap_reg(2'd0),
.priot1_reg    (5'd1),
.priot2_reg    (5'd0),
.priot3_reg    (5'd0),
.priot4_reg    (5'd0),  
.priot5_reg    (5'd0),
.priot6_reg    (5'd0),  
.priot7_reg    (5'd0),
.priot8_reg    (5'd0),  
.priot9_reg    (5'd0),
.priot10_reg   (5'd0), 
.priot11_reg(5'd0),
.priot12_reg(5'd0), 
.priot13_reg(5'd0),
.priot14_reg(5'd0),
.priot15_reg(5'd0),
.priot16_reg(5'd0),  
.priot17_reg(5'd0),
.priot18_reg(5'd0),  
.priot19_reg(5'd0),
.priot20_reg(5'd0),  
.priot21_reg(5'd0),
.dma_ctl_en_reg(1'b1),
.fcfs          (1'b0),
.w1_fcfsgroup (1'd0),
.w2_fcfsgroup (1'd0),
.w3_fcfsgroup (1'd0), 
.w4_fcfsgroup (1'd0),
.w5_fcfsgroup (1'd0),  
.w6_fcfsgroup (1'd0),
.w7_fcfsgroup (1'd0),
.w8_fcfsgroup (1'd0),
.w9_fcfsgroup (1'd0), 
.w10_fcfsgroup(1'd0),
.w11_fcfsgroup(1'd0), 
.r1_fcfsgroup  (1'd0),
.r2_fcfsgroup  (1'd0),
.r3_fcfsgroup  (1'd0), 
.r4_fcfsgroup  (1'd0),
.r5_fcfsgroup  (1'd0),
.r6_fcfsgroup  (1'd0),  
.r7_fcfsgroup  (1'd0),
.r8_fcfsgroup  (1'd0),
.r9_fcfsgroup  (1'd0), 
.r10_fcfsgroup (1'd0),                                   
.abnormal_eop  (irp_abnormal_eop)
);



endmodule    
