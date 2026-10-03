// NOT CLOSED — failing line algebra_sum1onsqrt2to1onsqrt10000lt198-167: theorem algebra_sum1onsqrt2to1onsqrt10000lt198, Dafny line 167 (ERR: assertion might not hold)
// failing Dafny line: assert (Real.sum(IccN(2, 2), ((k: nat) => (2.0 * (Real.sqrt((k as real)) - Real.sqrt(((k as real) - 1.0)))))) == (2.0 * (Real.sqrt((2 as real)) - Real.sqrt(1.0)))) by {
// Lean step: norm_num [Finset.sum_Icc_succ_top]
// hypotheses: 8 facts Z3 had at the line; nothing assumed beyond the facts in scope
// not closed: tried H0=error, K1=error, K4=error; this file is the honest base attempt
// Dafny: 1 parse errors detected in H_algebra_sum1onsqrt2to1onsqrt10000lt198-167_H0.dfy  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/algebra_sum1onsqrt2to1onsqrt10000lt198.dfy"
lemma {:induction false} vc_algebra_sum1onsqrt2to1onsqrt10000lt198_L167(n: int, n_1_0_1_0: int, n_1_0_1_0_1_0: int)
  requires 0 <= n
  requires 0 <= n_1_0_1_0
  requires 0 <= n_1_0_1_0_1_0
  requires forall k_1: int :: 0 <= k_1 ==> k_1 in IccN(2, 10000) ==> Real.div(1.0, Real.sqrt((k_1 as real))) < 2.0 * (Real.sqrt((k_1 as real)) - Real.sqrt((k_1 as real) - 1.0))
  requires n >= 1
  requires n == 1
  requires 0 <= 2
  requires IccN(2, 2) == 
{
      // [TACTIC: «Norm_num[_]At___» [ Finset.sum_Icc_succ_top ]]
      // UNCITED Finset.sum_Icc_succ_top: named in this rewriting step; no record of Lean's proof attributes an application of it to this execution (its recorded applications are at other tactics of the proof; a rewrite at a hypothesis is filed under the tactic that later uses the hypothesis, and a conditional / under-binder simp rewrite may be unrecorded), so whether it was applied here is not known; not stated
      // UNCITED-APPLIED Finset.sum_congr: recorded instance not expressible here (sort/type/scope), not guessed
      FinsetIccSelfNat(2);  // cite: Finset.Icc_self [applied by the tactic, not named in it]
      // UNCITED-APPLIED Finset.sum_singleton: recorded instance not expressible here (sort/type/scope), not guessed
      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
      // UNCITED-APPLIED internal ×26 [exec 628 4396-4430]: applications made inside the tactic's own automation, not stated — Finset.sum_congr ×1, Finset.sum_singleton ×1; machinery/glue: congrArg ×5, Eq.trans ×4, congr ×3, Mathlib.Meta.NormNum.IsNat.to_eq ×2 (+8 more heads, ×10) (cited in this block, not counted here: Finset.Icc_self [Lean recorded ×1], Nat.cast_one [Lean recorded ×1])
}

