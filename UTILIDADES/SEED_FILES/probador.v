module probador( output reg [3:0] dataA, dataB, idx,
		 output reg 	  clk, reset_L,
		 input wire [3:0] sum30_dd_out, idx_dd_out,
		 input wire [3:0] sum30_dd_out_synt, idx_dd_out_synt );

   /// DATOS QUE SE DEBEN SINCRONIZAR
   reg [3:0] 			  dataA_n, dataB_n, idx_n;
   reg 				  reset_L_n;
   reg 				  discrepancia;
   

   always @( posedge clk ) begin
      if( !reset_L ) begin
	 discrepancia <= 1'b0;
      end
      else begin
	 if( sum30_dd_out != sum30_dd_out_synt ) begin
	    $display( "DISCREPANCIA SUMADORES EN %t", $time );
	    discrepancia <= 1'b1;
	 end
	 if( idx_dd_out != idx_dd_out_synt ) begin
	    $display( "DISCREPANCIA DE IDX EN %t", $time );
	    discrepancia <= 1'b1;
	 end
      end
   end
   
   initial begin
      $dumpfile( "000sumador.vcd" );
      $dumpvars( 0 );
   end

   initial begin
      dataA_n = 4'b0000;
      dataB_n = 4'b0000;
      idx_n = 4'b0000;
      clk = 1'b0;
      reset_L_n = 1'b0;
   end

   always begin
      #1 clk = !clk;
   end

   always @( posedge clk ) begin
      dataA <= dataA_n;
      dataB <= dataB_n;
      idx <= idx_n;
      reset_L <= reset_L_n;
   end

   initial begin
      #5 reset_L_n = 1'b1;
      /*
	 #2
	 dataA_n = 4'h8;
	 dataB_n = 4'h5;
	 idx_n = $random;*/
      repeat( 20 ) begin
	 #2
	 dataA_n = $random;
	 dataB_n = $random;
	 idx_n = $random;
      end
      #10 $finish;
   end
   
endmodule // probador

     
      
