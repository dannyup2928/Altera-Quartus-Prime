module Mux4_8b(S1, S0, W0, W1, W2, W3, F);

	input S1, S0;
	input[7:0] W0, W1, W2, W3;
	output[7:0] F;
	reg [7:0] F;
	
	always@(W0 or W1 or W2 or W3 or S1 or S0)
	begin
		case({S1, S0})
			2'b 00 : F = W0;
			2'b 01 : F = W1;
			2'b 10 : F = W2;
			2'b 11 : F = W3;
			
			default : F = 8'bx;
		endcase
	end
	
endmodule
