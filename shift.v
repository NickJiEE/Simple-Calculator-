`timescale 1ns / 1ps

module lab5shift(
input startBit,
input oneBit,
input zeroBit,
input clk,
input reset,
output reg [11:0] outReg
);

// position 11 holds the oldest bit, position 0 holds the newest
reg [11:0] shiftReg;
integer cnt = 0;

always @(posedge clk) 
begin
    if (reset) shiftReg[11:0] = 12'h000;
    else if (startBit)
    begin
        shiftReg <= 12'h000;
        cnt <= 12;
    end
    else if (zeroBit)
    begin
        shiftReg[11:0] <= {shiftReg[10:0], 1'b0}; 
        cnt <= cnt - 1;
    end
    else if (oneBit)
    begin
        shiftReg[11:0] <= {shiftReg[10:0], 1'b1};
        cnt <= cnt - 1;
    end
    if(cnt == 0) outReg = shiftReg;
end

endmodule
