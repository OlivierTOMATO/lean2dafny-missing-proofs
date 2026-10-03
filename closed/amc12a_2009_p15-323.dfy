// CLOSED — failing line amc12a_2009_p15-323: theorem amc12a_2009_p15, Dafny line 323 (OOR: Verification out of resource (amc12a_2009_p15))
// failing Dafny line: assert (forall m: nat :: (Complex.add(Complex.add(Complex.add(Complex.mul(Complex.add(Complex.mul(Complex.of_real(4.0), Complex.of_real((m as real))), Complex.of_real(1.0)), Complex.pow(Complex.I(), (
// Lean step: simp_all [Finset.sum_Icc_succ_top, Nat.mul_div_cancel_left]
// hypotheses: 72 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: pass2 — dropped all 72 hypotheses (goal is self-contained); body: forall m_3_0_0_1: nat ensures <goal body> { Block323(m_3_0_0_1); } where Block323 (fuel 0 on Complex.pow) names each coefficient c_j, power p_j and summand t_j, asserts their datatype values step by step; proved helper lemmas (no axioms): IPowStep/IPow4k/IPowMod (I^(n+4)=I^n by unfolding Complex.pow 4 times; I^n = I^(n%4) by induction on n/4), IPowVals/IPowAt (I^(4m+j) values), BlockTerm1-4/BlockTerms (each summand k*I^k at k=4m+j), SumEmptyShift (IccN(lo,lo-1) == IccN(1,0) then ComplexSumEmpty), Block (4 ComplexSumIccSuccTop peels give sum_{4m+1..4m+4} = 2-2i), SumBlocks (induction on m); {:fuel Complex.pow,0,0} hints on the helpers  (pass1: not closed: tried H0=timeout, K2pow=timeout, K5=timeout, K3=failed, K3K5=oor, K3K5pow=oor, K3K5K1pow=oor; this file is the honest base attempt)
// Dafny: finished with 186 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12a_2009_p15.dfy"
lemma {:induction false} vc_amc12a_2009_p15_L323(m_11: int, m_3_0: int, m_3_0_0_0: int, m_3_0_0_0_0: int, m_3_0_2: int, m_3_0_2_0: int, m_3_0_3: int, m_4_0_2: int, m_7_2: int, n: int)
  ensures   forall m_3_0_0_1: nat :: Complex.add(Complex.add(Complex.add(Complex.mul(Complex.add(Complex.mul(Complex.of_real(4.0), Complex.of_real((m_3_0_0_1 as real))), Complex.of_real(1.0)), Complex.pow(Complex.I(), 4 * m_3_0_0_1 + 1)), Complex.mul(Complex.add(Complex.add(Complex.mul(Complex.of_real(4.0), Complex.of_real((m_3_0_0_1 as real))), Complex.of_real(1.0)), Complex.of_real(1.0)), Complex.pow(Complex.I(), 4 * m_3_0_0_1 + 1 + 1))), Complex.mul(Complex.add(Complex.add(Complex.mul(Complex.of_real(4.0), Complex.of_real((m_3_0_0_1 as real))), Complex.of_real(2.0)), Complex.of_real(1.0)), Complex.pow(Complex.I(), 4 * m_3_0_0_1 + 2 + 1))), Complex.mul(Complex.add(Complex.add(Complex.mul(Complex.of_real(4.0), Complex.of_real((m_3_0_0_1 as real))), Complex.of_real(3.0)), Complex.of_real(1.0)), Complex.pow(Complex.I(), 4 * m_3_0_0_1 + 3 + 1))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I()))
{
  forall m_3_0_0_1: nat  // [ADDED]
    ensures Complex.add(Complex.add(Complex.add(Complex.mul(Complex.add(Complex.mul(Complex.of_real(4.0), Complex.of_real((m_3_0_0_1 as real))), Complex.of_real(1.0)), Complex.pow(Complex.I(), 4 * m_3_0_0_1 + 1)), Complex.mul(Complex.add(Complex.add(Complex.mul(Complex.of_real(4.0), Complex.of_real((m_3_0_0_1 as real))), Complex.of_real(1.0)), Complex.of_real(1.0)), Complex.pow(Complex.I(), 4 * m_3_0_0_1 + 1 + 1))), Complex.mul(Complex.add(Complex.add(Complex.mul(Complex.of_real(4.0), Complex.of_real((m_3_0_0_1 as real))), Complex.of_real(2.0)), Complex.of_real(1.0)), Complex.pow(Complex.I(), 4 * m_3_0_0_1 + 2 + 1))), Complex.mul(Complex.add(Complex.add(Complex.mul(Complex.of_real(4.0), Complex.of_real((m_3_0_0_1 as real))), Complex.of_real(3.0)), Complex.of_real(1.0)), Complex.pow(Complex.I(), 4 * m_3_0_0_1 + 3 + 1))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I()))  // [ADDED]
  {
    Block323(m_3_0_0_1);  // [ADDED]
  }
}

