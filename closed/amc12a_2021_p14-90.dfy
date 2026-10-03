// CLOSED — failing line amc12a_2021_p14-90: theorem amc12a_2021_p14, Dafny line 90 (OOR: Verification out of resource (amc12a_2021_p14))
// failing Dafny line: assert (Real.log(Real.pow(3.0, Int.pow(k, 2))) == (((k as real) * (k as real)) * Real.log(3.0))) by {
// Lean step: rw [Real.log_pow]
// hypotheses: 12 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: K2 — assert Int.pow(k_0_0, 2) == k_0_0 * k_0_0;  (k^2 = k*k as a checked assert)
// Dafny: finished with 19 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12a_2021_p14.dfy"
lemma {:induction false} vc_amc12a_2021_p14_L90(k_0_0: nat)
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
  requires ((k_0_0 * k_0_0) as real) * Real.log(3.0) == (k_0_0 as real) * (k_0_0 as real) * Real.log(3.0)
  ensures   Real.log(Real.pow(3.0, Int.pow(k_0_0, 2))) == (k_0_0 as real) * (k_0_0 as real) * Real.log(3.0)
{
  assert Int.pow(k_0_0, 2) == k_0_0 * k_0_0;  // computed: k^2 = k*k  // [ADDED]
          // [TACTIC: «_<;>_» [ Real.log_pow ] rw [ Real.log_pow ] <;> norm_cast norm_cast norm_cast <;> field_simp field_simp <;> ring]
          // [TACTIC: choice [ Real.log_pow ] rw [ Real.log_pow ]]
          RealLogPow(Int.pow(k_0_0, 2), 3.0);  // cite: Real.log_pow
          // UNCITED-APPLIED congrArg(Real.log ((3 : ℝ) ^ k ^ (2 : ℕ)), ↑(k ^ (2 : ℕ)) * Real.log (3 : ℝ), fun (_a : ℝ) => _a = ↑k ^ (2 : ℕ) * Real.log (3 : ℝ)): no library counterpart (not stated) [exec 253 1441-1458]
          assert ((((k_0_0 * k_0_0) as real) * Real.log(3.0)) == (((k_0_0 as real) * (k_0_0 as real)) * Real.log(3.0))) by {  // sub-goal of `norm_cast` (Lean state) // @tac 1471-1480
            assert ((((k_0_0 * k_0_0) as real) * Real.log(3.0)) == (((k_0_0 * k_0_0) as real) * Real.log(3.0)));  // sub-goal of `norm_cast` (Lean state)
            // UNCITED-APPLIED internal ×1 [exec 294 1471-1480]: applications made inside the tactic's own automation, not stated — machinery/glue: congrArg ×1
          }
}

