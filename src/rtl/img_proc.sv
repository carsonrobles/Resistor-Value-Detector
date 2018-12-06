`include "pixel_pkg.svh"

module img_proc (
  input  wire         clk,

  input  wire  [ 3:0] fsel,       // filter select

  input  wire  [23:0] data_i,
  input  wire         vde_i,
  input  wire         hsync_i,
  input  wire         vsync_i,

  output logic [23:0] data_o,
  output logic        vde_o,
  output logic        hsync_o,
  output logic        vsync_o
);

  axis_if #( .DATA_TYPE (pixel_pkg::chunk_t) ) axis_buf         ();
  axis_if #( .DATA_TYPE (pixel_pkg::chunk_t) ) axis_buf2        ();
  axis_if #( .DATA_TYPE (pixel_pkg::chunk_t) ) axis_edge_detect ();
  axis_if #( .DATA_TYPE (pixel_pkg::chunk_t) ) axis_blur        ();
  axis_if #( .DATA_TYPE (pixel_pkg::chunk_t) ) axis_sharpen     ();
  axis_if #( .DATA_TYPE (pixel_pkg::chunk_t) ) axis_emboss      ();
  axis_if #( .DATA_TYPE (pixel_pkg::chunk_t) ) axis_median      ();
  axis_if #( .DATA_TYPE (pixel_pkg::pixel_t) ) axis_debuf       ();

  // image buffer
  img_buf img_buf_i (
    .clk    (clk),
    .en     (1),
    .pdata  (data_i),
    .pvld   (vde_i),
    .hsync  (hsync_i),
    .vsync  (vsync_i),
    .axis_o (axis_buf)
  );

  /*median_filter median_filter_i (
    .clk    (clk),
    .rst    (rst),
    .axis_i (axis_buf),
    .axis_o (axis_median)
  );

  always_comb axis_median.rdy = 1;

  img_buf img_buf_i2 (
    .clk    (clk),
    .en     (1),
    .pdata  ({axis_median.data[1][1].red, axis_median.data[1][1].grn, axis_median.data[1][1].blu}),
    .pvld   (axis_median.vld),
    .hsync  (hsync_i),
    .vsync  (vsync_i),
    .axis_o (axis_buf2)
  );*/

  conv_int #(
    .DIM    (3),
    .KERNEL ('{{-1, -1, -1},
               {-1,  8, -1},
               {-1, -1, -1}})
 ) conv_edge_detect (
    .clk    (clk),
    .rst    (rst),
    .en     (fsel[0]),
    .axis_i (axis_buf),
    .axis_o (axis_edge_detect)
 );

  // edge detect
  conv #(
    .DIM (3),
    .KERNEL ('{
      {'b0001, 'b0010, 'b0001},
      {'b0010, 'b0100, 'b0010},
      {'b0001, 'b0010, 'b0001}
    })
  ) conv_blur (
    .clk    (clk),
    .rst    (rst),
    .en     (fsel[1]),
    .axis_i (axis_edge_detect),
    .axis_o (axis_blur)
  );

  conv_int #(
    .DIM    (3),
    .KERNEL ('{{ 0, -1,  0},
               {-1,  5, -1},
               { 0, -1,  0}})
 ) conv_edge_sharpen (
    .clk    (clk),
    .rst    (rst),
    .en     (fsel[2]),
    .axis_i (axis_blur),
    .axis_o (axis_sharpen)
 );

  conv_int #(
    .DIM    (3),
    .KERNEL ('{{-2, -1,  0},
               {-1,  1,  1},
               { 0,  1,  2}})
 ) conv_emboss (
    .clk    (clk),
    .rst    (rst),
    .en     (fsel[3]),
    .axis_i (axis_sharpen),
    .axis_o (axis_emboss)
 );

  img_debuf img_debuf_i (
    .clk    (clk),
    .rst    (rst),
    .axis_i (axis_emboss),
    .axis_o (axis_debuf)
  );

  always_comb axis_debuf.rdy = 1;

  pixel_pkg::pixel_t pixel_o;

  always_comb pixel_o = axis_debuf.data;

  always_ff @ (posedge clk) begin
    data_o  <= (fsel) ? {pixel_o.red, pixel_o.grn, pixel_o.blu} : data_i;
    vde_o   <= vde_i;
    hsync_o <= hsync_i;
    vsync_o <= vsync_i;
  end

endmodule
