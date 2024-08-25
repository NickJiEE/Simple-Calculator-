module half_adder (input a, input b, output sum, output carry);

    wire w1, w2, w3;
    
    nand nand1 ( w1, a, b);
    nand nand2 ( w2, w1, a);
    nand nand3 ( w3, w1, b);
    nand nand4 ( sum, w2, w3);
    nand nand5 ( carry, w1, w1);
    
endmodule

    