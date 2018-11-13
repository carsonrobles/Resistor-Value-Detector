`include "pixel_pkg.svh"
`include "axi.svh"

module tb;

  logic clk = 0;
  logic rst = 0;

  // AXI Streams i/o for convolution engine
  axis_if #( .DATA_TYPE (pixel_pkg::chunk_t) ) axis_i ();
  axis_if #( .DATA_TYPE (pixel_pkg::chunk_t) ) axis_o ();

  /*conv #(
    .KERNEL ('{
      {-1, -1, -1},
      {-1,  8, -1},
      {-1, -1, -1}
    })
  ) */
  conv dut (
    .clk    (clk),
    .rst    (rst),
    .axis_i (axis_i.slave),
    .axis_o (axis_o.master)
  );

  always_latch clk <= #20 ~clk;

  pixel_pkg::chunk_t data = '{default : '0};

  always_comb axis_i.data = data;

  logic [7:0] cnt = '0;

  always_ff @ (posedge clk) cnt <= cnt + 1;

  always_ff @ (posedge clk) begin
    int i, j;

    for (i = 0; i < 3; i = i + 1) begin
      for (j = 0; j < 3; j = j + 1) begin
        data[i][j].red <= cnt ^ 8'haa;
        data[i][j].grn <= cnt | 8'haa;
        data[i][j].blu <= ~cnt;
      end
    end

    axis_i.vld <= cnt[2];
  end

  always_comb axis_o.rdy = cnt[2];

endmodule
