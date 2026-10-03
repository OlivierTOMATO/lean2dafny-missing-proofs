// CLOSED — failing line amc12a_2009_p15-728: theorem amc12a_2009_p15, Dafny line 728 (OOR: Verification out of resource (amc12a_2009_p15))
// failing Dafny line: assert (forall m: nat :: ((((((((4.0 * (m as real)) + 1.0) * Complex.Re(Complex.pow(Complex.I(), ((4 * m) + 1)))) + ((((4.0 * (m as real)) + 1.0) + 1.0) * Complex.Re(Complex.pow(Complex.I(), (((4 * m)
// Lean step: simp_all [Finset.sum_Icc_succ_top, Nat.succ_eq_add_one, Complex.ext_iff]
// hypotheses: 0 of 45 facts kept (none needed); nothing assumed beyond the facts in scope
// how it closes: pass2 — forall m statement proving I^(4m+1)=I, I^(4m+2)=-1, I^(4m+3)=-I, I^(4m+4)=1 via proved helper IPowJ(m), then a forall giving Re/Im of each power; the block identity (Re sum = 2, Im sum = -2) follows; opaque-pow library copy
// Dafny: finished with 99 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s; 4.5 s)
// NOTE: uses a MODIFIED library copy (Complex.pow made opaque, from closed/alt/amc12a_2009_p15-183): see alt/amc12a_2009_p15-728/LIBRARY_CHANGES.diff

include "alt/amc12a_2009_p15-728/out/amc12a_2009_p15.dfy"
lemma {:induction false} vc_amc12a_2009_p15_L728(k_7_2: nat, m_11: int, m_2: int, m_3_0_2: int, m_4_0_2: int, m_5: int, m_7_0: int, m_7_2: int, m_7_2_0: int, m_7_3: int, m_7_4: int, m_8: int, n: int)
  ensures   forall m_7_5: nat :: (4.0 * (m_7_5 as real) + 1.0) * Complex.Re(Complex.pow(Complex.I(), 4 * m_7_5 + 1)) + (4.0 * (m_7_5 as real) + 1.0 + 1.0) * Complex.Re(Complex.pow(Complex.I(), 4 * m_7_5 + 1 + 1)) + (4.0 * (m_7_5 as real) + 2.0 + 1.0) * Complex.Re(Complex.pow(Complex.I(), 4 * m_7_5 + 2 + 1)) + (4.0 * (m_7_5 as real) + 3.0 + 1.0) * Complex.Re(Complex.pow(Complex.I(), 4 * m_7_5 + 3 + 1)) == 2.0 && (4.0 * (m_7_5 as real) + 1.0) * Complex.Im(Complex.pow(Complex.I(), 4 * m_7_5 + 1)) + (4.0 * (m_7_5 as real) + 1.0 + 1.0) * Complex.Im(Complex.pow(Complex.I(), 4 * m_7_5 + 1 + 1)) + (4.0 * (m_7_5 as real) + 2.0 + 1.0) * Complex.Im(Complex.pow(Complex.I(), 4 * m_7_5 + 2 + 1)) + (4.0 * (m_7_5 as real) + 3.0 + 1.0) * Complex.Im(Complex.pow(Complex.I(), 4 * m_7_5 + 3 + 1)) == 0.0 - 2.0
{
  forall m_7_5: nat  // [ADDED]
    ensures Complex.pow(Complex.I(), 4 * m_7_5 + 1) == Complex.I()  // [ADDED]
    ensures Complex.pow(Complex.I(), 4 * m_7_5 + 1 + 1) == Complex.Complex(-1.0, 0.0)  // [ADDED]
    ensures Complex.pow(Complex.I(), 4 * m_7_5 + 2 + 1) == Complex.Complex(0.0, -1.0)  // [ADDED]
    ensures Complex.pow(Complex.I(), 4 * m_7_5 + 3 + 1) == Complex.Complex(1.0, 0.0)  // [ADDED]
  {
    IPowJ(m_7_5);  // [ADDED]
  }
  forall m_7_5: nat  // [ADDED]
    ensures Complex.Re(Complex.pow(Complex.I(), 4 * m_7_5 + 1)) == 0.0 && Complex.Im(Complex.pow(Complex.I(), 4 * m_7_5 + 1)) == 1.0  // [ADDED]
    ensures Complex.Re(Complex.pow(Complex.I(), 4 * m_7_5 + 1 + 1)) == -1.0 && Complex.Im(Complex.pow(Complex.I(), 4 * m_7_5 + 1 + 1)) == 0.0  // [ADDED]
    ensures Complex.Re(Complex.pow(Complex.I(), 4 * m_7_5 + 2 + 1)) == 0.0 && Complex.Im(Complex.pow(Complex.I(), 4 * m_7_5 + 2 + 1)) == -1.0  // [ADDED]
    ensures Complex.Re(Complex.pow(Complex.I(), 4 * m_7_5 + 3 + 1)) == 1.0 && Complex.Im(Complex.pow(Complex.I(), 4 * m_7_5 + 3 + 1)) == 0.0  // [ADDED]
  { }
}

