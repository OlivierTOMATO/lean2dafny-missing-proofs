// CLOSED — failing line algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2-1620: theorem algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2, Dafny line 1620 (OOR: Verification out of resource (algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2))
// failing Dafny line: SqNonneg((b - c)); assert (0.0 <= ((b - c) * (b - c)));
// Lean step: h₉₀
// hypotheses: 43 facts Z3 had at the line (goal itself removed: 1; the block's own asserts removed: 0); nothing assumed beyond the facts in scope; pass2 dropped 34 of them (unused), none added
// how it closes: pass2 — forall-statement with explicit trigger {:trigger Real.div(s, 1.0)} binding s == <compound>, applying the library lemma to the atomic s and instantiating back on the compound (Dafny lemma-call argument temporaries otherwise hide the product from Z3's nonlinear solver): s == b - c, SqNonneg(s); all 34 hypotheses dropped (unused; they only bloat the Z3 context)
// Dafny: finished with 4 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2.dfy"
lemma {:induction false} vc_algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2_L1620(a: real, b: real, c: real)
  ensures   0.0 <= (b - c) * (b - c)
{
  forall s: real {:trigger Real.div(s, 1.0)} | s == b - c  // [ADDED]
    ensures 0.0 <= s * s  // [ADDED]
  {
    SqNonneg(s);  // [ADDED]
  }
  assert Real.div(b - c, 1.0) == b - c;  // [ADDED]
  assert 0.0 <= (b - c) * (b - c);  // [ADDED]
}
