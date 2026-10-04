// ════════════════════════════════════════════════════════════
// MECHANICAL TRANSLATION (emitter v2) of ast_cache_v2/algebra_absapbon1pabsapbleqsumabsaon1pabsa.json
// Each Lean `have` → `assert ... by {}` at the same depth;
// quantified haves → forall statements. Typed pipeline only.
// ════════════════════════════════════════════════════════════

include "../../library/library_new.dfy"

// ──────────────────────────────────────────────────
// certificate identity for `h₂/h₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_1(a: real, b: real, x: real, y: real)
  ensures ((-(x) + (x - y)) + y) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₂/h₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_2(a: real, b: real, x: real)
  ensures ((-(1.0) + -(x)) + (1.0 + x)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₂/h₇`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_3(a: real, b: real, x: real, y: real)
  ensures (((-(1.0) + -(x)) + (x - y)) + (1.0 + y)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₂/h₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_4(a: real, b: real, x: real)
  ensures ((-(1.0) + -(x)) + (1.0 + x)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₂/h₉`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_5(a: real, b: real, x: real, y: real)
  ensures (((-(1.0) + -(x)) + (x - y)) + (1.0 + y)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₂/h₁₀`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_6(a: real, b: real, x: real, y: real)
  ensures ((x - y) + ((y * (1.0 + x)) - (x * (1.0 + y)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₃/h₁₁/h₁₂/h₁₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_7(a: real, b: real)
  ensures ((abs((a + b)) - (abs(a) + abs(b))) + ((abs(a) + abs(b)) - abs((a + b)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₁₂/h₁₇`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_8(a: real, b: real)
  ensures (-(abs(b)) + ((1.0 + (abs(a) + abs(b))) - (1.0 + abs(a)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₁₂/h₁₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_9(a: real, b: real)
  ensures (-(abs(b)) + ((1.0 + (abs(a) + abs(b))) - (1.0 + abs(a)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₁₃/h₁₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_10(a: real, b: real)
  ensures (-(abs(a)) + ((1.0 + (abs(a) + abs(b))) - (1.0 + abs(b)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₁₃/h₁₉`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_11(a: real, b: real)
  ensures (-(abs(a)) + ((1.0 + (abs(a) + abs(b))) - (1.0 + abs(b)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₂₀`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_12(a: real, b: real)
  ensures ((((1.0 * Real.div(abs(a), (1.0 + (abs(a) + abs(b))))) - (1.0 * Real.div(abs(a), (1.0 + abs(a))))) + ((1.0 * Real.div(abs(b), (1.0 + (abs(a) + abs(b))))) - (1.0 * Real.div(abs(b), (1.0 + abs(b)))))) + (((1.0 * Real.div(abs(a), (1.0 + abs(a)))) + (1.0 * Real.div(abs(b), (1.0 + abs(b))))) - ((1.0 * Real.div(abs(a), (1.0 + (abs(a) + abs(b))))) + (1.0 * Real.div(abs(b), (1.0 + (abs(a) + abs(b)))))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_13(a: real, b: real)
  ensures ((((1.0 * Real.div(abs(a), (1.0 + (abs(a) + abs(b))))) - (1.0 * Real.div(abs(a), (1.0 + abs(a))))) + ((1.0 * Real.div(abs(b), (1.0 + (abs(a) + abs(b))))) - (1.0 * Real.div(abs(b), (1.0 + abs(b)))))) + (((1.0 * Real.div(abs(a), (1.0 + abs(a)))) + (1.0 * Real.div(abs(b), (1.0 + abs(b))))) - ((1.0 * Real.div(abs(a), (1.0 + (abs(a) + abs(b))))) + (1.0 * Real.div(abs(b), (1.0 + (abs(a) + abs(b)))))))) == 0.0
{ }

// statement: Lean elaborated type (v3, stmt_cache) — requires/ensures below
lemma algebra_absapbon1pabsapbleqsumabsaon1pabsa(a: real, b: real)
  ensures (Real.div(abs((a + b)), (1.0 + abs((a + b)))) <= (Real.div(abs(a), (1.0 + abs(a))) + Real.div(abs(b), (1.0 + abs(b))))) // @tac 368-586 // @tac 592-1367 // @tac 1373-2778 // @tac 2784-5041 // @tac 5047-5303 // @tac 5309-5319
{
  // have h₁ : abs ( ( a + b ) ) <= abs ( a ) + abs ( b )  [type from Lean state]
  assert (abs((a + b)) <= (abs(a) + abs(b))) by { // @tac 420-586
    // calc abs ( ( a + b ) ) ...  (carrier real from the Lean state; 2/2 steps typed)
    calc {
      abs((a + b));
      <= {
        assert (abs((a + b)) <= (abs(a) + abs(b))) by {  // sub-goal before `exact` (Lean state) // @tac 535-552
          // [TACTIC: exact abs_add a b]
          AbsAdd(a, b);  // cite: abs_add
        }
      }
      (abs(a) + abs(b));
      == {
        assert ((abs(a) + abs(b)) == (abs(a) + abs(b))) by {  // sub-goal before `rfl` (Lean state) // @tac 583-586
          // [TACTIC: Rfl]
        }
      }
      (abs(a) + abs(b));
    }
  }
  // have h₂ : forall ( x y : ℝ ) :: 0 <= x -> x <= y -> x / ( 1 + x ) <= y / ( 1 + y  [type from Lean state]
  forall x: real, y: real | (0.0 <= x) && (x <= y) // @tac 683-699
    ensures (Real.div(x, (1.0 + x)) <= Real.div(y, (1.0 + y))) // @tac 704-729 // @tac 734-760 // @tac 765-799 // @tac 804-842 // @tac 847-885 // @tac 890-926 // @tac 931-967 // @tac 1033-1349 // @tac 1354-1367
  {
    // [TACTIC: intro x y hx hxy]
    // have h₃ : 0 <= x  [type from Lean state]
    assert (0.0 <= x);
      // [TACTIC: exact hx]
    // have h₄ : x <= y  [type from Lean state]
    assert (x <= y);
      // [TACTIC: exact hxy]
    // have h₅ : 0 <= y  [type from Lean state]
    assert (0.0 <= y) by { // @tac 791-799
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 791-799 exec 101)
      // UNCITED-APPLIED add_nonpos: certificate sum `-x + (x - y) ≤ (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
      cert_identity_1(a, b, x, y);  // cert: add_lt_of_le_of_neg
      // UNCITED-APPLIED internal ×8 [exec 101 791-799]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, add_lt_of_le_of_neg ×1, add_nonpos ×1, neg_nonpos_of_nonneg ×1, sub_nonpos_of_le ×1, lt_zero_of_zero_gt ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×30 [exec 102 791-799]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×2, Mathlib.Tactic.Ring.atom_pf ×2, Mathlib.Tactic.Ring.neg_add ×2, Mathlib.Tactic.Ring.neg_mul ×2 (+19 more heads, ×22) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 102)]
    }
    // have h₆ : 0 <= 1 + x  [type from Lean state]
    assert (0.0 <= (1.0 + x)) by { // @tac 834-842
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 834-842 exec 119)
      // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(-1 : ℝ) + -x < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
      cert_identity_2(a, b, x);  // cert: Left.add_neg
      // UNCITED-APPLIED internal ×9 [exec 119 834-842]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, Left.add_neg ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, zero_lt_one ×1, neg_nonpos_of_nonneg ×1, lt_zero_of_zero_gt ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×31 [exec 120 834-842]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×3, Mathlib.Tactic.Ring.add_pf_zero_add ×3, Mathlib.Tactic.Ring.neg_congr ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+18 more heads, ×21) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 120)]
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 120)]
    }
    // have h₇ : 0 <= 1 + y  [type from Lean state]
    assert (0.0 <= (1.0 + y)) by { // @tac 877-885
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 877-885 exec 137)
      // UNCITED-APPLIED add_lt_of_neg_of_le ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℝ) + -x + (x - y) < (0 : ℝ)`
      cert_identity_3(a, b, x, y);  // cert: Left.add_neg
      // UNCITED-APPLIED internal ×11 [exec 137 877-885]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, le_of_not_gt ×1, Left.add_neg ×1, neg_neg_of_pos ×1, zero_lt_one ×1, neg_nonpos_of_nonneg ×1, sub_nonpos_of_le ×1, lt_zero_of_zero_gt ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×42 [exec 138 877-885]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×4, Mathlib.Tactic.Ring.add_pf_add_lt ×4, Mathlib.Tactic.Ring.add_pf_zero_add ×4, Mathlib.Tactic.Ring.neg_add ×3 (+20 more heads, ×27) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 138)]
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 138)]
    }
    // have h₈ : 0 < 1 + x  [type from Lean state]
    assert (0.0 < (1.0 + x)) by { // @tac 918-926
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 918-926 exec 155)
      // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(-1 : ℝ) + -x < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
      cert_identity_4(a, b, x);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×9 [exec 155 918-926]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, lt_of_not_ge ×1, neg_neg_of_pos ×1, zero_lt_one ×1, neg_nonpos_of_nonneg ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×31 [exec 156 918-926]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×3, Mathlib.Tactic.Ring.add_pf_zero_add ×3, Mathlib.Tactic.Ring.neg_congr ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+18 more heads, ×21) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 156)]
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 156)]
    }
    // have h₉ : 0 < 1 + y  [type from Lean state]
    assert (0.0 < (1.0 + y)) by { // @tac 959-967
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 959-967 exec 173)
      // UNCITED-APPLIED add_lt_of_neg_of_le ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℝ) + -x + (x - y) < (0 : ℝ)`
      cert_identity_5(a, b, x, y);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×11 [exec 173 959-967]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×3, lt_of_not_ge ×1, neg_neg_of_pos ×1, zero_lt_one ×1, neg_nonpos_of_nonneg ×1, sub_nonpos_of_le ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×42 [exec 174 959-967]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×4, Mathlib.Tactic.Ring.add_pf_add_lt ×4, Mathlib.Tactic.Ring.add_pf_zero_add ×4, Mathlib.Tactic.Ring.neg_add ×3 (+20 more heads, ×27) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 174)]
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 174)]
    }
    // have h₁₀ : x / ( 1 + x ) <= y / ( 1 + y )  [type from Lean state]
    assert (Real.div(x, (1.0 + x)) <= Real.div(y, (1.0 + y))) by { // @tac 1088-1139
      assert (0.0 < (1.0 + x)) by {  // sub-goal of `by` (Lean state) // @tac 1111-1121
        // [TACTIC: Positivity]
        // UNCITED-APPLIED internal ×3 [exec 202 1111-1121]: applications made inside the tactic's own automation, not stated — lt_add_of_pos_of_le ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
        NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
      }
      assert (0.0 < (1.0 + y)) by {  // sub-goal of `by` (Lean state) // @tac 1127-1137
        // [TACTIC: Positivity]
        // UNCITED-APPLIED internal ×3 [exec 207 1127-1137]: applications made inside the tactic's own automation, not stated — lt_add_of_pos_of_le ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
        NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
      }
      // [TACTIC: rwSeq [ div_le_div_iff ( by positivity ) ( by positivity ) ]]
      assert (0.0 < ((1.0 + x))) && (0.0 < ((1.0 + y)));  // precondition of DivLeDivIff (Lean: div_le_div_iff)
      DivLeDivIff(x, (1.0 + x), y, (1.0 + y));  // cite: div_le_div_iff
      assert ((x * (1.0 + y)) <= (y * (1.0 + x))) by {  // sub-goal before `nlinarith` (Lean state) // @tac 1231-1349
        // [TACTIC: «Nlinarith[_]At___» [ mul_nonneg h₃ ( sub_nonneg.mpr h₄ ) , mul_nonneg h₅ h₃ , mul_nonneg h₅ ( sub_nonneg.mpr h₄ ) ]]
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1231-1349 exec 232)
        cert_identity_6(a, b, x, y);  // cert: add_lt_of_le_of_neg
        // UNCITED-APPLIED internal ×6 [exec 232 1231-1349]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, add_lt_of_le_of_neg ×1, sub_nonpos_of_le ×1, sub_neg_of_lt ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
        // UNCITED mul_nonneg: no Lean instance recorded (arguments unknown), not guessed
        // UNCITED sub_nonneg: no Lean instance recorded (arguments unknown), not guessed
        NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 233)]
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 233)]
        // UNCITED-APPLIED internal ×71 [exec 233 1231-1349]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_zero_add ×5, Mathlib.Tactic.Ring.add_pf_add_lt ×4, Mathlib.Tactic.Ring.mul_add ×4, Mathlib.Tactic.Ring.add_pf_add_zero ×4 (+29 more heads, ×54) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
      }
      // UNCITED-APPLIED congrArg(fun (_a : Prop) => _a): no library counterpart (not stated) [exec 195 1088-1139]
    }
    // [TACTIC: exact h₁₀]
    assert (Real.div(x, (1.0 + x)) <= Real.div(y, (1.0 + y)));
  }
  // have h₃ : abs ( ( a + b ) ) / ( 1 + abs ( ( a + b ) ) ) <= ( abs ( a ) + abs ( b  [type from Lean state]
  assert (Real.div(abs((a + b)), (1.0 + abs((a + b)))) <= Real.div((abs(a) + abs(b)), (1.0 + (abs(a) + abs(b))))) by { // @tac 1471-1522 // @tac 1527-1575 // @tac 1580-1629 // @tac 1634-1684 // @tac 1689-1743 // @tac 1748-1796 // @tac 1801-1856 // @tac 1938-2760 // @tac 2765-2778
    // have h₄ : 0 <= abs ( ( a + b ) )  [type from Lean state]
    assert (0.0 <= abs((a + b))) by {
      // [TACTIC: exact abs_nonneg ( ( a + b ) )]
      AbsNonneg((a + b));  // cite: abs_nonneg
      // `refine` step's recorded applications: the lemma applications Lean's proof term of this step is built from (no linarith run here) (Lean execution 1471-1522 exec 260)
      AbsNonneg((a + b)); assert (0.0 <= abs((a + b)));  // cert: abs_nonneg
    }
    // have h₅ : 0 <= abs ( a ) + abs ( b )  [type from Lean state]
    assert (0.0 <= (abs(a) + abs(b))); // @tac 1565-1575
      // [TACTIC: Positivity]
    // UNCITED-APPLIED internal ×3 [exec 279 1565-1575]: applications made inside the tactic's own automation, not stated — IsAbsoluteValue.abv_nonneg ×2, add_nonneg ×1
    // have h₆ : abs ( ( a + b ) ) <= abs ( a ) + abs ( b )  [type from Lean state]
    assert (abs((a + b)) <= (abs(a) + abs(b))) by {
      // [TACTIC: exact h₁]
      assert (abs((a + b)) <= (abs(a) + abs(b)));
    }
    // have h₇ : 0 <= 1 + abs ( ( a + b ) )  [type from Lean state]
    assert (0.0 <= (1.0 + abs((a + b)))) by { // @tac 1674-1684
      // [TACTIC: Positivity]
      // UNCITED-APPLIED internal ×4 [exec 308 1674-1684]: applications made inside the tactic's own automation, not stated — lt_add_of_pos_of_le ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1, IsAbsoluteValue.abv_nonneg ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], le_of_lt [Lean recorded ×1])
      assert ((0.0) < ((1.0 + abs((a + b)))));  // precondition of LeOfLt (Lean: le_of_lt)
      LeOfLt(0.0, (1.0 + abs((a + b))));  // cite: le_of_lt [applied by the tactic, not named in it]
      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
    }
    // have h₈ : 0 <= 1 + ( abs ( a ) + abs ( b ) )  [type from Lean state]
    assert (0.0 <= (1.0 + (abs(a) + abs(b)))) by { // @tac 1733-1743
      // [TACTIC: Positivity]
      // UNCITED-APPLIED internal ×6 [exec 325 1733-1743]: applications made inside the tactic's own automation, not stated — IsAbsoluteValue.abv_nonneg ×2, lt_add_of_pos_of_le ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1, add_nonneg ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], le_of_lt [Lean recorded ×1])
      assert ((0.0) < ((1.0 + (abs(a) + abs(b)))));  // precondition of LeOfLt (Lean: le_of_lt)
      LeOfLt(0.0, (1.0 + (abs(a) + abs(b))));  // cite: le_of_lt [applied by the tactic, not named in it]
      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
    }
    // have h₉ : 0 < 1 + abs ( ( a + b ) )  [type from Lean state]
    assert (0.0 < (1.0 + abs((a + b)))) by { // @tac 1786-1796
      // [TACTIC: Positivity]
      // UNCITED-APPLIED internal ×4 [exec 342 1786-1796]: applications made inside the tactic's own automation, not stated — lt_add_of_pos_of_le ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1, IsAbsoluteValue.abv_nonneg ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
    }
    // have h₁₀ : 0 < 1 + ( abs ( a ) + abs ( b ) )  [type from Lean state]
    assert (0.0 < (1.0 + (abs(a) + abs(b)))) by { // @tac 1846-1856
      // [TACTIC: Positivity]
      // UNCITED-APPLIED internal ×6 [exec 359 1846-1856]: applications made inside the tactic's own automation, not stated — IsAbsoluteValue.abv_nonneg ×2, lt_add_of_pos_of_le ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1, add_nonneg ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
    }
    // have h₁₁ : abs ( ( a + b ) ) / ( 1 + abs ( ( a + b ) ) ) <= ( abs ( a ) + abs ( b  [type from Lean state]
    assert (Real.div(abs((a + b)), (1.0 + abs((a + b)))) <= Real.div((abs(a) + abs(b)), (1.0 + (abs(a) + abs(b))))) by { // @tac 2041-2740 // @tac 2747-2760
      // have h₁₂ : abs ( ( a + b ) ) / ( 1 + abs ( ( a + b ) ) ) <= ( abs ( a ) + abs ( b  [type from Lean state]
      assert (Real.div(abs((a + b)), (1.0 + abs((a + b)))) <= Real.div((abs(a) + abs(b)), (1.0 + (abs(a) + abs(b))))) by { // @tac 2204-2253 // @tac 2262-2314 // @tac 2323-2374 // @tac 2383-2434 // @tac 2443-2498 // @tac 2551-2718 // @tac 2727-2740
        // have h₁₃ : 0 <= abs ( ( a + b ) )  [type from Lean state]
        assert (0.0 <= abs((a + b))); // @tac 2243-2253
          // [TACTIC: Positivity]
        // UNCITED-APPLIED internal ×1 [exec 408 2243-2253]: applications made inside the tactic's own automation, not stated — IsAbsoluteValue.abv_nonneg ×1
        // have h₁₄ : abs ( ( a + b ) ) <= abs ( a ) + abs ( b )  [type from Lean state]
        assert (abs((a + b)) <= (abs(a) + abs(b))) by {
          // [TACTIC: exact h₁]
          assert (abs((a + b)) <= (abs(a) + abs(b)));
        }
        // have h₁₅ : 0 <= abs ( a ) + abs ( b )  [type from Lean state]
        assert (0.0 <= (abs(a) + abs(b))); // @tac 2364-2374
          // [TACTIC: Positivity]
        // UNCITED-APPLIED internal ×3 [exec 437 2364-2374]: applications made inside the tactic's own automation, not stated — IsAbsoluteValue.abv_nonneg ×2, add_nonneg ×1
        // have h₁₆ : 0 < 1 + abs ( ( a + b ) )  [type from Lean state]
        assert (0.0 < (1.0 + abs((a + b)))) by { // @tac 2424-2434
          // [TACTIC: Positivity]
          // UNCITED-APPLIED internal ×4 [exec 454 2424-2434]: applications made inside the tactic's own automation, not stated — lt_add_of_pos_of_le ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1, IsAbsoluteValue.abv_nonneg ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
        }
        // have h₁₇ : 0 < 1 + ( abs ( a ) + abs ( b ) )  [type from Lean state]
        assert (0.0 < (1.0 + (abs(a) + abs(b)))) by { // @tac 2488-2498
          // [TACTIC: Positivity]
          // UNCITED-APPLIED internal ×6 [exec 471 2488-2498]: applications made inside the tactic's own automation, not stated — IsAbsoluteValue.abv_nonneg ×2, lt_add_of_pos_of_le ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1, add_nonneg ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
        }
        // have h₁₈ : abs ( ( a + b ) ) / ( 1 + abs ( ( a + b ) ) ) <= ( abs ( a ) + abs ( b  [type from Lean state]
        assert (Real.div(abs((a + b)), (1.0 + abs((a + b)))) <= Real.div((abs(a) + abs(b)), (1.0 + (abs(a) + abs(b))))) by { // @tac 2658-2718 // @tac 2658-2668
          // [TACTIC: «_<;>_» h₂ apply h₂ <;> try norm_num norm_num <;> linarith linarith]
          // [TACTIC: choice h₂ apply h₂]
          assert abs(a + b) <= abs(a) + abs(b);  /* [IN-FILE CHECK] requires 1 of vc_algebra_absapbon1pabsapbleqsumabsaon1pabsa_L312 */
          assert forall x_1_1: real, y_1_1: real :: 0.0 <= x_1_1 && x_1_1 <= y_1_1 ==> Real.div(x_1_1, 1.0 + x_1_1) <= Real.div(y_1_1, 1.0 + y_1_1);  /* [IN-FILE CHECK] requires 2 of vc_algebra_absapbon1pabsapbleqsumabsaon1pabsa_L312 */
          assert 0.0 <= abs(a + b);  /* [IN-FILE CHECK] requires 3 of vc_algebra_absapbon1pabsapbleqsumabsaon1pabsa_L312 */
          assert 0.0 <= abs(a) + abs(b);  /* [IN-FILE CHECK] requires 4 of vc_algebra_absapbon1pabsapbleqsumabsaon1pabsa_L312 */
          assert 0.0 <= 1.0 + abs(a + b);  /* [IN-FILE CHECK] requires 5 of vc_algebra_absapbon1pabsapbleqsumabsaon1pabsa_L312 */
          assert 0.0 <= 1.0 + (abs(a) + abs(b));  /* [IN-FILE CHECK] requires 6 of vc_algebra_absapbon1pabsapbleqsumabsaon1pabsa_L312 */
          assert 0.0 < 1.0 + abs(a + b);  /* [IN-FILE CHECK] requires 7 of vc_algebra_absapbon1pabsapbleqsumabsaon1pabsa_L312 */
          assert 0.0 < 1.0 + (abs(a) + abs(b));  /* [IN-FILE CHECK] requires 8 of vc_algebra_absapbon1pabsapbleqsumabsaon1pabsa_L312 */
          vc_algebra_absapbon1pabsapbleqsumabsaon1pabsa_L312(a, b);  /* [IN-FILE CHECK] the closed lemma for line 312 */
          assert ((0.0 <= abs((a + b))) ==> ((abs((a + b)) <= (abs(a) + abs(b))) ==> (Real.div(abs((a + b)), (1.0 + abs((a + b)))) <= Real.div((abs(a) + abs(b)), (1.0 + (abs(a) + abs(b)))))));  // instance of h₂ (Lean state: `apply` leaves its premises as goals)
          assert (0.0 <= abs((a + b)));  // sub-goal of `norm_num` (Lean state) // @tac 2687-2718 // @tac 2683-2718 // @tac 2687-2695
          // UNCITED-APPLIED internal ×3 [exec 511 2687-2695]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, Eq.trans ×1, eq_true ×1
          assert (abs((a + b)) <= (abs(a) + abs(b))) by {  // sub-goal of `linarith` (Lean state) // @tac 2687-2718 // @tac 2683-2718 // @tac 2687-2695 // @tac 2710-2718
            NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 539)]
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2710-2718 exec 538)
            cert_identity_7(a, b);  // cert: add_lt_of_le_of_neg
            // UNCITED-APPLIED internal ×6 [exec 538 2710-2718]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, add_lt_of_le_of_neg ×1, sub_nonpos_of_le ×1, sub_neg_of_lt ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
            // UNCITED-APPLIED internal ×42 [exec 539 2710-2718]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.atom_pf ×3, Mathlib.Tactic.Ring.add_pf_zero_add ×3, Mathlib.Tactic.Ring.neg_add ×3, Mathlib.Tactic.Ring.neg_mul ×3 (+20 more heads, ×30) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          }
          // UNCITED-APPLIED instance of h₂: `|a + b| / ((1 : ℝ) + |a + b|) ≤ (|a| + |b|) / ((1 : ℝ) + (|a| + |b|))` — Lean's proof of h₃/h₁₁/h₁₂/h₁₈ applies it (by a tactic that does not name it, or one whose instance could not be rendered in scope here); not stated
        }
        // [TACTIC: exact h₁₈]
        assert (Real.div(abs((a + b)), (1.0 + abs((a + b)))) <= Real.div((abs(a) + abs(b)), (1.0 + (abs(a) + abs(b)))));
      }
      // [TACTIC: exact h₁₂]
      assert (Real.div(abs((a + b)), (1.0 + abs((a + b)))) <= Real.div((abs(a) + abs(b)), (1.0 + (abs(a) + abs(b)))));
    }
    // [TACTIC: exact h₁₁]
    assert (Real.div(abs((a + b)), (1.0 + abs((a + b)))) <= Real.div((abs(a) + abs(b)), (1.0 + (abs(a) + abs(b)))));
  }
  // have h₄ : ( abs ( a ) + abs ( b ) ) / ( 1 + ( abs ( a ) + abs ( b ) ) ) <= abs (  [type from Lean state]
  assert (Real.div((abs(a) + abs(b)), (1.0 + (abs(a) + abs(b)))) <= (Real.div(abs(a), (1.0 + abs(a))) + Real.div(abs(b), (1.0 + abs(b))))) by { // @tac 2892-2931 // @tac 2936-2975 // @tac 2980-3028 // @tac 3033-3075 // @tac 3080-3122 // @tac 3127-3182 // @tac 3187-3423 // @tac 3428-3440
    // have h₅ : 0 <= abs ( a )  [type from Lean state]
    assert (0.0 <= abs(a)) by {
      // [TACTIC: exact abs_nonneg ( a )]
      AbsNonneg(a);  // cite: abs_nonneg
      // `refine` step's recorded applications: the lemma applications Lean's proof term of this step is built from (no linarith run here) (Lean execution 2892-2931 exec 568)
      AbsNonneg(a); assert (0.0 <= abs(a));  // cert: abs_nonneg
    }
    // have h₆ : 0 <= abs ( b )  [type from Lean state]
    assert (0.0 <= abs(b)) by {
      // [TACTIC: exact abs_nonneg ( b )]
      AbsNonneg(b);  // cite: abs_nonneg
      // `refine` step's recorded applications: the lemma applications Lean's proof term of this step is built from (no linarith run here) (Lean execution 2936-2975 exec 580)
      AbsNonneg(b); assert (0.0 <= abs(b));  // cert: abs_nonneg
    }
    // have h₇ : 0 <= abs ( a ) + abs ( b )  [type from Lean state]
    assert (0.0 <= (abs(a) + abs(b))); // @tac 3018-3028
      // [TACTIC: Positivity]
    // UNCITED-APPLIED internal ×3 [exec 599 3018-3028]: applications made inside the tactic's own automation, not stated — IsAbsoluteValue.abv_nonneg ×2, add_nonneg ×1
    // have h₈ : 0 < 1 + abs ( a )  [type from Lean state]
    assert (0.0 < (1.0 + abs(a))) by { // @tac 3065-3075
      // [TACTIC: Positivity]
      // UNCITED-APPLIED internal ×4 [exec 616 3065-3075]: applications made inside the tactic's own automation, not stated — lt_add_of_pos_of_le ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1, IsAbsoluteValue.abv_nonneg ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
    }
    // have h₉ : 0 < 1 + abs ( b )  [type from Lean state]
    assert (0.0 < (1.0 + abs(b))) by { // @tac 3112-3122
      // [TACTIC: Positivity]
      // UNCITED-APPLIED internal ×4 [exec 633 3112-3122]: applications made inside the tactic's own automation, not stated — lt_add_of_pos_of_le ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1, IsAbsoluteValue.abv_nonneg ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
    }
    // have h₁₀ : 0 < 1 + ( abs ( a ) + abs ( b ) )  [type from Lean state]
    assert (0.0 < (1.0 + (abs(a) + abs(b)))) by { // @tac 3172-3182
      // [TACTIC: Positivity]
      // UNCITED-APPLIED internal ×6 [exec 650 3172-3182]: applications made inside the tactic's own automation, not stated — IsAbsoluteValue.abv_nonneg ×2, lt_add_of_pos_of_le ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1, add_nonneg ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
    }
    // have h₁₁ : ( abs ( a ) + abs ( b ) ) / ( 1 + ( abs ( a ) + abs ( b ) ) ) == abs (  [type from Lean state]
    assert (Real.div((abs(a) + abs(b)), (1.0 + (abs(a) + abs(b)))) == (Real.div(abs(a), (1.0 + (abs(a) + abs(b)))) + Real.div(abs(b), (1.0 + (abs(a) + abs(b)))))) by { // @tac 3318-3423 // @tac 3318-3408 // @tac 3318-3365 // @tac 3318-3350
      // [TACTIC: «_<;>_» [ h₈ , h₉ , h₁₀ ] field_simp [ h₈ , h₉ , h₁₀ ] <;> ring <;> field_simp [ h₈ , h₉ , h₁₀ ] field_simp [ h₈ , h₉ , h₁₀ ] <;> ring]
      // [TACTIC: «Field_simp[_]At___» [ h₈ , h₉ , h₁₀ ]]
      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
      // `field_simp` closed the goal; the rest of the chain did not run
      // UNCITED-APPLIED internal ×21 [exec 682 3318-3350]: applications made inside the tactic's own automation, not stated — IsAbsoluteValue.abv_nonneg ×2, div_mul_eq_mul_div ×2, mul_div_cancel_right₀ ×2, add_div' ×1, ne_of_gt ×1, lt_add_of_pos_of_le ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1, add_nonneg ×1; machinery/glue: Eq.trans ×4, congrArg ×3, of_eq_true ×1, Mathlib.Meta.NormNum.isNat_ofNat ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
    }
    // [TACTIC: rwSeq [ h₁₁ ]]
    // UNCITED-APPLIED congrArg((|a| + |b|) / ((1 : ℝ) + (|a| + |b|)), |a| / ((1 : ℝ) + (|a| + |b|)) + |b| / ((1 : ℝ) + (|a| + |b|)), fun (_a : ℝ) => _a ≤ |a| / ((1 : ℝ) + |a|) + |b| / ((1 : ℝ) + |b|)): no library counterpart (not stated) [exec 705 3428-3440]
    assert ((Real.div(abs(a), (1.0 + (abs(a) + abs(b)))) + Real.div(abs(b), (1.0 + (abs(a) + abs(b))))) <= (Real.div(abs(a), (1.0 + abs(a))) + Real.div(abs(b), (1.0 + abs(b))))) by {  // sub-goal before `have` (Lean state) // @tac 3445-4160 // @tac 4165-4880 // @tac 4885-5028 // @tac 5033-5041
      // have h₁₂ : abs ( a ) / ( 1 + ( abs ( a ) + abs ( b ) ) ) <= abs ( a ) / ( 1 + abs  [type from Lean state]
      assert (Real.div(abs(a), (1.0 + (abs(a) + abs(b)))) <= Real.div(abs(a), (1.0 + abs(a)))) by { // @tac 3526-3568 // @tac 3575-3620 // @tac 3627-3682 // @tac 3689-3742 // @tac 3833-3912 // @tac 3976-4140 // @tac 4147-4160
        // have h₁₃ : 0 <= abs ( a )  [type from Lean state]
        assert (0.0 <= abs(a)) by {
          // [TACTIC: exact abs_nonneg ( a )]
          AbsNonneg(a);  // cite: abs_nonneg
          // `refine` step's recorded applications: the lemma applications Lean's proof term of this step is built from (no linarith run here) (Lean execution 3526-3568 exec 757)
          AbsNonneg(a); assert (0.0 <= abs(a));  // cert: abs_nonneg
        }
        // have h₁₄ : 0 < 1 + abs ( a )  [type from Lean state]
        assert (0.0 < (1.0 + abs(a))) by { // @tac 3610-3620
          // [TACTIC: Positivity]
          // UNCITED-APPLIED internal ×4 [exec 776 3610-3620]: applications made inside the tactic's own automation, not stated — lt_add_of_pos_of_le ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1, IsAbsoluteValue.abv_nonneg ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
        }
        // have h₁₅ : 0 < 1 + ( abs ( a ) + abs ( b ) )  [type from Lean state]
        assert (0.0 < (1.0 + (abs(a) + abs(b)))) by { // @tac 3672-3682
          // [TACTIC: Positivity]
          // UNCITED-APPLIED internal ×6 [exec 793 3672-3682]: applications made inside the tactic's own automation, not stated — IsAbsoluteValue.abv_nonneg ×2, lt_add_of_pos_of_le ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1, add_nonneg ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
        }
        // have h₁₆ : 0 < 1 + abs ( a ) + abs ( b )  [type from Lean state]
        assert (0.0 < ((1.0 + abs(a)) + abs(b))) by { // @tac 3732-3742
          // [TACTIC: Positivity]
          // UNCITED-APPLIED internal ×6 [exec 810 3732-3742]: applications made inside the tactic's own automation, not stated — lt_add_of_pos_of_le ×2, IsAbsoluteValue.abv_nonneg ×2, Mathlib.Meta.Positivity.pos_of_isNat ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
        }
        // have h₁₇ : 1 + abs ( a ) <= 1 + ( abs ( a ) + abs ( b ) )  [type from Lean state]
        assert ((1.0 + abs(a)) <= (1.0 + (abs(a) + abs(b)))) by { // @tac 3896-3912
          // [TACTIC: «Nlinarith[_]At___» [ h₆ ]]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3896-3912 exec 827)
          cert_identity_8(a, b);  // cert: add_lt_of_le_of_neg
          // UNCITED-APPLIED internal ×6 [exec 827 3896-3912]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, add_lt_of_le_of_neg ×1, neg_nonpos_of_nonneg ×1, sub_neg_of_lt ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
          // UNCITED-APPLIED internal ×43 [exec 828 3896-3912]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×4, Mathlib.Tactic.Ring.neg_add ×3, Mathlib.Tactic.Ring.add_pf_add_lt ×3, Mathlib.Tactic.Ring.add_pf_zero_add ×3 (+22 more heads, ×30) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 828)]
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 828)]
        }
        // have h₁₈ : abs ( a ) / ( 1 + ( abs ( a ) + abs ( b ) ) ) <= abs ( a ) / ( 1 + abs  [type from Lean state]
        assert (Real.div(abs(a), (1.0 + (abs(a) + abs(b)))) <= Real.div(abs(a), (1.0 + abs(a)))) by { // @tac 4059-4140 // @tac 4059-4118
          assert (0.0 <= abs(a)) by {  // sub-goal of `by` (Lean state) // @tac 4091-4101
            // [TACTIC: Positivity]
            // UNCITED-APPLIED internal ×1 [exec 855 4091-4101]: applications made inside the tactic's own automation, not stated — IsAbsoluteValue.abv_nonneg ×1
          }
          assert (0.0 < (1.0 + abs(a))) by {  // sub-goal of `by` (Lean state) // @tac 4107-4117
            // [TACTIC: Positivity]
            // UNCITED-APPLIED internal ×4 [exec 860 4107-4117]: applications made inside the tactic's own automation, not stated — lt_add_of_pos_of_le ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1, IsAbsoluteValue.abv_nonneg ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
          }
          // [TACTIC: «_<;>_» div_le_div_of_le_left ( by positivity ) ( by positivity ) apply div_le_div_of_le_left ( by positivity ) ( by positivity ) <;> nlinarith nlinarith]
          // [TACTIC: choice div_le_div_of_le_left ( by positivity ) ( by positivity ) apply div_le_div_of_le_left ( by positivity ) ( by positivity )]
          assert ((1.0 + abs(a)) <= (1.0 + (abs(a) + abs(b)))) by {  // sub-goal of `nlinarith` (Lean state) // @tac 4131-4140
            NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 870)]
            NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 870)]
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 4131-4140 exec 869)
            cert_identity_9(a, b);  // cert: add_lt_of_le_of_neg
            // UNCITED-APPLIED internal ×6 [exec 869 4131-4140]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, add_lt_of_le_of_neg ×1, neg_nonpos_of_nonneg ×1, sub_neg_of_lt ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
            // UNCITED-APPLIED internal ×43 [exec 870 4131-4140]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×4, Mathlib.Tactic.Ring.neg_add ×3, Mathlib.Tactic.Ring.add_pf_add_lt ×3, Mathlib.Tactic.Ring.add_pf_zero_add ×3 (+22 more heads, ×30) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
          }
          assert (0.0 <= (abs(a))) && (0.0 < ((1.0 + abs(a)))) && (((1.0 + abs(a))) <= ((1.0 + (abs(a) + abs(b)))));  // precondition of DivLeDivOfLeLeft (Lean: div_le_div_of_le_left)
          DivLeDivOfLeLeft((1.0 + (abs(a) + abs(b))), (1.0 + abs(a)), abs(a));  // cite: div_le_div_of_le_left
        }
        // [TACTIC: exact h₁₈]
        assert (Real.div(abs(a), (1.0 + (abs(a) + abs(b)))) <= Real.div(abs(a), (1.0 + abs(a))));
      }
      // have h₁₃ : abs ( b ) / ( 1 + ( abs ( a ) + abs ( b ) ) ) <= abs ( b ) / ( 1 + abs  [type from Lean state]
      assert (Real.div(abs(b), (1.0 + (abs(a) + abs(b)))) <= Real.div(abs(b), (1.0 + abs(b)))) by { // @tac 4246-4288 // @tac 4295-4340 // @tac 4347-4402 // @tac 4409-4462 // @tac 4553-4632 // @tac 4696-4860 // @tac 4867-4880
        // have h₁₄ : 0 <= abs ( b )  [type from Lean state]
        assert (0.0 <= abs(b)) by {
          // [TACTIC: exact abs_nonneg ( b )]
          AbsNonneg(b);  // cite: abs_nonneg
          // `refine` step's recorded applications: the lemma applications Lean's proof term of this step is built from (no linarith run here) (Lean execution 4246-4288 exec 897)
          AbsNonneg(b); assert (0.0 <= abs(b));  // cert: abs_nonneg
        }
        // have h₁₅ : 0 < 1 + abs ( b )  [type from Lean state]
        assert (0.0 < (1.0 + abs(b))) by { // @tac 4330-4340
          // [TACTIC: Positivity]
          // UNCITED-APPLIED internal ×4 [exec 916 4330-4340]: applications made inside the tactic's own automation, not stated — lt_add_of_pos_of_le ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1, IsAbsoluteValue.abv_nonneg ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
        }
        // have h₁₆ : 0 < 1 + ( abs ( a ) + abs ( b ) )  [type from Lean state]
        assert (0.0 < (1.0 + (abs(a) + abs(b)))) by { // @tac 4392-4402
          // [TACTIC: Positivity]
          // UNCITED-APPLIED internal ×6 [exec 933 4392-4402]: applications made inside the tactic's own automation, not stated — IsAbsoluteValue.abv_nonneg ×2, lt_add_of_pos_of_le ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1, add_nonneg ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
        }
        // have h₁₇ : 0 < 1 + abs ( a ) + abs ( b )  [type from Lean state]
        assert (0.0 < ((1.0 + abs(a)) + abs(b))) by { // @tac 4452-4462
          // [TACTIC: Positivity]
          // UNCITED-APPLIED internal ×6 [exec 950 4452-4462]: applications made inside the tactic's own automation, not stated — lt_add_of_pos_of_le ×2, IsAbsoluteValue.abv_nonneg ×2, Mathlib.Meta.Positivity.pos_of_isNat ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
        }
        // have h₁₈ : 1 + abs ( b ) <= 1 + ( abs ( a ) + abs ( b ) )  [type from Lean state]
        assert ((1.0 + abs(b)) <= (1.0 + (abs(a) + abs(b)))) by { // @tac 4616-4632
          // [TACTIC: «Nlinarith[_]At___» [ h₅ ]]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 4616-4632 exec 967)
          cert_identity_10(a, b);  // cert: add_lt_of_le_of_neg
          // UNCITED-APPLIED internal ×6 [exec 967 4616-4632]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, add_lt_of_le_of_neg ×1, neg_nonpos_of_nonneg ×1, sub_neg_of_lt ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
          // UNCITED-APPLIED internal ×42 [exec 968 4616-4632]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×4, Mathlib.Tactic.Ring.add_pf_add_lt ×4, Mathlib.Tactic.Ring.neg_add ×3, Mathlib.Tactic.Ring.add_pf_zero_add ×3 (+20 more heads, ×28) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 968)]
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 968)]
        }
        // have h₁₉ : abs ( b ) / ( 1 + ( abs ( a ) + abs ( b ) ) ) <= abs ( b ) / ( 1 + abs  [type from Lean state]
        assert (Real.div(abs(b), (1.0 + (abs(a) + abs(b)))) <= Real.div(abs(b), (1.0 + abs(b)))) by { // @tac 4779-4860 // @tac 4779-4838
          assert (0.0 <= abs(b)) by {  // sub-goal of `by` (Lean state) // @tac 4811-4821
            // [TACTIC: Positivity]
            // UNCITED-APPLIED internal ×1 [exec 995 4811-4821]: applications made inside the tactic's own automation, not stated — IsAbsoluteValue.abv_nonneg ×1
          }
          assert (0.0 < (1.0 + abs(b))) by {  // sub-goal of `by` (Lean state) // @tac 4827-4837
            // [TACTIC: Positivity]
            // UNCITED-APPLIED internal ×4 [exec 1000 4827-4837]: applications made inside the tactic's own automation, not stated — lt_add_of_pos_of_le ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1, IsAbsoluteValue.abv_nonneg ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
          }
          // [TACTIC: «_<;>_» div_le_div_of_le_left ( by positivity ) ( by positivity ) apply div_le_div_of_le_left ( by positivity ) ( by positivity ) <;> nlinarith nlinarith]
          // [TACTIC: choice div_le_div_of_le_left ( by positivity ) ( by positivity ) apply div_le_div_of_le_left ( by positivity ) ( by positivity )]
          assert ((1.0 + abs(b)) <= (1.0 + (abs(a) + abs(b)))) by {  // sub-goal of `nlinarith` (Lean state) // @tac 4851-4860
            NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1010)]
            NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1010)]
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 4851-4860 exec 1009)
            cert_identity_11(a, b);  // cert: add_lt_of_le_of_neg
            // UNCITED-APPLIED internal ×6 [exec 1009 4851-4860]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, add_lt_of_le_of_neg ×1, neg_nonpos_of_nonneg ×1, sub_neg_of_lt ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
            // UNCITED-APPLIED internal ×42 [exec 1010 4851-4860]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×4, Mathlib.Tactic.Ring.add_pf_add_lt ×4, Mathlib.Tactic.Ring.neg_add ×3, Mathlib.Tactic.Ring.add_pf_zero_add ×3 (+20 more heads, ×28) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
          }
          assert (0.0 <= (abs(b))) && (0.0 < ((1.0 + abs(b)))) && (((1.0 + abs(b))) <= ((1.0 + (abs(a) + abs(b)))));  // precondition of DivLeDivOfLeLeft (Lean: div_le_div_of_le_left)
          DivLeDivOfLeLeft((1.0 + (abs(a) + abs(b))), (1.0 + abs(b)), abs(b));  // cite: div_le_div_of_le_left
        }
        // [TACTIC: exact h₁₉]
        assert (Real.div(abs(b), (1.0 + (abs(a) + abs(b)))) <= Real.div(abs(b), (1.0 + abs(b))));
      }
      // have h₂₀ : abs ( a ) / ( 1 + ( abs ( a ) + abs ( b ) ) ) + abs ( b ) / ( 1 + ( ab  [type from Lean state]
      assert ((Real.div(abs(a), (1.0 + (abs(a) + abs(b)))) + Real.div(abs(b), (1.0 + (abs(a) + abs(b))))) <= (Real.div(abs(a), (1.0 + abs(a))) + Real.div(abs(b), (1.0 + abs(b))))) by { // @tac 5020-5028
        // [TACTIC: «Linarith[_]At___»]
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 5020-5028 exec 1028)
        // UNCITED-APPLIED add_nonpos: certificate sum `(1 : ℝ) * (|a| / ((1 : ℝ) + (|a| + |b|))) - (1 : ℝ) * (|a| / ((1 : ℝ) + |a|)) + ((1 : ℝ) * (|b| / ((1 : ℝ) + (|a| + |b|…` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
        cert_identity_12(a, b);  // cert: add_lt_of_le_of_neg
        // UNCITED-APPLIED internal ×18 [exec 1028 5020-5028]: applications made inside the tactic's own automation, not stated — CancelDenoms.sub_subst ×3, sub_nonpos_of_le ×2, CancelDenoms.add_subst ×2, le_of_not_gt ×1, add_lt_of_le_of_neg ×1, add_nonpos ×1, sub_neg_of_lt ×1; machinery/glue: congrArg ×3, Linarith.without_one_mul ×3, Linarith.lt_irrefl ×1
        // UNCITED-APPLIED internal ×120 [exec 1029 5020-5028]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_zero_add ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.add_pf_add_lt ×7 (+31 more heads, ×89) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
        NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1029)]
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1029)]
      }
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 5033-5041 exec 1030)
      // UNCITED-APPLIED add_nonpos: certificate sum `(1 : ℝ) * (|a| / ((1 : ℝ) + (|a| + |b|))) - (1 : ℝ) * (|a| / ((1 : ℝ) + |a|)) + ((1 : ℝ) * (|b| / ((1 : ℝ) + (|a| + |b|…` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
      cert_identity_13(a, b);  // cert: add_lt_of_le_of_neg
      // UNCITED-APPLIED internal ×18 [exec 1030 5033-5041]: applications made inside the tactic's own automation, not stated — CancelDenoms.sub_subst ×3, sub_nonpos_of_le ×2, CancelDenoms.add_subst ×2, le_of_not_gt ×1, add_lt_of_le_of_neg ×1, add_nonpos ×1, sub_neg_of_lt ×1; machinery/glue: congrArg ×3, Linarith.without_one_mul ×3, Linarith.lt_irrefl ×1
      // UNCITED-APPLIED internal ×120 [exec 1031 5033-5041]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_zero_add ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.add_pf_add_lt ×7 (+31 more heads, ×89) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1031)]
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1031)]
    }
  }
  // have h₅ : abs ( ( a + b ) ) / ( 1 + abs ( ( a + b ) ) ) <= abs ( a ) / ( 1 + abs  [type from Lean state]
  assert (Real.div(abs((a + b)), (1.0 + abs((a + b)))) <= (Real.div(abs(a), (1.0 + abs(a))) + Real.div(abs(b), (1.0 + abs(b))))) by { // @tac 5147-5303
    // calc abs ( ( a + b ) ) / ( 1 + abs ( ( a + b ) ) ) ...  (carrier real from the Lean state; 0/2 steps typed)
    calc {
      Real.div(abs((a + b)), (1.0 + abs((a + b))));
      <= {
      }
      Real.div((abs(a) + abs(b)), (1.0 + (abs(a) + abs(b))));
      <= {
      }
      (Real.div(abs(a), (1.0 + abs(a))) + Real.div(abs(b), (1.0 + abs(b))));
    }
  }
  // [TACTIC: exact h₅]
  assert (Real.div(abs((a + b)), (1.0 + abs((a + b)))) <= (Real.div(abs(a), (1.0 + abs(a))) + Real.div(abs(b), (1.0 + abs(b)))));
}



