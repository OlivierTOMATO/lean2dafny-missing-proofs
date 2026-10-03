// CLOSED — failing line imo_1966_p4-156: theorem imo_1966_p4, Dafny line 156 (OOR: Verification out of resource (imo_1966_p4))
// failing Dafny line: ensures (Real.sum(IccN(1, (m + 1)), ((k: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, k) * x))))) == (Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan((Real.pow(2.0, (m + 1)) * x)))))
// Lean step: have h₁' : m + 1 > 0 := by linarith
// hypotheses: 1 facts Z3 had at the line (goal itself removed: 0; facts derived inside the helper lemma's own body removed: 12); nothing assumed beyond the facts in scope; pass2 dropped no hypotheses
// how it closes: pass2 — opaque-pow library variant; proved helper library (no axioms): CotIdentity = 1/sin 2y = 1/tan y - 1/tan 2y for every y under Lean's a/0 = 0 (Real.sin_two_mul, Real.cos_two_mul, Real.tan_eq_sin_div_cos; cases sin y = 0 / cos y = 0 / cos 2y = 0 / generic), CotStep (CotIdentity at y = 2^m x via pow_succ), BetaCore/BetaTermSucc (beta-reduction of the summand lambda at m+1), SumStep (Finset.sum_Icc_succ_top + BetaTermSucc + CotStep), SumIdentity (induction on n, n = 0 base via sum over {} and pow_zero), congruence tautologies SinExt/TanExt/PowExt/IccExt with explicit triggers (Z3 does not propagate nonlinear-product equalities into EUF); body: var N := m_1_0+1; SumIdentity(N, x) + congruence asserts (replaces the file's own proof body)
// Dafny: finished with 130 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s); library: opaque-pow variant alt/imo_1966_p4-156/ (copy of closed/alt/imo_1966_p4-190)

include "alt/imo_1966_p4-156/out/imo_1966_p4.dfy"
// ---- pass2 helpers (all proved; no axioms) ----
// Z3 (legacy arith) does not propagate equalities between nonlinear products into EUF, and Dafny
// gives compound lemma arguments fresh locals; these congruence tautologies with explicit triggers
// let E-matching relate the exact goal terms instead.
lemma SinExt() ensures forall a: real, b: real {:trigger Real.sin(a), Real.sin(b)} :: a == b ==> Real.sin(a) == Real.sin(b) { }  // [ADDED DECLARATION]
lemma TanExt() ensures forall a: real, b: real {:trigger Real.tan(a), Real.tan(b)} :: a == b ==> Real.tan(a) == Real.tan(b) { }  // [ADDED DECLARATION]
lemma PowExt() ensures forall a: nat, b: nat {:trigger Real.pow(2.0, a), Real.pow(2.0, b)} :: a == b ==> Real.pow(2.0, a) == Real.pow(2.0, b) { }  // [ADDED DECLARATION]
lemma IccExt() ensures forall a: nat, b: nat {:trigger IccN(1, a), IccN(1, b)} :: a == b ==> IccN(1, a) == IccN(1, b) { }  // [ADDED DECLARATION]

// 1/sin(2y) = 1/tan(y) - 1/tan(2y), unconditionally under Lean's a/0 = 0 (Real.div)
lemma CotIdentity(y: real)  // [ADDED DECLARATION]
  ensures Real.div(1.0, Real.sin(2.0 * y)) == Real.div(1.0, Real.tan(y)) - Real.div(1.0, Real.tan(2.0 * y))
{
  RealSinTwoMul(y); RealCosTwoMul(y); RealTanEqSinDivCos(y); RealTanEqSinDivCos(2.0 * y);
  var s := Real.sin(y); var c := Real.cos(y);
  var s2 := Real.sin(2.0 * y); var c2 := Real.cos(2.0 * y);
  assert s2 == 2.0 * s * c;
  assert c2 == 2.0 * c * c - 1.0;
  var t := Real.tan(y); var t2 := Real.tan(2.0 * y);
  assert t == Real.div(s, c);
  assert t2 == Real.div(s2, c2);
  var L := Real.div(1.0, s2); var u := Real.div(1.0, t); var v := Real.div(1.0, t2);
  if s == 0.0 {
    assert s2 == 0.0;
    assert L == 0.0;
    assert t == 0.0;
    assert t2 == 0.0;
    assert u == 0.0;
    assert v == 0.0;
  } else if c == 0.0 {
    assert s2 == 0.0;
    assert L == 0.0;
    assert t == 0.0;
    assert c2 == -1.0;
    assert t2 == 0.0;
    assert u == 0.0;
    assert v == 0.0;
  } else {
    assert s2 != 0.0;
    assert L * s2 == 1.0;
    assert t * c == s;
    assert t != 0.0;
    assert u * t == 1.0;
    assert u * s == c by { assert u * s == u * (t * c); }
    assert u * s2 == 2.0 * c * c by { assert u * s2 == 2.0 * (u * s) * c; }
    if c2 == 0.0 {
      assert t2 == 0.0;
      assert v == 0.0;
      assert u * s2 == 1.0;
      assert (u - L) * s2 == 0.0;
      assert u - L == 0.0;
    } else {
      assert t2 * c2 == s2;
      assert t2 != 0.0;
      assert v * t2 == 1.0;
      assert v * s2 == c2 by { assert v * s2 == v * (t2 * c2); }
      assert (u - v) * s2 == 1.0;
      assert (u - v - L) * s2 == 0.0;
      assert u - v - L == 0.0;
    }
  }
}

