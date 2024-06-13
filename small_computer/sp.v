module sp(pp,ph,sm,clk,ad);
input pp, ph,clk,sm;
output [7:0] ad;
reg [7:0] top=8'hFF;
reg [7:0] air=8'hFE;

always @(posedge clk)
begin
	if(ph==1'b1&&sm==1'b0)
	begin
	top<=top-8'h01;
	air<=air-8'h01;
	end;

	if(pp==1'b1&&sm==1'b0)
	begin
	top<=top+8'h01;
	air<=air+8'h01;
	end;
end

assign ad=ph?air:
			pp?top:
			8'hzz;
endmodule