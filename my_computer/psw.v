module psw(g_en,clk,gf,g);
input g_en,clk,g;
output gf;
reg t=1'b0;
always @(negedge clk)
begin
	if(g_en==1'b1)
		t<=g;
end
assign gf=t;
endmodule 