// CLOSED — failing line mathd_numbertheory_175-93: theorem mathd_numbertheory_175, Dafny line 93 (OOR: Verification out of resource (mathd_numbertheory_175))
// failing Dafny line: assert ((((Int.pow((2 * 2 * 2 * 2), 502) % 10) + (10 * (Int.pow((2 * 2 * 2 * 2), 502) / 10))) % 10) == 6) by {
// Lean step: simp [h₁, Nat.pow_mod, Nat.mul_mod, Nat.add_mod, h₅₂₁]
// hypotheses: 11 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: K5 — NatPowMod(2 * 2 * 2 * 2, 502, 10);  (Nat.pow_mod, simp hint lemma)
// Dafny: finished with 24 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/mathd_numbertheory_175.dfy"
lemma {:induction false} vc_mathd_numbertheory_175_L93()
  requires forall n_0_0_1: nat :: n_0_0_1 >= 1 ==> Int.pow(6, n_0_0_1) % 10 == 6
  requires 2 * 2 * 2 * 2 % 10 == 6
  requires 0 <= 2010
  requires 0 <= 502
  requires Int.pow(2, 2010) == Int.pow(2 * 2 * 2 * 2, 502) * (2 * 2)
  requires Int.pow(2 * 2 * 2 * 2, 502) * (2 * 2) % 10 == Int.pow(2 * 2 * 2 * 2, 502) % 10 * (2 * 2 % 10) % 10
  requires 10 > 0
  requires 0 <= Int.pow(2 * 2 * 2 * 2, 502)
  requires 0 <= 10
  requires 10 > 0
  requires Int.pow(2 * 2 * 2 * 2, 502) % 10 + 10 * (Int.pow(2 * 2 * 2 * 2, 502) / 10) == Int.pow(2 * 2 * 2 * 2, 502)
  ensures   (Int.pow(2 * 2 * 2 * 2, 502) % 10 + 10 * (Int.pow(2 * 2 * 2 * 2, 502) / 10)) % 10 == 6
{
  NatPowMod(2 * 2 * 2 * 2, 502, 10);
                  // [TACTIC: «_<;>_» [ h₁ , Nat.pow_mod , Nat.mul_mod , Nat.add_mod , h₅₂₁ ] simp [ h₁ , Nat.pow_mod , Nat.mul_mod , Nat.add_mod , h₅₂₁ ] simp [ h₁ , Nat.pow_mod , Nat.mul_mod , Nat.add_mod , h₅₂₁ ] <;> norm_num norm_num <;> omega omega]
                  // [TACTIC: simp [ h₁ , Nat.pow_mod , Nat.mul_mod , Nat.add_mod , h₅₂₁ ]]
                  // UNCITED Nat.pow_mod: no Lean instance recorded (arguments unknown), not guessed
                  // UNCITED Nat.mul_mod: no Lean instance recorded (arguments unknown), not guessed
                  // UNCITED Nat.add_mod: no Lean instance recorded (arguments unknown), not guessed
                  // `simp` closed the goal; the rest of the chain did not run
                  // UNCITED-APPLIED internal ×2 [exec 320 1260-1322]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_self ×1
}

