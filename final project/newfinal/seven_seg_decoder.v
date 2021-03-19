module	seven_seg_decoder	(X3,	X2,	X1,	X0, A,	B,	C,	D,	E,	F,	G );
input	X3,	X2,	X1,	X0;
output	A,	B,	C,	D,	E,	F,	G;
reg	[6:0] i ;
always	@(X3 or	X2 or	X1 or	X0)
begin //begin	the	procedural	statements
case	({X3,	X2,	X1,	X0}) //variables	that	aiiect	the	procedure
		//the	4’b	simply	means	that	we’re	
4'b0000:	i=	7'b0000001;	 //considering	three	bit	binary variable
4'b0001:	i=	7'b1001111;	
4'b0010:	i=	7'b0010010;
4'b0011:	i=	7'b0000110;
4'b0100:	i=	7'b1001100;
4'b0101:	i=	7'b0100100;
4'b0110:	i=	7'b0100000;
4'b0111:	i=	7'b0001111;


4'b1000:	i=	7'b0000000;	 //considering	three	bit	binary variable
4'b1001:	i=	7'b0000100;	
4'b1010:	i=	7'b0001000;
4'b1011:	i=	7'b1100000;
4'b1100:	i=	7'b0110001;
4'b1101:	i=	7'b1000010;
4'b1110:	i=	7'b0110000;
4'b1111:	i=	7'b0111000;




endcase
end //end	the	begin	statement

assign {A,	B,	C,	D,	E,	F,	G }= i;

endmodule