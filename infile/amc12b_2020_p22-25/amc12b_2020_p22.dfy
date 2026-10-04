// ════════════════════════════════════════════════════════════
// MECHANICAL TRANSLATION (emitter v2) of ast_cache_v2/amc12b_2020_p22.json
// Each Lean `have` → `assert ... by {}` at the same depth;
// quantified haves → forall statements. Typed pipeline only.
// ════════════════════════════════════════════════════════════

include "../../library/library_new.dfy"

// ──────────────────────────────────────────────────
// certificate identity for `h₀/h₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_1(t: real, u: real)
  ensures (-((((6.0 * u) - (1.0 * 1.0)) * ((6.0 * u) - (1.0 * 1.0)))) + ((1.0 * 1.0) - ((12.0 * u) - ((1.0 * 3.0) * (12.0 * ((1.0 * u) * (1.0 * u))))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₃/h₇/h₈`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_2(t: real)
  requires (0.0 < Real.rpow(2.0, t))
  requires (0.0 < (Real.rpow(2.0, t) * Real.rpow(2.0, t)))
  ensures (0.0 < (Real.rpow(2.0, t) * (Real.rpow(2.0, t) * Real.rpow(2.0, t))))
{
  assert 0.0 < Real.rpow(2.0, t) * Real.rpow(2.0, t);  /* [IN-FILE CHECK] requires 1 of vc_amc12b_2020_p22_L25 */
  vc_amc12b_2020_p22_L25(t);  /* [IN-FILE CHECK] the closed lemma for line 25 */
  MulPos(Real.rpow(2.0, t), (Real.rpow(2.0, t) * Real.rpow(2.0, t)));
}

// statement: Lean elaborated type (v3, stmt_cache) — requires/ensures below
lemma amc12b_2020_p22(t: real)
  ensures (Real.div(((Real.rpow(2.0, t) - (3.0 * t)) * t), Real.rpow(4.0, t)) <= (1.0 / 12.0)) // @tac 468-846 // @tac 852-1571 // @tac 1577-2086 // @tac 2092-3209 // @tac 3215-3706 // @tac 3712-3797 // @tac 3803-3813
{
  // have h₀ : forall ( u : ℝ ) :: u - 3 * u ^ 2 <= 1 / 12  [type from Lean state]
  forall u: real // @tac 530-537
    ensures ((u - (3.0 * (u * u))) <= (1.0 / 12.0)) // @tac 542-831 // @tac 836-846
  {
    // [TACTIC: intro u]
    // have h₁ : u - 3 * u ^ 2 <= 1 / 12  [type from Lean state]
    assert ((u - (3.0 * (u * u))) <= (1.0 / 12.0)) by { // @tac 591-831
      // [TACTIC: «Nlinarith[_]At___» [ sq_nonneg ( u - 1 / 6 ) , sq_nonneg ( u + 1 / 6 ) , sq_nonneg ( u - 1 / 3 ) , sq_nonneg ( u + 1 / 3 ) , sq_nonneg ( u - 1 / 2 ) , sq_nonneg ( u + 1 / 2 ) , sq_nonneg ( u - 1 ) , sq_nonneg ( u + 1 ) , sq_nonneg ( u - 2 ) , sq_nonneg ( u + 2 ) ]]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 591-831 exec 37)
      SqNonneg(((6.0 * u) - (1.0 * 1.0))); assert (0.0 <= (((6.0 * u) - (1.0 * 1.0)) * ((6.0 * u) - (1.0 * 1.0))));  // cert: sq_nonneg
      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(12 : ℝ) * ((1 / 12 : ℝ) - (u - (3 : ℝ) * u ^ (2 : ℕ))) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((1.0 / 12.0) - (u - (3.0 * (u * u)))) < 0.0); (12.0 > 0.0)
      cert_identity_1(t, u);  // cert: add_lt_of_le_of_neg
      // UNCITED-APPLIED internal ×13 [exec 37 591-831]: applications made inside the tactic's own automation, not stated — CancelDenoms.sub_subst ×2, le_of_not_gt ×1, add_lt_of_le_of_neg ×1, neg_nonpos_of_nonneg ×1, CancelDenoms.div_subst ×1, CancelDenoms.mul_subst ×1, CancelDenoms.pow_subst ×1, sub_neg_of_lt ×1; machinery/glue: congrArg ×2, Linarith.lt_irrefl ×1, Linarith.mul_neg ×1 (cited in this block, not counted here: sq_nonneg [Lean recorded ×1])
      // UNCITED-APPLIED internal ×6 [exec 63 591-831]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×9 [exec 64 591-831]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×6 [exec 65 591-831]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      SqNonneg(((6.0 * u) - (1.0 * 1.0)));  // cite: sq_nonneg
      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 62, 63, 64, 65 / `ring1` exec 67)]
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 66 / `ring1` exec 67)]
      // NOT APPLIED `sq_nonneg ( u - 1 / 6 )`, `sq_nonneg ( u + 1 / 6 )`, `sq_nonneg ( u - 1 / 3 )`, `sq_nonneg ( u + 1 / 3 )`, `sq_nonneg ( u - 1 / 2 )`, `sq_nonneg ( u + 1 / 2 )`, `sq_nonneg ( u - 1 )`, `sq_nonneg ( u + 1 )`, `sq_nonneg ( u - 2 )`, `sq_nonneg ( u + 2 )`: named here, but none of the 1 application of sq_nonneg Lean recorded at this tactic has a named instance's arguments (recorded: sq_nonneg((6 : ℝ) * u - (1 : ℝ) * (1 : ℝ)))
      // UNCITED-APPLIED internal ×178 [exec 67 591-831]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Meta.NormNum.isInt_mul ×8, Mathlib.Tactic.Ring.mul_congr ×7 (+48 more heads, ×147) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×14 [exec 62 591-831]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 66 591-831]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    }
    // [TACTIC: exact h₁]
    assert ((u - (3.0 * (u * u))) <= (1.0 / 12.0));
  }
  // have h₁ : 4 ^ t == 2 ^ ( 2 * t )  [type from Lean state]
  assert (Real.rpow(4.0, t) == Real.rpow(2.0, (2.0 * t))) by { // @tac 910-1556 // @tac 1561-1571
    // have h₂ : 4 ^ t == 2 ^ ( 2 * t )  [type from Lean state]
    assert (Real.rpow(4.0, t) == Real.rpow(2.0, (2.0 * t))) by { // @tac 970-1556
      // calc 4 ^ t ...  (carrier real from the Lean state; 1/2 steps typed)
      calc {
        Real.rpow(4.0, t);
        == {
          assert (Real.rpow(4.0, t) == Real.rpow(2.0, (2.0 * t))) by {  // sub-goal before `have` (Lean state) // @tac 1114-1494 // @tac 1505-1514
            // have h₃ : 4 ^ t == 2 ^ ( 2 * t )  [type from Lean state]
            assert (Real.rpow(4.0, t) == Real.rpow(2.0, (2.0 * t))) by { // @tac 1180-1494
              // calc 4 ^ t ...  (carrier real from the Lean state; 3/3 steps typed)
              calc {
                Real.rpow(4.0, t);
                == {
                  assert (Real.rpow(4.0, t) == Real.rpow((2.0 * 2.0), t)) by {  // sub-goal before `norm_num` (Lean state) // @tac 1241-1249
                    // [TACTIC: «Norm_num[_]At___»]
                    // UNCITED-APPLIED internal ×11 [exec 127 1241-1249]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, Eq.trans ×1, congrArg ×1 (+6 more heads, ×6)
                  }
                }
                Real.rpow((2.0 * 2.0), t);
                == {
                  assert (Real.rpow((2.0 * 2.0), t) == Real.rpow(2.0, (2.0 * t))) by {  // sub-goal before `rw` (Lean state) // @tac 1310-1337
                    // [TACTIC: rwSeq [ ← Real.rpow_nat_cast ]]
                    RealRpowNatCast(2.0, 2);  // cite: Real.rpow_nat_cast
                    // UNCITED-APPLIED Eq.symm(Real.rpow(2.0, (2 as real)), (2.0 * 2.0)): its premise is not established here and its conclusion is the same Dafny fact (== is symmetric): a guarded call would state nothing
                    // UNCITED-APPLIED congrArg((2 : ℝ) ^ (2 : ℕ), (2 : ℝ) ^ ↑(2 : ℕ), fun (_a : ℝ) => _a ^ t = (2 : ℝ) ^ ((2 : ℝ) * t)): no library counterpart (not stated) [exec 136 1310-1337]
                    assert (Real.rpow(Real.rpow(2.0, (2 as real)), t) == Real.rpow(2.0, (2.0 * t))) by {  // sub-goal before `rw` (Lean state) // @tac 1354-1446 // @tac 1354-1401 // @tac 1354-1388 // @tac 1354-1376
                      // [TACTIC: «_<;>_» [ ← Real.rpow_mul ] rw [ ← Real.rpow_mul ] <;> ring_nf ring_nf <;> norm_num norm_num <;> linarith linarith]
                      // [TACTIC: choice [ ← Real.rpow_mul ] rw [ ← Real.rpow_mul ]]
                      // UNCITED-APPLIED Eq.symm(Real.rpow(2.0, ((2 as real) * t)), Real.rpow(Real.rpow(2.0, (2 as real)), t)): its premise is not established here and its conclusion is the same Dafny fact (== is symmetric): a guarded call would state nothing
                      assert (0.0 <= (2.0));  // precondition of RealRpowMul (Lean: Real.rpow_mul)
                      RealRpowMul(2.0, (2 as real), t);  // cite: Real.rpow_mul
                      // UNCITED-APPLIED congrArg(((2 : ℝ) ^ ↑(2 : ℕ)) ^ t, (2 : ℝ) ^ (↑(2 : ℕ) * t), fun (_a : ℝ) => _a = (2 : ℝ) ^ ((2 : ℝ) * t)): no library counterpart (not stated) [exec 182 1354-1376]
                      assert (Real.rpow(2.0, ((2 as real) * t)) == Real.rpow(2.0, (2.0 * t))) by {  // sub-goal of `ring_nf` (Lean state) // @tac 1381-1388
                        PowOne(t);  // cite: pow_one [applied by the tactic, not named in it]
                        PowOne(Real.rpow(2.0, (t * 2.0)));  // cite: pow_one [applied by the tactic, not named in it]
                        // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (2 : ℝ) ^ (t * (2 : ℝ)))
                        // UNCITED-APPLIED internal ×41 [exec 217 1381-1388]: applications made inside the tactic's own automation, not stated — add_zero ×2, mul_one ×1; machinery/glue: Eq.trans ×8, congrArg ×8, congr ×2, Mathlib.Tactic.Ring.atom_pf' ×2 (+15 more heads, ×18) (cited in this block, not counted here: pow_one [Lean recorded ×2])
                      }
                      assert (0.0 <= 2.0) by {  // sub-goal of `norm_num` (Lean state) // @tac 1381-1388 // @tac 1393-1401
                        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
                        // UNCITED-APPLIED internal ×5 [exec 229 1393-1401]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_le_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
                      }
                    }
                  }
                }
                Real.rpow(2.0, (2.0 * t));
                == {
                  assert (Real.rpow(2.0, (2.0 * t)) == Real.rpow(2.0, (2.0 * t))) by {  // sub-goal before `rfl` (Lean state) // @tac 1491-1494
                    // [TACTIC: Rfl]
                  }
                }
                Real.rpow(2.0, (2.0 * t));
              }
            }
            // [TACTIC: rwSeq [ h₃ ]]
            // UNCITED-APPLIED congrArg((4 : ℝ) ^ t, (2 : ℝ) ^ ((2 : ℝ) * t), fun (_a : ℝ) => _a = (2 : ℝ) ^ ((2 : ℝ) * t)): no library counterpart (not stated) [exec 246 1505-1514]
          }
        }
        Real.rpow(2.0, (2.0 * t));
        == {
          assert (Real.rpow(2.0, (2.0 * t)) == Real.rpow(2.0, (2.0 * t))) by {  // sub-goal before `rfl` (Lean state) // @tac 1553-1556
            // [TACTIC: Rfl]
          }
        }
        Real.rpow(2.0, (2.0 * t));
      }
    }
    // [TACTIC: exact h₂]
    assert (Real.rpow(4.0, t) == Real.rpow(2.0, (2.0 * t)));
  }
  // have h₂ : 4 ^ t == ( 2 ^ t ) ^ 2  [type from Lean state]
  assert (Real.rpow(4.0, t) == (Real.rpow(2.0, t) * Real.rpow(2.0, t))) by { // @tac 1635-1690 // @tac 1695-2004 // @tac 2009-2086 // @tac 2009-2065 // @tac 2009-2044 // @tac 2009-2024
    // have h₃ : 4 ^ t == 2 ^ ( 2 * t )  [type from Lean state]
    assert (Real.rpow(4.0, t) == Real.rpow(2.0, (2.0 * t))) by {
      // [TACTIC: exact h₁]
      assert (Real.rpow(4.0, t) == Real.rpow(2.0, (2.0 * t)));
    }
    // have h₄ : 2 ^ ( 2 * t ) == ( 2 ^ t ) ^ 2  [type from Lean state]
    assert (Real.rpow(2.0, (2.0 * t)) == (Real.rpow(2.0, t) * Real.rpow(2.0, t))) by { // @tac 1761-2004
      // calc 2 ^ ( 2 * t ) ...  (carrier real from the Lean state; 3/3 steps typed)
      calc {
        Real.rpow(2.0, (2.0 * t));
        == {
          assert (Real.rpow(2.0, (2.0 * t)) == Real.rpow(2.0, (t + t))) by {  // sub-goal before `ring` (Lean state) // @tac 1822-1826
            // [TACTIC: Ring]
            PowOne(t);  // cite: pow_one [applied by the tactic, not named in it: inside its internal steps (`ringNF` exec 331)]
            PowOne(Real.rpow(2.0, (t * 2.0)));  // cite: pow_one [applied by the tactic, not named in it: inside its internal steps (`ringNF` exec 331)]
            // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (2 : ℝ) ^ (t * (2 : ℝ)))
            // UNCITED-APPLIED internal ×44 [exec 331 1822-1826]: applications made inside the tactic's own automation, not stated — add_zero ×2, mul_one ×1; machinery/glue: Eq.trans ×8, congrArg ×8, congr ×2, Mathlib.Tactic.Ring.atom_pf' ×2 (+21 more heads, ×21) (cited in this block, not counted here: pow_one [Lean recorded ×2])
          }
        }
        Real.rpow(2.0, (t + t));
        == {
          assert (Real.rpow(2.0, (t + t)) == (Real.rpow(2.0, t) * Real.rpow(2.0, t))) by {  // sub-goal before `rw` (Lean state) // @tac 1885-1961 // @tac 1885-1928 // @tac 1885-1915 // @tac 1885-1903
            // [TACTIC: «_<;>_» [ Real.rpow_add ] rw [ Real.rpow_add ] <;> ring_nf ring_nf <;> norm_num norm_num <;> linarith linarith]
            // [TACTIC: choice [ Real.rpow_add ] rw [ Real.rpow_add ]]
            assert (0.0 < (2.0));  // precondition of RealRpowAdd (Lean: Real.rpow_add)
            RealRpowAdd(2.0, t, t);  // cite: Real.rpow_add
            // UNCITED-APPLIED congrArg((2 : ℝ) ^ (t + t), (2 : ℝ) ^ t * (2 : ℝ) ^ t, fun (_a : ℝ) => _a = (2 : ℝ) ^ t * (2 : ℝ) ^ t): no library counterpart (not stated) [exec 355 1885-1903]
            // (`rw` closed `(2 : ℝ) ^ t * (2 : ℝ) ^ t = (2 : ℝ) ^ t * (2 : ℝ) ^ t` itself, e.g. by its trailing rfl)
            assert (0.0 < 2.0) by {  // sub-goal of `norm_num` (Lean state) // @tac 1908-1915 // @tac 1920-1928
              NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
              // UNCITED-APPLIED internal ×5 [exec 393 1920-1928]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            }
          }
        }
        (Real.rpow(2.0, t) * Real.rpow(2.0, t));
        == {
          assert ((Real.rpow(2.0, t) * Real.rpow(2.0, t)) == (Real.rpow(2.0, t) * Real.rpow(2.0, t))) by {  // sub-goal before `ring` (Lean state) // @tac 2000-2004
            // [TACTIC: Ring]
            // UNCITED-APPLIED internal ×27 [exec 408 2000-2004]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_mul ×2, Mathlib.Tactic.Ring.mul_add ×2, Mathlib.Tactic.Ring.one_mul ×2, Mathlib.Tactic.Ring.mul_zero ×2 (+18 more heads, ×19)
          }
        }
        (Real.rpow(2.0, t) * Real.rpow(2.0, t));
      }
    }
    // [TACTIC: «_<;>_» [ h₃ , h₄ ] rw [ h₃ , h₄ ] <;> ring_nf ring_nf <;> norm_num norm_num <;> linarith linarith]
    // [TACTIC: rwSeq [ h₃ , h₄ ]]
    // `rw` closed the goal; the rest of the chain did not run
    // UNCITED-APPLIED congrArg((4 : ℝ) ^ t, (2 : ℝ) ^ ((2 : ℝ) * t), fun (_a : ℝ) => _a = ((2 : ℝ) ^ t) ^ (2 : ℕ)): no library counterpart (not stated) [exec 428 2009-2024]
    // UNCITED-APPLIED congrArg((2 : ℝ) ^ ((2 : ℝ) * t), ((2 : ℝ) ^ t) ^ (2 : ℕ), fun (_a : ℝ) => _a = ((2 : ℝ) ^ t) ^ (2 : ℕ)): no library counterpart (not stated) [exec 428 2009-2024]
  }
  // have h₃ : ( 2 ^ t - 3 * t ) * t / 4 ^ t == ( t / 2 ^ t - 3 * ( t / 2 ^ t ) ^ 2 )  [type from Lean state]
  assert (Real.div(((Real.rpow(2.0, t) - (3.0 * t)) * t), Real.rpow(4.0, t)) == (Real.div(t, Real.rpow(2.0, t)) - (3.0 * (Real.div(t, Real.rpow(2.0, t)) * Real.div(t, Real.rpow(2.0, t)))))) by { // @tac 2194-2249 // @tac 2254-2300 // @tac 2305-2351 // @tac 2356-3209
    // have h₄ : 4 ^ t == ( 2 ^ t ) ^ 2  [type from Lean state]
    assert (Real.rpow(4.0, t) == (Real.rpow(2.0, t) * Real.rpow(2.0, t))) by {
      // [TACTIC: exact h₂]
      assert (Real.rpow(4.0, t) == (Real.rpow(2.0, t) * Real.rpow(2.0, t)));
    }
    // have h₅ : 4 ^ t > 0  [type from Lean state]
    assert (Real.rpow(4.0, t) > 0.0) by { // @tac 2290-2300
      // [TACTIC: Positivity]
      // UNCITED-APPLIED internal ×2 [exec 512 2290-2300]: applications made inside the tactic's own automation, not stated — Mathlib.Meta.Positivity.pos_of_isNat ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: Real.rpow_pos_of_pos [Lean recorded ×1])
      assert (0.0 < (4.0));  // precondition of RealRpowPosOfPos (Lean: Real.rpow_pos_of_pos)
      RealRpowPosOfPos(4.0, t);  // cite: Real.rpow_pos_of_pos [applied by the tactic, not named in it]
    }
    // have h₆ : 2 ^ t > 0  [type from Lean state]
    assert (Real.rpow(2.0, t) > 0.0) by { // @tac 2341-2351
      // [TACTIC: Positivity]
      // UNCITED-APPLIED internal ×2 [exec 529 2341-2351]: applications made inside the tactic's own automation, not stated — Mathlib.Meta.Positivity.pos_of_isNat ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: Real.rpow_pos_of_pos [Lean recorded ×1])
      assert (0.0 < (2.0));  // precondition of RealRpowPosOfPos (Lean: Real.rpow_pos_of_pos)
      RealRpowPosOfPos(2.0, t);  // cite: Real.rpow_pos_of_pos [applied by the tactic, not named in it]
    }
    // calc ( 2 ^ t - 3 * t ) * t / 4 ^ t ...  (carrier real from the Lean state; 4/5 steps typed)
    calc {
      Real.div(((Real.rpow(2.0, t) - (3.0 * t)) * t), Real.rpow(4.0, t));
      == {
        assert (Real.div(((Real.rpow(2.0, t) - (3.0 * t)) * t), Real.rpow(4.0, t)) == Real.div(((Real.rpow(2.0, t) - (3.0 * t)) * t), Real.rpow(4.0, t))) by {  // sub-goal before `norm_num` (Lean state) // @tac 2439-2447
          // [TACTIC: «Norm_num[_]At___»]
          // UNCITED-APPLIED internal ×4 [exec 535 2439-2447]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, Eq.trans ×1, eq_self ×1, eq_true ×1
        }
      }
      Real.div(((Real.rpow(2.0, t) - (3.0 * t)) * t), Real.rpow(4.0, t));
      == {
        assert (Real.div(((Real.rpow(2.0, t) - (3.0 * t)) * t), Real.rpow(4.0, t)) == Real.div(((Real.rpow(2.0, t) - (3.0 * t)) * t), (Real.rpow(2.0, t) * Real.rpow(2.0, t)))) by {  // sub-goal before `rw` (Lean state) // @tac 2514-2523
          // [TACTIC: rwSeq [ h₄ ]]
          // UNCITED-APPLIED congrArg((4 : ℝ) ^ t, ((2 : ℝ) ^ t) ^ (2 : ℕ), fun (_a : ℝ) => ((2 : ℝ) ^ t - (3 : ℝ) * t) * t / _a = ((2 : ℝ) ^ t -…): no library counterpart (not stated) [exec 544 2514-2523]
        }
      }
      Real.div(((Real.rpow(2.0, t) - (3.0 * t)) * t), (Real.rpow(2.0, t) * Real.rpow(2.0, t)));
      == {
        assert (Real.div(((Real.rpow(2.0, t) - (3.0 * t)) * t), (Real.rpow(2.0, t) * Real.rpow(2.0, t))) == Real.div(((Real.rpow(2.0, t) - (3.0 * t)) * t), (Real.rpow(2.0, t) * Real.rpow(2.0, t)))) by {  // sub-goal before `ring` (Lean state) // @tac 2590-2594
          // [TACTIC: Ring]
          // UNCITED-APPLIED internal ×85 [exec 573 2590-2594]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_mul ×6, Mathlib.Tactic.Ring.mul_add ×6, Mathlib.Tactic.Ring.mul_zero ×6, Mathlib.Tactic.Ring.add_pf_add_zero ×6 (+40 more heads, ×61)
        }
      }
      Real.div(((Real.rpow(2.0, t) - (3.0 * t)) * t), (Real.rpow(2.0, t) * Real.rpow(2.0, t)));
      == {
        assert (Real.div(((Real.rpow(2.0, t) - (3.0 * t)) * t), (Real.rpow(2.0, t) * Real.rpow(2.0, t))) == (Real.div(t, Real.rpow(2.0, t)) - (3.0 * (Real.div(t, Real.rpow(2.0, t)) * Real.div(t, Real.rpow(2.0, t)))))) by {  // sub-goal before `have` (Lean state) // @tac 2669-3120 // @tac 3129-3138
          // have h₇ : ( 2 ^ t - 3 * t ) * t / ( 2 ^ t ) ^ 2 == ( t / 2 ^ t - 3 * ( t / 2 ^ t  [type from Lean state]
          assert (Real.div(((Real.rpow(2.0, t) - (3.0 * t)) * t), (Real.rpow(2.0, t) * Real.rpow(2.0, t))) == (Real.div(t, Real.rpow(2.0, t)) - (3.0 * (Real.div(t, Real.rpow(2.0, t)) * Real.div(t, Real.rpow(2.0, t)))))) by { // @tac 2799-3100 // @tac 3111-3120
            // have h₈ : ( 2 ^ t - 3 * t ) * t / ( 2 ^ t ) ^ 2 == ( t / 2 ^ t - 3 * ( t / 2 ^ t  [type from Lean state]
            assert (Real.div(((Real.rpow(2.0, t) - (3.0 * t)) * t), (Real.rpow(2.0, t) * Real.rpow(2.0, t))) == (Real.div(t, Real.rpow(2.0, t)) - (3.0 * (Real.div(t, Real.rpow(2.0, t)) * Real.div(t, Real.rpow(2.0, t)))))) by { // @tac 2931-3100 // @tac 2931-3076 // @tac 2931-3038 // @tac 2931-3014 // @tac 2931-2976 // @tac 2931-2952
              // [TACTIC: «_<;>_» [ h₆.ne' ] field_simp [ h₆.ne' ] <;> ring_nf ring_nf <;> field_simp [ h₆.ne' ] field_simp [ h₆.ne' ] <;> ring_nf ring_nf <;> field_simp [ h₆.ne' ] field_simp [ h₆.ne' ] <;> ring_nf ring_nf]
              // [TACTIC: choice [ h₆.ne' ] field_simp [ h₆.ne' ]]
              assert (0.0 < (Real.rpow(2.0, t)));  // precondition of PowPos (Lean: pow_pos)
              PowPos(Real.rpow(2.0, t), 2);  // cite: pow_pos [applied by the tactic, not named in it]
              if (0.0 < (2.0)) { RealRpowPosOfPos(2.0, t); }  // cite: Real.rpow_pos_of_pos [applied by the tactic, not named in it]
              if (0.0 < (Real.rpow(2.0, t))) && (0.0 < ((Real.rpow(2.0, t) * Real.rpow(2.0, t)))) { MulPos(Real.rpow(2.0, t), (Real.rpow(2.0, t) * Real.rpow(2.0, t))); }  // cite: mul_pos [applied by the tactic, not named in it]
              // UNCITED h₆.ne': a projection of the local hypothesis h₆ handed to the tactic; its fact is not stated here
              // `fieldSimp` step's recorded applications: the lemma applications Lean's proof term of this step is built from (no linarith run here) (Lean execution 2931-2952 exec 635)
              // cert: pow_pos piece `(0.0 < (Real.rpow(2.0, t) * Real.rpow(2.0, t)))` not stated (only `0 < a ^ 2` of an atom a is lowered)
              if (0.0 < Real.rpow(2.0, t)) && (0.0 < (Real.rpow(2.0, t) * Real.rpow(2.0, t))) { cert_piece_2(t); }  // cert: mul_pos
              // UNCITED-APPLIED internal ×24 [exec 635 2931-2952]: applications made inside the tactic's own automation, not stated — ne_of_gt ×3, div_mul_eq_mul_div ×2, div_pow ×1, mul_div_assoc' ×1, sub_div' ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1, div_sub' ×1, div_div ×1; machinery/glue: Eq.trans ×6, congrArg ×6, Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: Real.rpow_pos_of_pos [Lean recorded ×1], mul_pos [Lean recorded ×1], pow_pos [Lean recorded ×1])
              assert ((((Real.rpow(2.0, t) - (3.0 * t)) * t) * (Real.rpow(2.0, t) * (Real.rpow(2.0, t) * Real.rpow(2.0, t)))) == (((t * (Real.rpow(2.0, t) * Real.rpow(2.0, t))) - (Real.rpow(2.0, t) * (3.0 * (t * t)))) * (Real.rpow(2.0, t) * Real.rpow(2.0, t)))) by {  // sub-goal of `ring_nf` (Lean state) // @tac 2969-2976
                PowOne(t);  // cite: pow_one [applied by the tactic, not named in it]
                // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := t)
                // UNCITED-APPLIED internal ×147 [exec 644 2969-2976]: applications made inside the tactic's own automation, not stated — mul_one ×1, add_zero ×1; machinery/glue: Eq.trans ×8, congrArg ×8, Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8 (+41 more heads, ×113) (cited in this block, not counted here: pow_one [Lean recorded ×1])
              }
            }
            // [TACTIC: rwSeq [ h₈ ]]
            // UNCITED-APPLIED congrArg(((2 : ℝ) ^ t - (3 : ℝ) * t) * t / ((2 : ℝ) ^ t) ^ (2 : ℕ), t / (2 : ℝ) ^ t - (3 : ℝ) * (t / (2 : ℝ) ^ t) ^ (2 : ℕ), fun (_a : ℝ) => _a = t / (2 : ℝ) ^ t - (3 : ℝ) * (t / (2 : ℝ) ^ t) ^ …): no library counterpart (not stated) [exec 673 3111-3120]
          }
          // [TACTIC: rwSeq [ h₇ ]]
          // UNCITED-APPLIED congrArg(((2 : ℝ) ^ t - (3 : ℝ) * t) * t / ((2 : ℝ) ^ t) ^ (2 : ℕ), t / (2 : ℝ) ^ t - (3 : ℝ) * (t / (2 : ℝ) ^ t) ^ (2 : ℕ), fun (_a : ℝ) => _a = t / (2 : ℝ) ^ t - (3 : ℝ) * (t / (2 : ℝ) ^ t) ^ …): no library counterpart (not stated) [exec 698 3129-3138]
        }
      }
      (Real.div(t, Real.rpow(2.0, t)) - (3.0 * ((Real.div(t, Real.rpow(2.0, t))) * (Real.div(t, Real.rpow(2.0, t))))));
      == {
        assert ((Real.div(t, Real.rpow(2.0, t)) - (3.0 * (Real.div(t, Real.rpow(2.0, t)) * Real.div(t, Real.rpow(2.0, t))))) == (Real.div(t, Real.rpow(2.0, t)) - (3.0 * (Real.div(t, Real.rpow(2.0, t)) * Real.div(t, Real.rpow(2.0, t)))))) by {  // sub-goal before `ring` (Lean state) // @tac 3205-3209
          // [TACTIC: Ring]
          // UNCITED-APPLIED internal ×63 [exec 727 3205-3209]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_pf_right ×3, Mathlib.Tactic.Ring.add_mul ×3, Mathlib.Tactic.Ring.mul_add ×3, Mathlib.Tactic.Ring.mul_pf_left ×3 (+38 more heads, ×51)
        }
      }
      (Real.div(t, Real.rpow(2.0, t)) - (3.0 * (Real.div(t, Real.rpow(2.0, t)) * Real.div(t, Real.rpow(2.0, t)))));
    }
  }
  // have h₄ : ( t / 2 ^ t - 3 * ( t / 2 ^ t ) ^ 2 ) <= 1 / 12  [type from Lean state]
  assert ((Real.div(t, Real.rpow(2.0, t)) - (3.0 * (Real.div(t, Real.rpow(2.0, t)) * Real.div(t, Real.rpow(2.0, t))))) <= (1.0 / 12.0)) by { // @tac 3298-3691 // @tac 3696-3706
    // have h₅ : t / 2 ^ t - 3 * ( t / 2 ^ t ) ^ 2 <= 1 / 12  [type from Lean state]
    assert ((Real.div(t, Real.rpow(2.0, t)) - (3.0 * (Real.div(t, Real.rpow(2.0, t)) * Real.div(t, Real.rpow(2.0, t))))) <= (1.0 / 12.0)) by { // @tac 3389-3674 // @tac 3681-3691
      // have h₆ : t / 2 ^ t - 3 * ( t / 2 ^ t ) ^ 2 <= 1 / 12  [type from Lean state]
      assert ((Real.div(t, Real.rpow(2.0, t)) - (3.0 * (Real.div(t, Real.rpow(2.0, t)) * Real.div(t, Real.rpow(2.0, t))))) <= (1.0 / 12.0)) by { // @tac 3482-3541 // @tac 3550-3655 // @tac 3664-3674
        // have h₇ : forall ( u : ℝ ) :: u - 3 * u ^ 2 <= 1 / 12  [type from Lean state]
        forall u: real
          ensures ((u - (3.0 * (u * u))) <= (1.0 / 12.0))
        {
          // [TACTIC: exact h₀]
          assert (forall u: real :: ((u - (3.0 * (u * u))) <= (1.0 / 12.0)));
        }
        // have h₈ : t / 2 ^ t - 3 * ( t / 2 ^ t ) ^ 2 <= 1 / 12  [type from Lean state]
        assert ((Real.div(t, Real.rpow(2.0, t)) - (3.0 * (Real.div(t, Real.rpow(2.0, t)) * Real.div(t, Real.rpow(2.0, t))))) <= (1.0 / 12.0)) by { // @tac 3645-3655
          // [TACTIC: apply h₇]
          assert ((Real.div(t, Real.rpow(2.0, t)) - (3.0 * (Real.div(t, Real.rpow(2.0, t)) * Real.div(t, Real.rpow(2.0, t))))) <= (1.0 / 12.0));  // instance of h₇ (Lean state)
        }
        // [TACTIC: exact h₈]
        assert ((Real.div(t, Real.rpow(2.0, t)) - (3.0 * (Real.div(t, Real.rpow(2.0, t)) * Real.div(t, Real.rpow(2.0, t))))) <= (1.0 / 12.0));
      }
      // [TACTIC: exact h₆]
      assert ((Real.div(t, Real.rpow(2.0, t)) - (3.0 * (Real.div(t, Real.rpow(2.0, t)) * Real.div(t, Real.rpow(2.0, t))))) <= (1.0 / 12.0));
    }
    // [TACTIC: exact h₅]
    assert ((Real.div(t, Real.rpow(2.0, t)) - (3.0 * (Real.div(t, Real.rpow(2.0, t)) * Real.div(t, Real.rpow(2.0, t))))) <= (1.0 / 12.0));
  }
  // have h₅ : ( 2 ^ t - 3 * t ) * t / 4 ^ t <= 1 / 12  [type from Lean state]
  assert (Real.div(((Real.rpow(2.0, t) - (3.0 * t)) * t), Real.rpow(4.0, t)) <= (1.0 / 12.0)) by { // @tac 3773-3782
    // [TACTIC: rwSeq [ h₃ ]]
    // UNCITED-APPLIED congrArg(((2 : ℝ) ^ t - (3 : ℝ) * t) * t / (4 : ℝ) ^ t, t / (2 : ℝ) ^ t - (3 : ℝ) * (t / (2 : ℝ) ^ t) ^ (2 : ℕ), fun (_a : ℝ) => _a ≤ (1 / 12 : ℝ)): no library counterpart (not stated) [exec 828 3773-3782]
    assert ((Real.div(t, Real.rpow(2.0, t)) - (3.0 * (Real.div(t, Real.rpow(2.0, t)) * Real.div(t, Real.rpow(2.0, t))))) <= (1.0 / 12.0)) by {  // sub-goal before `exact` (Lean state) // @tac 3787-3797
      // [TACTIC: exact h₄]
      assert ((Real.div(t, Real.rpow(2.0, t)) - (3.0 * (Real.div(t, Real.rpow(2.0, t)) * Real.div(t, Real.rpow(2.0, t))))) <= (1.0 / 12.0));
    }
  }
  // [TACTIC: exact h₅]
  assert (Real.div(((Real.rpow(2.0, t) - (3.0 * t)) * t), Real.rpow(4.0, t)) <= (1.0 / 12.0));
}



// ===== closed lemma for line 25 (from closed/amc12b_2020_p22-25.dfy) =====

lemma {:induction false} vc_amc12b_2020_p22_L25(t: real)
  requires 0.0 < Real.rpow(2.0, t) * Real.rpow(2.0, t)
  ensures   (0.0 < Real.rpow(2.0, t))
{
  RealRpowPosOfPos(2.0, t);  // [ADDED]
}