// ===== closed lemma for line 312 (from closed/algebra_absapbon1pabsapbleqsumabsaon1pabsa-312.dfy) =====

lemma {:induction false} vc_algebra_absapbon1pabsapbleqsumabsaon1pabsa_L312(a: real, b: real)
  requires abs(a + b) <= abs(a) + abs(b)
  requires forall x_1_1: real, y_1_1: real :: 0.0 <= x_1_1 && x_1_1 <= y_1_1 ==> Real.div(x_1_1, 1.0 + x_1_1) <= Real.div(y_1_1, 1.0 + y_1_1)
  requires 0.0 <= abs(a + b)
  requires 0.0 <= abs(a) + abs(b)
  requires 0.0 <= 1.0 + abs(a + b)
  requires 0.0 <= 1.0 + (abs(a) + abs(b))
  requires 0.0 < 1.0 + abs(a + b)
  requires 0.0 < 1.0 + (abs(a) + abs(b))
  ensures   Real.div(abs(a + b), 1.0 + abs(a + b)) <= Real.div(abs(a) + abs(b), 1.0 + (abs(a) + abs(b)))
{
  forall x: real, y: real {:trigger Real.div(x, 1.0), Real.div(y, 1.0)} | 0.0 <= x && x <= y  // [ADDED]
    ensures Real.div(x, 1.0 + x) <= Real.div(y, 1.0 + y)  // [ADDED]
  {
    assert 0.0 < 1.0 + x;  // [ADDED]
    assert 0.0 < 1.0 + y;  // [ADDED]
    DivLeDivIff(x, 1.0 + x, y, 1.0 + y);  // [ADDED]
    assert x * (1.0 + y) <= y * (1.0 + x) by { cert_identity_6(a, b, x, y); }  // [ADDED]
  }
  assert Real.div(abs(a + b), 1.0) == abs(a + b);  // [ADDED]
  assert Real.div(abs(a) + abs(b), 1.0) == abs(a) + abs(b);  // [ADDED]
  assert 0.0 <= abs(a + b) && abs(a + b) <= abs(a) + abs(b);  // [ADDED]
  assert Real.div(abs(a + b), 1.0 + abs(a + b)) <= Real.div(abs(a) + abs(b), 1.0 + (abs(a) + abs(b)));  // [ADDED]
}
