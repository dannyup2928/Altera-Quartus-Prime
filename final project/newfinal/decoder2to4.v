module Decoder2to4(EN, W1, W0, Y0, Y1, Y2, Y3);

	input EN, W1, W0;
	output Y0, Y1, Y2, Y3;
	reg [3:0] out;
	
	always@(EN or W1 or W0)
	begin
		case({EN, W1, W0})
			3'b 100 : out = 4'b 0001;
			3'b 101 : out = 4'b 0010;
			3'b 110 : out = 4'b 0100;
			3'b 111 : out = 4'b 1000;
			default : out = 4'b 0000;
		endcase
	end
	
	assign {Y3, Y2, Y1, Y0} = out;
endmodule
