module twelve_shift(input data, input clk, input en, input reset, output [11:0] q);

    shiftWithEnable shiftWithEnable1(data, clk, en, reset, q[3:0]);
    shiftWithEnable shiftWithEnable2(q[3], clk, en, reset, q[7:4]);
    shiftWithEnable shiftWithEnable3(q[7], clk, en, reset, q[11:8]);
endmodule

