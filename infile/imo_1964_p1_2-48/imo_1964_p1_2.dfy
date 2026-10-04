// ════════════════════════════════════════════════════════════
// MECHANICAL TRANSLATION (emitter v2) of ast_cache_v2/imo_1964_p1_2.json
// Each Lean `have` → `assert ... by {}` at the same depth;
// quantified haves → forall statements. Typed pipeline only.
// ════════════════════════════════════════════════════════════

include "../../closed/alt/imo_1964_p1_2-48/library/library_new.dfy"

// ──────────────────────────────────────────────────
// R14 — recursive lemma for `induction n` (structural)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} induction_helper_1(n: nat)
  // induction on the theorem parameter n: Lean reverts the hypotheses that
  // mention n; here they are the requires, so the recursive call must re-establish them
  ensures (((Int.pow(2, n) % 7) == 1) || (((Int.pow(2, n) % 7) == 2) || ((Int.pow(2, n) % 7) == 4)))
  decreases n
{
  if n == 0 {
    assert (((Int.pow(2, 0) % 7) == 1) || (((Int.pow(2, 0) % 7) == 2) || ((Int.pow(2, 0) % 7) == 4))) by {  // sub-goal before `simp` (Lean state) // @tac 517-521
      // [TACTIC: simp]
      NatPowZero(2);  // cite: pow_zero [applied by the tactic, not named in it]
      // UNCITED-APPLIED internal ×14 [exec 56 517-521]: applications made inside the tactic's own automation, not stated — Nat.one_mod ×1, or_self ×1, or_false ×1; machinery/glue: congrArg ×5, Eq.trans ×2, congr ×2, of_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: pow_zero [Lean recorded ×1])
    }
  } else {
    induction_helper_1(n - 1);
    var n: nat := n - 1;  // Lean's predecessor binder (succ n)
    assert (((Int.pow(2, (n + 1)) % 7) == 1) || (((Int.pow(2, (n + 1)) % 7) == 2) || ((Int.pow(2, (n + 1)) % 7) == 4))) by {  // sub-goal before `cases` (Lean state) // @tac 608-941
      // `cases`: 2 cases (Lean states); 2 branch bodies
      if (((Int.pow(2, n) % 7) == 1)) {  // sub-goal of `cases` (Lean state)
        // [TACTIC: rwSeq [ Nat.pow_succ ]]
        NatPowSucc(2, n);  // cite: Nat.pow_succ
        // UNCITED-APPLIED congrArg((2 : ℕ) ^ succ n, (2 : ℕ) ^ n * (2 : ℕ), fun (_a : ℕ) => _a % (7 : ℕ) = (1 : ℕ) ∨ _a % (7 : ℕ) = (2 : ℕ) ∨ _a …): no library counterpart (not stated) [exec 69 647-664]
        assert ((((Int.pow(2, n) * 2) % 7) == 1) || ((((Int.pow(2, n) * 2) % 7) == 2) || (((Int.pow(2, n) * 2) % 7) == 4))) by {  // sub-goal before `norm_num` (Lean state) // @tac 673-711
          // [TACTIC: «Norm_num[_]At___» [ h , Nat.mul_mod , Nat.add_mod ]]
          // UNCITED Nat.add_mod: named in this rewriting step; no record of Lean's proof attributes an application of it to this execution (its recorded applications are at other tactics of the proof; a rewrite at a hypothesis is filed under the tactic that later uses the hypothesis, and a conditional / under-binder simp rewrite may be unrecorded), so whether it was applied here is not known; not stated
          assert ((7) > 0);  // precondition of NatMulMod (Lean: Nat.mul_mod)
          NatMulMod(Int.pow(2, n), 2, 7);  // cite: Nat.mul_mod
          // UNCITED-APPLIED internal ×26 [exec 96 673-711]: applications made inside the tactic's own automation, not stated — one_mul ×1, or_false ×1, or_true ×1; machinery/glue: congrArg ×6, Eq.trans ×4, congr ×3, Mathlib.Meta.NormNum.isNat_ofNat ×3 (+7 more heads, ×7) (cited in this block, not counted here: Nat.mul_mod [Lean recorded ×1])
        }
        assert (((Int.pow(2, (n + 1)) % 7) == 1) || (((Int.pow(2, (n + 1)) % 7) == 2) || ((Int.pow(2, (n + 1)) % 7) == 4)));  // sub-goal of `cases` (Lean state) // @tac 647-664
      }
      if ((((Int.pow(2, n) % 7) == 2) || ((Int.pow(2, n) % 7) == 4))) {  // sub-goal of `cases` (Lean state)
        // `cases`: 2 cases (Lean states); 2 branch bodies
        if (((Int.pow(2, n) % 7) == 2)) {  // sub-goal of `cases` (Lean state)
          // [TACTIC: rwSeq [ Nat.pow_succ ]]
          NatPowSucc(2, n);  // cite: Nat.pow_succ
          // UNCITED-APPLIED congrArg((2 : ℕ) ^ succ n, (2 : ℕ) ^ n * (2 : ℕ), fun (_a : ℕ) => _a % (7 : ℕ) = (1 : ℕ) ∨ _a % (7 : ℕ) = (2 : ℕ) ∨ _a …): no library counterpart (not stated) [exec 109 779-796]
          assert 0 <= (n + 1);  /* [IN-FILE CHECK] requires 1 of vc_imo_1964_p1_2_L48 */
          assert forall n0: nat :: true && 0 <= n0 && n0 < (n + 1) ==> Int.pow(2, n0) % 7 == 1 || Int.pow(2, n0) % 7 == 2 || Int.pow(2, n0) % 7 == 4;  /* [IN-FILE CHECK] requires 2 of vc_imo_1964_p1_2_L48 */
          assert (n + 1) != 0;  /* [IN-FILE CHECK] requires 3 of vc_imo_1964_p1_2_L48 */
          assert 0 <= (n + 1) - 1;  /* [IN-FILE CHECK] requires 4 of vc_imo_1964_p1_2_L48 */
          assert 0 <= (n + 1) || (n + 1) - 1 == (n + 1);  /* [IN-FILE CHECK] requires 5 of vc_imo_1964_p1_2_L48 */
          assert (n + 1) - 1 < (n + 1);  /* [IN-FILE CHECK] requires 6 of vc_imo_1964_p1_2_L48 */
          assert Int.pow(2, (n + 1) - 1) % 7 == 1 || Int.pow(2, (n + 1) - 1) % 7 == 2 || Int.pow(2, (n + 1) - 1) % 7 == 4;  /* [IN-FILE CHECK] requires 7 of vc_imo_1964_p1_2_L48 */
          assert n == (n + 1) - 1;  /* [IN-FILE CHECK] requires 8 of vc_imo_1964_p1_2_L48 */
          assert 7 != 0;  /* [IN-FILE CHECK] requires 9 of vc_imo_1964_p1_2_L48 */
          assert 0 <= 2;  /* [IN-FILE CHECK] requires 10 of vc_imo_1964_p1_2_L48 */
          assert Int.pow(2, n + 1) == Int.pow(2, n) * 2;  /* [IN-FILE CHECK] requires 11 of vc_imo_1964_p1_2_L48 */
          assert Int.pow(2, n) % 7 == 2;  /* [IN-FILE CHECK] requires 12 of vc_imo_1964_p1_2_L48 */
          assert Int.pow(2, n) % 7 == 2 || Int.pow(2, n) % 7 == 4;  /* [IN-FILE CHECK] requires 13 of vc_imo_1964_p1_2_L48 */
          assert 0 <= Int.pow(2, n);  /* [IN-FILE CHECK] requires 14 of vc_imo_1964_p1_2_L48 */
          assert 0 <= 7;  /* [IN-FILE CHECK] requires 15 of vc_imo_1964_p1_2_L48 */
          assert Int.pow(2, n) * 2 % 7 == Int.pow(2, n) % 7 * (2 % 7) % 7;  /* [IN-FILE CHECK] requires 16 of vc_imo_1964_p1_2_L48 */
          assert ((Int.pow(2, n) % 7 == 1) && (Int.pow(2, n) * 2 % 7 != 1) && (Int.pow(2, n) * 2 % 7 != 2) && (Int.pow(2, n) * 2 % 7 == 1 || Int.pow(2, n) * 2 % 7 == 2 || Int.pow(2, n) * 2 % 7 == 4) && (0 <= n + 1) && (Int.pow(2, n + 1) % 7 != 1) && (Int.pow(2, n + 1) % 7 != 2) && (Int.pow(2, n + 1) % 7 == 1 || Int.pow(2, n + 1) % 7 == 2 || Int.pow(2, n + 1) % 7 == 4)) || ((Int.pow(2, n) % 7 == 1) && (Int.pow(2, n) * 2 % 7 != 1) && (Int.pow(2, n) * 2 % 7 != 2) && (Int.pow(2, n) * 2 % 7 == 1 || Int.pow(2, n) * 2 % 7 == 2 || Int.pow(2, n) * 2 % 7 == 4) && (0 <= n + 1) && (Int.pow(2, n + 1) % 7 != 1) && (Int.pow(2, n + 1) % 7 == 2) && (Int.pow(2, n + 1) % 7 == 1 || Int.pow(2, n + 1) % 7 == 2 || Int.pow(2, n + 1) % 7 == 4)) || ((Int.pow(2, n) % 7 == 1) && (Int.pow(2, n) * 2 % 7 != 1) && (Int.pow(2, n) * 2 % 7 != 2) && (Int.pow(2, n) * 2 % 7 == 1 || Int.pow(2, n) * 2 % 7 == 2 || Int.pow(2, n) * 2 % 7 == 4) && (0 <= n + 1) && (Int.pow(2, n + 1) % 7 == 1) && (Int.pow(2, n + 1) % 7 == 1 || Int.pow(2, n + 1) % 7 == 2 || Int.pow(2, n + 1) % 7 == 4)) || ((Int.pow(2, n) % 7 == 1) && (Int.pow(2, n) * 2 % 7 != 1) && (Int.pow(2, n) * 2 % 7 == 2) && (Int.pow(2, n) * 2 % 7 == 1 || Int.pow(2, n) * 2 % 7 == 2 || Int.pow(2, n) * 2 % 7 == 4) && (0 <= n + 1) && (Int.pow(2, n + 1) % 7 != 1) && (Int.pow(2, n + 1) % 7 != 2) && (Int.pow(2, n + 1) % 7 == 1 || Int.pow(2, n + 1) % 7 == 2 || Int.pow(2, n + 1) % 7 == 4)) || ((Int.pow(2, n) % 7 == 1) && (Int.pow(2, n) * 2 % 7 != 1) && (Int.pow(2, n) * 2 % 7 == 2) && (Int.pow(2, n) * 2 % 7 == 1 || Int.pow(2, n) * 2 % 7 == 2 || Int.pow(2, n) * 2 % 7 == 4) && (0 <= n + 1) && (Int.pow(2, n + 1) % 7 != 1) && (Int.pow(2, n + 1) % 7 == 2) && (Int.pow(2, n + 1) % 7 == 1 || Int.pow(2, n + 1) % 7 == 2 || Int.pow(2, n + 1) % 7 == 4)) || ((Int.pow(2, n) % 7 == 1) && (Int.pow(2, n) * 2 % 7 != 1) && (Int.pow(2, n) * 2 % 7 == 2) && (Int.pow(2, n) * 2 % 7 == 1 || Int.pow(2, n) * 2 % 7 == 2 || Int.pow(2, n) * 2 % 7 == 4) && (0 <= n + 1) && (Int.pow(2, n + 1) % 7 == 1) && (Int.pow(2, n + 1) % 7 == 1 || Int.pow(2, n + 1) % 7 == 2 || Int.pow(2, n + 1) % 7 == 4)) || ((Int.pow(2, n) % 7 == 1) && (Int.pow(2, n) * 2 % 7 == 1) && (Int.pow(2, n) * 2 % 7 == 1 || Int.pow(2, n) * 2 % 7 == 2 || Int.pow(2, n) * 2 % 7 == 4) && (0 <= n + 1) && (Int.pow(2, n + 1) % 7 != 1) && (Int.pow(2, n + 1) % 7 != 2) && (Int.pow(2, n + 1) % 7 == 1 || Int.pow(2, n + 1) % 7 == 2 || Int.pow(2, n + 1) % 7 == 4)) || ((Int.pow(2, n) % 7 == 1) && (Int.pow(2, n) * 2 % 7 == 1) && (Int.pow(2, n) * 2 % 7 == 1 || Int.pow(2, n) * 2 % 7 == 2 || Int.pow(2, n) * 2 % 7 == 4) && (0 <= n + 1) && (Int.pow(2, n + 1) % 7 != 1) && (Int.pow(2, n + 1) % 7 == 2) && (Int.pow(2, n + 1) % 7 == 1 || Int.pow(2, n + 1) % 7 == 2 || Int.pow(2, n + 1) % 7 == 4)) || ((Int.pow(2, n) % 7 == 1) && (Int.pow(2, n) * 2 % 7 == 1) && (Int.pow(2, n) * 2 % 7 == 1 || Int.pow(2, n) * 2 % 7 == 2 || Int.pow(2, n) * 2 % 7 == 4) && (0 <= n + 1) && (Int.pow(2, n + 1) % 7 == 1) && (Int.pow(2, n + 1) % 7 == 1 || Int.pow(2, n + 1) % 7 == 2 || Int.pow(2, n + 1) % 7 == 4)) || ((Int.pow(2, n) % 7 != 1) && (Int.pow(2, n) * 2 % 7 != 1) && (Int.pow(2, n) * 2 % 7 != 2)) || ((Int.pow(2, n) % 7 != 1) && (Int.pow(2, n) * 2 % 7 != 1) && (Int.pow(2, n) * 2 % 7 == 2)) || ((Int.pow(2, n) % 7 != 1) && (Int.pow(2, n) * 2 % 7 == 1));  /* [IN-FILE CHECK] requires 17 of vc_imo_1964_p1_2_L48 */
          vc_imo_1964_p1_2_L48(n + 1, n);  /* [IN-FILE CHECK] the closed lemma for line 48 */
          assert ((((Int.pow(2, n) * 2) % 7) == 1) || ((((Int.pow(2, n) * 2) % 7) == 2) || (((Int.pow(2, n) * 2) % 7) == 4))) by {  // sub-goal before `norm_num` (Lean state) // @tac 807-845
            // [TACTIC: «Norm_num[_]At___» [ h , Nat.mul_mod , Nat.add_mod ]]
            // UNCITED Nat.add_mod: named in this rewriting step; no record of Lean's proof attributes an application of it to this execution (its recorded applications are at other tactics of the proof; a rewrite at a hypothesis is filed under the tactic that later uses the hypothesis, and a conditional / under-binder simp rewrite may be unrecorded), so whether it was applied here is not known; not stated
            assert ((7) > 0);  // precondition of NatMulMod (Lean: Nat.mul_mod)
            NatMulMod(Int.pow(2, n), 2, 7);  // cite: Nat.mul_mod
            // UNCITED-APPLIED internal ×28 [exec 136 807-845]: applications made inside the tactic's own automation, not stated — or_true ×1; machinery/glue: congrArg ×6, Eq.trans ×4, congr ×3, Mathlib.Meta.NormNum.IsNat.to_eq ×3 (+8 more heads, ×11) (cited in this block, not counted here: Nat.mul_mod [Lean recorded ×1])
          }
          assert (((Int.pow(2, (n + 1)) % 7) == 1) || (((Int.pow(2, (n + 1)) % 7) == 2) || ((Int.pow(2, (n + 1)) % 7) == 4)));  // sub-goal of `cases` (Lean state) // @tac 779-796
        }
        if (((Int.pow(2, n) % 7) == 4)) {  // sub-goal of `cases` (Lean state)
          // [TACTIC: rwSeq [ Nat.pow_succ ]]
          NatPowSucc(2, n);  // cite: Nat.pow_succ
          // UNCITED-APPLIED congrArg((2 : ℕ) ^ succ n, (2 : ℕ) ^ n * (2 : ℕ), fun (_a : ℕ) => _a % (7 : ℕ) = (1 : ℕ) ∨ _a % (7 : ℕ) = (2 : ℕ) ∨ _a …): no library counterpart (not stated) [exec 144 875-892]
          assert ((((Int.pow(2, n) * 2) % 7) == 1) || ((((Int.pow(2, n) * 2) % 7) == 2) || (((Int.pow(2, n) * 2) % 7) == 4))) by {  // sub-goal before `norm_num` (Lean state) // @tac 903-941
            // [TACTIC: «Norm_num[_]At___» [ h , Nat.mul_mod , Nat.add_mod ]]
            // UNCITED Nat.add_mod: named in this rewriting step; no record of Lean's proof attributes an application of it to this execution (its recorded applications are at other tactics of the proof; a rewrite at a hypothesis is filed under the tactic that later uses the hypothesis, and a conditional / under-binder simp rewrite may be unrecorded), so whether it was applied here is not known; not stated
            assert ((7) > 0);  // precondition of NatMulMod (Lean: Nat.mul_mod)
            NatMulMod(Int.pow(2, n), 2, 7);  // cite: Nat.mul_mod
            // UNCITED-APPLIED internal ×29 [exec 171 903-941]: applications made inside the tactic's own automation, not stated — or_self ×1, or_false ×1; machinery/glue: congrArg ×6, Eq.trans ×4, Mathlib.Meta.NormNum.isNat_ofNat ×4, congr ×3 (+7 more heads, ×10) (cited in this block, not counted here: Nat.mul_mod [Lean recorded ×1])
          }
          assert (((Int.pow(2, (n + 1)) % 7) == 1) || (((Int.pow(2, (n + 1)) % 7) == 2) || ((Int.pow(2, (n + 1)) % 7) == 4)));  // sub-goal of `cases` (Lean state) // @tac 875-892
        }
        assert (((Int.pow(2, (n + 1)) % 7) == 1) || (((Int.pow(2, (n + 1)) % 7) == 2) || ((Int.pow(2, (n + 1)) % 7) == 4)));  // sub-goal of `cases` (Lean state) // @tac 737-941
      }
    }
  }
}

