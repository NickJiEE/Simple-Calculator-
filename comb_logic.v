module comb_logic(input data, input clk, input en, input reset, output zero, output one, output start); 

zero zero1(data, clk, en, reset, zero);
one one1(data, clk, en, reset, one);
start_bit start_bit1(data, clk, en, reset, start);

endmodule
