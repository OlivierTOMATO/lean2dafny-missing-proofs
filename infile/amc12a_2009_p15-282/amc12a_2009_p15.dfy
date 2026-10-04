// ════════════════════════════════════════════════════════════
// MECHANICAL TRANSLATION (emitter v2) of ast_cache_v2/amc12a_2009_p15.json
// Each Lean `have` → `assert ... by {}` at the same depth;
// quantified haves → forall statements. Typed pipeline only.
// ════════════════════════════════════════════════════════════

include "../../library/library_new.dfy"

// ──────────────────────────────────────────────────
// R14 — recursive lemma for `induction m` (structural)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} induction_helper_1(n: nat, m: nat)
  requires (0 < n)
  requires (Complex.sum(IccN(1, n), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.add(Complex.of_real(48.0), Complex.mul(Complex.of_real(49.0), Complex.I())))
  requires (forall m: nat :: (Complex.sum(IccN(((4 * m) + 1), ((4 * m) + 4)), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I()))))  // ambient have h_grouped_blocks
  requires (Complex.sum(IccN(((4 * m) + 1), ((4 * m) + 4)), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I())))  // ambient have h_sum_group
  requires (forall k: nat :: (Complex.pow(Complex.I(), (k % 4)) == Complex.pow(Complex.I(), k)))  // ambient have h_sum_periodicity
  ensures (Complex.sum(IccN(1, (4 * m)), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real((m as real))), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real((m as real))), Complex.I())))
  decreases m
{
  if m == 0 {
    if ((Complex.sum(IccN(((4 * 0) + 1), ((4 * 0) + 4)), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I())))) {  // sub-goal before `simp_all` (Lean state)
      // [TACTIC: simpAll [ Finset.sum_Icc_succ_top , Nat.mul_succ , Complex.ext_iff , pow_add , pow_mul , pow_two , pow_three ]]
      // UNCITED Finset.sum_Icc_succ_top: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
      // UNCITED Nat.mul_succ: no Lean instance recorded (arguments unknown), not guessed
      // UNCITED Complex.ext_iff: no Lean instance recorded (arguments unknown), not guessed
      // UNCITED pow_add: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
      // UNCITED pow_mul: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
      // UNCITED pow_two: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
      // UNCITED pow_three: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
      // UNCITED-APPLIED Finset.sum_congr: recorded instance not expressible here (sort/type/scope), not guessed
      assert (Complex.sum(IccN(1, (4 * 0)), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real(0.0)), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real(0.0)), Complex.I())));  // sub-goal before `simp_all` (Lean state) // @tac 2031-2134
      // UNCITED-APPLIED internal ×18 [exec 354 2031-2134]: applications made inside the tactic's own automation, not stated — Finset.sum_congr ×1, Finset.Icc_eq_empty_of_lt ×1, CharP.cast_eq_zero ×1, sub_self ×1; machinery/glue: Eq.trans ×5, congrArg ×5, congr ×2, of_eq_true ×1 (+1 more heads, ×1)
    }
    // [TACTIC: ring_nf]  NOT RUN on this case's goal: Lean ran it only on the other induction case
    // [TACTIC: norm_num]  NOT RUN on this case's goal: Lean ran it only on the other induction case
    // [TACTIC: simpAll [ Complex.ext_iff ]]
    // NOT RUN in Lean (no execution recorded): no lemma instances
    // [TACTIC: «Norm_num[_]At___»]
    // [TACTIC: «Linarith[_]At___»]
    // NOT RUN in Lean (no execution recorded): no lemma instances
  } else {
    if ((Complex.sum(IccN(((4 * tsub(m, 1)) + 1), ((4 * tsub(m, 1)) + 4)), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I())))) { induction_helper_1(n, m - 1); }  // IH under its hypotheses
    forall n_1: nat | (((Complex.sum(IccN(((4 * n_1) + 1), ((4 * n_1) + 4)), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I()))) ==> (Complex.sum(IccN(1, (4 * n_1)), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real((n_1 as real))), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real((n_1 as real))), Complex.I()))))) && ((Complex.sum(IccN(((4 * (n_1 + 1)) + 1), ((4 * (n_1 + 1)) + 4)), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I()))))
      ensures (Complex.sum(IccN(1, (4 * (n_1 + 1))), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real(((n_1 + 1) as real))), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real(((n_1 + 1) as real))), Complex.I())))  // sub-goal before `simp_all` (Lean state) // @tac 2031-2134
    {
      // [TACTIC: simpAll [ Finset.sum_Icc_succ_top , Nat.mul_succ , Complex.ext_iff , pow_add , pow_mul , pow_two , pow_three ]]
      // UNCITED Finset.sum_Icc_succ_top: 3 more recorded instances ((4 : ℕ) * m + (1 : ℕ), (4 : ℕ) * m + (3 : ℕ), fun (k : ℕ) => ↑k * Complex.I ^ k); ((4 : ℕ) * m + (1 : ℕ), (4 : ℕ) * m + (2 : ℕ), fun (k : ℕ) => ↑k * Complex.I ^ k); ((4 : ℕ) * m + (1 : ℕ), (4 : ℕ) * m + (1 : ℕ), fun (k : ℕ) => ↑k * Complex.I ^ k) not expressible here (sort/type/scope), not guessed
      // UNCITED Nat.mul_succ: no Lean instance recorded (arguments unknown), not guessed
      // UNCITED Complex.ext_iff: no Lean instance recorded (arguments unknown), not guessed
      ComplexPowAdd(Complex.I(), (4 * n_1), 1);  // cite: pow_add
      ComplexPowAdd(Complex.I(), ((4 * n_1) + 1), 1);  // cite: pow_add
      ComplexPowAdd(Complex.I(), ((4 * n_1) + 2), 1);  // cite: pow_add
      ComplexPowAdd(Complex.I(), (4 * n_1), 2);  // cite: pow_add
      ComplexPowAdd(Complex.I(), ((4 * n_1) + 3), 1);  // cite: pow_add
      ComplexPowAdd(Complex.I(), (4 * n_1), 3);  // cite: pow_add
      // UNCITED pow_add: 6 more recorded instances (Complex.I, (4 : ℕ) * m, (1 : ℕ)); (Complex.I, (4 : ℕ) * m + (1 : ℕ), (1 : ℕ)); (Complex.I, (4 : ℕ) * m + (2 : ℕ), (1 : ℕ)); (Complex.I, (4 : ℕ) * m, (2 : ℕ)) not expressible here (sort/type/scope), not guessed
      ComplexPowMul(Complex.I(), 4, n_1);  // cite: pow_mul
      // UNCITED pow_mul: 1 more recorded instance (Complex.I, (4 : ℕ), m) not expressible here (sort/type/scope), not guessed
      ComplexPowTwo(Complex.I());  // cite: pow_two
      ComplexPowThree(Complex.I());  // cite: pow_three
      // SORT_GAP: Nat.cast_add is used at carrier complex; library NatCastAdd/NatCastAddInt/NatCastAddRat is not over complex (no faithful counterpart, not cited)
      // UNCITED-APPLIED Nat.cast_mul: cast target unknown (Lean applies it at ℂ and ℤ in this proof; the record does not say which)
      // UNCITED-APPLIED Nat.cast_one: cast target unknown (Lean applies it at ℂ and ℝ in this proof; the record does not say which)
      // SORT_GAP: one_pow is used at carrier complex; library OnePowReal/OnePowInt/OnePowNat is not over complex (no faithful counterpart, not cited)
      ComplexPowOne(Complex.I());  // cite: pow_one [applied by the tactic, not named in it]
      // UNCITED-APPLIED mul_neg ×7: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (4 : ℂ) * ↑n✝ + (1 : ℂ) + (1 : ℂ), b := (1 : ℂ)); (a := (1 : ℂ), b := (1 : ℂ)); (a := (4 : ℂ) * ↑n✝ + (2 : ℂ) + (1 : ℂ), b := Complex.I); (a := Complex.I, b := (1 : ℂ)); (a := (1 : ℂ), b := Complex.I); (a := (4 : ℂ) * ↑m + (1 : ℂ) + (1 : ℂ), b := (1 : ℂ)) …
      // UNCITED-APPLIED mul_one ×14: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (4 : ℂ) * ↑n✝ + (1 : ℂ) + (1 : ℂ)); (a := (1 : ℂ)); (a := Complex.I); (a := (4 : ℂ) * ↑n✝ + (3 : ℂ) + (1 : ℂ)); (a := (0 : ℝ)); (a := (4 : ℂ) * ↑m + (1 : ℂ) + (1 : ℂ)) …
      if (forall x_0 :: x_0 in (IccN(1, (4 * n_1))) ==> (((i: nat) => Complex.Re(Complex.mul(Complex.of_real((i as real)), Complex.pow(Complex.I(), i)))))(x_0) == (((x: nat) => ((x as real) * Complex.Re(Complex.pow(Complex.I(), x)))))(x_0)) { FinsetSumApply(IccN(1, (4 * n_1)), ((i: nat) => Complex.Re(Complex.mul(Complex.of_real((i as real)), Complex.pow(Complex.I(), i)))), ((x: nat) => ((x as real) * Complex.Re(Complex.pow(Complex.I(), x))))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
      if (forall x_0 :: x_0 in (IccN(1, (4 * n_1))) ==> (((i: nat) => Complex.Im(Complex.mul(Complex.of_real((i as real)), Complex.pow(Complex.I(), i)))))(x_0) == (((x: nat) => ((x as real) * Complex.Im(Complex.pow(Complex.I(), x)))))(x_0)) { FinsetSumApply(IccN(1, (4 * n_1)), ((i: nat) => Complex.Im(Complex.mul(Complex.of_real((i as real)), Complex.pow(Complex.I(), i)))), ((x: nat) => ((x as real) * Complex.Im(Complex.pow(Complex.I(), x))))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
      // UNCITED-APPLIED Finset.sum_congr: 2 more recorded instances (Finset.Icc ((4 : ℕ) * n✝ + (1 : ℕ)) ((4 : ℕ) * n✝ + (1 : ℕ)), {(4 : ℕ) * n✝ + (1 : ℕ)}, fun (k : ℕ) => ↑k * Complex.I ^ k, fun (x : ℕ) => ↑x * Complex.I ^ x); (Finset.Icc ((4 : ℕ) * m + (1 : ℕ)) ((4 : ℕ) * m + (1 : ℕ)), {(4 : ℕ) * m + (1 : ℕ)}, fun (k : ℕ) => ↑k * Complex.I ^ k, fun (x : ℕ) => ↑x * Complex.I ^ x) not expressible here (sort/type/scope), not guessed
      FinsetIccSelfNat(((4 * n_1) + 1));  // cite: Finset.Icc_self [applied by the tactic, not named in it]
      // UNCITED-APPLIED Finset.Icc_self: 1 more recorded instance ((4 : ℕ) * m + (1 : ℕ)) not expressible here (sort/type/scope), not guessed
      // UNCITED-APPLIED Finset.sum_singleton: recorded instance not expressible here (sort/type/scope), not guessed
      // UNCITED-APPLIED zero_add ×2: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (-1 : ℝ) + ((-1 : ℝ) + -((4 : ℝ) * ↑n✝))); (a := (-1 : ℝ) + ((-1 : ℝ) + -((4 : ℝ) * ↑m)))
      assert ((((4 * n_1) + 1)) <= (((4 * n_1) + 1)) + 1);  // precondition of ComplexSumIccSuccTop (Lean: Finset.sum_Icc_succ_top)
      ComplexSumIccSuccTop(((4 * n_1) + 1), ((4 * n_1) + 1), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k))));  // cite: Finset.sum_Icc_succ_top
      assert ((((4 * n_1) + 1)) <= (((4 * n_1) + 2)) + 1);  // precondition of ComplexSumIccSuccTop (Lean: Finset.sum_Icc_succ_top)
      ComplexSumIccSuccTop(((4 * n_1) + 1), ((4 * n_1) + 2), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k))));  // cite: Finset.sum_Icc_succ_top
      assert ((((4 * n_1) + 1)) <= (((4 * n_1) + 3)) + 1);  // precondition of ComplexSumIccSuccTop (Lean: Finset.sum_Icc_succ_top)
      ComplexSumIccSuccTop(((4 * n_1) + 1), ((4 * n_1) + 3), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k))));  // cite: Finset.sum_Icc_succ_top
      assert ((1) <= ((4 * n_1)) + 1);  // precondition of ComplexSumIccSuccTop (Lean: Finset.sum_Icc_succ_top)
      ComplexSumIccSuccTop(1, (4 * n_1), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k))));  // cite: Finset.sum_Icc_succ_top
      assert ((1) <= (((4 * n_1) + 1)) + 1);  // precondition of ComplexSumIccSuccTop (Lean: Finset.sum_Icc_succ_top)
      ComplexSumIccSuccTop(1, ((4 * n_1) + 1), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k))));  // cite: Finset.sum_Icc_succ_top
      assert ((1) <= (((4 * n_1) + 2)) + 1);  // precondition of ComplexSumIccSuccTop (Lean: Finset.sum_Icc_succ_top)
      ComplexSumIccSuccTop(1, ((4 * n_1) + 2), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k))));  // cite: Finset.sum_Icc_succ_top
      assert ((1) <= (((4 * n_1) + 3)) + 1);  // precondition of ComplexSumIccSuccTop (Lean: Finset.sum_Icc_succ_top)
      ComplexSumIccSuccTop(1, ((4 * n_1) + 3), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k))));  // cite: Finset.sum_Icc_succ_top
      // GAP: Finset.sum_Icc_succ_top: this execution also rewrote the hypotheses h_grouped_blocks, h_sum_periodicity, a_1, h_sum_group; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
      // GAP: pow_add: this execution also rewrote the hypotheses h_grouped_blocks, h_sum_periodicity, a_1, h_sum_group; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
      // GAP: pow_mul: this execution also rewrote the hypotheses h_grouped_blocks, h_sum_periodicity, a_1, h_sum_group; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
      // GAP: pow_two: this execution also rewrote the hypotheses h_grouped_blocks, h_sum_periodicity, a_1, h_sum_group; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
      // GAP: pow_three: this execution also rewrote the hypotheses h_grouped_blocks, h_sum_periodicity, a_1, h_sum_group; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
      // UNCITED-APPLIED internal ×148 [exec 357 2031-2134]: applications made inside the tactic's own automation, not stated — Nat.cast_add ×31, mul_one ×26, mul_neg ×13, neg_add_rev ×8, sub_zero ×7, add_zero ×7, Nat.cast_mul ×5, one_pow ×5, Finset.sum_singleton ×5, zero_add ×5, zero_sub ×3, neg_mul ×2, Nat.cast_one ×1, one_mul ×1, neg_neg ×1, Complex.re_sum ×1, implies_congr_ctx ×1, sub_self ×1, neg_zero ×1, and_self ×1, Complex.im_sum ×1, true_implies ×1; machinery/glue: congr ×7, congrArg ×7, Eq.trans ×3, eq_self ×2 (+2 more heads, ×2) (cited in this block, not counted here: Finset.Icc_self [Lean recorded ×5], Finset.sum_Icc_succ_top [Lean recorded ×19], Finset.sum_congr [Lean recorded ×7], pow_add [Lean recorded ×30], pow_mul [Lean recorded ×5], pow_one [Lean recorded ×1], pow_three [Lean recorded ×1], pow_two [Lean recorded ×1])
      assert ((Real.sum(IccN(1, n), ((x: nat) => ((x as real) * Complex.Re(Complex.pow(Complex.I(), x))))) == 48.0) && (Real.sum(IccN(1, n), ((x: nat) => ((x as real) * Complex.Im(Complex.pow(Complex.I(), x))))) == 49.0));  // hypothesis h₁ after `simp_all` (Lean state) // @tac-hyp 2031-2134
      assert (forall m: nat :: ((((-(1.0) + (-(1.0) + -((4.0 * (m as real))))) + (((4.0 * (m as real)) + 3.0) + 1.0)) == 2.0) && ((((4.0 * (m as real)) + 1.0) + (-(1.0) + (-(2.0) + -((4.0 * (m as real)))))) == -(2.0))));  // hypothesis h_grouped_blocks after `simp_all` (Lean state) // @tac-hyp 2031-2134
      assert (forall k: nat :: ((Complex.Re(Complex.pow(Complex.I(), (k % 4))) == Complex.Re(Complex.pow(Complex.I(), k))) && (Complex.Im(Complex.pow(Complex.I(), (k % 4))) == Complex.Im(Complex.pow(Complex.I(), k)))));  // hypothesis h_sum_periodicity after `simp_all` (Lean state) // @tac-hyp 2031-2134
      assert ((Real.sum(IccN(1, (4 * n_1)), ((x: nat) => ((x as real) * Complex.Re(Complex.pow(Complex.I(), x))))) == (2.0 * (n_1 as real))) && (Real.sum(IccN(1, (4 * n_1)), ((x: nat) => ((x as real) * Complex.Im(Complex.pow(Complex.I(), x))))) == -((2.0 * (n_1 as real)))));  // hypothesis a_1 after `simp_all` (Lean state) // @tac-hyp 2031-2134
      assert ((((-(((((4.0 * (n_1 as real)) + 5.0) + 1.0) * Complex.Im(Complex.pow(Complex.I(), 5)))) + -(((((4.0 * (n_1 as real)) + 6.0) + 1.0) * Complex.Im(Complex.pow(Complex.I(), 6))))) + -(((((4.0 * (n_1 as real)) + 7.0) + 1.0) * Complex.Im(Complex.pow(Complex.I(), 7))))) == 2.0) && (((((((4.0 * (n_1 as real)) + 4.0) + 1.0) + ((((4.0 * (n_1 as real)) + 5.0) + 1.0) * Complex.Re(Complex.pow(Complex.I(), 5)))) + ((((4.0 * (n_1 as real)) + 6.0) + 1.0) * Complex.Re(Complex.pow(Complex.I(), 6)))) + ((((4.0 * (n_1 as real)) + 7.0) + 1.0) * Complex.Re(Complex.pow(Complex.I(), 7)))) == -(2.0)));  // hypothesis h_sum_group after `simp_all` (Lean state) // @tac-hyp 2031-2134
      assert (((((2.0 * (n_1 as real)) + (-(1.0) + (-(1.0) + -((4.0 * (n_1 as real)))))) + (((4.0 * (n_1 as real)) + 3.0) + 1.0)) == (2.0 * ((n_1 as real) + 1.0))) && (((-((2.0 * (n_1 as real))) + ((4.0 * (n_1 as real)) + 1.0)) + (-(1.0) + (-(2.0) + -((4.0 * (n_1 as real)))))) == -((2.0 * ((n_1 as real) + 1.0))))) by {  // sub-goal before `ring_nf` (Lean state) // @tac 2143-2155
        // [TACTIC: Ring_nfAt at *]
        // UNCITED-APPLIED Nat.cast_one: cast target unknown (Lean applies it at ℂ and ℝ in this proof; the record does not say which)
        PowOne((n_1 as real));  // cite: pow_one [applied by the tactic, not named in it]
        // UNCITED-APPLIED internal ×133 [exec 366 2143-2155]: applications made inside the tactic's own automation, not stated — add_zero ×2, Nat.cast_one ×1; machinery/glue: congrArg ×8, Mathlib.Tactic.Ring.add_congr ×8, Eq.trans ×7, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×7 (+35 more heads, ×100) (cited in this block, not counted here: pow_one [Lean recorded ×1])
        assert (((((-((((n_1 as real) * Complex.Im(Complex.pow(Complex.I(), 5))) * 4.0)) - (((n_1 as real) * Complex.Im(Complex.pow(Complex.I(), 6))) * 4.0)) + (-((((n_1 as real) * Complex.Im(Complex.pow(Complex.I(), 7))) * 4.0)) - (Complex.Im(Complex.pow(Complex.I(), 5)) * 6.0))) + (-((Complex.Im(Complex.pow(Complex.I(), 6)) * 7.0)) - (Complex.Im(Complex.pow(Complex.I(), 7)) * 8.0))) == 2.0) && ((((((((5.0 + ((n_1 as real) * 4.0)) + (((n_1 as real) * Complex.Re(Complex.pow(Complex.I(), 5))) * 4.0)) + (((n_1 as real) * Complex.Re(Complex.pow(Complex.I(), 6))) * 4.0)) + (((n_1 as real) * Complex.Re(Complex.pow(Complex.I(), 7))) * 4.0)) + (Complex.Re(Complex.pow(Complex.I(), 5)) * 6.0)) + (Complex.Re(Complex.pow(Complex.I(), 6)) * 7.0)) + (Complex.Re(Complex.pow(Complex.I(), 7)) * 8.0)) == -(2.0)));  // hypothesis h_sum_group after `ring_nf` (Lean state) // @tac-hyp 2143-2155
        assert ((Real.sum(IccN(1, (n_1 * 4)), ((x: nat) => ((x as real) * Complex.Re(Complex.pow(Complex.I(), x))))) == ((n_1 as real) * 2.0)) && (Real.sum(IccN(1, (n_1 * 4)), ((x: nat) => ((x as real) * Complex.Im(Complex.pow(Complex.I(), x))))) == -(((n_1 as real) * 2.0))));  // hypothesis a_1 after `ring_nf` (Lean state) // @tac-hyp 2143-2155
        assert (true && true) by {  // sub-goal before `norm_num` (Lean state) // @tac 2160-2168
          // [TACTIC: «Norm_num[_]At___»]
          // UNCITED-APPLIED internal ×6 [exec 375 2160-2168]: applications made inside the tactic's own automation, not stated — and_self ×1; machinery/glue: of_eq_true ×1, Eq.trans ×1, congr ×1, congrArg ×1 (+1 more heads, ×1)
        }
      }
    }
    // [TACTIC: simpAll [ Complex.ext_iff ]]
    // NOT RUN in Lean (no execution recorded): no lemma instances
    // [TACTIC: «Norm_num[_]At___»]
    // [TACTIC: «Linarith[_]At___»]
    // NOT RUN in Lean (no execution recorded): no lemma instances
  }
}

