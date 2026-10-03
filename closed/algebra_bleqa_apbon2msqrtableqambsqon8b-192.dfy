// CLOSED — failing line algebra_bleqa_apbon2msqrtableqambsqon8b-192: theorem algebra_bleqa_apbon2msqrtableqambsqon8b, Dafny line 192 (ERR: assertion might not hold)
// failing Dafny line: assert ((((a + b) / 2.0) - Real.sqrt((a * b))) == (((x - y) * (x - y)) / 2.0)) by {
// Lean step: have h₁₀₁ : a = x ^ 2 := by
// hypotheses: 16 facts Z3 had at the line (goal itself removed: 0; the block's own asserts removed: 1); nothing assumed beyond the facts in scope
// how it closes: S — 
// Dafny: finished with 57 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/algebra_bleqa_apbon2msqrtableqambsqon8b.dfy"
lemma {:induction false} vc_algebra_bleqa_apbon2msqrtableqambsqon8b_L192(a: real, b: real, x: real, y_5_0: real)
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
  requires b == y_5_0 * y_5_0
  requires 2.0 != 0.0
  requires (x * x + y_5_0 * y_5_0) / 2.0 - Real.sqrt(x * x * (y_5_0 * y_5_0)) == (x - y_5_0) * (x - y_5_0) / 2.0
  ensures   (a + b) / 2.0 - Real.sqrt(a * b) == (x - y_5_0) * (x - y_5_0) / 2.0
{
  assert a * b == x * x * (y_5_0 * y_5_0);
        // have h₁₀₁ : a == x ^ 2  [type from Lean state]
        assert (a == (x * x)) by { // @tac 899-955 // @tac 899-936
          // [TACTIC: «_<;>_» [ ← Real.sq_sqrt ( le_of_lt h₂ ) ] rw [ ← Real.sq_sqrt ( le_of_lt h₂ ) ] <;> simp [ x ] simp [ x ] simp [ x ]]
          // [TACTIC: rwSeq [ ← Real.sq_sqrt ( le_of_lt h₂ ) ]]
          assert ((0.0) < (a));  // precondition of LeOfLt (Lean: le_of_lt)
          LeOfLt(0.0, a);  // cite: le_of_lt
          // UNCITED-APPLIED Eq.symm((Real.sqrt(a) * Real.sqrt(a)), a): its premise is not established here and its conclusion is the same Dafny fact (== is symmetric): a guarded call would state nothing
          assert (0.0 <= (a));  // precondition of RealSqSqrt (Lean: Real.sq_sqrt)
          RealSqSqrt(a);  // cite: Real.sq_sqrt
          // `rw` closed the goal; the rest of the chain did not run
          // UNCITED-APPLIED congrArg(a, √a ^ (2 : ℕ), fun (_a : ℝ) => _a = x ^ (2 : ℕ)): no library counterpart (not stated) [exec 169 899-936]
        }
        // have h₁₀₂ : b == y ^ 2  [type from Lean state]
        assert (b == (y_5_0 * y_5_0)) by { // @tac 1000-1056 // @tac 1000-1037
          // [TACTIC: «_<;>_» [ ← Real.sq_sqrt ( le_of_lt h₃ ) ] rw [ ← Real.sq_sqrt ( le_of_lt h₃ ) ] <;> simp [ y ] simp [ y ] simp [ y ]]
          // [TACTIC: rwSeq [ ← Real.sq_sqrt ( le_of_lt h₃ ) ]]
          assert ((0.0) < (b));  // precondition of LeOfLt (Lean: le_of_lt)
          LeOfLt(0.0, b);  // cite: le_of_lt
          // UNCITED-APPLIED Eq.symm((Real.sqrt(b) * Real.sqrt(b)), b): its premise is not established here and its conclusion is the same Dafny fact (== is symmetric): a guarded call would state nothing
          assert (0.0 <= (b));  // precondition of RealSqSqrt (Lean: Real.sq_sqrt)
          RealSqSqrt(b);  // cite: Real.sq_sqrt
          // `rw` closed the goal; the rest of the chain did not run
          // UNCITED-APPLIED congrArg(b, √b ^ (2 : ℕ), fun (_a : ℝ) => _a = y ^ (2 : ℕ)): no library counterpart (not stated) [exec 221 1000-1037]
        }
        // [TACTIC: rwSeq [ h₁₀₁ , h₁₀₂ ]]
        // UNCITED-APPLIED congrArg(a, x ^ (2 : ℕ), fun (_a : ℝ) => (_a + b) / (2 : ℝ) - √(_a * b) = (x - y) ^ (2 : ℕ) / …): no library counterpart (not stated) [exec 252 1061-1088]
        // UNCITED-APPLIED congrArg(b, y ^ (2 : ℕ), fun (_a : ℝ) => (x ^ (2 : ℕ) + _a) / (2 : ℝ) - √(x ^ (2 : ℕ) * _a) = …): no library counterpart (not stated) [exec 252 1061-1088]
        assert (((((x * x) + (y_5_0 * y_5_0)) / 2.0) - Real.sqrt(((x * x) * (y_5_0 * y_5_0)))) == (((x - y_5_0) * (x - y_5_0)) / 2.0)) by {  // sub-goal before `have` (Lean state) // @tac 1093-1236 // @tac 1241-1449 // @tac 1454-1485 // @tac 1454-1469
          // have h₁₀₃ : Real.sqrt ( ( ( x ^ 2 ) * ( y ^ 2 ) ) ) == x * y  [type from Lean state]
          assert (Real.sqrt(((x * x) * (y_5_0 * y_5_0))) == (x * y_5_0)) by { // @tac 1161-1220
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
          // have h₁₀₄ : ( x ^ 2 + y ^ 2 ) / 2 - Real.sqrt ( ( ( x ^ 2 ) * ( y ^ 2 ) ) ) == ( x  [type from Lean state]
          assert (((((x * x) + (y_5_0 * y_5_0)) / 2.0) - Real.sqrt(((x * x) * (y_5_0 * y_5_0)))) == (((x - y_5_0) * (x - y_5_0)) / 2.0)) by { // @tac 1341-1356
            // [TACTIC: rwSeq [ h₁₀₃ ]]
            // UNCITED-APPLIED congrArg(√(x ^ (2 : ℕ) * y ^ (2 : ℕ)), x * y, fun (_a : ℝ) => (x ^ (2 : ℕ) + y ^ (2 : ℕ)) / (2 : ℝ) - _a = (x - y) …): no library counterpart (not stated) [exec 360 1341-1356]
            assert (((((x * x) + (y_5_0 * y_5_0)) / 2.0) - (x * y_5_0)) == (((x - y_5_0) * (x - y_5_0)) / 2.0)) by {  // sub-goal before `ring_nf` (Lean state) // @tac 1363-1449 // @tac 1363-1409 // @tac 1363-1391 // @tac 1363-1370
              // [TACTIC: «_<;>_» ring_nf <;> field_simp field_simp <;> ring_nf ring_nf <;> nlinarith [ sq_nonneg ( x - y ) ] nlinarith [ sq_nonneg ( x - y ) ]]
              // [TACTIC: Ring_nfAt]
              PowOne(x);  // cite: pow_one [applied by the tactic, not named in it]
              PowOne(y_5_0);  // cite: pow_one [applied by the tactic, not named in it]
              // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := y)
              // `ring_nf` closed the goal; the rest of the chain did not run
              // UNCITED-APPLIED internal ×163 [exec 402 1363-1370]: applications made inside the tactic's own automation, not stated — mul_one ×1, add_zero ×1; machinery/glue: Eq.trans ×8, congrArg ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8 (+63 more heads, ×129) (cited in this block, not counted here: pow_one [Lean recorded ×2])
            }
          }
          // [TACTIC: «_<;>_» [ h₁₀₄ ] rw [ h₁₀₄ ] <;> ring_nf ring_nf]
          // [TACTIC: rwSeq [ h₁₀₄ ]]
          // `rw` closed the goal; the rest of the chain did not run
          // UNCITED-APPLIED congrArg((x ^ (2 : ℕ) + y ^ (2 : ℕ)) / (2 : ℝ) - √(x ^ (2 : ℕ) * y ^ (2 : ℕ)), (x - y) ^ (2 : ℕ) / (2 : ℝ), fun (_a : ℝ) => _a = (x - y) ^ (2 : ℕ) / (2 : ℝ)): no library counterpart (not stated) [exec 430 1454-1469]
        }
}

