`include "pixel_pkg.svh"

module max_pixel (
  input  pixel_pkg::pixel_t pix_a,
  input  pixel_pkg::pixel_t pix_b,

  output pixel_pkg::pixel_t pix_o
);

  always_comb pix_o.red = (pix_a.red > pix_b.red) ? pix_a.red : pix_b.red;
  always_comb pix_o.grn = (pix_a.grn > pix_b.grn) ? pix_a.grn : pix_b.grn;
  always_comb pix_o.blu = (pix_a.blu > pix_b.blu) ? pix_a.blu : pix_b.blu;

endmodule
