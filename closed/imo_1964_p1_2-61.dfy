// CLOSED LEMMA for failing line imo_1964_p1_2-61 (theorem imo_1964_p1_2, Dafny line 61, OOR)
// closes with: K2 (computation) — single
// added: MathPrelude Int.pow: drop `ensures if k == 0 then p == 1 else p == b * pow(b, k - 1)` (body unchanged; sign ensures kept) — work-dir copy of library + translation
// Dafny: finished with 143 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_026/imo_1964_p1_2-61/K2pow.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 61 of imo_1964_p1_2 (OOR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "out/imo_1964_p1_2.dfy"

// ========================================================================================
// FAILING LINE 61 (OOR) in induction_helper_1: Verification out of resource (induction_helper_1)
//   dafny |           assert ((((Int.pow(2, n) * 2) % 7) == 1) || ((((Int.pow(2, n) * 2) % 7) == 2) || (((Int.pow(2, n) * 2) % 7) == 4))) by {  // sub-goal before `norm_num` (Lean state) // @tac 903-941
//   statement kind: sub-goal (Lean tactic state)
//   @tac 903-941 | Lean: norm_num [h, Nat.mul_mod, Nat.add_mod]
//        before-goal ⊢ (2 : ℕ) ^ n * (2 : ℕ) % (7 : ℕ) = (1 : ℕ) ∨
//  (2 : ℕ) ^ n * (2 : ℕ) % (7 : ℕ) = (2 : ℕ) ∨ (2 : ℕ) ^ n * (2 : ℕ) % (7 : ℕ) = (4 : ℕ)
// Lean theorem statement, Lean lines 10-34:
//   lean  | theorem imo_1964_p1_2 (n : ℕ) : ¬7 ∣ 2 ^ n + 1 := by
//   lean  |   rw [Nat.dvd_iff_mod_eq_zero]
//   lean  |   -- We need to show that 2^n + 1 % 7 ≠ 0 for any natural number n.
//   lean  |   have h : 2 ^ n % 7 = 1 ∨ 2 ^ n % 7 = 2 ∨ 2 ^ n % 7 = 4 := by
//   lean  |     -- We observe that the powers of 2 modulo 7 cycle every 3 exponents: 2, 4, 1.
//   lean  |     induction n with
//   lean  |     | zero => simp
//   lean  |     | succ n ih =>
//   lean  |       -- Using the fact that 2^(n+1) % 7 depends on 2^n % 7.
//   lean  |       cases ih with
//   lean  |       | inl h =>
//   lean  |         rw [Nat.pow_succ]
//   lean  |         norm_num [h, Nat.mul_mod, Nat.add_mod]
//   lean  |       | inr h =>
//   lean  |         cases h with
//   lean  |         | inl h =>
//   lean  |           rw [Nat.pow_succ]
//   lean  |           norm_num [h, Nat.mul_mod, Nat.add_mod]
//   lean  |         | inr h =>
//   lean  |           rw [Nat.pow_succ]
//   lean  |           norm_num [h, Nat.mul_mod, Nat.add_mod]
//   lean  |   -- Since 2^n % 7 cycles through 2, 4, 1, adding 1 to each case gives 3, 5, 2, none of which are 0 modulo 7.
//   lean  |   rcases h with (h | h | h) <;> simp [h, Nat.add_mod, Nat.mul_mod]
//   lean  | 

