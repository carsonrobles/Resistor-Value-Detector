module img_proc (
  input  wire         clk,

  input  wire  [23:0] data_i,
  input  wire         vde_i,
  input  wire         hsync_i,
  input  wire         vsync_i,

  output logic [23:0] data_o,
  output logic        vde_o,
  output logic        hsync_o,
  output logic        vsync_o
);

  always_ff @ (posedge clk) begin
    data_o  <= data_i + {val, val, val, val, val, val};
    vde_o   <= vde_i;
    hsync_o <= hsync_i;
    vsync_o <= vsync_i;
  end

endmodule
