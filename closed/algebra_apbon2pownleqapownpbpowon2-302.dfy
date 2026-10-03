// CLOSED LEMMA for failing line algebra_apbon2pownleqapownpbpowon2-302 (theorem algebra_apbon2pownleqapownpbpowon2, Dafny line 302, ERR)
// closes with: K2 (computation) — single
// added: library variant: Real.pow without the recursive ensures (kinds/work/shard_007/_nopow/library/MathPrelude.dfy, only change); verbatim procedure copy _repro/repro_A_nopow.dfy
// Dafny: finished with 135 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_007/_repro/repro_A_nopow.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// k_ablate shard_007: verbatim copy of procedure(s) from /home/changjie/lean2dafny_research/agents_tac/wt_integ5/out/algebra_apbon2pownleqapownpbpowon2.dfy (renamed repro_*); edits marked // ABLATE
include "/home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_007/_nopow/out/algebra_apbon2pownleqapownpbpowon2.dfy"

// ---- copy of cert_piece_10, original lines 87-93
lemma {:isolate_assertions} repro_cert_piece_10(a: real, b: real, n: nat, k: nat)
  requires ((b - a) <= 0.0)
  requires ((Real.pow(b, k) - Real.pow(a, k)) <= 0.0)
  ensures (0.0 <= ((b - a) * (Real.pow(b, k) - Real.pow(a, k))))
{
  MulNonneg(-((b - a)), -((Real.pow(b, k) - Real.pow(a, k)))); MulNeg(-((b - a)), (Real.pow(b, k) - Real.pow(a, k))); assert (-((b - a))) * (-((Real.pow(b, k) - Real.pow(a, k)))) == -((-((b - a))) * ((Real.pow(b, k) - Real.pow(a, k)))); assert (-((b - a))) * ((Real.pow(b, k) - Real.pow(a, k))) == -(((b - a)) * ((Real.pow(b, k) - Real.pow(a, k))));
}
// ---- copy of cert_piece_16, original lines 138-144
lemma {:isolate_assertions} repro_cert_piece_16(a: real, b: real, n: nat, k: nat)
  requires ((a - b) <= 0.0)
  requires ((Real.pow(a, k) - Real.pow(b, k)) <= 0.0)
  ensures (0.0 <= ((a - b) * (Real.pow(a, k) - Real.pow(b, k))))
{
  MulNonneg(-((a - b)), -((Real.pow(a, k) - Real.pow(b, k)))); MulNeg(-((a - b)), (Real.pow(a, k) - Real.pow(b, k))); assert (-((a - b))) * (-((Real.pow(a, k) - Real.pow(b, k)))) == -((-((a - b))) * ((Real.pow(a, k) - Real.pow(b, k)))); assert (-((a - b))) * ((Real.pow(a, k) - Real.pow(b, k))) == -(((a - b)) * ((Real.pow(a, k) - Real.pow(b, k))));
}
// ---- copy of induction_helper_1, original lines 219-461
lemma {:isolate_assertions} repro_induction_helper_1(a: real, b: real, n: nat)
  requires ((0.0 < a) && (0.0 < b))
  requires (0.0 < a)  // ambient have h₂
  requires (0.0 < b)  // ambient have h₃
  requires (0.0 < ((a + b) / 2.0))  // ambient have h₄
  requires (forall k: nat :: (((a - b) * (Real.pow(a, k) - Real.pow(b, k))) >= 0.0))  // ambient have h₅
  ensures (Real.pow(((a + b) / 2.0), (n + 1)) <= ((Real.pow(a, (n + 1)) + Real.pow(b, (n + 1))) / 2.0))
  decreases n
{
  if n == 0 {
    // base: P(1) — Lean base case
    assert (Real.pow(((a + b) / 2.0), (0 + 1)) <= ((Real.pow(a, (0 + 1)) + Real.pow(b, (0 + 1))) / 2.0)) by {  // sub-goal before `norm_num` (Lean state) // @tac 1871-1959 // @tac 1871-1923 // @tac 1871-1889 // @tac 1840-1959
      // [TACTIC: «_<;>_» [ pow_one ] norm_num [ pow_one ] <;> ( try ring_nf ring_nf ) <;> ( try nlinarith nlinarith )]
      // [TACTIC: «Norm_num[_]At___» [ pow_one ]]
      PowOne(((a + b) / 2.0));  // cite: pow_one
      PowOne(a);  // cite: pow_one
      PowOne(b);  // cite: pow_one
      // `norm_num` closed the goal; the rest of the chain did not run
      // [TACTIC: Ring_nfAt]
      // [TACTIC: «Nlinarith[_]At___»]
      // NOT RUN in Lean (no execution recorded): no lemma instances
      // UNCITED-APPLIED internal ×17 [exec 405 1871-1889]: applications made inside the tactic's own automation, not stated — machinery/glue: congrArg ×6, Eq.trans ×4, congr ×2, of_eq_true ×1 (+4 more heads, ×4) (cited in this block, not counted here: pow_one [Lean recorded ×3])
    }
  } else {
    induction_helper_1(a, b, n - 1);   // IH: P(n)
    if (((0 + 1) <= n)) {  // sub-goal before `have` (Lean state)
      // have h₆₂ : ( a - b ) * ( a ^ n - b ^ n ) >= 0  [type from Lean state]
      assert (((a - b) * (Real.pow(a, n) - Real.pow(b, n))) >= 0.0) by {
        // [TACTIC: exact h₅ ( n )]
        assert (((a - b) * (Real.pow(a, n) - Real.pow(b, n))) >= 0.0);  // instance of h₅ (Lean state)
      }
      // have h₆₃ : ( a + b ) / 2 > 0  [type from Lean state]
      assert (((a + b) / 2.0) > 0.0) by { // @tac 2148-2158
        // [TACTIC: Positivity]
        // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 2148-2158 exec 450)
        if (0.0 < (a + b)) && (0.0 < 2.0) { cert_piece_18(a, b, n); }  // cert: div_pos
        // UNCITED-APPLIED internal ×3 [exec 450 2148-2158]: applications made inside the tactic's own automation, not stated — add_pos ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: div_pos [Lean recorded ×1])
        assert (0.0 < ((a + b))) && (0.0 < (2.0));  // precondition of DivPos (Lean: div_pos)
        DivPos((a + b), 2.0);  // cite: div_pos [applied by the tactic, not named in it]
      }
      // have h₆₄ : ( ( a + b ) / 2 ) ^ ( n + 1 ) == ( ( a + b ) / 2 ) ^ n * ( ( a + b ) /  [type from Lean state]
      assert (Real.pow(((a + b) / 2.0), (n + 1)) == (Real.pow(((a + b) / 2.0), n) * ((a + b) / 2.0))) by { // @tac 2258-2312 // @tac 2258-2290 // @tac 2258-2265
        // [TACTIC: «_<;>_» ring_nf <;> field_simp field_simp <;> ring_nf ring_nf]
        // [TACTIC: Ring_nfAt]
        PowOne(a);  // cite: pow_one [applied by the tactic, not named in it]
        PowOne(b);  // cite: pow_one [applied by the tactic, not named in it]
        NatPowOne(n);  // cite: pow_one [applied by the tactic, not named in it]
        // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := n)
        // `ring_nf` closed the goal; the rest of the chain did not run
        // UNCITED-APPLIED internal ×97 [exec 477 2258-2265]: applications made inside the tactic's own automation, not stated — add_zero ×2, mul_one ×1; machinery/glue: congr ×8, congrArg ×8, Eq.trans ×7, Mathlib.Tactic.Ring.mul_add ×6 (+32 more heads, ×65) (cited in this block, not counted here: pow_one [Lean recorded ×3])
      }
      // [TACTIC: rwSeq [ h₆₄ ]]
      // UNCITED-APPLIED congrArg(((a + b) / (2 : ℝ)) ^ (n + (1 : ℕ)), ((a + b) / (2 : ℝ)) ^ n * ((a + b) / (2 : ℝ)), fun (_a : ℝ) => _a ≤ (a ^ succ n + b ^ succ n) / (2 : ℝ)): no library counterpart (not stated) [exec 494 2321-2333]
      assert ((Real.pow(((a + b) / 2.0), n) * ((a + b) / 2.0)) <= ((Real.pow(a, (n + 1)) + Real.pow(b, (n + 1))) / 2.0)) by {  // sub-goal before `have` (Lean state) // @tac 2342-2478 // @tac 2487-2664 // @tac 2673-2696 // @tac 2705-3134 // @tac 3143-3636 // @tac 3645-3675
        // have h₆₅ : ( ( a + b ) / 2 ) ^ n * ( ( a + b ) / 2 ) <= ( ( a ^ n + b ^ n ) / 2 )  [type from Lean state]
        assert ((Real.pow(((a + b) / 2.0), n) * ((a + b) / 2.0)) <= (((Real.pow(a, n) + Real.pow(b, n)) / 2.0) * ((a + b) / 2.0))) by { // @tac 2449-2478 // @tac 2449-2455
          // [TACTIC: «_<;>_» <;> linarith linarith]
          // [TACTIC: Gcongr]
          // gcongr: side goal 0 ≤ c (Lean: positivity), main goal X ≤ Y (Lean: closed by assumption inside gcongr), then mul_le_mul_of_nonneg_right
          assert (0.0 <= ((a + b) / 2.0));  // side goal of `gcongr` (Lean state)
          assert Real.pow(((a + b) / 2.0), n) <= ((Real.pow(a, n) + Real.pow(b, n)) / 2.0);  // sub-goal of `gcongr` (its main goal X <= Y, split from the Lean state X*c <= Y*c; Lean closed it by assumption)
          gcongr_mul_le_mul_right(Real.pow(((a + b) / 2.0), n), ((Real.pow(a, n) + Real.pow(b, n)) / 2.0), ((a + b) / 2.0));  // gcongr: mul_le_mul_of_nonneg_right
          assert ((0.0) < (((a + b) / 2.0)));  // precondition of LeOfLt (Lean: le_of_lt)
          LeOfLt(0.0, ((a + b) / 2.0));  // cite: le_of_lt [applied by the tactic, not named in it: inside its internal steps (`positivity` exec 544)]
          if (0.0 < ((a + b))) && (0.0 < (2.0)) { DivPos((a + b), 2.0); }  // cite: div_pos [applied by the tactic, not named in it: inside its internal steps (`positivity` exec 544)]
          // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 2449-2455 exec 544)
          if (0.0 < (a + b)) && (0.0 < 2.0) { cert_piece_19(a, b, n); }  // cert: div_pos
          // UNCITED-APPLIED internal ×1 [exec 542 2449-2455]: applications made inside the tactic's own automation, not stated — mul_le_mul_of_nonneg_right ×1
          // UNCITED-APPLIED internal ×3 [exec 544 2449-2455]: applications made inside the tactic's own automation, not stated — add_pos ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: div_pos [Lean recorded ×1], le_of_lt [Lean recorded ×1])
          // `gcongr` closed the goal; the rest of the chain did not run
        }
        // have h₆₆ : ( ( a ^ n + b ^ n ) / 2 ) * ( ( a + b ) / 2 ) == ( a ^ n * a + a ^ n *  [type from Lean state]
        assert ((((Real.pow(a, n) + Real.pow(b, n)) / 2.0) * ((a + b) / 2.0)) == (((((Real.pow(a, n) * a) + (Real.pow(a, n) * b)) + (Real.pow(b, n) * a)) + (Real.pow(b, n) * b)) / 4.0)) by { // @tac 2610-2664 // @tac 2610-2642 // @tac 2610-2617
          // [TACTIC: «_<;>_» ring_nf <;> field_simp field_simp <;> ring_nf ring_nf]
          // [TACTIC: Ring_nfAt]
          PowOne(a);  // cite: pow_one [applied by the tactic, not named in it]
          NatPowOne(n);  // cite: pow_one [applied by the tactic, not named in it]
          PowOne(b);  // cite: pow_one [applied by the tactic, not named in it]
          // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := n)
          // `ring_nf` closed the goal; the rest of the chain did not run
          // UNCITED-APPLIED internal ×153 [exec 577 2610-2617]: applications made inside the tactic's own automation, not stated — mul_one ×1, add_zero ×1; machinery/glue: congr ×8, congrArg ×8, Mathlib.Tactic.Ring.mul_pf_right ×8, Mathlib.Tactic.Ring.mul_add ×8 (+37 more heads, ×119) (cited in this block, not counted here: pow_one [Lean recorded ×3])
        }
        // [TACTIC: rwSeq [ h₆₆ ] at h₆₅]
        assert ((Real.pow(((a + b) / 2.0), n) * ((a + b) / 2.0)) <= (((((Real.pow(a, n) * a) + (Real.pow(a, n) * b)) + (Real.pow(b, n) * a)) + (Real.pow(b, n) * b)) / 4.0));  // hypothesis h₆₅ after `rw` (Lean state) // @tac-hyp 2673-2696
        // have h₆₇ : ( a ^ ( n + 1 ) + b ^ ( n + 1 ) ) / 2 >= ( a ^ n * a + a ^ n * b + b ^  [type from Lean state]
        assert (((Real.pow(a, (n + 1)) + Real.pow(b, (n + 1))) / 2.0) >= (((((Real.pow(a, n) * a) + (Real.pow(a, n) * b)) + (Real.pow(b, n) * a)) + (Real.pow(b, n) * b)) / 4.0)) by { // @tac 2824-2888 // @tac 2899-2963 // @tac 2974-2995
          // have h₆₈ : a ^ ( n + 1 ) == a ^ n * a  [type from Lean state]
          assert (Real.pow(a, (n + 1)) == (Real.pow(a, n) * a)) by { // @tac 2881-2888
            // [TACTIC: Ring_nfAt]
            PowOne(a);  // cite: pow_one [applied by the tactic, not named in it]
            NatPowOne(n);  // cite: pow_one [applied by the tactic, not named in it]
            // UNCITED-APPLIED mul_one ×2: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := n); (a := a ^ n)
            // UNCITED-APPLIED internal ×62 [exec 653 2881-2888]: applications made inside the tactic's own automation, not stated — mul_one ×2, add_zero ×1; machinery/glue: Eq.trans ×8, congrArg ×7, congr ×4, Mathlib.Tactic.Ring.add_pf_add_zero ×3 (+23 more heads, ×37) (cited in this block, not counted here: pow_one [Lean recorded ×2])
          }
          // have h₆₉ : b ^ ( n + 1 ) == b ^ n * b  [type from Lean state]
          assert (Real.pow(b, (n + 1)) == (Real.pow(b, n) * b)) by { // @tac 2956-2963
            // [TACTIC: Ring_nfAt]
            PowOne(b);  // cite: pow_one [applied by the tactic, not named in it]
            NatPowOne(n);  // cite: pow_one [applied by the tactic, not named in it]
            // UNCITED-APPLIED mul_one ×2: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := n); (a := b ^ n)
            // UNCITED-APPLIED internal ×62 [exec 670 2956-2963]: applications made inside the tactic's own automation, not stated — mul_one ×2, add_zero ×1; machinery/glue: Eq.trans ×8, congrArg ×7, congr ×4, Mathlib.Tactic.Ring.add_pf_add_zero ×3 (+23 more heads, ×37) (cited in this block, not counted here: pow_one [Lean recorded ×2])
          }
          // [TACTIC: rwSeq [ h₆₈ , h₆₉ ]]
          // UNCITED-APPLIED congrArg(a ^ (n + (1 : ℕ)), a ^ n * a, fun (_a : ℝ) => (_a + b ^ (n + (1 : ℕ))) / (2 : ℝ) ≥ (a ^ n * a + a ^…): no library counterpart (not stated) [exec 675 2974-2995]
          // UNCITED-APPLIED congrArg(b ^ (n + (1 : ℕ)), b ^ n * b, fun (_a : ℝ) => (a ^ n * a + _a) / (2 : ℝ) ≥ (a ^ n * a + a ^ n * b +…): no library counterpart (not stated) [exec 675 2974-2995]
          assert ((((Real.pow(a, n) * a) + (Real.pow(b, n) * b)) / 2.0) >= (((((Real.pow(a, n) * a) + (Real.pow(a, n) * b)) + (Real.pow(b, n) * a)) + (Real.pow(b, n) * b)) / 4.0)) by {  // sub-goal before `have` (Lean state) // @tac 3006-3105 // @tac 3116-3134
            // have h₇₀ : a ^ n * a + b ^ n * b >= a ^ n * b + b ^ n * a  [type from Lean state]
            assert (((Real.pow(a, n) * a) + (Real.pow(b, n) * b)) >= ((Real.pow(a, n) * b) + (Real.pow(b, n) * a))) by { // @tac 3087-3105
              // [TACTIC: «Nlinarith[_]At___» [ h₅ n ]]
              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3087-3105 exec 719)
              cert_identity_20(a, b, n);  // cert: add_lt_of_le_of_neg
              // UNCITED-APPLIED internal ×6 [exec 719 3087-3105]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, add_lt_of_le_of_neg ×1, neg_nonpos_of_nonneg ×1, sub_neg_of_lt ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
              // GAP: 1 of the 1 applications of h₅ written here (`h₅ n`) have no stated instance (no renderable Lean `inst` record for it): not stated
              NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 755)]
              // UNCITED-APPLIED internal ×136 [exec 755 3087-3105]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.neg_mul ×8, Mathlib.Tactic.Ring.add_pf_add_lt ×8, Mathlib.Tactic.Ring.mul_pf_right ×8 (+36 more heads, ×104) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            }
            // [TACTIC: «Nlinarith[_]At___» [ h₅ n ]]
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3116-3134 exec 756)
            // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(4 : ℝ) * ((a ^ n * a + b ^ n * b) / (2 : ℝ) - (a ^ n * a + a ^ n * b + b ^ n * a + b ^ n * b) / (4 : ℝ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((((Real.pow(a, n) * a) + (Real.pow(b, n) * b)) / 2.0) - (((((Real.pow(a, n) * a) + (Real.pow(a, n) * b)) + (Real.pow(b, n) * a)) + (Real.pow(b, n) * b)) / 4.0)) < 0.0); (4.0 > 0.0)
            cert_identity_21(a, b, n);  // cert: add_lt_of_le_of_neg
            // UNCITED-APPLIED internal ×18 [exec 756 3116-3134]: applications made inside the tactic's own automation, not stated — CancelDenoms.mul_subst ×6, CancelDenoms.add_subst ×4, CancelDenoms.div_subst ×2, le_of_not_gt ×1, neg_nonpos_of_nonneg ×1, CancelDenoms.sub_subst ×1, sub_neg_of_lt ×1; machinery/glue: Linarith.lt_irrefl ×1, Linarith.mul_neg ×1
            // UNCITED-APPLIED internal ×6 [exec 758 3116-3134]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×14 [exec 759 3116-3134]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×6 [exec 760 3116-3134]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1)
            // UNCITED-APPLIED internal ×5 [exec 761 3116-3134]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 762 3116-3134]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 763 3116-3134]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 764 3116-3134]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×14 [exec 765 3116-3134]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×6 [exec 766 3116-3134]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // GAP: 1 of the 1 applications of h₅ written here (`h₅ n`) have no stated instance (no renderable Lean `inst` record for it): not stated
            NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 757, 758, 759, 761, 762, 763 … / `ring1` exec 803)]
            NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 767 / `ring1` exec 803)]
            // UNCITED-APPLIED internal ×165 [exec 803 3116-3134]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.neg_mul ×8, Mathlib.Tactic.Ring.add_pf_add_lt ×8, Mathlib.Tactic.Ring.mul_pf_right ×8 (+38 more heads, ×133) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×6 [exec 757 3116-3134]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 767 3116-3134]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          }
        }
        // have h₆₈ : ( ( a + b ) / 2 ) ^ ( n + 1 ) <= ( a ^ ( n + 1 ) + b ^ ( n + 1 ) ) / 2  [type from Lean state]
        assert (Real.pow(((a + b) / 2.0), (n + 1)) <= ((Real.pow(a, (n + 1)) + Real.pow(b, (n + 1))) / 2.0)) by { // @tac 3234-3355 // @tac 3366-3500 // @tac 3511-3612 // @tac 3623-3636
          // have h₆₉ : ( ( a + b ) / 2 ) ^ ( n + 1 ) <= ( a ^ n * a + a ^ n * b + b ^ n * a +  [type from Lean state]
          assert (Real.pow(((a + b) / 2.0), (n + 1)) <= (((((Real.pow(a, n) * a) + (Real.pow(a, n) * b)) + (Real.pow(b, n) * a)) + (Real.pow(b, n) * b)) / 4.0)) by { // @tac 3347-3355
            // [TACTIC: «Linarith[_]At___»]
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3347-3355 exec 836)
            // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℝ) * ((2 : ℝ) * ((a + b) / (2 : ℝ)) ^ (n + (1 : ℕ)) - (1 : ℝ) * ((a + b) / (2 : ℝ)) ^ n * ((1 : ℝ) * a + (1 : ℝ) *…` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((2.0 * Real.pow(((a + b) / 2.0), (n + 1))) - ((1.0 * Real.pow(((a + b) / 2.0), n)) * ((1.0 * a) + (1.0 * b)))) == 0.0); (2.0 > 0.0)
            // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℝ) * (((a + b) / (2 : ℝ)) ^ (n + (1 : ℕ)) - ((a + b) / (2 : ℝ)) ^ n * ((a + b) / (2 : ℝ))) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((Real.pow(((a + b) / 2.0), (n + 1)) - (Real.pow(((a + b) / 2.0), n) * ((a + b) / 2.0))) == 0.0); (2.0 > 0.0)
            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(4 : ℝ) * (((a + b) / (2 : ℝ)) ^ n * ((a + b) / (2 : ℝ)) - (a ^ n * a + a ^ n * b + b ^ n * a + b ^ n * b) / (4 : ℝ)) ≤…` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((Real.pow(((a + b) / 2.0), n) * ((a + b) / 2.0)) - (((((Real.pow(a, n) * a) + (Real.pow(a, n) * b)) + (Real.pow(b, n) * a)) + (Real.pow(b, n) * b)) / 4.0)) <= 0.0); (4.0 > 0.0)
            // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(4 : ℝ) * ((a ^ n * a + a ^ n * b + b ^ n * a + b ^ n * b) / (4 : ℝ) - ((a + b) / (2 : ℝ)) ^ (n + (1 : ℕ))) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((((((Real.pow(a, n) * a) + (Real.pow(a, n) * b)) + (Real.pow(b, n) * a)) + (Real.pow(b, n) * b)) / 4.0) - Real.pow(((a + b) / 2.0), (n + 1))) < 0.0); (4.0 > 0.0)
            // UNCITED-APPLIED Linarith.le_of_eq_of_le: certificate sum `(2 : ℝ) * ((2 : ℝ) * ((a + b) / (2 : ℝ)) ^ (n + (1 : ℕ)) - (1 : ℝ) * ((a + b) / (2 : ℝ)) ^ n * ((1 : ℝ) * a + (1 : ℝ) *…` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
            cert_identity_22(a, b, n);  // cert: add_lt_of_le_of_neg
            // UNCITED-APPLIED internal ×31 [exec 836 3347-3355]: applications made inside the tactic's own automation, not stated — CancelDenoms.mul_subst ×6, CancelDenoms.add_subst ×5, CancelDenoms.sub_subst ×3, CancelDenoms.div_subst ×3, le_of_not_gt ×1, sub_eq_zero_of_eq ×1, sub_nonpos_of_le ×1, sub_neg_of_lt ×1; machinery/glue: congrArg ×4, Linarith.mul_eq ×2, Linarith.lt_irrefl ×1, Linarith.le_of_eq_of_le ×1 (+2 more heads, ×2)
            // UNCITED-APPLIED internal ×180 [exec 888 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_pf_left ×8, Mathlib.Tactic.Ring.mul_zero ×8, Mathlib.Tactic.Ring.mul_pf_right ×8, Mathlib.Tactic.Ring.neg_add ×8 (+46 more heads, ×148) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×14 [exec 850 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×6 [exec 854 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×6 [exec 856 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 878 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 881 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×14 [exec 853 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×6 [exec 851 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1)
            // UNCITED-APPLIED internal ×6 [exec 842 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 837 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 838 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 839 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 840 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×14 [exec 841 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×6 [exec 849 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 844 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 845 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 846 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 847 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×14 [exec 848 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×6 [exec 863 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 852 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 837, 838, 839, 840, 841, 842 … / `ring1` exec 888)]
            NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 843, 852, 878, 881 / `ring1` exec 888)]
            // UNCITED-APPLIED internal ×5 [exec 843 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          }
          // have h₇₀ : ( a ^ ( n + 1 ) + b ^ ( n + 1 ) ) / 2 >= ( a ^ n * a + a ^ n * b + b ^  [type from Lean state]
          assert (((Real.pow(a, (n + 1)) + Real.pow(b, (n + 1))) / 2.0) >= (((((Real.pow(a, n) * a) + (Real.pow(a, n) * b)) + (Real.pow(b, n) * a)) + (Real.pow(b, n) * b)) / 4.0)) by { // @tac 3487-3500
            // [TACTIC: exact h₆₇]
            assert (((Real.pow(a, (n + 1)) + Real.pow(b, (n + 1))) / 2.0) >= (((((Real.pow(a, n) * a) + (Real.pow(a, n) * b)) + (Real.pow(b, n) * a)) + (Real.pow(b, n) * b)) / 4.0));
          }
          // have h₇₁ : ( ( a + b ) / 2 ) ^ ( n + 1 ) <= ( a ^ ( n + 1 ) + b ^ ( n + 1 ) ) / 2  [type from Lean state]
          assert (Real.pow(((a + b) / 2.0), (n + 1)) <= ((Real.pow(a, (n + 1)) + Real.pow(b, (n + 1))) / 2.0)) by { // @tac 3604-3612
            // [TACTIC: «Linarith[_]At___»]
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3604-3612 exec 923)
            // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℝ) * ((2 : ℝ) * ((a + b) / (2 : ℝ)) ^ (n + (1 : ℕ)) - (1 : ℝ) * ((a + b) / (2 : ℝ)) ^ n * ((1 : ℝ) * a + (1 : ℝ) *…` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((2.0 * Real.pow(((a + b) / 2.0), (n + 1))) - ((1.0 * Real.pow(((a + b) / 2.0), n)) * ((1.0 * a) + (1.0 * b)))) == 0.0); (2.0 > 0.0)
            // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℝ) * (((a + b) / (2 : ℝ)) ^ (n + (1 : ℕ)) - ((a + b) / (2 : ℝ)) ^ n * ((a + b) / (2 : ℝ))) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((Real.pow(((a + b) / 2.0), (n + 1)) - (Real.pow(((a + b) / 2.0), n) * ((a + b) / 2.0))) == 0.0); (2.0 > 0.0)
            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(4 : ℝ) * (((a + b) / (2 : ℝ)) ^ n * ((a + b) / (2 : ℝ)) - (a ^ n * a + a ^ n * b + b ^ n * a + b ^ n * b) / (4 : ℝ)) ≤…` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((Real.pow(((a + b) / 2.0), n) * ((a + b) / 2.0)) - (((((Real.pow(a, n) * a) + (Real.pow(a, n) * b)) + (Real.pow(b, n) * a)) + (Real.pow(b, n) * b)) / 4.0)) <= 0.0); (4.0 > 0.0)
            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(4 : ℝ) * ((a ^ n * a + a ^ n * b + b ^ n * a + b ^ n * b) / (4 : ℝ) - (a ^ (n + (1 : ℕ)) + b ^ (n + (1 : ℕ))) / (2 : ℝ…` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((((((Real.pow(a, n) * a) + (Real.pow(a, n) * b)) + (Real.pow(b, n) * a)) + (Real.pow(b, n) * b)) / 4.0) - ((Real.pow(a, (n + 1)) + Real.pow(b, (n + 1))) / 2.0)) <= 0.0); (4.0 > 0.0)
            // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * ((1 : ℝ) * a ^ (n + (1 : ℕ)) + (1 : ℝ) * b ^ (n + (1 : ℕ)) - (2 : ℝ) * ((a + b) / (2 : ℝ)) ^ (n + (1 : ℕ))) <…` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((1.0 * Real.pow(a, (n + 1))) + (1.0 * Real.pow(b, (n + 1)))) - (2.0 * Real.pow(((a + b) / 2.0), (n + 1)))) < 0.0); (2.0 > 0.0)
            // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * ((a ^ (n + (1 : ℕ)) + b ^ (n + (1 : ℕ))) / (2 : ℝ) - ((a + b) / (2 : ℝ)) ^ (n + (1 : ℕ))) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((Real.pow(a, (n + 1)) + Real.pow(b, (n + 1))) / 2.0) - Real.pow(((a + b) / 2.0), (n + 1))) < 0.0); (2.0 > 0.0)
            // UNCITED-APPLIED add_nonpos: certificate sum `(2 : ℝ) * ((2 : ℝ) * ((a + b) / (2 : ℝ)) ^ (n + (1 : ℕ)) - (1 : ℝ) * ((a + b) / (2 : ℝ)) ^ n * ((1 : ℝ) * a + (1 : ℝ) *…` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
            // UNCITED-APPLIED Linarith.le_of_eq_of_le: certificate sum `(2 : ℝ) * ((2 : ℝ) * ((a + b) / (2 : ℝ)) ^ (n + (1 : ℕ)) - (1 : ℝ) * ((a + b) / (2 : ℝ)) ^ n * ((1 : ℝ) * a + (1 : ℝ) *…` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
            cert_identity_23(a, b, n);  // cert: add_lt_of_le_of_neg
            // UNCITED-APPLIED internal ×40 [exec 923 3604-3612]: applications made inside the tactic's own automation, not stated — CancelDenoms.add_subst ×7, CancelDenoms.mul_subst ×6, CancelDenoms.div_subst ×5, CancelDenoms.sub_subst ×4, sub_nonpos_of_le ×2, le_of_not_gt ×1, sub_eq_zero_of_eq ×1, sub_neg_of_lt ×1; machinery/glue: congrArg ×5, Linarith.mul_eq ×2, Linarith.mul_nonpos ×2, Linarith.mul_neg ×2 (+2 more heads, ×2)
            // UNCITED-APPLIED internal ×198 [exec 987 3604-3612]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_pf_left ×8, Mathlib.Tactic.Ring.mul_zero ×8, Mathlib.Tactic.Ring.mul_pf_right ×8, Mathlib.Tactic.Ring.neg_add ×8 (+48 more heads, ×166) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×14 [exec 924 3604-3612]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×6 [exec 925 3604-3612]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×6 [exec 953 3604-3612]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 977 3604-3612]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×14 [exec 933 3604-3612]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×6 [exec 934 3604-3612]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1)
            // UNCITED-APPLIED internal ×6 [exec 932 3604-3612]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 927 3604-3612]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 928 3604-3612]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 929 3604-3612]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 930 3604-3612]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×14 [exec 931 3604-3612]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×6 [exec 941 3604-3612]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 935 3604-3612]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 936 3604-3612]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 937 3604-3612]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 938 3604-3612]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 939 3604-3612]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×14 [exec 940 3604-3612]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×6 [exec 948 3604-3612]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×14 [exec 949 3604-3612]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×6 [exec 950 3604-3612]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1)
            // UNCITED-APPLIED internal ×5 [exec 942 3604-3612]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×14 [exec 952 3604-3612]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×6 [exec 955 3604-3612]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 980 3604-3612]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 983 3604-3612]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 924, 925, 927, 928, 929, 930 … / `ring1` exec 987)]
            NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 926, 935, 942, 977, 980, 983 / `ring1` exec 987)]
            // UNCITED-APPLIED internal ×5 [exec 926 3604-3612]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          }
          // [TACTIC: exact h₇₁]
          assert (Real.pow(((a + b) / 2.0), (n + 1)) <= ((Real.pow(a, (n + 1)) + Real.pow(b, (n + 1))) / 2.0));
        }
        // [TACTIC: simpa [ pow_succ ] using h₆₈]
        PowSucc(a, n);  // cite: pow_succ
        PowSucc(b, n);  // cite: pow_succ
        PowSucc(((a + b) / 2.0), n);  // cite: pow_succ
        // UNCITED-APPLIED internal ×11 [exec 991 3645-3675]: applications made inside the tactic's own automation, not stated — div_pow ×1; machinery/glue: congrArg ×5, congr ×3, Eq.trans ×2 (cited in this block, not counted here: pow_succ [Lean recorded ×3])
      }
      assert (Real.pow(((a + b) / 2.0), (n + 1)) <= ((Real.pow(a, (n + 1)) + Real.pow(b, (n + 1))) / 2.0));  // sub-goal before `have` (Lean state) // @tac 2046-2102 // @tac 1966-3675 // @tac 2111-2158 // @tac 2167-2312 // @tac 2321-2333
    }
  }
}

// statement: Lean elaborated type (v3, stmt_cache) — requires/ensures below
