// CLOSED — failing line amc12a_2009_p15-696: theorem amc12a_2009_p15, Dafny line 696 (OOR: Verification out of resource (amc12a_2009_p15))
// failing Dafny line: assert (forall m: nat :: ((Real.sum(IccN(1, (4 * m)), ((x: nat) => ((x as real) * Complex.Re(Complex.pow(Complex.I(), x))))) == (2.0 * (m as real))) && (Real.sum(IccN(1, (4 * m)), ((x: nat) => ((x as 
// Lean step: simp_all [Finset.sum_Icc_succ_top, Nat.mod_eq_of_lt, Complex.ext_iff, pow_add, pow_mul, pow_two, pow_succ, mul_add, mul_succ, mul_one, add_assoc]
// hypotheses: 92 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: own-lemma — nothing: the file's own proof body, hypotheses = facts in scope minus the goal and minus the block's own asserts
// Dafny: finished with 71 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12a_2009_p15.dfy"
lemma {:induction false} vc_amc12a_2009_p15_L696(k_6_30: nat, m_11: int, m_2: int, m_3_0_2: int, m_4_0_2: int, m_5: int, m_6_0: int, m_6_1: int, m_6_3: int, m_7_2: int, m_8: int, n: nat, x_0_6_0: int)
  requires 0 <= n
  requires 0 <= m_3_0_2
  requires 0 <= m_4_0_2
  requires 0 <= m_7_2
  requires 0 <= m_11
  requires 0 < n
  requires Complex.sum(IccN(1, n), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.add(Complex.of_real(48.0), Complex.mul(Complex.of_real(49.0), Complex.I()))
  requires forall k_0_1: int :: true
  requires forall k_0_1: nat :: true ==> Complex.pow(Complex.I(), k_0_1 % 4) == Complex.pow(Complex.I(), k_0_1)
  requires forall m_1_1: nat :: true ==> (forall v_40_k: int :: true)
  requires forall m_1_1: nat :: true ==> Complex.sum(IccN(4 * m_1_1 + 1, 4 * m_1_1 + 4), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I()))
  requires forall m_2_1: nat :: true ==> (forall v_33_k: int :: true)
  requires forall m_2_1: nat :: true ==> Complex.sum(IccN(1, 4 * m_2_1), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real((m_2_1 as real))), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real((m_2_1 as real))), Complex.I()))
  requires (0 <= m_2) || (m_2 < 0)
  requires !(exists m_1: nat :: n == 4 * m_1)
  requires (0 <= m_5) || (m_5 < 0)
  requires !(exists m_4: nat :: n == 4 * m_4)
  requires (0 <= m_8) || (m_8 < 0)
  requires exists m_7: nat :: n == 4 * m_7 + 1
  requires 0 <= m_6_0
  requires 0 <= 4 * m_6_0 + 1
  requires 0 <= 4 * m_6_0 + 4
  requires Complex.sum(IccN(4 * m_6_0 + 1, 4 * m_6_0 + 4), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))).Complex?
  requires Complex.of_real(2.0).Complex?
  requires Complex.I().Complex?
  requires Complex.mul(Complex.of_real(2.0), Complex.I()).Complex?
  requires Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I())).Complex?
  requires Complex.sum(IccN(4 * m_6_0 + 1, 4 * m_6_0 + 4), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I()))
  requires 0 <= 4 * 0 + 1
  requires 0 <= 4 * 0 + 4
  requires Complex.sum(IccN(4 * 0 + 1, 4 * 0 + 4), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))).Complex?
  requires Complex.sum(IccN(4 * 0 + 1, 4 * 0 + 4), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I()))
  requires 0 <= 1
  requires 0 <= 4 * m_6_0
  requires Complex.sum(IccN(1, 4 * m_6_0), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))).Complex?
  requires Complex.of_real((m_6_0 as real)).Complex?
  requires Complex.mul(Complex.of_real(2.0), Complex.of_real((m_6_0 as real))).Complex?
  requires Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real((m_6_0 as real))), Complex.I()).Complex?
  requires Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real((m_6_0 as real))), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real((m_6_0 as real))), Complex.I())).Complex?
  requires Complex.sum(IccN(1, 4 * m_6_0), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real((m_6_0 as real))), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real((m_6_0 as real))), Complex.I()))
  requires 0 <= 4 * 0
  requires Complex.sum(IccN(1, 4 * 0), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))).Complex?
  requires Complex.of_real(0.0).Complex?
  requires Complex.mul(Complex.of_real(2.0), Complex.of_real(0.0)).Complex?
  requires Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real(0.0)), Complex.I()).Complex?
  requires Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real(0.0)), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real(0.0)), Complex.I())).Complex?
  requires Complex.sum(IccN(1, 4 * 0), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real(0.0)), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real(0.0)), Complex.I()))
  requires 0 <= 4 * 1
  requires Complex.sum(IccN(1, 4 * 1), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))).Complex?
  requires Complex.of_real(1.0).Complex?
  requires Complex.mul(Complex.of_real(2.0), Complex.of_real(1.0)).Complex?
  requires Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real(1.0)), Complex.I()).Complex?
  requires Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real(1.0)), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real(1.0)), Complex.I())).Complex?
  requires Complex.sum(IccN(1, 4 * 1), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real(1.0)), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real(1.0)), Complex.I()))
  requires 0 <= 4 * 2
  requires Complex.sum(IccN(1, 4 * 2), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))).Complex?
  requires Complex.mul(Complex.of_real(2.0), Complex.of_real(2.0)).Complex?
  requires Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real(2.0)), Complex.I()).Complex?
  requires Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real(2.0)), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real(2.0)), Complex.I())).Complex?
  requires Complex.sum(IccN(1, 4 * 2), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real(2.0)), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real(2.0)), Complex.I()))
  requires 0 <= 4 * 1 + 1
  requires 0 <= 4 * 1 + 4
  requires Complex.sum(IccN(4 * 1 + 1, 4 * 1 + 4), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))).Complex?
  requires Complex.sum(IccN(4 * 1 + 1, 4 * 1 + 4), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I()))
  requires 0 <= 4 * 2 + 1
  requires 0 <= 4 * 2 + 4
  requires Complex.sum(IccN(4 * 2 + 1, 4 * 2 + 4), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))).Complex?
  requires Complex.sum(IccN(4 * 2 + 1, 4 * 2 + 4), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I()))
  requires 0 <= 4 * 3 + 1
  requires 0 <= 4 * 3 + 4
  requires Complex.sum(IccN(4 * 3 + 1, 4 * 3 + 4), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))).Complex?
  requires Complex.sum(IccN(4 * 3 + 1, 4 * 3 + 4), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I()))
  requires 0 <= 4
  requires Complex.pow(Complex.I(), 4 * m_6_0) == Complex.pow(Complex.pow(Complex.I(), 4), m_6_0)
  requires Complex.pow(Complex.I(), 4 * m_6_0 + 1) == Complex.mul(Complex.pow(Complex.I(), 4 * m_6_0), Complex.I())
  requires 0 <= 3
  requires Complex.pow(Complex.I(), 3 + 1) == Complex.mul(Complex.pow(Complex.I(), 3), Complex.I())
  requires 0 <= 2
  requires Complex.pow(Complex.I(), 2 + 1) == Complex.mul(Complex.pow(Complex.I(), 2), Complex.I())
  requires Complex.pow(Complex.I(), 1 + 1) == Complex.mul(Complex.pow(Complex.I(), 1), Complex.I())
  requires 0 <= 0
  requires Complex.pow(Complex.I(), 0 + 1) == Complex.mul(Complex.pow(Complex.I(), 0), Complex.I())
  requires Complex.pow(Complex.I(), 4 + 1) == Complex.mul(Complex.pow(Complex.I(), 4), Complex.I())
  requires 0 <= 5
  requires Complex.pow(Complex.I(), 5 + 1) == Complex.mul(Complex.pow(Complex.I(), 5), Complex.I())
  requires 0 <= 6
  requires Complex.pow(Complex.I(), 6 + 1) == Complex.mul(Complex.pow(Complex.I(), 6), Complex.I())
  requires 0 <= 7
  requires Complex.pow(Complex.I(), 7 + 1) == Complex.mul(Complex.pow(Complex.I(), 7), Complex.I())
  requires Complex.pow(Complex.I(), 0) == Complex.of_real(1.0)
  requires ((0 <= x_0_6_0) && (0 <= 1) && (0 <= 4 * m_6_0) && ((x_0_6_0 in IccN(1, 4 * m_6_0)) || (!(x_0_6_0 in IccN(1, 4 * m_6_0))))) || (x_0_6_0 < 0)
  requires IccN(5, 5) == 
{ }

