// CLOSED LEMMA for failing line numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown-170 (theorem numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown, Dafny line 170, OOR)
// closes with: K3 (locality) — base
// added: nothing (line lemma standalone)
// Dafny: verifies unchanged (dossier standalone check)
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/line_lemmas/OOR/numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown/L170.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 170 of numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown (OOR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../wt_integ5/out/numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown.dfy"

// ========================================================================================
// FAILING LINE 170 (OOR) in numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown: Verification out of resource (numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown)
//   dafny |           assert (((Int.pow(6, k) * (Int.pow(4, k) + Int.pow(9, k))) + (Int.pow(4, k) * Int.pow(9, k))) == (Int.pow(6, k) * ((Int.pow(4, k) + Int.pow(6, k)) + Int.pow(9, k)))) by { // @tac 2641-2799 // @tac 2808-2820
//   statement kind: have / step assertion
//   @tac 2641-2799 | Lean: have h₁₀ : (6 : ℕ) ^ k = (2 : ℕ) ^ k * (3 : ℕ) ^ k := by
//        before-goal ⊢ (6 : ℕ) ^ k * ((4 : ℕ) ^ k + (9 : ℕ) ^ k) + (4 : ℕ) ^ k * (9 : ℕ) ^ k =
  (6 : ℕ) ^ k * ((4 : ℕ) ^ k + (6 : ℕ) ^ k + (9 : ℕ) ^ k)
//   @tac 2808-2820 | Lean: rw [h₁₀]
//        before-goal ⊢ (6 : ℕ) ^ k * ((4 : ℕ) ^ k + (9 : ℕ) ^ k) + (4 : ℕ) ^ k * (9 : ℕ) ^ k =
  (6 : ℕ) ^ k * ((4 : ℕ) ^ k + (6 : ℕ) ^ k + (9 : ℕ) ^ k)
//        before-goal ⊢ (2 : ℕ) ^ k * (3 : ℕ) ^ k * ((4 : ℕ) ^ k + (9 : ℕ) ^ k) + (4 : ℕ) ^ k * (9 : ℕ) ^ k =
  (2 : ℕ) ^ k * (3 : ℕ) ^ k * ((4 : ℕ) ^ k + (2 : ℕ) ^ k * (3 : ℕ) ^ k + (9 : ℕ) ^ k)
// Lean have h₉, Lean lines 41-70:
//   lean  |       have h₉ : (6 : ℕ) ^ k * ((4 : ℕ) ^ k + (9 : ℕ) ^ k) + (4 : ℕ) ^ k * (9 : ℕ) ^ k = (6 : ℕ) ^ k * ((4 : ℕ) ^ k + (6 : ℕ) ^ k + (9 : ℕ) ^ k) := by
//   lean  |         have h₁₀ : (6 : ℕ) ^ k = (2 : ℕ) ^ k * (3 : ℕ) ^ k := by
//   lean  |           rw [show (6 : ℕ) = 2 * 3 by norm_num]
//   lean  |           rw [mul_pow]
//   lean  |           <;> ring
//   lean  |         rw [h₁₀]
//   lean  |         have h₁₁ : (4 : ℕ) ^ k = (2 : ℕ) ^ (2 * k) := by
//   lean  |           rw [show (4 : ℕ) = 2 ^ 2 by norm_num]
//   lean  |           rw [← pow_mul]
//   lean  |           <;> ring_nf
//   lean  |         have h₁₂ : (9 : ℕ) ^ k = (3 : ℕ) ^ (2 * k) := by
//   lean  |           rw [show (9 : ℕ) = 3 ^ 2 by norm_num]
//   lean  |           rw [← pow_mul]
//   lean  |           <;> ring_nf
//   lean  |         rw [h₁₁, h₁₂]
//   lean  |         have h₁₃ : (2 : ℕ) ^ k * (3 : ℕ) ^ k * ((2 : ℕ) ^ (2 * k) + (3 : ℕ) ^ (2 * k)) + (2 : ℕ) ^ (2 * k) * (3 : ℕ) ^ (2 * k) = (2 : ℕ) ^ k * (3 : ℕ) ^ k * ((2 : ℕ) ^ (2 * k) + (2 : ℕ) ^ k * (3 : ℕ) ^ k + (3 : ℕ) ^ (2 * k)) := by
//   lean  |           have h₁₄ : (2 : ℕ) ^ (2 * k) = (2 : ℕ) ^ k * (2 : ℕ) ^ k := by
//   lean  |             rw [show (2 * k : ℕ) = k + k by ring]
//   lean  |             rw [pow_add]
//   lean  |             <;> ring
//   lean  |           have h₁₅ : (3 : ℕ) ^ (2 * k) = (3 : ℕ) ^ k * (3 : ℕ) ^ k := by
//   lean  |             rw [show (2 * k : ℕ) = k + k by ring]
//   lean  |             rw [pow_add]
//   lean  |             <;> ring
//   lean  |           rw [h₁₄, h₁₅]
//   lean  |           ring_nf
//   lean  |           <;> nlinarith [pow_pos (by norm_num : 0 < (2 : ℕ)) k, pow_pos (by norm_num : 0 < (3 : ℕ)) k]
//   lean  |         rw [h₁₃]
//   lean  |         <;> ring_nf
//   lean  |         <;> nlinarith [pow_pos (by norm_num : 0 < (2 : ℕ)) k, pow_pos (by norm_num : 0 < (3 : ℕ)) k]

// 1 path(s) merged (paths); 24 shared facts; 1 distinct path conditions
lemma {:induction false} vc_numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown_L170(f: nat -> nat, k_0_0: nat, k_0_2_3_2_1_0: int, k_1_1_0_1_0: int, m: int, n: int, t_3_5: int)
  requires 0 <= m
  requires 0 <= n
  requires 0 <= k_0_2_3_2_1_0
  requires 0 <= k_1_1_0_1_0
  requires 0 <= t_3_5
  requires forall x_1: nat :: f.requires(x_1)
  requires forall x_1: nat :: f(x_1) == Int.pow(4, x_1) + Int.pow(6, x_1) + Int.pow(9, x_1)
  requires 0 < m
  requires 0 < n
  requires m <= n
  requires forall m0: int, n0: int :: (forall x_2: nat :: f.requires(x_2)) && (0 <= m0 && 0 <= n0 && (forall x_2: nat :: f(x_2) == Int.pow(4, x_2) + Int.pow(6, x_2) + Int.pow(9, x_2)) && 0 < m0 && 0 < n0 && m0 <= n0 && ((0 <= m0 && m0 < m) || (m0 == m && 0 <= n0 && n0 < n)) ==> f.requires(Int.pow(2, m0)) && f.requires(Int.pow(2, n0)) && NatDvd(f(Int.pow(2, m0)), f(Int.pow(2, n0))))
  requires 0 <= k_0_0
  requires 0 <= 2 * k_0_0
  requires f(2 * k_0_0) == Int.pow(4, 2 * k_0_0) + Int.pow(6, 2 * k_0_0) + Int.pow(9, 2 * k_0_0)
  requires f(k_0_0) == Int.pow(4, k_0_0) + Int.pow(6, k_0_0) + Int.pow(9, k_0_0)
  requires Int.pow(4, 2 * k_0_0) == Int.pow(4, k_0_0) * Int.pow(4, k_0_0)
  requires Int.pow(6, 2 * k_0_0) == Int.pow(6, k_0_0) * Int.pow(6, k_0_0)
  requires Int.pow(9, 2 * k_0_0) == Int.pow(9, k_0_0) * Int.pow(9, k_0_0)
  requires 0 <= (Int.pow(4, k_0_0) + Int.pow(6, k_0_0) + Int.pow(9, k_0_0)) * (Int.pow(4, k_0_0) + Int.pow(6, k_0_0) + Int.pow(9, k_0_0))
  requires 0 <= 2 * (Int.pow(4, k_0_0) * Int.pow(6, k_0_0) + Int.pow(4, k_0_0) * Int.pow(9, k_0_0) + Int.pow(6, k_0_0) * Int.pow(9, k_0_0))
  requires Int.pow(4, k_0_0) * Int.pow(4, k_0_0) + Int.pow(6, k_0_0) * Int.pow(6, k_0_0) + Int.pow(9, k_0_0) * Int.pow(9, k_0_0) == tsub((Int.pow(4, k_0_0) + Int.pow(6, k_0_0) + Int.pow(9, k_0_0)) * (Int.pow(4, k_0_0) + Int.pow(6, k_0_0) + Int.pow(9, k_0_0)), 2 * (Int.pow(4, k_0_0) * Int.pow(6, k_0_0) + Int.pow(4, k_0_0) * Int.pow(9, k_0_0) + Int.pow(6, k_0_0) * Int.pow(9, k_0_0)))
  requires Int.pow(4, k_0_0) * Int.pow(6, k_0_0) + Int.pow(4, k_0_0) * Int.pow(9, k_0_0) + Int.pow(6, k_0_0) * Int.pow(9, k_0_0) == Int.pow(6, k_0_0) * (Int.pow(4, k_0_0) + Int.pow(9, k_0_0)) + Int.pow(4, k_0_0) * Int.pow(9, k_0_0)
  requires Int.pow(6, k_0_0) == Int.pow(2, k_0_0) * Int.pow(3, k_0_0)
  requires Int.pow(2, k_0_0) * Int.pow(3, k_0_0) * (Int.pow(4, k_0_0) + Int.pow(9, k_0_0)) + Int.pow(4, k_0_0) * Int.pow(9, k_0_0) == Int.pow(2, k_0_0) * Int.pow(3, k_0_0) * (Int.pow(4, k_0_0) + Int.pow(2, k_0_0) * Int.pow(3, k_0_0) + Int.pow(9, k_0_0))
  ensures  Int.pow(6, k_0_0) * (Int.pow(4, k_0_0) + Int.pow(9, k_0_0)) + Int.pow(4, k_0_0) * Int.pow(9, k_0_0) == Int.pow(6, k_0_0) * (Int.pow(4, k_0_0) + Int.pow(6, k_0_0) + Int.pow(9, k_0_0))
{ }

