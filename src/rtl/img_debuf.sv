module img_debuf (
  input  wire    clk,
  input  wire    rst,

  axis_if.slave  axis_i,  // chunk of pixels in
  axis_if.master axis_o   // single pixel out
);

  always_comb axis_o.data = axis_i.data[1][1];
  always_comb axis_o.vld  = axis_i.vld;
  always_comb axis_i.rdy  = axis_o.rdy;

endmodule
