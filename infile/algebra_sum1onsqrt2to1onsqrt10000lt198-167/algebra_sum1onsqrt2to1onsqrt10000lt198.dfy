// ════════════════════════════════════════════════════════════
// MECHANICAL TRANSLATION (emitter v2) of ast_cache_v2/algebra_sum1onsqrt2to1onsqrt10000lt198.json
// Each Lean `have` → `assert ... by {}` at the same depth;
// quantified haves → forall statements. Typed pipeline only.
// ════════════════════════════════════════════════════════════

include "../../library/library_new.dfy"

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_1(k: nat)
  ensures ((2.0 - (k as real)) + (((k as real) - 1.0) - 1.0)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_2(k: nat)
  ensures ((-((2.0 * 1.0)) + (2.0 - (k as real))) + (k as real)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₉`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_3(k: nat)
  ensures ((-(1.0) + (2.0 - (k as real))) + ((k as real) - 1.0)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₁₀/h₁₀₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_4(k: nat)
  ensures ((-(1.0) + (2.0 - (k as real))) + ((k as real) - 1.0)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₁₀/h₁₀₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_5(k: nat)
  ensures (-(1.0) + ((k as real) - ((k as real) - 1.0))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₁₀/h₁₀₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_6(k: nat)
  ensures ((Real.sqrt(((k as real) - 1.0)) - Real.sqrt((k as real))) + (Real.sqrt((k as real)) - Real.sqrt(((k as real) - 1.0)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₁₀/h₁₀₄/this`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_7(k: nat)
  ensures (((((Real.sqrt((k as real)) - Real.sqrt(((k as real) - 1.0))) * (Real.sqrt((k as real)) + Real.sqrt(((k as real) - 1.0)))) - 1.0) + -(((Real.sqrt((k as real)) * Real.sqrt((k as real))) - (k as real)))) + ((Real.sqrt(((k as real) - 1.0)) * Real.sqrt(((k as real) - 1.0))) - ((k as real) - 1.0))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₁₀/h₁₀₄/this`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_8(k: nat)
  ensures (((1.0 - ((Real.sqrt((k as real)) - Real.sqrt(((k as real) - 1.0))) * (Real.sqrt((k as real)) + Real.sqrt(((k as real) - 1.0))))) + ((Real.sqrt((k as real)) * Real.sqrt((k as real))) - (k as real))) + -(((Real.sqrt(((k as real) - 1.0)) * Real.sqrt(((k as real) - 1.0))) - ((k as real) - 1.0)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₁₀/h₁₀₄/this`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_9(k: nat)
  ensures ((-((2.0 * 1.0)) + (2.0 - (k as real))) + (k as real)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₁₀/h₁₀₄/this`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_10(k: nat)
  ensures ((-(1.0) + (2.0 - (k as real))) + ((k as real) - 1.0)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₁₀/h₁₀₆/h₁₀₇/h₁₀₈/h₁₀₉`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_11(k: nat)
  ensures (-((((Real.sqrt((k as real)) - Real.sqrt(((k as real) - 1.0))) * (Real.sqrt((k as real)) + Real.sqrt(((k as real) - 1.0)))) - 1.0)) + (((Real.sqrt((k as real)) - Real.sqrt(((k as real) - 1.0))) * (Real.sqrt((k as real)) + Real.sqrt(((k as real) - 1.0)))) - 1.0)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₁₀/h₁₀₆/h₁₀₇/h₁₀₈/h₁₀₉`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_12(k: nat)
  ensures ((((Real.sqrt((k as real)) - Real.sqrt(((k as real) - 1.0))) * (Real.sqrt((k as real)) + Real.sqrt(((k as real) - 1.0)))) - 1.0) + (1.0 - ((Real.sqrt((k as real)) - Real.sqrt(((k as real) - 1.0))) * (Real.sqrt((k as real)) + Real.sqrt(((k as real) - 1.0)))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₁/h₁₀/h₁₀₆/h₁₀₇/h₁₀₈/h₁₁₀/h₁₁₂`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_13(k: nat)
  requires (0.0 < Real.sqrt((k as real)))
  requires (0.0 < (Real.sqrt((k as real)) + Real.sqrt(((k as real) - 1.0))))
  ensures (0.0 < (Real.sqrt((k as real)) * (Real.sqrt((k as real)) + Real.sqrt(((k as real) - 1.0)))))
{
  MulPos(Real.sqrt((k as real)), (Real.sqrt((k as real)) + Real.sqrt(((k as real) - 1.0))));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₁₀/h₁₀₆/h₁₀₇/h₁₀₈/h₁₁₀`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_14(k: nat)
  ensures ((Real.sqrt(((k as real) - 1.0)) - Real.sqrt((k as real))) + ((2.0 * Real.sqrt((k as real))) - (1.0 * (Real.sqrt((k as real)) + Real.sqrt(((k as real) - 1.0)))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₁₀/h₁₀₆/h₁₀₇/h₁₀₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_15(k: nat)
  ensures (((1.0 * Real.div(1.0, Real.sqrt((k as real)))) - ((1.0 * 2.0) * (1.0 * Real.div(1.0, (Real.sqrt((k as real)) + Real.sqrt(((k as real) - 1.0))))))) + (((1.0 * 2.0) * (1.0 * Real.div(1.0, (Real.sqrt((k as real)) + Real.sqrt(((k as real) - 1.0)))))) - (1.0 * Real.div(1.0, Real.sqrt((k as real)))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₁₀/h₁₀₆/h₁₀₇`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_16(k: nat)
  ensures (((1.0 * Real.div(1.0, Real.sqrt((k as real)))) - ((1.0 * 2.0) * ((1.0 * Real.sqrt((k as real))) - (1.0 * Real.sqrt(((k as real) - 1.0)))))) + (((1.0 * 2.0) * ((1.0 * Real.sqrt((k as real))) - (1.0 * Real.sqrt(((k as real) - 1.0))))) - (1.0 * Real.div(1.0, Real.sqrt((k as real)))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₁₀/h₁₀₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_17(k: nat)
  ensures (((1.0 * Real.div(1.0, Real.sqrt((k as real)))) - ((1.0 * 2.0) * ((1.0 * Real.sqrt((k as real))) - (1.0 * Real.sqrt(((k as real) - 1.0)))))) + (((1.0 * 2.0) * ((1.0 * Real.sqrt((k as real))) - (1.0 * Real.sqrt(((k as real) - 1.0))))) - (1.0 * Real.div(1.0, Real.sqrt((k as real)))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁/h₁₀`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_18(k: nat)
  ensures (((1.0 * Real.div(1.0, Real.sqrt((k as real)))) - ((1.0 * 2.0) * ((1.0 * Real.sqrt((k as real))) - (1.0 * Real.sqrt(((k as real) - 1.0)))))) + (((1.0 * 2.0) * ((1.0 * Real.sqrt((k as real))) - (1.0 * Real.sqrt(((k as real) - 1.0))))) - (1.0 * Real.div(1.0, Real.sqrt((k as real)))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// R14 — recursive lemma for `induction' n` (from-2 / Nat.le): proves P(n+1) for n >= 1
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} induction_helper_1(n: nat)
  requires (forall k: nat :: ((k in IccN(2, 10000)) ==> (Real.div(1.0, Real.sqrt((k as real))) < (2.0 * (Real.sqrt((k as real)) - Real.sqrt(((k as real) - 1.0)))))))  // ambient have h₁
  requires n >= 1  // Lean: Nat.le 2 (n + 1)
  ensures (Real.sum(IccN(2, (n + 1)), ((k: nat) => (2.0 * (Real.sqrt((k as real)) - Real.sqrt(((k as real) - 1.0)))))) == (2.0 * (Real.sqrt(((n + 1) as real)) - Real.sqrt(1.0))))
  decreases n
{
  if n == 1 {
    // base: P(2) — Lean base case
    assert 0 <= 1;  /* [IN-FILE CHECK] requires 1 of vc_algebra_sum1onsqrt2to1onsqrt10000lt198_L167 */
    assert 0 <= n;  /* [IN-FILE CHECK] requires 2 of vc_algebra_sum1onsqrt2to1onsqrt10000lt198_L167 */
    assert forall k_1: int :: 0 <= k_1 ==> k_1 in IccN(2, 10000) ==> Real.div(1.0, Real.sqrt((k_1 as real))) < 2.0 * (Real.sqrt((k_1 as real)) - Real.sqrt((k_1 as real) - 1.0));  /* [IN-FILE CHECK] requires 3 of vc_algebra_sum1onsqrt2to1onsqrt10000lt198_L167 */
    assert 1 >= 1;  /* [IN-FILE CHECK] requires 4 of vc_algebra_sum1onsqrt2to1onsqrt10000lt198_L167 */
    assert 1 == 1;  /* [IN-FILE CHECK] requires 5 of vc_algebra_sum1onsqrt2to1onsqrt10000lt198_L167 */
    assert 0 <= 2;  /* [IN-FILE CHECK] requires 6 of vc_algebra_sum1onsqrt2to1onsqrt10000lt198_L167 */
    vc_algebra_sum1onsqrt2to1onsqrt10000lt198_L167(1, n);  /* [IN-FILE CHECK] the closed lemma for line 167 */
    assert (Real.sum(IccN(2, 2), ((k: nat) => (2.0 * (Real.sqrt((k as real)) - Real.sqrt(((k as real) - 1.0)))))) == (2.0 * (Real.sqrt((2 as real)) - Real.sqrt(1.0)))) by {  // sub-goal before `norm_num` (Lean state) // @tac 4396-4430 // @tac 4393-4430
      // [TACTIC: «Norm_num[_]At___» [ Finset.sum_Icc_succ_top ]]
      // UNCITED Finset.sum_Icc_succ_top: named in this rewriting step; no record of Lean's proof attributes an application of it to this execution (its recorded applications are at other tactics of the proof; a rewrite at a hypothesis is filed under the tactic that later uses the hypothesis, and a conditional / under-binder simp rewrite may be unrecorded), so whether it was applied here is not known; not stated
      // UNCITED-APPLIED Finset.sum_congr: recorded instance not expressible here (sort/type/scope), not guessed
      FinsetIccSelfNat(2);  // cite: Finset.Icc_self [applied by the tactic, not named in it]
      // UNCITED-APPLIED Finset.sum_singleton: recorded instance not expressible here (sort/type/scope), not guessed
      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
      // UNCITED-APPLIED internal ×26 [exec 628 4396-4430]: applications made inside the tactic's own automation, not stated — Finset.sum_congr ×1, Finset.sum_singleton ×1; machinery/glue: congrArg ×5, Eq.trans ×4, congr ×3, Mathlib.Meta.NormNum.IsNat.to_eq ×2 (+8 more heads, ×10) (cited in this block, not counted here: Finset.Icc_self [Lean recorded ×1], Nat.cast_one [Lean recorded ×1])
    }
  } else {
    induction_helper_1(n - 1);   // IH: P(n)
    if ((2 <= n)) {  // sub-goal before `cases` (Lean state)
      // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
      // UNCITED-APPLIED Eq.symm ×1: 1 of Lean's 2 recorded instances here have no statement above (which ones is not decided) — Lean's instances: Eq.symm(n, (0 : ℕ)); Eq.symm(n✝, n + (1 : ℕ)) [exec 633 4444-6664]
      // cases n (zero / succ)
      if n == 0 {
        if ((2 <= 0)) && ((Real.sum(IccN(2, 0), ((k: nat) => (2.0 * (Real.sqrt((k as real)) - Real.sqrt(((k as real) - 1.0)))))) == (2.0 * (Real.sqrt((0 as real)) - Real.sqrt(1.0))))) {  // sub-goal before `contradiction` (Lean state)
          // [TACTIC: contradiction]
          assert (Real.sum(IccN(2, (0 + 1)), ((k: nat) => (2.0 * (Real.sqrt((k as real)) - Real.sqrt(((k as real) - 1.0)))))) == (2.0 * (Real.sqrt(((0 + 1) as real)) - Real.sqrt(1.0))));  // sub-goal before `contradiction` (Lean state) // @tac 4479-4492
        }
      } else {
        var n: nat := n - 1;
        if ((2 <= (n + 1))) && ((Real.sum(IccN(2, (n + 1)), ((k: nat) => (2.0 * (Real.sqrt((k as real)) - Real.sqrt(((k as real) - 1.0)))))) == (2.0 * (Real.sqrt(((n + 1) as real)) - Real.sqrt(1.0))))) {  // sub-goal before `cases` (Lean state)
          // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
          // UNCITED-APPLIED Eq.symm ×1: 1 of Lean's 2 recorded instances here have no statement above (which ones is not decided) — Lean's instances: Eq.symm(n, (0 : ℕ)); Eq.symm(n✝, n + (1 : ℕ)) [exec 642 4531-6664]
          // cases n (zero / succ)
          if n == 0 {
            if ((2 <= (0 + 1))) && ((Real.sum(IccN(2, (0 + 1)), ((k: nat) => (2.0 * (Real.sqrt((k as real)) - Real.sqrt(((k as real) - 1.0)))))) == (2.0 * (Real.sqrt(((0 + 1) as real)) - Real.sqrt(1.0))))) {  // sub-goal before `contradiction` (Lean state)
              // [TACTIC: contradiction]
              assert (Real.sum(IccN(2, ((0 + 1) + 1)), ((k: nat) => (2.0 * (Real.sqrt((k as real)) - Real.sqrt(((k as real) - 1.0)))))) == (2.0 * (Real.sqrt((((0 + 1) + 1) as real)) - Real.sqrt(1.0))));  // sub-goal before `contradiction` (Lean state) // @tac 4568-4581
            }
          } else {
            var n: nat := n - 1;
            if ((2 <= ((n + 1) + 1))) && ((Real.sum(IccN(2, ((n + 1) + 1)), ((k: nat) => (2.0 * (Real.sqrt((k as real)) - Real.sqrt(((k as real) - 1.0)))))) == (2.0 * (Real.sqrt((((n + 1) + 1) as real)) - Real.sqrt(1.0))))) {  // sub-goal before `simp_all` (Lean state)
              // [TACTIC: «_<;>_» [ Finset.sum_Icc_succ_top , Nat.cast_add , Nat.cast_one , Nat.cast_zero , Nat.cast_succ ] simp_all [ Finset.sum_Icc_succ_top , Nat.cast_add , Nat.cast_one , Nat.cast_zero , Nat.cast_succ ] simp_all [ Finset.sum_Icc_succ_top , Nat.cast_add , Nat.cast_one , Nat.cast_zero , Nat.cast_succ ] <;> ring_nf at * <;> field_simp at * <;> ring_nf at * <;> norm_num at * <;> ( try { nlinarith [ Real.sqrt_nonneg ( n + 1 + 1 : ℝ ) , Real.sqrt_nonneg ( n + 1 : ℝ ) , Real.sqrt_nonneg ( n + 1 + 1 - 1 : ℝ ) , Real.sq_sqrt ( show ( 0 : ℝ ) ≤ ( n + 1 + 1 : ℝ ) by positivity ) , Real.sq_sqrt ( show ( 0 : ℝ ) ≤ ( n + 1 : ℝ ) by positivity ) , Real.sq_sqrt ( show ( 0 : ℝ ) ≤ ( n + 1 + 1 - 1 : ℝ ) by { norm_num norm_num <;> nlinarith nlinarith } ) ] nlinarith [ Real.sqrt_nonneg ( n + 1 + 1 : ℝ ) , Real.sqrt_nonneg ( n + 1 : ℝ ) , Real.sqrt_nonneg ( n + 1 + 1 - 1 : ℝ ) , Real.sq_sqrt ( show ( 0 : ℝ ) ≤ ( n + 1 + 1 : ℝ ) by positivity ) , Real.sq_sqrt ( show ( 0 : ℝ ) ≤ ( n + 1 : ℝ ) by positivity ) , Real.sq_sqrt ( show ( 0 : ℝ ) ≤ ( n + 1 + 1 - 1 : ℝ ) by { norm_num norm_num <;> nlinarith nlinarith } ) ] } ) <;> ( try { nlinarith [ Real.sqrt_nonneg ( n + 1 + 1 : ℝ ) , Real.sqrt_nonneg ( n + 1 : ℝ ) , Real.sqrt_nonneg ( n + 1 + 1 - 1 : ℝ ) , Real.sq_sqrt ( show ( 0 : ℝ ) ≤ ( n + 1 + 1 : ℝ ) by positivity ) , Real.sq_sqrt ( show ( 0 : ℝ ) ≤ ( n + 1 : ℝ ) by positivity ) , Real.sq_sqrt ( show ( 0 : ℝ ) ≤ ( n + 1 + 1 - 1 : ℝ ) by { norm_num norm_num <;> nlinarith nlinarith } ) ] nlinarith [ Real.sqrt_nonneg ( n + 1 + 1 : ℝ ) , Real.sqrt_nonneg ( n + 1 : ℝ ) , Real.sqrt_nonneg ( n + 1 + 1 - 1 : ℝ ) , Real.sq_sqrt ( show ( 0 : ℝ ) ≤ ( n + 1 + 1 : ℝ ) by positivity ) , Real.sq_sqrt ( show ( 0 : ℝ ) ≤ ( n + 1 : ℝ ) by positivity ) , Real.sq_sqrt ( show ( 0 : ℝ ) ≤ ( n + 1 + 1 - 1 : ℝ ) by { norm_num norm_num <;> nlinarith nlinarith } ) ] } ) <;> ( try { nlinarith [ Real.sqrt_nonneg ( n + 1 + 1 : ℝ ) , Real.sqrt_nonneg ( n + 1 : ℝ ) , Real.sqrt_nonneg ( n + 1 + 1 - 1 : ℝ ) , Real.sq_sqrt ( show ( 0 : ℝ ) ≤ ( n + 1 + 1 : ℝ ) by positivity ) , Real.sq_sqrt ( show ( 0 : ℝ ) ≤ ( n + 1 : ℝ ) by positivity ) , Real.sq_sqrt ( show ( 0 : ℝ ) ≤ ( n + 1 + 1 - 1 : ℝ ) by { norm_num norm_num <;> nlinarith nlinarith } ) ] nlinarith [ Real.sqrt_nonneg ( n + 1 + 1 : ℝ ) , Real.sqrt_nonneg ( n + 1 : ℝ ) , Real.sqrt_nonneg ( n + 1 + 1 - 1 : ℝ ) , Real.sq_sqrt ( show ( 0 : ℝ ) ≤ ( n + 1 + 1 : ℝ ) by positivity ) , Real.sq_sqrt ( show ( 0 : ℝ ) ≤ ( n + 1 : ℝ ) by positivity ) , Real.sq_sqrt ( show ( 0 : ℝ ) ≤ ( n + 1 + 1 - 1 : ℝ ) by { norm_num norm_num <;> nlinarith nlinarith } ) ] } )]
              // [TACTIC: choice [ Finset.sum_Icc_succ_top , Nat.cast_add , Nat.cast_one , Nat.cast_zero , Nat.cast_succ ] simp_all [ Finset.sum_Icc_succ_top , Nat.cast_add , Nat.cast_one , Nat.cast_zero , Nat.cast_succ ] simp_all [ Finset.sum_Icc_succ_top , Nat.cast_add , Nat.cast_one , Nat.cast_zero , Nat.cast_succ ]]
              // UNCITED Nat.cast_add: no Lean instance recorded (arguments unknown), not guessed
              // UNCITED Nat.cast_one: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
              // UNCITED Nat.cast_zero: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
              NatCastSucc((n + 1));  // cite: Nat.cast_succ
              NatCastSucc(n);  // cite: Nat.cast_succ
              NatCastSucc((n + 2));  // cite: Nat.cast_succ
              // GAP: Finset.sum_Icc_succ_top: this execution also rewrote the hypotheses h₁, IH; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
              // GAP: Nat.cast_succ: this execution also rewrote the hypotheses h₁, IH; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
              // UNCITED-APPLIED internal ×25 [exec 686 4624-4716]: applications made inside the tactic's own automation, not stated — add_sub_cancel_right ×2; machinery/glue: congrArg ×8, congr ×7, Eq.trans ×7, of_eq_true ×1 (cited in this block, not counted here: Finset.sum_Icc_succ_top [Lean recorded ×2], Nat.cast_succ [Lean recorded ×3])
              assert (forall k: nat :: ((2 <= k) ==> ((k <= 10000) ==> (Real.div(1.0, Real.sqrt((k as real))) < (2.0 * (Real.sqrt((k as real)) - Real.sqrt(((k as real) - 1.0))))))));  // hypothesis h₁ after `simp_all` (Lean state) // @tac-hyp 4624-4716
              assert ((Real.sum(IccN(2, (n + 1)), ((k: nat) => (2.0 * (Real.sqrt((k as real)) - Real.sqrt(((k as real) - 1.0)))))) + (2.0 * (Real.sqrt((((n as real) + 1.0) + 1.0)) - Real.sqrt(((n as real) + 1.0))))) == (2.0 * (Real.sqrt((((n as real) + 1.0) + 1.0)) - 1.0)));  // hypothesis IH after `simp_all` (Lean state) // @tac-hyp 4624-4716
              assert (((2.0 * (Real.sqrt((((n as real) + 1.0) + 1.0)) - 1.0)) + (2.0 * (Real.sqrt(((((n as real) + 1.0) + 1.0) + 1.0)) - Real.sqrt((((n as real) + 1.0) + 1.0))))) == (2.0 * (Real.sqrt(((((n as real) + 1.0) + 1.0) + 1.0)) - 1.0))) by {  // sub-goal of `ring_nf` (Lean state) // @tac 4737-4749
                NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
                PowOne((n as real));  // cite: pow_one [applied by the tactic, not named in it]
                PowOne(Real.sqrt((3.0 + (n as real))));  // cite: pow_one [applied by the tactic, not named in it]
                // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := ↑n)
                // UNCITED-APPLIED internal ×105 [exec 695 4737-4749]: applications made inside the tactic's own automation, not stated — add_zero ×2, mul_one ×1; machinery/glue: Eq.trans ×8, congrArg ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Tactic.Ring.mul_add ×5 (+37 more heads, ×73) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], pow_one [Lean recorded ×2])
              }
              // [TACTIC: try { nlinarith [ Real.sqrt_nonneg ( n + 1 + 1 : ℝ ) , Real.sqrt_nonneg ( n + 1 : ℝ ) , Real.sqrt_nonneg ( n + 1 + 1 - 1]  NOT RUN in Lean (no execution recorded)
              // [TACTIC: ( try { nlinarith [ Real.sqrt_nonneg ( n + 1 + 1 : ℝ ) , Real.sqrt_nonneg ( n + 1 : ℝ ) , Real.sqrt_nonneg ( n + 1 + 1 -]  NOT RUN in Lean (no execution recorded)
              // [TACTIC: try { nlinarith [ Real.sqrt_nonneg ( n + 1 + 1 : ℝ ) , Real.sqrt_nonneg ( n + 1 : ℝ ) , Real.sqrt_nonneg ( n + 1 + 1 - 1]  NOT RUN in Lean (no execution recorded)
              // [TACTIC: ( try { nlinarith [ Real.sqrt_nonneg ( n + 1 + 1 : ℝ ) , Real.sqrt_nonneg ( n + 1 : ℝ ) , Real.sqrt_nonneg ( n + 1 + 1 -]  NOT RUN in Lean (no execution recorded)
              // [TACTIC: try { nlinarith [ Real.sqrt_nonneg ( n + 1 + 1 : ℝ ) , Real.sqrt_nonneg ( n + 1 : ℝ ) , Real.sqrt_nonneg ( n + 1 + 1 - 1]  NOT RUN in Lean (no execution recorded)
              // [TACTIC: ( try { nlinarith [ Real.sqrt_nonneg ( n + 1 + 1 : ℝ ) , Real.sqrt_nonneg ( n + 1 : ℝ ) , Real.sqrt_nonneg ( n + 1 + 1 -]  NOT RUN in Lean (no execution recorded)
              // [TACTIC: Positivity]
              // [TACTIC: Positivity]
              // [TACTIC: SeqBracketed norm_num norm_num <;> nlinarith nlinarith }]
              // [TACTIC: Positivity]
              // [TACTIC: Positivity]
              // [TACTIC: SeqBracketed norm_num norm_num <;> nlinarith nlinarith }]
              // [TACTIC: Positivity]
              // [TACTIC: Positivity]
              // [TACTIC: SeqBracketed norm_num norm_num <;> nlinarith nlinarith }]
              assert ((2) <= ((n + 1)) + 1);  // precondition of FinsetSumIccSuccTopNat (Lean: Finset.sum_Icc_succ_top)
              FinsetSumIccSuccTopNat(2, (n + 1), ((k: nat) => (2.0 * (Real.sqrt((k as real)) - Real.sqrt(((k as real) - 1.0))))));  // cite: Finset.sum_Icc_succ_top
              assert ((2) <= ((n + 2)) + 1);  // precondition of FinsetSumIccSuccTopNat (Lean: Finset.sum_Icc_succ_top)
              FinsetSumIccSuccTopNat(2, (n + 2), ((k: nat) => (2.0 * (Real.sqrt((k as real)) - Real.sqrt(((k as real) - 1.0))))));  // cite: Finset.sum_Icc_succ_top
              assert (Real.sum(IccN(2, (((n + 1) + 1) + 1)), ((k: nat) => (2.0 * (Real.sqrt((k as real)) - Real.sqrt(((k as real) - 1.0)))))) == (2.0 * (Real.sqrt(((((n + 1) + 1) + 1) as real)) - Real.sqrt(1.0))));  // sub-goal before `simp_all` (Lean state) // @tac 4624-6664 // @tac 4624-6060 // @tac 4624-5456 // @tac 4624-4852 // @tac 4624-4818 // @tac 4624-4785 // @tac 4624-4749 // @tac 4624-4716
            }
          }
          assert (Real.sum(IccN(2, ((n + 1) + 1)), ((k: nat) => (2.0 * (Real.sqrt((k as real)) - Real.sqrt(((k as real) - 1.0)))))) == (2.0 * (Real.sqrt((((n + 1) + 1) as real)) - Real.sqrt(1.0))));  // sub-goal before `cases` (Lean state) // @tac 4531-6664
        }
      }
      assert (Real.sum(IccN(2, (n + 1)), ((k: nat) => (2.0 * (Real.sqrt((k as real)) - Real.sqrt(((k as real) - 1.0)))))) == (2.0 * (Real.sqrt(((n + 1) as real)) - Real.sqrt(1.0))));  // sub-goal before `cases` (Lean state) // @tac 4444-6664 // @tac 4441-6664
    }
  }
}

// ──────────────────────────────────────────────────
// certificate identity for `h₃/h₄/h₅₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_19()
  ensures (((Real.sum(IccN(2, 10000), ((k: nat) => (2.0 * (Real.sqrt((k as real)) - Real.sqrt(((k as real) - 1.0)))))) - 198.0) + ((1.0 * Real.sum(IccN(2, 10000), ((k: nat) => Real.div(1.0, Real.sqrt((k as real)))))) - (1.0 * Real.sum(IccN(2, 10000), ((k: nat) => (2.0 * (Real.sqrt((k as real)) - Real.sqrt(((k as real) - 1.0))))))))) + ((1.0 * 198.0) - (1.0 * Real.sum(IccN(2, 10000), ((k: nat) => Real.div(1.0, Real.sqrt((k as real)))))))) == 0.0
{ }

// statement: Lean elaborated type (v3, stmt_cache) — requires/ensures below
lemma algebra_sum1onsqrt2to1onsqrt10000lt198()
  ensures (Real.sum(IccN(2, 10000), ((k: nat) => Real.div(1.0, Real.sqrt((k as real))))) < 198.0) // @tac 283-3544 // @tac 3550-7158 // @tac 7164-8639 // @tac 8642-8652
{
  // have h₁ : forall ( k : ℕ ) :: k ∈ Finset.Icc ( 2 : ℕ ) 10000 -> 1 / Real.sqrt (   [type from Lean state]
  forall k: nat | (k in IccN(2, 10000)) // @tac 421-431
    ensures (Real.div(1.0, Real.sqrt((k as real))) < (2.0 * (Real.sqrt((k as real)) - Real.sqrt(((k as real) - 1.0))))) // @tac 436-510 // @tac 515-570 // @tac 575-634 // @tac 639-736 // @tac 741-800 // @tac 805-870 // @tac 875-945 // @tac 950-1026 // @tac 1105-3526 // @tac 3531-3544
  {
    // [TACTIC: intro k hk]
    // have h₂ : 2 <= k && k <= 10000  [type from Lean state]
    assert ((2 <= k) && (k <= 10000)) by { // @tac 478-510
      // [TACTIC: simpa using Finset.mem_Icc.mp hk]
      FinsetMemIccNat(2, 10000, k);  // cite: Finset.mem_Icc
    }
    // have h₃ :  >= 2  [type from Lean state]
    assert ((k as real) >= 2.0); // @tac 549-570
      // [TACTIC: Exact_mod_cast h₂ . 1]
      // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
    // have h₄ :  <= 10000  [type from Lean state]
    assert ((k as real) <= 10000.0); // @tac 613-634
      // [TACTIC: Exact_mod_cast h₂ . 2]
      // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
    // have h₅ :  - 1 >= 1  [type from Lean state]
    assert (((k as real) - 1.0) >= 1.0) by { // @tac 683-721 // @tac 728-736
      // have h₅₁ :  >= 2  [type from Lean state]
      assert ((k as real) >= 2.0) by {
        // [TACTIC: exact h₃]
        assert ((k as real) >= 2.0);
      }
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 728-736 exec 106)
      cert_identity_1(k);  // cert: add_lt_of_le_of_neg
      // UNCITED-APPLIED internal ×6 [exec 106 728-736]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, add_lt_of_le_of_neg ×1, sub_nonpos_of_le ×1, sub_neg_of_lt ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×43 [exec 107 728-736]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.sub_congr ×3, Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Tactic.Ring.sub_pf ×3, Mathlib.Meta.NormNum.isInt_add ×3 (+22 more heads, ×31) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 107)]
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 107)]
    }
    // have h₆ : Real.sqrt >= 0  [type from Lean state]
    assert (Real.sqrt((k as real)) >= 0.0) by {
      // [TACTIC: exact Real.sqrt_nonneg ( _ )]
      RealSqrtNonneg((k as real));  // cite: Real.sqrt_nonneg
    }
    // have h₇ : Real.sqrt ( (  - 1 ) ) >= 0  [type from Lean state]
    assert (Real.sqrt(((k as real) - 1.0)) >= 0.0) by {
      // [TACTIC: exact Real.sqrt_nonneg ( _ )]
      RealSqrtNonneg(((k as real) - 1.0));  // cite: Real.sqrt_nonneg
    }
    // have h₈ : Real.sqrt > 0  [type from Lean state]
    assert (Real.sqrt((k as real)) > 0.0) by {
      assert (0.0 < (k as real)) by {  // sub-goal of `by` (Lean state) // @tac 936-944
        // [TACTIC: «Linarith[_]At___»]
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 936-944 exec 146)
        // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * (-1 : ℝ) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 1.0); (2.0 > 0.0)
        // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(2 : ℝ) * (-1 : ℝ) + ((2 : ℝ) - ↑k) < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
        cert_identity_2(k);  // cert: add_lt_of_neg_of_le
        // UNCITED-APPLIED internal ×10 [exec 146 936-944]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, lt_of_not_ge ×1, neg_neg_of_pos ×1, zero_lt_one ×1, sub_nonpos_of_le ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Linarith.mul_neg ×1
        // UNCITED-APPLIED internal ×44 [exec 147 936-944]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Tactic.Ring.add_congr ×2, Mathlib.Tactic.Ring.cast_pos ×2, Mathlib.Tactic.Ring.neg_add ×2 (+26 more heads, ×35) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
        NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 147)]
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 148 / `ring1` exec 147)]
        // UNCITED-APPLIED internal ×5 [exec 148 936-944]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      }
      // [TACTIC: exact Real.sqrt_pos.mpr ( ( by linarith linarith ) )]
      assert (0.0 < ((k as real)));  // precondition of RealSqrtPosMpr (Lean: Real.sqrt_pos.mpr)
      RealSqrtPosMpr((k as real));  // cite: Real.sqrt_pos.mpr
      // UNCITED-APPLIED Real.sqrt_pos(↑k): this block states the lemma as `cite: Real.sqrt_pos.mpr` (the direction of the iff the tactic uses); not stated under the recorded name [exec 141 875-945]
    }
    // have h₉ : Real.sqrt ( (  - 1 ) ) > 0  [type from Lean state]
    assert (Real.sqrt(((k as real) - 1.0)) > 0.0) by {
      assert (0.0 < ((k as real) - 1.0)) by {  // sub-goal of `by` (Lean state) // @tac 1017-1025
        // [TACTIC: «Linarith[_]At___»]
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1017-1025 exec 165)
        // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(-1 : ℝ) + ((2 : ℝ) - ↑k) < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
        cert_identity_3(k);  // cert: add_lt_of_neg_of_le
        // UNCITED-APPLIED internal ×9 [exec 165 1017-1025]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, lt_of_not_ge ×1, neg_neg_of_pos ×1, zero_lt_one ×1, sub_nonpos_of_le ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
        // UNCITED-APPLIED internal ×43 [exec 166 1017-1025]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Meta.NormNum.IsInt.to_isNat ×3, Mathlib.Meta.NormNum.isInt_add ×3, Mathlib.Tactic.Ring.add_congr ×2 (+24 more heads, ×32) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
        NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 166)]
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 166)]
      }
      // [TACTIC: exact Real.sqrt_pos.mpr ( ( by linarith linarith ) )]
      assert (0.0 < (((k as real) - 1.0)));  // precondition of RealSqrtPosMpr (Lean: Real.sqrt_pos.mpr)
      RealSqrtPosMpr(((k as real) - 1.0));  // cite: Real.sqrt_pos.mpr
      // UNCITED-APPLIED Real.sqrt_pos(↑k - (1 : ℝ)): this block states the lemma as `cite: Real.sqrt_pos.mpr` (the direction of the iff the tactic uses); not stated under the recorded name [exec 160 950-1026]
    }
    // have h₁₀ : 1 / Real.sqrt ( k ) < 2 * ( Real.sqrt ( k ) - Real.sqrt ( ( k - 1 ) )   [type from Lean state]
    assert (Real.div(1.0, Real.sqrt((k as real))) < (2.0 * (Real.sqrt((k as real)) - Real.sqrt(((k as real) - 1.0))))) by { // @tac 1196-1313 // @tac 1320-1396 // @tac 1403-1487 // @tac 1567-1861 // @tac 1868-1948 // @tac 1955-3511 // @tac 3518-3526
      // have h₁₀₁ : Real.sqrt ( k ) > Real.sqrt ( (  - 1 ) )  [type from Lean state]
      assert (Real.sqrt((k as real)) > Real.sqrt(((k as real) - 1.0))) by { // @tac 1268-1313 // @tac 1268-1291
        // [TACTIC: «_<;>_» Real.sqrt_lt_sqrt apply Real.sqrt_lt_sqrt <;> nlinarith nlinarith]
        // [TACTIC: choice Real.sqrt_lt_sqrt apply Real.sqrt_lt_sqrt]
        assert (0.0 <= (((k as real) - 1.0))) && ((((k as real) - 1.0)) < ((k as real)));  // precondition of RealSqrtLtSqrt (Lean: Real.sqrt_lt_sqrt)
        RealSqrtLtSqrt(((k as real) - 1.0), (k as real));  // cite: Real.sqrt_lt_sqrt
        assert (0.0 <= ((k as real) - 1.0)) by {  // sub-goal of `nlinarith` (Lean state) // @tac 1304-1313
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 216)]
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 216)]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1304-1313 exec 215)
          // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(-1 : ℝ) + ((2 : ℝ) - ↑k) < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
          cert_identity_4(k);  // cert: Left.add_neg
          // UNCITED-APPLIED internal ×9 [exec 215 1304-1313]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, Left.add_neg ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, zero_lt_one ×1, sub_nonpos_of_le ×1, lt_zero_of_zero_gt ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
          // UNCITED-APPLIED internal ×43 [exec 216 1304-1313]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Meta.NormNum.IsInt.to_isNat ×3, Mathlib.Meta.NormNum.isInt_add ×3, Mathlib.Tactic.Ring.add_congr ×2 (+24 more heads, ×32) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
        }
        assert (((k as real) - 1.0) < (k as real)) by {  // sub-goal of `nlinarith` (Lean state) // @tac 1304-1313
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 220)]
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 220)]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1304-1313 exec 219)
          cert_identity_5(k);  // cert: add_lt_of_neg_of_le
          // UNCITED-APPLIED internal ×7 [exec 219 1304-1313]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, zero_lt_one ×1, sub_nonpos_of_le ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
          // UNCITED-APPLIED internal ×38 [exec 220 1304-1313]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×3, Mathlib.Meta.NormNum.IsInt.to_isNat ×3, Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Tactic.Ring.neg_one_mul ×2 (+22 more heads, ×28) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
        }
      }
      // have h₁₀₂ : Real.sqrt ( k ) - Real.sqrt ( (  - 1 ) ) > 0  [type from Lean state]
      assert ((Real.sqrt((k as real)) - Real.sqrt(((k as real) - 1.0))) > 0.0) by { // @tac 1388-1396
        // [TACTIC: «Linarith[_]At___»]
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1388-1396 exec 237)
        cert_identity_6(k);  // cert: add_lt_of_neg_of_le
        // UNCITED-APPLIED internal ×6 [exec 237 1388-1396]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, sub_neg_of_lt ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
        // UNCITED-APPLIED internal ×34 [exec 238 1388-1396]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.sub_congr ×2, Mathlib.Tactic.Ring.atom_pf ×2, Mathlib.Tactic.Ring.sub_pf ×2, Mathlib.Tactic.Ring.neg_add ×2 (+20 more heads, ×26) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 238)]
      }
      // have h₁₀₃ : 2 * ( Real.sqrt ( k ) - Real.sqrt ( (  - 1 ) ) ) > 0  [type from Lean state]
      assert ((2.0 * (Real.sqrt((k as real)) - Real.sqrt(((k as real) - 1.0)))) > 0.0) by { // @tac 1477-1487
        // [TACTIC: Positivity]
        // positivity proof (Lean execution 1477-1487 exec 255): nothing of it stated; Lean's records:
        // UNCITED-APPLIED mul_pos: certificate piece `(0 : ℝ) < (2 : ℝ) * (√↑k - √(↑k - (1 : ℝ)))` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 2.0); ((Real.sqrt((k as real)) - Real.sqrt(((k as real) - 1.0))) > 0.0)
        // UNCITED-APPLIED internal ×2 [exec 255 1477-1487]: applications made inside the tactic's own automation, not stated — Mathlib.Meta.Positivity.pos_of_isNat ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: mul_pos [Lean recorded ×1])
        assert (0.0 < (2.0)) && (0.0 < ((Real.sqrt((k as real)) - Real.sqrt(((k as real) - 1.0)))));  // precondition of MulPos (Lean: mul_pos)
        MulPos(2.0, (Real.sqrt((k as real)) - Real.sqrt(((k as real) - 1.0))));  // cite: mul_pos [applied by the tactic, not named in it]
      }
      // have h₁₀₄ : ( Real.sqrt ( k ) - Real.sqrt ( (  - 1 ) ) ) * ( Real.sqrt ( k ) + Rea  [type from Lean state]
      assert (((Real.sqrt((k as real)) - Real.sqrt(((k as real) - 1.0))) * (Real.sqrt((k as real)) + Real.sqrt(((k as real) - 1.0)))) == 1.0) by { // @tac 1689-1861
        assert (0.0 <= (k as real)) by {  // sub-goal of `by` (Lean state) // @tac 1738-1746
          // [TACTIC: «Linarith[_]At___»]
          // UNCITED-APPLIED internal ×5 [exec 279 1738-1746]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 279)]
        }
        assert (0.0 <= ((k as real) - 1.0)) by {  // sub-goal of `by` (Lean state) // @tac 1801-1809
          // [TACTIC: «Linarith[_]At___»]
        }
        // [TACTIC: «Nlinarith[_]At___» [ Real.sq_sqrt ( show 0 ≤ ( k : ℝ ) by linarith linarith ) , Real.sq_sqrt ( show 0 ≤ ( k : ℝ ) - 1 by linarith linarith ) , mul_nonneg h₆ h₇ , h₈.le , h₉.le ]]
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1689-1861 exec 272)
        // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * (-1 : ℝ) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 1.0); (2.0 > 0.0)
        // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(√↑k - √(↑k - (1 : ℝ))) * (√↑k + √(↑k - (1 : ℝ))) - (1 : ℝ) + -(√↑k ^ (2 : ℕ) - ↑k) < (0 : ℝ)`
        // UNCITED-APPLIED add_lt_of_neg_of_le ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(2 : ℝ) * (-1 : ℝ) + ((2 : ℝ) - ↑k) < (0 : ℝ)`
        cert_identity_7(k);  // cert: Linarith.lt_of_lt_of_eq
        cert_identity_8(k);  // cert: Linarith.lt_of_lt_of_eq
        cert_identity_9(k);  // cert: Left.add_neg
        cert_identity_10(k);  // cert: Left.add_neg
        // UNCITED-APPLIED internal ×88 [exec 272 1689-1861]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2, neg_eq_zero ×2, sub_eq_zero_of_eq ×2, le_of_not_gt ×2, Left.add_neg ×2, add_lt_of_neg_of_le ×2, lt_zero_of_zero_gt ×2, neg_neg_of_pos ×1, zero_lt_one ×1, sub_nonpos_of_le ×1; machinery/glue: congrArg ×4, Linarith.lt_of_lt_of_eq ×4, Mathlib.Tactic.Ring.add_congr ×4, Mathlib.Meta.NormNum.IsInt.to_isNat ×4 (+35 more heads, ×55) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1], Real.sq_sqrt [Lean recorded ×2])
        // UNCITED-APPLIED internal ×125 [exec 286 1689-1861]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×7, Mathlib.Tactic.Ring.neg_add ×6, Mathlib.Tactic.Ring.add_pf_zero_add ×6 (+40 more heads, ×98) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×127 [exec 287 1689-1861]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.add_pf_add_lt ×8, Mathlib.Tactic.Ring.neg_mul ×6, Mathlib.Tactic.Ring.add_pf_zero_add ×6 (+40 more heads, ×99) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
        // UNCITED mul_nonneg: no Lean instance recorded (arguments unknown), not guessed
        NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
        // UNCITED h₈.le: a projection of the local hypothesis h₈ handed to the tactic; its fact is not stated here
        // UNCITED h₉.le: a projection of the local hypothesis h₉ handed to the tactic; its fact is not stated here
        assert (0.0 <= (((k as real) - 1.0)));  // precondition of RealSqSqrt (Lean: Real.sq_sqrt)
        RealSqSqrt(((k as real) - 1.0));  // cite: Real.sq_sqrt
        assert (0.0 <= ((k as real)));  // precondition of RealSqSqrt (Lean: Real.sq_sqrt)
        RealSqSqrt((k as real));  // cite: Real.sq_sqrt
      }
      // have h₁₀₅ : ( Real.sqrt ( k ) + Real.sqrt ( (  - 1 ) ) ) > 0  [type from Lean state]
      assert ((Real.sqrt((k as real)) + Real.sqrt(((k as real) - 1.0))) > 0.0) by { // @tac 1938-1948
        // [TACTIC: Positivity]
        // UNCITED-APPLIED internal ×9 [exec 304 1938-1948]: applications made inside the tactic's own automation, not stated — Real.sqrt_pos_of_pos ×2, lt_of_lt_of_le ×2, Mathlib.Meta.Positivity.pos_of_isNat ×2, add_pos ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2 (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
        NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
      }
      // have h₁₀₆ : 2 * ( Real.sqrt ( k ) - Real.sqrt ( (  - 1 ) ) ) > 1 / Real.sqrt ( k )  [type from Lean state]
      assert ((2.0 * (Real.sqrt((k as real)) - Real.sqrt(((k as real) - 1.0)))) > Real.div(1.0, Real.sqrt((k as real)))) by { // @tac 2051-3494 // @tac 3503-3511
        // have h₁₀₇ : 1 / Real.sqrt ( k ) < 2 * ( Real.sqrt ( k ) - Real.sqrt ( (  - 1 ) ) )  [type from Lean state]
        assert (Real.div(1.0, Real.sqrt((k as real))) < (2.0 * (Real.sqrt((k as real)) - Real.sqrt(((k as real) - 1.0))))) by { // @tac 2258-3475 // @tac 3486-3494
          // have h₁₀₈ : 1 / Real.sqrt ( k ) < 2 * ( Real.sqrt ( k ) - Real.sqrt ( (  - 1 ) ) )  [type from Lean state]
          assert (Real.div(1.0, Real.sqrt((k as real))) < (2.0 * (Real.sqrt((k as real)) - Real.sqrt(((k as real) - 1.0))))) by { // @tac 2445-2803 // @tac 2816-2831
            // have h₁₀₉ : ( Real.sqrt ( k ) - Real.sqrt ( (  - 1 ) ) ) == 1 / ( Real.sqrt ( k )   [type from Lean state]
            assert ((Real.sqrt((k as real)) - Real.sqrt(((k as real) - 1.0))) == Real.div(1.0, (Real.sqrt((k as real)) + Real.sqrt(((k as real) - 1.0))))) by { // @tac 2573-2803 // @tac 2573-2600
              // [TACTIC: «_<;>_» [ h₁₀₅.ne' ] field_simp [ h₁₀₅.ne' ] <;> nlinarith [ Real.sq_sqrt ( show 0 ≤ ( k : ℝ ) by linarith linarith ) , Real.sq_sqrt ( show 0 ≤ ( k : ℝ ) - 1 by linarith linarith ) , mul_nonneg h₆ h₇ , h₈.le , h₉.le ] nlinarith [ Real.sq_sqrt ( show 0 ≤ ( k : ℝ ) by linarith linarith ) , Real.sq_sqrt ( show 0 ≤ ( k : ℝ ) - 1 by linarith linarith ) , mul_nonneg h₆ h₇ , h₈.le , h₉.le ]]
              // [TACTIC: choice [ h₁₀₅.ne' ] field_simp [ h₁₀₅.ne' ]]
              NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
              // UNCITED h₁₀₅.ne': a projection of the local hypothesis h₁₀₅ handed to the tactic; its fact is not stated here
              // UNCITED-APPLIED internal ×10 [exec 374 2573-2600]: applications made inside the tactic's own automation, not stated — Real.sqrt_pos_of_pos ×2, lt_of_lt_of_le ×2, Mathlib.Meta.Positivity.pos_of_isNat ×2, ne_of_gt ×1, add_pos ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2 (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
              assert (((Real.sqrt((k as real)) - Real.sqrt(((k as real) - 1.0))) * (Real.sqrt((k as real)) + Real.sqrt(((k as real) - 1.0)))) == 1.0) by {  // sub-goal of `nlinarith` (Lean state) // @tac 2619-2803
                assert (0.0 <= (k as real)) by {  // sub-goal of `by` (Lean state) // @tac 2668-2676
                  // [TACTIC: «Linarith[_]At___»]
                }
                assert (0.0 <= ((k as real) - 1.0)) by {  // sub-goal of `by` (Lean state) // @tac 2737-2745
                  // [TACTIC: «Linarith[_]At___»]
                }
                // NOT APPLIED Real.sq_sqrt: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
                // UNCITED mul_nonneg: no Lean instance recorded (arguments unknown), not guessed
                // cite: Nat.cast_one [same instance stated in an enclosing scope: NatCastOne();]
                NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 397, 398)]
                // UNCITED h₈.le: a projection of the local hypothesis h₈ handed to the tactic; its fact is not stated here
                // UNCITED h₉.le: a projection of the local hypothesis h₉ handed to the tactic; its fact is not stated here
                // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2619-2803 exec 383)
                cert_identity_11(k);  // cert: Linarith.lt_of_eq_of_lt
                cert_identity_12(k);  // cert: Linarith.lt_of_eq_of_lt
                // UNCITED-APPLIED internal ×11 [exec 383 2619-2803]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
                // UNCITED-APPLIED internal ×80 [exec 397 2619-2803]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×5, Mathlib.Tactic.Ring.add_pf_add_zero ×5, Mathlib.Tactic.Ring.add_pf_add_lt ×4, Mathlib.Tactic.Ring.add_pf_zero_add ×4 (+34 more heads, ×62) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                // UNCITED-APPLIED internal ×82 [exec 398 2619-2803]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×5, Mathlib.Tactic.Ring.add_pf_zero_add ×5, Mathlib.Tactic.Ring.add_pf_add_zero ×5, Mathlib.Tactic.Ring.neg_add ×4 (+33 more heads, ×63) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
              }
            }
            // [TACTIC: rwSeq [ h₁₀₉ ]]
            // UNCITED-APPLIED congrArg(√↑k - √(↑k - (1 : ℝ)), (1 : ℝ) / (√↑k + √(↑k - (1 : ℝ))), fun (_a : ℝ) => (1 : ℝ) / √↑k < (2 : ℝ) * _a): no library counterpart (not stated) [exec 403 2816-2831]
            assert (Real.div(1.0, Real.sqrt((k as real))) < (2.0 * Real.div(1.0, (Real.sqrt((k as real)) + Real.sqrt(((k as real) - 1.0)))))) by {  // sub-goal before `have` (Lean state) // @tac 2844-3454 // @tac 3467-3475
              // have h₁₁₀ : 1 / Real.sqrt ( k ) < 2 * ( 1 / ( Real.sqrt ( k ) + Real.sqrt ( (  - 1  [type from Lean state]
              assert (Real.div(1.0, Real.sqrt((k as real))) < (2.0 * Real.div(1.0, (Real.sqrt((k as real)) + Real.sqrt(((k as real) - 1.0)))))) by { // @tac 2960-3038 // @tac 3053-3147 // @tac 3162-3189
                // have h₁₁₁ : 0 < Real.sqrt ( k ) + Real.sqrt ( (  - 1 ) )  [type from Lean state]
                assert (0.0 < (Real.sqrt((k as real)) + Real.sqrt(((k as real) - 1.0)))) by { // @tac 3028-3038
                  // [TACTIC: Positivity]
                  // UNCITED-APPLIED internal ×9 [exec 462 3028-3038]: applications made inside the tactic's own automation, not stated — Real.sqrt_pos_of_pos ×2, lt_of_lt_of_le ×2, Mathlib.Meta.Positivity.pos_of_isNat ×2, add_pos ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2 (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                  NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
                }
                // have h₁₁₂ : 0 < Real.sqrt ( k ) * ( Real.sqrt ( k ) + Real.sqrt ( (  - 1 ) ) )  [type from Lean state]
                assert (0.0 < (Real.sqrt((k as real)) * (Real.sqrt((k as real)) + Real.sqrt(((k as real) - 1.0))))) by { // @tac 3137-3147
                  // [TACTIC: Positivity]
                  // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 3137-3147 exec 479)
                  if (0.0 < Real.sqrt((k as real))) && (0.0 < (Real.sqrt((k as real)) + Real.sqrt(((k as real) - 1.0)))) { cert_piece_13(k); }  // cert: mul_pos
                  // UNCITED-APPLIED internal ×9 [exec 479 3137-3147]: applications made inside the tactic's own automation, not stated — Real.sqrt_pos_of_pos ×2, lt_of_lt_of_le ×2, Mathlib.Meta.Positivity.pos_of_isNat ×2, add_pos ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2 (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], mul_pos [Lean recorded ×1])
                  assert (0.0 < (Real.sqrt((k as real)))) && (0.0 < ((Real.sqrt((k as real)) + Real.sqrt(((k as real) - 1.0)))));  // precondition of MulPos (Lean: mul_pos)
                  MulPos(Real.sqrt((k as real)), (Real.sqrt((k as real)) + Real.sqrt(((k as real) - 1.0))));  // cite: mul_pos [applied by the tactic, not named in it]
                  NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
                }
                // [TACTIC: «Field_simp[_]At___» [ h₁₁₁.ne' ]]
                // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (2 : ℝ))
                // UNCITED h₁₁₁.ne': a projection of the local hypothesis h₁₁₁ handed to the tactic; its fact is not stated here
                // UNCITED-APPLIED internal ×6 [exec 480 3162-3189]: applications made inside the tactic's own automation, not stated — mul_div_assoc' ×1, mul_one ×1; machinery/glue: Eq.trans ×2, congrArg ×2
                assert (Real.div(1.0, Real.sqrt((k as real))) < Real.div(2.0, (Real.sqrt((k as real)) + Real.sqrt(((k as real) - 1.0))))) by {  // sub-goal before `rw` (Lean state) // @tac 3204-3255
                  assert (0.0 < Real.sqrt((k as real))) by {  // sub-goal of `by` (Lean state) // @tac 3227-3237
                    // [TACTIC: Positivity]
                    // UNCITED-APPLIED internal ×4 [exec 492 3227-3237]: applications made inside the tactic's own automation, not stated — Real.sqrt_pos_of_pos ×1, lt_of_lt_of_le ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1
                  }
                  assert (0.0 < (Real.sqrt((k as real)) + Real.sqrt(((k as real) - 1.0)))) by {  // sub-goal of `by` (Lean state) // @tac 3243-3253
                    // [TACTIC: Positivity]
                    // UNCITED-APPLIED internal ×9 [exec 497 3243-3253]: applications made inside the tactic's own automation, not stated — Real.sqrt_pos_of_pos ×2, lt_of_lt_of_le ×2, Mathlib.Meta.Positivity.pos_of_isNat ×2, add_pos ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2 (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                    NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
                  }
                  // [TACTIC: rwSeq [ div_lt_div_iff ( by positivity ) ( by positivity ) ]]
                  assert (0.0 < (Real.sqrt((k as real)))) && (0.0 < ((Real.sqrt((k as real)) + Real.sqrt(((k as real) - 1.0)))));  // precondition of DivLtDivIff (Lean: div_lt_div_iff)
                  DivLtDivIff(1.0, Real.sqrt((k as real)), 2.0, (Real.sqrt((k as real)) + Real.sqrt(((k as real) - 1.0))));  // cite: div_lt_div_iff
                  assert ((1.0 * (Real.sqrt((k as real)) + Real.sqrt(((k as real) - 1.0)))) < (2.0 * Real.sqrt((k as real)))) by {  // sub-goal before `nlinarith` (Lean state) // @tac 3270-3454
                    assert (0.0 <= (k as real)) by {  // sub-goal of `by` (Lean state) // @tac 3319-3327
                      // [TACTIC: «Linarith[_]At___»]
                    }
                    assert (0.0 <= ((k as real) - 1.0)) by {  // sub-goal of `by` (Lean state) // @tac 3388-3396
                      // [TACTIC: «Linarith[_]At___»]
                    }
                    // [TACTIC: «Nlinarith[_]At___» [ Real.sq_sqrt ( show 0 ≤ ( k : ℝ ) by linarith linarith ) , Real.sq_sqrt ( show 0 ≤ ( k : ℝ ) - 1 by linarith linarith ) , mul_nonneg h₆ h₇ , h₈.le , h₉.le ]]
                    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3270-3454 exec 522)
                    cert_identity_14(k);  // cert: add_lt_of_neg_of_le
                    // UNCITED-APPLIED internal ×6 [exec 522 3270-3454]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, sub_neg_of_lt ×1, sub_nonpos_of_le ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
                    // NOT APPLIED Real.sq_sqrt: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
                    // UNCITED mul_nonneg: no Lean instance recorded (arguments unknown), not guessed
                    NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 536)]
                    NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 536)]
                    // UNCITED h₈.le: a projection of the local hypothesis h₈ handed to the tactic; its fact is not stated here
                    // UNCITED h₉.le: a projection of the local hypothesis h₉ handed to the tactic; its fact is not stated here
                    // UNCITED-APPLIED internal ×67 [exec 536 3270-3454]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_zero_add ×3, Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Tactic.Ring.mul_add ×3, Mathlib.Tactic.Ring.mul_pf_right ×3 (+32 more heads, ×55) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
                  }
                  // UNCITED-APPLIED congrArg(fun (_a : Prop) => _a): no library counterpart (not stated) [exec 485 3204-3255]
                }
              }
              // [TACTIC: «Linarith[_]At___»]
              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3467-3475 exec 537)
              cert_identity_15(k);  // cert: add_lt_of_neg_of_le
              // UNCITED-APPLIED internal ×13 [exec 537 3467-3475]: applications made inside the tactic's own automation, not stated — CancelDenoms.sub_subst ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, CancelDenoms.mul_subst ×1, sub_neg_of_lt ×1, sub_nonpos_of_le ×1; machinery/glue: congrArg ×3, Linarith.without_one_mul ×2, Linarith.lt_irrefl ×1
              // UNCITED-APPLIED internal ×85 [exec 540 3467-3475]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×4, Mathlib.Tactic.Ring.add_mul ×4, Mathlib.Tactic.Ring.mul_add ×4, Mathlib.Tactic.Ring.add_pf_add_zero ×4 (+38 more heads, ×69) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
              // UNCITED-APPLIED internal ×5 [exec 538 3467-3475]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
              // UNCITED-APPLIED internal ×5 [exec 539 3467-3475]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
              NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 538, 539 / `ring1` exec 540)]
              NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 540)]
            }
          }
          // [TACTIC: «Linarith[_]At___»]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3486-3494 exec 541)
          cert_identity_16(k);  // cert: add_lt_of_neg_of_le
          // UNCITED-APPLIED internal ×14 [exec 541 3486-3494]: applications made inside the tactic's own automation, not stated — CancelDenoms.sub_subst ×3, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, CancelDenoms.mul_subst ×1, sub_neg_of_lt ×1, sub_nonpos_of_le ×1; machinery/glue: congrArg ×3, Linarith.without_one_mul ×2, Linarith.lt_irrefl ×1
          // UNCITED-APPLIED internal ×111 [exec 544 3486-3494]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×6, Mathlib.Tactic.Ring.add_pf_add_zero ×6, Mathlib.Tactic.Ring.mul_congr ×5, Mathlib.Meta.NormNum.IsInt.to_isNat ×5 (+37 more heads, ×89) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 542 3486-3494]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 543 3486-3494]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 542, 543 / `ring1` exec 544)]
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 544)]
        }
        // [TACTIC: «Linarith[_]At___»]
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3503-3511 exec 545)
        cert_identity_17(k);  // cert: add_lt_of_neg_of_le
        // UNCITED-APPLIED internal ×14 [exec 545 3503-3511]: applications made inside the tactic's own automation, not stated — CancelDenoms.sub_subst ×3, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, CancelDenoms.mul_subst ×1, sub_neg_of_lt ×1, sub_nonpos_of_le ×1; machinery/glue: congrArg ×3, Linarith.without_one_mul ×2, Linarith.lt_irrefl ×1
        // UNCITED-APPLIED internal ×111 [exec 548 3503-3511]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×6, Mathlib.Tactic.Ring.add_pf_add_zero ×6, Mathlib.Tactic.Ring.mul_congr ×5, Mathlib.Meta.NormNum.IsInt.to_isNat ×5 (+37 more heads, ×89) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×5 [exec 546 3503-3511]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
        // UNCITED-APPLIED internal ×5 [exec 547 3503-3511]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
        NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 546, 547 / `ring1` exec 548)]
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 548)]
      }
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3518-3526 exec 549)
      cert_identity_18(k);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×14 [exec 549 3518-3526]: applications made inside the tactic's own automation, not stated — CancelDenoms.sub_subst ×3, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, CancelDenoms.mul_subst ×1, sub_neg_of_lt ×1, sub_nonpos_of_le ×1; machinery/glue: congrArg ×3, Linarith.without_one_mul ×2, Linarith.lt_irrefl ×1
      // UNCITED-APPLIED internal ×111 [exec 552 3518-3526]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×6, Mathlib.Tactic.Ring.add_pf_add_zero ×6, Mathlib.Tactic.Ring.mul_congr ×5, Mathlib.Meta.NormNum.IsInt.to_isNat ×5 (+37 more heads, ×89) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 550 3518-3526]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 551 3518-3526]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 550, 551 / `ring1` exec 552)]
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 552)]
    }
    // [TACTIC: exact h₁₀]
    assert (Real.div(1.0, Real.sqrt((k as real))) < (2.0 * (Real.sqrt((k as real)) - Real.sqrt(((k as real) - 1.0)))));
  }
  // have h₂ : ∑ k ∈ Finset.Icc (2 : ℕ) (10000 : ℕ), (2 : ℝ) * (√↑k - √(↑k - (1 : ℝ))) = (198 : ℝ)  [type from Lean state]
  assert (Real.sum(IccN(2, 10000), ((k: nat) => (2.0 * (Real.sqrt((k as real)) - Real.sqrt(((k as real) - 1.0)))))) == 198.0) by { // @tac 3671-6915 // @tac 6920-6929
    // have h₃ : ∑ k ∈ Finset.Icc (2 : ℕ) (10000 : ℕ), (2 : ℝ) * (√↑k - √(↑k - (1 : ℝ))) = (2 : ℝ) * (√(10000 : ℝ) - √(1 : ℝ))  [type from Lean state]
    assert (Real.sum(IccN(2, 10000), ((k: nat) => (2.0 * (Real.sqrt((k as real)) - Real.sqrt(((k as real) - 1.0)))))) == (2.0 * (Real.sqrt(10000.0) - Real.sqrt(1.0)))) by { // @tac 3920-6899 // @tac 6906-6915
      // have h₄ : ∑ k ∈ Finset.Icc (2 : ℕ) (10000 : ℕ), (2 : ℝ) * (√↑k - √(↑k - (1 : ℝ))) = (2 : ℝ) * (√(10000 : ℝ) - √(1 : ℝ))  [type from Lean state]
      assert (Real.sum(IccN(2, 10000), ((k: nat) => (2.0 * (Real.sqrt((k as real)) - Real.sqrt(((k as real) - 1.0)))))) == (2.0 * (Real.sqrt(10000.0) - Real.sqrt(1.0)))) by { // @tac 4141-6664 // @tac 6673-6881 // @tac 6890-6899
        // have h₅ : ∀ n ≥ (2 : ℕ), ∑ k ∈ Finset.Icc (2 : ℕ) n, (2 : ℝ) * (√↑k - √(↑k - (1 : ℝ))) = (2 : ℝ) * (√↑n - √(1 : ℝ))  [type from Lean state]
        forall n: nat | (n >= 2) // @tac 4335-4345
          ensures (Real.sum(IccN(2, n), ((k: nat) => (2.0 * (Real.sqrt((k as real)) - Real.sqrt(((k as real) - 1.0)))))) == (2.0 * (Real.sqrt((n as real)) - Real.sqrt(1.0)))) // @tac 4356-4382
        {
          // [TACTIC: intro n hn]
          // induction' n → recursive lemma induction_helper_1
          induction_helper_1(n - 1);
        }
        // have h₆ : ∑ k ∈ Finset.Icc (2 : ℕ) (10000 : ℕ), (2 : ℝ) * (√↑k - √(↑k - (1 : ℝ))) = (2 : ℝ) * (√(10000 : ℝ) - √(1 : ℝ))  [type from Lean state]
        assert (Real.sum(IccN(2, 10000), ((k: nat) => (2.0 * (Real.sqrt((k as real)) - Real.sqrt(((k as real) - 1.0)))))) == (2.0 * (Real.sqrt(10000.0) - Real.sqrt(1.0)))) by { // @tac 6848-6881 // @tac 6848-6858
          // [TACTIC: «_<;>_» h₅ apply h₅ <;> norm_num norm_num]
          // [TACTIC: choice h₅ apply h₅]
          assert ((10000 >= 2) ==> (Real.sum(IccN(2, 10000), ((k: nat) => (2.0 * (Real.sqrt((k as real)) - Real.sqrt(((k as real) - 1.0)))))) == (2.0 * (Real.sqrt(10000.0) - Real.sqrt(1.0)))));  // instance of h₅ (Lean state: `apply` leaves its premises as goals)
          assert (10000 >= 2);  // sub-goal of `norm_num` (Lean state) // @tac 6873-6881
          // UNCITED-APPLIED internal ×5 [exec 762 6873-6881]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_le_true ×1
          // UNCITED-APPLIED instance of h₅: `∑ k ∈ Finset.Icc (2 : ℕ) (10000 : ℕ), (2 : ℝ) * (√↑k - √(↑k - (1 : ℝ))) = (2 : ℝ) * (√↑(10000 : ℕ) - √(1 : ℝ))` — Lean's proof of h₂/h₃/h₄/h₆ applies it (by a tactic that does not name it, or one whose instance could not be rendered in scope here); not stated
        }
        // [TACTIC: rwSeq [ h₆ ]]
        // UNCITED-APPLIED congrArg(∑ k ∈ Finset.Icc (2 : ℕ) (10000 : ℕ), (2 : ℝ) * (√↑k - √(↑k - (1 : ℝ)…, (2 : ℝ) * (√(10000 : ℝ) - √(1 : ℝ)), fun (_a : ℝ) => _a = (2 : ℝ) * (√(10000 : ℝ) - √(1 : ℝ))): no library counterpart (not stated) [exec 767 6890-6899]
        // UNCITED-APPLIED Eq.symm(n, (0 : ℕ)): not stated; marked in the block where its execution is translated (lemma induction_helper_1) [exec 633 4444-6664]
        // UNCITED-APPLIED Eq.symm(n✝, n + (1 : ℕ)): not stated; marked in the block where its execution is translated (lemma induction_helper_1) [exec 633 4444-6664]
        // UNCITED-APPLIED Eq.symm(n, (0 : ℕ)): not stated; marked in the block where its execution is translated (lemma induction_helper_1) [exec 642 4531-6664]
        // UNCITED-APPLIED Eq.symm(n✝, n + (1 : ℕ)): not stated; marked in the block where its execution is translated (lemma induction_helper_1) [exec 642 4531-6664]
      }
      // [TACTIC: rwSeq [ h₄ ]]
      // UNCITED-APPLIED congrArg(∑ k ∈ Finset.Icc (2 : ℕ) (10000 : ℕ), (2 : ℝ) * (√↑k - √(↑k - (1 : ℝ)…, (2 : ℝ) * (√(10000 : ℝ) - √(1 : ℝ)), fun (_a : ℝ) => _a = (2 : ℝ) * (√(10000 : ℝ) - √(1 : ℝ))): no library counterpart (not stated) [exec 792 6906-6915]
    }
    // [TACTIC: rwSeq [ h₃ ]]
    // UNCITED-APPLIED congrArg(∑ k ∈ Finset.Icc (2 : ℕ) (10000 : ℕ), (2 : ℝ) * (√↑k - √(↑k - (1 : ℝ)…, (2 : ℝ) * (√(10000 : ℝ) - √(1 : ℝ)), fun (_a : ℝ) => _a = (198 : ℝ)): no library counterpart (not stated) [exec 817 6920-6929]
    assert ((2.0 * (Real.sqrt(10000.0) - Real.sqrt(1.0))) == 198.0) by {  // sub-goal before `have` (Lean state) // @tac 6934-7028 // @tac 7033-7121 // @tac 7126-7158 // @tac 7126-7141
      // have h₄ : Real.sqrt ( 10000 ) == 100  [type from Lean state]
      assert (Real.sqrt(10000.0) == 100.0) by { // @tac 6988-7028 // @tac 6988-7015
        // [TACTIC: «_<;>_» [ Real.sqrt_eq_iff_sq_eq ] rw [ Real.sqrt_eq_iff_sq_eq ] <;> norm_num norm_num]
        // [TACTIC: choice [ Real.sqrt_eq_iff_sq_eq ] rw [ Real.sqrt_eq_iff_sq_eq ]]
        assert (0.0 <= (10000.0)) && (0.0 <= (100.0));  // precondition of RealSqrtEqIffSqEq (Lean: Real.sqrt_eq_iff_sq_eq)
        RealSqrtEqIffSqEq(10000.0, 100.0);  // cite: Real.sqrt_eq_iff_sq_eq
        // UNCITED-APPLIED congrArg(fun (_a : Prop) => _a): no library counterpart (not stated) [exec 869 6988-7015]
        assert ((100.0 * 100.0) == 10000.0);  // sub-goal of `norm_num` (Lean state) // @tac 7020-7028
        // UNCITED-APPLIED internal ×9 [exec 904 7020-7028]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3)
        assert (0.0 <= 10000.0) by {  // sub-goal of `norm_num` (Lean state) // @tac 7020-7028
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
          // UNCITED-APPLIED internal ×5 [exec 907 7020-7028]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_le_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        }
        assert (0.0 <= 100.0) by {  // sub-goal of `norm_num` (Lean state) // @tac 7020-7028
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
          // UNCITED-APPLIED internal ×5 [exec 910 7020-7028]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_le_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        }
      }
      // have h₅ : Real.sqrt ( 1 ) == 1  [type from Lean state]
      assert (Real.sqrt(1.0) == 1.0) by { // @tac 7081-7121 // @tac 7081-7108
        // [TACTIC: «_<;>_» [ Real.sqrt_eq_iff_sq_eq ] rw [ Real.sqrt_eq_iff_sq_eq ] <;> norm_num norm_num]
        // [TACTIC: choice [ Real.sqrt_eq_iff_sq_eq ] rw [ Real.sqrt_eq_iff_sq_eq ]]
        assert (0.0 <= (1.0)) && (0.0 <= (1.0));  // precondition of RealSqrtEqIffSqEq (Lean: Real.sqrt_eq_iff_sq_eq)
        RealSqrtEqIffSqEq(1.0, 1.0);  // cite: Real.sqrt_eq_iff_sq_eq
        // UNCITED-APPLIED congrArg(fun (_a : Prop) => _a): no library counterpart (not stated) [exec 936 7081-7108]
        assert ((1.0 * 1.0) == 1.0) by {  // sub-goal of `norm_num` (Lean state) // @tac 7113-7121
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
          // UNCITED-APPLIED internal ×7 [exec 971 7113-7121]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+2 more heads, ×2) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
        }
        assert (0.0 <= 1.0) by {  // sub-goal of `norm_num` (Lean state) // @tac 7113-7121
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
          // UNCITED-APPLIED internal ×5 [exec 974 7113-7121]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_le_true ×1 (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 977 7113-7121]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_le_true ×1 (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
        }
      }
      // [TACTIC: «_<;>_» [ h₄ , h₅ ] rw [ h₄ , h₅ ] <;> norm_num norm_num]
      // [TACTIC: choice [ h₄ , h₅ ] rw [ h₄ , h₅ ]]
      // UNCITED-APPLIED congrArg(√(10000 : ℝ), (100 : ℝ), fun (_a : ℝ) => (2 : ℝ) * (_a - √(1 : ℝ)) = (198 : ℝ)): no library counterpart (not stated) [exec 987 7126-7141]
      // UNCITED-APPLIED congrArg(√(1 : ℝ), (1 : ℝ), fun (_a : ℝ) => (2 : ℝ) * ((100 : ℝ) - _a) = (198 : ℝ)): no library counterpart (not stated) [exec 987 7126-7141]
      assert ((2.0 * (100.0 - 1.0)) == 198.0) by {  // sub-goal of `norm_num` (Lean state) // @tac 7150-7158
        NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
        // UNCITED-APPLIED internal ×12 [exec 1023 7150-7158]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Meta.NormNum.IsNat.to_isInt ×2, of_eq_true ×1, eq_true ×1 (+4 more heads, ×4) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
      }
    }
  }
  // have h₃ : ∑ k ∈ Finset.Icc (2 : ℕ) (10000 : ℕ), (1 : ℝ) / √↑k < (198 : ℝ)  [type from Lean state]
  assert (Real.sum(IccN(2, 10000), ((k: nat) => Real.div(1.0, Real.sqrt((k as real))))) < 198.0) by { // @tac 7247-8624 // @tac 8629-8639
    // have h₄ : ∑ k ∈ Finset.Icc (2 : ℕ) (10000 : ℕ), (1 : ℝ) / √↑k < (198 : ℝ)  [type from Lean state]
    assert (Real.sum(IccN(2, 10000), ((k: nat) => Real.div(1.0, Real.sqrt((k as real))))) < 198.0) by { // @tac 7340-8346 // @tac 8353-8491 // @tac 8498-8604 // @tac 8611-8624
      // have h₅ : ∑ k ∈ Finset.Icc (2 : ℕ) (10000 : ℕ), (1 : ℝ) / √↑k < ∑ k ∈ Finset.Icc (2 : ℕ) (10000 : ℕ), (2 : ℝ) * (√↑k - √  [type from Lean state]
      assert (Real.sum(IccN(2, 10000), ((k: nat) => Real.div(1.0, Real.sqrt((k as real))))) < Real.sum(IccN(2, 10000), ((k: nat) => (2.0 * (Real.sqrt((k as real)) - Real.sqrt(((k as real) - 1.0))))))) by { // @tac 7617-7816 // @tac 7825-8253 // @tac 8262-8346
        // have h₅₁ : forall ( k : ℕ ) :: k ∈ Finset.Icc ( 2 : ℕ ) 10000 -> 1 / Real.sqrt (   [type from Lean state]
        forall k: nat | (k in IccN(2, 10000)) // @tac 7780-7790
          ensures (Real.div(1.0, Real.sqrt((k as real))) < (2.0 * (Real.sqrt((k as real)) - Real.sqrt(((k as real) - 1.0))))) // @tac 7801-7816
        {
          // [TACTIC: intro k hk]
          // [TACTIC: exact h₁ k hk]
          assert (forall k: nat :: ((k in IccN(2, 10000)) ==> (Real.div(1.0, Real.sqrt((k as real))) < (2.0 * (Real.sqrt((k as real)) - Real.sqrt(((k as real) - 1.0)))))));
          assert (Real.div(1.0, Real.sqrt((k as real))) < (2.0 * (Real.sqrt((k as real)) - Real.sqrt(((k as real) - 1.0)))));  // instance of h₁ (Lean state)
        }
        // have h₅₂ : ∑ k ∈ Finset.Icc (2 : ℕ) (10000 : ℕ), (1 : ℝ) / √↑k < ∑ k ∈ Finset.Icc (2 : ℕ) (10000 : ℕ), (2 : ℝ) * (√↑k - √  [type from Lean state]
        assert (Real.sum(IccN(2, 10000), ((k: nat) => Real.div(1.0, Real.sqrt((k as real))))) < Real.sum(IccN(2, 10000), ((k: nat) => (2.0 * (Real.sqrt((k as real)) - Real.sqrt(((k as real) - 1.0))))))) by { // @tac 8126-8203
          assert (IccN(2, 10000) != {  }) by {  // sub-goal of `by` (Lean state) // @tac 8195-8201
            // [TACTIC: decide]
            // UNCITED-APPLIED internal ×1 [exec 1115 8195-8201]: applications made inside the tactic's own automation, not stated — machinery/glue: of_decide_eq_true ×1
          }
          // [TACTIC: apply Finset.sum_lt_sum_of_nonempty ( Finset.nonempty_of_ne_empty ( by decide decide ) )]
          assert (forall i: nat :: ((i in IccN(2, 10000)) ==> (Real.div(1.0, Real.sqrt((i as real))) < (2.0 * (Real.sqrt((i as real)) - Real.sqrt(((i as real) - 1.0))))))) by {  // sub-goal before `intro` (Lean state) // @tac 8214-8224
            // [TACTIC: intro k hk]
            forall k: nat | ((k in IccN(2, 10000)))
              ensures (Real.div(1.0, Real.sqrt((k as real))) < (2.0 * (Real.sqrt((k as real)) - Real.sqrt(((k as real) - 1.0)))))  // sub-goal before `exact` (Lean state) // @tac 8235-8253
            {
              // [TACTIC: exact h₅₁ k hk]
              assert (forall k: nat :: ((k in IccN(2, 10000)) ==> (Real.div(1.0, Real.sqrt((k as real))) < (2.0 * (Real.sqrt((k as real)) - Real.sqrt(((k as real) - 1.0)))))));
              assert (Real.div(1.0, Real.sqrt((k as real))) < (2.0 * (Real.sqrt((k as real)) - Real.sqrt(((k as real) - 1.0)))));  // instance of h₅₁ (Lean state)
            }
          }
          assert ((IccN(2, 10000)) != {});  // precondition of FinsetNonemptyOfNeEmpty (Lean: Finset.nonempty_of_ne_empty; `apply`: proved by the steps above)
          FinsetNonemptyOfNeEmpty(IccN(2, 10000));  // cite: Finset.nonempty_of_ne_empty
          assert ((IccN(2, 10000)) != {}) && (forall i_0 :: i_0 in (IccN(2, 10000)) ==> (((i: nat) => Real.div(1.0, Real.sqrt((i as real)))))(i_0) < (((i: nat) => (2.0 * (Real.sqrt((i as real)) - Real.sqrt(((i as real) - 1.0))))))(i_0));  // precondition of FinsetSumLtSumOfNonemptyGen (Lean: Finset.sum_lt_sum_of_nonempty; `apply`: proved by the steps above)
          FinsetSumLtSumOfNonemptyGen(IccN(2, 10000), ((i: nat) => Real.div(1.0, Real.sqrt((i as real)))), ((i: nat) => (2.0 * (Real.sqrt((i as real)) - Real.sqrt(((i as real) - 1.0))))));  // cite: Finset.sum_lt_sum_of_nonempty
        }
        // [TACTIC: simpa [ Finset.sum_sub_distrib , Finset.sum_add_distrib , Finset.mul_sum ] using h₅₂]
        // UNCITED Finset.sum_sub_distrib: no Lean instance recorded (arguments unknown), not guessed
        // UNCITED Finset.sum_add_distrib: no Lean instance recorded (arguments unknown), not guessed
        // UNCITED Finset.mul_sum: no Lean instance recorded (arguments unknown), not guessed
        if (forall x_0 :: x_0 in (IccN(2, 10000)) ==> (((k: nat) => Real.div(1.0, Real.sqrt((k as real)))))(x_0) == (((x: nat) => Real.div(1.0, Real.sqrt((x as real)))))(x_0)) { FinsetSumApply(IccN(2, 10000), ((k: nat) => Real.div(1.0, Real.sqrt((k as real)))), ((x: nat) => Real.div(1.0, Real.sqrt((x as real))))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
        // UNCITED-APPLIED internal ×4 [exec 1122 8262-8346]: applications made inside the tactic's own automation, not stated — one_div ×2; machinery/glue: Eq.trans ×1, congrArg ×1 (cited in this block, not counted here: Finset.sum_congr [Lean recorded ×1])
      }
      // have h₅₃ : ∑ k ∈ Finset.Icc (2 : ℕ) (10000 : ℕ), (2 : ℝ) * (√↑k - √(↑k - (1 : ℝ))) = (198 : ℝ)  [type from Lean state]
      assert (Real.sum(IccN(2, 10000), ((k: nat) => (2.0 * (Real.sqrt((k as real)) - Real.sqrt(((k as real) - 1.0)))))) == 198.0) by { // @tac 8481-8491
        // [TACTIC: exact h₂]
        assert (Real.sum(IccN(2, 10000), ((k: nat) => (2.0 * (Real.sqrt((k as real)) - Real.sqrt(((k as real) - 1.0)))))) == 198.0);
      }
      // have h₅₄ : ∑ k ∈ Finset.Icc (2 : ℕ) (10000 : ℕ), (1 : ℝ) / √↑k < (198 : ℝ)  [type from Lean state]
      assert (Real.sum(IccN(2, 10000), ((k: nat) => Real.div(1.0, Real.sqrt((k as real))))) < 198.0) by { // @tac 8596-8604
        // [TACTIC: «Linarith[_]At___»]
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 8596-8604 exec 1156)
        // UNCITED-APPLIED Linarith.lt_of_eq_of_lt: certificate sum `∑ k ∈ Finset.Icc (2 : ℕ) (10000 : ℕ), (2 : ℝ) * (√↑k - √(↑k - (1 : ℝ))) - (198 : ℝ) + ((1 : ℝ) * ∑ k ∈ Finset.Icc (2 : …` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
        cert_identity_19();  // cert: add_lt_of_neg_of_le
        // UNCITED-APPLIED internal ×13 [exec 1156 8596-8604]: applications made inside the tactic's own automation, not stated — CancelDenoms.sub_subst ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, sub_eq_zero_of_eq ×1, sub_neg_of_lt ×1, sub_nonpos_of_le ×1; machinery/glue: congrArg ×2, Linarith.without_one_mul ×2, Linarith.lt_irrefl ×1, Linarith.lt_of_eq_of_lt ×1
        // UNCITED-APPLIED internal ×70 [exec 1157 8596-8604]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.sub_congr ×3, Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Tactic.Ring.sub_pf ×3, Mathlib.Tactic.Ring.neg_add ×3 (+27 more heads, ×58) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
        NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1157)]
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1157)]
      }
      // [TACTIC: exact h₅₄]
      assert (Real.sum(IccN(2, 10000), ((k: nat) => Real.div(1.0, Real.sqrt((k as real))))) < 198.0);
    }
    // [TACTIC: exact h₄]
    assert (Real.sum(IccN(2, 10000), ((k: nat) => Real.div(1.0, Real.sqrt((k as real))))) < 198.0);
  }
  // [TACTIC: exact h₃]
  assert (Real.sum(IccN(2, 10000), ((k: nat) => Real.div(1.0, Real.sqrt((k as real))))) < 198.0);
}