// statement: Lean elaborated type (v3, stmt_cache) — requires/ensures below
lemma imo_1964_p1_2(n: nat)
  ensures (!NatDvd(7, (Int.pow(2, n) + 1))) // @tac 234-262
{
  // [TACTIC: rwSeq [ Nat.dvd_iff_mod_eq_zero ]]
  assert (0 < (7));  // precondition of NatDvdIffModEqZero (Lean: Nat.dvd_iff_mod_eq_zero)
  NatDvdIffModEqZero(7, (Int.pow(2, n) + 1));  // cite: Nat.dvd_iff_mod_eq_zero
  // UNCITED-APPLIED congrArg(fun (_a : Prop) => ¬_a): no library counterpart (not stated) [exec 8 234-262]
  assert !(((Int.pow(2, n) + 1) % 7) == 0) by {  // sub-goal before `have` (Lean state) // @tac 335-941 // @tac 1054-1118 // @tac 1054-1079
    // have h : 2 ^ n % 7 == 1 || 2 ^ n % 7 == 2 || 2 ^ n % 7 == 4  [type from Lean state]
    assert (((Int.pow(2, n) % 7) == 1) || (((Int.pow(2, n) % 7) == 2) || ((Int.pow(2, n) % 7) == 4))) by { // @tac 486-941
      // induction n → recursive lemma induction_helper_1
      induction_helper_1(n);
    }
    // [TACTIC: «_<;>_» h with ( h | h | h ) <;> simp [ h , Nat.add_mod , Nat.mul_mod ] simp [ h , Nat.add_mod , Nat.mul_mod ] simp [ h , Nat.add_mod , Nat.mul_mod ]]
    // [TACTIC: rcases h with ( h | h | h )]
    if (((Int.pow(2, n) % 7) == 1)) {  // sub-goal of `simp` (Lean state)
      NatAddMod(Int.pow(2, n), 1, 7);  // cite: Nat.add_mod
      // UNCITED Nat.mul_mod: named in this rewriting step; no record of Lean's proof attributes an application of it to this execution (its recorded applications are at other tactics of the proof; a rewrite at a hypothesis is filed under the tactic that later uses the hypothesis, and a conditional / under-binder simp rewrite may be unrecorded), so whether it was applied here is not known; not stated
      assert !(((Int.pow(2, n) + 1) % 7) == 0);  // sub-goal of `simp` (Lean state) // @tac 1084-1118
      // UNCITED-APPLIED internal ×9 [exec 186 1084-1118]: applications made inside the tactic's own automation, not stated — Nat.one_mod ×1; machinery/glue: congrArg ×4, Eq.trans ×2, of_eq_true ×1, congr ×1 (cited in this block, not counted here: Nat.add_mod [Lean recorded ×1])
    }
    if (((Int.pow(2, n) % 7) == 2)) {  // sub-goal of `simp` (Lean state)
      NatAddMod(Int.pow(2, n), 1, 7);  // cite: Nat.add_mod
      // UNCITED Nat.mul_mod: named in this rewriting step; no record of Lean's proof attributes an application of it to this execution (its recorded applications are at other tactics of the proof; a rewrite at a hypothesis is filed under the tactic that later uses the hypothesis, and a conditional / under-binder simp rewrite may be unrecorded), so whether it was applied here is not known; not stated
      assert !(((Int.pow(2, n) + 1) % 7) == 0);  // sub-goal of `simp` (Lean state) // @tac 1084-1118
      // UNCITED-APPLIED internal ×9 [exec 189 1084-1118]: applications made inside the tactic's own automation, not stated — Nat.one_mod ×1; machinery/glue: congrArg ×4, Eq.trans ×2, of_eq_true ×1, congr ×1 (cited in this block, not counted here: Nat.add_mod [Lean recorded ×1])
    }
    if (((Int.pow(2, n) % 7) == 4)) {  // sub-goal of `simp` (Lean state)
      NatAddMod(Int.pow(2, n), 1, 7);  // cite: Nat.add_mod
      // UNCITED Nat.mul_mod: named in this rewriting step; no record of Lean's proof attributes an application of it to this execution (its recorded applications are at other tactics of the proof; a rewrite at a hypothesis is filed under the tactic that later uses the hypothesis, and a conditional / under-binder simp rewrite may be unrecorded), so whether it was applied here is not known; not stated
      assert !(((Int.pow(2, n) + 1) % 7) == 0);  // sub-goal of `simp` (Lean state) // @tac 1084-1118
      // UNCITED-APPLIED internal ×9 [exec 192 1084-1118]: applications made inside the tactic's own automation, not stated — Nat.one_mod ×1; machinery/glue: congrArg ×4, Eq.trans ×2, of_eq_true ×1, congr ×1 (cited in this block, not counted here: Nat.add_mod [Lean recorded ×1])
    }
  }
}



