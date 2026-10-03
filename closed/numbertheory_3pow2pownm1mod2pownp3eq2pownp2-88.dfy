// NOT CLOSED — failing line numbertheory_3pow2pownm1mod2pownp3eq2pownp2-88: theorem numbertheory_3pow2pownm1mod2pownp3eq2pownp2, Dafny line 88 (OOR: Verification out of resource (induction_helper_1))
// failing Dafny line: assert ((((1 + Int.pow(2, (n + 2))) + (k * Int.pow(2, (n + 3)))) * ((1 + Int.pow(2, (n + 2))) + (k * Int.pow(2, (n + 3))))) == ((1 + Int.pow(2, (n + 3))) + (((Int.pow(2, ((2 * n) + 4)) + (k * Int.pow(
// Lean step: ring_nf at *
// hypotheses: 29 facts Z3 had at the line; nothing assumed beyond the facts in scope
// not closed: tried H0=oor, K2=oor, K2pow=failed, K5=oor, K3=oor, SPLIT_K2pow=oor, SPLIT=oor, SIMPLE=oor, PAIR_K2pow_K5=oor; this file is the honest base attempt
// Dafny: finished with 35 verified, 0 errors, 2 out of resource  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/numbertheory_3pow2pownm1mod2pownp3eq2pownp2.dfy"
lemma {:induction false} vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L88(k_1_0_0: int, k_1_0_2: int, k_1_0_2_0: int, k_1_0_3: int, n: nat)
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
  requires n >= 0
  requires 2 * n + 4 >= n + 4
  requires 2 * n + 6 >= n + 4
  requires 2 * n + 5 >= n + 4
  requires Int.pow(k_1_0_2_0, 1) == k_1_0_2_0
  requires Int.pow(n, 1) == n
  requires 0 <= 2 * n + 4
  requires 0 <= n + 4
  requires 0 <= 2 * n + 6
  requires 0 <= 2 * n + 5
  requires ((0 <= k_1_0_0) && (0 <= k_1_0_3)) || ((0 <= k_1_0_0) && (k_1_0_3 < 0)) || ((k_1_0_0 < 0) && (0 <= k_1_0_3)) || ((k_1_0_0 < 0) && (k_1_0_3 < 0))
  ensures   (1 + Int.pow(2, n + 2) + k_1_0_2_0 * Int.pow(2, n + 3)) * (1 + Int.pow(2, n + 2) + k_1_0_2_0 * Int.pow(2, n + 3)) == 1 + Int.pow(2, n + 3) + (Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5))
{
                  // [TACTIC: «_<;>_» at * <;> simp [ pow_add , pow_mul , mul_assoc , mul_comm , mul_left_comm , Nat.mul_div_cancel_left ] simp [ pow_add , pow_mul , mul_assoc , mul_comm , mul_left_comm , Nat.mul_div_cancel_left ] simp [ pow_add , pow_mul , mul_assoc , mul_comm , mul_left_comm , Nat.mul_div_cancel_left ] <;> ring_nf at * <;> omega omega]
                  // [TACTIC: Ring_nfAt at *]
                  NatPowOne(k_1_0_0);  // cite: pow_one [applied by the tactic, not named in it]
                  NatPowOne(n);  // cite: pow_one [applied by the tactic, not named in it]
                  // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := n)
                  // UNCITED-APPLIED internal ×233 [exec 277 1686-1698]: applications made inside the tactic's own automation, not stated — add_zero ×2, mul_one ×1; machinery/glue: congrArg ×8, Mathlib.Tactic.Ring.add_pf_add_gt ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Tactic.Ring.single_pow ×8 (+43 more heads, ×198) (cited in this block, not counted here: pow_one [Lean recorded ×2])
                  // `ring_nf` closed the goal; the rest of the chain did not run
}

