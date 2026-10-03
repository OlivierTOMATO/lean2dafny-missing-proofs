// CLOSED LEMMA for failing line amc12a_2021_p19-1344 (theorem amc12a_2021_p19, Dafny line 1344, ERR)
// closes with: K5 (automation lemma) — single
// added: RealCosPiDivTwo()  [Mathlib Real.cos_pi_div_two: cos(π/2)=0, a simp lemma norm_num applied silently]
// Dafny: finished with 14 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_020/amc12a_2021_p19-1344/K5.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 1344 of amc12a_2021_p19 (ERR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../../wt_integ5/out/amc12a_2021_p19.dfy"

// ========================================================================================
// FAILING LINE 1344 (ERR) in amc12a_2021_p19: assertion might not hold
//   dafny |                                   assert (Real.cos(x) == Real.cos((Real.pi() / 2.0))); // @tac 7204-7228
//   statement kind: have / step assertion
//   @tac 7204-7228 | Lean: norm_num [h₅₁₆₃]
//        before-goal ⊢ cos x = cos (π / (2 : ℝ))
// Lean have h₅₁₆₆, Lean lines 121-122:
//   lean  |                         have h₅₁₆₆ : Real.cos x = Real.cos (Real.pi / 2) := by
//   lean  |                           norm_num [h₅₁₆₃]

// 9 path(s) merged (paths); 17 shared facts; 5 distinct path conditions

lemma {:induction false} vc_amc12a_2021_p19_L1344_K5(S: set<real>, x_0_0_0_0: real)
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
  requires Real.cos(x_0_0_0_0) == 0.0
  requires Real.cos(x_0_0_0_0) == 0.0 || Real.cos(x_0_0_0_0) == 1.0
  requires Real.sin(x_0_0_0_0) == 1.0
  ensures  Real.cos(x_0_0_0_0) == Real.cos(Real.pi() / 2.0)
{
  RealCosPiDivTwo();
}

