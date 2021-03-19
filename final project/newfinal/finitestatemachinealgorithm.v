module finitestatemachinealgorithm(y2, y1, y0, w0, w1, y_2, y_1, y_0);

input y2, y1, y0, w0, w1;
output y_2, y_1, y_0;

assign y_2 = (~y1 & y2) | (y1 & y0 & ~y2) | (~y0 & y2);
assign y_1 = (~y2 & ~y1 & y0) | (~y2 & ~y1 & w0 & ~w1) | (w1 & ~w0 & ~y1 & ~y2) | (~y1 & y2) | (~y0 & y2);
assign y_0 = (y1 & y2) | (~y2 & ~y1 & ~y0) | (~y2 & y1 & y0 & ~w1);

endmodule
