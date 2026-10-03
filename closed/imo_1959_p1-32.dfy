// CLOSED LEMMA for failing line imo_1959_p1-32 (theorem imo_1959_p1, Dafny line 32, OOR)
// closes with: K5 (automation lemma) — single
// added: assert 1*(14n+3) == 14n+3; NatGcdSelfAddRight(14n+3, 7n+1) [exact Mathlib Nat.gcd_self_add_right, added; Lean's recorded args]
// Dafny: finished with 19 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_024/imo_1959_p1-32/K5.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// K5: Lean's internal application at exec 137: Nat.gcd_self_add_right m=14n+3 n=7n+1 (exact Mathlib, added) + one_mul
// Line lemma for failing line 32 of imo_1959_p1 (OOR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "/home/changjie/lean2dafny_research/agents_tac/wt_integ5/out/imo_1959_p1.dfy"

// ========================================================================================
// FAILING LINE 32 (OOR) in imo_1959_p1: Verification out of resource (imo_1959_p1)
//   dafny |         assert (gcd(((14 * n) + 3), ((1 * ((14 * n) + 3)) + ((7 * n) + 1))) == gcd(((14 * n) + 3), ((7 * n) + 1))) by {  // sub-goal of `simp` (Lean state) // @tac 680-758
//   statement kind: sub-goal (Lean tactic state)
//   @tac 680-758 | Lean: simp [Nat.gcd_comm, Nat.gcd_add_mul_right_right, Nat.gcd_assoc, Nat.gcd_assoc]
//        before-goal ⊢ Nat.gcd ((14 : ℕ) * n + (3 : ℕ)) ((1 : ℕ) * ((14 : ℕ) * n + (3 : ℕ)) + ((7 : ℕ) * n + (1 : ℕ))) =
//   Nat.gcd ((14 : ℕ) * n + (3 : ℕ)) ((7 : ℕ) * n + (1 : ℕ))
// inside Lean have h₁₀, Lean lines 11-19:
//   lean  |     have h₁₀ : Nat.gcd (21 * n + 4) (14 * n + 3) = Nat.gcd (14 * n + 3) (7 * n + 1) := by
//   lean  |       rw [show 21 * n + 4 = 1 * (14 * n + 3) + (7 * n + 1) by
//   lean  |         ring_nf
//   lean  |         <;> omega]
//   lean  |       -- Apply the Euclidean algorithm step: 21n + 4 = 1 * (14n + 3) + (7n + 1)
//   lean  |       rw [Nat.gcd_comm]
//   lean  |       <;> simp [Nat.gcd_comm, Nat.gcd_add_mul_right_right, Nat.gcd_assoc, Nat.gcd_assoc]
//   lean  |       <;> ring_nf at *
//   lean  |       <;> omega

// 1 path(s) merged (paths); 9 shared facts; 1 distinct path conditions

// Mathlib: theorem Nat.gcd_self_add_right (m n : ℕ) : Nat.gcd m (m + n) = Nat.gcd m n
lemma {:axiom} NatGcdSelfAddRight(m: nat, n: nat)
  ensures gcd(m, m + n) == gcd(m, n)


lemma {:induction false} vc_imo_1959_p1_L32(n: int)
  requires 0 <= n
  requires 0 < n
  requires forall n0: nat :: 0 < n0 && 0 <= n0 && n0 < n ==> gcd(21 * n0 + 4, 14 * n0 + 3) == 1
  requires 21 * n + 4 == 1 * (14 * n + 3) + (7 * n + 1)
  requires 0 <= 1 * (14 * n + 3) + (7 * n + 1)
  requires 0 <= 14 * n + 3
  requires gcd(1 * (14 * n + 3) + (7 * n + 1), 14 * n + 3) == gcd(14 * n + 3, 1 * (14 * n + 3) + (7 * n + 1))
  requires 0 <= 7 * n + 1
  requires gcd(14 * n + 3, 7 * n + 1) == gcd(7 * n + 1, 14 * n + 3)
  ensures  gcd(14 * n + 3, 1 * (14 * n + 3) + (7 * n + 1)) == gcd(14 * n + 3, 7 * n + 1)
{
  assert 1 * (14 * n + 3) == 14 * n + 3;
  NatGcdSelfAddRight(14 * n + 3, 7 * n + 1);
}
