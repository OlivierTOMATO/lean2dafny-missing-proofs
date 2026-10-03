// CLOSED LEMMA for failing line numbertheory_3pow2pownm1mod2pownp3eq2pownp2-246 (theorem numbertheory_3pow2pownm1mod2pownp3eq2pownp2, Dafny line 246, OOR)
// closes with: K2+K3 (computation, locality) — multi
// added: state the step as its own lemma over the facts in scope (the extracted line lemma) — closes standalone
// Dafny: finished with 35 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_047/numbertheory_3pow2pownm1mod2pownp3eq2pownp2-246/L246_K3K2pow.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 246 of numbertheory_3pow2pownm1mod2pownp3eq2pownp2 (OOR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "/home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_047/_powlib/out/numbertheory_3pow2pownm1mod2pownp3eq2pownp2.dfy"

// ========================================================================================
// FAILING LINE 246 (OOR) in induction_helper_1: Verification out of resource (induction_helper_1)
//   dafny |             assert ((NatDiv((((Int.pow(2, ((2 * n) + 4)) + (k * Int.pow(2, (n + 4)))) + ((k * k) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k) * Int.pow(2, ((2 * n) + 5)))), Int.pow(2, (n + 4))) * Int.pow(2, (n + 4))) == (((Int.pow(2, ((2 * n) + 4)) + (k * Int.pow(2, (n + 4)))) + ((k * k) * Int.pow(2, ((
//   statement kind: have / step assertion
//   @tac 4666-6151 | Lean: have h₆ : 2 ^ (n + 4) ∣ 2 ^ (2 * n + 4) + k * 2 ^ (n + 4) + k ^ 2 * 2 ^ (2 * n + 6) + 2 * k * 2 ^ (2 * n + 5) := by
//        before-goal ⊢ ((2 : ℕ) ^ ((2 : ℕ) * n + (4 : ℕ)) + k * (2 : ℕ) ^ (n + (4 : ℕ)) + k ^ (2 : ℕ) * (2 : ℕ) ^ ((2 : ℕ) * n + (6 : ℕ)) +
//           (2 : ℕ) * k * (2 : ℕ) ^ ((2 : ℕ) * n + (5 : ℕ))) /
//         (2 : ℕ) ^ (n + (4 : ℕ)) *
//       (2 : ℕ) 
//   @tac 6162-6837 | Lean: have h₁₁ : (2 ^ (2 * n + 4) + k * 2 ^ (n + 4) + k ^ 2 * 2 ^ (2 * n + 6) + 2 * k * 2 ^ (2 * n + 5)) / 2 ^ (n + 4) * 2 ^ (n + 4) = (2 ^ (2 * n + 4) + k * 2 ^ (n +
//        before-goal ⊢ ((2 : ℕ) ^ ((2 : ℕ) * n + (4 : ℕ)) + k * (2 : ℕ) ^ (n + (4 : ℕ)) + k ^ (2 : ℕ) * (2 : ℕ) ^ ((2 : ℕ) * n + (6 : ℕ)) +
//           (2 : ℕ) * k * (2 : ℕ) ^ ((2 : ℕ) * n + (5 : ℕ))) /
//         (2 : ℕ) ^ (n + (4 : ℕ)) *
//       (2 : ℕ) 
//   @tac 6848-6861 | Lean: exact h₁₁
//        before-goal ⊢ ((2 : ℕ) ^ ((2 : ℕ) * n + (4 : ℕ)) + k * (2 : ℕ) ^ (n + (4 : ℕ)) + k ^ (2 : ℕ) * (2 : ℕ) ^ ((2 : ℕ) * n + (6 : ℕ)) +
//           (2 : ℕ) * k * (2 : ℕ) ^ ((2 : ℕ) * n + (5 : ℕ))) /
//         (2 : ℕ) ^ (n + (4 : ℕ)) *
//       (2 : ℕ) 
// Lean have h₅, Lean lines 86-120:
//   lean  |         have h₅ : (2 ^ (2 * n + 4) + k * 2 ^ (n + 4) + k ^ 2 * 2 ^ (2 * n + 6) + 2 * k * 2 ^ (2 * n + 5)) / 2 ^ (n + 4) * 2 ^ (n + 4) = (2 ^ (2 * n + 4) + k * 2 ^ (n + 4) + k ^ 2 * 2 ^ (2 * n + 6) + 2 * k * 2 ^ (2 * n + 5)) := by
//   lean  |           have h₆ : 2 ^ (n + 4) ∣ 2 ^ (2 * n + 4) + k * 2 ^ (n + 4) + k ^ 2 * 2 ^ (2 * n + 6) + 2 * k * 2 ^ (2 * n + 5) := by
//   lean  |             have h₇ : 2 ^ (n + 4) ∣ 2 ^ (2 * n + 4) := by
//   lean  |               apply pow_dvd_pow 2
//   lean  |               omega
//   lean  |             have h₈ : 2 ^ (n + 4) ∣ k * 2 ^ (n + 4) := by
//   lean  |               exact ⟨k, by ring⟩
//   lean  |             have h₉ : 2 ^ (n + 4) ∣ k ^ 2 * 2 ^ (2 * n + 6) := by
//   lean  |               have h₁₀ : 2 ^ (n + 4) ∣ 2 ^ (2 * n + 6) := by
//   lean  |                 apply pow_dvd_pow 2
//   lean  |                 omega
//   lean  |               have h₁₁ : 2 ^ (n + 4) ∣ k ^ 2 * 2 ^ (2 * n + 6) := by
//   lean  |                 exact dvd_mul_of_dvd_right h₁₀ _
//   lean  |               exact h₁₁
//   lean  |             have h₁₀ : 2 ^ (n + 4) ∣ 2 * k * 2 ^ (2 * n + 5) := by
//   lean  |               have h₁₁ : 2 ^ (n + 4) ∣ 2 ^ (2 * n + 5) := by
//   lean  |                 apply pow_dvd_pow 2
//   lean  |                 omega
//   lean  |               have h₁₂ : 2 ^ (n + 4) ∣ 2 * k * 2 ^ (2 * n + 5) := by
//   lean  |                 have h₁₃ : 2 ^ (n + 4) ∣ 2 ^ (2 * n + 5) := h₁₁
//   lean  |                 have h₁₄ : 2 ^ (n + 4) ∣ 2 * k * 2 ^ (2 * n + 5) := by
//   lean  |                   calc
//   lean  |                     2 ^ (n + 4) ∣ 2 ^ (2 * n + 5) := h₁₃
//   lean  |                     _ ∣ 2 * k * 2 ^ (2 * n + 5) := by
//   lean  |                       exact ⟨2 * k, by ring⟩
//   lean  |                 exact h₁₄
//   lean  |               exact h₁₂
//   lean  |             -- Sum of multiples is a multiple
//   lean  |             exact Nat.dvd_add (Nat.dvd_add (Nat.dvd_add h₇ h₈) h₉) h₁₀
//   lean  |           have h₁₁ : (2 ^ (2 * n + 4) + k * 2 ^ (n + 4) + k ^ 2 * 2 ^ (2 * n + 6) + 2 * k * 2 ^ (2 * n + 5)) / 2 ^ (n + 4) * 2 ^ (n + 4) = (2 ^ (2 * n + 4) + k * 2 ^ (n + 4) + k ^ 2 * 2 ^ (2 * n + 6) + 2 * k * 2 ^ (2 * n + 5)) := by
//   lean  |             have h₁₂ : 2 ^ (n + 4) ∣ 2 ^ (2 * n + 4) + k * 2 ^ (n + 4) + k ^ 2 * 2 ^ (2 * n + 6) + 2 * k * 2 ^ (2 * n + 5) := h₆
//   lean  |             have h₁₃ : (2 ^ (2 * n + 4) + k * 2 ^ (n + 4) + k ^ 2 * 2 ^ (2 * n + 6) + 2 * k * 2 ^ (2 * n + 5)) / 2 ^ (n + 4) * 2 ^ (n + 4) = (2 ^ (2 * n + 4) + k * 2 ^ (n + 4) + k ^ 2 * 2 ^ (2 * n + 6) + 2 * k * 2 ^ (2 * n + 5)) := by
//   lean  |               exact Nat.div_mul_cancel h₁₂
//   lean  |             exact h₁₃
//   lean  |           exact h₁₁

// 4 path(s) merged (paths); 28 shared facts; 4 distinct path conditions
// ABLATION VARIANT K3+K2pow (pair; K3 file with the no-recursive-pow-ensures library): Lean h₅ (h₁₁/h₁₃ := Nat.div_mul_cancel h₁₂, h₁₂ := h₆) uses only h₆; other requires dropped
lemma {:induction false} vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L246(k_1_0_0: int, k_1_0_2: int, k_1_0_2_0: int, k_1_0_3: int, n: nat)
  requires 0 <= k_1_0_2_0
  requires 0 <= Int.pow(2, n + 4)
  requires 0 <= Int.pow(2, 2 * n + 4)
  requires 0 <= Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5))
  ensures  NatDiv(Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5), Int.pow(2, n + 4)) * Int.pow(2, n + 4) == Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5)
{
  NatDivMulCancel(Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5), Int.pow(2, n + 4));  // translation's own cite (Nat.div_mul_cancel h₁₂), already in the file
}
