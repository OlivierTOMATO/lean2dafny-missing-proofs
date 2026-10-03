// NOT CLOSED — failing line algebra_apbon2pownleqapownpbpowon2-274: theorem algebra_apbon2pownleqapownpbpowon2, Dafny line 274 (ERR: assertion might not hold)
// failing Dafny line: assert ((Real.pow(((a + b) / 2.0), n) * ((a + b) / 2.0)) <= (((Real.pow(a, n) + Real.pow(b, n)) / 2.0) * ((a + b) / 2.0))) by {
// Lean step: gcongr
// hypotheses: 17 facts Z3 had at the line (goal itself removed: 1; the block's own asserts removed: 5); nothing assumed beyond the facts in scope
// not closed: tried H0=failed; this file is the honest base attempt
// Dafny: finished with 32 verified, 1 error  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/algebra_apbon2pownleqapownpbpowon2.dfy"
lemma {:induction false} vc_algebra_apbon2pownleqapownpbpowon2_L274(a: real, b: real, n: nat)
  requires 0 <= n
  requires 0.0 < a
  requires 0.0 < b
  requires forall k_1: nat :: (a - b) * (Real.pow(a, k_1) - Real.pow(b, k_1)) >= 0.0
  requires n != 0
  requires 0 <= n - 1
  requires 0 <= n || n - 1 == n
  requires n - 1 < n
  requires forall k_1: nat :: (a - b) * (Real.pow(a, k_1) - Real.pow(b, k_1)) >= 0.0
  requires Real.pow((a + b) / 2.0, n - 1 + 1) <= (Real.pow(a, n - 1 + 1) + Real.pow(b, n - 1 + 1)) / 2.0
  requires 0 + 1 <= n
  requires (a - b) * (Real.pow(a, n) - Real.pow(b, n)) >= 0.0
  requires 2.0 != 0.0
  requires (a + b) / 2.0 > 0.0
  requires 0 <= n + 1
  requires Real.pow((a + b) / 2.0, n + 1) == Real.pow((a + b) / 2.0, n) * ((a + b) / 2.0)
  requires ((0.0 < a + b) && (0.0 < 2.0) && (0.0 < 2.0) && (0.0 < 2.0)) || ((0.0 < a + b) && (0.0 < 2.0) && (0.0 < 2.0) && (!(0.0 < a + b && 0.0 < 2.0))) || ((0.0 < a + b) && (0.0 < 2.0) && (0.0 < 2.0) && (a + b <= 0.0) && (0.0 < 2.0)) || ((0.0 < a + b) && (0.0 < 2.0) && (0.0 < 2.0) && (a + b <= 0.0) && (!(0.0 < a + b && 0.0 < 2.0))) || ((0.0 < a + b) && (!(0.0 < a + b && 0.0 < 2.0)) && (0.0 < 2.0) && (0.0 < 2.0)) || ((0.0 < a + b) && (!(0.0 < a + b && 0.0 < 2.0))) || ((0.0 < a + b) && (!(0.0 < a + b && 0.0 < 2.0)) && (a + b <= 0.0) && (0.0 < 2.0) && (0.0 < 2.0)) || ((0.0 < a + b) && (!(0.0 < a + b && 0.0 < 2.0)) && (a + b <= 0.0)) || ((a + b <= 0.0) && (0.0 < a + b) && (0.0 < 2.0) && (0.0 < 2.0) && (0.0 < 2.0)) || ((a + b <= 0.0) && (0.0 < a + b) && (0.0 < 2.0) && (0.0 < 2.0) && (!(0.0 < a + b && 0.0 < 2.0))) || ((a + b <= 0.0) && (!(0.0 < a + b && 0.0 < 2.0)) && (0.0 < a + b) && (0.0 < 2.0) && (0.0 < 2.0)) || ((a + b <= 0.0) && (!(0.0 < a + b && 0.0 < 2.0)) && (0.0 < a + b)) || ((a + b <= 0.0) && (!(0.0 < a + b && 0.0 < 2.0)))
  ensures   Real.pow((a + b) / 2.0, n) * ((a + b) / 2.0) <= (Real.pow(a, n) + Real.pow(b, n)) / 2.0 * ((a + b) / 2.0)
{
          // [TACTIC: «_<;>_» <;> linarith linarith]
          // [TACTIC: Gcongr]
          // gcongr: side goal 0 ≤ c (Lean: positivity), main goal X ≤ Y (Lean: closed by assumption inside gcongr), then mul_le_mul_of_nonneg_right
          assert (0.0 <= ((a + b) / 2.0));  // side goal of `gcongr` (Lean state)
          assert Real.pow(((a + b) / 2.0), n) <= ((Real.pow(a, n) + Real.pow(b, n)) / 2.0);  // sub-goal of `gcongr` (its main goal X <= Y, split from the Lean state X*c <= Y*c; Lean closed it by assumption)
          gcongr_mul_le_mul_right(Real.pow(((a + b) / 2.0), n), ((Real.pow(a, n) + Real.pow(b, n)) / 2.0), ((a + b) / 2.0));  // gcongr: mul_le_mul_of_nonneg_right
          assert ((0.0) < (((a + b) / 2.0)));  // precondition of LeOfLt (Lean: le_of_lt)
          LeOfLt(0.0, ((a + b) / 2.0));  // cite: le_of_lt [applied by the tactic, not named in it: inside its internal steps (`positivity` exec 544)]
          if (0.0 < ((a + b))) && (0.0 < (2.0)) { DivPos((a + b), 2.0); }  // cite: div_pos [applied by the tactic, not named in it: inside its internal steps (`positivity` exec 544)]
          // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 2449-2455 exec 544)
          if (0.0 < (a + b)) && (0.0 < 2.0) { cert_piece_19(a, b, n); }  // cert: div_pos
          // UNCITED-APPLIED internal ×1 [exec 542 2449-2455]: applications made inside the tactic's own automation, not stated — mul_le_mul_of_nonneg_right ×1
          // UNCITED-APPLIED internal ×3 [exec 544 2449-2455]: applications made inside the tactic's own automation, not stated — add_pos ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: div_pos [Lean recorded ×1], le_of_lt [Lean recorded ×1])
          // `gcongr` closed the goal; the rest of the chain did not run
}

