// CLOSED — failing line amc12a_2008_p4-12: theorem amc12a_2008_p4, Dafny line 12 (ERR: a postcondition could not be proved on this return path)
// failing Dafny line: {
// Lean step: 
// hypotheses: 0 facts Z3 had at the line (goal itself removed: 0; facts derived inside the helper lemma's own body removed: 3); nothing assumed beyond the facts in scope
// how it closes: pass2 — replaced the Rat/norm_cast body by a telescoping helper `Tele(n: nat) requires n >= 1 ensures Real.prod(IccN(1,n), k => Real.div(4k+4, 4k)) == n + 1` proved by induction with the library's FinsetProdIccSuccTopNat (Finset.prod_range_succ, the lemma Lean's proof cites), Real.prod of {} == 1 (prelude), Real.div axiom (d*(4r) == 4r+4, so r*d == r+1 linearly in the monomial r*d); main body: Tele(501)  (pass1: not closed: tried H0=failed, K5=failed; this file is the honest base attempt)
// Dafny: finished with 28 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12a_2008_p4.dfy"
lemma {:induction false} vc_amc12a_2008_p4_L12()
  ensures   Real.prod(IccN(1, 501), ((k: nat) => Real.div(4.0 * (k as real) + 4.0, 4.0 * (k as real)))) == 502.0
{
  Tele(501);  // [ADDED]
}

lemma Tele(n: nat)  // [ADDED DECLARATION]
  requires n >= 1
  ensures Real.prod(IccN(1, n), ((k: nat) => Real.div(4.0 * (k as real) + 4.0, 4.0 * (k as real)))) == (n as real) + 1.0
  decreases n
{
  var g := ((k: nat) => Real.div(4.0 * (k as real) + 4.0, 4.0 * (k as real)));
  FinsetProdIccSuccTopNat(n, g);
  var r := n as real;
  var d := g(n);
  assert d == Real.div(4.0 * r + 4.0, 4.0 * r);
  assert 4.0 * r != 0.0;
  assert d == (4.0 * r + 4.0) / (4.0 * r);
  assert d * (4.0 * r) == 4.0 * r + 4.0;
  if n == 1 {
    assert IccN(1, 0) == {};
    assert Real.prod(IccN(1, 0), g) == 1.0;
    assert d == 2.0;
  } else {
    Tele(n - 1);
    assert Real.prod(IccN(1, n - 1), g) == r;
    assert r * d == r + 1.0;
  }
}
