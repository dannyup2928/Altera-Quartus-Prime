
module sixteenbitstotwoeightbits(IN, OUTA, OUTB);
	
	input [15:0] IN;
	output [7:0] OUTA, OUTB;
	
	assign OUTA = IN[7:0];
	assign OUTB = IN[15:8];
endmodule



