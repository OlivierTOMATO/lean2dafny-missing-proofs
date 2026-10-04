// ════════════════════════════════════════════════════════════
// MECHANICAL TRANSLATION (emitter v2) of ast_cache_v2/amc12a_2013_p4.json
// Each Lean `have` → `assert ... by {}` at the same depth;
// quantified haves → forall statements. Typed pipeline only.
// ════════════════════════════════════════════════════════════

include "../../library/library_new.dfy"

// ──────────────────────────────────────────────────
// certificate identity for `h₀`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_1()
  ensures (-((1410822998353003959377305437607135621966623992326588662346927395011501581998944641667063176785722904475786401348387794256011819779108522391256184450457583434208829306617597296648463718173573671380118654853900118975876490817286820216184631615985250557594480597706699556564311608593899253549500385959571447988357147553601026116842039109319647955774686533637271585382891018205454435928919424513162459750201834688455431185944843630900068870060275915794934449363788905519779321244749890017199087090277956600898114669572825278812349887521981085805550908832349698155751777904511091967811159495829727450919272972288.0 * 1.0)) + (Real.pow(2.0, 2014) - Real.pow(2.0, 2012))) == 0.0
{ }

// statement: Lean elaborated type (v3, stmt_cache) — requires/ensures below
lemma amc12a_2013_p4()
  ensures (Real.div((Real.pow(2.0, 2014) + Real.pow(2.0, 2012)), (Real.pow(2.0, 2014) - Real.pow(2.0, 2012))) == (5.0 / 3.0)) // @tac 435-795 // @tac 801-1644 // @tac 1650-1881 // @tac 1887-2020 // @tac 2026-2036
{
  // have h₀ : 2 ^ 2014 - 2 ^ 2012 > 0  [type from Lean state]
  assert ((Real.pow(2.0, 2014) - Real.pow(2.0, 2012)) > 0.0) by { // @tac 497-722 // @tac 787-795
    // have h₁ : 2 ^ 2014 > 2 ^ 2012  [type from Lean state]
    assert (Real.pow(2.0, 2014) > Real.pow(2.0, 2012)) by { // @tac 667-722 // @tac 667-703
      assert (1.0 < 2.0) by {  // sub-goal of `by` (Lean state) // @tac 694-702
        // [TACTIC: «Norm_num[_]At___»]
        NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
        // UNCITED-APPLIED internal ×5 [exec 46 694-702]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      }
      // [TACTIC: «_<;>_» pow_lt_pow_right ( by norm_num norm_num ) apply pow_lt_pow_right ( by norm_num norm_num ) <;> norm_num norm_num]
      // [TACTIC: choice pow_lt_pow_right ( by norm_num norm_num ) apply pow_lt_pow_right ( by norm_num norm_num )]
      assert (2012 < 2014);  // sub-goal of `norm_num` (Lean state) // @tac 714-722
      // UNCITED-APPLIED internal ×5 [exec 55 714-722]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
      assert (1.0 < (2.0)) && ((2012) < (2014));  // precondition of PowLtPowRight (Lean: pow_lt_pow_right)
      PowLtPowRight(2.0, 2012, 2014);  // cite: pow_lt_pow_right
    }
    // [TACTIC: «Linarith[_]At___»]
    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 787-795 exec 56)
    // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(1410822998353003959377305437607135621966623992326588662346927395011501581998944641667063176785722904475786401348387794…` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 1.0); (1410822998353003959377305437607135621966623992326588662346927395011501581998944641667063176785722904475786401348387794256011819779108522391256184450457583434208829306617597296648463718173573671380118654853900118975876490817286820216184631615985250557594480597706699556564311608593899253549500385959571447988357147553601026116842039109319647955774686533637271585382891018205454435928919424513162459750201834688455431185944843630900068870060275915794934449363788905519779321244749890017199087090277956600898114669572825278812349887521981085805550908832349698155751777904511091967811159495829727450919272972288.0 > 0.0)
    cert_identity_1();  // cert: add_lt_of_neg_of_le
    // UNCITED-APPLIED internal ×8 [exec 56 787-795]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, zero_lt_one ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Linarith.mul_neg ×1
    // UNCITED-APPLIED internal ×89 [exec 57 787-795]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNatPowT.trans ×8, Mathlib.Meta.NormNum.IsNatPowT.bit1 ×8, Mathlib.Meta.NormNum.isNat_ofNat ×6, Mathlib.Tactic.Ring.cast_pos ×5 (+34 more heads, ×62) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
    NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 57)]
    NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 58 / `ring1` exec 57)]
    // UNCITED-APPLIED internal ×5 [exec 58 787-795]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
  }
  // have h₁ : ( 2 ^ 2014 + 2 ^ 2012 ) / ( 2 ^ 2014 - 2 ^ 2012 ) == 5 / 3  [type from Lean state]
  assert (Real.div((Real.pow(2.0, 2014) + Real.pow(2.0, 2012)), (Real.pow(2.0, 2014) - Real.pow(2.0, 2012))) == (5.0 / 3.0)) by { // @tac 917-1062 // @tac 1067-1076
    // have h₂ : 2 ^ 2014 == 4 * 2 ^ 2012  [type from Lean state]
    assert (Real.pow(2.0, 2014) == (4.0 * Real.pow(2.0, 2012))); // @tac 981-1062 // @tac 981-1037 // @tac 981-988
    // UNCITED-APPLIED internal ×67 [exec 101 981-988]: applications made inside the tactic's own automation, not stated — add_zero ×1; machinery/glue: Mathlib.Meta.NormNum.IsNatPowT.trans ×8, Mathlib.Meta.NormNum.IsNatPowT.bit1 ×8, Mathlib.Meta.NormNum.IsNat.of_raw ×5, Mathlib.Tactic.Ring.cast_pos ×4 (+22 more heads, ×41)
      // [TACTIC: «_<;>_» ring_nf <;> norm_num [ pow_add , pow_mul , mul_assoc ] norm_num [ pow_add , pow_mul , mul_assoc ] <;> linarith linarith]
      // [TACTIC: Ring_nfAt]
      // `ring_nf` closed the goal; the rest of the chain did not run
    // [TACTIC: rwSeq [ h₂ ]]
    // UNCITED-APPLIED congrArg((2 : ℝ) ^ (2014 : ℕ), (4 : ℝ) * (2 : ℝ) ^ (2012 : ℕ), fun (_a : ℝ) => (_a + (2 : ℝ) ^ (2012 : ℕ)) / (_a - (2 : ℝ) ^ (2012 :…): no library counterpart (not stated) [exec 118 1067-1076]
    assert (Real.div(((4.0 * Real.pow(2.0, 2012)) + Real.pow(2.0, 2012)), ((4.0 * Real.pow(2.0, 2012)) - Real.pow(2.0, 2012))) == (5.0 / 3.0)) by {  // sub-goal before `have` (Lean state) // @tac 1081-1208 // @tac 1213-1340 // @tac 1345-1360
      // have h₃ : 4 * 2 ^ 2012 + 2 ^ 2012 == 5 * 2 ^ 2012  [type from Lean state]
      assert (((4.0 * Real.pow(2.0, 2012)) + Real.pow(2.0, 2012)) == (5.0 * Real.pow(2.0, 2012))); // @tac 1176-1208 // @tac 1176-1183
      // UNCITED-APPLIED internal ×70 [exec 166 1176-1183]: applications made inside the tactic's own automation, not stated — add_zero ×1; machinery/glue: Mathlib.Meta.NormNum.IsNatPowT.trans ×8, Mathlib.Meta.NormNum.IsNatPowT.bit1 ×7, Mathlib.Meta.NormNum.IsNat.of_raw ×5, Mathlib.Tactic.Ring.cast_pos ×4 (+26 more heads, ×45)
        // [TACTIC: «_<;>_» ring_nf <;> linarith linarith]
        // [TACTIC: Ring_nfAt]
        // `ring_nf` closed the goal; the rest of the chain did not run
      // have h₄ : 4 * 2 ^ 2012 - 2 ^ 2012 == 3 * 2 ^ 2012  [type from Lean state]
      assert (((4.0 * Real.pow(2.0, 2012)) - Real.pow(2.0, 2012)) == (3.0 * Real.pow(2.0, 2012))); // @tac 1308-1340 // @tac 1308-1315
      // UNCITED-APPLIED internal ×80 [exec 194 1308-1315]: applications made inside the tactic's own automation, not stated — add_zero ×1; machinery/glue: Mathlib.Meta.NormNum.IsNatPowT.trans ×8, Mathlib.Meta.NormNum.IsNatPowT.bit1 ×7, Mathlib.Meta.NormNum.IsNat.of_raw ×5, Mathlib.Tactic.Ring.cast_pos ×4 (+35 more heads, ×55)
        // [TACTIC: «_<;>_» ring_nf <;> linarith linarith]
        // [TACTIC: Ring_nfAt]
        // `ring_nf` closed the goal; the rest of the chain did not run
      // [TACTIC: rwSeq [ h₃ , h₄ ]]
      // UNCITED-APPLIED congrArg((4 : ℝ) * (2 : ℝ) ^ (2012 : ℕ) + (2 : ℝ) ^ (2012 : ℕ), (5 : ℝ) * (2 : ℝ) ^ (2012 : ℕ), fun (_a : ℝ) => _a / ((4 : ℝ) * (2 : ℝ) ^ (2012 : ℕ) - (2 : ℝ) ^ (201…): no library counterpart (not stated) [exec 205 1345-1360]
      // UNCITED-APPLIED congrArg((4 : ℝ) * (2 : ℝ) ^ (2012 : ℕ) - (2 : ℝ) ^ (2012 : ℕ), (3 : ℝ) * (2 : ℝ) ^ (2012 : ℕ), fun (_a : ℝ) => (5 : ℝ) * (2 : ℝ) ^ (2012 : ℕ) / _a = (5 / 3 : ℝ)): no library counterpart (not stated) [exec 205 1345-1360]
      assert (Real.div((5.0 * Real.pow(2.0, 2012)), (3.0 * Real.pow(2.0, 2012))) == (5.0 / 3.0)) by {  // sub-goal before `have` (Lean state) // @tac 1365-1589 // @tac 1594-1644 // @tac 1594-1623 // @tac 1594-1603
        // have h₅ : 5 * 2 ^ 2012 / 3 * 2 ^ 2012 == 5 / 3  [type from Lean state]
        assert (Real.div((5.0 * Real.pow(2.0, 2012)), (3.0 * Real.pow(2.0, 2012))) == (5.0 / 3.0)) by { // @tac 1465-1516 // @tac 1523-1589 // @tac 1523-1564 // @tac 1523-1540
          // have h₆ : 2 ^ 2012 != 0  [type from Lean state]
          assert (Real.pow(2.0, 2012) != 0.0) by { // @tac 1506-1516
            // [TACTIC: Positivity]
            // positivity proof (Lean execution 1506-1516 exec 265): nothing of it stated; Lean's records:
            // cert: pow_pos piece `(0.0 < Real.pow(2.0, 2012))` not stated (only `0 < a ^ 2` of an atom a is lowered)
            // UNCITED-APPLIED internal ×3 [exec 265 1506-1516]: applications made inside the tactic's own automation, not stated — ne_of_gt ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: pow_pos [Lean recorded ×1])
            assert (0.0 < (2.0));  // precondition of PowPos (Lean: pow_pos)
            PowPos(2.0, 2012);  // cite: pow_pos [applied by the tactic, not named in it]
          }
          // [TACTIC: «_<;>_» [ h₆ ] field_simp [ h₆ ] <;> ring_nf ring_nf <;> linarith linarith]
          // [TACTIC: choice [ h₆ ] field_simp [ h₆ ]]
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
          // UNCITED-APPLIED internal ×30 [exec 276 1523-1540]: applications made inside the tactic's own automation, not stated — div_mul_eq_mul_div ×1; machinery/glue: Mathlib.Meta.NormNum.IsNatPowT.trans ×8, Mathlib.Meta.NormNum.IsNatPowT.bit1 ×7, Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Meta.NormNum.IsNatPowT.bit0 ×3 (+6 more heads, ×7) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          assert (((5.0 * Real.pow(2.0, 2012)) * 3.0) == (5.0 * (3.0 * Real.pow(2.0, 2012))));  // sub-goal of `ring_nf` (Lean state) // @tac 1557-1564
          // UNCITED-APPLIED internal ×72 [exec 285 1557-1564]: applications made inside the tactic's own automation, not stated — add_zero ×1; machinery/glue: Mathlib.Meta.NormNum.IsNatPowT.trans ×8, Mathlib.Meta.NormNum.IsNatPowT.bit1 ×7, Mathlib.Meta.NormNum.IsNat.of_raw ×5, Mathlib.Tactic.Ring.mul_congr ×4 (+22 more heads, ×47)
          vc_amc12a_2013_p4_L75();  /* [IN-FILE CHECK] the closed lemma for line 75 */
        }
        // [TACTIC: «_<;>_» [ h₅ ] rw [ h₅ ] <;> ring_nf ring_nf <;> linarith linarith]
        // [TACTIC: rwSeq [ h₅ ]]
        // `rw` closed the goal; the rest of the chain did not run
        // UNCITED-APPLIED congrArg((5 : ℝ) * (2 : ℝ) ^ (2012 : ℕ) / ((3 : ℝ) * (2 : ℝ) ^ (2012 : ℕ)), (5 / 3 : ℝ), fun (_a : ℝ) => _a = (5 / 3 : ℝ)): no library counterpart (not stated) [exec 306 1594-1603]
      }
    }
  }
  // have h₂ : 2 ^ 2014 + 2 ^ 2012 / 2 ^ 2014 - 2 ^ 2012 == 5 / 3  [type from Lean state]
  assert (Real.div((Real.pow(2.0, 2014) + Real.pow(2.0, 2012)), (Real.pow(2.0, 2014) - Real.pow(2.0, 2012))) == (5.0 / 3.0)); // @tac 1746-1881 // @tac 1746-1856 // @tac 1746-1824
    // [TACTIC: «_<;>_» [ pow_succ , add_assoc , mul_assoc , mul_comm , mul_left_comm ] at h₁ ⊢ <;> ring_nf at h₁ ⊢ <;> simpa using h₁ simpa using h₁]
    // [TACTIC: «Norm_num[_]At___» [ pow_succ , add_assoc , mul_assoc , mul_comm , mul_left_comm ] at h₁ ⊢]
    // UNCITED pow_succ: no Lean instance recorded (arguments unknown), not guessed
    // UNCITED add_assoc: no Lean instance recorded (arguments unknown), not guessed
    // UNCITED mul_assoc: no Lean instance recorded (arguments unknown), not guessed
    // UNCITED mul_comm: no Lean instance recorded (arguments unknown), not guessed
    // UNCITED mul_left_comm: no Lean instance recorded (arguments unknown), not guessed
    // UNCITED-APPLIED internal ×47 [exec 365 1746-1824]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNatPowT.trans ×8, Mathlib.Meta.NormNum.IsNatPowT.bit1 ×8, Mathlib.Meta.NormNum.isNat_ofNat ×5, Mathlib.Meta.NormNum.IsNat.to_isRat ×4 (+13 more heads, ×22)
    // `norm_num` closed the goal; the rest of the chain did not run
  // have h₃ : ( 2 ^ 2014 + 2 ^ 2012 ) / ( 2 ^ 2014 - 2 ^ 2012 ) == 5 / 3  [type from Lean state]
  assert (Real.div((Real.pow(2.0, 2014) + Real.pow(2.0, 2012)), (Real.pow(2.0, 2014) - Real.pow(2.0, 2012))) == (5.0 / 3.0)); // @tac 1971-2020 // @tac 1971-1991
    // [TACTIC: «_<;>_» [ h₂ ] at * <;> simpa using h₂ simpa using h₂]
    // [TACTIC: «Norm_num[_]At___» [ h₂ ] at *]
    // UNCITED-APPLIED internal ×47 [exec 399 1971-1991]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNatPowT.trans ×8, Mathlib.Meta.NormNum.IsNatPowT.bit1 ×8, Mathlib.Meta.NormNum.isNat_ofNat ×5, Mathlib.Meta.NormNum.IsNat.to_isRat ×4 (+13 more heads, ×22)
    // `norm_num` closed the goal; the rest of the chain did not run
  // [TACTIC: apply h₃]
}



