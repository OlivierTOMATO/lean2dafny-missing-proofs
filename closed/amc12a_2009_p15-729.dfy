// CLOSED — failing line amc12a_2009_p15-729: theorem amc12a_2009_p15, Dafny line 729 (OOR: Verification out of resource (amc12a_2009_p15))
// failing Dafny line: assert (forall m: nat :: ((Real.sum(IccN(1, (4 * m)), ((x: nat) => ((x as real) * Complex.Re(Complex.pow(Complex.I(), x))))) == (2.0 * (m as real))) && (Real.sum(IccN(1, (4 * m)), ((x: nat) => ((x as 
// Lean step: simp_all [Finset.sum_Icc_succ_top, Nat.succ_eq_add_one, Complex.ext_iff]
// hypotheses: 0 of 47 facts kept (none needed); nothing assumed beyond the facts in scope
// how it closes: pass2 — proved helper H729(m) by recursion on m: Real.sum peeled with FinsetSumIccSuccTopNat x4 for the Re-lambda and x4 for the Im-lambda, term values from IPowJ(m-1); base IccN(1,0)=={}; forall m_7_7 { H729(m_7_7) }; opaque-pow library copy
// Dafny: finished with 134 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s; 6.1 s)
// NOTE: uses a MODIFIED library copy (Complex.pow made opaque, from closed/alt/amc12a_2009_p15-183): see alt/amc12a_2009_p15-729/LIBRARY_CHANGES.diff

include "alt/amc12a_2009_p15-729/out/amc12a_2009_p15.dfy"
lemma {:induction false} vc_amc12a_2009_p15_L729(k_7_2: nat, m_11: int, m_2: int, m_3_0_2: int, m_4_0_2: int, m_5: int, m_7_0: int, m_7_2: int, m_7_2_0: int, m_7_3: int, m_7_4: int, m_7_6: int, m_8: int, n: int)
  ensures   forall m_7_7: nat :: Real.sum(IccN(1, 4 * m_7_7), ((v_1_48_x: nat) => (v_1_48_x as real) * Complex.Re(Complex.pow(Complex.I(), v_1_48_x)))) == 2.0 * (m_7_7 as real) && Real.sum(IccN(1, 4 * m_7_7), ((v_1_62_x: nat) => (v_1_62_x as real) * Complex.Im(Complex.pow(Complex.I(), v_1_62_x)))) == 0.0 - 2.0 * (m_7_7 as real)
{
  forall m_7_7: nat  // [ADDED]
    ensures Real.sum(IccN(1, 4 * m_7_7), ((v_1_48_x: nat) => (v_1_48_x as real) * Complex.Re(Complex.pow(Complex.I(), v_1_48_x)))) == 2.0 * (m_7_7 as real) && Real.sum(IccN(1, 4 * m_7_7), ((v_1_62_x: nat) => (v_1_62_x as real) * Complex.Im(Complex.pow(Complex.I(), v_1_62_x)))) == 0.0 - 2.0 * (m_7_7 as real)  // [ADDED]
  {
    H729(m_7_7);  // [ADDED]
  }
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

lemma {:induction false} H729(m: nat)  // [ADDED DECLARATION]
  ensures Real.sum(IccN(1, 4 * m), ((v_1_48_x: nat) => (v_1_48_x as real) * Complex.Re(Complex.pow(Complex.I(), v_1_48_x)))) == 2.0 * (m as real)
  ensures Real.sum(IccN(1, 4 * m), ((v_1_62_x: nat) => (v_1_62_x as real) * Complex.Im(Complex.pow(Complex.I(), v_1_62_x)))) == 0.0 - 2.0 * (m as real)
{
  if m == 0 {
    assert IccN(1, 4 * 0) == {};
  } else {
    var mp: nat := m - 1;
    H729(mp);
    IPowJ(mp);
    FinsetSumIccSuccTopNat(1, 4 * mp, ((v_1_48_x: nat) => (v_1_48_x as real) * Complex.Re(Complex.pow(Complex.I(), v_1_48_x))));
    FinsetSumIccSuccTopNat(1, 4 * mp + 1, ((v_1_48_x: nat) => (v_1_48_x as real) * Complex.Re(Complex.pow(Complex.I(), v_1_48_x))));
    FinsetSumIccSuccTopNat(1, 4 * mp + 2, ((v_1_48_x: nat) => (v_1_48_x as real) * Complex.Re(Complex.pow(Complex.I(), v_1_48_x))));
    FinsetSumIccSuccTopNat(1, 4 * mp + 3, ((v_1_48_x: nat) => (v_1_48_x as real) * Complex.Re(Complex.pow(Complex.I(), v_1_48_x))));
    assert Real.sum(IccN(1, 4 * mp + 3 + 1), ((v_1_48_x: nat) => (v_1_48_x as real) * Complex.Re(Complex.pow(Complex.I(), v_1_48_x)))) == Real.sum(IccN(1, 4 * mp), ((v_1_48_x: nat) => (v_1_48_x as real) * Complex.Re(Complex.pow(Complex.I(), v_1_48_x)))) + 0.0 + (0.0 - ((4 * mp + 1 + 1) as real)) + 0.0 + ((4 * mp + 3 + 1) as real);
    FinsetSumIccSuccTopNat(1, 4 * mp, ((v_1_62_x: nat) => (v_1_62_x as real) * Complex.Im(Complex.pow(Complex.I(), v_1_62_x))));
    FinsetSumIccSuccTopNat(1, 4 * mp + 1, ((v_1_62_x: nat) => (v_1_62_x as real) * Complex.Im(Complex.pow(Complex.I(), v_1_62_x))));
    FinsetSumIccSuccTopNat(1, 4 * mp + 2, ((v_1_62_x: nat) => (v_1_62_x as real) * Complex.Im(Complex.pow(Complex.I(), v_1_62_x))));
    FinsetSumIccSuccTopNat(1, 4 * mp + 3, ((v_1_62_x: nat) => (v_1_62_x as real) * Complex.Im(Complex.pow(Complex.I(), v_1_62_x))));
    assert Real.sum(IccN(1, 4 * mp + 3 + 1), ((v_1_62_x: nat) => (v_1_62_x as real) * Complex.Im(Complex.pow(Complex.I(), v_1_62_x)))) == Real.sum(IccN(1, 4 * mp), ((v_1_62_x: nat) => (v_1_62_x as real) * Complex.Im(Complex.pow(Complex.I(), v_1_62_x)))) + ((4 * mp + 1) as real) + 0.0 + (0.0 - ((4 * mp + 2 + 1) as real)) + 0.0;
    assert 4 * mp + 3 + 1 == 4 * m;
    assert Real.sum(IccN(1, 4 * m), ((v_1_48_x: nat) => (v_1_48_x as real) * Complex.Re(Complex.pow(Complex.I(), v_1_48_x)))) == Real.sum(IccN(1, 4 * mp + 3 + 1), ((v_1_48_x: nat) => (v_1_48_x as real) * Complex.Re(Complex.pow(Complex.I(), v_1_48_x))));
    assert Real.sum(IccN(1, 4 * m), ((v_1_62_x: nat) => (v_1_62_x as real) * Complex.Im(Complex.pow(Complex.I(), v_1_62_x)))) == Real.sum(IccN(1, 4 * mp + 3 + 1), ((v_1_62_x: nat) => (v_1_62_x as real) * Complex.Im(Complex.pow(Complex.I(), v_1_62_x))));
  }
}
