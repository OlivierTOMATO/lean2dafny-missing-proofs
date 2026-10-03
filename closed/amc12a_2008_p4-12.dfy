// CLOSED LEMMA for failing line amc12a_2008_p4-12 (theorem amc12a_2008_p4, Dafny line 12, ERR)
// closes with: K5 (automation lemma) — single
// added: FinsetProdDivDistribNat(...) call; work-copy axiom = exact Mathlib Finset.prod_div_distrib + Finset.prod_congr (Lean exec 279 internal: Finset.prod_div_distrib ×1)
// Dafny: finished with 10 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_012/amc12a_2008_p4-12/K5.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// shard_012 K5: Lean exec 279 internal Finset.prod_div_distrib (+prod_congr) as lemma call
// Line lemma for failing line 12 of amc12a_2008_p4 (ERR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../../wt_integ5/out/amc12a_2008_p4.dfy"

// ========================================================================================
// FAILING LINE 12 (ERR) in amc12a_2008_p4: a postcondition could not be proved on this return path
//   dafny | {
//   statement kind: postcondition at return point
// Lean theorem statement, Lean lines 12-70:
//   lean  | theorem amc12a_2008_p4 : (∏ k in Finset.Icc (1 : ℕ) 501, ((4 : ℝ) * k + 4) / (4 * k)) = 502 := by
//   lean  |   norm_num [Finset.prod_range_succ]
//   lean  |   <;> norm_num
//   lean  |   <;> rw [show (4 : ℝ) = (4 : ℚ) by norm_num]
//   lean  |   <;> norm_cast
//   lean  |   <;> simp [Finset.prod_range_succ]
//   lean  |   <;> norm_num
//   lean  |   <;> ring
//   lean  |   <;> simp_all
//   lean  |   <;> norm_num
//   lean  |   <;> ring
//   lean  |   <;> simp_all
//   lean  |   <;> norm_num
//   lean  |   <;> ring
//   lean  |   <;> simp_all
//   lean  |   <;> norm_num
//   lean  |   <;> ring
//   lean  |   <;> simp_all
//   lean  |   <;> norm_num
//   lean  |   <;> ring
//   lean  |   <;> simp_all
//   lean  |   <;> norm_num
//   lean  |   <;> ring
//   lean  |   <;> simp_all
//   lean  |   <;> norm_num
//   lean  |   <;> ring
//   lean  |   <;> simp_all
//   lean  |   <;> norm_num
//   lean  |   <;> ring
//   lean  |   <;> simp_all
//   lean  |   <;> norm_num
//   lean  |   <;> ring
//   lean  |   <;> simp_all
//   lean  |   <;> norm_num
//   lean  |   <;> ring
//   lean  |   <;> simp_all
//   lean  |   <;> norm_num
//   lean  |   <;> ring
//   lean  |   <;> simp_all
//   lean  |   <;> norm_num
//   lean  |   <;> ring
//   lean  |   <;> simp_all
//   lean  |   <;> norm_num
//   lean  |   <;> ring
//   lean  |   <;> simp_all
//   lean  |   <;> norm_num
//   lean  |   <;> ring
//   lean  |   <;> simp_all
//   lean  |   <;> norm_num
//   lean  |   <;> ring
//   lean  |   <;> simp_all
//   lean  |   <;> norm_num
//   lean  |   <;> ring
//   lean  |   <;> simp_all
//   lean  |   <;> norm_num
//   lean  |   <;> ring
//   lean  |   <;> simp_all
//   lean  | 

// 1 path(s) merged (paths); 3 shared facts; 1 distinct path conditions
lemma {:induction false} vc_amc12a_2008_p4_L12()
  requires 0 <= 1
  requires 0 <= 501
  requires Real.div(Real.prod(IccN(1, 501), ((x: nat) => 4.0 * (x as real) + 4.0)), Real.prod(IccN(1, 501), ((x: nat) => 4.0 * (x as real)))) == 502.0
  ensures  Real.prod(IccN(1, 501), ((k: nat) => Real.div(4.0 * (k as real) + 4.0, 4.0 * (k as real)))) == 502.0
{
  FinsetProdDivDistribNat(IccN(1, 501), ((x: nat) => 4.0 * (x as real) + 4.0), ((x: nat) => 4.0 * (x as real)), ((k: nat) => Real.div(4.0 * (k as real) + 4.0, 4.0 * (k as real))));
}


// K5 (work copy only): exact Mathlib Finset.prod_div_distrib (∏ i ∈ s, f i / g i = (∏ i ∈ s, f i) / ∏ i ∈ s, g i)
// stated with Finset.prod_congr folded in (h agrees with f/g on s); both recorded at exec 279 / 347.
lemma {:axiom} FinsetProdDivDistribNat(s: set<nat>, f: nat -> real, g: nat -> real, h: nat -> real)
  requires forall x :: x in s ==> h(x) == Real.div(f(x), g(x))
  ensures Real.prod(s, h) == Real.div(Real.prod(s, f), Real.prod(s, g))
