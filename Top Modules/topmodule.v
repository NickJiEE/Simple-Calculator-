module topmodule(input data, input clk, input en, input clear, output [11:0]command);

    wire startbit, onebit, zerobit;
    comb_logic cb(data, clk, en, clear, zerobit, onebit, startbit);
    shift shift1(startbit, onebit, zerobit, clk, clear, command[11:0]);

endmodule

