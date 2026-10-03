// NOT CLOSED — failing line algebra_amgm_sumasqdivbgeqsuma-845: theorem algebra_amgm_sumasqdivbgeqsuma, Dafny line 845 (OOR: Verification out of resource (algebra_amgm_sumasqdivbgeqsuma))
// failing Dafny line: SqNonneg((a - d)); assert (0.0 <= ((a - d) * (a - d)));
// Lean step: h₄₅
// hypotheses: 10 facts Z3 had at the line (goal itself removed: 1; the block's own asserts removed: 0); nothing assumed beyond the facts in scope
// not closed: tried H0=failed; this file is the honest base attempt
// Dafny: finished with 0 verified, 1 error  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/algebra_amgm_sumasqdivbgeqsuma.dfy"
lemma {:induction false} vc_algebra_amgm_sumasqdivbgeqsuma_L845(a: real, b: real, c: real, d: real)
  requires 0.0 < a
  requires 0.0 < b
  requires 0.0 < c
  requires 0.0 < d
  requires Real.div(a * a, b) + b >= 2.0 * a
  requires Real.div(b * b, c) + c >= 2.0 * b
  requires Real.div(c * c, d) + d >= 2.0 * c
  requires 0.0 < Real.div(d * d, a)
  requires Real.div(d * d, a) * a == d * d
  requires 0.0 < Real.div(d * d, a) * a
  ensures   0.0 <= (a - d) * (a - d)
{ }