// 1 path(s) merged (joined); 23 shared facts; 1 distinct path conditions
lemma {:induction false} vc_imo_1964_p1_2_L61(n: int, n_1_0: int, n_1_0_0: nat)
  requires 0 <= n
  requires 0 <= n_1_0
  requires forall n0: nat :: true && 0 <= n0 && n0 < n ==> Int.pow(2, n0) % 7 == 1 || Int.pow(2, n0) % 7 == 2 || Int.pow(2, n0) % 7 == 4
  requires n != 0
  requires 0 <= n - 1
  requires 0 <= n || n - 1 == n
  requires n - 1 < n
  requires Int.pow(2, n - 1) % 7 == 1 || Int.pow(2, n - 1) % 7 == 2 || Int.pow(2, n - 1) % 7 == 4
  requires n_1_0_0 == n - 1
  requires 7 != 0
  requires ((Int.pow(2, n_1_0_0) % 7 == 1) && (0 <= 2) && (Int.pow(2, n_1_0_0 + 1) == Int.pow(2, n_1_0_0) * 2) && (7 != 0) && (((Int.pow(2, n_1_0_0) * 2 % 7 != 1) && (7 != 0) && (((Int.pow(2, n_1_0_0) * 2 % 7 != 2) && (7 != 0)) || (Int.pow(2, n_1_0_0) * 2 % 7 == 2))) || (Int.pow(2, n_1_0_0) * 2 % 7 == 1)) && (Int.pow(2, n_1_0_0) * 2 % 7 == 1 || Int.pow(2, n_1_0_0) * 2 % 7 == 2 || Int.pow(2, n_1_0_0) * 2 % 7 == 4) && (0 <= n_1_0_0 + 1) && (((Int.pow(2, n_1_0_0 + 1) % 7 != 1) && (0 <= n_1_0_0 + 1) && (((Int.pow(2, n_1_0_0 + 1) % 7 != 2) && (0 <= n_1_0_0 + 1)) || (Int.pow(2, n_1_0_0 + 1) % 7 == 2))) || (Int.pow(2, n_1_0_0 + 1) % 7 == 1)) && (Int.pow(2, n_1_0_0 + 1) % 7 == 1 || Int.pow(2, n_1_0_0 + 1) % 7 == 2 || Int.pow(2, n_1_0_0 + 1) % 7 == 4)) || (Int.pow(2, n_1_0_0) % 7 != 1)
  requires ((Int.pow(2, n_1_0_0) % 7 != 2) && (7 != 0)) || (Int.pow(2, n_1_0_0) % 7 == 2)
  requires Int.pow(2, n_1_0_0) % 7 == 2 || Int.pow(2, n_1_0_0) % 7 == 4
  requires ((Int.pow(2, n_1_0_0) % 7 == 2) && (0 <= 2) && (Int.pow(2, n_1_0_0 + 1) == Int.pow(2, n_1_0_0) * 2) && (7 != 0) && (((Int.pow(2, n_1_0_0) * 2 % 7 != 1) && (7 != 0) && (((Int.pow(2, n_1_0_0) * 2 % 7 != 2) && (7 != 0)) || (Int.pow(2, n_1_0_0) * 2 % 7 == 2))) || (Int.pow(2, n_1_0_0) * 2 % 7 == 1)) && (Int.pow(2, n_1_0_0) * 2 % 7 == 1 || Int.pow(2, n_1_0_0) * 2 % 7 == 2 || Int.pow(2, n_1_0_0) * 2 % 7 == 4) && (0 <= n_1_0_0 + 1) && (((Int.pow(2, n_1_0_0 + 1) % 7 != 1) && (0 <= n_1_0_0 + 1) && (((Int.pow(2, n_1_0_0 + 1) % 7 != 2) && (0 <= n_1_0_0 + 1)) || (Int.pow(2, n_1_0_0 + 1) % 7 == 2))) || (Int.pow(2, n_1_0_0 + 1) % 7 == 1)) && (Int.pow(2, n_1_0_0 + 1) % 7 == 1 || Int.pow(2, n_1_0_0 + 1) % 7 == 2 || Int.pow(2, n_1_0_0 + 1) % 7 == 4)) || (Int.pow(2, n_1_0_0) % 7 != 2)
  requires Int.pow(2, n_1_0_0) % 7 == 4
  requires 0 <= 2
  requires Int.pow(2, n_1_0_0 + 1) == Int.pow(2, n_1_0_0) * 2
  requires 7 > 0
  requires 0 <= Int.pow(2, n_1_0_0)
  requires 0 <= 7
  requires 7 > 0
  requires Int.pow(2, n_1_0_0) * 2 % 7 == Int.pow(2, n_1_0_0) % 7 * (2 % 7) % 7
  requires ((Int.pow(2, n_1_0_0) * 2 % 7 != 1) && ((Int.pow(2, n_1_0_0) * 2 % 7 != 2) || (Int.pow(2, n_1_0_0) * 2 % 7 == 2))) || (Int.pow(2, n_1_0_0) * 2 % 7 == 1)
  ensures  Int.pow(2, n_1_0_0) * 2 % 7 == 1 || Int.pow(2, n_1_0_0) * 2 % 7 == 2 || Int.pow(2, n_1_0_0) * 2 % 7 == 4
{ }

