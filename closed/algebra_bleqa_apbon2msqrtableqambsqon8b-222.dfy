// CLOSED — failing line algebra_bleqa_apbon2msqrtableqambsqon8b-222: theorem algebra_bleqa_apbon2msqrtableqambsqon8b, Dafny line 222 (ERR: assertion might not hold)
// failing Dafny line: assert (Real.sqrt(((x * x) * (y * y))) == (x * y)) by {
// Lean step: rw [Real.sqrt_eq_iff_sq_eq (by positivity) (by positivity)]
// hypotheses: 21 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: S — 
// Dafny: finished with 42 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/algebra_bleqa_apbon2msqrtableqambsqon8b.dfy"
lemma {:induction false} vc_algebra_bleqa_apbon2msqrtableqambsqon8b_L222(a: real, b: real, x: real, y_5_0: real)
  requires 0.0 < a
  requires 0.0 < b
  requires b <= a
  requires 0.0 < Real.sqrt(a)
  requires 0.0 < Real.sqrt(b)
  requires Real.sqrt(b) <= Real.sqrt(a)
  requires x == Real.sqrt(a)
  requires 0.0 < x
  requires Real.sqrt(b) <= x
  requires y_5_0 == Real.sqrt(b)
  requires 0.0 < y_5_0
  requires y_5_0 <= x
  requires x >= y_5_0
  requires a == x * x
  requires b == y_5_0 * y_5_0
  requires 0.0 <= x * x * (y_5_0 * y_5_0)
  requires 0.0 <= x * y_5_0
  requires 0 <= 2
  requires 0.0 <= Real.pow(x, 2) * Real.pow(y_5_0, 2)
  requires (Real.sqrt(Real.pow(x, 2) * Real.pow(y_5_0, 2)) == x * y_5_0) == (Real.pow(x * y_5_0, 2) == Real.pow(x, 2) * Real.pow(y_5_0, 2))
  requires x * y_5_0 * (x * y_5_0) == x * x * (y_5_0 * y_5_0)
  ensures   Real.sqrt(x * x * (y_5_0 * y_5_0)) == x * y_5_0
{
  assert Real.pow(x, 2) * Real.pow(y_5_0, 2) == x * x * (y_5_0 * y_5_0);  // [ADDED]
            assert (0.0 <= ((x * x) * (y_5_0 * y_5_0))) by {  // sub-goal of `by` (Lean state) // @tac 1192-1202
              // [TACTIC: Positivity]
              // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 1192-1202 exec 307)
              if (0.0 < (x * x)) && (0.0 < (y_5_0 * y_5_0)) { cert_piece_3(a, b, x, y_5_0); }  // cert: mul_pos
              // cert: pow_pos piece `(0.0 < (x * x))` not stated (only `0 < a ^ 2` of an atom a is lowered)
              // cert: pow_pos piece `(0.0 < (y * y))` not stated (only `0 < a ^ 2` of an atom a is lowered)
              // UNCITED-APPLIED internal ×2 [exec 307 1192-1202]: applications made inside the tactic's own automation, not stated — Real.sqrt_pos_of_pos ×2 (cited in this block, not counted here: le_of_lt [Lean recorded ×1], mul_pos [Lean recorded ×1], pow_pos [Lean recorded ×2])
              assert ((0.0) < (((x * x) * (y_5_0 * y_5_0))));  // precondition of LeOfLt (Lean: le_of_lt)
              LeOfLt(0.0, ((x * x) * (y_5_0 * y_5_0)));  // cite: le_of_lt [applied by the tactic, not named in it]
              assert (0.0 < ((x * x))) && (0.0 < ((y_5_0 * y_5_0)));  // precondition of MulPos (Lean: mul_pos)
              MulPos((x * x), (y_5_0 * y_5_0));  // cite: mul_pos [applied by the tactic, not named in it]
              assert (0.0 < (x));  // precondition of PowPos (Lean: pow_pos)
              PowPos(x, 2);  // cite: pow_pos [applied by the tactic, not named in it]
              assert (0.0 < (y_5_0));  // precondition of PowPos (Lean: pow_pos)
              PowPos(y_5_0, 2);  // cite: pow_pos [applied by the tactic, not named in it]
            }
            assert (0.0 <= (x * y_5_0)) by {  // sub-goal of `by` (Lean state) // @tac 1208-1218
              // [TACTIC: Positivity]
              // positivity proof (Lean execution 1208-1218 exec 312): nothing of it stated; Lean's records:
              // GAP: certificate piece mul_pos ((0.0 < (x * y))): factor signs not matched, no lemma call
              // UNCITED-APPLIED internal ×2 [exec 312 1208-1218]: applications made inside the tactic's own automation, not stated — Real.sqrt_pos_of_pos ×2 (cited in this block, not counted here: le_of_lt [Lean recorded ×1], mul_pos [Lean recorded ×1])
              assert ((0.0) < ((x * y_5_0)));  // precondition of LeOfLt (Lean: le_of_lt)
              LeOfLt(0.0, (x * y_5_0));  // cite: le_of_lt [applied by the tactic, not named in it]
              assert (0.0 < (x)) && (0.0 < (y_5_0));  // precondition of MulPos (Lean: mul_pos)
              MulPos(x, y_5_0);  // cite: mul_pos [applied by the tactic, not named in it]
            }
            // [TACTIC: rwSeq [ Real.sqrt_eq_iff_sq_eq ( by positivity ) ( by positivity ) ]]
            assert (0.0 <= ((Real.pow(x, 2) * Real.pow(y_5_0, 2)))) && (0.0 <= ((x * y_5_0)));  // precondition of RealSqrtEqIffSqEq (Lean: Real.sqrt_eq_iff_sq_eq)
            RealSqrtEqIffSqEq((Real.pow(x, 2) * Real.pow(y_5_0, 2)), (x * y_5_0));  // cite: Real.sqrt_eq_iff_sq_eq
            assert (((x * y_5_0) * (x * y_5_0)) == ((x * x) * (y_5_0 * y_5_0))) by {  // sub-goal before `nlinarith` (Lean state) // @tac 1227-1236
              // [TACTIC: «Nlinarith[_]At___»]
              // UNCITED-APPLIED internal ×82 [exec 337 1227-1236]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2; machinery/glue: Mathlib.Tactic.Ring.add_mul ×5, Mathlib.Tactic.Ring.mul_add ×5, Mathlib.Tactic.Ring.mul_pf_left ×5, Mathlib.Tactic.Ring.mul_zero ×4 (+36 more heads, ×61) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
              NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
            }
            // UNCITED-APPLIED congrArg(fun (_a : Prop) => _a): no library counterpart (not stated) [exec 300 1161-1220]
}

