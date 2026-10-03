// CLOSED — failing line amc12a_2009_p6-137: theorem amc12a_2009_p6, Dafny line 137 (ERR: assertion might not hold)
// failing Dafny line: assert (Real.rpow(2.0, ((2 as real) * (m * n))) == Real.rpow(2.0, (2.0 * (m * n)))) by {
// Lean step: ring_nf
// hypotheses: 15 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: K2 — ring_nf normal forms: assert (2 as real)*(m*n) == m*n*2.0; assert 2.0*(m*n) == m*n*2.0
// Dafny: finished with 7 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12a_2009_p6.dfy"
lemma {:induction false} vc_amc12a_2009_p6_L137(m: real, n: real, p: real, q: real)
  requires p == Real.rpow(2.0, m)
  requires q == Real.rpow(3.0, n)
  requires Real.rpow(p, 2.0 * n) == Real.rpow(2.0, m * (2.0 * n))
  requires Real.rpow(q, m) == Real.rpow(3.0, n * m)
  requires Real.rpow(p, 2.0 * n) * Real.rpow(q, m) == Real.rpow(2.0, m * (2.0 * n)) * Real.rpow(3.0, n * m)
  requires Real.rpow(2.0, m * (2.0 * n)) == Real.rpow(2.0, 2.0 * (m * n))
  requires 4.0 == 2.0 * 2.0
  requires 2.0 * 2.0 > 0.0
  requires 0 <= 2
  requires Real.rpow(2.0, (2 as real)) == Real.pow(2.0, 2)
  requires 0.0 <= 2.0
  requires Real.rpow(2.0, (2 as real) * (m * n)) == Real.rpow(Real.rpow(2.0, (2 as real)), m * n)
  requires Real.pow(m, 1) == m
  requires Real.pow(n, 1) == n
  requires Real.pow(Real.rpow(2.0, m * n * 2.0), 1) == Real.rpow(2.0, m * n * 2.0)
  ensures   Real.rpow(2.0, (2 as real) * (m * n)) == Real.rpow(2.0, 2.0 * (m * n))
{
  // K2: ring_nf normal form of the rpow exponent (exec 885: both sides normalised to m * n * 2)
  assert (2 as real) * (m * n) == m * n * 2.0;  // [ADDED]
  assert 2.0 * (m * n) == m * n * 2.0;  // [ADDED]
                      PowOne(m);  // cite: pow_one [applied by the tactic, not named in it]
                      PowOne(n);  // cite: pow_one [applied by the tactic, not named in it]
                      PowOne(Real.rpow(2.0, ((m * n) * 2.0)));  // cite: pow_one [applied by the tactic, not named in it]
                      // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (2 : ℝ) ^ (m * n * (2 : ℝ)))
                      // UNCITED-APPLIED internal ×54 [exec 885 3143-3150]: applications made inside the tactic's own automation, not stated — add_zero ×2, mul_one ×1; machinery/glue: Eq.trans ×8, congrArg ×8, congr ×3, Mathlib.Tactic.Ring.mul_congr ×3 (+18 more heads, ×29) (cited in this block, not counted here: pow_one [Lean recorded ×3])
}

