`include "pixel_pkg.svh"
`include "axi.svh"

module tb;

  logic clk = 0;
  logic rst = 0;

  // AXI Streams i/o for convolution engine
  axis_if #( .DATA_TYPE (pixel_pkg::chunk_t) ) axis_i ();
  axis_if #( .DATA_TYPE (pixel_pkg::chunk_t) ) axis_o ();

  axis_if #( .DATA_TYPE (pixel_pkg::chunk_t) ) axis_i_n ();
  axis_if #( .DATA_TYPE (pixel_pkg::chunk_t) ) axis_o_n ();

  conv #(
    .KERNEL ('{
      {-1, -1, -1},
      {-1,  8, -1},
      {-1, -1, -1}
    })
  ) dut (
    .clk    (clk),
    .rst    (rst),
    .en     (1),
    .axis_i (axis_i.slave),
    .axis_o (axis_o.master)
  );

  conv_new #(
    .DIM    (3),
    .KERNEL ('{
      {-1, -1, -1},
      {-1,  8, -1},
      {-1, -1, -1}
    })
  ) dut_n (
    .clk    (clk),
    .rst    (rst),
    .en     (1),
    .axis_i (axis_i_n.slave),
    .axis_o (axis_o_n.master)
  );

  always_latch clk <= #20 ~clk;

  pixel_pkg::chunk_t data = '{default : '0};

  always_comb axis_i.data = data;
  always_comb axis_i.vld  = 1;
  always_comb axis_o.rdy  = 1;

  always_comb axis_i_n.data = data;
  always_comb axis_i_n.vld  = 1;
  always_comb axis_o_n.rdy  = 1;

  logic [7:0] cnt = '0;

  always_ff @ (posedge clk) cnt <= cnt + 1;

  /*always_ff @ (posedge clk) begin
    int i, j;

    for (i = 0; i < 3; i = i + 1) begin
      for (j = 0; j < 3; j = j + 1) begin
        data[i][j].red <= cnt;
        data[i][j].grn <= cnt;
        data[i][j].blu <= cnt;
      end
    end
  end*/

  initial begin
    repeat (3) @ (posedge clk);
    data <= '{
      {'{50, 75, 100}, '{55, 155, 25}, '{33, 25, 32}},
      {'{50, 75, 100}, '{55, 155, 25}, '{33, 25, 32}},
      {'{50, 75, 100}, '{55, 155, 25}, '{33, 25, 32}}
    };

    repeat (13) @ (posedge clk);
    data <= '{
      {'{150, 75, 100}, '{187, 56, 75}, '{233, 20, 132}},
      {'{50, 175, 122}, '{155, 95, 55}, '{13, 100, 132}},
      {'{50, 75, 10}, '{5, 255, 88}, '{33, 250, 32}}
    };
  end

endmodule
