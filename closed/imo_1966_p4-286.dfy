// CLOSED — failing line imo_1966_p4-286: theorem imo_1966_p4, Dafny line 286 (OOR: Verification out of resource (imo_1966_p4))
// failing Dafny line: assert ((Real.div(1.0, Real.cos((Real.pow(2.0, m) * x))) * (Real.div(1.0, Real.sin((Real.pow(2.0, m) * x))) * (1.0 / 2.0))) == (Real.div(Real.cos((Real.pow(2.0, m) * x)), Real.sin((Real.pow(2.0, m) * 
// Lean step: field_simp [hcos, hsin, hcos', hsin']
// hypotheses: 3 of the 24 facts Z3 had at the line kept (all others dropped as unused; nothing assumed beyond the facts in scope)
// how it closes: pass2 — proved helper CotHalfGoal(s,c): the field_simp goal is an unconditional identity in s=sin(2^m x), c=cos(2^m x) under Mathlib's x/0=0 (Real.div spec), so no case hypotheses are needed; `{:fuel Real.pow,0,1}` on the lemma (prover hint: stops the Real.pow recursive-ensures matching loop that caused the OOR; same effect as the opaque-pow alt library without switching libraries); dropped every hypothesis the proof does not use; no axioms added
// Dafny: finished with 114 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s; run 3 of 3)
include "../dafny/imo_1966_p4.dfy"
lemma {:induction false} {:fuel Real.pow,0,1} vc_imo_1966_p4_L286(m_1_0: nat, n: int, x: real)
  ensures   Real.div(1.0, Real.cos(Real.pow(2.0, m_1_0) * x)) * (Real.div(1.0, Real.sin(Real.pow(2.0, m_1_0) * x)) * (1.0 / 2.0)) == Real.div(Real.cos(Real.pow(2.0, m_1_0) * x), Real.sin(Real.pow(2.0, m_1_0) * x)) - Real.div(2.0 * (Real.cos(Real.pow(2.0, m_1_0) * x) * Real.cos(Real.pow(2.0, m_1_0) * x)) - 1.0, 2.0 * (Real.sin(Real.pow(2.0, m_1_0) * x) * Real.cos(Real.pow(2.0, m_1_0) * x)))
{
  // pass2: the goal is an unconditional identity in s = sin y, c = cos y under Mathlib's x/0 = 0 (Real.div)
  CotHalfGoal(Real.sin(Real.pow(2.0, m_1_0) * x), Real.cos(Real.pow(2.0, m_1_0) * x));  // [ADDED]
}

// 0 / b == 0 for every b (Mathlib: zero_div; here provable from Real.div's spec)
lemma DivZeroNum(a: real, b: real)  // [ADDED DECLARATION]
  requires a == 0.0
  ensures Real.div(a, b) == 0.0
{
  if b == 0.0 {
  } else {
    var q := Real.div(a, b);
    assert q == a / b;
    assert q * b == a;
    assert q * b == 0.0;
    assert q == 0.0;
  }
}

// ---- pass2 helpers (proved, no axioms) ----
// Plain-real identity: 1/c * (1/s * 1/2) == c/s - (2c^2-1)/(2sc)  for s,c != 0.
lemma CotHalfIdentity(s: real, c: real)  // [ADDED DECLARATION]
  requires s != 0.0
  requires c != 0.0
  ensures (1.0 / c) * ((1.0 / s) * (1.0 / 2.0)) == c / s - (2.0 * (c * c) - 1.0) / (2.0 * (s * c))
{
  var d := 2.0 * (s * c);
  assert d != 0.0;
  assert (1.0 / c) * ((1.0 / s) * (1.0 / 2.0)) == 1.0 / d;
  assert c / s == (2.0 * (c * c)) / d;
  assert (2.0 * (c * c)) / d - (2.0 * (c * c) - 1.0) / d == 1.0 / d;
}

