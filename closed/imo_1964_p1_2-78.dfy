// CLOSED — failing line imo_1964_p1_2-78: theorem imo_1964_p1_2, Dafny line 78 (OOR: Verification out of resource (imo_1964_p1_2))
// failing Dafny line: ensures (!NatDvd(7, (Int.pow(2, n) + 1)))
// Lean step: rw [Nat.dvd_iff_mod_eq_zero]
// hypotheses: 0 facts Z3 had at the line (goal itself removed: 0; facts derived inside the helper lemma's own body removed: 9); nothing assumed beyond the facts in scope
// how it closes: K2pow — MathPrelude Int.pow: drop `ensures if k == 0 then p == 1 else p == b * pow(b, k - 1)` (body unchanged; sign ensures kept) — work-dir copy of library + translation
// Dafny: finished with 33 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)
// NOTE: uses a MODIFIED library copy: see alt/imo_1964_p1_2-78/LIBRARY_CHANGES.diff

include "alt/imo_1964_p1_2-78/out/imo_1964_p1_2.dfy"
lemma {:induction false} vc_imo_1964_p1_2_L78(n: nat)
  ensures   !NatDvd(7, Int.pow(2, n) + 1)
{
 
  // [TACTIC: rwSeq [ Nat.dvd_iff_mod_eq_zero ]]
  assert (0 < (7));  // precondition of NatDvdIffModEqZero (Lean: Nat.dvd_iff_mod_eq_zero)
  NatDvdIffModEqZero(7, (Int.pow(2, n) + 1));  // cite: Nat.dvd_iff_mod_eq_zero
  // UNCITED-APPLIED congrArg(fun (_a : Prop) => ¬_a): no library counterpart (not stated) [exec 8 234-262]
  assert !(((Int.pow(2, n) + 1) % 7) == 0) by {  // sub-goal before `have` (Lean state) // @tac 335-941 // @tac 1054-1118 // @tac 1054-1079
    // have h : 2 ^ n % 7 == 1 || 2 ^ n % 7 == 2 || 2 ^ n % 7 == 4  [type from Lean state]
    assert (((Int.pow(2, n) % 7) == 1) || (((Int.pow(2, n) % 7) == 2) || ((Int.pow(2, n) % 7) == 4))) by { // @tac 486-941
      // induction n → recursive lemma induction_helper_1
      induction_helper_1(n);
    }
    // [TACTIC: «_<;>_» h with ( h | h | h ) <;> simp [ h , Nat.add_mod , Nat.mul_mod ] simp [ h , Nat.add_mod , Nat.mul_mod ] simp [ h , Nat.add_mod , Nat.mul_mod ]]
    // [TACTIC: rcases h with ( h | h | h )]
    if (((Int.pow(2, n) % 7) == 1)) {  // sub-goal of `simp` (Lean state)
      NatAddMod(Int.pow(2, n), 1, 7);  // cite: Nat.add_mod
      // UNCITED Nat.mul_mod: named in this rewriting step; no record of Lean's proof attributes an application of it to this execution (its recorded applications are at other tactics of the proof; a rewrite at a hypothesis is filed under the tactic that later uses the hypothesis, and a conditional / under-binder simp rewrite may be unrecorded), so whether it was applied here is not known; not stated
      assert !(((Int.pow(2, n) + 1) % 7) == 0);  // sub-goal of `simp` (Lean state) // @tac 1084-1118
      // UNCITED-APPLIED internal ×9 [exec 186 1084-1118]: applications made inside the tactic's own automation, not stated — Nat.one_mod ×1; machinery/glue: congrArg ×4, Eq.trans ×2, of_eq_true ×1, congr ×1 (cited in this block, not counted here: Nat.add_mod [Lean recorded ×1])
    }
    if (((Int.pow(2, n) % 7) == 2)) {  // sub-goal of `simp` (Lean state)
      NatAddMod(Int.pow(2, n), 1, 7);  // cite: Nat.add_mod
      // UNCITED Nat.mul_mod: named in this rewriting step; no record of Lean's proof attributes an application of it to this execution (its recorded applications are at other tactics of the proof; a rewrite at a hypothesis is filed under the tactic that later uses the hypothesis, and a conditional / under-binder simp rewrite may be unrecorded), so whether it was applied here is not known; not stated
      assert !(((Int.pow(2, n) + 1) % 7) == 0);  // sub-goal of `simp` (Lean state) // @tac 1084-1118
      // UNCITED-APPLIED internal ×9 [exec 189 1084-1118]: applications made inside the tactic's own automation, not stated — Nat.one_mod ×1; machinery/glue: congrArg ×4, Eq.trans ×2, of_eq_true ×1, congr ×1 (cited in this block, not counted here: Nat.add_mod [Lean recorded ×1])
    }
    if (((Int.pow(2, n) % 7) == 4)) {  // sub-goal of `simp` (Lean state)
      NatAddMod(Int.pow(2, n), 1, 7);  // cite: Nat.add_mod
      // UNCITED Nat.mul_mod: named in this rewriting step; no record of Lean's proof attributes an application of it to this execution (its recorded applications are at other tactics of the proof; a rewrite at a hypothesis is filed under the tactic that later uses the hypothesis, and a conditional / under-binder simp rewrite may be unrecorded), so whether it was applied here is not known; not stated
      assert !(((Int.pow(2, n) + 1) % 7) == 0);  // sub-goal of `simp` (Lean state) // @tac 1084-1118
      // UNCITED-APPLIED internal ×9 [exec 192 1084-1118]: applications made inside the tactic's own automation, not stated — Nat.one_mod ×1; machinery/glue: congrArg ×4, Eq.trans ×2, of_eq_true ×1, congr ×1 (cited in this block, not counted here: Nat.add_mod [Lean recorded ×1])
    }
  }
}

// side checks at the same line (not the reported failure): 2 check(s)
// side check: value always satisfies the subset constraints of 'nat'
lemma {:induction false} vc_imo_1964_p1_2_L78_side1(n: int)
  requires 0 <= n
  ensures  0 <= 7
{ }

// side check: value always satisfies the subset constraints of 'nat'
lemma {:induction false} vc_imo_1964_p1_2_L78_side2(n: nat)
  requires 0 <= n
  requires 0 <= 7
  ensures  0 <= Int.pow(2, n) + 1
{ }
