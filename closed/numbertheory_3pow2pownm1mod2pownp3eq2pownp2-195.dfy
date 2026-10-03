// CLOSED LEMMA for failing line numbertheory_3pow2pownm1mod2pownp3eq2pownp2-195 (theorem numbertheory_3pow2pownm1mod2pownp3eq2pownp2, Dafny line 195, OOR)
// closes with: K3 (locality) — base
// added: nothing (line lemma standalone)
// Dafny: verifies unchanged (dossier standalone check)
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/line_lemmas/OOR/numbertheory_3pow2pownm1mod2pownp3eq2pownp2/L195.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 195 of numbertheory_3pow2pownm1mod2pownp3eq2pownp2 (OOR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../wt_integ5/out/numbertheory_3pow2pownm1mod2pownp3eq2pownp2.dfy"

// ========================================================================================
// FAILING LINE 195 (OOR) in induction_helper_1: Verification out of resource (induction_helper_1)
//   dafny |               assert NatDvd(Int.pow(2, (n + 4)), (((Int.pow(2, ((2 * n) + 4)) + (k * Int.pow(2, (n + 4)))) + ((k * k) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k) * Int.pow(2, ((2 * n) + 5))))) by { // @tac 3511-3565 // @tac 3578-3632 // @tac 3645-3707 // @tac 3720-3782 // @tac 3841-3909
//   statement kind: have / step assertion
//   @tac 3511-3565 | Lean: have h₁₀ : 2 ^ (n + 4) ∣ 2 ^ (2 * n + 4) := h₅
//        before-goal ⊢ (2 : ℕ) ^ (n + (4 : ℕ)) ∣
  (2 : ℕ) ^ ((2 : ℕ) * n + (4 : ℕ)) + k * (2 : ℕ) ^ (n + (4 : ℕ)) + k ^ (2 : ℕ) * (2 : ℕ) ^ ((2 : ℕ) * n + (6 : ℕ)) +
    (2 : ℕ) * k * (2 : ℕ) ^ ((2 : ℕ) * n + (5 : ℕ))
//   @tac 3578-3632 | Lean: have h₁₁ : 2 ^ (n + 4) ∣ k * 2 ^ (n + 4) := h₆
//        before-goal ⊢ (2 : ℕ) ^ (n + (4 : ℕ)) ∣
  (2 : ℕ) ^ ((2 : ℕ) * n + (4 : ℕ)) + k * (2 : ℕ) ^ (n + (4 : ℕ)) + k ^ (2 : ℕ) * (2 : ℕ) ^ ((2 : ℕ) * n + (6 : ℕ)) +
    (2 : ℕ) * k * (2 : ℕ) ^ ((2 : ℕ) * n + (5 : ℕ))
//   @tac 3645-3707 | Lean: have h₁₂ : 2 ^ (n + 4) ∣ k ^ 2 * 2 ^ (2 * n + 6) := h₇
//        before-goal ⊢ (2 : ℕ) ^ (n + (4 : ℕ)) ∣
  (2 : ℕ) ^ ((2 : ℕ) * n + (4 : ℕ)) + k * (2 : ℕ) ^ (n + (4 : ℕ)) + k ^ (2 : ℕ) * (2 : ℕ) ^ ((2 : ℕ) * n + (6 : ℕ)) +
    (2 : ℕ) * k * (2 : ℕ) ^ ((2 : ℕ) * n + (5 : ℕ))
//   @tac 3720-3782 | Lean: have h₁₃ : 2 ^ (n + 4) ∣ 2 * k * 2 ^ (2 * n + 5) := h₈
//        before-goal ⊢ (2 : ℕ) ^ (n + (4 : ℕ)) ∣
  (2 : ℕ) ^ ((2 : ℕ) * n + (4 : ℕ)) + k * (2 : ℕ) ^ (n + (4 : ℕ)) + k ^ (2 : ℕ) * (2 : ℕ) ^ ((2 : ℕ) * n + (6 : ℕ)) +
    (2 : ℕ) * k * (2 : ℕ) ^ ((2 : ℕ) * n + (5 : ℕ))
//   @tac 3841-3909 | Lean: exact Nat.dvd_add (Nat.dvd_add (Nat.dvd_add h₁₀ h₆) h₇) h₈
//        before-goal ⊢ (2 : ℕ) ^ (n + (4 : ℕ)) ∣
  (2 : ℕ) ^ ((2 : ℕ) * n + (4 : ℕ)) + k * (2 : ℕ) ^ (n + (4 : ℕ)) + k ^ (2 : ℕ) * (2 : ℕ) ^ ((2 : ℕ) * n + (6 : ℕ)) +
    (2 : ℕ) * k * (2 : ℕ) ^ ((2 : ℕ) * n + (5 : ℕ))
// Lean have h₉, Lean lines 73-79:
//   lean  |           have h₉ : 2 ^ (n + 4) ∣ 2 ^ (2 * n + 4) + k * 2 ^ (n + 4) + k ^ 2 * 2 ^ (2 * n + 6) + 2 * k * 2 ^ (2 * n + 5) := by
//   lean  |             have h₁₀ : 2 ^ (n + 4) ∣ 2 ^ (2 * n + 4) := h₅
//   lean  |             have h₁₁ : 2 ^ (n + 4) ∣ k * 2 ^ (n + 4) := h₆
//   lean  |             have h₁₂ : 2 ^ (n + 4) ∣ k ^ 2 * 2 ^ (2 * n + 6) := h₇
//   lean  |             have h₁₃ : 2 ^ (n + 4) ∣ 2 * k * 2 ^ (2 * n + 5) := h₈
//   lean  |             -- Sum of multiples is a multiple
//   lean  |             exact Nat.dvd_add (Nat.dvd_add (Nat.dvd_add h₁₀ h₆) h₇) h₈

// 8 path(s) merged (paths); 53 shared facts; 2 distinct path conditions; 2 claims conjoined
lemma {:induction false} vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L195(k_1_0_0: int, k_1_0_2: int, k_1_0_2_0: int, k_1_0_3: int, n: nat)
  requires 0 <= n
  requires 0 <= k_1_0_2
  requires n != 0
  requires 0 <= n - 1
  requires 0 <= n || n - 1 == n
  requires n - 1 < n
  requires exists k_1: nat :: Int.pow(3, Int.pow(2, n - 1 + 1)) == 1 + Int.pow(2, n - 1 + 1 + 2) + k_1 * Int.pow(2, n - 1 + 1 + 3)
  requires 0 + 1 <= n
  requires 0 <= Int.pow(2, n)
  requires 0 <= n + 2
  requires 0 <= n + 3
  requires exists k_1_0_1: nat :: Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + k_1_0_1 * Int.pow(2, n + 3)
  requires (0 <= 0 && Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + 0 * Int.pow(2, n + 3)) || (0 <= 0 && Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + 0 * Int.pow(2, n + 3)) || (exists as_k1_0_0_1_0_0: nat :: Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + as_k1_0_0_1_0_0 * Int.pow(2, n + 3))
  requires 0 <= k_1_0_2_0
  requires Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + k_1_0_2_0 * Int.pow(2, n + 3)
  requires 0 <= n + 1
  requires 0 <= Int.pow(2, n + 1)
  requires Int.pow(3, Int.pow(2, n + 1)) == Int.pow(3, Int.pow(2, n)) * Int.pow(3, Int.pow(2, n))
  requires 0 <= 2 * n + 4
  requires 0 <= n + 4
  requires 0 <= 2 * n + 6
  requires 0 <= 2 * n + 5
  requires (1 + Int.pow(2, n + 2) + k_1_0_2_0 * Int.pow(2, n + 3)) * (1 + Int.pow(2, n + 2) + k_1_0_2_0 * Int.pow(2, n + 3)) == 1 + Int.pow(2, n + 3) + (Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5))
  requires 0 <= Int.pow(2, n + 4)
  requires 0 <= Int.pow(2, 2 * n + 4)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4))
  requires 0 <= k_1_0_2_0 * Int.pow(2, n + 4)
  requires NatDvd(Int.pow(2, n + 4), k_1_0_2_0 * Int.pow(2, n + 4))
  requires 0 <= k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)
  requires NatDvd(Int.pow(2, n + 4), k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6))
  requires 0 <= 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5)
  requires NatDvd(Int.pow(2, n + 4), 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5))
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4)) || (Int.pow(2, n + 4) == 0 ==> Int.pow(2, 2 * n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4)) || (Int.pow(2, n + 4) != 0 ==> Int.pow(2, 2 * n + 4) % Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), k_1_0_2_0 * Int.pow(2, n + 4)) || (Int.pow(2, n + 4) == 0 ==> k_1_0_2_0 * Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), k_1_0_2_0 * Int.pow(2, n + 4)) || (Int.pow(2, n + 4) != 0 ==> k_1_0_2_0 * Int.pow(2, n + 4) % Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4))
  requires if Int.pow(2, n + 4) == 0 then Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) == 0 else (Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4)) % Int.pow(2, n + 4) == 0
  requires 0 <= Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4)) || (Int.pow(2, n + 4) == 0 ==> Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4)) || (Int.pow(2, n + 4) != 0 ==> (Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4)) % Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)) || (Int.pow(2, n + 4) == 0 ==> k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) == 0)
  requires NatDvd(Int.pow(2, n + 4), k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)) || (Int.pow(2, n + 4) != 0 ==> k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) % Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6))
  requires if Int.pow(2, n + 4) == 0 then Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) == 0 else (Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)) % Int.pow(2, n + 4) == 0
  requires 0 <= Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)) || (Int.pow(2, n + 4) == 0 ==> Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) == 0)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)) || (Int.pow(2, n + 4) != 0 ==> (Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)) % Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5)) || (Int.pow(2, n + 4) == 0 ==> 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5) == 0)
  requires NatDvd(Int.pow(2, n + 4), 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5)) || (Int.pow(2, n + 4) != 0 ==> 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5) % Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5))
  requires if Int.pow(2, n + 4) == 0 then Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5) == 0 else (Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5)) % Int.pow(2, n + 4) == 0
  requires 0 <= Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5)
  ensures  ((((0 <= k_1_0_0) && (0 <= k_1_0_3)) || ((0 <= k_1_0_0) && (k_1_0_3 < 0)) || ((k_1_0_0 < 0) && (0 <= k_1_0_3)) || ((k_1_0_0 < 0) && (k_1_0_3 < 0))) ==> (NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5)) || (Int.pow(2, n + 4) == 0 ==> Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5) == 0)))
        && ((((0 <= k_1_0_0) && (0 <= k_1_0_3)) || ((0 <= k_1_0_0) && (k_1_0_3 < 0)) || ((k_1_0_0 < 0) && (0 <= k_1_0_3)) || ((k_1_0_0 < 0) && (k_1_0_3 < 0))) ==> (NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5)) || (Int.pow(2, n + 4) != 0 ==> (Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5)) % Int.pow(2, n + 4) == 0)))
{ }

