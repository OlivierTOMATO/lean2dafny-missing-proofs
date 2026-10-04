// ════════════════════════════════════════════════════════════
// MECHANICAL TRANSLATION (emitter v2) of ast_cache_v2/imo_1959_p1.json
// Each Lean `have` → `assert ... by {}` at the same depth;
// quantified haves → forall statements. Typed pipeline only.
// ════════════════════════════════════════════════════════════

include "../../library/library_new.dfy"

// statement: Lean elaborated type (v3, stmt_cache) — requires/ensures below
lemma imo_1959_p1(n: nat)
  requires (0 < n)
  ensures (gcd(((21 * n) + 4), ((14 * n) + 3)) == 1) // @tac 288-832 // @tac 838-1333 // @tac 1339-1481 // @tac 1487-1655 // @tac 1661-1671
{
  // have h₁ : Nat.gcd ( ( 21 * n + 4 ) , ( 14 * n + 3 ) ) == Nat.gcd ( ( 14 * n + 3   [type from Lean state]
  assert (gcd(((21 * n) + 4), ((14 * n) + 3)) == gcd(((14 * n) + 3), ((7 * n) + 1))) by { // @tac 379-797 // @tac 802-832 // @tac 802-815
    // have h₁₀ : Nat.gcd ( ( 21 * n + 4 ) , ( 14 * n + 3 ) ) == Nat.gcd ( ( 14 * n + 3   [type from Lean state]
    assert (gcd(((21 * n) + 4), ((14 * n) + 3)) == gcd(((14 * n) + 3), ((7 * n) + 1))) by { // @tac 475-565
      assert (((21 * n) + 4) == ((1 * ((14 * n) + 3)) + ((7 * n) + 1))) by {  // sub-goal of `by` (Lean state) // @tac 539-564 // @tac 539-546
        // [TACTIC: «_<;>_» ring_nf <;> omega omega]
        // [TACTIC: Ring_nfAt]
        NatPowOne(n);  // cite: pow_one [applied by the tactic, not named in it]
        // `ring_nf` closed the goal; the rest of the chain did not run
        // UNCITED-APPLIED internal ×80 [exec 52 539-546]: applications made inside the tactic's own automation, not stated — add_zero ×1; machinery/glue: Mathlib.Tactic.Ring.cast_pos ×6, Mathlib.Meta.NormNum.isNat_ofNat ×6, Eq.trans ×5, Mathlib.Tactic.Ring.mul_add ×5 (+23 more heads, ×57) (cited in this block, not counted here: pow_one [Lean recorded ×1])
      }
      // [TACTIC: rwSeq [ show 21 * n + 4 = 1 * ( 14 * n + 3 ) + ( 7 * n + 1 ) by ring_nf ring_nf <;> omega omega ]]
      // UNCITED-APPLIED congrArg((21 : ℕ) * n + (4 : ℕ), (1 : ℕ) * ((14 : ℕ) * n + (3 : ℕ)) + ((7 : ℕ) * n + (1 : ℕ)), fun (_a : ℕ) => Nat.gcd _a ((14 : ℕ) * n + (3 : ℕ)) = Nat.gcd ((14 : …): no library counterpart (not stated) [exec 40 475-565]
      assert (gcd(((1 * ((14 * n) + 3)) + ((7 * n) + 1)), ((14 * n) + 3)) == gcd(((14 * n) + 3), ((7 * n) + 1))) by {  // sub-goal before `rw` (Lean state) // @tac 652-797 // @tac 652-781 // @tac 652-758 // @tac 652-669
        // [TACTIC: «_<;>_» [ Nat.gcd_comm ] rw [ Nat.gcd_comm ] <;> simp [ Nat.gcd_comm , Nat.gcd_add_mul_right_right , Nat.gcd_assoc , Nat.gcd_assoc ] simp [ Nat.gcd_comm , Nat.gcd_add_mul_right_right , Nat.gcd_assoc , Nat.gcd_assoc ] simp [ Nat.gcd_comm , Nat.gcd_add_mul_right_right , Nat.gcd_assoc , Nat.gcd_assoc ] <;> ring_nf at * <;> omega omega]
        // [TACTIC: choice [ Nat.gcd_comm ] rw [ Nat.gcd_comm ]]
        NatGcdComm(((1 * ((14 * n) + 3)) + ((7 * n) + 1)), ((14 * n) + 3));  // cite: Nat.gcd_comm
        // UNCITED-APPLIED congrArg(Nat.gcd ((1 : ℕ) * ((14 : ℕ) * n + (3 : ℕ)) + ((7 : ℕ) * n + (1 : ℕ))…, Nat.gcd ((14 : ℕ) * n + (3 : ℕ)) ((1 : ℕ) * ((14 : ℕ) * n + (3 : ℕ)) …, fun (_a : ℕ) => _a = Nat.gcd ((14 : ℕ) * n + (3 : ℕ)) ((7 : ℕ) * n + …): no library counterpart (not stated) [exec 102 652-669]
        assert (gcd(((14 * n) + 3), ((1 * ((14 * n) + 3)) + ((7 * n) + 1))) == gcd(((14 * n) + 3), ((7 * n) + 1))) by {  // sub-goal of `simp` (Lean state) // @tac 680-758
          NatGcdComm(((14 * n) + 3), ((7 * n) + 1));  // cite: Nat.gcd_comm
          // UNCITED Nat.gcd_add_mul_right_right: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED Nat.gcd_assoc: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED-APPLIED internal ×10 [exec 137 680-758]: applications made inside the tactic's own automation, not stated — one_mul ×1, Nat.gcd_self_add_right ×1; machinery/glue: Eq.trans ×3, congrArg ×2, of_eq_true ×1, congr ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.gcd_comm [Lean recorded ×1])
        }
      }
    }
    // [TACTIC: «_<;>_» h₁₀ exact h₁₀ <;> simp_all simp_all simp_all]
    // [TACTIC: exact h₁₀]
    assert (gcd(((21 * n) + 4), ((14 * n) + 3)) == gcd(((14 * n) + 3), ((7 * n) + 1)));
    // `exact` closed the goal; the rest of the chain did not run
  }
  // have h₂ : Nat.gcd ( ( 14 * n + 3 ) , ( 7 * n + 1 ) ) == Nat.gcd ( ( 7 * n + 1 )   [type from Lean state]
  assert (gcd(((14 * n) + 3), ((7 * n) + 1)) == gcd(((7 * n) + 1), 1)) by { // @tac 917-1315 // @tac 1320-1333
    // have h₂₁ : Nat.gcd ( ( 14 * n + 3 ) , ( 7 * n + 1 ) ) == Nat.gcd ( ( 7 * n + 1 )   [type from Lean state]
    assert (gcd(((14 * n) + 3), ((7 * n) + 1)) == gcd(((7 * n) + 1), 1)) by { // @tac 1001-1292 // @tac 1299-1315
      // have h₂₁₁ : Nat.gcd ( ( 14 * n + 3 ) , ( 7 * n + 1 ) ) == Nat.gcd ( ( 7 * n + 1 )   [type from Lean state]
      assert (gcd(((14 * n) + 3), ((7 * n) + 1)) == gcd(((7 * n) + 1), 1)) by { // @tac 1090-1292 // @tac 1090-1274 // @tac 1090-1249 // @tac 1090-1173
        assert (((14 * n) + 3) == ((2 * ((7 * n) + 1)) + 1)) by {  // sub-goal of `by` (Lean state) // @tac 1145-1172 // @tac 1145-1152
          // [TACTIC: «_<;>_» ring_nf <;> omega omega]
          // [TACTIC: Ring_nfAt]
          NatPowOne(n);  // cite: pow_one [applied by the tactic, not named in it]
          // `ring_nf` closed the goal; the rest of the chain did not run
          // UNCITED-APPLIED internal ×64 [exec 241 1145-1152]: applications made inside the tactic's own automation, not stated — add_zero ×1; machinery/glue: Eq.trans ×5, Mathlib.Tactic.Ring.cast_pos ×5, Mathlib.Meta.NormNum.isNat_ofNat ×5, congrArg ×4 (+22 more heads, ×44) (cited in this block, not counted here: pow_one [Lean recorded ×1])
        }
        // [TACTIC: «_<;>_» [ show 14 * n + 3 = 2 * ( 7 * n + 1 ) + 1 by ring_nf ring_nf <;> omega omega ] rw [ show 14 * n + 3 = 2 * ( 7 * n + 1 ) + 1 by ring_nf ring_nf <;> omega omega ] <;> simp [ Nat.gcd_comm , Nat.gcd_add_mul_right_right , Nat.gcd_assoc ] simp [ Nat.gcd_comm , Nat.gcd_add_mul_right_right , Nat.gcd_assoc ] simp [ Nat.gcd_comm , Nat.gcd_add_mul_right_right , Nat.gcd_assoc ] <;> ring_nf at * <;> omega omega]
        // [TACTIC: choice [ show 14 * n + 3 = 2 * ( 7 * n + 1 ) + 1 by ring_nf ring_nf <;> omega omega ] rw [ show 14 * n + 3 = 2 * ( 7 * n + 1 ) + 1 by ring_nf ring_nf <;> omega omega ]]
        // UNCITED-APPLIED congrArg((14 : ℕ) * n + (3 : ℕ), (2 : ℕ) * ((7 : ℕ) * n + (1 : ℕ)) + (1 : ℕ), fun (_a : ℕ) => Nat.gcd _a ((7 : ℕ) * n + (1 : ℕ)) = Nat.gcd ((7 : ℕ)…): no library counterpart (not stated) [exec 229 1090-1173]
        assert 0 <= n;  /* [IN-FILE CHECK] requires 1 of vc_imo_1959_p1_L61 */
        assert 0 < n;  /* [IN-FILE CHECK] requires 2 of vc_imo_1959_p1_L61 */
        assert forall n0: nat :: 0 < n0 && 0 <= n0 && n0 < n ==> gcd(21 * n0 + 4, 14 * n0 + 3) == 1;  /* [IN-FILE CHECK] requires 3 of vc_imo_1959_p1_L61 */
        assert 0 <= 21 * n + 4;  /* [IN-FILE CHECK] requires 4 of vc_imo_1959_p1_L61 */
        assert 0 <= 14 * n + 3;  /* [IN-FILE CHECK] requires 5 of vc_imo_1959_p1_L61 */
        assert 0 <= 7 * n + 1;  /* [IN-FILE CHECK] requires 6 of vc_imo_1959_p1_L61 */
        assert gcd(21 * n + 4, 14 * n + 3) == gcd(14 * n + 3, 7 * n + 1);  /* [IN-FILE CHECK] requires 7 of vc_imo_1959_p1_L61 */
        assert 14 * n + 3 == 2 * (7 * n + 1) + 1;  /* [IN-FILE CHECK] requires 8 of vc_imo_1959_p1_L61 */
        assert 0 <= 2 * (7 * n + 1) + 1;  /* [IN-FILE CHECK] requires 9 of vc_imo_1959_p1_L61 */
        assert gcd(2 * (7 * n + 1) + 1, 7 * n + 1) == gcd(7 * n + 1, 2 * (7 * n + 1) + 1);  /* [IN-FILE CHECK] requires 10 of vc_imo_1959_p1_L61 */
        assert 0 <= 1;  /* [IN-FILE CHECK] requires 11 of vc_imo_1959_p1_L61 */
        assert gcd(7 * n + 1, 1) == gcd(1, 7 * n + 1);  /* [IN-FILE CHECK] requires 12 of vc_imo_1959_p1_L61 */
        vc_imo_1959_p1_L61(n);  /* [IN-FILE CHECK] the closed lemma for line 61 */
        assert (gcd(((2 * ((7 * n) + 1)) + 1), ((7 * n) + 1)) == gcd(((7 * n) + 1), 1)) by {  // sub-goal of `simp` (Lean state) // @tac 1186-1249
          NatGcdComm(((2 * ((7 * n) + 1)) + 1), ((7 * n) + 1));  // cite: Nat.gcd_comm
          NatGcdComm(((7 * n) + 1), 1);  // cite: Nat.gcd_comm
          // UNCITED Nat.gcd_add_mul_right_right: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED Nat.gcd_assoc: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED-APPLIED internal ×12 [exec 280 1186-1249]: applications made inside the tactic's own automation, not stated — Nat.gcd_mul_right_add_right ×1, Nat.gcd_add_self_right ×1, Nat.gcd_one_left ×1; machinery/glue: Eq.trans ×5, of_eq_true ×1, congr ×1, congrArg ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.gcd_comm [Lean recorded ×2])
        }
      }
      // [TACTIC: exact h₂₁₁]
      assert (gcd(((14 * n) + 3), ((7 * n) + 1)) == gcd(((7 * n) + 1), 1));
    }
    // [TACTIC: exact h₂₁]
    assert (gcd(((14 * n) + 3), ((7 * n) + 1)) == gcd(((7 * n) + 1), 1));
  }
  // have h₃ : Nat.gcd ( ( 7 * n + 1 ) , 1 ) == 1  [type from Lean state]
  assert (gcd(((7 * n) + 1), 1) == 1) by { // @tac 1387-1463 // @tac 1468-1481
    // have h₃₁ : Nat.gcd ( ( 7 * n + 1 ) , 1 ) == 1  [type from Lean state]
    assert (gcd(((7 * n) + 1), 1) == 1) by { // @tac 1440-1463
      // [TACTIC: simp [ Nat.gcd_eq_right ]]
      assert (NatDvd((1), (((7 * n) + 1))));  // precondition of NatGcdEqRightOfDvd (Lean: Nat.gcd_eq_right)
      NatGcdEqRightOfDvd(((7 * n) + 1), 1);  // cite: Nat.gcd_eq_right
      // UNCITED-APPLIED internal ×4 [exec 327 1440-1463]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, Eq.trans ×1, congrArg ×1, eq_self ×1 (cited in this block, not counted here: Nat.gcd_eq_right [Lean recorded ×1])
    }
    // [TACTIC: exact h₃₁]
    assert (gcd(((7 * n) + 1), 1) == 1);
  }
  // have h₄ : Nat.gcd ( ( 21 * n + 4 ) , ( 14 * n + 3 ) ) == 1  [type from Lean state]
  assert (gcd(((21 * n) + 4), ((14 * n) + 3)) == 1) by { // @tac 1547-1556
    // [TACTIC: rwSeq [ h₁ ]]
    // UNCITED-APPLIED congrArg(Nat.gcd ((21 : ℕ) * n + (4 : ℕ)) ((14 : ℕ) * n + (3 : ℕ)), Nat.gcd ((14 : ℕ) * n + (3 : ℕ)) ((7 : ℕ) * n + (1 : ℕ)), fun (_a : ℕ) => _a = (1 : ℕ)): no library counterpart (not stated) [exec 349 1547-1556]
    assert (gcd(((14 * n) + 3), ((7 * n) + 1)) == 1) by {  // sub-goal before `rw` (Lean state) // @tac 1561-1570
      // [TACTIC: rwSeq [ h₂ ]]
      // UNCITED-APPLIED congrArg(Nat.gcd ((14 : ℕ) * n + (3 : ℕ)) ((7 : ℕ) * n + (1 : ℕ)), Nat.gcd ((7 : ℕ) * n + (1 : ℕ)) (1 : ℕ), fun (_a : ℕ) => _a = (1 : ℕ)): no library counterpart (not stated) [exec 380 1561-1570]
      assert (gcd(((7 * n) + 1), 1) == 1) by {  // sub-goal before `rw` (Lean state) // @tac 1575-1655 // @tac 1575-1641 // @tac 1575-1620 // @tac 1575-1584
        // [TACTIC: «_<;>_» [ h₃ ] rw [ h₃ ] <;> simp_all [ Nat.gcd_eq_right ] simp_all [ Nat.gcd_eq_right ] simp_all [ Nat.gcd_eq_right ] <;> ring_nf at * <;> omega omega]
        // [TACTIC: rwSeq [ h₃ ]]
        // `rw` closed the goal; the rest of the chain did not run
        // UNCITED-APPLIED congrArg(Nat.gcd ((7 : ℕ) * n + (1 : ℕ)) (1 : ℕ), (1 : ℕ), fun (_a : ℕ) => _a = (1 : ℕ)): no library counterpart (not stated) [exec 426 1575-1584]
      }
    }
  }
  // [TACTIC: exact h₄]
  assert (gcd(((21 * n) + 4), ((14 * n) + 3)) == 1);
}