// ===== closed lemma for line 48 (from closed/imo_1964_p1_2-48.dfy) =====

lemma {:induction false} vc_imo_1964_p1_2_L48(n: int, n_1_0_0: nat)
  requires 0 <= n
  requires forall n0: nat :: true && 0 <= n0 && n0 < n ==> Int.pow(2, n0) % 7 == 1 || Int.pow(2, n0) % 7 == 2 || Int.pow(2, n0) % 7 == 4
  requires n != 0
  requires 0 <= n - 1
  requires 0 <= n || n - 1 == n
  requires n - 1 < n
  requires Int.pow(2, n - 1) % 7 == 1 || Int.pow(2, n - 1) % 7 == 2 || Int.pow(2, n - 1) % 7 == 4
  requires n_1_0_0 == n - 1
  requires 7 != 0
  requires 0 <= 2
  requires Int.pow(2, n_1_0_0 + 1) == Int.pow(2, n_1_0_0) * 2
  requires Int.pow(2, n_1_0_0) % 7 == 2
  requires Int.pow(2, n_1_0_0) % 7 == 2 || Int.pow(2, n_1_0_0) % 7 == 4
  requires 0 <= Int.pow(2, n_1_0_0)
  requires 0 <= 7
  requires Int.pow(2, n_1_0_0) * 2 % 7 == Int.pow(2, n_1_0_0) % 7 * (2 % 7) % 7
  requires ((Int.pow(2, n_1_0_0) % 7 == 1) && (Int.pow(2, n_1_0_0) * 2 % 7 != 1) && (Int.pow(2, n_1_0_0) * 2 % 7 != 2) && (Int.pow(2, n_1_0_0) * 2 % 7 == 1 || Int.pow(2, n_1_0_0) * 2 % 7 == 2 || Int.pow(2, n_1_0_0) * 2 % 7 == 4) && (0 <= n_1_0_0 + 1) && (Int.pow(2, n_1_0_0 + 1) % 7 != 1) && (Int.pow(2, n_1_0_0 + 1) % 7 != 2) && (Int.pow(2, n_1_0_0 + 1) % 7 == 1 || Int.pow(2, n_1_0_0 + 1) % 7 == 2 || Int.pow(2, n_1_0_0 + 1) % 7 == 4)) || ((Int.pow(2, n_1_0_0) % 7 == 1) && (Int.pow(2, n_1_0_0) * 2 % 7 != 1) && (Int.pow(2, n_1_0_0) * 2 % 7 != 2) && (Int.pow(2, n_1_0_0) * 2 % 7 == 1 || Int.pow(2, n_1_0_0) * 2 % 7 == 2 || Int.pow(2, n_1_0_0) * 2 % 7 == 4) && (0 <= n_1_0_0 + 1) && (Int.pow(2, n_1_0_0 + 1) % 7 != 1) && (Int.pow(2, n_1_0_0 + 1) % 7 == 2) && (Int.pow(2, n_1_0_0 + 1) % 7 == 1 || Int.pow(2, n_1_0_0 + 1) % 7 == 2 || Int.pow(2, n_1_0_0 + 1) % 7 == 4)) || ((Int.pow(2, n_1_0_0) % 7 == 1) && (Int.pow(2, n_1_0_0) * 2 % 7 != 1) && (Int.pow(2, n_1_0_0) * 2 % 7 != 2) && (Int.pow(2, n_1_0_0) * 2 % 7 == 1 || Int.pow(2, n_1_0_0) * 2 % 7 == 2 || Int.pow(2, n_1_0_0) * 2 % 7 == 4) && (0 <= n_1_0_0 + 1) && (Int.pow(2, n_1_0_0 + 1) % 7 == 1) && (Int.pow(2, n_1_0_0 + 1) % 7 == 1 || Int.pow(2, n_1_0_0 + 1) % 7 == 2 || Int.pow(2, n_1_0_0 + 1) % 7 == 4)) || ((Int.pow(2, n_1_0_0) % 7 == 1) && (Int.pow(2, n_1_0_0) * 2 % 7 != 1) && (Int.pow(2, n_1_0_0) * 2 % 7 == 2) && (Int.pow(2, n_1_0_0) * 2 % 7 == 1 || Int.pow(2, n_1_0_0) * 2 % 7 == 2 || Int.pow(2, n_1_0_0) * 2 % 7 == 4) && (0 <= n_1_0_0 + 1) && (Int.pow(2, n_1_0_0 + 1) % 7 != 1) && (Int.pow(2, n_1_0_0 + 1) % 7 != 2) && (Int.pow(2, n_1_0_0 + 1) % 7 == 1 || Int.pow(2, n_1_0_0 + 1) % 7 == 2 || Int.pow(2, n_1_0_0 + 1) % 7 == 4)) || ((Int.pow(2, n_1_0_0) % 7 == 1) && (Int.pow(2, n_1_0_0) * 2 % 7 != 1) && (Int.pow(2, n_1_0_0) * 2 % 7 == 2) && (Int.pow(2, n_1_0_0) * 2 % 7 == 1 || Int.pow(2, n_1_0_0) * 2 % 7 == 2 || Int.pow(2, n_1_0_0) * 2 % 7 == 4) && (0 <= n_1_0_0 + 1) && (Int.pow(2, n_1_0_0 + 1) % 7 != 1) && (Int.pow(2, n_1_0_0 + 1) % 7 == 2) && (Int.pow(2, n_1_0_0 + 1) % 7 == 1 || Int.pow(2, n_1_0_0 + 1) % 7 == 2 || Int.pow(2, n_1_0_0 + 1) % 7 == 4)) || ((Int.pow(2, n_1_0_0) % 7 == 1) && (Int.pow(2, n_1_0_0) * 2 % 7 != 1) && (Int.pow(2, n_1_0_0) * 2 % 7 == 2) && (Int.pow(2, n_1_0_0) * 2 % 7 == 1 || Int.pow(2, n_1_0_0) * 2 % 7 == 2 || Int.pow(2, n_1_0_0) * 2 % 7 == 4) && (0 <= n_1_0_0 + 1) && (Int.pow(2, n_1_0_0 + 1) % 7 == 1) && (Int.pow(2, n_1_0_0 + 1) % 7 == 1 || Int.pow(2, n_1_0_0 + 1) % 7 == 2 || Int.pow(2, n_1_0_0 + 1) % 7 == 4)) || ((Int.pow(2, n_1_0_0) % 7 == 1) && (Int.pow(2, n_1_0_0) * 2 % 7 == 1) && (Int.pow(2, n_1_0_0) * 2 % 7 == 1 || Int.pow(2, n_1_0_0) * 2 % 7 == 2 || Int.pow(2, n_1_0_0) * 2 % 7 == 4) && (0 <= n_1_0_0 + 1) && (Int.pow(2, n_1_0_0 + 1) % 7 != 1) && (Int.pow(2, n_1_0_0 + 1) % 7 != 2) && (Int.pow(2, n_1_0_0 + 1) % 7 == 1 || Int.pow(2, n_1_0_0 + 1) % 7 == 2 || Int.pow(2, n_1_0_0 + 1) % 7 == 4)) || ((Int.pow(2, n_1_0_0) % 7 == 1) && (Int.pow(2, n_1_0_0) * 2 % 7 == 1) && (Int.pow(2, n_1_0_0) * 2 % 7 == 1 || Int.pow(2, n_1_0_0) * 2 % 7 == 2 || Int.pow(2, n_1_0_0) * 2 % 7 == 4) && (0 <= n_1_0_0 + 1) && (Int.pow(2, n_1_0_0 + 1) % 7 != 1) && (Int.pow(2, n_1_0_0 + 1) % 7 == 2) && (Int.pow(2, n_1_0_0 + 1) % 7 == 1 || Int.pow(2, n_1_0_0 + 1) % 7 == 2 || Int.pow(2, n_1_0_0 + 1) % 7 == 4)) || ((Int.pow(2, n_1_0_0) % 7 == 1) && (Int.pow(2, n_1_0_0) * 2 % 7 == 1) && (Int.pow(2, n_1_0_0) * 2 % 7 == 1 || Int.pow(2, n_1_0_0) * 2 % 7 == 2 || Int.pow(2, n_1_0_0) * 2 % 7 == 4) && (0 <= n_1_0_0 + 1) && (Int.pow(2, n_1_0_0 + 1) % 7 == 1) && (Int.pow(2, n_1_0_0 + 1) % 7 == 1 || Int.pow(2, n_1_0_0 + 1) % 7 == 2 || Int.pow(2, n_1_0_0 + 1) % 7 == 4)) || ((Int.pow(2, n_1_0_0) % 7 != 1) && (Int.pow(2, n_1_0_0) * 2 % 7 != 1) && (Int.pow(2, n_1_0_0) * 2 % 7 != 2)) || ((Int.pow(2, n_1_0_0) % 7 != 1) && (Int.pow(2, n_1_0_0) * 2 % 7 != 1) && (Int.pow(2, n_1_0_0) * 2 % 7 == 2)) || ((Int.pow(2, n_1_0_0) % 7 != 1) && (Int.pow(2, n_1_0_0) * 2 % 7 == 1))
  ensures   Int.pow(2, n_1_0_0) * 2 % 7 == 1 || Int.pow(2, n_1_0_0) * 2 % 7 == 2 || Int.pow(2, n_1_0_0) * 2 % 7 == 4
{
 
            // [TACTIC: «Norm_num[_]At___» [ h , Nat.mul_mod , Nat.add_mod ]]
            // UNCITED Nat.add_mod: named in this rewriting step; no record of Lean's proof attributes an application of it to this execution (its recorded applications are at other tactics of the proof; a rewrite at a hypothesis is filed under the tactic that later uses the hypothesis, and a conditional / under-binder simp rewrite may be unrecorded), so whether it was applied here is not known; not stated
            assert ((7) > 0);  // precondition of NatMulMod (Lean: Nat.mul_mod)
            NatMulMod(Int.pow(2, n), 2, 7);  // cite: Nat.mul_mod
            // UNCITED-APPLIED internal ×28 [exec 136 807-845]: applications made inside the tactic's own automation, not stated — or_true ×1; machinery/glue: congrArg ×6, Eq.trans ×4, congr ×3, Mathlib.Meta.NormNum.IsNat.to_eq ×3 (+8 more heads, ×11) (cited in this block, not counted here: Nat.mul_mod [Lean recorded ×1])
}