// ===== closed lemma for line 75 (from closed/amc12a_2013_p4-75.dfy) =====

lemma {:induction false} vc_amc12a_2013_p4_L75()
  requires 0 <= 2014
  requires 0 <= 2012
  requires Real.pow(2.0, 2014) - Real.pow(2.0, 2012) > 0.0
  requires Real.pow(2.0, 2014) == 4.0 * Real.pow(2.0, 2012)
  requires 4.0 * Real.pow(2.0, 2012) + Real.pow(2.0, 2012) == 5.0 * Real.pow(2.0, 2012)
  requires 4.0 * Real.pow(2.0, 2012) - Real.pow(2.0, 2012) == 3.0 * Real.pow(2.0, 2012)
  requires (0 as real) == 0.0
  ensures   Real.div(5.0 * Real.pow(2.0, 2012), 3.0 * Real.pow(2.0, 2012)) == 5.0 / 3.0
{
  assert Real.pow(2.0, 1) == 2.0;  // [ADDED]
  PowAdd(2.0, 1, 1); assert Real.pow(2.0, 2) == 4.0;  // [ADDED]
  PowAdd(2.0, 2, 1); assert Real.pow(2.0, 3) == 8.0;  // [ADDED]
  PowAdd(2.0, 3, 3); assert Real.pow(2.0, 6) == 64.0;  // [ADDED]
  PowAdd(2.0, 6, 1); assert Real.pow(2.0, 7) == 128.0;  // [ADDED]
  PowAdd(2.0, 7, 7); assert Real.pow(2.0, 14) == 16384.0;  // [ADDED]
  PowAdd(2.0, 14, 1); assert Real.pow(2.0, 15) == 32768.0;  // [ADDED]
  PowAdd(2.0, 15, 15); assert Real.pow(2.0, 30) == 1073741824.0;  // [ADDED]
  PowAdd(2.0, 30, 1); assert Real.pow(2.0, 31) == 2147483648.0;  // [ADDED]
  PowAdd(2.0, 31, 31); assert Real.pow(2.0, 62) == 4611686018427387904.0;  // [ADDED]
  PowAdd(2.0, 62, 62); assert Real.pow(2.0, 124) == 21267647932558653966460912964485513216.0;  // [ADDED]
  PowAdd(2.0, 124, 1); assert Real.pow(2.0, 125) == 42535295865117307932921825928971026432.0;  // [ADDED]
  PowAdd(2.0, 125, 125); assert Real.pow(2.0, 250) == 1809251394333065553493296640760748560207343510400633813116524750123642650624.0;  // [ADDED]
  PowAdd(2.0, 250, 1); assert Real.pow(2.0, 251) == 3618502788666131106986593281521497120414687020801267626233049500247285301248.0;  // [ADDED]
  PowAdd(2.0, 251, 251); assert Real.pow(2.0, 502) == 13093562431584567480052758787310396608866568184172259157933165472384535185618698219533080369303616628603546736510240284036869026183541572213314110357504.0;  // [ADDED]
  PowAdd(2.0, 502, 1); assert Real.pow(2.0, 503) == 26187124863169134960105517574620793217733136368344518315866330944769070371237396439066160738607233257207093473020480568073738052367083144426628220715008.0;  // [ADDED]
  PowAdd(2.0, 503, 503); assert Real.pow(2.0, 1006) == 685765508599211085406992031398401158759299079491541508764000248557024672719959118395646962442045349201660590667234013968119772982843080987903012964780708787451812337588750783066948774723991753080189067657794974398949244241113521123786594812548932026532556574571938698730267509225767960757581162756440064.0;  // [ADDED]
  PowAdd(2.0, 1006, 1006); assert Real.pow(2.0, 2012) == 470274332784334653125768479202378540655541330775529554115642465003833860666314880555687725595240968158595467116129264752003939926369507463752061483485861144736276435539199098882821239391191223793372884951300039658625496939095606738728210538661750185864826865902233185521437202864633084516500128653190482662785715851200342038947346369773215985258228844545757195127630339401818145309639808171054153250067278229485143728648281210300022956686758638598311483121262968506593107081583296672399695696759318866966038223190941759604116629173993695268516969610783232718583925968170363989270386498609909150306424324096.0;  // [ADDED]
          // have h₆ : 2 ^ 2012 != 0  [type from Lean state]
          assert (Real.pow(2.0, 2012) != 0.0) by { // @tac 1506-1516
            // [TACTIC: Positivity]
            // positivity proof (Lean execution 1506-1516 exec 265): nothing of it stated; Lean's records:
            // cert: pow_pos piece `(0.0 < Real.pow(2.0, 2012))` not stated (only `0 < a ^ 2` of an atom a is lowered)
            // UNCITED-APPLIED internal ×3 [exec 265 1506-1516]: applications made inside the tactic's own automation, not stated — ne_of_gt ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: pow_pos [Lean recorded ×1])
            assert (0.0 < (2.0));  // precondition of PowPos (Lean: pow_pos)
            PowPos(2.0, 2012);  // cite: pow_pos [applied by the tactic, not named in it]
          }
          // [TACTIC: «_<;>_» [ h₆ ] field_simp [ h₆ ] <;> ring_nf ring_nf <;> linarith linarith]
          // [TACTIC: choice [ h₆ ] field_simp [ h₆ ]]
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
          // UNCITED-APPLIED internal ×30 [exec 276 1523-1540]: applications made inside the tactic's own automation, not stated — div_mul_eq_mul_div ×1; machinery/glue: Mathlib.Meta.NormNum.IsNatPowT.trans ×8, Mathlib.Meta.NormNum.IsNatPowT.bit1 ×7, Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Meta.NormNum.IsNatPowT.bit0 ×3 (+6 more heads, ×7) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          assert (((5.0 * Real.pow(2.0, 2012)) * 3.0) == (5.0 * (3.0 * Real.pow(2.0, 2012))));  // sub-goal of `ring_nf` (Lean state) // @tac 1557-1564
          // UNCITED-APPLIED internal ×72 [exec 285 1557-1564]: applications made inside the tactic's own automation, not stated — add_zero ×1; machinery/glue: Mathlib.Meta.NormNum.IsNatPowT.trans ×8, Mathlib.Meta.NormNum.IsNatPowT.bit1 ×7, Mathlib.Meta.NormNum.IsNat.of_raw ×5, Mathlib.Tactic.Ring.mul_congr ×4 (+22 more heads, ×47)
}