lemma {:fuel Complex.pow,0,0} Block323(m_3_0_0_1: nat)  // [ADDED DECLARATION]
  ensures Complex.add(Complex.add(Complex.add(Complex.mul(Complex.add(Complex.mul(Complex.of_real(4.0), Complex.of_real((m_3_0_0_1 as real))), Complex.of_real(1.0)), Complex.pow(Complex.I(), 4 * m_3_0_0_1 + 1)), Complex.mul(Complex.add(Complex.add(Complex.mul(Complex.of_real(4.0), Complex.of_real((m_3_0_0_1 as real))), Complex.of_real(1.0)), Complex.of_real(1.0)), Complex.pow(Complex.I(), 4 * m_3_0_0_1 + 1 + 1))), Complex.mul(Complex.add(Complex.add(Complex.mul(Complex.of_real(4.0), Complex.of_real((m_3_0_0_1 as real))), Complex.of_real(2.0)), Complex.of_real(1.0)), Complex.pow(Complex.I(), 4 * m_3_0_0_1 + 2 + 1))), Complex.mul(Complex.add(Complex.add(Complex.mul(Complex.of_real(4.0), Complex.of_real((m_3_0_0_1 as real))), Complex.of_real(3.0)), Complex.of_real(1.0)), Complex.pow(Complex.I(), 4 * m_3_0_0_1 + 3 + 1))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I()))
{
  IPowAt(m_3_0_0_1);
  var r := m_3_0_0_1 as real;
  var base := Complex.mul(Complex.of_real(4.0), Complex.of_real(r));
  assert base == Complex.Complex(4.0 * r, 0.0);
  var c1 := Complex.add(base, Complex.of_real(1.0));
  var c2 := Complex.add(Complex.add(base, Complex.of_real(1.0)), Complex.of_real(1.0));
  var c3 := Complex.add(Complex.add(base, Complex.of_real(2.0)), Complex.of_real(1.0));
  var c4 := Complex.add(Complex.add(base, Complex.of_real(3.0)), Complex.of_real(1.0));
  assert c1 == Complex.Complex(4.0 * r + 1.0, 0.0);
  assert c2 == Complex.Complex(4.0 * r + 2.0, 0.0);
  assert c3 == Complex.Complex(4.0 * r + 3.0, 0.0);
  assert c4 == Complex.Complex(4.0 * r + 4.0, 0.0);
  var p1 := Complex.pow(Complex.I(), 4 * m_3_0_0_1 + 1);
  var p2 := Complex.pow(Complex.I(), 4 * m_3_0_0_1 + 1 + 1);
  var p3 := Complex.pow(Complex.I(), 4 * m_3_0_0_1 + 2 + 1);
  var p4 := Complex.pow(Complex.I(), 4 * m_3_0_0_1 + 3 + 1);
  assert p1 == Complex.Complex(0.0, 1.0);
  assert p2 == Complex.Complex(-1.0, 0.0);
  assert p3 == Complex.Complex(0.0, -1.0);
  assert p4 == Complex.Complex(1.0, 0.0);
  var t1 := Complex.mul(c1, p1);
  var t2 := Complex.mul(c2, p2);
  var t3 := Complex.mul(c3, p3);
  var t4 := Complex.mul(c4, p4);
  assert t1 == Complex.Complex(0.0, 4.0 * r + 1.0);
  assert t2 == Complex.Complex(-(4.0 * r + 2.0), 0.0);
  assert t3 == Complex.Complex(0.0, -(4.0 * r + 3.0));
  assert t4 == Complex.Complex(4.0 * r + 4.0, 0.0);
  assert Complex.add(Complex.add(Complex.add(t1, t2), t3), t4) == Complex.Complex(2.0, -2.0);
  assert Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I())) == Complex.Complex(2.0, -2.0);
}

lemma IPowStep(n: nat)  // [ADDED DECLARATION]
  ensures Complex.pow(Complex.I(), n + 4) == Complex.pow(Complex.I(), n)
{
  var p := Complex.pow(Complex.I(), n);
  assert Complex.pow(Complex.I(), n + 1) == Complex.mul(Complex.I(), p);
  assert Complex.pow(Complex.I(), n + 2) == Complex.mul(Complex.I(), Complex.pow(Complex.I(), n + 1));
  assert Complex.pow(Complex.I(), n + 3) == Complex.mul(Complex.I(), Complex.pow(Complex.I(), n + 2));
  assert Complex.pow(Complex.I(), n + 4) == Complex.mul(Complex.I(), Complex.pow(Complex.I(), n + 3));
}

