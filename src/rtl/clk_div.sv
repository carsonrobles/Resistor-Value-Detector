module clk_div #(
  parameter int N = 2
) (
  input  wire  clk_i,
  output logic clk_o = 0
);

  logic [$clog2(N)-1:0] cnt = '0;

  always_ff @ (posedge clk_i)
    cnt <= (cnt < (N - 1)) ? cnt + 1 : '0;

  always_ff @ (posedge clk_i)
    if (cnt == (N - 1))
      clk_o <= ~clk_o;

endmodule
