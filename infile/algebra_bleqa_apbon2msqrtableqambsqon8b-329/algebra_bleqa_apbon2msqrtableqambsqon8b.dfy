// ════════════════════════════════════════════════════════════
// MECHANICAL TRANSLATION (emitter v2) of ast_cache_v2/algebra_bleqa_apbon2msqrtableqambsqon8b.json
// Each Lean `have` → `assert ... by {}` at the same depth;
// quantified haves → forall statements. Typed pipeline only.
// ════════════════════════════════════════════════════════════

include "../../library/library_new.dfy"

// ──────────────────────────────────────────────────
// certificate identity for `h₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_1(a: real, b: real)
  ensures (-(a) + a) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_2(a: real, b: real)
  ensures (-(b) + b) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₁₀/h₁₀₃`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_3(a: real, b: real, x: real, y: real)
  requires (0.0 < (x * x))
  requires (0.0 < (y * y))
  ensures (0.0 < ((x * x) * (y * y)))
{
  MulPos((x * x), (y * y));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₁₂/h₁₂₆`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_4(a: real, b: real, x: real, y: real)
  requires (0.0 <= ((x - y) * (x - y)))
  requires (0.0 <= x)
  ensures (0.0 <= (((x - y) * (x - y)) * x))
{
  MulNonneg(((x - y) * (x - y)), x);
}

// ──────────────────────────────────────────────────
// certificate piece for `h₁₂/h₁₂₆`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_5(a: real, b: real, x: real, y: real)
  requires (0.0 <= ((x - y) * (x - y)))
  requires (0.0 <= y)
  ensures (0.0 <= (((x - y) * (x - y)) * y))
{
  MulNonneg(((x - y) * (x - y)), y);
}

