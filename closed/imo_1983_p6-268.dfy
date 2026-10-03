// CLOSED — failing line imo_1983_p6-268: theorem imo_1983_p6, Dafny line 268 (OOR: Verification out of resource (imo_1983_p6))
// failing Dafny line: SqNonneg((b - c)); assert (0.0 <= ((b - c) * (b - c)));
// Lean step: h₇
// hypotheses: 14 of the 22 facts Z3 had at the line (goal itself removed: 1; the block's own asserts removed: 0; pass2 dropped 8 disjunctive if-guard facts); nothing assumed beyond the facts in scope
// how it closes: pass2 — body SqNonneg(b - c); and dropped the 8 disjunctive nonlinear hypotheses (the if-guard facts) that drove Z3 out of resource
// Dafny: finished with 1 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

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
  requires 0.0 <= (a - b) * (a - b)
  requires 0.0 <= (c - a) * (c - a)
  ensures   0.0 <= (b - c) * (b - c)
{
  SqNonneg(b - c);  // [ADDED]
}

