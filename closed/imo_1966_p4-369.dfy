// CLOSED — failing line imo_1966_p4-369: theorem imo_1966_p4, Dafny line 369 (OOR: Verification out of resource (imo_1966_p4))
// failing Dafny line: assert ((Real.div(1.0, Real.cos((Real.pow(2.0, m) * x))) * (Real.div(1.0, Real.sin((Real.pow(2.0, m) * x))) * (1.0 / 2.0))) == (Real.div(Real.cos((Real.pow(2.0, m) * x)), Real.sin((Real.pow(2.0, m) * 
// Lean step: by_cases hcos' : Real.cos (2 ^ (m + 1) * x) = 0
// hypotheses: 18 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: pass2 — opaque-pow library variant (alt copy of imo_1966_p4-190); the VC_GAP branch is a genuine contradiction with h0: helper cos_pow_ne_zero(P,m,x) [requires h0, P==pow(2,m), cos(P*x)==0, ensures false] = cos_zero_gives_div (RealCosEqZeroIff(P*x), PowSucc(2,m), PowPos(2,m+1), local vars P1,c,mm:=2k+1, asserts to x == Real.div(mm*pi, pow(2,m+1))) + h0_inst(x, mm, m+1) [h0 at k:=m+1, m:=2k+1]; main binds P := pow(2,m), asserts P*x == pow(2,m)*x and calls the helper under `if cos(P*x)==0` (a real parameter P avoids the pow-fuel/product mismatch Z3 cannot bridge); dropped (allowed) all hypotheses except h0 and the m bounds (the trigger-less strong-induction hypothesis matching-loops)
// Dafny: finished with 34 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "alt/imo_1966_p4-369/out/imo_1966_p4.dfy"
lemma {:induction false} vc_imo_1966_p4_L369(m_1_0: nat, n: int, x: real)
  requires 0 <= n
  requires forall k_1: nat :: 0 < k_1 ==> (forall m_2: int :: x != Real.div((m_2 as real) * Real.pi(), Real.pow(2.0, k_1)))
  requires 0 < n
  requires 0 <= m_1_0
  requires ((0 < m_1_0) && (0 <= 1)) || (m_1_0 <= 0)
  requires 0 < m_1_0
  requires m_1_0 + 1 > 0
  requires 0 <= 1
  requires 0 <= m_1_0 + 1
  ensures   ((Real.cos(Real.pow(2.0, m_1_0) * x) == 0.0) ==> (false /*VC_GAP*/))
{
  var P := Real.pow(2.0, m_1_0);  // [ADDED]
  assert P * x == Real.pow(2.0, m_1_0) * x;  // [ADDED]
  if Real.cos(P * x) == 0.0 {  // [ADDED]
    cos_pow_ne_zero(P, m_1_0, x);  // [ADDED]
  }
}

  // instance of h0 (the theorem's own hypothesis) at k := kk, m := mm
lemma {:induction false} h0_inst(x: real, mm: int, kk: nat)  // [ADDED DECLARATION]
  requires forall k_1: nat :: 0 < k_1 ==> (forall m_2: int :: x != Real.div((m_2 as real) * Real.pi(), Real.pow(2.0, k_1)))
  requires 0 < kk
  ensures x != Real.div((mm as real) * Real.pi(), Real.pow(2.0, kk))
{ }

  // cos(2^m x) = 0  ==>  x = (2k+1)*pi / 2^(m+1)   (Real.cos_eq_zero_iff + pow_succ); P is a real parameter so no
  // product Real.pow(..)*x appears at two fuel layers (Z3 cannot bridge those by congruence)
lemma {:induction false} cos_zero_gives_div(P: real, m: nat, x: real)  // [ADDED DECLARATION]
  requires P == Real.pow(2.0, m)
  requires Real.cos(P * x) == 0.0
  ensures exists mm: int :: x == Real.div((mm as real) * Real.pi(), Real.pow(2.0, m + 1))
{
  RealCosEqZeroIff(P * x);
  var k: int :| P * x == ((2.0 * (k as real)) + 1.0) * Real.pi() / 2.0;
  PowSucc(2.0, m);
  PowPos(2.0, m + 1);
  var P1 := Real.pow(2.0, m + 1);
  assert P1 == P * 2.0;
  var c := (2.0 * (k as real)) + 1.0;
  assert P * x == c * Real.pi() / 2.0;
  assert P1 * x == c * Real.pi();
  assert 0.0 < P1;
  assert x == (c * Real.pi()) / P1;
  var mm: int := 2 * k + 1;
  assert (mm as real) == c;
  assert Real.div((mm as real) * Real.pi(), Real.pow(2.0, m + 1)) == (c * Real.pi()) / P1;
  assert x == Real.div((mm as real) * Real.pi(), Real.pow(2.0, m + 1));
}

  // cos(2^m x) = 0 contradicts h0 at k := m+1, m := 2k+1
lemma {:induction false} cos_pow_ne_zero(P: real, m: nat, x: real)  // [ADDED DECLARATION]
  requires forall k_1: nat :: 0 < k_1 ==> (forall m_2: int :: x != Real.div((m_2 as real) * Real.pi(), Real.pow(2.0, k_1)))
  requires P == Real.pow(2.0, m)
  requires Real.cos(P * x) == 0.0
  ensures false
{
  cos_zero_gives_div(P, m, x);
  var mm: int :| x == Real.div((mm as real) * Real.pi(), Real.pow(2.0, m + 1));
  h0_inst(x, mm, m + 1);
}
