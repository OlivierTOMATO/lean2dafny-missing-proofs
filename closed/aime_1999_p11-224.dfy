// CLOSED — failing line aime_1999_p11-224: theorem aime_1999_p11, Dafny line 224 (OOR: Verification out of resource (aime_1999_p11))
// failing Dafny line: assert (((2.0 * Real.sin(((2.5 * Real.pi()) / 180.0))) * Real.sum(IccN(1, 35), ((k: nat) => Real.sin((((5.0 * (k as real)) * Real.pi()) / 180.0))))) == Real.sum(IccN(1, 35), ((k: nat) => ((2.0 * Real.
// Lean step: rw [Finset.mul_sum]
// hypotheses: 8 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: K1 — FinsetMulSumPointwise(IccN(1,35), k=>sin(5kπ/180), k=>2sin(2.5π/180)·sin(5kπ/180), 2sin(2.5π/180)) — Lean's recorded Finset.mul_sum instance via existing library lemma
// Dafny: finished with 21 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)
// NOTE: uses a MODIFIED library copy: see alt/aime_1999_p11-224/LIBRARY_CHANGES.diff

include "alt/aime_1999_p11-224/out/aime_1999_p11.dfy"
lemma {:induction false} vc_aime_1999_p11_L224(m: Rat.rat)
  requires m.Rational?
  requires gcd(Int.natAbs(m.num), m.denom) == 1
  requires Rat.lt(Rat.of_int(0), m)
  requires Rat.of_int(0).num * m.denom < m.num * Rat.of_int(0).denom
  requires Real.sum(IccN(1, 35), ((k: nat) => Real.sin(5.0 * (k as real) * Real.pi() / 180.0))) == Real.tan(m.to_real() * Real.pi() / 180.0)
  requires Real.div((m.num as real), (m.denom as real)) < 90.0
  requires 0 <= 1
  requires 0 <= 35
  ensures   2.0 * Real.sin(2.5 * Real.pi() / 180.0) * Real.sum(IccN(1, 35), ((k: nat) => Real.sin(5.0 * (k as real) * Real.pi() / 180.0))) == Real.sum(IccN(1, 35), ((v_0_0_0_6_k: nat) => 2.0 * Real.sin(2.5 * Real.pi() / 180.0) * Real.sin(5.0 * (v_0_0_0_6_k as real) * Real.pi() / 180.0)))
{
  FinsetMulSumPointwise(IccN(1, 35), ((k: nat) => Real.sin(5.0 * (k as real) * Real.pi() / 180.0)), ((v_0_0_0_6_k: nat) => 2.0 * Real.sin(2.5 * Real.pi() / 180.0) * Real.sin(5.0 * (v_0_0_0_6_k as real) * Real.pi() / 180.0)), 2.0 * Real.sin(2.5 * Real.pi() / 180.0));  // K1: Finset.mul_sum at Lean's instance (exec 68 cite)
}

