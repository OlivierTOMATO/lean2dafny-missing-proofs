// CLOSED — failing line amc12a_2003_p25-43: theorem amc12a_2003_p25, Dafny line 43 (ERR: assertion might not hold)
// failing Dafny line: assert (exists x: real :: (Real.sqrt(((a * (x * x)) + (b * x))) == 0.0));
// Lean step: simp at h₄ h₅ h₆ h₇ h₈
// hypotheses: 13 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: pass2 — derived the ∃ directly from h₂ at 0 (as for line 28): 0 ∈ {x | 0 ≤ f x} (RealSqrtNonneg), witness w :| 0 ≤ f w ∧ 0 = f w, f w = √(a·w²+b·w) by h₁
// Dafny: finished with 5 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12a_2003_p25.dfy"
lemma {:induction false} vc_amc12a_2003_p25_L43(a: real, b: real, f: real -> real, x_14: real, x_15: real, x_1_11: real, y_4: real)
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
  ensures   exists x_31: real :: Real.sqrt(a * (x_31 * x_31) + b * x_31) == 0.0
{
  // pass2: Lean uses h₃ c (h₃ = h₂ after Set.ext_iff/mem_image); here derived directly from h₂ at c:
  // c ∈ {x | 0 ≤ f x} (Real.sqrt_nonneg), so c ∈ f '' {x | 0 ≤ f x}: a witness w with f w = c, and f w = √(a w² + b w) by h₁
  var c: real := 0.0;  // [ADDED]
  RealSqrtNonneg(a * (c * c) + b * c);  // cite: Real.sqrt_nonneg  // [ADDED]
  assert 0.0 <= f(c);  // [ADDED]
  assert c in (iset y_2: real | 0.0 <= f(y_2));  // [ADDED]
  var w: real :| 0.0 <= f(w) && c == f(w);  // Set.mem_image witness (from h₂)  // [ADDED]
  assert f(w) == Real.sqrt(a * (w * w) + b * w);  // h₁ at w  // [ADDED]
}
