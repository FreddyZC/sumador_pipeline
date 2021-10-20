module sum_pipe ( output reg [3:0] sum30_dd_out,
		  input wire [3:0] dataA, dataB,
		  input wire 	   clk, reset_L );

   reg [1:0] 			   dataA_d, dataB_d;
   reg [1:0] 			   sum10, sum10_d;
   reg [3:0] 			   sum30_d;
   reg 				   acarreo0;
   reg 				   acarreo0_d;
   
   

   /// ETAPA UNO DEL PIPELINE
   
   /// SUMA DE LOS VALORES MENOS SIGNIFICATIVOS
   always @( * ) begin: SUMLSB_LOGIC
      if( reset_L ) begin
	 sum10 = dataA[1:0] + dataB[1:0];
      end
      else begin
	 sum10 = 2'b00;
      end
   end // block: SUMLSB_LOGIC

   always @( * ) begin: CARRY_LOGIC
      if( reset_L ) begin
	 if( sum10 < dataA[1:0] ) begin
	    acarreo0 = 1'b1;
	 end
	 else begin
	    acarreo0 = 1'b0;
	 end
      end
      else begin
	 acarreo0 = 1'b0;
      end // else: !if( reset_L )
   end // always @ ( suma10 )
   
   
   // PRIMERA ETAPA DE FLOPS
   always @( posedge clk ) begin: FLOPS_ETAPA1
      acarreo0_d <= acarreo0;
      dataA_d <= dataA[3:2];
      dataB_d <= dataB[3:2];
      sum10_d <= sum10;
   end

   // ETAPA DOS DEL PIPELINE

   // SUMA LAS PARTES MAS SINIFICATIVAS, EL ACARREO Y
   // ADEMAS AGREGA LA SUMA DE LA PARTE LSB DE LA ETAPA
   // ANTERIOR.   
   always @( * ) begin: SUMMSB_LOGIC
      sum30_d[3:2] = dataA_d + dataB_d + acarreo0_d;
      sum30_d[1:0] = sum10_d;
   end

   always @( posedge clk ) begin:  FLOPS_ETAPA2
      sum30_dd_out <= sum30_d;
   end

endmodule // sum_pipe
