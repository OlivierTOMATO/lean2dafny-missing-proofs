// CLOSED — failing line amc12a_2021_p14-309: theorem amc12a_2021_p14, Dafny line 309 (OOR: Verification out of resource (amc12a_2021_p14))
// failing Dafny line: assert (Real.div(((k as real) * Real.log(25.0)), ((k as real) * Real.log(9.0))) == Real.logb(3.0, 5.0)) by {
// Lean step: have h₃₄ : Real.log 25 = 2 * Real.log 5 := by
// hypotheses: 11 facts Z3 had at the line (goal itself removed: 0; the block's own asserts removed: 2); nothing assumed beyond the facts in scope
// how it closes: K2pow — library copy with the recursive `ensures` of Real.pow/Int.pow removed (bodies kept); only that change
// Dafny: finished with 52 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)
// NOTE: uses a MODIFIED library copy: see alt/amc12a_2021_p14-309/LIBRARY_CHANGES.diff

include "alt/amc12a_2021_p14-309/out/amc12a_2021_p14.dfy"
lemma {:induction false} vc_amc12a_2021_p14_L309(k_2_0: nat)
  requires forall k_0_1: nat :: k_0_1 in IccN(1, 20) ==> Real.logb(Real.pow(5.0, k_0_1), Real.pow(3.0, Int.pow(k_0_1, 2))) == (k_0_1 as real) * Real.logb(5.0, 3.0)
  requires 0 <= 1
  requires 0 <= 20
  requires Real.sum(IccN(1, 20), ((k: nat) => Real.logb(Real.pow(5.0, k), Real.pow(3.0, Int.pow(k, 2))))) == 210.0 * Real.logb(5.0, 3.0)
  requires 0 <= k_2_0
  requires 0 <= 100
  requires k_2_0 in IccN(1, 100)
  requires Real.logb(Real.pow(9.0, k_2_0), Real.pow(25.0, k_2_0)) == Real.div(Real.log(Real.pow(25.0, k_2_0)), Real.log(Real.pow(9.0, k_2_0)))
  requires Real.log(Real.pow(25.0, k_2_0)) == (k_2_0 as real) * Real.log(25.0)
  requires Real.log(Real.pow(9.0, k_2_0)) == (k_2_0 as real) * Real.log(9.0)
  requires Real.div((k_2_0 as real) * (2.0 * Real.log(5.0)), (k_2_0 as real) * (2.0 * Real.log(3.0))) == Real.logb(3.0, 5.0)
  ensures   Real.div((k_2_0 as real) * Real.log(25.0), (k_2_0 as real) * Real.log(9.0)) == Real.logb(3.0, 5.0)
{
 
        // have h₃₄ : Real.log ( 25 ) == 2 * Real.log ( 5 )  [type from Lean state]
        assert (Real.log(25.0) == (2.0 * Real.log(5.0))) by { // @tac 4438-4501 // @tac 4508-4523
          // have h₃₄₁ : Real.log ( 25 ) == Real.log ( ( 5 ^ 2 ) )  [type from Lean state]
          assert (Real.log(25.0) == Real.log(Real.pow(5.0, 2))); // @tac 4493-4501
            // [TACTIC: «Norm_num[_]At___»]
          // UNCITED-APPLIED internal ×11 [exec 1335 4493-4501]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, Eq.trans ×1, congrArg ×1 (+6 more heads, ×6)
          // [TACTIC: rwSeq [ h₃₄₁ ]]
          // UNCITED-APPLIED congrArg(Real.log (25 : ℝ), Real.log ((5 : ℝ) ^ (2 : ℕ)), fun (_a : ℝ) => _a = (2 : ℝ) * Real.log (5 : ℝ)): no library counterpart (not stated) [exec 1340 4508-4523]
          assert (Real.log(Real.pow(5.0, 2)) == (2.0 * Real.log(5.0))) by {  // sub-goal before `have` (Lean state) // @tac 4530-4651 // @tac 4658-4673
            // have h₃₄₂ : Real.log ( ( 5 ^ 2 ) ) == 2 * Real.log ( 5 )  [type from Lean state]
            assert (Real.log(Real.pow(5.0, 2)) == (2.0 * Real.log(5.0))) by { // @tac 4596-4651 // @tac 4596-4634 // @tac 4596-4613
              // [TACTIC: «_<;>_» [ Real.log_pow ] rw [ Real.log_pow ] <;> norm_num norm_num <;> ring]
              // [TACTIC: choice [ Real.log_pow ] rw [ Real.log_pow ]]
              RealLogPow(2, 5.0);  // cite: Real.log_pow
              // UNCITED-APPLIED congrArg(Real.log ((5 : ℝ) ^ (2 : ℕ)), ↑(2 : ℕ) * Real.log (5 : ℝ), fun (_a : ℝ) => _a = (2 : ℝ) * Real.log (5 : ℝ)): no library counterpart (not stated) [exec 1397 4596-4613]
              assert (((2 as real) * Real.log(5.0)) == (2.0 * Real.log(5.0)));  // sub-goal of `norm_num` (Lean state) // @tac 4626-4634
              // UNCITED-APPLIED internal ×8 [exec 1432 4626-4634]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, Eq.trans ×1, congrArg ×1, Mathlib.Meta.NormNum.IsNat.to_eq ×1 (+4 more heads, ×4)
            }
            // [TACTIC: rwSeq [ h₃₄₂ ]]
            // UNCITED-APPLIED congrArg(Real.log ((5 : ℝ) ^ (2 : ℕ)), (2 : ℝ) * Real.log (5 : ℝ), fun (_a : ℝ) => _a = (2 : ℝ) * Real.log (5 : ℝ)): no library counterpart (not stated) [exec 1443 4658-4673]
          }
        }
        // have h₃₅ : Real.log ( 9 ) == 2 * Real.log ( 3 )  [type from Lean state]
        assert (Real.log(9.0) == (2.0 * Real.log(3.0))) by { // @tac 4733-4795 // @tac 4802-4817
          // have h₃₅₁ : Real.log ( 9 ) == Real.log ( ( 3 ^ 2 ) )  [type from Lean state]
          assert (Real.log(9.0) == Real.log(Real.pow(3.0, 2))); // @tac 4787-4795
            // [TACTIC: «Norm_num[_]At___»]
          // UNCITED-APPLIED internal ×11 [exec 1496 4787-4795]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, Eq.trans ×1, congrArg ×1 (+6 more heads, ×6)
          // [TACTIC: rwSeq [ h₃₅₁ ]]
          // UNCITED-APPLIED congrArg(Real.log (9 : ℝ), Real.log ((3 : ℝ) ^ (2 : ℕ)), fun (_a : ℝ) => _a = (2 : ℝ) * Real.log (3 : ℝ)): no library counterpart (not stated) [exec 1501 4802-4817]
          assert (Real.log(Real.pow(3.0, 2)) == (2.0 * Real.log(3.0))) by {  // sub-goal before `have` (Lean state) // @tac 4824-4945 // @tac 4952-4967
            // have h₃₅₂ : Real.log ( ( 3 ^ 2 ) ) == 2 * Real.log ( 3 )  [type from Lean state]
            assert (Real.log(Real.pow(3.0, 2)) == (2.0 * Real.log(3.0))) by { // @tac 4890-4945 // @tac 4890-4928 // @tac 4890-4907
              // [TACTIC: «_<;>_» [ Real.log_pow ] rw [ Real.log_pow ] <;> norm_num norm_num <;> ring]
              // [TACTIC: choice [ Real.log_pow ] rw [ Real.log_pow ]]
              RealLogPow(2, 3.0);  // cite: Real.log_pow
              // UNCITED-APPLIED congrArg(Real.log ((3 : ℝ) ^ (2 : ℕ)), ↑(2 : ℕ) * Real.log (3 : ℝ), fun (_a : ℝ) => _a = (2 : ℝ) * Real.log (3 : ℝ)): no library counterpart (not stated) [exec 1558 4890-4907]
              assert (((2 as real) * Real.log(3.0)) == (2.0 * Real.log(3.0)));  // sub-goal of `norm_num` (Lean state) // @tac 4920-4928
              // UNCITED-APPLIED internal ×8 [exec 1593 4920-4928]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, Eq.trans ×1, congrArg ×1, Mathlib.Meta.NormNum.IsNat.to_eq ×1 (+4 more heads, ×4)
            }
            // [TACTIC: rwSeq [ h₃₅₂ ]]
            // UNCITED-APPLIED congrArg(Real.log ((3 : ℝ) ^ (2 : ℕ)), (2 : ℝ) * Real.log (3 : ℝ), fun (_a : ℝ) => _a = (2 : ℝ) * Real.log (3 : ℝ)): no library counterpart (not stated) [exec 1604 4952-4967]
          }
        }
        // [TACTIC: rwSeq [ h₃₄ , h₃₅ ]]
        // UNCITED-APPLIED congrArg(Real.log (25 : ℝ), (2 : ℝ) * Real.log (5 : ℝ), fun (_a : ℝ) => ↑k * _a / (↑k * Real.log (9 : ℝ)) = logb (3 : ℝ) (5 :…): no library counterpart (not stated) [exec 1629 4972-4993]
        // UNCITED-APPLIED congrArg(Real.log (9 : ℝ), (2 : ℝ) * Real.log (3 : ℝ), fun (_a : ℝ) => ↑k * ((2 : ℝ) * Real.log (5 : ℝ)) / (↑k * _a) = logb …): no library counterpart (not stated) [exec 1629 4972-4993]
        assert (Real.div(((k_2_0 as real) * (2.0 * Real.log(5.0))), ((k_2_0 as real) * (2.0 * Real.log(3.0)))) == Real.logb(3.0, 5.0)) by {  // sub-goal before `have` (Lean state) // @tac 4998-5304 // @tac 5309-5354 // @tac 5359-5480 // @tac 5485-5606 // @tac 5611-6106 // @tac 5611-6090 // @tac 5611-5980 // @tac 5611-5964 // @tac 5611-5854 // @tac 5611-5838 // @tac 5611-5728 // @tac 5611-5712
          // have h₃₆ :  != 0  [type from Lean state]
          assert ((k_2_0 as real) != 0.0) by { // @tac 5041-5304 // @tac 5041-5249 // @tac 5041-5164 // @tac 5041-5112 // @tac 5041-5087 // @tac 5041-5059
            // [TACTIC: «_<;>_» at hk ⊢ <;> ( try omega omega ) <;> ( try linarith linarith ) <;> ( try { aesop } ) <;> ( try { norm_num at hk ⊢ <;> omega omega } ) <;> ( try { linarith linarith } )]
            // [TACTIC: «Norm_num[_]At___» at hk ⊢]
            // UNCITED-APPLIED internal ×1 [exec 1698 5041-5059]: applications made inside the tactic's own automation, not stated — machinery/glue: congrArg ×1
            assert ((1 <= k_2_0) && (k_2_0 <= 100));  // hypothesis hk after `norm_num` (Lean state) // @tac-hyp 5041-5059
            assert !(k_2_0 == 0) by {  // sub-goal of `omega` (Lean state) // @tac 5077-5086 // @tac 5081-5086
              // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
              // UNCITED-APPLIED internal ×32 [exec 1714 5081-5086]: applications made inside the tactic's own automation, not stated — le_of_le_of_eq ×2, Int.sub_nonneg_of_le ×2, Int.sub_eq_zero_of_eq ×1; machinery/glue: Eq.symm ×5, Eq.trans ×4, Lean.Omega.Int.sub_congr ×3, Lean.Omega.LinearCombo.sub_eval ×3 (+9 more heads, ×12)
            }
            // [TACTIC: try linarith linarith]  NOT RUN in Lean (no execution recorded)
            // [TACTIC: ( try linarith linarith )]  NOT RUN in Lean (no execution recorded)
            // [TACTIC: try { aesop }]  NOT RUN in Lean (no execution recorded)
            // [TACTIC: ( try { aesop } )]  NOT RUN in Lean (no execution recorded)
            // [TACTIC: try { norm_num at hk ⊢ <;> omega omega }]  NOT RUN in Lean (no execution recorded)
            // [TACTIC: ( try { norm_num at hk ⊢ <;> omega omega } )]  NOT RUN in Lean (no execution recorded)
            // [TACTIC: try { linarith linarith }]  NOT RUN in Lean (no execution recorded)
            // [TACTIC: ( try { linarith linarith } )]  NOT RUN in Lean (no execution recorded)
          }
          // have h₃₇ : 2 != 0  [type from Lean state]
          assert (2.0 != 0.0) by { // @tac 5346-5354
            // [TACTIC: «Norm_num[_]At___»]
            NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
            // UNCITED-APPLIED internal ×5 [exec 1755 5346-5354]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          }
          // have h₃₈ : Real.log ( 5 ) != 0  [type from Lean state]
          assert (Real.log(5.0) != 0.0) by { // @tac 5403-5465 // @tac 5472-5480
            // have h₃₈₁ : Real.log ( 5 ) > 0  [type from Lean state]
            assert (Real.log(5.0) > 0.0) by {
              assert (1.0 < 5.0) by {  // sub-goal of `by` (Lean state) // @tac 5456-5464
                // [TACTIC: «Norm_num[_]At___»]
                NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
                // UNCITED-APPLIED internal ×5 [exec 1786 5456-5464]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
              }
              // [TACTIC: exact Real.log_pos ( ( by norm_num norm_num ) )]
              assert (1.0 < (5.0));  // precondition of RealLogPos (Lean: Real.log_pos)
              RealLogPos(5.0);  // cite: Real.log_pos
            }
            // [TACTIC: «Linarith[_]At___»]
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 5472-5480 exec 1789)
            cert_identity_2();  // cert: Linarith.lt_of_lt_of_eq
            // UNCITED-APPLIED internal ×5 [exec 1789 5472-5480]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×1; machinery/glue: Not.intro ×1, Linarith.lt_irrefl ×1, congrArg ×1, Linarith.lt_of_lt_of_eq ×1
            // UNCITED-APPLIED internal ×20 [exec 1790 5472-5480]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1790)]
          }
          // have h₃₉ : Real.log ( 3 ) != 0  [type from Lean state]
          assert (Real.log(3.0) != 0.0) by { // @tac 5529-5591 // @tac 5598-5606
            // have h₃₉₁ : Real.log ( 3 ) > 0  [type from Lean state]
            assert (Real.log(3.0) > 0.0) by {
              assert (1.0 < 3.0) by {  // sub-goal of `by` (Lean state) // @tac 5582-5590
                // [TACTIC: «Norm_num[_]At___»]
                NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
                // UNCITED-APPLIED internal ×5 [exec 1821 5582-5590]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
              }
              // [TACTIC: exact Real.log_pos ( ( by norm_num norm_num ) )]
              assert (1.0 < (3.0));  // precondition of RealLogPos (Lean: Real.log_pos)
              RealLogPos(3.0);  // cite: Real.log_pos
            }
            // [TACTIC: «Linarith[_]At___»]
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 5598-5606 exec 1824)
            cert_identity_3();  // cert: Linarith.lt_of_lt_of_eq
            // UNCITED-APPLIED internal ×5 [exec 1824 5598-5606]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×1; machinery/glue: Not.intro ×1, Linarith.lt_irrefl ×1, congrArg ×1, Linarith.lt_of_lt_of_eq ×1
            // UNCITED-APPLIED internal ×20 [exec 1825 5598-5606]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1825)]
          }
          // [TACTIC: «_<;>_» [ h₃₆ , h₃₇ , h₃₈ , h₃₉ , Real.logb , Real.log_mul , Real.log_rpow , Real.log_pow ] field_simp [ h₃₆ , h₃₇ , h₃₈ , h₃₉ , Real.logb , Real.log_mul , Real.log_rpow , Real.log_pow ] <;> ring_nf ring_nf <;> field_simp [ h₃₆ , h₃₇ , h₃₈ , h₃₉ , Real.logb , Real.log_mul , Real.log_rpow , Real.log_pow ] field_simp [ h₃₆ , h₃₇ , h₃₈ , h₃₉ , Real.logb , Real.log_mul , Real.log_rpow , Real.log_pow ] <;> ring_nf ring_nf <;> field_simp [ h₃₆ , h₃₇ , h₃₈ , h₃₉ , Real.logb , Real.log_mul , Real.log_rpow , Real.log_pow ] field_simp [ h₃₆ , h₃₇ , h₃₈ , h₃₉ , Real.logb , Real.log_mul , Real.log_rpow , Real.log_pow ] <;> ring_nf ring_nf <;> field_simp [ h₃₆ , h₃₇ , h₃₈ , h₃₉ , Real.logb , Real.log_mul , Real.log_rpow , Real.log_pow ] field_simp [ h₃₆ , h₃₇ , h₃₈ , h₃₉ , Real.logb , Real.log_mul , Real.log_rpow , Real.log_pow ] <;> ring_nf ring_nf]
          // [TACTIC: choice [ h₃₆ , h₃₇ , h₃₈ , h₃₉ , Real.logb , Real.log_mul , Real.log_rpow , Real.log_pow ] field_simp [ h₃₆ , h₃₇ , h₃₈ , h₃₉ , Real.logb , Real.log_mul , Real.log_rpow , Real.log_pow ]]
          // UNCITED Real.logb: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED Real.log_mul: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED Real.log_rpow: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED Real.log_pow: named in this rewriting step; no record of Lean's proof attributes an application of it to this execution (its recorded applications are at other tactics of the proof; a rewrite at a hypothesis is filed under the tactic that later uses the hypothesis, and a conditional / under-binder simp rewrite may be unrecorded), so whether it was applied here is not known; not stated
          if (0.0 < ((k_2_0 as real))) && (0.0 < ((2.0 * Real.log(3.0)))) { MulPos((k_2_0 as real), (2.0 * Real.log(3.0))); }  // cite: mul_pos [applied by the tactic, not named in it]
          if (0.0 < (2.0)) && (0.0 < (Real.log(3.0))) { MulPos(2.0, Real.log(3.0)); }  // cite: mul_pos [applied by the tactic, not named in it]
          // `fieldSimp` step's recorded applications: the lemma applications Lean's proof term of this step is built from (no linarith run here) (Lean execution 5611-5712 exec 1861)
          if (0.0 < (k_2_0 as real)) && (0.0 < (2.0 * Real.log(3.0))) { cert_piece_4(k_2_0); }  // cert: mul_pos
          // UNCITED-APPLIED mul_pos: certificate piece `(0 : ℝ) < (2 : ℝ) * Real.log (3 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 2.0); (0.0 < Real.log(3.0))
          // UNCITED-APPLIED internal ×10 [exec 1861 5611-5712]: applications made inside the tactic's own automation, not stated — div_mul_eq_mul_div ×1, ne_of_gt ×1, Mathlib.Meta.Positivity.lt_of_le_of_ne' ×1, Nat.cast_nonneg ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1, Mathlib.Meta.Positivity.log_pos_of_isNat ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, Eq.trans ×1, congrArg ×1 (cited in this block, not counted here: mul_pos [Lean recorded ×2])
          assert ((((k_2_0 as real) * (2.0 * Real.log(5.0))) * Real.log(3.0)) == (Real.log(5.0) * ((k_2_0 as real) * (2.0 * Real.log(3.0))))) by {  // sub-goal of `ring_nf` (Lean state) // @tac 5721-5728
            PowOne((k_2_0 as real));  // cite: pow_one [applied by the tactic, not named in it]
            PowOne(Real.log(5.0));  // cite: pow_one [applied by the tactic, not named in it]
            PowOne(Real.log(3.0));  // cite: pow_one [applied by the tactic, not named in it]
            // UNCITED-APPLIED internal ×75 [exec 1870 5721-5728]: applications made inside the tactic's own automation, not stated — add_zero ×1; machinery/glue: Eq.trans ×8, congrArg ×8, Mathlib.Tactic.Ring.mul_congr ×6, Mathlib.Tactic.Ring.add_mul ×6 (+16 more heads, ×46) (cited in this block, not counted here: pow_one [Lean recorded ×3])
          }
        }
}

