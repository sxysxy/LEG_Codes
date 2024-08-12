module LEG_ALU (clk, rst, OPCODE, OP1, OP2, Output);
  parameter UUID = 0;
  parameter NAME = "";
  input wire clk;
  input wire rst;

  input  wire [7:0] OPCODE;
  input  wire [7:0] OP1;
  input  wire [7:0] OP2;
  output  wire [7:0] Output;

  TC_Add # (.UUID(64'd3238717518464077603 ^ UUID), .BIT_WIDTH(64'd8)) Add8_0 (.in0(wire_3), .in1(wire_4), .ci(1'd0), .out(wire_12), .co());
  TC_Neg # (.UUID(64'd282612000303502066 ^ UUID), .BIT_WIDTH(64'd8)) Neg8_1 (.in(wire_4), .out(wire_16));
  TC_Add # (.UUID(64'd2756254090804071230 ^ UUID), .BIT_WIDTH(64'd8)) Add8_2 (.in0(wire_3), .in1(wire_16), .ci(1'd0), .out(wire_8), .co());
  TC_And # (.UUID(64'd1155999106566595556 ^ UUID), .BIT_WIDTH(64'd8)) And8_3 (.in0(wire_3), .in1(wire_4), .out(wire_1));
  TC_Or # (.UUID(64'd4419562848920002702 ^ UUID), .BIT_WIDTH(64'd8)) Or8_4 (.in0(wire_3), .in1(wire_4), .out(wire_5));
  TC_Not # (.UUID(64'd2434627759258069715 ^ UUID), .BIT_WIDTH(64'd8)) Not8_5 (.in(wire_3), .out(wire_0));
  TC_Xor # (.UUID(64'd3760800324510585392 ^ UUID), .BIT_WIDTH(64'd8)) Xor8_6 (.in0(wire_3), .in1(wire_4), .out(wire_18));
  TC_Splitter8 # (.UUID(64'd627206394616605988 ^ UUID)) Splitter8_7 (.in(wire_6), .out0(wire_19), .out1(wire_9), .out2(wire_17), .out3(wire_13), .out4(), .out5(), .out6(), .out7());
  TC_Constant # (.UUID(64'd3788680990358243889 ^ UUID), .BIT_WIDTH(64'd1), .value(1'd1)) On_8 (.out());
  TC_Shl # (.UUID(64'd3326084136718882789 ^ UUID), .BIT_WIDTH(64'd8)) Shl8_9 (.in(wire_3), .shift(wire_4), .out(wire_11));
  TC_Shr # (.UUID(64'd3839487720351716464 ^ UUID), .BIT_WIDTH(64'd8)) Shr8_10 (.in(wire_3), .shift(wire_4), .out(wire_10));
  TC_Ror # (.UUID(64'd4458037054713197754 ^ UUID), .BIT_WIDTH(64'd8)) Ror8_11 (.in(wire_3), .shift(wire_4), .out(wire_2));
  TC_Rol # (.UUID(64'd3332357003048627187 ^ UUID), .BIT_WIDTH(64'd8)) Rol8_12 (.in(wire_3), .shift(wire_4), .out(wire_15));
  _4zm16DatazmMUXzm8b # (.UUID(64'd3334860127528975563 ^ UUID)) _4zm16DatazmMUXzm8b_13 (.clk(clk), .rst(rst), .\ç_____ (1'd0), .A3(wire_13), .A2(wire_17), .A1(wire_9), .A0(wire_19), .D0(wire_12), .D1(wire_8), .D2(wire_1), .D3(wire_5), .D4(wire_0), .D5(wire_18), .D6(wire_11), .D7(wire_10), .D8(wire_15), .D9(wire_2), .DA(wire_7), .DB(8'd0), .DC(8'd0), .DD(8'd0), .DE(8'd0), .DF(8'd0), .Output(wire_14));
  TC_Mul # (.UUID(64'd147329063022858440 ^ UUID), .BIT_WIDTH(64'd8)) Mul8_14 (.in0(wire_3), .in1(wire_4), .out0(wire_7), .out1());

  wire [7:0] wire_0;
  wire [7:0] wire_1;
  wire [7:0] wire_2;
  wire [7:0] wire_3;
  assign wire_3 = OP1;
  wire [7:0] wire_4;
  assign wire_4 = OP2;
  wire [7:0] wire_5;
  wire [7:0] wire_6;
  assign wire_6 = OPCODE;
  wire [7:0] wire_7;
  wire [7:0] wire_8;
  wire [0:0] wire_9;
  wire [7:0] wire_10;
  wire [7:0] wire_11;
  wire [7:0] wire_12;
  wire [0:0] wire_13;
  wire [7:0] wire_14;
  assign Output = wire_14;
  wire [7:0] wire_15;
  wire [7:0] wire_16;
  wire [0:0] wire_17;
  wire [7:0] wire_18;
  wire [0:0] wire_19;

endmodule
