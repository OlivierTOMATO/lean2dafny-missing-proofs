// NOT CLOSED — failing line amc12a_2003_p25-44: theorem amc12a_2003_p25, Dafny line 44 (ERR: assertion might not hold)
// failing Dafny line: assert (exists x: real :: (((a * (x * x)) + (b * x)) == 1.0));
// Lean step: simp at h₄ h₅ h₆ h₇ h₈
// hypotheses: 14 facts Z3 had at the line; nothing assumed beyond the facts in scope
// not closed: tried H0=failed, K1=failed, K3=failed, K1b=failed; this file is the honest base attempt
// Dafny: finished with 0 verified, 1 error  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12a_2003_p25.dfy"
lemma {:induction false} vc_amc12a_2003_p25_L44(a: real, b: real, f: real -> real, x_14: real, x_15: real, x_1_11: real, y_4: real)
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
  ensures   exists x_33: real :: a * (x_33 * x_33) + b * x_33 == 1.0
{ }

