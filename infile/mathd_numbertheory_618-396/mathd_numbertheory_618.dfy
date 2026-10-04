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
          assert 0 <= n;  /* [IN-FILE CHECK] requires 1 of vc_mathd_numbertheory_618_L396 */
          assert n > 0;  /* [IN-FILE CHECK] requires 2 of vc_mathd_numbertheory_618_L396 */
          assert forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41;  /* [IN-FILE CHECK] requires 3 of vc_mathd_numbertheory_618_L396 */
          assert 1 < gcd(p(n), 2 * n);  /* [IN-FILE CHECK] requires 4 of vc_mathd_numbertheory_618_L396 */
          assert n <= 40;  /* [IN-FILE CHECK] requires 5 of vc_mathd_numbertheory_618_L396 */
          assert 0 <= n && n > 0 && n <= 40 && (forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41) && 1 < gcd(p(n), 2 * n);  /* [IN-FILE CHECK] requires 6 of vc_mathd_numbertheory_618_L396 */
          vc_mathd_numbertheory_618_L396(n, n, p);  /* [IN-FILE CHECK] the closed lemma for line 396 */
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



// ===== closed lemma for line 396 (from closed/mathd_numbertheory_618-396.dfy) =====

lemma {:induction false} vc_mathd_numbertheory_618_L396(n: int, n_0_0_0_1_0_1_0: int, p: nat -> nat)
  requires 0 <= n
  requires n > 0
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires 1 < gcd(p(n), 2 * n)
  requires n <= 40
  ensures   false /*VC_GAP*/
{
  // the hypotheses are contradictory for every n in 1..40 (proved case by case below), so the postcondition follows from false
  vc_mathd_numbertheory_618_L396_all(n, p);  // [ADDED]
}

// interval_cases n (1..40): the base hypotheses never pin n == K, so every case is dispatched to a proved case lemma
lemma {:induction false} vc_mathd_numbertheory_618_L396_all(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n && n > 0 && n <= 40 && (forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41) && 1 < gcd(p(n), 2 * n)
  ensures false
{
  if n == 1 { vc_mathd_numbertheory_618_L396_case1(n, p); }
  if n == 2 { vc_mathd_numbertheory_618_L396_case2(n, p); }
  if n == 3 { vc_mathd_numbertheory_618_L396_case3(n, p); }
  if n == 4 { vc_mathd_numbertheory_618_L396_case4(n, p); }
  if n == 5 { vc_mathd_numbertheory_618_L396_case5(n, p); }
  if n == 6 { vc_mathd_numbertheory_618_L396_case6(n, p); }
  if n == 7 { vc_mathd_numbertheory_618_L396_case7(n, p); }
  if n == 8 { vc_mathd_numbertheory_618_L396_case8(n, p); }
  if n == 9 { vc_mathd_numbertheory_618_L396_case9(n, p); }
  if n == 10 { vc_mathd_numbertheory_618_L396_case10(n, p); }
  if n == 11 { vc_mathd_numbertheory_618_L396_case11(n, p); }
  if n == 12 { vc_mathd_numbertheory_618_L396_case12(n, p); }
  if n == 13 { vc_mathd_numbertheory_618_L396_case13(n, p); }
  if n == 14 { vc_mathd_numbertheory_618_L396_case14(n, p); }
  if n == 15 { vc_mathd_numbertheory_618_L396_case15(n, p); }
  if n == 16 { vc_mathd_numbertheory_618_L396_case16(n, p); }
  if n == 17 { vc_mathd_numbertheory_618_L396_case17(n, p); }
  if n == 18 { vc_mathd_numbertheory_618_L396_case18(n, p); }
  if n == 19 { vc_mathd_numbertheory_618_L396_case19(n, p); }
  if n == 20 { vc_mathd_numbertheory_618_L396_case20(n, p); }
  if n == 21 { vc_mathd_numbertheory_618_L396_case21(n, p); }
  if n == 22 { vc_mathd_numbertheory_618_L396_case22(n, p); }
  if n == 23 { vc_mathd_numbertheory_618_L396_case23(n, p); }
  if n == 24 { vc_mathd_numbertheory_618_L396_case24(n, p); }
  if n == 25 { vc_mathd_numbertheory_618_L396_case25(n, p); }
  if n == 26 { vc_mathd_numbertheory_618_L396_case26(n, p); }
  if n == 27 { vc_mathd_numbertheory_618_L396_case27(n, p); }
  if n == 28 { vc_mathd_numbertheory_618_L396_case28(n, p); }
  if n == 29 { vc_mathd_numbertheory_618_L396_case29(n, p); }
  if n == 30 { vc_mathd_numbertheory_618_L396_case30(n, p); }
  if n == 31 { vc_mathd_numbertheory_618_L396_case31(n, p); }
  if n == 32 { vc_mathd_numbertheory_618_L396_case32(n, p); }
  if n == 33 { vc_mathd_numbertheory_618_L396_case33(n, p); }
  if n == 34 { vc_mathd_numbertheory_618_L396_case34(n, p); }
  if n == 35 { vc_mathd_numbertheory_618_L396_case35(n, p); }
  if n == 36 { vc_mathd_numbertheory_618_L396_case36(n, p); }
  if n == 37 { vc_mathd_numbertheory_618_L396_case37(n, p); }
  if n == 38 { vc_mathd_numbertheory_618_L396_case38(n, p); }
  if n == 39 { vc_mathd_numbertheory_618_L396_case39(n, p); }
  if n == 40 { vc_mathd_numbertheory_618_L396_case40(n, p); }
}

// interval_cases n := 1: norm_num [h0] evaluates gcd(p(1), 2*1) = gcd(41, 2) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case1(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 1
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 1 * 1 == 1;  // K2: isNat_pow 1^2 = 1
  assert tsub(1, 1) == 0;  // K2: isNat_natSub 1 - 1 = 0
  assert gcd(41, 2) == 1;  // K2: isNat_gcd gcd 41 2 = 1
}

