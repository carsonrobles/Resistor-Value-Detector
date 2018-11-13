`include "pixel_pkg.svh"
`include "axi.svh"

module bram_tb;

  logic clk  = 1;
  logic en   = 0;

  logic [23:0] pdata = '0;
  logic        pvld  =  0;
  logic        hsync =  1;
  logic        vsync =  1;

  axis_if #( .DATA_TYPE (pixel_pkg::chunk_t) ) axis_o ();

  img_buf dut (
    .clk    (clk),
    .en     (en),
    .pdata  (pdata),
    .pvld   (pvld),
    .hsync  (hsync),
    .vsync  (vsync),
    .axis_o (axis_o)
  );

  always_latch clk <= #5 ~clk;

  initial axis_o.rdy = 0;
  always_ff @ (posedge clk) axis_o.rdy <= ~axis_o.rdy;

  always_ff @ (posedge clk)
    pdata <= pdata + 1;

  initial begin
    @ (posedge clk);
    en <= 1;

    @ (posedge clk);
    pvld  <= 1;

    repeat (50) begin
      hsync <= 1;
      pvld  <= 1;
      repeat (10) @ (posedge clk);
      hsync <= 0;
      pvld  <= 0;
      repeat ( 3) @ (posedge clk);
    end
  end

endmodule
