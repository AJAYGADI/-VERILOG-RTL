module ram(din,dout,we,re,clk,wr,rd,rst);
parameter width=8,depth=16,addr_bus=4;
input we,re,clk,rst;
input [addr_bus-1:0]wr,rd;
input [width-1:0]din;
output reg [width-1:0]dout;
integer i;
reg [width-1:0]mem[depth-1:0];
always@(posedge clk)
begin
if(rst)
begin
dout<=8'b0;
for(i=0;i<16;i=i+1)
mem[i]<=1'b0;
end
else
begin
if(we==1)
mem[wr]=din;
/*else
mem[wr]<=mem[wr];*/
if(re==1)
dout=mem[rd];
/*else
dout<=8'b0;*/
end
end
endmodule
