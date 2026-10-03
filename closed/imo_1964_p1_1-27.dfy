// NOT CLOSED — failing line imo_1964_p1_1-27: theorem imo_1964_p1_1, Dafny line 27 (OOR: Verification out of resource (imo_1964_p1_1))
// failing Dafny line: assert ((Int.pow(2, n) % 7) == 1) by {
// Lean step: omega
// hypotheses: 12 facts Z3 had at the line; nothing assumed beyond the facts in scope
// not closed: tried H0=oor; this file is the honest base attempt
// Dafny: finished with 23 verified, 0 errors, 1 out of resource  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/imo_1964_p1_1.dfy"
lemma {:induction false} vc_imo_1964_p1_1_L27(n: nat)
  requires 0 <= n
  requires NatDvd(7, tsub(Int.pow(2, n), 1))
  requires if 7 == 0 then tsub(Int.pow(2, n), 1) == 0 else tsub(Int.pow(2, n), 1) % 7 == 0
  requires forall n0: nat :: NatDvd(7, tsub(Int.pow(2, n0), 1)) && 0 <= n0 && n0 < n ==> NatDvd(3, n0)
  requires 0 <= Int.pow(2, n)
  requires 0 <= 1
  requires IntDvd(7, tsub(Int.pow(2, n), 1))
  requires IntDvd(7, Int.pow(2, n) - 1)
  requires 0 <= 2
  requires Int.pow(2, n) == Int.pow(2, n)
  requires 0 <= 7
  requires (exists k: int :: tsub(Int.pow(2, n), 1) == 7 * k) == (exists k_1: nat :: tsub(Int.pow(2, n), 1) == 7 * k_1)
  ensures   Int.pow(2, n) % 7 == 1
{
        // [TACTIC: omega]
        // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
        // SORT_GAP: Nat.cast_zero is used at carrier nat; library NatCastZero/NatCastZeroInt/NatCastZeroRat is not over nat (no faithful counterpart, not cited)
        NatCastPowInt(2, n);  // cite: Nat.cast_pow [applied by the tactic, not named in it]
        IntCoeNatDvd(7, tsub(Int.pow(2, n), 1));  // cite: Int.coe_nat_dvd [applied by the tactic, not named in it]
        // UNCITED-APPLIED internal ×101 [exec 83 658-663]: applications made inside the tactic's own automation, not stated — le_of_le_of_eq ×4, Int.sub_nonneg_of_le ×4, Int.add_one_le_of_lt ×3, Int.emod_def ×2, Int.lt_or_gt_of_ne ×1, Int.emod_eq_zero_of_dvd ×1, Nat.cast_pred ×1, Nat.cast_zero ×1, Int.mul_ediv_self_le ×1, Int.lt_mul_ediv_self_add ×1; machinery/glue: Eq.symm ×16, Eq.trans ×7, Lean.Omega.Int.sub_congr ×6, Lean.Omega.LinearCombo.sub_eval ×6 (+23 more heads, ×47) (cited in this block, not counted here: Int.coe_nat_dvd [Lean recorded ×1], Nat.cast_pow [Lean recorded ×1])
}

