// ════════════════════════════════════════════════════════════
// MECHANICAL TRANSLATION (emitter v2) of ast_cache_v2/imo_1966_p4.json
// Each Lean `have` → `assert ... by {}` at the same depth;
// quantified haves → forall statements. Typed pipeline only.
// ════════════════════════════════════════════════════════════

include "../../closed/alt/imo_1966_p4-77/library/library_new.dfy"

// ──────────────────────────────────────────────────
// certificate identity for `inductive_step/h₁'`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_1(n: int, x: real, m: int)
  ensures ((-((2 * 1)) + ((0 + 1) - (m as int))) + ((m as int) + 1)) == 0
{ }

// ──────────────────────────────────────────────────
// R14 — recursive lemma for `induction n` (structural)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} induction_helper_1(n: nat, x: real)
  // induction on a local n that shadows the theorem parameter n; the theorem's
  // hypotheses on the outer n (Lean: n✝, not in scope by name here) are not requires:
  //   (0 < n)  (about the outer n)
  requires (forall k: nat :: ((0 < k) ==> (forall m: int :: (x != Real.div(((m as real) * Real.pi()), Real.pow(2.0, k))))))
  requires (Real.div(1.0, Real.sin((2.0 * x))) == (Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan((2.0 * x)))))  // ambient have base_case
  requires (forall m: nat :: ((0 < m) ==> ((Real.sum(IccN(1, m), ((k: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, k) * x))))) == (Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan((Real.pow(2.0, m) * x))))) ==> (Real.sum(IccN(1, (m + 1)), ((k: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, k) * x))))) == (Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan((Real.pow(2.0, (m + 1)) * x))))))))  // ambient have inductive_step
  ensures ((0 < n) ==> (Real.sum(IccN(1, n), ((k: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, k) * x))))) == (Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan((Real.pow(2.0, n) * x))))))
  decreases n
{
  if n == 0 {
    if ((0 < 0)) {  // sub-goal before `cases` (Lean state)
      // obtain ⟨x⟩ := h₁
      // obtain skeleton (nothing bound); binders: x
      assert (Real.sum(IccN(1, 0), ((k: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, k) * x))))) == (Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan((Real.pow(2.0, 0) * x)))));  // sub-goal before `cases` (Lean state) // @tac 2959-2969
    }
  } else {
    induction_helper_1(n - 1, x);
    var n: nat := n - 1;  // Lean's predecessor binder (succ n)
    if ((0 < (n + 1))) {  // sub-goal before `cases` (Lean state)
      // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
      // UNCITED-APPLIED Eq.symm ×1: 1 of Lean's 2 recorded instances here have no statement above (which ones is not decided) — Lean's instances: Eq.symm(n, (0 : ℕ)); Eq.symm(n✝, n + (1 : ℕ)) [exec 727 3060-3476]
      // cases n (zero / succ)
      if n == 0 {
        if (((0 < 0) ==> (Real.sum(IccN(1, 0), ((k: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, k) * x))))) == (Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan((Real.pow(2.0, 0) * x))))))) && ((0 < (0 + 1))) {  // sub-goal before `simp_all` (Lean state)
          // [TACTIC: simpAll [ Finset.sum_Icc_succ_top , Nat.one_ne_zero , Nat.succ_pos , base_case ]]
          // UNCITED Finset.sum_Icc_succ_top: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
          // UNCITED Nat.one_ne_zero: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
          // UNCITED Nat.succ_pos: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED-APPLIED Finset.sum_congr: recorded instance not expressible here (sort/type/scope), not guessed
          // UNCITED-APPLIED zero_add ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (1 : ℕ))
          FinsetIccSelfNat(1);  // cite: Finset.Icc_self [applied by the tactic, not named in it]
          // UNCITED-APPLIED Finset.sum_singleton: recorded instance not expressible here (sort/type/scope), not guessed
          PowOne(2.0);  // cite: pow_one [applied by the tactic, not named in it]
          assert (Real.sum(IccN(1, (0 + 1)), ((k: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, k) * x))))) == (Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan((Real.pow(2.0, (0 + 1)) * x)))));  // sub-goal before `simp_all` (Lean state) // @tac 3125-3201
          // UNCITED-APPLIED internal ×27 [exec 732 3125-3201]: applications made inside the tactic's own automation, not stated — one_div ×4, Finset.sum_congr ×1, zero_add ×1, Finset.sum_singleton ×1; machinery/glue: Eq.trans ×7, congrArg ×7, congr ×4, of_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Finset.Icc_self [Lean recorded ×1], pow_one [Lean recorded ×1])
        }
      } else {
        var n: nat := n - 1;
        if (((0 < (n + 1)) ==> (Real.sum(IccN(1, (n + 1)), ((k: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, k) * x))))) == (Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan((Real.pow(2.0, (n + 1)) * x))))))) && ((0 < ((n + 1) + 1))) {  // sub-goal before `simp_all` (Lean state)
          // [TACTIC: «_<;>_» [ Finset.sum_Icc_succ_top , Nat.succ_ne_zero , Nat.succ_pos , inductive_step ] simp_all [ Finset.sum_Icc_succ_top , Nat.succ_ne_zero , Nat.succ_pos , inductive_step ] simp_all [ Finset.sum_Icc_succ_top , Nat.succ_ne_zero , Nat.succ_pos , inductive_step ] <;> linarith linarith]
          // [TACTIC: simpAll [ Finset.sum_Icc_succ_top , Nat.succ_ne_zero , Nat.succ_pos , inductive_step ]]
          // UNCITED Finset.sum_Icc_succ_top: 1 more recorded instance ((1 : ℕ), m, fun (k : ℕ) => (sin ((2 : ℝ) ^ k * x))⁻¹) not expressible here (sort/type/scope), not guessed
          // UNCITED Nat.succ_ne_zero: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED Nat.succ_pos: no Lean instance recorded (arguments unknown), not guessed
          if (forall x_0 :: x_0 in (IccN(1, ((n + 1) + 1))) ==> (((k: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, k) * x)))))(x_0) == (((x_1: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, x_1) * x)))))(x_0)) { FinsetSumApply(IccN(1, ((n + 1) + 1)), ((k: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, k) * x)))), ((x_1: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, x_1) * x))))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
          if (forall x_0 :: x_0 in (IccN(1, (n + 1))) ==> (((k: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, k) * x)))))(x_0) == (((x_1: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, x_1) * x)))))(x_0)) { FinsetSumApply(IccN(1, (n + 1)), ((k: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, k) * x)))), ((x_1: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, x_1) * x))))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
          // UNCITED-APPLIED Finset.sum_congr: 2 more recorded instances (Finset.Icc (1 : ℕ) m, Finset.Icc (1 : ℕ) m, fun (k : ℕ) => (1 : ℝ) / sin ((2 : ℝ) ^ k * x), fun (x_1 : ℕ) => (sin ((2 : ℝ) ^ x_1 * x))⁻¹); (Finset.Icc (1 : ℕ) (m + (1 : ℕ)), Finset.Icc (1 : ℕ) (m + (1 : ℕ)), fun (k : ℕ) => (1 : ℝ) / sin ((2 : ℝ) ^ k * x), fun (x_1 : ℕ) => (sin ((2 : ℝ) ^ x_1 * x))⁻¹) not expressible here (sort/type/scope), not guessed
          assert ((1) <= (n) + 1);  // precondition of FinsetSumIccSuccTopNat (Lean: Finset.sum_Icc_succ_top)
          FinsetSumIccSuccTopNat(1, n, ((k: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, k) * x)))));  // cite: Finset.sum_Icc_succ_top
          assert ((1) <= ((n + 1)) + 1);  // precondition of FinsetSumIccSuccTopNat (Lean: Finset.sum_Icc_succ_top)
          FinsetSumIccSuccTopNat(1, (n + 1), ((k: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, k) * x)))));  // cite: Finset.sum_Icc_succ_top
          // `simp_all` closed the goal; the rest of the chain did not run
          assert (Real.sum(IccN(1, ((n + 1) + 1)), ((k: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, k) * x))))) == (Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan((Real.pow(2.0, ((n + 1) + 1)) * x)))));  // sub-goal before `simp_all` (Lean state) // @tac 3304-3476 // @tac 3304-3386
          // UNCITED-APPLIED internal ×35 [exec 741 3304-3386]: applications made inside the tactic's own automation, not stated — one_div ×8, implies_congr_ctx ×1, or_true ×1, true_implies ×1; machinery/glue: congr ×8, congrArg ×8, Eq.trans ×5, eq_self ×2 (+1 more heads, ×1) (cited in this block, not counted here: Finset.sum_Icc_succ_top [Lean recorded ×3], Finset.sum_congr [Lean recorded ×4])
        }
      }
      vc_imo_1966_p4_L77(n_1_0_0, n, x);  /* [IN-FILE CHECK] the closed lemma for line 77 */
      assert (Real.sum(IccN(1, (n + 1)), ((k: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, k) * x))))) == (Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan((Real.pow(2.0, (n + 1)) * x)))));  // sub-goal before `cases` (Lean state) // @tac 3060-3476
    }
  }
}

