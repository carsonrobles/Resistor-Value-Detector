`include "pixel_pkg.svh"

module pixel_sort (
  input clk,
  input  pixel_pkg::pixel_t pix_a,    // pixel in 1
  input  pixel_pkg::pixel_t pix_b,    // pixel in 2

  output pixel_pkg::pixel_t pix_l,    // pixel out low
  output pixel_pkg::pixel_t pix_h     // pixel out high
);

  wire pix_red = (pix_a.red > pix_b.red);
  wire pix_grn = (pix_a.grn > pix_b.grn);
  wire pix_blu = (pix_a.blu > pix_b.blu);

  always_comb begin
    pix_l.red = (pix_red) ? pix_b.red : pix_a.red;
    pix_l.grn = (pix_grn) ? pix_b.grn : pix_a.grn;
    pix_l.blu = (pix_blu) ? pix_b.blu : pix_a.blu;
  end

  always_comb begin
    pix_h.red = (pix_red) ? pix_a.red : pix_b.red;
    pix_h.grn = (pix_grn) ? pix_a.grn : pix_b.grn;
    pix_h.blu = (pix_blu) ? pix_a.blu : pix_b.blu;
  end

endmodule
