module led_blink(
input wire sys_clk,
input wire sys_rst_n,
output reg led_out
);
reg[24:0] cnt;
always@(posedge sys_clk or negedge sys_rst_n)begin
if (!sys_rst_n)begin
cnt<=25'd0;
led_out<=1'b1;
end else if (cnt==25_000_000 -1)begin
cnt<=25'd0;
led_out<=~led_out;
end else begin
cnt<=cnt+1;
end
end
endmodule
