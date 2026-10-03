// CLOSED LEMMA for failing line mathd_numbertheory_618-114 (theorem mathd_numbertheory_618, Dafny line 114, OOR)
// closes with: K5 (automation lemma) — single
// added: NatGcdSelfAddRight(p(n), 2 * n);  with work-copy axiom = exact Mathlib Nat.gcd_self_add_right (m n : ℕ) : gcd m (m + n) = gcd m n (Lean's simp applied it internally, exec 193)
// Dafny: finished with 35 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_040/mathd_numbertheory_618-114/k5.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 114 of mathd_numbertheory_618 (OOR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "/home/changjie/lean2dafny_research/agents_tac/wt_integ5/out/mathd_numbertheory_618.dfy"

// ========================================================================================
// FAILING LINE 114 (OOR) in mathd_numbertheory_618: Verification out of resource (mathd_numbertheory_618)
//   dafny |         assert (gcd(((p(n) + 0) + (2 * n)), (p(n) + 0)) == gcd((p(n) + 0), (2 * n))) by {  // sub-goal of `simp` (Lean state) // @tac 1185-1233
//   statement kind: sub-goal (Lean tactic state)
//   @tac 1185-1233 | Lean: simp [Nat.gcd_add_mul_right_right, Nat.gcd_comm]
//        before-goal ⊢ Nat.gcd (p n + (0 : ℕ) + (2 : ℕ) * n) (p n + (0 : ℕ)) = Nat.gcd (p n + (0 : ℕ)) ((2 : ℕ) * n)
// inside Lean have h₄, Lean lines 28-30:
//   lean  |     have h₄ : Nat.gcd (p n) (p n + 2 * n) = Nat.gcd (p n) (2 * n) := by
//   lean  |       rw [← Nat.add_zero (p n), Nat.gcd_comm]
//   lean  |       <;> simp [Nat.gcd_add_mul_right_right, Nat.gcd_comm]

// 1 path(s) merged (paths); 16 shared facts; 1 distinct path conditions

// Mathlib (exact): theorem Nat.gcd_self_add_right (m n : ℕ) : Nat.gcd m (m + n) = Nat.gcd m n
lemma {:axiom} NatGcdSelfAddRight(m: nat, n: nat)
  ensures gcd(m, m + n) == gcd(m, n)
lemma {:induction false} vc_mathd_numbertheory_618_L114(n: int, n_0_0_0_1_0: int, n_0_0_0_1_0_1_0: int, p: nat -> nat)
  requires 0 <= n
  requires 0 <= n_0_0_0_1_0
  requires 0 <= n_0_0_0_1_0_1_0
  requires n > 0
  requires forall x_1: nat :: p.requires(x_1)
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires 1 < gcd(p(n), p(n + 1))
  requires 0 <= n + 1
  requires p(n + 1) == p(n) + 2 * n
  requires p(n) + 0 == p(n)
  requires 0 <= p(n) + 0
  requires 0 <= p(n) + 0 + 2 * n
  requires gcd(p(n) + 0, p(n) + 0 + 2 * n) == gcd(p(n) + 0 + 2 * n, p(n) + 0)
  requires 0 <= p(n) + 2 * n
  requires gcd(p(n) + 2 * n, p(n)) == gcd(p(n), p(n) + 2 * n)
  requires 0 <= 2 * n
  ensures  gcd(p(n) + 0 + 2 * n, p(n) + 0) == gcd(p(n) + 0, 2 * n)
{
  NatGcdSelfAddRight(p(n), 2 * n);  // K5: simp applied Nat.gcd_self_add_right (m := p n, n := 2 * n) [exec 193 internal]
}
