// CLOSED — failing line aime_1987_p5-452: theorem aime_1987_p5, Dafny line 452 (OOR: Verification out of resource (aime_1987_p5))
// failing Dafny line: assert IntDvd(((3 * (x * x)) + 1), ((30 * (x * x)) + 517)) by {
// Lean step: use y ^ 2
// hypotheses: 2 facts Z3 had at the line (goal itself removed: 0; the block's own asserts removed: 1); nothing assumed beyond the facts in scope
// how it closes: own-lemma — nothing: the file's own proof body, hypotheses = facts in scope minus the goal and minus the block's own asserts
// Dafny: finished with 9 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/aime_1987_p5.dfy"
lemma {:induction false} vc_aime_1987_p5_L452(x: int, y: int)
  requires y * y + 3 * (x * x * (y * y)) == 30 * (x * x) + 517
  requires x != 0
  ensures  (IntDvd(3 * (x * x) + 1, 30 * (x * x) + 517) || (3 * (x * x) + 1 == 0 ==> 30 * (x * x) + 517 == 0)) && (IntDvd(3 * (x * x) + 1, 30 * (x * x) + 517) || (3 * (x * x) + 1 != 0 ==> (30 * (x * x) + 517) % (3 * (x * x) + 1) == 0))
{
      // [TACTIC: Use y ^ 2]
      assert (((30 * (x * x)) + 517) == (((3 * (x * x)) + 1) * (y * y))) by {  // sub-goal of `use` (Lean state) // @tac 972-1044 // @tac 1051-1172 // @tac 1179-1187
        // have h₂₁₁ : y ^ 2 + 3 * ( x ^ 2 * y ^ 2 ) == 30 * x ^ 2 + 517  [type from Lean state]
        assert (((y * y) + (3 * ((x * x) * (y * y)))) == ((30 * (x * x)) + 517)) by {
          // [TACTIC: exact h₀]
          assert (((y * y) + (3 * ((x * x) * (y * y)))) == ((30 * (x * x)) + 517));
        }
        // have h₂₁₂ : y ^ 2 * ( 3 * x ^ 2 + 1 ) == 30 * x ^ 2 + 517  [type from Lean state]
        assert (((y * y) * ((3 * (x * x)) + 1)) == ((30 * (x * x)) + 517)) by { // @tac 1126-1172 // @tac 1126-1151
          // [TACTIC: «_<;>_» at h₂₁₁ ⊢ <;> linarith linarith]
          // [TACTIC: Ring_nfAt at h₂₁₁ ⊢]
          // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := y ^ (2 : ℕ))
          // UNCITED-APPLIED internal ×83 [exec 446 1126-1151]: applications made inside the tactic's own automation, not stated — add_zero ×2, mul_one ×1; machinery/glue: Mathlib.Tactic.Ring.mul_add ×6, Mathlib.Tactic.Ring.add_pf_add_zero ×6, congrArg ×5, Mathlib.Tactic.Ring.cast_pos ×5 (+24 more heads, ×58)
          assert (((y * y) + (((y * y) * (x * x)) * 3)) == (517 + ((x * x) * 30)));  // hypothesis h₂₁₁ after `ring_nf` (Lean state) // @tac-hyp 1126-1151
          assert (((y * y) + (((y * y) * (x * x)) * 3)) == (517 + ((x * x) * 30))) by {  // sub-goal of `linarith` (Lean state) // @tac 1164-1172
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1164-1172 exec 455)
            // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + -(y ^ (2 : ℕ) + (3 : ℤ) * (x ^ (2 : ℕ) * y ^ (2 : ℕ)) - ((30 : ℤ) * x ^ (2 : ℕ) + (517 : ℤ))) < (0 : ℤ)`
            cert_identity_7(x, y);  // cert: add_lt_of_neg_of_le
            cert_identity_8(x, y);  // cert: add_lt_of_neg_of_le
            // UNCITED-APPLIED internal ×17 [exec 455 1164-1172]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
            // UNCITED-APPLIED internal ×177 [exec 456 1164-1172]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.add_congr ×7, Mathlib.Tactic.Ring.neg_add ×7 (+39 more heads, ×147)
            // UNCITED-APPLIED internal ×165 [exec 457 1164-1172]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.add_congr ×7, Mathlib.Tactic.Ring.mul_pf_left ×6 (+40 more heads, ×136)
          }
        }
        // [TACTIC: «Linarith[_]At___»]
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1179-1187 exec 458)
        // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + -(y ^ (2 : ℕ) + (3 : ℤ) * (x ^ (2 : ℕ) * y ^ (2 : ℕ)) - ((30 : ℤ) * x ^ (2 : ℕ) + (517 : ℤ))) < (0 : ℤ)`
        cert_identity_9(x, y);  // cert: add_lt_of_neg_of_le
        cert_identity_10(x, y);  // cert: add_lt_of_neg_of_le
        // UNCITED-APPLIED internal ×17 [exec 458 1179-1187]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, sub_eq_zero_of_eq ×1, neg_eq_zero ×1; machinery/glue: congrArg ×2, Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
        // UNCITED-APPLIED internal ×159 [exec 459 1179-1187]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.add_congr ×6, Mathlib.Meta.NormNum.isNat_ofNat ×6 (+40 more heads, ×131)
        // UNCITED-APPLIED internal ×171 [exec 460 1179-1187]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.neg_add ×7, Mathlib.Tactic.Ring.add_pf_add_zero ×7 (+39 more heads, ×141)
      }
}

