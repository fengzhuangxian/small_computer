module ins_decode(en,ir,mova,movb,movc,movd,add,sub,jmp,jg,in1,out1,movi,halt,push,pop);
input en;
input [3:0] ir;
output mova,movb,movc,movd,add,sub,jmp,jg,in1,out1,movi,halt,push,pop;
reg mova,movb,movc,movd,add,sub,jmp,jg,in1,out1,movi,halt,push,pop;
always @(en,ir)
begin
	mova=1'b0;
	movb=1'b0;
	movc=1'b0;
	movd=1'b0;
	add=1'b0;
	sub=1'b0;
	jmp=1'b0;
	jg=1'b0;
	in1=1'b0;
	out1=1'b0;
	movi=1'b0;
	halt=1'b0;
	push=1'b0;
	pop=1'b0;
if(en==1'b1)
    begin
	if(ir==4'b0100)begin
	mova=1'b1;end
	else begin
	mova=1'b0;end
	if(ir==4'b0101)begin
	movb=1'b1;end
	else begin
	movb=1'b0;end
	if(ir==4'b0110)begin
	movc=1'b1;end
	else begin
	movc=1'b0;end
	if(ir==4'b0111)begin
	movd=1'b1;end
	else begin
	movd=1'b0;end
	if(ir==4'b1000)begin
	add=1'b1;end
	else begin
	add=1'b0;end
	if(ir==4'b1001)begin
	sub=1'b1;end
	else begin
	sub=1'b0;end
	if(ir==4'b1010)begin
	jmp=1'b1;end
	else begin
	jmp=1'b0;end
	if(ir==4'b1011)begin
	jg=1'b1;end
	else begin
	jg=1'b0;end
	if(ir==4'b1100)begin
	in1=1'b1;end
	else begin
	in1=1'b0;end
	if(ir==4'b1101)begin
	out1=1'b1;end
	else begin
	out1=1'b0;end
	if(ir==4'b1110)begin
	movi=1'b1;end
	else begin
	movi=1'b0;end
	if(ir==4'b1111)begin
	halt=1'b1;end
	else begin
	halt=1'b0;end
	if(ir==4'b0001)
	push=1'b1;
	else
	push=1'b0;
	if(ir==4'b0010)
	pop=1'b1;
	else
	pop=1'b0;
	end
else
begin
if(ir==4'b0001)
	push=1'b1;
	else
	push=1'b0;
	if(ir==4'b0010)
	pop=1'b1;
	else
	pop=1'b0;
end
	;
end
endmodule