// interval_cases n := 2: norm_num [h0] evaluates gcd(p(2), 2*2) = gcd(43, 4) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case2(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 2
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 2 * 2 == 4;  // K2: isNat_pow 2^2 = 4
  assert tsub(4, 2) == 2;  // K2: isNat_natSub 4 - 2 = 2
  assert gcd(43, 4) == 1;  // K2: isNat_gcd gcd 43 4 = 1
}

// interval_cases n := 3: norm_num [h0] evaluates gcd(p(3), 2*3) = gcd(47, 6) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case3(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 3
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 3 * 3 == 9;  // K2: isNat_pow 3^2 = 9
  assert tsub(9, 3) == 6;  // K2: isNat_natSub 9 - 3 = 6
  assert gcd(47, 6) == 1;  // K2: isNat_gcd gcd 47 6 = 1
}

// interval_cases n := 4: norm_num [h0] evaluates gcd(p(4), 2*4) = gcd(53, 8) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case4(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 4
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 4 * 4 == 16;  // K2: isNat_pow 4^2 = 16
  assert tsub(16, 4) == 12;  // K2: isNat_natSub 16 - 4 = 12
  assert gcd(53, 8) == 1;  // K2: isNat_gcd gcd 53 8 = 1
}

// interval_cases n := 5: norm_num [h0] evaluates gcd(p(5), 2*5) = gcd(61, 10) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case5(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 5
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 5 * 5 == 25;  // K2: isNat_pow 5^2 = 25
  assert tsub(25, 5) == 20;  // K2: isNat_natSub 25 - 5 = 20
  assert gcd(61, 10) == 1;  // K2: isNat_gcd gcd 61 10 = 1
}

// interval_cases n := 6: norm_num [h0] evaluates gcd(p(6), 2*6) = gcd(71, 12) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case6(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 6
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 6 * 6 == 36;  // K2: isNat_pow 6^2 = 36
  assert tsub(36, 6) == 30;  // K2: isNat_natSub 36 - 6 = 30
  assert gcd(71, 12) == 1;  // K2: isNat_gcd gcd 71 12 = 1
}

// interval_cases n := 7: norm_num [h0] evaluates gcd(p(7), 2*7) = gcd(83, 14) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case7(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 7
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 7 * 7 == 49;  // K2: isNat_pow 7^2 = 49
  assert tsub(49, 7) == 42;  // K2: isNat_natSub 49 - 7 = 42
  assert gcd(83, 14) == 1;  // K2: isNat_gcd gcd 83 14 = 1
}

// interval_cases n := 8: norm_num [h0] evaluates gcd(p(8), 2*8) = gcd(97, 16) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case8(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 8
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 8 * 8 == 64;  // K2: isNat_pow 8^2 = 64
  assert tsub(64, 8) == 56;  // K2: isNat_natSub 64 - 8 = 56
  assert gcd(97, 16) == 1;  // K2: isNat_gcd gcd 97 16 = 1
}

