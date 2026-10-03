// CLOSED — failing line aime_1999_p11-1161: theorem aime_1999_p11, Dafny line 1161 (OOR; pass2)
// failing Dafny line: assert (m == Rat.div(Rat.of_int(175), Rat.of_int(2))) by {
// Lean step: norm_cast at h₃ ⊢
// hypotheses: 20 facts Z3 had at the line (goal itself removed: 0; the block's own asserts removed: 2); nothing assumed beyond the facts in scope
// how it closes: pass2 — all 20 hypotheses kept; body: asserts Rat.of_int(2).to_real()==2, Rat.of_int(175).to_real()==175, Rat.div(Rat.of_int(175),Rat.of_int(2)).to_real()==175/2, then new axiom RatCastInj(a,b): a.to_real()==b.to_real() <==> a==b (Mathlib Rat.cast_inj at α=ℝ, checked in Lean). The mechanical body (asserts Rat.mul(m,2)==175 etc.) is dropped: it is what made the pass-1 K4 variant OOR.
// Dafny: Dafny program verifier finished with 24 verified, 0 errors  (6.1 s; flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)
include "../dafny/aime_1999_p11.dfy"
lemma {:induction false} vc_aime_1999_p11_L1161(m: Rat.rat)
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
  requires m.to_real() * Real.pi() / 180.0 == 35.0 * Real.pi() / 72.0
  requires 2.0 != 0.0
  requires m.to_real() == 175.0 / 2.0
  requires Rat.of_int(2).Rational?
  requires Rat.mul(m, Rat.of_int(2)).Rational?
  requires Rat.of_int(175).Rational?
  requires Rat.div(Rat.of_int(175), Rat.of_int(2)).Rational?
  ensures   m == Rat.div(Rat.of_int(175), Rat.of_int(2))
{
  assert Rat.of_int(2).to_real() == 2.0;  // [ADDED]
  assert Rat.of_int(175).to_real() == 175.0;  // [ADDED]
  assert Rat.div(Rat.of_int(175), Rat.of_int(2)).to_real() == 175.0 / 2.0;  // [ADDED]
  RatCastInj(m, Rat.div(Rat.of_int(175), Rat.of_int(2)));  // [ADDED]
}

// Mathlib: theorem Rat.cast_inj {α} [DivisionRing α] [CharZero α] {m n : ℚ} : (m : α) = n ↔ m = n  (α = ℝ)
lemma {:axiom} RatCastInj(a: Rat.rat, b: Rat.rat)  // [ADDED DECLARATION]
  ensures a.to_real() == b.to_real() <==> a == b