// side checks at the same line (not the reported failure): 7 check(s)
// side check: value always satisfies the subset constraints of 'nat'
lemma {:induction false} vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L195_side1(k_1_0_0: int, k_1_0_2: int, k_1_0_2_0: int, k_1_0_3: int, n: nat)
  requires 0 <= n
  requires 0 <= k_1_0_2
  requires n != 0
  requires 0 <= n - 1
  requires 0 <= n || n - 1 == n
  requires n - 1 < n
  requires exists k_1: nat :: Int.pow(3, Int.pow(2, n - 1 + 1)) == 1 + Int.pow(2, n - 1 + 1 + 2) + k_1 * Int.pow(2, n - 1 + 1 + 3)
  requires 0 + 1 <= n
  requires 0 <= Int.pow(2, n)
  requires 0 <= n + 2
  requires 0 <= n + 3
  requires exists k_1_0_1: nat :: Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + k_1_0_1 * Int.pow(2, n + 3)
  requires (0 <= 0 && Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + 0 * Int.pow(2, n + 3)) || (0 <= 0 && Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + 0 * Int.pow(2, n + 3)) || (exists as_k1_0_0_1_0_0: nat :: Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + as_k1_0_0_1_0_0 * Int.pow(2, n + 3))
  requires 0 <= k_1_0_2_0
  requires Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + k_1_0_2_0 * Int.pow(2, n + 3)
  requires 0 <= n + 1
  requires 0 <= Int.pow(2, n + 1)
  requires Int.pow(3, Int.pow(2, n + 1)) == Int.pow(3, Int.pow(2, n)) * Int.pow(3, Int.pow(2, n))
  requires 0 <= 2 * n + 4
  requires 0 <= n + 4
  requires 0 <= 2 * n + 6
  requires 0 <= 2 * n + 5
  requires (1 + Int.pow(2, n + 2) + k_1_0_2_0 * Int.pow(2, n + 3)) * (1 + Int.pow(2, n + 2) + k_1_0_2_0 * Int.pow(2, n + 3)) == 1 + Int.pow(2, n + 3) + (Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5))
  requires 0 <= Int.pow(2, n + 4)
  requires 0 <= Int.pow(2, 2 * n + 4)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4))
  requires 0 <= k_1_0_2_0 * Int.pow(2, n + 4)
  requires NatDvd(Int.pow(2, n + 4), k_1_0_2_0 * Int.pow(2, n + 4))
  requires 0 <= k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)
  requires NatDvd(Int.pow(2, n + 4), k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6))
  requires 0 <= 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5)
  requires NatDvd(Int.pow(2, n + 4), 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5))
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4)) || (Int.pow(2, n + 4) == 0 ==> Int.pow(2, 2 * n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4)) || (Int.pow(2, n + 4) != 0 ==> Int.pow(2, 2 * n + 4) % Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), k_1_0_2_0 * Int.pow(2, n + 4)) || (Int.pow(2, n + 4) == 0 ==> k_1_0_2_0 * Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), k_1_0_2_0 * Int.pow(2, n + 4)) || (Int.pow(2, n + 4) != 0 ==> k_1_0_2_0 * Int.pow(2, n + 4) % Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4))
  requires if Int.pow(2, n + 4) == 0 then Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) == 0 else (Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4)) % Int.pow(2, n + 4) == 0
  requires 0 <= Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4)) || (Int.pow(2, n + 4) == 0 ==> Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4)) || (Int.pow(2, n + 4) != 0 ==> (Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4)) % Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)) || (Int.pow(2, n + 4) == 0 ==> k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) == 0)
  requires NatDvd(Int.pow(2, n + 4), k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)) || (Int.pow(2, n + 4) != 0 ==> k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) % Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6))
  requires if Int.pow(2, n + 4) == 0 then Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) == 0 else (Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)) % Int.pow(2, n + 4) == 0
  requires 0 <= Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)) || (Int.pow(2, n + 4) == 0 ==> Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) == 0)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)) || (Int.pow(2, n + 4) != 0 ==> (Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)) % Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5)) || (Int.pow(2, n + 4) == 0 ==> 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5) == 0)
  requires NatDvd(Int.pow(2, n + 4), 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5)) || (Int.pow(2, n + 4) != 0 ==> 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5) % Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5))
  requires if Int.pow(2, n + 4) == 0 then Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5) == 0 else (Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5)) % Int.pow(2, n + 4) == 0
  requires ((0 <= k_1_0_0) && (0 <= k_1_0_3)) || ((0 <= k_1_0_0) && (k_1_0_3 < 0)) || ((k_1_0_0 < 0) && (0 <= k_1_0_3)) || ((k_1_0_0 < 0) && (k_1_0_3 < 0))
  ensures  0 <= n + 4
{ }

