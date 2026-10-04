// ════════════════════════════════════════════════════════════
// MECHANICAL TRANSLATION (emitter v2) of ast_cache_v2/imo_1961_p1.json
// Each Lean `have` → `assert ... by {}` at the same depth;
// quantified haves → forall statements. Typed pipeline only.
// ════════════════════════════════════════════════════════════

include "../../library/library_new.dfy"

// ──────────────────────────────────────────────────
// certificate piece for `h₇/h₇`: mul_pos_of_neg_of_neg (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_1(x: real, y: real, z: real, a: real, b: real)
  requires (0.0 < x)
  requires (0.0 < y)
  ensures (0.0 < (x * y))
{
  MulPos(x, y);
}

// ──────────────────────────────────────────────────
// certificate identity for `h₇/h₇`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_2(x: real, y: real, z: real, a: real, b: real)
  ensures ((x * y) + -((x * y))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₇/h₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_3(x: real, y: real, z: real, a: real, b: real)
  ensures (-(z) + z) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₇/h₉`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_4(x: real, y: real, z: real, a: real, b: real)
  ensures (-(((x * y) - (z * z))) + ((x * y) - (z * z))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₇/h₉`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_5(x: real, y: real, z: real, a: real, b: real)
  ensures (((x * y) - (z * z)) + ((z * z) - (x * y))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₇/h₉`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_6(x: real, y: real, z: real, a: real, b: real)
  ensures (-((x * y)) + (x * y)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₇/h₉`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_7(x: real, y: real, z: real, a: real, b: real)
  ensures (-(z) + z) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_8(x: real, y: real, z: real, a: real, b: real)
  ensures ((-((((x + y) + z) - a)) + (z - Real.sqrt((x * y)))) + (((x + y) + Real.sqrt((x * y))) - a)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_9(x: real, y: real, z: real, a: real, b: real)
  ensures (((((x + y) + z) - a) + -((z - Real.sqrt((x * y))))) + (a - ((x + y) + Real.sqrt((x * y))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₉/h₉`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_10(x: real, y: real, z: real, a: real, b: real)
  requires (0.0 < x)
  requires (0.0 < y)
  ensures (0.0 < (x * y))
{
  MulPos(x, y);
}

// ──────────────────────────────────────────────────
// certificate piece for `h₉`: mul_nonneg (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_11(x: real, y: real, z: real, a: real, b: real)
  requires (0.0 <= x)
  requires (0.0 <= y)
  ensures (0.0 <= (x * y))
{
  MulNonneg(x, y);
}

// ──────────────────────────────────────────────────
// certificate identity for `h₉`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_12(x: real, y: real, z: real, a: real, b: real)
  ensures ((-(((((x * x) + (y * y)) + (Real.sqrt((x * y)) * Real.sqrt((x * y)))) - (b * b))) + ((((x * x) + (y * y)) + (x * y)) - (b * b))) + ((Real.sqrt((x * y)) * Real.sqrt((x * y))) - (x * y))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₉`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_13(x: real, y: real, z: real, a: real, b: real)
  ensures ((((((x * x) + (y * y)) + (Real.sqrt((x * y)) * Real.sqrt((x * y)))) - (b * b)) + ((b * b) - (((x * x) + (y * y)) + (x * y)))) + -(((Real.sqrt((x * y)) * Real.sqrt((x * y))) - (x * y)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₁₀/h₁₀`: mul_pos_of_neg_of_neg (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_14(x: real, y: real, z: real, a: real, b: real)
  requires (0.0 < x)
  requires (0.0 < y)
  ensures (0.0 < (x * y))
{
  MulPos(x, y);
}

// ──────────────────────────────────────────────────
// certificate identity for `h₁₀/h₁₀`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_15(x: real, y: real, z: real, a: real, b: real)
  ensures ((x * y) + -((x * y))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁₀/h₁₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_16(x: real, y: real, z: real, a: real, b: real)
  ensures (-(z) + z) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁₀`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_17(x: real, y: real, z: real, a: real, b: real)
  ensures ((((-(x) + -(y)) + -(z)) + (((x + y) + z) - a)) + a) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₁₁/h₁₁`: mul_pos_of_neg_of_neg (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_18(x: real, y: real, z: real, a: real, b: real)
  requires (0.0 < x)
  requires (0.0 < y)
  ensures (0.0 < (x * y))
{
  MulPos(x, y);
}

// ──────────────────────────────────────────────────
// certificate identity for `h₁₁/h₁₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_19(x: real, y: real, z: real, a: real, b: real)
  ensures ((x * y) + -((x * y))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₁₁`: mul_pos_of_neg_of_neg (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_20(x: real, y: real, z: real, a: real, b: real)
  requires (0.0 < x)
  requires (0.0 < z)
  ensures (0.0 < (x * z))
{
  MulPos(x, z);
}

// ──────────────────────────────────────────────────
// certificate piece for `h₁₁`: mul_pos_of_neg_of_neg (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_21(x: real, y: real, z: real, a: real, b: real)
  requires (0.0 < y)
  requires (0.0 < z)
  ensures (0.0 < (y * z))
{
  MulPos(y, z);
}

// ──────────────────────────────────────────────────
// certificate identity for `h₁₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_22(x: real, y: real, z: real, a: real, b: real)
  ensures ((((((((-(((((x * x) + (y * y)) + (z * z)) - (b * b))) + -((2.0 * (x * y)))) + ((a * a) - (b * b))) + -((2.0 * (x * z)))) + (2.0 * (x * (((x + y) + z) - a)))) + -((2.0 * (y * z)))) + (2.0 * (y * (((x + y) + z) - a)))) + (2.0 * (z * (((x + y) + z) - a)))) + -(((((x + y) + z) - a) * (((x + y) + z) - a)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_23(x: real, y: real, z: real, a: real, b: real)
  ensures (((((((((3.0 * ((((x * x) + (y * y)) + (z * z)) - (b * b))) + -(((x - y) * (x - y)))) + -(((y - z) * (y - z)))) + -(((z - x) * (z - x)))) + ((3.0 * (b * b)) - (a * a))) + -((2.0 * (x * (((x + y) + z) - a))))) + -((2.0 * (y * (((x + y) + z) - a))))) + -((2.0 * (z * (((x + y) + z) - a))))) + ((((x + y) + z) - a) * (((x + y) + z) - a))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for ``: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_24(x: real, y: real, z: real, a: real, b: real)
  ensures ((((-(x) + -(y)) + -(z)) + (((x + y) + z) - a)) + a) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for ``: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_25(x: real, y: real, z: real, a: real, b: real)
  ensures (((b * b) - (a * a)) + ((a * a) - (b * b))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for ``: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_26(x: real, y: real, z: real, a: real, b: real)
  ensures (((a * a) - (3.0 * (b * b))) + ((3.0 * (b * b)) - (a * a))) == 0.0
{ }

// statement: Lean elaborated type (v3, stmt_cache) — requires/ensures below
lemma imo_1961_p1(x: real, y: real, z: real, a: real, b: real)
  requires ((0.0 < x) && ((0.0 < y) && (0.0 < z)))
  requires (x != y)
  requires (y != z)
  requires (z != x)
  requires (((x + y) + z) == a)
  requires ((((x * x) + (y * y)) + (z * z)) == (b * b))
  requires ((x * y) == (z * z))
  ensures ((0.0 < a) && (((b * b) < (a * a)) && ((a * a) < (3.0 * (b * b))))) // @tac 737-1044 // @tac 1050-1474 // @tac 1480-2081 // @tac 2087-2436 // @tac 2442-2799 // @tac 2805-3178 // @tac 3291-3375
{
  // have h₇ : z == sqrt ( ( x * y ) )  [type from Lean state]
  assert (z == Real.sqrt((x * y))) by { // @tac 776-813 // @tac 818-851 // @tac 856-1029 // @tac 1034-1044
    // have h₇ : 0 < x * y  [type from Lean state]
    assert (0.0 < (x * y)) by { // @tac 804-813
      // [TACTIC: «Nlinarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 804-813 exec 36)
      if (0.0 < x) && (0.0 < y) { cert_piece_1(x, y, z, a, b); }  // cert: mul_pos_of_neg_of_neg
      cert_identity_2(x, y, z, a, b);  // cert: add_lt_of_le_of_neg
      // UNCITED-APPLIED internal ×9 [exec 36 804-813]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×3, lt_of_not_ge ×1, add_lt_of_le_of_neg ×1, le_zero_of_zero_ge ×1, mul_pos_of_neg_of_neg ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×47 [exec 37 804-813]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_congr ×3, Mathlib.Tactic.Ring.neg_add ×3, Mathlib.Tactic.Ring.neg_mul ×3, Mathlib.Tactic.Ring.mul_congr ×2 (+26 more heads, ×36) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 37)]
    }
    // have h₈ : 0 < z  [type from Lean state]
    assert (0.0 < z) by { // @tac 842-851
      // [TACTIC: «Nlinarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 842-851 exec 54)
      cert_identity_3(x, y, z, a, b);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×6 [exec 54 842-851]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×20 [exec 55 842-851]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 55)]
    }
    // have h₉ : z == sqrt ( ( x * y ) )  [type from Lean state]
    assert (z == Real.sqrt((x * y))) by { // @tac 897-910
      // [TACTIC: apply Eq.symm]
      assert (Real.sqrt((x * y)) == z) by {  // sub-goal before `rw` (Lean state) // @tac 917-1029 // @tac 917-945
        // [TACTIC: «_<;>_» [ sqrt_eq_iff_mul_self_eq ] rw [ sqrt_eq_iff_mul_self_eq ] <;> nlinarith [ sq_nonneg ( x - y ) , sq_nonneg ( x + y - z ) , sq_nonneg ( x * y - z ^ 2 ) ] nlinarith [ sq_nonneg ( x - y ) , sq_nonneg ( x + y - z ) , sq_nonneg ( x * y - z ^ 2 ) ]]
        // [TACTIC: choice [ sqrt_eq_iff_mul_self_eq ] rw [ sqrt_eq_iff_mul_self_eq ]]
        assert (0.0 <= (z)) && (0.0 <= ((x * y))) && ((z) * (z) == ((x * y)));  // precondition of RealSqrtEqIffMulSelfEq (Lean: sqrt_eq_iff_mul_self_eq)
        RealSqrtEqIffMulSelfEq(z, (x * y));  // cite: Real.sqrt_eq_iff_mul_self_eq (named sqrt_eq_iff_mul_self_eq)
        // UNCITED-APPLIED congrArg(fun (_a : Prop) => _a): no library counterpart (not stated) [exec 82 917-945]
        assert ((z * z) == (x * y)) by {  // sub-goal of `nlinarith` (Lean state) // @tac 950-1029
          // UNCITED sq_nonneg: no Lean instance recorded (arguments unknown), not guessed
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 118, 119)]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 950-1029 exec 117)
          cert_identity_4(x, y, z, a, b);  // cert: Linarith.lt_of_eq_of_lt
          cert_identity_5(x, y, z, a, b);  // cert: Linarith.lt_of_eq_of_lt
          // UNCITED-APPLIED internal ×11 [exec 117 950-1029]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2, sub_eq_zero_of_eq ×1, neg_eq_zero ×1; machinery/glue: congrArg ×2, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
          // UNCITED-APPLIED internal ×68 [exec 118 950-1029]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.atom_pf ×3, Mathlib.Tactic.Ring.add_mul ×3, Mathlib.Tactic.Ring.mul_add ×3, Mathlib.Tactic.Ring.mul_zero ×3 (+38 more heads, ×56) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×73 [exec 119 950-1029]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_mul ×4, Mathlib.Tactic.Ring.atom_pf ×3, Mathlib.Tactic.Ring.add_mul ×3, Mathlib.Tactic.Ring.mul_add ×3 (+38 more heads, ×60) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        }
        assert (0.0 <= (x * y)) by {  // sub-goal of `nlinarith` (Lean state) // @tac 950-1029
          // UNCITED sq_nonneg: no Lean instance recorded (arguments unknown), not guessed
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 123)]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 950-1029 exec 122)
          cert_identity_6(x, y, z, a, b);  // cert: Left.add_neg
          // UNCITED-APPLIED internal ×6 [exec 122 950-1029]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, Left.add_neg ×1, neg_neg_of_pos ×1, lt_zero_of_zero_gt ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
          // UNCITED-APPLIED internal ×32 [exec 123 950-1029]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.atom_pf ×2, Mathlib.Tactic.Ring.neg_mul ×2, Mathlib.Tactic.Ring.add_overlap_pf_zero ×2, Mathlib.Tactic.Ring.of_eq ×1 (+25 more heads, ×25) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        }
        assert (0.0 <= z) by {  // sub-goal of `nlinarith` (Lean state) // @tac 950-1029
          // UNCITED sq_nonneg: no Lean instance recorded (arguments unknown), not guessed
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 127)]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 950-1029 exec 126)
          cert_identity_7(x, y, z, a, b);  // cert: Left.add_neg
          // UNCITED-APPLIED internal ×6 [exec 126 950-1029]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, Left.add_neg ×1, neg_neg_of_pos ×1, lt_zero_of_zero_gt ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
          // UNCITED-APPLIED internal ×20 [exec 127 950-1029]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        }
      }
      assert ((Real.sqrt((x * y))) == (z));  // precondition of EqSymm (Lean: Eq.symm; `apply`: proved by the steps above)
      EqSymm(Real.sqrt((x * y)), z);  // cite: Eq.symm
    }
    // [TACTIC: exact h₉]
    assert (z == Real.sqrt((x * y)));
  }
  // have h₈ : x + y + sqrt ( ( x * y ) ) == a  [type from Lean state]
  assert (((x + y) + Real.sqrt((x * y))) == a) by { // @tac 1175-1209 // @tac 1291-1309 // @tac 1392-1474
    // have h₄' : x + y + z == a  [type from Lean state]
    assert (((x + y) + z) == a) by {
      // [TACTIC: exact h₄]
      assert (((x + y) + z) == a);
    }
    // [TACTIC: rwSeq [ h₇ ] at h₄']
    assert (((x + y) + Real.sqrt((x * y))) == a);  // hypothesis h₄' after `rw` (Lean state) // @tac-hyp 1291-1309
    // [TACTIC: «Nlinarith[_]At___» [ Real.sqrt_nonneg ( x * y ) , h₀ . 1 , h₀ . 2 . 1 , h₀ . 2 . 2 , h₁ , h₂ , h₃ ]]
    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1392-1474 exec 188)
    // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `-(x + y + z - a) + (z - √(x * y)) = (0 : ℝ)` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
    // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `x + y + z - a + -(z - √(x * y)) = (0 : ℝ)` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
    cert_identity_8(x, y, z, a, b);  // cert: Linarith.lt_of_eq_of_lt
    cert_identity_9(x, y, z, a, b);  // cert: Linarith.lt_of_eq_of_lt
    // UNCITED-APPLIED internal ×15 [exec 188 1392-1474]: applications made inside the tactic's own automation, not stated — neg_eq_zero ×2, sub_eq_zero_of_eq ×2, sub_neg_of_lt ×2; machinery/glue: congrArg ×2, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_eq_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1 (+2 more heads, ×2)
    // UNCITED-APPLIED internal ×73 [exec 190 1392-1474]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×8, Mathlib.Tactic.Ring.add_pf_zero_add ×6, Mathlib.Tactic.Ring.neg_add ×6, Mathlib.Tactic.Ring.neg_mul ×6 (+21 more heads, ×47) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    // UNCITED Real.sqrt_nonneg: no Lean instance recorded (arguments unknown), not guessed
    NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 189, 190)]
    // UNCITED-APPLIED internal ×73 [exec 189 1392-1474]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×8, Mathlib.Tactic.Ring.add_pf_zero_add ×6, Mathlib.Tactic.Ring.neg_add ×6, Mathlib.Tactic.Ring.neg_mul ×6 (+22 more heads, ×47) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
  }
  // have h₉ : x ^ 2 + y ^ 2 + x * y == b ^ 2  [type from Lean state]
  assert ((((x * x) + (y * y)) + (x * y)) == (b * b)) by { // @tac 1603-1651 // @tac 1731-1770 // @tac 1837-1857 // @tac 1935-1955 // @tac 2027-2081
    // have h₉ : 0 < x * y  [type from Lean state]
    assert (0.0 < (x * y)) by {
      // [TACTIC: exact mul_pos ( h₀ . 1 , h₀ . 2 . 1 )]
      assert (0.0 < (x)) && (0.0 < (y));  // precondition of MulPos (Lean: mul_pos)
      MulPos(x, y);  // cite: mul_pos
      // `refine` step's recorded applications: the lemma applications Lean's proof term of this step is built from (no linarith run here) (Lean execution 1603-1651 exec 216)
      if (0.0 < x) && (0.0 < y) { cert_piece_10(x, y, z, a, b); }  // cert: mul_pos
    }
    // have h₁₀ : z == sqrt ( ( x * y ) )  [type from Lean state]
    assert (z == Real.sqrt((x * y))) by {
      // [TACTIC: exact h₇]
      assert (z == Real.sqrt((x * y)));
    }
    // [TACTIC: rwSeq [ h₁₀ ] at h₄]
    assert (((x + y) + Real.sqrt((x * y))) == a);  // hypothesis h₄ after `rw` (Lean state) // @tac-hyp 1837-1857
    // [TACTIC: rwSeq [ h₁₀ ] at h₅]
    assert ((((x * x) + (y * y)) + (Real.sqrt((x * y)) * Real.sqrt((x * y)))) == (b * b));  // hypothesis h₅ after `rw` (Lean state) // @tac-hyp 1935-1955
    // [TACTIC: «Nlinarith[_]At___» [ sq_sqrt ( mul_nonneg h₀ . 1 . le h₀ . 2 . 1 . le ) ]]
    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2027-2081 exec 293)
    if (0.0 <= x) && (0.0 <= y) { cert_piece_11(x, y, z, a, b); }  // cert: mul_nonneg
    // UNCITED-APPLIED Linarith.lt_of_eq_of_lt ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `-(x ^ (2 : ℕ) + y ^ (2 : ℕ) + √(x * y) ^ (2 : ℕ) - b ^ (2 : ℕ)) + (x ^ (2 : ℕ) + y ^ (2 : ℕ) + x * y - b ^ (2 : ℕ)) < (…`
    cert_identity_12(x, y, z, a, b);  // cert: Linarith.lt_of_lt_of_eq
    cert_identity_13(x, y, z, a, b);  // cert: Linarith.lt_of_lt_of_eq
    // UNCITED-APPLIED internal ×18 [exec 293 2027-2081]: applications made inside the tactic's own automation, not stated — neg_eq_zero ×2, sub_eq_zero_of_eq ×2, sub_neg_of_lt ×2, LT.lt.le ×2; machinery/glue: congrArg ×3, Linarith.lt_of_lt_of_eq ×2, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_not_lt_of_not_gt ×1 (+2 more heads, ×2) (cited in this block, not counted here: Real.sq_sqrt [Lean recorded ×1], mul_nonneg [Lean recorded ×1])
    // UNCITED-APPLIED internal ×128 [exec 294 2027-2081]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×8, Mathlib.Tactic.Ring.neg_mul ×7, Mathlib.Tactic.Ring.add_pf_add_zero ×6, Mathlib.Tactic.Ring.neg_add ×6 (+37 more heads, ×101) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    // UNCITED-APPLIED internal ×132 [exec 295 2027-2081]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_mul ×8, Mathlib.Tactic.Ring.add_pf_add_lt ×7, Mathlib.Tactic.Ring.neg_add ×7, Mathlib.Tactic.Ring.add_pf_add_zero ×6 (+37 more heads, ×104) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 294, 295)]
    assert (0.0 <= (x)) && (0.0 <= (y));  // precondition of MulNonneg (Lean: mul_nonneg)
    MulNonneg(x, y);  // cite: mul_nonneg
    assert (0.0 <= ((x * y)));  // precondition of RealSqSqrt (Lean: sq_sqrt)
    RealSqSqrt((x * y));  // cite: Real.sq_sqrt (named sq_sqrt)
  }
  // have h₁₀ : a > 0  [type from Lean state]
  assert (a > 0.0) by { // @tac 2185-2231 // @tac 2299-2343 // @tac 2427-2436
    // have h₁₀ : 0 < x * y  [type from Lean state]
    assert (0.0 < (x * y)) by { // @tac 2222-2231
      // [TACTIC: «Nlinarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2222-2231 exec 328)
      if (0.0 < x) && (0.0 < y) { cert_piece_14(x, y, z, a, b); }  // cert: mul_pos_of_neg_of_neg
      cert_identity_15(x, y, z, a, b);  // cert: add_lt_of_le_of_neg
      // UNCITED-APPLIED internal ×9 [exec 328 2222-2231]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×3, lt_of_not_ge ×1, add_lt_of_le_of_neg ×1, le_zero_of_zero_ge ×1, mul_pos_of_neg_of_neg ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×47 [exec 329 2222-2231]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_congr ×3, Mathlib.Tactic.Ring.neg_add ×3, Mathlib.Tactic.Ring.neg_mul ×3, Mathlib.Tactic.Ring.mul_congr ×2 (+26 more heads, ×36) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 329)]
    }
    // have h₁₁ : 0 <= z  [type from Lean state]
    assert (0.0 <= z) by { // @tac 2334-2343
      // [TACTIC: «Nlinarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2334-2343 exec 346)
      cert_identity_16(x, y, z, a, b);  // cert: Left.add_neg
      // UNCITED-APPLIED internal ×6 [exec 346 2334-2343]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, Left.add_neg ×1, neg_neg_of_pos ×1, lt_zero_of_zero_gt ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×20 [exec 347 2334-2343]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 347)]
    }
    // [TACTIC: «Nlinarith[_]At___»]
    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2427-2436 exec 348)
    // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `-x + -y + -z + (x + y + z - a) < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
    // UNCITED-APPLIED Left.add_neg ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `-x + -y + -z < (0 : ℝ)`
    cert_identity_17(x, y, z, a, b);  // cert: add_lt_of_neg_of_le
    // UNCITED-APPLIED internal ×12 [exec 348 2427-2436]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×3, Left.add_neg ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, sub_eq_zero_of_eq ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Linarith.lt_of_lt_of_eq ×1
    // UNCITED-APPLIED internal ×57 [exec 349 2427-2436]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×8, Mathlib.Tactic.Ring.add_congr ×6, Mathlib.Tactic.Ring.add_pf_zero_add ×6, Mathlib.Tactic.Ring.atom_pf ×4 (+19 more heads, ×33) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 349)]
  }
  // have h₁₁ : b ^ 2 < a ^ 2  [type from Lean state]
  assert ((b * b) < (a * a)) by { // @tac 2477-2584 // @tac 2693-2799
    // have h₁₁ : 0 < x * y  [type from Lean state]
    assert (0.0 < (x * y)) by { // @tac 2514-2584
      // [TACTIC: «Nlinarith[_]At___» [ sq_sqrt ( mul_nonneg ( le_of_lt h₀ . 1 ) ( le_of_lt h₀ . 2 . 1 ) ) ]]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2514-2584 exec 382)
      if (0.0 < x) && (0.0 < y) { cert_piece_18(x, y, z, a, b); }  // cert: mul_pos_of_neg_of_neg
      cert_identity_19(x, y, z, a, b);  // cert: add_lt_of_le_of_neg
      // UNCITED-APPLIED internal ×9 [exec 382 2514-2584]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×3, lt_of_not_ge ×1, add_lt_of_le_of_neg ×1, le_zero_of_zero_ge ×1, mul_pos_of_neg_of_neg ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // NOT APPLIED sq_sqrt: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
      // NOT APPLIED mul_nonneg: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
      // UNCITED le_of_lt: no Lean instance recorded (arguments unknown), not guessed
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 383)]
      // UNCITED-APPLIED internal ×47 [exec 383 2514-2584]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_congr ×3, Mathlib.Tactic.Ring.neg_add ×3, Mathlib.Tactic.Ring.neg_mul ×3, Mathlib.Tactic.Ring.mul_congr ×2 (+26 more heads, ×36) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    }
    // [TACTIC: «Nlinarith[_]At___» [ sq_sqrt ( mul_nonneg ( le_of_lt h₀ . 1 ) ( le_of_lt h₀ . 2 . 1 ) ) , h₅ , h₄ , h₆ , h₇ , h₈ , h₉ ]]
    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2693-2799 exec 384)
    // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * -(x * y) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < (x * y)); (2.0 > 0.0)
    // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * -(-x * -z) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < (x * z)); (2.0 > 0.0)
    if (0.0 < x) && (0.0 < z) { cert_piece_20(x, y, z, a, b); }  // cert: mul_pos_of_neg_of_neg
    // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℝ) * -(-x * (x + y + z - a)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((x * (((x + y) + z) - a)) == 0.0); (2.0 > 0.0)
    if (0.0 < x) && ((((x + y) + z) - a) == 0.0) { assert (-((x * (((x + y) + z) - a))) == 0.0); }  // cert: Linarith.mul_zero_eq
    // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * -(-y * -z) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < (y * z)); (2.0 > 0.0)
    if (0.0 < y) && (0.0 < z) { cert_piece_21(x, y, z, a, b); }  // cert: mul_pos_of_neg_of_neg
    // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℝ) * -(-y * (x + y + z - a)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((y * (((x + y) + z) - a)) == 0.0); (2.0 > 0.0)
    if (0.0 < y) && ((((x + y) + z) - a) == 0.0) { assert (-((y * (((x + y) + z) - a))) == 0.0); }  // cert: Linarith.mul_zero_eq
    // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℝ) * -(-z * (x + y + z - a)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((z * (((x + y) + z) - a)) == 0.0); (2.0 > 0.0)
    if (0.0 < z) && ((((x + y) + z) - a) == 0.0) { assert (-((z * (((x + y) + z) - a))) == 0.0); }  // cert: Linarith.mul_zero_eq
    if ((((x + y) + z) - a) == 0.0) { assert (((((x + y) + z) - a) * (((x + y) + z) - a)) == 0.0); }  // cert: Linarith.zero_mul_eq
    // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×3: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `-(x ^ (2 : ℕ) + y ^ (2 : ℕ) + z ^ (2 : ℕ) - b ^ (2 : ℕ)) + (2 : ℝ) * -(x * y) + (a ^ (2 : ℕ) - b ^ (2 : ℕ)) + (2 : ℝ) *…`
    // UNCITED-APPLIED Left.add_neg ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `-(x ^ (2 : ℕ) + y ^ (2 : ℕ) + z ^ (2 : ℕ) - b ^ (2 : ℕ)) + (2 : ℝ) * -(x * y) + (a ^ (2 : ℕ) - b ^ (2 : ℕ)) + (2 : ℝ) *…`
    // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `-(x ^ (2 : ℕ) + y ^ (2 : ℕ) + z ^ (2 : ℕ) - b ^ (2 : ℕ)) + (2 : ℝ) * -(x * y) + (a ^ (2 : ℕ) - b ^ (2 : ℕ)) < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
    // UNCITED-APPLIED Linarith.lt_of_eq_of_lt: certificate sum `-(x ^ (2 : ℕ) + y ^ (2 : ℕ) + z ^ (2 : ℕ) - b ^ (2 : ℕ)) + (2 : ℝ) * -(x * y) < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
    cert_identity_22(x, y, z, a, b);  // cert: Linarith.lt_of_lt_of_eq
    // UNCITED-APPLIED internal ×33 [exec 384 2693-2799]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×6, neg_eq_zero ×5, Left.add_neg ×2, sub_eq_zero_of_eq ×2, mul_pos_of_neg_of_neg ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, sub_nonpos_of_le ×1; machinery/glue: Linarith.mul_neg ×3, Linarith.mul_eq ×3, Linarith.mul_zero_eq ×3, Linarith.lt_irrefl ×1 (+3 more heads, ×3)
    // UNCITED-APPLIED internal ×5 [exec 387 2693-2799]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    // UNCITED-APPLIED internal ×5 [exec 388 2693-2799]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    // UNCITED-APPLIED internal ×5 [exec 389 2693-2799]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    // UNCITED-APPLIED internal ×5 [exec 390 2693-2799]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    // UNCITED-APPLIED internal ×5 [exec 391 2693-2799]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    // NOT APPLIED sq_sqrt: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
    // NOT APPLIED mul_nonneg: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
    // UNCITED le_of_lt: no Lean instance recorded (arguments unknown), not guessed
    NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 386, 387, 388, 389, 390, 391 / `ring1` exec 385)]
    // UNCITED-APPLIED internal ×237 [exec 385 2693-2799]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8 (+41 more heads, ×205) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    // UNCITED-APPLIED internal ×5 [exec 386 2693-2799]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
  }
  // have h₁₂ : a ^ 2 < 3 * b ^ 2  [type from Lean state]
  assert ((a * a) < (3.0 * (b * b))) by { // @tac 2844-2902 // @tac 2933-2991 // @tac 3022-3080 // @tac 3111-3178
    // have h₁₂ :   [type from Lean state]
    assert 0.0 < x;  /* [IN-FILE CHECK] requires 1 of vc_imo_1961_p1_L447 */
    assert 0.0 < y;  /* [IN-FILE CHECK] requires 2 of vc_imo_1961_p1_L447 */
    assert 0.0 < z;  /* [IN-FILE CHECK] requires 3 of vc_imo_1961_p1_L447 */
    assert y != z;  /* [IN-FILE CHECK] requires 4 of vc_imo_1961_p1_L447 */
    assert z != x;  /* [IN-FILE CHECK] requires 5 of vc_imo_1961_p1_L447 */
    assert x + y + z == a;  /* [IN-FILE CHECK] requires 6 of vc_imo_1961_p1_L447 */
    assert x * x + y * y + z * z == b * b;  /* [IN-FILE CHECK] requires 7 of vc_imo_1961_p1_L447 */
    assert x * y == z * z;  /* [IN-FILE CHECK] requires 8 of vc_imo_1961_p1_L447 */
    assert z == Real.sqrt(x * y);  /* [IN-FILE CHECK] requires 9 of vc_imo_1961_p1_L447 */
    assert x + y + Real.sqrt(x * y) == a;  /* [IN-FILE CHECK] requires 10 of vc_imo_1961_p1_L447 */
    assert x * x + y * y + x * y == b * b;  /* [IN-FILE CHECK] requires 11 of vc_imo_1961_p1_L447 */
    assert a > 0.0;  /* [IN-FILE CHECK] requires 12 of vc_imo_1961_p1_L447 */
    assert b * b < a * a;  /* [IN-FILE CHECK] requires 13 of vc_imo_1961_p1_L447 */
    vc_imo_1961_p1_L447(a, b, x, y, z);  /* [IN-FILE CHECK] the closed lemma for line 447 */
    assert (0.0 < ((x - y) * (x - y))) by {
      // [TACTIC: exact sq_pos_of_ne_zero ( ( sub_ne_zero_of_ne ( h₁ ) ) )]
      assert ((x) != (y));  // precondition of SubNeZeroOfNe (Lean: sub_ne_zero_of_ne)
      SubNeZeroOfNe(x, y);  // cite: sub_ne_zero_of_ne
      assert (((x - y)) != 0.0);  // precondition of SqPosOfNeZero (Lean: sq_pos_of_ne_zero)
      SqPosOfNeZero((x - y));  // cite: sq_pos_of_ne_zero
    }
    // have h₁₃ :   [type from Lean state]
    assert (0.0 < ((y - z) * (y - z))) by {
      // [TACTIC: exact sq_pos_of_ne_zero ( ( sub_ne_zero_of_ne ( h₂ ) ) )]
      assert ((y) != (z));  // precondition of SubNeZeroOfNe (Lean: sub_ne_zero_of_ne)
      SubNeZeroOfNe(y, z);  // cite: sub_ne_zero_of_ne
      assert (((y - z)) != 0.0);  // precondition of SqPosOfNeZero (Lean: sq_pos_of_ne_zero)
      SqPosOfNeZero((y - z));  // cite: sq_pos_of_ne_zero
    }
    // have h₁₄ :   [type from Lean state]
    assert (0.0 < ((z - x) * (z - x))) by {
      // [TACTIC: exact sq_pos_of_ne_zero ( ( sub_ne_zero_of_ne ( h₃ ) ) )]
      assert ((z) != (x));  // precondition of SubNeZeroOfNe (Lean: sub_ne_zero_of_ne)
      SubNeZeroOfNe(z, x);  // cite: sub_ne_zero_of_ne
      assert (((z - x)) != 0.0);  // precondition of SqPosOfNeZero (Lean: sq_pos_of_ne_zero)
      SqPosOfNeZero((z - x));  // cite: sq_pos_of_ne_zero
    }
    // [TACTIC: «Nlinarith[_]At___» [ sq_nonneg ( x - y ) , sq_nonneg ( y - z ) , sq_nonneg ( z - x ) ]]
    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3111-3178 exec 444)
    // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(3 : ℝ) * (x ^ (2 : ℕ) + y ^ (2 : ℕ) + z ^ (2 : ℕ) - b ^ (2 : ℕ)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((((x * x) + (y * y)) + (z * z)) - (b * b)) == 0.0); (3.0 > 0.0)
    // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℝ) * (-x * (x + y + z - a)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-((x * (((x + y) + z) - a))) == 0.0); (2.0 > 0.0)
    if (0.0 < x) && ((((x + y) + z) - a) == 0.0) { assert (-((x * (((x + y) + z) - a))) == 0.0); }  // cert: Linarith.mul_zero_eq
    // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℝ) * (-y * (x + y + z - a)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-((y * (((x + y) + z) - a))) == 0.0); (2.0 > 0.0)
    if (0.0 < y) && ((((x + y) + z) - a) == 0.0) { assert (-((y * (((x + y) + z) - a))) == 0.0); }  // cert: Linarith.mul_zero_eq
    // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℝ) * (-z * (x + y + z - a)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-((z * (((x + y) + z) - a))) == 0.0); (2.0 > 0.0)
    if (0.0 < z) && ((((x + y) + z) - a) == 0.0) { assert (-((z * (((x + y) + z) - a))) == 0.0); }  // cert: Linarith.mul_zero_eq
    if ((((x + y) + z) - a) == 0.0) { assert (((((x + y) + z) - a) * (((x + y) + z) - a)) == 0.0); }  // cert: Linarith.zero_mul_eq
    // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×3: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(3 : ℝ) * (x ^ (2 : ℕ) + y ^ (2 : ℕ) + z ^ (2 : ℕ) - b ^ (2 : ℕ)) + -(x - y) ^ (2 : ℕ) + -(y - z) ^ (2 : ℕ) + -(z - x) …`
    // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(3 : ℝ) * (x ^ (2 : ℕ) + y ^ (2 : ℕ) + z ^ (2 : ℕ) - b ^ (2 : ℕ)) + -(x - y) ^ (2 : ℕ) + -(y - z) ^ (2 : ℕ) + -(z - x) …` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
    // UNCITED-APPLIED Left.add_neg ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(3 : ℝ) * (x ^ (2 : ℕ) + y ^ (2 : ℕ) + z ^ (2 : ℕ) - b ^ (2 : ℕ)) + -(x - y) ^ (2 : ℕ) + -(y - z) ^ (2 : ℕ) + -(z - x) …`
    // UNCITED-APPLIED Linarith.lt_of_eq_of_lt: certificate sum `(3 : ℝ) * (x ^ (2 : ℕ) + y ^ (2 : ℕ) + z ^ (2 : ℕ) - b ^ (2 : ℕ)) + -(x - y) ^ (2 : ℕ) < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
    cert_identity_23(x, y, z, a, b);  // cert: Linarith.lt_of_lt_of_eq
    // UNCITED-APPLIED internal ×24 [exec 444 3111-3178]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×6, Left.add_neg ×2, sub_eq_zero_of_eq ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, sub_nonpos_of_le ×1; machinery/glue: Linarith.mul_eq ×4, Linarith.mul_zero_eq ×3, Linarith.lt_irrefl ×1, Linarith.lt_of_lt_of_eq ×1 (+2 more heads, ×2)
    // UNCITED-APPLIED internal ×5 [exec 447 3111-3178]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    // UNCITED-APPLIED internal ×5 [exec 448 3111-3178]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    // UNCITED-APPLIED internal ×5 [exec 449 3111-3178]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    // UNCITED sq_nonneg: no Lean instance recorded (arguments unknown), not guessed
    NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 446, 447, 448, 449 / `ring1` exec 445)]
    // UNCITED-APPLIED internal ×271 [exec 445 3111-3178]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.pow_congr ×8, Mathlib.Tactic.Ring.pow_add ×8, Mathlib.Tactic.Ring.pow_zero ×8 (+46 more heads, ×239) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    // UNCITED-APPLIED internal ×5 [exec 446 3111-3178]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
  }
  assert (0.0 < a) by {  // sub-goal of `by` (Lean state) // @tac 3305-3324
    // [TACTIC: «Nlinarith[_]At___» [ h₁₀ ]]
    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3305-3324 exec 455)
    // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `-x + -y + -z + (x + y + z - a) < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
    // UNCITED-APPLIED Left.add_neg ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `-x + -y + -z < (0 : ℝ)`
    cert_identity_24(x, y, z, a, b);  // cert: add_lt_of_neg_of_le
    // UNCITED-APPLIED internal ×12 [exec 455 3305-3324]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×3, Left.add_neg ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, sub_eq_zero_of_eq ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Linarith.lt_of_lt_of_eq ×1
    // UNCITED-APPLIED internal ×57 [exec 456 3305-3324]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×8, Mathlib.Tactic.Ring.add_congr ×6, Mathlib.Tactic.Ring.add_pf_zero_add ×6, Mathlib.Tactic.Ring.atom_pf ×4 (+19 more heads, ×33) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 456)]
  }
  assert ((b * b) < (a * a)) by {  // sub-goal of `by` (Lean state) // @tac 3329-3348
    // [TACTIC: «Nlinarith[_]At___» [ h₁₁ ]]
    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3329-3348 exec 461)
    cert_identity_25(x, y, z, a, b);  // cert: add_lt_of_neg_of_le
    // UNCITED-APPLIED internal ×6 [exec 461 3329-3348]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, sub_neg_of_lt ×1, sub_nonpos_of_le ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
    // UNCITED-APPLIED internal ×59 [exec 462 3329-3348]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.sub_congr ×2, Mathlib.Tactic.Ring.pow_congr ×2, Mathlib.Tactic.Ring.atom_pf ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+33 more heads, ×51) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 462)]
  }
  assert ((a * a) < (3.0 * (b * b))) by {  // sub-goal of `by` (Lean state) // @tac 3353-3372
    // [TACTIC: «Nlinarith[_]At___» [ h₁₂ ]]
    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3353-3372 exec 467)
    cert_identity_26(x, y, z, a, b);  // cert: add_lt_of_neg_of_le
    // UNCITED-APPLIED internal ×6 [exec 467 3353-3372]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, sub_neg_of_lt ×1, sub_nonpos_of_le ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
    // UNCITED-APPLIED internal ×75 [exec 468 3353-3372]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Tactic.Ring.add_mul ×3, Mathlib.Tactic.Ring.mul_add ×3, Mathlib.Tactic.Ring.mul_zero ×3 (+36 more heads, ×63) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 468)]
  }
  // [TACTIC: refine' ⟨ by nlinarith [ h₁₀ ] nlinarith [ h₁₀ ] , by nlinarith [ h₁₁ ] nlinarith [ h₁₁ ] , by nlinarith [ h₁₂ ] nlinarith [ h₁₂ ] ⟩ ⟨ by nlinarith [ h₁₀ ] nlinarith [ h₁₀ ] , by nlinarith [ h₁₁ ] nlinarith [ h₁₁ ] , by nlinarith [ h₁₂ ] nlinarith [ h₁₂ ] ⟩]
}



