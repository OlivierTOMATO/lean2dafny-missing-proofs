// CLOSED — failing line amc12a_2009_p15-742: theorem amc12a_2009_p15, Dafny line 742 (OOR: Verification out of resource (amc12a_2009_p15))
// failing Dafny line: assert (forall m: nat :: ((Real.sum(IccN(1, (4 * m)), ((x: nat) => ((x as real) * Complex.Re(Complex.pow(Complex.I(), x))))) == ((2 * m) as real)) && (Real.sum(IccN(1, (4 * m)), ((x: nat) => ((x as re
// Lean step: norm_cast at *
// hypotheses: 1 facts Z3 had at the line; this variant also drops 69 hypotheses; nothing assumed beyond the facts in scope
// how it closes: K3 — keep only the pre-norm_cast hypothesis h_sum_multiple_of_4 (∀m, 2.0*(m as real) form) (norm_cast at * rewrote it alone)
// Dafny: finished with 9 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12a_2009_p15.dfy"
lemma {:induction false} vc_amc12a_2009_p15_L742(a_7_1_3__arg: Complex.complex, a_7_1_4__arg: Complex.complex, b_7_1_3__arg: Complex.complex, b_7_1_4__arg: Complex.complex, k_7_17__arg: nat, k_7_1_3__arg: nat, k_7_1_4__arg: nat, k_7_2: nat, m_11: int, m_2: int, m_3_0_2: int, m_4_0_2: int, m_5: int, m_7_0: int, m_7_1_0: int, m_7_1_0_0: int, m_7_1_0_2: int, m_7_2: int, m_7_2_0: int, m_7_3: int, m_7_4: int, m_7_6: int, m_7_8: int, m_8: int, n: int, x_7_1_0: int, x_7_2: int, z_7_1_6__arg: Complex.complex, z_7_1_7__arg: Complex.complex, z_7_1_8__arg: Complex.complex, z_7_1_9__arg: Complex.complex, z_7_32__arg: Complex.complex, z_7_33__arg: Complex.complex)
  requires forall m_7_7: nat :: Real.sum(IccN(1, 4 * m_7_7), ((v_1_48_x: nat) => (v_1_48_x as real) * Complex.Re(Complex.pow(Complex.I(), v_1_48_x)))) == 2.0 * (m_7_7 as real) && Real.sum(IccN(1, 4 * m_7_7), ((v_1_62_x: nat) => (v_1_62_x as real) * Complex.Im(Complex.pow(Complex.I(), v_1_62_x)))) == 0.0 - 2.0 * (m_7_7 as real)
  ensures   forall m_7_1_0_3: nat :: Real.sum(IccN(1, 4 * m_7_1_0_3), ((v_1_48_x: nat) => (v_1_48_x as real) * Complex.Re(Complex.pow(Complex.I(), v_1_48_x)))) == ((2 * m_7_1_0_3) as real) && Real.sum(IccN(1, 4 * m_7_1_0_3), ((v_1_62_x: nat) => (v_1_62_x as real) * Complex.Im(Complex.pow(Complex.I(), v_1_62_x)))) == ((0 - 2 * m_7_1_0_3) as real)
{ }

