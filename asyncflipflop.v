module asyncflipflop(
input clk,
input reset,
input key1,
output reg led0
);
always @(posedge clk or posedge reset)begin
if(reset)
led0<=0;
else
led0<=key1;
end
endmodule