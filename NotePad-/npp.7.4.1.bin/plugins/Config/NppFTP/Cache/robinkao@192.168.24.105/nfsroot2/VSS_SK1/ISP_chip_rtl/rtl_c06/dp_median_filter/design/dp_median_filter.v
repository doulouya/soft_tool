/*
Module :	dp_median_filter
Function :	3x3 median filter, include input stage,
            Must change memory buffer size for different Project 
Author :	Josh Tsai

Version 	 History
2014.07.17  [D2] Initial Version, not support en_1t2p, but keep this port
2014.08.13  [D2] change support width to 1920/2  x  1080/2
2014.08.13  [D2] move DRAM to outside, add bit width and DRAM address width parameter
                 remove en_1t2p,sram_power_down port
*/


module dp_median_filter (
    //input
	clk,                       
	rst_n,                     
	soft_rst, 
    op_st,	
	
	last_pix_in,
	last_line_in,
    pix_in,
	rdy_in,
	req_in,

//output
    req_out,
    rdy_out,
    last_pix_out,
    last_line_out,
	pix_out,//median result

//DRAM interface
    instage_mem0_di,//output
    instage_mem0_do,//input
    instage_mem0_cs,//output  
    instage_mem0_wr,//output
    instage_mem0_addr //output,fix 9bit
  
  
  );
  
parameter  dw  = 10;
parameter  tile_w = 960;
parameter  tile_h = 540;
parameter  mem_addr_w = 9;

input clk;                          
input rst_n;                        
input soft_rst;     
input op_st;                


input last_pix_in;
input last_line_in;
input [dw-1:0] pix_in;
input rdy_in;
input req_in;


output req_out;
output rdy_out;
output last_pix_out;
output last_line_out;
output [dw-1:0] pix_out;//median result

//DRAM interface
output [4*dw-1:0] instage_mem0_di;  //output
input  [4*dw-1:0] instage_mem0_do;  //input
output instage_mem0_cs;  //output   
output instage_mem0_wr;  //output  
output [mem_addr_w-1:0] instage_mem0_addr; //output,default 9bit

///////////////////////////////////////////////input stage
/*
localparam  matrix_sz_x_left = matrix_sz_x;
localparam  matrix_sz_x_right = matrix_sz_x;
localparam  h_depth     = (tile_width+(matrix_sz_x/2)*2)/2;//x
localparam  h_buf_adr_w = clog2(h_depth);
localparam  v_depth     = tile_height+matrix_sz_y-1+matrix_sz_y/2;
localparam  v_buf_adr_w = clog2(v_depth);

localparam  v_buf_bit_w = 1*pix_w*(matrix_sz_x-1);             
//localparam  v_buf_bit_w = 1*pix_w*matrix_sz_x;             
localparam  h_buf_bit_w = 2*pix_w*(matrix_sz_y-1);//y     
//localparam  h_buf_bit_w = 2*pix_w*matrix_sz_y;     
localparam  mask_width  = matrix_sz_x*matrix_sz_y*pix_w;
*/
wire mask_eol_out,mask_eop_out,mask_req_in,mask_rdy_out;
wire [9*dw-1:0]mask_data_out;


