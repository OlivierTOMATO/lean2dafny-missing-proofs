// CLOSED — failing line aime_1987_p5-495: theorem aime_1987_p5, Dafny line 495 (OOR: Verification out of resource (aime_1987_p5))
// failing Dafny line: assert IntDvd(((3 * (x * x)) + 1), 507) by {
// Lean step: have h₂₂₃ : (30 * x ^ 2 + 517 : ℤ) = 10 * (3 * x ^ 2 + 1) + 507 := by ring
// hypotheses: 3 facts Z3 had at the line (goal itself removed: 0; the block's own asserts removed: 2); nothing assumed beyond the facts in scope
// how it closes: own-lemma — nothing: the file's own proof body, hypotheses = facts in scope minus the goal and minus the block's own asserts
// Dafny: finished with 4 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/aime_1987_p5.dfy"
lemma {:induction false} vc_aime_1987_p5_L495(x: int, y: int)
  requires y * y + 3 * (x * x * (y * y)) == 30 * (x * x) + 517
  requires x != 0
  requires IntDvd(3 * (x * x) + 1, 30 * (x * x) + 517)
  ensures   (IntDvd(3 * (x * x) + 1, 507) || (3 * (x * x) + 1 == 0 ==> 507 == 0))
{
        // have h₂₂₃ : 30 * x ^ 2 + 517 == 10 * ( 3 * x ^ 2 + 1 ) + 507  [type from Lean state]
        assert (((30 * (x * x)) + 517) == ((10 * ((3 * (x * x)) + 1)) + 507)); // @tac 1467-1471
          // [TACTIC: Ring]
        // UNCITED-APPLIED internal ×69 [exec 525 1467-1471]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.cast_pos ×7, Mathlib.Meta.NormNum.isNat_ofNat ×7, Mathlib.Tactic.Ring.mul_add ×5, Mathlib.Tactic.Ring.add_mul ×4 (+25 more heads, ×46)
        // [TACTIC: rwSeq [ h₂₂₃ ] at h₂₂₁]
        assert IntDvd(((3 * (x * x)) + 1), ((10 * ((3 * (x * x)) + 1)) + 507));  // hypothesis h₂₂₁ after `rw` (Lean state) // @tac-hyp 1480-1509
        // [TACTIC: simpa [ dvd_add_right ] using h₂₂₁]
        // UNCITED dvd_add_right: no Lean instance recorded (arguments unknown), not guessed
        // UNCITED-APPLIED internal ×2 [exec 557 1518-1556]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, congrArg ×1
}

