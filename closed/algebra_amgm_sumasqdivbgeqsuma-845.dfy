// CLOSED — failing line algebra_amgm_sumasqdivbgeqsuma-845: theorem algebra_amgm_sumasqdivbgeqsuma, Dafny line 845 (OOR: Verification out of resource (algebra_amgm_sumasqdivbgeqsuma))
// failing Dafny line: SqNonneg((a - d)); assert (0.0 <= ((a - d) * (a - d)));
// Lean step: h₄₅
// hypotheses: 10 facts Z3 had at the line (goal itself removed: 1; the block's own asserts removed: 0); nothing assumed beyond the facts in scope; pass2 dropped 11 of them (unused), none added
// how it closes: pass2 — forall-statement with explicit trigger {:trigger Real.div(s, 1.0)} binding s == <compound>, applying the library lemma to the atomic s and instantiating back on the compound (Dafny lemma-call argument temporaries otherwise hide the product from Z3's nonlinear solver): s == a - d, SqNonneg(s); all 11 hypotheses dropped (unused)
// Dafny: finished with 4 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/algebra_amgm_sumasqdivbgeqsuma.dfy"
lemma {:induction false} vc_algebra_amgm_sumasqdivbgeqsuma_L845(a: real, b: real, c: real, d: real)
  ensures   0.0 <= (a - d) * (a - d)
{
  forall s: real {:trigger Real.div(s, 1.0)} | s == a - d  // [ADDED]
    ensures 0.0 <= s * s  // [ADDED]
  {
    SqNonneg(s);  // [ADDED]
  }
  assert Real.div(a - d, 1.0) == a - d;  // [ADDED]
  assert 0.0 <= (a - d) * (a - d);  // [ADDED]
}
