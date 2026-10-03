// CLOSED — failing line amc12b_2020_p21-1289: theorem amc12b_2020_p21, Dafny line 1289 (ERR: assertion might not hold)
// failing Dafny line: assert ((21 as real) <= Real.sqrt(470.0)) by {
// Lean step: norm_num [Real.le_sqrt, Real.sqrt_lt]
// hypotheses: 16 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: K5 — RealLeSqrt(21.0, 470.0);  (Mathlib Real.le_sqrt, in Lean's norm_num simp set)
// Dafny: finished with 11 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12b_2020_p21.dfy"
lemma {:induction false} vc_amc12b_2020_p21_L1289(S: set<nat>, k_0_0_0_0_0_0_0_0_5: int, n_0_0_0_0: int)
  requires 0 <= k_0_0_0_0_0_0_0_0_5
  requires forall n_1: int :: 0 <= n_1 ==> (n_1 in S) == (0 < n_1 && ((n_1 as real) + 1000.0) / 70.0 == (floor(Real.sqrt((n_1 as real))) as real))
  requires 0 <= n_0_0_0_0
  requires (0 < n_0_0_0_0) || (n_0_0_0_0 <= 0)
  requires (n_0_0_0_0 in S) == (0 < n_0_0_0_0 && ((n_0_0_0_0 as real) + 1000.0) / 70.0 == (floor(Real.sqrt((n_0_0_0_0 as real))) as real))
  requires ((0 < n_0_0_0_0) && (70.0 != 0.0) && (((0 < n_0_0_0_0) && (((n_0_0_0_0 as real) + 1000.0) / 70.0 == (floor(Real.sqrt((n_0_0_0_0 as real))) as real)) && (((n_0_0_0_0 != 400) && (((n_0_0_0_0 != 470) && (((n_0_0_0_0 != 2290) && (((n_0_0_0_0 != 2360) && ((n_0_0_0_0 != 2430) || (n_0_0_0_0 == 2430))) || (n_0_0_0_0 == 2360))) || (n_0_0_0_0 == 2290))) || (n_0_0_0_0 == 470))) || (n_0_0_0_0 == 400))) || (!(0 < n_0_0_0_0 && ((n_0_0_0_0 as real) + 1000.0) / 70.0 == (floor(Real.sqrt((n_0_0_0_0 as real))) as real))))) || ((n_0_0_0_0 <= 0) && (((0 < n_0_0_0_0) && (((n_0_0_0_0 as real) + 1000.0) / 70.0 == (floor(Real.sqrt((n_0_0_0_0 as real))) as real)) && (((n_0_0_0_0 != 400) && (((n_0_0_0_0 != 470) && (((n_0_0_0_0 != 2290) && (((n_0_0_0_0 != 2360) && ((n_0_0_0_0 != 2430) || (n_0_0_0_0 == 2430))) || (n_0_0_0_0 == 2360))) || (n_0_0_0_0 == 2290))) || (n_0_0_0_0 == 470))) || (n_0_0_0_0 == 400))) || (!(0 < n_0_0_0_0 && ((n_0_0_0_0 as real) + 1000.0) / 70.0 == (floor(Real.sqrt((n_0_0_0_0 as real))) as real)))))
  requires 0 < n_0_0_0_0 && ((n_0_0_0_0 as real) + 1000.0) / 70.0 == (floor(Real.sqrt((n_0_0_0_0 as real))) as real) ==> n_0_0_0_0 == 400 || n_0_0_0_0 == 470 || n_0_0_0_0 == 2290 || n_0_0_0_0 == 2360 || n_0_0_0_0 == 2430 || n_0_0_0_0 == 2500
  requires ((n_0_0_0_0 != 400) && (((n_0_0_0_0 != 470) && (((n_0_0_0_0 != 2290) && (((n_0_0_0_0 != 2360) && ((n_0_0_0_0 != 2430) || (n_0_0_0_0 == 2430))) || (n_0_0_0_0 == 2360))) || (n_0_0_0_0 == 2290))) || (n_0_0_0_0 == 470))) || (n_0_0_0_0 == 400)
  requires n_0_0_0_0 == 400 || n_0_0_0_0 == 470 || n_0_0_0_0 == 2290 || n_0_0_0_0 == 2360 || n_0_0_0_0 == 2430 || n_0_0_0_0 == 2500
  requires ((n_0_0_0_0 != 400) && (((n_0_0_0_0 != 470) && (((n_0_0_0_0 != 2290) && (((n_0_0_0_0 != 2360) && ((n_0_0_0_0 != 2430) || (n_0_0_0_0 == 2430))) || (n_0_0_0_0 == 2360))) || (n_0_0_0_0 == 2290))) || (n_0_0_0_0 == 470))) || (n_0_0_0_0 == 400)
  requires ((n_0_0_0_0 == 400) && (((400 != 400) && (((400 != 470) && (((400 != 2290) && (((400 != 2360) && ((400 != 2430) || (400 == 2430))) || (400 == 2360))) || (400 == 2290))) || (400 == 470))) || (400 == 400))) || (n_0_0_0_0 != 400)
  requires ((n_0_0_0_0 == 400) && (400 == 400 || 400 == 470 || 400 == 2290 || 400 == 2360 || 400 == 2430 || 400 == 2500) && (0 < 400) && (70.0 != 0.0) && (((400 as real) + 1000.0) / 70.0 == (floor(Real.sqrt((400 as real))) as real)) && ((0 < 400) || (!(0 < 400))) && (0 < 400) && (((n_0_0_0_0 == 470) && (((470 != 400) && (((470 != 470) && (((470 != 2290) && (((470 != 2360) && ((470 != 2430) || (470 == 2430))) || (470 == 2360))) || (470 == 2290))) || (470 == 470))) || (470 == 400))) || (n_0_0_0_0 != 470))) || ((!(n_0_0_0_0 == 400 && (400 == 400 || 400 == 470 || 400 == 2290 || 400 == 2360 || 400 == 2430 || 400 == 2500))) && (((n_0_0_0_0 == 470) && (((470 != 400) && (((470 != 470) && (((470 != 2290) && (((470 != 2360) && ((470 != 2430) || (470 == 2430))) || (470 == 2360))) || (470 == 2290))) || (470 == 470))) || (470 == 400))) || (n_0_0_0_0 != 470)))
  requires n_0_0_0_0 == 470
  requires 470 == 400 || 470 == 470 || 470 == 2290 || 470 == 2360 || 470 == 2430 || 470 == 2500
  requires 0 < 470
  requires (floor(Real.sqrt(470.0)) == 21) == ((21 as real) <= Real.sqrt(470.0) && Real.sqrt(470.0) < (21 as real) + 1.0)
  ensures   (21 as real) <= Real.sqrt(470.0)
{
  // K5: Real.le_sqrt (named in Lean's norm_num simp set; rewrote the goal to 21^2 <= 470)
  RealLeSqrt(21.0, 470.0);  // [ADDED]
                            // [TACTIC: «_<;>_» [ Real.le_sqrt , Real.sqrt_lt ] norm_num [ Real.le_sqrt , Real.sqrt_lt ] <;> nlinarith [ Real.sqrt_nonneg 470 , Real.sq_sqrt ( show 0 ≤ ( 470 : ℝ ) by norm_num norm_num ) , Real.sqrt_nonneg 470 , Real.sq_sqrt ( show 0 ≤ ( 470 : ℝ ) by norm_num norm_num ) ] nlinarith [ Real.sqrt_nonneg 470 , Real.sq_sqrt ( show 0 ≤ ( 470 : ℝ ) by norm_num norm_num ) , Real.sqrt_nonneg 470 , Real.sq_sqrt ( show 0 ≤ ( 470 : ℝ ) by norm_num norm_num ) ]]
                            // [TACTIC: «Norm_num[_]At___» [ Real.le_sqrt , Real.sqrt_lt ]]
                            // UNCITED Real.le_sqrt: no Lean instance recorded (arguments unknown), not guessed
                            // UNCITED Real.sqrt_lt: no Lean instance recorded (arguments unknown), not guessed
                            // UNCITED-APPLIED Nat.cast_zero: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
                            // `norm_num` closed the goal; the rest of the chain did not run
                            // [TACTIC: «Norm_num[_]At___»]
                            // [TACTIC: «Norm_num[_]At___»]
                            // UNCITED-APPLIED internal ×18 [exec 2250 11721-11758]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Mathlib.Meta.NormNum.isNat_le_true ×3, of_eq_true ×1, Eq.trans ×1 (+7 more heads, ×7)
}