// side check: value always satisfies the subset constraints of 'nat'
lemma {:induction false} vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L195_side2(k_1_0_0: int, k_1_0_2: int, k_1_0_2_0: int, k_1_0_3: int, n: nat)
  requires 0 <= n
  requires 0 <= k_1_0_2
  requires n != 0
  requires 0 <= n - 1
  requires 0 <= n || n - 1 == n
  requires n - 1 < n
  requires exists k_1: nat :: Int.pow(3, Int.pow(2, n - 1 + 1)) == 1 + Int.pow(2, n - 1 + 1 + 2) + k_1 * Int.pow(2, n - 1 + 1 + 3)
  requires 0 + 1 <= n
  requires 0 <= Int.pow(2, n)
  requires 0 <= n + 2
  requires 0 <= n + 3
  requires exists k_1_0_1: nat :: Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + k_1_0_1 * Int.pow(2, n + 3)
  requires (0 <= 0 && Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + 0 * Int.pow(2, n + 3)) || (0 <= 0 && Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + 0 * Int.pow(2, n + 3)) || (exists as_k1_0_0_1_0_0: nat :: Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + as_k1_0_0_1_0_0 * Int.pow(2, n + 3))
  requires 0 <= k_1_0_2_0
  requires Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + k_1_0_2_0 * Int.pow(2, n + 3)
  requires 0 <= n + 1
  requires 0 <= Int.pow(2, n + 1)
  requires Int.pow(3, Int.pow(2, n + 1)) == Int.pow(3, Int.pow(2, n)) * Int.pow(3, Int.pow(2, n))
  requires 0 <= 2 * n + 4
  requires 0 <= n + 4
  requires 0 <= 2 * n + 6
  requires 0 <= 2 * n + 5
  requires (1 + Int.pow(2, n + 2) + k_1_0_2_0 * Int.pow(2, n + 3)) * (1 + Int.pow(2, n + 2) + k_1_0_2_0 * Int.pow(2, n + 3)) == 1 + Int.pow(2, n + 3) + (Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5))
  requires 0 <= Int.pow(2, n + 4)
  requires 0 <= Int.pow(2, 2 * n + 4)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4))
  requires 0 <= k_1_0_2_0 * Int.pow(2, n + 4)
  requires NatDvd(Int.pow(2, n + 4), k_1_0_2_0 * Int.pow(2, n + 4))
  requires 0 <= k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)
  requires NatDvd(Int.pow(2, n + 4), k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6))
  requires 0 <= 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5)
  requires NatDvd(Int.pow(2, n + 4), 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5))
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4)) || (Int.pow(2, n + 4) == 0 ==> Int.pow(2, 2 * n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4)) || (Int.pow(2, n + 4) != 0 ==> Int.pow(2, 2 * n + 4) % Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), k_1_0_2_0 * Int.pow(2, n + 4)) || (Int.pow(2, n + 4) == 0 ==> k_1_0_2_0 * Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), k_1_0_2_0 * Int.pow(2, n + 4)) || (Int.pow(2, n + 4) != 0 ==> k_1_0_2_0 * Int.pow(2, n + 4) % Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4))
  requires if Int.pow(2, n + 4) == 0 then Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) == 0 else (Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4)) % Int.pow(2, n + 4) == 0
  requires 0 <= Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4)) || (Int.pow(2, n + 4) == 0 ==> Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4)) || (Int.pow(2, n + 4) != 0 ==> (Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4)) % Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)) || (Int.pow(2, n + 4) == 0 ==> k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) == 0)
  requires NatDvd(Int.pow(2, n + 4), k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)) || (Int.pow(2, n + 4) != 0 ==> k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) % Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6))
  requires if Int.pow(2, n + 4) == 0 then Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) == 0 else (Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)) % Int.pow(2, n + 4) == 0
  requires 0 <= Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)) || (Int.pow(2, n + 4) == 0 ==> Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) == 0)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)) || (Int.pow(2, n + 4) != 0 ==> (Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)) % Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5)) || (Int.pow(2, n + 4) == 0 ==> 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5) == 0)
  requires NatDvd(Int.pow(2, n + 4), 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5)) || (Int.pow(2, n + 4) != 0 ==> 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5) % Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5))
  requires if Int.pow(2, n + 4) == 0 then Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5) == 0 else (Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5)) % Int.pow(2, n + 4) == 0
  requires ((0 <= k_1_0_0) && (0 <= k_1_0_3)) || ((0 <= k_1_0_0) && (k_1_0_3 < 0)) || ((k_1_0_0 < 0) && (0 <= k_1_0_3)) || ((k_1_0_0 < 0) && (k_1_0_3 < 0))
  ensures  0 <= Int.pow(2, n + 4)
{ }