// ──────────────────────────────────────────────────
// certificate piece for `h₁₂/h₁₂₆`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_6(a: real, b: real, x: real, y: real)
  requires (0.0 <= ((x + (3.0 * y)) * (x + (3.0 * y))))
  requires ((y - x) <= 0.0)
  ensures ((((x + (3.0 * y)) * (x + (3.0 * y))) * (y - x)) <= 0.0)
{
  MulNonneg(((x + (3.0 * y)) * (x + (3.0 * y))), -((y - x))); MulNeg(((x + (3.0 * y)) * (x + (3.0 * y))), (y - x)); assert (((x + (3.0 * y)) * (x + (3.0 * y)))) * (-((y - x))) == -((((x + (3.0 * y)) * (x + (3.0 * y)))) * ((y - x)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₁₂/h₁₂₆`: mul_pos_of_neg_of_neg (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_7(a: real, b: real, x: real, y: real)
  requires (0.0 < x)
  requires ((((x + y) * (x + y)) - (4.0 * (y * y))) < 0.0)
  ensures ((x * (((x + y) * (x + y)) - (4.0 * (y * y)))) < 0.0)
{
  MulPos(x, -((((x + y) * (x + y)) - (4.0 * (y * y))))); MulNeg(x, (((x + y) * (x + y)) - (4.0 * (y * y)))); assert (x) * (-((((x + y) * (x + y)) - (4.0 * (y * y))))) == -((x) * ((((x + y) * (x + y)) - (4.0 * (y * y)))));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₁₂/h₁₂₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_8(a: real, b: real, x: real, y: real)
  ensures (((-((3.0 * (((x - y) * (x - y)) * x))) + -((9.0 * (((x - y) * (x - y)) * y)))) + (((x + (3.0 * y)) * (x + (3.0 * y))) * (y - x))) + (4.0 * (x * (((x + y) * (x + y)) - (4.0 * (y * y)))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₁₂/h₁₂₇/h₁₃₁`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_9(a: real, b: real, x: real, y: real)
  requires (0.0 < ((x - y) * (x - y)))
  requires (0.0 < ((x + y) * (x + y)))
  ensures (0.0 < (((x - y) * (x - y)) * ((x + y) * (x + y))))
{
  MulPos(((x - y) * (x - y)), ((x + y) * (x + y)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₁₂/h₁₂₇`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_10(a: real, b: real, x: real, y: real)
  requires (0.0 <= ((x - y) * (x - y)))
  requires (((4.0 * (y * y)) - ((x + y) * (x + y))) <= 0.0)
  ensures ((((x - y) * (x - y)) * ((4.0 * (y * y)) - ((x + y) * (x + y)))) <= 0.0)
{
  MulNonneg(((x - y) * (x - y)), -(((4.0 * (y * y)) - ((x + y) * (x + y))))); MulNeg(((x - y) * (x - y)), ((4.0 * (y * y)) - ((x + y) * (x + y)))); assert (((x - y) * (x - y))) * (-(((4.0 * (y * y)) - ((x + y) * (x + y))))) == -((((x - y) * (x - y))) * (((4.0 * (y * y)) - ((x + y) * (x + y)))));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₁₂/h₁₂₇`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_11(a: real, b: real, x: real, y: real)
  ensures ((((((x - y) * (x - y)) * ((x + y) * (x + y))) * 2.0) - (((x - y) * (x - y)) * (8.0 * (y * y)))) + (2.0 * (((x - y) * (x - y)) * ((4.0 * (y * y)) - ((x + y) * (x + y)))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_12(a: real, b: real, x: real, y: real)
  ensures (((1.0 * (((1.0 * x) - (1.0 * y)) * ((1.0 * x) - (1.0 * y)))) - (2.0 * Real.div((((x - y) * (x - y)) * ((x + y) * (x + y))), (8.0 * (y * y))))) + ((2.0 * Real.div((((x - y) * (x - y)) * ((x + y) * (x + y))), (8.0 * (y * y)))) - (1.0 * (((1.0 * x) - (1.0 * y)) * ((1.0 * x) - (1.0 * y)))))) == 0.0
{ }

// statement: Lean elaborated type (v3, stmt_cache) — requires/ensures below
lemma algebra_bleqa_apbon2msqrtableqambsqon8b(a: real, b: real)
  requires ((0.0 < a) && (0.0 < b))
  requires (b <= a)
  ensures ((((a + b) / 2.0) - Real.sqrt((a * b))) <= Real.div(((a - b) * (a - b)), (8.0 * b))) // @tac 404-436 // @tac 439-471 // @tac 474-527 // @tac 530-583 // @tac 586-651 // @tac 654-674
{
  // have h₂ : 0 < a  [type from Lean state]
  assert (0.0 < a) by { // @tac 428-436
    // [TACTIC: «Linarith[_]At___»]
    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 428-436 exec 20)
    cert_identity_1(a, b);  // cert: add_lt_of_neg_of_le
    // UNCITED-APPLIED internal ×6 [exec 20 428-436]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
    // UNCITED-APPLIED internal ×20 [exec 21 428-436]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 21)]
  }
  // have h₃ : 0 < b  [type from Lean state]
  assert (0.0 < b) by { // @tac 463-471
    // [TACTIC: «Linarith[_]At___»]
    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 463-471 exec 38)
    cert_identity_2(a, b);  // cert: add_lt_of_neg_of_le
    // UNCITED-APPLIED internal ×6 [exec 38 463-471]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
    // UNCITED-APPLIED internal ×20 [exec 39 463-471]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 39)]
  }
  // have h₄ : 0 < Real.sqrt ( a )  [type from Lean state]
  assert (0.0 < Real.sqrt(a)) by {
    // [TACTIC: exact Real.sqrt_pos.mpr ( h₂ )]
    assert (0.0 < (a));  // precondition of RealSqrtPosMpr (Lean: Real.sqrt_pos.mpr)
    RealSqrtPosMpr(a);  // cite: Real.sqrt_pos.mpr
    // UNCITED-APPLIED Real.sqrt_pos(a): this block states the lemma as `cite: Real.sqrt_pos.mpr` (the direction of the iff the tactic uses); not stated under the recorded name [exec 49 474-527]
  }
  // have h₅ : 0 < Real.sqrt ( b )  [type from Lean state]
  assert (0.0 < Real.sqrt(b)) by {
    // [TACTIC: exact Real.sqrt_pos.mpr ( h₃ )]
    assert (0.0 < (b));  // precondition of RealSqrtPosMpr (Lean: Real.sqrt_pos.mpr)
    RealSqrtPosMpr(b);  // cite: Real.sqrt_pos.mpr
    // UNCITED-APPLIED Real.sqrt_pos(b): this block states the lemma as `cite: Real.sqrt_pos.mpr` (the direction of the iff the tactic uses); not stated under the recorded name [exec 61 530-583]
  }
  // have h₆ : Real.sqrt ( b ) <= Real.sqrt ( a )  [type from Lean state]
  assert (Real.sqrt(b) <= Real.sqrt(a)) by {
    // [TACTIC: exact Real.sqrt_le_sqrt ( h₁ )]
    assert (b) <= (a);  // precondition of RealSqrtLeSqrt (Lean: Real.sqrt_le_sqrt)
    RealSqrtLeSqrt(b, a);  // cite: Real.sqrt_le_sqrt
  }
  // set x := Real.sqrt a
  var x := Real.sqrt(a);
  if ((0.0 < x)) && ((Real.sqrt(b) <= x)) {  // sub-goal before `set` (Lean state)
    // set y := Real.sqrt b
    var y := Real.sqrt(b);
    if ((0.0 < y)) && ((y <= x)) {  // sub-goal before `have` (Lean state)
      // have h₇ : x >= y  [type from Lean state]
      assert (x >= y) by {
        // [TACTIC: exact h₆]
        assert (y <= x);  // hypothesis h₆ at `exact` (Lean state)
      }
      // have h₈ : 0 < y  [type from Lean state]
      assert (0.0 < y) by {
        // [TACTIC: exact h₅]
        assert (0.0 < y);  // hypothesis h₅ at `exact` (Lean state)
      }
      // have h₉ : 0 < x  [type from Lean state]
      assert (0.0 < x) by {
        // [TACTIC: exact h₄]
        assert (0.0 < x);  // hypothesis h₄ at `exact` (Lean state)
      }
      // have h₁₀ : ( a + b ) / 2 - Real.sqrt ( ( a * b ) ) == ( x - y ) ^ 2 / 2  [type from Lean state]
      assert ((((a + b) / 2.0) - Real.sqrt((a * b))) == (((x - y) * (x - y)) / 2.0)) by { // @tac 859-955 // @tac 960-1056 // @tac 1061-1088
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
        assert (b == (y * y)) by { // @tac 1000-1056 // @tac 1000-1037
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
        assert (((((x * x) + (y * y)) / 2.0) - Real.sqrt(((x * x) * (y * y)))) == (((x - y) * (x - y)) / 2.0)) by {  // sub-goal before `have` (Lean state) // @tac 1093-1236 // @tac 1241-1449 // @tac 1454-1485 // @tac 1454-1469
          // have h₁₀₃ : Real.sqrt ( ( ( x ^ 2 ) * ( y ^ 2 ) ) ) == x * y  [type from Lean state]
          assert (Real.sqrt(((x * x) * (y * y))) == (x * y)) by { // @tac 1161-1220
            assert (0.0 <= ((x * x) * (y * y))) by {  // sub-goal of `by` (Lean state) // @tac 1192-1202
              // [TACTIC: Positivity]
              // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 1192-1202 exec 307)
              if (0.0 < (x * x)) && (0.0 < (y * y)) { cert_piece_3(a, b, x, y); }  // cert: mul_pos
              // cert: pow_pos piece `(0.0 < (x * x))` not stated (only `0 < a ^ 2` of an atom a is lowered)
              // cert: pow_pos piece `(0.0 < (y * y))` not stated (only `0 < a ^ 2` of an atom a is lowered)
              // UNCITED-APPLIED internal ×2 [exec 307 1192-1202]: applications made inside the tactic's own automation, not stated — Real.sqrt_pos_of_pos ×2 (cited in this block, not counted here: le_of_lt [Lean recorded ×1], mul_pos [Lean recorded ×1], pow_pos [Lean recorded ×2])
              assert ((0.0) < (((x * x) * (y * y))));  // precondition of LeOfLt (Lean: le_of_lt)
              LeOfLt(0.0, ((x * x) * (y * y)));  // cite: le_of_lt [applied by the tactic, not named in it]
              assert (0.0 < ((x * x))) && (0.0 < ((y * y)));  // precondition of MulPos (Lean: mul_pos)
              MulPos((x * x), (y * y));  // cite: mul_pos [applied by the tactic, not named in it]
              assert (0.0 < (x));  // precondition of PowPos (Lean: pow_pos)
              PowPos(x, 2);  // cite: pow_pos [applied by the tactic, not named in it]
              assert (0.0 < (y));  // precondition of PowPos (Lean: pow_pos)
              PowPos(y, 2);  // cite: pow_pos [applied by the tactic, not named in it]
            }
            assert (0.0 <= (x * y)) by {  // sub-goal of `by` (Lean state) // @tac 1208-1218
              // [TACTIC: Positivity]
              // positivity proof (Lean execution 1208-1218 exec 312): nothing of it stated; Lean's records:
              // GAP: certificate piece mul_pos ((0.0 < (x * y))): factor signs not matched, no lemma call
              // UNCITED-APPLIED internal ×2 [exec 312 1208-1218]: applications made inside the tactic's own automation, not stated — Real.sqrt_pos_of_pos ×2 (cited in this block, not counted here: le_of_lt [Lean recorded ×1], mul_pos [Lean recorded ×1])
              assert ((0.0) < ((x * y)));  // precondition of LeOfLt (Lean: le_of_lt)
              LeOfLt(0.0, (x * y));  // cite: le_of_lt [applied by the tactic, not named in it]
              assert (0.0 < (x)) && (0.0 < (y));  // precondition of MulPos (Lean: mul_pos)
              MulPos(x, y);  // cite: mul_pos [applied by the tactic, not named in it]
            }
            // [TACTIC: rwSeq [ Real.sqrt_eq_iff_sq_eq ( by positivity ) ( by positivity ) ]]
            assert (0.0 <= ((Real.pow(x, 2) * Real.pow(y, 2)))) && (0.0 <= ((x * y)));  // precondition of RealSqrtEqIffSqEq (Lean: Real.sqrt_eq_iff_sq_eq)
            RealSqrtEqIffSqEq((Real.pow(x, 2) * Real.pow(y, 2)), (x * y));  // cite: Real.sqrt_eq_iff_sq_eq
            assert (((x * y) * (x * y)) == ((x * x) * (y * y))) by {  // sub-goal before `nlinarith` (Lean state) // @tac 1227-1236
              // [TACTIC: «Nlinarith[_]At___»]
              // UNCITED-APPLIED internal ×82 [exec 337 1227-1236]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2; machinery/glue: Mathlib.Tactic.Ring.add_mul ×5, Mathlib.Tactic.Ring.mul_add ×5, Mathlib.Tactic.Ring.mul_pf_left ×5, Mathlib.Tactic.Ring.mul_zero ×4 (+36 more heads, ×61) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
              NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
            }
            // UNCITED-APPLIED congrArg(fun (_a : Prop) => _a): no library counterpart (not stated) [exec 300 1161-1220]
          }
          // have h₁₀₄ : ( x ^ 2 + y ^ 2 ) / 2 - Real.sqrt ( ( ( x ^ 2 ) * ( y ^ 2 ) ) ) == ( x  [type from Lean state]
          assert (((((x * x) + (y * y)) / 2.0) - Real.sqrt(((x * x) * (y * y)))) == (((x - y) * (x - y)) / 2.0)) by { // @tac 1341-1356
            // [TACTIC: rwSeq [ h₁₀₃ ]]
            // UNCITED-APPLIED congrArg(√(x ^ (2 : ℕ) * y ^ (2 : ℕ)), x * y, fun (_a : ℝ) => (x ^ (2 : ℕ) + y ^ (2 : ℕ)) / (2 : ℝ) - _a = (x - y) …): no library counterpart (not stated) [exec 360 1341-1356]
            assert (((((x * x) + (y * y)) / 2.0) - (x * y)) == (((x - y) * (x - y)) / 2.0)) by {  // sub-goal before `ring_nf` (Lean state) // @tac 1363-1449 // @tac 1363-1409 // @tac 1363-1391 // @tac 1363-1370
              // [TACTIC: «_<;>_» ring_nf <;> field_simp field_simp <;> ring_nf ring_nf <;> nlinarith [ sq_nonneg ( x - y ) ] nlinarith [ sq_nonneg ( x - y ) ]]
              // [TACTIC: Ring_nfAt]
              PowOne(x);  // cite: pow_one [applied by the tactic, not named in it]
              PowOne(y);  // cite: pow_one [applied by the tactic, not named in it]
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
      // have h₁₁ : ( a - b ) ^ 2 / ( 8 * b ) == ( x - y ) ^ 2 * ( x + y ) ^ 2 / ( 8 * y ^  [type from Lean state]
      assert (Real.div(((a - b) * (a - b)), (8.0 * b)) == Real.div((((x - y) * (x - y)) * ((x + y) * (x + y))), (8.0 * (y * y)))) by { // @tac 1572-1668 // @tac 1673-1769 // @tac 1774-1801
        // have h₁₁₁ : a == x ^ 2  [type from Lean state]
        assert (a == (x * x)) by { // @tac 1612-1668 // @tac 1612-1649
          // [TACTIC: «_<;>_» [ ← Real.sq_sqrt ( le_of_lt h₂ ) ] rw [ ← Real.sq_sqrt ( le_of_lt h₂ ) ] <;> simp [ x ] simp [ x ] simp [ x ]]
          // [TACTIC: rwSeq [ ← Real.sq_sqrt ( le_of_lt h₂ ) ]]
          assert ((0.0) < (a));  // precondition of LeOfLt (Lean: le_of_lt)
          LeOfLt(0.0, a);  // cite: le_of_lt
          // UNCITED-APPLIED Eq.symm((Real.sqrt(a) * Real.sqrt(a)), a): its premise is not established here and its conclusion is the same Dafny fact (== is symmetric): a guarded call would state nothing
          assert (0.0 <= (a));  // precondition of RealSqSqrt (Lean: Real.sq_sqrt)
          RealSqSqrt(a);  // cite: Real.sq_sqrt
          // `rw` closed the goal; the rest of the chain did not run
          // UNCITED-APPLIED congrArg(a, √a ^ (2 : ℕ), fun (_a : ℝ) => _a = x ^ (2 : ℕ)): no library counterpart (not stated) [exec 498 1612-1649]
        }
        // have h₁₁₂ : b == y ^ 2  [type from Lean state]
        assert (b == (y * y)) by { // @tac 1713-1769 // @tac 1713-1750
          // [TACTIC: «_<;>_» [ ← Real.sq_sqrt ( le_of_lt h₃ ) ] rw [ ← Real.sq_sqrt ( le_of_lt h₃ ) ] <;> simp [ y ] simp [ y ] simp [ y ]]
          // [TACTIC: rwSeq [ ← Real.sq_sqrt ( le_of_lt h₃ ) ]]
          assert ((0.0) < (b));  // precondition of LeOfLt (Lean: le_of_lt)
          LeOfLt(0.0, b);  // cite: le_of_lt
          // UNCITED-APPLIED Eq.symm((Real.sqrt(b) * Real.sqrt(b)), b): its premise is not established here and its conclusion is the same Dafny fact (== is symmetric): a guarded call would state nothing
          assert (0.0 <= (b));  // precondition of RealSqSqrt (Lean: Real.sq_sqrt)
          RealSqSqrt(b);  // cite: Real.sq_sqrt
          // `rw` closed the goal; the rest of the chain did not run
          // UNCITED-APPLIED congrArg(b, √b ^ (2 : ℕ), fun (_a : ℝ) => _a = y ^ (2 : ℕ)): no library counterpart (not stated) [exec 550 1713-1750]
        }
        // [TACTIC: rwSeq [ h₁₁₁ , h₁₁₂ ]]
        // UNCITED-APPLIED congrArg(a, x ^ (2 : ℕ), fun (_a : ℝ) => (_a - b) ^ (2 : ℕ) / ((8 : ℝ) * b) = (x - y) ^ (2 : ℕ…): no library counterpart (not stated) [exec 581 1774-1801]
        // UNCITED-APPLIED congrArg(b, y ^ (2 : ℕ), fun (_a : ℝ) => (x ^ (2 : ℕ) - _a) ^ (2 : ℕ) / ((8 : ℝ) * _a) = (x - …): no library counterpart (not stated) [exec 581 1774-1801]
        assert (Real.div((((x * x) - (y * y)) * ((x * x) - (y * y))), (8.0 * (y * y))) == Real.div((((x - y) * (x - y)) * ((x + y) * (x + y))), (8.0 * (y * y)))) by {  // sub-goal before `have` (Lean state) // @tac 1806-1956 // @tac 1961-2185 // @tac 1961-2128 // @tac 1961-2112 // @tac 1961-2052 // @tac 1961-2036 // @tac 1961-1976
          // have h₁₁₃ : ( x ^ 2 - y ^ 2 ) ^ 2 == ( x - y ) ^ 2 * ( x + y ) ^ 2  [type from Lean state]
          assert ((((x * x) - (y * y)) * ((x * x) - (y * y))) == (((x - y) * (x - y)) * ((x + y) * (x + y)))); // @tac 1884-1956 // @tac 1884-1891
          // UNCITED-APPLIED internal ×216 [exec 630 1884-1891]: applications made inside the tactic's own automation, not stated — mul_one ×2, add_zero ×1; machinery/glue: Eq.trans ×8, congrArg ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8 (+54 more heads, ×181)
            // [TACTIC: «_<;>_» ring_nf <;> nlinarith [ sq_nonneg ( x - y ) , sq_nonneg ( x + y ) ] nlinarith [ sq_nonneg ( x - y ) , sq_nonneg ( x + y ) ]]
            // [TACTIC: Ring_nfAt]
            // UNCITED-APPLIED mul_one ×2: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := x ^ (4 : ℕ)); (a := y ^ (4 : ℕ))
            // `ring_nf` closed the goal; the rest of the chain did not run
          // [TACTIC: «_<;>_» [ h₁₁₃ ] rw [ h₁₁₃ ] <;> field_simp [ h₃.ne' , h₂.ne' , h₈.ne' , h₉.ne' ] field_simp [ h₃.ne' , h₂.ne' , h₈.ne' , h₉.ne' ] <;> ring_nf ring_nf <;> field_simp [ h₃.ne' , h₂.ne' , h₈.ne' , h₉.ne' ] field_simp [ h₃.ne' , h₂.ne' , h₈.ne' , h₉.ne' ] <;> ring_nf ring_nf <;> nlinarith [ sq_nonneg ( x - y ) , sq_nonneg ( x + y ) ] nlinarith [ sq_nonneg ( x - y ) , sq_nonneg ( x + y ) ]]
          // [TACTIC: rwSeq [ h₁₁₃ ]]
          // `rw` closed the goal; the rest of the chain did not run
          // UNCITED-APPLIED congrArg((x ^ (2 : ℕ) - y ^ (2 : ℕ)) ^ (2 : ℕ), (x - y) ^ (2 : ℕ) * (x + y) ^ (2 : ℕ), fun (_a : ℝ) => _a / ((8 : ℝ) * y ^ (2 : ℕ)) = (x - y) ^ (2 : ℕ) * (x…): no library counterpart (not stated) [exec 666 1961-1976]
        }
      }
      // have h₁₂ : ( x - y ) ^ 2 / 2 <= ( x - y ) ^ 2 * ( x + y ) ^ 2 / ( 8 * y ^ 2 )  [type from Lean state]
      assert ((((x - y) * (x - y)) / 2.0) <= Real.div((((x - y) * (x - y)) * ((x + y) * (x + y))), (8.0 * (y * y)))) by { // @tac 2268-2324 // @tac 2329-2360 // @tac 2365-2396 // @tac 2401-2445 // @tac 2450-2494 // @tac 2499-2657 // @tac 2662-3265 // @tac 3270-3286
        // have h₁₂₁ : 0 <= ( x - y ) ^ 2  [type from Lean state]
        assert (0.0 <= ((x - y) * (x - y))) by {
          // [TACTIC: exact sq_nonneg ( ( x - y ) )]
          SqNonneg((x - y));  // cite: sq_nonneg
          // `refine` step's recorded applications: the lemma applications Lean's proof term of this step is built from (no linarith run here) (Lean execution 2268-2324 exec 742)
          assert 0.0 < a;  /* [IN-FILE CHECK] requires 1 of vc_algebra_bleqa_apbon2msqrtableqambsqon8b_L329 */
          assert 0.0 < b;  /* [IN-FILE CHECK] requires 2 of vc_algebra_bleqa_apbon2msqrtableqambsqon8b_L329 */
          assert b <= a;  /* [IN-FILE CHECK] requires 3 of vc_algebra_bleqa_apbon2msqrtableqambsqon8b_L329 */
          assert 0.0 < Real.sqrt(a);  /* [IN-FILE CHECK] requires 4 of vc_algebra_bleqa_apbon2msqrtableqambsqon8b_L329 */
          assert 0.0 < Real.sqrt(b);  /* [IN-FILE CHECK] requires 5 of vc_algebra_bleqa_apbon2msqrtableqambsqon8b_L329 */
          assert Real.sqrt(b) <= Real.sqrt(a);  /* [IN-FILE CHECK] requires 6 of vc_algebra_bleqa_apbon2msqrtableqambsqon8b_L329 */
          assert x == Real.sqrt(a);  /* [IN-FILE CHECK] requires 7 of vc_algebra_bleqa_apbon2msqrtableqambsqon8b_L329 */
          assert 0.0 < x;  /* [IN-FILE CHECK] requires 8 of vc_algebra_bleqa_apbon2msqrtableqambsqon8b_L329 */
          assert Real.sqrt(b) <= x;  /* [IN-FILE CHECK] requires 9 of vc_algebra_bleqa_apbon2msqrtableqambsqon8b_L329 */
          assert y == Real.sqrt(b);  /* [IN-FILE CHECK] requires 10 of vc_algebra_bleqa_apbon2msqrtableqambsqon8b_L329 */
          assert 0.0 < y;  /* [IN-FILE CHECK] requires 11 of vc_algebra_bleqa_apbon2msqrtableqambsqon8b_L329 */
          assert y <= x;  /* [IN-FILE CHECK] requires 12 of vc_algebra_bleqa_apbon2msqrtableqambsqon8b_L329 */
          assert x >= y;  /* [IN-FILE CHECK] requires 13 of vc_algebra_bleqa_apbon2msqrtableqambsqon8b_L329 */
          assert 2.0 != 0.0;  /* [IN-FILE CHECK] requires 14 of vc_algebra_bleqa_apbon2msqrtableqambsqon8b_L329 */
          assert (a + b) / 2.0 - Real.sqrt(a * b) == (x - y) * (x - y) / 2.0;  /* [IN-FILE CHECK] requires 15 of vc_algebra_bleqa_apbon2msqrtableqambsqon8b_L329 */
          assert Real.div((a - b) * (a - b), 8.0 * b) == Real.div((x - y) * (x - y) * ((x + y) * (x + y)), 8.0 * (y * y));  /* [IN-FILE CHECK] requires 16 of vc_algebra_bleqa_apbon2msqrtableqambsqon8b_L329 */
          vc_algebra_bleqa_apbon2msqrtableqambsqon8b_L329(a, b, x, y);  /* [IN-FILE CHECK] the closed lemma for line 329 */
          SqNonneg((x - y)); assert (0.0 <= ((x - y) * (x - y)));  // cert: sq_nonneg
        }
        // have h₁₂₂ : 0 < y  [type from Lean state]
        assert (0.0 < y) by {
          // [TACTIC: exact h₈]
          assert (0.0 < y);
        }
        // have h₁₂₃ : 0 < x  [type from Lean state]
        assert (0.0 < x) by {
          // [TACTIC: exact h₉]
          assert (0.0 < x);
        }
        // have h₁₂₄ : 0 < y ^ 2  [type from Lean state]
        assert (0.0 < (y * y)) by { // @tac 2435-2445
          // [TACTIC: Positivity]
          // positivity proof (Lean execution 2435-2445 exec 785): nothing of it stated; Lean's records:
          // cert: pow_pos piece `(0.0 < (y * y))` not stated (only `0 < a ^ 2` of an atom a is lowered)
          // UNCITED-APPLIED internal ×1 [exec 785 2435-2445]: applications made inside the tactic's own automation, not stated — Real.sqrt_pos_of_pos ×1 (cited in this block, not counted here: pow_pos [Lean recorded ×1])
          assert (0.0 < (y));  // precondition of PowPos (Lean: pow_pos)
          PowPos(y, 2);  // cite: pow_pos [applied by the tactic, not named in it]
        }
        // have h₁₂₅ : 0 < x ^ 2  [type from Lean state]
        assert (0.0 < (x * x)) by { // @tac 2484-2494
          // [TACTIC: Positivity]
          // positivity proof (Lean execution 2484-2494 exec 802): nothing of it stated; Lean's records:
          // cert: pow_pos piece `(0.0 < (x * x))` not stated (only `0 < a ^ 2` of an atom a is lowered)
          // UNCITED-APPLIED internal ×1 [exec 802 2484-2494]: applications made inside the tactic's own automation, not stated — Real.sqrt_pos_of_pos ×1 (cited in this block, not counted here: pow_pos [Lean recorded ×1])
          assert (0.0 < (x));  // precondition of PowPos (Lean: pow_pos)
          PowPos(x, 2);  // cite: pow_pos [applied by the tactic, not named in it]
        }
        // have h₁₂₆ : 4 * y ^ 2 <= ( x + y ) ^ 2  [type from Lean state]
        assert ((4.0 * (y * y)) <= ((x + y) * (x + y))) by { // @tac 2555-2657
          // [TACTIC: «Nlinarith[_]At___» [ sq_nonneg ( x - y ) , sq_nonneg ( x + y ) , sq_nonneg ( x - 3 * y ) , sq_nonneg ( x + 3 * y ) ]]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2555-2657 exec 819)
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(3 : ℝ) * -(-(x - y) ^ (2 : ℕ) * -x) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= (((x - y) * (x - y)) * x)); (3.0 > 0.0)
          if (0.0 <= ((x - y) * (x - y))) && (0.0 <= x) { cert_piece_4(a, b, x, y); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          SqNonneg((x - y)); assert (0.0 <= ((x - y) * (x - y)));  // cert: sq_nonneg
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(9 : ℝ) * -(-(x - y) ^ (2 : ℕ) * -y) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= (((x - y) * (x - y)) * y)); (9.0 > 0.0)
          if (0.0 <= ((x - y) * (x - y))) && (0.0 <= y) { cert_piece_5(a, b, x, y); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          if (0.0 <= ((x + (3.0 * y)) * (x + (3.0 * y)))) && ((y - x) <= 0.0) { cert_piece_6(a, b, x, y); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          SqNonneg((x + (3.0 * y))); assert (0.0 <= ((x + (3.0 * y)) * (x + (3.0 * y))));  // cert: sq_nonneg
          // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(4 : ℝ) * -(-x * ((x + y) ^ (2 : ℕ) - (4 : ℝ) * y ^ (2 : ℕ))) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((x * (((x + y) * (x + y)) - (4.0 * (y * y)))) < 0.0); (4.0 > 0.0)
          if (0.0 < x) && ((((x + y) * (x + y)) - (4.0 * (y * y))) < 0.0) { cert_piece_7(a, b, x, y); }  // cert: mul_pos_of_neg_of_neg
          // UNCITED-APPLIED add_nonpos ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(3 : ℝ) * -(-(x - y) ^ (2 : ℕ) * -x) + (9 : ℝ) * -(-(x - y) ^ (2 : ℕ) * -y) + -(-(x + (3 : ℝ) * y) ^ (2 : ℕ) * (y - x))…`
          cert_identity_8(a, b, x, y);  // cert: add_lt_of_le_of_neg
          // UNCITED-APPLIED internal ×307 [exec 819 2555-2657]: applications made inside the tactic's own automation, not stated — neg_nonpos_of_nonneg ×5, mul_nonneg_of_nonpos_of_nonpos ×3, neg_neg_of_pos ×3, add_nonpos ×2, le_of_not_gt ×1, add_lt_of_le_of_neg ×1, sub_nonpos_of_le ×1, mul_pos_of_neg_of_neg ×1, sub_neg_of_lt ×1; machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.neg_congr ×8, Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Meta.NormNum.IsInt.of_raw ×8 (+52 more heads, ×257) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1], le_of_lt [Lean recorded ×2], sq_nonneg [Lean recorded ×2])
          // UNCITED-APPLIED internal ×5 [exec 827 2555-2657]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 828 2555-2657]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 829 2555-2657]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          SqNonneg((x - y));  // cite: sq_nonneg
          SqNonneg((x + (3.0 * y)));  // cite: sq_nonneg
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
          if ((-(x)) < (0.0)) { LeOfLt(-(x), 0.0); }  // cite: le_of_lt [applied by the tactic, not named in it]
          if ((-(y)) < (0.0)) { LeOfLt(-(y), 0.0); }  // cite: le_of_lt [applied by the tactic, not named in it]
          // NOT APPLIED `sq_nonneg ( x + y )`, `sq_nonneg ( x - 3 * y )`: named here, but no application Lean recorded at this tactic has their arguments (2 of the 4 named instances match a recorded application)
        }
        // have h₁₂₇ : ( x - y ) ^ 2 / 2 <= ( x - y ) ^ 2 * ( x + y ) ^ 2 / ( 8 * y ^ 2 )  [type from Lean state]
        assert ((((x - y) * (x - y)) / 2.0) <= Real.div((((x - y) * (x - y)) * ((x + y) * (x + y))), (8.0 * (y * y)))) by { // @tac 2752-2780
          // by_cases h : ( x - y ) ^ 2 = 0
          if (((x - y) * (x - y)) == 0.0) {
            assert ((((x - y) * (x - y)) / 2.0) <= Real.div((((x - y) * (x - y)) * ((x + y) * (x + y))), (8.0 * (y * y)))) by {  // sub-goal before `rw` (Lean state) // @tac 2790-2836 // @tac 2790-2813 // @tac 2790-2796 // @tac 2787-2836
              // [TACTIC: «_<;>_» [ h ] rw [ h ] <;> simp simp simp <;> positivity]
              // [TACTIC: choice [ h ] rw [ h ]]
              // UNCITED-APPLIED congrArg((x - y) ^ (2 : ℕ), (0 : ℝ), fun (_a : ℝ) => _a / (2 : ℝ) ≤ _a * (x + y) ^ (2 : ℕ) / ((8 : ℝ) * y …): no library counterpart (not stated) [exec 869 2790-2796]
              assert ((0.0 / 2.0) <= Real.div((0.0 * ((x + y) * (x + y))), (8.0 * (y * y))));  // sub-goal of `simp` (Lean state) // @tac 2809-2813
              // UNCITED-APPLIED internal ×8 [exec 904 2809-2813]: applications made inside the tactic's own automation, not stated — zero_div ×2; machinery/glue: Eq.trans ×2, congrArg ×2, of_eq_true ×1, congr ×1
            }
          } else {
            assert ((((x - y) * (x - y)) / 2.0) <= Real.div((((x - y) * (x - y)) * ((x + y) * (x + y))), (8.0 * (y * y)))) by {  // sub-goal before `have` (Lean state) // @tac 2846-2896 // @tac 2843-3265 // @tac 2905-2962 // @tac 2971-3019 // @tac 3028-3092 // @tac 3101-3152
              // have h₁₂₈ : 0 < ( x - y ) ^ 2  [type from Lean state]
              assert (0.0 < ((x - y) * (x - y))); // @tac 2886-2896
                // [TACTIC: Positivity]
              // UNCITED-APPLIED internal ×2 [exec 931 2886-2896]: applications made inside the tactic's own automation, not stated — Mathlib.Meta.Positivity.lt_of_le_of_ne' ×1, pow_bit0_nonneg ×1
              // have h₁₂₉ : 4 * y ^ 2 <= ( x + y ) ^ 2  [type from Lean state]
              assert ((4.0 * (y * y)) <= ((x + y) * (x + y))) by {
                // [TACTIC: exact h₁₂₆]
                assert ((4.0 * (y * y)) <= ((x + y) * (x + y)));
              }
              // have h₁₃₀ : 0 < 8 * y ^ 2  [type from Lean state]
              assert (0.0 < (8.0 * (y * y))) by { // @tac 3009-3019
                // [TACTIC: Positivity]
                // positivity proof (Lean execution 3009-3019 exec 960): nothing of it stated; Lean's records:
                // UNCITED-APPLIED mul_pos: certificate piece `(0 : ℝ) < (8 : ℝ) * y ^ (2 : ℕ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 8.0); (0.0 < (y * y))
                // cert: pow_pos piece `(0.0 < (y * y))` not stated (only `0 < a ^ 2` of an atom a is lowered)
                // UNCITED-APPLIED internal ×3 [exec 960 3009-3019]: applications made inside the tactic's own automation, not stated — Mathlib.Meta.Positivity.pos_of_isNat ×1, Real.sqrt_pos_of_pos ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: mul_pos [Lean recorded ×1], pow_pos [Lean recorded ×1])
                assert (0.0 < (8.0)) && (0.0 < ((y * y)));  // precondition of MulPos (Lean: mul_pos)
                MulPos(8.0, (y * y));  // cite: mul_pos [applied by the tactic, not named in it]
                assert (0.0 < (y));  // precondition of PowPos (Lean: pow_pos)
                PowPos(y, 2);  // cite: pow_pos [applied by the tactic, not named in it]
              }
              // have h₁₃₁ : 0 < ( x - y ) ^ 2 * ( x + y ) ^ 2  [type from Lean state]
              assert (0.0 < (((x - y) * (x - y)) * ((x + y) * (x + y)))) by { // @tac 3082-3092
                // [TACTIC: Positivity]
                // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 3082-3092 exec 977)
                if (0.0 < ((x - y) * (x - y))) && (0.0 < ((x + y) * (x + y))) { cert_piece_9(a, b, x, y); }  // cert: mul_pos
                // cert: pow_pos piece `(0.0 < ((x + y) * (x + y)))` not stated (only `0 < a ^ 2` of an atom a is lowered)
                // UNCITED-APPLIED internal ×5 [exec 977 3082-3092]: applications made inside the tactic's own automation, not stated — Real.sqrt_pos_of_pos ×2, Mathlib.Meta.Positivity.lt_of_le_of_ne' ×1, pow_bit0_nonneg ×1, add_pos ×1 (cited in this block, not counted here: mul_pos [Lean recorded ×1], pow_pos [Lean recorded ×1])
                assert (0.0 < (((x - y) * (x - y)))) && (0.0 < (((x + y) * (x + y))));  // precondition of MulPos (Lean: mul_pos)
                MulPos(((x - y) * (x - y)), ((x + y) * (x + y)));  // cite: mul_pos [applied by the tactic, not named in it]
                assert (0.0 < ((x + y)));  // precondition of PowPos (Lean: pow_pos)
                PowPos((x + y), 2);  // cite: pow_pos [applied by the tactic, not named in it]
              }
              assert (0.0 < 2.0) by {  // sub-goal of `by` (Lean state) // @tac 3124-3134
                // [TACTIC: Positivity]
                // UNCITED-APPLIED internal ×2 [exec 989 3124-3134]: applications made inside the tactic's own automation, not stated — Mathlib.Meta.Positivity.pos_of_isNat ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1
              }
              assert (0.0 < (8.0 * (y * y))) by {  // sub-goal of `by` (Lean state) // @tac 3140-3150
                // [TACTIC: Positivity]
                // positivity proof (Lean execution 3140-3150 exec 994): nothing of it stated; Lean's records:
                // UNCITED-APPLIED mul_pos: certificate piece `(0 : ℝ) < (8 : ℝ) * y ^ (2 : ℕ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 8.0); (0.0 < (y * y))
                // cert: pow_pos piece `(0.0 < (y * y))` not stated (only `0 < a ^ 2` of an atom a is lowered)
                // UNCITED-APPLIED internal ×3 [exec 994 3140-3150]: applications made inside the tactic's own automation, not stated — Mathlib.Meta.Positivity.pos_of_isNat ×1, Real.sqrt_pos_of_pos ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: mul_pos [Lean recorded ×1], pow_pos [Lean recorded ×1])
                assert (0.0 < (8.0)) && (0.0 < ((y * y)));  // precondition of MulPos (Lean: mul_pos)
                MulPos(8.0, (y * y));  // cite: mul_pos [applied by the tactic, not named in it]
                assert (0.0 < (y));  // precondition of PowPos (Lean: pow_pos)
                PowPos(y, 2);  // cite: pow_pos [applied by the tactic, not named in it]
              }
              // [TACTIC: rwSeq [ div_le_div_iff ( by positivity ) ( by positivity ) ]]
              assert (0.0 < (2.0)) && (0.0 < ((8.0 * (y * y))));  // precondition of DivLeDivIff (Lean: div_le_div_iff)
              DivLeDivIff(((x - y) * (x - y)), 2.0, (((x - y) * (x - y)) * ((x + y) * (x + y))), (8.0 * (y * y)));  // cite: div_le_div_iff
              assert ((((x - y) * (x - y)) * (8.0 * (y * y))) <= ((((x - y) * (x - y)) * ((x + y) * (x + y))) * 2.0)) by {  // sub-goal before `nlinarith` (Lean state) // @tac 3161-3265
                // [TACTIC: «Nlinarith[_]At___» [ sq_nonneg ( x - y ) , sq_nonneg ( x + y ) , sq_nonneg ( x - 3 * y ) , sq_nonneg ( x + 3 * y ) ]]
                // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3161-3265 exec 1019)
                // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * -(-(x - y) ^ (2 : ℕ) * ((4 : ℝ) * y ^ (2 : ℕ) - (x + y) ^ (2 : ℕ))) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((x - y) * (x - y)) * ((4.0 * (y * y)) - ((x + y) * (x + y)))) <= 0.0); (2.0 > 0.0)
                if (0.0 <= ((x - y) * (x - y))) && (((4.0 * (y * y)) - ((x + y) * (x + y))) <= 0.0) { cert_piece_10(a, b, x, y); }  // cert: mul_nonneg_of_nonpos_of_nonpos
                SqNonneg((x - y)); assert (0.0 <= ((x - y) * (x - y)));  // cert: sq_nonneg
                cert_identity_11(a, b, x, y);  // cert: add_lt_of_neg_of_le
                // UNCITED-APPLIED internal ×271 [exec 1019 3161-3265]: applications made inside the tactic's own automation, not stated — neg_nonpos_of_nonneg ×2, le_of_not_gt ×1, add_lt_of_neg_of_le ×1, sub_neg_of_lt ×1, mul_nonneg_of_nonpos_of_nonpos ×1, sub_nonpos_of_le ×1; machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.neg_mul ×8, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×8, Mathlib.Meta.NormNum.isInt_mul ×8 (+51 more heads, ×232) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1], sq_nonneg [Lean recorded ×1])
                // UNCITED-APPLIED internal ×5 [exec 1025 3161-3265]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                SqNonneg((x - y));  // cite: sq_nonneg
                NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
                // NOT APPLIED `sq_nonneg ( x + y )`, `sq_nonneg ( x - 3 * y )`, `sq_nonneg ( x + 3 * y )`: named here, but no application Lean recorded at this tactic has their arguments (1 of the 4 named instances match a recorded application)
              }
              // UNCITED-APPLIED congrArg(fun (_a : Prop) => _a): no library counterpart (not stated) [exec 982 3101-3152]
            }
          }
        }
        // [TACTIC: exact h₁₂₇]
        assert ((((x - y) * (x - y)) / 2.0) <= Real.div((((x - y) * (x - y)) * ((x + y) * (x + y))), (8.0 * (y * y))));
      }
      // have h₁₃ : ( a + b ) / 2 - Real.sqrt ( ( a * b ) ) <= ( a - b ) ^ 2 / ( 8 * b )  [type from Lean state]
      assert ((((a + b) / 2.0) - Real.sqrt((a * b))) <= Real.div(((a - b) * (a - b)), (8.0 * b))) by { // @tac 3375-3413 // @tac 3375-3396
        // [TACTIC: «_<;>_» [ h₁₀ , h₁₁ ] rw [ h₁₀ , h₁₁ ] <;> linarith linarith]
        // [TACTIC: choice [ h₁₀ , h₁₁ ] rw [ h₁₀ , h₁₁ ]]
        // UNCITED-APPLIED congrArg((a + b) / (2 : ℝ) - √(a * b), (x - y) ^ (2 : ℕ) / (2 : ℝ), fun (_a : ℝ) => _a ≤ (a - b) ^ (2 : ℕ) / ((8 : ℝ) * b)): no library counterpart (not stated) [exec 1054 3375-3396]
        // UNCITED-APPLIED congrArg((a - b) ^ (2 : ℕ) / ((8 : ℝ) * b), (x - y) ^ (2 : ℕ) * (x + y) ^ (2 : ℕ) / ((8 : ℝ) * y ^ (2 : ℕ)), fun (_a : ℝ) => (x - y) ^ (2 : ℕ) / (2 : ℝ) ≤ _a): no library counterpart (not stated) [exec 1054 3375-3396]
        assert ((((x - y) * (x - y)) / 2.0) <= Real.div((((x - y) * (x - y)) * ((x + y) * (x + y))), (8.0 * (y * y)))) by {  // sub-goal of `linarith` (Lean state) // @tac 3405-3413
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3405-3413 exec 1090)
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * ((x - y) ^ (2 : ℕ) / (2 : ℝ) - (x - y) ^ (2 : ℕ) * (x + y) ^ (2 : ℕ) / ((8 : ℝ) * y ^ (2 : ℕ))) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((((x - y) * (x - y)) / 2.0) - Real.div((((x - y) * (x - y)) * ((x + y) * (x + y))), (8.0 * (y * y)))) <= 0.0); (2.0 > 0.0)
          // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * ((x - y) ^ (2 : ℕ) * (x + y) ^ (2 : ℕ) / ((8 : ℝ) * y ^ (2 : ℕ)) - (x - y) ^ (2 : ℕ) / (2 : ℝ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((Real.div((((x - y) * (x - y)) * ((x + y) * (x + y))), (8.0 * (y * y))) - (((x - y) * (x - y)) / 2.0)) < 0.0); (2.0 > 0.0)
          cert_identity_12(a, b, x, y);  // cert: add_lt_of_le_of_neg
          // UNCITED-APPLIED internal ×274 [exec 1090 3405-3413]: applications made inside the tactic's own automation, not stated — CancelDenoms.sub_subst ×3, le_of_not_gt ×1, add_lt_of_le_of_neg ×1, CancelDenoms.div_subst ×1, CancelDenoms.pow_subst ×1, sub_nonpos_of_le ×1, sub_neg_of_lt ×1; machinery/glue: Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_right ×8, Mathlib.Tactic.Ring.mul_zero ×8 (+62 more heads, ×233) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×8 [exec 1091 3405-3413]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
          // UNCITED-APPLIED internal ×14 [exec 1092 3405-3413]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
          // UNCITED-APPLIED internal ×6 [exec 1093 3405-3413]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1094 3405-3413]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×8 [exec 1095 3405-3413]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
          // UNCITED-APPLIED internal ×14 [exec 1096 3405-3413]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
          // UNCITED-APPLIED internal ×6 [exec 1097 3405-3413]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1098 3405-3413]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        }
      }
      // [TACTIC: exact h₁₃]
      assert ((((a + b) / 2.0) - Real.sqrt((a * b))) <= Real.div(((a - b) * (a - b)), (8.0 * b)));
      assert ((((a + b) / 2.0) - Real.sqrt((a * b))) <= Real.div(((a - b) * (a - b)), (8.0 * b)));  // sub-goal before `have` (Lean state) // @tac 700-727 // @tac 730-755 // @tac 758-783 // @tac 786-1485 // @tac 1491-2185 // @tac 2191-3286 // @tac 3292-3413 // @tac 3419-3432
      // UNCITED-APPLIED congrArg(√b, y, fun (_a : ℝ) => _a ≤ x): no library counterpart (not stated) [exec 101 700-727]
      // UNCITED-APPLIED congrArg(√a, x, fun (_a : ℝ) => √b ≤ _a): no library counterpart (not stated) [exec 101 700-727]
      // UNCITED-APPLIED congrArg(√b, y, fun (_a : ℝ) => (0 : ℝ) < _a): no library counterpart (not stated) [exec 113 730-755]
      // UNCITED-APPLIED congrArg(√a, x, fun (_a : ℝ) => (0 : ℝ) < _a): no library counterpart (not stated) [exec 125 758-783]
    }
    assert ((((a + b) / 2.0) - Real.sqrt((a * b))) <= Real.div(((a - b) * (a - b)), (8.0 * b)));  // sub-goal before `set` (Lean state) // @tac 677-697
  }
}



// ===== closed lemma for line 329 (from closed/algebra_bleqa_apbon2msqrtableqambsqon8b-329.dfy) =====

lemma {:induction false} vc_algebra_bleqa_apbon2msqrtableqambsqon8b_L329(a: real, b: real, x: real, y_5_0: real)
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
  requires 2.0 != 0.0
  requires (a + b) / 2.0 - Real.sqrt(a * b) == (x - y_5_0) * (x - y_5_0) / 2.0
  requires Real.div((a - b) * (a - b), 8.0 * b) == Real.div((x - y_5_0) * (x - y_5_0) * ((x + y_5_0) * (x + y_5_0)), 8.0 * (y_5_0 * y_5_0))
  ensures   0.0 <= (x - y_5_0) * (x - y_5_0)
{ }

