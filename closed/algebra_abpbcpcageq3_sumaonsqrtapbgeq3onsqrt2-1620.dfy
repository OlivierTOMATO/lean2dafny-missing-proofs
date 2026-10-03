// NOT CLOSED — failing line algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2-1620: theorem algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2, Dafny line 1620 (OOR: Verification out of resource (algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2))
// failing Dafny line: SqNonneg((b - c)); assert (0.0 <= ((b - c) * (b - c)));
// Lean step: h₉₀
// hypotheses: 43 facts Z3 had at the line (goal itself removed: 1; the block's own asserts removed: 0); nothing assumed beyond the facts in scope
// not closed: tried H0=failed; this file is the honest base attempt
// Dafny: finished with 2 verified, 1 error  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2.dfy"
lemma {:induction false} vc_algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2_L1620(a: real, b: real, c: real)
  requires 0.0 < a
  requires 0.0 < b
  requires 0.0 < c
  requires 3.0 <= a * b + b * c + c * a
  requires a + b + c >= 3.0
  requires forall x_1_1: real, y_1_1: real :: 0.0 < x_1_1 && 0.0 < y_1_1 ==> Real.sqrt(x_1_1 + y_1_1) <= Real.div(x_1_1 + y_1_1 + 2.0, 2.0 * Real.sqrt(2.0))
  requires Real.div(a, Real.sqrt(a + b)) >= Real.div(2.0 * Real.sqrt(2.0) * a, a + b + 2.0)
  requires Real.div(b, Real.sqrt(b + c)) >= Real.div(2.0 * Real.sqrt(2.0) * b, b + c + 2.0)
  requires Real.div(c, Real.sqrt(c + a)) >= Real.div(2.0 * Real.sqrt(2.0) * c, c + a + 2.0)
  requires Real.div(a, Real.sqrt(a + b)) + Real.div(b, Real.sqrt(b + c)) + Real.div(c, Real.sqrt(c + a)) >= Real.div(2.0 * Real.sqrt(2.0) * a, a + b + 2.0) + Real.div(2.0 * Real.sqrt(2.0) * b, b + c + 2.0) + Real.div(2.0 * Real.sqrt(2.0) * c, c + a + 2.0)
  requires 0.0 < Real.sqrt(2.0)
  requires 0.0 < 2.0 * Real.sqrt(2.0)
  requires 0.0 < a + b + 2.0
  requires 0.0 < b + c + 2.0
  requires 0.0 < c + a + 2.0
  requires 0.0 < (a + b + 2.0) * (b + c + 2.0) * (c + a + 2.0)
  requires 0.0 < a * b
  requires 0.0 < b * c
  requires 0.0 < c * a
  requires (0.0 < a + b + 2.0) || (a + b + 2.0 <= 0.0)
  requires 0.0 < (a + b + 2.0) * (b + c + 2.0)
  requires (0.0 < a + b + 2.0) || (a + b + 2.0 <= 0.0)
  requires ((0.0 < a + b + 2.0) && (0.0 < b + c + 2.0) && (0.0 < (a + b + 2.0) * (b + c + 2.0))) || (!(0.0 < a + b + 2.0 && 0.0 < b + c + 2.0))
  requires 0.0 < 4.0
  requires (0.0 < 4.0) || (!(0.0 < 4.0))
  requires 0.0 < 4.0
  requires 0.0 < 4.0
  requires (3.0 / 4.0 <= ((a * (b + c + 2.0) + b * (a + b + 2.0)) * (c + a + 2.0) + c * ((a + b + 2.0) * (b + c + 2.0))) / ((a + b + 2.0) * (b + c + 2.0) * (c + a + 2.0))) == (3.0 * ((a + b + 2.0) * (b + c + 2.0) * (c + a + 2.0)) <= ((a * (b + c + 2.0) + b * (a + b + 2.0)) * (c + a + 2.0) + c * ((a + b + 2.0) * (b + c + 2.0))) * 4.0)
  requires (0.0 <= (c - a) * (c - a)) || ((c - a) * (c - a) < 0.0)
  requires ((0.0 <= (c - a) * (c - a)) && (0.0 <= (b - 1.0) * (b - 1.0)) && (0.0 <= (c - a) * (c - a) * ((b - 1.0) * (b - 1.0)))) || (!(0.0 <= (c - a) * (c - a) && 0.0 <= (b - 1.0) * (b - 1.0)))
  requires 0.0 <= (c - a) * (c - a)
  requires 0.0 <= (b - 1.0) * (b - 1.0)
  requires (0.0 <= (c - a) * (c - a)) || ((c - a) * (c - a) < 0.0)
  requires ((0.0 <= (c - a) * (c - a)) && (0.0 <= a) && (0.0 <= (c - a) * (c - a) * a) && ((0.0 <= (c - a) * (c - a)) || ((c - a) * (c - a) < 0.0))) || ((!(0.0 <= (c - a) * (c - a) && 0.0 <= a)) && ((0.0 <= (c - a) * (c - a)) || ((c - a) * (c - a) < 0.0)))
  requires ((0.0 <= (c - a) * (c - a)) && (3.0 - (a * b + b * c + c * a) <= 0.0) && ((c - a) * (c - a) * (3.0 - (a * b + b * c + c * a)) <= 0.0) && ((0.0 <= (a - b) * (a - b)) || ((a - b) * (a - b) < 0.0))) || ((!(0.0 <= (c - a) * (c - a) && 3.0 - (a * b + b * c + c * a) <= 0.0)) && ((0.0 <= (a - b) * (a - b)) || ((a - b) * (a - b) < 0.0)))
  requires ((0.0 <= (a - b) * (a - b)) && (0.0 <= (c - 1.0) * (c - 1.0)) && (0.0 <= (a - b) * (a - b) * ((c - 1.0) * (c - 1.0)))) || (!(0.0 <= (a - b) * (a - b) && 0.0 <= (c - 1.0) * (c - 1.0)))
  requires 0.0 <= (a - b) * (a - b)
  requires 0.0 <= (c - 1.0) * (c - 1.0)
  requires (0.0 <= (a - b) * (a - b)) || ((a - b) * (a - b) < 0.0)
  requires ((0.0 <= (a - b) * (a - b)) && (0.0 <= b) && (0.0 <= (a - b) * (a - b) * b) && ((0.0 <= (a - b) * (a - b)) || ((a - b) * (a - b) < 0.0))) || ((!(0.0 <= (a - b) * (a - b) && 0.0 <= b)) && ((0.0 <= (a - b) * (a - b)) || ((a - b) * (a - b) < 0.0)))
  requires ((0.0 <= (a - b) * (a - b)) && (3.0 - (a * b + b * c + c * a) <= 0.0) && ((a - b) * (a - b) * (3.0 - (a * b + b * c + c * a)) <= 0.0) && ((0.0 <= (a - 1.0) * (a - 1.0)) || ((a - 1.0) * (a - 1.0) < 0.0))) || ((!(0.0 <= (a - b) * (a - b) && 3.0 - (a * b + b * c + c * a) <= 0.0)) && ((0.0 <= (a - 1.0) * (a - 1.0)) || ((a - 1.0) * (a - 1.0) < 0.0)))
  requires ((0.0 <= (a - 1.0) * (a - 1.0)) && (0.0 <= (b - c) * (b - c)) && (0.0 <= (a - 1.0) * (a - 1.0) * ((b - c) * (b - c)))) || (!(0.0 <= (a - 1.0) * (a - 1.0) && 0.0 <= (b - c) * (b - c)))
  requires 0.0 <= (a - 1.0) * (a - 1.0)
  ensures   0.0 <= (b - c) * (b - c)
{ }

