module running_light(
    input wire clk,       // 50MHz系统时钟
    input wire reset,     // 复位按键
    output reg [3:0] led  // LED灯
);

reg [24:0] counter;  // 用于计时的计数器

always @(posedge clk or posedge reset) begin
    if (reset) begin
        counter <= 0;
        led <= 4'b0001;
    end else begin
        if (counter == 25_000_000 - 1) begin // 50MHz / 2 = 25M
            counter <= 0;
            led <= {led[2:0], led[3]}; // 左移1位
        end else begin
            counter <= counter + 1;
        end
    end
end

endmodule
