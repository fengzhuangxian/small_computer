module reg_group
(we,clk,sr,dr,i,s,d);
input we,clk;
input[7:0] i;
input[1:0] sr,dr;
output reg[7:0] s,d;
reg[7:0] r0=8'h00;
reg[7:0] r1=8'b10101010;
reg[7:0] r2=8'b00000000;
reg[7:0] r3=8'b00000111;

always @(*)
begin
case(sr)
2'b00:s=r0;
2'b01:s=r1;
2'b10:s=r2;
2'b11:s=r3;
default:s=r3;
endcase
case(dr)
2'b00:d=r0;
2'b01:d=r1;
2'b10:d=r2;
2'b11:d=r3;
default:d=r3;
endcase
end

always@(negedge clk)
begin
case({we,dr})
3'b100:r0<=i;
3'b101:r1<=i;
3'b110:r2<=i;
3'b111:r3<=i;
endcase
end

endmodule 





