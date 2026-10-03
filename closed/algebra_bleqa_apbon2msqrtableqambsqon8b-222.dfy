// CLOSED LEMMA for failing line algebra_bleqa_apbon2msqrtableqambsqon8b-222 (theorem algebra_bleqa_apbon2msqrtableqambsqon8b, Dafny line 222, ERR)
// closes with: K1 (instance) — single
// added: RealSqrtEqIffSqEq(x*x*(y*y), x*y) — Lean's instance rendered like the goal
// Dafny: finished with 10 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_008/algebra_bleqa_apbon2msqrtableqambsqon8b-222/K1.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// [k_ablate shard_008 K1] algebra_bleqa_apbon2msqrtableqambsqon8b-222: K1: the instance Lean rewrote with, at its arguments in the goal's rendering
include "/home/changjie/lean2dafny_research/agents_tac/wt_integ5/out/algebra_bleqa_apbon2msqrtableqambsqon8b.dfy"


lemma {:induction false} K8_K1_algebra_bleqa_apbon2msqrtableqambsqon8b_222(a: real, b: real, x: real, y_5_0: real)
  requires 0.0 < a
  requires 0.0 < b
  requires b <= a
  requires 0.0 < Real.sqrt(a)
  requires 0.0 < Real.sqrt(b)
  requires Real.sqrt(b) <= Real.sqrt(a)
  requires x == Real.sqrt(a)
  requires 0.0 < x
  requires Real.sqrt(b) <= x
  requires y_5_0 == Real.sqrt(b)
  requires 0.0 < y_5_0
  requires y_5_0 <= x
  requires x >= y_5_0
  requires a == x * x
  requires b == y_5_0 * y_5_0
  requires 0.0 <= x * x * (y_5_0 * y_5_0)
  requires 0.0 <= x * y_5_0
  requires 0 <= 2
  requires 0.0 <= Real.pow(x, 2) * Real.pow(y_5_0, 2)
  requires (Real.sqrt(Real.pow(x, 2) * Real.pow(y_5_0, 2)) == x * y_5_0) == (Real.pow(x * y_5_0, 2) == Real.pow(x, 2) * Real.pow(y_5_0, 2))
  requires x * y_5_0 * (x * y_5_0) == x * x * (y_5_0 * y_5_0)
  ensures  Real.sqrt(x * x * (y_5_0 * y_5_0)) == x * y_5_0
{
  RealSqrtEqIffSqEq(x * x * (y_5_0 * y_5_0), x * y_5_0);  // K1: Real.sqrt_eq_iff_sq_eq at Lean's arguments (x^2*y^2, x*y), rendered like the goal
}
