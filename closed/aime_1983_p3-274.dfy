// CLOSED LEMMA for failing line aime_1983_p3-274 (theorem aime_1983_p3, Dafny line 274, ERR)
// closes with: simplest (simplest) — simplest-close
// added: Real.sqrt ensures-free (library) + in the lemma: `var t := 0.0 - 9.0 + Real.sqrt(61.0); assert f(t) == t*t + (18.0*t+30.0) - 2.0*Real.sqrt(t*t + (18.0*t+45.0)); assert t*t + (18.0*t+45.0) == <ground expansion>;`
// Dafny: finished with 3 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_001/aime_1983_p3-274/S_instarg_sqrtnone.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// [k_ablate S_instarg_sqrtle0] same + library variant sqrt without any ensures
// Line lemma for failing line 274 of aime_1983_p3 (ERR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../_lib/sqrt_noensures/out/aime_1983_p3.dfy"

// ========================================================================================
// FAILING LINE 274 (ERR) in aime_1983_p3: assertion might not hold
//   dafny |       assert (f((-(9.0) + Real.sqrt(61.0))) == ((((-(9.0) + Real.sqrt(61.0)) * (-(9.0) + Real.sqrt(61.0))) + ((18.0 * (-(9.0) + Real.sqrt(61.0))) + 30.0)) - (2.0 * Real.sqrt((((-(9.0) + Real.sqrt(61.0)) * (-(9.0) + Real.sqrt(61.0))) + ((18.0 * (-(9.0) + Real.sqrt(61.0))) + 45.0))))));  // instance o
//   statement kind: instance of a hypothesis
// inside Lean have h₂₁, Lean lines 13-21:
//   lean  |     have h₂₁ : f (-9 + Real.sqrt 61) = 0 := by
//   lean  |       rw [h₀]
//   lean  |       have h₂₂ : Real.sqrt ((-9 + Real.sqrt 61) ^ 2 + (18 * (-9 + Real.sqrt 61) + 45)) = 5 := by
//   lean  |         have h₂₃ : (-9 + Real.sqrt 61) ^ 2 + (18 * (-9 + Real.sqrt 61) + 45) = 25 := by
//   lean  |           nlinarith [Real.sqrt_nonneg 61, Real.sq_sqrt (show 0 ≤ 61 by norm_num)]
//   lean  |         rw [h₂₃]
//   lean  |         rw [Real.sqrt_eq_iff_sq_eq] <;> nlinarith [Real.sqrt_nonneg 61, Real.sq_sqrt (show 0 ≤ 61 by norm_num)]
//   lean  |       rw [h₂₂]
//   lean  |       <;> nlinarith [Real.sqrt_nonneg 61, Real.sq_sqrt (show 0 ≤ 61 by norm_num)]

// 1 path(s) merged (paths); 3 shared facts; 1 distinct path conditions
lemma {:induction false} vc_aime_1983_p3_L274(f: real -> real, h1_set: set<real>)
  requires forall x_1: real :: f.requires(x_1)
  requires forall x_1: real :: f(x_1) == x_1 * x_1 + (18.0 * x_1 + 30.0) - 2.0 * Real.sqrt(x_1 * x_1 + (18.0 * x_1 + 45.0))
  requires forall x_3: real :: (x_3 in h1_set) == (f(x_3) == 0.0)
  ensures  f(0.0 - 9.0 + Real.sqrt(61.0)) == (0.0 - 9.0 + Real.sqrt(61.0)) * (0.0 - 9.0 + Real.sqrt(61.0)) + (18.0 * (0.0 - 9.0 + Real.sqrt(61.0)) + 30.0) - 2.0 * Real.sqrt((0.0 - 9.0 + Real.sqrt(61.0)) * (0.0 - 9.0 + Real.sqrt(61.0)) + (18.0 * (0.0 - 9.0 + Real.sqrt(61.0)) + 45.0))
{
  var t := 0.0 - 9.0 + Real.sqrt(61.0);  // K1: Lean rw [h0] instance at t
  assert f(t) == t * t + (18.0 * t + 30.0) - 2.0 * Real.sqrt(t * t + (18.0 * t + 45.0));
  assert t * t + (18.0 * t + 45.0) == (0.0 - 9.0 + Real.sqrt(61.0)) * (0.0 - 9.0 + Real.sqrt(61.0)) + (18.0 * (0.0 - 9.0 + Real.sqrt(61.0)) + 45.0);  // argument of sqrt, syntactic substitution (checked)
}