// statement: Lean elaborated type (v3, stmt_cache) — requires/ensures below
lemma imo_1966_p4(n: nat, x: real)
  requires (forall k: nat :: ((0 < k) ==> (forall m: int :: (x != Real.div(((m as real) * Real.pi()), Real.pow(2.0, k))))))
  requires (0 < n)
  ensures (Real.sum(IccN(1, n), ((k: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, k) * x))))) == (Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan((Real.pow(2.0, n) * x))))) // @tac 559-1360 // @tac 1363-2656 // @tac 2659-3476 // @tac 3482-3654 // @tac 3660-3677 // @tac 3680-3702 // @tac 3705-3734 // @tac 3737-3767 // @tac 3770-3799 // @tac 3802-3810
{
  // have base_case : ( 1 / Real.sin ( ( 2 * x ) ) ) == ( 1 / Real.tan ( x ) ) - ( 1 / Real.  [type from Lean state]
  assert (Real.div(1.0, Real.sin((2.0 * x))) == (Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan((2.0 * x))))) by { // @tac 653-681
    // [TACTIC: rwSeq [ Real.tan_eq_sin_div_cos ]]
    RealTanEqSinDivCos(x);  // cite: Real.tan_eq_sin_div_cos
    // UNCITED-APPLIED congrArg(tan x, sin x / cos x, fun (_a : ℝ) => (1 : ℝ) / sin ((2 : ℝ) * x) = (1 : ℝ) / _a - (1 : ℝ) …): no library counterpart (not stated) [exec 24 653-681]
    assert (Real.div(1.0, Real.sin((2.0 * x))) == (Real.div(1.0, Real.div(Real.sin(x), Real.cos(x))) - Real.div(1.0, Real.tan((2.0 * x))))) by {  // sub-goal before `rw` (Lean state) // @tac 686-714
      // [TACTIC: rwSeq [ Real.tan_eq_sin_div_cos ]]
      RealTanEqSinDivCos((2.0 * x));  // cite: Real.tan_eq_sin_div_cos
      // UNCITED-APPLIED congrArg(tan ((2 : ℝ) * x), sin ((2 : ℝ) * x) / cos ((2 : ℝ) * x), fun (_a : ℝ) => (1 : ℝ) / sin ((2 : ℝ) * x) = (1 : ℝ) / (sin x / cos …): no library counterpart (not stated) [exec 55 686-714]
      assert (Real.div(1.0, Real.sin((2.0 * x))) == (Real.div(1.0, Real.div(Real.sin(x), Real.cos(x))) - Real.div(1.0, Real.div(Real.sin((2.0 * x)), Real.cos((2.0 * x)))))) by {  // sub-goal before `by_cases` (Lean state) // @tac 794-1360 // @tac 794-1343 // @tac 794-1295 // @tac 794-1278 // @tac 794-1230 // @tac 794-1108 // @tac 794-1006 // @tac 794-866 // @tac 794-822
        // [TACTIC: «_<;>_» hx : Real.sin x = 0 <;> by_cases hx2 : Real.sin ( 2 * x ) = 0 <;> simp_all [ Real.sin_two_mul , Real.cos_two_mul , mul_assoc ] simp_all [ Real.sin_two_mul , Real.cos_two_mul , mul_assoc ] simp_all [ Real.sin_two_mul , Real.cos_two_mul , mul_assoc ] <;> field_simp field_simp <;> ring <;> simp_all [ Real.sin_sq , Real.cos_sq ] simp_all [ Real.sin_sq , Real.cos_sq ] simp_all [ Real.sin_sq , Real.cos_sq ] <;> ring <;> simp_all [ Real.sin_sq , Real.cos_sq ] simp_all [ Real.sin_sq , Real.cos_sq ] simp_all [ Real.sin_sq , Real.cos_sq ] <;> ring]
        // [TACTIC: «By_cases_:_» hx : Real.sin x = 0]
        if ((Real.sin(x) == 0.0)) {  // sub-goal of `by_cases` (Lean state)
          if ((Real.sin((2.0 * x)) == 0.0)) {  // sub-goal of `simp_all` (Lean state)
            RealSinTwoMul(x);  // cite: Real.sin_two_mul
            RealCosTwoMul(x);  // cite: Real.cos_two_mul
            // UNCITED mul_assoc: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
            assert (Real.div(1.0, Real.sin((2.0 * x))) == (Real.div(1.0, Real.div(Real.sin(x), Real.cos(x))) - Real.div(1.0, Real.div(Real.sin((2.0 * x)), Real.cos((2.0 * x))))));  // sub-goal of `simp_all` (Lean state) // @tac 950-1006
            // UNCITED-APPLIED internal ×25 [exec 155 950-1006]: applications made inside the tactic's own automation, not stated — zero_div ×2, div_zero ×1, sub_self ×1; machinery/glue: Eq.trans ×8, congrArg ×8, congr ×3, of_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Real.cos_two_mul [Lean recorded ×1], Real.sin_two_mul [Lean recorded ×1])
          }
          if (!(Real.sin((2.0 * x)) == 0.0)) {  // sub-goal of `simp_all` (Lean state)
            RealSinTwoMul(x);  // cite: Real.sin_two_mul
            // UNCITED Real.cos_two_mul: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
            // UNCITED mul_assoc: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
            assert (Real.div(1.0, Real.sin((2.0 * x))) == (Real.div(1.0, Real.div(Real.sin(x), Real.cos(x))) - Real.div(1.0, Real.div(Real.sin((2.0 * x)), Real.cos((2.0 * x))))));  // sub-goal of `simp_all` (Lean state) // @tac 950-1006
            // UNCITED-APPLIED internal ×9 [exec 158 950-1006]: applications made inside the tactic's own automation, not stated — machinery/glue: Eq.trans ×4, congrArg ×4, eq_self ×1 (cited in this block, not counted here: Real.sin_two_mul [Lean recorded ×1])
          }
          assert (Real.div(1.0, Real.sin((2.0 * x))) == (Real.div(1.0, Real.div(Real.sin(x), Real.cos(x))) - Real.div(1.0, Real.div(Real.sin((2.0 * x)), Real.cos((2.0 * x))))));  // sub-goal of `by_cases` (Lean state) // @tac 831-866
        }
        if (!(Real.sin(x) == 0.0)) {  // sub-goal of `by_cases` (Lean state)
          if ((Real.sin((2.0 * x)) == 0.0)) {  // sub-goal of `simp_all` (Lean state)
            RealSinTwoMul(x);  // cite: Real.sin_two_mul
            RealCosTwoMul(x);  // cite: Real.cos_two_mul
            // UNCITED mul_assoc: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances here: (a := (2 : ℝ), b := sin x, c := cos x)
            assert (Real.div(1.0, Real.sin((2.0 * x))) == (Real.div(1.0, Real.div(Real.sin(x), Real.cos(x))) - Real.div(1.0, Real.div(Real.sin((2.0 * x)), Real.cos((2.0 * x))))));  // sub-goal of `simp_all` (Lean state) // @tac 950-1006
            // UNCITED-APPLIED internal ×28 [exec 161 950-1006]: applications made inside the tactic's own automation, not stated — div_zero ×2, mul_assoc ×1, false_or ×1, zero_pow ×1, zero_sub ×1, zero_div ×1, sub_self ×1; machinery/glue: congrArg ×8, Eq.trans ×5, congr ×4, of_eq_true ×1 (+2 more heads, ×2) (cited in this block, not counted here: Real.cos_two_mul [Lean recorded ×1], Real.sin_two_mul [Lean recorded ×1])
          }
          if (!(Real.sin((2.0 * x)) == 0.0)) {  // sub-goal of `simp_all` (Lean state)
            RealSinTwoMul(x);  // cite: Real.sin_two_mul
            RealCosTwoMul(x);  // cite: Real.cos_two_mul
            // UNCITED mul_assoc: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances here: (a := (2 : ℝ), b := sin x, c := cos x); (a := (cos x)⁻¹, b := (sin x)⁻¹, c := (2 : ℝ)⁻¹)
            // GAP: Real.sin_two_mul: this execution also rewrote the hypotheses hx2; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
            // GAP: Real.cos_two_mul: this execution also rewrote the hypotheses hx2; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
            assert (forall k: nat :: ((0 < k) ==> (forall m: int :: !(x == Real.div(((m as real) * Real.pi()), Real.pow(2.0, k))))));  // hypothesis h₀ after `simp_all` (Lean state) // @tac-hyp 950-1006
            assert !(Real.cos(x) == 0.0);  // hypothesis hx2 after `simp_all` (Lean state) // @tac-hyp 950-1006
            assert ((Real.div(1.0, Real.cos(x)) * (Real.div(1.0, Real.sin(x)) * (1.0 / 2.0))) == (Real.div(Real.cos(x), Real.sin(x)) - Real.div(((2.0 * (Real.cos(x) * Real.cos(x))) - 1.0), (2.0 * (Real.sin(x) * Real.cos(x)))))) by {  // sub-goal of `field_simp` (Lean state) // @tac 1098-1108
              // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (1 : ℝ))
              if ((Real.sin(x)) != 0.0) && ((Real.cos(x)) != 0.0) { MulNeZero(Real.sin(x), Real.cos(x)); }  // cite: mul_ne_zero [applied by the tactic, not named in it]
              if ((Real.sin(x)) != 0.0) && (((2.0 * (Real.sin(x) * Real.cos(x)))) != 0.0) { MulNeZero(Real.sin(x), (2.0 * (Real.sin(x) * Real.cos(x)))); }  // cite: mul_ne_zero [applied by the tactic, not named in it]
              if ((Real.cos(x)) != 0.0) && (((Real.sin(x) * 2.0)) != 0.0) { MulNeZero(Real.cos(x), (Real.sin(x) * 2.0)); }  // cite: mul_ne_zero [applied by the tactic, not named in it]
              // cite: Real.sin_two_mul [same instance stated in an enclosing scope: RealSinTwoMul(x);]
              // UNCITED-APPLIED mul_assoc ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (2 : ℝ), b := sin x, c := cos x)
              assert ((Real.sin(x) * (2.0 * (Real.sin(x) * Real.cos(x)))) == (((Real.cos(x) * (2.0 * (Real.sin(x) * Real.cos(x)))) - (Real.sin(x) * ((2.0 * (Real.cos(x) * Real.cos(x))) - 1.0))) * (Real.cos(x) * (Real.sin(x) * 2.0)))) by {  // sub-goal of `ring` (Lean state) // @tac 1226-1230
                // UNCITED-APPLIED Nat.cast_one: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
                // UNCITED-APPLIED internal ×120 [exec 186 1226-1230]: applications made inside the tactic's own automation, not stated — Nat.cast_one ×1; machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_right ×8 (+37 more heads, ×87)
              }
              // UNCITED-APPLIED internal ×40 [exec 173 1098-1108]: applications made inside the tactic's own automation, not stated — div_mul_eq_mul_div ×4, inv_eq_one_div ×3, div_div ×3, mul_div_assoc' ×2, mul_one ×1, sub_div' ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1, mul_assoc ×1, false_or ×1, div_sub' ×1, one_mul ×1; machinery/glue: congrArg ×8, Eq.trans ×7, congr ×4, Mathlib.Meta.NormNum.isNat_ofNat ×1 (+1 more heads, ×1) (cited in this block, not counted here: Real.sin_two_mul [Lean recorded ×1], mul_ne_zero [Lean recorded ×3])
            }
            assert (Real.div(1.0, Real.sin((2.0 * x))) == (Real.div(1.0, Real.div(Real.sin(x), Real.cos(x))) - Real.div(1.0, Real.div(Real.sin((2.0 * x)), Real.cos((2.0 * x))))));  // sub-goal of `simp_all` (Lean state) // @tac 950-1006
            // UNCITED-APPLIED internal ×26 [exec 164 950-1006]: applications made inside the tactic's own automation, not stated — one_div ×3, mul_assoc ×2, mul_inv_rev ×2, inv_div ×2; machinery/glue: Eq.trans ×8, congrArg ×6, congr ×3 (cited in this block, not counted here: Real.cos_two_mul [Lean recorded ×1], Real.sin_two_mul [Lean recorded ×1])
          }
          assert (Real.div(1.0, Real.sin((2.0 * x))) == (Real.div(1.0, Real.div(Real.sin(x), Real.cos(x))) - Real.div(1.0, Real.div(Real.sin((2.0 * x)), Real.cos((2.0 * x))))));  // sub-goal of `by_cases` (Lean state) // @tac 831-866
        }
      }
    }
  }
  // have inductive_step : ∀ (m : ℕ), (0 : ℕ) < m → ∑ k ∈ Finset.Icc (1 : ℕ) m, (1 : ℝ) / Real.sin ((2 : ℝ) ^ k * x) = (1 : ℝ) / Real.tan  [type from Lean state]
  forall m: nat | (0 < m) && (Real.sum(IccN(1, m), ((k: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, k) * x))))) == (Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan((Real.pow(2.0, m) * x))))) // @tac 1643-1655
    ensures (Real.sum(IccN(1, (m + 1)), ((k: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, k) * x))))) == (Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan((Real.pow(2.0, (m + 1)) * x))))) // @tac 1660-1697 // @tac 1702-1915 // @tac 1920-1932
  {
    // [TACTIC: intro m hm h]
    // have h₁' : m + 1 > 0  [type from Lean state]
    assert ((m + 1) > 0) by { // @tac 1689-1697
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1689-1697 exec 252)
      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℤ) * (-1 : ℤ) < (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 < 1); (2 > 0)
      // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(2 : ℤ) * (-1 : ℤ) + ((0 : ℤ) + (1 : ℤ) - ↑m) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
      cert_identity_1(n, x, m);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×18 [exec 252 1689-1697]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, lt_of_not_ge ×1, neg_neg_of_pos ×1, zero_lt_one ×1, sub_nonpos_of_le ×1, Int.add_one_le_iff ×1, Nat.cast_zero ×1, Nat.cast_one ×1; machinery/glue: congrArg ×4, Eq.trans ×2, Linarith.lt_irrefl ×1, Linarith.mul_neg ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_add [Lean recorded ×1])
      // UNCITED-APPLIED internal ×50 [exec 253 1689-1697]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×4, Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×3, Mathlib.Tactic.Ring.add_pf_zero_add ×3 (+28 more heads, ×37)
      // UNCITED-APPLIED internal ×5 [exec 254 1689-1697]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
      // UNCITED-APPLIED Nat.cast_zero: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
      NatCastAddInt(m, 1);  // cite: Nat.cast_add [applied by the tactic, not named in it]
      // UNCITED-APPLIED Nat.cast_one: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
    }
    // have h₂ : ∑ k ∈ Finset.Icc (1 : ℕ) (m + (1 : ℕ)), (1 : ℝ) / Real.sin ((2 : ℝ) ^ k * x) = ∑ k ∈ Finset.Icc (1 : ℕ) m, (1   [type from Lean state]
    assert (Real.sum(IccN(1, (m + 1)), ((k: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, k) * x))))) == (Real.sum(IccN(1, m), ((k: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, k) * x))))) + Real.div(1.0, Real.sin((Real.pow(2.0, (m + 1)) * x))))) by { // @tac 1867-1915 // @tac 1867-1895
      // [TACTIC: «_<;>_» [ Finset.sum_Icc_succ_top ] rw [ Finset.sum_Icc_succ_top ] <;> simp [ hm ] simp [ hm ] simp [ hm ]]
      // [TACTIC: choice [ Finset.sum_Icc_succ_top ] rw [ Finset.sum_Icc_succ_top ]]
      assert ((1) <= (m) + 1);  // precondition of FinsetSumIccSuccTopNat (Lean: Finset.sum_Icc_succ_top)
      FinsetSumIccSuccTopNat(1, m, ((k: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, k) * x)))));  // cite: Finset.sum_Icc_succ_top
      // UNCITED-APPLIED congrArg(∑ k ∈ Finset.Icc (1 : ℕ) (m + (1 : ℕ)), (1 : ℝ) / sin ((2 : ℝ) ^ k * …, ∑ k ∈ Finset.Icc (1 : ℕ) m, (1 : ℝ) / sin ((2 : ℝ) ^ k * x) + (1 : ℝ)…, fun (_a : ℝ) => _a = ∑ k ∈ Finset.Icc (1 : ℕ) m, (1 : ℝ) / sin ((2 : …): no library counterpart (not stated) [exec 280 1867-1895]
      // (`rw` closed `∑ k ∈ Finset.Icc (1 : ℕ) m, (1 : ℝ) / sin ((2 : ℝ) ^ k * x) + (1 : ℝ) / sin ((2 : ℝ) ^ (m + (1 : ℕ))` itself, e.g. by its trailing rfl)
      assert (1 <= (m + 1));  // sub-goal of `simp` (Lean state) // @tac 1906-1915
      // UNCITED-APPLIED internal ×2 [exec 309 1906-1915]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, Eq.trans ×1
    }
    // [TACTIC: rwSeq [ h₂ , h ]]
    // UNCITED-APPLIED congrArg(∑ k ∈ Finset.Icc (1 : ℕ) (m + (1 : ℕ)), (1 : ℝ) / sin ((2 : ℝ) ^ k * …, ∑ k ∈ Finset.Icc (1 : ℕ) m, (1 : ℝ) / sin ((2 : ℝ) ^ k * x) + (1 : ℝ)…, fun (_a : ℝ) => _a = (1 : ℝ) / tan x - (1 : ℝ) / tan ((2 : ℝ) ^ (m + …): no library counterpart (not stated) [exec 314 1920-1932]
    // UNCITED-APPLIED congrArg(∑ k ∈ Finset.Icc (1 : ℕ) m, (1 : ℝ) / sin ((2 : ℝ) ^ k * x), (1 : ℝ) / tan x - (1 : ℝ) / tan ((2 : ℝ) ^ m * x), fun (_a : ℝ) => _a + (1 : ℝ) / sin ((2 : ℝ) ^ (m + (1 : ℕ)) * x) = (1…): no library counterpart (not stated) [exec 314 1920-1932]
    assert (((Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan((Real.pow(2.0, m) * x)))) + Real.div(1.0, Real.sin((Real.pow(2.0, (m + 1)) * x)))) == (Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan((Real.pow(2.0, (m + 1)) * x))))) by {  // sub-goal before `have` (Lean state) // @tac 1937-2624 // @tac 2629-2656 // @tac 2629-2638
      // have h₃ : 1 / Real.sin ( ( 2 ^ ( m + 1 ) * x ) ) == 1 / Real.tan ( ( 2 ^ m * x )  [type from Lean state]
      assert (Real.div(1.0, Real.sin((Real.pow(2.0, (m + 1)) * x))) == (Real.div(1.0, Real.tan((Real.pow(2.0, m) * x))) - Real.div(1.0, Real.tan((Real.pow(2.0, (m + 1)) * x))))) by { // @tac 2052-2103
        assert ((Real.pow(2.0, (m + 1)) * x) == (2.0 * (Real.pow(2.0, m) * x))) by {  // sub-goal of `by` (Lean state) // @tac 2098-2102
          // [TACTIC: Ring]
          // UNCITED-APPLIED internal ×50 [exec 373 2098-2102]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_zero ×5, Mathlib.Tactic.Ring.add_mul ×5, Mathlib.Tactic.Ring.mul_add ×5, Mathlib.Tactic.Ring.zero_mul ×4 (+18 more heads, ×31)
        }
        // [TACTIC: rwSeq [ show 2 ^ ( m + 1 ) * x = 2 * ( 2 ^ m * x ) by ring ]]
        // UNCITED-APPLIED congrArg((2 : ℝ) ^ (m + (1 : ℕ)) * x, (2 : ℝ) * ((2 : ℝ) ^ m * x), fun (_a : ℝ) => (1 : ℝ) / sin _a = (1 : ℝ) / tan ((2 : ℝ) ^ m * x) - …): no library counterpart (not stated) [exec 362 2052-2103]
        assert (Real.div(1.0, Real.sin((2.0 * (Real.pow(2.0, m) * x)))) == (Real.div(1.0, Real.tan((Real.pow(2.0, m) * x))) - Real.div(1.0, Real.tan((2.0 * (Real.pow(2.0, m) * x)))))) by {  // sub-goal before `simp` (Lean state) // @tac 2110-2187
          // [TACTIC: simp [ Real.tan_eq_sin_div_cos , Real.sin_two_mul , Real.cos_two_mul , mul_assoc ]]
          RealTanEqSinDivCos((Real.pow(2.0, m) * x));  // cite: Real.tan_eq_sin_div_cos
          RealTanEqSinDivCos((2.0 * (Real.pow(2.0, m) * x)));  // cite: Real.tan_eq_sin_div_cos
          RealSinTwoMul((Real.pow(2.0, m) * x));  // cite: Real.sin_two_mul
          RealCosTwoMul((Real.pow(2.0, m) * x));  // cite: Real.cos_two_mul
          // UNCITED mul_assoc: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances here: (a := (2 : ℝ), b := sin ((2 : ℝ) ^ m * x), c := cos ((2 : ℝ) ^ m * x)); (a := (cos ((2 : ℝ) ^ m * x))⁻¹, b := (sin ((2 : ℝ) ^ m * x))⁻¹, c := (2 : ℝ)⁻¹)
          // UNCITED-APPLIED internal ×27 [exec 398 2110-2187]: applications made inside the tactic's own automation, not stated — one_div ×3, mul_assoc ×2, mul_inv_rev ×2, inv_div ×2; machinery/glue: Eq.trans ×8, congrArg ×7, congr ×3 (cited in this block, not counted here: Real.cos_two_mul [Lean recorded ×1], Real.sin_two_mul [Lean recorded ×1], Real.tan_eq_sin_div_cos [Lean recorded ×2])
          assert ((Real.div(1.0, Real.cos((Real.pow(2.0, m) * x))) * (Real.div(1.0, Real.sin((Real.pow(2.0, m) * x))) * (1.0 / 2.0))) == (Real.div(Real.cos((Real.pow(2.0, m) * x)), Real.sin((Real.pow(2.0, m) * x))) - Real.div(((2.0 * (Real.cos((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x)))) - 1.0), (2.0 * (Real.sin((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x))))))) by {  // sub-goal before `by_cases` (Lean state) // @tac 2194-2624 // @tac 2194-2525 // @tac 2194-2507 // @tac 2194-2461 // @tac 2194-2443 // @tac 2194-2391 // @tac 2194-2339 // @tac 2194-2279 // @tac 2194-2234
            // [TACTIC: «_<;>_» hcos : Real.cos ( 2 ^ m * x ) = 0 <;> by_cases hsin : Real.sin ( 2 ^ m * x ) = 0 <;> by_cases hcos' : Real.cos ( 2 ^ ( m + 1 ) * x ) = 0 <;> by_cases hsin' : Real.sin ( 2 ^ ( m + 1 ) * x ) = 0 <;> field_simp [ hcos , hsin , hcos' , hsin' ] field_simp [ hcos , hsin , hcos' , hsin' ] <;> ring_nf ring_nf <;> simp_all [ Real.cos_sq , Real.sin_sq ] simp_all [ Real.cos_sq , Real.sin_sq ] simp_all [ Real.cos_sq , Real.sin_sq ] <;> ring_nf ring_nf <;> nlinarith [ Real.sin_sq_add_cos_sq ( 2 ^ m * x ) , Real.sin_sq_add_cos_sq ( 2 ^ ( m + 1 ) * x ) ] nlinarith [ Real.sin_sq_add_cos_sq ( 2 ^ m * x ) , Real.sin_sq_add_cos_sq ( 2 ^ ( m + 1 ) * x ) ]]
            // [TACTIC: «By_cases_:_» hcos : Real.cos ( 2 ^ m * x ) = 0]
            if ((Real.cos((Real.pow(2.0, m) * x)) == 0.0)) {  // sub-goal of `by_cases` (Lean state)
              if ((Real.sin((Real.pow(2.0, m) * x)) == 0.0)) {  // sub-goal of `by_cases` (Lean state)
                if ((Real.cos((Real.pow(2.0, (m + 1)) * x)) == 0.0)) {  // sub-goal of `by_cases` (Lean state)
                  if ((Real.sin((Real.pow(2.0, (m + 1)) * x)) == 0.0)) {  // sub-goal of `field_simp` (Lean state)
                    // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (0 : ℝ))
                    assert ((Real.div(1.0, Real.cos((Real.pow(2.0, m) * x))) * (Real.div(1.0, Real.sin((Real.pow(2.0, m) * x))) * (1.0 / 2.0))) == (Real.div(Real.cos((Real.pow(2.0, m) * x)), Real.sin((Real.pow(2.0, m) * x))) - Real.div(((2.0 * (Real.cos((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x)))) - 1.0), (2.0 * (Real.sin((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x)))))));  // sub-goal of `field_simp` (Lean state) // @tac 2406-2443
                    // UNCITED-APPLIED internal ×39 [exec 568 2406-2443]: applications made inside the tactic's own automation, not stated — div_zero ×3, inv_eq_one_div ×2, mul_div_assoc' ×1, mul_one ×1, zero_div ×1, zero_pow ×1, zero_sub ×1, sub_self ×1; machinery/glue: Eq.trans ×8, congrArg ×8, congr ×7, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+3 more heads, ×3)
                  }
                  if (!(Real.sin((Real.pow(2.0, (m + 1)) * x)) == 0.0)) {  // sub-goal of `field_simp` (Lean state)
                    // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (0 : ℝ))
                    assert ((Real.div(1.0, Real.cos((Real.pow(2.0, m) * x))) * (Real.div(1.0, Real.sin((Real.pow(2.0, m) * x))) * (1.0 / 2.0))) == (Real.div(Real.cos((Real.pow(2.0, m) * x)), Real.sin((Real.pow(2.0, m) * x))) - Real.div(((2.0 * (Real.cos((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x)))) - 1.0), (2.0 * (Real.sin((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x)))))));  // sub-goal of `field_simp` (Lean state) // @tac 2406-2443
                    // UNCITED-APPLIED internal ×39 [exec 571 2406-2443]: applications made inside the tactic's own automation, not stated — div_zero ×3, inv_eq_one_div ×2, mul_div_assoc' ×1, mul_one ×1, zero_div ×1, zero_pow ×1, zero_sub ×1, sub_self ×1; machinery/glue: Eq.trans ×8, congrArg ×8, congr ×7, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+3 more heads, ×3)
                  }
                  assert ((Real.div(1.0, Real.cos((Real.pow(2.0, m) * x))) * (Real.div(1.0, Real.sin((Real.pow(2.0, m) * x))) * (1.0 / 2.0))) == (Real.div(Real.cos((Real.pow(2.0, m) * x)), Real.sin((Real.pow(2.0, m) * x))) - Real.div(((2.0 * (Real.cos((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x)))) - 1.0), (2.0 * (Real.sin((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x)))))));  // sub-goal of `by_cases` (Lean state) // @tac 2344-2391
                }
                if (!(Real.cos((Real.pow(2.0, (m + 1)) * x)) == 0.0)) {  // sub-goal of `by_cases` (Lean state)
                  if ((Real.sin((Real.pow(2.0, (m + 1)) * x)) == 0.0)) {  // sub-goal of `field_simp` (Lean state)
                    // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (0 : ℝ))
                    assert ((Real.div(1.0, Real.cos((Real.pow(2.0, m) * x))) * (Real.div(1.0, Real.sin((Real.pow(2.0, m) * x))) * (1.0 / 2.0))) == (Real.div(Real.cos((Real.pow(2.0, m) * x)), Real.sin((Real.pow(2.0, m) * x))) - Real.div(((2.0 * (Real.cos((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x)))) - 1.0), (2.0 * (Real.sin((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x)))))));  // sub-goal of `field_simp` (Lean state) // @tac 2406-2443
                    // UNCITED-APPLIED internal ×39 [exec 574 2406-2443]: applications made inside the tactic's own automation, not stated — div_zero ×3, inv_eq_one_div ×2, mul_div_assoc' ×1, mul_one ×1, zero_div ×1, zero_pow ×1, zero_sub ×1, sub_self ×1; machinery/glue: Eq.trans ×8, congrArg ×8, congr ×7, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+3 more heads, ×3)
                  }
                  if (!(Real.sin((Real.pow(2.0, (m + 1)) * x)) == 0.0)) {  // sub-goal of `field_simp` (Lean state)
                    // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (0 : ℝ))
                    assert ((Real.div(1.0, Real.cos((Real.pow(2.0, m) * x))) * (Real.div(1.0, Real.sin((Real.pow(2.0, m) * x))) * (1.0 / 2.0))) == (Real.div(Real.cos((Real.pow(2.0, m) * x)), Real.sin((Real.pow(2.0, m) * x))) - Real.div(((2.0 * (Real.cos((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x)))) - 1.0), (2.0 * (Real.sin((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x)))))));  // sub-goal of `field_simp` (Lean state) // @tac 2406-2443
                    // UNCITED-APPLIED internal ×39 [exec 577 2406-2443]: applications made inside the tactic's own automation, not stated — div_zero ×3, inv_eq_one_div ×2, mul_div_assoc' ×1, mul_one ×1, zero_div ×1, zero_pow ×1, zero_sub ×1, sub_self ×1; machinery/glue: Eq.trans ×8, congrArg ×8, congr ×7, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+3 more heads, ×3)
                  }
                  assert ((Real.div(1.0, Real.cos((Real.pow(2.0, m) * x))) * (Real.div(1.0, Real.sin((Real.pow(2.0, m) * x))) * (1.0 / 2.0))) == (Real.div(Real.cos((Real.pow(2.0, m) * x)), Real.sin((Real.pow(2.0, m) * x))) - Real.div(((2.0 * (Real.cos((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x)))) - 1.0), (2.0 * (Real.sin((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x)))))));  // sub-goal of `by_cases` (Lean state) // @tac 2344-2391
                }
                assert ((Real.div(1.0, Real.cos((Real.pow(2.0, m) * x))) * (Real.div(1.0, Real.sin((Real.pow(2.0, m) * x))) * (1.0 / 2.0))) == (Real.div(Real.cos((Real.pow(2.0, m) * x)), Real.sin((Real.pow(2.0, m) * x))) - Real.div(((2.0 * (Real.cos((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x)))) - 1.0), (2.0 * (Real.sin((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x)))))));  // sub-goal of `by_cases` (Lean state) // @tac 2292-2339
              }
              if (!(Real.sin((Real.pow(2.0, m) * x)) == 0.0)) {  // sub-goal of `by_cases` (Lean state)
                if ((Real.cos((Real.pow(2.0, (m + 1)) * x)) == 0.0)) {  // sub-goal of `by_cases` (Lean state)
                  if ((Real.sin((Real.pow(2.0, (m + 1)) * x)) == 0.0)) {  // sub-goal of `field_simp` (Lean state)
                    // UNCITED-APPLIED mul_one ×2: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (1 : ℝ)); (a := (0 : ℝ))
                    assert ((Real.div(1.0, Real.cos((Real.pow(2.0, m) * x))) * (Real.div(1.0, Real.sin((Real.pow(2.0, m) * x))) * (1.0 / 2.0))) == (Real.div(Real.cos((Real.pow(2.0, m) * x)), Real.sin((Real.pow(2.0, m) * x))) - Real.div(((2.0 * (Real.cos((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x)))) - 1.0), (2.0 * (Real.sin((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x)))))));  // sub-goal of `field_simp` (Lean state) // @tac 2406-2443
                    // UNCITED-APPLIED internal ×42 [exec 580 2406-2443]: applications made inside the tactic's own automation, not stated — inv_eq_one_div ×3, div_zero ×2, mul_div_assoc' ×2, mul_one ×2, zero_div ×2, div_mul_eq_mul_div ×1, div_div ×1, zero_pow ×1, zero_sub ×1, sub_self ×1; machinery/glue: Eq.trans ×8, congrArg ×8, congr ×5, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+3 more heads, ×3)
                  }
                  if (!(Real.sin((Real.pow(2.0, (m + 1)) * x)) == 0.0)) {  // sub-goal of `field_simp` (Lean state)
                    // UNCITED-APPLIED mul_one ×2: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (1 : ℝ)); (a := (0 : ℝ))
                    assert ((Real.div(1.0, Real.cos((Real.pow(2.0, m) * x))) * (Real.div(1.0, Real.sin((Real.pow(2.0, m) * x))) * (1.0 / 2.0))) == (Real.div(Real.cos((Real.pow(2.0, m) * x)), Real.sin((Real.pow(2.0, m) * x))) - Real.div(((2.0 * (Real.cos((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x)))) - 1.0), (2.0 * (Real.sin((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x)))))));  // sub-goal of `field_simp` (Lean state) // @tac 2406-2443
                    // UNCITED-APPLIED internal ×42 [exec 583 2406-2443]: applications made inside the tactic's own automation, not stated — inv_eq_one_div ×3, div_zero ×2, mul_div_assoc' ×2, mul_one ×2, zero_div ×2, div_mul_eq_mul_div ×1, div_div ×1, zero_pow ×1, zero_sub ×1, sub_self ×1; machinery/glue: Eq.trans ×8, congrArg ×8, congr ×5, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+3 more heads, ×3)
                  }
                  assert ((Real.div(1.0, Real.cos((Real.pow(2.0, m) * x))) * (Real.div(1.0, Real.sin((Real.pow(2.0, m) * x))) * (1.0 / 2.0))) == (Real.div(Real.cos((Real.pow(2.0, m) * x)), Real.sin((Real.pow(2.0, m) * x))) - Real.div(((2.0 * (Real.cos((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x)))) - 1.0), (2.0 * (Real.sin((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x)))))));  // sub-goal of `by_cases` (Lean state) // @tac 2344-2391
                }
                if (!(Real.cos((Real.pow(2.0, (m + 1)) * x)) == 0.0)) {  // sub-goal of `by_cases` (Lean state)
                  if ((Real.sin((Real.pow(2.0, (m + 1)) * x)) == 0.0)) {  // sub-goal of `field_simp` (Lean state)
                    // UNCITED-APPLIED mul_one ×2: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (1 : ℝ)); (a := (0 : ℝ))
                    assert ((Real.div(1.0, Real.cos((Real.pow(2.0, m) * x))) * (Real.div(1.0, Real.sin((Real.pow(2.0, m) * x))) * (1.0 / 2.0))) == (Real.div(Real.cos((Real.pow(2.0, m) * x)), Real.sin((Real.pow(2.0, m) * x))) - Real.div(((2.0 * (Real.cos((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x)))) - 1.0), (2.0 * (Real.sin((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x)))))));  // sub-goal of `field_simp` (Lean state) // @tac 2406-2443
                    // UNCITED-APPLIED internal ×42 [exec 586 2406-2443]: applications made inside the tactic's own automation, not stated — inv_eq_one_div ×3, div_zero ×2, mul_div_assoc' ×2, mul_one ×2, zero_div ×2, div_mul_eq_mul_div ×1, div_div ×1, zero_pow ×1, zero_sub ×1, sub_self ×1; machinery/glue: Eq.trans ×8, congrArg ×8, congr ×5, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+3 more heads, ×3)
                  }
                  if (!(Real.sin((Real.pow(2.0, (m + 1)) * x)) == 0.0)) {  // sub-goal of `field_simp` (Lean state)
                    // UNCITED-APPLIED mul_one ×2: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (1 : ℝ)); (a := (0 : ℝ))
                    assert ((Real.div(1.0, Real.cos((Real.pow(2.0, m) * x))) * (Real.div(1.0, Real.sin((Real.pow(2.0, m) * x))) * (1.0 / 2.0))) == (Real.div(Real.cos((Real.pow(2.0, m) * x)), Real.sin((Real.pow(2.0, m) * x))) - Real.div(((2.0 * (Real.cos((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x)))) - 1.0), (2.0 * (Real.sin((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x)))))));  // sub-goal of `field_simp` (Lean state) // @tac 2406-2443
                    // UNCITED-APPLIED internal ×42 [exec 589 2406-2443]: applications made inside the tactic's own automation, not stated — inv_eq_one_div ×3, div_zero ×2, mul_div_assoc' ×2, mul_one ×2, zero_div ×2, div_mul_eq_mul_div ×1, div_div ×1, zero_pow ×1, zero_sub ×1, sub_self ×1; machinery/glue: Eq.trans ×8, congrArg ×8, congr ×5, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+3 more heads, ×3)
                  }
                  assert ((Real.div(1.0, Real.cos((Real.pow(2.0, m) * x))) * (Real.div(1.0, Real.sin((Real.pow(2.0, m) * x))) * (1.0 / 2.0))) == (Real.div(Real.cos((Real.pow(2.0, m) * x)), Real.sin((Real.pow(2.0, m) * x))) - Real.div(((2.0 * (Real.cos((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x)))) - 1.0), (2.0 * (Real.sin((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x)))))));  // sub-goal of `by_cases` (Lean state) // @tac 2344-2391
                }
                assert ((Real.div(1.0, Real.cos((Real.pow(2.0, m) * x))) * (Real.div(1.0, Real.sin((Real.pow(2.0, m) * x))) * (1.0 / 2.0))) == (Real.div(Real.cos((Real.pow(2.0, m) * x)), Real.sin((Real.pow(2.0, m) * x))) - Real.div(((2.0 * (Real.cos((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x)))) - 1.0), (2.0 * (Real.sin((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x)))))));  // sub-goal of `by_cases` (Lean state) // @tac 2292-2339
              }
              assert ((Real.div(1.0, Real.cos((Real.pow(2.0, m) * x))) * (Real.div(1.0, Real.sin((Real.pow(2.0, m) * x))) * (1.0 / 2.0))) == (Real.div(Real.cos((Real.pow(2.0, m) * x)), Real.sin((Real.pow(2.0, m) * x))) - Real.div(((2.0 * (Real.cos((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x)))) - 1.0), (2.0 * (Real.sin((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x)))))));  // sub-goal of `by_cases` (Lean state) // @tac 2239-2279
            }
            if (!(Real.cos((Real.pow(2.0, m) * x)) == 0.0)) {  // sub-goal of `by_cases` (Lean state)
              if ((Real.sin((Real.pow(2.0, m) * x)) == 0.0)) {  // sub-goal of `by_cases` (Lean state)
                if ((Real.cos((Real.pow(2.0, (m + 1)) * x)) == 0.0)) {  // sub-goal of `by_cases` (Lean state)
                  if ((Real.sin((Real.pow(2.0, (m + 1)) * x)) == 0.0)) {  // sub-goal of `field_simp` (Lean state)
                    // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (0 : ℝ))
                    assert ((Real.div(1.0, Real.cos((Real.pow(2.0, m) * x))) * (Real.div(1.0, Real.sin((Real.pow(2.0, m) * x))) * (1.0 / 2.0))) == (Real.div(Real.cos((Real.pow(2.0, m) * x)), Real.sin((Real.pow(2.0, m) * x))) - Real.div(((2.0 * (Real.cos((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x)))) - 1.0), (2.0 * (Real.sin((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x)))))));  // sub-goal of `field_simp` (Lean state) // @tac 2406-2443
                    // UNCITED-APPLIED internal ×34 [exec 592 2406-2443]: applications made inside the tactic's own automation, not stated — inv_eq_one_div ×3, div_zero ×3, zero_div ×2, mul_div_assoc' ×1, mul_one ×1, div_mul_eq_mul_div ×1, sub_self ×1; machinery/glue: Eq.trans ×8, congrArg ×8, congr ×4, of_eq_true ×1 (+1 more heads, ×1)
                  }
                  if (!(Real.sin((Real.pow(2.0, (m + 1)) * x)) == 0.0)) {  // sub-goal of `field_simp` (Lean state)
                    // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (0 : ℝ))
                    assert ((Real.div(1.0, Real.cos((Real.pow(2.0, m) * x))) * (Real.div(1.0, Real.sin((Real.pow(2.0, m) * x))) * (1.0 / 2.0))) == (Real.div(Real.cos((Real.pow(2.0, m) * x)), Real.sin((Real.pow(2.0, m) * x))) - Real.div(((2.0 * (Real.cos((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x)))) - 1.0), (2.0 * (Real.sin((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x)))))));  // sub-goal of `field_simp` (Lean state) // @tac 2406-2443
                    // UNCITED-APPLIED internal ×34 [exec 595 2406-2443]: applications made inside the tactic's own automation, not stated — inv_eq_one_div ×3, div_zero ×3, zero_div ×2, mul_div_assoc' ×1, mul_one ×1, div_mul_eq_mul_div ×1, sub_self ×1; machinery/glue: Eq.trans ×8, congrArg ×8, congr ×4, of_eq_true ×1 (+1 more heads, ×1)
                  }
                  assert ((Real.div(1.0, Real.cos((Real.pow(2.0, m) * x))) * (Real.div(1.0, Real.sin((Real.pow(2.0, m) * x))) * (1.0 / 2.0))) == (Real.div(Real.cos((Real.pow(2.0, m) * x)), Real.sin((Real.pow(2.0, m) * x))) - Real.div(((2.0 * (Real.cos((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x)))) - 1.0), (2.0 * (Real.sin((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x)))))));  // sub-goal of `by_cases` (Lean state) // @tac 2344-2391
                }
                if (!(Real.cos((Real.pow(2.0, (m + 1)) * x)) == 0.0)) {  // sub-goal of `by_cases` (Lean state)
                  if ((Real.sin((Real.pow(2.0, (m + 1)) * x)) == 0.0)) {  // sub-goal of `field_simp` (Lean state)
                    // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (0 : ℝ))
                    assert ((Real.div(1.0, Real.cos((Real.pow(2.0, m) * x))) * (Real.div(1.0, Real.sin((Real.pow(2.0, m) * x))) * (1.0 / 2.0))) == (Real.div(Real.cos((Real.pow(2.0, m) * x)), Real.sin((Real.pow(2.0, m) * x))) - Real.div(((2.0 * (Real.cos((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x)))) - 1.0), (2.0 * (Real.sin((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x)))))));  // sub-goal of `field_simp` (Lean state) // @tac 2406-2443
                    // UNCITED-APPLIED internal ×34 [exec 598 2406-2443]: applications made inside the tactic's own automation, not stated — inv_eq_one_div ×3, div_zero ×3, zero_div ×2, mul_div_assoc' ×1, mul_one ×1, div_mul_eq_mul_div ×1, sub_self ×1; machinery/glue: Eq.trans ×8, congrArg ×8, congr ×4, of_eq_true ×1 (+1 more heads, ×1)
                  }
                  if (!(Real.sin((Real.pow(2.0, (m + 1)) * x)) == 0.0)) {  // sub-goal of `field_simp` (Lean state)
                    // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (0 : ℝ))
                    assert ((Real.div(1.0, Real.cos((Real.pow(2.0, m) * x))) * (Real.div(1.0, Real.sin((Real.pow(2.0, m) * x))) * (1.0 / 2.0))) == (Real.div(Real.cos((Real.pow(2.0, m) * x)), Real.sin((Real.pow(2.0, m) * x))) - Real.div(((2.0 * (Real.cos((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x)))) - 1.0), (2.0 * (Real.sin((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x)))))));  // sub-goal of `field_simp` (Lean state) // @tac 2406-2443
                    // UNCITED-APPLIED internal ×34 [exec 601 2406-2443]: applications made inside the tactic's own automation, not stated — inv_eq_one_div ×3, div_zero ×3, zero_div ×2, mul_div_assoc' ×1, mul_one ×1, div_mul_eq_mul_div ×1, sub_self ×1; machinery/glue: Eq.trans ×8, congrArg ×8, congr ×4, of_eq_true ×1 (+1 more heads, ×1)
                  }
                  assert ((Real.div(1.0, Real.cos((Real.pow(2.0, m) * x))) * (Real.div(1.0, Real.sin((Real.pow(2.0, m) * x))) * (1.0 / 2.0))) == (Real.div(Real.cos((Real.pow(2.0, m) * x)), Real.sin((Real.pow(2.0, m) * x))) - Real.div(((2.0 * (Real.cos((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x)))) - 1.0), (2.0 * (Real.sin((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x)))))));  // sub-goal of `by_cases` (Lean state) // @tac 2344-2391
                }
                assert ((Real.div(1.0, Real.cos((Real.pow(2.0, m) * x))) * (Real.div(1.0, Real.sin((Real.pow(2.0, m) * x))) * (1.0 / 2.0))) == (Real.div(Real.cos((Real.pow(2.0, m) * x)), Real.sin((Real.pow(2.0, m) * x))) - Real.div(((2.0 * (Real.cos((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x)))) - 1.0), (2.0 * (Real.sin((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x)))))));  // sub-goal of `by_cases` (Lean state) // @tac 2292-2339
              }
              if (!(Real.sin((Real.pow(2.0, m) * x)) == 0.0)) {  // sub-goal of `by_cases` (Lean state)
                if ((Real.cos((Real.pow(2.0, (m + 1)) * x)) == 0.0)) {  // sub-goal of `by_cases` (Lean state)
                  if ((Real.sin((Real.pow(2.0, (m + 1)) * x)) == 0.0)) {  // sub-goal of `field_simp` (Lean state)
                    // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (1 : ℝ))
                    if ((Real.sin((Real.pow(2.0, m) * x))) != 0.0) && ((Real.cos((Real.pow(2.0, m) * x))) != 0.0) { MulNeZero(Real.sin((Real.pow(2.0, m) * x)), Real.cos((Real.pow(2.0, m) * x))); }  // cite: mul_ne_zero [applied by the tactic, not named in it]
                    if ((Real.sin((Real.pow(2.0, m) * x))) != 0.0) && (((2.0 * (Real.sin((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x))))) != 0.0) { MulNeZero(Real.sin((Real.pow(2.0, m) * x)), (2.0 * (Real.sin((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x))))); }  // cite: mul_ne_zero [applied by the tactic, not named in it]
                    if ((Real.cos((Real.pow(2.0, m) * x))) != 0.0) && (((Real.sin((Real.pow(2.0, m) * x)) * 2.0)) != 0.0) { MulNeZero(Real.cos((Real.pow(2.0, m) * x)), (Real.sin((Real.pow(2.0, m) * x)) * 2.0)); }  // cite: mul_ne_zero [applied by the tactic, not named in it]
                    assert ((Real.sin((Real.pow(2.0, m) * x)) * (2.0 * (Real.sin((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x))))) == (((Real.cos((Real.pow(2.0, m) * x)) * (2.0 * (Real.sin((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x))))) - (Real.sin((Real.pow(2.0, m) * x)) * ((2.0 * (Real.cos((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x)))) - 1.0))) * (Real.cos((Real.pow(2.0, m) * x)) * (Real.sin((Real.pow(2.0, m) * x)) * 2.0)))) by {  // sub-goal of `ring_nf` (Lean state) // @tac 2454-2461
                      PowOne(x);  // cite: pow_one [applied by the tactic, not named in it]
                      NatPowOne(m);  // cite: pow_one [applied by the tactic, not named in it]
                      PowOne(Real.cos((x * Real.pow(2.0, m))));  // cite: pow_one [applied by the tactic, not named in it]
                      // UNCITED-APPLIED mul_one ×2: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := m); (a := (2 : ℝ) ^ m)
                      // UNCITED-APPLIED Nat.cast_one: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
                      // UNCITED-APPLIED internal ×158 [exec 622 2454-2461]: applications made inside the tactic's own automation, not stated — add_zero ×3, mul_one ×2, Nat.cast_one ×1; machinery/glue: Eq.trans ×8, congrArg ×8, Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8 (+45 more heads, ×120) (cited in this block, not counted here: pow_one [Lean recorded ×3])
                    }
                    assert ((Real.div(1.0, Real.cos((Real.pow(2.0, m) * x))) * (Real.div(1.0, Real.sin((Real.pow(2.0, m) * x))) * (1.0 / 2.0))) == (Real.div(Real.cos((Real.pow(2.0, m) * x)), Real.sin((Real.pow(2.0, m) * x))) - Real.div(((2.0 * (Real.cos((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x)))) - 1.0), (2.0 * (Real.sin((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x)))))));  // sub-goal of `field_simp` (Lean state) // @tac 2406-2443
                    // UNCITED-APPLIED internal ×35 [exec 604 2406-2443]: applications made inside the tactic's own automation, not stated — div_mul_eq_mul_div ×4, inv_eq_one_div ×3, div_div ×3, mul_div_assoc' ×2, mul_one ×1, sub_div' ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1, div_sub' ×1, one_mul ×1; machinery/glue: congrArg ×8, Eq.trans ×7, congr ×2, Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: mul_ne_zero [Lean recorded ×3])
                  }
                  if (!(Real.sin((Real.pow(2.0, (m + 1)) * x)) == 0.0)) {  // sub-goal of `field_simp` (Lean state)
                    // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (1 : ℝ))
                    if ((Real.sin((Real.pow(2.0, m) * x))) != 0.0) && ((Real.cos((Real.pow(2.0, m) * x))) != 0.0) { MulNeZero(Real.sin((Real.pow(2.0, m) * x)), Real.cos((Real.pow(2.0, m) * x))); }  // cite: mul_ne_zero [applied by the tactic, not named in it]
                    if ((Real.sin((Real.pow(2.0, m) * x))) != 0.0) && (((2.0 * (Real.sin((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x))))) != 0.0) { MulNeZero(Real.sin((Real.pow(2.0, m) * x)), (2.0 * (Real.sin((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x))))); }  // cite: mul_ne_zero [applied by the tactic, not named in it]
                    if ((Real.cos((Real.pow(2.0, m) * x))) != 0.0) && (((Real.sin((Real.pow(2.0, m) * x)) * 2.0)) != 0.0) { MulNeZero(Real.cos((Real.pow(2.0, m) * x)), (Real.sin((Real.pow(2.0, m) * x)) * 2.0)); }  // cite: mul_ne_zero [applied by the tactic, not named in it]
                    assert ((Real.sin((Real.pow(2.0, m) * x)) * (2.0 * (Real.sin((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x))))) == (((Real.cos((Real.pow(2.0, m) * x)) * (2.0 * (Real.sin((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x))))) - (Real.sin((Real.pow(2.0, m) * x)) * ((2.0 * (Real.cos((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x)))) - 1.0))) * (Real.cos((Real.pow(2.0, m) * x)) * (Real.sin((Real.pow(2.0, m) * x)) * 2.0)))) by {  // sub-goal of `ring_nf` (Lean state) // @tac 2454-2461
                      PowOne(x);  // cite: pow_one [applied by the tactic, not named in it]
                      NatPowOne(m);  // cite: pow_one [applied by the tactic, not named in it]
                      PowOne(Real.cos((x * Real.pow(2.0, m))));  // cite: pow_one [applied by the tactic, not named in it]
                      // UNCITED-APPLIED mul_one ×2: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := m); (a := (2 : ℝ) ^ m)
                      // UNCITED-APPLIED Nat.cast_one: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
                      // UNCITED-APPLIED internal ×158 [exec 625 2454-2461]: applications made inside the tactic's own automation, not stated — add_zero ×3, mul_one ×2, Nat.cast_one ×1; machinery/glue: Eq.trans ×8, congrArg ×8, Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8 (+45 more heads, ×120) (cited in this block, not counted here: pow_one [Lean recorded ×3])
                    }
                    assert ((Real.div(1.0, Real.cos((Real.pow(2.0, m) * x))) * (Real.div(1.0, Real.sin((Real.pow(2.0, m) * x))) * (1.0 / 2.0))) == (Real.div(Real.cos((Real.pow(2.0, m) * x)), Real.sin((Real.pow(2.0, m) * x))) - Real.div(((2.0 * (Real.cos((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x)))) - 1.0), (2.0 * (Real.sin((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x)))))));  // sub-goal of `field_simp` (Lean state) // @tac 2406-2443
                    // UNCITED-APPLIED internal ×35 [exec 607 2406-2443]: applications made inside the tactic's own automation, not stated — div_mul_eq_mul_div ×4, inv_eq_one_div ×3, div_div ×3, mul_div_assoc' ×2, mul_one ×1, sub_div' ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1, div_sub' ×1, one_mul ×1; machinery/glue: congrArg ×8, Eq.trans ×7, congr ×2, Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: mul_ne_zero [Lean recorded ×3])
                  }
                  assert ((Real.div(1.0, Real.cos((Real.pow(2.0, m) * x))) * (Real.div(1.0, Real.sin((Real.pow(2.0, m) * x))) * (1.0 / 2.0))) == (Real.div(Real.cos((Real.pow(2.0, m) * x)), Real.sin((Real.pow(2.0, m) * x))) - Real.div(((2.0 * (Real.cos((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x)))) - 1.0), (2.0 * (Real.sin((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x)))))));  // sub-goal of `by_cases` (Lean state) // @tac 2344-2391
                }
                if (!(Real.cos((Real.pow(2.0, (m + 1)) * x)) == 0.0)) {  // sub-goal of `by_cases` (Lean state)
                  if ((Real.sin((Real.pow(2.0, (m + 1)) * x)) == 0.0)) {  // sub-goal of `field_simp` (Lean state)
                    // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (1 : ℝ))
                    if ((Real.sin((Real.pow(2.0, m) * x))) != 0.0) && ((Real.cos((Real.pow(2.0, m) * x))) != 0.0) { MulNeZero(Real.sin((Real.pow(2.0, m) * x)), Real.cos((Real.pow(2.0, m) * x))); }  // cite: mul_ne_zero [applied by the tactic, not named in it]
                    if ((Real.sin((Real.pow(2.0, m) * x))) != 0.0) && (((2.0 * (Real.sin((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x))))) != 0.0) { MulNeZero(Real.sin((Real.pow(2.0, m) * x)), (2.0 * (Real.sin((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x))))); }  // cite: mul_ne_zero [applied by the tactic, not named in it]
                    if ((Real.cos((Real.pow(2.0, m) * x))) != 0.0) && (((Real.sin((Real.pow(2.0, m) * x)) * 2.0)) != 0.0) { MulNeZero(Real.cos((Real.pow(2.0, m) * x)), (Real.sin((Real.pow(2.0, m) * x)) * 2.0)); }  // cite: mul_ne_zero [applied by the tactic, not named in it]
                    assert ((Real.sin((Real.pow(2.0, m) * x)) * (2.0 * (Real.sin((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x))))) == (((Real.cos((Real.pow(2.0, m) * x)) * (2.0 * (Real.sin((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x))))) - (Real.sin((Real.pow(2.0, m) * x)) * ((2.0 * (Real.cos((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x)))) - 1.0))) * (Real.cos((Real.pow(2.0, m) * x)) * (Real.sin((Real.pow(2.0, m) * x)) * 2.0)))) by {  // sub-goal of `ring_nf` (Lean state) // @tac 2454-2461
                      PowOne(x);  // cite: pow_one [applied by the tactic, not named in it]
                      NatPowOne(m);  // cite: pow_one [applied by the tactic, not named in it]
                      PowOne(Real.cos((x * Real.pow(2.0, m))));  // cite: pow_one [applied by the tactic, not named in it]
                      // UNCITED-APPLIED mul_one ×2: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := m); (a := (2 : ℝ) ^ m)
                      // UNCITED-APPLIED Nat.cast_one: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
                      // UNCITED-APPLIED internal ×158 [exec 628 2454-2461]: applications made inside the tactic's own automation, not stated — add_zero ×3, mul_one ×2, Nat.cast_one ×1; machinery/glue: Eq.trans ×8, congrArg ×8, Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8 (+45 more heads, ×120) (cited in this block, not counted here: pow_one [Lean recorded ×3])
                    }
                    assert ((Real.div(1.0, Real.cos((Real.pow(2.0, m) * x))) * (Real.div(1.0, Real.sin((Real.pow(2.0, m) * x))) * (1.0 / 2.0))) == (Real.div(Real.cos((Real.pow(2.0, m) * x)), Real.sin((Real.pow(2.0, m) * x))) - Real.div(((2.0 * (Real.cos((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x)))) - 1.0), (2.0 * (Real.sin((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x)))))));  // sub-goal of `field_simp` (Lean state) // @tac 2406-2443
                    // UNCITED-APPLIED internal ×35 [exec 610 2406-2443]: applications made inside the tactic's own automation, not stated — div_mul_eq_mul_div ×4, inv_eq_one_div ×3, div_div ×3, mul_div_assoc' ×2, mul_one ×1, sub_div' ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1, div_sub' ×1, one_mul ×1; machinery/glue: congrArg ×8, Eq.trans ×7, congr ×2, Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: mul_ne_zero [Lean recorded ×3])
                  }
                  if (!(Real.sin((Real.pow(2.0, (m + 1)) * x)) == 0.0)) {  // sub-goal of `field_simp` (Lean state)
                    // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (1 : ℝ))
                    if ((Real.sin((Real.pow(2.0, m) * x))) != 0.0) && ((Real.cos((Real.pow(2.0, m) * x))) != 0.0) { MulNeZero(Real.sin((Real.pow(2.0, m) * x)), Real.cos((Real.pow(2.0, m) * x))); }  // cite: mul_ne_zero [applied by the tactic, not named in it]
                    if ((Real.sin((Real.pow(2.0, m) * x))) != 0.0) && (((2.0 * (Real.sin((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x))))) != 0.0) { MulNeZero(Real.sin((Real.pow(2.0, m) * x)), (2.0 * (Real.sin((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x))))); }  // cite: mul_ne_zero [applied by the tactic, not named in it]
                    if ((Real.cos((Real.pow(2.0, m) * x))) != 0.0) && (((Real.sin((Real.pow(2.0, m) * x)) * 2.0)) != 0.0) { MulNeZero(Real.cos((Real.pow(2.0, m) * x)), (Real.sin((Real.pow(2.0, m) * x)) * 2.0)); }  // cite: mul_ne_zero [applied by the tactic, not named in it]
                    assert ((Real.sin((Real.pow(2.0, m) * x)) * (2.0 * (Real.sin((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x))))) == (((Real.cos((Real.pow(2.0, m) * x)) * (2.0 * (Real.sin((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x))))) - (Real.sin((Real.pow(2.0, m) * x)) * ((2.0 * (Real.cos((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x)))) - 1.0))) * (Real.cos((Real.pow(2.0, m) * x)) * (Real.sin((Real.pow(2.0, m) * x)) * 2.0)))) by {  // sub-goal of `ring_nf` (Lean state) // @tac 2454-2461
                      PowOne(x);  // cite: pow_one [applied by the tactic, not named in it]
                      NatPowOne(m);  // cite: pow_one [applied by the tactic, not named in it]
                      PowOne(Real.cos((x * Real.pow(2.0, m))));  // cite: pow_one [applied by the tactic, not named in it]
                      // UNCITED-APPLIED mul_one ×2: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := m); (a := (2 : ℝ) ^ m)
                      // UNCITED-APPLIED Nat.cast_one: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
                      // UNCITED-APPLIED internal ×158 [exec 631 2454-2461]: applications made inside the tactic's own automation, not stated — add_zero ×3, mul_one ×2, Nat.cast_one ×1; machinery/glue: Eq.trans ×8, congrArg ×8, Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8 (+45 more heads, ×120) (cited in this block, not counted here: pow_one [Lean recorded ×3])
                    }
                    assert ((Real.div(1.0, Real.cos((Real.pow(2.0, m) * x))) * (Real.div(1.0, Real.sin((Real.pow(2.0, m) * x))) * (1.0 / 2.0))) == (Real.div(Real.cos((Real.pow(2.0, m) * x)), Real.sin((Real.pow(2.0, m) * x))) - Real.div(((2.0 * (Real.cos((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x)))) - 1.0), (2.0 * (Real.sin((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x)))))));  // sub-goal of `field_simp` (Lean state) // @tac 2406-2443
                    // UNCITED-APPLIED internal ×35 [exec 613 2406-2443]: applications made inside the tactic's own automation, not stated — div_mul_eq_mul_div ×4, inv_eq_one_div ×3, div_div ×3, mul_div_assoc' ×2, mul_one ×1, sub_div' ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1, div_sub' ×1, one_mul ×1; machinery/glue: congrArg ×8, Eq.trans ×7, congr ×2, Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: mul_ne_zero [Lean recorded ×3])
                  }
                  assert ((Real.div(1.0, Real.cos((Real.pow(2.0, m) * x))) * (Real.div(1.0, Real.sin((Real.pow(2.0, m) * x))) * (1.0 / 2.0))) == (Real.div(Real.cos((Real.pow(2.0, m) * x)), Real.sin((Real.pow(2.0, m) * x))) - Real.div(((2.0 * (Real.cos((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x)))) - 1.0), (2.0 * (Real.sin((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x)))))));  // sub-goal of `by_cases` (Lean state) // @tac 2344-2391
                }
                assert ((Real.div(1.0, Real.cos((Real.pow(2.0, m) * x))) * (Real.div(1.0, Real.sin((Real.pow(2.0, m) * x))) * (1.0 / 2.0))) == (Real.div(Real.cos((Real.pow(2.0, m) * x)), Real.sin((Real.pow(2.0, m) * x))) - Real.div(((2.0 * (Real.cos((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x)))) - 1.0), (2.0 * (Real.sin((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x)))))));  // sub-goal of `by_cases` (Lean state) // @tac 2292-2339
              }
              assert ((Real.div(1.0, Real.cos((Real.pow(2.0, m) * x))) * (Real.div(1.0, Real.sin((Real.pow(2.0, m) * x))) * (1.0 / 2.0))) == (Real.div(Real.cos((Real.pow(2.0, m) * x)), Real.sin((Real.pow(2.0, m) * x))) - Real.div(((2.0 * (Real.cos((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x)))) - 1.0), (2.0 * (Real.sin((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0, m) * x)))))));  // sub-goal of `by_cases` (Lean state) // @tac 2239-2279
            }
          }
        }
      }
      // [TACTIC: «_<;>_» [ h₃ ] rw [ h₃ ] <;> nlinarith nlinarith]
      // [TACTIC: choice [ h₃ ] rw [ h₃ ]]
      // UNCITED-APPLIED congrArg((1 : ℝ) / sin ((2 : ℝ) ^ (m + (1 : ℕ)) * x), (1 : ℝ) / tan ((2 : ℝ) ^ m * x) - (1 : ℝ) / tan ((2 : ℝ) ^ (m + (1 : …, fun (_a : ℝ) => (1 : ℝ) / tan x - (1 : ℝ) / tan ((2 : ℝ) ^ m * x) + _…): no library counterpart (not stated) [exec 659 2629-2638]
      assert (((Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan((Real.pow(2.0, m) * x)))) + (Real.div(1.0, Real.tan((Real.pow(2.0, m) * x))) - Real.div(1.0, Real.tan((Real.pow(2.0, (m + 1)) * x))))) == (Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan((Real.pow(2.0, (m + 1)) * x))))) by {  // sub-goal of `nlinarith` (Lean state) // @tac 2647-2656
        // UNCITED-APPLIED Nat.cast_one: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
        // UNCITED-APPLIED Nat.cast_zero: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
        // UNCITED-APPLIED internal ×11 [exec 694 2647-2656]: applications made inside the tactic's own automation, not stated — CancelDenoms.sub_subst ×5, sub_neg_of_lt ×2, CancelDenoms.add_subst ×1; machinery/glue: Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1, Linarith.lt_irrefl ×1
        // UNCITED-APPLIED internal ×91 [exec 695 2647-2656]: applications made inside the tactic's own automation, not stated — Nat.cast_one ×1, Nat.cast_zero ×1; machinery/glue: Mathlib.Tactic.Ring.sub_congr ×4, Mathlib.Meta.NormNum.IsInt.to_isNat ×4, Mathlib.Tactic.Ring.sub_pf ×4, Mathlib.Tactic.Ring.neg_add ×4 (+34 more heads, ×73)
        // UNCITED-APPLIED internal ×92 [exec 696 2647-2656]: applications made inside the tactic's own automation, not stated — Nat.cast_one ×1, Nat.cast_zero ×1; machinery/glue: Mathlib.Tactic.Ring.sub_congr ×4, Mathlib.Meta.NormNum.IsInt.to_isNat ×4, Mathlib.Tactic.Ring.sub_pf ×4, Mathlib.Tactic.Ring.neg_add ×4 (+35 more heads, ×74)
      }
    }
  }
  // have apply_induction : ∀ (n : ℕ), (0 : ℕ) < n → ∑ k ∈ Finset.Icc (1 : ℕ) n, (1 : ℝ) / Real.sin ((2 : ℝ) ^ k * x) = (1 : ℝ) / Real.tan  [type from Lean state]
  forall n: nat | (0 < n) // @tac 2820-2832
    ensures (Real.sum(IccN(1, n), ((k: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, k) * x))))) == (Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan((Real.pow(2.0, n) * x))))) // @tac 2837-3476
  {
    // [TACTIC: intro n h₁]
    // induction n → recursive lemma induction_helper_1
    induction_helper_1(n, x);
  }
  // have final_conclusion : ∑ k ∈ Finset.Icc (1 : ℕ) n, (1 : ℝ) / Real.sin ((2 : ℝ) ^ k * x) = (1 : ℝ) / Real.tan x - (1 : ℝ) / Real.tan (  [type from Lean state]
  assert (Real.sum(IccN(1, n), ((k: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, k) * x))))) == (Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan((Real.pow(2.0, n) * x))))) by { // @tac 3616-3654 // @tac 3616-3637
    // [TACTIC: «_<;>_» apply_induction apply apply_induction <;> simp_all simp_all simp_all]
    // [TACTIC: choice apply_induction apply apply_induction]
    assert ((0 < n) ==> (Real.sum(IccN(1, n), ((k: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, k) * x))))) == (Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan((Real.pow(2.0, n) * x))))));  // instance of apply_induction (Lean state: `apply` leaves its premises as goals)
    assert (0 < n);  // sub-goal of `simp_all` (Lean state) // @tac 3646-3654
    // UNCITED-APPLIED internal ×2 [exec 778 3646-3654]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1
    // UNCITED-APPLIED instance of apply_induction: `∑ k ∈ Finset.Icc (1 : ℕ) n, (1 : ℝ) / Real.sin ((2 : ℝ) ^ k * x) = (1 : ℝ) / Real.tan x - (1 : ℝ) / Real.tan ((2 : ℝ) ^ n * x)` — Lean's proof of final_conclusion applies it (by a tactic that does not name it, or one whose instance could not be rendered in scope here); not stated
  }
  // have h₂ :   [type from Lean state]
  assert (0 < n) by {
    // [TACTIC: exact h₁]
    assert (0 < n);
  }
  // have h₃ :   [type from Lean state]
  assert (Real.div(1.0, Real.sin((2.0 * x))) == (Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan((2.0 * x)))));
    // [TACTIC: exact base_case]
  // have h₄ :   [type from Lean state]
  assert ((0 < 0) ==> ((Real.sum(IccN(1, 0), ((k: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, k) * x))))) == (Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan((Real.pow(2.0, 0) * x))))) ==> (Real.sum(IccN(1, (0 + 1)), ((k: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, k) * x))))) == (Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan((Real.pow(2.0, (0 + 1)) * x))))))) by {
    // [TACTIC: exact inductive_step ( 0 )]
    assert ((0 < 0) ==> ((Real.sum(IccN(1, 0), ((k: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, k) * x))))) == (Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan((Real.pow(2.0, 0) * x))))) ==> (Real.sum(IccN(1, (0 + 1)), ((k: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, k) * x))))) == (Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan((Real.pow(2.0, (0 + 1)) * x)))))));  // instance of inductive_step (Lean state)
  }
  // have h₅ :   [type from Lean state]
  assert ((0 < 0) ==> (Real.sum(IccN(1, 0), ((k: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, k) * x))))) == (Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan((Real.pow(2.0, 0) * x)))))) by {
    // [TACTIC: exact apply_induction ( 0 )]
    assert ((0 < 0) ==> (Real.sum(IccN(1, 0), ((k: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, k) * x))))) == (Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan((Real.pow(2.0, 0) * x))))));  // instance of apply_induction (Lean state)
  }
  // have h₆ :   [type from Lean state]
  assert (Real.sum(IccN(1, n), ((k: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, k) * x))))) == (Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan((Real.pow(2.0, n) * x)))));
    // [TACTIC: exact final_conclusion]
  // [TACTIC: simpAll]
  if (forall x_0 :: x_0 in (IccN(1, n)) ==> (((k: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, k) * x)))))(x_0) == (((x_1: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, x_1) * x)))))(x_0)) { FinsetSumApply(IccN(1, n), ((k: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, k) * x)))), ((x_1: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, x_1) * x))))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
  // UNCITED-APPLIED internal ×19 [exec 839 3802-3810]: applications made inside the tactic's own automation, not stated — one_div ×5, implies_congr_ctx ×1; machinery/glue: congr ×4, congrArg ×3, Eq.trans ×2, of_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Finset.sum_congr [Lean recorded ×2])
}