lemma {:fuel Complex.pow,0,0} IPow4k(q: nat, r: nat)  // [ADDED DECLARATION]
  ensures Complex.pow(Complex.I(), 4 * q + r) == Complex.pow(Complex.I(), r)
  decreases q
{
  if q > 0 {
    IPow4k(q - 1, r);
    IPowStep(4 * (q - 1) + r);
    assert 4 * q + r == (4 * (q - 1) + r) + 4;
  }
}

lemma {:fuel Complex.pow,0,0} IPowMod(n: nat)  // [ADDED DECLARATION]
  ensures Complex.pow(Complex.I(), n) == Complex.pow(Complex.I(), n % 4)
{
  IPow4k(n / 4, n % 4);
  assert n == 4 * (n / 4) + n % 4;
}

lemma IPowVals()  // [ADDED DECLARATION]
  ensures Complex.pow(Complex.I(), 0) == Complex.Complex(1.0, 0.0)
  ensures Complex.pow(Complex.I(), 1) == Complex.Complex(0.0, 1.0)
  ensures Complex.pow(Complex.I(), 2) == Complex.Complex(-1.0, 0.0)
  ensures Complex.pow(Complex.I(), 3) == Complex.Complex(0.0, -1.0)
  ensures Complex.pow(Complex.I(), 4) == Complex.Complex(1.0, 0.0)
{ }

lemma {:fuel Complex.pow,0,0} IPowAt(m: nat)  // [ADDED DECLARATION]
  ensures Complex.pow(Complex.I(), 4 * m + 1) == Complex.Complex(0.0, 1.0)
  ensures Complex.pow(Complex.I(), 4 * m + 2) == Complex.Complex(-1.0, 0.0)
  ensures Complex.pow(Complex.I(), 4 * m + 3) == Complex.Complex(0.0, -1.0)
  ensures Complex.pow(Complex.I(), 4 * m + 4) == Complex.Complex(1.0, 0.0)
{
  IPowVals();
  IPow4k(m, 1); IPow4k(m, 2); IPow4k(m, 3); IPow4k(m, 4);
}

lemma SumEmptyShift(lo: nat, f: nat -> Complex.complex)  // [ADDED DECLARATION]
  requires lo >= 1
  ensures Complex.sum(IccN(lo, lo - 1), f) == Complex.of_real(0.0)
{
  assert IccN(lo, lo - 1) == IccN(1, 0);
  ComplexSumEmpty(f);
}

lemma {:fuel Complex.pow,0,0} BlockTerm1(m: nat)  // [ADDED DECLARATION]
  ensures ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))(4 * m + 1) == Complex.Complex(0.0, (4 * m + 1) as real)
{
  IPowAt(m);
  var r := (4 * m + 1) as real;
  assert ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))(4 * m + 1) == Complex.mul(Complex.Complex(r, 0.0), Complex.Complex(0.0, 1.0));
  assert Complex.mul(Complex.Complex(r, 0.0), Complex.Complex(0.0, 1.0)) == Complex.Complex(0.0, (4 * m + 1) as real);
}

lemma {:fuel Complex.pow,0,0} BlockTerm2(m: nat)  // [ADDED DECLARATION]
  ensures ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))(4 * m + 2) == Complex.Complex(-((4 * m + 2) as real), 0.0)
{
  IPowAt(m);
  var r := (4 * m + 2) as real;
  assert ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))(4 * m + 2) == Complex.mul(Complex.Complex(r, 0.0), Complex.Complex(-1.0, 0.0));
  assert Complex.mul(Complex.Complex(r, 0.0), Complex.Complex(-1.0, 0.0)) == Complex.Complex(-((4 * m + 2) as real), 0.0);
}

lemma {:fuel Complex.pow,0,0} BlockTerm3(m: nat)  // [ADDED DECLARATION]
  ensures ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))(4 * m + 3) == Complex.Complex(0.0, -((4 * m + 3) as real))
{
  IPowAt(m);
  var r := (4 * m + 3) as real;
  assert ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))(4 * m + 3) == Complex.mul(Complex.Complex(r, 0.0), Complex.Complex(0.0, -1.0));
  assert Complex.mul(Complex.Complex(r, 0.0), Complex.Complex(0.0, -1.0)) == Complex.Complex(0.0, -((4 * m + 3) as real));
}

