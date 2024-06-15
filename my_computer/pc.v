module pc(ld_pc,in_pc,clk,a,c);
input ld_pc,in_pc,clk;
input [7:0]a;
output [7:0]c;
reg[7:0] t=8'b00000000;

always @(negedge clk)
begin
	if(in_pc==1'b0&&ld_pc==1'b1)
		t<=a;
	if(in_pc==1'b1&&ld_pc==1'b0)
		t<=t+8'b00000001;
end

assign c=t;
endmodule 