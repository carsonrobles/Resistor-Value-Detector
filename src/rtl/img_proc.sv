module img_proc (
  input  wire         clk,

  input  wire  [ 3:0] sw,

  input  wire  [23:0] data_i,
  input  wire         vde_i,
  input  wire         hsync_i,
  input  wire         vsync_i,

  output logic [23:0] data_o,
  output logic        vde_o,
  output logic        hsync_o,
  output logic        vsync_o
);

  axis_if #( .DATA_TYPE (pixel_pkg::chunk_t) ) axis_buf   ();
  axis_if #( .DATA_TYPE (pixel_pkg::pixel_t) ) axis_debuf ();
  axis_if #( .DATA_TYPE (pixel_pkg::chunk_t) ) axis_conv  ();
  axis_if #( .DATA_TYPE (pixel_pkg::chunk_t) ) axis_conv1 ();

  img_buf img_buf_i (
    .clk    (clk),
    .en     (1),
    .pdata  (data_i),
    .pvld   (vde_i),
    .hsync  (hsync_i),
    .vsync  (vsync_i),
    .axis_o (axis_buf)
  );

  conv #(
    .DIM    (3),
    .KERNEL ('{{ 0, -1,  0},
               {-1,  5, -1},
               { 0, -1,  0}})
  ) conv_1 (
    .clk    (clk),
    .rst    (rst),
    .en     (sw[3]),
    .axis_i (axis_buf),
    .axis_o (axis_conv1)
  );

  conv #(
    .DIM (3),
    .KERNEL ('{{-1, -1, -1},
               {-1,  8, -1},
               {-1, -1, -1}})
  ) conv_2 (
    .clk    (clk),
    .rst    (rst),
    .en     (sw[2]),
    .axis_i (axis_conv1),
    .axis_o (axis_conv)
  );

  img_debuf img_debuf_i (
    .clk    (clk),
    .rst    (rst),
    .axis_i (axis_conv),
    .axis_o (axis_debuf)
  );

  always_comb axis_debuf.rdy = 1;

  always_ff @ (posedge clk) begin
    data_o  <= (sw) ? {axis_debuf.data.red, axis_debuf.data.grn, axis_debuf.data.blu} : data_i;
    vde_o   <= vde_i;
    hsync_o <= hsync_i;
    vsync_o <= vsync_i;
  end

endmodule
