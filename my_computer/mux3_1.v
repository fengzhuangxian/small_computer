module mux3_1(a,b,c,y,s);
output reg [7:0]y;
input [7:0]a,b,c;
input [1:0]s;

always@(*)
begin
case(s)
2'b00:y=a;
2'b01:y=b;
2'b10:y=c;
default:y=a;
endcase
end
endmodule