// side check: value always satisfies the subset constraints of 'nat'
lemma {:induction false} vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L195_side3(k_1_0_0: int, k_1_0_2: int, k_1_0_2_0: int, k_1_0_3: int, n: nat)
  requires 0 <= n
  requires 0 <= k_1_0_2
  requires n != 0
  requires 0 <= n - 1
  requires 0 <= n || n - 1 == n
  requires n - 1 < n
  requires exists k_1: nat :: Int.pow(3, Int.pow(2, n - 1 + 1)) == 1 + Int.pow(2, n - 1 + 1 + 2) + k_1 * Int.pow(2, n - 1 + 1 + 3)
  requires 0 + 1 <= n
  requires 0 <= Int.pow(2, n)
  requires 0 <= n + 2
  requires 0 <= n + 3
  requires exists k_1_0_1: nat :: Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + k_1_0_1 * Int.pow(2, n + 3)
  requires (0 <= 0 && Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + 0 * Int.pow(2, n + 3)) || (0 <= 0 && Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + 0 * Int.pow(2, n + 3)) || (exists as_k1_0_0_1_0_0: nat :: Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + as_k1_0_0_1_0_0 * Int.pow(2, n + 3))
  requires 0 <= k_1_0_2_0
  requires Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + k_1_0_2_0 * Int.pow(2, n + 3)
  requires 0 <= n + 1
  requires 0 <= Int.pow(2, n + 1)
  requires Int.pow(3, Int.pow(2, n + 1)) == Int.pow(3, Int.pow(2, n)) * Int.pow(3, Int.pow(2, n))
  requires 0 <= 2 * n + 4
  requires 0 <= n + 4
  requires 0 <= 2 * n + 6
  requires 0 <= 2 * n + 5
  requires (1 + Int.pow(2, n + 2) + k_1_0_2_0 * Int.pow(2, n + 3)) * (1 + Int.pow(2, n + 2) + k_1_0_2_0 * Int.pow(2, n + 3)) == 1 + Int.pow(2, n + 3) + (Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5))
  requires 0 <= Int.pow(2, n + 4)
  requires 0 <= Int.pow(2, 2 * n + 4)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4))
  requires 0 <= k_1_0_2_0 * Int.pow(2, n + 4)
  requires NatDvd(Int.pow(2, n + 4), k_1_0_2_0 * Int.pow(2, n + 4))
  requires 0 <= k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)
  requires NatDvd(Int.pow(2, n + 4), k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6))
  requires 0 <= 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5)
  requires NatDvd(Int.pow(2, n + 4), 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5))
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4)) || (Int.pow(2, n + 4) == 0 ==> Int.pow(2, 2 * n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4)) || (Int.pow(2, n + 4) != 0 ==> Int.pow(2, 2 * n + 4) % Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), k_1_0_2_0 * Int.pow(2, n + 4)) || (Int.pow(2, n + 4) == 0 ==> k_1_0_2_0 * Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), k_1_0_2_0 * Int.pow(2, n + 4)) || (Int.pow(2, n + 4) != 0 ==> k_1_0_2_0 * Int.pow(2, n + 4) % Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4))
  requires if Int.pow(2, n + 4) == 0 then Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) == 0 else (Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4)) % Int.pow(2, n + 4) == 0
  requires 0 <= Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4)) || (Int.pow(2, n + 4) == 0 ==> Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4)) || (Int.pow(2, n + 4) != 0 ==> (Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4)) % Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)) || (Int.pow(2, n + 4) == 0 ==> k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) == 0)
  requires NatDvd(Int.pow(2, n + 4), k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)) || (Int.pow(2, n + 4) != 0 ==> k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) % Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6))
  requires if Int.pow(2, n + 4) == 0 then Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) == 0 else (Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)) % Int.pow(2, n + 4) == 0
  requires 0 <= Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)) || (Int.pow(2, n + 4) == 0 ==> Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) == 0)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)) || (Int.pow(2, n + 4) != 0 ==> (Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)) % Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5)) || (Int.pow(2, n + 4) == 0 ==> 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5) == 0)
  requires NatDvd(Int.pow(2, n + 4), 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5)) || (Int.pow(2, n + 4) != 0 ==> 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5) % Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5))
  requires if Int.pow(2, n + 4) == 0 then Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5) == 0 else (Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5)) % Int.pow(2, n + 4) == 0
  requires ((0 <= k_1_0_0) && (0 <= k_1_0_3)) || ((0 <= k_1_0_0) && (k_1_0_3 < 0)) || ((k_1_0_0 < 0) && (0 <= k_1_0_3)) || ((k_1_0_0 < 0) && (k_1_0_3 < 0))
  ensures  0 <= 2 * n + 4
{ }

