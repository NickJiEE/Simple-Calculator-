module a (input JM1222HM_in1, input JM1222HM_in2, input JM1222HM_in3, input JM1222HM_in4, output JM1222HM_out1);

wire  JM1222HM_1,  JM1222HM_2,  JM1222HM_3, JM1222HM_4, JM1222HM_5,  JM1222HM_6; //store all 6 terms to then OR them
wire JM1222HM_11; //not for output

and and1 ( JM1222HM_1,  ~JM1222HM_in2,  ~JM1222HM_in4);
and and2 ( JM1222HM_2,  JM1222HM_in2,  JM1222HM_in3);
and and3 ( JM1222HM_3, ~JM1222HM_in1,  JM1222HM_in2, JM1222HM_in4);
and and4 ( JM1222HM_4, JM1222HM_in1,  ~JM1222HM_in2, ~JM1222HM_in3);
and and5 ( JM1222HM_5,  JM1222HM_in1,  ~JM1222HM_in4);
and and6 ( JM1222HM_6,  ~JM1222HM_in1,  JM1222HM_in3);

or or1 (JM1222HM_11, JM1222HM_1,  JM1222HM_2,  JM1222HM_3, JM1222HM_4, JM1222HM_5,  JM1222HM_6);

not not1 (JM1222HM_out1, JM1222HM_11);

endmodule

