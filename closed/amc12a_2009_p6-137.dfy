// CLOSED LEMMA for failing line amc12a_2009_p6-137 (theorem amc12a_2009_p6, Dafny line 137, ERR)
// closes with: K2 (computation) — single
// added: ring_nf normal forms: assert (2 as real)*(m*n) == m*n*2.0; assert 2.0*(m*n) == m*n*2.0
// Dafny: finished with 7 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_016/amc12a_2009_p6-137/K2.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 137 of amc12a_2009_p6 (ERR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "/home/changjie/lean2dafny_research/agents_tac/wt_integ5/out/amc12a_2009_p6.dfy"

// ========================================================================================
// FAILING LINE 137 (ERR) in amc12a_2009_p6: assertion might not hold
//   dafny |                     assert (Real.rpow(2.0, ((2 as real) * (m * n))) == Real.rpow(2.0, (2.0 * (m * n)))) by {  // sub-goal of `ring_nf` (Lean state) // @tac 3143-3150
//   statement kind: sub-goal (Lean tactic state)
//   @tac 3143-3150 | Lean: ring_nf
//        before-goal ⊢ (2 : ℝ) ^ (↑(2 : ℕ) * (m * n)) = (2 : ℝ) ^ ((2 : ℝ) * (m * n))
//        before-goal ⊢ (0 : ℝ) ≤ (2 : ℝ)
// inside Lean have h₆₅, Lean lines 83-85:
//   lean  |             have h₆₅ : ((2 : ℝ) ^ 2 : ℝ) ^ (m * n : ℝ) = (2 : ℝ) ^ (2 * (m * n) : ℝ) := by
//   lean  |               rw [← Real.rpow_nat_cast]
//   lean  |               rw [← Real.rpow_mul] <;> ring_nf <;> norm_num <;> linarith

// 1 path(s) merged (paths); 15 shared facts; 1 distinct path conditions
lemma {:induction false} vc_amc12a_2009_p6_L137(m: real, n: real, p: real, q: real)
  requires p == Real.rpow(2.0, m)
  requires q == Real.rpow(3.0, n)
  requires Real.rpow(p, 2.0 * n) == Real.rpow(2.0, m * (2.0 * n))
  requires Real.rpow(q, m) == Real.rpow(3.0, n * m)
  requires Real.rpow(p, 2.0 * n) * Real.rpow(q, m) == Real.rpow(2.0, m * (2.0 * n)) * Real.rpow(3.0, n * m)
  requires Real.rpow(2.0, m * (2.0 * n)) == Real.rpow(2.0, 2.0 * (m * n))
  requires 4.0 == 2.0 * 2.0
  requires 2.0 * 2.0 > 0.0
  requires 0 <= 2
  requires Real.rpow(2.0, (2 as real)) == Real.pow(2.0, 2)
  requires 0.0 <= 2.0
  requires Real.rpow(2.0, (2 as real) * (m * n)) == Real.rpow(Real.rpow(2.0, (2 as real)), m * n)
  requires Real.pow(m, 1) == m
  requires Real.pow(n, 1) == n
  requires Real.pow(Real.rpow(2.0, m * n * 2.0), 1) == Real.rpow(2.0, m * n * 2.0)
  ensures  Real.rpow(2.0, (2 as real) * (m * n)) == Real.rpow(2.0, 2.0 * (m * n))
{
  // K2: ring_nf normal form of the rpow exponent (exec 885: both sides normalised to m * n * 2)
  assert (2 as real) * (m * n) == m * n * 2.0;
  assert 2.0 * (m * n) == m * n * 2.0;
}

