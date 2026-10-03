// CLOSED — failing line aime_1999_p11-938: theorem aime_1999_p11, Dafny line 938 (OOR; pass2)
// failing Dafny line: assert ((((m).to_real() * Real.pi()) / 180.0) == ((35.0 * Real.pi()) / 72.0)) by {
// Lean step: apply (injOn_tan.eq_iff ⟨by
// hypotheses: 16 facts Z3 had at the line (goal itself removed: 0; the block's own asserts removed: 2); nothing assumed beyond the facts in scope
// how it closes: pass2 — all 16 hypotheses kept; body re-derives the two upper bounds the block proved itself: m.to_real() < 90 (Real.div(num,denom) < 90 with to_real == num/denom, denom >= 1), RealPiPos(), MulPos(90 - m.to_real(), pi) gives m*pi < 90*pi hence a = m*pi/180 < pi/2; b = 35pi/72 < pi/2 linear; lower bounds are hypotheses; then library RealInjOnTan(a, b) (Mathlib Real.injOn_tan) closes.
// Dafny: Dafny program verifier finished with 48 verified, 0 errors  (6.7 s; flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)
include "../dafny/aime_1999_p11.dfy"
lemma {:induction false} vc_aime_1999_p11_L938(m: Rat.rat)
  requires m.Rational?
  requires gcd(Int.natAbs(m.num), m.denom) == 1
  requires Rat.lt(Rat.of_int(0), m)
  requires Rat.of_int(0).num * m.denom < m.num * Rat.of_int(0).denom
  requires Real.sum(IccN(1, 35), ((k: nat) => Real.sin(5.0 * (k as real) * Real.pi() / 180.0))) == Real.tan(m.to_real() * Real.pi() / 180.0)
  requires Real.div((m.num as real), (m.denom as real)) < 90.0
  requires 0 <= 1
  requires 0 <= 35
  requires 180.0 != 0.0
  requires Real.sum(IccN(1, 35), ((k: nat) => Real.sin(5.0 * (k as real) * Real.pi() / 180.0))) == Real.div(Real.cos(2.5 * Real.pi() / 180.0), Real.sin(2.5 * Real.pi() / 180.0))
  requires 72.0 != 0.0
  requires Real.sum(IccN(1, 35), ((k: nat) => Real.sin(5.0 * (k as real) * Real.pi() / 180.0))) == Real.tan(35.0 * Real.pi() / 72.0)
  requires Real.tan(m.to_real() * Real.pi() / 180.0) == Real.tan(35.0 * Real.pi() / 72.0)
  requires 2.0 != 0.0
  requires 0.0 - Real.pi() / 2.0 < m.to_real() * Real.pi() / 180.0
  requires 0.0 - Real.pi() / 2.0 < 35.0 * Real.pi() / 72.0
  ensures   m.to_real() * Real.pi() / 180.0 == 35.0 * Real.pi() / 72.0
{
  var a := m.to_real() * Real.pi() / 180.0;  // [ADDED]
  var b := 35.0 * Real.pi() / 72.0;  // [ADDED]
  RealPiPos();
  assert m.to_real() == m.num as real / m.denom as real;  // [ADDED]
  assert m.denom as real != 0.0;  // [ADDED]
  assert Real.div(m.num as real, m.denom as real) == m.num as real / m.denom as real;  // [ADDED]
  assert m.to_real() < 90.0;  // [ADDED]
  MulPos(90.0 - m.to_real(), Real.pi());  // [ADDED]
  assert (90.0 - m.to_real()) * Real.pi() == 90.0 * Real.pi() - m.to_real() * Real.pi();  // [ADDED]
  assert m.to_real() * Real.pi() < 90.0 * Real.pi();  // [ADDED]
  assert a < Real.pi() / 2.0;  // [ADDED]
  assert b < Real.pi() / 2.0;  // [ADDED]
  assert -(Real.pi() / 2.0) < a;  // [ADDED]
  assert -(Real.pi() / 2.0) < b;  // [ADDED]
  RealInjOnTan(a, b);  // [ADDED]
}
