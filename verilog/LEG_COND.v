module LEG_COND (clk, rst, OP1, OP2, OP, Output);
  parameter UUID = 0;
  parameter NAME = "";
  input wire clk;
  input wire rst;

  input  wire [7:0] OP1;
  input  wire [7:0] OP2;
  input  wire [7:0] OP;
  output  wire [0:0] Output;

  TC_Equal # (.UUID(64'd1602637931991272690 ^ UUID), .BIT_WIDTH(64'd8)) Equal8_0 (.in0(wire_10), .in1(wire_5), .out(wire_1));
  TC_Splitter8 # (.UUID(64'd4333130010366145919 ^ UUID)) Splitter8_1 (.in(wire_2), .out0(wire_7), .out1(wire_12), .out2(wire_14), .out3(wire_3), .out4(), .out5(), .out6(), .out7());
  TC_Not # (.UUID(64'd4352504228750233345 ^ UUID), .BIT_WIDTH(64'd1)) Not_2 (.in(wire_1), .out(wire_8));
  TC_LessU # (.UUID(64'd3250047401265092611 ^ UUID), .BIT_WIDTH(64'd8)) LessU8_3 (.in0(wire_10), .in1(wire_5), .out(wire_9));
  TC_Or # (.UUID(64'd896664818771619712 ^ UUID), .BIT_WIDTH(64'd1)) Or_4 (.in0(wire_1), .in1(wire_9), .out(wire_6));
  TC_Not # (.UUID(64'd3787132838171249109 ^ UUID), .BIT_WIDTH(64'd1)) Not_5 (.in(wire_6), .out(wire_13));
  TC_Not # (.UUID(64'd1960447587638345801 ^ UUID), .BIT_WIDTH(64'd1)) Not_6 (.in(wire_9), .out(wire_0));
  _4zm16DatazmMUXzm8b # (.UUID(64'd963910685534775243 ^ UUID)) _4zm16DatazmMUXzm8b_7 (.clk(clk), .rst(rst), .\ç_____ (1'd0), .A3(wire_3), .A2(wire_14), .A1(wire_12), .A0(wire_7), .D0({{7{1'b0}}, wire_1 }), .D1({{7{1'b0}}, wire_8 }), .D2({{7{1'b0}}, wire_9 }), .D3({{7{1'b0}}, wire_6 }), .D4({{7{1'b0}}, wire_13 }), .D5({{7{1'b0}}, wire_0 }), .D6({{7{1'b0}}, wire_11 }), .D7(8'd0), .D8(8'd0), .D9(8'd0), .DA(8'd0), .DB(8'd0), .DC(8'd0), .DD(8'd0), .DE(8'd0), .DF(8'd0), .Output(wire_4));
  TC_Constant # (.UUID(64'd3315819763045340845 ^ UUID), .BIT_WIDTH(64'd1), .value(1'd1)) On_8 (.out(wire_11));

  wire [0:0] wire_0;
  wire [0:0] wire_1;
  wire [7:0] wire_2;
  assign wire_2 = OP;
  wire [0:0] wire_3;
  wire [7:0] wire_4;
  assign Output = wire_4[0:0];
  wire [7:0] wire_5;
  assign wire_5 = OP2;
  wire [0:0] wire_6;
  wire [0:0] wire_7;
  wire [0:0] wire_8;
  wire [0:0] wire_9;
  wire [7:0] wire_10;
  assign wire_10 = OP1;
  wire [0:0] wire_11;
  wire [0:0] wire_12;
  wire [0:0] wire_13;
  wire [0:0] wire_14;

endmodule