lemma IP4v(i: Complex.complex)  // [ADDED DECLARATION]
  requires i == Complex.Complex(0.0, 1.0)
  ensures Complex.pow(i, 1) == i
  ensures Complex.pow(i, 2) == Complex.Complex(-1.0, 0.0)
  ensures Complex.pow(i, 3) == Complex.Complex(0.0, -1.0)
  ensures Complex.pow(i, 4) == Complex.Complex(1.0, 0.0)
{
  reveal Complex.pow();
  assert Complex.pow(i, 1) == i;
  assert Complex.pow(i, 2) == Complex.Complex(-1.0, 0.0);
  assert Complex.pow(i, 3) == Complex.Complex(0.0, -1.0);
}

lemma {:induction false} OnePowC(n: nat)  // [ADDED DECLARATION]
  ensures Complex.pow(Complex.Complex(1.0, 0.0), n) == Complex.Complex(1.0, 0.0)
{
  var one := Complex.Complex(1.0, 0.0);
  if n == 0 {
    ComplexPowZero(one);
  } else {
    OnePowC(n - 1);
    ComplexPowSucc(one, n - 1);
    assert Complex.mul(one, one) == one;
  }
}

lemma {:induction false} IPow4m(m: nat)  // [ADDED DECLARATION]
  ensures Complex.pow(Complex.I(), 4 * m) == Complex.Complex(1.0, 0.0)
{
  ComplexPowMul(Complex.I(), 4, m);
  IP4v(Complex.I());
  OnePowC(m);
}

lemma {:induction false} IPowJ1(m: nat)  // [ADDED DECLARATION]
  ensures Complex.pow(Complex.I(), 4 * m + 1) == Complex.I()
{
  IPow4m(m);
  ComplexPowAdd(Complex.I(), 4 * m, 1);
  var a := Complex.pow(Complex.I(), 4 * m);
  var b := Complex.pow(Complex.I(), 1);
  assert a == Complex.Complex(1.0, 0.0);
  IP4v(Complex.I());
  assert b == Complex.I();
  assert Complex.mul(a, b) == Complex.I();
}

lemma {:induction false} IPowJ2(m: nat)  // [ADDED DECLARATION]
  ensures Complex.pow(Complex.I(), 4 * m + 1 + 1) == Complex.Complex(-1.0, 0.0)
{
  IPow4m(m);
  ComplexPowAdd(Complex.I(), 4 * m, 2);
  var a := Complex.pow(Complex.I(), 4 * m);
  var b := Complex.pow(Complex.I(), 2);
  assert a == Complex.Complex(1.0, 0.0);
  IP4v(Complex.I());
  assert b == Complex.Complex(-1.0, 0.0);
  assert Complex.mul(a, b) == Complex.Complex(-1.0, 0.0);
}

lemma {:induction false} IPowJ3(m: nat)  // [ADDED DECLARATION]
  ensures Complex.pow(Complex.I(), 4 * m + 2 + 1) == Complex.Complex(0.0, -1.0)
{
  IPow4m(m);
  ComplexPowAdd(Complex.I(), 4 * m, 3);
  var a := Complex.pow(Complex.I(), 4 * m);
  var b := Complex.pow(Complex.I(), 3);
  assert a == Complex.Complex(1.0, 0.0);
  IP4v(Complex.I());
  assert b == Complex.Complex(0.0, -1.0);
  assert Complex.mul(a, b) == Complex.Complex(0.0, -1.0);
}

lemma {:induction false} IPowJ4(m: nat)  // [ADDED DECLARATION]
  ensures Complex.pow(Complex.I(), 4 * m + 3 + 1) == Complex.Complex(1.0, 0.0)
{
  IPow4m(m + 1);
  assert 4 * (m + 1) == 4 * m + 3 + 1;
}

lemma {:induction false} IPowJ(m: nat)  // [ADDED DECLARATION]
  ensures Complex.pow(Complex.I(), 4 * m + 1) == Complex.I()
  ensures Complex.pow(Complex.I(), 4 * m + 1 + 1) == Complex.Complex(-1.0, 0.0)
  ensures Complex.pow(Complex.I(), 4 * m + 2 + 1) == Complex.Complex(0.0, -1.0)
  ensures Complex.pow(Complex.I(), 4 * m + 3 + 1) == Complex.Complex(1.0, 0.0)
{
  IPowJ1(m); IPowJ2(m); IPowJ3(m); IPowJ4(m);
}
