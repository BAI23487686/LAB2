`timescale 1ns/1ps
module tb_synchronizedflipflop;
reg clk;
reg reset;
reg key1;
wire led0;
synchronizedflipflop uut(
.clk(clk),
.reset(reset),
.key1(key1),
.led0(led0)
);
initial clk =0;
always #10 clk=~clk;
initial begin
reset=1;
key1=0;
#15;
reset=0;
#20;
key1=1;
#20
key1=0;
#20;
reset=0;
#20;
$finish;
end
initial begin
$monitor("Time=%0t|clk=%b|reset=%b|key1=%b|led0=%b",$time,clk,reset,key1,led0);
end
endmodule
