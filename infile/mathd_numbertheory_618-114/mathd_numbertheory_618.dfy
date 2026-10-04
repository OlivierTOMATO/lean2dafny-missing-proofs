// ════════════════════════════════════════════════════════════
// MECHANICAL TRANSLATION (emitter v2) of ast_cache_v2/mathd_numbertheory_618.json
// Each Lean `have` → `assert ... by {}` at the same depth;
// quantified haves → forall statements. Typed pipeline only.
// ════════════════════════════════════════════════════════════

include "../../library/library_new.dfy"

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_1(n: int, p: nat -> nat)
  ensures ((-(1) + (((n as int) + 1) - 41)) + ((40 + 1) - (n as int))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₇`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_2(n: int, p: nat -> nat)
  ensures ((-(1) + (((n as int) + 1) - 41)) + ((40 + 1) - (n as int))) == 0
{ }

// statement: Lean elaborated type (v3, stmt_cache) — requires/ensures below
lemma mathd_numbertheory_618(n: nat, p: nat -> nat)
  requires (n > 0)
  requires (forall x: nat :: (p(x) == (tsub((x * x), x) + 41)))
  requires (1 < gcd(p(n), p((n + 1))))
  ensures (41 <= n) // @tac 534-965 // @tac 971-1297 // @tac 1303-1383 // @tac 1389-1968 // @tac 1974-1984
{
  // have h₂ : p ( ( n + 1 ) ) == p ( n ) + 2 * n  [type from Lean state]
  assert (p((n + 1)) == (p(n) + (2 * n))) by { // @tac 580-596
    // [TACTIC: simp only [ h₀ ]]
    assert (p((n + 1)) == (tsub(((n + 1) * (n + 1)), (n + 1)) + 41));  // instance of h₀ (Lean state)
    assert (p(n) == (tsub((n * n), n) + 41));  // instance of h₀ (Lean state)
    // UNCITED-APPLIED internal ×3 [exec 20 580-596]: applications made inside the tactic's own automation, not stated — machinery/glue: congrArg ×2, congr ×1
    assert ((tsub(((n + 1) * (n + 1)), (n + 1)) + 41) == ((tsub((n * n), n) + 41) + (2 * n))) by {  // sub-goal before `have` (Lean state) // @tac 601-955 // @tac 960-965
      // have h₃ : n + 1 ^ 2 - ( n + 1 ) + 41 == ( n ^ 2 - n + 41 ) + 2 * n  [type from Lean state]
      assert ((tsub(((n + 1) * (n + 1)), (n + 1)) + 41) == ((tsub((n * n), n) + 41) + (2 * n))) by { // @tac 685-955
        // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
        // UNCITED-APPLIED Eq.symm ×1: 1 of Lean's 2 recorded instances here have no statement above (which ones is not decided) — Lean's instances: Eq.symm(n, (0 : ℕ)); Eq.symm(n✝, n + (1 : ℕ)) [exec 37 685-955]
        // cases n (zero / succ)
        if n == 0 {
          if ((0 > 0)) && ((1 < gcd(p(0), p((0 + 1))))) {  // sub-goal before `contradiction` (Lean state)
            // [TACTIC: contradiction]
            assert ((tsub(((0 + 1) * (0 + 1)), (0 + 1)) + 41) == ((tsub((0 * 0), 0) + 41) + (2 * 0)));  // sub-goal before `contradiction` (Lean state) // @tac 714-727
            // UNCITED-APPLIED internal ×1 [exec 42 714-727]: applications made inside the tactic's own automation, not stated — of_decide_eq_false ×1
          }
        } else {
          var n: nat := n - 1;
          if (((n + 1) > 0)) && ((1 < gcd(p((n + 1)), p(((n + 1) + 1))))) {  // sub-goal before `cases` (Lean state)
            // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
            // cases n (zero / succ)
            if n == 0 {
              if (((0 + 1) > 0)) && ((1 < gcd(p((0 + 1)), p(((0 + 1) + 1))))) {  // sub-goal before `norm_num` (Lean state)
                // [TACTIC: «Norm_num[_]At___»]
                assert ((tsub((((0 + 1) + 1) * ((0 + 1) + 1)), ((0 + 1) + 1)) + 41) == ((tsub(((0 + 1) * (0 + 1)), (0 + 1)) + 41) + (2 * (0 + 1))));  // sub-goal before `norm_num` (Lean state) // @tac 795-803
                // UNCITED-APPLIED internal ×20 [exec 51 795-803]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_add ×5, Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Meta.NormNum.isNat_natSub ×2, Mathlib.Meta.NormNum.isNat_pow ×2 (+7 more heads, ×7)
              }
            } else {
              var n: nat := n - 1;
              if ((((n + 1) + 1) > 0)) && ((1 < gcd(p(((n + 1) + 1)), p((((n + 1) + 1) + 1))))) {  // sub-goal before `simp` (Lean state)
                // [TACTIC: «_<;>_» [ Nat.mul_succ , Nat.add_assoc , Nat.pow_succ , Nat.mul_add , Nat.add_mul ] simp [ Nat.mul_succ , Nat.add_assoc , Nat.pow_succ , Nat.mul_add , Nat.add_mul ] simp [ Nat.mul_succ , Nat.add_assoc , Nat.pow_succ , Nat.mul_add , Nat.add_mul ] <;> ring_nf at * <;> omega omega]
                // [TACTIC: choice [ Nat.mul_succ , Nat.add_assoc , Nat.pow_succ , Nat.mul_add , Nat.add_mul ] simp [ Nat.mul_succ , Nat.add_assoc , Nat.pow_succ , Nat.mul_add , Nat.add_mul ] simp [ Nat.mul_succ , Nat.add_assoc , Nat.pow_succ , Nat.mul_add , Nat.add_mul ]]
                // UNCITED Nat.mul_succ: no Lean instance recorded (arguments unknown), not guessed
                // UNCITED Nat.add_assoc: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances here: (n := n, m := (1 : ℕ), k := (1 : ℕ)); (n := n, m := (2 : ℕ), k := (1 : ℕ)); (n := n * n, m := (3 : ℕ) * n, k := n + (3 : ℕ)); (n := n * n, m := (3 : ℕ) * n + (n + (3 : ℕ)), k := n + (3 : ℕ)) …
                // UNCITED Nat.pow_succ: no Lean instance recorded (arguments unknown), not guessed
                NatPowOne((n + 3));  // cite: pow_one [applied by the tactic, not named in it]
                NatPowOne((n + 2));  // cite: pow_one [applied by the tactic, not named in it]
                // UNCITED Nat.mul_add: named in this rewriting step; no record of Lean's proof attributes an application of it to this execution (its recorded applications are at other tactics of the proof; a rewrite at a hypothesis is filed under the tactic that later uses the hypothesis, and a conditional / under-binder simp rewrite may be unrecorded), so whether it was applied here is not known; not stated
                // UNCITED-APPLIED Nat.add_mul: named here and applied by Lean's proof at this tactic (2 recorded applications); no library counterpart, not stated
                // UNCITED-APPLIED internal ×38 [exec 65 834-908]: applications made inside the tactic's own automation, not stated — Nat.add_assoc ×16, Nat.add_mul ×2; machinery/glue: congrArg ×8, Eq.trans ×8, congr ×4 (cited in this block, not counted here: pow_one [Lean recorded ×2])
                assert ((tsub(((n * n) + ((3 * n) + (n + (3 + (n + (3 + (n + 3))))))), (n + 3)) + 41) == (tsub(((n * n) + ((2 * n) + (n + (2 + (n + 2))))), (n + 2)) + (41 + ((2 * n) + 4)))) by {  // sub-goal of `ring_nf` (Lean state) // @tac 923-935
                  NatPowOne(n);  // cite: pow_one [applied by the tactic, not named in it]
                  NatPowOne(tsub(((9 + (n * 6)) + Int.pow(n, 2)), (3 + n)));  // cite: pow_one [applied by the tactic, not named in it]
                  NatPowOne(tsub(((4 + (n * 4)) + Int.pow(n, 2)), (2 + n)));  // cite: pow_one [applied by the tactic, not named in it]
                  // UNCITED-APPLIED mul_one ×4: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := n ^ (2 : ℕ)); (a := n); (a := (9 : ℕ) + n * (6 : ℕ) + n ^ (2 : ℕ) - ((3 : ℕ) + n)); (a := (4 : ℕ) + n * (4 : ℕ) + n ^ (2 : ℕ) - ((2 : ℕ) + n))
                  assert (1 < gcd(p((2 + n)), p((3 + n))));  // hypothesis h₁ after `ring_nf` (Lean state) // @tac-hyp 923-935
                  assert ((2 + n) > 0);  // hypothesis hn after `ring_nf` (Lean state) // @tac-hyp 923-935
                  assert (forall x: nat :: (p(x) == (41 + tsub((x * x), x))));  // hypothesis h₀ after `ring_nf` (Lean state) // @tac-hyp 923-935
                  assert ((41 + tsub(((9 + (n * 6)) + (n * n)), (3 + n))) == ((45 + (n * 2)) + tsub(((4 + (n * 4)) + (n * n)), (2 + n)))) by {  // sub-goal of `omega` (Lean state) // @tac 950-955
                    // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                    // UNCITED-APPLIED internal ×179 [exec 83 950-955]: applications made inside the tactic's own automation, not stated — Int.ofNat_add ×8, Int.sub_nonneg_of_le ×5, Int.add_one_le_of_lt ×4, Int.ofNat_mul ×3, le_of_le_of_eq ×3, Int.sub_eq_zero_of_eq ×2, Int.ofNat_nonneg ×2, Nat.lt_or_gt_of_ne ×1; machinery/glue: Eq.symm ×57, Lean.Omega.tidy_sat ×8, Lean.Omega.Int.add_congr ×8, Lean.Omega.LinearCombo.add_eval ×8 (+18 more heads, ×70)
                  }
                  // UNCITED-APPLIED internal ×121 [exec 74 923-935]: applications made inside the tactic's own automation, not stated — mul_one ×4, add_zero ×4; machinery/glue: congr ×8, congrArg ×8, Eq.trans ×8, Mathlib.Tactic.Ring.add_congr ×8 (+23 more heads, ×81) (cited in this block, not counted here: pow_one [Lean recorded ×3])
                }
                assert ((tsub(((((n + 1) + 1) + 1) * (((n + 1) + 1) + 1)), (((n + 1) + 1) + 1)) + 41) == ((tsub((((n + 1) + 1) * ((n + 1) + 1)), ((n + 1) + 1)) + 41) + (2 * ((n + 1) + 1))));  // sub-goal before `simp` (Lean state) // @tac 834-955 // @tac 834-935 // @tac 834-908
              }
            }
            assert ((tsub((((n + 1) + 1) * ((n + 1) + 1)), ((n + 1) + 1)) + 41) == ((tsub(((n + 1) * (n + 1)), (n + 1)) + 41) + (2 * (n + 1))));  // sub-goal before `cases` (Lean state) // @tac 754-955
          }
        }
      }
      // [TACTIC: omega]
      // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
      // UNCITED-APPLIED internal ×63 [exec 84 960-965]: applications made inside the tactic's own automation, not stated — Int.ofNat_add ×3, le_of_le_of_eq ×2, Int.sub_nonneg_of_le ×2, Int.add_one_le_of_lt ×2, Nat.lt_or_gt_of_ne ×1, Int.ofNat_mul ×1, Int.sub_eq_zero_of_eq ×1; machinery/glue: Eq.symm ×13, Lean.Omega.Int.add_congr ×5, Lean.Omega.LinearCombo.add_eval ×5, Eq.trans ×4 (+16 more heads, ×24)
    }
  }
  // have h₃ : Nat.gcd ( ( p ( n ) ) , ( p ( ( n + 1 ) ) ) ) == Nat.gcd ( ( p ( n ) )  [type from Lean state]
  assert (gcd(p(n), p((n + 1))) == gcd(p(n), (2 * n))) by { // @tac 1043-1052
    // [TACTIC: rwSeq [ h₂ ]]
    // UNCITED-APPLIED congrArg(p (n + (1 : ℕ)), p n + (2 : ℕ) * n, fun (_a : ℕ) => Nat.gcd (p n) _a = Nat.gcd (p n) ((2 : ℕ) * n)): no library counterpart (not stated) [exec 105 1043-1052]
    assert (gcd(p(n), (p(n) + (2 * n))) == gcd(p(n), (2 * n))) by {  // sub-goal before `have` (Lean state) // @tac 1057-1233 // @tac 1238-1297 // @tac 1238-1283 // @tac 1238-1267 // @tac 1238-1247
      // have h₄ : Nat.gcd ( ( p ( n ) ) , ( p ( n ) + 2 * n ) ) == Nat.gcd ( ( p ( n ) )  [type from Lean state]
      assert (gcd(p(n), (p(n) + (2 * n))) == gcd(p(n), (2 * n))) by { // @tac 1133-1233 // @tac 1133-1174
        // [TACTIC: «_<;>_» [ ← Nat.add_zero ( p n ) , Nat.gcd_comm ] rw [ ← Nat.add_zero ( p n ) , Nat.gcd_comm ] <;> simp [ Nat.gcd_add_mul_right_right , Nat.gcd_comm ] simp [ Nat.gcd_add_mul_right_right , Nat.gcd_comm ] simp [ Nat.gcd_add_mul_right_right , Nat.gcd_comm ]]
        // [TACTIC: choice [ ← Nat.add_zero ( p n ) , Nat.gcd_comm ] rw [ ← Nat.add_zero ( p n ) , Nat.gcd_comm ]]
        NatAddZero(p(n));  // cite: Nat.add_zero
        NatGcdComm((p(n) + 0), ((p(n) + 0) + (2 * n)));  // cite: Nat.gcd_comm
        // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
        // UNCITED-APPLIED congrArg(p n, p n + (0 : ℕ), fun (_a : ℕ) => Nat.gcd _a (_a + (2 : ℕ) * n) = Nat.gcd _a ((2 : ℕ) *…): no library counterpart (not stated) [exec 157 1133-1174]
        // UNCITED-APPLIED congrArg(Nat.gcd (p n + (0 : ℕ)) (p n + (0 : ℕ) + (2 : ℕ) * n), Nat.gcd (p n + (0 : ℕ) + (2 : ℕ) * n) (p n + (0 : ℕ)), fun (_a : ℕ) => _a = Nat.gcd (p n + (0 : ℕ)) ((2 : ℕ) * n)): no library counterpart (not stated) [exec 157 1133-1174]
        assert 0 <= n;  /* [IN-FILE CHECK] requires 1 of vc_mathd_numbertheory_618_L114 */
        assert 0 <= n;  /* [IN-FILE CHECK] requires 2 of vc_mathd_numbertheory_618_L114 */
        assert n > 0;  /* [IN-FILE CHECK] requires 3 of vc_mathd_numbertheory_618_L114 */
        assert forall x_1: nat :: p.requires(x_1);  /* [IN-FILE CHECK] requires 4 of vc_mathd_numbertheory_618_L114 */
        assert forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41;  /* [IN-FILE CHECK] requires 5 of vc_mathd_numbertheory_618_L114 */
        assert 1 < gcd(p(n), p(n + 1));  /* [IN-FILE CHECK] requires 6 of vc_mathd_numbertheory_618_L114 */
        assert 0 <= n + 1;  /* [IN-FILE CHECK] requires 7 of vc_mathd_numbertheory_618_L114 */
        assert p(n + 1) == p(n) + 2 * n;  /* [IN-FILE CHECK] requires 8 of vc_mathd_numbertheory_618_L114 */
        assert p(n) + 0 == p(n);  /* [IN-FILE CHECK] requires 9 of vc_mathd_numbertheory_618_L114 */
        assert 0 <= p(n) + 0;  /* [IN-FILE CHECK] requires 10 of vc_mathd_numbertheory_618_L114 */
        assert 0 <= p(n) + 0 + 2 * n;  /* [IN-FILE CHECK] requires 11 of vc_mathd_numbertheory_618_L114 */
        assert gcd(p(n) + 0, p(n) + 0 + 2 * n) == gcd(p(n) + 0 + 2 * n, p(n) + 0);  /* [IN-FILE CHECK] requires 12 of vc_mathd_numbertheory_618_L114 */
        assert 0 <= p(n) + 2 * n;  /* [IN-FILE CHECK] requires 13 of vc_mathd_numbertheory_618_L114 */
        assert gcd(p(n) + 2 * n, p(n)) == gcd(p(n), p(n) + 2 * n);  /* [IN-FILE CHECK] requires 14 of vc_mathd_numbertheory_618_L114 */
        assert 0 <= 2 * n;  /* [IN-FILE CHECK] requires 15 of vc_mathd_numbertheory_618_L114 */
        vc_mathd_numbertheory_618_L114(n, n, p);  /* [IN-FILE CHECK] the closed lemma for line 114 */
        assert (gcd(((p(n) + 0) + (2 * n)), (p(n) + 0)) == gcd((p(n) + 0), (2 * n))) by {  // sub-goal of `simp` (Lean state) // @tac 1185-1233
          // UNCITED Nat.gcd_add_mul_right_right: no Lean instance recorded (arguments unknown), not guessed
          NatGcdComm((p(n) + (2 * n)), p(n));  // cite: Nat.gcd_comm
          // UNCITED-APPLIED internal ×12 [exec 193 1185-1233]: applications made inside the tactic's own automation, not stated — add_zero ×1, Nat.gcd_self_add_right ×1; machinery/glue: Eq.trans ×3, congrArg ×3, congr ×2, of_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.gcd_comm [Lean recorded ×1])
        }
      }
      // [TACTIC: «_<;>_» [ h₄ ] rw [ h₄ ] <;> simp [ h₀ ] simp [ h₀ ] simp [ h₀ ] <;> ring_nf ring_nf <;> omega omega]
      // [TACTIC: rwSeq [ h₄ ]]
      // `rw` closed the goal; the rest of the chain did not run
      // UNCITED-APPLIED congrArg(Nat.gcd (p n) (p n + (2 : ℕ) * n), Nat.gcd (p n) ((2 : ℕ) * n), fun (_a : ℕ) => _a = Nat.gcd (p n) ((2 : ℕ) * n)): no library counterpart (not stated) [exec 213 1238-1247]
    }
  }
  // have h₄ : 1 < Nat.gcd ( ( p ( n ) ) , ( 2 * n ) )  [type from Lean state]
  assert (1 < gcd(p(n), (2 * n))) by { // @tac 1351-1368 // @tac 1373-1383
    // [TACTIC: rwSeq [ h₃ ] at h₁]
    assert (1 < gcd(p(n), (2 * n)));  // hypothesis h₁ after `rw` (Lean state) // @tac-hyp 1351-1368
    // [TACTIC: exact h₁]
    assert (1 < gcd(p(n), (2 * n)));  // hypothesis h₁ at `exact` (Lean state)
    // UNCITED-APPLIED congrArg(Nat.gcd (p n) (p (n + (1 : ℕ))), Nat.gcd (p n) ((2 : ℕ) * n), fun (_a : ℕ) => (1 : ℕ) < _a): no library counterpart (not stated) [exec 299 1373-1383]
  }
  // have h₅ : 41 <= n  [type from Lean state]
  assert (41 <= n) by { // @tac 1420-1431
    // UNCITED-APPLIED Decidable.byContradiction: no library counterpart (not stated) [exec 323 1420-1431]
    // by_contra h
    if !((41 <= n)) {
      assert false by {  // sub-goal before `have` (Lean state) // @tac 1511-1546 // @tac 1551-1586 // @tac 1591-1968 // @tac 1591-1944 // @tac 1591-1922 // @tac 1591-1763 // @tac 1591-1738 // @tac 1591-1714 // @tac 1591-1692 // @tac 1591-1607
        // have h₆ : n <= 40  [type from Lean state]
        assert (n <= 40) by { // @tac 1538-1546
          // [TACTIC: «Linarith[_]At___»]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1538-1546 exec 340)
          // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(-1 : ℤ) + (↑n + (1 : ℤ) - (41 : ℤ)) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
          cert_identity_1(n, p);  // cert: add_lt_of_neg_of_le
          // UNCITED-APPLIED internal ×12 [exec 340 1538-1546]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1, lt_of_not_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
          // UNCITED-APPLIED internal ×60 [exec 341 1538-1546]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×4, Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×4, Mathlib.Meta.NormNum.isInt_add ×4 (+25 more heads, ×44)
        }
        // have h₇ : n <= 40  [type from Lean state]
        assert (n <= 40) by { // @tac 1578-1586
          // [TACTIC: «Linarith[_]At___»]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1578-1586 exec 358)
          // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(-1 : ℤ) + (↑n + (1 : ℤ) - (41 : ℤ)) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
          cert_identity_2(n, p);  // cert: add_lt_of_neg_of_le
          // UNCITED-APPLIED internal ×12 [exec 358 1578-1586]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1, lt_of_not_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
          // UNCITED-APPLIED internal ×60 [exec 359 1578-1586]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×4, Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×4, Mathlib.Meta.NormNum.isInt_add ×4 (+25 more heads, ×44)
        }
        // [TACTIC: «_<;>_» n <;> norm_num [ h₀ , Nat.gcd_eq_right , Nat.gcd_eq_left , Nat.gcd_eq_right ] at h₄ ⊢ <;> ( try omega omega ) <;> ( try contradiction contradiction ) <;> ( try norm_num norm_num ) <;> ( try { ring_nf at h₄ ⊢ norm_num at h₄ ⊢ <;> ( try omega omega ) <;> ( try contradiction contradiction ) } ) <;> ( try omega omega ) <;> ( try contradiction contradiction )]
        // [TACTIC: Interval_cases n]
        // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
        // UNCITED-APPLIED internal ×63 [exec 395 1591-1607]: applications made inside the tactic's own automation, not stated — le_antisymm ×8, Nat.ge_of_not_lt ×8, Nat.gt_of_not_le ×1; machinery/glue: Eq.symm ×40, Mathlib.Meta.NormNum.IsNat.to_raw_eq ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Tactic.IntervalCases.of_not_le_left ×1 (+1 more heads, ×1)
        if (n == 1) && ((1 > 0)) && ((1 < gcd(p(1), p((1 + 1))))) && ((p((1 + 1)) == (p(1) + (2 * 1)))) && ((gcd(p(1), p((1 + 1))) == gcd(p(1), (2 * 1)))) && ((1 < gcd(p(1), (2 * 1)))) && (!(41 <= 1)) && ((1 <= 40)) {  // sub-goal of `norm_num` (Lean state)
          // UNCITED Nat.gcd_eq_right: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED Nat.gcd_eq_left: no Lean instance recorded (arguments unknown), not guessed
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 1612-1692
          // UNCITED-APPLIED internal ×20 [exec 404 1612-1692]: applications made inside the tactic's own automation, not stated — Tactic.NormNum.isNat_gcd ×1, Tactic.NormNum.nat_gcd_helper_2' ×1; machinery/glue: Eq.trans ×3, Mathlib.Meta.NormNum.IsNat.to_eq ×3, Mathlib.Meta.NormNum.isNat_ofNat ×3, congrArg ×2 (+7 more heads, ×7)
        }
        if (n == 2) && ((2 > 0)) && ((1 < gcd(p(2), p((2 + 1))))) && ((p((2 + 1)) == (p(2) + (2 * 2)))) && ((gcd(p(2), p((2 + 1))) == gcd(p(2), (2 * 2)))) && ((1 < gcd(p(2), (2 * 2)))) && (!(41 <= 2)) && ((2 <= 40)) {  // sub-goal of `norm_num` (Lean state)
          // UNCITED Nat.gcd_eq_right: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED Nat.gcd_eq_left: no Lean instance recorded (arguments unknown), not guessed
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 1612-1692
          // UNCITED-APPLIED internal ×22 [exec 407 1612-1692]: applications made inside the tactic's own automation, not stated — Tactic.NormNum.isNat_gcd ×1, Tactic.NormNum.nat_gcd_helper_1' ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×4, Eq.trans ×3, Mathlib.Meta.NormNum.IsNat.to_eq ×3, congrArg ×2 (+8 more heads, ×8)
        }
        if (n == 3) && ((3 > 0)) && ((1 < gcd(p(3), p((3 + 1))))) && ((p((3 + 1)) == (p(3) + (2 * 3)))) && ((gcd(p(3), p((3 + 1))) == gcd(p(3), (2 * 3)))) && ((1 < gcd(p(3), (2 * 3)))) && (!(41 <= 3)) && ((3 <= 40)) {  // sub-goal of `norm_num` (Lean state)
          // UNCITED Nat.gcd_eq_right: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED Nat.gcd_eq_left: no Lean instance recorded (arguments unknown), not guessed
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 1612-1692
          // UNCITED-APPLIED internal ×23 [exec 410 1612-1692]: applications made inside the tactic's own automation, not stated — Tactic.NormNum.isNat_gcd ×1, Tactic.NormNum.nat_gcd_helper_1' ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Eq.trans ×3, Mathlib.Meta.NormNum.IsNat.to_eq ×3, congrArg ×2 (+8 more heads, ×8)
        }
        if (n == 4) && ((4 > 0)) && ((1 < gcd(p(4), p((4 + 1))))) && ((p((4 + 1)) == (p(4) + (2 * 4)))) && ((gcd(p(4), p((4 + 1))) == gcd(p(4), (2 * 4)))) && ((1 < gcd(p(4), (2 * 4)))) && (!(41 <= 4)) && ((4 <= 40)) {  // sub-goal of `norm_num` (Lean state)
          // UNCITED Nat.gcd_eq_right: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED Nat.gcd_eq_left: no Lean instance recorded (arguments unknown), not guessed
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 1612-1692
          // UNCITED-APPLIED internal ×23 [exec 413 1612-1692]: applications made inside the tactic's own automation, not stated — Tactic.NormNum.isNat_gcd ×1, Tactic.NormNum.nat_gcd_helper_1' ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Eq.trans ×3, Mathlib.Meta.NormNum.IsNat.to_eq ×3, congrArg ×2 (+8 more heads, ×8)
        }
        if (n == 5) && ((5 > 0)) && ((1 < gcd(p(5), p((5 + 1))))) && ((p((5 + 1)) == (p(5) + (2 * 5)))) && ((gcd(p(5), p((5 + 1))) == gcd(p(5), (2 * 5)))) && ((1 < gcd(p(5), (2 * 5)))) && (!(41 <= 5)) && ((5 <= 40)) {  // sub-goal of `norm_num` (Lean state)
          // UNCITED Nat.gcd_eq_right: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED Nat.gcd_eq_left: no Lean instance recorded (arguments unknown), not guessed
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 1612-1692
          // UNCITED-APPLIED internal ×23 [exec 416 1612-1692]: applications made inside the tactic's own automation, not stated — Tactic.NormNum.isNat_gcd ×1, Tactic.NormNum.nat_gcd_helper_2' ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Eq.trans ×3, Mathlib.Meta.NormNum.IsNat.to_eq ×3, congrArg ×2 (+8 more heads, ×8)
        }
        if (n == 6) && ((6 > 0)) && ((1 < gcd(p(6), p((6 + 1))))) && ((p((6 + 1)) == (p(6) + (2 * 6)))) && ((gcd(p(6), p((6 + 1))) == gcd(p(6), (2 * 6)))) && ((1 < gcd(p(6), (2 * 6)))) && (!(41 <= 6)) && ((6 <= 40)) {  // sub-goal of `norm_num` (Lean state)
          // UNCITED Nat.gcd_eq_right: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED Nat.gcd_eq_left: no Lean instance recorded (arguments unknown), not guessed
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 1612-1692
          // UNCITED-APPLIED internal ×23 [exec 419 1612-1692]: applications made inside the tactic's own automation, not stated — Tactic.NormNum.isNat_gcd ×1, Tactic.NormNum.nat_gcd_helper_1' ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Eq.trans ×3, Mathlib.Meta.NormNum.IsNat.to_eq ×3, congrArg ×2 (+8 more heads, ×8)
        }
        if (n == 7) && ((7 > 0)) && ((1 < gcd(p(7), p((7 + 1))))) && ((p((7 + 1)) == (p(7) + (2 * 7)))) && ((gcd(p(7), p((7 + 1))) == gcd(p(7), (2 * 7)))) && ((1 < gcd(p(7), (2 * 7)))) && (!(41 <= 7)) && ((7 <= 40)) {  // sub-goal of `norm_num` (Lean state)
          // UNCITED Nat.gcd_eq_right: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED Nat.gcd_eq_left: no Lean instance recorded (arguments unknown), not guessed
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 1612-1692
          // UNCITED-APPLIED internal ×23 [exec 422 1612-1692]: applications made inside the tactic's own automation, not stated — Tactic.NormNum.isNat_gcd ×1, Tactic.NormNum.nat_gcd_helper_1' ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Eq.trans ×3, Mathlib.Meta.NormNum.IsNat.to_eq ×3, congrArg ×2 (+8 more heads, ×8)
        }
        if (n == 8) && ((8 > 0)) && ((1 < gcd(p(8), p((8 + 1))))) && ((p((8 + 1)) == (p(8) + (2 * 8)))) && ((gcd(p(8), p((8 + 1))) == gcd(p(8), (2 * 8)))) && ((1 < gcd(p(8), (2 * 8)))) && (!(41 <= 8)) && ((8 <= 40)) {  // sub-goal of `norm_num` (Lean state)
          // UNCITED Nat.gcd_eq_right: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED Nat.gcd_eq_left: no Lean instance recorded (arguments unknown), not guessed
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 1612-1692
          // UNCITED-APPLIED internal ×23 [exec 425 1612-1692]: applications made inside the tactic's own automation, not stated — Tactic.NormNum.isNat_gcd ×1, Tactic.NormNum.nat_gcd_helper_2' ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Eq.trans ×3, Mathlib.Meta.NormNum.IsNat.to_eq ×3, congrArg ×2 (+8 more heads, ×8)
        }
        if (n == 9) && ((9 > 0)) && ((1 < gcd(p(9), p((9 + 1))))) && ((p((9 + 1)) == (p(9) + (2 * 9)))) && ((gcd(p(9), p((9 + 1))) == gcd(p(9), (2 * 9)))) && ((1 < gcd(p(9), (2 * 9)))) && (!(41 <= 9)) && ((9 <= 40)) {  // sub-goal of `norm_num` (Lean state)
          // UNCITED Nat.gcd_eq_right: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED Nat.gcd_eq_left: no Lean instance recorded (arguments unknown), not guessed
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 1612-1692
          // UNCITED-APPLIED internal ×23 [exec 428 1612-1692]: applications made inside the tactic's own automation, not stated — Tactic.NormNum.isNat_gcd ×1, Tactic.NormNum.nat_gcd_helper_1' ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Eq.trans ×3, Mathlib.Meta.NormNum.IsNat.to_eq ×3, congrArg ×2 (+8 more heads, ×8)
        }
        if (n == 10) && ((10 > 0)) && ((1 < gcd(p(10), p((10 + 1))))) && ((p((10 + 1)) == (p(10) + (2 * 10)))) && ((gcd(p(10), p((10 + 1))) == gcd(p(10), (2 * 10)))) && ((1 < gcd(p(10), (2 * 10)))) && (!(41 <= 10)) && ((10 <= 40)) {  // sub-goal of `norm_num` (Lean state)
          // UNCITED Nat.gcd_eq_right: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED Nat.gcd_eq_left: no Lean instance recorded (arguments unknown), not guessed
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 1612-1692
          // UNCITED-APPLIED internal ×23 [exec 431 1612-1692]: applications made inside the tactic's own automation, not stated — Tactic.NormNum.isNat_gcd ×1, Tactic.NormNum.nat_gcd_helper_1' ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Eq.trans ×3, Mathlib.Meta.NormNum.IsNat.to_eq ×3, congrArg ×2 (+8 more heads, ×8)
        }
        if (n == 11) && ((11 > 0)) && ((1 < gcd(p(11), p((11 + 1))))) && ((p((11 + 1)) == (p(11) + (2 * 11)))) && ((gcd(p(11), p((11 + 1))) == gcd(p(11), (2 * 11)))) && ((1 < gcd(p(11), (2 * 11)))) && (!(41 <= 11)) && ((11 <= 40)) {  // sub-goal of `norm_num` (Lean state)
          // UNCITED Nat.gcd_eq_right: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED Nat.gcd_eq_left: no Lean instance recorded (arguments unknown), not guessed
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 1612-1692
          // UNCITED-APPLIED internal ×23 [exec 434 1612-1692]: applications made inside the tactic's own automation, not stated — Tactic.NormNum.isNat_gcd ×1, Tactic.NormNum.nat_gcd_helper_2' ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Eq.trans ×3, Mathlib.Meta.NormNum.IsNat.to_eq ×3, congrArg ×2 (+8 more heads, ×8)
        }
        if (n == 12) && ((12 > 0)) && ((1 < gcd(p(12), p((12 + 1))))) && ((p((12 + 1)) == (p(12) + (2 * 12)))) && ((gcd(p(12), p((12 + 1))) == gcd(p(12), (2 * 12)))) && ((1 < gcd(p(12), (2 * 12)))) && (!(41 <= 12)) && ((12 <= 40)) {  // sub-goal of `norm_num` (Lean state)
          // UNCITED Nat.gcd_eq_right: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED Nat.gcd_eq_left: no Lean instance recorded (arguments unknown), not guessed
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 1612-1692
          // UNCITED-APPLIED internal ×23 [exec 437 1612-1692]: applications made inside the tactic's own automation, not stated — Tactic.NormNum.isNat_gcd ×1, Tactic.NormNum.nat_gcd_helper_2' ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Eq.trans ×3, Mathlib.Meta.NormNum.IsNat.to_eq ×3, congrArg ×2 (+8 more heads, ×8)
        }
        if (n == 13) && ((13 > 0)) && ((1 < gcd(p(13), p((13 + 1))))) && ((p((13 + 1)) == (p(13) + (2 * 13)))) && ((gcd(p(13), p((13 + 1))) == gcd(p(13), (2 * 13)))) && ((1 < gcd(p(13), (2 * 13)))) && (!(41 <= 13)) && ((13 <= 40)) {  // sub-goal of `norm_num` (Lean state)
          // UNCITED Nat.gcd_eq_right: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED Nat.gcd_eq_left: no Lean instance recorded (arguments unknown), not guessed
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 1612-1692
          // UNCITED-APPLIED internal ×23 [exec 440 1612-1692]: applications made inside the tactic's own automation, not stated — Tactic.NormNum.isNat_gcd ×1, Tactic.NormNum.nat_gcd_helper_2' ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Eq.trans ×3, Mathlib.Meta.NormNum.IsNat.to_eq ×3, congrArg ×2 (+8 more heads, ×8)
        }
        if (n == 14) && ((14 > 0)) && ((1 < gcd(p(14), p((14 + 1))))) && ((p((14 + 1)) == (p(14) + (2 * 14)))) && ((gcd(p(14), p((14 + 1))) == gcd(p(14), (2 * 14)))) && ((1 < gcd(p(14), (2 * 14)))) && (!(41 <= 14)) && ((14 <= 40)) {  // sub-goal of `norm_num` (Lean state)
          // UNCITED Nat.gcd_eq_right: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED Nat.gcd_eq_left: no Lean instance recorded (arguments unknown), not guessed
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 1612-1692
          // UNCITED-APPLIED internal ×23 [exec 443 1612-1692]: applications made inside the tactic's own automation, not stated — Tactic.NormNum.isNat_gcd ×1, Tactic.NormNum.nat_gcd_helper_1' ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Eq.trans ×3, Mathlib.Meta.NormNum.IsNat.to_eq ×3, congrArg ×2 (+8 more heads, ×8)
        }
        if (n == 15) && ((15 > 0)) && ((1 < gcd(p(15), p((15 + 1))))) && ((p((15 + 1)) == (p(15) + (2 * 15)))) && ((gcd(p(15), p((15 + 1))) == gcd(p(15), (2 * 15)))) && ((1 < gcd(p(15), (2 * 15)))) && (!(41 <= 15)) && ((15 <= 40)) {  // sub-goal of `norm_num` (Lean state)
          // UNCITED Nat.gcd_eq_right: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED Nat.gcd_eq_left: no Lean instance recorded (arguments unknown), not guessed
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 1612-1692
          // UNCITED-APPLIED internal ×23 [exec 446 1612-1692]: applications made inside the tactic's own automation, not stated — Tactic.NormNum.isNat_gcd ×1, Tactic.NormNum.nat_gcd_helper_2' ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Eq.trans ×3, Mathlib.Meta.NormNum.IsNat.to_eq ×3, congrArg ×2 (+8 more heads, ×8)
        }
        if (n == 16) && ((16 > 0)) && ((1 < gcd(p(16), p((16 + 1))))) && ((p((16 + 1)) == (p(16) + (2 * 16)))) && ((gcd(p(16), p((16 + 1))) == gcd(p(16), (2 * 16)))) && ((1 < gcd(p(16), (2 * 16)))) && (!(41 <= 16)) && ((16 <= 40)) {  // sub-goal of `norm_num` (Lean state)
          // UNCITED Nat.gcd_eq_right: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED Nat.gcd_eq_left: no Lean instance recorded (arguments unknown), not guessed
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 1612-1692
          // UNCITED-APPLIED internal ×23 [exec 449 1612-1692]: applications made inside the tactic's own automation, not stated — Tactic.NormNum.isNat_gcd ×1, Tactic.NormNum.nat_gcd_helper_2' ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Eq.trans ×3, Mathlib.Meta.NormNum.IsNat.to_eq ×3, congrArg ×2 (+8 more heads, ×8)
        }
        if (n == 17) && ((17 > 0)) && ((1 < gcd(p(17), p((17 + 1))))) && ((p((17 + 1)) == (p(17) + (2 * 17)))) && ((gcd(p(17), p((17 + 1))) == gcd(p(17), (2 * 17)))) && ((1 < gcd(p(17), (2 * 17)))) && (!(41 <= 17)) && ((17 <= 40)) {  // sub-goal of `norm_num` (Lean state)
          // UNCITED Nat.gcd_eq_right: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED Nat.gcd_eq_left: no Lean instance recorded (arguments unknown), not guessed
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 1612-1692
          // UNCITED-APPLIED internal ×23 [exec 452 1612-1692]: applications made inside the tactic's own automation, not stated — Tactic.NormNum.isNat_gcd ×1, Tactic.NormNum.nat_gcd_helper_2' ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Eq.trans ×3, Mathlib.Meta.NormNum.IsNat.to_eq ×3, congrArg ×2 (+8 more heads, ×8)
        }
        if (n == 18) && ((18 > 0)) && ((1 < gcd(p(18), p((18 + 1))))) && ((p((18 + 1)) == (p(18) + (2 * 18)))) && ((gcd(p(18), p((18 + 1))) == gcd(p(18), (2 * 18)))) && ((1 < gcd(p(18), (2 * 18)))) && (!(41 <= 18)) && ((18 <= 40)) {  // sub-goal of `norm_num` (Lean state)
          // UNCITED Nat.gcd_eq_right: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED Nat.gcd_eq_left: no Lean instance recorded (arguments unknown), not guessed
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 1612-1692
          // UNCITED-APPLIED internal ×23 [exec 455 1612-1692]: applications made inside the tactic's own automation, not stated — Tactic.NormNum.isNat_gcd ×1, Tactic.NormNum.nat_gcd_helper_2' ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Eq.trans ×3, Mathlib.Meta.NormNum.IsNat.to_eq ×3, congrArg ×2 (+8 more heads, ×8)
        }
        if (n == 19) && ((19 > 0)) && ((1 < gcd(p(19), p((19 + 1))))) && ((p((19 + 1)) == (p(19) + (2 * 19)))) && ((gcd(p(19), p((19 + 1))) == gcd(p(19), (2 * 19)))) && ((1 < gcd(p(19), (2 * 19)))) && (!(41 <= 19)) && ((19 <= 40)) {  // sub-goal of `norm_num` (Lean state)
          // UNCITED Nat.gcd_eq_right: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED Nat.gcd_eq_left: no Lean instance recorded (arguments unknown), not guessed
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 1612-1692
          // UNCITED-APPLIED internal ×23 [exec 458 1612-1692]: applications made inside the tactic's own automation, not stated — Tactic.NormNum.isNat_gcd ×1, Tactic.NormNum.nat_gcd_helper_2' ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Eq.trans ×3, Mathlib.Meta.NormNum.IsNat.to_eq ×3, congrArg ×2 (+8 more heads, ×8)
        }
        if (n == 20) && ((20 > 0)) && ((1 < gcd(p(20), p((20 + 1))))) && ((p((20 + 1)) == (p(20) + (2 * 20)))) && ((gcd(p(20), p((20 + 1))) == gcd(p(20), (2 * 20)))) && ((1 < gcd(p(20), (2 * 20)))) && (!(41 <= 20)) && ((20 <= 40)) {  // sub-goal of `norm_num` (Lean state)
          // UNCITED Nat.gcd_eq_right: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED Nat.gcd_eq_left: no Lean instance recorded (arguments unknown), not guessed
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 1612-1692
          // UNCITED-APPLIED internal ×23 [exec 461 1612-1692]: applications made inside the tactic's own automation, not stated — Tactic.NormNum.isNat_gcd ×1, Tactic.NormNum.nat_gcd_helper_1' ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Eq.trans ×3, Mathlib.Meta.NormNum.IsNat.to_eq ×3, congrArg ×2 (+8 more heads, ×8)
        }
        if (n == 21) && ((21 > 0)) && ((1 < gcd(p(21), p((21 + 1))))) && ((p((21 + 1)) == (p(21) + (2 * 21)))) && ((gcd(p(21), p((21 + 1))) == gcd(p(21), (2 * 21)))) && ((1 < gcd(p(21), (2 * 21)))) && (!(41 <= 21)) && ((21 <= 40)) {  // sub-goal of `norm_num` (Lean state)
          // UNCITED Nat.gcd_eq_right: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED Nat.gcd_eq_left: no Lean instance recorded (arguments unknown), not guessed
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 1612-1692
          // UNCITED-APPLIED internal ×23 [exec 464 1612-1692]: applications made inside the tactic's own automation, not stated — Tactic.NormNum.isNat_gcd ×1, Tactic.NormNum.nat_gcd_helper_1' ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Eq.trans ×3, Mathlib.Meta.NormNum.IsNat.to_eq ×3, congrArg ×2 (+8 more heads, ×8)
        }
        if (n == 22) && ((22 > 0)) && ((1 < gcd(p(22), p((22 + 1))))) && ((p((22 + 1)) == (p(22) + (2 * 22)))) && ((gcd(p(22), p((22 + 1))) == gcd(p(22), (2 * 22)))) && ((1 < gcd(p(22), (2 * 22)))) && (!(41 <= 22)) && ((22 <= 40)) {  // sub-goal of `norm_num` (Lean state)
          // UNCITED Nat.gcd_eq_right: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED Nat.gcd_eq_left: no Lean instance recorded (arguments unknown), not guessed
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 1612-1692
          // UNCITED-APPLIED internal ×23 [exec 467 1612-1692]: applications made inside the tactic's own automation, not stated — Tactic.NormNum.isNat_gcd ×1, Tactic.NormNum.nat_gcd_helper_2' ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Eq.trans ×3, Mathlib.Meta.NormNum.IsNat.to_eq ×3, congrArg ×2 (+8 more heads, ×8)
        }
        if (n == 23) && ((23 > 0)) && ((1 < gcd(p(23), p((23 + 1))))) && ((p((23 + 1)) == (p(23) + (2 * 23)))) && ((gcd(p(23), p((23 + 1))) == gcd(p(23), (2 * 23)))) && ((1 < gcd(p(23), (2 * 23)))) && (!(41 <= 23)) && ((23 <= 40)) {  // sub-goal of `norm_num` (Lean state)
          // UNCITED Nat.gcd_eq_right: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED Nat.gcd_eq_left: no Lean instance recorded (arguments unknown), not guessed
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 1612-1692
          // UNCITED-APPLIED internal ×23 [exec 470 1612-1692]: applications made inside the tactic's own automation, not stated — Tactic.NormNum.isNat_gcd ×1, Tactic.NormNum.nat_gcd_helper_2' ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Eq.trans ×3, Mathlib.Meta.NormNum.IsNat.to_eq ×3, congrArg ×2 (+8 more heads, ×8)
        }
        if (n == 24) && ((24 > 0)) && ((1 < gcd(p(24), p((24 + 1))))) && ((p((24 + 1)) == (p(24) + (2 * 24)))) && ((gcd(p(24), p((24 + 1))) == gcd(p(24), (2 * 24)))) && ((1 < gcd(p(24), (2 * 24)))) && (!(41 <= 24)) && ((24 <= 40)) {  // sub-goal of `norm_num` (Lean state)
          // UNCITED Nat.gcd_eq_right: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED Nat.gcd_eq_left: no Lean instance recorded (arguments unknown), not guessed
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 1612-1692
          // UNCITED-APPLIED internal ×23 [exec 473 1612-1692]: applications made inside the tactic's own automation, not stated — Tactic.NormNum.isNat_gcd ×1, Tactic.NormNum.nat_gcd_helper_2' ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Eq.trans ×3, Mathlib.Meta.NormNum.IsNat.to_eq ×3, congrArg ×2 (+8 more heads, ×8)
        }
        if (n == 25) && ((25 > 0)) && ((1 < gcd(p(25), p((25 + 1))))) && ((p((25 + 1)) == (p(25) + (2 * 25)))) && ((gcd(p(25), p((25 + 1))) == gcd(p(25), (2 * 25)))) && ((1 < gcd(p(25), (2 * 25)))) && (!(41 <= 25)) && ((25 <= 40)) {  // sub-goal of `norm_num` (Lean state)
          // UNCITED Nat.gcd_eq_right: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED Nat.gcd_eq_left: no Lean instance recorded (arguments unknown), not guessed
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 1612-1692
          // UNCITED-APPLIED internal ×23 [exec 476 1612-1692]: applications made inside the tactic's own automation, not stated — Tactic.NormNum.isNat_gcd ×1, Tactic.NormNum.nat_gcd_helper_2' ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Eq.trans ×3, Mathlib.Meta.NormNum.IsNat.to_eq ×3, congrArg ×2 (+8 more heads, ×8)
        }
        if (n == 26) && ((26 > 0)) && ((1 < gcd(p(26), p((26 + 1))))) && ((p((26 + 1)) == (p(26) + (2 * 26)))) && ((gcd(p(26), p((26 + 1))) == gcd(p(26), (2 * 26)))) && ((1 < gcd(p(26), (2 * 26)))) && (!(41 <= 26)) && ((26 <= 40)) {  // sub-goal of `norm_num` (Lean state)
          // UNCITED Nat.gcd_eq_right: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED Nat.gcd_eq_left: no Lean instance recorded (arguments unknown), not guessed
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 1612-1692
          // UNCITED-APPLIED internal ×23 [exec 479 1612-1692]: applications made inside the tactic's own automation, not stated — Tactic.NormNum.isNat_gcd ×1, Tactic.NormNum.nat_gcd_helper_2' ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Eq.trans ×3, Mathlib.Meta.NormNum.IsNat.to_eq ×3, congrArg ×2 (+8 more heads, ×8)
        }
        if (n == 27) && ((27 > 0)) && ((1 < gcd(p(27), p((27 + 1))))) && ((p((27 + 1)) == (p(27) + (2 * 27)))) && ((gcd(p(27), p((27 + 1))) == gcd(p(27), (2 * 27)))) && ((1 < gcd(p(27), (2 * 27)))) && (!(41 <= 27)) && ((27 <= 40)) {  // sub-goal of `norm_num` (Lean state)
          // UNCITED Nat.gcd_eq_right: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED Nat.gcd_eq_left: no Lean instance recorded (arguments unknown), not guessed
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 1612-1692
          // UNCITED-APPLIED internal ×23 [exec 482 1612-1692]: applications made inside the tactic's own automation, not stated — Tactic.NormNum.isNat_gcd ×1, Tactic.NormNum.nat_gcd_helper_1' ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Eq.trans ×3, Mathlib.Meta.NormNum.IsNat.to_eq ×3, congrArg ×2 (+8 more heads, ×8)
        }
        if (n == 28) && ((28 > 0)) && ((1 < gcd(p(28), p((28 + 1))))) && ((p((28 + 1)) == (p(28) + (2 * 28)))) && ((gcd(p(28), p((28 + 1))) == gcd(p(28), (2 * 28)))) && ((1 < gcd(p(28), (2 * 28)))) && (!(41 <= 28)) && ((28 <= 40)) {  // sub-goal of `norm_num` (Lean state)
          // UNCITED Nat.gcd_eq_right: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED Nat.gcd_eq_left: no Lean instance recorded (arguments unknown), not guessed
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 1612-1692
          // UNCITED-APPLIED internal ×23 [exec 485 1612-1692]: applications made inside the tactic's own automation, not stated — Tactic.NormNum.isNat_gcd ×1, Tactic.NormNum.nat_gcd_helper_2' ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Eq.trans ×3, Mathlib.Meta.NormNum.IsNat.to_eq ×3, congrArg ×2 (+8 more heads, ×8)
        }
        if (n == 29) && ((29 > 0)) && ((1 < gcd(p(29), p((29 + 1))))) && ((p((29 + 1)) == (p(29) + (2 * 29)))) && ((gcd(p(29), p((29 + 1))) == gcd(p(29), (2 * 29)))) && ((1 < gcd(p(29), (2 * 29)))) && (!(41 <= 29)) && ((29 <= 40)) {  // sub-goal of `norm_num` (Lean state)
          // UNCITED Nat.gcd_eq_right: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED Nat.gcd_eq_left: no Lean instance recorded (arguments unknown), not guessed
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 1612-1692
          // UNCITED-APPLIED internal ×23 [exec 488 1612-1692]: applications made inside the tactic's own automation, not stated — Tactic.NormNum.isNat_gcd ×1, Tactic.NormNum.nat_gcd_helper_2' ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Eq.trans ×3, Mathlib.Meta.NormNum.IsNat.to_eq ×3, congrArg ×2 (+8 more heads, ×8)
        }
        if (n == 30) && ((30 > 0)) && ((1 < gcd(p(30), p((30 + 1))))) && ((p((30 + 1)) == (p(30) + (2 * 30)))) && ((gcd(p(30), p((30 + 1))) == gcd(p(30), (2 * 30)))) && ((1 < gcd(p(30), (2 * 30)))) && (!(41 <= 30)) && ((30 <= 40)) {  // sub-goal of `norm_num` (Lean state)
          // UNCITED Nat.gcd_eq_right: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED Nat.gcd_eq_left: no Lean instance recorded (arguments unknown), not guessed
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 1612-1692
          // UNCITED-APPLIED internal ×23 [exec 491 1612-1692]: applications made inside the tactic's own automation, not stated — Tactic.NormNum.isNat_gcd ×1, Tactic.NormNum.nat_gcd_helper_2' ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Eq.trans ×3, Mathlib.Meta.NormNum.IsNat.to_eq ×3, congrArg ×2 (+8 more heads, ×8)
        }
        if (n == 31) && ((31 > 0)) && ((1 < gcd(p(31), p((31 + 1))))) && ((p((31 + 1)) == (p(31) + (2 * 31)))) && ((gcd(p(31), p((31 + 1))) == gcd(p(31), (2 * 31)))) && ((1 < gcd(p(31), (2 * 31)))) && (!(41 <= 31)) && ((31 <= 40)) {  // sub-goal of `norm_num` (Lean state)
          // UNCITED Nat.gcd_eq_right: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED Nat.gcd_eq_left: no Lean instance recorded (arguments unknown), not guessed
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 1612-1692
          // UNCITED-APPLIED internal ×23 [exec 494 1612-1692]: applications made inside the tactic's own automation, not stated — Tactic.NormNum.isNat_gcd ×1, Tactic.NormNum.nat_gcd_helper_1' ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Eq.trans ×3, Mathlib.Meta.NormNum.IsNat.to_eq ×3, congrArg ×2 (+8 more heads, ×8)
        }
        if (n == 32) && ((32 > 0)) && ((1 < gcd(p(32), p((32 + 1))))) && ((p((32 + 1)) == (p(32) + (2 * 32)))) && ((gcd(p(32), p((32 + 1))) == gcd(p(32), (2 * 32)))) && ((1 < gcd(p(32), (2 * 32)))) && (!(41 <= 32)) && ((32 <= 40)) {  // sub-goal of `norm_num` (Lean state)
          // UNCITED Nat.gcd_eq_right: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED Nat.gcd_eq_left: no Lean instance recorded (arguments unknown), not guessed
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 1612-1692
          // UNCITED-APPLIED internal ×23 [exec 497 1612-1692]: applications made inside the tactic's own automation, not stated — Tactic.NormNum.isNat_gcd ×1, Tactic.NormNum.nat_gcd_helper_1' ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Eq.trans ×3, Mathlib.Meta.NormNum.IsNat.to_eq ×3, congrArg ×2 (+8 more heads, ×8)
        }
        if (n == 33) && ((33 > 0)) && ((1 < gcd(p(33), p((33 + 1))))) && ((p((33 + 1)) == (p(33) + (2 * 33)))) && ((gcd(p(33), p((33 + 1))) == gcd(p(33), (2 * 33)))) && ((1 < gcd(p(33), (2 * 33)))) && (!(41 <= 33)) && ((33 <= 40)) {  // sub-goal of `norm_num` (Lean state)
          // UNCITED Nat.gcd_eq_right: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED Nat.gcd_eq_left: no Lean instance recorded (arguments unknown), not guessed
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 1612-1692
          // UNCITED-APPLIED internal ×23 [exec 500 1612-1692]: applications made inside the tactic's own automation, not stated — Tactic.NormNum.isNat_gcd ×1, Tactic.NormNum.nat_gcd_helper_2' ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Eq.trans ×3, Mathlib.Meta.NormNum.IsNat.to_eq ×3, congrArg ×2 (+8 more heads, ×8)
        }
        if (n == 34) && ((34 > 0)) && ((1 < gcd(p(34), p((34 + 1))))) && ((p((34 + 1)) == (p(34) + (2 * 34)))) && ((gcd(p(34), p((34 + 1))) == gcd(p(34), (2 * 34)))) && ((1 < gcd(p(34), (2 * 34)))) && (!(41 <= 34)) && ((34 <= 40)) {  // sub-goal of `norm_num` (Lean state)
          // UNCITED Nat.gcd_eq_right: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED Nat.gcd_eq_left: no Lean instance recorded (arguments unknown), not guessed
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 1612-1692
          // UNCITED-APPLIED internal ×23 [exec 503 1612-1692]: applications made inside the tactic's own automation, not stated — Tactic.NormNum.isNat_gcd ×1, Tactic.NormNum.nat_gcd_helper_1' ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Eq.trans ×3, Mathlib.Meta.NormNum.IsNat.to_eq ×3, congrArg ×2 (+8 more heads, ×8)
        }
        if (n == 35) && ((35 > 0)) && ((1 < gcd(p(35), p((35 + 1))))) && ((p((35 + 1)) == (p(35) + (2 * 35)))) && ((gcd(p(35), p((35 + 1))) == gcd(p(35), (2 * 35)))) && ((1 < gcd(p(35), (2 * 35)))) && (!(41 <= 35)) && ((35 <= 40)) {  // sub-goal of `norm_num` (Lean state)
          // UNCITED Nat.gcd_eq_right: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED Nat.gcd_eq_left: no Lean instance recorded (arguments unknown), not guessed
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 1612-1692
          // UNCITED-APPLIED internal ×23 [exec 506 1612-1692]: applications made inside the tactic's own automation, not stated — Tactic.NormNum.isNat_gcd ×1, Tactic.NormNum.nat_gcd_helper_1' ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Eq.trans ×3, Mathlib.Meta.NormNum.IsNat.to_eq ×3, congrArg ×2 (+8 more heads, ×8)
        }
        if (n == 36) && ((36 > 0)) && ((1 < gcd(p(36), p((36 + 1))))) && ((p((36 + 1)) == (p(36) + (2 * 36)))) && ((gcd(p(36), p((36 + 1))) == gcd(p(36), (2 * 36)))) && ((1 < gcd(p(36), (2 * 36)))) && (!(41 <= 36)) && ((36 <= 40)) {  // sub-goal of `norm_num` (Lean state)
          // UNCITED Nat.gcd_eq_right: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED Nat.gcd_eq_left: no Lean instance recorded (arguments unknown), not guessed
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 1612-1692
          // UNCITED-APPLIED internal ×23 [exec 509 1612-1692]: applications made inside the tactic's own automation, not stated — Tactic.NormNum.isNat_gcd ×1, Tactic.NormNum.nat_gcd_helper_2' ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Eq.trans ×3, Mathlib.Meta.NormNum.IsNat.to_eq ×3, congrArg ×2 (+8 more heads, ×8)
        }
        if (n == 37) && ((37 > 0)) && ((1 < gcd(p(37), p((37 + 1))))) && ((p((37 + 1)) == (p(37) + (2 * 37)))) && ((gcd(p(37), p((37 + 1))) == gcd(p(37), (2 * 37)))) && ((1 < gcd(p(37), (2 * 37)))) && (!(41 <= 37)) && ((37 <= 40)) {  // sub-goal of `norm_num` (Lean state)
          assert (p(37) == (tsub((37 * 37), 37) + 41));  // instance of h₀ (Lean state)
          // UNCITED Nat.gcd_eq_right: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED Nat.gcd_eq_left: no Lean instance recorded (arguments unknown), not guessed
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 1612-1692
          // UNCITED-APPLIED internal ×23 [exec 512 1612-1692]: applications made inside the tactic's own automation, not stated — Tactic.NormNum.isNat_gcd ×1, Tactic.NormNum.nat_gcd_helper_1' ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Eq.trans ×3, Mathlib.Meta.NormNum.IsNat.to_eq ×3, congrArg ×2 (+8 more heads, ×8)
        }
        if (n == 38) && ((38 > 0)) && ((1 < gcd(p(38), p((38 + 1))))) && ((p((38 + 1)) == (p(38) + (2 * 38)))) && ((gcd(p(38), p((38 + 1))) == gcd(p(38), (2 * 38)))) && ((1 < gcd(p(38), (2 * 38)))) && (!(41 <= 38)) && ((38 <= 40)) {  // sub-goal of `norm_num` (Lean state)
          assert (p(38) == (tsub((38 * 38), 38) + 41));  // instance of h₀ (Lean state)
          // UNCITED Nat.gcd_eq_right: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED Nat.gcd_eq_left: no Lean instance recorded (arguments unknown), not guessed
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 1612-1692
          // UNCITED-APPLIED internal ×23 [exec 515 1612-1692]: applications made inside the tactic's own automation, not stated — Tactic.NormNum.isNat_gcd ×1, Tactic.NormNum.nat_gcd_helper_1' ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Eq.trans ×3, Mathlib.Meta.NormNum.IsNat.to_eq ×3, congrArg ×2 (+8 more heads, ×8)
        }
        if (n == 39) && ((39 > 0)) && ((1 < gcd(p(39), p((39 + 1))))) && ((p((39 + 1)) == (p(39) + (2 * 39)))) && ((gcd(p(39), p((39 + 1))) == gcd(p(39), (2 * 39)))) && ((1 < gcd(p(39), (2 * 39)))) && (!(41 <= 39)) && ((39 <= 40)) {  // sub-goal of `norm_num` (Lean state)
          assert (p(39) == (tsub((39 * 39), 39) + 41));  // instance of h₀ (Lean state)
          // UNCITED Nat.gcd_eq_right: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED Nat.gcd_eq_left: no Lean instance recorded (arguments unknown), not guessed
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 1612-1692
          // UNCITED-APPLIED internal ×23 [exec 518 1612-1692]: applications made inside the tactic's own automation, not stated — Tactic.NormNum.isNat_gcd ×1, Tactic.NormNum.nat_gcd_helper_1' ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Eq.trans ×3, Mathlib.Meta.NormNum.IsNat.to_eq ×3, congrArg ×2 (+8 more heads, ×8)
        }
        if (n == 40) && ((40 > 0)) && ((1 < gcd(p(40), p((40 + 1))))) && ((p((40 + 1)) == (p(40) + (2 * 40)))) && ((gcd(p(40), p((40 + 1))) == gcd(p(40), (2 * 40)))) && ((1 < gcd(p(40), (2 * 40)))) && (!(41 <= 40)) && ((40 <= 40)) {  // sub-goal of `norm_num` (Lean state)
          assert (p(40) == (tsub((40 * 40), 40) + 41));  // instance of h₀ (Lean state)
          // UNCITED Nat.gcd_eq_right: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED Nat.gcd_eq_left: no Lean instance recorded (arguments unknown), not guessed
          assert false;  // sub-goal of `norm_num` (Lean state) // @tac 1612-1692
          // UNCITED-APPLIED internal ×23 [exec 521 1612-1692]: applications made inside the tactic's own automation, not stated — Tactic.NormNum.isNat_gcd ×1, Tactic.NormNum.nat_gcd_helper_2' ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Eq.trans ×3, Mathlib.Meta.NormNum.IsNat.to_eq ×3, congrArg ×2 (+8 more heads, ×8)
        }
        // [TACTIC: try omega omega]  NOT RUN in Lean (no execution recorded)
        // [TACTIC: ( try omega omega )]  NOT RUN in Lean (no execution recorded)
        // [TACTIC: try contradiction contradiction]  NOT RUN in Lean (no execution recorded)
        // [TACTIC: ( try contradiction contradiction )]  NOT RUN in Lean (no execution recorded)
        // [TACTIC: try norm_num norm_num]  NOT RUN in Lean (no execution recorded)
        // [TACTIC: ( try norm_num norm_num )]  NOT RUN in Lean (no execution recorded)
        // [TACTIC: ( try { ring_nf at h₄ ⊢ norm_num at h₄ ⊢ <;> ( try omega omega ) <;> ( try contradiction contradiction ) } )]  NOT RUN in Lean (no execution recorded)
        // [TACTIC: try omega omega]  NOT RUN in Lean (no execution recorded)
        // [TACTIC: ( try omega omega )]  NOT RUN in Lean (no execution recorded)
        // [TACTIC: try contradiction contradiction]  NOT RUN in Lean (no execution recorded)
        // [TACTIC: ( try contradiction contradiction )]  NOT RUN in Lean (no execution recorded)
        // [TACTIC: Try omega omega]
        // NOT RUN in Lean (no execution recorded): no lemma instances
        // [TACTIC: omega]
        // NOT RUN in Lean (no execution recorded): no lemma instances
      }
      assert false;
    }
  }
  // [TACTIC: exact h₅]
  assert (41 <= n);
}



// ===== closed lemma for line 114 (from closed/mathd_numbertheory_618-114.dfy) =====

lemma {:axiom} NatGcdSelfAddRight(m: nat, n: nat)  // [ADDED DECLARATION]
  ensures gcd(m, m + n) == gcd(m, n)

lemma {:induction false} vc_mathd_numbertheory_618_L114(n: int, n_0_0_0_1_0_1_0: int, p: nat -> nat)
  requires 0 <= n
  requires 0 <= n_0_0_0_1_0_1_0
  requires n > 0
  requires forall x_1: nat :: p.requires(x_1)
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires 1 < gcd(p(n), p(n + 1))
  requires 0 <= n + 1
  requires p(n + 1) == p(n) + 2 * n
  requires p(n) + 0 == p(n)
  requires 0 <= p(n) + 0
  requires 0 <= p(n) + 0 + 2 * n
  requires gcd(p(n) + 0, p(n) + 0 + 2 * n) == gcd(p(n) + 0 + 2 * n, p(n) + 0)
  requires 0 <= p(n) + 2 * n
  requires gcd(p(n) + 2 * n, p(n)) == gcd(p(n), p(n) + 2 * n)
  requires 0 <= 2 * n
  ensures   gcd(p(n) + 0 + 2 * n, p(n) + 0) == gcd(p(n) + 0, 2 * n)
{
  NatGcdSelfAddRight(p(n), 2 * n);  // K5: simp applied Nat.gcd_self_add_right (m := p n, n := 2 * n) [exec 193 internal]  // [ADDED]
          // UNCITED Nat.gcd_add_mul_right_right: no Lean instance recorded (arguments unknown), not guessed
          NatGcdComm((p(n) + (2 * n)), p(n));  // cite: Nat.gcd_comm
          // UNCITED-APPLIED internal ×12 [exec 193 1185-1233]: applications made inside the tactic's own automation, not stated — add_zero ×1, Nat.gcd_self_add_right ×1; machinery/glue: Eq.trans ×3, congrArg ×3, congr ×2, of_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.gcd_comm [Lean recorded ×1])
}

