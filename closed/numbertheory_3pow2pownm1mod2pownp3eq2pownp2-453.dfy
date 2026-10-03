// CLOSED LEMMA for failing line numbertheory_3pow2pownm1mod2pownp3eq2pownp2-453 (theorem numbertheory_3pow2pownm1mod2pownp3eq2pownp2, Dafny line 453, OOR)
// closes with: K3 (locality) — base
// added: nothing (line lemma standalone)
// Dafny: verifies unchanged (dossier standalone check)
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/line_lemmas/OOR/numbertheory_3pow2pownm1mod2pownp3eq2pownp2/L453.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 453 of numbertheory_3pow2pownm1mod2pownp3eq2pownp2 (OOR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../wt_integ5/out/numbertheory_3pow2pownm1mod2pownp3eq2pownp2.dfy"

// ========================================================================================
// FAILING LINE 453 (OOR) in numbertheory_3pow2pownm1mod2pownp3eq2pownp2: Verification out of resource (numbertheory_3pow2pownm1mod2pownp3eq2pownp2)
//   dafny |       ensures exists k: nat :: (Int.pow(3, Int.pow(2, n)) == ((1 + Int.pow(2, (n + 2))) + (k * Int.pow(2, (n + 3))))) // @tac 545-571
//   statement kind: contract (ensures/requires)
//   @tac 545-571 | Lean: induction' hn with n hn IH
//        before-goal ⊢ ∃ (k : ℕ), (3 : ℕ) ^ (2 : ℕ) ^ n = (1 : ℕ) + (2 : ℕ) ^ (n + (2 : ℕ)) + k * (2 : ℕ) ^ (n + (3 : ℕ))
// inside Lean have h_main, Lean lines 11-128:
//   lean  |   have h_main : ∃ (k : ℕ), 3 ^ 2 ^ n = 1 + 2 ^ (n + 2) + k * 2 ^ (n + 3) := by
//   lean  |     have h₁ : ∀ n : ℕ, 0 < n → ∃ (k : ℕ), 3 ^ 2 ^ n = 1 + 2 ^ (n + 2) + k * 2 ^ (n + 3) := by
//   lean  |       intro n hn
//   lean  |       induction' hn with n hn IH
//   lean  |       · -- Base case: n = 1
//   lean  |         use 0
//   lean  |         norm_num
//   lean  |       · -- Inductive step: assume the statement holds for n, prove for n + 1
//   lean  |         obtain ⟨k, hk⟩ := IH
//   lean  |         use (2 ^ (2 * n + 4) + k * 2 ^ (n + 4) + k ^ 2 * 2 ^ (2 * n + 6) + 2 * k * 2 ^ (2 * n + 5)) / 2 ^ (n + 4)
//   lean  |         have h₂ : 3 ^ 2 ^ (n + 1) = (3 ^ 2 ^ n) ^ 2 := by
//   lean  |           simp [pow_succ, pow_mul, pow_two]
//   lean  |           <;> ring_nf
//   lean  |           <;> simp [pow_add, pow_mul, pow_two]
//   lean  |           <;> ring_nf
//   lean  |         rw [h₂, hk]
//   lean  |         have h₃ : (1 + 2 ^ (n + 2) + k * 2 ^ (n + 3)) ^ 2 = 1 + 2 ^ (n + 3) + (2 ^ (2 * n + 4) + k * 2 ^ (n + 4) + k ^ 2 * 2 ^ (2 * n + 6) + 2 * k * 2 ^ (2 * n + 5)) := by
//   lean  |           have h₄ : n ≥ 0 := by linarith
//   lean  |           have h₅ : 2 * n + 4 ≥ n + 4 := by
//   lean  |             omega
//   lean  |           have h₆ : 2 * n + 6 ≥ n + 4 := by
//   lean  |             omega
//   lean  |           have h₇ : 2 * n + 5 ≥ n + 4 := by
//   lean  |             omega
//   lean  |           calc
//   lean  |             (1 + 2 ^ (n + 2) + k * 2 ^ (n + 3)) ^ 2 = 1 + 2 ^ (n + 3) + (2 ^ (2 * n + 4) + k * 2 ^ (n + 4) + k ^ 2 * 2 ^ (2 * n + 6) + 2 * k * 2 ^ (2 * n + 5)) := by
//   lean  |               ring_nf at *
//   lean  |               <;>
//   lean  |                 simp [pow_add, pow_mul, mul_assoc, mul_comm, mul_left_comm, Nat.mul_div_cancel_left]
//   lean  |               <;>
//   lean  |                 ring_nf at *
//   lean  |               <;>
//   lean  |                 omega
//   lean  |             _ = 1 + 2 ^ (n + 3) + (2 ^ (2 * n + 4) + k * 2 ^ (n + 4) + k ^ 2 * 2 ^ (2 * n + 6) + 2 * k * 2 ^ (2 * n + 5)) := by
//   lean  |               rfl
//   lean  |         rw [h₃]
//   lean  |         have h₄ : (2 ^ (2 * n + 4) + k * 2 ^ (n + 4) + k ^ 2 * 2 ^ (2 * n + 6) + 2 * k * 2 ^ (2 * n + 5)) % 2 ^ (n + 4) = 0 := by
//   lean  |           have h₅ : 2 ^ (n + 4) ∣ 2 ^ (2 * n + 4) := by
//   lean  |             apply pow_dvd_pow 2
//   lean  |             omega
//   lean  |           have h₆ : 2 ^ (n + 4) ∣ k * 2 ^ (n + 4) := by
//   lean  |             exact ⟨k, by ring⟩
//   lean  |           have h₇ : 2 ^ (n + 4) ∣ k ^ 2 * 2 ^ (2 * n + 6) := by
//   lean  |             have h₈ : 2 ^ (n + 4) ∣ 2 ^ (2 * n + 6) := by
//   lean  |               apply pow_dvd_pow 2
//   lean  |               omega
//   lean  |             have h₉ : 2 ^ (n + 4) ∣ k ^ 2 * 2 ^ (2 * n + 6) := by
//   lean  |               exact dvd_mul_of_dvd_right h₈ _
//   lean  |             exact h₉
//   lean  |           have h₈ : 2 ^ (n + 4) ∣ 2 * k * 2 ^ (2 * n + 5) := by
//   lean  |             have h₉ : 2 ^ (n + 4) ∣ 2 ^ (2 * n + 5) := by
//   lean  |               apply pow_dvd_pow 2
//   lean  |               omega
//   lean  |             have h₁₀ : 2 ^ (n + 4) ∣ 2 * k * 2 ^ (2 * n + 5) := by
//   lean  |               have h₁₁ : 2 ^ (n + 4) ∣ 2 ^ (2 * n + 5) := h₉
//   lean  |               have h₁₂ : 2 ^ (n + 4) ∣ 2 * k * 2 ^ (2 * n + 5) := by
//   lean  |                 calc
//   lean  |                   2 ^ (n + 4) ∣ 2 ^ (2 * n + 5) := h₁₁
//   lean  |                   _ ∣ 2 * k * 2 ^ (2 * n + 5) := by
//   lean  |                     exact ⟨2 * k, by ring⟩
//   lean  |               exact h₁₂
//   lean  |             exact h₁₀
//   lean  |           have h₉ : 2 ^ (n + 4) ∣ 2 ^ (2 * n + 4) + k * 2 ^ (n + 4) + k ^ 2 * 2 ^ (2 * n + 6) + 2 * k * 2 ^ (2 * n + 5) := by
//   lean  |             have h₁₀ : 2 ^ (n + 4) ∣ 2 ^ (2 * n + 4) := h₅
//   lean  |             have h₁₁ : 2 ^ (n + 4) ∣ k * 2 ^ (n + 4) := h₆
//   lean  |             have h₁₂ : 2 ^ (n + 4) ∣ k ^ 2 * 2 ^ (2 * n + 6) := h₇
//   lean  |             have h₁₃ : 2 ^ (n + 4) ∣ 2 * k * 2 ^ (2 * n + 5) := h₈
//   lean  |             -- Sum of multiples is a multiple
//   lean  |             exact Nat.dvd_add (Nat.dvd_add (Nat.dvd_add h₁₀ h₆) h₇) h₈
//   lean  |           have h₁₀ : (2 ^ (2 * n + 4) + k * 2 ^ (n + 4) + k ^ 2 * 2 ^ (2 * n + 6) + 2 * k * 2 ^ (2 * n + 5)) % 2 ^ (n + 4) = 0 := by
//   lean  |             have h₁₁ : 2 ^ (n + 4) ∣ 2 ^ (2 * n + 4) + k * 2 ^ (n + 4) + k ^ 2 * 2 ^ (2 * n + 6) + 2 * k * 2 ^ (2 * n + 5) := h₉
//   lean  |             have h₁₂ : (2 ^ (2 * n + 4) + k * 2 ^ (n + 4) + k ^ 2 * 2 ^ (2 * n + 6) + 2 * k * 2 ^ (2 * n + 5)) % 2 ^ (n + 4) = 0 := by
//   lean  |               exact Nat.mod_eq_zero_of_dvd h₁₁
//   lean  |             exact h₁₂
//   lean  |           exact h₁₀
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
//   lean  |             have h₁₃ : (2 ^ (2 * n + 4) + k * 2 ^ (n + 4) + k ^ 2 * 2 ^ (2 * n + 6) + 2 * k * 2 ^ (2 * n + 5)) / 2 ^ (n + 4
//   lean  | … (truncated)

// 1 path(s) merged (paths); 7 shared facts; 1 distinct path conditions
lemma {:induction false} vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L453(k_1_2: int, n: int, n_0_0_0: int)
  requires 0 <= n
  requires 0 <= k_1_2
  requires 0 < n
  requires 0 <= n_0_0_0
  requires 0 < n_0_0_0
  requires 0 <= n_0_0_0 - 1
  requires exists k_1: nat :: Int.pow(3, Int.pow(2, n_0_0_0 - 1 + 1)) == 1 + Int.pow(2, n_0_0_0 - 1 + 1 + 2) + k_1 * Int.pow(2, n_0_0_0 - 1 + 1 + 3)
  ensures  exists k_0_0_1: nat :: Int.pow(3, Int.pow(2, n_0_0_0)) == 1 + Int.pow(2, n_0_0_0 + 2) + k_0_0_1 * Int.pow(2, n_0_0_0 + 3)
{ }

// side checks at the same line (not the reported failure): 3 check(s)
// side check: value always satisfies the subset constraints of 'nat'
lemma {:induction false} vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L453_side1(k_0_0_0: int, k_1_2: int, n: int, n_0_0_0: nat)
  requires 0 <= n
  requires 0 <= k_1_2
  requires 0 < n
  requires 0 <= n_0_0_0
  requires 0 < n_0_0_0
  requires 0 <= k_0_0_0
  ensures  0 <= Int.pow(2, n_0_0_0)
{ }

// side check: value always satisfies the subset constraints of 'nat'
lemma {:induction false} vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L453_side2(k_0_0_0: int, k_1_2: int, n: int, n_0_0_0: nat)
  requires 0 <= n
  requires 0 <= k_1_2
  requires 0 < n
  requires 0 <= n_0_0_0
  requires 0 < n_0_0_0
  requires 0 <= k_0_0_0
  requires 0 <= Int.pow(2, n_0_0_0)
  ensures  0 <= n_0_0_0 + 2
{ }

// side check: value always satisfies the subset constraints of 'nat'
lemma {:induction false} vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L453_side3(k_0_0_0: int, k_1_2: int, n: int, n_0_0_0: nat)
  requires 0 <= n
  requires 0 <= k_1_2
  requires 0 < n
  requires 0 <= n_0_0_0
  requires 0 < n_0_0_0
  requires 0 <= k_0_0_0
  requires 0 <= Int.pow(2, n_0_0_0)
  requires 0 <= n_0_0_0 + 2
  ensures  0 <= n_0_0_0 + 3
{ }

