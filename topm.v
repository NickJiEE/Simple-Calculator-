module topm(
input data,
input clk,
input en,
input in1Sel,
input in2Sel,
input resultSel,
output[6:0] led
);

// internal clear regsiter
reg clear;
    
// display value register
reg [3:0] display;
    
// two addtion operands register
reg [3:0] operand1;
reg [3:0] operand2;
    
// connection for the result 
wire [3:0] result;

// remote signal input 
wire [11:0] command;
topmodule tm(data, clk, en, clear, command[11:0]);

// strip the number
wire [3:0] number;
SelectiveEncoder strip(command, clear, number);

// 4 bit adder
FourBitAdder fba(operand1[3:0], operand2[3:0], result[3:0]);

// display module from
conv cv(display[3], display[2], display[1], display[0], led[0], led[1], led[2], led[3], led[4], led[5], led[6]);
    
// Store numbers into display
// also clear module after displayed the result
always @(posedge clk)
begin
    if(in1Sel) begin
        display = operand1;
        clear = 0;
    end
    else if(in2Sel) begin
        display = operand2;
        clear = 0;
    end 
    else if(resultSel) begin
        display = result;
        clear = 1;
    end
end

// Store numbers into the corresponding reg
always @(negedge clk)
begin
    if(in1Sel) begin
        operand1 = number;
    end
    else if (in2Sel) begin
        operand2 = number;
    end
end

endmodule