// side check: value always satisfies the subset constraints of 'nat'
lemma {:induction false} vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L195_side4(k_1_0_0: int, k_1_0_2: int, k_1_0_2_0: int, k_1_0_3: int, n: nat)
  requires 0 <= n
  requires 0 <= k_1_0_2
  requires n != 0
  requires 0 <= n - 1
  requires 0 <= n || n - 1 == n
  requires n - 1 < n
  requires exists k_1: nat :: Int.pow(3, Int.pow(2, n - 1 + 1)) == 1 + Int.pow(2, n - 1 + 1 + 2) + k_1 * Int.pow(2, n - 1 + 1 + 3)
  requires 0 + 1 <= n
  requires 0 <= Int.pow(2, n)
  requires 0 <= n + 2
  requires 0 <= n + 3
  requires exists k_1_0_1: nat :: Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + k_1_0_1 * Int.pow(2, n + 3)
  requires (0 <= 0 && Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + 0 * Int.pow(2, n + 3)) || (0 <= 0 && Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + 0 * Int.pow(2, n + 3)) || (exists as_k1_0_0_1_0_0: nat :: Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + as_k1_0_0_1_0_0 * Int.pow(2, n + 3))
  requires 0 <= k_1_0_2_0
  requires Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + k_1_0_2_0 * Int.pow(2, n + 3)
  requires 0 <= n + 1
  requires 0 <= Int.pow(2, n + 1)
  requires Int.pow(3, Int.pow(2, n + 1)) == Int.pow(3, Int.pow(2, n)) * Int.pow(3, Int.pow(2, n))
  requires 0 <= 2 * n + 4
  requires 0 <= n + 4
  requires 0 <= 2 * n + 6
  requires 0 <= 2 * n + 5
  requires (1 + Int.pow(2, n + 2) + k_1_0_2_0 * Int.pow(2, n + 3)) * (1 + Int.pow(2, n + 2) + k_1_0_2_0 * Int.pow(2, n + 3)) == 1 + Int.pow(2, n + 3) + (Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5))
  requires 0 <= Int.pow(2, n + 4)
  requires 0 <= Int.pow(2, 2 * n + 4)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4))
  requires 0 <= k_1_0_2_0 * Int.pow(2, n + 4)
  requires NatDvd(Int.pow(2, n + 4), k_1_0_2_0 * Int.pow(2, n + 4))
  requires 0 <= k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)
  requires NatDvd(Int.pow(2, n + 4), k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6))
  requires 0 <= 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5)
  requires NatDvd(Int.pow(2, n + 4), 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5))
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4)) || (Int.pow(2, n + 4) == 0 ==> Int.pow(2, 2 * n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4)) || (Int.pow(2, n + 4) != 0 ==> Int.pow(2, 2 * n + 4) % Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), k_1_0_2_0 * Int.pow(2, n + 4)) || (Int.pow(2, n + 4) == 0 ==> k_1_0_2_0 * Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), k_1_0_2_0 * Int.pow(2, n + 4)) || (Int.pow(2, n + 4) != 0 ==> k_1_0_2_0 * Int.pow(2, n + 4) % Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4))
  requires if Int.pow(2, n + 4) == 0 then Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) == 0 else (Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4)) % Int.pow(2, n + 4) == 0
  requires 0 <= Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4)) || (Int.pow(2, n + 4) == 0 ==> Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4)) || (Int.pow(2, n + 4) != 0 ==> (Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4)) % Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)) || (Int.pow(2, n + 4) == 0 ==> k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) == 0)
  requires NatDvd(Int.pow(2, n + 4), k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)) || (Int.pow(2, n + 4) != 0 ==> k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) % Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6))
  requires if Int.pow(2, n + 4) == 0 then Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) == 0 else (Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)) % Int.pow(2, n + 4) == 0
  requires 0 <= Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)) || (Int.pow(2, n + 4) == 0 ==> Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) == 0)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)) || (Int.pow(2, n + 4) != 0 ==> (Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)) % Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5)) || (Int.pow(2, n + 4) == 0 ==> 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5) == 0)
  requires NatDvd(Int.pow(2, n + 4), 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5)) || (Int.pow(2, n + 4) != 0 ==> 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5) % Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5))
  requires if Int.pow(2, n + 4) == 0 then Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5) == 0 else (Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5)) % Int.pow(2, n + 4) == 0
  requires ((0 <= k_1_0_0) && (0 <= k_1_0_3)) || ((0 <= k_1_0_0) && (k_1_0_3 < 0)) || ((k_1_0_0 < 0) && (0 <= k_1_0_3)) || ((k_1_0_0 < 0) && (k_1_0_3 < 0))
  ensures  0 <= 2 * n + 6
{ }

