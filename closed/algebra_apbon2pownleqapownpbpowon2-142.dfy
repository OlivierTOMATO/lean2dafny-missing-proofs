// CLOSED — failing line algebra_apbon2pownleqapownpbpowon2-142: theorem algebra_apbon2pownleqapownpbpowon2, Dafny line 142 (ERR: a postcondition could not be proved on this return path)
// failing Dafny line: {
// Lean step: h₅
// hypotheses: 2 facts Z3 had at the line (goal itself removed: 0; facts derived inside the helper lemma's own body removed: 8); nothing assumed beyond the facts in scope
// how it closes: pass2 — forall-statement with explicit trigger {:trigger Real.div(s, 1.0)} binding s == <compound>, applying the library lemma to the atomic s and instantiating back on the compound (Dafny lemma-call argument temporaries otherwise hide the product from Z3's nonlinear solver) (two bound vars s == a - b, t == Real.pow(a, k) - Real.pow(b, k)); MulNonneg(-s, -t)
// Dafny: finished with 9 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/algebra_apbon2pownleqapownpbpowon2.dfy"
lemma {:induction false} vc_algebra_apbon2pownleqapownpbpowon2_L142(a: real, b: real, k: nat, n: int)
  requires a - b <= 0.0
  requires Real.pow(a, k) - Real.pow(b, k) <= 0.0
  ensures   0.0 <= (a - b) * (Real.pow(a, k) - Real.pow(b, k))
{
  forall s: real, t: real {:trigger Real.div(s, 1.0), Real.div(t, 1.0)} | s == a - b && t == Real.pow(a, k) - Real.pow(b, k)  // [ADDED]
    ensures 0.0 <= s * t  // [ADDED]
  {
    MulNonneg(-s, -t);  // [ADDED]
    assert 0.0 <= (-s) * (-t);  // [ADDED]
    assert (-s) * (-t) == s * t;  // [ADDED]
  }
  assert Real.div(a - b, 1.0) == a - b;  // [ADDED]
  assert Real.div(Real.pow(a, k) - Real.pow(b, k), 1.0) == Real.pow(a, k) - Real.pow(b, k);  // [ADDED]
  assert 0.0 <= (a - b) * (Real.pow(a, k) - Real.pow(b, k));  // [ADDED]
}
