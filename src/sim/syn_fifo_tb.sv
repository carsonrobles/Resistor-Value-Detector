`include "axi.svh"
`include "pixel_pkg.svh"

module syn_fifo_tb;

  logic clk = 1;
  logic rst = 0;

  wire  full;
  wire  empty;

  axis_if #( .DATA_TYPE (pixel_pkg::pixel_t) ) axis_i ();
  axis_if #( .DATA_TYPE (pixel_pkg::pixel_t) ) axis_o ();

  syn_fifo #(
    .DATA_TYPE  (pixel_pkg::pixel_t),
    .FIFO_DEPTH (8)
  ) dut (
    .clk    (clk),
    .rst    (rst),
    .full   (full),
    .empty  (empty),
    .axis_i (axis_i),
    .axis_o (axis_o)
  );

  always_latch clk <= #5 ~clk;

  initial begin
    repeat (5) begin
    repeat (5) @ (posedge clk);

    while (!full) begin
      axis_i.data.red <= axis_i.data.red + 1;
      axis_i.data.grn <= axis_i.data.grn + 1;
      axis_i.data.blu <= axis_i.data.blu + 1;
      axis_i.vld  <= 1;

      while (~axis_i.ok)
        @ (posedge clk);

      axis_i.vld  <= 0;

      @ (posedge clk);
    end

    repeat (5) @ (posedge clk);

    while (!empty) begin
      axis_o.rdy <= 1;

      while (~axis_o.ok)
        @ (posedge clk);

      axis_o.rdy <= 0;

      @ (posedge clk);
    end
    end
  end

endmodule
