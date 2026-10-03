// CLOSED LEMMA for failing line numbertheory_3pow2pownm1mod2pownp3eq2pownp2-510 (theorem numbertheory_3pow2pownm1mod2pownp3eq2pownp2, Dafny line 510, OOR)
// closes with: K3 (locality) — base
// added: nothing (line lemma standalone)
// Dafny: verifies unchanged (dossier standalone check)
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/line_lemmas/OOR/numbertheory_3pow2pownm1mod2pownp3eq2pownp2/L510.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 510 of numbertheory_3pow2pownm1mod2pownp3eq2pownp2 (OOR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../wt_integ5/out/numbertheory_3pow2pownm1mod2pownp3eq2pownp2.dfy"

// ========================================================================================
// FAILING LINE 510 (OOR) in numbertheory_3pow2pownm1mod2pownp3eq2pownp2: Verification out of resource (numbertheory_3pow2pownm1mod2pownp3eq2pownp2)
//   dafny |       assert (NatMod((Int.pow(2, (n + 2)) + (k * Int.pow(2, (n + 3)))), Int.pow(2, (n + 3))) == NatMod(Int.pow(2, (n + 2)), Int.pow(2, (n + 3)))) by { // @tac 8135-8853 // @tac 8860-8870
//   statement kind: have / step assertion
//   @tac 8135-8853 | Lean: have h₃ : (2 ^ (n + 2) + k * 2 ^ (n + 3)) % 2 ^ (n + 3) = (2 ^ (n + 2)) % 2 ^ (n + 3) := by
//        before-goal ⊢ ((2 : ℕ) ^ (n + (2 : ℕ)) + k * (2 : ℕ) ^ (n + (3 : ℕ))) % (2 : ℕ) ^ (n + (3 : ℕ)) =
  (2 : ℕ) ^ (n + (2 : ℕ)) % (2 : ℕ) ^ (n + (3 : ℕ))
//   @tac 8860-8870 | Lean: exact h₃
//        before-goal ⊢ ((2 : ℕ) ^ (n + (2 : ℕ)) + k * (2 : ℕ) ^ (n + (3 : ℕ))) % (2 : ℕ) ^ (n + (3 : ℕ)) =
  (2 : ℕ) ^ (n + (2 : ℕ)) % (2 : ℕ) ^ (n + (3 : ℕ))
// Lean have h₂, Lean lines 141-156:
//   lean  |     have h₂ : (2 ^ (n + 2) + k * 2 ^ (n + 3)) % 2 ^ (n + 3) = 2 ^ (n + 2) % 2 ^ (n + 3) := by
//   lean  |       have h₃ : (2 ^ (n + 2) + k * 2 ^ (n + 3)) % 2 ^ (n + 3) = (2 ^ (n + 2)) % 2 ^ (n + 3) := by
//   lean  |         have h₄ : k * 2 ^ (n + 3) % 2 ^ (n + 3) = 0 := by
//   lean  |           have h₅ : 2 ^ (n + 3) ∣ k * 2 ^ (n + 3) := by
//   lean  |             use k
//   lean  |             <;> ring
//   lean  |           exact Nat.mod_eq_zero_of_dvd h₅
//   lean  |         have h₅ : (2 ^ (n + 2) + k * 2 ^ (n + 3)) % 2 ^ (n + 3) = (2 ^ (n + 2) % 2 ^ (n + 3) + k * 2 ^ (n + 3) % 2 ^ (n + 3)) % 2 ^ (n + 3) := by
//   lean  |           simp [Nat.add_mod]
//   lean  |         rw [h₅]
//   lean  |         have h₆ : k * 2 ^ (n + 3) % 2 ^ (n + 3) = 0 := h₄
//   lean  |         rw [h₆]
//   lean  |         have h₇ : (2 ^ (n + 2) % 2 ^ (n + 3) + 0) % 2 ^ (n + 3) = 2 ^ (n + 2) % 2 ^ (n + 3) := by
//   lean  |           simp [Nat.add_mod]
//   lean  |         rw [h₇]
//   lean  |       exact h₃

// 8 path(s) merged (paths); 18 shared facts; 8 distinct path conditions
lemma {:induction false} vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L510(k_1_0: int, k_1_2: int, k_1_2_0: int, k_1_3: int, k_2: int, n: nat)
  requires 0 <= n
  requires 0 <= k_1_2
  requires 0 < n
  requires 0 <= Int.pow(2, n)
  requires 0 <= n + 2
  requires 0 <= n + 3
  requires exists k_1: nat :: Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + k_1 * Int.pow(2, n + 3)
  requires exists k_1_1: nat :: Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + k_1_1 * Int.pow(2, n + 3)
  requires (0 <= 0 && Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + 0 * Int.pow(2, n + 3)) || (0 <= 0 && Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + 0 * Int.pow(2, n + 3)) || (exists as_k1_0_1_0: nat :: Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + as_k1_0_1_0 * Int.pow(2, n + 3))
  requires 0 <= k_1_2_0
  requires Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + k_1_2_0 * Int.pow(2, n + 3)
  requires 0 <= Int.pow(3, Int.pow(2, n))
  requires 0 <= 1
  requires tsub(Int.pow(3, Int.pow(2, n)), 1) == Int.pow(2, n + 2) + k_1_2_0 * Int.pow(2, n + 3)
  requires 0 <= Int.pow(2, n + 2) + k_1_2_0 * Int.pow(2, n + 3)
  requires 0 <= Int.pow(2, n + 3)
  requires 0 <= Int.pow(2, n + 2)
  requires NatMod(Int.pow(2, n + 2) + k_1_2_0 * Int.pow(2, n + 3), Int.pow(2, n + 3)) == NatMod(Int.pow(2, n + 2), Int.pow(2, n + 3))
  requires ((0 <= k_2) && (0 <= k_1_0) && (0 <= k_1_3)) || ((0 <= k_2) && (0 <= k_1_0) && (k_1_3 < 0)) || ((0 <= k_2) && (k_1_0 < 0) && (0 <= k_1_3)) || ((0 <= k_2) && (k_1_0 < 0) && (k_1_3 < 0)) || ((k_2 < 0) && (0 <= k_1_0) && (0 <= k_1_3)) || ((k_2 < 0) && (0 <= k_1_0) && (k_1_3 < 0)) || ((k_2 < 0) && (k_1_0 < 0) && (0 <= k_1_3)) || ((k_2 < 0) && (k_1_0 < 0) && (k_1_3 < 0))
  ensures  NatMod(Int.pow(2, n + 2) + k_1_2_0 * Int.pow(2, n + 3), Int.pow(2, n + 3)) == NatMod(Int.pow(2, n + 2), Int.pow(2, n + 3))
{ }

// side checks at the same line (not the reported failure): 9 check(s)
// side check: value always satisfies the subset constraints of 'nat'
lemma {:induction false} vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L510_side1(k_1_0: int, k_1_2: int, k_1_2_0: int, k_1_3: int, k_2: int, n: nat)
  requires 0 <= n
  requires 0 <= k_1_2
  requires 0 < n
  requires 0 <= Int.pow(2, n)
  requires 0 <= n + 2
  requires 0 <= n + 3
  requires exists k_1: nat :: Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + k_1 * Int.pow(2, n + 3)
  requires exists k_1_1: nat :: Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + k_1_1 * Int.pow(2, n + 3)
  requires (0 <= 0 && Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + 0 * Int.pow(2, n + 3)) || (0 <= 0 && Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + 0 * Int.pow(2, n + 3)) || (exists as_k1_0_1_0: nat :: Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + as_k1_0_1_0 * Int.pow(2, n + 3))
  requires 0 <= k_1_2_0
  requires Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + k_1_2_0 * Int.pow(2, n + 3)
  requires 0 <= Int.pow(3, Int.pow(2, n))
  requires 0 <= 1
  requires tsub(Int.pow(3, Int.pow(2, n)), 1) == Int.pow(2, n + 2) + k_1_2_0 * Int.pow(2, n + 3)
  requires 0 <= Int.pow(2, n + 2) + k_1_2_0 * Int.pow(2, n + 3)
  requires 0 <= Int.pow(2, n + 3)
  requires 0 <= Int.pow(2, n + 2)
  requires NatMod(Int.pow(2, n + 2) + k_1_2_0 * Int.pow(2, n + 3), Int.pow(2, n + 3)) == NatMod(Int.pow(2, n + 2), Int.pow(2, n + 3))
  requires ((0 <= k_2) && (0 <= k_1_0) && (0 <= k_1_3)) || ((0 <= k_2) && (0 <= k_1_0) && (k_1_3 < 0)) || ((0 <= k_2) && (k_1_0 < 0) && (0 <= k_1_3)) || ((0 <= k_2) && (k_1_0 < 0) && (k_1_3 < 0)) || ((k_2 < 0) && (0 <= k_1_0) && (0 <= k_1_3)) || ((k_2 < 0) && (0 <= k_1_0) && (k_1_3 < 0)) || ((k_2 < 0) && (k_1_0 < 0) && (0 <= k_1_3)) || ((k_2 < 0) && (k_1_0 < 0) && (k_1_3 < 0))
  ensures  0 <= n + 2
{ }

// side check: value always satisfies the subset constraints of 'nat'
lemma {:induction false} vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L510_side2(k_1_0: int, k_1_2: int, k_1_2_0: int, k_1_3: int, k_2: int, n: nat)
  requires 0 <= n
  requires 0 <= k_1_2
  requires 0 < n
  requires 0 <= Int.pow(2, n)
  requires 0 <= n + 2
  requires 0 <= n + 3
  requires exists k_1: nat :: Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + k_1 * Int.pow(2, n + 3)
  requires exists k_1_1: nat :: Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + k_1_1 * Int.pow(2, n + 3)
  requires (0 <= 0 && Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + 0 * Int.pow(2, n + 3)) || (0 <= 0 && Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + 0 * Int.pow(2, n + 3)) || (exists as_k1_0_1_0: nat :: Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + as_k1_0_1_0 * Int.pow(2, n + 3))
  requires 0 <= k_1_2_0
  requires Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + k_1_2_0 * Int.pow(2, n + 3)
  requires 0 <= Int.pow(3, Int.pow(2, n))
  requires 0 <= 1
  requires tsub(Int.pow(3, Int.pow(2, n)), 1) == Int.pow(2, n + 2) + k_1_2_0 * Int.pow(2, n + 3)
  requires 0 <= Int.pow(2, n + 2) + k_1_2_0 * Int.pow(2, n + 3)
  requires 0 <= Int.pow(2, n + 3)
  requires 0 <= Int.pow(2, n + 2)
  requires NatMod(Int.pow(2, n + 2) + k_1_2_0 * Int.pow(2, n + 3), Int.pow(2, n + 3)) == NatMod(Int.pow(2, n + 2), Int.pow(2, n + 3))
  requires ((0 <= k_2) && (0 <= k_1_0) && (0 <= k_1_3)) || ((0 <= k_2) && (0 <= k_1_0) && (k_1_3 < 0)) || ((0 <= k_2) && (k_1_0 < 0) && (0 <= k_1_3)) || ((0 <= k_2) && (k_1_0 < 0) && (k_1_3 < 0)) || ((k_2 < 0) && (0 <= k_1_0) && (0 <= k_1_3)) || ((k_2 < 0) && (0 <= k_1_0) && (k_1_3 < 0)) || ((k_2 < 0) && (k_1_0 < 0) && (0 <= k_1_3)) || ((k_2 < 0) && (k_1_0 < 0) && (k_1_3 < 0))
  ensures  0 <= n + 3
{ }

// side check: value always satisfies the subset constraints of 'nat'
lemma {:induction false} vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L510_side3(k_1_0: int, k_1_2: int, k_1_2_0: int, k_1_3: int, k_2: int, n: nat)
  requires 0 <= n
  requires 0 <= k_1_2
  requires 0 < n
  requires 0 <= Int.pow(2, n)
  requires 0 <= n + 2
  requires 0 <= n + 3
  requires exists k_1: nat :: Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + k_1 * Int.pow(2, n + 3)
  requires exists k_1_1: nat :: Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + k_1_1 * Int.pow(2, n + 3)
  requires (0 <= 0 && Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + 0 * Int.pow(2, n + 3)) || (0 <= 0 && Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + 0 * Int.pow(2, n + 3)) || (exists as_k1_0_1_0: nat :: Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + as_k1_0_1_0 * Int.pow(2, n + 3))
  requires 0 <= k_1_2_0
  requires Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + k_1_2_0 * Int.pow(2, n + 3)
  requires 0 <= Int.pow(3, Int.pow(2, n))
  requires 0 <= 1
  requires tsub(Int.pow(3, Int.pow(2, n)), 1) == Int.pow(2, n + 2) + k_1_2_0 * Int.pow(2, n + 3)
  requires 0 <= Int.pow(2, n + 2) + k_1_2_0 * Int.pow(2, n + 3)
  requires 0 <= Int.pow(2, n + 3)
  requires 0 <= Int.pow(2, n + 2)
  requires NatMod(Int.pow(2, n + 2) + k_1_2_0 * Int.pow(2, n + 3), Int.pow(2, n + 3)) == NatMod(Int.pow(2, n + 2), Int.pow(2, n + 3))
  requires ((0 <= k_2) && (0 <= k_1_0) && (0 <= k_1_3)) || ((0 <= k_2) && (0 <= k_1_0) && (k_1_3 < 0)) || ((0 <= k_2) && (k_1_0 < 0) && (0 <= k_1_3)) || ((0 <= k_2) && (k_1_0 < 0) && (k_1_3 < 0)) || ((k_2 < 0) && (0 <= k_1_0) && (0 <= k_1_3)) || ((k_2 < 0) && (0 <= k_1_0) && (k_1_3 < 0)) || ((k_2 < 0) && (k_1_0 < 0) && (0 <= k_1_3)) || ((k_2 < 0) && (k_1_0 < 0) && (k_1_3 < 0))
  ensures  0 <= Int.pow(2, n + 2) + k_1_2_0 * Int.pow(2, n + 3)
{ }

// side check: value always satisfies the subset constraints of 'nat'
lemma {:induction false} vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L510_side4(k_1_0: int, k_1_2: int, k_1_2_0: int, k_1_3: int, k_2: int, n: nat)
  requires 0 <= n
  requires 0 <= k_1_2
  requires 0 < n
  requires 0 <= Int.pow(2, n)
  requires 0 <= n + 2
  requires 0 <= n + 3
  requires exists k_1: nat :: Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + k_1 * Int.pow(2, n + 3)
  requires exists k_1_1: nat :: Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + k_1_1 * Int.pow(2, n + 3)
  requires (0 <= 0 && Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + 0 * Int.pow(2, n + 3)) || (0 <= 0 && Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + 0 * Int.pow(2, n + 3)) || (exists as_k1_0_1_0: nat :: Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + as_k1_0_1_0 * Int.pow(2, n + 3))
  requires 0 <= k_1_2_0
  requires Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + k_1_2_0 * Int.pow(2, n + 3)
  requires 0 <= Int.pow(3, Int.pow(2, n))
  requires 0 <= 1
  requires tsub(Int.pow(3, Int.pow(2, n)), 1) == Int.pow(2, n + 2) + k_1_2_0 * Int.pow(2, n + 3)
  requires 0 <= Int.pow(2, n + 2) + k_1_2_0 * Int.pow(2, n + 3)
  requires 0 <= Int.pow(2, n + 3)
  requires 0 <= Int.pow(2, n + 2)
  requires NatMod(Int.pow(2, n + 2) + k_1_2_0 * Int.pow(2, n + 3), Int.pow(2, n + 3)) == NatMod(Int.pow(2, n + 2), Int.pow(2, n + 3))
  requires ((0 <= k_2) && (0 <= k_1_0) && (0 <= k_1_3)) || ((0 <= k_2) && (0 <= k_1_0) && (k_1_3 < 0)) || ((0 <= k_2) && (k_1_0 < 0) && (0 <= k_1_3)) || ((0 <= k_2) && (k_1_0 < 0) && (k_1_3 < 0)) || ((k_2 < 0) && (0 <= k_1_0) && (0 <= k_1_3)) || ((k_2 < 0) && (0 <= k_1_0) && (k_1_3 < 0)) || ((k_2 < 0) && (k_1_0 < 0) && (0 <= k_1_3)) || ((k_2 < 0) && (k_1_0 < 0) && (k_1_3 < 0))
  ensures  0 <= Int.pow(2, n + 3)
{ }

// side check: value always satisfies the subset constraints of 'nat'
lemma {:induction false} vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L510_side5(k_1_0: int, k_1_2: int, k_1_2_0: int, k_1_3: int, k_2: int, n: nat)
  requires 0 <= n
  requires 0 <= k_1_2
  requires 0 < n
  requires 0 <= Int.pow(2, n)
  requires 0 <= n + 2
  requires 0 <= n + 3
  requires exists k_1: nat :: Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + k_1 * Int.pow(2, n + 3)
  requires exists k_1_1: nat :: Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + k_1_1 * Int.pow(2, n + 3)
  requires (0 <= 0 && Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + 0 * Int.pow(2, n + 3)) || (0 <= 0 && Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + 0 * Int.pow(2, n + 3)) || (exists as_k1_0_1_0: nat :: Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + as_k1_0_1_0 * Int.pow(2, n + 3))
  requires 0 <= k_1_2_0
  requires Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + k_1_2_0 * Int.pow(2, n + 3)
  requires 0 <= Int.pow(3, Int.pow(2, n))
  requires 0 <= 1
  requires tsub(Int.pow(3, Int.pow(2, n)), 1) == Int.pow(2, n + 2) + k_1_2_0 * Int.pow(2, n + 3)
  requires 0 <= Int.pow(2, n + 2) + k_1_2_0 * Int.pow(2, n + 3)
  requires 0 <= Int.pow(2, n + 3)
  requires 0 <= Int.pow(2, n + 2)
  requires NatMod(Int.pow(2, n + 2) + k_1_2_0 * Int.pow(2, n + 3), Int.pow(2, n + 3)) == NatMod(Int.pow(2, n + 2), Int.pow(2, n + 3))
  requires ((0 <= k_2) && (0 <= k_1_0) && (0 <= k_1_3)) || ((0 <= k_2) && (0 <= k_1_0) && (k_1_3 < 0)) || ((0 <= k_2) && (k_1_0 < 0) && (0 <= k_1_3)) || ((0 <= k_2) && (k_1_0 < 0) && (k_1_3 < 0)) || ((k_2 < 0) && (0 <= k_1_0) && (0 <= k_1_3)) || ((k_2 < 0) && (0 <= k_1_0) && (k_1_3 < 0)) || ((k_2 < 0) && (k_1_0 < 0) && (0 <= k_1_3)) || ((k_2 < 0) && (k_1_0 < 0) && (k_1_3 < 0))
  ensures  0 <= Int.pow(2, n + 2)
{ }

