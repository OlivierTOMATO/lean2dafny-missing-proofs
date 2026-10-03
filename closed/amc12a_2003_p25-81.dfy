// CLOSED — failing line amc12a_2003_p25-81: theorem amc12a_2003_p25, Dafny line 81 (ERR: assertion might not hold)
// failing Dafny line: assert exists x_1: real  :: Real.sqrt(((a * (x_1 * x_1)) + (b * x_1))) == 2.0;
// Lean step: 
// hypotheses: 23 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: K5 — forall t: real ensures 0.0 <= Real.sqrt(t) { RealSqrtNonneg(t); }  (Mathlib Real.sqrt_nonneg; named in Lean's `simp only [...]` at line 15 and in the final nlinarith hints)
// Dafny: finished with 2 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12a_2003_p25.dfy"
lemma {:induction false} vc_amc12a_2003_p25_L81(a: real, b: real, f: real -> real, x_14: real, x_15: real, x_1_11: real, x_48: real, y_4: real)
  requires 0.0 < b
  requires forall x_1: real :: f(x_1) == Real.sqrt(a * (x_1 * x_1) + b * x_1)
  requires (iset y_2: real | 0.0 <= f(y_2)) == (iset y_3: real | exists x_1_4: real :: 0.0 <= f(x_1_4) && y_3 == f(x_1_4))
  requires (0.0 <= f(x_14)) || (f(x_14) < 0.0)
  requires (0.0 <= f(x_15)) || (f(x_15) < 0.0)
  requires (0.0 <= f(x_1_11)) || (f(x_1_11) < 0.0)
  requires (exists x_1_12: real :: 0.0 <= f(x_1_12) && y_4 == f(x_1_12)) || (!(exists x_1_12: real :: 0.0 <= f(x_1_12) && y_4 == f(x_1_12)))
  requires forall x_19: real :: true == (exists x_1_17: real :: Real.sqrt(a * (x_1_17 * x_1_17) + b * x_1_17) == x_19)
  requires true == (exists x_21: real :: Real.sqrt(a * (x_21 * x_21) + b * x_21) == 0.0)
  requires true == (exists x_23: real :: Real.sqrt(a * (x_23 * x_23) + b * x_23) == 1.0)
  requires true == (exists x_25: real :: Real.sqrt(a * (x_25 * x_25) + b * x_25) == 0.0 - 1.0)
  requires true == (exists x_27: real :: Real.sqrt(a * (x_27 * x_27) + b * x_27) == 2.0)
  requires true == (exists x_29: real :: Real.sqrt(a * (x_29 * x_29) + b * x_29) == 0.0 - 2.0)
  requires exists x_31: real :: Real.sqrt(a * (x_31 * x_31) + b * x_31) == 0.0
  requires exists x_33: real :: a * (x_33 * x_33) + b * x_33 == 1.0
  requires exists x_35: real :: Real.sqrt(a * (x_35 * x_35) + b * x_35) == 0.0 - 1.0
  requires exists x_37: real :: Real.sqrt(a * (x_37 * x_37) + b * x_37) == 2.0
  requires exists x_39: real :: Real.sqrt(a * (x_39 * x_39) + b * x_39) == 0.0 - 2.0
  requires exists x_41: real :: a * (x_41 * x_41) + b * x_41 == 1.0
  requires exists x_44: real :: Real.sqrt(a * (x_44 * x_44) + b * x_44) == 0.0 - 1.0
  requires exists x_47: real :: Real.sqrt(a * (x_47 * x_47) + b * x_47) == 0.0
  requires (true && Real.sqrt(a * (0.0 * 0.0) + b * 0.0) == 0.0) || (exists as_x0: real :: Real.sqrt(a * (as_x0 * as_x0) + b * as_x0) == 0.0)
  requires Real.sqrt(a * (x_48 * x_48) + b * x_48) == 0.0
  ensures   exists x_1_3_1: real :: Real.sqrt(a * (x_1_3_1 * x_1_3_1) + b * x_1_3_1) == 2.0
{
  forall t: real ensures 0.0 <= Real.sqrt(t) { RealSqrtNonneg(t); }  // K5: Mathlib Real.sqrt_nonneg (named in Lean simp only set, line 15; used by nlinarith)  // [ADDED]
}