// ===== closed lemma for line 77 (from closed/imo_1966_p4-77.dfy) =====

// ---- pass2 helpers (all proved; no axioms) ----
// Z3 (legacy arith) does not propagate equalities between nonlinear products into EUF, and Dafny
// gives compound lemma arguments fresh locals; these congruence tautologies with explicit triggers
// let E-matching relate the exact goal terms instead.
lemma SinExt() ensures forall a: real, b: real {:trigger Real.sin(a), Real.sin(b)} :: a == b ==> Real.sin(a) == Real.sin(b) { }  // [ADDED DECLARATION]
lemma TanExt() ensures forall a: real, b: real {:trigger Real.tan(a), Real.tan(b)} :: a == b ==> Real.tan(a) == Real.tan(b) { }  // [ADDED DECLARATION]
lemma PowExt() ensures forall a: nat, b: nat {:trigger Real.pow(2.0, a), Real.pow(2.0, b)} :: a == b ==> Real.pow(2.0, a) == Real.pow(2.0, b) { }  // [ADDED DECLARATION]
lemma IccExt() ensures forall a: nat, b: nat {:trigger IccN(1, a), IccN(1, b)} :: a == b ==> IccN(1, a) == IccN(1, b) { }  // [ADDED DECLARATION]

// 1/sin(2y) = 1/tan(y) - 1/tan(2y), unconditionally under Lean's a/0 = 0 (Real.div)
lemma CotIdentity(y: real)  // [ADDED DECLARATION]
  ensures Real.div(1.0, Real.sin(2.0 * y)) == Real.div(1.0, Real.tan(y)) - Real.div(1.0, Real.tan(2.0 * y))
{
  RealSinTwoMul(y); RealCosTwoMul(y); RealTanEqSinDivCos(y); RealTanEqSinDivCos(2.0 * y);
  var s := Real.sin(y); var c := Real.cos(y);
  var s2 := Real.sin(2.0 * y); var c2 := Real.cos(2.0 * y);
  assert s2 == 2.0 * s * c;
  assert c2 == 2.0 * c * c - 1.0;
  var t := Real.tan(y); var t2 := Real.tan(2.0 * y);
  assert t == Real.div(s, c);
  assert t2 == Real.div(s2, c2);
  var L := Real.div(1.0, s2); var u := Real.div(1.0, t); var v := Real.div(1.0, t2);
  if s == 0.0 {
    assert s2 == 0.0;
    assert L == 0.0;
    assert t == 0.0;
    assert t2 == 0.0;
    assert u == 0.0;
    assert v == 0.0;
  } else if c == 0.0 {
    assert s2 == 0.0;
    assert L == 0.0;
    assert t == 0.0;
    assert c2 == -1.0;
    assert t2 == 0.0;
    assert u == 0.0;
    assert v == 0.0;
  } else {
    assert s2 != 0.0;
    assert L * s2 == 1.0;
    assert t * c == s;
    assert t != 0.0;
    assert u * t == 1.0;
    assert u * s == c by { assert u * s == u * (t * c); }
    assert u * s2 == 2.0 * c * c by { assert u * s2 == 2.0 * (u * s) * c; }
    if c2 == 0.0 {
      assert t2 == 0.0;
      assert v == 0.0;
      assert u * s2 == 1.0;
      assert (u - L) * s2 == 0.0;
      assert u - L == 0.0;
    } else {
      assert t2 * c2 == s2;
      assert t2 != 0.0;
      assert v * t2 == 1.0;
      assert v * s2 == c2 by { assert v * s2 == v * (t2 * c2); }
      assert (u - v) * s2 == 1.0;
      assert (u - v - L) * s2 == 0.0;
      assert u - v - L == 0.0;
    }
  }
}