// interval_cases n := 9: norm_num [h0] evaluates gcd(p(9), 2*9) = gcd(113, 18) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case9(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 9
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 9 * 9 == 81;  // K2: isNat_pow 9^2 = 81
  assert tsub(81, 9) == 72;  // K2: isNat_natSub 81 - 9 = 72
  assert gcd(113, 18) == 1;  // K2: isNat_gcd gcd 113 18 = 1
}

// interval_cases n := 10: norm_num [h0] evaluates gcd(p(10), 2*10) = gcd(131, 20) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case10(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 10
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 10 * 10 == 100;  // K2: isNat_pow 10^2 = 100
  assert tsub(100, 10) == 90;  // K2: isNat_natSub 100 - 10 = 90
  assert gcd(131, 20) == 1;  // K2: isNat_gcd gcd 131 20 = 1
}

// interval_cases n := 11: norm_num [h0] evaluates gcd(p(11), 2*11) = gcd(151, 22) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case11(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 11
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 11 * 11 == 121;  // K2: isNat_pow 11^2 = 121
  assert tsub(121, 11) == 110;  // K2: isNat_natSub 121 - 11 = 110
  assert gcd(151, 22) == 1;  // K2: isNat_gcd gcd 151 22 = 1
}

// interval_cases n := 12: norm_num [h0] evaluates gcd(p(12), 2*12) = gcd(173, 24) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case12(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 12
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 12 * 12 == 144;  // K2: isNat_pow 12^2 = 144
  assert tsub(144, 12) == 132;  // K2: isNat_natSub 144 - 12 = 132
  assert gcd(173, 24) == 1;  // K2: isNat_gcd gcd 173 24 = 1
}

// interval_cases n := 13: norm_num [h0] evaluates gcd(p(13), 2*13) = gcd(197, 26) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case13(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 13
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 13 * 13 == 169;  // K2: isNat_pow 13^2 = 169
  assert tsub(169, 13) == 156;  // K2: isNat_natSub 169 - 13 = 156
  assert gcd(197, 26) == 1;  // K2: isNat_gcd gcd 197 26 = 1
}

// interval_cases n := 14: norm_num [h0] evaluates gcd(p(14), 2*14) = gcd(223, 28) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case14(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 14
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 14 * 14 == 196;  // K2: isNat_pow 14^2 = 196
  assert tsub(196, 14) == 182;  // K2: isNat_natSub 196 - 14 = 182
  assert gcd(223, 28) == 1;  // K2: isNat_gcd gcd 223 28 = 1
}

// interval_cases n := 15: norm_num [h0] evaluates gcd(p(15), 2*15) = gcd(251, 30) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case15(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 15
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 15 * 15 == 225;  // K2: isNat_pow 15^2 = 225
  assert tsub(225, 15) == 210;  // K2: isNat_natSub 225 - 15 = 210
  assert gcd(251, 30) == 1;  // K2: isNat_gcd gcd 251 30 = 1
}

// interval_cases n := 16: norm_num [h0] evaluates gcd(p(16), 2*16) = gcd(281, 32) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case16(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 16
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 16 * 16 == 256;  // K2: isNat_pow 16^2 = 256
  assert tsub(256, 16) == 240;  // K2: isNat_natSub 256 - 16 = 240
  assert gcd(281, 32) == 1;  // K2: isNat_gcd gcd 281 32 = 1
}

// interval_cases n := 17: norm_num [h0] evaluates gcd(p(17), 2*17) = gcd(313, 34) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case17(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 17
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 17 * 17 == 289;  // K2: isNat_pow 17^2 = 289
  assert tsub(289, 17) == 272;  // K2: isNat_natSub 289 - 17 = 272
  assert gcd(313, 34) == 1;  // K2: isNat_gcd gcd 313 34 = 1
}

// interval_cases n := 18: norm_num [h0] evaluates gcd(p(18), 2*18) = gcd(347, 36) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case18(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 18
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 18 * 18 == 324;  // K2: isNat_pow 18^2 = 324
  assert tsub(324, 18) == 306;  // K2: isNat_natSub 324 - 18 = 306
  assert gcd(347, 36) == 1;  // K2: isNat_gcd gcd 347 36 = 1
}

// interval_cases n := 19: norm_num [h0] evaluates gcd(p(19), 2*19) = gcd(383, 38) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case19(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 19
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 19 * 19 == 361;  // K2: isNat_pow 19^2 = 361
  assert tsub(361, 19) == 342;  // K2: isNat_natSub 361 - 19 = 342
  assert gcd(383, 38) == 1;  // K2: isNat_gcd gcd 383 38 = 1
}

