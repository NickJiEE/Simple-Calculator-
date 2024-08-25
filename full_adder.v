module full_adder( input a, input b, input c_in, output sum, output carry );

wire w1, w2, w3;

half_adder F2_1 ( a, b,  w1, w2 );
half_adder F2_2 ( c_in, w1, sum, w3 );

or or1 (carry, w3, w2 );

endmodule

