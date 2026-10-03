// CLOSED — failing line aime_1999_p11-1170: theorem aime_1999_p11, Dafny line 1170 (OOR: Verification out of resource (aime_1999_p11))
// failing Dafny line: assert (Rat.mul(m, Rat.of_int(2)) == Rat.of_int(175));
// Lean step: norm_cast at h₃ ⊢
// hypotheses: 20 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: K4 — lemma {:axiom} RatCastInj(a: Rat.rat, b: Rat.rat) ensures a.to_real() == b.to_real() <==> a == b  (Mathlib Rat.cast_inj, added to work copy); call RatCastInj(Rat.mul(m, of_int 2), of_int 175)
// Dafny: finished with 20 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)
// NOTE: uses a MODIFIED library copy: see alt/aime_1999_p11-1170/LIBRARY_CHANGES.diff

include "alt/aime_1999_p11-1170/out/aime_1999_p11.dfy"
lemma {:axiom} RatCastInj(a: Rat.rat, b: Rat.rat)  // [ADDED DECLARATION]
  ensures a.to_real() == b.to_real() <==> a == b

lemma {:induction false} vc_aime_1999_p11_L1170(m: Rat.rat)
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
  requires m.to_real() * 2.0 == 175.0
  requires Rat.of_int(2).Rational?
  requires Rat.mul(m, Rat.of_int(2)).Rational?
  requires Rat.of_int(175).Rational?
  ensures   Rat.mul(m, Rat.of_int(2)) == Rat.of_int(175)
{
  RatCastInj(Rat.mul(m, Rat.of_int(2)), Rat.of_int(175));  // K4: Rat.cast_inj (norm_cast at h₃)  // [ADDED]
}