lemma CotStep(m: nat, x: real)  // [ADDED DECLARATION]
  ensures Real.div(1.0, Real.sin(Real.pow(2.0, m + 1) * x)) == Real.div(1.0, Real.tan(Real.pow(2.0, m) * x)) - Real.div(1.0, Real.tan(Real.pow(2.0, m + 1) * x))
{
  SinExt(); TanExt();
  var y := Real.pow(2.0, m) * x;
  CotIdentity(y);
  PowSucc(2.0, m);
  assert Real.pow(2.0, m + 1) * x == 2.0 * y;
  assert Real.sin(2.0 * y) == Real.sin(Real.pow(2.0, m + 1) * x);
  assert Real.tan(2.0 * y) == Real.tan(Real.pow(2.0, m + 1) * x);
  assert Real.tan(y) == Real.tan(Real.pow(2.0, m) * x);
}

lemma BetaCore(m: nat, x: real, p: real)  // [ADDED DECLARATION]
  requires p == Real.pow(2.0, m + 1)
  ensures ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))(m + 1) == Real.div(1.0, Real.sin(p * x))
{
  assert ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))(m + 1) == Real.div(1.0, Real.sin(p * x)) by {
    assert ((k: nat) => Real.pow(2.0, k) * x)(m + 1) == p * x;
  }
}

