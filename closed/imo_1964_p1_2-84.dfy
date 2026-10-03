// CLOSED — failing line imo_1964_p1_2-84: theorem imo_1964_p1_2, Dafny line 84 (OOR: Verification out of resource (imo_1964_p1_2))
// failing Dafny line: assert !(((Int.pow(2, n) + 1) % 7) == 0) by {
// Lean step: have h : 2 ^ n % 7 = 1 ∨ 2 ^ n % 7 = 2 ∨ 2 ^ n % 7 = 4 := by
// hypotheses: 9 facts Z3 had at the line (goal itself removed: 0; the block's own asserts removed: 1); nothing assumed beyond the facts in scope
// how it closes: own-lemma — nothing: the file's own proof body, hypotheses = facts in scope minus the goal and minus the block's own asserts
// Dafny: finished with 114 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/imo_1964_p1_2.dfy"
lemma {:induction false} vc_imo_1964_p1_2_L84(n: nat)
  requires 0 <= n
  requires forall n0: nat :: true && 0 <= n0 && n0 < n ==> !NatDvd(7, Int.pow(2, n0) + 1)
  requires 0 < 7
  requires 0 <= 7
  requires 0 <= Int.pow(2, n) + 1
  requires 0 < 7
  requires ((Int.pow(2, n) + 1) % 7 == 0) == (exists q: nat :: Int.pow(2, n) + 1 == 7 * q)
  requires 7 != 0
  requires ((Int.pow(2, n) % 7 != 1) && (Int.pow(2, n) % 7 != 2) && (Int.pow(2, n) % 7 == 4) && (0 <= Int.pow(2, n)) && (0 <= 1) && (NatMod(Int.pow(2, n) + 1, 7) == NatMod(NatMod(Int.pow(2, n), 7) + NatMod(1, 7), 7)) && ((Int.pow(2, n) + 1) % 7 != 0)) || ((Int.pow(2, n) % 7 != 1) && (Int.pow(2, n) % 7 != 2) && (Int.pow(2, n) % 7 != 4)) || ((Int.pow(2, n) % 7 != 1) && (Int.pow(2, n) % 7 == 2) && (0 <= Int.pow(2, n)) && (0 <= 1) && (NatMod(Int.pow(2, n) + 1, 7) == NatMod(NatMod(Int.pow(2, n), 7) + NatMod(1, 7), 7)) && ((Int.pow(2, n) + 1) % 7 != 0) && (Int.pow(2, n) % 7 == 4)) || ((Int.pow(2, n) % 7 != 1) && (Int.pow(2, n) % 7 == 2) && (0 <= Int.pow(2, n)) && (0 <= 1) && (NatMod(Int.pow(2, n) + 1, 7) == NatMod(NatMod(Int.pow(2, n), 7) + NatMod(1, 7), 7)) && ((Int.pow(2, n) + 1) % 7 != 0) && (Int.pow(2, n) % 7 != 4)) || ((Int.pow(2, n) % 7 == 1) && (0 <= Int.pow(2, n)) && (0 <= 1) && (NatMod(Int.pow(2, n) + 1, 7) == NatMod(NatMod(Int.pow(2, n), 7) + NatMod(1, 7), 7)) && ((Int.pow(2, n) + 1) % 7 != 0) && (Int.pow(2, n) % 7 == 2) && (Int.pow(2, n) % 7 == 4)) || ((Int.pow(2, n) % 7 == 1) && (0 <= Int.pow(2, n)) && (0 <= 1) && (NatMod(Int.pow(2, n) + 1, 7) == NatMod(NatMod(Int.pow(2, n), 7) + NatMod(1, 7), 7)) && ((Int.pow(2, n) + 1) % 7 != 0) && (Int.pow(2, n) % 7 == 2) && (Int.pow(2, n) % 7 != 4)) || ((Int.pow(2, n) % 7 == 1) && (0 <= Int.pow(2, n)) && (0 <= 1) && (NatMod(Int.pow(2, n) + 1, 7) == NatMod(NatMod(Int.pow(2, n), 7) + NatMod(1, 7), 7)) && ((Int.pow(2, n) + 1) % 7 != 0) && (Int.pow(2, n) % 7 != 2) && (Int.pow(2, n) % 7 == 4)) || ((Int.pow(2, n) % 7 == 1) && (0 <= Int.pow(2, n)) && (0 <= 1) && (NatMod(Int.pow(2, n) + 1, 7) == NatMod(NatMod(Int.pow(2, n), 7) + NatMod(1, 7), 7)) && ((Int.pow(2, n) + 1) % 7 != 0) && (Int.pow(2, n) % 7 != 2) && (Int.pow(2, n) % 7 != 4))
  ensures   (Int.pow(2, n) + 1) % 7 != 0
{
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