// side checks at the same line (not the reported failure): 3 check(s)
// side check: divisor is always non-zero.
lemma {:induction false} vc_imo_1964_p1_2_L48_side1(n: int, n_1_0: int, n_1_0_0: nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires 0 <= n_1_0
  requires forall n0: nat :: true && 0 <= n0 && n0 < n ==> Int.pow(2, n0) % 7 == 1 || Int.pow(2, n0) % 7 == 2 || Int.pow(2, n0) % 7 == 4
  requires n != 0
  requires 0 <= n - 1
  requires 0 <= n || n - 1 == n
  requires n - 1 < n
  requires Int.pow(2, n - 1) % 7 == 1 || Int.pow(2, n - 1) % 7 == 2 || Int.pow(2, n - 1) % 7 == 4
  requires n_1_0_0 == n - 1
  requires 7 != 0
  requires 0 <= 2
  requires Int.pow(2, n_1_0_0 + 1) == Int.pow(2, n_1_0_0) * 2
  requires Int.pow(2, n_1_0_0) % 7 == 2
  requires Int.pow(2, n_1_0_0) % 7 == 2 || Int.pow(2, n_1_0_0) % 7 == 4
  requires 7 > 0
  requires 0 <= Int.pow(2, n_1_0_0)
  requires 0 <= 7
  requires 7 > 0
  requires Int.pow(2, n_1_0_0) * 2 % 7 == Int.pow(2, n_1_0_0) % 7 * (2 % 7) % 7
  requires ((Int.pow(2, n_1_0_0) % 7 == 1) && (Int.pow(2, n_1_0_0) * 2 % 7 != 1) && (Int.pow(2, n_1_0_0) * 2 % 7 != 2) && (Int.pow(2, n_1_0_0) * 2 % 7 == 1 || Int.pow(2, n_1_0_0) * 2 % 7 == 2 || Int.pow(2, n_1_0_0) * 2 % 7 == 4) && (0 <= n_1_0_0 + 1) && (Int.pow(2, n_1_0_0 + 1) % 7 != 1) && (Int.pow(2, n_1_0_0 + 1) % 7 != 2) && (Int.pow(2, n_1_0_0 + 1) % 7 == 1 || Int.pow(2, n_1_0_0 + 1) % 7 == 2 || Int.pow(2, n_1_0_0 + 1) % 7 == 4)) || ((Int.pow(2, n_1_0_0) % 7 == 1) && (Int.pow(2, n_1_0_0) * 2 % 7 != 1) && (Int.pow(2, n_1_0_0) * 2 % 7 != 2) && (Int.pow(2, n_1_0_0) * 2 % 7 == 1 || Int.pow(2, n_1_0_0) * 2 % 7 == 2 || Int.pow(2, n_1_0_0) * 2 % 7 == 4) && (0 <= n_1_0_0 + 1) && (Int.pow(2, n_1_0_0 + 1) % 7 != 1) && (Int.pow(2, n_1_0_0 + 1) % 7 == 2) && (Int.pow(2, n_1_0_0 + 1) % 7 == 1 || Int.pow(2, n_1_0_0 + 1) % 7 == 2 || Int.pow(2, n_1_0_0 + 1) % 7 == 4)) || ((Int.pow(2, n_1_0_0) % 7 == 1) && (Int.pow(2, n_1_0_0) * 2 % 7 != 1) && (Int.pow(2, n_1_0_0) * 2 % 7 != 2) && (Int.pow(2, n_1_0_0) * 2 % 7 == 1 || Int.pow(2, n_1_0_0) * 2 % 7 == 2 || Int.pow(2, n_1_0_0) * 2 % 7 == 4) && (0 <= n_1_0_0 + 1) && (Int.pow(2, n_1_0_0 + 1) % 7 == 1) && (Int.pow(2, n_1_0_0 + 1) % 7 == 1 || Int.pow(2, n_1_0_0 + 1) % 7 == 2 || Int.pow(2, n_1_0_0 + 1) % 7 == 4)) || ((Int.pow(2, n_1_0_0) % 7 == 1) && (Int.pow(2, n_1_0_0) * 2 % 7 != 1) && (Int.pow(2, n_1_0_0) * 2 % 7 == 2) && (Int.pow(2, n_1_0_0) * 2 % 7 == 1 || Int.pow(2, n_1_0_0) * 2 % 7 == 2 || Int.pow(2, n_1_0_0) * 2 % 7 == 4) && (0 <= n_1_0_0 + 1) && (Int.pow(2, n_1_0_0 + 1) % 7 != 1) && (Int.pow(2, n_1_0_0 + 1) % 7 != 2) && (Int.pow(2, n_1_0_0 + 1) % 7 == 1 || Int.pow(2, n_1_0_0 + 1) % 7 == 2 || Int.pow(2, n_1_0_0 + 1) % 7 == 4)) || ((Int.pow(2, n_1_0_0) % 7 == 1) && (Int.pow(2, n_1_0_0) * 2 % 7 != 1) && (Int.pow(2, n_1_0_0) * 2 % 7 == 2) && (Int.pow(2, n_1_0_0) * 2 % 7 == 1 || Int.pow(2, n_1_0_0) * 2 % 7 == 2 || Int.pow(2, n_1_0_0) * 2 % 7 == 4) && (0 <= n_1_0_0 + 1) && (Int.pow(2, n_1_0_0 + 1) % 7 != 1) && (Int.pow(2, n_1_0_0 + 1) % 7 == 2) && (Int.pow(2, n_1_0_0 + 1) % 7 == 1 || Int.pow(2, n_1_0_0 + 1) % 7 == 2 || Int.pow(2, n_1_0_0 + 1) % 7 == 4)) || ((Int.pow(2, n_1_0_0) % 7 == 1) && (Int.pow(2, n_1_0_0) * 2 % 7 != 1) && (Int.pow(2, n_1_0_0) * 2 % 7 == 2) && (Int.pow(2, n_1_0_0) * 2 % 7 == 1 || Int.pow(2, n_1_0_0) * 2 % 7 == 2 || Int.pow(2, n_1_0_0) * 2 % 7 == 4) && (0 <= n_1_0_0 + 1) && (Int.pow(2, n_1_0_0 + 1) % 7 == 1) && (Int.pow(2, n_1_0_0 + 1) % 7 == 1 || Int.pow(2, n_1_0_0 + 1) % 7 == 2 || Int.pow(2, n_1_0_0 + 1) % 7 == 4)) || ((Int.pow(2, n_1_0_0) % 7 == 1) && (Int.pow(2, n_1_0_0) * 2 % 7 == 1) && (Int.pow(2, n_1_0_0) * 2 % 7 == 1 || Int.pow(2, n_1_0_0) * 2 % 7 == 2 || Int.pow(2, n_1_0_0) * 2 % 7 == 4) && (0 <= n_1_0_0 + 1) && (Int.pow(2, n_1_0_0 + 1) % 7 != 1) && (Int.pow(2, n_1_0_0 + 1) % 7 != 2) && (Int.pow(2, n_1_0_0 + 1) % 7 == 1 || Int.pow(2, n_1_0_0 + 1) % 7 == 2 || Int.pow(2, n_1_0_0 + 1) % 7 == 4)) || ((Int.pow(2, n_1_0_0) % 7 == 1) && (Int.pow(2, n_1_0_0) * 2 % 7 == 1) && (Int.pow(2, n_1_0_0) * 2 % 7 == 1 || Int.pow(2, n_1_0_0) * 2 % 7 == 2 || Int.pow(2, n_1_0_0) * 2 % 7 == 4) && (0 <= n_1_0_0 + 1) && (Int.pow(2, n_1_0_0 + 1) % 7 != 1) && (Int.pow(2, n_1_0_0 + 1) % 7 == 2) && (Int.pow(2, n_1_0_0 + 1) % 7 == 1 || Int.pow(2, n_1_0_0 + 1) % 7 == 2 || Int.pow(2, n_1_0_0 + 1) % 7 == 4)) || ((Int.pow(2, n_1_0_0) % 7 == 1) && (Int.pow(2, n_1_0_0) * 2 % 7 == 1) && (Int.pow(2, n_1_0_0) * 2 % 7 == 1 || Int.pow(2, n_1_0_0) * 2 % 7 == 2 || Int.pow(2, n_1_0_0) * 2 % 7 == 4) && (0 <= n_1_0_0 + 1) && (Int.pow(2, n_1_0_0 + 1) % 7 == 1) && (Int.pow(2, n_1_0_0 + 1) % 7 == 1 || Int.pow(2, n_1_0_0 + 1) % 7 == 2 || Int.pow(2, n_1_0_0 + 1) % 7 == 4)) || (Int.pow(2, n_1_0_0) % 7 != 1) || ((Int.pow(2, n_1_0_0) % 7 != 1) && (Int.pow(2, n_1_0_0) * 2 % 7 != 1)) || ((Int.pow(2, n_1_0_0) % 7 != 1) && (Int.pow(2, n_1_0_0) * 2 % 7 != 1) && (Int.pow(2, n_1_0_0) * 2 % 7 != 2))
  ensures  7 != 0
{ }
