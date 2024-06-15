module sm(sm_en,clk,sm);
input sm_en,clk;
output sm;
reg t=1'b0;
always @(negedge clk)
begin
	if(sm_en==1'b1)
		t<=~t;
end
assign sm=t;
endmodule 