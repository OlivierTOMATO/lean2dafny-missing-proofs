// NOT CLOSED — failing line numbertheory_aoddbdiv4asqpbsqmod8eq1-184: theorem numbertheory_aoddbdiv4asqpbsqmod8eq1, Dafny line 184 (OOR: Verification out of resource (numbertheory_aoddbdiv4asqpbsqmod8eq1))
// failing Dafny line: assert NatDvd(8, ((4 * k) * (4 * k))) by {
// Lean step: ring_nf at *
// hypotheses: 18 facts Z3 had at the line; nothing assumed beyond the facts in scope
// not closed: tried H0=failed, K2=failed, K3=failed; this file is the honest base attempt
// Dafny: finished with 15 verified, 1 error  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/numbertheory_aoddbdiv4asqpbsqmod8eq1.dfy"
lemma {:induction false} vc_numbertheory_aoddbdiv4asqpbsqmod8eq1_L184(a: int, b: nat, k_1_1_1_2: int, k_1_1_1_3: int, k_1_1_1_3_0: int, k_1_1_1_4: int)
  requires 0 <= b
  requires 0 <= k_1_1_1_3
  requires Odd(a)
  requires a % 2 != 0
  requires NatDvd(4, b)
  requires if 4 == 0 then b == 0 else b % 4 == 0
  requires 8 != 0
  requires a * a % 8 == 1
  requires 0 <= 4
  requires exists k_1_1_1_1: nat :: b == 4 * k_1_1_1_1
  requires (0 <= 0 && b == 4 * 0) || (0 <= 0 && b == 4 * 0) || (exists as_k1_1_1_0_1_1_1_0: nat :: b == 4 * as_k1_1_1_0_1_1_1_0)
  requires 0 <= k_1_1_1_3_0
  requires b == 4 * k_1_1_1_3_0
  requires b == k_1_1_1_3_0 * 4
  requires 0 <= 8
  requires 0 <= k_1_1_1_3_0 * k_1_1_1_3_0 * 16
  requires NatDvd(8, k_1_1_1_3_0 * k_1_1_1_3_0 * 16)
  requires 0 <= 4 * k_1_1_1_3_0 * (4 * k_1_1_1_3_0)
  ensures   ((((0 <= k_1_1_1_2) && (0 <= k_1_1_1_4)) || ((0 <= k_1_1_1_2) && (k_1_1_1_4 < 0)) || ((k_1_1_1_2 < 0) && (0 <= k_1_1_1_4)) || ((k_1_1_1_2 < 0) && (k_1_1_1_4 < 0))) ==> (NatDvd(8, 4 * k_1_1_1_3_0 * (4 * k_1_1_1_3_0)) || (8 == 0 ==> 4 * k_1_1_1_3_0 * (4 * k_1_1_1_3_0) == 0)))
{
              // [TACTIC: Ring_nfAt at *]
              // UNCITED-APPLIED internal ×35 [exec 447 1827-1839]: applications made inside the tactic's own automation, not stated — add_zero ×1; machinery/glue: Mathlib.Tactic.Ring.cast_pos ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Tactic.Ring.add_mul ×2, Mathlib.Tactic.Ring.mul_add ×2 (+21 more heads, ×26)
              assert (b == (k_1_1_1_2 * 4));  // hypothesis h₃₅ after `ring_nf` (Lean state) // @tac-hyp 1827-1839
              assert (b == (k_1_1_1_2 * 4));  // hypothesis hk after `ring_nf` (Lean state) // @tac-hyp 1827-1839
              assert NatDvd(8, ((k_1_1_1_2 * k_1_1_1_2) * 16)) by {  // sub-goal before `use` (Lean state) // @tac 1850-1900 // @tac 1850-1890 // @tac 1850-1863
                // [TACTIC: «_<;>_» 2 * k ^ 2 <;> ring_nf at * <;> omega omega]
                // [TACTIC: Use 2 * k ^ 2]
                assert (((k_1_1_1_2 * k_1_1_1_2) * 16) == (8 * (2 * (k_1_1_1_2 * k_1_1_1_2))));  // sub-goal of `ring_nf` (Lean state) // @tac 1878-1890
                // UNCITED-APPLIED internal ×44 [exec 485 1878-1890]: applications made inside the tactic's own automation, not stated — add_zero ×1; machinery/glue: Mathlib.Tactic.Ring.add_mul ×3, Mathlib.Tactic.Ring.mul_add ×3, Mathlib.Tactic.Ring.mul_zero ×3, Mathlib.Tactic.Ring.add_pf_add_zero ×3 (+22 more heads, ×31)
              }
}

