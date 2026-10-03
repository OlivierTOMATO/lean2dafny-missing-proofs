// CLOSED LEMMA for failing line aime_1999_p11-938 (theorem aime_1999_p11, Dafny line 938, OOR)
// closes with: K1 (instance) — single
// added: RealInjOnTanEqIff(m.to_real()*π/180, 35π/72) — Lean's applied Set.InjOn.eq_iff instance via existing library lemma
// Dafny: finished with 33 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_005/aime_1999_p11-938/K1.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 938 of aime_1999_p11 (OOR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../../wt_integ5/library/library_new.dfy"

// ========================================================================================
// FAILING LINE 938 (OOR) in aime_1999_p11: Verification out of resource (aime_1999_p11)
//   dafny |             assert ((((m).to_real() * Real.pi()) / 180.0) == ((35.0 * Real.pi()) / 72.0)) by { // @tac 10530-11017
//   statement kind: have / step assertion
//   @tac 10530-11017 | Lean: apply (injOn_tan.eq_iff ⟨by
//        before-goal ⊢ ↑m * π / (180 : ℝ) = (35 : ℝ) * π / (72 : ℝ)
// Lean have h₁₁, Lean lines 217-226:
//   lean  |           have h₁₁ : m * Real.pi / 180 = 35 * Real.pi / 72 := by
//   lean  |             -- Use the injectivity of the tangent function on the interval (-Real.pi / 2, Real.pi / 2)
//   lean  |             apply (injOn_tan.eq_iff ⟨by
//   lean  |               -- Prove that m * Real.pi / 180 is in the interval (-Real.pi / 2, Real.pi / 2)
//   lean  |               have h₁₂ : (m : ℝ) * Real.pi / 180 > 0 := by
//   lean  |                 have h₁₃ : (m : ℝ) > 0 := by exact_mod_cast h₀
//   lean  |                 have h₁₄ : 0 < Real.pi := Real.pi_pos
//   lean  |                 have h₁₅ : 0 < (180 : ℝ) := by norm_num
//   lean  |                 positivity
//   lean  |               linarith, by linarith⟩ ⟨by linarith, by linarith⟩).mp h₁₀

// 1 path(s) merged (paths); 18 shared facts; 1 distinct path conditions
// [k_ablate K1] K1: Lean apply (injOn_tan.eq_iff ⟨…⟩ ⟨…⟩).mp at a=m·π/180, b=35π/72, via existing RealInjOnTanEqIff

lemma {:induction false} vc_aime_1999_p11_L938(m: Rat.rat)
  requires m.Rational?
  requires gcd(Int.natAbs(m.num), m.denom) == 1
  requires Rat.lt(Rat.of_int(0), m)
  requires Rat.of_int(0).num * m.denom < m.num * Rat.of_int(0).denom
  requires Real.sum(IccN(1, 35), ((k: nat) => Real.sin(5.0 * (k as real) * Real.pi() / 180.0))) == Real.tan(m.to_real() * Real.pi() / 180.0)
  requires Real.div((m.num as real), (m.denom as real)) < 90.0
  requires 0 <= 1
  requires 0 <= 35
  requires 180.0 != 0.0
  requires Real.sum(IccN(1, 35), ((k: nat) => Real.sin(5.0 * (k as real) * Real.pi() / 180.0))) == Real.div(Real.cos(2.5 * Real.pi() / 180.0), Real.sin(2.5 * Real.pi() / 180.0))
  requires 72.0 != 0.0
  requires Real.sum(IccN(1, 35), ((k: nat) => Real.sin(5.0 * (k as real) * Real.pi() / 180.0))) == Real.tan(35.0 * Real.pi() / 72.0)
  requires Real.tan(m.to_real() * Real.pi() / 180.0) == Real.tan(35.0 * Real.pi() / 72.0)
  requires 2.0 != 0.0
  requires m.to_real() * Real.pi() / 180.0 < Real.pi() / 2.0
  requires 35.0 * Real.pi() / 72.0 < Real.pi() / 2.0
  requires 0.0 - Real.pi() / 2.0 < m.to_real() * Real.pi() / 180.0
  requires 0.0 - Real.pi() / 2.0 < 35.0 * Real.pi() / 72.0
  ensures  m.to_real() * Real.pi() / 180.0 == 35.0 * Real.pi() / 72.0
{
  RealInjOnTanEqIff(m.to_real() * Real.pi() / 180.0, 35.0 * Real.pi() / 72.0);  // K1: Set.InjOn.eq_iff (injOn_tan) at Lean's arguments
}
