// CLOSED — failing line mathd_algebra_156-251: theorem mathd_algebra_156, Dafny line 251 (ERR: assertion might not hold)
// failing Dafny line: assert ((((x * x) - 2.0) == 0.0) || (((x * x) - 3.0) == 0.0));
// Lean step: apply eq_zero_or_eq_zero_of_mul_eq_zero h₇₂
// hypotheses: 9 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: K1 — EqZeroOrEqZeroOfMulEqZero(x * x - 2.0, x * x - 3.0);
// Dafny: finished with 2 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/mathd_algebra_156.dfy"
lemma {:induction false} vc_mathd_algebra_156_L251(f: real -> real, g: real -> real, x: real, y: real)
  requires forall t_1: real :: f(t_1) == t_1 * t_1 * t_1 * t_1
  requires forall t_3: real :: g(t_3) == 5.0 * (t_3 * t_3) - 6.0
  requires f(x) == g(x)
  requires f(y) == g(y)
  requires x * x < y * y
  requires x * x * x * x - 5.0 * (x * x) + 6.0 == 0.0
  requires y * y * y * y - 5.0 * (y * y) + 6.0 == 0.0
  requires (x * x - 2.0) * (x * x - 3.0) == 0.0
  requires (x * x - 2.0 != 0.0) || (x * x - 2.0 == 0.0)
  ensures   x * x - 2.0 == 0.0 || x * x - 3.0 == 0.0
{
  EqZeroOrEqZeroOfMulEqZero(x * x - 2.0, x * x - 3.0);
}

