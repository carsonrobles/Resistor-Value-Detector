`include "axi.svh"
`include "pixel_pkg.svh"

module median_filter (
  input wire     clk,
  input wire     rst,

  axis_if.slave  axis_i,    // chunk of pixels in
  axis_if.master axis_o     // chunk of pixels out
);

  pixel_pkg::pixel_t data_r [9];    // registered input data

  always_ff @ (posedge clk) begin
    int i, j;

    if (axis_i.ok)
      for (i = 0; i < 3; i += 1)
        for (j = 0; j < 3; j += 1)
          data_r[(3*i)+j] <= axis_i.data[i][j];
  end

  logic data_vld = 0;   // data valid

  always_ff @ (posedge clk) begin
    data_vld <= axis_i.ok;
  end

  always_comb axis_i.rdy = axis_o.rdy;

  pixel_pkg::pixel_t pix [9][9];

  // layer 1
  pixel_sort pixel_sort_0_0 (
    .pix_a (data_r[0]),
    .pix_b (data_r[1]),
    .pix_l (pix[0][0]),
    .pix_h (pix[0][1])
  );

  pixel_sort pixel_sort_0_1 (
    .pix_a (data_r[2]),
    .pix_b (data_r[3]),
    .pix_l (pix[0][2]),
    .pix_h (pix[0][3])
  );

  pixel_sort pixel_sort_0_2 (
    .pix_a (data_r[4]),
    .pix_b (data_r[5]),
    .pix_l (pix[0][4]),
    .pix_h (pix[0][5])
  );

  pixel_sort pixel_sort_0_3 (
    .pix_a (data_r[6]),
    .pix_b (data_r[7]),
    .pix_l (pix[0][6]),
    .pix_h (pix[0][7])
  );

  always_comb pix[0][8] = data_r[8];

  genvar gi, gj;

  generate
    for (gi = 0; gi < 8; gi += 1) begin
      //int lo = (gi % 2) ? 0 : 8;
      //int of = (gi % 2) ? 1 : 0;

      for (gj = (gi % 2) ? 1 : 0; gj < 8; gj += 2) begin
        pixel_sort pixel_sort_i (
          .pix_a (pix[  gi][  gj]),
          .pix_b (pix[  gi][gj+1]),
          .pix_l (pix[gi+1][  gj]),
          .pix_h (pix[gi+1][gj+1])
        );
      end

      always_comb pix[gi+1][(gi % 2) ? 0 : 8] = pix[gi][(gi % 2) ? 0 : 8];
    end
  endgenerate

  always_ff @ (posedge clk) begin
    axis_o.data       <= '{default : '0};
    axis_o.data[1][1] <= pix[8][4];
    axis_o.vld        <= data_vld;
  end

endmodule