// The field_simp goal, with Mathlib's x/0 = 0 semantics (Real.div), holds for ALL s, c.
lemma CotHalfGoal(s: real, c: real)  // [ADDED DECLARATION]
  ensures Real.div(1.0, c) * (Real.div(1.0, s) * (1.0 / 2.0)) == Real.div(c, s) - Real.div(2.0 * (c * c) - 1.0, 2.0 * (s * c))
{
  if s == 0.0 {
    assert Real.div(1.0, s) == 0.0;
    assert Real.div(c, s) == 0.0;
    assert 2.0 * (s * c) == 0.0;
    assert Real.div(2.0 * (c * c) - 1.0, 2.0 * (s * c)) == 0.0;
  } else if c == 0.0 {
    assert Real.div(1.0, c) == 0.0;
    DivZeroNum(c, s);
    assert 2.0 * (s * c) == 0.0;
    assert Real.div(2.0 * (c * c) - 1.0, 2.0 * (s * c)) == 0.0;
  } else {
    assert 2.0 * (s * c) != 0.0;
    assert Real.div(1.0, c) == 1.0 / c;
    assert Real.div(1.0, s) == 1.0 / s;
    assert Real.div(c, s) == c / s;
    assert Real.div(2.0 * (c * c) - 1.0, 2.0 * (s * c)) == (2.0 * (c * c) - 1.0) / (2.0 * (s * c));
    CotHalfIdentity(s, c);
  }
}

// 1/sin(2y) == 1/tan y - 1/tan 2y after tan = sin/cos, sin 2y = 2sc, cos 2y = 2c^2-1, for ALL s, c
// (Mathlib x/0 = 0 semantics).
lemma CotDoubleGoal(s: real, c: real)  // [ADDED DECLARATION]
  ensures Real.div(1.0, 2.0 * s * c) == Real.div(1.0, Real.div(s, c)) - Real.div(1.0, Real.div(2.0 * s * c, 2.0 * c * c - 1.0))
{
  if s == 0.0 {
    assert 2.0 * s * c == 0.0;
    assert Real.div(1.0, 2.0 * s * c) == 0.0;
    assert Real.div(s, c) == 0.0;
    assert Real.div(1.0, Real.div(s, c)) == 0.0;
    DivZeroNum(2.0 * s * c, 2.0 * c * c - 1.0);
    assert Real.div(1.0, Real.div(2.0 * s * c, 2.0 * c * c - 1.0)) == 0.0;
  } else if c == 0.0 {
    assert 2.0 * s * c == 0.0;
    assert Real.div(1.0, 2.0 * s * c) == 0.0;
    assert Real.div(s, c) == 0.0;
    assert Real.div(1.0, Real.div(s, c)) == 0.0;
    assert 2.0 * c * c - 1.0 == -1.0;
    DivZeroNum(2.0 * s * c, 2.0 * c * c - 1.0);
    assert Real.div(1.0, Real.div(2.0 * s * c, 2.0 * c * c - 1.0)) == 0.0;
  } else {
    var d := 2.0 * s * c;
    assert d != 0.0;
    assert Real.div(1.0, d) == 1.0 / d;
    assert Real.div(s, c) == s / c;
    assert s / c != 0.0;
    assert Real.div(1.0, s / c) == 1.0 / (s / c);
    assert 1.0 / (s / c) == c / s by { assert (s / c) * (c / s) == 1.0; }
    if 2.0 * c * c - 1.0 == 0.0 {
      assert Real.div(d, 2.0 * c * c - 1.0) == 0.0;
      assert Real.div(1.0, Real.div(d, 2.0 * c * c - 1.0)) == 0.0;
      // 1/(2sc) == c/s  because 2c^2 == 1
      assert (1.0 / d) * d == 1.0;
      assert (c / s) * d == 2.0 * c * c;
      assert (1.0 / d - c / s) * d == 0.0;
      assert 1.0 / d == c / s;
    } else {
      assert Real.div(d, 2.0 * c * c - 1.0) == d / (2.0 * c * c - 1.0);
      assert d / (2.0 * c * c - 1.0) != 0.0;
      assert Real.div(1.0, d / (2.0 * c * c - 1.0)) == 1.0 / (d / (2.0 * c * c - 1.0));
      assert 1.0 / (d / (2.0 * c * c - 1.0)) == (2.0 * c * c - 1.0) / d by {
        assert (d / (2.0 * c * c - 1.0)) * ((2.0 * c * c - 1.0) / d) == 1.0;
      }
      assert c / s == (2.0 * c * c) / d;
      assert (2.0 * c * c) / d - (2.0 * c * c - 1.0) / d == 1.0 / d;
    }
  }
}
