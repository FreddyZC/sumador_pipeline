/* Generated by Yosys 0.9 (git sha1 1979e0b) */

(* src = "synth_sum_pipe.v:1" *)
module synth_sum_pipe(sum30_dd_out_synt, dataA, dataB, clk, reset_L);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire _09_;
  wire _10_;
  wire _11_;
  wire _12_;
  wire _13_;
  wire _14_;
  wire _15_;
  wire _16_;
  wire _17_;
  wire _18_;
  wire _19_;
  wire _20_;
  wire _21_;
  wire _22_;
  wire _23_;
  wire _24_;
  wire _25_;
  wire _26_;
  wire _27_;
  wire _28_;
  wire _29_;
  wire _30_;
  wire _31_;
  wire _32_;
  wire _33_;
  wire _34_;
  wire _35_;
  wire _36_;
  wire _37_;
  wire _38_;
  wire _39_;
  wire _40_;
  (* src = "synth_sum_pipe.v:8" *)
  wire acarreo0;
  (* src = "synth_sum_pipe.v:9" *)
  wire acarreo0_d;
  (* src = "synth_sum_pipe.v:3" *)
  input clk;
  (* src = "synth_sum_pipe.v:2" *)
  input [3:0] dataA;
  (* src = "synth_sum_pipe.v:5" *)
  wire [1:0] dataA_d;
  (* src = "synth_sum_pipe.v:2" *)
  input [3:0] dataB;
  (* src = "synth_sum_pipe.v:5" *)
  wire [1:0] dataB_d;
  (* src = "synth_sum_pipe.v:3" *)
  input reset_L;
  (* src = "synth_sum_pipe.v:6" *)
  wire [1:0] sum10;
  (* src = "synth_sum_pipe.v:6" *)
  wire [1:0] sum10_d;
  (* src = "synth_sum_pipe.v:7" *)
  wire [3:0] sum30_d;
  (* src = "synth_sum_pipe.v:1" *)
  output [3:0] sum30_dd_out_synt;
  NOT _41_ (
    .A(reset_L),
    .Y(_00_)
  );
  NOT _42_ (
    .A(dataA[0]),
    .Y(_01_)
  );
  NOT _43_ (
    .A(dataA[1]),
    .Y(_02_)
  );
  NOT _44_ (
    .A(dataB[0]),
    .Y(_03_)
  );
  NOT _45_ (
    .A(acarreo0_d),
    .Y(_04_)
  );
  NOR _46_ (
    .A(_01_),
    .B(_03_),
    .Y(_05_)
  );
  NAND _47_ (
    .A(dataA[0]),
    .B(dataB[0]),
    .Y(_06_)
  );
  NOR _48_ (
    .A(dataA[0]),
    .B(dataB[0]),
    .Y(_07_)
  );
  NOR _49_ (
    .A(_00_),
    .B(_07_),
    .Y(_08_)
  );
  NAND _50_ (
    .A(_06_),
    .B(_08_),
    .Y(_09_)
  );
  NOT _51_ (
    .A(_09_),
    .Y(sum10[0])
  );
  NOR _52_ (
    .A(dataA[1]),
    .B(dataB[1]),
    .Y(_10_)
  );
  NOT _53_ (
    .A(_10_),
    .Y(_11_)
  );
  NAND _54_ (
    .A(dataA[1]),
    .B(dataB[1]),
    .Y(_12_)
  );
  NOT _55_ (
    .A(_12_),
    .Y(_13_)
  );
  NOR _56_ (
    .A(_10_),
    .B(_13_),
    .Y(_14_)
  );
  NAND _57_ (
    .A(_11_),
    .B(_12_),
    .Y(_15_)
  );
  NOR _58_ (
    .A(_05_),
    .B(_15_),
    .Y(_16_)
  );
  NOR _59_ (
    .A(_06_),
    .B(_14_),
    .Y(_17_)
  );
  NOR _60_ (
    .A(_16_),
    .B(_17_),
    .Y(_18_)
  );
  NOR _61_ (
    .A(_00_),
    .B(_18_),
    .Y(sum10[1])
  );
  NAND _62_ (
    .A(dataA[0]),
    .B(_09_),
    .Y(_19_)
  );
  NOR _63_ (
    .A(_02_),
    .B(_19_),
    .Y(_20_)
  );
  NOR _64_ (
    .A(_18_),
    .B(_20_),
    .Y(_21_)
  );
  NAND _65_ (
    .A(_02_),
    .B(_19_),
    .Y(_22_)
  );
  NAND _66_ (
    .A(reset_L),
    .B(_22_),
    .Y(_23_)
  );
  NOR _67_ (
    .A(_21_),
    .B(_23_),
    .Y(acarreo0)
  );
  NOR _68_ (
    .A(dataA_d[0]),
    .B(dataB_d[0]),
    .Y(_24_)
  );
  NOT _69_ (
    .A(_24_),
    .Y(_25_)
  );
  NAND _70_ (
    .A(dataA_d[0]),
    .B(dataB_d[0]),
    .Y(_26_)
  );
  NAND _71_ (
    .A(_04_),
    .B(_26_),
    .Y(_27_)
  );
  NAND _72_ (
    .A(_25_),
    .B(_27_),
    .Y(_28_)
  );
  NOT _73_ (
    .A(_28_),
    .Y(_29_)
  );
  NOR _74_ (
    .A(dataA_d[1]),
    .B(dataB_d[1]),
    .Y(_30_)
  );
  NOT _75_ (
    .A(_30_),
    .Y(_31_)
  );
  NAND _76_ (
    .A(dataA_d[1]),
    .B(dataB_d[1]),
    .Y(_32_)
  );
  NOT _77_ (
    .A(_32_),
    .Y(_33_)
  );
  NAND _78_ (
    .A(_31_),
    .B(_32_),
    .Y(_34_)
  );
  NOR _79_ (
    .A(_30_),
    .B(_33_),
    .Y(_35_)
  );
  NOR _80_ (
    .A(_28_),
    .B(_34_),
    .Y(_36_)
  );
  NOR _81_ (
    .A(_29_),
    .B(_35_),
    .Y(_37_)
  );
  NOR _82_ (
    .A(_36_),
    .B(_37_),
    .Y(sum30_d[3])
  );
  NOR _83_ (
    .A(_04_),
    .B(_26_),
    .Y(_38_)
  );
  NOR _84_ (
    .A(acarreo0_d),
    .B(_25_),
    .Y(_39_)
  );
  NOR _85_ (
    .A(_28_),
    .B(_38_),
    .Y(_40_)
  );
  NOR _86_ (
    .A(_39_),
    .B(_40_),
    .Y(sum30_d[2])
  );
  (* src = "synth_sum_pipe.v:41" *)
  DFF _87_ (
    .C(clk),
    .D(acarreo0),
    .Q(acarreo0_d)
  );
  (* src = "synth_sum_pipe.v:58" *)
  DFF _88_ (
    .C(clk),
    .D(sum10_d[0]),
    .Q(sum30_dd_out_synt[0])
  );
  (* src = "synth_sum_pipe.v:58" *)
  DFF _89_ (
    .C(clk),
    .D(sum10_d[1]),
    .Q(sum30_dd_out_synt[1])
  );
  (* src = "synth_sum_pipe.v:58" *)
  DFF _90_ (
    .C(clk),
    .D(sum30_d[2]),
    .Q(sum30_dd_out_synt[2])
  );
  (* src = "synth_sum_pipe.v:58" *)
  DFF _91_ (
    .C(clk),
    .D(sum30_d[3]),
    .Q(sum30_dd_out_synt[3])
  );
  (* src = "synth_sum_pipe.v:41" *)
  DFF _92_ (
    .C(clk),
    .D(dataB[2]),
    .Q(dataB_d[0])
  );
  (* src = "synth_sum_pipe.v:41" *)
  DFF _93_ (
    .C(clk),
    .D(dataB[3]),
    .Q(dataB_d[1])
  );
  (* src = "synth_sum_pipe.v:41" *)
  DFF _94_ (
    .C(clk),
    .D(sum10[0]),
    .Q(sum10_d[0])
  );
  (* src = "synth_sum_pipe.v:41" *)
  DFF _95_ (
    .C(clk),
    .D(sum10[1]),
    .Q(sum10_d[1])
  );
  (* src = "synth_sum_pipe.v:41" *)
  DFF _96_ (
    .C(clk),
    .D(dataA[2]),
    .Q(dataA_d[0])
  );
  (* src = "synth_sum_pipe.v:41" *)
  DFF _97_ (
    .C(clk),
    .D(dataA[3]),
    .Q(dataA_d[1])
  );
  assign sum30_d[1:0] = sum10_d;
