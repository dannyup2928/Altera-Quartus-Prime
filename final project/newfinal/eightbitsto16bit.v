
module eightbitsto16bit( a,b, outputArr );

input [7:0] a;
input [7:0] b;
output [15:0] outputArr;
assign outputArr = {a, b};
endmodule