// interval_cases n := 20: norm_num [h0] evaluates gcd(p(20), 2*20) = gcd(421, 40) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case20(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 20
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 20 * 20 == 400;  // K2: isNat_pow 20^2 = 400
  assert tsub(400, 20) == 380;  // K2: isNat_natSub 400 - 20 = 380
  assert gcd(421, 40) == 1;  // K2: isNat_gcd gcd 421 40 = 1
}

// interval_cases n := 21: norm_num [h0] evaluates gcd(p(21), 2*21) = gcd(461, 42) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case21(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 21
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 21 * 21 == 441;  // K2: isNat_pow 21^2 = 441
  assert tsub(441, 21) == 420;  // K2: isNat_natSub 441 - 21 = 420
  assert gcd(461, 42) == 1;  // K2: isNat_gcd gcd 461 42 = 1
}

// interval_cases n := 22: norm_num [h0] evaluates gcd(p(22), 2*22) = gcd(503, 44) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case22(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 22
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 22 * 22 == 484;  // K2: isNat_pow 22^2 = 484
  assert tsub(484, 22) == 462;  // K2: isNat_natSub 484 - 22 = 462
  assert gcd(503, 44) == 1;  // K2: isNat_gcd gcd 503 44 = 1
}

// interval_cases n := 23: norm_num [h0] evaluates gcd(p(23), 2*23) = gcd(547, 46) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case23(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 23
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 23 * 23 == 529;  // K2: isNat_pow 23^2 = 529
  assert tsub(529, 23) == 506;  // K2: isNat_natSub 529 - 23 = 506
  assert gcd(547, 46) == 1;  // K2: isNat_gcd gcd 547 46 = 1
}

// interval_cases n := 24: norm_num [h0] evaluates gcd(p(24), 2*24) = gcd(593, 48) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case24(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 24
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 24 * 24 == 576;  // K2: isNat_pow 24^2 = 576
  assert tsub(576, 24) == 552;  // K2: isNat_natSub 576 - 24 = 552
  assert gcd(593, 48) == 1;  // K2: isNat_gcd gcd 593 48 = 1
}

// interval_cases n := 25: norm_num [h0] evaluates gcd(p(25), 2*25) = gcd(641, 50) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case25(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 25
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 25 * 25 == 625;  // K2: isNat_pow 25^2 = 625
  assert tsub(625, 25) == 600;  // K2: isNat_natSub 625 - 25 = 600
  assert gcd(641, 50) == 1;  // K2: isNat_gcd gcd 641 50 = 1
}

// interval_cases n := 26: norm_num [h0] evaluates gcd(p(26), 2*26) = gcd(691, 52) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case26(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 26
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 26 * 26 == 676;  // K2: isNat_pow 26^2 = 676
  assert tsub(676, 26) == 650;  // K2: isNat_natSub 676 - 26 = 650
  assert gcd(691, 52) == 1;  // K2: isNat_gcd gcd 691 52 = 1
}

// interval_cases n := 27: norm_num [h0] evaluates gcd(p(27), 2*27) = gcd(743, 54) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case27(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 27
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 27 * 27 == 729;  // K2: isNat_pow 27^2 = 729
  assert tsub(729, 27) == 702;  // K2: isNat_natSub 729 - 27 = 702
  assert gcd(743, 54) == 1;  // K2: isNat_gcd gcd 743 54 = 1
}

// interval_cases n := 28: norm_num [h0] evaluates gcd(p(28), 2*28) = gcd(797, 56) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case28(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 28
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 28 * 28 == 784;  // K2: isNat_pow 28^2 = 784
  assert tsub(784, 28) == 756;  // K2: isNat_natSub 784 - 28 = 756
  assert gcd(797, 56) == 1;  // K2: isNat_gcd gcd 797 56 = 1
}

// interval_cases n := 29: norm_num [h0] evaluates gcd(p(29), 2*29) = gcd(853, 58) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case29(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 29
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 29 * 29 == 841;  // K2: isNat_pow 29^2 = 841
  assert tsub(841, 29) == 812;  // K2: isNat_natSub 841 - 29 = 812
  assert gcd(853, 58) == 1;  // K2: isNat_gcd gcd 853 58 = 1
}

// interval_cases n := 30: norm_num [h0] evaluates gcd(p(30), 2*30) = gcd(911, 60) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case30(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 30
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 30 * 30 == 900;  // K2: isNat_pow 30^2 = 900
  assert tsub(900, 30) == 870;  // K2: isNat_natSub 900 - 30 = 870
  assert gcd(911, 60) == 1;  // K2: isNat_gcd gcd 911 60 = 1
}

