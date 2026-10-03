// CLOSED — failing line amc12a_2003_p25-40: theorem amc12a_2003_p25, Dafny line 40 (ERR: assertion might not hold)
// failing Dafny line: assert (true <==> (exists x: real :: (true && (Real.sqrt(((a * (x * x)) + (b * x))) == -(2.0)))));
// Lean step: h₈
// hypotheses: 12 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: pass2 — derived h₃ (-2) directly from h₂ at c=-2: RealSqrtNonneg ⇒ c ∈ S; ghost sets S,R with S == R and pointwise `forall o :: o in S <==> o in R` (Set.ext_iff), c ∈ R ⇒ witness w :| 0 ≤ f w ∧ c = f w (Set.mem_image); assert f w = √(a·w²+b·w) (h₁ at w); note: after the witness, 0 ≤ f w ∧ f w = -2 is contradictory (the sqrt value is negative, exactly what Lean later refutes with Real.sqrt_nonneg), so Dafny closes the goal from it — every step is checked, nothing assumed
// Dafny: finished with 9 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12a_2003_p25.dfy"
lemma {:induction false} vc_amc12a_2003_p25_L40(a: real, b: real, f: real -> real, x_14: real, x_15: real, x_1_11: real, y_4: real)
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
  ensures   true == (exists x_29: real :: Real.sqrt(a * (x_29 * x_29) + b * x_29) == 0.0 - 2.0)
{
  // pass2: Lean uses h₃ c (h₃ = h₂ after Set.ext_iff/mem_image); derived here directly from h₂ at c:
  // c ∈ {x | 0 ≤ f x} (Real.sqrt_nonneg), so c ∈ f '' {x | 0 ≤ f x}: a witness w with f w = c, and f w = √(a w² + b w) by h₁
  var c: real := 0.0 - 2.0;  // [ADDED]
  RealSqrtNonneg(a * (c * c) + b * c);  // cite: Real.sqrt_nonneg  // [ADDED]
  assert 0.0 <= f(c);  // [ADDED]
  ghost var S := iset y_2: real | 0.0 <= f(y_2);  // [ADDED]
  ghost var R := iset y_3: real | exists x_1_4: real :: 0.0 <= f(x_1_4) && y_3 == f(x_1_4);  // [ADDED]
  assert S == R;  // h₂  // [ADDED]
  assert forall o: real :: o in S <==> o in R;  // Set.ext_iff  // [ADDED]
  assert c in S;  // [ADDED]
  assert c in R;  // [ADDED]
  assert exists x_1_4: real :: 0.0 <= f(x_1_4) && c == f(x_1_4);  // Set.mem_image  // [ADDED]
  var w: real :| 0.0 <= f(w) && c == f(w);  // [ADDED]
  assert f(w) == Real.sqrt(a * (w * w) + b * w);  // h₁ at w  // [ADDED]
}
