module mod12(data,load,clk,reset,count);
input [3:0]data;
input load,clk,reset;
output reg [3:0]count;
always@(posedge clk)
if (reset)
begin
 count<=4'b0;
end
else if(load)
begin
count<=data;
end
else
 if(count==11)
 begin
 count<=4'b0;
 end
 else
 count<=count+1'b1;
endmodul
