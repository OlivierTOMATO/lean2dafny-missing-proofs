// NOT CLOSED — failing line aime_1999_p11-335: theorem aime_1999_p11, Dafny line 335 (OOR: Verification out of resource (aime_1999_p11))
// failing Dafny line: assert (((2.0 * Real.sin(((2.5 * Real.pi()) / 180.0))) * Real.sin((((5.0 * (k as real)) * Real.pi()) / 180.0))) == (Real.cos(((((5.0 * (k as real)) - 2.5) * Real.pi()) / 180.0)) - Real.cos(((((5.0 * (
// Lean step: h₅
// hypotheses: 12 facts Z3 had at the line; nothing assumed beyond the facts in scope
// not closed: tried H0=oor, K1=oor, K3=oor; this file is the honest base attempt
// Dafny: finished with 25 verified, 0 errors, 1 out of resource  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/aime_1999_p11.dfy"
lemma {:induction false} vc_aime_1999_p11_L335(k_0_0_0_0_0_1_0_0_0: int, m: Rat.rat)
  requires m.Rational?
  requires gcd(Int.natAbs(m.num), m.denom) == 1
  requires Rat.lt(Rat.of_int(0), m)
  requires Rat.of_int(0).num * m.denom < m.num * Rat.of_int(0).denom
  requires Real.sum(IccN(1, 35), ((k: nat) => Real.sin(5.0 * (k as real) * Real.pi() / 180.0))) == Real.tan(m.to_real() * Real.pi() / 180.0)
  requires Real.div((m.num as real), (m.denom as real)) < 90.0
  requires 0 <= 1
  requires 0 <= 35
  requires 2.0 * Real.sin(2.5 * Real.pi() / 180.0) * Real.sum(IccN(1, 35), ((k: nat) => Real.sin(5.0 * (k as real) * Real.pi() / 180.0))) == Real.sum(IccN(1, 35), ((v_0_0_0_6_k: nat) => 2.0 * Real.sin(2.5 * Real.pi() / 180.0) * Real.sin(5.0 * (v_0_0_0_6_k as real) * Real.pi() / 180.0)))
  requires forall k_0_0_0_0_0_0_1: int :: 0 <= k_0_0_0_0_0_0_1 && k_0_0_0_0_0_0_1 in IccN(1, 35) ==> 2.0 * Real.sin(2.5 * Real.pi() / 180.0) * Real.sin(5.0 * (k_0_0_0_0_0_0_1 as real) * Real.pi() / 180.0) == Real.cos((5.0 * (k_0_0_0_0_0_0_1 as real) - 2.5) * Real.pi() / 180.0) - Real.cos((5.0 * (k_0_0_0_0_0_0_1 as real) + 2.5) * Real.pi() / 180.0)
  requires 0 <= k_0_0_0_0_0_1_0_0_0
  requires k_0_0_0_0_0_1_0_0_0 in IccN(1, 35)
  ensures   2.0 * Real.sin(2.5 * Real.pi() / 180.0) * Real.sin(5.0 * (k_0_0_0_0_0_1_0_0_0 as real) * Real.pi() / 180.0) == Real.cos((5.0 * (k_0_0_0_0_0_1_0_0_0 as real) - 2.5) * Real.pi() / 180.0) - Real.cos((5.0 * (k_0_0_0_0_0_1_0_0_0 as real) + 2.5) * Real.pi() / 180.0)
{ }

