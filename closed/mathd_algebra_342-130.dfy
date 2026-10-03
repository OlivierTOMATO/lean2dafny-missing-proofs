// CLOSED — failing line mathd_algebra_342-130: theorem mathd_algebra_342, Dafny line 130 (ERR: assertion might not hold)
// failing Dafny line: assert (Real.sum(range(5), ((k: nat) => (a + ((k as real) * d)))) == ((5.0 * a) + (10.0 * d))) by {
// Lean step: norm_num [Finset.sum_range_succ, Finset.sum_range_succ, Finset.sum_range_succ, Finset.sum_range_succ,
// hypotheses: 17 facts Z3 had at the line (goal itself removed: 0; the block's own asserts removed: 1); nothing assumed beyond the facts in scope
// how it closes: K5 — FinsetSumRangeSucc(0, F); FinsetSumRangeZero(F);
// Dafny: finished with 26 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/mathd_algebra_342.dfy"
lemma {:induction false} vc_mathd_algebra_342_L130(a: real, d: real)
  requires Real.sum(range(5), ((k: nat) => a + (k as real) * d)) == 70.0
  requires Real.sum(range(10), ((k: nat) => a + (k as real) * d)) == 210.0
  requires 0 <= 4
  requires ((k: nat) => a + (k as real) * d).requires(4)
  requires Real.sum(range(4 + 1), ((k: nat) => a + (k as real) * d)) == Real.sum(range(4), ((k: nat) => a + (k as real) * d)) + ((k: nat) => a + (k as real) * d)(4)
  requires 0 <= 3
  requires ((k: nat) => a + (k as real) * d).requires(3)
  requires Real.sum(range(3 + 1), ((k: nat) => a + (k as real) * d)) == Real.sum(range(3), ((k: nat) => a + (k as real) * d)) + ((k: nat) => a + (k as real) * d)(3)
  requires 0 <= 2
  requires ((k: nat) => a + (k as real) * d).requires(2)
  requires Real.sum(range(2 + 1), ((k: nat) => a + (k as real) * d)) == Real.sum(range(2), ((k: nat) => a + (k as real) * d)) + ((k: nat) => a + (k as real) * d)(2)
  requires 0 <= 1
  requires ((k: nat) => a + (k as real) * d).requires(1)
  requires Real.sum(range(1 + 1), ((k: nat) => a + (k as real) * d)) == Real.sum(range(1), ((k: nat) => a + (k as real) * d)) + ((k: nat) => a + (k as real) * d)(1)
  requires (0 as real) == 0.0
  requires (1 as real) == 1.0
  requires 0 <= 5
  ensures   Real.sum(range(5), ((k: nat) => a + (k as real) * d)) == 5.0 * a + 10.0 * d
{
  FinsetSumRangeSucc(0, ((k: nat) => a + (k as real) * d));
  FinsetSumRangeZero(((k: nat) => a + (k as real) * d));
      // [TACTIC: «_<;>_» [ Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ ] norm_num [ Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ ] <;> ring_nf ring_nf <;> norm_num norm_num <;> linarith linarith]
      // [TACTIC: choice [ Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ ] norm_num [ Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ , Finset.sum_range_succ ]]
      FinsetSumRangeSucc(4, ((x: nat) => (a + ((x as real) * d))));  // cite: Finset.sum_range_succ
      FinsetSumRangeSucc(3, ((x: nat) => (a + ((x as real) * d))));  // cite: Finset.sum_range_succ
      FinsetSumRangeSucc(2, ((x: nat) => (a + ((x as real) * d))));  // cite: Finset.sum_range_succ
      FinsetSumRangeSucc(1, ((x: nat) => (a + ((x as real) * d))));  // cite: Finset.sum_range_succ
      // UNCITED-APPLIED Finset.sum_singleton: recorded instance not expressible here (sort/type/scope), not guessed
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
      // UNCITED-APPLIED internal ×38 [exec 51 605-760]: applications made inside the tactic's own automation, not stated — Finset.sum_singleton ×1, add_zero ×1, one_mul ×1; machinery/glue: congrArg ×8, Eq.trans ×8, Mathlib.Meta.NormNum.IsNat.to_eq ×5, Mathlib.Meta.NormNum.isNat_natCast ×5 (+2 more heads, ×9) (cited in this block, not counted here: Finset.sum_range_succ [Lean recorded ×4], Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
      assert (((((a + (a + d)) + (a + (2.0 * d))) + (a + (3.0 * d))) + (a + (4.0 * d))) == ((5.0 * a) + (10.0 * d))) by {  // sub-goal of `ring_nf` (Lean state) // @tac 771-778
        PowOne(a);  // cite: pow_one [applied by the tactic, not named in it]
        PowOne(d);  // cite: pow_one [applied by the tactic, not named in it]
        // UNCITED-APPLIED internal ×118 [exec 60 771-778]: applications made inside the tactic's own automation, not stated — add_zero ×1; machinery/glue: Mathlib.Tactic.Ring.add_congr ×8, Mathlib.Tactic.Ring.add_pf_add_overlap ×7, Mathlib.Tactic.Ring.add_overlap_pf ×7, Mathlib.Meta.NormNum.IsNat.to_raw_eq ×7 (+21 more heads, ×88) (cited in this block, not counted here: pow_one [Lean recorded ×2])
      }
}

