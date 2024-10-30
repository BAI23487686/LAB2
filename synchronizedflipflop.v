module synchronizedflipflop(
input wire clk,
input wire reset,
input wire key1,
output reg led0
);
always @(posedge clk)begin
if (reset)
led0<=0;
else
led0<=key1;
end
endmodule
