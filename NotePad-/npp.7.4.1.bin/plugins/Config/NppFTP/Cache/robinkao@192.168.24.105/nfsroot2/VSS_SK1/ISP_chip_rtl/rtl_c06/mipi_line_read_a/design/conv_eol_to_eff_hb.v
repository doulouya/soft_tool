module conv_eol_to_eff_hb(
       // system
       clk,                     
       rst,                     
       soft_rst, 
       op_start,                 
       h_blank_num,                 
       dat,
       eop,
       eol,
       // input handshake
       req_out,			
       rdy_in,
       req_in,
       rdy_out,
       dout,
       heff_out,
       veff_out                
);

parameter dt = 1;
parameter dat_w = 8;

       // system
input        clk;                     
input        rst;                     
input        soft_rst; 
input        op_start;                 
input        [15:0] h_blank_num;                 
input        [dat_w-1:0]dat;
input        eop;
input        eol;
// input handshake
output        req_out;			
input        rdy_in;
input        req_in;
output        rdy_out;
output       heff_out;
output       veff_out;
output       [dat_w-1:0]dout;



wire in_val = req_out & rdy_in;
wire out_val = req_in & rdy_out & heff_out & veff_out;
reg full, heff, veff, hold, heff_ext, veff_ext, req_mask;
reg [3:0]hold_cnt;
reg [15:0]h_blank_cnt;
reg       h_blank_val;
wire      h_blank_end = h_blank_cnt == h_blank_num;
reg [dat_w-1:0]dout;
assign heff_out = heff | heff_ext;
assign veff_out = veff | veff_ext;
assign req_out = soft_rst ? 0 : (!full | full & out_val) & !hold & !req_mask;
assign rdy_out = full;

always @ (posedge clk or posedge rst)                                                                                  
  if (rst)                                                                                                             
    req_mask <= #dt 1;                                                                                                    
  else if (soft_rst)                                                                                                 
    req_mask <= #dt 1;
  else if (op_start)
    req_mask <= #dt 0;
    
always@ (posedge clk or posedge rst)
  if (rst)
    full <= #dt 0;  
  else 
  if (soft_rst)
    full <= #dt 0;
  else
  if (in_val & !out_val)
    full <= #dt 1;
  else
  if (!in_val & out_val)
    full <= #dt 0;

wire mode = 1; // 1:for shift 0: for no shift

always@ (posedge clk or posedge rst)
  if (rst)
    h_blank_cnt <= #dt 0;  
  else if (soft_rst)
    h_blank_cnt <= #dt 0;
  else if (~heff_out && h_blank_val ) begin
      if (h_blank_end)
          h_blank_cnt <= #dt 0;
      else
          h_blank_cnt <= #dt h_blank_cnt + 1;
   end
    
always@ (posedge clk or posedge rst)
  if (rst)
    h_blank_val <= #dt 0;  
  else 
  if (soft_rst)
    h_blank_val <= #dt 0;
  else
  if (eop && in_val)
    h_blank_val <= #dt 1;
  else
  if (~heff_out && h_blank_end)
    h_blank_val <= #dt 0;
     
always@ (posedge clk or posedge rst)
  if (rst)
    hold_cnt <= #dt 0;  
  else 
  if (soft_rst)
    hold_cnt <= #dt 0;
  else
  if (~heff_out && hold && ~h_blank_val && (mode? req_in : 1) )
    hold_cnt <= #dt hold_cnt + 1;
    
always@ (posedge clk or posedge rst)
  if (rst)
    hold <= #dt 0;  
  else 
  if (soft_rst)
    hold <= #dt 0;
  else
  if (eop & in_val)
    hold <= #dt 1;
  else
  if ((hold_cnt == 'd15) && (mode? req_in : 1) )
    hold <= #dt 0;
     
        
always@ (posedge clk or posedge rst)
  if (rst)
    heff <= #dt 0;  
  else 
  if (soft_rst)
    heff <= #dt 0;
  else
  if (in_val)
    heff <= #dt eop? 0 : 1;

always@ (posedge clk or posedge rst)
  if (rst)
    veff <= #dt 0;  
  else 
  if (soft_rst)
    veff <= #dt 0;
  else
  if (in_val)
    veff <= #dt eop & eol? 0 : 1;
    
    
always@ (posedge clk or posedge rst)
  if (rst)
    heff_ext <= #dt 0;  
  else 
  if (soft_rst)
    heff_ext <= #dt 0;
  else
  if (in_val & eop)
    heff_ext <= #dt 1;
  else
  if (out_val)
    heff_ext <= #dt 0;

always@ (posedge clk or posedge rst)
  if (rst)
    veff_ext <= #dt 0;  
  else 
  if (soft_rst)
    veff_ext <= #dt 0;
  else
  if (in_val & eop & eol)
    veff_ext <= #dt 1;
  else
  if (out_val)
    veff_ext <= #dt 0;
    
    

        
always@ (posedge clk)
  if (in_val )
    dout <= #dt dat;

    
endmodule
