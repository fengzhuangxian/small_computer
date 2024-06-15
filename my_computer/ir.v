module ir(ld_ir,clk,a,x);
input ld_ir,clk;
input [7:0]a;
output [7:0]x;
reg [7:0] t=8'b00000000;
always @(negedge clk)
begin
	if(ld_ir==1'b1)
		t<=a;
end
assign x=t;
endmodule 