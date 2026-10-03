// CLOSED LEMMA for failing line imo_1959_p1-61 (theorem imo_1959_p1, Dafny line 61, OOR)
// closes with: K5 (automation lemma) — single
// added: NatGcdComm ×2; NatGcdMulRightAddRight(7n+1, 1, 2); NatGcdAddSelfRight(1, 7n); NatGcdOneLeft(7n) [exact Mathlib Nat.gcd_mul_right_add_right / gcd_add_self_right / gcd_one_left added; Lean's recorded args]
// Dafny: finished with 32 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_024/imo_1959_p1-61/K5.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// K5: Lean's internal applications at exec 280 (exact Mathlib, added) at Lean's args: gcd_comm ×2, gcd_mul_right_add_right(7n+1,1,2), gcd_add_self_right(1,7n), gcd_one_left(7n)
// Line lemma for failing line 61 of imo_1959_p1 (OOR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "/home/changjie/lean2dafny_research/agents_tac/wt_integ5/out/imo_1959_p1.dfy"

// ========================================================================================
// FAILING LINE 61 (OOR) in imo_1959_p1: Verification out of resource (imo_1959_p1)
//   dafny |         assert (gcd(((2 * ((7 * n) + 1)) + 1), ((7 * n) + 1)) == gcd(((7 * n) + 1), 1)) by {  // sub-goal of `simp` (Lean state) // @tac 1186-1249
//   statement kind: sub-goal (Lean tactic state)
//   @tac 1186-1249 | Lean: simp [Nat.gcd_comm, Nat.gcd_add_mul_right_right, Nat.gcd_assoc]
//        before-goal ⊢ Nat.gcd ((2 : ℕ) * ((7 : ℕ) * n + (1 : ℕ)) + (1 : ℕ)) ((7 : ℕ) * n + (1 : ℕ)) = Nat.gcd ((7 : ℕ) * n + (1 : ℕ)) (1 : ℕ)
// inside Lean have h₂₁₁, Lean lines 25-31:
//   lean  |       have h₂₁₁ : Nat.gcd (14 * n + 3) (7 * n + 1) = Nat.gcd (7 * n + 1) 1 := by
//   lean  |         rw [show 14 * n + 3 = 2 * (7 * n + 1) + 1 by
//   lean  |           ring_nf
//   lean  |           <;> omega]
//   lean  |         <;> simp [Nat.gcd_comm, Nat.gcd_add_mul_right_right, Nat.gcd_assoc]
//   lean  |         <;> ring_nf at *
//   lean  |         <;> omega

// 1 path(s) merged (paths); 12 shared facts; 1 distinct path conditions

// Mathlib: theorem Nat.gcd_mul_right_add_right (m n k : ℕ) : Nat.gcd m (k * m + n) = Nat.gcd m n
lemma {:axiom} NatGcdMulRightAddRight(m: nat, n: nat, k: nat)
  ensures gcd(m, k * m + n) == gcd(m, n)
// Mathlib: theorem Nat.gcd_add_self_right (m n : ℕ) : Nat.gcd m (n + m) = Nat.gcd m n
lemma {:axiom} NatGcdAddSelfRight(m: nat, n: nat)
  ensures gcd(m, n + m) == gcd(m, n)
// Mathlib: theorem Nat.gcd_one_left (n : ℕ) : Nat.gcd 1 n = 1
lemma {:axiom} NatGcdOneLeft(n: nat)
  ensures gcd(1, n) == 1


lemma {:induction false} vc_imo_1959_p1_L61(n: int)
  requires 0 <= n
  requires 0 < n
  requires forall n0: nat :: 0 < n0 && 0 <= n0 && n0 < n ==> gcd(21 * n0 + 4, 14 * n0 + 3) == 1
  requires 0 <= 21 * n + 4
  requires 0 <= 14 * n + 3
  requires 0 <= 7 * n + 1
  requires gcd(21 * n + 4, 14 * n + 3) == gcd(14 * n + 3, 7 * n + 1)
  requires 14 * n + 3 == 2 * (7 * n + 1) + 1
  requires 0 <= 2 * (7 * n + 1) + 1
  requires gcd(2 * (7 * n + 1) + 1, 7 * n + 1) == gcd(7 * n + 1, 2 * (7 * n + 1) + 1)
  requires 0 <= 1
  requires gcd(7 * n + 1, 1) == gcd(1, 7 * n + 1)
  ensures  gcd(2 * (7 * n + 1) + 1, 7 * n + 1) == gcd(7 * n + 1, 1)
{
  NatGcdComm(2 * (7 * n + 1) + 1, 7 * n + 1);
  NatGcdMulRightAddRight(7 * n + 1, 1, 2);
  NatGcdComm(7 * n + 1, 1);
  NatGcdAddSelfRight(1, 7 * n);
  NatGcdOneLeft(7 * n);
}
