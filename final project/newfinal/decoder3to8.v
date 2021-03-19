module Decoder3to8(EN, W2, W1, W0, Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7);
	
	input EN, W2, W1, W0;
	output Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7;
	reg [7:0] out;
	
	always@(EN or W2 or W1 or W0)
	begin
		case({EN, W2, W1, W0})
			4'b 1000 : out = 8'b 00000001;
			4'b 1001 : out = 8'b 00000010;
			4'b 1010 : out = 8'b 00000100;
			4'b 1011 : out = 8'b 00001000;
			4'b 1100 : out = 8'b 00010000;
			4'b 1101 : out = 8'b 00100000;
			4'b 1110 : out = 8'b 01000000;
			4'b 1111 : out = 8'b 10000000;
			default : out = 8'b00000000;
		endcase
	end
	
	assign {Y7, Y6, Y5, Y4, Y3, Y2, Y1, Y0} = out;
endmodule
			
		
			