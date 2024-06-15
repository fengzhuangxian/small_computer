module au(au_en,ac,a,b,t,gf);
input au_en;
input [3:0]ac;
input [7:0]a,b;
output [7:0]t;
output gf;
reg [7:0]t;
reg gf;
always @(au_en,a,b,ac)
begin
	gf=1'b0;
	t=8'hZZ;
	if(au_en==1'b1)
	begin
	if(ac==4'b1000)
	t=a+b;
	else if(ac==4'b1001)
	begin
	t=b-a;
	if(b[7]==a[7])begin
	if(b>a)
	gf=1'b1;
	else
	gf=1'b0;end
	else begin
    if(b<a)
    gf=1'b1;
    else
    gf=1'b0;end
    end
	else if(ac==4'b0100||ac==4'b0101||ac==4'b1101||ac==4'b0001)
	t=a;
	end
	else
	t=8'hZZ;
end
endmodule 