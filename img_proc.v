module img_proc (
  input  wire clk,

  input  wire [ 3:0] val,

  input  wire [23:0] data_i,
  input  wire        vde_i,
  input  wire        hsync_i,
  input  wire        vsync_i,

  output reg  [23:0] data_o,
  output reg         vde_o,
  output reg         hsync_o,
  output reg         vsync_o
);

  always @ (posedge clk) begin
    data_o  <= data_i + {val, val, val, val, val, val};
    vde_o   <= vde_i;
    hsync_o <= hsync_i;
    vsync_o <= vsync_i;
  end

endmodule