lemma BetaTermSucc(m: nat, x: real)  // [ADDED DECLARATION]
  ensures ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))(m + 1) == Real.div(1.0, Real.sin(Real.pow(2.0, m + 1) * x))
{
  BetaCore(m, x, Real.pow(2.0, m + 1));
}

lemma SumStep(m: nat, x: real)  // [ADDED DECLARATION]
  requires Real.sum(IccN(1, m), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, m) * x))
  ensures Real.sum(IccN(1, m + 1), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, m + 1) * x))
{
  FinsetSumIccSuccTopNat(1, m, ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x))));
  BetaTermSucc(m, x);
  CotStep(m, x);
}

lemma BaseTan(n: nat, x: real) requires Real.pow(2.0, n) == 1.0 ensures Real.tan(Real.pow(2.0, n) * x) == Real.tan(x) { }  // [ADDED DECLARATION]
lemma BaseSum(n: nat, x: real) requires n == 0 ensures Real.sum(IccN(1, n), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == 0.0 { assert IccN(1, n) == {}; }  // [ADDED DECLARATION]
lemma BaseFinish(n: nat, x: real)  // [ADDED DECLARATION]
  requires Real.tan(Real.pow(2.0, n) * x) == Real.tan(x)
  requires Real.sum(IccN(1, n), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == 0.0
  ensures Real.sum(IccN(1, n), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, n) * x))
{ }

