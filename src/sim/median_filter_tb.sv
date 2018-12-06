`include "axi.svh"
`include "pixel_pkg.svh"

module median_filter_tb;

  logic clk = 1;
  logic rst = 0;

  axis_if #( .DATA_TYPE (pixel_pkg::chunk_t) ) axis_i ();
  axis_if #( .DATA_TYPE (pixel_pkg::chunk_t) ) axis_o ();

  median_filter dut (
    .clk    (clk),
    .rst    (rst),
    .axis_i (axis_i),
    .axis_o (axis_o)
  );

  always_latch clk <= #5 ~clk;

  always_comb axis_i.vld = 1;
  always_comb axis_o.rdy = 1;

  int i, j;

  initial begin
    repeat (10) begin
      @ (posedge clk);
      for (i = 0; i < 3; i += 1)
        for (j = 0; j < 3; j += 1) begin
          axis_i.data[i][j].red = $urandom_range(255, 0);
          axis_i.data[i][j].grn = $urandom_range(255, 0);
          axis_i.data[i][j].blu = $urandom_range(255, 0);
        end
    end

    repeat (10) @ (posedge clk);
    $finish;
  end

endmodule