instage_mxn #(.dt(1),
              .pix_w(dw), 
			  .matrix_sz_x(3), 
			  .matrix_sz_y(3), 
			  .tile_width(tile_w), 
			  .tile_height(tile_h)
              )instage_mxn_med(            
     .clk(clk),
     .rst_n(rst_n),
     .soft_rst(soft_rst),
	 .op_st(op_st),
     .h_buff_reduce_mode_en(1'd0),
     .matrix_sz_x_left_reg(10'd3),//mirror 1 pix, 2x1+1 =3
     .matrix_sz_x_right_reg(10'd3),//mirror 1 pix, 2x1+1 =3
     .matrix_sz_x_reg(10'd3),//x= 3
     .matrix_sz_y_reg(10'd3),//y= 3
     .instg_auto_mirr_en(1'd1),
     .instg_top_mirr_en(1'd0),
     .instg_bottom_mirr_en(1'd0),
     .instg_left_mirr_en(1'd0),
     .instg_right_mirr_en(1'd0),
     .instg_skip_line_en(1'd0),
     .instg_skip_line_num(6'd0),
	 
     .last_band_in(1'd1),                
     .last_tile_in(1'd1),
     .last_line_in(last_line_in),
     .last_pix_in (last_pix_in),
     .req_o(req_out),
     .rdy_i(rdy_in),
     .pix_in(pix_in),//20bit, low pix, high pix must inverse to match logic design
     //fst_bnd_i(),     
     
     .last_band_o(),                
     .last_tile_o(),
     .last_line_o(mask_eol_out),                
     .last_pix_o(mask_eop_out),
     .req_i(mask_req_in),
     .rdy_o(mask_rdy_out),                
     //base_adr(),
     .mask_out(mask_data_out),//3x3x10 bit, 1D-array
	 
     .band_mode(1'd0),
     .mem0_di(instage_mem0_di),  //output 
     .mem0_do(instage_mem0_do),  //input  
     .mem0_cs(instage_mem0_cs),  //output   
     .mem0_wr(instage_mem0_wr),  //output   
     .mem0_addr(instage_mem0_addr), //output,9bit
	 //no use
     .mem_v_di(),
     .mem_v_do({2*dw{1'b0}}),    
     .mem_v_cs(),    
     .mem_v_wr(),    
     .mem_v_addr()
	 ); 
/*  
//depth:(6200+(3/2)x2)/2 -> (960+2)/2
//width: 10x(3-1)x2
//S1RAM481X40_wrapper S1RAM481X40_wrapper(
S1RAM500X40_wrapper S1RAM500X40_wrapper(
    .DOUT (mem0_do),
    .CK   (clk),
    .ADR  (mem0_addr),
    .DI   (mem0_di),
    .CEN  (~mem0_cs),
    .WEN  (~mem0_wr),
    .PD   (sram_power_down)
    );
*/	
	

//////////////////////////////////////////////////pipe_0
wire [dw-1:0]aw_00 = mask_data_out[dw-1:0];
wire [dw-1:0]aw_01 = mask_data_out[2*dw-1:1*dw];
wire [dw-1:0]aw_02 = mask_data_out[3*dw-1:2*dw];
wire [dw-1:0]aw_10 = mask_data_out[4*dw-1:3*dw];
wire [dw-1:0]aw_11 = mask_data_out[5*dw-1:4*dw];
wire [dw-1:0]aw_12 = mask_data_out[6*dw-1:5*dw];
wire [dw-1:0]aw_20 = mask_data_out[7*dw-1:6*dw];
wire [dw-1:0]aw_21 = mask_data_out[8*dw-1:7*dw];
wire [dw-1:0]aw_22 = mask_data_out[9*dw-1:8*dw];

reg [dw-1:0]s1_min,s1_med,s1_max,s2_min,s2_med,s2_max,s3_min,s3_med,s3_max;
wire [dw-1:0]s1_min_p0,s1_med_p0,s1_max_p0,s2_min_p0,s2_med_p0,s2_max_p0,s3_min_p0,s3_med_p0,s3_max_p0;

always@(*)begin
       if (aw_02 >= aw_01)begin      
	        if (aw_01 >= aw_00)begin //02,01,00
			       s1_max = aw_02;
			       s1_med = aw_01;
			       s1_min = aw_00; 			
			end else begin
			      if (aw_02 >= aw_00)begin//02,00,01
			           s1_max = aw_02;
					   s1_med = aw_00;
					   s1_min = aw_01;
				  end else begin//00,02,01
                       s1_max = aw_00;
					   s1_med = aw_02;
					   s1_min = aw_01;
                  end				  
			end	   
	   end else begin
	        if (aw_02 >= aw_00)begin //01,02,00
			       s1_max = aw_01;
			       s1_med = aw_02;
			       s1_min = aw_00; 			
			end else begin
			      if (aw_01 >= aw_00)begin//01,00,02
			           s1_max = aw_01;
					   s1_med = aw_00;
					   s1_min = aw_02;
				  end else begin//00,01,02
                       s1_max = aw_00;
					   s1_med = aw_01;
					   s1_min = aw_02;
                  end				  
			end	   
	   end
end

always@(*)begin
       if (aw_12 >= aw_11)begin      
	        if (aw_11 >= aw_10)begin //12,11,10
			       s2_max = aw_12;
			       s2_med = aw_11;
			       s2_min = aw_10; 			
			end else begin
			      if (aw_12 >= aw_10)begin//12,10,11
			           s2_max = aw_12;
					   s2_med = aw_10;
					   s2_min = aw_11;
				  end else begin//10,12,11
                       s2_max = aw_10;
					   s2_med = aw_12;
					   s2_min = aw_11;
                  end				  
			end	   
	   end else begin
	        if (aw_12 >= aw_10)begin //11,12,10
			       s2_max = aw_11;
			       s2_med = aw_12;
			       s2_min = aw_10; 			
			end else begin
			      if (aw_11 >= aw_10)begin//11,10,12
			           s2_max = aw_11;
					   s2_med = aw_10;
					   s2_min = aw_12;
				  end else begin//10,11,12
                       s2_max = aw_10;
					   s2_med = aw_11;
					   s2_min = aw_12;
                  end				  
			end	   
	   end
end

always@(*)begin
       if (aw_22 >= aw_21)begin      
	        if (aw_21 >= aw_20)begin //22,21,20
			       s3_max = aw_22;
			       s3_med = aw_21;
			       s3_min = aw_20; 			
			end else begin
			      if (aw_22 >= aw_20)begin//22,20,21
			           s3_max = aw_22;
					   s3_med = aw_20;
					   s3_min = aw_21;
				  end else begin//20,22,21
                       s3_max = aw_20;
					   s3_med = aw_22;
					   s3_min = aw_21;
                  end				  
			end	   
	   end else begin
	        if (aw_22 >= aw_20)begin //21,22,20
			       s3_max = aw_21;
			       s3_med = aw_22;
			       s3_min = aw_20; 			
			end else begin
			      if (aw_21 >= aw_20)begin//21,20,22
			           s3_max = aw_21;
					   s3_med = aw_20;
					   s3_min = aw_22;
				  end else begin//20,21,22
                       s3_max = aw_20;
					   s3_med = aw_21;
					   s3_min = aw_22;
                  end				  
			end	   
	   end
end

wire rdy_0t1,rdy_1t2;
wire req_1t0,req_2t1;
wire mid_p0_eol,mid_p0_eop,mid_p1_eol,mid_p1_eop;
nre_bp_path #(.PIX_SIZE(dw*9))mid_pipe0(
	//input
	.clk(clk),
	.rst_n(rst_n),
	.soft_rst(soft_rst),	
	.last_pix_in(mask_eop_out),
	.last_line_in(mask_eol_out),
	.last_tile_in(mask_eol_out),
	.last_band_in(mask_eol_out),
	.rdy_in(mask_rdy_out),
	.req_in(req_1t0),
    .data_in ({s1_min,s1_med,s1_max,s2_min,s2_med,s2_max,s3_min,s3_med,s3_max}),
    
	//output
	.last_pix_out(mid_p0_eop),
	.last_line_out(mid_p0_eol),
	.last_tile_out(),
	.last_band_out(),
	.rdy_out(rdy_0t1),
    .req_out(mask_req_in),
    .data_out({s1_min_p0,s1_med_p0,s1_max_p0,s2_min_p0,s2_med_p0,s2_max_p0,s3_min_p0,s3_med_p0,s3_max_p0})
);
	
//////////////////////////////////////////////////pipe_1
reg [dw-1:0]maxmin,medmed,minmax;
wire [dw-1:0]maxmin_p1,medmed_p1,minmax_p1;
//MaxMin
always@(*)begin
       if (s1_max_p0 >= s2_max_p0)begin      
	        if (s2_max_p0 >= s3_max_p0)begin
			       maxmin = s3_max_p0;	 //1,2,3	
			end else begin
			       maxmin = s2_max_p0;   //[1,3],2 ; 1,3 don't care 
			end	   
	   end else begin
	        if (s1_max_p0 >= s3_max_p0)begin 
			       maxmin = s3_max_p0;	//[2,1],3 ; 1,2 don't care 	
			end else begin
			       maxmin =	s1_max_p0;  //[2,3],1 ; 2,3 don't care 	 
			end	   
	   end
end
//MinMax
always@(*)begin
       if (s2_min_p0 >= s3_min_p0)begin      
	        if (s1_min_p0 >= s2_min_p0)begin
			       minmax = s1_min_p0;	 //1,2,3	
			end else begin
			       minmax = s2_min_p0;   //2,[1,3] ; 1,3 don't care 
			end	   
	   end else begin
	        if (s1_min_p0 >= s3_min_p0)begin 
			       minmax = s1_min_p0;	//1,3,2	
			end else begin
			       minmax =	s3_min_p0;  //3,[1,2] ; 1,2 don't care 	 
			end	   
	   end
end
//MedMed
always@(*)begin   
	    if (s2_med_p0 >= s3_med_p0)begin      
	        if (s1_med_p0 >= s2_med_p0)begin 
			       medmed = s2_med_p0;	 //1,2,3			
			end else begin
			      if (s1_med_p0 >= s3_med_p0)begin
				       medmed = s1_med_p0; //2,1,3
				  end else begin
				       medmed = s3_med_p0; //2,3,1
				  end 
			end	   
	   end else begin
	        if (s1_med_p0 >= s3_med_p0)begin 
			       medmed = s3_med_p0;	 //1 3 2			
			end else begin
			      if (s1_med_p0 >= s2_med_p0)begin
			           medmed = s1_med_p0;	 //3 1 2
				  end else begin
                       medmed = s2_med_p0;	 //3 2 1
                  end				  
			end	   
	   end
end

nre_bp_path #(.PIX_SIZE(dw*3))mid_pipe1(
	//input
	.clk(clk),
	.rst_n(rst_n),
	.soft_rst(soft_rst),	
	.last_pix_in(mid_p0_eop),
	.last_line_in(mid_p0_eol),
	.last_tile_in(mid_p0_eol),
	.last_band_in(mid_p0_eol),
	.rdy_in(rdy_0t1),
	.req_in(req_2t1),
    .data_in ({maxmin,medmed,minmax}),
    
	//output
	.last_pix_out(mid_p1_eop),
	.last_line_out(mid_p1_eol),
	.last_tile_out(),
	.last_band_out(),
	.rdy_out(rdy_1t2),
    .req_out(req_1t0),
    .data_out({maxmin_p1,medmed_p1,minmax_p1})//1,2,3
	);


//////////////////////////////////////////////////pipe_2  
reg [dw-1:0] med_p2;
//Median result
always@(*)begin   
	    if (medmed_p1 >= minmax_p1)begin      
	        if (maxmin_p1 >= medmed_p1)begin 
			       med_p2 = medmed_p1;	 //1,2,3			
			end else begin
			      if (maxmin_p1 >= minmax_p1)begin
				       med_p2 = maxmin_p1; //2,1,3
				  end else begin
				       med_p2 = minmax_p1; //2,3,1
				  end 
			end	   
	   end else begin
	        if (maxmin_p1 >= minmax_p1)begin 
			       med_p2 = minmax_p1;	 //1 3 2			
			end else begin
			      if (maxmin_p1 >= medmed_p1)begin
			           med_p2 = maxmin_p1;	 //3 1 2
				  end else begin
                       med_p2 = medmed_p1;	 //3 2 1
                  end				  
			end	   
	   end
end

nre_bp_path #(.PIX_SIZE(dw))mid_pipe2(
	//input
	.clk(clk),
	.rst_n(rst_n),
	.soft_rst(soft_rst),	
	.last_pix_in(mid_p1_eop),
	.last_line_in(mid_p1_eol),
	.last_tile_in(mid_p1_eol),
	.last_band_in(mid_p1_eol),
	.rdy_in(rdy_1t2),
	.req_in(req_in),
    .data_in (med_p2),
    
	//output
	.last_pix_out(last_pix_out),
	.last_line_out(last_line_out),
	.last_tile_out(),
	.last_band_out(),
	.rdy_out(rdy_out),
    .req_out(req_2t1),
    .data_out(pix_out)//median result
	);
	
endmodule
