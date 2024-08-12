module _3WayzmMUXzm8b (clk, rst, In0, In1_1, In2_1, In1_2, In2_2, Out);
  parameter UUID = 0;
  parameter NAME = "";
  input wire clk;
  input wire rst;

  input  wire [7:0] In0;
  input  wire [7:0] In1_1;
  input  wire [7:0] In2_1;
  input  wire [0:0] In1_2;
  input  wire [0:0] In2_2;
  output  wire [7:0] Out;

  TC_Nor # (.UUID(64'd2287049143756389866 ^ UUID), .BIT_WIDTH(64'd1)) Nor_0 (.in0(wire_3), .in1(wire_4), .out(wire_6));
  TC_Switch # (.UUID(64'd2896193143328393192 ^ UUID), .BIT_WIDTH(64'd8)) Switch8_1 (.en(wire_6), .in(wire_1), .out(wire_2_0));
  TC_Not # (.UUID(64'd1750112101518603494 ^ UUID), .BIT_WIDTH(64'd1)) Not_2 (.in(wire_3), .out(wire_8));
  TC_Not # (.UUID(64'd817213462956410813 ^ UUID), .BIT_WIDTH(64'd1)) Not_3 (.in(wire_4), .out(wire_5));
  TC_And # (.UUID(64'd2339792130991821023 ^ UUID), .BIT_WIDTH(64'd1)) And_4 (.in0(wire_8), .in1(wire_4), .out(wire_0));
  TC_Switch # (.UUID(64'd2350825729823127480 ^ UUID), .BIT_WIDTH(64'd8)) Switch8_5 (.en(wire_0), .in(wire_10), .out(wire_2_1));
  TC_And # (.UUID(64'd4334898001046572237 ^ UUID), .BIT_WIDTH(64'd1)) And_6 (.in0(wire_3), .in1(wire_5), .out(wire_9));
  TC_Switch # (.UUID(64'd476737675590496220 ^ UUID), .BIT_WIDTH(64'd8)) Switch8_7 (.en(wire_9), .in(wire_7), .out(wire_2_2));

  wire [0:0] wire_0;
  wire [7:0] wire_1;
  assign wire_1 = In0;
  wire [7:0] wire_2;
  wire [7:0] wire_2_0;
  wire [7:0] wire_2_1;
  wire [7:0] wire_2_2;
  assign wire_2 = wire_2_0|wire_2_1|wire_2_2;
  assign Out = wire_2;
  wire [0:0] wire_3;
  assign wire_3 = In2_2;
  wire [0:0] wire_4;
  assign wire_4 = In1_2;
  wire [0:0] wire_5;
  wire [0:0] wire_6;
  wire [7:0] wire_7;
  assign wire_7 = In2_1;
  wire [0:0] wire_8;
  wire [0:0] wire_9;
  wire [7:0] wire_10;
  assign wire_10 = In1_1;

endmodule
