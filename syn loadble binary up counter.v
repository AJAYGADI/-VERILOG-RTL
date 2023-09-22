module up_counter(d,load,reset,clk,count);
input [3:0]d;
input load,reset,clk;
output reg [3:0]count;
always@(posedge clk)
if(reset)
begin
 count<=4'b0;
end
else if(load)
begin
 count<=d;
end
else 
 count<=count+1'b1