lemma BaseAll1(n: nat, x: real)  // [ADDED DECLARATION]
  requires n == 0
  ensures Real.sum(IccN(1, n), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, n) * x))
{
  PowZero(2.0);
  assert Real.pow(2.0, n) == 1.0;
  BaseTan(n, x);
  BaseSum(n, x);
  BaseFinish(n, x);
}
// the theorem's statement for every n (n = 0 included: both sides are 0). The two cases live in
// separate lemmas: facts of the other branch pollute the (nonlinear) VC of the ensures check.
lemma {:induction false} SumIdentityRec(n: nat, x: real)  // [ADDED DECLARATION]
  requires 0 < n
  ensures Real.sum(IccN(1, n), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, n) * x))
  decreases n, 0
{
  PowExt(); IccExt(); TanExt();
  var m: nat := n - 1;
  SumIdentity(m, x);
  SumStep(m, x);
  assert m + 1 == n;
  assert IccN(1, m + 1) == IccN(1, n);
  assert Real.pow(2.0, m + 1) == Real.pow(2.0, n);
  assert Real.pow(2.0, m + 1) * x == Real.pow(2.0, n) * x;
  assert Real.tan(Real.pow(2.0, m + 1) * x) == Real.tan(Real.pow(2.0, n) * x);
}
lemma {:induction false} SumIdentity(n: nat, x: real)  // [ADDED DECLARATION]
  ensures Real.sum(IccN(1, n), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, n) * x))
  decreases n, 1
{
  if n == 0 { BaseAll1(n, x); } else { SumIdentityRec(n, x); }
}
// ---- end helpers ----
lemma {:induction false} vc_imo_1966_p4_L77(n_1_0_0: int, n_1_0_1_0: int, x: real)
  requires 0 <= n_1_0_1_0
  requires 0 < n_1_0_0 + 1
  requires 0 <= 1
  requires 0 <= n_1_0_0 + 1
  ensures   Real.sum(IccN(1, n_1_0_0 + 1), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, n_1_0_0 + 1) * x))
{
  PowExt(); IccExt(); TanExt();  // [ADDED]
  var N: nat := n_1_0_0 + 1;  // [ADDED]
  SumIdentity(N, x);  // [ADDED]
  assert IccN(1, N) == IccN(1, n_1_0_0 + 1);  // [ADDED]
  assert Real.pow(2.0, N) == Real.pow(2.0, n_1_0_0 + 1);  // [ADDED]
  assert Real.pow(2.0, N) * x == Real.pow(2.0, n_1_0_0 + 1) * x;  // [ADDED]
  assert Real.tan(Real.pow(2.0, N) * x) == Real.tan(Real.pow(2.0, n_1_0_0 + 1) * x);  // [ADDED]
}
