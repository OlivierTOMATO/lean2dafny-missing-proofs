// ════════════════════════════════════════════════════════════
// MECHANICAL TRANSLATION (emitter v2) of ast_cache_v2/imo_1983_p6.json
// Each Lean `have` → `assert ... by {}` at the same depth;
// quantified haves → forall statements. Typed pipeline only.
// ════════════════════════════════════════════════════════════

include "../../library/library_new.dfy"

// ──────────────────────────────────────────────────
// certificate identity for `h₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_1(a: real, b: real, c: real)
  ensures ((a - (b + c)) + ((b + c) - a)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_2(a: real, b: real, c: real)
  ensures ((b - (a + c)) + ((c + a) - b)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_3(a: real, b: real, c: real)
  ensures ((c - (a + b)) + ((a + b) - c)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₇/h₇₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_4(a: real, b: real, c: real)
  ensures (-(a) + a) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₇/h₇₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_5(a: real, b: real, c: real)
  ensures (-(b) + b) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₇/h₇₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_6(a: real, b: real, c: real)
  ensures (-(c) + c) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₇/h₇₄`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_7(a: real, b: real, c: real)
  requires (0.0 < a)
  requires (0.0 < b)
  ensures (0.0 < (a * b))
{
  MulPos(a, b);
}

// ──────────────────────────────────────────────────
// certificate piece for `h₇/h₇₅`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_8(a: real, b: real, c: real)
  requires (0.0 < b)
  requires (0.0 < c)
  ensures (0.0 < (b * c))
{
  MulPos(b, c);
}

// ──────────────────────────────────────────────────
// certificate piece for `h₇/h₇₆`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_9(a: real, b: real, c: real)
  requires (0.0 < c)
  requires (0.0 < a)
  ensures (0.0 < (c * a))
{
  MulPos(c, a);
}

// ──────────────────────────────────────────────────
// certificate piece for `h₇`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_10(a: real, b: real, c: real)
  requires (0.0 <= ((a - b) * (a - b)))
  requires (0.0 <= (((b + c) - a) * ((a + b) - c)))
  ensures (0.0 <= (((a - b) * (a - b)) * (((b + c) - a) * ((a + b) - c))))
{
  MulNonneg(((a - b) * (a - b)), (((b + c) - a) * ((a + b) - c)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₇`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_11(a: real, b: real, c: real)
  requires (0.0 < ((b + c) - a))
  requires (0.0 < ((a + b) - c))
  ensures (0.0 < (((b + c) - a) * ((a + b) - c)))
{
  MulPos(((b + c) - a), ((a + b) - c));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₇`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_12(a: real, b: real, c: real)
  requires (0.0 <= ((c - a) * (c - a)))
  requires (0.0 <= (((a + b) - c) * ((a + c) - b)))
  ensures (0.0 <= (((c - a) * (c - a)) * (((a + b) - c) * ((a + c) - b))))
{
  MulNonneg(((c - a) * (c - a)), (((a + b) - c) * ((a + c) - b)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₇`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_13(a: real, b: real, c: real)
  requires (0.0 < ((a + b) - c))
  requires (0.0 < ((a + c) - b))
  ensures (0.0 < (((a + b) - c) * ((a + c) - b)))
{
  MulPos(((a + b) - c), ((a + c) - b));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₇`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_14(a: real, b: real, c: real)
  requires (0.0 <= ((b - c) * (b - c)))
  requires (0.0 <= (((a + c) - b) * ((b + c) - a)))
  ensures (0.0 <= (((b - c) * (b - c)) * (((a + c) - b) * ((b + c) - a))))
{
  MulNonneg(((b - c) * (b - c)), (((a + c) - b) * ((b + c) - a)));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₇`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_15(a: real, b: real, c: real)
  requires (0.0 < ((a + c) - b))
  requires (0.0 < ((b + c) - a))
  ensures (0.0 < (((a + c) - b) * ((b + c) - a)))
{
  MulPos(((a + c) - b), ((b + c) - a));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₇`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_16(a: real, b: real, c: real)
  ensures ((((2.0 * (((((a * a) * b) * (a - b)) + (((b * b) * c) * (b - c))) + (((c * c) * a) * (c - a)))) + -((((a - b) * (a - b)) * (((b + c) - a) * ((a + b) - c))))) + -((((c - a) * (c - a)) * (((a + b) - c) * ((a + c) - b))))) + -((((b - c) * (b - c)) * (((a + c) - b) * ((b + c) - a))))) == 0.0
{ }

// statement: Lean elaborated type (v3, stmt_cache) — requires/ensures below
lemma imo_1983_p6(a: real, b: real, c: real)
  requires ((0.0 < a) && ((0.0 < b) && (0.0 < c)))
  requires (c < (a + b))
  requires (b < (a + c))
  requires (a < (b + c))
  ensures (0.0 <= (((((a * a) * b) * (a - b)) + (((b * b) * c) * (b - c))) + (((c * c) * a) * (c - a)))) // @tac 470-538 // @tac 544-612 // @tac 618-686 // @tac 692-1768 // @tac 1774-1784
{
  // have h₄ : 0 < b + c - a  [type from Lean state]
  assert (0.0 < ((b + c) - a)) by { // @tac 506-538 // @tac 506-521
    // [TACTIC: «_<;>_» [ h₃ ] linarith [ h₃ ] <;> linarith linarith]
    // [TACTIC: «Linarith[_]At___» [ h₃ ]]
    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 506-521 exec 25)
    cert_identity_1(a, b, c);  // cert: add_lt_of_neg_of_le
    NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 26)]
    // `linarith` closed the goal; the rest of the chain did not run
    // UNCITED-APPLIED internal ×6 [exec 25 506-521]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, sub_neg_of_lt ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
    // UNCITED-APPLIED internal ×42 [exec 26 506-521]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.atom_pf ×3, Mathlib.Tactic.Ring.add_pf_zero_add ×3, Mathlib.Tactic.Ring.neg_add ×3, Mathlib.Tactic.Ring.neg_mul ×3 (+20 more heads, ×30) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
  }
  // have h₅ : 0 < c + a - b  [type from Lean state]
  assert (0.0 < ((c + a) - b)) by { // @tac 580-612 // @tac 580-595
    // [TACTIC: «_<;>_» [ h₂ ] linarith [ h₂ ] <;> linarith linarith]
    // [TACTIC: «Linarith[_]At___» [ h₂ ]]
    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 580-595 exec 54)
    cert_identity_2(a, b, c);  // cert: add_lt_of_neg_of_le
    NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 55)]
    // `linarith` closed the goal; the rest of the chain did not run
    // UNCITED-APPLIED internal ×6 [exec 54 580-595]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, sub_neg_of_lt ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
    // UNCITED-APPLIED internal ×45 [exec 55 580-595]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×3, Mathlib.Tactic.Ring.atom_pf ×3, Mathlib.Tactic.Ring.add_pf_zero_add ×3, Mathlib.Tactic.Ring.neg_add ×3 (+20 more heads, ×33) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
  }
  // have h₆ : 0 < a + b - c  [type from Lean state]
  assert (0.0 < ((a + b) - c)) by { // @tac 654-686 // @tac 654-669
    // [TACTIC: «_<;>_» [ h₁ ] linarith [ h₁ ] <;> linarith linarith]
    // [TACTIC: «Linarith[_]At___» [ h₁ ]]
    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 654-669 exec 83)
    cert_identity_3(a, b, c);  // cert: add_lt_of_neg_of_le
    NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 84)]
    // `linarith` closed the goal; the rest of the chain did not run
    // UNCITED-APPLIED internal ×6 [exec 83 654-669]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, sub_neg_of_lt ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
    // UNCITED-APPLIED internal ×42 [exec 84 654-669]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.atom_pf ×3, Mathlib.Tactic.Ring.add_pf_zero_add ×3, Mathlib.Tactic.Ring.neg_add ×3, Mathlib.Tactic.Ring.neg_mul ×3 (+20 more heads, ×30) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
  }
  // have h₇ : 0 <= a ^ 2 * b * ( a - b ) + b ^ 2 * c * ( b - c ) + c ^ 2 * a * ( c -  [type from Lean state]
  assert (0.0 <= (((((a * a) * b) * (a - b)) + (((b * b) * c) * (b - c))) + (((c * c) * a) * (c - a)))) by { // @tac 784-819 // @tac 824-859 // @tac 864-899 // @tac 904-945 // @tac 950-991 // @tac 996-1037 // @tac 1129-1768
    // have h₇₁ : 0 < a  [type from Lean state]
    assert (0.0 < a) by { // @tac 811-819
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 811-819 exec 123)
      cert_identity_4(a, b, c);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×6 [exec 123 811-819]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×20 [exec 124 811-819]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 124)]
    }
    // have h₇₂ : 0 < b  [type from Lean state]
    assert (0.0 < b) by { // @tac 851-859
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 851-859 exec 141)
      cert_identity_5(a, b, c);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×6 [exec 141 851-859]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×20 [exec 142 851-859]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 142)]
    }
    // have h₇₃ : 0 < c  [type from Lean state]
    assert (0.0 < c) by { // @tac 891-899
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 891-899 exec 159)
      cert_identity_6(a, b, c);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×6 [exec 159 891-899]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×20 [exec 160 891-899]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 160)]
    }
    // have h₇₄ : 0 < a * b  [type from Lean state]
    assert (0.0 < (a * b)) by { // @tac 935-945
      // [TACTIC: Positivity]
      // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 935-945 exec 177)
      if (0.0 < a) && (0.0 < b) { cert_piece_7(a, b, c); }  // cert: mul_pos
      assert (0.0 < (a)) && (0.0 < (b));  // precondition of MulPos (Lean: mul_pos)
      MulPos(a, b);  // cite: mul_pos [applied by the tactic, not named in it]
    }
    // have h₇₅ : 0 < b * c  [type from Lean state]
    assert (0.0 < (b * c)) by { // @tac 981-991
      // [TACTIC: Positivity]
      // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 981-991 exec 194)
      if (0.0 < b) && (0.0 < c) { cert_piece_8(a, b, c); }  // cert: mul_pos
      assert (0.0 < (b)) && (0.0 < (c));  // precondition of MulPos (Lean: mul_pos)
      MulPos(b, c);  // cite: mul_pos [applied by the tactic, not named in it]
    }
    // have h₇₆ : 0 < c * a  [type from Lean state]
    assert (0.0 < (c * a)) by { // @tac 1027-1037
      // [TACTIC: Positivity]
      // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 1027-1037 exec 211)
      if (0.0 < c) && (0.0 < a) { cert_piece_9(a, b, c); }  // cert: mul_pos
      assert (0.0 < (c)) && (0.0 < (a));  // precondition of MulPos (Lean: mul_pos)
      MulPos(c, a);  // cite: mul_pos [applied by the tactic, not named in it]
    }
    // [TACTIC: «Nlinarith[_]At___» [ sq_nonneg ( a - b ) , sq_nonneg ( b - c ) , sq_nonneg ( c - a ) , mul_pos h₀ . 1 h₀ . 2 . 1 , mul_pos h₀ . 2 . 1 h₀ . 2 . 2 , mul_pos h₀ . 2 . 2 h₀ . 1 , mul_pos ( sub_pos.mpr h₁ ) ( sub_pos.mpr h₂ ) , mul_pos ( sub_pos.mpr h₂ ) ( sub_pos.mpr h₃ ) , mul_pos ( sub_pos.mpr h₃ ) ( sub_pos.mpr h₁ ) , mul_pos h₄ h₅ , mul_pos h₅ h₆ , mul_pos h₆ h₄ , sq_nonneg ( a - b + c ) , sq_nonneg ( b - c + a ) , sq_nonneg ( c - a + b ) , mul_nonneg ( sub_nonneg.mpr h₁.le ) ( sub_nonneg.mpr h₂.le ) , mul_nonneg ( sub_nonneg.mpr h₂.le ) ( sub_nonneg.mpr h₃.le ) , mul_nonneg ( sub_nonneg.mpr h₃.le ) ( sub_nonneg.mpr h₁.le ) ]]
    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1129-1768 exec 212)
    // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * (a ^ (2 : ℕ) * b * (a - b) + b ^ (2 : ℕ) * c * (b - c) + c ^ (2 : ℕ) * a * (c - a)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((((a * a) * b) * (a - b)) + (((b * b) * c) * (b - c))) + (((c * c) * a) * (c - a))) < 0.0); (2.0 > 0.0)
    if (0.0 <= ((a - b) * (a - b))) && (0.0 <= (((b + c) - a) * ((a + b) - c))) { cert_piece_10(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
    SqNonneg((a - b)); assert (0.0 <= ((a - b) * (a - b)));  // cert: sq_nonneg
    if (0.0 < ((b + c) - a)) && (0.0 < ((a + b) - c)) { cert_piece_11(a, b, c); }  // cert: mul_pos
    if (0.0 <= ((c - a) * (c - a))) && (0.0 <= (((a + b) - c) * ((a + c) - b))) { cert_piece_12(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
    SqNonneg((c - a)); assert (0.0 <= ((c - a) * (c - a)));  // cert: sq_nonneg
    if (0.0 < ((a + b) - c)) && (0.0 < ((a + c) - b)) { cert_piece_13(a, b, c); }  // cert: mul_pos
    if (0.0 <= ((b - c) * (b - c))) && (0.0 <= (((a + c) - b) * ((b + c) - a))) { cert_piece_14(a, b, c); }  // cert: mul_nonneg_of_nonpos_of_nonpos
    vc_imo_1983_p6_L268(a, b, c);  /* [IN-FILE CHECK] the closed lemma for line 268 */
    SqNonneg((b - c)); assert (0.0 <= ((b - c) * (b - c)));  // cert: sq_nonneg
    if (0.0 < ((a + c) - b)) && (0.0 < ((b + c) - a)) { cert_piece_15(a, b, c); }  // cert: mul_pos
    // UNCITED-APPLIED add_lt_of_neg_of_le ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(2 : ℝ) * (a ^ (2 : ℕ) * b * (a - b) + b ^ (2 : ℕ) * c * (b - c) + c ^ (2 : ℕ) * a * (c - a)) + -(-(a - b) ^ (2 : ℕ) * …`
    cert_identity_16(a, b, c);  // cert: add_lt_of_neg_of_le
    // UNCITED-APPLIED internal ×18 [exec 212 1129-1768]: applications made inside the tactic's own automation, not stated — neg_nonpos_of_nonneg ×6, mul_nonneg_of_nonpos_of_nonpos ×3, neg_neg_of_pos ×3, add_lt_of_neg_of_le ×2, le_of_not_gt ×1, lt_zero_of_zero_gt ×1; machinery/glue: Linarith.lt_irrefl ×1, Linarith.mul_neg ×1 (cited in this block, not counted here: le_of_lt [Lean recorded ×3], mul_pos [Lean recorded ×3], sq_nonneg [Lean recorded ×3], sub_pos [Lean recorded ×3])
    SqNonneg((a - b));  // cite: sq_nonneg
    SqNonneg((c - a));  // cite: sq_nonneg
    SqNonneg((b - c));  // cite: sq_nonneg
    assert (0.0 < (((b + c) - a))) && (0.0 < (((a + b) - c)));  // precondition of MulPos (Lean: mul_pos)
    MulPos(((b + c) - a), ((a + b) - c));  // cite: mul_pos
    SubPos((b + c), a);  // cite: sub_pos
    SubPos((a + b), c);  // cite: sub_pos
    SubPos((a + c), b);  // cite: sub_pos
    // UNCITED mul_nonneg: no Lean instance recorded (arguments unknown), not guessed
    // UNCITED sub_nonneg: no Lean instance recorded (arguments unknown), not guessed
    NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 214 / `ring1` exec 213)]
    if ((-((((b + c) - a) * ((a + b) - c)))) < (0.0)) { LeOfLt(-((((b + c) - a) * ((a + b) - c))), 0.0); }  // cite: le_of_lt [applied by the tactic, not named in it]
    if ((-((((a + b) - c) * ((a + c) - b)))) < (0.0)) { LeOfLt(-((((a + b) - c) * ((a + c) - b))), 0.0); }  // cite: le_of_lt [applied by the tactic, not named in it]
    if ((-((((a + c) - b) * ((b + c) - a)))) < (0.0)) { LeOfLt(-((((a + c) - b) * ((b + c) - a))), 0.0); }  // cite: le_of_lt [applied by the tactic, not named in it]
    // NOT APPLIED `sq_nonneg ( a - b + c )`, `sq_nonneg ( b - c + a )`, `sq_nonneg ( c - a + b )`: named here, but no application Lean recorded at this tactic has their arguments (3 of the 6 named instances match a recorded application)
    // NOT APPLIED 6 of the 9 named instances of mul_pos: Lean's records at this tactic hold only 3 distinct applications of it (which named ones: not identified)
    assert (0.0 < (((a + c) - b))) && (0.0 < (((b + c) - a)));  // precondition of MulPos (Lean: mul_pos)
    MulPos(((a + c) - b), ((b + c) - a));  // cite: mul_pos
    assert (0.0 < (((a + b) - c))) && (0.0 < (((a + c) - b)));  // precondition of MulPos (Lean: mul_pos)
    MulPos(((a + b) - c), ((a + c) - b));  // cite: mul_pos
    // UNCITED-APPLIED internal ×261 [exec 213 1129-1768]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8, Mathlib.Tactic.Ring.mul_zero ×8 (+46 more heads, ×229) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    // UNCITED-APPLIED internal ×5 [exec 214 1129-1768]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
  }
  // [TACTIC: exact h₇]
  assert (0.0 <= (((((a * a) * b) * (a - b)) + (((b * b) * c) * (b - c))) + (((c * c) * a) * (c - a))));
}



// ===== closed lemma for line 268 (from closed/imo_1983_p6-268.dfy) =====

lemma {:induction false} vc_imo_1983_p6_L268(a: real, b: real, c: real)
  requires 0.0 < a
  requires 0.0 < b
  requires 0.0 < c
  requires c < a + b
  requires b < a + c
  requires a < b + c
  requires 0.0 < b + c - a
  requires 0.0 < c + a - b
  requires 0.0 < a + b - c
  requires 0.0 < a * b
  requires 0.0 < b * c
  requires 0.0 < c * a
  requires 0.0 <= (a - b) * (a - b)
  requires 0.0 <= (c - a) * (c - a)
  ensures   0.0 <= (b - c) * (b - c)
{
  SqNonneg(b - c);  // [ADDED]
}

