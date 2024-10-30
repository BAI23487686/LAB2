module tb_running_light;

    reg clk;
    reg reset;
    wire [3:0] led;

    // 实例化待测试模块
    running_light uut (
        .clk(clk),
        .reset(reset),
        .led(led)
    );

    initial begin
        // 初始化信号
        clk = 0;
        reset = 0;

        // 生成时钟信号
        forever #10 clk = ~clk; // 50MHz
    end

    initial begin
        // 测试复位和运行灯信号
        #50 reset = 1;
        #50 reset = 0;

        // 运行仿真 2秒钟
        #200000000 $stop;
    end

endmodule
