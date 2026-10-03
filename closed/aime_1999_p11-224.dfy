// CLOSED LEMMA for failing line aime_1999_p11-224 (theorem aime_1999_p11, Dafny line 224, OOR)
// closes with: K1 (instance) — single
// added: FinsetMulSumPointwise(IccN(1,35), k=>sin(5kπ/180), k=>2sin(2.5π/180)·sin(5kπ/180), 2sin(2.5π/180)) — Lean's recorded Finset.mul_sum instance via existing library lemma
// Dafny: finished with 21 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_005/aime_1999_p11-224/K1.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 224 of aime_1999_p11 (OOR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../../wt_integ5/library/library_new.dfy"

// ========================================================================================
// FAILING LINE 224 (OOR) in aime_1999_p11: Verification out of resource (aime_1999_p11)
//   dafny |           assert (((2.0 * Real.sin(((2.5 * Real.pi()) / 180.0))) * Real.sum(IccN(1, 35), ((k: nat) => Real.sin((((5.0 * (k as real)) * Real.pi()) / 180.0))))) == Real.sum(IccN(1, 35), ((k: nat) => ((2.0 * Real.sin(((2.5 * Real.pi()) / 180.0))) * Real.sin((((5.0 * (k as real)) * Real.pi()) / 180.0)))
//   statement kind: have / step assertion
//   @tac 1276-1336 | Lean: rw [Finset.mul_sum]
//        before-goal ⊢ (2 : ℝ) * sin (2.5 * π / (180 : ℝ)) * ∑ k ∈ Finset.Icc (1 : ℕ) (35 : ℕ), sin ((5 : ℝ) * ↑k * π / (180 : ℝ)) =
//     ∑ k ∈ Finset.Icc (1 : ℕ) (35 : ℕ), (2 : ℝ) * sin (2.5 * π / (180 : ℝ)) * sin ((5 : ℝ) * ↑k * π / (180 : ℝ))
//   @tac 1276-1295 | Lean: rw [Finset.mul_sum]
//        before-goal ⊢ (2 : ℝ) * sin (2.5 * π / (180 : ℝ)) * ∑ k ∈ Finset.Icc (1 : ℕ) (35 : ℕ), sin ((5 : ℝ) * ↑k * π / (180 : ℝ)) =
//     ∑ k ∈ Finset.Icc (1 : ℕ) (35 : ℕ), (2 : ℝ) * sin (2.5 * π / (180 : ℝ)) * sin ((5 : ℝ) * ↑k * π / (180 : ℝ))
//        before-goal ⊢ ∑ i ∈ Finset.Icc (1 : ℕ) (35 : ℕ), (2 : ℝ) * sin (2.5 * π / (180 : ℝ)) * sin ((5 : ℝ) * ↑i * π / (180 : ℝ)) =
//     ∑ k ∈ Finset.Icc (1 : ℕ) (35 : ℕ), (2 : ℝ) * sin (2.5 * π / (180 : ℝ)) * sin ((5 : ℝ) * ↑k * π / (180 : ℝ))
// Lean have h₃, Lean lines 15-18:
//   lean  |         have h₃ : 2 * Real.sin (2.5 * Real.pi / 180) * (∑ k in Finset.Icc (1 : ℕ) 35, Real.sin (5 * k * Real.pi / 180)) = ∑ k in Finset.Icc (1 : ℕ) 35, (2 * Real.sin (2.5 * Real.pi / 180) * Real.sin (5 * k * Real.pi / 180)) := by
//   lean  |           rw [Finset.mul_sum]
//   lean  |           <;>
//   lean  |           simp [mul_assoc]

// 1 path(s) merged (paths); 8 shared facts; 1 distinct path conditions
// [k_ablate K1] K1: lemma instance Lean rw used (Finset.mul_sum at s=Icc 1 35, f, b) via existing generic FinsetMulSumPointwise<nat>

lemma {:induction false} vc_aime_1999_p11_L224(m: Rat.rat)
  requires m.Rational?
  requires gcd(Int.natAbs(m.num), m.denom) == 1
  requires Rat.lt(Rat.of_int(0), m)
  requires Rat.of_int(0).num * m.denom < m.num * Rat.of_int(0).denom
  requires Real.sum(IccN(1, 35), ((k: nat) => Real.sin(5.0 * (k as real) * Real.pi() / 180.0))) == Real.tan(m.to_real() * Real.pi() / 180.0)
  requires Real.div((m.num as real), (m.denom as real)) < 90.0
  requires 0 <= 1
  requires 0 <= 35
  ensures  2.0 * Real.sin(2.5 * Real.pi() / 180.0) * Real.sum(IccN(1, 35), ((k: nat) => Real.sin(5.0 * (k as real) * Real.pi() / 180.0))) == Real.sum(IccN(1, 35), ((v_0_0_0_6_k: nat) => 2.0 * Real.sin(2.5 * Real.pi() / 180.0) * Real.sin(5.0 * (v_0_0_0_6_k as real) * Real.pi() / 180.0)))
{
  FinsetMulSumPointwise(IccN(1, 35), ((k: nat) => Real.sin(5.0 * (k as real) * Real.pi() / 180.0)), ((v_0_0_0_6_k: nat) => 2.0 * Real.sin(2.5 * Real.pi() / 180.0) * Real.sin(5.0 * (v_0_0_0_6_k as real) * Real.pi() / 180.0)), 2.0 * Real.sin(2.5 * Real.pi() / 180.0));  // K1: Finset.mul_sum at Lean's instance (exec 68 cite)
}
