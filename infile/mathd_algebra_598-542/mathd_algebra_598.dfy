// ════════════════════════════════════════════════════════════
// MECHANICAL TRANSLATION (emitter v2) of ast_cache_v2/mathd_algebra_598.json
// Each Lean `have` → `assert ... by {}` at the same depth;
// quantified haves → forall statements. Typed pipeline only.
// ════════════════════════════════════════════════════════════

include "../../library/library_new.dfy"

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₅₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_1(a: real, b: real, c: real, d: real)
  ensures (-(Real.log(4.0)) + Real.log(4.0)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₅₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_2(a: real, b: real, c: real, d: real)
  ensures (-(((a * Real.log(4.0)) - Real.log(5.0))) + ((a * Real.log(4.0)) - Real.log(5.0))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₅₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_3(a: real, b: real, c: real, d: real)
  ensures (((a * Real.log(4.0)) - Real.log(5.0)) + (Real.log(5.0) - (a * Real.log(4.0)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₆/h₆₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_4(a: real, b: real, c: real, d: real)
  ensures (-(Real.log(5.0)) + Real.log(5.0)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₆/h₆₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_5(a: real, b: real, c: real, d: real)
  ensures (-(((b * Real.log(5.0)) - Real.log(6.0))) + ((b * Real.log(5.0)) - Real.log(6.0))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₆/h₆₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_6(a: real, b: real, c: real, d: real)
  ensures (((b * Real.log(5.0)) - Real.log(6.0)) + (Real.log(6.0) - (b * Real.log(5.0)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₇/h₇₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_7(a: real, b: real, c: real, d: real)
  ensures (-(Real.log(6.0)) + Real.log(6.0)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₇/h₇₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_8(a: real, b: real, c: real, d: real)
  ensures (-(((c * Real.log(6.0)) - Real.log(7.0))) + ((c * Real.log(6.0)) - Real.log(7.0))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₇/h₇₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_9(a: real, b: real, c: real, d: real)
  ensures (((c * Real.log(6.0)) - Real.log(7.0)) + (Real.log(7.0) - (c * Real.log(6.0)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₈/h₈₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_10(a: real, b: real, c: real, d: real)
  ensures (-(Real.log(7.0)) + Real.log(7.0)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₈/h₈₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_11(a: real, b: real, c: real, d: real)
  ensures (-(((d * Real.log(7.0)) - Real.log(8.0))) + ((d * Real.log(7.0)) - Real.log(8.0))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₈/h₈₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_12(a: real, b: real, c: real, d: real)
  ensures (((d * Real.log(7.0)) - Real.log(8.0)) + (Real.log(8.0) - (d * Real.log(7.0)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₉`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_13(a: real, b: real, c: real, d: real)
  requires (0.0 < ((Real.log(4.0) * Real.log(5.0)) * Real.log(6.0)))
  requires (0.0 < Real.log(7.0))
  ensures (0.0 < (((Real.log(4.0) * Real.log(5.0)) * Real.log(6.0)) * Real.log(7.0)))
{
  MulPos(((Real.log(4.0) * Real.log(5.0)) * Real.log(6.0)), Real.log(7.0));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₉`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_14(a: real, b: real, c: real, d: real)
  requires (0.0 < (Real.log(4.0) * Real.log(5.0)))
  requires (0.0 < Real.log(6.0))
  ensures (0.0 < ((Real.log(4.0) * Real.log(5.0)) * Real.log(6.0)))
{
  MulPos((Real.log(4.0) * Real.log(5.0)), Real.log(6.0));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₉`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_15(a: real, b: real, c: real, d: real)
  requires (0.0 < Real.log(4.0))
  requires (0.0 < Real.log(5.0))
  ensures (0.0 < (Real.log(4.0) * Real.log(5.0)))
{
  MulPos(Real.log(4.0), Real.log(5.0));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₁₂/h₁₂₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_16(a: real, b: real, c: real, d: real)
  ensures (-(Real.log(2.0)) + Real.log(2.0)) == 0.0
{ }

// statement: Lean elaborated type (v3, stmt_cache) — requires/ensures below
lemma mathd_algebra_598(a: real, b: real, c: real, d: real)
  requires (Real.rpow(4.0, a) == 5.0)
  requires (Real.rpow(5.0, b) == 6.0)
  requires (Real.rpow(6.0, c) == 7.0)
  requires (Real.rpow(7.0, d) == 8.0)
  ensures ((((a * b) * c) * d) == (3.0 / 2.0)) // @tac 416-914 // @tac 920-1418 // @tac 1424-1922 // @tac 1928-2426 // @tac 2432-3223 // @tac 3229-3504 // @tac 3510-3785 // @tac 3791-4223 // @tac 4229-4256 // @tac 4229-4241
{
  // have h₅ : a == Real.log ( 5 ) / Real.log ( 4 )  [type from Lean state]
  assert (a == Real.div(Real.log(5.0), Real.log(4.0))) by { // @tac 466-534 // @tac 539-673 // @tac 678-796 // @tac 801-896 // @tac 901-914
    // have h₅₁ : Real.log ( ( 4 ^ a ) ) == Real.log ( 5 )  [type from Lean state]
    assert (Real.log(Real.rpow(4.0, a)) == Real.log(5.0)); // @tac 525-534
      // [TACTIC: rwSeq [ h₁ ]]
    // UNCITED-APPLIED congrArg((4 : ℝ) ^ a, (5 : ℝ), fun (_a : ℝ) => Real.log _a = Real.log (5 : ℝ)): no library counterpart (not stated) [exec 40 525-534]
    // have h₅₂ : a * Real.log ( 4 ) == Real.log ( 5 )  [type from Lean state]
    assert ((a * Real.log(4.0)) == Real.log(5.0)) by { // @tac 594-653 // @tac 660-673
      assert (4.0 > 0.0) by {  // sub-goal of `by` (Lean state) // @tac 616-624
        // [TACTIC: «Norm_num[_]At___»]
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
        // UNCITED-APPLIED internal ×5 [exec 88 616-624]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      }
      // [TACTIC: rwSeq [ Real.log_rpow ( by norm_num norm_num : ( 4 : ℝ ) > 0 ) ] at h₅₁]
      assert (0.0 < (4.0));  // precondition of RealLogRpow (Lean: Real.log_rpow)
      RealLogRpow(4.0, a);  // cite: Real.log_rpow
      assert ((a * Real.log(4.0)) == Real.log(5.0));  // hypothesis h₅₁ after `rw` (Lean state) // @tac-hyp 594-653
      // [TACTIC: exact h₅₁]
      assert ((a * Real.log(4.0)) == Real.log(5.0));  // hypothesis h₅₁ at `exact` (Lean state)
      // UNCITED-APPLIED congrArg(Real.log ((4 : ℝ) ^ a), a * Real.log (4 : ℝ), fun (_a : ℝ) => _a = Real.log (5 : ℝ)): no library counterpart (not stated) [exec 81 594-653]
    }
    // have h₅₃ : Real.log ( 4 ) != 0  [type from Lean state]
    assert (Real.log(4.0) != 0.0) by { // @tac 722-781 // @tac 788-796
      // have h₅₄ : Real.log ( 4 ) > 0  [type from Lean state]
      assert (Real.log(4.0) > 0.0) by {
        assert (1.0 < 4.0) by {  // sub-goal of `by` (Lean state) // @tac 772-780
          // [TACTIC: «Norm_num[_]At___»]
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
          // UNCITED-APPLIED internal ×5 [exec 144 772-780]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
        }
        // [TACTIC: exact Real.log_pos ( ( by norm_num norm_num ) )]
        assert (1.0 < (4.0));  // precondition of RealLogPos (Lean: Real.log_pos)
        RealLogPos(4.0);  // cite: Real.log_pos
      }
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 788-796 exec 147)
      cert_identity_1(a, b, c, d);  // cert: Linarith.lt_of_lt_of_eq
      // UNCITED-APPLIED internal ×5 [exec 147 788-796]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×1; machinery/glue: Not.intro ×1, Linarith.lt_irrefl ×1, congrArg ×1, Linarith.lt_of_lt_of_eq ×1
      // UNCITED-APPLIED internal ×20 [exec 148 788-796]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 148)]
    }
    // have h₅₄ : a == Real.log ( 5 ) / Real.log ( 4 )  [type from Lean state]
    assert (a == Real.div(Real.log(5.0), Real.log(4.0))) by { // @tac 856-881
      // [TACTIC: «Field_simp[_]At___» at h₅₂ ⊢]
      assert ((a * Real.log(4.0)) == Real.log(5.0)) by {  // sub-goal before `linarith` (Lean state) // @tac 888-896
        // [TACTIC: «Linarith[_]At___»]
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 888-896 exec 166)
        cert_identity_2(a, b, c, d);  // cert: Linarith.lt_of_eq_of_lt
        cert_identity_3(a, b, c, d);  // cert: Linarith.lt_of_eq_of_lt
        // UNCITED-APPLIED internal ×11 [exec 166 888-896]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
        // UNCITED-APPLIED internal ×49 [exec 167 888-896]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_mul ×4, Mathlib.Tactic.Ring.atom_pf ×3, Mathlib.Tactic.Ring.neg_add ×3, Mathlib.Meta.NormNum.IsInt.to_isNat ×3 (+29 more heads, ×36) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×46 [exec 168 888-896]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.atom_pf ×3, Mathlib.Tactic.Ring.neg_mul ×3, Mathlib.Tactic.Ring.add_overlap_pf_zero ×3, Mathlib.Tactic.Ring.sub_congr ×2 (+28 more heads, ×35) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 167, 168)]
      }
    }
    // [TACTIC: exact h₅₄]
    assert (a == Real.div(Real.log(5.0), Real.log(4.0)));
  }
  // have h₆ : b == Real.log ( 6 ) / Real.log ( 5 )  [type from Lean state]
  assert (b == Real.div(Real.log(6.0), Real.log(5.0))) by { // @tac 970-1038 // @tac 1043-1177 // @tac 1182-1300 // @tac 1305-1400 // @tac 1405-1418
    // have h₆₁ : Real.log ( ( 5 ^ b ) ) == Real.log ( 6 )  [type from Lean state]
    assert (Real.log(Real.rpow(5.0, b)) == Real.log(6.0)); // @tac 1029-1038
      // [TACTIC: rwSeq [ h₂ ]]
    // UNCITED-APPLIED congrArg((5 : ℝ) ^ b, (6 : ℝ), fun (_a : ℝ) => Real.log _a = Real.log (6 : ℝ)): no library counterpart (not stated) [exec 206 1029-1038]
    // have h₆₂ : b * Real.log ( 5 ) == Real.log ( 6 )  [type from Lean state]
    assert ((b * Real.log(5.0)) == Real.log(6.0)) by { // @tac 1098-1157 // @tac 1164-1177
      assert (5.0 > 0.0) by {  // sub-goal of `by` (Lean state) // @tac 1120-1128
        // [TACTIC: «Norm_num[_]At___»]
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
        // UNCITED-APPLIED internal ×5 [exec 254 1120-1128]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      }
      // [TACTIC: rwSeq [ Real.log_rpow ( by norm_num norm_num : ( 5 : ℝ ) > 0 ) ] at h₆₁]
      assert (0.0 < (5.0));  // precondition of RealLogRpow (Lean: Real.log_rpow)
      RealLogRpow(5.0, b);  // cite: Real.log_rpow
      assert ((b * Real.log(5.0)) == Real.log(6.0));  // hypothesis h₆₁ after `rw` (Lean state) // @tac-hyp 1098-1157
      // [TACTIC: exact h₆₁]
      assert ((b * Real.log(5.0)) == Real.log(6.0));  // hypothesis h₆₁ at `exact` (Lean state)
      // UNCITED-APPLIED congrArg(Real.log ((5 : ℝ) ^ b), b * Real.log (5 : ℝ), fun (_a : ℝ) => _a = Real.log (6 : ℝ)): no library counterpart (not stated) [exec 247 1098-1157]
    }
    // have h₆₃ : Real.log ( 5 ) != 0  [type from Lean state]
    assert (Real.log(5.0) != 0.0) by { // @tac 1226-1285 // @tac 1292-1300
      // have h₆₄ : Real.log ( 5 ) > 0  [type from Lean state]
      assert (Real.log(5.0) > 0.0) by {
        assert (1.0 < 5.0) by {  // sub-goal of `by` (Lean state) // @tac 1276-1284
          // [TACTIC: «Norm_num[_]At___»]
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
          // UNCITED-APPLIED internal ×5 [exec 310 1276-1284]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
        }
        // [TACTIC: exact Real.log_pos ( ( by norm_num norm_num ) )]
        assert (1.0 < (5.0));  // precondition of RealLogPos (Lean: Real.log_pos)
        RealLogPos(5.0);  // cite: Real.log_pos
      }
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1292-1300 exec 313)
      cert_identity_4(a, b, c, d);  // cert: Linarith.lt_of_lt_of_eq
      // UNCITED-APPLIED internal ×5 [exec 313 1292-1300]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×1; machinery/glue: Not.intro ×1, Linarith.lt_irrefl ×1, congrArg ×1, Linarith.lt_of_lt_of_eq ×1
      // UNCITED-APPLIED internal ×20 [exec 314 1292-1300]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 314)]
    }
    // have h₆₄ : b == Real.log ( 6 ) / Real.log ( 5 )  [type from Lean state]
    assert (b == Real.div(Real.log(6.0), Real.log(5.0))) by { // @tac 1360-1385
      // [TACTIC: «Field_simp[_]At___» at h₆₂ ⊢]
      assert ((b * Real.log(5.0)) == Real.log(6.0)) by {  // sub-goal before `linarith` (Lean state) // @tac 1392-1400
        // [TACTIC: «Linarith[_]At___»]
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1392-1400 exec 332)
        cert_identity_5(a, b, c, d);  // cert: Linarith.lt_of_eq_of_lt
        cert_identity_6(a, b, c, d);  // cert: Linarith.lt_of_eq_of_lt
        // UNCITED-APPLIED internal ×11 [exec 332 1392-1400]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
        // UNCITED-APPLIED internal ×49 [exec 333 1392-1400]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_mul ×4, Mathlib.Tactic.Ring.atom_pf ×3, Mathlib.Tactic.Ring.neg_add ×3, Mathlib.Meta.NormNum.IsInt.to_isNat ×3 (+29 more heads, ×36) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×46 [exec 334 1392-1400]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.atom_pf ×3, Mathlib.Tactic.Ring.neg_mul ×3, Mathlib.Tactic.Ring.add_overlap_pf_zero ×3, Mathlib.Tactic.Ring.sub_congr ×2 (+28 more heads, ×35) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 333, 334)]
      }
    }
    // [TACTIC: exact h₆₄]
    assert (b == Real.div(Real.log(6.0), Real.log(5.0)));
  }
  // have h₇ : c == Real.log ( 7 ) / Real.log ( 6 )  [type from Lean state]
  assert (c == Real.div(Real.log(7.0), Real.log(6.0))) by { // @tac 1474-1542 // @tac 1547-1681 // @tac 1686-1804 // @tac 1809-1904 // @tac 1909-1922
    // have h₇₁ : Real.log ( ( 6 ^ c ) ) == Real.log ( 7 )  [type from Lean state]
    assert (Real.log(Real.rpow(6.0, c)) == Real.log(7.0)); // @tac 1533-1542
      // [TACTIC: rwSeq [ h₃ ]]
    // UNCITED-APPLIED congrArg((6 : ℝ) ^ c, (7 : ℝ), fun (_a : ℝ) => Real.log _a = Real.log (7 : ℝ)): no library counterpart (not stated) [exec 372 1533-1542]
    // have h₇₂ : c * Real.log ( 6 ) == Real.log ( 7 )  [type from Lean state]
    assert ((c * Real.log(6.0)) == Real.log(7.0)) by { // @tac 1602-1661 // @tac 1668-1681
      assert (6.0 > 0.0) by {  // sub-goal of `by` (Lean state) // @tac 1624-1632
        // [TACTIC: «Norm_num[_]At___»]
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
        // UNCITED-APPLIED internal ×5 [exec 420 1624-1632]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      }
      // [TACTIC: rwSeq [ Real.log_rpow ( by norm_num norm_num : ( 6 : ℝ ) > 0 ) ] at h₇₁]
      assert (0.0 < (6.0));  // precondition of RealLogRpow (Lean: Real.log_rpow)
      RealLogRpow(6.0, c);  // cite: Real.log_rpow
      assert ((c * Real.log(6.0)) == Real.log(7.0));  // hypothesis h₇₁ after `rw` (Lean state) // @tac-hyp 1602-1661
      // [TACTIC: exact h₇₁]
      assert ((c * Real.log(6.0)) == Real.log(7.0));  // hypothesis h₇₁ at `exact` (Lean state)
      // UNCITED-APPLIED congrArg(Real.log ((6 : ℝ) ^ c), c * Real.log (6 : ℝ), fun (_a : ℝ) => _a = Real.log (7 : ℝ)): no library counterpart (not stated) [exec 413 1602-1661]
    }
    // have h₇₃ : Real.log ( 6 ) != 0  [type from Lean state]
    assert (Real.log(6.0) != 0.0) by { // @tac 1730-1789 // @tac 1796-1804
      // have h₇₄ : Real.log ( 6 ) > 0  [type from Lean state]
      assert (Real.log(6.0) > 0.0) by {
        assert (1.0 < 6.0) by {  // sub-goal of `by` (Lean state) // @tac 1780-1788
          // [TACTIC: «Norm_num[_]At___»]
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
          // UNCITED-APPLIED internal ×5 [exec 476 1780-1788]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
        }
        // [TACTIC: exact Real.log_pos ( ( by norm_num norm_num ) )]
        assert (1.0 < (6.0));  // precondition of RealLogPos (Lean: Real.log_pos)
        RealLogPos(6.0);  // cite: Real.log_pos
      }
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1796-1804 exec 479)
      cert_identity_7(a, b, c, d);  // cert: Linarith.lt_of_lt_of_eq
      // UNCITED-APPLIED internal ×5 [exec 479 1796-1804]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×1; machinery/glue: Not.intro ×1, Linarith.lt_irrefl ×1, congrArg ×1, Linarith.lt_of_lt_of_eq ×1
      // UNCITED-APPLIED internal ×20 [exec 480 1796-1804]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 480)]
    }
    // have h₇₄ : c == Real.log ( 7 ) / Real.log ( 6 )  [type from Lean state]
    assert (c == Real.div(Real.log(7.0), Real.log(6.0))) by { // @tac 1864-1889
      // [TACTIC: «Field_simp[_]At___» at h₇₂ ⊢]
      assert ((c * Real.log(6.0)) == Real.log(7.0)) by {  // sub-goal before `linarith` (Lean state) // @tac 1896-1904
        // [TACTIC: «Linarith[_]At___»]
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1896-1904 exec 498)
        cert_identity_8(a, b, c, d);  // cert: Linarith.lt_of_eq_of_lt
        cert_identity_9(a, b, c, d);  // cert: Linarith.lt_of_eq_of_lt
        // UNCITED-APPLIED internal ×11 [exec 498 1896-1904]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
        // UNCITED-APPLIED internal ×49 [exec 499 1896-1904]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_mul ×4, Mathlib.Tactic.Ring.atom_pf ×3, Mathlib.Tactic.Ring.neg_add ×3, Mathlib.Meta.NormNum.IsInt.to_isNat ×3 (+29 more heads, ×36) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×46 [exec 500 1896-1904]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.atom_pf ×3, Mathlib.Tactic.Ring.neg_mul ×3, Mathlib.Tactic.Ring.add_overlap_pf_zero ×3, Mathlib.Tactic.Ring.sub_congr ×2 (+28 more heads, ×35) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 499, 500)]
      }
    }
    // [TACTIC: exact h₇₄]
    assert (c == Real.div(Real.log(7.0), Real.log(6.0)));
  }
  // have h₈ : d == Real.log ( 8 ) / Real.log ( 7 )  [type from Lean state]
  assert (d == Real.div(Real.log(8.0), Real.log(7.0))) by { // @tac 1978-2046 // @tac 2051-2185 // @tac 2190-2308 // @tac 2313-2408 // @tac 2413-2426
    // have h₈₁ : Real.log ( ( 7 ^ d ) ) == Real.log ( 8 )  [type from Lean state]
    assert (Real.log(Real.rpow(7.0, d)) == Real.log(8.0)); // @tac 2037-2046
      // [TACTIC: rwSeq [ h₄ ]]
    // UNCITED-APPLIED congrArg((7 : ℝ) ^ d, (8 : ℝ), fun (_a : ℝ) => Real.log _a = Real.log (8 : ℝ)): no library counterpart (not stated) [exec 538 2037-2046]
    // have h₈₂ : d * Real.log ( 7 ) == Real.log ( 8 )  [type from Lean state]
    assert ((d * Real.log(7.0)) == Real.log(8.0)) by { // @tac 2106-2165 // @tac 2172-2185
      assert (7.0 > 0.0) by {  // sub-goal of `by` (Lean state) // @tac 2128-2136
        // [TACTIC: «Norm_num[_]At___»]
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
        // UNCITED-APPLIED internal ×5 [exec 586 2128-2136]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      }
      // [TACTIC: rwSeq [ Real.log_rpow ( by norm_num norm_num : ( 7 : ℝ ) > 0 ) ] at h₈₁]
      assert (0.0 < (7.0));  // precondition of RealLogRpow (Lean: Real.log_rpow)
      RealLogRpow(7.0, d);  // cite: Real.log_rpow
      assert ((d * Real.log(7.0)) == Real.log(8.0));  // hypothesis h₈₁ after `rw` (Lean state) // @tac-hyp 2106-2165
      // [TACTIC: exact h₈₁]
      assert ((d * Real.log(7.0)) == Real.log(8.0));  // hypothesis h₈₁ at `exact` (Lean state)
      // UNCITED-APPLIED congrArg(Real.log ((7 : ℝ) ^ d), d * Real.log (7 : ℝ), fun (_a : ℝ) => _a = Real.log (8 : ℝ)): no library counterpart (not stated) [exec 579 2106-2165]
    }
    // have h₈₃ : Real.log ( 7 ) != 0  [type from Lean state]
    assert (Real.log(7.0) != 0.0) by { // @tac 2234-2293 // @tac 2300-2308
      // have h₈₄ : Real.log ( 7 ) > 0  [type from Lean state]
      assert (Real.log(7.0) > 0.0) by {
        assert (1.0 < 7.0) by {  // sub-goal of `by` (Lean state) // @tac 2284-2292
          // [TACTIC: «Norm_num[_]At___»]
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
          // UNCITED-APPLIED internal ×5 [exec 642 2284-2292]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
        }
        // [TACTIC: exact Real.log_pos ( ( by norm_num norm_num ) )]
        assert (1.0 < (7.0));  // precondition of RealLogPos (Lean: Real.log_pos)
        RealLogPos(7.0);  // cite: Real.log_pos
      }
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2300-2308 exec 645)
      cert_identity_10(a, b, c, d);  // cert: Linarith.lt_of_lt_of_eq
      // UNCITED-APPLIED internal ×5 [exec 645 2300-2308]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×1; machinery/glue: Not.intro ×1, Linarith.lt_irrefl ×1, congrArg ×1, Linarith.lt_of_lt_of_eq ×1
      // UNCITED-APPLIED internal ×20 [exec 646 2300-2308]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 646)]
    }
    // have h₈₄ : d == Real.log ( 8 ) / Real.log ( 7 )  [type from Lean state]
    assert (d == Real.div(Real.log(8.0), Real.log(7.0))) by { // @tac 2368-2393
      // [TACTIC: «Field_simp[_]At___» at h₈₂ ⊢]
      assert ((d * Real.log(7.0)) == Real.log(8.0)) by {  // sub-goal before `linarith` (Lean state) // @tac 2400-2408
        // [TACTIC: «Linarith[_]At___»]
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2400-2408 exec 664)
        cert_identity_11(a, b, c, d);  // cert: Linarith.lt_of_eq_of_lt
        cert_identity_12(a, b, c, d);  // cert: Linarith.lt_of_eq_of_lt
        // UNCITED-APPLIED internal ×11 [exec 664 2400-2408]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
        // UNCITED-APPLIED internal ×49 [exec 665 2400-2408]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_mul ×4, Mathlib.Tactic.Ring.atom_pf ×3, Mathlib.Tactic.Ring.neg_add ×3, Mathlib.Meta.NormNum.IsInt.to_isNat ×3 (+29 more heads, ×36) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×46 [exec 666 2400-2408]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.atom_pf ×3, Mathlib.Tactic.Ring.neg_mul ×3, Mathlib.Tactic.Ring.add_overlap_pf_zero ×3, Mathlib.Tactic.Ring.sub_congr ×2 (+28 more heads, ×35) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 665, 666)]
      }
    }
    // [TACTIC: exact h₈₄]
    assert (d == Real.div(Real.log(8.0), Real.log(7.0)));
  }
  // have h₉ : a * b * c * d == ( Real.log ( 8 ) ) / ( Real.log ( 4 ) )  [type from Lean state]
  assert ((((a * b) * c) * d) == Real.div(Real.log(8.0), Real.log(4.0))) by { // @tac 2498-2525
    // [TACTIC: rwSeq [ h₅ , h₆ , h₇ , h₈ ]]
    // UNCITED-APPLIED congrArg(a, Real.log (5 : ℝ) / Real.log (4 : ℝ), fun (_a : ℝ) => _a * b * c * d = Real.log (8 : ℝ) / Real.log (4 : ℝ)): no library counterpart (not stated) [exec 688 2498-2525]
    // UNCITED-APPLIED congrArg(b, Real.log (6 : ℝ) / Real.log (5 : ℝ), fun (_a : ℝ) => Real.log (5 : ℝ) / Real.log (4 : ℝ) * _a * c * d = Re…): no library counterpart (not stated) [exec 688 2498-2525]
    // UNCITED-APPLIED congrArg(c, Real.log (7 : ℝ) / Real.log (6 : ℝ), fun (_a : ℝ) => Real.log (5 : ℝ) / Real.log (4 : ℝ) * (Real.log (6 : …): no library counterpart (not stated) [exec 688 2498-2525]
    // UNCITED-APPLIED congrArg(d, Real.log (8 : ℝ) / Real.log (7 : ℝ), fun (_a : ℝ) => Real.log (5 : ℝ) / Real.log (4 : ℝ) * (Real.log (6 : …): no library counterpart (not stated) [exec 688 2498-2525]
    assert ((((Real.div(Real.log(5.0), Real.log(4.0)) * Real.div(Real.log(6.0), Real.log(5.0))) * Real.div(Real.log(7.0), Real.log(6.0))) * Real.div(Real.log(8.0), Real.log(7.0))) == Real.div(Real.log(8.0), Real.log(4.0))) by {  // sub-goal before `have` (Lean state) // @tac 2530-2589 // @tac 2594-2653 // @tac 2658-2720 // @tac 2725-2787 // @tac 2792-2854 // @tac 2859-3223 // @tac 2859-3206 // @tac 2859-3129 // @tac 2859-3113 // @tac 2859-3036 // @tac 2859-3020 // @tac 2859-2943 // @tac 2859-2927
      // have h₉₁ : Real.log ( 5 ) > 0  [type from Lean state]
      assert (Real.log(5.0) > 0.0) by {
        assert (1.0 < 5.0) by {  // sub-goal of `by` (Lean state) // @tac 2580-2588
          // [TACTIC: «Norm_num[_]At___»]
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
          // UNCITED-APPLIED internal ×5 [exec 732 2580-2588]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
        }
        // [TACTIC: exact Real.log_pos ( ( by norm_num norm_num ) )]
        assert (1.0 < (5.0));  // precondition of RealLogPos (Lean: Real.log_pos)
        RealLogPos(5.0);  // cite: Real.log_pos
      }
      // have h₉₁ : Real.log ( 6 ) > 0  [type from Lean state]
      assert (Real.log(6.0) > 0.0) by {
        assert (1.0 < 6.0) by {  // sub-goal of `by` (Lean state) // @tac 2644-2652
          // [TACTIC: «Norm_num[_]At___»]
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
          // UNCITED-APPLIED internal ×5 [exec 749 2644-2652]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
        }
        // [TACTIC: exact Real.log_pos ( ( by norm_num norm_num ) )]
        assert (1.0 < (6.0));  // precondition of RealLogPos (Lean: Real.log_pos)
        RealLogPos(6.0);  // cite: Real.log_pos
      }
      // have h₁₀₁ : Real.log ( 7 ) > 0  [type from Lean state]
      assert (Real.log(7.0) > 0.0) by {
        assert (1.0 < 7.0) by {  // sub-goal of `by` (Lean state) // @tac 2711-2719
          // [TACTIC: «Norm_num[_]At___»]
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
          // UNCITED-APPLIED internal ×5 [exec 766 2711-2719]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
        }
        // [TACTIC: exact Real.log_pos ( ( by norm_num norm_num ) )]
        assert (1.0 < (7.0));  // precondition of RealLogPos (Lean: Real.log_pos)
        RealLogPos(7.0);  // cite: Real.log_pos
      }
      // have h₁₁₁ : Real.log ( 4 ) > 0  [type from Lean state]
      assert (Real.log(4.0) > 0.0) by {
        assert (1.0 < 4.0) by {  // sub-goal of `by` (Lean state) // @tac 2778-2786
          // [TACTIC: «Norm_num[_]At___»]
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
          // UNCITED-APPLIED internal ×5 [exec 783 2778-2786]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
        }
        // [TACTIC: exact Real.log_pos ( ( by norm_num norm_num ) )]
        assert (1.0 < (4.0));  // precondition of RealLogPos (Lean: Real.log_pos)
        RealLogPos(4.0);  // cite: Real.log_pos
      }
      // have h₁₂₁ : Real.log ( 8 ) > 0  [type from Lean state]
      assert (Real.log(8.0) > 0.0) by {
        assert (1.0 < 8.0) by {  // sub-goal of `by` (Lean state) // @tac 2845-2853
          // [TACTIC: «Norm_num[_]At___»]
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
          // UNCITED-APPLIED internal ×5 [exec 800 2845-2853]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
        }
        // [TACTIC: exact Real.log_pos ( ( by norm_num norm_num ) )]
        assert (1.0 < (8.0));  // precondition of RealLogPos (Lean: Real.log_pos)
        RealLogPos(8.0);  // cite: Real.log_pos
      }
      // [TACTIC: «_<;>_» [ Real.log_mul , Real.log_div , Real.log_rpow , Real.log_pow ] field_simp [ Real.log_mul , Real.log_div , Real.log_rpow , Real.log_pow ] <;> ring_nf ring_nf <;> field_simp [ Real.log_mul , Real.log_div , Real.log_rpow , Real.log_pow ] field_simp [ Real.log_mul , Real.log_div , Real.log_rpow , Real.log_pow ] <;> ring_nf ring_nf <;> field_simp [ Real.log_mul , Real.log_div , Real.log_rpow , Real.log_pow ] field_simp [ Real.log_mul , Real.log_div , Real.log_rpow , Real.log_pow ] <;> ring_nf ring_nf <;> field_simp [ Real.log_mul , Real.log_div , Real.log_rpow , Real.log_pow ] field_simp [ Real.log_mul , Real.log_div , Real.log_rpow , Real.log_pow ] <;> linarith linarith]
      // [TACTIC: choice [ Real.log_mul , Real.log_div , Real.log_rpow , Real.log_pow ] field_simp [ Real.log_mul , Real.log_div , Real.log_rpow , Real.log_pow ]]
      // UNCITED Real.log_mul: no Lean instance recorded (arguments unknown), not guessed
      // UNCITED Real.log_rpow: named in this rewriting step; no record of Lean's proof attributes an application of it to this execution (its recorded applications are at other tactics of the proof; a rewrite at a hypothesis is filed under the tactic that later uses the hypothesis, and a conditional / under-binder simp rewrite may be unrecorded), so whether it was applied here is not known; not stated
      // UNCITED Real.log_pow: named in this rewriting step; no record of Lean's proof attributes an application of it to this execution (its recorded applications are at other tactics of the proof; a rewrite at a hypothesis is filed under the tactic that later uses the hypothesis, and a conditional / under-binder simp rewrite may be unrecorded), so whether it was applied here is not known; not stated
      if (0.0 < (((Real.log(4.0) * Real.log(5.0)) * Real.log(6.0)))) && (0.0 < (Real.log(7.0))) { MulPos(((Real.log(4.0) * Real.log(5.0)) * Real.log(6.0)), Real.log(7.0)); }  // cite: mul_pos [applied by the tactic, not named in it]
      assert (0.0 < (Real.log(4.0))) && (0.0 < (Real.log(5.0)));  // precondition of MulPos (Lean: mul_pos)
      MulPos(Real.log(4.0), Real.log(5.0));  // cite: mul_pos [applied by the tactic, not named in it]
      assert (0.0 < ((Real.log(4.0) * Real.log(5.0)))) && (0.0 < (Real.log(6.0)));  // precondition of MulPos (Lean: mul_pos; discharged inside the tactic's term by the applications stated above)
      MulPos((Real.log(4.0) * Real.log(5.0)), Real.log(6.0));  // cite: mul_pos [applied by the tactic, not named in it]
      // UNCITED Real.log_div: named in this rewriting step; no record of Lean's proof attributes an application of it to this execution (its recorded applications are at other tactics of the proof; a rewrite at a hypothesis is filed under the tactic that later uses the hypothesis, and a conditional / under-binder simp rewrite may be unrecorded), so whether it was applied here is not known; not stated
      // `fieldSimp` step's recorded applications: the lemma applications Lean's proof term of this step is built from (no linarith run here) (Lean execution 2859-2927 exec 838)
      if (0.0 < ((Real.log(4.0) * Real.log(5.0)) * Real.log(6.0))) && (0.0 < Real.log(7.0)) { cert_piece_13(a, b, c, d); }  // cert: mul_pos
      if (0.0 < (Real.log(4.0) * Real.log(5.0))) && (0.0 < Real.log(6.0)) { cert_piece_14(a, b, c, d); }  // cert: mul_pos
      if (0.0 < Real.log(4.0)) && (0.0 < Real.log(5.0)) { cert_piece_15(a, b, c, d); }  // cert: mul_pos
      // UNCITED-APPLIED internal ×34 [exec 838 2859-2927]: applications made inside the tactic's own automation, not stated — div_mul_eq_mul_div ×4, Mathlib.Meta.Positivity.log_pos_of_isNat ×4, mul_div_assoc' ×3, div_div ×3, ne_of_gt ×2; machinery/glue: Eq.trans ×7, congrArg ×7, Mathlib.Meta.NormNum.isNat_ofNat ×4 (cited in this block, not counted here: mul_pos [Lean recorded ×3])
      assert (((((Real.log(5.0) * Real.log(6.0)) * Real.log(7.0)) * Real.log(8.0)) * Real.log(4.0)) == (Real.log(8.0) * (((Real.log(4.0) * Real.log(5.0)) * Real.log(6.0)) * Real.log(7.0)))) by {  // sub-goal of `ring_nf` (Lean state) // @tac 2936-2943
        PowOne(Real.log(5.0));  // cite: pow_one [applied by the tactic, not named in it]
        PowOne(Real.log(6.0));  // cite: pow_one [applied by the tactic, not named in it]
        PowOne(Real.log(7.0));  // cite: pow_one [applied by the tactic, not named in it]
        PowOne(Real.log(8.0));  // cite: pow_one [applied by the tactic, not named in it]
        PowOne(Real.log(4.0));  // cite: pow_one [applied by the tactic, not named in it]
        // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := Real.log (4 : ℝ))
        // UNCITED-APPLIED internal ×74 [exec 847 2936-2943]: applications made inside the tactic's own automation, not stated — mul_one ×1, add_zero ×1; machinery/glue: Eq.trans ×8, congrArg ×8, Mathlib.Tactic.Ring.mul_pf_right ×7, Mathlib.Tactic.RingNF.mul_assoc_rev ×6 (+13 more heads, ×43) (cited in this block, not counted here: pow_one [Lean recorded ×5])
      }
    }
  }
  // have h₁₀ : Real.log ( 8 ) == 3 * Real.log ( 2 )  [type from Lean state]
  assert (Real.log(8.0) == (3.0 * Real.log(2.0))) by { // @tac 3282-3344 // @tac 3349-3364
    // have h₁₀₁ : Real.log ( 8 ) == Real.log ( ( 2 ^ 3 ) )  [type from Lean state]
    assert (Real.log(8.0) == Real.log(Real.pow(2.0, 3))); // @tac 3336-3344
      // [TACTIC: «Norm_num[_]At___»]
    // UNCITED-APPLIED internal ×11 [exec 916 3336-3344]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, Eq.trans ×1, congrArg ×1 (+6 more heads, ×6)
    // [TACTIC: rwSeq [ h₁₀₁ ]]
    // UNCITED-APPLIED congrArg(Real.log (8 : ℝ), Real.log ((2 : ℝ) ^ (3 : ℕ)), fun (_a : ℝ) => _a = (3 : ℝ) * Real.log (2 : ℝ)): no library counterpart (not stated) [exec 921 3349-3364]
    assert (Real.log(Real.pow(2.0, 3)) == (3.0 * Real.log(2.0))) by {  // sub-goal before `have` (Lean state) // @tac 3369-3463 // @tac 3468-3504 // @tac 3468-3483
      // have h₁₀₂ : Real.log ( ( 2 ^ 3 ) ) == 3 * Real.log ( 2 )  [type from Lean state]
      assert (Real.log(Real.pow(2.0, 3)) == (3.0 * Real.log(2.0))) by { // @tac 3433-3463 // @tac 3433-3450
        // [TACTIC: «_<;>_» [ Real.log_pow ] rw [ Real.log_pow ] <;> norm_num norm_num]
        // [TACTIC: choice [ Real.log_pow ] rw [ Real.log_pow ]]
        RealLogPow(3, 2.0);  // cite: Real.log_pow
        // UNCITED-APPLIED congrArg(Real.log ((2 : ℝ) ^ (3 : ℕ)), ↑(3 : ℕ) * Real.log (2 : ℝ), fun (_a : ℝ) => _a = (3 : ℝ) * Real.log (2 : ℝ)): no library counterpart (not stated) [exec 973 3433-3450]
        assert (((3 as real) * Real.log(2.0)) == (3.0 * Real.log(2.0)));  // sub-goal of `norm_num` (Lean state) // @tac 3455-3463
        // UNCITED-APPLIED internal ×8 [exec 1008 3455-3463]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, Eq.trans ×1, congrArg ×1, Mathlib.Meta.NormNum.IsNat.to_eq ×1 (+4 more heads, ×4)
      }
      // [TACTIC: «_<;>_» [ h₁₀₂ ] rw [ h₁₀₂ ] <;> norm_num norm_num]
      // [TACTIC: rwSeq [ h₁₀₂ ]]
      // `rw` closed the goal; the rest of the chain did not run
      // UNCITED-APPLIED congrArg(Real.log ((2 : ℝ) ^ (3 : ℕ)), (3 : ℝ) * Real.log (2 : ℝ), fun (_a : ℝ) => _a = (3 : ℝ) * Real.log (2 : ℝ)): no library counterpart (not stated) [exec 1018 3468-3483]
    }
  }
  // have h₁₁ : Real.log ( 4 ) == 2 * Real.log ( 2 )  [type from Lean state]
  assert (Real.log(4.0) == (2.0 * Real.log(2.0))) by { // @tac 3563-3625 // @tac 3630-3645
    // have h₁₁₁ : Real.log ( 4 ) == Real.log ( ( 2 ^ 2 ) )  [type from Lean state]
    assert (Real.log(4.0) == Real.log(Real.pow(2.0, 2))); // @tac 3617-3625
      // [TACTIC: «Norm_num[_]At___»]
    // UNCITED-APPLIED internal ×11 [exec 1077 3617-3625]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, Eq.trans ×1, congrArg ×1 (+6 more heads, ×6)
    // [TACTIC: rwSeq [ h₁₁₁ ]]
    // UNCITED-APPLIED congrArg(Real.log (4 : ℝ), Real.log ((2 : ℝ) ^ (2 : ℕ)), fun (_a : ℝ) => _a = (2 : ℝ) * Real.log (2 : ℝ)): no library counterpart (not stated) [exec 1082 3630-3645]
    assert (Real.log(Real.pow(2.0, 2)) == (2.0 * Real.log(2.0))) by {  // sub-goal before `have` (Lean state) // @tac 3650-3744 // @tac 3749-3785 // @tac 3749-3764
      // have h₁₁₂ : Real.log ( ( 2 ^ 2 ) ) == 2 * Real.log ( 2 )  [type from Lean state]
      assert (Real.log(Real.pow(2.0, 2)) == (2.0 * Real.log(2.0))) by { // @tac 3714-3744 // @tac 3714-3731
        // [TACTIC: «_<;>_» [ Real.log_pow ] rw [ Real.log_pow ] <;> norm_num norm_num]
        // [TACTIC: choice [ Real.log_pow ] rw [ Real.log_pow ]]
        RealLogPow(2, 2.0);  // cite: Real.log_pow
        // UNCITED-APPLIED congrArg(Real.log ((2 : ℝ) ^ (2 : ℕ)), ↑(2 : ℕ) * Real.log (2 : ℝ), fun (_a : ℝ) => _a = (2 : ℝ) * Real.log (2 : ℝ)): no library counterpart (not stated) [exec 1134 3714-3731]
        assert (((2 as real) * Real.log(2.0)) == (2.0 * Real.log(2.0)));  // sub-goal of `norm_num` (Lean state) // @tac 3736-3744
        // UNCITED-APPLIED internal ×8 [exec 1169 3736-3744]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, Eq.trans ×1, congrArg ×1, Mathlib.Meta.NormNum.IsNat.to_eq ×1 (+4 more heads, ×4)
      }
      // [TACTIC: «_<;>_» [ h₁₁₂ ] rw [ h₁₁₂ ] <;> norm_num norm_num]
      // [TACTIC: rwSeq [ h₁₁₂ ]]
      // `rw` closed the goal; the rest of the chain did not run
      // UNCITED-APPLIED congrArg(Real.log ((2 : ℝ) ^ (2 : ℕ)), (2 : ℝ) * Real.log (2 : ℝ), fun (_a : ℝ) => _a = (2 : ℝ) * Real.log (2 : ℝ)): no library counterpart (not stated) [exec 1179 3749-3764]
    }
  }
  // have h₁₂ : a * b * c * d == 3 / 2  [type from Lean state]
  assert ((((a * b) * c) * d) == (3.0 / 2.0)) by { // @tac 3838-3847
    // [TACTIC: rwSeq [ h₉ ]]
    // UNCITED-APPLIED congrArg(a * b * c * d, Real.log (8 : ℝ) / Real.log (4 : ℝ), fun (_a : ℝ) => _a = (3 / 2 : ℝ)): no library counterpart (not stated) [exec 1226 3838-3847]
    assert (Real.div(Real.log(8.0), Real.log(4.0)) == (3.0 / 2.0)) by {  // sub-goal before `have` (Lean state) // @tac 3852-3908 // @tac 3913-3969 // @tac 3974-4001
      // have h₁₂₁ : Real.log ( 8 ) == 3 * Real.log ( 2 )  [type from Lean state]
      assert (Real.log(8.0) == (3.0 * Real.log(2.0))) by {
        // [TACTIC: exact h₁₀]
        assert (Real.log(8.0) == (3.0 * Real.log(2.0)));
      }
      // have h₁₂₂ : Real.log ( 4 ) == 2 * Real.log ( 2 )  [type from Lean state]
      assert (Real.log(4.0) == (2.0 * Real.log(2.0))) by {
        // [TACTIC: exact h₁₁]
        assert (Real.log(4.0) == (2.0 * Real.log(2.0)));
      }
      // [TACTIC: rwSeq [ h₁₂₁ , h₁₂₂ ]]
      // UNCITED-APPLIED congrArg(Real.log (8 : ℝ), (3 : ℝ) * Real.log (2 : ℝ), fun (_a : ℝ) => _a / Real.log (4 : ℝ) = (3 / 2 : ℝ)): no library counterpart (not stated) [exec 1281 3974-4001]
      // UNCITED-APPLIED congrArg(Real.log (4 : ℝ), (2 : ℝ) * Real.log (2 : ℝ), fun (_a : ℝ) => (3 : ℝ) * Real.log (2 : ℝ) / _a = (3 / 2 : ℝ)): no library counterpart (not stated) [exec 1281 3974-4001]
      assert (Real.div((3.0 * Real.log(2.0)), (2.0 * Real.log(2.0))) == (3.0 / 2.0)) by {  // sub-goal before `have` (Lean state) // @tac 4006-4130 // @tac 4135-4223 // @tac 4135-4206 // @tac 4135-4174 // @tac 4135-4158
        // have h₁₂₃ : Real.log ( 2 ) != 0  [type from Lean state]
        assert (Real.log(2.0) != 0.0) by { // @tac 4053-4115 // @tac 4122-4130
          // have h₁₂₄ : Real.log ( 2 ) > 0  [type from Lean state]
          assert (Real.log(2.0) > 0.0) by {
            assert (1.0 < 2.0) by {  // sub-goal of `by` (Lean state) // @tac 4106-4114
              // [TACTIC: «Norm_num[_]At___»]
              NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
              // UNCITED-APPLIED internal ×5 [exec 1339 4106-4114]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            }
            // [TACTIC: exact Real.log_pos ( ( by norm_num norm_num ) )]
            assert (1.0 < (2.0));  // precondition of RealLogPos (Lean: Real.log_pos)
            RealLogPos(2.0);  // cite: Real.log_pos
          }
          // [TACTIC: «Linarith[_]At___»]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 4122-4130 exec 1342)
          cert_identity_16(a, b, c, d);  // cert: Linarith.lt_of_lt_of_eq
          // UNCITED-APPLIED internal ×5 [exec 1342 4122-4130]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×1; machinery/glue: Not.intro ×1, Linarith.lt_irrefl ×1, congrArg ×1, Linarith.lt_of_lt_of_eq ×1
          // UNCITED-APPLIED internal ×20 [exec 1346 4122-4130]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1346)]
        }
        // [TACTIC: «_<;>_» [ h₁₂₃ ] field_simp [ h₁₂₃ ] <;> ring_nf ring_nf <;> field_simp [ h₁₂₃ ] field_simp [ h₁₂₃ ] <;> linarith linarith]
        // [TACTIC: choice [ h₁₂₃ ] field_simp [ h₁₂₃ ]]
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
        if (0.0 < (2.0)) && (0.0 < (Real.log(2.0))) { MulPos(2.0, Real.log(2.0)); }  // cite: mul_pos [applied by the tactic, not named in it]
        // `fieldSimp` step's recorded applications (Lean execution 4135-4158 exec 1362): nothing of it stated; Lean's records:
        // UNCITED-APPLIED mul_pos: certificate piece `(0 : ℝ) < (2 : ℝ) * Real.log (2 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 2.0); (0.0 < Real.log(2.0))
        // UNCITED-APPLIED internal ×9 [exec 1362 4135-4158]: applications made inside the tactic's own automation, not stated — div_mul_eq_mul_div ×1, ne_of_gt ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1, Mathlib.Meta.Positivity.log_pos_of_isNat ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, Eq.trans ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1, congrArg ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1], mul_pos [Lean recorded ×1])
        assert (((3.0 * Real.log(2.0)) * 2.0) == (3.0 * (2.0 * Real.log(2.0)))) by {  // sub-goal of `ring_nf` (Lean state) // @tac 4167-4174
          PowOne(Real.log(2.0));  // cite: pow_one [applied by the tactic, not named in it]
          // UNCITED-APPLIED internal ×49 [exec 1371 4167-4174]: applications made inside the tactic's own automation, not stated — add_zero ×1; machinery/glue: Eq.trans ×5, Mathlib.Tactic.Ring.mul_congr ×4, Mathlib.Tactic.Ring.add_mul ×4, Mathlib.Tactic.Ring.mul_add ×4 (+17 more heads, ×31) (cited in this block, not counted here: pow_one [Lean recorded ×1])
        }
        vc_mathd_algebra_598_L542(a, b, c, d);  /* [IN-FILE CHECK] the closed lemma for line 542 */
      }
    }
  }
  // [TACTIC: «_<;>_» [ h₁₂ ] rw [ h₁₂ ] <;> norm_num norm_num]
  // [TACTIC: rwSeq [ h₁₂ ]]
  // `rw` closed the goal; the rest of the chain did not run
  // GAP: recorded applications of Lean executions this translation states nowhere:
  // UNCITED-APPLIED congrArg(a * b * c * d, (3 / 2 : ℝ), fun (_a : ℝ) => _a = (3 / 2 : ℝ)): no library counterpart (not stated) [exec 1393 4229-4241]
}



// ===== closed lemma for line 542 (from closed/mathd_algebra_598-542.dfy) =====

lemma {:axiom} DivEqIff(a: real, b: real, c: real)  // [ADDED DECLARATION]
  requires c != 0.0
  ensures a / c == b <==> a == b * c

lemma {:induction false} vc_mathd_algebra_598_L542(a: real, b: real, c: real, d: real)
  requires Real.rpow(4.0, a) == 5.0
  requires Real.rpow(5.0, b) == 6.0
  requires Real.rpow(6.0, c) == 7.0
  requires Real.rpow(7.0, d) == 8.0
  requires a == Real.div(Real.log(5.0), Real.log(4.0))
  requires b == Real.div(Real.log(6.0), Real.log(5.0))
  requires c == Real.div(Real.log(7.0), Real.log(6.0))
  requires d == Real.div(Real.log(8.0), Real.log(7.0))
  requires a * b * c * d == Real.div(Real.log(8.0), Real.log(4.0))
  requires Real.log(8.0) == 3.0 * Real.log(2.0)
  requires Real.log(4.0) == 2.0 * Real.log(2.0)
  requires (0 as real) == 0.0
  requires ((0.0 < 2.0) && (0.0 < 2.0) && (0.0 < Real.log(2.0)) && (0.0 < 2.0) && (0.0 < 2.0 * Real.log(2.0))) || ((0.0 < 2.0) && (!(0.0 < 2.0 && 0.0 < Real.log(2.0)))) || ((!(0.0 < 2.0)) && (0.0 < 2.0) && (0.0 < Real.log(2.0)) && (0.0 < 2.0) && (0.0 < 2.0 * Real.log(2.0))) || ((!(0.0 < 2.0)) && (!(0.0 < 2.0 && 0.0 < Real.log(2.0))))
  ensures   Real.div(3.0 * Real.log(2.0), 2.0 * Real.log(2.0)) == 3.0 / 2.0
{
  DivEqIff(3.0 * Real.log(2.0), 3.0 / 2.0, 2.0 * Real.log(2.0));  // [ADDED]
        // have h₁₂₃ : Real.log ( 2 ) != 0  [type from Lean state]
        assert (Real.log(2.0) != 0.0) by { // @tac 4053-4115 // @tac 4122-4130
          // have h₁₂₄ : Real.log ( 2 ) > 0  [type from Lean state]
          assert (Real.log(2.0) > 0.0) by {
            assert (1.0 < 2.0) by {  // sub-goal of `by` (Lean state) // @tac 4106-4114
              // [TACTIC: «Norm_num[_]At___»]
              NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
              // UNCITED-APPLIED internal ×5 [exec 1339 4106-4114]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            }
            // [TACTIC: exact Real.log_pos ( ( by norm_num norm_num ) )]
            assert (1.0 < (2.0));  // precondition of RealLogPos (Lean: Real.log_pos)
            RealLogPos(2.0);  // cite: Real.log_pos
          }
          // [TACTIC: «Linarith[_]At___»]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 4122-4130 exec 1342)
          cert_identity_16(a, b, c, d);  // cert: Linarith.lt_of_lt_of_eq
          // UNCITED-APPLIED internal ×5 [exec 1342 4122-4130]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×1; machinery/glue: Not.intro ×1, Linarith.lt_irrefl ×1, congrArg ×1, Linarith.lt_of_lt_of_eq ×1
          // UNCITED-APPLIED internal ×20 [exec 1346 4122-4130]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1346)]
        }
        // [TACTIC: «_<;>_» [ h₁₂₃ ] field_simp [ h₁₂₃ ] <;> ring_nf ring_nf <;> field_simp [ h₁₂₃ ] field_simp [ h₁₂₃ ] <;> linarith linarith]
        // [TACTIC: choice [ h₁₂₃ ] field_simp [ h₁₂₃ ]]
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
        if (0.0 < (2.0)) && (0.0 < (Real.log(2.0))) { MulPos(2.0, Real.log(2.0)); }  // cite: mul_pos [applied by the tactic, not named in it]
        // `fieldSimp` step's recorded applications (Lean execution 4135-4158 exec 1362): nothing of it stated; Lean's records:
        // UNCITED-APPLIED mul_pos: certificate piece `(0 : ℝ) < (2 : ℝ) * Real.log (2 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 2.0); (0.0 < Real.log(2.0))
        // UNCITED-APPLIED internal ×9 [exec 1362 4135-4158]: applications made inside the tactic's own automation, not stated — div_mul_eq_mul_div ×1, ne_of_gt ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1, Mathlib.Meta.Positivity.log_pos_of_isNat ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, Eq.trans ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1, congrArg ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1], mul_pos [Lean recorded ×1])
        assert (((3.0 * Real.log(2.0)) * 2.0) == (3.0 * (2.0 * Real.log(2.0)))) by {  // sub-goal of `ring_nf` (Lean state) // @tac 4167-4174
          PowOne(Real.log(2.0));  // cite: pow_one [applied by the tactic, not named in it]
          // UNCITED-APPLIED internal ×49 [exec 1371 4167-4174]: applications made inside the tactic's own automation, not stated — add_zero ×1; machinery/glue: Eq.trans ×5, Mathlib.Tactic.Ring.mul_congr ×4, Mathlib.Tactic.Ring.add_mul ×4, Mathlib.Tactic.Ring.mul_add ×4 (+17 more heads, ×31) (cited in this block, not counted here: pow_one [Lean recorded ×1])
        }
}