// side check: value always satisfies the subset constraints of 'nat'
lemma {:induction false} vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L195_side5(k_1_0_0: int, k_1_0_2: int, k_1_0_2_0: int, k_1_0_3: int, n: nat)
  requires 0 <= n
  requires 0 <= k_1_0_2
  requires n != 0
  requires 0 <= n - 1
  requires 0 <= n || n - 1 == n
  requires n - 1 < n
  requires exists k_1: nat :: Int.pow(3, Int.pow(2, n - 1 + 1)) == 1 + Int.pow(2, n - 1 + 1 + 2) + k_1 * Int.pow(2, n - 1 + 1 + 3)
  requires 0 + 1 <= n
  requires 0 <= Int.pow(2, n)
  requires 0 <= n + 2
  requires 0 <= n + 3
  requires exists k_1_0_1: nat :: Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + k_1_0_1 * Int.pow(2, n + 3)
  requires (0 <= 0 && Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + 0 * Int.pow(2, n + 3)) || (0 <= 0 && Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + 0 * Int.pow(2, n + 3)) || (exists as_k1_0_0_1_0_0: nat :: Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + as_k1_0_0_1_0_0 * Int.pow(2, n + 3))
  requires 0 <= k_1_0_2_0
  requires Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + k_1_0_2_0 * Int.pow(2, n + 3)
  requires 0 <= n + 1
  requires 0 <= Int.pow(2, n + 1)
  requires Int.pow(3, Int.pow(2, n + 1)) == Int.pow(3, Int.pow(2, n)) * Int.pow(3, Int.pow(2, n))
  requires 0 <= 2 * n + 4
  requires 0 <= n + 4
  requires 0 <= 2 * n + 6
  requires 0 <= 2 * n + 5
  requires (1 + Int.pow(2, n + 2) + k_1_0_2_0 * Int.pow(2, n + 3)) * (1 + Int.pow(2, n + 2) + k_1_0_2_0 * Int.pow(2, n + 3)) == 1 + Int.pow(2, n + 3) + (Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5))
  requires 0 <= Int.pow(2, n + 4)
  requires 0 <= Int.pow(2, 2 * n + 4)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4))
  requires 0 <= k_1_0_2_0 * Int.pow(2, n + 4)
  requires NatDvd(Int.pow(2, n + 4), k_1_0_2_0 * Int.pow(2, n + 4))
  requires 0 <= k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)
  requires NatDvd(Int.pow(2, n + 4), k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6))
  requires 0 <= 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5)
  requires NatDvd(Int.pow(2, n + 4), 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5))
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4)) || (Int.pow(2, n + 4) == 0 ==> Int.pow(2, 2 * n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4)) || (Int.pow(2, n + 4) != 0 ==> Int.pow(2, 2 * n + 4) % Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), k_1_0_2_0 * Int.pow(2, n + 4)) || (Int.pow(2, n + 4) == 0 ==> k_1_0_2_0 * Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), k_1_0_2_0 * Int.pow(2, n + 4)) || (Int.pow(2, n + 4) != 0 ==> k_1_0_2_0 * Int.pow(2, n + 4) % Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4))
  requires if Int.pow(2, n + 4) == 0 then Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) == 0 else (Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4)) % Int.pow(2, n + 4) == 0
  requires 0 <= Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4)) || (Int.pow(2, n + 4) == 0 ==> Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4)) || (Int.pow(2, n + 4) != 0 ==> (Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4)) % Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)) || (Int.pow(2, n + 4) == 0 ==> k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) == 0)
  requires NatDvd(Int.pow(2, n + 4), k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)) || (Int.pow(2, n + 4) != 0 ==> k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) % Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6))
  requires if Int.pow(2, n + 4) == 0 then Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) == 0 else (Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)) % Int.pow(2, n + 4) == 0
  requires 0 <= Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)) || (Int.pow(2, n + 4) == 0 ==> Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) == 0)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)) || (Int.pow(2, n + 4) != 0 ==> (Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)) % Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5)) || (Int.pow(2, n + 4) == 0 ==> 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5) == 0)
  requires NatDvd(Int.pow(2, n + 4), 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5)) || (Int.pow(2, n + 4) != 0 ==> 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5) % Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5))
  requires if Int.pow(2, n + 4) == 0 then Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5) == 0 else (Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5)) % Int.pow(2, n + 4) == 0
  requires ((0 <= k_1_0_0) && (0 <= k_1_0_3)) || ((0 <= k_1_0_0) && (k_1_0_3 < 0)) || ((k_1_0_0 < 0) && (0 <= k_1_0_3)) || ((k_1_0_0 < 0) && (k_1_0_3 < 0))
  ensures  0 <= 2 * n + 5
{ }

