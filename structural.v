`timescale 1ns / 1ps
module structural(B,C,D,Y);
input B,C,D;
output Y;
wire a1,a2,a3;
not(a1,C);
and(a2,a1,D);
and(a3,B,D);
or(Y,a2,a3);

endmodule
