// CLOSED LEMMA for failing line amc12a_2021_p19-1352 (theorem amc12a_2021_p19, Dafny line 1352, ERR)
// closes with: K1 (instance) — single
// added: RealInjOnCos(x, Real.pi() / 2.0)  [Lean's Set.InjOn.eq_iff (injOn_cos) at its recorded arguments]
// Dafny: finished with 24 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_020/amc12a_2021_p19-1352/K1.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 1352 of amc12a_2021_p19 (ERR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../../wt_integ5/out/amc12a_2021_p19.dfy"

// ========================================================================================
// FAILING LINE 1352 (ERR) in amc12a_2021_p19: assertion might not hold
//   dafny |                                   assert (x == (Real.pi() / 2.0)) by { // @tac 7460-7756 // @tac 7460-7698 // @tac 7460-7628
//   statement kind: have / step assertion
//   @tac 7460-7756 | Lean: apply (injOn_cos.eq_iff ⟨by linarith [h₂, h₃, Real.pi_pos], by linarith [h₂, h₃, Real.pi_pos]⟩ ⟨by linarith [Real.pi_pos], by linarith [Real.pi_pos]⟩).1
//        before-goal ⊢ x = π / (2 : ℝ)
//   @tac 7460-7698 | Lean: apply (injOn_cos.eq_iff ⟨by linarith [h₂, h₃, Real.pi_pos], by linarith [h₂, h₃, Real.pi_pos]⟩ ⟨by linarith [Real.pi_pos], by linarith [Real.pi_pos]⟩).1
//        before-goal ⊢ x = π / (2 : ℝ)
//   @tac 7460-7628 | Lean: apply (injOn_cos.eq_iff ⟨by linarith [h₂, h₃, Real.pi_pos], by linarith [h₂, h₃, Real.pi_pos]⟩ ⟨by linarith [Real.pi_pos], by linarith [Real.pi_pos]⟩).1
//        before-goal ⊢ x = π / (2 : ℝ)
// Lean have h₅₁₆₈, Lean lines 125-128:
//   lean  |                         have h₅₁₆₈ : x = Real.pi / 2 := by
//   lean  |                           apply (injOn_cos.eq_iff ⟨by linarith [h₂, h₃, Real.pi_pos], by linarith [h₂, h₃, Real.pi_pos]⟩ ⟨by linarith [Real.pi_pos], by linarith [Real.pi_pos]⟩).1
//   lean  |                           <;> simp_all [h₅₁₆₆, h₅₁₆₇]
//   lean  |                           <;> linarith [Real.pi_gt_three]

// 9 path(s) merged (paths); 21 shared facts; 5 distinct path conditions

lemma {:induction false} vc_amc12a_2021_p19_L1352_K1(S: set<real>, x_0_0_0_0: real)
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
  requires Real.sin(x_0_0_0_0) == Real.sin(Real.pi() / 2.0)
  requires 0.0 <= Real.pi() / 2.0
  requires Real.pi() / 2.0 <= Real.pi()
  ensures  x_0_0_0_0 == Real.pi() / 2.0
{
  RealInjOnCos(x_0_0_0_0, Real.pi() / 2.0);
}

