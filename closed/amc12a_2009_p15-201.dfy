// CLOSED — failing line amc12a_2009_p15-201: theorem amc12a_2009_p15, Dafny line 201 (OOR: Verification out of resource (amc12a_2009_p15))
// failing Dafny line: ensures (Complex.sum(IccN(((4 * m) + 1), ((4 * m) + 4)), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.
// Lean step: simp_all [Finset.sum_Icc_succ_top, Nat.mul_succ, Complex.ext_iff, pow_add, pow_mul, pow_two, pow_three, Complex.I_mul_I]
// hypotheses: 2 facts Z3 had at the line (goal itself removed: 0; facts derived inside the helper lemma's own body removed: 27); nothing assumed beyond the facts in scope
// how it closes: pass2 — kept the failing `forall m_11: nat ensures <block sum = 2-2i>` statement verbatim with body `Block(m_11)`; dropped the rest of the 600-line body; proved helper lemmas (no axioms): IPowStep/IPow4k/IPowMod (I^(n+4)=I^n by unfolding Complex.pow 4 times; I^n = I^(n%4) by induction on n/4), IPowVals/IPowAt (I^(4m+j) values), BlockTerm1-4/BlockTerms (each summand k*I^k at k=4m+j), SumEmptyShift (IccN(lo,lo-1) == IccN(1,0) then ComplexSumEmpty), Block (4 ComplexSumIccSuccTop peels give sum_{4m+1..4m+4} = 2-2i), SumBlocks (induction on m); {:fuel Complex.pow,0,0} hints on the helpers  (pass1: not closed: tried H0=timeout, K2=error, K2pow=error, K4=error, K5=error, K3=error, K2K5=error, S3=error, S2=error; this file is the honest base attempt)
// Dafny: finished with 156 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12a_2009_p15.dfy"
lemma {:induction false} vc_amc12a_2009_p15_L201(k_1_4: nat, m_11: int, m_1_0: int, m_3_0_2: int, m_4_0_2: int, m_7_2: int, n: nat)
  requires 0 < n
  requires Complex.sum(IccN(1, n), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.add(Complex.of_real(48.0), Complex.mul(Complex.of_real(49.0), Complex.I()))
{
  forall m_11: nat
    ensures (Complex.sum(IccN(((4 * m_11) + 1), ((4 * m_11) + 4)), ((k_1_4: nat) => Complex.mul(Complex.of_real((k_1_4 as real)), Complex.pow(Complex.I(), k_1_4)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I())))
  {
    Block(m_11);  // [ADDED]
  }
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

