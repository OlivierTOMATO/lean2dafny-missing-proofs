// CLOSED — failing line amc12a_2009_p9-388: theorem amc12a_2009_p9, Dafny line 388 (ERR: assertion might not hold)
// failing Dafny line: assert (((3.0 * 6.0) + b) == 7.0) by {
// Lean step: linarith [h₅ 0, h₅ 1, h₅ 2, h₅ 3]
// hypotheses: 16 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: K1 — asserts of h₅ 0, h₅ 1, h₅ 2, h₅ 3 (Lean's linarith hint terms; instances of the ∀ h₅ requires, checked)
// Dafny: finished with 5 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12a_2009_p9.dfy"
lemma {:induction false} vc_amc12a_2009_p9_L388(a: real, b: real, c: real, f: real -> real)
  requires forall x_1: real :: f(x_1 + 3.0) == 3.0 * (x_1 * x_1) + 7.0 * x_1 + 4.0
  requires forall x_3: real :: f(x_3) == a * (x_3 * x_3) + b * x_3 + c
  requires forall x_0_3: real :: true ==> a * ((x_0_3 + 3.0) * (x_0_3 + 3.0)) + b * (x_0_3 + 3.0) + c == 3.0 * (x_0_3 * x_0_3) + 7.0 * x_0_3 + 4.0
  requires forall x_1_1: real :: true ==> a * (x_1_1 * x_1_1 + 6.0 * x_1_1 + 9.0) + b * (x_1_1 + 3.0) + c == 3.0 * (x_1_1 * x_1_1) + 7.0 * x_1_1 + 4.0
  requires forall x_2_1: real :: true ==> a * (x_2_1 * x_2_1) + 6.0 * a * x_2_1 + 9.0 * a + b * x_2_1 + 3.0 * b + c == 3.0 * (x_2_1 * x_2_1) + 7.0 * x_2_1 + 4.0
  requires forall x_3_1: real :: true ==> a * (x_3_1 * x_3_1) + (6.0 * a + b) * x_3_1 + (9.0 * a + 3.0 * b + c) == 3.0 * (x_3_1 * x_3_1) + 7.0 * x_3_1 + 4.0
  requires a == 3.0
  requires forall x_5_1: real :: 3.0 * ((x_5_1 + 3.0) * (x_5_1 + 3.0)) + b * (x_5_1 + 3.0) + c == x_5_1 * x_5_1 * 3.0 + x_5_1 * 7.0 + 4.0
  requires forall x_5_3: real :: f(x_5_3) == x_5_3 * x_5_3 * 3.0 + b * x_5_3 + c
  requires forall x_5_5: real :: 3.0 * (x_5_5 * x_5_5 + x_5_5 * 6.0 + 9.0) + b * (x_5_5 + 3.0) + c == x_5_5 * x_5_5 * 3.0 + x_5_5 * 7.0 + 4.0
  requires forall x_5_7: real :: x_5_7 * x_5_7 * 3.0 + x_5_7 * (3.0 * 6.0) + 3.0 * 9.0 + b * x_5_7 + b * 3.0 + c == x_5_7 * x_5_7 * 3.0 + x_5_7 * 7.0 + 4.0
  requires forall x_5_9: real :: x_5_9 * x_5_9 * 3.0 + x_5_9 * (3.0 * 6.0 + b) + (3.0 * 9.0 + b * 3.0 + c) == x_5_9 * x_5_9 * 3.0 + x_5_9 * 7.0 + 4.0
  requires 3.0 * 6.0 + b - 7.0 + (0.0 * 0.0 * 3.0 + 0.0 * (3.0 * 6.0 + b) + (3.0 * 9.0 + b * 3.0 + c) - (0.0 * 0.0 * 3.0 + 0.0 * 7.0 + 4.0)) + (0.0 - (1.0 * 1.0 * 3.0 + 1.0 * (3.0 * 6.0 + b) + (3.0 * 9.0 + b * 3.0 + c) - (1.0 * 1.0 * 3.0 + 1.0 * 7.0 + 4.0))) == 0.0
  requires 7.0 - (3.0 * 6.0 + b) + (0.0 - (0.0 * 0.0 * 3.0 + 0.0 * (3.0 * 6.0 + b) + (3.0 * 9.0 + b * 3.0 + c) - (0.0 * 0.0 * 3.0 + 0.0 * 7.0 + 4.0))) + (1.0 * 1.0 * 3.0 + 1.0 * (3.0 * 6.0 + b) + (3.0 * 9.0 + b * 3.0 + c) - (1.0 * 1.0 * 3.0 + 1.0 * 7.0 + 4.0)) == 0.0
  requires (0 as real) == 0.0
  requires (1 as real) == 1.0
  ensures   3.0 * 6.0 + b == 7.0
{
  // K1: linarith hint terms h₅ 0, h₅ 1, h₅ 2, h₅ 3 (exec 286)
  assert 0.0 * 0.0 * 3.0 + 0.0 * (3.0 * 6.0 + b) + (3.0 * 9.0 + b * 3.0 + c) == 0.0 * 0.0 * 3.0 + 0.0 * 7.0 + 4.0;  // h₅ 0  // [ADDED]
  assert 1.0 * 1.0 * 3.0 + 1.0 * (3.0 * 6.0 + b) + (3.0 * 9.0 + b * 3.0 + c) == 1.0 * 1.0 * 3.0 + 1.0 * 7.0 + 4.0;  // h₅ 1  // [ADDED]
  assert 2.0 * 2.0 * 3.0 + 2.0 * (3.0 * 6.0 + b) + (3.0 * 9.0 + b * 3.0 + c) == 2.0 * 2.0 * 3.0 + 2.0 * 7.0 + 4.0;  // h₅ 2  // [ADDED]
  assert 3.0 * 3.0 * 3.0 + 3.0 * (3.0 * 6.0 + b) + (3.0 * 9.0 + b * 3.0 + c) == 3.0 * 3.0 * 3.0 + 3.0 * 7.0 + 4.0;  // h₅ 3  // [ADDED]
      // [TACTIC: «Linarith[_]At___» [ h₅ 0 , h₅ 1 , h₅ 2 , h₅ 3 ]]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2069-2110 exec 286)
      // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(7 : ℝ) - ((3 : ℝ) * (6 : ℝ) + b) + -((0 : ℝ) ^ (2 : ℕ) * (3 : ℝ) + (0 : ℝ) * ((3 : ℝ) * (6 : ℝ) + b) + ((3 : ℝ) * (9 :…`
      cert_identity_11(a, b, c, f);  // cert: Linarith.lt_of_lt_of_eq
      cert_identity_12(a, b, c, f);  // cert: Linarith.lt_of_lt_of_eq
      // UNCITED-APPLIED internal ×52 [exec 286 2069-2110]: applications made inside the tactic's own automation, not stated — mul_comm ×15, sub_neg_of_lt ×2, sub_eq_zero_of_eq ×2, neg_eq_zero ×2; machinery/glue: congr ×8, Eq.trans ×8, congrArg ×7, Linarith.lt_of_lt_of_eq ×4 (+4 more heads, ×4)
      // UNCITED-APPLIED internal ×199 [exec 288 2069-2110]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.mul_add ×8 (+40 more heads, ×167) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
      // GAP: 4 of the 4 applications of h₅ written here (`h₅ 0`, `h₅ 1`, `h₅ 2`, `h₅ 3`) have no stated instance (no renderable Lean `inst` record for them): not stated
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 287, 288)]
      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 287, 288)]
      // UNCITED-APPLIED mul_comm ×6: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (3 : ℝ), b := x ^ (2 : ℕ)); (a := (6 : ℝ), b := (3 : ℝ)); (a := (3 : ℝ) * (6 : ℝ) + b, b := x); (a := (9 : ℝ), b := (3 : ℝ)); (a := (3 : ℝ), b := b); (a := (7 : ℝ), b := x)
      // UNCITED-APPLIED internal ×186 [exec 287 2069-2110]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×8, Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Tactic.Ring.mul_add ×8 (+40 more heads, ×154) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
}

