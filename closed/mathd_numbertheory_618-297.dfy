// CLOSED LEMMA for failing line mathd_numbertheory_618-297 (theorem mathd_numbertheory_618, Dafny line 297, OOR)
// closes with: K2 (computation) — single
// added: assert tsub(23 * 23, 23) + 41 == 547; assert 2 * 23 == 46; assert gcd(547, 46) == 1;  (IsNat records isNat_natSub/isNat_add/isNat_mul/isNat_gcd, exec 470; all checked)
// Dafny: finished with 19 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_042/mathd_numbertheory_618-297/K2.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 297 of mathd_numbertheory_618 (OOR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../../wt_integ5/out/mathd_numbertheory_618.dfy"

// ========================================================================================
// FAILING LINE 297 (OOR) in mathd_numbertheory_618: Verification out of resource (mathd_numbertheory_618)
//   dafny |           assert false;  // sub-goal of `norm_num` (Lean state) // @tac 1612-1692
//   statement kind: sub-goal (Lean tactic state)
//   @tac 1612-1692 | Lean: norm_num [h₀, Nat.gcd_eq_right, Nat.gcd_eq_left, Nat.gcd_eq_right] at h₄ ⊢
//        before-goal ⊢ False
// inside Lean have h₅, Lean lines 40-55:
//   lean  |   have h₅ : 41 ≤ n := by
//   lean  |     by_contra h
//   lean  |     -- We will show that if n < 41, then the gcd cannot be greater than 1.
//   lean  |     have h₆ : n ≤ 40 := by linarith
//   lean  |     have h₇ : n ≤ 40 := by linarith
//   lean  |     interval_cases n <;> norm_num [h₀, Nat.gcd_eq_right, Nat.gcd_eq_left, Nat.gcd_eq_right] at h₄ ⊢ <;>
//   lean  |       (try omega) <;> (try contradiction) <;>
//   lean  |       (try norm_num) <;>
//   lean  |       (try
//   lean  |         {
//   lean  |           ring_nf at h₄ ⊢
//   lean  |           norm_num at h₄ ⊢
//   lean  |           <;>
//   lean  |             (try omega) <;> (try contradiction)
//   lean  |         }) <;>
//   lean  |       (try omega) <;> (try contradiction)

// 1 path(s) merged (joined); 13 shared facts; 1 distinct path conditions
lemma {:induction false} vc_mathd_numbertheory_618_L297(n: int, n_0_0_0_1_0: int, n_0_0_0_1_0_1_0: int, p: nat -> nat)
  requires 0 <= n
  requires 0 <= n_0_0_0_1_0
  requires 0 <= n_0_0_0_1_0_1_0
  requires n > 0
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires 1 < gcd(p(n), p(n + 1))
  requires 0 <= n + 1
  requires p(n + 1) == p(n) + 2 * n
  requires 0 <= 2 * n
  requires gcd(p(n), p(n + 1)) == gcd(p(n), 2 * n)
  requires 1 < gcd(p(n), 2 * n)
  requires !(41 <= n)
  requires n <= 40
  requires n == 23  /* RESTORED: Dafny branch guard (if (n == 23) && ...), dropped by extraction */
  ensures  false /*VC_GAP*/
{
  assert tsub(23 * 23, 23) + 41 == 547;  // K2: isNat_natSub/isNat_add: 23^2-23+41 = 547
  assert 2 * 23 == 46;  // K2: isNat_mul
  assert gcd(547, 46) == 1;  // K2: isNat_gcd (547,46) = 1
}
