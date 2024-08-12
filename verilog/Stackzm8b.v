module Stackzm8b (clk, rst, POP, PUSH, VALUE, OUTPUT, Top);
  parameter UUID = 0;
  parameter NAME = "";
  input wire clk;
  input wire rst;

  input  wire [0:0] POP;
  input  wire [0:0] PUSH;
  input  wire [7:0] VALUE;
  output  wire [7:0] OUTPUT;
  output  wire [7:0] Top;

  TC_Switch # (.UUID(64'd315331017813212928 ^ UUID), .BIT_WIDTH(64'd8)) Output8z_0 (.en(wire_2), .in(wire_8[7:0]), .out(OUTPUT));
  TC_Register # (.UUID(64'd1309143053219555283 ^ UUID), .BIT_WIDTH(64'd8)) Register8_1 (.clk(clk), .rst(rst), .load(wire_11), .save(wire_10), .in(wire_12), .out(wire_6));
  TC_Add # (.UUID(64'd3183455788072140360 ^ UUID), .BIT_WIDTH(64'd8)) Add8_2 (.in0(wire_6), .in1(8'd0), .ci(wire_13), .out(wire_3), .co());
  TC_Constant # (.UUID(64'd2097535874680072812 ^ UUID), .BIT_WIDTH(64'd1), .value(1'd1)) On_3 (.out(wire_13));
  TC_Add # (.UUID(64'd4355142805636075571 ^ UUID), .BIT_WIDTH(64'd8)) Add8_4 (.in0(wire_6), .in1(wire_5), .ci(1'd0), .out(wire_9), .co());
  TC_Constant # (.UUID(64'd4101332812548464539 ^ UUID), .BIT_WIDTH(64'd8), .value(8'hFF)) Constant8_5 (.out(wire_5));
  TC_Switch # (.UUID(64'd529177786816588683 ^ UUID), .BIT_WIDTH(64'd8)) Switch8_6 (.en(wire_1), .in(wire_3), .out(wire_12_1));
  TC_Switch # (.UUID(64'd1549461073042514291 ^ UUID), .BIT_WIDTH(64'd8)) Switch8_7 (.en(wire_2), .in(wire_9), .out(wire_12_0));
  TC_Or # (.UUID(64'd940455055939316073 ^ UUID), .BIT_WIDTH(64'd1)) Or_8 (.in0(wire_2), .in1(wire_1), .out(wire_10));
  TC_Constant # (.UUID(64'd524258922826273040 ^ UUID), .BIT_WIDTH(64'd1), .value(1'd1)) On_9 (.out(wire_11));
  TC_Add # (.UUID(64'd2634205841619346180 ^ UUID), .BIT_WIDTH(64'd8)) Add8_10 (.in0(wire_6), .in1(wire_5), .ci(1'd0), .out(wire_4), .co());
  TC_Mux # (.UUID(64'd1385924489258310786 ^ UUID), .BIT_WIDTH(64'd8)) Mux8_11 (.sel(wire_1), .in0(wire_4), .in1(wire_6), .out(wire_0));
  TC_Constant # (.UUID(64'd2009549485942753468 ^ UUID), .BIT_WIDTH(64'd1), .value(1'd1)) On_12 (.out());
  TC_Constant # (.UUID(64'd2464679571088620305 ^ UUID), .BIT_WIDTH(64'd1), .value(1'd1)) On_13 (.out());
  TC_Constant # (.UUID(64'd1120269781323442541 ^ UUID), .BIT_WIDTH(64'd1), .value(1'd1)) On_14 (.out());
  TC_Constant # (.UUID(64'd2227145274133634473 ^ UUID), .BIT_WIDTH(64'd1), .value(1'd1)) On_15 (.out());
  TC_Constant # (.UUID(64'd3486601025726279277 ^ UUID), .BIT_WIDTH(64'd1), .value(1'd1)) On_16 (.out());
  TC_Ram # (.UUID(64'd1741283115825265633 ^ UUID), .WORD_WIDTH(64'd8), .WORD_COUNT(64'd256)) Ram_17 (.clk(clk), .rst(rst), .load(wire_14), .save(wire_1), .address({{24{1'b0}}, wire_0 }), .in0({{56{1'b0}}, wire_7 }), .in1(64'd0), .in2(64'd0), .in3(64'd0), .out0(wire_8), .out1(), .out2(), .out3());
  TC_Constant # (.UUID(64'd938704058818716903 ^ UUID), .BIT_WIDTH(64'd1), .value(1'd1)) On_18 (.out(wire_14));

  wire [7:0] wire_0;
  wire [0:0] wire_1;
  assign wire_1 = PUSH;
  wire [0:0] wire_2;
  assign wire_2 = POP;
  wire [7:0] wire_3;
  wire [7:0] wire_4;
  wire [7:0] wire_5;
  wire [7:0] wire_6;
  wire [7:0] wire_7;
  assign wire_7 = VALUE;
  wire [63:0] wire_8;
  assign Top = wire_8[7:0];
  wire [7:0] wire_9;
  wire [0:0] wire_10;
  wire [0:0] wire_11;
  wire [7:0] wire_12;
  wire [7:0] wire_12_0;
  wire [7:0] wire_12_1;
  assign wire_12 = wire_12_0|wire_12_1;
  wire [0:0] wire_13;
  wire [0:0] wire_14;

endmodule
