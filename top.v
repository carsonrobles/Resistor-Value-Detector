module top (
  input  wire       clk,

  input  wire [3:0] sw,

  input  wire       TMDS_Clk_p,
  input  wire       TMDS_Clk_n,
  input  wire [2:0] TMDS_Data_p,
  input  wire [2:0] TMDS_Data_n,

  output wire       HDMI_HPD,
  output wire       HDMI_OUT_EN,

  inout  wire       ddc_scl_io,
  inout  wire       ddc_sda_io,

  output wire [4:0] vga_pRed,
  output wire [5:0] vga_pGreen,
  output wire [4:0] vga_pBlue,
  output wire       vga_pHSync,
  output wire       vga_pVSync,

  output wire [3:0] led
);

assign HDMI_HPD    = 1;
assign HDMI_OUT_EN = 0;

//////////////////////////////
// SYSTEM CLK DOMAIN
//////////////////////////////

  reg [ 1:0] led1 = 0;
  reg [25:0] cnt1 = 0;

  always @ (posedge clk)
    cnt1 <= cnt1 + 1;

  always @ (posedge clk)
    if (&cnt1)
      led1 <= ~led1;

//////////////////////////////
// HDMI CLK DOMAIN
//////////////////////////////

  wire hdmi_clk;

  clk_wiz_0 clk_wiz_0_i (
    .clk_i  (clk),
    .clk_o  (hdmi_clk),
    .reset  (0),
    .locked ( )
  );

  reg [ 1:0] led2 = 0;
  reg [25:0] cnt2 = 0;

  always @ (posedge hdmi_clk)
    cnt2 <= cnt2 + 1;

  always @ (posedge hdmi_clk)
    if (&cnt2)
      led2 <= ~led2;

  wire [23:0] vid_data;
  wire        vid_vde;
  wire        vid_hsync;
  wire        vid_vsync;
  wire        pix_clk;

  assign ddc_sda_io = (~ddc_sda_t) ? ddc_sda_o : 1'bz;
  assign ddc_scl_io = (~ddc_scl_t) ? ddc_scl_o : 1'bz;

  dvi2rgb_0 dvi2rgb_0_i (
    .TMDS_Clk_p    (TMDS_Clk_p),
    .TMDS_Clk_n    (TMDS_Clk_n),
    .TMDS_Data_p   (TMDS_Data_p),
    .TMDS_Data_n   (TMDS_Data_n),
    .RefClk        (hdmi_clk),
    .aRst_n        (1),
    .vid_pData     (vid_data),
    .vid_pVDE      (vid_vde),
    .vid_pHSync    (vid_hsync),
    .vid_pVSync    (vid_vsync),
    .PixelClk      (pix_clk),
    .aPixelClkLckd ( ),
    .DDC_SDA_I     (ddc_sda_io),
    .DDC_SDA_O     (ddc_sda_o),
    .DDC_SDA_T     (ddc_sda_t),
    .DDC_SCL_I     (ddc_scl_io),
    .DDC_SCL_O     (ddc_scl_o),
    .DDC_SCL_T     (ddc_scl_t),
    .pRst_n        (1)
  );

//////////////////////////////
// PIXEL CLK DOMAIN
//////////////////////////////

  wire [23:0] vga_data;
  wire        vga_vde;
  wire        vga_hsync;
  wire        vga_vsync;

  img_proc img_proc_i (
    .clk     (pix_clk),
    .val     (sw),
    .data_i  (vid_data),
    .vde_i   (vid_vde),
    .hsync_i (vid_hsync),
    .vsync_i (vid_vsync),
    .data_o  (vga_data),
    .vde_o   (vga_vde),
    .hsync_o (vga_hsync),
    .vsync_o (vga_vsync)
  );

  rgb2vga_0 rgb2vga_0_i (
    .rgb_pData  (vga_data),
    .rgb_pVDE   (vga_vde),
    .rgb_pHSync (vga_hsync),
    .rgb_pVSync (vga_vsync),
    .PixelClk   (pix_clk),
    .vga_pRed   (vga_pRed),
    .vga_pGreen (vga_pGreen),
    .vga_pBlue  (vga_pBlue),
    .vga_pHSync (vga_pHSync),
    .vga_pVSync (vga_pVSync)
  );

//////////////////////////////
// ASSIGN OUTPUTS
//////////////////////////////

  assign led = {vid_data[1], vid_hsync, vid_vsync, vga_pHSync};

endmodule
