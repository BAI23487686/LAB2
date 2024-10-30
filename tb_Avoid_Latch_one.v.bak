`timescale 1ns / 1ps

module tb_Avoid_Latch;

    // 输入信号
    reg in1;
    reg in2;
    reg in3;

    // 输出信号
    wire [7:0] out;

    // 实例化待测试模块
    Avoid_Latch uut (
        .in1(in1),
        .in2(in2),
        .in3(in3),
        .out(out)
    );

    initial begin
        // 初始化输入信号
        in1 = 0; in2 = 0; in3 = 0;
        #10;
        $display("Time=%t: in1=%b, in2=%b, in3=%b, out=%b", $time, in1, in2, in3, out);

        in1 = 0; in2 = 0; in3 = 1;
        #10;
        $display("Time=%t: in1=%b, in2=%b, in3=%b, out=%b", $time, in1, in2, in3, out);

        in1 = 0; in2 = 1; in3 = 0;
        #10;
        $display("Time=%t: in1=%b, in2=%b, in3=%b, out=%b", $time, in1, in2, in3, out);

        in1 = 0; in2 = 1; in3 = 1;
        #10;
        $display("Time=%t: in1=%b, in2=%b, in3=%b, out=%b", $time, in1, in2, in3, out);

        in1 = 1; in2 = 0; in3 = 0;
        #10;
        $display("Time=%t: in1=%b, in2=%b, in3=%b, out=%b", $time, in1, in2, in3, out);

        in1 = 1; in2 = 0; in3 = 1;
        #10;
        $display("Time=%t: in1=%b, in2=%b, in3=%b, out=%b", $time, in1, in2, in3, out);

        in1 = 1; in2 = 1; in3 = 0;
        #10;
        $display("Time=%t: in1=%b, in2=%b, in3=%b, out=%b", $time, in1, in2, in3, out);

        in1 = 1; in2 = 1; in3 = 1;
        #10;
        $display("Time=%t: in1=%b, in2=%b, in3=%b, out=%b", $time, in1, in2, in3, out);

        $stop; // 结束仿真
    end

endmodule
