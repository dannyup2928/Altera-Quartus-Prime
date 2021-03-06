module mux4to1withEN(S1, S0, En, W0, W1, W2, W3, F);

	input S1, S0, En;
	input[7:0] W0, W1, W2, W3;
	output[7:0] F;
	reg [7:0] F;
	
	always@(W0 or W1 or W2 or W3 or S1 or S0 or En)
	begin
		case({En, S1, S0})
			3'b 100 : F = W0;
			3'b 101 : F = W1;
			3'b 110 : F = W2;
			3'b 111 : F = W3;
			
			default : F = 8'd0;
		endcase
	end
	
endmodule