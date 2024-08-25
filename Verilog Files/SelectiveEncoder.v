`timescale 1ns / 1ps

`define REMOTE_0 12'b100100010000
`define REMOTE_1 12'b000000010000
`define REMOTE_2 12'b100000010000
`define REMOTE_3 12'b010000010000
`define REMOTE_4 12'b110000010000
`define REMOTE_5 12'b001000010000
`define REMOTE_6 12'b101000010000
`define REMOTE_7 12'b011000010000
`define REMOTE_8 12'b111000010000
`define REMOTE_9 12'b000100010000

module SelectiveEncoder(
input[11:0] encode_in,
input clear,
output reg [3:0] encode_out
);
         
always@(encode_in)
if (clear) begin
encode_out = 4'h0;
end else
    begin
        case(encode_in)
        `REMOTE_0: encode_out = 4'h0;
        `REMOTE_1: encode_out = 4'h1;
        `REMOTE_2: encode_out = 4'h2;
        `REMOTE_3: encode_out = 4'h3;
        `REMOTE_4: encode_out = 4'h4;
        `REMOTE_5: encode_out = 4'h5;
        `REMOTE_6: encode_out = 4'h6;
        `REMOTE_7: encode_out = 4'h7;
        `REMOTE_8: encode_out = 4'h8;
        `REMOTE_9: encode_out = 4'h9;
        endcase
    end
endmodule

