// CLOSED — failing line amc12a_2009_p15-586: theorem amc12a_2009_p15, Dafny line 586 (OOR: Verification out of resource (amc12a_2009_p15))
// failing Dafny line: ensures (Complex.sum(IccN(1, ((4 * m) + 1)), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.add(Complex.mul(Complex.of_real(2.0), Complex.of_real((m a
// Lean step: have h₂ := h_grouped_blocks m
// hypotheses: 2 of 2 facts kept; nothing assumed beyond the facts in scope
// how it closes: pass2 — body restructured to the failing forall statement only (h_sum_n_plus_1: sum_{1..4m+1}F == 2m+(2m+1)I): S4(m) (proved helper, sum_{1..4m}F == 2m-2m*I), IPowJ1(m) (I^(4m+1)=I), one ComplexSumIccSuccTop peel, value asserts; the rest of the file's own body (periodicity/grouped-blocks/contradiction blocks, steps after the forall) dropped as not needed for this line; opaque-pow library copy
// Dafny: finished with 134 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s; 6.1 s)
// NOTE: uses a MODIFIED library copy (Complex.pow made opaque, from closed/alt/amc12a_2009_p15-183): see alt/amc12a_2009_p15-586/LIBRARY_CHANGES.diff

include "alt/amc12a_2009_p15-586/out/amc12a_2009_p15.dfy"
lemma {:induction false} vc_amc12a_2009_p15_L586(k_6_30: nat, m_11: int, m_2: int, m_3_0_2: int, m_4_0_2: int, m_5: int, m_6_0: int, m_6_1: int, m_6_3: int, m_7_2: int, m_8: int, n: nat, x_0_6_0: int, x_6_6: int)
  requires 0 < n
  requires Complex.sum(IccN(1, n), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.add(Complex.of_real(48.0), Complex.mul(Complex.of_real(49.0), Complex.I()))
{
  forall m_11: nat
    ensures (Complex.sum(IccN(1, ((4 * m_11) + 1)), ((k_6_30: nat) => Complex.mul(Complex.of_real((k_6_30 as real)), Complex.pow(Complex.I(), k_6_30)))) == Complex.add(Complex.mul(Complex.of_real(2.0), Complex.of_real((m_11 as real))), Complex.mul(Complex.add(Complex.mul(Complex.of_real(2.0), Complex.of_real((m_11 as real))), Complex.of_real(1.0)), Complex.I()))) // @tac 4593-4624 // @tac 4629-4660 // @tac 4665-4699 // @tac 4704-4738 // @tac 4743-4777 // @tac 4782-4816 // @tac 4821-4852 // @tac 4857-4888 // @tac 4893-4927 // @tac 4932-5094 // @tac 4932-5077
  {
    S4(m_11);  // [ADDED]
    IPowJ1(m_11);  // [ADDED]
    ComplexSumIccSuccTop(1, 4 * m_11, ((k_6_30: nat) => Complex.mul(Complex.of_real((k_6_30 as real)), Complex.pow(Complex.I(), k_6_30))));  // [ADDED]
    var t1 := Complex.mul(Complex.of_real(((4 * m_11 + 1) as real)), Complex.pow(Complex.I(), 4 * m_11 + 1));  // [ADDED]
    assert t1 == Complex.Complex(0.0, ((4 * m_11 + 1) as real));  // [ADDED]
    var s0 := Complex.sum(IccN(1, 4 * m_11), ((k_6_30: nat) => Complex.mul(Complex.of_real((k_6_30 as real)), Complex.pow(Complex.I(), k_6_30))));  // [ADDED]
    assert s0 == Complex.Complex(2.0 * (m_11 as real), 0.0 - 2.0 * (m_11 as real));  // [ADDED]
    assert Complex.sum(IccN(1, 4 * m_11 + 1), ((k_6_30: nat) => Complex.mul(Complex.of_real((k_6_30 as real)), Complex.pow(Complex.I(), k_6_30)))) == Complex.add(s0, t1);  // [ADDED]
    assert Complex.sum(IccN(1, (4 * m_11) + 1), ((k_6_30: nat) => Complex.mul(Complex.of_real((k_6_30 as real)), Complex.pow(Complex.I(), k_6_30)))) == Complex.Complex(2.0 * (m_11 as real), 2.0 * (m_11 as real) + 1.0);  // [ADDED]
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

lemma {:induction false} S4(m: nat)  // [ADDED DECLARATION]
  ensures Complex.sum(IccN(1, 4 * m), ((k_6_30: nat) => Complex.mul(Complex.of_real((k_6_30 as real)), Complex.pow(Complex.I(), k_6_30)))) == Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real((m as real))), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real((m as real))), Complex.I()))
{
  if m == 0 {
    ComplexSumEmpty(((k_6_30: nat) => Complex.mul(Complex.of_real((k_6_30 as real)), Complex.pow(Complex.I(), k_6_30))));
    assert Complex.sum(IccN(1, 4 * 0), ((k_6_30: nat) => Complex.mul(Complex.of_real((k_6_30 as real)), Complex.pow(Complex.I(), k_6_30)))) == Complex.sum(IccN(1, 0), ((k_6_30: nat) => Complex.mul(Complex.of_real((k_6_30 as real)), Complex.pow(Complex.I(), k_6_30))));
  } else {
    var mp: nat := m - 1;
    S4(mp);
    IPowJ(mp);
    ComplexSumIccSuccTop(1, 4 * mp, ((k_6_30: nat) => Complex.mul(Complex.of_real((k_6_30 as real)), Complex.pow(Complex.I(), k_6_30))));
    ComplexSumIccSuccTop(1, 4 * mp + 1, ((k_6_30: nat) => Complex.mul(Complex.of_real((k_6_30 as real)), Complex.pow(Complex.I(), k_6_30))));
    ComplexSumIccSuccTop(1, 4 * mp + 2, ((k_6_30: nat) => Complex.mul(Complex.of_real((k_6_30 as real)), Complex.pow(Complex.I(), k_6_30))));
    ComplexSumIccSuccTop(1, 4 * mp + 3, ((k_6_30: nat) => Complex.mul(Complex.of_real((k_6_30 as real)), Complex.pow(Complex.I(), k_6_30))));
    var t1 := Complex.mul(Complex.of_real(((4 * mp + 1) as real)), Complex.pow(Complex.I(), 4 * mp + 1));
    var t2 := Complex.mul(Complex.of_real(((4 * mp + 1 + 1) as real)), Complex.pow(Complex.I(), 4 * mp + 1 + 1));
    var t3 := Complex.mul(Complex.of_real(((4 * mp + 2 + 1) as real)), Complex.pow(Complex.I(), 4 * mp + 2 + 1));
    var t4 := Complex.mul(Complex.of_real(((4 * mp + 3 + 1) as real)), Complex.pow(Complex.I(), 4 * mp + 3 + 1));
    assert t1 == Complex.Complex(0.0, ((4 * mp + 1) as real));
    assert t2 == Complex.Complex(0.0 - ((4 * mp + 1 + 1) as real), 0.0);
    assert t3 == Complex.Complex(0.0, 0.0 - ((4 * mp + 2 + 1) as real));
    assert t4 == Complex.Complex(((4 * mp + 3 + 1) as real), 0.0);
    var s0 := Complex.sum(IccN(1, 4 * mp), ((k_6_30: nat) => Complex.mul(Complex.of_real((k_6_30 as real)), Complex.pow(Complex.I(), k_6_30))));
    assert s0 == Complex.Complex(2.0 * (mp as real), 0.0 - 2.0 * (mp as real));
    assert Complex.sum(IccN(1, 4 * mp + 1), ((k_6_30: nat) => Complex.mul(Complex.of_real((k_6_30 as real)), Complex.pow(Complex.I(), k_6_30)))) == Complex.add(s0, t1);
    assert Complex.sum(IccN(1, 4 * mp + 1 + 1), ((k_6_30: nat) => Complex.mul(Complex.of_real((k_6_30 as real)), Complex.pow(Complex.I(), k_6_30)))) == Complex.add(Complex.add(s0, t1), t2);
    assert Complex.sum(IccN(1, 4 * mp + 2 + 1), ((k_6_30: nat) => Complex.mul(Complex.of_real((k_6_30 as real)), Complex.pow(Complex.I(), k_6_30)))) == Complex.add(Complex.add(Complex.add(s0, t1), t2), t3);
    assert Complex.sum(IccN(1, 4 * mp + 3 + 1), ((k_6_30: nat) => Complex.mul(Complex.of_real((k_6_30 as real)), Complex.pow(Complex.I(), k_6_30)))) == Complex.add(Complex.add(Complex.add(Complex.add(s0, t1), t2), t3), t4);
    assert 4 * mp + 3 + 1 == 4 * m;
    assert Complex.sum(IccN(1, 4 * m), ((k_6_30: nat) => Complex.mul(Complex.of_real((k_6_30 as real)), Complex.pow(Complex.I(), k_6_30)))) == Complex.Complex(2.0 * (m as real), 0.0 - 2.0 * (m as real));
  }
}
