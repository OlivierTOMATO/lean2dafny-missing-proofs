// CLOSED — failing line algebra_apbpceq2_abpbcpcaeq1_aleq1on3anbleq1ancleq4on3-799: theorem algebra_apbpceq2_abpbcpcaeq1_aleq1on3anbleq1ancleq4on3, Dafny line 799 (OOR: Verification out of resource (algebra_apbpceq2_abpbcpcaeq1_aleq1on3anbleq1ancleq4on3))
// failing Dafny line: if ((a - b) <= 0.0) && (((((a * b) + (b * c)) + (c * a)) - 1.0) == 0.0) { assert (((a - b) * ((((a * b) + (b * c)) + (c * a)) - 1.0)) == 0.0); }
// Lean step: h₆₁
// hypotheses: 35 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: own-lemma — nothing: the file's own proof body, hypotheses = facts in scope minus the goal and minus the block's own asserts
// Dafny: finished with 1 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/algebra_apbpceq2_abpbcpcaeq1_aleq1on3anbleq1ancleq4on3.dfy"
lemma {:induction false} vc_algebra_apbpceq2_abpbcpcaeq1_aleq1on3anbleq1ancleq4on3_L799(a: real, b: real, c: real)
  requires a <= b
  requires b <= c
  requires a + b + c == 2.0
  requires a * b + b * c + c * a == 1.0
  requires !(0.0 <= a)
  requires a < 0.0
  requires a * (4.0 - 3.0 * a) < 0.0
  requires 0.0 <= a * a
  requires 0.0 <= (b - c) * (b - c)
  requires (0.0 <= a * a) || (a * a < 0.0)
  requires ((0.0 <= a * a) && (a + b + c - 2.0 == 0.0) && (0.0 - a * a * (a + b + c - 2.0) == 0.0) && ((0.0 <= c * c) || (c * c < 0.0))) || ((!(0.0 <= a * a && a + b + c - 2.0 == 0.0)) && ((0.0 <= c * c) || (c * c < 0.0)))
  requires ((0.0 <= c * c) && (a + b + c - 2.0 == 0.0) && (0.0 - c * c * (a + b + c - 2.0) == 0.0)) || (!(0.0 <= c * c && a + b + c - 2.0 == 0.0))
  requires 0.0 <= c * c
  requires (0.0 <= (a - b) * (a - b)) || ((a - b) * (a - b) < 0.0)
  requires ((0.0 <= (a - b) * (a - b)) && (a + b + c - 2.0 == 0.0) && (0.0 - (a - b) * (a - b) * (a + b + c - 2.0) == 0.0)) || (!(0.0 <= (a - b) * (a - b) && a + b + c - 2.0 == 0.0))
  requires 0.0 <= (a - b) * (a - b)
  requires (0.0 <= b * b) || (b * b < 0.0)
  requires ((0.0 <= b * b) && (a + b + c - 2.0 == 0.0) && (0.0 - b * b * (a + b + c - 2.0) == 0.0)) || (!(0.0 <= b * b && a + b + c - 2.0 == 0.0))
  requires 0.0 <= b * b
  requires (0.0 <= (c - a) * (c - a)) || ((c - a) * (c - a) < 0.0)
  requires ((0.0 <= (c - a) * (c - a)) && (a + b + c - 2.0 == 0.0) && (0.0 - (c - a) * (c - a) * (a + b + c - 2.0) == 0.0)) || (!(0.0 <= (c - a) * (c - a) && a + b + c - 2.0 == 0.0))
  requires 0.0 <= (c - a) * (c - a)
  requires (0.0 <= (a + b + c) * (a + b + c)) || ((a + b + c) * (a + b + c) < 0.0)
  requires ((0.0 <= (a + b + c) * (a + b + c)) && (a <= 0.0) && ((a + b + c) * (a + b + c) * a <= 0.0)) || (!(0.0 <= (a + b + c) * (a + b + c) && a <= 0.0))
  requires 0.0 <= (a + b + c) * (a + b + c)
  requires (0.0 <= a * a) || (a * a < 0.0)
  requires ((0.0 <= a * a) && (a - b <= 0.0) && (a * a * (a - b) <= 0.0) && ((0.0 <= a * a) || (a * a < 0.0))) || ((!(0.0 <= a * a && a - b <= 0.0)) && ((0.0 <= a * a) || (a * a < 0.0)))
  requires ((0.0 <= a * a) && (b - c <= 0.0) && (a * a * (b - c) <= 0.0) && ((0.0 <= (b - c) * (b - c)) || ((b - c) * (b - c) < 0.0))) || ((!(0.0 <= a * a && b - c <= 0.0)) && ((0.0 <= (b - c) * (b - c)) || ((b - c) * (b - c) < 0.0)))
  requires ((0.0 <= (b - c) * (b - c)) && (b - c <= 0.0) && ((b - c) * (b - c) * (b - c) <= 0.0) && ((0.0 <= (b - c) * (b - c)) || ((b - c) * (b - c) < 0.0))) || ((!(0.0 <= (b - c) * (b - c) && b - c <= 0.0)) && ((0.0 <= (b - c) * (b - c)) || ((b - c) * (b - c) < 0.0)))
  requires ((0.0 <= (b - c) * (b - c)) && (a + b + c - 2.0 == 0.0) && (0.0 - (b - c) * (b - c) * (a + b + c - 2.0) == 0.0) && ((0.0 <= (b - c) * (b - c)) || ((b - c) * (b - c) < 0.0))) || ((!(0.0 <= (b - c) * (b - c) && a + b + c - 2.0 == 0.0)) && ((0.0 <= (b - c) * (b - c)) || ((b - c) * (b - c) < 0.0)))
  requires ((0.0 <= (b - c) * (b - c)) && (a <= 0.0) && ((b - c) * (b - c) * a <= 0.0) && ((0.0 <= c * c) || (c * c < 0.0))) || ((!(0.0 <= (b - c) * (b - c) && a <= 0.0)) && ((0.0 <= c * c) || (c * c < 0.0)))
  requires ((0.0 <= c * c) && (a <= 0.0) && (c * c * a <= 0.0) && ((a - b <= 0.0) || (0.0 < a - b))) || ((!(0.0 <= c * c && a <= 0.0)) && ((a - b <= 0.0) || (0.0 < a - b)))
  requires ((a - b <= 0.0) && (a + b + c - 2.0 == 0.0) && ((a - b) * (a + b + c - 2.0) == 0.0) && ((a - b <= 0.0) || (0.0 < a - b))) || ((!(a - b <= 0.0 && a + b + c - 2.0 == 0.0)) && ((a - b <= 0.0) || (0.0 < a - b)))
  requires a - b <= 0.0
  requires a * b + b * c + c * a - 1.0 == 0.0
  ensures   (a - b) * (a * b + b * c + c * a - 1.0) == 0.0
{ }