// ===== closed lemma for line 61 (from closed/imo_1959_p1-61.dfy) =====

lemma {:axiom} NatGcdMulRightAddRight(m: nat, n: nat, k: nat)  // [ADDED DECLARATION]
  ensures gcd(m, k * m + n) == gcd(m, n)
lemma {:axiom} NatGcdAddSelfRight(m: nat, n: nat)  // [ADDED DECLARATION]
  ensures gcd(m, n + m) == gcd(m, n)
lemma {:axiom} NatGcdOneLeft(n: nat)  // [ADDED DECLARATION]
  ensures gcd(1, n) == 1

lemma {:induction false} vc_imo_1959_p1_L61(n: int)
  requires 0 <= n
  requires 0 < n
  requires forall n0: nat :: 0 < n0 && 0 <= n0 && n0 < n ==> gcd(21 * n0 + 4, 14 * n0 + 3) == 1
  requires 0 <= 21 * n + 4
  requires 0 <= 14 * n + 3
  requires 0 <= 7 * n + 1
  requires gcd(21 * n + 4, 14 * n + 3) == gcd(14 * n + 3, 7 * n + 1)
  requires 14 * n + 3 == 2 * (7 * n + 1) + 1
  requires 0 <= 2 * (7 * n + 1) + 1
  requires gcd(2 * (7 * n + 1) + 1, 7 * n + 1) == gcd(7 * n + 1, 2 * (7 * n + 1) + 1)
  requires 0 <= 1
  requires gcd(7 * n + 1, 1) == gcd(1, 7 * n + 1)
  ensures   gcd(2 * (7 * n + 1) + 1, 7 * n + 1) == gcd(7 * n + 1, 1)
{
  NatGcdComm(2 * (7 * n + 1) + 1, 7 * n + 1);  // [ADDED]
  NatGcdMulRightAddRight(7 * n + 1, 1, 2);  // [ADDED]
  NatGcdComm(7 * n + 1, 1);  // [ADDED]
  NatGcdAddSelfRight(1, 7 * n);  // [ADDED]
  NatGcdOneLeft(7 * n);  // [ADDED]
          NatGcdComm(((2 * ((7 * n) + 1)) + 1), ((7 * n) + 1));  // cite: Nat.gcd_comm
          NatGcdComm(((7 * n) + 1), 1);  // cite: Nat.gcd_comm
          // UNCITED Nat.gcd_add_mul_right_right: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED Nat.gcd_assoc: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED-APPLIED internal ×12 [exec 280 1186-1249]: applications made inside the tactic's own automation, not stated — Nat.gcd_mul_right_add_right ×1, Nat.gcd_add_self_right ×1, Nat.gcd_one_left ×1; machinery/glue: Eq.trans ×5, of_eq_true ×1, congr ×1, congrArg ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.gcd_comm [Lean recorded ×2])
}

