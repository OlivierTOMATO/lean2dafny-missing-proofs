// CLOSED LEMMA for failing line algebra_bleqa_apbon2msqrtableqambsqon8b-192 (theorem algebra_bleqa_apbon2msqrtableqambsqon8b, Dafny line 192, ERR)
// closes with: K1 (instance) — single
// added: assert a * b == (x*x)*(y*y)  (the congrArg argument equality of rw, exec 252; checked)
// Dafny: finished with 6 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_008/algebra_bleqa_apbon2msqrtableqambsqon8b-192/K1.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// [k_ablate shard_008 K1] algebra_bleqa_apbon2msqrtableqambsqon8b-192: K1 instance of congrArg that rw used (argument equality under Real.sqrt), checked assert
include "/home/changjie/lean2dafny_research/agents_tac/wt_integ5/out/algebra_bleqa_apbon2msqrtableqambsqon8b.dfy"


lemma {:induction false} K8_K1_algebra_bleqa_apbon2msqrtableqambsqon8b_192(a: real, b: real, x: real, y_5_0: real)
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
  requires 2.0 != 0.0
  requires (x * x + y_5_0 * y_5_0) / 2.0 - Real.sqrt(x * x * (y_5_0 * y_5_0)) == (x - y_5_0) * (x - y_5_0) / 2.0
  ensures  (a + b) / 2.0 - Real.sqrt(a * b) == (x - y_5_0) * (x - y_5_0) / 2.0
{
  assert a * b == (x * x) * (y_5_0 * y_5_0);  // K1: the congrArg instance of Lean rw [h₁₀₁, h₁₀₂] (exec 252): argument of √ rewritten a*b ~> x^2*y^2 (checked)
}
