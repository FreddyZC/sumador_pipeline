`include "probador.v"
`include "sumador.v"
`include "synth_sumador.v"
`include "./UTILIDADES/cmos_cells.v"

module testbench;

   /*AUTOWIRE*/
   // Beginning of automatic wires (for undeclared instantiated-module outputs)
   wire			clk;			// From PROBADOR of probador.v
   wire [3:0]		dataA;			// From PROBADOR of probador.v
   wire [3:0]		dataB;			// From PROBADOR of probador.v
   wire [3:0]		idx;			// From PROBADOR of probador.v
   wire [3:0]		idx_dd_out;		// From CONDUCTUAL of sumador.v
   wire [3:0]		idx_dd_out_synt;	// From SYNTESIS of synth_sumador.v
   wire			reset_L;		// From PROBADOR of probador.v
   wire [3:0]		sum30_dd_out;		// From CONDUCTUAL of sumador.v
   wire [3:0]		sum30_dd_out_synt;	// From SYNTESIS of synth_sumador.v
   // End of automatics

   probador PROBADOR( /*AUTOINST*/
		     // Outputs
		     .dataA		(dataA[3:0]),
		     .dataB		(dataB[3:0]),
		     .idx		(idx[3:0]),
		     .clk		(clk),
		     .reset_L		(reset_L),
		     // Inputs
		     .sum30_dd_out	(sum30_dd_out[3:0]),
		     .idx_dd_out	(idx_dd_out[3:0]),
		     .sum30_dd_out_synt	(sum30_dd_out_synt[3:0]),
		     .idx_dd_out_synt	(idx_dd_out_synt[3:0]));
   synth_sumador SYNTESIS( /*AUTOINST*/
			  // Outputs
			  .idx_dd_out_synt	(idx_dd_out_synt[3:0]),
			  .sum30_dd_out_synt	(sum30_dd_out_synt[3:0]),
			  // Inputs
			  .clk			(clk),
			  .dataA		(dataA[3:0]),
			  .dataB		(dataB[3:0]),
			  .idx			(idx[3:0]),
			  .reset_L		(reset_L));
   sumador CONDUCTUAL( /*AUTOINST*/
		      // Outputs
		      .sum30_dd_out	(sum30_dd_out[3:0]),
		      .idx_dd_out	(idx_dd_out[3:0]),
		      // Inputs
		      .dataA		(dataA[3:0]),
		      .dataB		(dataB[3:0]),
		      .idx		(idx[3:0]),
		      .clk		(clk),
		      .reset_L		(reset_L));
   
endmodule // testbench
