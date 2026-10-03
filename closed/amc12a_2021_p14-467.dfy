// CLOSED LEMMA for failing line amc12a_2021_p14-467 (theorem amc12a_2021_p14, Dafny line 467, OOR)
// closes with: K3+K5 (locality, automation lemma) — multi
// added: own lemma with no requires, body `FinsetSumConst(IccN(1, 100), Real.logb(3.0, 5.0)); NatCardIcc(1, 100);` + library lemma `lemma {:axiom} NatCardIcc(a: nat, b: nat) ensures |IccN(a, b)| == tsub(b + 1, a)` (Mathlib Nat.card_Icc)
// Dafny: finished with 7 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_019/amc12a_2021_p14-467/pairK3K5.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 467 of amc12a_2021_p14 (OOR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "/home/changjie/lean2dafny_research/agents_tac/wt_integ5/out/amc12a_2021_p14.dfy"

// ========================================================================================
// FAILING LINE 467 (OOR) in amc12a_2021_p14: Verification out of resource (amc12a_2021_p14)
//   dafny |       assert (Real.sum(IccN(1, 100), ((k: nat) => Real.logb(3.0, 5.0))) == (100.0 * Real.logb(3.0, 5.0))) by { // @tac 6596-6735 // @tac 6596-6720 // @tac 6596-6699 // @tac 6596-6672 // @tac 6596-6657 // @tac 6596-6638
//   statement kind: have / step assertion
//   @tac 6596-6735 | Lean: simp [Finset.sum_const, Finset.card_range]
//        before-goal ⊢ ∑ k ∈ Finset.Icc (1 : ℕ) (100 : ℕ), logb (3 : ℝ) (5 : ℝ) = (100 : ℝ) * logb (3 : ℝ) (5 : ℝ)
//   @tac 6596-6720 | Lean: simp [Finset.sum_const, Finset.card_range]
//        before-goal ⊢ ∑ k ∈ Finset.Icc (1 : ℕ) (100 : ℕ), logb (3 : ℝ) (5 : ℝ) = (100 : ℝ) * logb (3 : ℝ) (5 : ℝ)
//   @tac 6596-6699 | Lean: simp [Finset.sum_const, Finset.card_range]
//        before-goal ⊢ ∑ k ∈ Finset.Icc (1 : ℕ) (100 : ℕ), logb (3 : ℝ) (5 : ℝ) = (100 : ℝ) * logb (3 : ℝ) (5 : ℝ)
//   @tac 6596-6672 | Lean: simp [Finset.sum_const, Finset.card_range]
//        before-goal ⊢ ∑ k ∈ Finset.Icc (1 : ℕ) (100 : ℕ), logb (3 : ℝ) (5 : ℝ) = (100 : ℝ) * logb (3 : ℝ) (5 : ℝ)
//   @tac 6596-6657 | Lean: simp [Finset.sum_const, Finset.card_range]
//        before-goal ⊢ ∑ k ∈ Finset.Icc (1 : ℕ) (100 : ℕ), logb (3 : ℝ) (5 : ℝ) = (100 : ℝ) * logb (3 : ℝ) (5 : ℝ)
//   @tac 6596-6638 | Lean: simp [Finset.sum_const, Finset.card_range]
//        before-goal ⊢ ∑ k ∈ Finset.Icc (1 : ℕ) (100 : ℕ), logb (3 : ℝ) (5 : ℝ) = (100 : ℝ) * logb (3 : ℝ) (5 : ℝ)
// Lean have h₄₂, Lean lines 168-174:
//   lean  |     have h₄₂ : (∑ k in Finset.Icc (1 : ℕ) 100, (Real.logb 3 5 : ℝ)) = 100 * Real.logb 3 5 := by
//   lean  |       simp [Finset.sum_const, Finset.card_range]
//   lean  |       <;> norm_num
//   lean  |       <;> ring
//   lean  |       <;> simp [Real.logb]
//   lean  |       <;> field_simp
//   lean  |       <;> ring

// 1 path(s) merged (paths); 7 shared facts; 1 distinct path conditions
// K3 ablation: kept requires [] (Lean step's hypotheses); dropped 7 — sufficiency test
// AUGMENTATION pairK3K5
lemma {:induction false} vc_amc12a_2021_p14_L467()
  ensures  Real.sum(IccN(1, 100), ((v_22_k: nat) => Real.logb(3.0, 5.0))) == 100.0 * Real.logb(3.0, 5.0)
{
  FinsetSumConst(IccN(1, 100), Real.logb(3.0, 5.0));  // Finset.sum_const, applied inside simp (exec 2042, internal)
  NatCardIcc(1, 100);  // Nat.card_Icc, applied inside simp (exec 2042, internal)
}

// Mathlib: theorem Nat.card_Icc (a b : ℕ) : (Finset.Icc a b).card = b + 1 - a   (ℕ truncated subtraction = tsub)
// added to this ablation work copy only (no library counterpart in integ5)
lemma {:axiom} NatCardIcc(a: nat, b: nat)
  ensures |IccN(a, b)| == tsub(b + 1, a)
