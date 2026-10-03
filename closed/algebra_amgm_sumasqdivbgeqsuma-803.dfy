// CLOSED — failing line algebra_amgm_sumasqdivbgeqsuma-803: theorem algebra_amgm_sumasqdivbgeqsuma, Dafny line 803 (OOR: Verification out of resource (algebra_amgm_sumasqdivbgeqsuma))
// failing Dafny line: assert ((Real.div((d * d), a) * a) == (d * d));
// Lean step: field_simp [h₄₁.ne']
// hypotheses: 2 facts Z3 had at the line; this variant also drops 6 hypotheses; nothing assumed beyond the facts in scope
// how it closes: K3 — keep only 0<a, 0<d; drop h₄₀–h₄₂ (three Real.div AM-GM facts) and 0<b,0<c,0<d²/a (sufficiency)
// Dafny: finished with 1 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/algebra_amgm_sumasqdivbgeqsuma.dfy"
lemma {:induction false} vc_algebra_amgm_sumasqdivbgeqsuma_L803(a: real, b: real, c: real, d: real)
  requires 0.0 < a
  requires 0.0 < d
  ensures   Real.div(d * d, a) * a == d * d
{ }