lemma CotStep(m: nat, x: real)  // [ADDED DECLARATION]
  ensures Real.div(1.0, Real.sin(Real.pow(2.0, m + 1) * x)) == Real.div(1.0, Real.tan(Real.pow(2.0, m) * x)) - Real.div(1.0, Real.tan(Real.pow(2.0, m + 1) * x))
{
  SinExt(); TanExt();
  var y := Real.pow(2.0, m) * x;
  CotIdentity(y);
  PowSucc(2.0, m);
  assert Real.pow(2.0, m + 1) * x == 2.0 * y;
  assert Real.sin(2.0 * y) == Real.sin(Real.pow(2.0, m + 1) * x);
  assert Real.tan(2.0 * y) == Real.tan(Real.pow(2.0, m + 1) * x);
  assert Real.tan(y) == Real.tan(Real.pow(2.0, m) * x);
}

lemma BetaCore(m: nat, x: real, p: real)  // [ADDED DECLARATION]
  requires p == Real.pow(2.0, m + 1)
  ensures ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))(m + 1) == Real.div(1.0, Real.sin(p * x))
{
  assert ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))(m + 1) == Real.div(1.0, Real.sin(p * x)) by {
    assert ((k: nat) => Real.pow(2.0, k) * x)(m + 1) == p * x;
  }
}

lemma BetaTermSucc(m: nat, x: real)  // [ADDED DECLARATION]
  ensures ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))(m + 1) == Real.div(1.0, Real.sin(Real.pow(2.0, m + 1) * x))
{
  BetaCore(m, x, Real.pow(2.0, m + 1));
}

lemma SumStep(m: nat, x: real)  // [ADDED DECLARATION]
  requires Real.sum(IccN(1, m), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, m) * x))
  ensures Real.sum(IccN(1, m + 1), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, m + 1) * x))
{
  FinsetSumIccSuccTopNat(1, m, ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x))));
  BetaTermSucc(m, x);
  CotStep(m, x);
}

lemma BaseTan(n: nat, x: real) requires Real.pow(2.0, n) == 1.0 ensures Real.tan(Real.pow(2.0, n) * x) == Real.tan(x) { }  // [ADDED DECLARATION]
lemma BaseSum(n: nat, x: real) requires n == 0 ensures Real.sum(IccN(1, n), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == 0.0 { assert IccN(1, n) == {}; }  // [ADDED DECLARATION]
lemma BaseFinish(n: nat, x: real)  // [ADDED DECLARATION]
  requires Real.tan(Real.pow(2.0, n) * x) == Real.tan(x)
  requires Real.sum(IccN(1, n), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == 0.0
  ensures Real.sum(IccN(1, n), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, n) * x))
{ }

lemma BaseAll1(n: nat, x: real)  // [ADDED DECLARATION]
  requires n == 0
  ensures Real.sum(IccN(1, n), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, n) * x))
{
  PowZero(2.0);
  assert Real.pow(2.0, n) == 1.0;
  BaseTan(n, x);
  BaseSum(n, x);
  BaseFinish(n, x);
}
// the theorem's statement for every n (n = 0 included: both sides are 0). The two cases live in
// separate lemmas: facts of the other branch pollute the (nonlinear) VC of the ensures check.
lemma {:induction false} SumIdentityRec(n: nat, x: real)  // [ADDED DECLARATION]
  requires 0 < n
  ensures Real.sum(IccN(1, n), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, n) * x))
  decreases n, 0
{
  PowExt(); IccExt(); TanExt();
  var m: nat := n - 1;
  SumIdentity(m, x);
  SumStep(m, x);
  assert m + 1 == n;
  assert IccN(1, m + 1) == IccN(1, n);
  assert Real.pow(2.0, m + 1) == Real.pow(2.0, n);
  assert Real.pow(2.0, m + 1) * x == Real.pow(2.0, n) * x;
  assert Real.tan(Real.pow(2.0, m + 1) * x) == Real.tan(Real.pow(2.0, n) * x);
}
lemma {:induction false} SumIdentity(n: nat, x: real)  // [ADDED DECLARATION]
  ensures Real.sum(IccN(1, n), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, n) * x))
  decreases n, 1
{
  if n == 0 { BaseAll1(n, x); } else { SumIdentityRec(n, x); }
}
// ---- end helpers ----
lemma {:induction false} vc_imo_1966_p4_L156(m_1_0: nat, n: int, x: real)
  requires 0 < n
  ensures   Real.sum(IccN(1, m_1_0 + 1), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, m_1_0 + 1) * x))
{
  PowExt(); IccExt(); TanExt();  // [ADDED]
  var N: nat := m_1_0 + 1;  // [ADDED]
  SumIdentity(N, x);  // [ADDED]
  assert IccN(1, N) == IccN(1, m_1_0 + 1);  // [ADDED]
  assert Real.pow(2.0, N) == Real.pow(2.0, m_1_0 + 1);  // [ADDED]
  assert Real.pow(2.0, N) * x == Real.pow(2.0, m_1_0 + 1) * x;  // [ADDED]
  assert Real.tan(Real.pow(2.0, N) * x) == Real.tan(Real.pow(2.0, m_1_0 + 1) * x);  // [ADDED]
}
