// NOT CLOSED — failing line numbertheory_3pow2pownm1mod2pownp3eq2pownp2-59: theorem numbertheory_3pow2pownm1mod2pownp3eq2pownp2, Dafny line 59 (OOR: Verification out of resource (induction_helper_1))
// failing Dafny line: assert ((((1 + Int.pow(2, (n + 2))) + (k * Int.pow(2, (n + 3)))) * ((1 + Int.pow(2, (n + 2))) + (k * Int.pow(2, (n + 3))))) == ((1 + Int.pow(2, (n + 3))) + (((Int.pow(2, ((2 * n) + 4)) + (k * Int.pow(
// Lean step: have h₄ : n ≥ 0 := by linarith
// hypotheses: 23 facts Z3 had at the line (goal itself removed: 1; the block's own asserts removed: 4); nothing assumed beyond the facts in scope
// not closed: tried H0=oor; this file is the honest base attempt
// Dafny: finished with 72 verified, 0 errors, 4 out of resource  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/numbertheory_3pow2pownm1mod2pownp3eq2pownp2.dfy"
lemma {:induction false} vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L59(k_1_0_0: int, k_1_0_2: int, k_1_0_2_0: int, k_1_0_3: int, n: nat)
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
  requires ((0 <= k_1_0_0) && (0 <= k_1_0_3)) || ((0 <= k_1_0_0) && (k_1_0_3 < 0)) || ((k_1_0_0 < 0) && (0 <= k_1_0_3)) || ((k_1_0_0 < 0) && (k_1_0_3 < 0))
  ensures   (1 + Int.pow(2, n + 2) + k_1_0_2_0 * Int.pow(2, n + 3)) * (1 + Int.pow(2, n + 2) + k_1_0_2_0 * Int.pow(2, n + 3)) == 1 + Int.pow(2, n + 3) + (Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5))
{
            // have h₄ : n >= 0  [type from Lean state]
            assert (n >= 0) by { // @tac 1284-1292
              // [TACTIC: «Linarith[_]At___»]
              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1284-1292 exec 204)
              // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(-1 : ℤ) + -↑n < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
              cert_identity_1(n);  // cert: add_lt_of_neg_of_le
              // UNCITED-APPLIED internal ×43 [exec 204 1284-1292]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1, neg_nonpos_of_nonneg ×1, Int.add_one_le_iff ×1; machinery/glue: Mathlib.Tactic.Ring.add_congr ×3, congrArg ×2, Mathlib.Tactic.Ring.neg_congr ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+24 more heads, ×27) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
              NatCastZeroInt();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
            }
            // have h₅ : 2 * n + 4 >= n + 4  [type from Lean state]
            assert (((2 * n) + 4) >= (n + 4)); // @tac 1353-1358
              // [TACTIC: omega]
              // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
              // UNCITED-APPLIED internal ×33 [exec 222 1353-1358]: applications made inside the tactic's own automation, not stated — Int.sub_nonneg_of_le ×2, Int.ofNat_add ×2, Int.add_one_le_of_lt ×1, Nat.lt_of_not_le ×1, Int.ofNat_mul ×1; machinery/glue: Eq.symm ×7, Lean.Omega.LinearCombo.add_eval ×3, Lean.Omega.Constraint.addInequality_sat ×2, Lean.Omega.LinearCombo.sub_eval ×2 (+12 more heads, ×12)
            // have h₆ : 2 * n + 6 >= n + 4  [type from Lean state]
            assert (((2 * n) + 6) >= (n + 4)); // @tac 1419-1424
              // [TACTIC: omega]
              // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
              // UNCITED-APPLIED internal ×33 [exec 239 1419-1424]: applications made inside the tactic's own automation, not stated — Int.sub_nonneg_of_le ×2, Int.ofNat_add ×2, Int.add_one_le_of_lt ×1, Nat.lt_of_not_le ×1, Int.ofNat_mul ×1; machinery/glue: Eq.symm ×7, Lean.Omega.LinearCombo.add_eval ×3, Lean.Omega.Constraint.addInequality_sat ×2, Lean.Omega.LinearCombo.sub_eval ×2 (+12 more heads, ×12)
            // have h₇ : 2 * n + 5 >= n + 4  [type from Lean state]
            assert (((2 * n) + 5) >= (n + 4)); // @tac 1485-1490
              // [TACTIC: omega]
              // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
              // UNCITED-APPLIED internal ×33 [exec 256 1485-1490]: applications made inside the tactic's own automation, not stated — Int.sub_nonneg_of_le ×2, Int.ofNat_add ×2, Int.add_one_le_of_lt ×1, Nat.lt_of_not_le ×1, Int.ofNat_mul ×1; machinery/glue: Eq.symm ×7, Lean.Omega.LinearCombo.add_eval ×3, Lean.Omega.Constraint.addInequality_sat ×2, Lean.Omega.LinearCombo.sub_eval ×2 (+12 more heads, ×12)
            // calc ( 1 + 2 ^ ( n + 2 ) + k * 2 ^ ( n + 3 ) ) ^ 2 ...  (carrier nat from the Lean state; 2/2 steps typed)
            calc {
              (((1 + Int.pow(2, (n + 2))) + (k_1_0_0 * Int.pow(2, (n + 3)))) * ((1 + Int.pow(2, (n + 2))) + (k_1_0_0 * Int.pow(2, (n + 3)))));
              == {
                assert ((((1 + Int.pow(2, (n + 2))) + (k_1_0_0 * Int.pow(2, (n + 3)))) * ((1 + Int.pow(2, (n + 2))) + (k_1_0_0 * Int.pow(2, (n + 3))))) == ((1 + Int.pow(2, (n + 3))) + (((Int.pow(2, ((2 * n) + 4)) + (k_1_0_0 * Int.pow(2, (n + 4)))) + ((k_1_0_0 * k_1_0_0) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k_1_0_0) * Int.pow(2, ((2 * n) + 5)))))) by {  // sub-goal before `ring_nf` (Lean state) // @tac 1686-1904 // @tac 1686-1864 // @tac 1686-1817 // @tac 1686-1698
                  // [TACTIC: «_<;>_» at * <;> simp [ pow_add , pow_mul , mul_assoc , mul_comm , mul_left_comm , Nat.mul_div_cancel_left ] simp [ pow_add , pow_mul , mul_assoc , mul_comm , mul_left_comm , Nat.mul_div_cancel_left ] simp [ pow_add , pow_mul , mul_assoc , mul_comm , mul_left_comm , Nat.mul_div_cancel_left ] <;> ring_nf at * <;> omega omega]
                  // [TACTIC: Ring_nfAt at *]
                  NatPowOne(k_1_0_0);  // cite: pow_one [applied by the tactic, not named in it]
                  NatPowOne(n);  // cite: pow_one [applied by the tactic, not named in it]
                  // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := n)
                  // UNCITED-APPLIED internal ×233 [exec 277 1686-1698]: applications made inside the tactic's own automation, not stated — add_zero ×2, mul_one ×1; machinery/glue: congrArg ×8, Mathlib.Tactic.Ring.add_pf_add_gt ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Tactic.Ring.single_pow ×8 (+43 more heads, ×198) (cited in this block, not counted here: pow_one [Lean recorded ×2])
                  // `ring_nf` closed the goal; the rest of the chain did not run
                }
              }
              ((1 + Int.pow(2, (n + 3))) + (((Int.pow(2, ((2 * n) + 4)) + (k_1_0_0 * Int.pow(2, (n + 4)))) + ((k_1_0_0 * k_1_0_0) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k_1_0_0) * Int.pow(2, ((2 * n) + 5)))));
              == {
                assert (((1 + Int.pow(2, (n + 3))) + (((Int.pow(2, ((2 * n) + 4)) + (k_1_0_0 * Int.pow(2, (n + 4)))) + ((k_1_0_0 * k_1_0_0) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k_1_0_0) * Int.pow(2, ((2 * n) + 5))))) == ((1 + Int.pow(2, (n + 3))) + (((Int.pow(2, ((2 * n) + 4)) + (k_1_0_0 * Int.pow(2, (n + 4)))) + ((k_1_0_0 * k_1_0_0) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k_1_0_0) * Int.pow(2, ((2 * n) + 5)))))) by {  // sub-goal before `rfl` (Lean state) // @tac 2047-2050
                  // [TACTIC: Rfl]
                }
              }
              ((1 + Int.pow(2, (n + 3))) + (((Int.pow(2, ((2 * n) + 4)) + (k_1_0_0 * Int.pow(2, (n + 4)))) + ((k_1_0_0 * k_1_0_0) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k_1_0_0) * Int.pow(2, ((2 * n) + 5)))));
            }
}

