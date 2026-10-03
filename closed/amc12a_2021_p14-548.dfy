// CLOSED LEMMA for failing line amc12a_2021_p14-548 (theorem amc12a_2021_p14, Dafny line 548, OOR)
// closes with: K2 (computation) — single
// added: library copy with the recursive `ensures` of Real.pow/Int.pow removed (bodies kept); only that change
// Dafny: finished with 15 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_019/amc12a_2021_p14-548/K2pow.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 548 of amc12a_2021_p14 (OOR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "/home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_019/_k2pow/out/amc12a_2021_p14.dfy"

// ========================================================================================
// FAILING LINE 548 (OOR) in amc12a_2021_p14: Verification out of resource (amc12a_2021_p14)
//   dafny |     assert (((210.0 * Real.logb(5.0, 3.0)) * Real.sum(IccN(1, 100), ((k: nat) => Real.logb(Real.pow(9.0, k), Real.pow(25.0, k))))) == 21000.0) by {  // sub-goal before `rw` (Lean state) // @tac 7770-7883
//   statement kind: sub-goal (Lean tactic state)
//   @tac 7770-7883 | Lean: rw [show (∑ k in Finset.Icc 1 100, Real.logb (9 ^ k) (25 ^ k)) = 100 * Real.logb 3 5 by
//        before-goal ⊢ (210 : ℝ) * logb (5 : ℝ) (3 : ℝ) * ∑ k ∈ Finset.Icc (1 : ℕ) (100 : ℕ), logb ((9 : ℝ) ^ k) ((25 : ℝ) ^ k) = (21000 : ℝ)
//        before-goal ⊢ (210 : ℝ) * logb (5 : ℝ) (3 : ℝ) * ((100 : ℝ) * logb (3 : ℝ) (5 : ℝ)) = (21000 : ℝ)
// inside Lean have h₆, Lean lines 199-212:
//   lean  |   have h₆ : ((∑ k in Finset.Icc 1 20, Real.logb (5 ^ k) (3 ^ k ^ 2)) * ∑ k in Finset.Icc 1 100, Real.logb (9 ^ k) (25 ^ k)) = 21000 := by
//   lean  |     rw [show (∑ k in Finset.Icc 1 20, Real.logb (5 ^ k) (3 ^ k ^ 2)) = 210 * Real.logb 5 3 by
//   lean  |       simpa using h₂]
//   lean  |     rw [show (∑ k in Finset.Icc 1 100, Real.logb (9 ^ k) (25 ^ k)) = 100 * Real.logb 3 5 by
//   lean  |       simpa using h₄]
//   lean  |     have h₆₁ : (210 * Real.logb 5 3 : ℝ) * (100 * Real.logb 3 5 : ℝ) = 21000 := by
//   lean  |       have h₆₂ : Real.logb 5 3 * Real.logb 3 5 = 1 := h₅
//   lean  |       have h₆₃ : (Real.logb 5 3 : ℝ) * (Real.logb 3 5 : ℝ) = 1 := by exact_mod_cast h₆₂
//   lean  |       calc
//   lean  |         (210 * Real.logb 5 3 : ℝ) * (100 * Real.logb 3 5 : ℝ) = (210 * 100 : ℝ) * ((Real.logb 5 3 : ℝ) * (Real.logb 3 5 : ℝ)) := by ring
//   lean  |         _ = (210 * 100 : ℝ) * 1 := by rw [h₆₃]
//   lean  |         _ = 21000 := by norm_num
//   lean  |     rw [h₆₁]
//   lean  |     <;> norm_num

// 1 path(s) merged (paths); 9 shared facts; 1 distinct path conditions
// AUGMENTATION K2pow
lemma {:induction false} vc_amc12a_2021_p14_L548()
  requires forall k_0_1: nat :: k_0_1 in IccN(1, 20) ==> Real.logb(Real.pow(5.0, k_0_1), Real.pow(3.0, Int.pow(k_0_1, 2))) == (k_0_1 as real) * Real.logb(5.0, 3.0)
  requires 0 <= 1
  requires 0 <= 20
  requires Real.sum(IccN(1, 20), ((k: nat) => Real.logb(Real.pow(5.0, k), Real.pow(3.0, Int.pow(k, 2))))) == 210.0 * Real.logb(5.0, 3.0)
  requires forall k_2_1: nat :: k_2_1 in IccN(1, 100) ==> Real.logb(Real.pow(9.0, k_2_1), Real.pow(25.0, k_2_1)) == Real.logb(3.0, 5.0)
  requires 0 <= 100
  requires Real.sum(IccN(1, 100), ((k: nat) => Real.logb(Real.pow(9.0, k), Real.pow(25.0, k)))) == 100.0 * Real.logb(3.0, 5.0)
  requires Real.logb(5.0, 3.0) * Real.logb(3.0, 5.0) == 1.0
  requires 210.0 * Real.logb(5.0, 3.0) * (100.0 * Real.logb(3.0, 5.0)) == 21000.0
  ensures  210.0 * Real.logb(5.0, 3.0) * Real.sum(IccN(1, 100), ((k: nat) => Real.logb(Real.pow(9.0, k), Real.pow(25.0, k)))) == 21000.0
{ }
