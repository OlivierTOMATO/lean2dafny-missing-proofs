// NOT CLOSED — failing line amc12b_2003_p17-101: theorem amc12b_2003_p17, Dafny line 101 (ERR: assertion might not hold)
// failing Dafny line: assert ((Real.log(x) + (3.0 * Real.log(y))) == 1.0);
// Lean step: field_simp [Real.log_mul, Real.log_pow, hx, hy, hxy] at h₁ h₂ ⊢
// hypotheses: 10 facts Z3 had at the line; nothing assumed beyond the facts in scope
// not closed: tried H0=failed, K1=failed, K2pow=oor, K5=failed, K3=failed, K1K5=failed, K1K2pow=failed; this file is the honest base attempt
// Dafny: finished with 5 verified, 1 error  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12b_2003_p17.dfy"
lemma {:induction false} vc_amc12b_2003_p17_L101(x: real, y: real)
  requires 0.0 < x
  requires 0.0 < y
  requires Real.log(x * Real.pow(y, 3)) == 1.0
  requires Real.log(Real.pow(x, 2) * y) == 1.0
  requires forall x0: real, y0: real :: 0.0 < x0 && 0.0 < y0 && Real.log(x0 * Real.pow(y0, 3)) == 1.0 && Real.log(Real.pow(x0, 2) * y0) == 1.0 && ((0.0 <= x0 && x0 <= x - 1.0) || (x0 == x && 0.0 <= y0 && y0 <= y - 1.0)) ==> Real.log(x0 * y0) == 3.0 / 5.0
  requires 0.0 < x * y
  requires (0 as real) == 0.0
  requires x != 0.0
  requires y != 0.0
  requires Real.log(x * y) == Real.log(x) + Real.log(y)
  ensures   Real.log(x) + 3.0 * Real.log(y) == 1.0
{ }

