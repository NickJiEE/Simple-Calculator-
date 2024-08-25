module top(input data, input clk, input en, input reset, output [11:0]outReg);

    wire startbit, onebit, zerobit;
    topmodule tm(data, clk, en, reset, startbit, onebit, zerobit);
    shift shift1(startbit, onebit, zerobit, clk, reset, outReg[11:0]);

endmodule