lemma {:fuel Complex.pow,0,0} BlockTerm4(m: nat)  // [ADDED DECLARATION]
  ensures ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))(4 * m + 4) == Complex.Complex((4 * m + 4) as real, 0.0)
{
  IPowAt(m);
  var r := (4 * m + 4) as real;
  assert ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))(4 * m + 4) == Complex.mul(Complex.Complex(r, 0.0), Complex.Complex(1.0, 0.0));
  assert Complex.mul(Complex.Complex(r, 0.0), Complex.Complex(1.0, 0.0)) == Complex.Complex((4 * m + 4) as real, 0.0);
}

lemma {:fuel Complex.pow,0,0} BlockTerms(m: nat)  // [ADDED DECLARATION]
  ensures ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))(4 * m + 1) == Complex.Complex(0.0, (4 * m + 1) as real)
  ensures ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))(4 * m + 2) == Complex.Complex(-((4 * m + 2) as real), 0.0)
  ensures ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))(4 * m + 3) == Complex.Complex(0.0, -((4 * m + 3) as real))
  ensures ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))(4 * m + 4) == Complex.Complex((4 * m + 4) as real, 0.0)
{
  BlockTerm1(m); BlockTerm2(m); BlockTerm3(m); BlockTerm4(m);
}

lemma {:fuel Complex.pow,0,0} Block(m: nat)  // [ADDED DECLARATION]
  ensures Complex.sum(IccN(4 * m + 1, 4 * m + 4), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I()))
{
  var f := ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)));
  BlockTerms(m);
  SumEmptyShift(4 * m + 1, f);
  ComplexSumIccSuccTop(4 * m + 1, 4 * m, f);
  ComplexSumIccSuccTop(4 * m + 1, 4 * m + 1, f);
  ComplexSumIccSuccTop(4 * m + 1, 4 * m + 2, f);
  ComplexSumIccSuccTop(4 * m + 1, 4 * m + 3, f);
  var s1 := Complex.sum(IccN(4 * m + 1, 4 * m + 1), f);
  assert s1 == Complex.Complex(0.0, (4 * m + 1) as real);
  var s2 := Complex.sum(IccN(4 * m + 1, 4 * m + 2), f);
  assert s2 == Complex.Complex(-((4 * m + 2) as real), (4 * m + 1) as real);
  var s3 := Complex.sum(IccN(4 * m + 1, 4 * m + 3), f);
  assert s3 == Complex.Complex(-((4 * m + 2) as real), ((4 * m + 1) as real) - ((4 * m + 3) as real));
  var s4 := Complex.sum(IccN(4 * m + 1, 4 * m + 4), f);
  assert s4 == Complex.Complex(((4 * m + 4) as real) - ((4 * m + 2) as real), ((4 * m + 1) as real) - ((4 * m + 3) as real));
  assert s4 == Complex.Complex(2.0, -2.0);
}

lemma {:fuel Complex.pow,0,0} SumBlocks(m: nat)  // [ADDED DECLARATION]
  ensures Complex.sum(IccN(1, 4 * m), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real((m as real))), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real((m as real))), Complex.I()))
  decreases m
{
  var f := ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)));
  if m == 0 {
    ComplexSumEmpty(f);
  } else {
    SumBlocks(m - 1);
    var p := m - 1;
    BlockTerms(p);
    ComplexSumIccSuccTop(1, 4 * p, f);
    ComplexSumIccSuccTop(1, 4 * p + 1, f);
    ComplexSumIccSuccTop(1, 4 * p + 2, f);
    ComplexSumIccSuccTop(1, 4 * p + 3, f);
    var s0 := Complex.sum(IccN(1, 4 * p), f);
    assert s0 == Complex.Complex(2.0 * (p as real), -(2.0 * (p as real)));
    var s1 := Complex.sum(IccN(1, 4 * p + 1), f);
    assert s1 == Complex.Complex(2.0 * (p as real), -(2.0 * (p as real)) + ((4 * p + 1) as real));
    var s2 := Complex.sum(IccN(1, 4 * p + 2), f);
    assert s2 == Complex.Complex(2.0 * (p as real) - ((4 * p + 2) as real), -(2.0 * (p as real)) + ((4 * p + 1) as real));
    var s3 := Complex.sum(IccN(1, 4 * p + 3), f);
    assert s3 == Complex.Complex(2.0 * (p as real) - ((4 * p + 2) as real), -(2.0 * (p as real)) + ((4 * p + 1) as real) - ((4 * p + 3) as real));
    var s4 := Complex.sum(IccN(1, 4 * p + 4), f);
    assert s4 == Complex.Complex(2.0 * (p as real) - ((4 * p + 2) as real) + ((4 * p + 4) as real), -(2.0 * (p as real)) + ((4 * p + 1) as real) - ((4 * p + 3) as real));
    assert s4 == Complex.Complex(2.0 * (m as real), -(2.0 * (m as real)));
    assert 4 * m == 4 * p + 4;
  }
}

