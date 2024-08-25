module zero(input data, input clk, input en, input reset, output zero); 

wire [11:0]q;
twelve_shift Twelvebitshift1(data, clk, en, reset, q[11:0]);

wire w1,w2;
and and4(w1, q[0], ~q[1], ~q[2], ~q[3], q[4]);
and and5(w2, q[0], ~q[1], ~q[2], q[3]);
or or1(zero, w1,w2);

endmodule