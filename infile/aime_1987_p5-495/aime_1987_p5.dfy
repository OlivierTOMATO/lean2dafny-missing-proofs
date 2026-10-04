// ════════════════════════════════════════════════════════════
// MECHANICAL TRANSLATION (emitter v2) of ast_cache_v2/aime_1987_p5.json
// Each Lean `have` → `assert ... by {}` at the same depth;
// quantified haves → forall statements. Typed pipeline only.
// ════════════════════════════════════════════════════════════

include "../../library/library_new.dfy"

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_1(x: int, y: int)
  ensures ((-(1) + -(((y * y) - 517))) + (((y * y) + 1) - 517)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_2(x: int, y: int)
  ensures ((-(1) + ((y * y) - 517)) + ((517 + 1) - (y * y))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₁/h₅`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_3(x: int, y: int)
  requires (((23 + 1) - y) <= 0)
  ensures (0 <= (((23 + 1) - y) * ((23 + 1) - y)))
{
  MulNonnegInt(-(((23 + 1) - y)), -(((23 + 1) - y)));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_4(x: int, y: int)
  ensures (((-((59 * 1)) + (((y * y) + (3 * ((0 * 0) * (y * y)))) - ((30 * (0 * 0)) + 517))) + (48 * ((23 + 1) - y))) + -((((23 + 1) - y) * ((23 + 1) - y)))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₁/h₆`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_5(x: int, y: int)
  requires ((y - 23) <= 0)
  requires (((y + 1) - -(23)) <= 0)
  ensures (0 <= ((y - 23) * ((y + 1) - -(23))))
{
  MulNonnegInt(-((y - 23)), -(((y + 1) - -(23))));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_6(x: int, y: int)
  ensures (((-((59 * 1)) + (((y * y) + (3 * ((0 * 0) * (y * y)))) - ((30 * (0 * 0)) + 517))) + ((y + 1) - -(23))) + -(((y - 23) * ((y + 1) - -(23))))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₂/h₂₁/h₂₁₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_7(x: int, y: int)
  ensures ((-(1) + -((((y * y) + (3 * ((x * x) * (y * y)))) - ((30 * (x * x)) + 517)))) + ((((y * y) + (((y * y) * (x * x)) * 3)) + 1) - (517 + ((x * x) * 30)))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₂/h₂₁/h₂₁₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_8(x: int, y: int)
  ensures ((-(1) + (((y * y) + (3 * ((x * x) * (y * y)))) - ((30 * (x * x)) + 517))) + (((517 + ((x * x) * 30)) + 1) - ((y * y) + (((y * y) * (x * x)) * 3)))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₂/h₂₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_9(x: int, y: int)
  ensures ((-(1) + -((((y * y) + (3 * ((x * x) * (y * y)))) - ((30 * (x * x)) + 517)))) + (((((3 * (x * x)) + 1) * (y * y)) + 1) - ((30 * (x * x)) + 517))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₂/h₂₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_10(x: int, y: int)
  ensures ((-(1) + (((y * y) + (3 * ((x * x) * (y * y)))) - ((30 * (x * x)) + 517))) + ((((30 * (x * x)) + 517) + 1) - (((3 * (x * x)) + 1) * (y * y)))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₃/h₃₂/h₃₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_11(x: int, y: int)
  ensures ((-(1) + (((x * x) + 1) - 1)) + ((0 + 1) - (x * x))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₃/h₃₂/h₃₄`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_12(x: int, y: int)
  requires ((x + 1) <= 0)
  ensures (0 <= ((x + 1) * (x + 1)))
{
  MulNonnegInt(-((x + 1)), -((x + 1)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₃/h₃₂/h₃₄`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_13(x: int, y: int)
  requires (((0 + 1) - x) <= 0)
  ensures (0 <= (((0 + 1) - x) * ((0 + 1) - x)))
{
  MulNonnegInt(-(((0 + 1) - x)), -(((0 + 1) - x)));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₃/h₃₂/h₃₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_14(x: int, y: int)
  ensures (((-(1) + (((x * x) + 1) - 1)) + (2 * ((0 + 1) - x))) + -((((0 + 1) - x) * ((0 + 1) - x)))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₃/h₃₂/h₃₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_15(x: int, y: int)
  ensures (((-(1) + (((x * x) + 1) - 1)) + (2 * (x + 1))) + -(((x + 1) * (x + 1)))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₃/h₃₅/h₃₅₁/h₃₅₃/h₃₅₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_16(x: int, y: int)
  ensures ((-((4 * 1)) + (3 * (1 - (x * x)))) + ((3 * (x * x)) + 1)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₃/h₃₅/h₃₅₁/h₃₅₃/h₃₅₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_17(x: int, y: int)
  ensures ((-(1) + (((3 * (x * x)) + 1) - 507)) + ((507 + 1) - ((3 * (x * x)) + 1))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₃/h₃₅/h₃₅₁/h₃₅₃/h₃₅₈/h₃₅₁₀/h₃₅₁₁/h₃₅₁₃/h₃₅₁₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_18(x: int, y: int)
  ensures ((-(1) + (((3 * (x * x)) + 1) - 507)) + ((507 + 1) - ((3 * (x * x)) + 1))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₃/h₃₅/h₃₅₁/h₃₅₃/h₃₅₈/h₃₅₁₀/h₃₅₁₁/h₃₅₁₃/h₃₅₁₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_19(x: int, y: int)
  ensures ((-((4 * 1)) + (3 * (1 - (x * x)))) + ((3 * (x * x)) + 1)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₃/h₃₅/h₃₅₁/h₃₅₃/h₃₅₈/h₃₅₁₀/h₃₅₁₁/h₃₅₁₃/h₃₅₁₉/h₃₅₂₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_20(x: int, y: int)
  ensures ((-(1) + (((3 * (x * x)) + 1) - 507)) + ((507 + 1) - ((3 * (x * x)) + 1))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₃/h₃₅/h₃₅₁/h₃₅₃/h₃₅₈/h₃₅₁₀/h₃₅₁₁/h₃₅₁₃/h₃₅₁₉/h₃₅₂₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_21(x: int, y: int)
  ensures ((-((4 * 1)) + (3 * (1 - (x * x)))) + ((3 * (x * x)) + 1)) == 0
{ }

// statement: Lean elaborated type (v3, stmt_cache) — requires/ensures below
lemma aime_1987_p5(x: int, y: int)
  requires (((y * y) + (3 * ((x * x) * (y * y)))) == ((30 * (x * x)) + 517))
  ensures ((3 * ((x * x) * (y * y))) == 588) // @tac 344-828 // @tac 834-1597 // @tac 1603-8857
{
  // have h₁ : x != 0  [type from Lean state]
  assert (x != 0) by { // @tac 374-385
    // by_contra h
    if !((x != 0)) {
      if ((x == 0)) {  // sub-goal before `have` (Lean state)
        // have h₂ : x == 0  [type from Lean state]
        assert (x == 0); // @tac 414-427
          // [TACTIC: simpa using h]
        // [TACTIC: rwSeq [ h₂ ] at h₀]
        assert (((y * y) + (3 * ((0 * 0) * (y * y)))) == ((30 * (0 * 0)) + 517));  // hypothesis h₀ after `rw` (Lean state) // @tac-hyp 432-449
        // have h₃ : y ^ 2 == 517  [type from Lean state]
        assert ((y * y) == 517) by { // @tac 490-529 // @tac 490-509 // @tac 520-529
          // [TACTIC: «_<;>_» at h₀ ⊢ <;> nlinarith nlinarith]
          // [TACTIC: Ring_nfAt at h₀ ⊢]
          assert ((y * y) == 517);  // hypothesis h₀ after `ring_nf` (Lean state) // @tac-hyp 490-509
          // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := y ^ (2 : ℕ))
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 520-529 exec 105)
          // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + -(y ^ (2 : ℕ) - (517 : ℤ)) < (0 : ℤ)`
          cert_identity_1(x, y);  // cert: add_lt_of_neg_of_le
          cert_identity_2(x, y);  // cert: add_lt_of_neg_of_le
          // UNCITED-APPLIED internal ×73 [exec 105 520-529]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, add_zero ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1, mul_one ×1; machinery/glue: congrArg ×6, Mathlib.Meta.NormNum.isNat_ofNat ×5, Eq.trans ×4, Mathlib.Tactic.Ring.cast_pos ×4 (+26 more heads, ×41)
          // UNCITED-APPLIED internal ×76 [exec 106 520-529]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Tactic.Ring.neg_add ×4, Mathlib.Meta.NormNum.IsInt.to_isNat ×4, Mathlib.Meta.NormNum.isInt_add ×4 (+35 more heads, ×60)
          // UNCITED-APPLIED internal ×70 [exec 107 520-529]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Tactic.Ring.add_congr ×3, Mathlib.Tactic.Ring.cast_pos ×3, Mathlib.Tactic.Ring.neg_add ×3 (+37 more heads, ×57)
        }
        // have h₄ : y ^ 2 == 517  [type from Lean state]
        assert ((y * y) == 517); // @tac 564-580
          // [TACTIC: simpa using h₃]
        // have h₅ : y <= 23  [type from Lean state]
        assert (y <= 23) by { // @tac 618-627
          // [TACTIC: «Nlinarith[_]At___»]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 618-627 exec 141)
          // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(59 : ℤ) * (-1 : ℤ) < (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 < 1); (59 > 0)
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(48 : ℤ) * ((23 : ℤ) + (1 : ℤ) - y) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((23 + 1) - y) <= 0); (48 > 0)
          if (((23 + 1) - y) <= 0) { cert_piece_3(x, y); }  // cert: mul_nonneg_of_nonpos_of_nonpos (square of a compound term: Z3 may not carry it through the lemma binding)
          // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(59 : ℤ) * (-1 : ℤ) + (y ^ (2 : ℕ) + (3 : ℤ) * ((0 : ℤ) ^ (2 : ℕ) * y ^ (2 : ℕ)) - ((30 : ℤ) * (0 : ℤ) ^ (2 : ℕ) + (517…` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
          // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(59 : ℤ) * (-1 : ℤ) + (y ^ (2 : ℕ) + (3 : ℤ) * ((0 : ℤ) ^ (2 : ℕ) * y ^ (2 : ℕ)) - ((30 : ℤ) * (0 : ℤ) ^ (2 : ℕ) + (517…` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
          cert_identity_4(x, y);  // cert: add_lt_of_neg_of_le
          // UNCITED-APPLIED internal ×16 [exec 141 618-627]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1, sub_eq_zero_of_eq ×1, sub_nonpos_of_le ×1, Int.add_one_le_iff ×1, neg_nonpos_of_nonneg ×1, mul_nonneg_of_nonpos_of_nonpos ×1; machinery/glue: congrArg ×2, Linarith.lt_irrefl ×1, Linarith.lt_of_lt_of_eq ×1, Linarith.mul_neg ×1 (+1 more heads, ×1)
          // UNCITED-APPLIED internal ×184 [exec 142 618-627]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.cast_pos ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×8, Mathlib.Meta.NormNum.isInt_mul ×8 (+44 more heads, ×152)
          // UNCITED-APPLIED internal ×5 [exec 143 618-627]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
          // UNCITED-APPLIED internal ×5 [exec 144 618-627]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
        }
        // have h₆ : y >= - 23  [type from Lean state]
        assert (y >= -(23)) by { // @tac 666-675
          // [TACTIC: «Nlinarith[_]At___»]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 666-675 exec 161)
          // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(59 : ℤ) * (-1 : ℤ) < (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 < 1); (59 > 0)
          if ((y - 23) <= 0) && (((y + 1) - -(23)) <= 0) { cert_piece_5(x, y); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(59 : ℤ) * (-1 : ℤ) + (y ^ (2 : ℕ) + (3 : ℤ) * ((0 : ℤ) ^ (2 : ℕ) * y ^ (2 : ℕ)) - ((30 : ℤ) * (0 : ℤ) ^ (2 : ℕ) + (517…` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
          // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(59 : ℤ) * (-1 : ℤ) + (y ^ (2 : ℕ) + (3 : ℤ) * ((0 : ℤ) ^ (2 : ℕ) * y ^ (2 : ℕ)) - ((30 : ℤ) * (0 : ℤ) ^ (2 : ℕ) + (517…` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
          cert_identity_6(x, y);  // cert: add_lt_of_neg_of_le
          // UNCITED-APPLIED internal ×16 [exec 161 666-675]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1, sub_eq_zero_of_eq ×1, Int.add_one_le_iff ×1, neg_nonpos_of_nonneg ×1, mul_nonneg_of_nonpos_of_nonpos ×1; machinery/glue: congrArg ×2, Linarith.lt_irrefl ×1, Linarith.lt_of_lt_of_eq ×1, Linarith.mul_neg ×1
          // UNCITED-APPLIED internal ×168 [exec 162 666-675]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.cast_pos ×7, Mathlib.Meta.NormNum.isNat_ofNat ×7, Mathlib.Tactic.Ring.neg_add ×7, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×7 (+44 more heads, ×140)
          // UNCITED-APPLIED internal ×5 [exec 163 666-675]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
        }
        // have h₇ : y <= 23  [type from Lean state]
        assert (y <= 23); // @tac 707-723
          // [TACTIC: simpa using h₅]
        // have h₈ : y >= - 23  [type from Lean state]
        assert (y >= -(23)); // @tac 756-772
          // [TACTIC: simpa using h₆]
        // [TACTIC: «_<;>_» y <;> norm_num at h₄ ⊢ <;> omega omega]
        // [TACTIC: Interval_cases y]
        // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
        // UNCITED-APPLIED internal ×71 [exec 208 777-793]: applications made inside the tactic's own automation, not stated — le_antisymm ×8, Int.le_sub_one_of_not_le ×8; machinery/glue: Eq.symm ×47, Mathlib.Tactic.IntervalCases.of_le_right ×1, Mathlib.Meta.NormNum.IsNat.to_raw_eq ×1, Mathlib.Meta.NormNum.isNat_ofNat ×1 (+5 more heads, ×5)
        if (y == -23) && ((((-(23) * -(23)) + (3 * ((0 * 0) * (-(23) * -(23))))) == ((30 * (0 * 0)) + 517))) && (((-(23) * -(23)) == 517)) && ((-(23) <= 23)) && ((-(23) >= -(23))) {  // sub-goal of `norm_num` (Lean state)
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 798-818
          // UNCITED-APPLIED internal ×11 [exec 217 798-818]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1, Mathlib.Meta.NormNum.IsInt.to_isNat ×1 (+5 more heads, ×5)
        }
        if (y == -22) && ((((-(22) * -(22)) + (3 * ((0 * 0) * (-(22) * -(22))))) == ((30 * (0 * 0)) + 517))) && (((-(22) * -(22)) == 517)) && ((-(22) <= 23)) && ((-(22) >= -(23))) {  // sub-goal of `norm_num` (Lean state)
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 798-818
          // UNCITED-APPLIED internal ×11 [exec 220 798-818]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1, Mathlib.Meta.NormNum.IsInt.to_isNat ×1 (+5 more heads, ×5)
        }
        if (y == -21) && ((((-(21) * -(21)) + (3 * ((0 * 0) * (-(21) * -(21))))) == ((30 * (0 * 0)) + 517))) && (((-(21) * -(21)) == 517)) && ((-(21) <= 23)) && ((-(21) >= -(23))) {  // sub-goal of `norm_num` (Lean state)
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 798-818
          // UNCITED-APPLIED internal ×11 [exec 223 798-818]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1, Mathlib.Meta.NormNum.IsInt.to_isNat ×1 (+5 more heads, ×5)
        }
        if (y == -20) && ((((-(20) * -(20)) + (3 * ((0 * 0) * (-(20) * -(20))))) == ((30 * (0 * 0)) + 517))) && (((-(20) * -(20)) == 517)) && ((-(20) <= 23)) && ((-(20) >= -(23))) {  // sub-goal of `norm_num` (Lean state)
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 798-818
          // UNCITED-APPLIED internal ×11 [exec 226 798-818]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1, Mathlib.Meta.NormNum.IsInt.to_isNat ×1 (+5 more heads, ×5)
        }
        if (y == -19) && ((((-(19) * -(19)) + (3 * ((0 * 0) * (-(19) * -(19))))) == ((30 * (0 * 0)) + 517))) && (((-(19) * -(19)) == 517)) && ((-(19) <= 23)) && ((-(19) >= -(23))) {  // sub-goal of `norm_num` (Lean state)
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 798-818
          // UNCITED-APPLIED internal ×11 [exec 229 798-818]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1, Mathlib.Meta.NormNum.IsInt.to_isNat ×1 (+5 more heads, ×5)
        }
        if (y == -18) && ((((-(18) * -(18)) + (3 * ((0 * 0) * (-(18) * -(18))))) == ((30 * (0 * 0)) + 517))) && (((-(18) * -(18)) == 517)) && ((-(18) <= 23)) && ((-(18) >= -(23))) {  // sub-goal of `norm_num` (Lean state)
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 798-818
          // UNCITED-APPLIED internal ×11 [exec 232 798-818]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1, Mathlib.Meta.NormNum.IsInt.to_isNat ×1 (+5 more heads, ×5)
        }
        if (y == -17) && ((((-(17) * -(17)) + (3 * ((0 * 0) * (-(17) * -(17))))) == ((30 * (0 * 0)) + 517))) && (((-(17) * -(17)) == 517)) && ((-(17) <= 23)) && ((-(17) >= -(23))) {  // sub-goal of `norm_num` (Lean state)
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 798-818
          // UNCITED-APPLIED internal ×11 [exec 235 798-818]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1, Mathlib.Meta.NormNum.IsInt.to_isNat ×1 (+5 more heads, ×5)
        }
        if (y == -16) && ((((-(16) * -(16)) + (3 * ((0 * 0) * (-(16) * -(16))))) == ((30 * (0 * 0)) + 517))) && (((-(16) * -(16)) == 517)) && ((-(16) <= 23)) && ((-(16) >= -(23))) {  // sub-goal of `norm_num` (Lean state)
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 798-818
          // UNCITED-APPLIED internal ×11 [exec 238 798-818]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1, Mathlib.Meta.NormNum.IsInt.to_isNat ×1 (+5 more heads, ×5)
        }
        if (y == -15) && ((((-(15) * -(15)) + (3 * ((0 * 0) * (-(15) * -(15))))) == ((30 * (0 * 0)) + 517))) && (((-(15) * -(15)) == 517)) && ((-(15) <= 23)) && ((-(15) >= -(23))) {  // sub-goal of `norm_num` (Lean state)
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 798-818
          // UNCITED-APPLIED internal ×11 [exec 241 798-818]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1, Mathlib.Meta.NormNum.IsInt.to_isNat ×1 (+5 more heads, ×5)
        }
        if (y == -14) && ((((-(14) * -(14)) + (3 * ((0 * 0) * (-(14) * -(14))))) == ((30 * (0 * 0)) + 517))) && (((-(14) * -(14)) == 517)) && ((-(14) <= 23)) && ((-(14) >= -(23))) {  // sub-goal of `norm_num` (Lean state)
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 798-818
          // UNCITED-APPLIED internal ×11 [exec 244 798-818]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1, Mathlib.Meta.NormNum.IsInt.to_isNat ×1 (+5 more heads, ×5)
        }
        if (y == -13) && ((((-(13) * -(13)) + (3 * ((0 * 0) * (-(13) * -(13))))) == ((30 * (0 * 0)) + 517))) && (((-(13) * -(13)) == 517)) && ((-(13) <= 23)) && ((-(13) >= -(23))) {  // sub-goal of `norm_num` (Lean state)
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 798-818
          // UNCITED-APPLIED internal ×11 [exec 247 798-818]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1, Mathlib.Meta.NormNum.IsInt.to_isNat ×1 (+5 more heads, ×5)
        }
        if (y == -12) && ((((-(12) * -(12)) + (3 * ((0 * 0) * (-(12) * -(12))))) == ((30 * (0 * 0)) + 517))) && (((-(12) * -(12)) == 517)) && ((-(12) <= 23)) && ((-(12) >= -(23))) {  // sub-goal of `norm_num` (Lean state)
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 798-818
          // UNCITED-APPLIED internal ×11 [exec 250 798-818]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1, Mathlib.Meta.NormNum.IsInt.to_isNat ×1 (+5 more heads, ×5)
        }
        if (y == -11) && ((((-(11) * -(11)) + (3 * ((0 * 0) * (-(11) * -(11))))) == ((30 * (0 * 0)) + 517))) && (((-(11) * -(11)) == 517)) && ((-(11) <= 23)) && ((-(11) >= -(23))) {  // sub-goal of `norm_num` (Lean state)
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 798-818
          // UNCITED-APPLIED internal ×11 [exec 253 798-818]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1, Mathlib.Meta.NormNum.IsInt.to_isNat ×1 (+5 more heads, ×5)
        }
        if (y == -10) && ((((-(10) * -(10)) + (3 * ((0 * 0) * (-(10) * -(10))))) == ((30 * (0 * 0)) + 517))) && (((-(10) * -(10)) == 517)) && ((-(10) <= 23)) && ((-(10) >= -(23))) {  // sub-goal of `norm_num` (Lean state)
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 798-818
          // UNCITED-APPLIED internal ×11 [exec 256 798-818]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1, Mathlib.Meta.NormNum.IsInt.to_isNat ×1 (+5 more heads, ×5)
        }
        if (y == -9) && ((((-(9) * -(9)) + (3 * ((0 * 0) * (-(9) * -(9))))) == ((30 * (0 * 0)) + 517))) && (((-(9) * -(9)) == 517)) && ((-(9) <= 23)) && ((-(9) >= -(23))) {  // sub-goal of `norm_num` (Lean state)
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 798-818
          // UNCITED-APPLIED internal ×11 [exec 259 798-818]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1, Mathlib.Meta.NormNum.IsInt.to_isNat ×1 (+5 more heads, ×5)
        }
        if (y == -8) && ((((-(8) * -(8)) + (3 * ((0 * 0) * (-(8) * -(8))))) == ((30 * (0 * 0)) + 517))) && (((-(8) * -(8)) == 517)) && ((-(8) <= 23)) && ((-(8) >= -(23))) {  // sub-goal of `norm_num` (Lean state)
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 798-818
          // UNCITED-APPLIED internal ×11 [exec 262 798-818]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1, Mathlib.Meta.NormNum.IsInt.to_isNat ×1 (+5 more heads, ×5)
        }
        if (y == -7) && ((((-(7) * -(7)) + (3 * ((0 * 0) * (-(7) * -(7))))) == ((30 * (0 * 0)) + 517))) && (((-(7) * -(7)) == 517)) && ((-(7) <= 23)) && ((-(7) >= -(23))) {  // sub-goal of `norm_num` (Lean state)
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 798-818
          // UNCITED-APPLIED internal ×11 [exec 265 798-818]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1, Mathlib.Meta.NormNum.IsInt.to_isNat ×1 (+5 more heads, ×5)
        }
        if (y == -6) && ((((-(6) * -(6)) + (3 * ((0 * 0) * (-(6) * -(6))))) == ((30 * (0 * 0)) + 517))) && (((-(6) * -(6)) == 517)) && ((-(6) <= 23)) && ((-(6) >= -(23))) {  // sub-goal of `norm_num` (Lean state)
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 798-818
          // UNCITED-APPLIED internal ×11 [exec 268 798-818]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1, Mathlib.Meta.NormNum.IsInt.to_isNat ×1 (+5 more heads, ×5)
        }
        if (y == -5) && ((((-(5) * -(5)) + (3 * ((0 * 0) * (-(5) * -(5))))) == ((30 * (0 * 0)) + 517))) && (((-(5) * -(5)) == 517)) && ((-(5) <= 23)) && ((-(5) >= -(23))) {  // sub-goal of `norm_num` (Lean state)
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 798-818
          // UNCITED-APPLIED internal ×11 [exec 271 798-818]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1, Mathlib.Meta.NormNum.IsInt.to_isNat ×1 (+5 more heads, ×5)
        }
        if (y == -4) && ((((-(4) * -(4)) + (3 * ((0 * 0) * (-(4) * -(4))))) == ((30 * (0 * 0)) + 517))) && (((-(4) * -(4)) == 517)) && ((-(4) <= 23)) && ((-(4) >= -(23))) {  // sub-goal of `norm_num` (Lean state)
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 798-818
          // UNCITED-APPLIED internal ×11 [exec 274 798-818]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1, Mathlib.Meta.NormNum.IsInt.to_isNat ×1 (+5 more heads, ×5)
        }
        if (y == -3) && ((((-(3) * -(3)) + (3 * ((0 * 0) * (-(3) * -(3))))) == ((30 * (0 * 0)) + 517))) && (((-(3) * -(3)) == 517)) && ((-(3) <= 23)) && ((-(3) >= -(23))) {  // sub-goal of `norm_num` (Lean state)
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 798-818
          // UNCITED-APPLIED internal ×11 [exec 277 798-818]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1, Mathlib.Meta.NormNum.IsInt.to_isNat ×1 (+5 more heads, ×5)
        }
        if (y == -2) && ((((-(2) * -(2)) + (3 * ((0 * 0) * (-(2) * -(2))))) == ((30 * (0 * 0)) + 517))) && (((-(2) * -(2)) == 517)) && ((-(2) <= 23)) && ((-(2) >= -(23))) {  // sub-goal of `norm_num` (Lean state)
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 798-818
          // UNCITED-APPLIED internal ×11 [exec 280 798-818]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1, Mathlib.Meta.NormNum.IsInt.to_isNat ×1 (+5 more heads, ×5)
        }
        if (y == -1) && ((((-(1) * -(1)) + (3 * ((0 * 0) * (-(1) * -(1))))) == ((30 * (0 * 0)) + 517))) && (((-(1) * -(1)) == 517)) && ((-(1) <= 23)) && ((-(1) >= -(23))) {  // sub-goal of `norm_num` (Lean state)
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 798-818
          // UNCITED-APPLIED internal ×11 [exec 283 798-818]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1, Mathlib.Meta.NormNum.IsInt.to_isNat ×1 (+5 more heads, ×5)
        }
        if (y == 0) && ((((0 * 0) + (3 * ((0 * 0) * (0 * 0)))) == ((30 * (0 * 0)) + 517))) && (((0 * 0) == 517)) && ((0 <= 23)) && ((0 >= -(23))) {  // sub-goal of `norm_num` (Lean state)
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 798-818
          // UNCITED-APPLIED internal ×7 [exec 286 798-818]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1, Mathlib.Meta.NormNum.isNat_pow ×1 (+1 more heads, ×1)
        }
        if (y == 1) && ((((1 * 1) + (3 * ((0 * 0) * (1 * 1)))) == ((30 * (0 * 0)) + 517))) && (((1 * 1) == 517)) && ((1 <= 23)) && ((1 >= -(23))) {  // sub-goal of `norm_num` (Lean state)
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 798-818
          // UNCITED-APPLIED internal ×7 [exec 289 798-818]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1, Mathlib.Meta.NormNum.isNat_pow ×1 (+1 more heads, ×1)
        }
        if (y == 2) && ((((2 * 2) + (3 * ((0 * 0) * (2 * 2)))) == ((30 * (0 * 0)) + 517))) && (((2 * 2) == 517)) && ((2 <= 23)) && ((2 >= -(23))) {  // sub-goal of `norm_num` (Lean state)
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 798-818
          // UNCITED-APPLIED internal ×8 [exec 292 798-818]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1, Mathlib.Meta.NormNum.isNat_pow ×1 (+2 more heads, ×2)
        }
        if (y == 3) && ((((3 * 3) + (3 * ((0 * 0) * (3 * 3)))) == ((30 * (0 * 0)) + 517))) && (((3 * 3) == 517)) && ((3 <= 23)) && ((3 >= -(23))) {  // sub-goal of `norm_num` (Lean state)
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 798-818
          // UNCITED-APPLIED internal ×8 [exec 295 798-818]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1, Mathlib.Meta.NormNum.isNat_pow ×1 (+2 more heads, ×2)
        }
        if (y == 4) && ((((4 * 4) + (3 * ((0 * 0) * (4 * 4)))) == ((30 * (0 * 0)) + 517))) && (((4 * 4) == 517)) && ((4 <= 23)) && ((4 >= -(23))) {  // sub-goal of `norm_num` (Lean state)
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 798-818
          // UNCITED-APPLIED internal ×8 [exec 298 798-818]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1, Mathlib.Meta.NormNum.isNat_pow ×1 (+2 more heads, ×2)
        }
        if (y == 5) && ((((5 * 5) + (3 * ((0 * 0) * (5 * 5)))) == ((30 * (0 * 0)) + 517))) && (((5 * 5) == 517)) && ((5 <= 23)) && ((5 >= -(23))) {  // sub-goal of `norm_num` (Lean state)
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 798-818
          // UNCITED-APPLIED internal ×8 [exec 301 798-818]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1, Mathlib.Meta.NormNum.isNat_pow ×1 (+2 more heads, ×2)
        }
        if (y == 6) && ((((6 * 6) + (3 * ((0 * 0) * (6 * 6)))) == ((30 * (0 * 0)) + 517))) && (((6 * 6) == 517)) && ((6 <= 23)) && ((6 >= -(23))) {  // sub-goal of `norm_num` (Lean state)
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 798-818
          // UNCITED-APPLIED internal ×8 [exec 304 798-818]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1, Mathlib.Meta.NormNum.isNat_pow ×1 (+2 more heads, ×2)
        }
        if (y == 7) && ((((7 * 7) + (3 * ((0 * 0) * (7 * 7)))) == ((30 * (0 * 0)) + 517))) && (((7 * 7) == 517)) && ((7 <= 23)) && ((7 >= -(23))) {  // sub-goal of `norm_num` (Lean state)
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 798-818
          // UNCITED-APPLIED internal ×8 [exec 307 798-818]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1, Mathlib.Meta.NormNum.isNat_pow ×1 (+2 more heads, ×2)
        }
        if (y == 8) && ((((8 * 8) + (3 * ((0 * 0) * (8 * 8)))) == ((30 * (0 * 0)) + 517))) && (((8 * 8) == 517)) && ((8 <= 23)) && ((8 >= -(23))) {  // sub-goal of `norm_num` (Lean state)
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 798-818
          // UNCITED-APPLIED internal ×8 [exec 310 798-818]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1, Mathlib.Meta.NormNum.isNat_pow ×1 (+2 more heads, ×2)
        }
        if (y == 9) && ((((9 * 9) + (3 * ((0 * 0) * (9 * 9)))) == ((30 * (0 * 0)) + 517))) && (((9 * 9) == 517)) && ((9 <= 23)) && ((9 >= -(23))) {  // sub-goal of `norm_num` (Lean state)
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 798-818
          // UNCITED-APPLIED internal ×8 [exec 313 798-818]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1, Mathlib.Meta.NormNum.isNat_pow ×1 (+2 more heads, ×2)
        }
        if (y == 10) && ((((10 * 10) + (3 * ((0 * 0) * (10 * 10)))) == ((30 * (0 * 0)) + 517))) && (((10 * 10) == 517)) && ((10 <= 23)) && ((10 >= -(23))) {  // sub-goal of `norm_num` (Lean state)
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 798-818
          // UNCITED-APPLIED internal ×8 [exec 316 798-818]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1, Mathlib.Meta.NormNum.isNat_pow ×1 (+2 more heads, ×2)
        }
        if (y == 11) && ((((11 * 11) + (3 * ((0 * 0) * (11 * 11)))) == ((30 * (0 * 0)) + 517))) && (((11 * 11) == 517)) && ((11 <= 23)) && ((11 >= -(23))) {  // sub-goal of `norm_num` (Lean state)
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 798-818
          // UNCITED-APPLIED internal ×8 [exec 319 798-818]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1, Mathlib.Meta.NormNum.isNat_pow ×1 (+2 more heads, ×2)
        }
        if (y == 12) && ((((12 * 12) + (3 * ((0 * 0) * (12 * 12)))) == ((30 * (0 * 0)) + 517))) && (((12 * 12) == 517)) && ((12 <= 23)) && ((12 >= -(23))) {  // sub-goal of `norm_num` (Lean state)
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 798-818
          // UNCITED-APPLIED internal ×8 [exec 322 798-818]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1, Mathlib.Meta.NormNum.isNat_pow ×1 (+2 more heads, ×2)
        }
        if (y == 13) && ((((13 * 13) + (3 * ((0 * 0) * (13 * 13)))) == ((30 * (0 * 0)) + 517))) && (((13 * 13) == 517)) && ((13 <= 23)) && ((13 >= -(23))) {  // sub-goal of `norm_num` (Lean state)
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 798-818
          // UNCITED-APPLIED internal ×8 [exec 325 798-818]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1, Mathlib.Meta.NormNum.isNat_pow ×1 (+2 more heads, ×2)
        }
        if (y == 14) && ((((14 * 14) + (3 * ((0 * 0) * (14 * 14)))) == ((30 * (0 * 0)) + 517))) && (((14 * 14) == 517)) && ((14 <= 23)) && ((14 >= -(23))) {  // sub-goal of `norm_num` (Lean state)
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 798-818
          // UNCITED-APPLIED internal ×8 [exec 328 798-818]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1, Mathlib.Meta.NormNum.isNat_pow ×1 (+2 more heads, ×2)
        }
        if (y == 15) && ((((15 * 15) + (3 * ((0 * 0) * (15 * 15)))) == ((30 * (0 * 0)) + 517))) && (((15 * 15) == 517)) && ((15 <= 23)) && ((15 >= -(23))) {  // sub-goal of `norm_num` (Lean state)
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 798-818
          // UNCITED-APPLIED internal ×8 [exec 331 798-818]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1, Mathlib.Meta.NormNum.isNat_pow ×1 (+2 more heads, ×2)
        }
        if (y == 16) && ((((16 * 16) + (3 * ((0 * 0) * (16 * 16)))) == ((30 * (0 * 0)) + 517))) && (((16 * 16) == 517)) && ((16 <= 23)) && ((16 >= -(23))) {  // sub-goal of `norm_num` (Lean state)
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 798-818
          // UNCITED-APPLIED internal ×8 [exec 334 798-818]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1, Mathlib.Meta.NormNum.isNat_pow ×1 (+2 more heads, ×2)
        }
        if (y == 17) && ((((17 * 17) + (3 * ((0 * 0) * (17 * 17)))) == ((30 * (0 * 0)) + 517))) && (((17 * 17) == 517)) && ((17 <= 23)) && ((17 >= -(23))) {  // sub-goal of `norm_num` (Lean state)
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 798-818
          // UNCITED-APPLIED internal ×8 [exec 337 798-818]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1, Mathlib.Meta.NormNum.isNat_pow ×1 (+2 more heads, ×2)
        }
        if (y == 18) && ((((18 * 18) + (3 * ((0 * 0) * (18 * 18)))) == ((30 * (0 * 0)) + 517))) && (((18 * 18) == 517)) && ((18 <= 23)) && ((18 >= -(23))) {  // sub-goal of `norm_num` (Lean state)
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 798-818
          // UNCITED-APPLIED internal ×8 [exec 340 798-818]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1, Mathlib.Meta.NormNum.isNat_pow ×1 (+2 more heads, ×2)
        }
        if (y == 19) && ((((19 * 19) + (3 * ((0 * 0) * (19 * 19)))) == ((30 * (0 * 0)) + 517))) && (((19 * 19) == 517)) && ((19 <= 23)) && ((19 >= -(23))) {  // sub-goal of `norm_num` (Lean state)
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 798-818
          // UNCITED-APPLIED internal ×8 [exec 343 798-818]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1, Mathlib.Meta.NormNum.isNat_pow ×1 (+2 more heads, ×2)
        }
        if (y == 20) && ((((20 * 20) + (3 * ((0 * 0) * (20 * 20)))) == ((30 * (0 * 0)) + 517))) && (((20 * 20) == 517)) && ((20 <= 23)) && ((20 >= -(23))) {  // sub-goal of `norm_num` (Lean state)
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 798-818
          // UNCITED-APPLIED internal ×8 [exec 346 798-818]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1, Mathlib.Meta.NormNum.isNat_pow ×1 (+2 more heads, ×2)
        }
        if (y == 21) && ((((21 * 21) + (3 * ((0 * 0) * (21 * 21)))) == ((30 * (0 * 0)) + 517))) && (((21 * 21) == 517)) && ((21 <= 23)) && ((21 >= -(23))) {  // sub-goal of `norm_num` (Lean state)
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 798-818
          // UNCITED-APPLIED internal ×8 [exec 349 798-818]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1, Mathlib.Meta.NormNum.isNat_pow ×1 (+2 more heads, ×2)
        }
        if (y == 22) && ((((22 * 22) + (3 * ((0 * 0) * (22 * 22)))) == ((30 * (0 * 0)) + 517))) && (((22 * 22) == 517)) && ((22 <= 23)) && ((22 >= -(23))) {  // sub-goal of `norm_num` (Lean state)
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 798-818
          // UNCITED-APPLIED internal ×8 [exec 352 798-818]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1, Mathlib.Meta.NormNum.isNat_pow ×1 (+2 more heads, ×2)
        }
        if (y == 23) && ((((23 * 23) + (3 * ((0 * 0) * (23 * 23)))) == ((30 * (0 * 0)) + 517))) && (((23 * 23) == 517)) && ((23 <= 23)) && ((23 >= -(23))) {  // sub-goal of `norm_num` (Lean state)
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 798-818
          // UNCITED-APPLIED internal ×8 [exec 355 798-818]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1, Mathlib.Meta.NormNum.isNat_pow ×1 (+2 more heads, ×2)
        }
        assert false;  // sub-goal before `have` (Lean state) // @tac 390-427 // @tac 432-449 // @tac 454-529 // @tac 534-580 // @tac 585-627 // @tac 632-675 // @tac 680-723 // @tac 728-772 // @tac 777-828 // @tac 777-818 // @tac 777-793
      }
      assert false;
    }
  }
  // have h₂ : ( 3 * x ^ 2 + 1 : ℤ ) ∣ 507  [type from Lean state]
  assert IntDvd(((3 * (x * x)) + 1), 507) by { // @tac 886-1187 // @tac 1192-1579 // @tac 1584-1597
    // have h₂₁ : ( 3 * x ^ 2 + 1 : ℤ ) ∣ 30 * x ^ 2 + 517  [type from Lean state]
    assert IntDvd(((3 * (x * x)) + 1), ((30 * (x * x)) + 517)) by { // @tac 956-965
      // [TACTIC: Use y ^ 2]
      assert (((30 * (x * x)) + 517) == (((3 * (x * x)) + 1) * (y * y))) by {  // sub-goal of `use` (Lean state) // @tac 972-1044 // @tac 1051-1172 // @tac 1179-1187
        // have h₂₁₁ : y ^ 2 + 3 * ( x ^ 2 * y ^ 2 ) == 30 * x ^ 2 + 517  [type from Lean state]
        assert (((y * y) + (3 * ((x * x) * (y * y)))) == ((30 * (x * x)) + 517)) by {
          // [TACTIC: exact h₀]
          assert (((y * y) + (3 * ((x * x) * (y * y)))) == ((30 * (x * x)) + 517));
        }
        // have h₂₁₂ : y ^ 2 * ( 3 * x ^ 2 + 1 ) == 30 * x ^ 2 + 517  [type from Lean state]
        assert (((y * y) * ((3 * (x * x)) + 1)) == ((30 * (x * x)) + 517)) by { // @tac 1126-1172 // @tac 1126-1151
          // [TACTIC: «_<;>_» at h₂₁₁ ⊢ <;> linarith linarith]
          // [TACTIC: Ring_nfAt at h₂₁₁ ⊢]
          // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := y ^ (2 : ℕ))
          // UNCITED-APPLIED internal ×83 [exec 446 1126-1151]: applications made inside the tactic's own automation, not stated — add_zero ×2, mul_one ×1; machinery/glue: Mathlib.Tactic.Ring.mul_add ×6, Mathlib.Tactic.Ring.add_pf_add_zero ×6, congrArg ×5, Mathlib.Tactic.Ring.cast_pos ×5 (+24 more heads, ×58)
          assert (((y * y) + (((y * y) * (x * x)) * 3)) == (517 + ((x * x) * 30)));  // hypothesis h₂₁₁ after `ring_nf` (Lean state) // @tac-hyp 1126-1151
          assert (((y * y) + (((y * y) * (x * x)) * 3)) == (517 + ((x * x) * 30))) by {  // sub-goal of `linarith` (Lean state) // @tac 1164-1172
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1164-1172 exec 455)
            // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + -(y ^ (2 : ℕ) + (3 : ℤ) * (x ^ (2 : ℕ) * y ^ (2 : ℕ)) - ((30 : ℤ) * x ^ (2 : ℕ) + (517 : ℤ))) < (0 : ℤ)`
            cert_identity_7(x, y);  // cert: add_lt_of_neg_of_le
            cert_identity_8(x, y);  // cert: add_lt_of_neg_of_le
            // UNCITED-APPLIED internal ×17 [exec 455 1164-1172]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
            // UNCITED-APPLIED internal ×177 [exec 456 1164-1172]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.add_congr ×7, Mathlib.Tactic.Ring.neg_add ×7 (+39 more heads, ×147)
            // UNCITED-APPLIED internal ×165 [exec 457 1164-1172]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.add_congr ×7, Mathlib.Tactic.Ring.mul_pf_left ×6 (+40 more heads, ×136)
          }
        }
        // [TACTIC: «Linarith[_]At___»]
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1179-1187 exec 458)
        // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + -(y ^ (2 : ℕ) + (3 : ℤ) * (x ^ (2 : ℕ) * y ^ (2 : ℕ)) - ((30 : ℤ) * x ^ (2 : ℕ) + (517 : ℤ))) < (0 : ℤ)`
        cert_identity_9(x, y);  // cert: add_lt_of_neg_of_le
        cert_identity_10(x, y);  // cert: add_lt_of_neg_of_le
        // UNCITED-APPLIED internal ×17 [exec 458 1179-1187]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, sub_eq_zero_of_eq ×1, neg_eq_zero ×1; machinery/glue: congrArg ×2, Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
        // UNCITED-APPLIED internal ×159 [exec 459 1179-1187]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.add_congr ×6, Mathlib.Meta.NormNum.isNat_ofNat ×6 (+40 more heads, ×131)
        // UNCITED-APPLIED internal ×171 [exec 460 1179-1187]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.neg_add ×7, Mathlib.Tactic.Ring.add_pf_add_zero ×7 (+39 more heads, ×141)
      }
    }
    // have h₂₂ : ( 3 * x ^ 2 + 1 : ℤ ) ∣ 507  [type from Lean state]
    assert IntDvd(((3 * (x * x)) + 1), 507) by { // @tac 1249-1320 // @tac 1327-1556 // @tac 1563-1579
      // have h₂₂₁ : ( 3 * x ^ 2 + 1 : ℤ ) ∣ 30 * x ^ 2 + 517  [type from Lean state]
      assert IntDvd(((3 * (x * x)) + 1), ((30 * (x * x)) + 517)) by {
        // [TACTIC: exact h₂₁]
        assert IntDvd(((3 * (x * x)) + 1), ((30 * (x * x)) + 517));
      }
      // have h₂₂₂ : ( 3 * x ^ 2 + 1 : ℤ ) ∣ 507  [type from Lean state]
      assert y * y + 3 * (x * x * (y * y)) == 30 * (x * x) + 517;  /* [IN-FILE CHECK] requires 1 of vc_aime_1987_p5_L495 */
      assert x != 0;  /* [IN-FILE CHECK] requires 2 of vc_aime_1987_p5_L495 */
      assert IntDvd(3 * (x * x) + 1, 30 * (x * x) + 517);  /* [IN-FILE CHECK] requires 3 of vc_aime_1987_p5_L495 */
      vc_aime_1987_p5_L495(x, y);  /* [IN-FILE CHECK] the closed lemma for line 495 */
      assert IntDvd(((3 * (x * x)) + 1), 507) by { // @tac 1389-1471 // @tac 1480-1509 // @tac 1518-1556
        // have h₂₂₃ : 30 * x ^ 2 + 517 == 10 * ( 3 * x ^ 2 + 1 ) + 507  [type from Lean state]
        assert (((30 * (x * x)) + 517) == ((10 * ((3 * (x * x)) + 1)) + 507)); // @tac 1467-1471
          // [TACTIC: Ring]
        // UNCITED-APPLIED internal ×69 [exec 525 1467-1471]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.cast_pos ×7, Mathlib.Meta.NormNum.isNat_ofNat ×7, Mathlib.Tactic.Ring.mul_add ×5, Mathlib.Tactic.Ring.add_mul ×4 (+25 more heads, ×46)
        // [TACTIC: rwSeq [ h₂₂₃ ] at h₂₂₁]
        assert IntDvd(((3 * (x * x)) + 1), ((10 * ((3 * (x * x)) + 1)) + 507));  // hypothesis h₂₂₁ after `rw` (Lean state) // @tac-hyp 1480-1509
        // [TACTIC: simpa [ dvd_add_right ] using h₂₂₁]
        // UNCITED dvd_add_right: no Lean instance recorded (arguments unknown), not guessed
        // UNCITED-APPLIED internal ×2 [exec 557 1518-1556]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, congrArg ×1
      }
      // [TACTIC: exact h₂₂₂]
      assert IntDvd(((3 * (x * x)) + 1), 507);
    }
    // [TACTIC: exact h₂₂]
    assert IntDvd(((3 * (x * x)) + 1), 507);
  }
  // have h₃ : x ^ 2 == 4  [type from Lean state]
  assert ((x * x) == 4) by { // @tac 1635-1687 // @tac 1692-1867 // @tac 2108-8613
    // have h₃₁ : ( 3 * x ^ 2 + 1 : ℤ ) ∣ 507  [type from Lean state]
    assert IntDvd(((3 * (x * x)) + 1), 507) by {
      // [TACTIC: exact h₂]
      assert IntDvd(((3 * (x * x)) + 1), 507);
    }
    // have h₃₂ : x ^ 2 >= 1  [type from Lean state]
    assert ((x * x) >= 1) by { // @tac 1731-1748
      // UNCITED-APPLIED Decidable.byContradiction: no library counterpart (not stated) [exec 611 1731-1748]
      // by_contra h
      if !(((x * x) >= 1)) {
        assert false by {  // sub-goal before `have` (Lean state) // @tac 1755-1796 // @tac 1803-1847 // @tac 1854-1867
          // have h₃₃ : x ^ 2 <= 0  [type from Lean state]
          assert ((x * x) <= 0) by { // @tac 1788-1796
            // [TACTIC: «Linarith[_]At___»]
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1788-1796 exec 628)
            // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(-1 : ℤ) + (x ^ (2 : ℕ) + (1 : ℤ) - (1 : ℤ)) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
            cert_identity_11(x, y);  // cert: add_lt_of_neg_of_le
            // UNCITED-APPLIED internal ×12 [exec 628 1788-1796]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1, lt_of_not_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
            // UNCITED-APPLIED internal ×56 [exec 629 1788-1796]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×4, Mathlib.Tactic.Ring.add_pf_zero_add ×4, Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Tactic.Ring.add_pf_add_overlap_zero ×3 (+34 more heads, ×42)
          }
          // have h₃₄ : x == 0  [type from Lean state]
          assert (x == 0) by { // @tac 1838-1847
            // [TACTIC: «Nlinarith[_]At___»]
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1838-1847 exec 646)
            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℤ) * (x + (1 : ℤ)) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((x + 1) <= 0); (2 > 0)
            if ((x + 1) <= 0) { cert_piece_12(x, y); }  // cert: mul_nonneg_of_nonpos_of_nonpos (square of a compound term: Z3 may not carry it through the lemma binding)
            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℤ) * ((0 : ℤ) + (1 : ℤ) - x) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((0 + 1) - x) <= 0); (2 > 0)
            if (((0 + 1) - x) <= 0) { cert_piece_13(x, y); }  // cert: mul_nonneg_of_nonpos_of_nonpos (square of a compound term: Z3 may not carry it through the lemma binding)
            // UNCITED-APPLIED add_lt_of_neg_of_le ×3: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + (x ^ (2 : ℕ) + (1 : ℤ) - (1 : ℤ)) + (2 : ℤ) * ((0 : ℤ) + (1 : ℤ) - x) < (0 : ℤ)`
            cert_identity_14(x, y);  // cert: add_lt_of_neg_of_le
            cert_identity_15(x, y);  // cert: add_lt_of_neg_of_le
            // UNCITED-APPLIED internal ×24 [exec 646 1838-1847]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×5, Int.add_one_le_iff ×3, sub_nonpos_of_le ×2, neg_nonpos_of_nonneg ×2, mul_nonneg_of_nonpos_of_nonpos ×2, neg_neg_of_pos ×1, zero_lt_one ×1, lt_of_not_ge ×1; machinery/glue: congrArg ×2, Linarith.mul_nonpos ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
            // UNCITED-APPLIED internal ×108 [exec 647 1838-1847]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×7, Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Tactic.Ring.add_pf_add_zero ×5, Mathlib.Tactic.Ring.add_pf_add_lt ×5 (+42 more heads, ×86)
            // UNCITED-APPLIED internal ×5 [exec 648 1838-1847]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
            // UNCITED-APPLIED internal ×120 [exec 649 1838-1847]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×7, Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Tactic.Ring.neg_add ×5, Mathlib.Tactic.Ring.add_pf_add_zero ×5 (+42 more heads, ×98)
            // UNCITED-APPLIED internal ×5 [exec 650 1838-1847]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
          }
          // [TACTIC: contradiction]
        }
        assert false;
      }
    }
    // have h₃₅ : 3 * x ^ 2 + 1 == 13  [type from Lean state]
    assert (((3 * (x * x)) + 1) == 13) by { // @tac 2212-8590
      // have h₃₅₁ : 3 * x ^ 2 + 1 == 13  [type from Lean state]
      assert (((3 * (x * x)) + 1) == 13) by { // @tac 2364-2414 // @tac 2423-6891
        // have h₃₅₂ : 3 * x ^ 2 + 1 ∣ 507  [type from Lean state]
        assert IntDvd(((3 * (x * x)) + 1), 507) by {
          // [TACTIC: exact h₃₁]
          assert IntDvd(((3 * (x * x)) + 1), 507);
        }
        // have h₃₅₃ : 3 * x ^ 2 + 1 == 1 || 3 * x ^ 2 + 1 == 3 || 3 * x ^ 2 + 1 == 13 || 3 *  [type from Lean state]
        assert ((((3 * (x * x)) + 1) == 1) || ((((3 * (x * x)) + 1) == 3) || ((((3 * (x * x)) + 1) == 13) || ((((3 * (x * x)) + 1) == 39) || ((((3 * (x * x)) + 1) == 169) || (((3 * (x * x)) + 1) == 507)))))) by { // @tac 2661-2712 // @tac 2723-3033 // @tac 3147-6864
          // have h₃₅₄ : 3 * x ^ 2 + 1 > 0  [type from Lean state]
          assert (((3 * (x * x)) + 1) > 0) by { // @tac 2703-2712
            // [TACTIC: «Nlinarith[_]At___»]
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2703-2712 exec 728)
            // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(4 : ℤ) * (-1 : ℤ) < (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 < 1); (4 > 0)
            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(3 : ℤ) * ((1 : ℤ) - x ^ (2 : ℕ)) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((1 - (x * x)) <= 0); (3 > 0)
            // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(4 : ℤ) * (-1 : ℤ) + (3 : ℤ) * ((1 : ℤ) - x ^ (2 : ℕ)) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
            cert_identity_16(x, y);  // cert: add_lt_of_neg_of_le
            // UNCITED-APPLIED internal ×11 [exec 728 2703-2712]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, lt_of_not_ge ×1, neg_neg_of_pos ×1, zero_lt_one ×1, sub_nonpos_of_le ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Linarith.mul_neg ×1, Linarith.mul_nonpos ×1
            // UNCITED-APPLIED internal ×90 [exec 729 2703-2712]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Mathlib.Tactic.Ring.mul_add ×5, Mathlib.Tactic.Ring.add_pf_add_zero ×5, Mathlib.Tactic.Ring.cast_pos ×4 (+38 more heads, ×71)
            // UNCITED-APPLIED internal ×5 [exec 730 2703-2712]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
            // UNCITED-APPLIED internal ×5 [exec 731 2703-2712]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
          }
          // have h₃₅₅ : 3 * x ^ 2 + 1 <= 507  [type from Lean state]
          assert (((3 * (x * x)) + 1) <= 507) by { // @tac 2865-2918 // @tac 2931-3012 // @tac 3025-3033
            // have h₃₅₆ : 3 * x ^ 2 + 1 ∣ 507  [type from Lean state]
            assert IntDvd(((3 * (x * x)) + 1), 507) by {
              // [TACTIC: exact h₃₅₂]
              assert IntDvd(((3 * (x * x)) + 1), 507);
            }
            // have h₃₅₇ : 3 * x ^ 2 + 1 <= 507  [type from Lean state]
            assert (((3 * (x * x)) + 1) <= 507) by {
              assert (0 < 507) by {  // sub-goal of `by` (Lean state) // @tac 2992-3000
                // [TACTIC: «Norm_num[_]At___»]
                // UNCITED-APPLIED internal ×5 [exec 774 2992-3000]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
              }
              // [TACTIC: exact Int.le_of_dvd ( ( by norm_num norm_num ) , h₃₅₆ )]
              assert (0 < (507)) && (exists k: int :: (507) == (((3 * (x * x)) + 1)) * k);  // precondition of IntLeOfDvd (Lean: Int.le_of_dvd)
              IntLeOfDvd(((3 * (x * x)) + 1), 507);  // cite: Int.le_of_dvd
            }
            // [TACTIC: «Linarith[_]At___»]
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3025-3033 exec 777)
            // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(-1 : ℤ) + ((3 : ℤ) * x ^ (2 : ℕ) + (1 : ℤ) - (507 : ℤ)) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
            cert_identity_17(x, y);  // cert: add_lt_of_neg_of_le
            // UNCITED-APPLIED internal ×10 [exec 777 3025-3033]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1, Int.add_one_le_iff ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
            // UNCITED-APPLIED internal ×94 [exec 778 3025-3033]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×5, Mathlib.Meta.NormNum.isInt_add ×5, Mathlib.Tactic.Ring.add_congr ×4 (+39 more heads, ×75)
          }
          // have h₃₅₈ : 3 * x ^ 2 + 1 == 1 || 3 * x ^ 2 + 1 == 3 || 3 * x ^ 2 + 1 == 13 || 3 *  [type from Lean state]
          assert ((((3 * (x * x)) + 1) == 1) || ((((3 * (x * x)) + 1) == 3) || ((((3 * (x * x)) + 1) == 13) || ((((3 * (x * x)) + 1) == 39) || ((((3 * (x * x)) + 1) == 169) || (((3 * (x * x)) + 1) == 507)))))) by { // @tac 3422-3475 // @tac 3488-6832
            // have h₃₅₉ : 3 * x ^ 2 + 1 ∣ 507  [type from Lean state]
            assert IntDvd(((3 * (x * x)) + 1), 507) by {
              // [TACTIC: exact h₃₅₂]
              assert IntDvd(((3 * (x * x)) + 1), 507);
            }
            // have h₃₅₁₀ : 3 * x ^ 2 + 1 == 1 || 3 * x ^ 2 + 1 == 3 || 3 * x ^ 2 + 1 == 13 || 3 *  [type from Lean state]
            assert ((((3 * (x * x)) + 1) == 1) || ((((3 * (x * x)) + 1) == 3) || ((((3 * (x * x)) + 1) == 13) || ((((3 * (x * x)) + 1) == 39) || ((((3 * (x * x)) + 1) == 169) || (((3 * (x * x)) + 1) == 507)))))) by { // @tac 3770-6798
              // have h₃₅₁₁ : 3 * x ^ 2 + 1 == 1 || 3 * x ^ 2 + 1 == 3 || 3 * x ^ 2 + 1 == 13 || 3 *  [type from Lean state]
              assert ((((3 * (x * x)) + 1) == 1) || ((((3 * (x * x)) + 1) == 3) || ((((3 * (x * x)) + 1) == 13) || ((((3 * (x * x)) + 1) == 39) || ((((3 * (x * x)) + 1) == 169) || (((3 * (x * x)) + 1) == 507)))))) by { // @tac 4056-4112 // @tac 4129-6762
                // have h₃₅₁₂ : 3 * x ^ 2 + 1 ∣ 507  [type from Lean state]
                assert IntDvd(((3 * (x * x)) + 1), 507) by {
                  // [TACTIC: exact h₃₅₂]
                  assert IntDvd(((3 * (x * x)) + 1), 507);
                }
                // have h₃₅₁₃ : 3 * x ^ 2 + 1 == 1 || 3 * x ^ 2 + 1 == 3 || 3 * x ^ 2 + 1 == 13 || 3 *  [type from Lean state]
                assert ((((3 * (x * x)) + 1) == 1) || ((((3 * (x * x)) + 1) == 3) || ((((3 * (x * x)) + 1) == 13) || ((((3 * (x * x)) + 1) == 39) || ((((3 * (x * x)) + 1) == 169) || (((3 * (x * x)) + 1) == 507)))))) by { // @tac 4419-4475 // @tac 4494-4848 // @tac 4867-4921 // @tac 5051-6724
                  // have h₃₅₁₄ : 3 * x ^ 2 + 1 ∣ 507  [type from Lean state]
                  assert IntDvd(((3 * (x * x)) + 1), 507) by {
                    // [TACTIC: exact h₃₅₂]
                    assert IntDvd(((3 * (x * x)) + 1), 507);
                  }
                  // have h₃₅₁₅ : 3 * x ^ 2 + 1 <= 507  [type from Lean state]
                  assert (((3 * (x * x)) + 1) <= 507) by { // @tac 4655-4711 // @tac 4732-4819 // @tac 4840-4848
                    // have h₃₅₁₆ : 3 * x ^ 2 + 1 ∣ 507  [type from Lean state]
                    assert IntDvd(((3 * (x * x)) + 1), 507) by {
                      // [TACTIC: exact h₃₅₂]
                      assert IntDvd(((3 * (x * x)) + 1), 507);
                    }
                    // have h₃₅₁₇ : 3 * x ^ 2 + 1 <= 507  [type from Lean state]
                    assert (((3 * (x * x)) + 1) <= 507) by {
                      assert (0 < 507) by {  // sub-goal of `by` (Lean state) // @tac 4796-4804
                        // [TACTIC: «Norm_num[_]At___»]
                        // UNCITED-APPLIED internal ×5 [exec 921 4796-4804]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                      }
                      // [TACTIC: exact Int.le_of_dvd ( ( by norm_num norm_num ) , h₃₅₁₆ )]
                      assert (0 < (507)) && (exists k: int :: (507) == (((3 * (x * x)) + 1)) * k);  // precondition of IntLeOfDvd (Lean: Int.le_of_dvd)
                      IntLeOfDvd(((3 * (x * x)) + 1), 507);  // cite: Int.le_of_dvd
                    }
                    // [TACTIC: «Linarith[_]At___»]
                    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 4840-4848 exec 924)
                    // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(-1 : ℤ) + ((3 : ℤ) * x ^ (2 : ℕ) + (1 : ℤ) - (507 : ℤ)) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                    cert_identity_18(x, y);  // cert: add_lt_of_neg_of_le
                    // UNCITED-APPLIED internal ×10 [exec 924 4840-4848]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1, Int.add_one_le_iff ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
                    // UNCITED-APPLIED internal ×94 [exec 925 4840-4848]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×5, Mathlib.Meta.NormNum.isInt_add ×5, Mathlib.Tactic.Ring.add_congr ×4 (+39 more heads, ×75)
                  }
                  // have h₃₅₁₈ : 3 * x ^ 2 + 1 > 0  [type from Lean state]
                  assert (((3 * (x * x)) + 1) > 0) by { // @tac 4912-4921
                    // [TACTIC: «Nlinarith[_]At___»]
                    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 4912-4921 exec 942)
                    // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(4 : ℤ) * (-1 : ℤ) < (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 < 1); (4 > 0)
                    // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(3 : ℤ) * ((1 : ℤ) - x ^ (2 : ℕ)) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((1 - (x * x)) <= 0); (3 > 0)
                    // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(4 : ℤ) * (-1 : ℤ) + (3 : ℤ) * ((1 : ℤ) - x ^ (2 : ℕ)) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                    cert_identity_19(x, y);  // cert: add_lt_of_neg_of_le
                    // UNCITED-APPLIED internal ×11 [exec 942 4912-4921]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, lt_of_not_ge ×1, neg_neg_of_pos ×1, zero_lt_one ×1, sub_nonpos_of_le ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Linarith.mul_neg ×1, Linarith.mul_nonpos ×1
                    // UNCITED-APPLIED internal ×90 [exec 943 4912-4921]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Mathlib.Tactic.Ring.mul_add ×5, Mathlib.Tactic.Ring.add_pf_add_zero ×5, Mathlib.Tactic.Ring.cast_pos ×4 (+38 more heads, ×71)
                    // UNCITED-APPLIED internal ×5 [exec 944 4912-4921]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                    // UNCITED-APPLIED internal ×5 [exec 945 4912-4921]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                  }
                  // have h₃₅₁₉ : 3 * x ^ 2 + 1 == 1 || 3 * x ^ 2 + 1 == 3 || 3 * x ^ 2 + 1 == 13 || 3 *  [type from Lean state]
                  assert ((((3 * (x * x)) + 1) == 1) || ((((3 * (x * x)) + 1) == 3) || ((((3 * (x * x)) + 1) == 13) || ((((3 * (x * x)) + 1) == 39) || ((((3 * (x * x)) + 1) == 169) || (((3 * (x * x)) + 1) == 507)))))) by { // @tac 5345-5401 // @tac 5422-5479 // @tac 5500-5554
                    // have h₃₅₂₀ : 3 * x ^ 2 + 1 ∣ 507  [type from Lean state]
                    assert IntDvd(((3 * (x * x)) + 1), 507) by {
                      // [TACTIC: exact h₃₅₂]
                      assert IntDvd(((3 * (x * x)) + 1), 507);
                    }
                    // have h₃₅₂₁ : 3 * x ^ 2 + 1 <= 507  [type from Lean state]
                    assert (((3 * (x * x)) + 1) <= 507) by { // @tac 5471-5479
                      // [TACTIC: «Linarith[_]At___»]
                      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 5471-5479 exec 990)
                      // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(-1 : ℤ) + ((3 : ℤ) * x ^ (2 : ℕ) + (1 : ℤ) - (507 : ℤ)) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                      cert_identity_20(x, y);  // cert: add_lt_of_neg_of_le
                      // UNCITED-APPLIED internal ×10 [exec 990 5471-5479]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1, Int.add_one_le_iff ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
                      // UNCITED-APPLIED internal ×94 [exec 991 5471-5479]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×5, Mathlib.Meta.NormNum.isInt_add ×5, Mathlib.Tactic.Ring.add_congr ×4 (+39 more heads, ×75)
                    }
                    // have h₃₅₂₂ : 3 * x ^ 2 + 1 > 0  [type from Lean state]
                    assert (((3 * (x * x)) + 1) > 0) by { // @tac 5545-5554
                      // [TACTIC: «Nlinarith[_]At___»]
                      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 5545-5554 exec 1008)
                      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(4 : ℤ) * (-1 : ℤ) < (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 < 1); (4 > 0)
                      // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(3 : ℤ) * ((1 : ℤ) - x ^ (2 : ℕ)) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((1 - (x * x)) <= 0); (3 > 0)
                      // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(4 : ℤ) * (-1 : ℤ) + (3 : ℤ) * ((1 : ℤ) - x ^ (2 : ℕ)) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                      cert_identity_21(x, y);  // cert: add_lt_of_neg_of_le
                      // UNCITED-APPLIED internal ×11 [exec 1008 5545-5554]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, lt_of_not_ge ×1, neg_neg_of_pos ×1, zero_lt_one ×1, sub_nonpos_of_le ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Linarith.mul_neg ×1, Linarith.mul_nonpos ×1
                      // UNCITED-APPLIED internal ×90 [exec 1009 5545-5554]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Mathlib.Tactic.Ring.mul_add ×5, Mathlib.Tactic.Ring.add_pf_add_zero ×5, Mathlib.Tactic.Ring.cast_pos ×4 (+38 more heads, ×71)
                      // UNCITED-APPLIED internal ×5 [exec 1010 5545-5554]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                      // UNCITED-APPLIED internal ×5 [exec 1011 5545-5554]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                    }
                    // [TACTIC: Interval_cases]
                    // UNCITED-APPLIED internal ×23 [exec 2559 5721-5750]: applications made inside the tactic's own automation, not stated — or_true ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×6, congr ×5, Mathlib.Meta.NormNum.isNat_eq_false ×5, of_eq_true ×1 (+5 more heads, ×5)
                    // UNCITED-APPLIED internal ×530 [exec 1032 5688-5716]: applications made inside the tactic's own automation, not stated — le_antisymm ×8, Int.le_sub_one_of_not_le ×8, Int.add_one_le_of_not_le ×1; machinery/glue: Eq.symm ×507, Mathlib.Meta.NormNum.IsNat.to_raw_eq ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Tactic.IntervalCases.of_le_right ×1 (+1 more heads, ×1)
                    // UNCITED-APPLIED internal ×6 [exec 2556 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2553 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2550 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2547 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2544 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2541 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2538 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2535 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2532 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2529 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2526 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2523 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2520 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2517 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2514 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2511 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2508 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2505 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2502 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2499 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2496 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2493 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2490 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2487 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2484 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2481 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2478 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2475 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2472 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2469 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2466 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2463 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2460 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2457 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2454 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2451 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2448 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2445 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2442 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2439 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2436 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2433 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2430 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2427 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2424 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2421 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2418 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2415 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2412 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2409 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2406 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2403 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2400 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2397 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2394 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2391 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2388 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2385 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2382 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2379 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2376 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2373 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2370 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2367 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2364 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2361 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2358 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2355 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2352 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2349 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2346 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2343 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2340 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2337 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2334 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2331 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2328 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2325 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2322 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2319 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2316 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2313 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2310 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2307 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2304 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2301 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2298 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2295 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2292 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2289 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2286 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2283 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2280 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2277 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2274 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2271 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2268 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2265 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2262 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2259 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2256 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2253 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2250 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2247 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2244 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2241 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2238 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2235 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2232 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2229 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2226 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2223 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2220 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2217 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2214 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2211 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2208 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2205 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2202 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2199 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2196 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2193 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2190 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2187 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2184 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2181 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2178 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2175 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2172 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2169 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2166 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2163 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2160 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2157 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2154 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2151 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2148 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2145 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2142 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2139 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2136 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2133 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2130 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2127 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2124 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2121 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2118 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2115 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2112 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2109 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2106 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2103 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2100 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2097 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2094 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2091 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2088 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2085 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2082 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2079 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2076 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2073 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2070 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2067 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2064 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2061 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2058 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2055 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2052 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2049 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2046 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2043 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2040 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2037 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2034 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2031 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2028 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2025 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2022 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2019 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2016 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2013 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2010 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2007 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2004 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 2001 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1998 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1995 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1992 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1989 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1986 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1983 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1980 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1977 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1974 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1971 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1968 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1965 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1962 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1959 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1956 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1953 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1950 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1947 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1944 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1941 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1938 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1935 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1932 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1929 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1926 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1923 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1920 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1917 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1914 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1911 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1908 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1905 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1902 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1899 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1896 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1893 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1890 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1887 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1884 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1881 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1878 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1875 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1872 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1869 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1866 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1863 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1860 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1857 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1854 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1851 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1848 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1845 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1842 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1839 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1836 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1833 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1830 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1827 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1824 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1821 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1818 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1815 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1812 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1809 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1806 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1803 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1800 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1797 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1794 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1791 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1788 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1785 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1782 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1779 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1776 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1773 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1770 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1767 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1764 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1761 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1758 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1755 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1752 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1749 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1746 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1743 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1740 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1737 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1734 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1731 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1728 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1725 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1722 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1719 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1716 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1713 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1710 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1707 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1704 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1701 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1698 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1695 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1692 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1689 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1686 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1683 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1680 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1677 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1674 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1671 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1668 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1665 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1662 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1659 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1656 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1653 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1650 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1647 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1644 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1641 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1638 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1635 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1632 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1629 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1626 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1623 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1620 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1617 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1614 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1611 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1608 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1605 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1602 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1599 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1596 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1593 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1590 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1587 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1584 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1581 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1578 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1575 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1572 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1569 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1566 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1563 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1560 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1557 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1554 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1551 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1548 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×24 [exec 1545 5721-5750]: applications made inside the tactic's own automation, not stated — or_false ×1, or_true ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×6, congr ×5, Mathlib.Meta.NormNum.isNat_eq_false ×5, of_eq_true ×1 (+5 more heads, ×5)
                    // UNCITED-APPLIED internal ×6 [exec 1542 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1539 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1536 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1533 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1530 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1527 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1524 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1521 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1518 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1515 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1512 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1509 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1506 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1503 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1500 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1497 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1494 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1491 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1488 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1485 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1482 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1479 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1476 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1473 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1470 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1467 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1464 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1461 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1458 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1455 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1452 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1449 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1446 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1443 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1440 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1437 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1434 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1431 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1428 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1425 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1422 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1419 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1416 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1413 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1410 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1407 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1404 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1401 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1398 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1395 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1392 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1389 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1386 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1383 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1380 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1377 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1374 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1371 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1368 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1365 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1362 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1359 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1356 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1353 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1350 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1347 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1344 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1341 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1338 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1335 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1332 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1329 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1326 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1323 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1320 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1317 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1314 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1311 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1308 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1305 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1302 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1299 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1296 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1293 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1290 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1287 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1284 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1281 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1278 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1275 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1272 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1269 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1266 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1263 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1260 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1257 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1254 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1251 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1248 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1245 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1242 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1239 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1236 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1233 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1230 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1227 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1224 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1221 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1218 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1215 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1212 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1209 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1206 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1203 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1200 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1197 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1194 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1191 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1188 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1185 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1182 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1179 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1176 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1173 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1170 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1167 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1164 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1161 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1158 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×25 [exec 1155 5721-5750]: applications made inside the tactic's own automation, not stated — or_self ×1, or_false ×1, or_true ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×6, congr ×5, Mathlib.Meta.NormNum.isNat_eq_false ×5, of_eq_true ×1 (+5 more heads, ×5)
                    // UNCITED-APPLIED internal ×6 [exec 1152 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1149 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1146 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1143 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1140 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1137 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1134 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1131 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1128 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1125 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1122 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1119 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1116 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1113 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1110 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1107 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1104 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1101 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1098 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1095 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1092 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1089 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1086 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1083 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1080 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×25 [exec 1077 5721-5750]: applications made inside the tactic's own automation, not stated — or_self ×1, or_false ×1, or_true ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×6, congr ×5, Mathlib.Meta.NormNum.isNat_eq_false ×5, of_eq_true ×1 (+5 more heads, ×5)
                    // UNCITED-APPLIED internal ×6 [exec 1074 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1071 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1068 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1065 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1062 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1059 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1056 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1053 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×6 [exec 1050 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×25 [exec 1047 5721-5750]: applications made inside the tactic's own automation, not stated — or_self ×1, or_false ×1, or_true ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×6, congr ×5, Mathlib.Meta.NormNum.isNat_eq_false ×5, of_eq_true ×1 (+5 more heads, ×5)
                    // UNCITED-APPLIED internal ×6 [exec 1044 5721-5750]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isInt_dvd_false ×1
                    // UNCITED-APPLIED internal ×24 [exec 1041 5721-5750]: applications made inside the tactic's own automation, not stated — or_self ×1, or_false ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×6, congr ×5, Mathlib.Meta.NormNum.isNat_eq_false ×5, of_eq_true ×1 (+5 more heads, ×5)
                  }
                }
              }
            }
          }
        }
        // UNCITED-APPLIED internal ×18 [exec 2711 7575-7580]: applications made inside the tactic's own automation, not stated — Int.sub_eq_zero_of_eq ×1; machinery/glue: Eq.symm ×5, Lean.Omega.Constraint.not_sat'_of_isImpossible ×1, of_decide_eq_true ×1, Lean.Omega.tidy_sat ×1 (+9 more heads, ×9)
        // UNCITED-APPLIED internal ×18 [exec 2793 7914-7919]: applications made inside the tactic's own automation, not stated — Int.sub_eq_zero_of_eq ×1; machinery/glue: Eq.symm ×5, Lean.Omega.Constraint.not_sat'_of_isImpossible ×1, of_decide_eq_true ×1, Lean.Omega.tidy_sat ×1 (+9 more heads, ×9)
        // UNCITED-APPLIED internal ×8 [exec 2960 8276-8302]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1, Mathlib.Meta.NormNum.isNat_pow ×1 (+2 more heads, ×2)
        // UNCITED-APPLIED internal ×38 [exec 2909 8255-8271]: applications made inside the tactic's own automation, not stated — le_antisymm ×8, Int.le_sub_one_of_not_le ×8; machinery/glue: Eq.symm ×15, Mathlib.Tactic.IntervalCases.of_le_right ×1, Mathlib.Meta.NormNum.IsNat.to_raw_eq ×1, Mathlib.Meta.NormNum.isNat_ofNat ×1 (+4 more heads, ×4)
        // UNCITED-APPLIED internal ×8 [exec 2957 8276-8302]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1, Mathlib.Meta.NormNum.isNat_pow ×1 (+2 more heads, ×2)
        // UNCITED-APPLIED internal ×8 [exec 2954 8276-8302]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1, Mathlib.Meta.NormNum.isNat_pow ×1 (+2 more heads, ×2)
        // UNCITED-APPLIED internal ×8 [exec 2951 8276-8302]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1, Mathlib.Meta.NormNum.isNat_pow ×1 (+2 more heads, ×2)
        // UNCITED-APPLIED internal ×8 [exec 2948 8276-8302]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1, Mathlib.Meta.NormNum.isNat_pow ×1 (+2 more heads, ×2)
        // UNCITED-APPLIED internal ×8 [exec 2945 8276-8302]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1, Mathlib.Meta.NormNum.isNat_pow ×1 (+2 more heads, ×2)
        // UNCITED-APPLIED internal ×7 [exec 2942 8276-8302]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1, Mathlib.Meta.NormNum.isNat_pow ×1 (+1 more heads, ×1)
        // UNCITED-APPLIED internal ×7 [exec 2939 8276-8302]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1, Mathlib.Meta.NormNum.isNat_pow ×1 (+1 more heads, ×1)
        // UNCITED-APPLIED internal ×11 [exec 2936 8276-8302]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1, Mathlib.Meta.NormNum.IsInt.to_isNat ×1 (+5 more heads, ×5)
        // UNCITED-APPLIED internal ×11 [exec 2933 8276-8302]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1, Mathlib.Meta.NormNum.IsInt.to_isNat ×1 (+5 more heads, ×5)
        // UNCITED-APPLIED internal ×11 [exec 2930 8276-8302]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1, Mathlib.Meta.NormNum.IsInt.to_isNat ×1 (+5 more heads, ×5)
        // UNCITED-APPLIED internal ×11 [exec 2927 8276-8302]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1, Mathlib.Meta.NormNum.IsInt.to_isNat ×1 (+5 more heads, ×5)
        // UNCITED-APPLIED internal ×11 [exec 2924 8276-8302]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1, Mathlib.Meta.NormNum.IsInt.to_isNat ×1 (+5 more heads, ×5)
        // UNCITED-APPLIED internal ×11 [exec 2921 8276-8302]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1, Mathlib.Meta.NormNum.IsInt.to_isNat ×1 (+5 more heads, ×5)
        // UNCITED-APPLIED internal ×11 [exec 2918 8276-8302]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1, Mathlib.Meta.NormNum.IsInt.to_isNat ×1 (+5 more heads, ×5)
        // UNCITED-APPLIED internal ×18 [exec 3043 8585-8590]: applications made inside the tactic's own automation, not stated — Int.sub_eq_zero_of_eq ×1; machinery/glue: Eq.symm ×5, Lean.Omega.Constraint.not_sat'_of_isImpossible ×1, of_decide_eq_true ×1, Lean.Omega.tidy_sat ×1 (+9 more heads, ×9)
      }
      // UNCITED-APPLIED internal ×12 [exec 2606 7211-7220]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, zero_lt_one ×1, sub_nonpos_of_le ×1, sub_eq_zero_of_eq ×1; machinery/glue: Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1, Linarith.lt_irrefl ×1, congrArg ×1 (+3 more heads, ×3)
      // UNCITED-APPLIED internal ×82 [exec 2607 7211-7220]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×5, Mathlib.Tactic.Ring.add_pf_add_zero ×5, Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Tactic.Ring.add_mul ×4 (+37 more heads, ×64)
      // UNCITED-APPLIED internal ×5 [exec 2608 7211-7220]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
      // UNCITED-APPLIED internal ×5 [exec 2609 7211-7220]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
      // UNCITED-APPLIED internal ×82 [exec 2610 7211-7220]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×5, Mathlib.Tactic.Ring.add_pf_add_zero ×5, Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Tactic.Ring.add_mul ×4 (+37 more heads, ×64)
      // UNCITED-APPLIED internal ×5 [exec 2611 7211-7220]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
      // UNCITED-APPLIED internal ×5 [exec 2612 7211-7220]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
      // UNCITED-APPLIED internal ×12 [exec 2629 7273-7282]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, zero_lt_one ×1, sub_nonpos_of_le ×1, sub_eq_zero_of_eq ×1; machinery/glue: Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1, Linarith.lt_irrefl ×1, congrArg ×1 (+3 more heads, ×3)
      // UNCITED-APPLIED internal ×82 [exec 2630 7273-7282]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×5, Mathlib.Tactic.Ring.add_pf_add_zero ×5, Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Tactic.Ring.add_mul ×4 (+37 more heads, ×64)
      // UNCITED-APPLIED internal ×5 [exec 2631 7273-7282]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
      // UNCITED-APPLIED internal ×5 [exec 2632 7273-7282]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
      // UNCITED-APPLIED internal ×82 [exec 2633 7273-7282]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×5, Mathlib.Tactic.Ring.add_pf_add_zero ×5, Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Tactic.Ring.add_mul ×4 (+37 more heads, ×64)
      // UNCITED-APPLIED internal ×5 [exec 2634 7273-7282]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
      // UNCITED-APPLIED internal ×5 [exec 2635 7273-7282]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
      // UNCITED-APPLIED internal ×13 [exec 2664 7420-7446]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×4, Eq.trans ×1, congrArg ×1, Mathlib.Meta.NormNum.IsNat.to_eq ×1 (+6 more heads, ×6)
      // UNCITED-APPLIED internal ×11 [exec 2673 7463-7471]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, zero_lt_one ×1, sub_nonpos_of_le ×1, sub_eq_zero_of_eq ×1; machinery/glue: Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1, Linarith.lt_irrefl ×1, congrArg ×1 (+2 more heads, ×2)
      // UNCITED-APPLIED internal ×90 [exec 2674 7463-7471]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×4, Mathlib.Tactic.Ring.mul_add ×4, Mathlib.Tactic.Ring.add_pf_add_zero ×4 (+39 more heads, ×74)
      // UNCITED-APPLIED internal ×5 [exec 2675 7463-7471]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
      // UNCITED-APPLIED internal ×90 [exec 2676 7463-7471]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×4, Mathlib.Tactic.Ring.mul_add ×4, Mathlib.Tactic.Ring.add_pf_add_zero ×4 (+39 more heads, ×74)
      // UNCITED-APPLIED internal ×5 [exec 2677 7463-7471]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
      // UNCITED-APPLIED internal ×10 [exec 2694 7518-7527]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, zero_lt_one ×1, sub_nonpos_of_le ×1, sub_eq_zero_of_eq ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Linarith.lt_of_lt_of_eq ×1, Linarith.mul_nonpos ×1
      // UNCITED-APPLIED internal ×90 [exec 2695 7518-7527]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×4, Mathlib.Tactic.Ring.mul_add ×4, Mathlib.Tactic.Ring.add_pf_add_zero ×4 (+39 more heads, ×74)
      // UNCITED-APPLIED internal ×5 [exec 2696 7518-7527]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
      // UNCITED-APPLIED internal ×7 [exec 2744 7759-7785]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, congrArg ×1, Mathlib.Meta.NormNum.IsNat.to_eq ×1, Mathlib.Meta.NormNum.IsInt.to_isNat ×1 (+2 more heads, ×2)
      // UNCITED-APPLIED internal ×20 [exec 2753 7802-7810]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.lt_of_lt_of_eq ×2, Linarith.mul_nonpos ×2, Linarith.eq_of_not_lt_of_not_gt ×1 (+3 more heads, ×3)
      // UNCITED-APPLIED internal ×130 [exec 2754 7802-7810]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_raw_eq ×8, Mathlib.Meta.NormNum.IsInt.of_raw ×8, Mathlib.Meta.NormNum.isInt_mul ×7, Mathlib.Meta.NormNum.IsNat.to_isInt ×7 (+39 more heads, ×100)
      // UNCITED-APPLIED internal ×5 [exec 2755 7802-7810]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
      // UNCITED-APPLIED internal ×5 [exec 2756 7802-7810]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
      // UNCITED-APPLIED internal ×103 [exec 2757 7802-7810]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×6, Mathlib.Tactic.Ring.cast_pos ×5, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×5, Mathlib.Meta.NormNum.IsNat.of_raw ×5 (+41 more heads, ×82)
      // UNCITED-APPLIED internal ×5 [exec 2758 7802-7810]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
      // UNCITED-APPLIED internal ×13 [exec 2775 7857-7866]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1, sub_nonpos_of_le ×1, Int.add_one_le_iff ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Linarith.lt_of_lt_of_eq ×1, Linarith.mul_neg ×1 (+1 more heads, ×1)
      // UNCITED-APPLIED internal ×103 [exec 2776 7857-7866]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×6, Mathlib.Tactic.Ring.cast_pos ×5, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×5, Mathlib.Meta.NormNum.isInt_mul ×5 (+38 more heads, ×82)
      // UNCITED-APPLIED internal ×5 [exec 2777 7857-7866]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
      // UNCITED-APPLIED internal ×5 [exec 2778 7857-7866]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
      // UNCITED-APPLIED internal ×20 [exec 2830 8075-8083]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.lt_of_lt_of_eq ×2, Linarith.mul_nonpos ×2, Linarith.eq_of_not_lt_of_not_gt ×1 (+3 more heads, ×3)
      // UNCITED-APPLIED internal ×125 [exec 2831 8075-8083]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_raw_eq ×8, Mathlib.Meta.NormNum.isInt_mul ×7, Mathlib.Meta.NormNum.IsInt.of_raw ×7, Mathlib.Meta.NormNum.isNat_ofNat ×6 (+39 more heads, ×97)
      // UNCITED-APPLIED internal ×5 [exec 2832 8075-8083]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
      // UNCITED-APPLIED internal ×5 [exec 2833 8075-8083]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
      // UNCITED-APPLIED internal ×111 [exec 2834 8075-8083]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×6, Mathlib.Meta.NormNum.IsNat.of_raw ×6, Mathlib.Tactic.Ring.cast_pos ×5, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×5 (+41 more heads, ×89)
      // UNCITED-APPLIED internal ×5 [exec 2835 8075-8083]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
      // UNCITED-APPLIED internal ×5 [exec 2836 8075-8083]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
      // UNCITED-APPLIED internal ×13 [exec 2853 8130-8139]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1, sub_nonpos_of_le ×1, Int.add_one_le_iff ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Linarith.lt_of_lt_of_eq ×1, Linarith.mul_neg ×1 (+1 more heads, ×1)
      // UNCITED-APPLIED internal ×103 [exec 2854 8130-8139]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×6, Mathlib.Tactic.Ring.cast_pos ×5, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×5, Mathlib.Meta.NormNum.isInt_mul ×5 (+38 more heads, ×82)
      // UNCITED-APPLIED internal ×5 [exec 2855 8130-8139]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
      // UNCITED-APPLIED internal ×5 [exec 2856 8130-8139]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
      // UNCITED-APPLIED internal ×16 [exec 2873 8182-8191]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1, sub_eq_zero_of_eq ×1, sub_nonpos_of_le ×1, Int.add_one_le_iff ×1, neg_nonpos_of_nonneg ×1, mul_nonneg_of_nonpos_of_nonpos ×1; machinery/glue: Linarith.mul_nonpos ×2, Linarith.lt_irrefl ×1, congrArg ×1, Linarith.lt_of_lt_of_eq ×1 (+1 more heads, ×1)
      // UNCITED-APPLIED internal ×189 [exec 2874 8182-8191]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_raw_eq ×8, Mathlib.Meta.NormNum.isInt_mul ×8, Mathlib.Meta.NormNum.IsInt.of_raw ×8, Mathlib.Tactic.Ring.mul_add ×8 (+43 more heads, ×157)
      // UNCITED-APPLIED internal ×5 [exec 2875 8182-8191]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
      // UNCITED-APPLIED internal ×5 [exec 2876 8182-8191]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
      // UNCITED-APPLIED internal ×5 [exec 2877 8182-8191]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
      // UNCITED-APPLIED internal ×17 [exec 2894 8235-8244]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1, sub_eq_zero_of_eq ×1, Int.add_one_le_iff ×1, neg_nonpos_of_nonneg ×1, mul_nonneg_of_nonpos_of_nonpos ×1; machinery/glue: Linarith.mul_nonpos ×2, Linarith.lt_irrefl ×1, congrArg ×1, Linarith.lt_of_lt_of_eq ×1 (+1 more heads, ×1)
      // UNCITED-APPLIED internal ×186 [exec 2895 8235-8244]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_raw_eq ×8, Mathlib.Meta.NormNum.IsInt.of_raw ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+43 more heads, ×154)
      // UNCITED-APPLIED internal ×5 [exec 2896 8235-8244]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
      // UNCITED-APPLIED internal ×5 [exec 2897 8235-8244]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
      // UNCITED-APPLIED internal ×5 [exec 2898 8235-8244]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
      // UNCITED-APPLIED internal ×7 [exec 2994 8430-8456]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, congrArg ×1, Mathlib.Meta.NormNum.IsNat.to_eq ×1, Mathlib.Meta.NormNum.IsInt.to_isNat ×1 (+2 more heads, ×2)
      // UNCITED-APPLIED internal ×20 [exec 3003 8473-8481]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.lt_of_lt_of_eq ×2, Linarith.mul_nonpos ×2, Linarith.eq_of_not_lt_of_not_gt ×1 (+3 more heads, ×3)
      // UNCITED-APPLIED internal ×130 [exec 3004 8473-8481]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_raw_eq ×8, Mathlib.Meta.NormNum.IsInt.of_raw ×8, Mathlib.Meta.NormNum.isInt_mul ×7, Mathlib.Meta.NormNum.IsNat.to_isInt ×7 (+39 more heads, ×100)
      // UNCITED-APPLIED internal ×5 [exec 3005 8473-8481]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
      // UNCITED-APPLIED internal ×5 [exec 3006 8473-8481]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
      // UNCITED-APPLIED internal ×103 [exec 3007 8473-8481]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×6, Mathlib.Tactic.Ring.cast_pos ×5, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×5, Mathlib.Meta.NormNum.IsNat.of_raw ×5 (+41 more heads, ×82)
      // UNCITED-APPLIED internal ×5 [exec 3008 8473-8481]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
      // UNCITED-APPLIED internal ×13 [exec 3025 8528-8537]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1, sub_nonpos_of_le ×1, Int.add_one_le_iff ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Linarith.lt_of_lt_of_eq ×1, Linarith.mul_neg ×1 (+1 more heads, ×1)
      // UNCITED-APPLIED internal ×103 [exec 3026 8528-8537]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×6, Mathlib.Tactic.Ring.cast_pos ×5, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×5, Mathlib.Meta.NormNum.isInt_mul ×5 (+38 more heads, ×82)
      // UNCITED-APPLIED internal ×5 [exec 3027 8528-8537]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
      // UNCITED-APPLIED internal ×5 [exec 3028 8528-8537]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
      // UNCITED-APPLIED Linarith.mul_neg ×7: 7 of Lean's 10 recorded certificate pieces here have no statement above — e.g. `(3 : ℤ) * (-1 : ℤ) < (0 : ℤ)`
      // UNCITED-APPLIED Linarith.mul_nonpos ×14: 14 of Lean's 17 recorded certificate pieces here have no statement above — e.g. `(3 : ℤ) * ((1 : ℤ) - x ^ (2 : ℕ)) ≤ (0 : ℤ)`
      // UNCITED-APPLIED mul_nonneg_of_nonpos_of_nonpos: certificate piece `(0 : ℤ) ≤ ((7 : ℤ) + (1 : ℤ) - x) * ((7 : ℤ) + (1 : ℤ) - x)` [exec 2873 8182-8191]: not stated by the translation
      // UNCITED-APPLIED mul_nonneg_of_nonpos_of_nonpos: certificate piece `(0 : ℤ) ≤ (x - (7 : ℤ)) * (x + (1 : ℤ) - (-7 : ℤ))` [exec 2894 8235-8244]: not stated by the translation
      // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(3 : ℤ) * (-1 : ℤ) + (3 : ℤ) * ((1 : ℤ) - x ^ (2 : ℕ)) + ((3 : ℤ) * x ^ (2 : ℕ) + (1 : ℤ) - (1 : ℤ)) < (0 : ℤ)` [exec 2606 7211-7220]: not stated by the translation
      // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(3 : ℤ) * (-1 : ℤ) + (3 : ℤ) * ((1 : ℤ) - x ^ (2 : ℕ)) + ((3 : ℤ) * x ^ (2 : ℕ) + (1 : ℤ) - (1 : ℤ)) < (0 : ℤ)` [exec 2629 7273-7282]: not stated by the translation
      // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(-1 : ℤ) + (3 : ℤ) * ((1 : ℤ) - x ^ (2 : ℕ)) + ((3 : ℤ) * x ^ (2 : ℕ) + (1 : ℤ) - (3 : ℤ)) < (0 : ℤ)` [exec 2673 7463-7471]: not stated by the translation
      // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(-1 : ℤ) + (3 : ℤ) * ((1 : ℤ) - x ^ (2 : ℕ)) + ((3 : ℤ) * x ^ (2 : ℕ) + (1 : ℤ) - (3 : ℤ)) < (0 : ℤ)` [exec 2694 7518-7527]: not stated by the translation
      // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(5 : ℤ) * (-1 : ℤ) + -((3 : ℤ) * x ^ (2 : ℕ) + (1 : ℤ) - (39 : ℤ)) < (0 : ℤ)` [exec 2753 7802-7810]: not stated by the translation
      // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(-1 : ℤ) + ((3 : ℤ) * x ^ (2 : ℕ) + (1 : ℤ) - (39 : ℤ)) < (0 : ℤ)` [exec 2753 7802-7810]: not stated by the translation
      // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(38 : ℤ) * (-1 : ℤ) + -((3 : ℤ) * x ^ (2 : ℕ) + (1 : ℤ) - (39 : ℤ)) < (0 : ℤ)` [exec 2775 7857-7866]: not stated by the translation
      // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(3 : ℤ) * (-1 : ℤ) + -((3 : ℤ) * x ^ (2 : ℕ) + (1 : ℤ) - (169 : ℤ)) < (0 : ℤ)` [exec 2830 8075-8083]: not stated by the translation
      // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(3 : ℤ) * (-1 : ℤ) + ((3 : ℤ) * x ^ (2 : ℕ) + (1 : ℤ) - (169 : ℤ)) < (0 : ℤ)` [exec 2830 8075-8083]: not stated by the translation
      // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(168 : ℤ) * (-1 : ℤ) + -((3 : ℤ) * x ^ (2 : ℕ) + (1 : ℤ) - (169 : ℤ)) < (0 : ℤ)` [exec 2853 8130-8139]: not stated by the translation
      // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(24 : ℤ) * (-1 : ℤ) + ((3 : ℤ) * x ^ (2 : ℕ) + (1 : ℤ) - (169 : ℤ)) < (0 : ℤ)` [exec 2873 8182-8191]: not stated by the translation
      // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(24 : ℤ) * (-1 : ℤ) + ((3 : ℤ) * x ^ (2 : ℕ) + (1 : ℤ) - (169 : ℤ)) < (0 : ℤ)` [exec 2894 8235-8244]: not stated by the translation
      // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(5 : ℤ) * (-1 : ℤ) + -((3 : ℤ) * x ^ (2 : ℕ) + (1 : ℤ) - (507 : ℤ)) < (0 : ℤ)` [exec 3003 8473-8481]: not stated by the translation
      // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(-1 : ℤ) + ((3 : ℤ) * x ^ (2 : ℕ) + (1 : ℤ) - (507 : ℤ)) < (0 : ℤ)` [exec 3003 8473-8481]: not stated by the translation
      // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(506 : ℤ) * (-1 : ℤ) + -((3 : ℤ) * x ^ (2 : ℕ) + (1 : ℤ) - (507 : ℤ)) < (0 : ℤ)` [exec 3025 8528-8537]: not stated by the translation
      // UNCITED-APPLIED add_lt_of_neg_of_le ×5: 5 of Lean's 17 recorded certificate sums here have no statement above — e.g. `(3 : ℤ) * (-1 : ℤ) + (3 : ℤ) * ((1 : ℤ) - x ^ (2 : ℕ)) < (0 : ℤ)`
    }
  }
  // GAP: the Lean syntax tree of this proof is TRUNCATED at byte 5702 (the AST parser stopped there); Lean ran 159 more tactic steps up to byte 9904 (normNum, exact, rcases, cdotTk, cdot, tacticExfalso, …): NOT TRANSLATED
  // Option A sweep: tactic executions without a statement above
  // GAP: 1 of 1 execution of `interval_cases` not stated: the emitter does not lower the syntax around it (no statement was emitted for it) // @tac 5688-5716
  // GAP: 1 of 1 execution of `<;>` not stated: the emitter does not lower the syntax around it (no statement was emitted for it) // @tac 5688-5750
  // GAP: 1 of 1 execution of `<;>` not stated: the emitter does not lower the syntax around it (no statement was emitted for it) // @tac 5688-5788
  // GAP: 1 of 1 execution of `<;>` not stated: the emitter does not lower the syntax around it (no statement was emitted for it) // @tac 5688-6256
  // GAP: 1 of 1 execution of `<;>` not stated: the emitter does not lower the syntax around it (no statement was emitted for it) // @tac 5688-6724
  // GAP: 507 of 507 executions of `norm_num` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 5721-5750
  // GAP: 1 of 1 execution of `exact` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 6743-6762
  // GAP: 1 of 1 execution of `exact` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 6779-6798
  // GAP: 1 of 1 execution of `exact` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 6813-6832
  // GAP: 1 of 1 execution of `exact` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 6845-6864
  // GAP: 1 of 1 execution of `exact` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 6875-6891
  // GAP: 1 of 1 execution of `rcases` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 7001-7101
  // GAP: 1 of 1 execution of `·` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 7110-7306
  // GAP: 1 of 1 execution of `exfalso` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 7147-7154
  // GAP: 1 of 1 execution of `have` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 7165-7220
  // GAP: 1 of 1 execution of `nlinarith` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 7211-7220
  // GAP: 1 of 1 execution of `have` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 7231-7282
  // GAP: 1 of 1 execution of `nlinarith` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 7273-7282
  // GAP: 1 of 1 execution of `contradiction` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 7293-7306
  // GAP: 1 of 1 execution of `·` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 7315-7580
  // GAP: 1 of 1 execution of `exfalso` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 7352-7359
  // GAP: 1 of 1 execution of `have` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 7370-7471
  // GAP: 1 of 1 execution of `norm_num` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 7420-7446
  // GAP: 1 of 1 execution of `<;>` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 7420-7471
  // GAP: 1 of 1 execution of `linarith` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 7463-7471
  // GAP: 1 of 1 execution of `have` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 7482-7527
  // GAP: 1 of 1 execution of `nlinarith` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 7518-7527
  // GAP: 1 of 1 execution of `norm_num` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 7538-7560
  // GAP: 1 of 1 execution of `<;>` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 7538-7580
  // GAP: 1 of 1 execution of `omega` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 7575-7580
  // GAP: 1 of 1 execution of `·` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 7589-7643
  // GAP: 1 of 1 execution of `exact` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 7627-7643
  // GAP: 1 of 1 execution of `·` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 7652-7919
  // GAP: 1 of 1 execution of `exfalso` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 7690-7697
  // GAP: 1 of 1 execution of `have` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 7708-7810
  // GAP: 1 of 1 execution of `norm_num` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 7759-7785
  // GAP: 1 of 1 execution of `<;>` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 7759-7810
  // GAP: 1 of 1 execution of `linarith` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 7802-7810
  // GAP: 1 of 1 execution of `have` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 7821-7866
  // GAP: 1 of 1 execution of `nlinarith` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 7857-7866
  // GAP: 1 of 1 execution of `norm_num` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 7877-7899
  // GAP: 1 of 1 execution of `<;>` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 7877-7919
  // GAP: 1 of 1 execution of `omega` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 7914-7919
  // GAP: 1 of 1 execution of `·` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 7928-8312
  // GAP: 1 of 1 execution of `exfalso` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 7967-7974
  // GAP: 1 of 1 execution of `have` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 7985-8083
  // GAP: 1 of 1 execution of `norm_num` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 8032-8058
  // GAP: 1 of 1 execution of `<;>` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 8032-8083
  // GAP: 1 of 1 execution of `linarith` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 8075-8083
  // GAP: 1 of 1 execution of `have` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 8094-8139
  // GAP: 1 of 1 execution of `nlinarith` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 8130-8139
  // GAP: 1 of 1 execution of `have` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 8150-8191
  // GAP: 1 of 1 execution of `nlinarith` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 8182-8191
  // GAP: 1 of 1 execution of `have` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 8202-8244
  // GAP: 1 of 1 execution of `nlinarith` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 8235-8244
  // GAP: 1 of 1 execution of `interval_cases` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 8255-8271
  // GAP: 1 of 1 execution of `<;>` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 8255-8302
  // GAP: 1 of 1 execution of `<;>` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 8255-8312
  // GAP: 15 of 15 executions of `norm_num` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 8276-8302
  // GAP: 1 of 1 execution of `·` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 8321-8590
  // GAP: 1 of 1 execution of `exfalso` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 8360-8367
  // GAP: 1 of 1 execution of `have` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 8378-8481
  // GAP: 1 of 1 execution of `norm_num` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 8430-8456
  // GAP: 1 of 1 execution of `<;>` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 8430-8481
  // GAP: 1 of 1 execution of `linarith` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 8473-8481
  // GAP: 1 of 1 execution of `have` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 8492-8537
  // GAP: 1 of 1 execution of `nlinarith` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 8528-8537
  // GAP: 1 of 1 execution of `norm_num` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 8548-8570
  // GAP: 1 of 1 execution of `<;>` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 8548-8590
  // GAP: 1 of 1 execution of `omega` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 8585-8590
  // GAP: 1 of 1 execution of `exact` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 8597-8613
  // GAP: 1 of 1 execution of `have` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 8674-8839
  // GAP: 1 of 1 execution of `have` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 8711-8758
  // GAP: 1 of 1 execution of `have` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 8765-8816
  // GAP: 1 of 1 execution of `nlinarith` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 8807-8816
  // UNCITED-APPLIED internal ×20 [exec 3089 8807-8816]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.lt_of_lt_of_eq ×2, Linarith.mul_nonpos ×2, Linarith.eq_of_not_lt_of_not_gt ×1 (+3 more heads, ×3)
  // UNCITED-APPLIED internal ×124 [exec 3090 8807-8816]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_raw_eq ×8, Mathlib.Meta.NormNum.isInt_mul ×7, Mathlib.Meta.NormNum.isNat_ofNat ×6, Mathlib.Meta.NormNum.IsInt.of_raw ×6 (+39 more heads, ×97)
  // UNCITED-APPLIED internal ×5 [exec 3091 8807-8816]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
  // UNCITED-APPLIED internal ×5 [exec 3092 8807-8816]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
  // UNCITED-APPLIED internal ×111 [exec 3093 8807-8816]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×6, Mathlib.Meta.NormNum.IsNat.of_raw ×6, Mathlib.Tactic.Ring.cast_pos ×5, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×5 (+41 more heads, ×89)
  // UNCITED-APPLIED internal ×5 [exec 3094 8807-8816]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
  // UNCITED-APPLIED internal ×5 [exec 3095 8807-8816]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
  // GAP: 1 of 1 execution of `exact` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 8823-8839
  // GAP: 1 of 1 execution of `exact` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 8844-8857
  // GAP: 1 of 1 execution of `have` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 8863-9493
  // GAP: 1 of 1 execution of `have` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 8896-8965
  // GAP: 1 of 1 execution of `have` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 8970-9002
  // GAP: 1 of 1 execution of `have` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 9007-9116
  // GAP: 1 of 1 execution of `rw` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 9073-9096
  // GAP: 1 of 1 execution of `exact` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 9103-9116
  // UNCITED-APPLIED congrArg(x ^ (2 : ℕ), (4 : ℤ), fun (_a : ℤ) => y ^ (2 : ℕ) + (3 : ℤ) * (_a * y ^ (2 : ℕ)) = (30 : ℤ)…): no library counterpart (not stated) [exec 3185 9103-9116]
  // GAP: 1 of 1 execution of `have` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 9121-9200
  // GAP: 1 of 1 execution of `exact` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 9187-9200
  // GAP: 1 of 1 execution of `have` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 9205-9304
  // GAP: 1 of 1 execution of `ring_nf` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 9263-9285
  // UNCITED-APPLIED internal ×51 [exec 3224 9263-9285]: applications made inside the tactic's own automation, not stated — add_zero ×2; machinery/glue: Mathlib.Tactic.Ring.cast_pos ×4, Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Meta.NormNum.IsNat.of_raw ×4, Eq.trans ×2 (+25 more heads, ×35)
  // GAP: 1 of 1 execution of `<;>` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 9263-9304
  // GAP: 1 of 1 execution of `linarith` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 9296-9304
  // UNCITED-APPLIED internal ×17 [exec 3233 9296-9304]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
  // UNCITED-APPLIED internal ×134 [exec 3234 9296-9304]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.of_raw ×8, Mathlib.Tactic.Ring.cast_pos ×7, Mathlib.Meta.NormNum.isNat_ofNat ×7, Mathlib.Meta.NormNum.IsNat.to_raw_eq ×6 (+41 more heads, ×106)
  // UNCITED-APPLIED internal ×128 [exec 3235 9296-9304]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.of_raw ×8, Mathlib.Tactic.Ring.cast_pos ×7, Mathlib.Meta.NormNum.isNat_ofNat ×7, Mathlib.Tactic.Ring.add_congr ×5 (+42 more heads, ×101)
  // GAP: 1 of 1 execution of `have` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 9309-9394
  // GAP: 1 of 1 execution of `ring_nf` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 9353-9375
  // UNCITED-APPLIED internal ×30 [exec 3257 9353-9375]: applications made inside the tactic's own automation, not stated — add_zero ×1; machinery/glue: Mathlib.Tactic.Ring.cast_pos ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Tactic.Ring.one_mul ×2, Mathlib.Tactic.Ring.add_mul ×2 (+17 more heads, ×21)
  // GAP: 1 of 1 execution of `<;>` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 9353-9394
  // GAP: 1 of 1 execution of `linarith` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 9386-9394
  // UNCITED-APPLIED internal ×17 [exec 3266 9386-9394]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
  // UNCITED-APPLIED internal ×134 [exec 3267 9386-9394]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.of_raw ×8, Mathlib.Tactic.Ring.cast_pos ×7, Mathlib.Meta.NormNum.isNat_ofNat ×7, Mathlib.Meta.NormNum.IsNat.to_raw_eq ×6 (+41 more heads, ×106)
  // UNCITED-APPLIED internal ×128 [exec 3268 9386-9394]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.of_raw ×8, Mathlib.Tactic.Ring.cast_pos ×7, Mathlib.Meta.NormNum.isNat_ofNat ×7, Mathlib.Tactic.Ring.add_congr ×5 (+42 more heads, ×101)
  // GAP: 1 of 1 execution of `have` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 9399-9475
  // GAP: 1 of 1 execution of `ring_nf` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 9437-9459
  // GAP: 1 of 1 execution of `<;>` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 9437-9475
  // GAP: 1 of 1 execution of `omega` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 9470-9475
  // UNCITED-APPLIED internal ×78 [exec 3299 9470-9475]: applications made inside the tactic's own automation, not stated — Int.sub_eq_zero_of_eq ×3, le_of_le_of_eq ×2, Int.sub_nonneg_of_le ×2, Int.add_one_le_of_lt ×2, Int.lt_or_gt_of_ne ×1; machinery/glue: Eq.symm ×19, Lean.Omega.combo_sat' ×8, Lean.Omega.Int.sub_congr ×5, Lean.Omega.LinearCombo.sub_eval ×5 (+14 more heads, ×31)
  // GAP: 1 of 1 execution of `exact` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 9480-9493
  // GAP: 1 of 1 execution of `have` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 9499-9888
  // GAP: 1 of 1 execution of `have` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 9547-9579
  // GAP: 1 of 1 execution of `have` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 9584-9617
  // GAP: 1 of 1 execution of `have` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 9622-9683
  // GAP: 1 of 1 execution of `exact_mod_cast` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 9661-9683
  // GAP: 1 of 1 execution of `have` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 9688-9750
  // GAP: 1 of 1 execution of `exact_mod_cast` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 9728-9750
  // GAP: 1 of 1 execution of `calc` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 9755-9888
  // GAP: 1 of 1 execution of `rw` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 9821-9842
  // UNCITED-APPLIED congrArg(x ^ (2 : ℕ), (4 : ℤ), fun (_a : ℤ) => (3 : ℤ) * (_a * y ^ (2 : ℕ)) = (3 : ℤ) * ((4 : ℤ) * (…): no library counterpart (not stated) [exec 3391 9821-9842]
  // UNCITED-APPLIED congrArg(y ^ (2 : ℕ), (49 : ℤ), fun (_a : ℤ) => (3 : ℤ) * ((4 : ℤ) * _a) = (3 : ℤ) * ((4 : ℤ) * (49 :…): no library counterpart (not stated) [exec 3391 9821-9842]
  // GAP: 1 of 1 execution of `<;>` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 9821-9859
  // GAP: 1 of 1 execution of `norm_num` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 9880-9888
  // UNCITED-APPLIED internal ×9 [exec 3423 9880-9888]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Meta.NormNum.isNat_mul ×2, of_eq_true ×1, eq_true ×1 (+1 more heads, ×1)
  // GAP: 1 of 1 execution of `exact` not stated: its syntax is not in the parsed AST of this file (the AST is cut short) // @tac 9894-9904
}



// ===== closed lemma for line 495 (from closed/aime_1987_p5-495.dfy) =====

lemma {:induction false} vc_aime_1987_p5_L495(x: int, y: int)
  requires y * y + 3 * (x * x * (y * y)) == 30 * (x * x) + 517
  requires x != 0
  requires IntDvd(3 * (x * x) + 1, 30 * (x * x) + 517)
  ensures  (IntDvd(3 * (x * x) + 1, 507) || (3 * (x * x) + 1 == 0 ==> 507 == 0)) && (IntDvd(3 * (x * x) + 1, 507) || (3 * (x * x) + 1 != 0 ==> 507 % (3 * (x * x) + 1) == 0))
{
  IntDvdIffEmodEqZero(3 * (x * x) + 1, 10 * (3 * (x * x) + 1) + 507);  // K4: ∣ is ∃ by definition  // [ADDED]
  IntDvdIffEmodEqZero(3 * (x * x) + 1, 507);  // K4  // [ADDED]
  assert 10 * (3 * (x * x) + 1) == (3 * (x * x) + 1) * 10;  // dvd_add_right precondition a ∣ 10*a (witness 10)  // [ADDED]
  DvdAddRight(3 * (x * x) + 1, 10 * (3 * (x * x) + 1), 507);  // K5: Mathlib dvd_add_right named in Lean simp set  // [ADDED]
        // have h₂₂₃ : 30 * x ^ 2 + 517 == 10 * ( 3 * x ^ 2 + 1 ) + 507  [type from Lean state]
        assert (((30 * (x * x)) + 517) == ((10 * ((3 * (x * x)) + 1)) + 507)); // @tac 1467-1471
          // [TACTIC: Ring]
        // UNCITED-APPLIED internal ×69 [exec 525 1467-1471]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.cast_pos ×7, Mathlib.Meta.NormNum.isNat_ofNat ×7, Mathlib.Tactic.Ring.mul_add ×5, Mathlib.Tactic.Ring.add_mul ×4 (+25 more heads, ×46)
        // [TACTIC: rwSeq [ h₂₂₃ ] at h₂₂₁]
        assert IntDvd(((3 * (x * x)) + 1), ((10 * ((3 * (x * x)) + 1)) + 507));  // hypothesis h₂₂₁ after `rw` (Lean state) // @tac-hyp 1480-1509
        // [TACTIC: simpa [ dvd_add_right ] using h₂₂₁]
        // UNCITED dvd_add_right: no Lean instance recorded (arguments unknown), not guessed
        // UNCITED-APPLIED internal ×2 [exec 557 1518-1556]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, congrArg ×1
}

