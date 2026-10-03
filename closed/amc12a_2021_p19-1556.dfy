// CLOSED LEMMA for failing line amc12a_2021_p19-1556 (theorem amc12a_2021_p19, Dafny line 1556, OOR)
// closes with: K5 (automation lemma) — single
// added: RealCosZero()  [Mathlib Real.cos_zero: cos 0 = 1, a simp lemma norm_num applied silently]
// Dafny: finished with 33 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_020/amc12a_2021_p19-1556/K5.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 1556 of amc12a_2021_p19 (OOR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../../wt_integ5/out/amc12a_2021_p19.dfy"

// ========================================================================================
// FAILING LINE 1556 (OOR) in amc12a_2021_p19: Verification out of resource (amc12a_2021_p19)
//   dafny |                             assert (Real.cos(x) == Real.cos(0.0)); // @tac 9244-9268
//   statement kind: have / step assertion
//   @tac 9244-9268 | Lean: norm_num [h₅₁₅₄]
//        before-goal ⊢ cos x = cos (0 : ℝ)
// Lean have h₅₁₅₇, Lean lines 153-154:
//   lean  |                   have h₅₁₅₇ : Real.cos x = Real.cos 0 := by
//   lean  |                     norm_num [h₅₁₅₄]

// 27 path(s) merged (paths); 17 shared facts; 15 distinct path conditions

