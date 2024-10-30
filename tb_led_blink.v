`timescale 1ns/1ps
module tb_led_blink;
reg sys_clk;
reg sys_rst_n;
wire led_out;

led_blink uut(
.sys_clk(sys_clk),
.sys_rst_n(sys_rst_n),
.led_out(led_out)
);
initial begin
sys_clk=1'b0;
forever #10 sys_clk=~sys_clk;
end
initial begin
sys_rst_n=1'b0;
#100;
sys_rst_n=1'b1;
end
initial begin
$monitor("$Time:%0t|LED State:%b",$time,led_out);
end
endmodule
