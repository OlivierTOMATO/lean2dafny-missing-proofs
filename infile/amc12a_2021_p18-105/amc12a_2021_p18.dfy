// ════════════════════════════════════════════════════════════
// MECHANICAL TRANSLATION (emitter v2) of ast_cache_v2/amc12a_2021_p18.json
// Each Lean `have` → `assert ... by {}` at the same depth;
// quantified haves → forall statements. Typed pipeline only.
// ════════════════════════════════════════════════════════════

include "../../library/library_new.dfy"

// ──────────────────────────────────────────────────
// certificate identity for `h₂/h₂₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_1(f: Rat.rat -> real)
  ensures (((f(Rat.mul(Rat.of_int(1), Rat.of_int(1))) - (f(Rat.of_int(1)) + f(Rat.of_int(1)))) + -((f(Rat.mul(Rat.of_int(1), Rat.of_int(1))) - f(Rat.of_int(1))))) + ((f(Rat.of_int(1)) + f(Rat.of_int(1))) - f(Rat.of_int(1)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₂/h₂₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_2(f: Rat.rat -> real)
  ensures ((-((f(Rat.mul(Rat.of_int(1), Rat.of_int(1))) - (f(Rat.of_int(1)) + f(Rat.of_int(1))))) + (f(Rat.mul(Rat.of_int(1), Rat.of_int(1))) - f(Rat.of_int(1)))) + (f(Rat.of_int(1)) - (f(Rat.of_int(1)) + f(Rat.of_int(1))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₂/h₂₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_3(f: Rat.rat -> real)
  ensures ((-((f(Rat.mul(Rat.of_int(1), Rat.of_int(1))) - (f(Rat.of_int(1)) + f(Rat.of_int(1))))) + (f(Rat.mul(Rat.of_int(1), Rat.of_int(1))) - f(Rat.of_int(1)))) + -(f(Rat.of_int(1)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₂/h₂₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_4(f: Rat.rat -> real)
  ensures (((f(Rat.mul(Rat.of_int(1), Rat.of_int(1))) - (f(Rat.of_int(1)) + f(Rat.of_int(1)))) + -((f(Rat.mul(Rat.of_int(1), Rat.of_int(1))) - f(Rat.of_int(1))))) + f(Rat.of_int(1))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₆/h₆₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_5(f: Rat.rat -> real)
  ensures ((((1.0 * f(Rat.mul(Rat.div(Rat.of_int(25), Rat.of_int(11)), Rat.of_int(11)))) - ((1.0 * f(Rat.div(Rat.of_int(25), Rat.of_int(11)))) + (1.0 * f(Rat.of_int(11))))) + -(((1.0 * f(Rat.mul(Rat.div(Rat.of_int(25), Rat.of_int(11)), Rat.of_int(11)))) - (1.0 * f(Rat.of_int(25)))))) + (((1.0 * f(Rat.div(Rat.of_int(25), Rat.of_int(11)))) + (1.0 * f(Rat.of_int(11)))) - (1.0 * f(Rat.of_int(25))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₆/h₆₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_6(f: Rat.rat -> real)
  ensures ((-(((1.0 * f(Rat.mul(Rat.div(Rat.of_int(25), Rat.of_int(11)), Rat.of_int(11)))) - ((1.0 * f(Rat.div(Rat.of_int(25), Rat.of_int(11)))) + (1.0 * f(Rat.of_int(11)))))) + ((1.0 * f(Rat.mul(Rat.div(Rat.of_int(25), Rat.of_int(11)), Rat.of_int(11)))) - (1.0 * f(Rat.of_int(25))))) + ((1.0 * f(Rat.of_int(25))) - ((1.0 * f(Rat.div(Rat.of_int(25), Rat.of_int(11)))) + (1.0 * f(Rat.of_int(11)))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₆/h₆₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_7(f: Rat.rat -> real)
  ensures ((((1.0 * f(Rat.mul(Rat.div(Rat.of_int(25), Rat.of_int(11)), Rat.of_int(11)))) - ((1.0 * f(Rat.div(Rat.of_int(25), Rat.of_int(11)))) + (1.0 * f(Rat.of_int(11))))) + -(((1.0 * f(Rat.mul(Rat.div(Rat.of_int(25), Rat.of_int(11)), Rat.of_int(11)))) - (1.0 * f(Rat.of_int(25)))))) + ((1.0 * f(Rat.div(Rat.of_int(25), Rat.of_int(11)))) - ((1.0 * f(Rat.of_int(25))) - (1.0 * f(Rat.of_int(11)))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₆/h₆₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_8(f: Rat.rat -> real)
  ensures ((-(((1.0 * f(Rat.mul(Rat.div(Rat.of_int(25), Rat.of_int(11)), Rat.of_int(11)))) - ((1.0 * f(Rat.div(Rat.of_int(25), Rat.of_int(11)))) + (1.0 * f(Rat.of_int(11)))))) + ((1.0 * f(Rat.mul(Rat.div(Rat.of_int(25), Rat.of_int(11)), Rat.of_int(11)))) - (1.0 * f(Rat.of_int(25))))) + (((1.0 * f(Rat.of_int(25))) - (1.0 * f(Rat.of_int(11)))) - (1.0 * f(Rat.div(Rat.of_int(25), Rat.of_int(11)))))) == 0.0
{ }

// statement: Lean elaborated type (v3, stmt_cache) — requires/ensures below
lemma amc12a_2021_p18(f: Rat.rat -> real)
  requires (forall x: Rat.rat :: (Rat.gt(x, Rat.of_int(0)) ==> (forall y: Rat.rat :: (Rat.gt(y, Rat.of_int(0)) ==> (f(Rat.mul(x, y)) == (f(x) + f(y)))))))
  requires (forall p: nat :: (prime(p) ==> (f(Rat.of_int(p)) == (p as real))))
  ensures (f(Rat.div(Rat.of_int(25), Rat.of_int(11))) < 0.0) // @tac 763-1174 // @tac 1180-1484 // @tac 1490-1772 // @tac 1778-2090 // @tac 2096-2579 // @tac 2585-2672 // @tac 2678-2688
{
  // have h₂ : f ( 1 ) == 0  [type from Lean state]
  assert (f(Rat.of_int(1)) == 0.0) by { // @tac 793-950 // @tac 955-1008 // @tac 1013-1064 // @tac 1069-1114 // @tac 1119-1156 // @tac 1161-1174
    // have h₂₁ : f ( 1 * 1 ) == f ( 1 ) + f ( 1 )  [type from Lean state]
    assert (f(Rat.mul(Rat.of_int(1), Rat.of_int(1))) == (f(Rat.of_int(1)) + f(Rat.of_int(1)))) by { // @tac 848-930 // @tac 937-950
      // have h₂₂ : f ( 1 * 1 ) == f ( 1 ) + f ( 1 )  [type from Lean state]
      assert (f(Rat.mul(Rat.of_int(1), Rat.of_int(1))) == (f(Rat.of_int(1)) + f(Rat.of_int(1)))) by {
        assert Rat.gt(Rat.of_int(1), Rat.of_int(0)) by {  // sub-goal of `by` (Lean state) // @tac 905-913
          // [TACTIC: «Norm_num[_]At___»]
          // UNCITED-APPLIED internal ×5 [exec 50 905-913]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
        }
        assert Rat.gt(Rat.of_int(1), Rat.of_int(0)) by {  // sub-goal of `by` (Lean state) // @tac 921-929
          // [TACTIC: «Norm_num[_]At___»]
          // UNCITED-APPLIED internal ×5 [exec 55 921-929]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
        }
        // [TACTIC: exact h₀ ( 1 , ( by norm_num norm_num ) , 1 , ( by norm_num norm_num ) )]
        assert (f(Rat.mul(Rat.of_int(1), Rat.of_int(1))) == (f(Rat.of_int(1)) + f(Rat.of_int(1))));  // instance of h₀ (Lean state)
      }
      // [TACTIC: exact h₂₂]
      assert (f(Rat.mul(Rat.of_int(1), Rat.of_int(1))) == (f(Rat.of_int(1)) + f(Rat.of_int(1))));
    }
    // have h₂₂ : f ( 1 * 1 ) == f ( 1 ) + f ( 1 )  [type from Lean state]
    assert (f(Rat.mul(Rat.of_int(1), Rat.of_int(1))) == (f(Rat.of_int(1)) + f(Rat.of_int(1)))) by {
      // [TACTIC: exact h₂₁]
      assert (f(Rat.mul(Rat.of_int(1), Rat.of_int(1))) == (f(Rat.of_int(1)) + f(Rat.of_int(1))));
    }
    // have h₂₃ : f ( 1 * 1 ) == f ( 1 )  [type from Lean state]
    vc_amc12a_2021_p18_L105(f);  /* [IN-FILE CHECK] the closed lemma for line 105 */
    assert (f(Rat.mul(Rat.of_int(1), Rat.of_int(1))) == f(Rat.of_int(1))); // @tac 1056-1064
      // [TACTIC: «Norm_num[_]At___»]
    // UNCITED-APPLIED internal ×8 [exec 87 1056-1064]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, Eq.trans ×1, congrArg ×1, Mathlib.Meta.NormNum.IsNat.to_eq ×1 (+4 more heads, ×4)
    // have h₂₄ : f ( 1 ) + f ( 1 ) == f ( 1 )  [type from Lean state]
    assert ((f(Rat.of_int(1)) + f(Rat.of_int(1))) == f(Rat.of_int(1))) by { // @tac 1106-1114
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1106-1114 exec 104)
      // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `f ((1 : ℚ) * (1 : ℚ)) - (f (1 : ℚ) + f (1 : ℚ)) + -(f ((1 : ℚ) * (1 : ℚ)) - f (1 : ℚ)) = (0 : ℝ)` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
      // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `-(f ((1 : ℚ) * (1 : ℚ)) - (f (1 : ℚ) + f (1 : ℚ))) + (f ((1 : ℚ) * (1 : ℚ)) - f (1 : ℚ)) = (0 : ℝ)` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
      cert_identity_1(f);  // cert: Linarith.lt_of_eq_of_lt
      cert_identity_2(f);  // cert: Linarith.lt_of_eq_of_lt
      // UNCITED-APPLIED internal ×15 [exec 104 1106-1114]: applications made inside the tactic's own automation, not stated — sub_eq_zero_of_eq ×2, neg_eq_zero ×2, sub_neg_of_lt ×2; machinery/glue: congrArg ×2, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_eq_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1 (+2 more heads, ×2)
      // UNCITED-APPLIED internal ×66 [exec 105 1106-1114]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×4, Mathlib.Tactic.Ring.neg_mul ×4, Mathlib.Meta.NormNum.IsInt.to_isNat ×4, Mathlib.Meta.NormNum.isInt_add ×4 (+23 more heads, ×50) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×66 [exec 106 1106-1114]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×4, Mathlib.Tactic.Ring.neg_mul ×4, Mathlib.Meta.NormNum.IsInt.to_isNat ×4, Mathlib.Meta.NormNum.isInt_add ×4 (+23 more heads, ×50) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 105, 106)]
    }
    // have h₂₅ : f ( 1 ) == 0  [type from Lean state]
    assert (f(Rat.of_int(1)) == 0.0) by { // @tac 1148-1156
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1148-1156 exec 123)
      // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `f ((1 : ℚ) * (1 : ℚ)) - (f (1 : ℚ) + f (1 : ℚ)) + -(f ((1 : ℚ) * (1 : ℚ)) - f (1 : ℚ)) = (0 : ℝ)` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
      // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `-(f ((1 : ℚ) * (1 : ℚ)) - (f (1 : ℚ) + f (1 : ℚ))) + (f ((1 : ℚ) * (1 : ℚ)) - f (1 : ℚ)) = (0 : ℝ)` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
      cert_identity_3(f);  // cert: Linarith.lt_of_eq_of_lt
      cert_identity_4(f);  // cert: Linarith.lt_of_eq_of_lt
      // UNCITED-APPLIED internal ×14 [exec 123 1148-1156]: applications made inside the tactic's own automation, not stated — sub_eq_zero_of_eq ×2, neg_eq_zero ×2, neg_neg_of_pos ×1; machinery/glue: congrArg ×2, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_eq_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1 (+2 more heads, ×2)
      // UNCITED-APPLIED internal ×59 [exec 124 1148-1156]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×4, Mathlib.Tactic.Ring.neg_mul ×4, Mathlib.Tactic.Ring.add_congr ×3, Mathlib.Tactic.Ring.add_pf_zero_add ×3 (+23 more heads, ×45) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×61 [exec 125 1148-1156]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×4, Mathlib.Tactic.Ring.neg_mul ×4, Mathlib.Meta.NormNum.IsInt.to_isNat ×4, Mathlib.Tactic.Ring.add_congr ×3 (+23 more heads, ×46) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 124, 125)]
    }
    // [TACTIC: exact h₂₅]
    assert (f(Rat.of_int(1)) == 0.0);
  }
  // have h₃ : f ( 5 ) == 5  [type from Lean state]
  assert (f(Rat.of_int(5)) == 5.0) by { // @tac 1226-1265 // @tac 1270-1466 // @tac 1471-1484
    // have h₃₁ : Nat.Prime ( 5 )  [type from Lean state]
    assert prime(5); // @tac 1259-1265
      // [TACTIC: decide]
    // UNCITED-APPLIED internal ×1 [exec 159 1259-1265]: applications made inside the tactic's own automation, not stated — machinery/glue: of_decide_eq_true ×1
    // have h₃₂ : f ( 5 ) == 5  [type from Lean state]
    assert (f(Rat.of_int(5)) == 5.0) by { // @tac 1321-1369 // @tac 1376-1466 // @tac 1376-1447 // @tac 1376-1428 // @tac 1376-1399 // @tac 1410-1428
      // have h₃₃ : f ( 5 ) == 5  [type from Lean state]
      assert (f(Rat.of_int(5)) == 5.0) by {
        // [TACTIC: exact h₁ ( 5 , h₃₁ )]
        assert (f(Rat.of_int(5)) == (5 as real));  // instance of h₁ (Lean state)
      }
      // [TACTIC: «_<;>_» at h₃₃ ⊢ <;> simp_all [ h₃₃ ] simp_all [ h₃₃ ] simp_all [ h₃₃ ] <;> norm_num norm_num <;> linarith linarith]
      // [TACTIC: «Norm_num[_]At___» at h₃₃ ⊢]
      // UNCITED-APPLIED internal ×4 [exec 212 1410-1428]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, Eq.trans ×1, congrArg ×1, eq_self ×1
    }
    // [TACTIC: exact h₃₂]
    assert (f(Rat.of_int(5)) == 5.0);
  }
  // have h₄ : f ( 25 ) == 10  [type from Lean state]
  assert (f(Rat.of_int(25)) == 10.0) by { // @tac 1538-1598 // @tac 1603-1615
    // have h₄₁ : f ( 25 ) == f ( 5 * 5 )  [type from Lean state]
    assert (f(Rat.of_int(25)) == f(Rat.mul(Rat.of_int(5), Rat.of_int(5)))); // @tac 1590-1598
      // [TACTIC: «Norm_num[_]At___»]
    // UNCITED-APPLIED internal ×8 [exec 258 1590-1598]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, Eq.trans ×1, congrArg ×1, Mathlib.Meta.NormNum.IsNat.to_eq ×1 (+4 more heads, ×4)
    // [TACTIC: rwSeq [ h₄₁ ]]
    // UNCITED-APPLIED congrArg(f (25 : ℚ), f ((5 : ℚ) * (5 : ℚ)), fun (_a : ℝ) => _a = (10 : ℝ)): no library counterpart (not stated) [exec 263 1603-1615]
    assert (f(Rat.mul(Rat.of_int(5), Rat.of_int(5))) == 10.0) by {  // sub-goal before `have` (Lean state) // @tac 1620-1718 // @tac 1723-1735
      // have h₄₂ : f ( 5 * 5 ) == f ( 5 ) + f ( 5 )  [type from Lean state]
      assert (f(Rat.mul(Rat.of_int(5), Rat.of_int(5))) == (f(Rat.of_int(5)) + f(Rat.of_int(5)))) by {
        assert Rat.gt(Rat.of_int(5), Rat.of_int(0)) by {  // sub-goal of `by` (Lean state) // @tac 1693-1701
          // [TACTIC: «Norm_num[_]At___»]
          // UNCITED-APPLIED internal ×5 [exec 304 1693-1701]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
        }
        assert Rat.gt(Rat.of_int(5), Rat.of_int(0)) by {  // sub-goal of `by` (Lean state) // @tac 1709-1717
          // [TACTIC: «Norm_num[_]At___»]
          // UNCITED-APPLIED internal ×5 [exec 309 1709-1717]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
        }
        // [TACTIC: exact h₀ ( 5 , ( by norm_num norm_num ) , 5 , ( by norm_num norm_num ) )]
        assert (f(Rat.mul(Rat.of_int(5), Rat.of_int(5))) == (f(Rat.of_int(5)) + f(Rat.of_int(5))));  // instance of h₀ (Lean state)
      }
      // [TACTIC: rwSeq [ h₄₂ ]]
      // UNCITED-APPLIED congrArg(f ((5 : ℚ) * (5 : ℚ)), f (5 : ℚ) + f (5 : ℚ), fun (_a : ℝ) => _a = (10 : ℝ)): no library counterpart (not stated) [exec 316 1723-1735]
      assert ((f(Rat.of_int(5)) + f(Rat.of_int(5))) == 10.0) by {  // sub-goal before `norm_num` (Lean state) // @tac 1740-1772 // @tac 1740-1755
        // [TACTIC: «_<;>_» [ h₃ ] norm_num [ h₃ ] <;> linarith linarith]
        // [TACTIC: «Norm_num[_]At___» [ h₃ ]]
        // `norm_num` closed the goal; the rest of the chain did not run
        // UNCITED-APPLIED internal ×11 [exec 348 1740-1755]: applications made inside the tactic's own automation, not stated — machinery/glue: Eq.trans ×2, congrArg ×2, of_eq_true ×1, congr ×1 (+5 more heads, ×5)
      }
    }
  }
  // have h₅ : f ( 11 ) == 11  [type from Lean state]
  assert (f(Rat.of_int(11)) == 11.0) by { // @tac 1826-1866 // @tac 1871-2072 // @tac 2077-2090
    // have h₅₁ : Nat.Prime ( 11 )  [type from Lean state]
    assert prime(11); // @tac 1860-1866
      // [TACTIC: decide]
    // UNCITED-APPLIED internal ×1 [exec 387 1860-1866]: applications made inside the tactic's own automation, not stated — machinery/glue: of_decide_eq_true ×1
    // have h₅₂ : f ( 11 ) == 11  [type from Lean state]
    assert (f(Rat.of_int(11)) == 11.0) by { // @tac 1924-1975 // @tac 1982-2072 // @tac 1982-2053 // @tac 1982-2034 // @tac 1982-2005 // @tac 2016-2034
      // have h₅₃ : f ( 11 ) == 11  [type from Lean state]
      assert (f(Rat.of_int(11)) == 11.0) by {
        // [TACTIC: exact h₁ ( 11 , h₅₁ )]
        assert (f(Rat.of_int(11)) == (11 as real));  // instance of h₁ (Lean state)
      }
      // [TACTIC: «_<;>_» at h₅₃ ⊢ <;> simp_all [ h₅₃ ] simp_all [ h₅₃ ] simp_all [ h₅₃ ] <;> norm_num norm_num <;> linarith linarith]
      // [TACTIC: «Norm_num[_]At___» at h₅₃ ⊢]
      // UNCITED-APPLIED internal ×4 [exec 440 2016-2034]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, Eq.trans ×1, congrArg ×1, eq_self ×1
    }
    // [TACTIC: exact h₅₂]
    assert (f(Rat.of_int(11)) == 11.0);
  }
  // have h₆ : f ( 25 / 11 ) == - 1  [type from Lean state]
  assert (f(Rat.div(Rat.of_int(25), Rat.of_int(11))) == -(1.0)) by { // @tac 2149-2278 // @tac 2283-2352 // @tac 2357-2434 // @tac 2439-2516 // @tac 2521-2579 // @tac 2521-2562 // @tac 2521-2545
    // have h₆₁ : f ( ( 25 / 11 * 11 ) ) == f ( 25 / 11 ) + f ( 11 )  [type from Lean state]
    assert (f(Rat.mul(Rat.div(Rat.of_int(25), Rat.of_int(11)), Rat.of_int(11))) == (f(Rat.div(Rat.of_int(25), Rat.of_int(11))) + f(Rat.of_int(11)))) by {
      assert Rat.gt(Rat.div(Rat.of_int(25), Rat.of_int(11)), Rat.of_int(0)) by {  // sub-goal of `by` (Lean state) // @tac 2252-2260
        // [TACTIC: «Norm_num[_]At___»]
        // UNCITED-APPLIED internal ×12 [exec 484 2252-2260]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isRat ×3, Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1 (+4 more heads, ×4)
      }
      assert Rat.gt(Rat.of_int(11), Rat.of_int(0)) by {  // sub-goal of `by` (Lean state) // @tac 2269-2277
        // [TACTIC: «Norm_num[_]At___»]
        // UNCITED-APPLIED internal ×5 [exec 489 2269-2277]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
      }
      // [TACTIC: exact h₀ ( 25 / 11 , ( by norm_num norm_num ) , 11 , ( by norm_num norm_num ) )]
      assert (f(Rat.mul(Rat.div(Rat.of_int(25), Rat.of_int(11)), Rat.of_int(11))) == (f(Rat.div(Rat.of_int(25), Rat.of_int(11))) + f(Rat.of_int(11))));  // instance of h₀ (Lean state)
    }
    // have h₆₂ : f ( ( 25 / 11 * 11 ) ) == f ( 25 )  [type from Lean state]
    assert (f(Rat.mul(Rat.div(Rat.of_int(25), Rat.of_int(11)), Rat.of_int(11))) == f(Rat.of_int(25))); // @tac 2344-2352
      // [TACTIC: «Norm_num[_]At___»]
    // UNCITED-APPLIED internal ×16 [exec 508 2344-2352]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isRat_mul ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1 (+9 more heads, ×9)
    // have h₆₃ : f ( 25 / 11 ) + f ( 11 ) == f ( 25 )  [type from Lean state]
    assert ((f(Rat.div(Rat.of_int(25), Rat.of_int(11))) + f(Rat.of_int(11))) == f(Rat.of_int(25))) by { // @tac 2426-2434
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2426-2434 exec 525)
      // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `(1 : ℝ) * f ((25 / 11 : ℚ) * (11 : ℚ)) - ((1 : ℝ) * f (25 / 11 : ℚ) + (1 : ℝ) * f (11 : ℚ)) + -((1 : ℝ) * f ((25 / 11 :…` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
      // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `-((1 : ℝ) * f ((25 / 11 : ℚ) * (11 : ℚ)) - ((1 : ℝ) * f (25 / 11 : ℚ) + (1 : ℝ) * f (11 : ℚ))) + ((1 : ℝ) * f ((25 / 11…` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
      cert_identity_5(f);  // cert: Linarith.lt_of_eq_of_lt
      cert_identity_6(f);  // cert: Linarith.lt_of_eq_of_lt
      // UNCITED-APPLIED internal ×28 [exec 525 2426-2434]: applications made inside the tactic's own automation, not stated — CancelDenoms.sub_subst ×4, sub_eq_zero_of_eq ×2, neg_eq_zero ×2, sub_neg_of_lt ×2, CancelDenoms.add_subst ×1; machinery/glue: congrArg ×6, Linarith.without_one_mul ×4, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_eq_of_eq ×2 (+3 more heads, ×3)
      // UNCITED-APPLIED internal ×90 [exec 526 2426-2434]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×7, Mathlib.Tactic.Ring.add_pf_zero_add ×5, Mathlib.Tactic.Ring.neg_add ×5, Mathlib.Tactic.Ring.neg_mul ×5 (+29 more heads, ×68) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×91 [exec 527 2426-2434]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×6, Mathlib.Tactic.Ring.neg_mul ×6, Mathlib.Tactic.Ring.add_pf_add_lt ×5, Mathlib.Tactic.Ring.mul_congr ×4 (+30 more heads, ×70) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 526, 527)]
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 526, 527)]
    }
    // have h₆₄ : f ( 25 / 11 ) == f ( 25 ) - f ( 11 )  [type from Lean state]
    assert (f(Rat.div(Rat.of_int(25), Rat.of_int(11))) == (f(Rat.of_int(25)) - f(Rat.of_int(11)))) by { // @tac 2508-2516
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2508-2516 exec 544)
      // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `(1 : ℝ) * f ((25 / 11 : ℚ) * (11 : ℚ)) - ((1 : ℝ) * f (25 / 11 : ℚ) + (1 : ℝ) * f (11 : ℚ)) + -((1 : ℝ) * f ((25 / 11 :…` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
      // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `-((1 : ℝ) * f ((25 / 11 : ℚ) * (11 : ℚ)) - ((1 : ℝ) * f (25 / 11 : ℚ) + (1 : ℝ) * f (11 : ℚ))) + ((1 : ℝ) * f ((25 / 11…` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
      cert_identity_7(f);  // cert: Linarith.lt_of_eq_of_lt
      cert_identity_8(f);  // cert: Linarith.lt_of_eq_of_lt
      // UNCITED-APPLIED internal ×29 [exec 544 2508-2516]: applications made inside the tactic's own automation, not stated — CancelDenoms.sub_subst ×5, sub_eq_zero_of_eq ×2, neg_eq_zero ×2, sub_neg_of_lt ×2, CancelDenoms.add_subst ×1; machinery/glue: congrArg ×6, Linarith.without_one_mul ×4, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_eq_of_eq ×2 (+3 more heads, ×3)
      // UNCITED-APPLIED internal ×95 [exec 545 2508-2516]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×6, Mathlib.Tactic.Ring.add_pf_zero_add ×6, Mathlib.Tactic.Ring.neg_add ×6, Mathlib.Tactic.Ring.neg_mul ×6 (+30 more heads, ×71) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×95 [exec 546 2508-2516]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×7, Mathlib.Tactic.Ring.neg_mul ×6, Mathlib.Tactic.Ring.add_pf_add_zero ×5, Mathlib.Tactic.Ring.add_pf_add_lt ×5 (+30 more heads, ×72) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 545, 546)]
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 545, 546)]
    }
    // [TACTIC: «_<;>_» [ h₆₄ , h₄ , h₅ ] rw [ h₆₄ , h₄ , h₅ ] <;> norm_num norm_num <;> linarith linarith]
    // [TACTIC: choice [ h₆₄ , h₄ , h₅ ] rw [ h₆₄ , h₄ , h₅ ]]
    // UNCITED-APPLIED congrArg(f (25 / 11 : ℚ), f (25 : ℚ) - f (11 : ℚ), fun (_a : ℝ) => _a = (-1 : ℝ)): no library counterpart (not stated) [exec 561 2521-2545]
    // UNCITED-APPLIED congrArg(f (25 : ℚ), (10 : ℝ), fun (_a : ℝ) => _a - f (11 : ℚ) = (-1 : ℝ)): no library counterpart (not stated) [exec 561 2521-2545]
    // UNCITED-APPLIED congrArg(f (11 : ℚ), (11 : ℝ), fun (_a : ℝ) => (10 : ℝ) - _a = (-1 : ℝ)): no library counterpart (not stated) [exec 561 2521-2545]
    assert ((10.0 - 11.0) == -(1.0)) by {  // sub-goal of `norm_num` (Lean state) // @tac 2554-2562
      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
      // UNCITED-APPLIED internal ×11 [exec 598 2554-2562]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×3, Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
    }
  }
  // have h₇ : f ( 25 / 11 ) < 0  [type from Lean state]
  assert (f(Rat.div(Rat.of_int(25), Rat.of_int(11))) < 0.0) by { // @tac 2629-2672 // @tac 2629-2655 // @tac 2629-2638
    // [TACTIC: «_<;>_» [ h₆ ] rw [ h₆ ] <;> norm_num norm_num <;> linarith linarith]
    // [TACTIC: choice [ h₆ ] rw [ h₆ ]]
    // UNCITED-APPLIED congrArg(f (25 / 11 : ℚ), (-1 : ℝ), fun (_a : ℝ) => _a < (0 : ℝ)): no library counterpart (not stated) [exec 635 2629-2638]
    assert (-(1.0) < 0.0) by {  // sub-goal of `norm_num` (Lean state) // @tac 2647-2655
      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
      // UNCITED-APPLIED internal ×8 [exec 670 2647-2655]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.to_isInt ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1 (+2 more heads, ×2) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
    }
  }
  // [TACTIC: exact h₇]
  assert (f(Rat.div(Rat.of_int(25), Rat.of_int(11))) < 0.0);
}



// ===== closed lemma for line 105 (from closed/amc12a_2021_p18-105.dfy) =====

lemma {:induction false} vc_amc12a_2021_p18_L105(f: Rat.rat -> real)
  requires forall x_1: Rat.rat :: Rat.gt(x_1, Rat.of_int(0)) ==> (forall y_2: Rat.rat :: Rat.gt(y_2, Rat.of_int(0)) ==> f.requires(Rat.mul(x_1, y_2)) && f.requires(x_1) && f.requires(y_2))
  requires forall x_1: Rat.rat :: Rat.gt(x_1, Rat.of_int(0)) ==> (forall y_2: Rat.rat :: Rat.gt(y_2, Rat.of_int(0)) ==> f(Rat.mul(x_1, y_2)) == f(x_1) + f(y_2))
  requires forall p_1: nat :: prime(p_1) ==> f.requires(Rat.of_int(p_1))
  requires forall p_1: nat :: prime(p_1) ==> f(Rat.of_int(p_1)) == (p_1 as real)
  requires Rat.of_int(1).Rational?
  requires Rat.mul(Rat.of_int(1), Rat.of_int(1)).Rational?
  requires f(Rat.mul(Rat.of_int(1), Rat.of_int(1))) == f(Rat.of_int(1)) + f(Rat.of_int(1))
  ensures   f(Rat.mul(Rat.of_int(1), Rat.of_int(1))) == f(Rat.of_int(1))
{
  RatMulOfIntOfInt(1, 1);  // [ADDED]
}

