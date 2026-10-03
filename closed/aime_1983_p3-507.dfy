// CLOSED LEMMA for failing line aime_1983_p3-507 (theorem aime_1983_p3, Dafny line 507, ERR)
// closes with: simplest (simplest) — variant
// added: MathPrelude Real.sqrt: remove the `ensures x <= 0.0 ==> y == 0.0` postcondition (supply it as a cited lemma, Mathlib Real.sqrt_eq_zero'), or make sqrt ensures-free
// Dafny: finished with 1 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_001/aime_1983_p3-507/L_sqrtle0.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// [k_ablate L_sqrtle0] library diag: Real.sqrt without `x<=0 ==> y==0` ensures (sound: fewer axioms)
// Line lemma for failing line 507 of aime_1983_p3 (ERR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../_lib/sqrt_drop_le0/out/aime_1983_p3.dfy"

// ========================================================================================
// FAILING LINE 507 (ERR) in aime_1983_p3: assertion might not hold
//   dafny |       assert (f(x) == (((x * x) + ((18.0 * x) + 30.0)) - (2.0 * Real.sqrt(((x * x) + ((18.0 * x) + 45.0))))));  // instance of h₀ (Lean state)
//   statement kind: instance of a hypothesis
// inside Lean have h₆, Lean lines 47-47:
//   lean  |     have h₆ : f x = x ^ 2 + (18 * x + 30) - 2 * Real.sqrt (x ^ 2 + (18 * x + 45)) := by rw [h₀]

// 1 path(s) merged (paths); 6 shared facts; 1 distinct path conditions
lemma {:induction false} vc_aime_1983_p3_L507(f: real -> real, h1_set: set<real>, x_2_0: real)
  requires forall x_1: real :: f.requires(x_1)
  requires forall x_1: real :: f(x_1) == x_1 * x_1 + (18.0 * x_1 + 30.0) - 2.0 * Real.sqrt(x_1 * x_1 + (18.0 * x_1 + 45.0))
  requires forall x_3: real :: (x_3 in h1_set) == (f(x_3) == 0.0)
  requires f(0.0 - 9.0 + Real.sqrt(61.0)) == 0.0
  requires f(0.0 - 9.0 - Real.sqrt(61.0)) == 0.0
  requires f(x_2_0) == 0.0
  ensures  f(x_2_0) == x_2_0 * x_2_0 + (18.0 * x_2_0 + 30.0) - 2.0 * Real.sqrt(x_2_0 * x_2_0 + (18.0 * x_2_0 + 45.0))
{ }