// ===== closed lemma for line 167 (from closed/algebra_sum1onsqrt2to1onsqrt10000lt198-167.dfy) =====

lemma {:induction false} vc_algebra_sum1onsqrt2to1onsqrt10000lt198_L167(n: int, n_1_0_1_0_1_0: int)
  requires 0 <= n
  requires 0 <= n_1_0_1_0_1_0
  requires forall k_1: int :: 0 <= k_1 ==> k_1 in IccN(2, 10000) ==> Real.div(1.0, Real.sqrt((k_1 as real))) < 2.0 * (Real.sqrt((k_1 as real)) - Real.sqrt((k_1 as real) - 1.0))
  requires n >= 1
  requires n == 1
  requires 0 <= 2
  ensures   Real.sum(IccN(2, 2), ((k: nat) => 2.0 * (Real.sqrt((k as real)) - Real.sqrt((k as real) - 1.0)))) == 2.0 * (Real.sqrt((2 as real)) - Real.sqrt(1.0))
{
      FinsetIccSelfNat(2);
      assert IccN(2, 2) == {2};  // [ADDED]
      NatCastOne();
      FinsetSumSingletonNat(2, ((k: nat) => 2.0 * (Real.sqrt((k as real)) - Real.sqrt((k as real) - 1.0))));  // [ADDED]
      assert Real.sum(IccN(2, 2), ((k: nat) => 2.0 * (Real.sqrt((k as real)) - Real.sqrt((k as real) - 1.0)))) == 2.0 * (Real.sqrt((2 as real)) - Real.sqrt((2 as real) - 1.0));  // [ADDED]
      assert (2 as real) - 1.0 == 1.0;  // [ADDED]
}

// Lean: theorem Finset.sum_singleton (f : α → β) (a : α) : ∑ x in {a}, f x = f a   (α = ℕ, β = ℝ)
lemma {:axiom} FinsetSumSingletonNat(a: nat, f: nat -> real)  // [ADDED DECLARATION]
  ensures Real.sum({a}, f) == f(a)