// side check: value always satisfies the subset constraints of 'nat'
lemma {:induction false} vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L195_side6(k_1_0_0: int, k_1_0_2: int, k_1_0_2_0: int, k_1_0_3: int, n: nat)
  requires 0 <= n
  requires 0 <= k_1_0_2
  requires n != 0
  requires 0 <= n - 1
  requires 0 <= n || n - 1 == n
  requires n - 1 < n
  requires exists k_1: nat :: Int.pow(3, Int.pow(2, n - 1 + 1)) == 1 + Int.pow(2, n - 1 + 1 + 2) + k_1 * Int.pow(2, n - 1 + 1 + 3)
  requires 0 + 1 <= n
  requires 0 <= Int.pow(2, n)
  requires 0 <= n + 2
  requires 0 <= n + 3
  requires exists k_1_0_1: nat :: Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + k_1_0_1 * Int.pow(2, n + 3)
  requires (0 <= 0 && Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + 0 * Int.pow(2, n + 3)) || (0 <= 0 && Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + 0 * Int.pow(2, n + 3)) || (exists as_k1_0_0_1_0_0: nat :: Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + as_k1_0_0_1_0_0 * Int.pow(2, n + 3))
  requires 0 <= k_1_0_2_0
  requires Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + k_1_0_2_0 * Int.pow(2, n + 3)
  requires 0 <= n + 1
  requires 0 <= Int.pow(2, n + 1)
  requires Int.pow(3, Int.pow(2, n + 1)) == Int.pow(3, Int.pow(2, n)) * Int.pow(3, Int.pow(2, n))
  requires 0 <= 2 * n + 4
  requires 0 <= n + 4
  requires 0 <= 2 * n + 6
  requires 0 <= 2 * n + 5
  requires (1 + Int.pow(2, n + 2) + k_1_0_2_0 * Int.pow(2, n + 3)) * (1 + Int.pow(2, n + 2) + k_1_0_2_0 * Int.pow(2, n + 3)) == 1 + Int.pow(2, n + 3) + (Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5))
  requires 0 <= Int.pow(2, n + 4)
  requires 0 <= Int.pow(2, 2 * n + 4)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4))
  requires 0 <= k_1_0_2_0 * Int.pow(2, n + 4)
  requires NatDvd(Int.pow(2, n + 4), k_1_0_2_0 * Int.pow(2, n + 4))
  requires 0 <= k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)
  requires NatDvd(Int.pow(2, n + 4), k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6))
  requires 0 <= 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5)
  requires NatDvd(Int.pow(2, n + 4), 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5))
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4)) || (Int.pow(2, n + 4) == 0 ==> Int.pow(2, 2 * n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4)) || (Int.pow(2, n + 4) != 0 ==> Int.pow(2, 2 * n + 4) % Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), k_1_0_2_0 * Int.pow(2, n + 4)) || (Int.pow(2, n + 4) == 0 ==> k_1_0_2_0 * Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), k_1_0_2_0 * Int.pow(2, n + 4)) || (Int.pow(2, n + 4) != 0 ==> k_1_0_2_0 * Int.pow(2, n + 4) % Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4))
  requires if Int.pow(2, n + 4) == 0 then Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) == 0 else (Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4)) % Int.pow(2, n + 4) == 0
  requires 0 <= Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4)) || (Int.pow(2, n + 4) == 0 ==> Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4)) || (Int.pow(2, n + 4) != 0 ==> (Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4)) % Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)) || (Int.pow(2, n + 4) == 0 ==> k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) == 0)
  requires NatDvd(Int.pow(2, n + 4), k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)) || (Int.pow(2, n + 4) != 0 ==> k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) % Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6))
  requires if Int.pow(2, n + 4) == 0 then Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) == 0 else (Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)) % Int.pow(2, n + 4) == 0
  requires 0 <= Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)) || (Int.pow(2, n + 4) == 0 ==> Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) == 0)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)) || (Int.pow(2, n + 4) != 0 ==> (Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)) % Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5)) || (Int.pow(2, n + 4) == 0 ==> 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5) == 0)
  requires NatDvd(Int.pow(2, n + 4), 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5)) || (Int.pow(2, n + 4) != 0 ==> 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5) % Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5))
  requires if Int.pow(2, n + 4) == 0 then Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5) == 0 else (Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5)) % Int.pow(2, n + 4) == 0
  requires ((0 <= k_1_0_0) && (0 <= k_1_0_3)) || ((0 <= k_1_0_0) && (k_1_0_3 < 0)) || ((k_1_0_0 < 0) && (0 <= k_1_0_3)) || ((k_1_0_0 < 0) && (k_1_0_3 < 0))
  ensures  0 <= Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5)
{ }