endmodule

(* top =  1  *)
(* src = "synth_sumador.v:3" *)
module synth_sumador(sum30_dd_out_synt, idx_dd_out_synt, dataA, dataB, idx, clk, reset_L);
  (* src = "synth_sumador.v:6" *)
  input clk;
  (* src = "synth_sumador.v:5" *)
  input [3:0] dataA;
  (* src = "synth_sumador.v:5" *)
  input [3:0] dataB;
  (* src = "synth_sumador.v:5" *)
  input [3:0] idx;
  (* src = "synth_sumador.v:8" *)
  wire [3:0] idx_d;
  (* src = "synth_sumador.v:4" *)
  output [3:0] idx_dd_out_synt;
  (* src = "synth_sumador.v:6" *)
  input reset_L;
  (* src = "synth_sumador.v:3" *)
  output [3:0] sum30_dd_out_synt;
  (* src = "synth_sumador.v:12" *)
  DFF _0_ (
    .C(clk),
    .D(idx_d[0]),
    .Q(idx_dd_out_synt[0])
  );
  (* src = "synth_sumador.v:12" *)
  DFF _1_ (
    .C(clk),
    .D(idx_d[1]),
    .Q(idx_dd_out_synt[1])
  );
  (* src = "synth_sumador.v:12" *)
  DFF _2_ (
    .C(clk),
    .D(idx_d[2]),
    .Q(idx_dd_out_synt[2])
  );
  (* src = "synth_sumador.v:12" *)
  DFF _3_ (
    .C(clk),
    .D(idx_d[3]),
    .Q(idx_dd_out_synt[3])
  );
  (* src = "synth_sumador.v:12" *)
  DFF _4_ (
    .C(clk),
    .D(idx[0]),
    .Q(idx_d[0])
  );
  (* src = "synth_sumador.v:12" *)
  DFF _5_ (
    .C(clk),
    .D(idx[1]),
    .Q(idx_d[1])
  );
  (* src = "synth_sumador.v:12" *)
  DFF _6_ (
    .C(clk),
    .D(idx[2]),
    .Q(idx_d[2])
  );
  (* src = "synth_sumador.v:12" *)
  DFF _7_ (
    .C(clk),
    .D(idx[3]),
    .Q(idx_d[3])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "synth_sumador.v:10" *)
  synth_sum_pipe SUM_PIPE (
    .clk(clk),
    .dataA(dataA),
    .dataB(dataB),
    .reset_L(reset_L),
    .sum30_dd_out_synt(sum30_dd_out_synt)
  );
endmodule
