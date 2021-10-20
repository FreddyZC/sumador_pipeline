`include "sum_pipe.v"

module sumador ( output wire [3:0] sum30_dd_out,
		 output reg [3:0] idx_dd_out,
		 input wire [3:0] dataA, dataB, idx,
		 input wire 	  clk, reset_L );

   reg [3:0] 			  idx_d;
   
   sum_pipe SUM_PIPE( sum30_dd_out, dataA, dataB, clk, reset_L );

   always @( posedge clk ) begin
      idx_d <= idx;
      idx_dd_out <= idx_d;
   end

endmodule // sumador

      
   
