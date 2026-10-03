// CLOSED LEMMA for failing line amc12a_2021_p19-855 (theorem amc12a_2021_p19, Dafny line 855, OOR)
// closes with: K1 (instance) — single
// added: RealInjOnCos(Real.pi() / 2.0 * (1.0 - Real.cos(x)), Real.pi() / 2.0 * Real.sin(x))  [Lean's Set.InjOn.eq_iff (injOn_cos) at its recorded arguments]
// Dafny: finished with 26 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_020/amc12a_2021_p19-855/K1.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 855 of amc12a_2021_p19 (OOR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../../wt_integ5/out/amc12a_2021_p19.dfy"

// ========================================================================================
// FAILING LINE 855 (OOR) in amc12a_2021_p19: Verification out of resource (amc12a_2021_p19)
//   dafny |                     assert (((Real.pi() / 2.0) * (1.0 - Real.cos(x))) == ((Real.pi() / 2.0) * Real.sin(x))) by { // @tac 3477-3569
//   statement kind: have / step assertion
//   @tac 3477-3569 | Lean: apply (injOn_cos.eq_iff ⟨by nlinarith, by nlinarith⟩ ⟨by nlinarith, by nlinarith⟩).1
//        before-goal ⊢ π / (2 : ℝ) * ((1 : ℝ) - cos x) = π / (2 : ℝ) * sin x
// Lean have h₅₄₅, Lean lines 65-67:
//   lean  |           have h₅₄₅ : Real.pi / 2 * (1 - Real.cos x) = Real.pi / 2 * Real.sin x := by
//   lean  |             apply (injOn_cos.eq_iff ⟨by nlinarith, by nlinarith⟩ ⟨by nlinarith, by nlinarith⟩).1
//   lean  |             exact h₅₃

// 9 path(s) merged (paths); 14 shared facts; 5 distinct path conditions

lemma {:induction false} vc_amc12a_2021_p19_L855_K1(S: set<real>, x_0_0_0_0: real)
  requires forall x_1: real :: (x_1 in S) == (0.0 <= x_1 && x_1 <= Real.pi() && Real.sin(Real.pi() / 2.0 * Real.cos(x_1)) == Real.cos(Real.pi() / 2.0 * Real.sin(x_1)))
  requires 0.0 <= x_0_0_0_0
  requires x_0_0_0_0 <= Real.pi()
  requires (x_0_0_0_0 in S) == (0.0 <= x_0_0_0_0 && x_0_0_0_0 <= Real.pi() && Real.sin(Real.pi() / 2.0 * Real.cos(x_0_0_0_0)) == Real.cos(Real.pi() / 2.0 * Real.sin(x_0_0_0_0)))
  requires 2.0 != 0.0
  requires Real.sin(Real.pi() / 2.0 * Real.cos(x_0_0_0_0)) == Real.cos(Real.pi() / 2.0 * Real.sin(x_0_0_0_0))
  requires Real.sin(Real.pi() / 2.0 * Real.cos(x_0_0_0_0)) == Real.cos(Real.pi() / 2.0 * (1.0 - Real.cos(x_0_0_0_0)))
  requires Real.cos(Real.pi() / 2.0 * (1.0 - Real.cos(x_0_0_0_0))) == Real.cos(Real.pi() / 2.0 * Real.sin(x_0_0_0_0))
  requires Real.pi() / 2.0 * (1.0 - Real.cos(x_0_0_0_0)) >= 0.0
  requires Real.pi() / 2.0 * Real.sin(x_0_0_0_0) >= 0.0
  requires Real.pi() / 2.0 * (1.0 - Real.cos(x_0_0_0_0)) <= Real.pi()
  requires Real.pi() / 2.0 * Real.sin(x_0_0_0_0) <= Real.pi()
  requires 0.0 <= Real.pi() / 2.0 * (1.0 - Real.cos(x_0_0_0_0))
  requires 0.0 <= Real.pi() / 2.0 * Real.sin(x_0_0_0_0)
  ensures  Real.pi() / 2.0 * (1.0 - Real.cos(x_0_0_0_0)) == Real.pi() / 2.0 * Real.sin(x_0_0_0_0)
{
  RealInjOnCos(Real.pi() / 2.0 * (1.0 - Real.cos(x_0_0_0_0)), Real.pi() / 2.0 * Real.sin(x_0_0_0_0));
}

