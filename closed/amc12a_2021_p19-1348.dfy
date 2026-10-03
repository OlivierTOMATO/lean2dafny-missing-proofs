// CLOSED LEMMA for failing line amc12a_2021_p19-1348 (theorem amc12a_2021_p19, Dafny line 1348, ERR)
// closes with: K5 (automation lemma) — single
// added: RealSinPiDivTwo()  [Mathlib Real.sin_pi_div_two: sin(π/2)=1, a simp lemma norm_num applied silently]
// Dafny: finished with 15 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_020/amc12a_2021_p19-1348/K5.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 1348 of amc12a_2021_p19 (ERR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../../wt_integ5/out/amc12a_2021_p19.dfy"

// ========================================================================================
// FAILING LINE 1348 (ERR) in amc12a_2021_p19: assertion might not hold
//   dafny |                                   assert (Real.sin(x) == Real.sin((Real.pi() / 2.0))); // @tac 7342-7366
//   statement kind: have / step assertion
//   @tac 7342-7366 | Lean: norm_num [h₅₁₆₄]
//        before-goal ⊢ sin x = sin (π / (2 : ℝ))
// Lean have h₅₁₆₇, Lean lines 123-124:
//   lean  |                         have h₅₁₆₇ : Real.sin x = Real.sin (Real.pi / 2) := by
//   lean  |                           norm_num [h₅₁₆₄]

// 9 path(s) merged (paths); 18 shared facts; 5 distinct path conditions

lemma {:induction false} vc_amc12a_2021_p19_L1348_K5(S: set<real>, x_0_0_0_0: real)
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
  requires Real.cos(x_0_0_0_0) == Real.cos(Real.pi() / 2.0)
  ensures  Real.sin(x_0_0_0_0) == Real.sin(Real.pi() / 2.0)
{
  RealSinPiDivTwo();
}

