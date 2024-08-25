`define dataLength 4

// serial in/ parallel out shift
// async reset
module shiftWithEnable (
input data,  // data  input
input clk,   // clock input
input en,    // chip enable
input reset, // reset input
output reg [`dataLength:1] q// data  output
);

always @(posedge clk or posedge reset) 
begin
    if(en) begin
        if(reset)
            q = `dataLength'b0;
        else
            q <= {q[`dataLength-1:1],data};
    end
end

endmodule