// ===== closed lemma for line 447 (from closed/imo_1961_p1-447.dfy) =====

lemma {:induction false} vc_imo_1961_p1_L447(a: real, b: real, x: real, y: real, z: real)
  requires 0.0 < x
  requires 0.0 < y
  requires 0.0 < z
  requires y != z
  requires z != x
  requires x + y + z == a
  requires x * x + y * y + z * z == b * b
  requires x * y == z * z
  requires z == Real.sqrt(x * y)
  requires x + y + Real.sqrt(x * y) == a
  requires x * x + y * y + x * y == b * b
  requires a > 0.0
  requires b * b < a * a
  ensures   0.0 < (x - y) * (x - y)
{
      // [TACTIC: exact sq_pos_of_ne_zero ( ( sub_ne_zero_of_ne ( h₁ ) ) )]
      assert ((x) != (y));  // precondition of SubNeZeroOfNe (Lean: sub_ne_zero_of_ne)
      SubNeZeroOfNe(x, y);  // cite: sub_ne_zero_of_ne
      assert (((x - y)) != 0.0);  // precondition of SqPosOfNeZero (Lean: sq_pos_of_ne_zero)
      SqPosOfNeZero((x - y));  // cite: sq_pos_of_ne_zero
  // pass2: square positivity obtained syntactically via E-matching on Real.pow (see header)
  forall d: real | d != 0.0 ensures 0.0 < Real.pow(d, 2) && Real.pow(d, 2) == d * d  // [ADDED]
  { SqPosOfNeZero(d); assert Real.pow(d, 1) == d; }  // [ADDED]
  assert 0.0 < Real.pow(x - y, 2);  // [ADDED]
}
