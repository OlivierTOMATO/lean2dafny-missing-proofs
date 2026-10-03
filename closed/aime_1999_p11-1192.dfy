// CLOSED — failing line aime_1999_p11-1192: theorem aime_1999_p11, Dafny line 1192 (OOR: Verification out of resource (aime_1999_p11))
// failing Dafny line: assert (m.num == 175);
// Lean step: rw [h_m_val]
// hypotheses: 18 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: K5 — RatNumDivEqOfCoprime(175, 2) — the norm_num hint lemma Rat.num_div_eq_of_coprime (existing library counterpart)
// Dafny: finished with 23 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)
// NOTE: uses a MODIFIED library copy: see alt/aime_1999_p11-1192/LIBRARY_CHANGES.diff

include "alt/aime_1999_p11-1192/out/aime_1999_p11.dfy"
lemma {:induction false} vc_aime_1999_p11_L1192(m: Rat.rat)
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
  requires Rat.of_int(175).Rational?
  requires Rat.of_int(2).Rational?
  requires Rat.div(Rat.of_int(175), Rat.of_int(2)).Rational?
  requires m == Rat.div(Rat.of_int(175), Rat.of_int(2))
  ensures   m.num == 175
{
  RatNumDivEqOfCoprime(175, 2);  // K5: norm_num hint Rat.num_div_eq_of_coprime
}