// interval_cases n := 31: norm_num [h0] evaluates gcd(p(31), 2*31) = gcd(971, 62) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case31(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 31
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 31 * 31 == 961;  // K2: isNat_pow 31^2 = 961
  assert tsub(961, 31) == 930;  // K2: isNat_natSub 961 - 31 = 930
  assert gcd(971, 62) == 1;  // K2: isNat_gcd gcd 971 62 = 1
}

// interval_cases n := 32: norm_num [h0] evaluates gcd(p(32), 2*32) = gcd(1033, 64) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case32(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 32
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 32 * 32 == 1024;  // K2: isNat_pow 32^2 = 1024
  assert tsub(1024, 32) == 992;  // K2: isNat_natSub 1024 - 32 = 992
  assert gcd(1033, 64) == 1;  // K2: isNat_gcd gcd 1033 64 = 1
}

// interval_cases n := 33: norm_num [h0] evaluates gcd(p(33), 2*33) = gcd(1097, 66) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case33(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 33
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 33 * 33 == 1089;  // K2: isNat_pow 33^2 = 1089
  assert tsub(1089, 33) == 1056;  // K2: isNat_natSub 1089 - 33 = 1056
  assert gcd(1097, 66) == 1;  // K2: isNat_gcd gcd 1097 66 = 1
}

// interval_cases n := 34: norm_num [h0] evaluates gcd(p(34), 2*34) = gcd(1163, 68) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case34(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 34
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 34 * 34 == 1156;  // K2: isNat_pow 34^2 = 1156
  assert tsub(1156, 34) == 1122;  // K2: isNat_natSub 1156 - 34 = 1122
  assert gcd(1163, 68) == 1;  // K2: isNat_gcd gcd 1163 68 = 1
}

// interval_cases n := 35: norm_num [h0] evaluates gcd(p(35), 2*35) = gcd(1231, 70) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case35(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 35
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 35 * 35 == 1225;  // K2: isNat_pow 35^2 = 1225
  assert tsub(1225, 35) == 1190;  // K2: isNat_natSub 1225 - 35 = 1190
  assert gcd(1231, 70) == 1;  // K2: isNat_gcd gcd 1231 70 = 1
}

// interval_cases n := 36: norm_num [h0] evaluates gcd(p(36), 2*36) = gcd(1301, 72) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case36(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 36
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 36 * 36 == 1296;  // K2: isNat_pow 36^2 = 1296
  assert tsub(1296, 36) == 1260;  // K2: isNat_natSub 1296 - 36 = 1260
  assert gcd(1301, 72) == 1;  // K2: isNat_gcd gcd 1301 72 = 1
}

// interval_cases n := 37: norm_num [h0] evaluates gcd(p(37), 2*37) = gcd(1373, 74) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case37(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 37
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 37 * 37 == 1369;  // K2: isNat_pow 37^2 = 1369
  assert tsub(1369, 37) == 1332;  // K2: isNat_natSub 1369 - 37 = 1332
  assert gcd(1373, 74) == 1;  // K2: isNat_gcd gcd 1373 74 = 1
}

// interval_cases n := 38: norm_num [h0] evaluates gcd(p(38), 2*38) = gcd(1447, 76) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case38(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 38
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 38 * 38 == 1444;  // K2: isNat_pow 38^2 = 1444
  assert tsub(1444, 38) == 1406;  // K2: isNat_natSub 1444 - 38 = 1406
  assert gcd(1447, 76) == 1;  // K2: isNat_gcd gcd 1447 76 = 1
}

// interval_cases n := 39: norm_num [h0] evaluates gcd(p(39), 2*39) = gcd(1523, 78) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case39(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 39
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 39 * 39 == 1521;  // K2: isNat_pow 39^2 = 1521
  assert tsub(1521, 39) == 1482;  // K2: isNat_natSub 1521 - 39 = 1482
  assert gcd(1523, 78) == 1;  // K2: isNat_gcd gcd 1523 78 = 1
}

// interval_cases n := 40: norm_num [h0] evaluates gcd(p(40), 2*40) = gcd(1601, 80) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case40(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 40
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 40 * 40 == 1600;  // K2: isNat_pow 40^2 = 1600
  assert tsub(1600, 40) == 1560;  // K2: isNat_natSub 1600 - 40 = 1560
  assert gcd(1601, 80) == 1;  // K2: isNat_gcd gcd 1601 80 = 1
}

