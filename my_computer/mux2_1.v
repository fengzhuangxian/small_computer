module mux2_1(a,b,s,y);
input [7:0]a,b;
input s;
output [7:0]y;

assign y = (s==1'b0)? a : b;

endmodule