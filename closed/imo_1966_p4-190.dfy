// CLOSED — failing line imo_1966_p4-190: theorem imo_1966_p4, Dafny line 190 (OOR: Verification out of resource (imo_1966_p4))
// failing Dafny line: assert ((Real.pow(2.0, (m + 1)) * x) == (2.0 * (Real.pow(2.0, m) * x))) by {
// Lean step: ring
// hypotheses: 0 facts Z3 had at the line; this variant also drops 12 hypotheses; nothing assumed beyond the facts in scope
// how it closes: K3_K2pow — 
// Dafny: finished with 2 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)
// NOTE: uses a MODIFIED library copy: see alt/imo_1966_p4-190/LIBRARY_CHANGES.diff

include "alt/imo_1966_p4-190/out/imo_1966_p4.dfy"
lemma {:induction false} vc_imo_1966_p4_L190(m_1_0: nat, n: int, x: real)
  ensures   Real.pow(2.0, m_1_0 + 1) * x == 2.0 * (Real.pow(2.0, m_1_0) * x)
{
 
          // [TACTIC: Ring]
          // UNCITED-APPLIED internal ×50 [exec 373 2098-2102]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_zero ×5, Mathlib.Tactic.Ring.add_mul ×5, Mathlib.Tactic.Ring.mul_add ×5, Mathlib.Tactic.Ring.zero_mul ×4 (+18 more heads, ×31)
}

