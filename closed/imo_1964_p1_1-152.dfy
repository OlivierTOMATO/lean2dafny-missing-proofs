// CLOSED — failing line imo_1964_p1_1-152: theorem imo_1964_p1_1, Dafny line 152 (OOR: Verification out of resource (imo_1964_p1_1))
// failing Dafny line: assert NatDvd(3, ((n % 3) + (3 * (n / 3)))) by {
// Lean step: simp_all [Int.ModEq, Nat.ModEq]
// hypotheses: 14 facts Z3 had at the line (goal itself removed: 0; the block's own asserts removed: 2); nothing assumed beyond the facts in scope
// how it closes: own-lemma — nothing: the file's own proof body, hypotheses = facts in scope minus the goal and minus the block's own asserts
// Dafny: finished with 35 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/imo_1964_p1_1.dfy"
lemma {:induction false} vc_imo_1964_p1_1_L152(n: nat)
  requires 0 <= n
  requires NatDvd(7, tsub(Int.pow(2, n), 1))
  requires if 7 == 0 then tsub(Int.pow(2, n), 1) == 0 else tsub(Int.pow(2, n), 1) % 7 == 0
  requires forall n0: nat :: NatDvd(7, tsub(Int.pow(2, n0), 1)) && 0 <= n0 && n0 < n ==> NatDvd(3, n0)
  requires IntMod(Int.pow(2, n), 7) == IntMod(1, 7)
  requires orderOf(2, 7) == 3
  requires 0 <= 3
  requires 3 > 0
  requires 3 > 0
  requires n % 3 + 3 * (n / 3) == n
  requires NatDvd(3, n) || (3 == 0 ==> n == 0)
  requires NatDvd(3, n) || (3 != 0 ==> n % 3 == 0)
  requires NatMod(n, 3) == 0
  requires 0 <= n % 3 + 3 * (n / 3)
  ensures   (NatDvd(3, n % 3 + 3 * (n / 3)) || (3 == 0 ==> n % 3 + 3 * (n / 3) == 0))
{
    // [TACTIC: «_<;>_» [ Int.ModEq , Nat.ModEq ] simp_all [ Int.ModEq , Nat.ModEq ] simp_all [ Int.ModEq , Nat.ModEq ] <;> omega omega]
    // [TACTIC: choice [ Int.ModEq , Nat.ModEq ] simp_all [ Int.ModEq , Nat.ModEq ] simp_all [ Int.ModEq , Nat.ModEq ]]
    // UNCITED Int.ModEq: no Lean instance recorded (arguments unknown), not guessed
    // UNCITED Nat.ModEq: named here, no record of its application here; the harvest has no application record for this execution at all (its proof term was not captured), so whether Lean applied it here is unknown: not stated
    assert ((Int.pow(2, n) % 7) == 1);  // hypothesis h₁ after `simp_all` (Lean state) // @tac-hyp 1815-1846
    // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
    assert (NatDvd((3), (n)));  // precondition of NatModEqZeroOfDvd (Lean: Nat.mod_eq_zero_of_dvd)
    NatModEqZeroOfDvd(3, n);  // cite: Nat.mod_eq_zero_of_dvd [applied by the tactic, not named in it]
    // UNCITED-APPLIED internal ×57 [exec 425 1853-1858]: applications made inside the tactic's own automation, not stated — Int.ofNat_emod ×2, Int.emod_def ×2, Int.sub_nonneg_of_le ×2, Int.add_one_le_of_lt ×2, Int.sub_eq_zero_of_eq ×1, Int.lt_mul_ediv_self_add ×1, Int.ofNat_add ×1, Int.ofNat_mul ×1, Int.ofNat_ediv ×1, Nat.emod_pos_of_not_dvd ×1; machinery/glue: Eq.symm ×14, Lean.Omega.LinearCombo.sub_eval ×5, Lean.Omega.Int.mul_congr ×3, Lean.Omega.LinearCombo.add_eval ×3 (+14 more heads, ×18) (cited in this block, not counted here: Nat.mod_eq_zero_of_dvd [Lean recorded ×1])
}

