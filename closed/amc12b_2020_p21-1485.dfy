// NOT CLOSED — failing line amc12b_2020_p21-1485: theorem amc12b_2020_p21, Dafny line 1485 (ERR: assertion might not hold)
// failing Dafny line: assert ((50 as real) <= Real.sqrt(2500.0)) by {
// Lean step: norm_num [Real.le_sqrt, Real.sqrt_lt]
// hypotheses: 5 facts Z3 had at the line; nothing assumed beyond the facts in scope
// not closed: tried H0=failed; this file is the honest base attempt
// Dafny: finished with 8 verified, 1 error  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12b_2020_p21.dfy"
lemma {:induction false} vc_amc12b_2020_p21_L1485(S: set<nat>, k_0_0_0_0_0_0_0_0_5: int, n_0_0_0_0: int)
  requires 0 <= k_0_0_0_0_0_0_0_0_5
  requires forall n_1: int :: 0 <= n_1 ==> (n_1 in S) == (0 < n_1 && ((n_1 as real) + 1000.0) / 70.0 == (floor(Real.sqrt((n_1 as real))) as real))
  requires 0 <= n_0_0_0_0
  requires (0 < n_0_0_0_0) || (n_0_0_0_0 <= 0)
  requires (n_0_0_0_0 in S) == (0 < n_0_0_0_0 && ((n_0_0_0_0 as real) + 1000.0) / 70.0 == (floor(Real.sqrt((n_0_0_0_0 as real))) as real))
  ensures   ((((0 < n_0_0_0_0) && (70.0 != 0.0) && (((n_0_0_0_0 as real) + 1000.0) / 70.0 == (floor(Real.sqrt((n_0_0_0_0 as real))) as real)) && (n_0_0_0_0 != 400)) || ((((0 < n_0_0_0_0) && (70.0 != 0.0) && (((0 < n_0_0_0_0) && (((n_0_0_0_0 as real) + 1000.0) / 70.0 == (floor(Real.sqrt((n_0_0_0_0 as real))) as real)) && (n_0_0_0_0 == 400)) || (!(0 < n_0_0_0_0 && ((n_0_0_0_0 as real) + 1000.0) / 70.0 == (floor(Real.sqrt((n_0_0_0_0 as real))) as real))))) || ((n_0_0_0_0 <= 0) && (!(0 < n_0_0_0_0 && ((n_0_0_0_0 as real) + 1000.0) / 70.0 == (floor(Real.sqrt((n_0_0_0_0 as real))) as real))))) && (0 < n_0_0_0_0 && ((n_0_0_0_0 as real) + 1000.0) / 70.0 == (floor(Real.sqrt((n_0_0_0_0 as real))) as real) ==> n_0_0_0_0 == 400 || n_0_0_0_0 == 470 || n_0_0_0_0 == 2290 || n_0_0_0_0 == 2360 || n_0_0_0_0 == 2430 || n_0_0_0_0 == 2500) && (((n_0_0_0_0 != 400) && (((n_0_0_0_0 != 470) && (((n_0_0_0_0 != 2290) && (((n_0_0_0_0 != 2360) && ((n_0_0_0_0 != 2430) || (n_0_0_0_0 == 2430))) || (n_0_0_0_0 == 2360))) || (n_0_0_0_0 == 2290))) || (n_0_0_0_0 == 470))) || (n_0_0_0_0 == 400)) && (n_0_0_0_0 == 400 || n_0_0_0_0 == 470 || n_0_0_0_0 == 2290 || n_0_0_0_0 == 2360 || n_0_0_0_0 == 2430 || n_0_0_0_0 == 2500) && (((n_0_0_0_0 != 400) && (((n_0_0_0_0 != 470) && (((n_0_0_0_0 != 2290) && (((n_0_0_0_0 != 2360) && ((n_0_0_0_0 != 2430) || (n_0_0_0_0 == 2430))) || (n_0_0_0_0 == 2360))) || (n_0_0_0_0 == 2290))) || (n_0_0_0_0 == 470))) || (n_0_0_0_0 == 400)) && (((n_0_0_0_0 == 400) && (((400 != 400) && (((400 != 470) && (((400 != 2290) && (((400 != 2360) && ((400 != 2430) || (400 == 2430))) || (400 == 2360))) || (400 == 2290))) || (400 == 470))) || (400 == 400))) || (n_0_0_0_0 != 400)) && (n_0_0_0_0 == 400) && (400 == 400 || 400 == 470 || 400 == 2290 || 400 == 2360 || 400 == 2430 || 400 == 2500) && (0 < 400) && (70.0 != 0.0) && (((400 as real) + 1000.0) / 70.0 == (floor(Real.sqrt((400 as real))) as real)) && ((0 < 400) || (!(0 < 400))) && (0 < 400)) || (n_0_0_0_0 <= 0)) ==> (false /*VC_GAP*/))
{
                            // [TACTIC: «Norm_num[_]At___» [ Real.le_sqrt , Real.sqrt_lt ]]
                            // UNCITED Real.le_sqrt: no Lean instance recorded (arguments unknown), not guessed
                            // UNCITED Real.sqrt_lt: no Lean instance recorded (arguments unknown), not guessed
                            // UNCITED-APPLIED Nat.cast_zero: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
                            // UNCITED-APPLIED internal ×18 [exec 2669 15906-15943]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Mathlib.Meta.NormNum.isNat_le_true ×3, of_eq_true ×1, Eq.trans ×1 (+7 more heads, ×7)
}