// side checks at the same line (not the reported failure): 3 check(s)
// side check: divisor is always non-zero.
lemma {:induction false} vc_imo_1964_p1_2_L61_side1(n: int, n_1_0: int, n_1_0_0: nat)
  requires 0 <= n
  requires 0 <= n_1_0
  requires forall n0: nat :: true && 0 <= n0 && n0 < n ==> Int.pow(2, n0) % 7 == 1 || Int.pow(2, n0) % 7 == 2 || Int.pow(2, n0) % 7 == 4
  requires n != 0
  requires 0 <= n - 1
  requires 0 <= n || n - 1 == n
  requires n - 1 < n
  requires Int.pow(2, n - 1) % 7 == 1 || Int.pow(2, n - 1) % 7 == 2 || Int.pow(2, n - 1) % 7 == 4
  requires n_1_0_0 == n - 1
  requires 7 != 0
  requires ((Int.pow(2, n_1_0_0) % 7 == 1) && (0 <= 2) && (Int.pow(2, n_1_0_0 + 1) == Int.pow(2, n_1_0_0) * 2) && (7 != 0) && (((Int.pow(2, n_1_0_0) * 2 % 7 != 1) && (7 != 0) && (((Int.pow(2, n_1_0_0) * 2 % 7 != 2) && (7 != 0)) || (Int.pow(2, n_1_0_0) * 2 % 7 == 2))) || (Int.pow(2, n_1_0_0) * 2 % 7 == 1)) && (Int.pow(2, n_1_0_0) * 2 % 7 == 1 || Int.pow(2, n_1_0_0) * 2 % 7 == 2 || Int.pow(2, n_1_0_0) * 2 % 7 == 4) && (0 <= n_1_0_0 + 1) && (((Int.pow(2, n_1_0_0 + 1) % 7 != 1) && (0 <= n_1_0_0 + 1) && (((Int.pow(2, n_1_0_0 + 1) % 7 != 2) && (0 <= n_1_0_0 + 1)) || (Int.pow(2, n_1_0_0 + 1) % 7 == 2))) || (Int.pow(2, n_1_0_0 + 1) % 7 == 1)) && (Int.pow(2, n_1_0_0 + 1) % 7 == 1 || Int.pow(2, n_1_0_0 + 1) % 7 == 2 || Int.pow(2, n_1_0_0 + 1) % 7 == 4)) || (Int.pow(2, n_1_0_0) % 7 != 1)
  requires ((Int.pow(2, n_1_0_0) % 7 != 2) && (7 != 0)) || (Int.pow(2, n_1_0_0) % 7 == 2)
  requires Int.pow(2, n_1_0_0) % 7 == 2 || Int.pow(2, n_1_0_0) % 7 == 4
  requires ((Int.pow(2, n_1_0_0) % 7 == 2) && (0 <= 2) && (Int.pow(2, n_1_0_0 + 1) == Int.pow(2, n_1_0_0) * 2) && (7 != 0) && (((Int.pow(2, n_1_0_0) * 2 % 7 != 1) && (7 != 0) && (((Int.pow(2, n_1_0_0) * 2 % 7 != 2) && (7 != 0)) || (Int.pow(2, n_1_0_0) * 2 % 7 == 2))) || (Int.pow(2, n_1_0_0) * 2 % 7 == 1)) && (Int.pow(2, n_1_0_0) * 2 % 7 == 1 || Int.pow(2, n_1_0_0) * 2 % 7 == 2 || Int.pow(2, n_1_0_0) * 2 % 7 == 4) && (0 <= n_1_0_0 + 1) && (((Int.pow(2, n_1_0_0 + 1) % 7 != 1) && (0 <= n_1_0_0 + 1) && (((Int.pow(2, n_1_0_0 + 1) % 7 != 2) && (0 <= n_1_0_0 + 1)) || (Int.pow(2, n_1_0_0 + 1) % 7 == 2))) || (Int.pow(2, n_1_0_0 + 1) % 7 == 1)) && (Int.pow(2, n_1_0_0 + 1) % 7 == 1 || Int.pow(2, n_1_0_0 + 1) % 7 == 2 || Int.pow(2, n_1_0_0 + 1) % 7 == 4)) || (Int.pow(2, n_1_0_0) % 7 != 2)
  requires Int.pow(2, n_1_0_0) % 7 == 4
  requires 0 <= 2
  requires Int.pow(2, n_1_0_0 + 1) == Int.pow(2, n_1_0_0) * 2
  requires 7 > 0
  requires 0 <= Int.pow(2, n_1_0_0)
  requires 0 <= 7
  requires 7 > 0
  requires Int.pow(2, n_1_0_0) * 2 % 7 == Int.pow(2, n_1_0_0) % 7 * (2 % 7) % 7
  ensures  7 != 0
{ }

