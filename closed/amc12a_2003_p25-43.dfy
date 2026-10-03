// CLOSED LEMMA for failing line amc12a_2003_p25-43 (theorem amc12a_2003_p25, Dafny line 43, ERR)
// closes with: simplest (simplest) — simplest-close
// added: render a*(x*x)+b*x through transparent ghost function Q(a,b,x) in the hypotheses and the goal (logically identical); no proof line
// Dafny: finished with 1 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_010/amc12a_2003_p25-43/SC.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// amc12a_2003_p25-43 variant SC: SC: polynomial rendered through transparent ghost function Q (equivalent), no other change
include "/home/changjie/lean2dafny_research/agents_tac/wt_integ5/library/library_new.dfy"
ghost function Q(a: real, b: real, x: real): real { a * (x * x) + b * x }
lemma {:induction false} vc_SC(a: real, b: real, f: real -> real, x_14: real, x_15: real, x_1_11: real, y_4: real)
  requires 0.0 < b
  requires forall x_1: real :: f(x_1) == Real.sqrt(Q(a, b, x_1))
  requires (iset y_2: real | 0.0 <= f(y_2)) == (iset y_3: real | exists x_1_4: real :: 0.0 <= f(x_1_4) && y_3 == f(x_1_4))
  requires (0.0 <= f(x_14)) || (f(x_14) < 0.0)
  requires (0.0 <= f(x_15)) || (f(x_15) < 0.0)
  requires (0.0 <= f(x_1_11)) || (f(x_1_11) < 0.0)
  requires (exists x_1_12: real :: 0.0 <= f(x_1_12) && y_4 == f(x_1_12)) || (!(exists x_1_12: real :: 0.0 <= f(x_1_12) && y_4 == f(x_1_12)))
  requires forall x_19: real :: true == (exists x_1_17: real :: Real.sqrt(Q(a, b, x_1_17)) == x_19)
  requires true == (exists x_21: real :: Real.sqrt(Q(a, b, x_21)) == 0.0)
  requires true == (exists x_23: real :: Real.sqrt(Q(a, b, x_23)) == 1.0)
  requires true == (exists x_25: real :: Real.sqrt(Q(a, b, x_25)) == 0.0 - 1.0)
  requires true == (exists x_27: real :: Real.sqrt(Q(a, b, x_27)) == 2.0)
  requires true == (exists x_29: real :: Real.sqrt(Q(a, b, x_29)) == 0.0 - 2.0)
  ensures  exists x_31: real :: Real.sqrt(Q(a, b, x_31)) == 0.0
{

}