// ──────────────────────────────────────────────────
// certificate identity for `h_contradiction_multiple_of_4`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_1(n: nat, m: nat)
  ensures ((-((97.0 * 1.0)) + -((((m as real) * 2.0) - 48.0))) + -((-(((m as real) * 2.0)) - 49.0))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h_form_n_plus_1/h₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_2(n: nat, m: nat)
  ensures ((-((50.0 * 1.0)) + -((2.0 * (m as real)))) + -((((2.0 * (m as real)) + (-(1.0) + (-(1.0) + -((4.0 * (m as real)))))) - 48.0))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h_form_n_plus_1/h₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_3(n: nat, m: nat)
  ensures ((-((50.0 * 1.0)) + -((2.0 * (m as real)))) + -((((2.0 * (m as real)) + (-(1.0) + (-(1.0) + -((4.0 * (m as real)))))) - 48.0))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h_solve_n_plus_1`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_4(n: int, m: int)
  ensures ((-(1) + -((2 * (((m as int) * 2) - 48)))) + ((((m as int) * 4) + 1) - 96)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h_solve_n_plus_1`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_5(n: int, m: int)
  ensures ((-(1) + (2 * (((m as int) * 2) - 48))) + ((96 + 1) - ((m as int) * 4))) == 0
{ }

// statement: Lean elaborated type (v3, stmt_cache) — requires/ensures below
lemma amc12a_2009_p15(n: nat)
  requires (0 < n)
  requires (Complex.sum(IccN(1, n), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.add(Complex.of_real(48.0), Complex.mul(Complex.of_real(49.0), Complex.I())))
  ensures (n == 97) // @tac 498-804 // @tac 810-1756 // @tac 1762-2229 // @tac 2235-2797 // @tac 2803-3246 // @tac 3252-4443 // @tac 4446-5094 // @tac 5097-5416 // @tac 5419-5457
{
  // have h_periodicity : forall k : ℕ :: Complex.I ^ ( k % 4 ) == Complex.I ^ k  [type from Lean state]
  forall k: nat // @tac 578-585
    ensures (Complex.pow(Complex.I(), (k % 4)) == Complex.pow(Complex.I(), k)) // @tac 590-788 // @tac 793-804
  {
    // [TACTIC: intro k]
    // have h₂ : forall n : ℕ :: Complex.I ^ n == Complex.I ^ ( n % 4 )  [type from Lean state]
    forall n: nat // @tac 663-670
      ensures (Complex.pow(Complex.I(), n) == Complex.pow(Complex.I(), (n % 4))) // @tac 677-705
    {
      // [TACTIC: intro n]
      // [TACTIC: rwSeq [ ← Nat.mod_add_div n 4 ]]
      // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
      assert ((4) > 0);  // precondition of NatModAddDiv (Lean: Nat.mod_add_div)
      NatModAddDiv(n, 4);  // cite: Nat.mod_add_div
      // UNCITED-APPLIED congrArg(n, n % (4 : ℕ) + (4 : ℕ) * (n / (4 : ℕ)), fun (_a : ℕ) => Complex.I ^ _a = Complex.I ^ (_a % (4 : ℕ))): no library counterpart (not stated) [exec 42 677-705]
      assert (Complex.pow(Complex.I(), ((n % 4) + (4 * (n / 4)))) == Complex.pow(Complex.I(), (((n % 4) + (4 * (n / 4))) % 4))) by {  // sub-goal before `simp` (Lean state) // @tac 712-788
        // [TACTIC: simp [ pow_add , pow_mul , Complex.I_mul_I , mul_assoc , mul_comm , mul_left_comm ]]
        ComplexPowAdd(Complex.I(), (n % 4), (4 * (n / 4)));  // cite: pow_add
        ComplexPowMul(Complex.I(), 4, (n / 4));  // cite: pow_mul
        // UNCITED Complex.I_mul_I: named here; a constant without arguments, which the harvest never records (it records applications only), so whether Lean's proof at this execution uses it is unknown: not cited
        // UNCITED mul_assoc: no Lean instance recorded (arguments unknown), not guessed
        // UNCITED mul_comm: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances here: (a := Complex.I ^ (n % (4 : ℕ)), b := (1 : ℂ))
        // UNCITED mul_left_comm: no Lean instance recorded (arguments unknown), not guessed
        // SORT_GAP: one_pow is used at carrier complex; library OnePowReal/OnePowInt/OnePowNat is not over complex (no faithful counterpart, not cited)
        // UNCITED-APPLIED internal ×19 [exec 69 712-788]: applications made inside the tactic's own automation, not stated — one_pow ×1, mul_comm ×1, one_mul ×1, Nat.add_mul_mod_self_left ×1, Nat.mod_mod_of_dvd ×1; machinery/glue: Eq.trans ×7, congrArg ×4, of_eq_true ×1, congr ×1 (+1 more heads, ×1) (cited in this block, not counted here: pow_add [Lean recorded ×1], pow_mul [Lean recorded ×1])
      }
    }
    // [TACTIC: rwSeq [ h₂ k ]]
    assert (Complex.pow(Complex.I(), k) == Complex.pow(Complex.I(), (k % 4)));  // instance of h₂ (Lean state)
    // UNCITED-APPLIED congrArg(Complex.I ^ k, Complex.I ^ (k % (4 : ℕ)), fun (_a : ℂ) => Complex.I ^ (k % (4 : ℕ)) = _a): no library counterpart (not stated) [exec 74 793-804]
  }
  // have h_grouped_blocks : ∀ (m : ℕ), ∑ k ∈ Finset.Icc ((4 : ℕ) * m + (1 : ℕ)) ((4 : ℕ) * m + (4 : ℕ)), ↑k * Complex.I ^ k = (2 : ℂ) - (2  [type from Lean state]
  forall m: nat // @tac 943-950
    ensures (Complex.sum(IccN(((4 * m) + 1), ((4 * m) + 4)), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I()))) // @tac 955-1756 // @tac 955-1739 // @tac 955-1723 // @tac 955-1594 // @tac 955-1577 // @tac 955-1561 // @tac 955-1432 // @tac 955-1415 // @tac 955-1399 // @tac 955-1270 // @tac 955-1253 // @tac 955-1237 // @tac 955-1108 // @tac 955-1091 // @tac 955-1075
  {
    // [TACTIC: intro m]
    // [TACTIC: «_<;>_» [ Finset.sum_Icc_succ_top , Nat.mul_succ , Complex.ext_iff , pow_add , pow_mul , pow_two , pow_three , Complex.I_mul_I ] simp_all [ Finset.sum_Icc_succ_top , Nat.mul_succ , Complex.ext_iff , pow_add , pow_mul , pow_two , pow_three , Complex.I_mul_I ] simp_all [ Finset.sum_Icc_succ_top , Nat.mul_succ , Complex.ext_iff , pow_add , pow_mul , pow_two , pow_three , Complex.I_mul_I ] <;> ring_nf ring_nf <;> norm_num norm_num <;> simp_all [ Finset.sum_Icc_succ_top , Nat.mul_succ , Complex.ext_iff , pow_add , pow_mul , pow_two , pow_three , Complex.I_mul_I ] simp_all [ Finset.sum_Icc_succ_top , Nat.mul_succ , Complex.ext_iff , pow_add , pow_mul , pow_two , pow_three , Complex.I_mul_I ] simp_all [ Finset.sum_Icc_succ_top , Nat.mul_succ , Complex.ext_iff , pow_add , pow_mul , pow_two , pow_three , Complex.I_mul_I ] <;> ring_nf ring_nf <;> norm_num norm_num <;> simp_all [ Finset.sum_Icc_succ_top , Nat.mul_succ , Complex.ext_iff , pow_add , pow_mul , pow_two , pow_three , Complex.I_mul_I ] simp_all [ Finset.sum_Icc_succ_top , Nat.mul_succ , Complex.ext_iff , pow_add , pow_mul , pow_two , pow_three , Complex.I_mul_I ] simp_all [ Finset.sum_Icc_succ_top , Nat.mul_succ , Complex.ext_iff , pow_add , pow_mul , pow_two , pow_three , Complex.I_mul_I ] <;> ring_nf ring_nf <;> norm_num norm_num <;> simp_all [ Finset.sum_Icc_succ_top , Nat.mul_succ , Complex.ext_iff , pow_add , pow_mul , pow_two , pow_three , Complex.I_mul_I ] simp_all [ Finset.sum_Icc_succ_top , Nat.mul_succ , Complex.ext_iff , pow_add , pow_mul , pow_two , pow_three , Complex.I_mul_I ] simp_all [ Finset.sum_Icc_succ_top , Nat.mul_succ , Complex.ext_iff , pow_add , pow_mul , pow_two , pow_three , Complex.I_mul_I ] <;> ring_nf ring_nf <;> norm_num norm_num <;> simp_all [ Finset.sum_Icc_succ_top , Nat.mul_succ , Complex.ext_iff , pow_add , pow_mul , pow_two , pow_three , Complex.I_mul_I ] simp_all [ Finset.sum_Icc_succ_top , Nat.mul_succ , Complex.ext_iff , pow_add , pow_mul , pow_two , pow_three , Complex.I_mul_I ] simp_all [ Finset.sum_Icc_succ_top , Nat.mul_succ , Complex.ext_iff , pow_add , pow_mul , pow_two , pow_three , Complex.I_mul_I ] <;> ring_nf ring_nf <;> norm_num norm_num]
    // [TACTIC: choice [ Finset.sum_Icc_succ_top , Nat.mul_succ , Complex.ext_iff , pow_add , pow_mul , pow_two , pow_three , Complex.I_mul_I ] simp_all [ Finset.sum_Icc_succ_top , Nat.mul_succ , Complex.ext_iff , pow_add , pow_mul , pow_two , pow_three , Complex.I_mul_I ] simp_all [ Finset.sum_Icc_succ_top , Nat.mul_succ , Complex.ext_iff , pow_add , pow_mul , pow_two , pow_three , Complex.I_mul_I ]]
    // UNCITED Nat.mul_succ: no Lean instance recorded (arguments unknown), not guessed
    // UNCITED Complex.ext_iff: no Lean instance recorded (arguments unknown), not guessed
    ComplexPowAdd(Complex.I(), (4 * m), 1);  // cite: pow_add
    ComplexPowAdd(Complex.I(), ((4 * m) + 1), 1);  // cite: pow_add
    ComplexPowAdd(Complex.I(), ((4 * m) + 2), 1);  // cite: pow_add
    ComplexPowAdd(Complex.I(), (4 * m), 2);  // cite: pow_add
    ComplexPowAdd(Complex.I(), ((4 * m) + 3), 1);  // cite: pow_add
    ComplexPowAdd(Complex.I(), (4 * m), 3);  // cite: pow_add
    ComplexPowMul(Complex.I(), 4, m);  // cite: pow_mul
    ComplexPowTwo(Complex.I());  // cite: pow_two
    ComplexPowThree(Complex.I());  // cite: pow_three
    // UNCITED Complex.I_mul_I: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
    // UNCITED-APPLIED Finset.sum_congr: recorded instance not expressible here (sort/type/scope), not guessed
    FinsetIccSelfNat(((4 * m) + 1));  // cite: Finset.Icc_self [applied by the tactic, not named in it]
    // UNCITED-APPLIED Finset.sum_singleton: recorded instance not expressible here (sort/type/scope), not guessed
    // SORT_GAP: Nat.cast_add is used at carrier complex; library NatCastAdd/NatCastAddInt/NatCastAddRat is not over complex (no faithful counterpart, not cited)
    // UNCITED-APPLIED Nat.cast_mul: cast target unknown (Lean applies it at ℂ and ℤ in this proof; the record does not say which)
    // UNCITED-APPLIED Nat.cast_one: cast target unknown (Lean applies it at ℂ and ℝ in this proof; the record does not say which)
    // SORT_GAP: one_pow is used at carrier complex; library OnePowReal/OnePowInt/OnePowNat is not over complex (no faithful counterpart, not cited)
    ComplexPowOne(Complex.I());  // cite: pow_one [applied by the tactic, not named in it]
    // UNCITED-APPLIED mul_neg ×5: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (4 : ℂ) * ↑m + (1 : ℂ) + (1 : ℂ), b := (1 : ℂ)); (a := (1 : ℂ), b := (1 : ℂ)); (a := (4 : ℂ) * ↑m + (2 : ℂ) + (1 : ℂ), b := Complex.I); (a := Complex.I, b := (1 : ℂ)); (a := (1 : ℂ), b := Complex.I)
    // UNCITED-APPLIED mul_one ×8: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (4 : ℂ) * ↑m + (1 : ℂ) + (1 : ℂ)); (a := (1 : ℂ)); (a := Complex.I); (a := (4 : ℂ) * ↑m + (3 : ℂ) + (1 : ℂ)); (a := (0 : ℝ)); (a := (4 : ℝ) * ↑m + (1 : ℝ)) …
    // UNCITED-APPLIED zero_add ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (-1 : ℝ) + ((-1 : ℝ) + -((4 : ℝ) * ↑m)))
    assert ((((4 * m) + 1)) <= (((4 * m) + 1)) + 1);  // precondition of ComplexSumIccSuccTop (Lean: Finset.sum_Icc_succ_top)
    ComplexSumIccSuccTop(((4 * m) + 1), ((4 * m) + 1), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k))));  // cite: Finset.sum_Icc_succ_top
    assert ((((4 * m) + 1)) <= (((4 * m) + 2)) + 1);  // precondition of ComplexSumIccSuccTop (Lean: Finset.sum_Icc_succ_top)
    ComplexSumIccSuccTop(((4 * m) + 1), ((4 * m) + 2), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k))));  // cite: Finset.sum_Icc_succ_top
    assert ((((4 * m) + 1)) <= (((4 * m) + 3)) + 1);  // precondition of ComplexSumIccSuccTop (Lean: Finset.sum_Icc_succ_top)
    ComplexSumIccSuccTop(((4 * m) + 1), ((4 * m) + 3), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k))));  // cite: Finset.sum_Icc_succ_top
    // GAP: Finset.sum_Icc_succ_top: this execution also rewrote the hypotheses h_periodicity; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
    // GAP: pow_add: this execution also rewrote the hypotheses h_periodicity; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
    // GAP: pow_mul: this execution also rewrote the hypotheses h_periodicity; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
    // GAP: pow_two: this execution also rewrote the hypotheses h_periodicity; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
    // GAP: pow_three: this execution also rewrote the hypotheses h_periodicity; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
    // UNCITED-APPLIED internal ×64 [exec 182 955-1075]: applications made inside the tactic's own automation, not stated — mul_one ×8, Nat.cast_add ×6, add_zero ×6, mul_neg ×5, neg_add_rev ×4, neg_mul ×2, sub_zero ×2, Finset.sum_congr ×1, Finset.sum_singleton ×1, Nat.cast_mul ×1, Nat.cast_one ×1, one_pow ×1, one_mul ×1, neg_neg ×1, sub_self ×1, zero_add ×1, neg_zero ×1, zero_sub ×1; machinery/glue: congrArg ×8, congr ×8, Eq.trans ×3, of_eq_true ×1 (cited in this block, not counted here: Finset.Icc_self [Lean recorded ×1], Finset.sum_Icc_succ_top [Lean recorded ×3], pow_add [Lean recorded ×6], pow_mul [Lean recorded ×1], pow_one [Lean recorded ×1], pow_three [Lean recorded ×1], pow_two [Lean recorded ×1])
    assert ((Real.sum(IccN(1, n), ((x: nat) => ((x as real) * Complex.Re(Complex.pow(Complex.I(), x))))) == 48.0) && (Real.sum(IccN(1, n), ((x: nat) => ((x as real) * Complex.Im(Complex.pow(Complex.I(), x))))) == 49.0));  // hypothesis h₁ after `simp_all` (Lean state) // @tac-hyp 955-1075
    assert (forall k: nat :: ((Complex.Re(Complex.pow(Complex.I(), (k % 4))) == Complex.Re(Complex.pow(Complex.I(), k))) && (Complex.Im(Complex.pow(Complex.I(), (k % 4))) == Complex.Im(Complex.pow(Complex.I(), k)))));  // hypothesis h_periodicity after `simp_all` (Lean state) // @tac-hyp 955-1075
    assert ((((-(1.0) + (-(1.0) + -((4.0 * (m as real))))) + (((4.0 * (m as real)) + 3.0) + 1.0)) == 2.0) && ((((4.0 * (m as real)) + 1.0) + (-(1.0) + (-(2.0) + -((4.0 * (m as real)))))) == -(2.0))) by {  // sub-goal of `ring_nf` (Lean state) // @tac 1084-1091
      // UNCITED-APPLIED Nat.cast_one: cast target unknown (Lean applies it at ℂ and ℝ in this proof; the record does not say which)
      assert (true && true);  // sub-goal of `norm_num` (Lean state) // @tac 1100-1108
      // UNCITED-APPLIED internal ×98 [exec 191 1084-1091]: applications made inside the tactic's own automation, not stated — add_zero ×2, Nat.cast_one ×1; machinery/glue: Mathlib.Tactic.Ring.add_congr ×8, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×6, Mathlib.Meta.NormNum.isInt_add ×6, Mathlib.Tactic.Ring.add_pf_add_overlap ×5 (+33 more heads, ×70)
      // UNCITED-APPLIED internal ×6 [exec 200 1100-1108]: applications made inside the tactic's own automation, not stated — and_self ×1; machinery/glue: of_eq_true ×1, Eq.trans ×1, congr ×1, congrArg ×1 (+1 more heads, ×1)
    }
  }
  // have h_sum_multiple_of_4 : ∀ (m : ℕ), ∑ k ∈ Finset.Icc (1 : ℕ) ((4 : ℕ) * m), ↑k * Complex.I ^ k = (2 : ℂ) * ↑m - (2 : ℂ) * ↑m * Complex.  [type from Lean state]
  forall m: nat // @tac 1892-1899
    ensures (Complex.sum(IccN(1, (4 * m)), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real((m as real))), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real((m as real))), Complex.I()))) // @tac 1904-1942 // @tac 1947-1986 // @tac 1991-2010 // @tac 2015-2229 // @tac 2015-2216 // @tac 2015-2199 // @tac 2015-2168 // @tac 2015-2155 // @tac 2015-2134 // @tac 2015-2026
  {
    // [TACTIC: intro m]
    // have h_sum_group :   [type from Lean state]
    assert (Complex.sum(IccN(((4 * m) + 1), ((4 * m) + 4)), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I()))) by {
      // [TACTIC: exact h_grouped_blocks ( m )]
      assert (Complex.sum(IccN(((4 * m) + 1), ((4 * m) + 4)), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I())));  // instance of h_grouped_blocks (Lean state)
    }
    // have h_sum_periodicity :   [type from Lean state]
    forall k: nat
      ensures (Complex.pow(Complex.I(), (k % 4)) == Complex.pow(Complex.I(), k))
    {
      // [TACTIC: exact h_periodicity]
      assert (forall k: nat :: (Complex.pow(Complex.I(), (k % 4)) == Complex.pow(Complex.I(), k)));
    }
    // [TACTIC: clear h_periodicity]
    // induction m → recursive lemma induction_helper_1
    induction_helper_1(n, m);
  }
  // have h_contradiction_multiple_of_4 : ¬ ∃ m : ℕ , n = 4 * m  [type from Lean state]
  assert !(exists m: nat :: (n == (4 * m))) by { // @tac 2307-2314
    if (exists m: nat :: (n == (4 * m))) {
      // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
      // obtain ⟨m, rfl⟩ := h
      assert exists m: nat :: (n == (4 * m));
      var m: nat :| (n == (4 * m));
      if ((0 < (4 * m))) && ((Complex.sum(IccN(1, (4 * m)), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.add(Complex.of_real(48.0), Complex.mul(Complex.of_real(49.0), Complex.I())))) {  // sub-goal before `have` (Lean state)
        // have h₂ :   [type from Lean state]
        assert (Complex.sum(IccN(1, (4 * 0)), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real(0.0)), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real(0.0)), Complex.I()))) by {
          // [TACTIC: exact h_sum_multiple_of_4 ( 0 )]
          vc_amc12a_2009_p15_L282(m, n);  /* [IN-FILE CHECK] the closed lemma for line 282 */
          assert (Complex.sum(IccN(1, (4 * 0)), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real(0.0)), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real(0.0)), Complex.I())));  // instance of h_sum_multiple_of_4 (Lean state)
        }
        // have h₃ :   [type from Lean state]
        assert (Complex.sum(IccN(1, (4 * 1)), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real(1.0)), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real(1.0)), Complex.I()))) by {
          // [TACTIC: exact h_sum_multiple_of_4 ( 1 )]
          assert (Complex.sum(IccN(1, (4 * 1)), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real(1.0)), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real(1.0)), Complex.I())));  // instance of h_sum_multiple_of_4 (Lean state)
        }
        // have h₄ :   [type from Lean state]
        assert (Complex.sum(IccN(1, (4 * 2)), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real(2.0)), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real(2.0)), Complex.I()))) by {
          // [TACTIC: exact h_sum_multiple_of_4 ( 2 )]
          assert (Complex.sum(IccN(1, (4 * 2)), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real(2.0)), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real(2.0)), Complex.I())));  // instance of h_sum_multiple_of_4 (Lean state)
        }
        // have h₅ :   [type from Lean state]
        assert (Complex.sum(IccN(1, (4 * 3)), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real(3.0)), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real(3.0)), Complex.I()))) by {
          // [TACTIC: exact h_sum_multiple_of_4 ( 3 )]
          assert (Complex.sum(IccN(1, (4 * 3)), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real(3.0)), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real(3.0)), Complex.I())));  // instance of h_sum_multiple_of_4 (Lean state)
        }
        // have h₆ :   [type from Lean state]
        assert (Complex.sum(IccN(((4 * 0) + 1), ((4 * 0) + 4)), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I()))) by {
          // [TACTIC: exact h_grouped_blocks ( 0 )]
          assert (Complex.sum(IccN(((4 * 0) + 1), ((4 * 0) + 4)), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I())));  // instance of h_grouped_blocks (Lean state)
        }
        // have h₇ :   [type from Lean state]
        assert (Complex.sum(IccN(((4 * 1) + 1), ((4 * 1) + 4)), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I()))) by {
          // [TACTIC: exact h_grouped_blocks ( 1 )]
          assert (Complex.sum(IccN(((4 * 1) + 1), ((4 * 1) + 4)), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I())));  // instance of h_grouped_blocks (Lean state)
        }
        // have h₈ :   [type from Lean state]
        assert (Complex.sum(IccN(((4 * 2) + 1), ((4 * 2) + 4)), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I()))) by {
          // [TACTIC: exact h_grouped_blocks ( 2 )]
          assert (Complex.sum(IccN(((4 * 2) + 1), ((4 * 2) + 4)), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I())));  // instance of h_grouped_blocks (Lean state)
        }
        // have h₉ :   [type from Lean state]
        assert (Complex.sum(IccN(((4 * 3) + 1), ((4 * 3) + 4)), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I()))) by {
          // [TACTIC: exact h_grouped_blocks ( 3 )]
          assert (Complex.sum(IccN(((4 * 3) + 1), ((4 * 3) + 4)), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I())));  // instance of h_grouped_blocks (Lean state)
        }
        // [TACTIC: «_<;>_» [ Finset.sum_Icc_succ_top , Nat.mul_div_cancel_left ] simp_all [ Finset.sum_Icc_succ_top , Nat.mul_div_cancel_left ] simp_all [ Finset.sum_Icc_succ_top , Nat.mul_div_cancel_left ] <;> ring_nf at * <;> simp_all [ Complex.ext_iff ] simp_all [ Complex.ext_iff ] simp_all [ Complex.ext_iff ] <;> norm_num norm_num <;> linarith linarith]
        // [TACTIC: choice [ Finset.sum_Icc_succ_top , Nat.mul_div_cancel_left ] simp_all [ Finset.sum_Icc_succ_top , Nat.mul_div_cancel_left ] simp_all [ Finset.sum_Icc_succ_top , Nat.mul_div_cancel_left ]]
        // UNCITED Finset.sum_Icc_succ_top: named here, no record of its application here; the harvest has no application record for this execution at all (its proof term was not captured), so whether Lean applied it here is unknown: not stated
        // UNCITED Nat.mul_div_cancel_left: no Lean instance recorded (arguments unknown), not guessed
        assert (forall m: nat :: (Complex.add(Complex.add(Complex.add(Complex.mul(Complex.add(Complex.mul(Complex.of_real(4.0), Complex.of_real((m as real))), Complex.of_real(1.0)), Complex.pow(Complex.I(), ((4 * m) + 1))), Complex.mul(Complex.add(Complex.add(Complex.mul(Complex.of_real(4.0), Complex.of_real((m as real))), Complex.of_real(1.0)), Complex.of_real(1.0)), Complex.pow(Complex.I(), (((4 * m) + 1) + 1)))), Complex.mul(Complex.add(Complex.add(Complex.mul(Complex.of_real(4.0), Complex.of_real((m as real))), Complex.of_real(2.0)), Complex.of_real(1.0)), Complex.pow(Complex.I(), (((4 * m) + 2) + 1)))), Complex.mul(Complex.add(Complex.add(Complex.mul(Complex.of_real(4.0), Complex.of_real((m as real))), Complex.of_real(3.0)), Complex.of_real(1.0)), Complex.pow(Complex.I(), (((4 * m) + 3) + 1)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I()))));  // hypothesis h_grouped_blocks after `simp_all` (Lean state) // @tac-hyp 2648-2707
        assert (0 < m);  // hypothesis h₀ after `simp_all` (Lean state) // @tac-hyp 2648-2707
        assert (Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real((m as real))), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real((m as real))), Complex.I())) == Complex.add(Complex.of_real(48.0), Complex.mul(Complex.of_real(49.0), Complex.I())));  // hypothesis h₁ after `simp_all` (Lean state) // @tac-hyp 2648-2707
        assert (Complex.add(Complex.add(Complex.add(Complex.add(Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I())), Complex.mul(Complex.of_real(5.0), Complex.pow(Complex.I(), 5))), Complex.mul(Complex.of_real(6.0), Complex.pow(Complex.I(), 6))), Complex.mul(Complex.of_real(7.0), Complex.pow(Complex.I(), 7))), Complex.mul(Complex.of_real(8.0), Complex.pow(Complex.I(), 8))) == Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real(2.0)), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real(2.0)), Complex.I())));  // hypothesis h₄ after `simp_all` (Lean state) // @tac-hyp 2648-2707
        assert (Complex.add(Complex.add(Complex.add(Complex.add(Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real(2.0)), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real(2.0)), Complex.I())), Complex.mul(Complex.of_real(9.0), Complex.pow(Complex.I(), 9))), Complex.mul(Complex.of_real(10.0), Complex.pow(Complex.I(), 10))), Complex.mul(Complex.of_real(11.0), Complex.pow(Complex.I(), 11))), Complex.mul(Complex.of_real(12.0), Complex.pow(Complex.I(), 12))) == Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real(3.0)), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real(3.0)), Complex.I())));  // hypothesis h₅ after `simp_all` (Lean state) // @tac-hyp 2648-2707
        assert (Complex.add(Complex.add(Complex.add(Complex.I(), Complex.sub(Complex.of_real(0.0), Complex.of_real(2.0))), Complex.mul(Complex.of_real(3.0), Complex.pow(Complex.I(), 3))), Complex.of_real(4.0)) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I())));  // hypothesis h₆ after `simp_all` (Lean state) // @tac-hyp 2648-2707
        assert (Complex.add(Complex.add(Complex.add(Complex.mul(Complex.of_real(5.0), Complex.pow(Complex.I(), 5)), Complex.mul(Complex.of_real(6.0), Complex.pow(Complex.I(), 6))), Complex.mul(Complex.of_real(7.0), Complex.pow(Complex.I(), 7))), Complex.mul(Complex.of_real(8.0), Complex.pow(Complex.I(), 8))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I())));  // hypothesis h₇ after `simp_all` (Lean state) // @tac-hyp 2648-2707
        assert (Complex.add(Complex.add(Complex.add(Complex.mul(Complex.of_real(9.0), Complex.pow(Complex.I(), 9)), Complex.mul(Complex.of_real(10.0), Complex.pow(Complex.I(), 10))), Complex.mul(Complex.of_real(11.0), Complex.pow(Complex.I(), 11))), Complex.mul(Complex.of_real(12.0), Complex.pow(Complex.I(), 12))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I())));  // hypothesis h₈ after `simp_all` (Lean state) // @tac-hyp 2648-2707
        assert (Complex.add(Complex.add(Complex.add(Complex.mul(Complex.of_real(13.0), Complex.pow(Complex.I(), 13)), Complex.mul(Complex.of_real(14.0), Complex.pow(Complex.I(), 14))), Complex.mul(Complex.of_real(15.0), Complex.pow(Complex.I(), 15))), Complex.mul(Complex.of_real(16.0), Complex.pow(Complex.I(), 16))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I())));  // hypothesis h₉ after `simp_all` (Lean state) // @tac-hyp 2648-2707
        assert (Complex.add(Complex.add(Complex.add(Complex.mul(Complex.pow(Complex.I(), 13), Complex.of_real(13.0)), Complex.mul(Complex.pow(Complex.I(), 14), Complex.of_real(14.0))), Complex.mul(Complex.pow(Complex.I(), 15), Complex.of_real(15.0))), Complex.mul(Complex.pow(Complex.I(), 16), Complex.of_real(16.0))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.I(), Complex.of_real(2.0))));  // hypothesis h₉ after `ring_nf` (Lean state) // @tac-hyp 2716-2728
        assert (Complex.add(Complex.add(Complex.add(Complex.mul(Complex.pow(Complex.I(), 9), Complex.of_real(9.0)), Complex.mul(Complex.pow(Complex.I(), 10), Complex.of_real(10.0))), Complex.mul(Complex.pow(Complex.I(), 11), Complex.of_real(11.0))), Complex.mul(Complex.pow(Complex.I(), 12), Complex.of_real(12.0))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.I(), Complex.of_real(2.0))));  // hypothesis h₈ after `ring_nf` (Lean state) // @tac-hyp 2716-2728
        assert (Complex.add(Complex.add(Complex.add(Complex.mul(Complex.pow(Complex.I(), 5), Complex.of_real(5.0)), Complex.mul(Complex.pow(Complex.I(), 6), Complex.of_real(6.0))), Complex.mul(Complex.pow(Complex.I(), 7), Complex.of_real(7.0))), Complex.mul(Complex.pow(Complex.I(), 8), Complex.of_real(8.0))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.I(), Complex.of_real(2.0))));  // hypothesis h₇ after `ring_nf` (Lean state) // @tac-hyp 2716-2728
        assert (Complex.add(Complex.add(Complex.of_real(2.0), Complex.I()), Complex.mul(Complex.pow(Complex.I(), 3), Complex.of_real(3.0))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.I(), Complex.of_real(2.0))));  // hypothesis h₆ after `ring_nf` (Lean state) // @tac-hyp 2716-2728
        assert (Complex.add(Complex.add(Complex.add(Complex.add(Complex.sub(Complex.of_real(4.0), Complex.mul(Complex.I(), Complex.of_real(4.0))), Complex.mul(Complex.pow(Complex.I(), 9), Complex.of_real(9.0))), Complex.mul(Complex.pow(Complex.I(), 10), Complex.of_real(10.0))), Complex.mul(Complex.pow(Complex.I(), 11), Complex.of_real(11.0))), Complex.mul(Complex.pow(Complex.I(), 12), Complex.of_real(12.0))) == Complex.sub(Complex.of_real(6.0), Complex.mul(Complex.I(), Complex.of_real(6.0))));  // hypothesis h₅ after `ring_nf` (Lean state) // @tac-hyp 2716-2728
        assert (Complex.add(Complex.add(Complex.add(Complex.add(Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.I(), Complex.of_real(2.0))), Complex.mul(Complex.pow(Complex.I(), 5), Complex.of_real(5.0))), Complex.mul(Complex.pow(Complex.I(), 6), Complex.of_real(6.0))), Complex.mul(Complex.pow(Complex.I(), 7), Complex.of_real(7.0))), Complex.mul(Complex.pow(Complex.I(), 8), Complex.of_real(8.0))) == Complex.sub(Complex.of_real(4.0), Complex.mul(Complex.I(), Complex.of_real(4.0))));  // hypothesis h₄ after `ring_nf` (Lean state) // @tac-hyp 2716-2728
        assert (Complex.add(Complex.sub(Complex.of_real(0.0), Complex.mul(Complex.mul(Complex.I(), Complex.of_real((m as real))), Complex.of_real(2.0))), Complex.mul(Complex.of_real((m as real)), Complex.of_real(2.0))) == Complex.add(Complex.of_real(48.0), Complex.mul(Complex.I(), Complex.of_real(49.0))));  // hypothesis h₁ after `ring_nf` (Lean state) // @tac-hyp 2716-2728
        assert (forall m: nat :: (Complex.sum(IccN(1, (m * 4)), ((x: nat) => Complex.mul(Complex.pow(Complex.I(), x), Complex.of_real((x as real))))) == Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real((m as real))), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real((m as real))), Complex.I()))));  // hypothesis h_sum_multiple_of_4 after `ring_nf` (Lean state) // @tac-hyp 2716-2728
        assert (forall m: nat :: (Complex.add(Complex.add(Complex.add(Complex.mul(Complex.add(Complex.mul(Complex.of_real(4.0), Complex.of_real((m as real))), Complex.of_real(1.0)), Complex.pow(Complex.I(), ((4 * m) + 1))), Complex.mul(Complex.add(Complex.add(Complex.mul(Complex.of_real(4.0), Complex.of_real((m as real))), Complex.of_real(1.0)), Complex.of_real(1.0)), Complex.pow(Complex.I(), (((4 * m) + 1) + 1)))), Complex.mul(Complex.add(Complex.add(Complex.mul(Complex.of_real(4.0), Complex.of_real((m as real))), Complex.of_real(2.0)), Complex.of_real(1.0)), Complex.pow(Complex.I(), (((4 * m) + 2) + 1)))), Complex.mul(Complex.add(Complex.add(Complex.mul(Complex.of_real(4.0), Complex.of_real((m as real))), Complex.of_real(3.0)), Complex.of_real(1.0)), Complex.pow(Complex.I(), (((4 * m) + 3) + 1)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.I(), Complex.of_real(2.0)))));  // hypothesis h_grouped_blocks after `ring_nf` (Lean state) // @tac-hyp 2716-2728
        // UNCITED Complex.ext_iff: no Lean instance recorded (arguments unknown), not guessed
        assert (forall k: nat :: ((Complex.Re(Complex.pow(Complex.I(), (k % 4))) == Complex.Re(Complex.pow(Complex.I(), k))) && (Complex.Im(Complex.pow(Complex.I(), (k % 4))) == Complex.Im(Complex.pow(Complex.I(), k)))));  // hypothesis h_periodicity after `simp_all` (Lean state) // @tac-hyp 2737-2763
        assert ((((((Complex.Re(Complex.pow(Complex.I(), 13)) * 13.0) + (Complex.Re(Complex.pow(Complex.I(), 14)) * 14.0)) + (Complex.Re(Complex.pow(Complex.I(), 15)) * 15.0)) + (Complex.Re(Complex.pow(Complex.I(), 16)) * 16.0)) == 2.0) && (((((Complex.Im(Complex.pow(Complex.I(), 13)) * 13.0) + (Complex.Im(Complex.pow(Complex.I(), 14)) * 14.0)) + (Complex.Im(Complex.pow(Complex.I(), 15)) * 15.0)) + (Complex.Im(Complex.pow(Complex.I(), 16)) * 16.0)) == -(2.0)));  // hypothesis h₉ after `simp_all` (Lean state) // @tac-hyp 2737-2763
        assert ((((((Complex.Re(Complex.pow(Complex.I(), 9)) * 9.0) + (Complex.Re(Complex.pow(Complex.I(), 10)) * 10.0)) + (Complex.Re(Complex.pow(Complex.I(), 11)) * 11.0)) + (Complex.Re(Complex.pow(Complex.I(), 12)) * 12.0)) == 2.0) && (((((Complex.Im(Complex.pow(Complex.I(), 9)) * 9.0) + (Complex.Im(Complex.pow(Complex.I(), 10)) * 10.0)) + (Complex.Im(Complex.pow(Complex.I(), 11)) * 11.0)) + (Complex.Im(Complex.pow(Complex.I(), 12)) * 12.0)) == -(2.0)));  // hypothesis h₈ after `simp_all` (Lean state) // @tac-hyp 2737-2763
        assert ((((((Complex.Re(Complex.pow(Complex.I(), 5)) * 5.0) + (Complex.Re(Complex.pow(Complex.I(), 6)) * 6.0)) + (Complex.Re(Complex.pow(Complex.I(), 7)) * 7.0)) + (Complex.Re(Complex.pow(Complex.I(), 8)) * 8.0)) == 2.0) && (((((Complex.Im(Complex.pow(Complex.I(), 5)) * 5.0) + (Complex.Im(Complex.pow(Complex.I(), 6)) * 6.0)) + (Complex.Im(Complex.pow(Complex.I(), 7)) * 7.0)) + (Complex.Im(Complex.pow(Complex.I(), 8)) * 8.0)) == -(2.0)));  // hypothesis h₇ after `simp_all` (Lean state) // @tac-hyp 2737-2763
        assert ((Complex.Re(Complex.pow(Complex.I(), 3)) == 0.0) && ((1.0 + (Complex.Im(Complex.pow(Complex.I(), 3)) * 3.0)) == -(2.0)));  // hypothesis h₆ after `simp_all` (Lean state) // @tac-hyp 2737-2763
        assert ((((((4.0 + (Complex.Re(Complex.pow(Complex.I(), 9)) * 9.0)) + (Complex.Re(Complex.pow(Complex.I(), 10)) * 10.0)) + (Complex.Re(Complex.pow(Complex.I(), 11)) * 11.0)) + (Complex.Re(Complex.pow(Complex.I(), 12)) * 12.0)) == 6.0) && (((((-(4.0) + (Complex.Im(Complex.pow(Complex.I(), 9)) * 9.0)) + (Complex.Im(Complex.pow(Complex.I(), 10)) * 10.0)) + (Complex.Im(Complex.pow(Complex.I(), 11)) * 11.0)) + (Complex.Im(Complex.pow(Complex.I(), 12)) * 12.0)) == -(6.0)));  // hypothesis h₅ after `simp_all` (Lean state) // @tac-hyp 2737-2763
        assert ((((((2.0 + (Complex.Re(Complex.pow(Complex.I(), 5)) * 5.0)) + (Complex.Re(Complex.pow(Complex.I(), 6)) * 6.0)) + (Complex.Re(Complex.pow(Complex.I(), 7)) * 7.0)) + (Complex.Re(Complex.pow(Complex.I(), 8)) * 8.0)) == 4.0) && (((((-(2.0) + (Complex.Im(Complex.pow(Complex.I(), 5)) * 5.0)) + (Complex.Im(Complex.pow(Complex.I(), 6)) * 6.0)) + (Complex.Im(Complex.pow(Complex.I(), 7)) * 7.0)) + (Complex.Im(Complex.pow(Complex.I(), 8)) * 8.0)) == -(4.0)));  // hypothesis h₄ after `simp_all` (Lean state) // @tac-hyp 2737-2763
        assert ((((m as real) * 2.0) == 48.0) && (-(((m as real) * 2.0)) == 49.0));  // hypothesis h₁ after `simp_all` (Lean state) // @tac-hyp 2737-2763
        assert (forall m: nat :: ((Real.sum(IccN(1, (m * 4)), ((x: nat) => (Complex.Re(Complex.pow(Complex.I(), x)) * (x as real)))) == (2.0 * (m as real))) && (Real.sum(IccN(1, (m * 4)), ((x: nat) => (Complex.Im(Complex.pow(Complex.I(), x)) * (x as real)))) == -((2.0 * (m as real))))));  // hypothesis h_sum_multiple_of_4 after `simp_all` (Lean state) // @tac-hyp 2737-2763
        assert (forall m: nat :: ((((((((4.0 * (m as real)) + 1.0) * Complex.Re(Complex.pow(Complex.I(), ((4 * m) + 1)))) + ((((4.0 * (m as real)) + 1.0) + 1.0) * Complex.Re(Complex.pow(Complex.I(), (((4 * m) + 1) + 1))))) + ((((4.0 * (m as real)) + 2.0) + 1.0) * Complex.Re(Complex.pow(Complex.I(), (((4 * m) + 2) + 1))))) + ((((4.0 * (m as real)) + 3.0) + 1.0) * Complex.Re(Complex.pow(Complex.I(), (((4 * m) + 3) + 1))))) == 2.0) && (((((((4.0 * (m as real)) + 1.0) * Complex.Im(Complex.pow(Complex.I(), ((4 * m) + 1)))) + ((((4.0 * (m as real)) + 1.0) + 1.0) * Complex.Im(Complex.pow(Complex.I(), (((4 * m) + 1) + 1))))) + ((((4.0 * (m as real)) + 2.0) + 1.0) * Complex.Im(Complex.pow(Complex.I(), (((4 * m) + 2) + 1))))) + ((((4.0 * (m as real)) + 3.0) + 1.0) * Complex.Im(Complex.pow(Complex.I(), (((4 * m) + 3) + 1))))) == -(2.0))));  // hypothesis h_grouped_blocks after `simp_all` (Lean state) // @tac-hyp 2737-2763
        // UNCITED-APPLIED Nat.cast_one: cast target unknown (Lean applies it at ℂ and ℝ in this proof; the record does not say which)
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 566 / `ring1` exec 565)]
        // UNCITED-APPLIED zero_add ×3: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := ↑m); (a := ↑m * (2 : ℝ)); (a := (49 : ℝ))
        ComplexPowOne(Complex.I());  // cite: pow_one [applied by the tactic, not named in it]
        ComplexPowOne(Complex.of_real((m as real)));  // cite: pow_one [applied by the tactic, not named in it]
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2789-2797 exec 564)
        // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(97 : ℝ) * (-1 : ℝ) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 1.0); (97.0 > 0.0)
        // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(97 : ℝ) * (-1 : ℝ) + -(↑m * (2 : ℝ) - (48 : ℝ)) < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
        cert_identity_1(n, m);  // cert: Linarith.lt_of_lt_of_eq
        assert false;  // sub-goal before `have` (Lean state) // @tac 2348-2382 // @tac 2387-2421 // @tac 2426-2460 // @tac 2465-2499 // @tac 2504-2535 // @tac 2540-2571 // @tac 2576-2607 // @tac 2612-2643 // @tac 2648-2797 // @tac 2648-2780 // @tac 2648-2763 // @tac 2648-2728 // @tac 2648-2707 // @tac 2716-2728 // @tac 2737-2763 // @tac 2772-2780 // @tac 2789-2797
        // UNCITED-APPLIED internal ×1 [exec 555 2772-2780]: applications made inside the tactic's own automation, not stated — machinery/glue: eq_false ×1
        // UNCITED-APPLIED internal ×99 [exec 564 2789-2797]: applications made inside the tactic's own automation, not stated — add_zero ×5, zero_add ×3, neg_eq_zero ×2, sub_eq_zero_of_eq ×2, one_mul ×2, neg_neg_of_pos ×1, zero_lt_one ×1, sub_self ×1, neg_zero ×1, sub_zero ×1; machinery/glue: congrArg ×8, Eq.trans ×8, congr ×8, Mathlib.Tactic.Ring.mul_congr ×3 (+33 more heads, ×53) (cited in this block, not counted here: pow_one [Lean recorded ×2])
        // UNCITED-APPLIED internal ×105 [exec 565 2789-2797]: applications made inside the tactic's own automation, not stated — Nat.cast_one ×1; machinery/glue: Mathlib.Meta.NormNum.isInt_mul ×8, Mathlib.Tactic.Ring.neg_add ×7, Mathlib.Tactic.Ring.neg_one_mul ×7, Mathlib.Meta.NormNum.isNat_ofNat ×6 (+30 more heads, ×76) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×5 [exec 566 2789-2797]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      }
      assert false; // @tac 2319-2343
    }
    // UNCITED-APPLIED instance of h_sum_multiple_of_4: `∑ k ∈ Finset.Icc (1 : ℕ) ((4 : ℕ) * m), ↑k * Complex.I ^ k = (2 : ℂ) * ↑m - (2 : ℂ) * ↑m * Complex.I` — Lean's proof of h_contradiction_multiple_of_4 applies it; this block states an instance of h_sum_multiple_of_4 (`instance of h_sum_multiple_of_4` above), not in this recorded form
  }
  // have h_n_not_multiple_of_4 : ¬ ∃ m : ℕ , n = 4 * m  [type from Lean state]
  assert !(exists m: nat :: (n == (4 * m))) by { // @tac 2867-2874
    if (exists m: nat :: (n == (4 * m))) {
      // obtain ⟨m, hm⟩ := h
      assert exists m: nat :: (n == (4 * m));
      var m: nat :| (n == (4 * m));
      // have h₂ :   [type from Lean state]
      assert (Complex.sum(IccN(1, (4 * m)), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real((m as real))), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real((m as real))), Complex.I()))) by {
        // [TACTIC: exact h_sum_multiple_of_4 ( m )]
        assert (Complex.sum(IccN(1, (4 * m)), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real((m as real))), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real((m as real))), Complex.I())));  // instance of h_sum_multiple_of_4 (Lean state)
      }
      // have h₃ :   [type from Lean state]
      assert (Complex.sum(IccN(((4 * m) + 1), ((4 * m) + 4)), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I()))) by {
        // [TACTIC: exact h_grouped_blocks ( m )]
        assert (Complex.sum(IccN(((4 * m) + 1), ((4 * m) + 4)), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I())));  // instance of h_grouped_blocks (Lean state)
      }
      // have h₄ :   [type from Lean state]
      {  // proof of the have (plain block: the statement has a literal division)
        // [TACTIC: exact h_periodicity ( 0 )]
        assert (Complex.pow(Complex.I(), (0 % 4)) == Complex.pow(Complex.I(), 0));  // instance of h_periodicity (Lean state)
      }
      // have h₄ : (its statement, proved in the plain block above)
      assert (Complex.pow(Complex.I(), (0 % 4)) == Complex.pow(Complex.I(), 0));
      // have h₅ :   [type from Lean state]
      {  // proof of the have (plain block: the statement has a literal division)
        // [TACTIC: exact h_periodicity ( 1 )]
        assert (Complex.pow(Complex.I(), (1 % 4)) == Complex.pow(Complex.I(), 1));  // instance of h_periodicity (Lean state)
      }
      // have h₅ : (its statement, proved in the plain block above)
      assert (Complex.pow(Complex.I(), (1 % 4)) == Complex.pow(Complex.I(), 1));
      // have h₆ :   [type from Lean state]
      {  // proof of the have (plain block: the statement has a literal division)
        // [TACTIC: exact h_periodicity ( 2 )]
        assert (Complex.pow(Complex.I(), (2 % 4)) == Complex.pow(Complex.I(), 2));  // instance of h_periodicity (Lean state)
      }
      // have h₆ : (its statement, proved in the plain block above)
      assert (Complex.pow(Complex.I(), (2 % 4)) == Complex.pow(Complex.I(), 2));
      // have h₇ :   [type from Lean state]
      {  // proof of the have (plain block: the statement has a literal division)
        // [TACTIC: exact h_periodicity ( 3 )]
        assert (Complex.pow(Complex.I(), (3 % 4)) == Complex.pow(Complex.I(), 3));  // instance of h_periodicity (Lean state)
      }
      // have h₇ : (its statement, proved in the plain block above)
      assert (Complex.pow(Complex.I(), (3 % 4)) == Complex.pow(Complex.I(), 3));
      // [TACTIC: simpAll [ Finset.sum_Icc_succ_top , Nat.mul_succ , Complex.ext_iff , pow_add , pow_mul , pow_two , pow_three ]]
      // UNCITED Finset.sum_Icc_succ_top: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
      // UNCITED Nat.mul_succ: no Lean instance recorded (arguments unknown), not guessed
      // UNCITED Complex.ext_iff: no Lean instance recorded (arguments unknown), not guessed
      // UNCITED pow_add: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
      // UNCITED pow_mul: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
      // UNCITED pow_two: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
      // UNCITED pow_three: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
      // UNCITED-APPLIED internal ×7 [exec 657 3114-3217]: applications made inside the tactic's own automation, not stated — or_false ×1; machinery/glue: congrArg ×4, Eq.trans ×1, funext ×1
      // [TACTIC: allGoals linarith linarith]
      assert false; // @tac 2879-2902 // @tac 2907-2941 // @tac 2946-2977 // @tac 2982-3010 // @tac 3015-3043 // @tac 3048-3076 // @tac 3081-3109 // @tac 3114-3217
    }
  }
  // have h_form_n_plus_1 : ∃ m : ℕ , n = 4 * m + 1  [type from Lean state]
  assert (exists m: nat :: (n == ((4 * m) + 1))) by { // @tac 3406-4349 // @tac 4424-4433
    // have h₂ : n % 4 == 1  [type from Lean state]
    assert ((n % 4) == 1) by { // @tac 3440-3452
      // UNCITED-APPLIED Decidable.byContradiction: no library counterpart (not stated) [exec 702 3440-3452]
      // by_contra! h  (h : the pushed negation of the goal, Lean state)
      if ((n % 4) != 1) {
        assert false by {  // sub-goal before `have` (Lean state) // @tac 3551-3933 // @tac 4032-4349 // @tac 4032-4178 // @tac 4032-4076
          // have h₃ : ∃ m : ℕ , n = 4 * m ∨ n = 4 * m + 2 ∨ n = 4 * m + 3  [type from Lean state]
          assert (exists m: nat :: ((n == (4 * m)) || ((n == ((4 * m) + 2)) || (n == ((4 * m) + 3))))) by { // @tac 3698-3768 // @tac 3865-3933 // @tac 3865-3923 // @tac 3865-3909
            // have [anonymous] : n % 4 == 0 || n % 4 == 1 || n % 4 == 2 || n % 4 == 3  [type from Lean state]
            assert (((n % 4) == 0) || (((n % 4) == 1) || (((n % 4) == 2) || ((n % 4) == 3)))); // @tac 3763-3768
              // [TACTIC: omega]
              // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
              // UNCITED-APPLIED internal ×118 [exec 741 3763-3768]: applications made inside the tactic's own automation, not stated — le_of_le_of_eq ×8, Int.sub_nonneg_of_le ×8, Int.add_one_le_of_lt ×8, Nat.lt_or_gt_of_ne ×4, Int.ofNat_emod ×1, Int.emod_def ×1, Int.mul_ediv_self_le ×1, Int.lt_mul_ediv_self_add ×1; machinery/glue: Eq.symm ×16, Lean.Omega.Constraint.addInequality_sat ×8, Lean.Omega.Int.ofNat_lt_of_lt ×8, Eq.trans ×8 (+15 more heads, ×46)
            // [TACTIC: «_<;>_» this with ( h₄ | h₄ | h₄ | h₄ ) <;> use n / 4 <;> omega omega]
            // [TACTIC: rcases this with ( h₄ | h₄ | h₄ | h₄ )]
            if (((n % 4) == 0)) {  // sub-goal of `use` (Lean state)
              assert ((n == (4 * (n / 4))) || ((n == ((4 * (n / 4)) + 2)) || (n == ((4 * (n / 4)) + 3)))) by {  // sub-goal of `omega` (Lean state) // @tac 3928-3933
                // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                // UNCITED-APPLIED internal ×96 [exec 851 3928-3933]: applications made inside the tactic's own automation, not stated — le_of_le_of_eq ×4, Int.sub_nonneg_of_le ×4, Int.add_one_le_of_lt ×4, Nat.lt_or_gt_of_ne ×3, Int.ofNat_add ×2, Int.ofNat_emod ×1, Int.emod_def ×1, Int.sub_eq_zero_of_eq ×1, Int.ofNat_mul ×1, Int.ofNat_ediv ×1; machinery/glue: Eq.symm ×16, Eq.trans ×8, Lean.Omega.Int.sub_congr ×6, Lean.Omega.LinearCombo.sub_eval ×6 (+16 more heads, ×38)
              }
              assert (exists m: nat :: ((n == (4 * m)) || ((n == ((4 * m) + 2)) || (n == ((4 * m) + 3)))));  // sub-goal of `use` (Lean state) // @tac 3914-3923
            }
            if (((n % 4) == 1)) {  // sub-goal of `use` (Lean state)
              assert ((n == (4 * (n / 4))) || ((n == ((4 * (n / 4)) + 2)) || (n == ((4 * (n / 4)) + 3)))) by {  // sub-goal of `omega` (Lean state) // @tac 3928-3933
                // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                // UNCITED-APPLIED internal ×106 [exec 854 3928-3933]: applications made inside the tactic's own automation, not stated — le_of_le_of_eq ×5, Int.sub_nonneg_of_le ×5, Int.add_one_le_of_lt ×5, Nat.lt_or_gt_of_ne ×4, Int.ofNat_add ×2, Int.ofNat_emod ×1, Int.emod_def ×1, Int.sub_eq_zero_of_eq ×1, Int.ofNat_mul ×1, Int.ofNat_ediv ×1; machinery/glue: Eq.symm ×17, Eq.trans ×8, Lean.Omega.Int.sub_congr ×7, Lean.Omega.LinearCombo.sub_eval ×7 (+16 more heads, ×41)
              }
              assert (exists m: nat :: ((n == (4 * m)) || ((n == ((4 * m) + 2)) || (n == ((4 * m) + 3)))));  // sub-goal of `use` (Lean state) // @tac 3914-3923
            }
            if (((n % 4) == 2)) {  // sub-goal of `use` (Lean state)
              assert ((n == (4 * (n / 4))) || ((n == ((4 * (n / 4)) + 2)) || (n == ((4 * (n / 4)) + 3)))) by {  // sub-goal of `omega` (Lean state) // @tac 3928-3933
                // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                // UNCITED-APPLIED internal ×82 [exec 857 3928-3933]: applications made inside the tactic's own automation, not stated — le_of_le_of_eq ×3, Int.sub_nonneg_of_le ×3, Int.add_one_le_of_lt ×3, Nat.lt_or_gt_of_ne ×2, Int.ofNat_add ×2, Int.ofNat_emod ×1, Int.emod_def ×1, Int.sub_eq_zero_of_eq ×1, Int.ofNat_mul ×1, Int.ofNat_ediv ×1; machinery/glue: Eq.symm ×14, Eq.trans ×8, Lean.Omega.Int.sub_congr ×5, Lean.Omega.LinearCombo.sub_eval ×5 (+16 more heads, ×32)
              }
              assert (exists m: nat :: ((n == (4 * m)) || ((n == ((4 * m) + 2)) || (n == ((4 * m) + 3)))));  // sub-goal of `use` (Lean state) // @tac 3914-3923
            }
            if (((n % 4) == 3)) {  // sub-goal of `use` (Lean state)
              assert ((n == (4 * (n / 4))) || ((n == ((4 * (n / 4)) + 2)) || (n == ((4 * (n / 4)) + 3)))) by {  // sub-goal of `omega` (Lean state) // @tac 3928-3933
                // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                // UNCITED-APPLIED internal ×64 [exec 860 3928-3933]: applications made inside the tactic's own automation, not stated — le_of_le_of_eq ×2, Int.sub_nonneg_of_le ×2, Int.add_one_le_of_lt ×2, Nat.lt_or_gt_of_ne ×1, Int.ofNat_emod ×1, Int.emod_def ×1, Int.sub_eq_zero_of_eq ×1, Int.ofNat_add ×1, Int.ofNat_mul ×1, Int.ofNat_ediv ×1; machinery/glue: Eq.symm ×11, Eq.trans ×8, Lean.Omega.Int.sub_congr ×4, Lean.Omega.LinearCombo.sub_eval ×4 (+16 more heads, ×24)
              }
              assert (exists m: nat :: ((n == (4 * m)) || ((n == ((4 * m) + 2)) || (n == ((4 * m) + 3)))));  // sub-goal of `use` (Lean state) // @tac 3914-3923
            }
          }
          // [TACTIC: «_<;>_» h₃ with ⟨ m , h₃ | h₃ | h₃ ⟩ <;> simp_all [ Finset.sum_Icc_succ_top , Complex.ext_iff , pow_add , pow_mul , pow_two , pow_three ] simp_all [ Finset.sum_Icc_succ_top , Complex.ext_iff , pow_add , pow_mul , pow_two , pow_three ] simp_all [ Finset.sum_Icc_succ_top , Complex.ext_iff , pow_add , pow_mul , pow_two , pow_three ] <;> linarith [ h_sum_multiple_of_4 0 , h_sum_multiple_of_4 1 , h_sum_multiple_of_4 2 , h_sum_multiple_of_4 3 ] linarith [ h_sum_multiple_of_4 0 , h_sum_multiple_of_4 1 , h_sum_multiple_of_4 2 , h_sum_multiple_of_4 3 ]]
          // [TACTIC: rcases h₃ with ⟨ m , h₃ | h₃ | h₃ ⟩]
          forall m: nat | ((n == (4 * m)))
            ensures false  // sub-goal of `simp_all` (Lean state) // @tac 4081-4178
          {
            // UNCITED Finset.sum_Icc_succ_top: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
            // UNCITED Complex.ext_iff: no Lean instance recorded (arguments unknown), not guessed
            // UNCITED pow_add: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
            // UNCITED pow_mul: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
            // UNCITED pow_two: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
            // UNCITED pow_three: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
            // UNCITED-APPLIED internal ×7 [exec 880 4081-4178]: applications made inside the tactic's own automation, not stated — or_false ×1; machinery/glue: congrArg ×4, Eq.trans ×1, funext ×1
          }
          forall m: nat | ((n == ((4 * m) + 2)))
            ensures false  // sub-goal of `simp_all` (Lean state) // @tac 4081-4178 // @tac 4240-4349
          {
            // UNCITED Finset.sum_Icc_succ_top: named here, no record of its application here; the harvest has no application record for this execution at all (its proof term was not captured), so whether Lean applied it here is unknown: not stated
            // UNCITED Complex.ext_iff: no Lean instance recorded (arguments unknown), not guessed
            // UNCITED pow_add: named here, no record of its application here; the harvest has no application record for this execution at all (its proof term was not captured), so whether Lean applied it here is unknown: not stated
            // UNCITED pow_mul: named here, no record of its application here; the harvest has no application record for this execution at all (its proof term was not captured), so whether Lean applied it here is unknown: not stated
            // UNCITED pow_two: named here, no record of its application here; the harvest has no application record for this execution at all (its proof term was not captured), so whether Lean applied it here is unknown: not stated
            // UNCITED pow_three: named here, no record of its application here; the harvest has no application record for this execution at all (its proof term was not captured), so whether Lean applied it here is unknown: not stated
            assert ((((2.0 * (m as real)) + (-(1.0) + (-(1.0) + -((4.0 * (m as real)))))) == 48.0) && ((-((2.0 * (m as real))) + ((4.0 * (m as real)) + 1.0)) == 49.0));  // hypothesis h₁ after `simp_all` (Lean state) // @tac-hyp 4081-4178
            assert (forall k: nat :: ((Complex.Re(Complex.pow(Complex.I(), (k % 4))) == Complex.Re(Complex.pow(Complex.I(), k))) && (Complex.Im(Complex.pow(Complex.I(), (k % 4))) == Complex.Im(Complex.pow(Complex.I(), k)))));  // hypothesis h_periodicity after `simp_all` (Lean state) // @tac-hyp 4081-4178
            assert (forall m: nat :: ((((-(1.0) + (-(1.0) + -((4.0 * (m as real))))) + (((4.0 * (m as real)) + 3.0) + 1.0)) == 2.0) && ((((4.0 * (m as real)) + 1.0) + (-(1.0) + (-(2.0) + -((4.0 * (m as real)))))) == -(2.0))));  // hypothesis h_grouped_blocks after `simp_all` (Lean state) // @tac-hyp 4081-4178
            assert (forall m: nat :: ((Real.sum(IccN(1, (4 * m)), ((x: nat) => ((x as real) * Complex.Re(Complex.pow(Complex.I(), x))))) == (2.0 * (m as real))) && (Real.sum(IccN(1, (4 * m)), ((x: nat) => ((x as real) * Complex.Im(Complex.pow(Complex.I(), x))))) == -((2.0 * (m as real))))));  // hypothesis h_sum_multiple_of_4 after `simp_all` (Lean state) // @tac-hyp 4081-4178
            assert (forall x: nat :: !(((4 * m) + 2) == (4 * x)));  // hypothesis h_contradiction_multiple_of_4 after `simp_all` (Lean state) // @tac-hyp 4081-4178
            assert !((((4 * m) + 2) % 4) == 1);  // hypothesis h after `simp_all` (Lean state) // @tac-hyp 4081-4178
            assert (Complex.sum(IccN(1, (4 * m)), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real((m as real))), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real((m as real))), Complex.I())));  // instance of h_sum_multiple_of_4 (Lean state)
            // GAP: 3 of the 4 applications of h_sum_multiple_of_4 written here (`h_sum_multiple_of_4 0`, `h_sum_multiple_of_4 1`, `h_sum_multiple_of_4 2`, `h_sum_multiple_of_4 3`) have no stated instance (no renderable Lean `inst` record for them): not stated
            // UNCITED-APPLIED Nat.cast_one: cast target unknown (Lean applies it at ℂ and ℝ in this proof; the record does not say which)
            NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
            // UNCITED-APPLIED Finset.sum_congr: recorded instance not expressible here (sort/type/scope), not guessed
            if ((1) <= (((4 * m) + 1)) + 1) { ComplexSumIccSuccTop(1, ((4 * m) + 1), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))); }  // cite: Finset.sum_Icc_succ_top [applied by the tactic, not named in it]
            if ((1) <= ((4 * m)) + 1) { ComplexSumIccSuccTop(1, (4 * m), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))); }  // cite: Finset.sum_Icc_succ_top [applied by the tactic, not named in it]
            // SORT_GAP: Nat.cast_add is used at carrier complex; library NatCastAdd/NatCastAddInt/NatCastAddRat is not over complex (no faithful counterpart, not cited)
            // UNCITED-APPLIED Nat.cast_mul: cast target unknown (Lean applies it at ℂ and ℤ in this proof; the record does not say which)
            ComplexPowAdd(Complex.I(), (4 * m), 1);  // cite: pow_add [applied by the tactic, not named in it]
            ComplexPowAdd(Complex.I(), ((4 * m) + 1), 1);  // cite: pow_add [applied by the tactic, not named in it]
            ComplexPowMul(Complex.I(), 4, m);  // cite: pow_mul [applied by the tactic, not named in it]
            // SORT_GAP: one_pow is used at carrier complex; library OnePowReal/OnePowInt/OnePowNat is not over complex (no faithful counterpart, not cited)
            ComplexPowOne(Complex.I());  // cite: pow_one [applied by the tactic, not named in it]
            // UNCITED-APPLIED mul_neg ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (4 : ℂ) * ↑m + (1 : ℂ) + (1 : ℂ), b := (1 : ℂ))
            // UNCITED-APPLIED mul_one ×5: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (4 : ℂ) * ↑m + (1 : ℂ) + (1 : ℂ)); (a := (0 : ℝ)); (a := (2 : ℝ) * ↑m); (a := (4 : ℝ) * ↑m + (1 : ℝ)); (a := (49 : ℝ))
            // UNCITED-APPLIED zero_add ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (49 : ℝ))
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 4240-4349 exec 895)
            // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(50 : ℝ) * (-1 : ℝ) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 1.0); (50.0 > 0.0)
            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * -↑m ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= (m as real)); (2.0 > 0.0)
            // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(50 : ℝ) * (-1 : ℝ) + (2 : ℝ) * -↑m < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
            cert_identity_2(n, m);  // cert: Linarith.lt_of_lt_of_eq
            // UNCITED-APPLIED internal ×181 [exec 895 4240-4349]: applications made inside the tactic's own automation, not stated — add_zero ×6, mul_one ×5, Nat.cast_add ×2, neg_add_rev ×2, sub_zero ×2, Nat.cast_one ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, zero_lt_one ×1, neg_nonpos_of_nonneg ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1, Finset.sum_congr ×1, Nat.cast_mul ×1, one_pow ×1, one_mul ×1, mul_neg ×1, sub_self ×1, zero_sub ×1, neg_zero ×1, zero_add ×1; machinery/glue: congrArg ×8, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×8, congr ×8, Mathlib.Meta.NormNum.isInt_mul ×7 (+41 more heads, ×117) (cited in this block, not counted here: Finset.sum_Icc_succ_top [Lean recorded ×2], Nat.cast_zero [Lean recorded ×1], pow_add [Lean recorded ×2], pow_mul [Lean recorded ×1], pow_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 897 4240-4349]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 898 4240-4349]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          }
          forall m: nat | ((n == ((4 * m) + 3)))
            ensures false  // sub-goal of `simp_all` (Lean state) // @tac 4081-4178 // @tac 4240-4349
          {
            // UNCITED Finset.sum_Icc_succ_top: named here, no record of its application here; the harvest has no application record for this execution at all (its proof term was not captured), so whether Lean applied it here is unknown: not stated
            // UNCITED Complex.ext_iff: no Lean instance recorded (arguments unknown), not guessed
            // UNCITED pow_add: named here, no record of its application here; the harvest has no application record for this execution at all (its proof term was not captured), so whether Lean applied it here is unknown: not stated
            // UNCITED pow_mul: named here, no record of its application here; the harvest has no application record for this execution at all (its proof term was not captured), so whether Lean applied it here is unknown: not stated
            // UNCITED pow_two: named here, no record of its application here; the harvest has no application record for this execution at all (its proof term was not captured), so whether Lean applied it here is unknown: not stated
            // UNCITED pow_three: named here, no record of its application here; the harvest has no application record for this execution at all (its proof term was not captured), so whether Lean applied it here is unknown: not stated
            assert ((((2.0 * (m as real)) + (-(1.0) + (-(1.0) + -((4.0 * (m as real)))))) == 48.0) && (((-((2.0 * (m as real))) + ((4.0 * (m as real)) + 1.0)) + (-(1.0) + (-(2.0) + -((4.0 * (m as real)))))) == 49.0));  // hypothesis h₁ after `simp_all` (Lean state) // @tac-hyp 4081-4178
            assert (forall k: nat :: ((Complex.Re(Complex.pow(Complex.I(), (k % 4))) == Complex.Re(Complex.pow(Complex.I(), k))) && (Complex.Im(Complex.pow(Complex.I(), (k % 4))) == Complex.Im(Complex.pow(Complex.I(), k)))));  // hypothesis h_periodicity after `simp_all` (Lean state) // @tac-hyp 4081-4178
            assert (forall m: nat :: ((((-(1.0) + (-(1.0) + -((4.0 * (m as real))))) + (((4.0 * (m as real)) + 3.0) + 1.0)) == 2.0) && ((((4.0 * (m as real)) + 1.0) + (-(1.0) + (-(2.0) + -((4.0 * (m as real)))))) == -(2.0))));  // hypothesis h_grouped_blocks after `simp_all` (Lean state) // @tac-hyp 4081-4178
            assert (forall m: nat :: ((Real.sum(IccN(1, (4 * m)), ((x: nat) => ((x as real) * Complex.Re(Complex.pow(Complex.I(), x))))) == (2.0 * (m as real))) && (Real.sum(IccN(1, (4 * m)), ((x: nat) => ((x as real) * Complex.Im(Complex.pow(Complex.I(), x))))) == -((2.0 * (m as real))))));  // hypothesis h_sum_multiple_of_4 after `simp_all` (Lean state) // @tac-hyp 4081-4178
            assert (forall x: nat :: !(((4 * m) + 3) == (4 * x)));  // hypothesis h_contradiction_multiple_of_4 after `simp_all` (Lean state) // @tac-hyp 4081-4178
            assert !((((4 * m) + 3) % 4) == 1);  // hypothesis h after `simp_all` (Lean state) // @tac-hyp 4081-4178
            assert (Complex.sum(IccN(1, (4 * m)), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real((m as real))), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real((m as real))), Complex.I())));  // instance of h_sum_multiple_of_4 (Lean state)
            // GAP: 3 of the 4 applications of h_sum_multiple_of_4 written here (`h_sum_multiple_of_4 0`, `h_sum_multiple_of_4 1`, `h_sum_multiple_of_4 2`, `h_sum_multiple_of_4 3`) have no stated instance (no renderable Lean `inst` record for them): not stated
            // UNCITED-APPLIED Nat.cast_one: cast target unknown (Lean applies it at ℂ and ℝ in this proof; the record does not say which)
            NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
            // UNCITED-APPLIED Finset.sum_congr: recorded instance not expressible here (sort/type/scope), not guessed
            if ((1) <= (((4 * m) + 2)) + 1) { ComplexSumIccSuccTop(1, ((4 * m) + 2), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))); }  // cite: Finset.sum_Icc_succ_top [applied by the tactic, not named in it]
            if ((1) <= (((4 * m) + 1)) + 1) { ComplexSumIccSuccTop(1, ((4 * m) + 1), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))); }  // cite: Finset.sum_Icc_succ_top [applied by the tactic, not named in it]
            if ((1) <= ((4 * m)) + 1) { ComplexSumIccSuccTop(1, (4 * m), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))); }  // cite: Finset.sum_Icc_succ_top [applied by the tactic, not named in it]
            // SORT_GAP: Nat.cast_add is used at carrier complex; library NatCastAdd/NatCastAddInt/NatCastAddRat is not over complex (no faithful counterpart, not cited)
            // UNCITED-APPLIED Nat.cast_mul: cast target unknown (Lean applies it at ℂ and ℤ in this proof; the record does not say which)
            ComplexPowAdd(Complex.I(), (4 * m), 1);  // cite: pow_add [applied by the tactic, not named in it]
            ComplexPowAdd(Complex.I(), ((4 * m) + 1), 1);  // cite: pow_add [applied by the tactic, not named in it]
            ComplexPowAdd(Complex.I(), ((4 * m) + 2), 1);  // cite: pow_add [applied by the tactic, not named in it]
            ComplexPowAdd(Complex.I(), (4 * m), 2);  // cite: pow_add [applied by the tactic, not named in it]
            ComplexPowMul(Complex.I(), 4, m);  // cite: pow_mul [applied by the tactic, not named in it]
            // SORT_GAP: one_pow is used at carrier complex; library OnePowReal/OnePowInt/OnePowNat is not over complex (no faithful counterpart, not cited)
            ComplexPowOne(Complex.I());  // cite: pow_one [applied by the tactic, not named in it]
            // UNCITED-APPLIED mul_neg ×3: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (4 : ℂ) * ↑m + (1 : ℂ) + (1 : ℂ), b := (1 : ℂ)); (a := (1 : ℂ), b := (1 : ℂ)); (a := (4 : ℂ) * ↑m + (2 : ℂ) + (1 : ℂ), b := Complex.I)
            // UNCITED-APPLIED mul_one ×7: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (4 : ℂ) * ↑m + (1 : ℂ) + (1 : ℂ)); (a := (1 : ℂ)); (a := (0 : ℝ)); (a := (2 : ℝ) * ↑m); (a := (4 : ℝ) * ↑m + (1 : ℝ)); (a := (4 : ℝ) * ↑m + (2 : ℝ) + (1 : ℝ)) …
            ComplexPowTwo(Complex.I());  // cite: pow_two [applied by the tactic, not named in it]
            // UNCITED-APPLIED zero_add ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (49 : ℝ))
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 4240-4349 exec 901)
            // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(50 : ℝ) * (-1 : ℝ) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 1.0); (50.0 > 0.0)
            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * -↑m ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= (m as real)); (2.0 > 0.0)
            // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(50 : ℝ) * (-1 : ℝ) + (2 : ℝ) * -↑m < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
            cert_identity_3(n, m);  // cert: Linarith.lt_of_lt_of_eq
            // UNCITED-APPLIED internal ×191 [exec 901 4240-4349]: applications made inside the tactic's own automation, not stated — mul_one ×7, add_zero ×7, Nat.cast_add ×4, neg_add_rev ×4, mul_neg ×3, sub_zero ×2, Nat.cast_one ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, zero_lt_one ×1, neg_nonpos_of_nonneg ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1, Finset.sum_congr ×1, Nat.cast_mul ×1, one_pow ×1, one_mul ×1, neg_mul ×1, sub_self ×1, neg_zero ×1, zero_sub ×1, zero_add ×1; machinery/glue: congrArg ×8, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×8, congr ×8, Mathlib.Meta.NormNum.isInt_mul ×7 (+41 more heads, ×117) (cited in this block, not counted here: Finset.sum_Icc_succ_top [Lean recorded ×3], Nat.cast_zero [Lean recorded ×1], pow_add [Lean recorded ×4], pow_mul [Lean recorded ×1], pow_one [Lean recorded ×1], pow_two [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 903 4240-4349]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 904 4240-4349]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          }
        }
        assert false;
      }
    }
    // [TACTIC: Use n / 4]
    assert (n == ((4 * (n / 4)) + 1)) by {  // sub-goal of `use` (Lean state) // @tac 4438-4443
      // [TACTIC: omega]
      // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
      // UNCITED-APPLIED internal ×63 [exec 924 4438-4443]: applications made inside the tactic's own automation, not stated — le_of_le_of_eq ×2, Int.sub_nonneg_of_le ×2, Int.add_one_le_of_lt ×2, Nat.lt_or_gt_of_ne ×1, Int.ofNat_emod ×1, Int.emod_def ×1, Int.sub_eq_zero_of_eq ×1, Int.ofNat_add ×1, Int.ofNat_mul ×1, Int.ofNat_ediv ×1; machinery/glue: Eq.symm ×11, Eq.trans ×8, Lean.Omega.Int.sub_congr ×4, Lean.Omega.LinearCombo.sub_eval ×4 (+15 more heads, ×23)
    }
  }
  // have h_sum_n_plus_1 : ∀ (m : ℕ), ∑ k ∈ Finset.Icc (1 : ℕ) ((4 : ℕ) * m + (1 : ℕ)), ↑k * Complex.I ^ k = (2 : ℂ) * ↑m + ((2 : ℂ) * ↑m  [type from Lean state]
  forall m: nat // @tac 4581-4588
    ensures (Complex.sum(IccN(1, ((4 * m) + 1)), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.add(Complex.mul(Complex.of_real(2.0), Complex.of_real((m as real))), Complex.mul(Complex.add(Complex.mul(Complex.of_real(2.0), Complex.of_real((m as real))), Complex.of_real(1.0)), Complex.I()))) // @tac 4593-4624 // @tac 4629-4660 // @tac 4665-4699 // @tac 4704-4738 // @tac 4743-4777 // @tac 4782-4816 // @tac 4821-4852 // @tac 4857-4888 // @tac 4893-4927 // @tac 4932-5094 // @tac 4932-5077
  {
    // [TACTIC: intro m]
    // have h₂ :   [type from Lean state]
    assert (Complex.sum(IccN(((4 * m) + 1), ((4 * m) + 4)), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I()))) by {
      // [TACTIC: exact h_grouped_blocks ( m )]
      assert (Complex.sum(IccN(((4 * m) + 1), ((4 * m) + 4)), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I())));  // instance of h_grouped_blocks (Lean state)
    }
    // have h₃ :   [type from Lean state]
    assert (Complex.sum(IccN(((4 * 0) + 1), ((4 * 0) + 4)), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I()))) by {
      // [TACTIC: exact h_grouped_blocks ( 0 )]
      assert (Complex.sum(IccN(((4 * 0) + 1), ((4 * 0) + 4)), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I())));  // instance of h_grouped_blocks (Lean state)
    }
    // have h₄ :   [type from Lean state]
    assert (Complex.sum(IccN(1, (4 * m)), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real((m as real))), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real((m as real))), Complex.I()))) by {
      // [TACTIC: exact h_sum_multiple_of_4 ( m )]
      assert (Complex.sum(IccN(1, (4 * m)), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real((m as real))), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real((m as real))), Complex.I())));  // instance of h_sum_multiple_of_4 (Lean state)
    }
    // have h₅ :   [type from Lean state]
    assert (Complex.sum(IccN(1, (4 * 0)), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real(0.0)), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real(0.0)), Complex.I()))) by {
      // [TACTIC: exact h_sum_multiple_of_4 ( 0 )]
      assert (Complex.sum(IccN(1, (4 * 0)), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real(0.0)), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real(0.0)), Complex.I())));  // instance of h_sum_multiple_of_4 (Lean state)
    }
    // have h₆ :   [type from Lean state]
    assert (Complex.sum(IccN(1, (4 * 1)), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real(1.0)), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real(1.0)), Complex.I()))) by {
      // [TACTIC: exact h_sum_multiple_of_4 ( 1 )]
      assert (Complex.sum(IccN(1, (4 * 1)), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real(1.0)), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real(1.0)), Complex.I())));  // instance of h_sum_multiple_of_4 (Lean state)
    }
    // have h₇ :   [type from Lean state]
    assert (Complex.sum(IccN(1, (4 * 2)), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real(2.0)), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real(2.0)), Complex.I()))) by {
      // [TACTIC: exact h_sum_multiple_of_4 ( 2 )]
      assert (Complex.sum(IccN(1, (4 * 2)), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real(2.0)), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real(2.0)), Complex.I())));  // instance of h_sum_multiple_of_4 (Lean state)
    }
    // have h₈ :   [type from Lean state]
    assert (Complex.sum(IccN(((4 * 1) + 1), ((4 * 1) + 4)), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I()))) by {
      // [TACTIC: exact h_grouped_blocks ( 1 )]
      assert (Complex.sum(IccN(((4 * 1) + 1), ((4 * 1) + 4)), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I())));  // instance of h_grouped_blocks (Lean state)
    }
    // have h₉ :   [type from Lean state]
    assert (Complex.sum(IccN(((4 * 2) + 1), ((4 * 2) + 4)), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I()))) by {
      // [TACTIC: exact h_grouped_blocks ( 2 )]
      assert (Complex.sum(IccN(((4 * 2) + 1), ((4 * 2) + 4)), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I())));  // instance of h_grouped_blocks (Lean state)
    }
    // have h₁₀ :   [type from Lean state]
    assert (Complex.sum(IccN(((4 * 3) + 1), ((4 * 3) + 4)), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I()))) by {
      // [TACTIC: exact h_grouped_blocks ( 3 )]
      assert (Complex.sum(IccN(((4 * 3) + 1), ((4 * 3) + 4)), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I())));  // instance of h_grouped_blocks (Lean state)
    }
    // [TACTIC: «_<;>_» [ Finset.sum_Icc_succ_top , Nat.mod_eq_of_lt , Complex.ext_iff , pow_add , pow_mul , pow_two , pow_succ , mul_add , mul_succ , mul_one , add_assoc ] simp_all [ Finset.sum_Icc_succ_top , Nat.mod_eq_of_lt , Complex.ext_iff , pow_add , pow_mul , pow_two , pow_succ , mul_add , mul_succ , mul_one , add_assoc ] simp_all [ Finset.sum_Icc_succ_top , Nat.mod_eq_of_lt , Complex.ext_iff , pow_add , pow_mul , pow_two , pow_succ , mul_add , mul_succ , mul_one , add_assoc ] <;> linarith linarith]
    // [TACTIC: choice [ Finset.sum_Icc_succ_top , Nat.mod_eq_of_lt , Complex.ext_iff , pow_add , pow_mul , pow_two , pow_succ , mul_add , mul_succ , mul_one , add_assoc ] simp_all [ Finset.sum_Icc_succ_top , Nat.mod_eq_of_lt , Complex.ext_iff , pow_add , pow_mul , pow_two , pow_succ , mul_add , mul_succ , mul_one , add_assoc ] simp_all [ Finset.sum_Icc_succ_top , Nat.mod_eq_of_lt , Complex.ext_iff , pow_add , pow_mul , pow_two , pow_succ , mul_add , mul_succ , mul_one , add_assoc ]]
    // UNCITED Nat.mod_eq_of_lt: no Lean instance recorded (arguments unknown), not guessed
    // UNCITED Complex.ext_iff: no Lean instance recorded (arguments unknown), not guessed
    // UNCITED pow_add: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
    ComplexPowMul(Complex.I(), 4, m);  // cite: pow_mul
    // UNCITED pow_two: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
    ComplexPowSucc(Complex.I(), (4 * m));  // cite: pow_succ
    ComplexPowSucc(Complex.I(), 3);  // cite: pow_succ
    ComplexPowSucc(Complex.I(), 2);  // cite: pow_succ
    ComplexPowSucc(Complex.I(), 1);  // cite: pow_succ
    ComplexPowSucc(Complex.I(), 0);  // cite: pow_succ
    ComplexPowSucc(Complex.I(), 4);  // cite: pow_succ
    ComplexPowSucc(Complex.I(), 5);  // cite: pow_succ
    ComplexPowSucc(Complex.I(), 6);  // cite: pow_succ
    ComplexPowSucc(Complex.I(), 7);  // cite: pow_succ
    // UNCITED mul_add: no Lean instance recorded (arguments unknown), not guessed
    // UNCITED mul_one: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances here: (a := (0 : ℝ)); (a := (2 : ℝ) * ↑m); (a := (4 : ℝ) * ↑m + (1 : ℝ)); (a := (2 : ℝ) * ↑m + (1 : ℝ)) …
    // UNCITED add_assoc: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances here: (a := (5 : ℂ) * Complex.I, b := (-6 : ℂ), c := -((7 : ℂ) * Complex.I)); (a := (5 : ℂ) * Complex.I, b := (-6 : ℂ) + -((7 : ℂ) * Complex.I), c := (8 : ℂ)); (a := (-6 : ℂ), b := -((7 : ℂ) * Complex.I), c := (8 : ℂ)); (a := Complex.I, b := (-2 : ℂ), c := -((3 : ℂ) * Complex.I)) …
    // SORT_GAP: Nat.cast_add is used at carrier complex; library NatCastAdd/NatCastAddInt/NatCastAddRat is not over complex (no faithful counterpart, not cited)
    // UNCITED-APPLIED Nat.cast_mul: cast target unknown (Lean applies it at ℂ and ℤ in this proof; the record does not say which)
    // UNCITED-APPLIED Nat.cast_one: cast target unknown (Lean applies it at ℂ and ℝ in this proof; the record does not say which)
    ComplexPowZero(Complex.I());  // cite: pow_zero [applied by the tactic, not named in it]
    // SORT_GAP: one_pow is used at carrier complex; library OnePowReal/OnePowInt/OnePowNat is not over complex (no faithful counterpart, not cited)
    if (forall x_0 :: x_0 in (IccN(1, (4 * m))) ==> (((i: nat) => Complex.Re(Complex.mul(Complex.of_real((i as real)), Complex.pow(Complex.I(), i)))))(x_0) == (((x: nat) => ((x as real) * Complex.Re(Complex.pow(Complex.I(), x)))))(x_0)) { FinsetSumApply(IccN(1, (4 * m)), ((i: nat) => Complex.Re(Complex.mul(Complex.of_real((i as real)), Complex.pow(Complex.I(), i)))), ((x: nat) => ((x as real) * Complex.Re(Complex.pow(Complex.I(), x))))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
    if (forall x_0 :: x_0 in (IccN(1, (4 * m))) ==> (((i: nat) => Complex.Im(Complex.mul(Complex.of_real((i as real)), Complex.pow(Complex.I(), i)))))(x_0) == (((x: nat) => ((x as real) * Complex.Im(Complex.pow(Complex.I(), x)))))(x_0)) { FinsetSumApply(IccN(1, (4 * m)), ((i: nat) => Complex.Im(Complex.mul(Complex.of_real((i as real)), Complex.pow(Complex.I(), i)))), ((x: nat) => ((x as real) * Complex.Im(Complex.pow(Complex.I(), x))))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
    // UNCITED-APPLIED Finset.sum_congr: 4 more recorded instances (Finset.Icc ((4 : ℕ) * (1 : ℕ) + (1 : ℕ)) ((4 : ℕ) * (1 : ℕ) + (4 : ℕ)), Finset.Icc (5 : ℕ) (8 : ℕ), fun (k : ℕ) => ↑k * Complex.I ^ k, fun (x : ℕ) => ↑x * Complex.I ^ x); (Finset.Icc (5 : ℕ) (5 : ℕ), {(5 : ℕ)}, fun (k : ℕ) => ↑k * Complex.I ^ k, fun (x : ℕ) => ↑x * Complex.I ^ x); (Finset.Icc (1 : ℕ) ((4 : ℕ) * (2 : ℕ)), Finset.Icc (1 : ℕ) (8 : ℕ), fun (k : ℕ) => ↑k * Complex.I ^ k, fun (x : ℕ) => ↑x * Complex.I ^ x); (Finset.Icc (1 : ℕ) (1 : ℕ), {(1 : ℕ)}, fun (k : ℕ) => ↑k * Complex.I ^ k, fun (x : ℕ) => ↑x * Complex.I ^ x) not expressible here (sort/type/scope), not guessed
    // UNCITED-APPLIED zero_add ×8: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (2 : ℝ) * ↑m + (1 : ℝ)); (a := (8 : ℝ)); (a := (-6 : ℝ) + (8 : ℝ)); (a := (-7 : ℝ)); (a := (4 : ℝ) + ((-6 : ℝ) + (8 : ℝ))); (a := (-2 : ℝ) + ((4 : ℝ) + ((-6 : ℝ) + (8 : ℝ)))) …
    FinsetIccSelfNat(5);  // cite: Finset.Icc_self [applied by the tactic, not named in it]
    FinsetIccSelfNat(1);  // cite: Finset.Icc_self [applied by the tactic, not named in it]
    // UNCITED-APPLIED Finset.sum_singleton: recorded instance not expressible here (sort/type/scope), not guessed
    // UNCITED-APPLIED mul_neg ×4: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (6 : ℂ), b := (1 : ℂ)); (a := (7 : ℂ), b := Complex.I); (a := (2 : ℂ), b := (1 : ℂ)); (a := (3 : ℂ), b := Complex.I)
    assert ((1) <= (1) + 1);  // precondition of ComplexSumIccSuccTop (Lean: Finset.sum_Icc_succ_top)
    ComplexSumIccSuccTop(1, 1, ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k))));  // cite: Finset.sum_Icc_succ_top
    assert ((1) <= (2) + 1);  // precondition of ComplexSumIccSuccTop (Lean: Finset.sum_Icc_succ_top)
    ComplexSumIccSuccTop(1, 2, ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k))));  // cite: Finset.sum_Icc_succ_top
    assert ((1) <= (3) + 1);  // precondition of ComplexSumIccSuccTop (Lean: Finset.sum_Icc_succ_top)
    ComplexSumIccSuccTop(1, 3, ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k))));  // cite: Finset.sum_Icc_succ_top
    assert ((1) <= (4) + 1);  // precondition of ComplexSumIccSuccTop (Lean: Finset.sum_Icc_succ_top)
    ComplexSumIccSuccTop(1, 4, ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k))));  // cite: Finset.sum_Icc_succ_top
    assert ((1) <= (5) + 1);  // precondition of ComplexSumIccSuccTop (Lean: Finset.sum_Icc_succ_top)
    ComplexSumIccSuccTop(1, 5, ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k))));  // cite: Finset.sum_Icc_succ_top
    assert ((1) <= (6) + 1);  // precondition of ComplexSumIccSuccTop (Lean: Finset.sum_Icc_succ_top)
    ComplexSumIccSuccTop(1, 6, ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k))));  // cite: Finset.sum_Icc_succ_top
    assert ((1) <= (7) + 1);  // precondition of ComplexSumIccSuccTop (Lean: Finset.sum_Icc_succ_top)
    ComplexSumIccSuccTop(1, 7, ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k))));  // cite: Finset.sum_Icc_succ_top
    assert ((5) <= (5) + 1);  // precondition of ComplexSumIccSuccTop (Lean: Finset.sum_Icc_succ_top)
    ComplexSumIccSuccTop(5, 5, ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k))));  // cite: Finset.sum_Icc_succ_top
    assert ((5) <= (6) + 1);  // precondition of ComplexSumIccSuccTop (Lean: Finset.sum_Icc_succ_top)
    ComplexSumIccSuccTop(5, 6, ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k))));  // cite: Finset.sum_Icc_succ_top
    assert ((5) <= (7) + 1);  // precondition of ComplexSumIccSuccTop (Lean: Finset.sum_Icc_succ_top)
    ComplexSumIccSuccTop(5, 7, ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k))));  // cite: Finset.sum_Icc_succ_top
    assert ((1) <= ((4 * m)) + 1);  // precondition of ComplexSumIccSuccTop (Lean: Finset.sum_Icc_succ_top)
    ComplexSumIccSuccTop(1, (4 * m), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k))));  // cite: Finset.sum_Icc_succ_top
    // GAP: Finset.sum_Icc_succ_top: this execution also rewrote the hypotheses h_periodicity, h_grouped_blocks, h_sum_multiple_of_4, h_n_not_multiple_of_4, h₂, h₆, h₇, h₈, h₉, h₁₀; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
    // GAP: pow_mul: this execution also rewrote the hypotheses h_periodicity, h_grouped_blocks, h_sum_multiple_of_4, h_n_not_multiple_of_4, h₂, h₆, h₇, h₈, h₉, h₁₀; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
    // GAP: pow_succ: this execution also rewrote the hypotheses h_periodicity, h_grouped_blocks, h_sum_multiple_of_4, h_n_not_multiple_of_4, h₂, h₆, h₇, h₈, h₉, h₁₀; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
    // UNCITED mul_succ: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
    // UNCITED-APPLIED internal ×112 [exec 1055 4932-5077]: applications made inside the tactic's own automation, not stated — add_assoc ×21, mul_one ×15, add_zero ×8, zero_add ×8, sub_zero ×7, zero_sub ×4, mul_neg ×4, Complex.re_sum ×3, Complex.im_sum ×3, neg_mul ×2, Finset.sum_singleton ×2, Nat.cast_add ×1, Nat.cast_mul ×1, Nat.cast_one ×1, one_mul ×1, neg_neg ×1, one_pow ×1, sub_self ×1, eq_true_of_decide ×1, neg_zero ×1, neg_add_cancel_comm_assoc ×1; machinery/glue: congrArg ×8, congr ×7, Eq.trans ×6, of_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Finset.Icc_self [Lean recorded ×2], Finset.sum_Icc_succ_top [Lean recorded ×11], Finset.sum_congr [Lean recorded ×10], pow_mul [Lean recorded ×1], pow_succ [Lean recorded ×9], pow_zero [Lean recorded ×1])
    assert ((Real.sum(IccN(1, n), ((x: nat) => ((x as real) * Complex.Re(Complex.pow(Complex.I(), x))))) == 48.0) && (Real.sum(IccN(1, n), ((x: nat) => ((x as real) * Complex.Im(Complex.pow(Complex.I(), x))))) == 49.0));  // hypothesis h₁ after `simp_all` (Lean state) // @tac-hyp 4932-5077
    assert (forall k: nat :: ((Complex.Re(Complex.pow(Complex.I(), (k % 4))) == Complex.Re(Complex.pow(Complex.I(), k))) && (Complex.Im(Complex.pow(Complex.I(), (k % 4))) == Complex.Im(Complex.pow(Complex.I(), k)))));  // hypothesis h_periodicity after `simp_all` (Lean state) // @tac-hyp 4932-5077
    assert (forall m: nat :: ((((2.0 * 2.0) * (m as real)) + (1.0 + (-(3.0) + -(((2.0 * 2.0) * (m as real)))))) == -(2.0)));  // hypothesis h_grouped_blocks after `simp_all` (Lean state) // @tac-hyp 4932-5077
    assert (forall m: nat :: ((Real.sum(IccN(1, (4 * m)), ((x: nat) => ((x as real) * Complex.Re(Complex.pow(Complex.I(), x))))) == (2.0 * (m as real))) && (Real.sum(IccN(1, (4 * m)), ((x: nat) => ((x as real) * Complex.Im(Complex.pow(Complex.I(), x))))) == -((2.0 * (m as real))))));  // hypothesis h_sum_multiple_of_4 after `simp_all` (Lean state) // @tac-hyp 4932-5077
    assert (forall x: nat :: !(n == (4 * x)));  // hypothesis h_n_not_multiple_of_4 after `simp_all` (Lean state) // @tac-hyp 4932-5077
    assert ((-(2.0) + (2.0 * 2.0)) == 2.0);  // hypothesis h₂ after `simp_all` (Lean state) // @tac-hyp 4932-5077
    assert ((1.0 + -(3.0)) == -(2.0));  // hypothesis h₆ after `simp_all` (Lean state) // @tac-hyp 4932-5077
    assert ((4.0 == (2.0 * 2.0)) && ((1.0 + (-(3.0) + -(2.0))) == -((2.0 * 2.0))));  // hypothesis h₇ after `simp_all` (Lean state) // @tac-hyp 4932-5077
    assert (((-(6.0) + 8.0) == 2.0) && ((5.0 + -(7.0)) == -(2.0)));  // hypothesis h₈ after `simp_all` (Lean state) // @tac-hyp 4932-5077
    assert (((-(10.0) + 12.0) == 2.0) && ((9.0 + -(11.0)) == -(2.0)));  // hypothesis h₉ after `simp_all` (Lean state) // @tac-hyp 4932-5077
    assert (((-(14.0) + 16.0) == 2.0) && ((13.0 + -(15.0)) == -(2.0)));  // hypothesis h₁₀ after `simp_all` (Lean state) // @tac-hyp 4932-5077
    assert ((-((2.0 * (m as real))) + (((2.0 * 2.0) * (m as real)) + 1.0)) == ((2.0 * (m as real)) + 1.0)) by {  // sub-goal of `linarith` (Lean state) // @tac 5086-5094
      // UNCITED-APPLIED Nat.cast_one: cast target unknown (Lean applies it at ℂ and ℝ in this proof; the record does not say which)
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
      // UNCITED-APPLIED internal ×80 [exec 1064 5086-5094]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2, Nat.cast_one ×1; machinery/glue: Mathlib.Tactic.Ring.add_congr ×3, Mathlib.Tactic.Ring.mul_congr ×3, Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Tactic.Ring.add_mul ×3 (+36 more heads, ×65) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    }
  }
  // have h_solve_n_plus_1 : n == 97  [type from Lean state]
  assert (n == 97) by { // @tac 5138-5170 // @tac 5175-5215 // @tac 5220-5416 // @tac 5220-5403 // @tac 5220-5384 // @tac 5220-5292
    // obtain ⟨m, hm⟩ := h_form_n_plus_1
    assert exists m: nat :: (n == ((4 * m) + 1));
    var m: nat :| (n == ((4 * m) + 1));
    // have h_sum_n_plus_1' :   [type from Lean state]
    assert (Complex.sum(IccN(1, ((4 * m) + 1)), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.add(Complex.mul(Complex.of_real(2.0), Complex.of_real((m as real))), Complex.mul(Complex.add(Complex.mul(Complex.of_real(2.0), Complex.of_real((m as real))), Complex.of_real(1.0)), Complex.I()))) by {
      // [TACTIC: exact h_sum_n_plus_1 ( m )]
      assert (Complex.sum(IccN(1, ((4 * m) + 1)), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.add(Complex.mul(Complex.of_real(2.0), Complex.of_real((m as real))), Complex.mul(Complex.add(Complex.mul(Complex.of_real(2.0), Complex.of_real((m as real))), Complex.of_real(1.0)), Complex.I())));  // instance of h_sum_n_plus_1 (Lean state)
    }
    // [TACTIC: «_<;>_» [ Finset.sum_Icc_succ_top , Nat.succ_eq_add_one , Complex.ext_iff ] simp_all [ Finset.sum_Icc_succ_top , Nat.succ_eq_add_one , Complex.ext_iff ] simp_all [ Finset.sum_Icc_succ_top , Nat.succ_eq_add_one , Complex.ext_iff ] <;> ring_nf at * <;> norm_cast at * norm_cast at * <;> linarith linarith]
    // [TACTIC: choice [ Finset.sum_Icc_succ_top , Nat.succ_eq_add_one , Complex.ext_iff ] simp_all [ Finset.sum_Icc_succ_top , Nat.succ_eq_add_one , Complex.ext_iff ] simp_all [ Finset.sum_Icc_succ_top , Nat.succ_eq_add_one , Complex.ext_iff ]]
    // UNCITED Finset.sum_Icc_succ_top: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
    // UNCITED Nat.succ_eq_add_one: no Lean instance recorded (arguments unknown), not guessed
    // UNCITED Complex.ext_iff: no Lean instance recorded (arguments unknown), not guessed
    // UNCITED-APPLIED internal ×4 [exec 1111 5220-5292]: applications made inside the tactic's own automation, not stated — Nat.Simproc.add_eq_le ×1; machinery/glue: Eq.trans ×1, congrArg ×1, of_decide_eq_true ×1
    assert (((2.0 * (m as real)) == 48.0) && (((2.0 * (m as real)) + 1.0) == 49.0));  // hypothesis h₁ after `simp_all` (Lean state) // @tac-hyp 5220-5292
    assert (forall k: nat :: ((Complex.Re(Complex.pow(Complex.I(), (k % 4))) == Complex.Re(Complex.pow(Complex.I(), k))) && (Complex.Im(Complex.pow(Complex.I(), (k % 4))) == Complex.Im(Complex.pow(Complex.I(), k)))));  // hypothesis h_periodicity after `simp_all` (Lean state) // @tac-hyp 5220-5292
    assert (forall m: nat :: ((((((((4.0 * (m as real)) + 1.0) * Complex.Re(Complex.pow(Complex.I(), ((4 * m) + 1)))) + ((((4.0 * (m as real)) + 1.0) + 1.0) * Complex.Re(Complex.pow(Complex.I(), (((4 * m) + 1) + 1))))) + ((((4.0 * (m as real)) + 2.0) + 1.0) * Complex.Re(Complex.pow(Complex.I(), (((4 * m) + 2) + 1))))) + ((((4.0 * (m as real)) + 3.0) + 1.0) * Complex.Re(Complex.pow(Complex.I(), (((4 * m) + 3) + 1))))) == 2.0) && (((((((4.0 * (m as real)) + 1.0) * Complex.Im(Complex.pow(Complex.I(), ((4 * m) + 1)))) + ((((4.0 * (m as real)) + 1.0) + 1.0) * Complex.Im(Complex.pow(Complex.I(), (((4 * m) + 1) + 1))))) + ((((4.0 * (m as real)) + 2.0) + 1.0) * Complex.Im(Complex.pow(Complex.I(), (((4 * m) + 2) + 1))))) + ((((4.0 * (m as real)) + 3.0) + 1.0) * Complex.Im(Complex.pow(Complex.I(), (((4 * m) + 3) + 1))))) == -(2.0))));  // hypothesis h_grouped_blocks after `simp_all` (Lean state) // @tac-hyp 5220-5292
    assert (forall m: nat :: ((Real.sum(IccN(1, (4 * m)), ((x: nat) => ((x as real) * Complex.Re(Complex.pow(Complex.I(), x))))) == (2.0 * (m as real))) && (Real.sum(IccN(1, (4 * m)), ((x: nat) => ((x as real) * Complex.Im(Complex.pow(Complex.I(), x))))) == -((2.0 * (m as real))))));  // hypothesis h_sum_multiple_of_4 after `simp_all` (Lean state) // @tac-hyp 5220-5292
    assert (forall x: nat :: !(((4 * m) + 1) == (4 * x)));  // hypothesis h_contradiction_multiple_of_4 after `simp_all` (Lean state) // @tac-hyp 5220-5292
    assert (forall m: nat :: (((((4.0 * (m as real)) + 1.0) == 0.0) || (Complex.Re(Complex.pow(Complex.I(), ((4 * m) + 1))) == 0.0)) && ((-((2.0 * (m as real))) + (((4.0 * (m as real)) + 1.0) * Complex.Im(Complex.pow(Complex.I(), ((4 * m) + 1))))) == ((2.0 * (m as real)) + 1.0))));  // hypothesis h_sum_n_plus_1 after `simp_all` (Lean state) // @tac-hyp 5220-5292
    assert ((-(48.0) + (((4.0 * (m as real)) + 1.0) * Complex.Im(Complex.pow(Complex.I(), ((4 * m) + 1))))) == (48.0 + 1.0));  // hypothesis h_sum_n_plus_1' after `simp_all` (Lean state) // @tac-hyp 5220-5292
    assert ((4 * m) == 96) by {  // sub-goal of `ring_nf` (Lean state) // @tac 5372-5384
      NatPowOne(m);  // cite: pow_one [applied by the tactic, not named in it]
      assert (((-(48.0) + (((m as real) * Complex.Im(Complex.mul(Complex.I(), Complex.pow(Complex.I(), (m * 4))))) * 4.0)) + Complex.Im(Complex.mul(Complex.I(), Complex.pow(Complex.I(), (m * 4))))) == 49.0);  // hypothesis h_sum_n_plus_1' after `ring_nf` (Lean state) // @tac-hyp 5372-5384
      assert (n == (1 + (m * 4)));  // hypothesis hm after `ring_nf` (Lean state) // @tac-hyp 5372-5384
      assert (forall m: nat :: ((((1.0 + ((m as real) * 4.0)) == 0.0) || (Complex.Re(Complex.mul(Complex.I(), Complex.pow(Complex.I(), (m * 4)))) == 0.0)) && (((-(((m as real) * 2.0)) + (((m as real) * Complex.Im(Complex.mul(Complex.I(), Complex.pow(Complex.I(), (m * 4))))) * 4.0)) + Complex.Im(Complex.mul(Complex.I(), Complex.pow(Complex.I(), (m * 4))))) == (1.0 + ((m as real) * 2.0)))));  // hypothesis h_sum_n_plus_1 after `ring_nf` (Lean state) // @tac-hyp 5372-5384
      assert (forall x: nat :: !((1 + (m * 4)) == (4 * x)));  // hypothesis h_contradiction_multiple_of_4 after `ring_nf` (Lean state) // @tac-hyp 5372-5384
      assert ((((m as real) * 2.0) == 48.0) && ((1.0 + ((m as real) * 2.0)) == 49.0));  // hypothesis h₁ after `ring_nf` (Lean state) // @tac-hyp 5372-5384
      assert ((m * 4) == 96) by {  // sub-goal of `norm_cast` (Lean state) // @tac 5389-5403 // @tac 5408-5416
        assert (forall m: nat :: (((((((((4 * m) + 1) as real) * Complex.Re(Complex.pow(Complex.I(), ((4 * m) + 1)))) + (((((4 * m) + 1) + 1) as real) * Complex.Re(Complex.pow(Complex.I(), (((4 * m) + 1) + 1))))) + (((((4 * m) + 2) + 1) as real) * Complex.Re(Complex.pow(Complex.I(), (((4 * m) + 2) + 1))))) + (((((4 * m) + 3) + 1) as real) * Complex.Re(Complex.pow(Complex.I(), (((4 * m) + 3) + 1))))) == 2.0) && ((((((((4 * m) + 1) as real) * Complex.Im(Complex.pow(Complex.I(), ((4 * m) + 1)))) + (((((4 * m) + 1) + 1) as real) * Complex.Im(Complex.pow(Complex.I(), (((4 * m) + 1) + 1))))) + (((((4 * m) + 2) + 1) as real) * Complex.Im(Complex.pow(Complex.I(), (((4 * m) + 2) + 1))))) + (((((4 * m) + 3) + 1) as real) * Complex.Im(Complex.pow(Complex.I(), (((4 * m) + 3) + 1))))) == ((-(((1 as int) + 1))) as real))));  // hypothesis h_grouped_blocks after `norm_cast` (Lean state) // @tac-hyp 5389-5403
        assert (forall m: nat :: ((Real.sum(IccN(1, (4 * m)), ((x: nat) => ((x as real) * Complex.Re(Complex.pow(Complex.I(), x))))) == ((2 * m) as real)) && (Real.sum(IccN(1, (4 * m)), ((x: nat) => ((x as real) * Complex.Im(Complex.pow(Complex.I(), x))))) == (-(((2 * m) as int)) as real))));  // hypothesis h_sum_multiple_of_4 after `norm_cast` (Lean state) // @tac-hyp 5389-5403
        assert (((((-(((47 as int) + 1))) as real) + (((m as real) * Complex.Im(Complex.mul(Complex.I(), Complex.pow(Complex.I(), (m * 4))))) * 4.0)) + Complex.Im(Complex.mul(Complex.I(), Complex.pow(Complex.I(), (m * 4))))) == 49.0);  // hypothesis h_sum_n_plus_1' after `norm_cast` (Lean state) // @tac-hyp 5389-5403
        assert (forall m: nat :: ((((1 + (m * 4)) == 0) || (Complex.Re(Complex.mul(Complex.I(), Complex.pow(Complex.I(), (m * 4)))) == 0.0)) && ((((-(((m * 2) as int)) as real) + (((m as real) * Complex.Im(Complex.mul(Complex.I(), Complex.pow(Complex.I(), (m * 4))))) * 4.0)) + Complex.Im(Complex.mul(Complex.I(), Complex.pow(Complex.I(), (m * 4))))) == ((1 + (m * 2)) as real))));  // hypothesis h_sum_n_plus_1 after `norm_cast` (Lean state) // @tac-hyp 5389-5403
        assert (((m * 2) == 48) && ((1 + (m * 2)) == 49));  // hypothesis h₁ after `norm_cast` (Lean state) // @tac-hyp 5389-5403
        // UNCITED-APPLIED Nat.cast_mul: cast target unknown (Lean applies it at ℂ and ℤ in this proof; the record does not say which)
        // UNCITED-APPLIED Eq.symm((1 as real), 1.0): its premise is not established here and its conclusion is the same Dafny fact (== is symmetric): a guarded call would state nothing
        // UNCITED-APPLIED Nat.cast_one: cast target unknown (Lean applies it at ℂ and ℝ in this proof; the record does not say which)
        PowOne((m as real));  // cite: pow_one [applied by the tactic, not named in it]
        // UNCITED-APPLIED Finset.sum_congr: recorded instance not expressible here (sort/type/scope), not guessed
        // UNCITED-APPLIED mul_one ×3: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (0 : ℝ)); (a := (2 : ℝ) * ↑m + (1 : ℝ)); (a := (49 : ℝ))
        // UNCITED-APPLIED zero_add ×2: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (2 : ℝ) * ↑m + (1 : ℝ)); (a := (49 : ℝ))
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 5408-5416 exec 1161)
        // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℤ) * -(↑m * (2 : ℤ) - (48 : ℤ)) = (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-((((m as int) * 2) - 48)) == 0); (2 > 0)
        // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℤ) * (↑m * (2 : ℤ) - (48 : ℤ)) = (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((m as int) * 2) - 48) == 0); (2 > 0)
        // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(-1 : ℤ) + (2 : ℤ) * -(↑m * (2 : ℤ) - (48 : ℤ)) < (0 : ℤ)`
        cert_identity_4(n, m);  // cert: add_lt_of_neg_of_le
        cert_identity_5(n, m);  // cert: add_lt_of_neg_of_le
        // UNCITED-APPLIED internal ×219 [exec 1161 5408-5416]: applications made inside the tactic's own automation, not stated — add_zero ×6, mul_one ×3, add_lt_of_neg_of_le ×2, Nat.cast_mul ×2, zero_add ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1, Nat.cast_one ×1, Finset.sum_congr ×1, sub_zero ×1, sub_self ×1; machinery/glue: congrArg ×8, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×8, Mathlib.Meta.NormNum.isInt_mul ×8, congr ×8 (+45 more heads, ×160) (cited in this block, not counted here: pow_one [Lean recorded ×1])
        // UNCITED-APPLIED internal ×5 [exec 1163 5408-5416]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
        // UNCITED-APPLIED internal ×5 [exec 1165 5408-5416]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
      }
      // UNCITED-APPLIED internal ×19 [exec 1120 5372-5384]: applications made inside the tactic's own automation, not stated — add_zero ×1; machinery/glue: congrArg ×3, Eq.trans ×3, Mathlib.Tactic.Ring.mul_congr ×1, Mathlib.Tactic.Ring.cast_pos ×1 (+10 more heads, ×10) (cited in this block, not counted here: pow_one [Lean recorded ×1])
    }
    // UNCITED-APPLIED instance of h_sum_n_plus_1: `∑ k ∈ Finset.Icc (1 : ℕ) ((4 : ℕ) * m + (1 : ℕ)), ↑k * Complex.I ^ k = (2 : ℂ) * ↑m + ((2 : ℂ) * ↑m + (1 : ℂ)) * Complex.I` — Lean's proof of h_solve_n_plus_1 applies it; this block states an instance of h_sum_n_plus_1 (`instance of h_sum_n_plus_1` above), not in this recorded form
  }
  // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
  // obtain ⟨m, rfl⟩ := h_form_n_plus_1
  assert exists m: nat :: (n == ((4 * m) + 1));
  var m: nat :| (n == ((4 * m) + 1));
  if ((0 < ((4 * m) + 1))) && ((Complex.sum(IccN(1, ((4 * m) + 1)), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.add(Complex.of_real(48.0), Complex.mul(Complex.of_real(49.0), Complex.I())))) && (!(exists m_1: nat :: (((4 * m) + 1) == (4 * m_1)))) && ((((4 * m) + 1) == 97)) {  // sub-goal before `simp_all` (Lean state)
    // [TACTIC: «_<;>_» [ Finset.sum_Icc_succ_top ] simp_all [ Finset.sum_Icc_succ_top ] simp_all [ Finset.sum_Icc_succ_top ] <;> ring_nf ring_nf <;> linarith linarith]
    // [TACTIC: simpAll [ Finset.sum_Icc_succ_top ]]
    // UNCITED Finset.sum_Icc_succ_top: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
    // `simp_all` closed the goal; the rest of the chain did not run
    assert (((4 * m) + 1) == 97);  // sub-goal before `simp_all` (Lean state) // @tac 5460-5764 // @tac 5460-5695 // @tac 5460-5494
    // UNCITED-APPLIED internal ×6 [exec 1177 5460-5494]: applications made inside the tactic's own automation, not stated — Nat.Simproc.add_eq_le ×1; machinery/glue: of_eq_true ×1, Eq.trans ×1, congrArg ×1, of_decide_eq_true ×1 (+1 more heads, ×1)
  }
}



// ===== closed lemma for line 282 (from closed/amc12a_2009_p15-282.dfy) =====

lemma {:induction false} vc_amc12a_2009_p15_L282(m_3_0_0_0: int, n: int)
  requires 0 <= n
  requires 0 < n
  requires Complex.sum(IccN(1, n), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.add(Complex.of_real(48.0), Complex.mul(Complex.of_real(49.0), Complex.I()))
  requires forall k_0_1: int :: true
  requires forall k_0_1: nat :: true ==> Complex.pow(Complex.I(), k_0_1 % 4) == Complex.pow(Complex.I(), k_0_1)
  requires forall m_1_1: nat :: true ==> (forall v_40_k: int :: true)
  requires forall m_1_1: nat :: true ==> Complex.sum(IccN(4 * m_1_1 + 1, 4 * m_1_1 + 4), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I()))
  requires forall m_2_1: nat :: true ==> (forall v_33_k: int :: true)
  requires forall m_2_1: nat :: true ==> Complex.sum(IccN(1, 4 * m_2_1), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real((m_2_1 as real))), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real((m_2_1 as real))), Complex.I()))
  requires exists m_3_1: nat :: n == 4 * m_3_1
  requires exists m_3_0_1: nat :: n == 4 * m_3_0_1
  requires (0 <= 0 && n == 4 * 0) || (0 <= 0 && n == 4 * 0) || (exists as_m3_0_0_3_0_0: nat :: n == 4 * as_m3_0_0_3_0_0)
  requires 0 <= 1
  requires Complex.I().Complex?
  requires 0 <= 4 * 0
  requires Complex.sum(IccN(1, 4 * 0), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))).Complex?
  requires Complex.of_real(2.0).Complex?
  requires Complex.of_real(0.0).Complex?
  requires Complex.mul(Complex.of_real(2.0), Complex.of_real(0.0)).Complex?
  requires Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real(0.0)), Complex.I()).Complex?
  requires Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real(0.0)), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real(0.0)), Complex.I())).Complex?
  ensures   Complex.sum(IccN(1, 4 * 0), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real(0.0)), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real(0.0)), Complex.I()))
{ }

