// CLOSED — failing line amc12a_2021_p14-95: theorem amc12a_2021_p14, Dafny line 95 (OOR: Verification out of resource (amc12a_2021_p14))
// failing Dafny line: assert ((((k * k) as real) * Real.log(3.0)) == (((k as real) * (k as real)) * Real.log(3.0))) by {
// Lean step: norm_cast
// hypotheses: 12 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: K2pow — libpow variant: Real.pow and Int.pow opaque, recursive ensures removed, explicit PowZero/PowSucc lemmas (work/shard_018/libpow)
// Dafny: finished with 12 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)
// NOTE: uses a MODIFIED library copy: see alt/amc12a_2021_p14-95/LIBRARY_CHANGES.diff

include "alt/amc12a_2021_p14-95/out/amc12a_2021_p14.dfy"
lemma {:induction false} vc_amc12a_2021_p14_L95(k_0_0: nat)
  requires 0 <= k_0_0
  requires 0 <= 1
  requires 0 <= 20
  requires k_0_0 in IccN(1, 20)
  requires 1 <= k_0_0
  requires k_0_0 <= 20
  requires k_0_0 >= 1
  requires 0 <= 2
  requires 0 <= Int.pow(k_0_0, 2)
  requires Real.logb(Real.pow(5.0, k_0_0), Real.pow(3.0, Int.pow(k_0_0, 2))) == Real.div(Real.log(Real.pow(3.0, Int.pow(k_0_0, 2))), Real.log(Real.pow(5.0, k_0_0)))
  requires Real.log(Real.pow(3.0, Int.pow(k_0_0, 2))) == (Int.pow(k_0_0, 2) as real) * Real.log(3.0)
  requires ((k_0_0 * k_0_0) as real) * Real.log(3.0) == ((k_0_0 * k_0_0) as real) * Real.log(3.0)
  ensures   ((k_0_0 * k_0_0) as real) * Real.log(3.0) == (k_0_0 as real) * (k_0_0 as real) * Real.log(3.0)
{

            assert ((((k_0_0 * k_0_0) as real) * Real.log(3.0)) == (((k_0_0 * k_0_0) as real) * Real.log(3.0)));  // sub-goal of `norm_cast` (Lean state)
            // UNCITED-APPLIED internal ×1 [exec 294 1471-1480]: applications made inside the tactic's own automation, not stated — machinery/glue: congrArg ×1
}

