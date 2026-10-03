// NOT CLOSED — failing line imo_1983_p6-268: theorem imo_1983_p6, Dafny line 268 (OOR: Verification out of resource (imo_1983_p6))
// failing Dafny line: SqNonneg((b - c)); assert (0.0 <= ((b - c) * (b - c)));
// Lean step: h₇
// hypotheses: 22 facts Z3 had at the line (goal itself removed: 1; the block's own asserts removed: 0); nothing assumed beyond the facts in scope
// not closed: tried H0=failed; this file is the honest base attempt
// Dafny: finished with 0 verified, 1 error  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/imo_1983_p6.dfy"
lemma {:induction false} vc_imo_1983_p6_L268(a: real, b: real, c: real)
  requires 0.0 < a
  requires 0.0 < b
  requires 0.0 < c
  requires c < a + b
  requires b < a + c
  requires a < b + c
  requires 0.0 < b + c - a
  requires 0.0 < c + a - b
  requires 0.0 < a + b - c
  requires 0.0 < a * b
  requires 0.0 < b * c
  requires 0.0 < c * a
  requires (0.0 <= (a - b) * (a - b)) || ((a - b) * (a - b) < 0.0)
  requires ((0.0 <= (a - b) * (a - b)) && (0.0 <= (b + c - a) * (a + b - c)) && (0.0 <= (a - b) * (a - b) * ((b + c - a) * (a + b - c)))) || (!(0.0 <= (a - b) * (a - b) && 0.0 <= (b + c - a) * (a + b - c)))
  requires 0.0 <= (a - b) * (a - b)
  requires (0.0 < b + c - a) || (b + c - a <= 0.0)
  requires ((0.0 < b + c - a) && (0.0 < a + b - c) && (0.0 < (b + c - a) * (a + b - c)) && ((0.0 <= (c - a) * (c - a)) || ((c - a) * (c - a) < 0.0))) || ((!(0.0 < b + c - a && 0.0 < a + b - c)) && ((0.0 <= (c - a) * (c - a)) || ((c - a) * (c - a) < 0.0)))
  requires ((0.0 <= (c - a) * (c - a)) && (0.0 <= (a + b - c) * (a + c - b)) && (0.0 <= (c - a) * (c - a) * ((a + b - c) * (a + c - b)))) || (!(0.0 <= (c - a) * (c - a) && 0.0 <= (a + b - c) * (a + c - b)))
  requires 0.0 <= (c - a) * (c - a)
  requires (0.0 < a + b - c) || (a + b - c <= 0.0)
  requires ((0.0 < a + b - c) && (0.0 < a + c - b) && (0.0 < (a + b - c) * (a + c - b)) && ((0.0 <= (b - c) * (b - c)) || ((b - c) * (b - c) < 0.0))) || ((!(0.0 < a + b - c && 0.0 < a + c - b)) && ((0.0 <= (b - c) * (b - c)) || ((b - c) * (b - c) < 0.0)))
  requires ((0.0 <= (b - c) * (b - c)) && (0.0 <= (a + c - b) * (b + c - a)) && (0.0 <= (b - c) * (b - c) * ((a + c - b) * (b + c - a)))) || (!(0.0 <= (b - c) * (b - c) && 0.0 <= (a + c - b) * (b + c - a)))
  ensures   0.0 <= (b - c) * (b - c)
{ }