lemma {:induction false} vc_amc12a_2021_p19_L1556_K5(S: set<real>, x_0_0_0_0: real)
  requires forall x_1: real :: (x_1 in S) == (0.0 <= x_1 && x_1 <= Real.pi() && Real.sin(Real.pi() / 2.0 * Real.cos(x_1)) == Real.cos(Real.pi() / 2.0 * Real.sin(x_1)))
  requires 0.0 <= x_0_0_0_0
  requires x_0_0_0_0 <= Real.pi()
  requires (x_0_0_0_0 in S) == (0.0 <= x_0_0_0_0 && x_0_0_0_0 <= Real.pi() && Real.sin(Real.pi() / 2.0 * Real.cos(x_0_0_0_0)) == Real.cos(Real.pi() / 2.0 * Real.sin(x_0_0_0_0)))
  requires 2.0 != 0.0
  requires Real.sin(Real.pi() / 2.0 * Real.cos(x_0_0_0_0)) == Real.cos(Real.pi() / 2.0 * Real.sin(x_0_0_0_0))
  requires Real.sin(Real.pi() / 2.0 * Real.cos(x_0_0_0_0)) == Real.cos(Real.pi() / 2.0 * (1.0 - Real.cos(x_0_0_0_0)))
  requires Real.cos(Real.pi() / 2.0 * (1.0 - Real.cos(x_0_0_0_0))) == Real.cos(Real.pi() / 2.0 * Real.sin(x_0_0_0_0))
  requires Real.pi() / 2.0 * (1.0 - Real.cos(x_0_0_0_0)) == Real.pi() / 2.0 * Real.sin(x_0_0_0_0)
  requires 1.0 - Real.cos(x_0_0_0_0) == Real.sin(x_0_0_0_0)
  requires Real.sin(x_0_0_0_0) == 1.0 - Real.cos(x_0_0_0_0)
  requires Real.sin(x_0_0_0_0) * Real.sin(x_0_0_0_0) + Real.cos(x_0_0_0_0) * Real.cos(x_0_0_0_0) == 1.0
  requires Real.sin(x_0_0_0_0) >= 0.0
  requires (1.0 - Real.cos(x_0_0_0_0)) * (1.0 - Real.cos(x_0_0_0_0)) == 1.0 - Real.cos(x_0_0_0_0) * Real.cos(x_0_0_0_0)
  requires Real.cos(x_0_0_0_0) == 0.0 || Real.cos(x_0_0_0_0) == 1.0
  requires Real.cos(x_0_0_0_0) == 1.0
  requires Real.sin(x_0_0_0_0) == 0.0
  requires (Real.cos(x_0_0_0_0) != 0.0) || ((Real.cos(x_0_0_0_0) == 0.0) && (Real.sin(x_0_0_0_0) == 1.0) && (x_0_0_0_0 == Real.pi() / 2.0) && (x_0_0_0_0 != 0.0) && (x_0_0_0_0 == 0.0 || x_0_0_0_0 == Real.pi() / 2.0)) || ((Real.cos(x_0_0_0_0) == 0.0) && (Real.sin(x_0_0_0_0) == 1.0) && (x_0_0_0_0 == Real.pi() / 2.0) && (x_0_0_0_0 == 0.0) && (x_0_0_0_0 == 0.0 || x_0_0_0_0 == Real.pi() / 2.0)) || ((Real.pi() < x_0_0_0_0) && (Real.cos(x_0_0_0_0) != 0.0)) || ((Real.pi() < x_0_0_0_0) && (Real.cos(x_0_0_0_0) == 0.0) && (Real.sin(x_0_0_0_0) == 1.0) && (x_0_0_0_0 == Real.pi() / 2.0) && (x_0_0_0_0 != 0.0) && (x_0_0_0_0 == 0.0 || x_0_0_0_0 == Real.pi() / 2.0)) || ((Real.pi() < x_0_0_0_0) && (Real.cos(x_0_0_0_0) == 0.0) && (Real.sin(x_0_0_0_0) == 1.0) && (x_0_0_0_0 == Real.pi() / 2.0) && (x_0_0_0_0 == 0.0) && (x_0_0_0_0 == 0.0 || x_0_0_0_0 == Real.pi() / 2.0)) || ((x_0_0_0_0 < 0.0) && (Real.cos(x_0_0_0_0) != 0.0)) || ((x_0_0_0_0 < 0.0) && (Real.cos(x_0_0_0_0) == 0.0) && (Real.sin(x_0_0_0_0) == 1.0) && (x_0_0_0_0 == Real.pi() / 2.0) && (x_0_0_0_0 != 0.0) && (x_0_0_0_0 == 0.0 || x_0_0_0_0 == Real.pi() / 2.0)) || ((x_0_0_0_0 < 0.0) && (Real.cos(x_0_0_0_0) == 0.0) && (Real.sin(x_0_0_0_0) == 1.0) && (x_0_0_0_0 == Real.pi() / 2.0) && (x_0_0_0_0 == 0.0) && (x_0_0_0_0 == 0.0 || x_0_0_0_0 == Real.pi() / 2.0)) || ((Real.pi() < x_0_0_0_0) && (x_0_0_0_0 < 0.0) && (Real.cos(x_0_0_0_0) != 0.0)) || ((Real.pi() < x_0_0_0_0) && (x_0_0_0_0 < 0.0) && (Real.cos(x_0_0_0_0) == 0.0) && (Real.sin(x_0_0_0_0) == 1.0) && (x_0_0_0_0 == Real.pi() / 2.0) && (x_0_0_0_0 != 0.0) && (x_0_0_0_0 == 0.0 || x_0_0_0_0 == Real.pi() / 2.0)) || ((Real.pi() < x_0_0_0_0) && (x_0_0_0_0 < 0.0) && (Real.cos(x_0_0_0_0) == 0.0) && (Real.sin(x_0_0_0_0) == 1.0) && (x_0_0_0_0 == Real.pi() / 2.0) && (x_0_0_0_0 == 0.0) && (x_0_0_0_0 == 0.0 || x_0_0_0_0 == Real.pi() / 2.0)) || ((x_0_0_0_0 < 0.0) && (Real.pi() < x_0_0_0_0) && (Real.cos(x_0_0_0_0) != 0.0)) || ((x_0_0_0_0 < 0.0) && (Real.pi() < x_0_0_0_0) && (Real.cos(x_0_0_0_0) == 0.0) && (Real.sin(x_0_0_0_0) == 1.0) && (x_0_0_0_0 == Real.pi() / 2.0) && (x_0_0_0_0 != 0.0) && (x_0_0_0_0 == 0.0 || x_0_0_0_0 == Real.pi() / 2.0)) || ((x_0_0_0_0 < 0.0) && (Real.pi() < x_0_0_0_0) && (Real.cos(x_0_0_0_0) == 0.0) && (Real.sin(x_0_0_0_0) == 1.0) && (x_0_0_0_0 == Real.pi() / 2.0) && (x_0_0_0_0 == 0.0) && (x_0_0_0_0 == 0.0 || x_0_0_0_0 == Real.pi() / 2.0))
  ensures  Real.cos(x_0_0_0_0) == Real.cos(0.0)
{
  RealCosZero();
}

