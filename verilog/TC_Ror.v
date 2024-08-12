module TC_Ror (in, shift, out);
    parameter UUID = 0;
    parameter NAME = "";
    parameter BIT_WIDTH = 8;
    input [BIT_WIDTH-1:0] in;
    input [7:0] shift;
    output [BIT_WIDTH-1:0] out;

    assign out = (in << shift) | (in >> (BIT_WIDTH - shift));
endmodule
