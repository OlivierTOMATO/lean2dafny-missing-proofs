// NOT CLOSED — failing line amc12a_2009_p15-18: theorem amc12a_2009_p15, Dafny line 18 (OOR: Verification out of resource (induction_helper_1))
// failing Dafny line: ensures (Complex.sum(IccN(1, (4 * m)), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real((m as real
// Lean step: 
// hypotheses: 3 facts Z3 had at the line (goal itself removed: 0; facts derived inside the helper lemma's own body removed: 11); nothing assumed beyond the facts in scope
// not closed: tried H0=oor, K1=oor, K1K3=oor, K1b=oor, K1K3b=oor; this file is the honest base attempt
// Dafny: finished with 118 verified, 5 errors, 13 out of resource  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12a_2009_p15.dfy"
lemma {:induction false} vc_amc12a_2009_p15_L18(m: int, n: int)
  requires 0 < n
  requires Complex.sum(IccN(1, n), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.add(Complex.of_real(48.0), Complex.mul(Complex.of_real(49.0), Complex.I()))
  requires Complex.sum(IccN(4 * m + 1, 4 * m + 4), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.of_real(2.0), Complex.mul(Complex.of_real(2.0), Complex.I()))
  ensures   Complex.sum(IccN(1, 4 * m), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.sub(Complex.mul(Complex.of_real(2.0), Complex.of_real((m as real))), Complex.mul(Complex.mul(Complex.of_real(2.0), Complex.of_real((m as real))), Complex.I()))
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

