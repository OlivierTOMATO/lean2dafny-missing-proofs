// CLOSED LEMMA for failing line amc12a_2008_p4-22 (theorem amc12a_2008_p4, Dafny line 22, ERR)
// closes with: K4 (types) — single
// added: NatCastProdReal ×2 calls; work-copy axiom = exact Mathlib Finset.prod_natCast/Nat.cast_prod with Finset.prod_congr folded (pointwise Nat.cast_add/Nat.cast_mul/Rat.cast_ofNat); Lean exec 347 internal: Finset.prod_natCast ×1, Rat.cast_natCast ×2, Nat.cast_add ×2, Nat.cast_mul ×2, Rat.cast_ofNat ×1, Fi
// Dafny: finished with 51 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_012/amc12a_2008_p4-22/K4.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// shard_012 K4: Lean exec 347 norm_cast cast lemmas (Finset.prod_natCast + prod_congr of Nat.cast_add/mul, Rat.cast_natCast/ofNat)
// Line lemma for failing line 22 of amc12a_2008_p4 (ERR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../../wt_integ5/out/amc12a_2008_p4.dfy"

// ========================================================================================
// FAILING LINE 22 (ERR) in amc12a_2008_p4: assertion might not hold
//   dafny |     assert (Real.div(Real.prod(IccN(1, 501), ((x: nat) => (((Rat.of_int(4)).to_real() * (x as real)) + (Rat.of_int(4)).to_real()))), Real.prod(IccN(1, 501), ((x: nat) => ((Rat.of_int(4)).to_real() * (x as real))))) == 502.0) by {  // sub-goal of `norm_cast` (Lean state) // @tac 626-635
//   statement kind: sub-goal (Lean tactic state)
//   @tac 626-635 | Lean: norm_cast
//        before-goal ⊢ (∏ x ∈ Finset.Icc (1 : ℕ) (501 : ℕ), (↑(4 : ℚ) * ↑x + ↑(4 : ℚ))) / ∏ x ∈ Finset.Icc (1 : ℕ) (501 : ℕ), ↑(4 : ℚ) * ↑x =
//      (502 : ℝ)
//        before-goal ⊢ ↑(∏ i ∈ Finset.Icc (1 : ℕ) (501 : ℕ), ((4 : ℕ) * i + (4 : ℕ))) / ↑(∏ i ∈ Finset.Icc (1 : ℕ) (501 : ℕ), (4 : ℕ) * i) =
//      (502 : ℚ)
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

// 1 path(s) merged (paths); 9 shared facts; 1 distinct path conditions
lemma {:induction false} vc_amc12a_2008_p4_L22()
  requires Rat.of_int(4).Rational?
  requires 4.0 == Rat.of_int(4).to_real()
  requires 0 <= 1
  requires 0 <= 501
  requires Rat.of_int(Int.prod(IccN(1, 501), ((v_1_2_i: nat) => 4 * v_1_2_i + 4))).Rational?
  requires Rat.of_int(Int.prod(IccN(1, 501), ((v_1_12_i: nat) => 4 * v_1_12_i))).Rational?
  requires Rat.div(Rat.of_int(Int.prod(IccN(1, 501), ((v_1_2_i: nat) => 4 * v_1_2_i + 4))), Rat.of_int(Int.prod(IccN(1, 501), ((v_1_12_i: nat) => 4 * v_1_12_i)))).Rational?
  requires Rat.of_int(502).Rational?
  requires Rat.div(Rat.of_int(Int.prod(IccN(1, 501), ((v_1_2_i: nat) => 4 * v_1_2_i + 4))), Rat.of_int(Int.prod(IccN(1, 501), ((v_1_12_i: nat) => 4 * v_1_12_i)))) == Rat.of_int(502)
  ensures  Real.div(Real.prod(IccN(1, 501), ((x: nat) => Rat.of_int(4).to_real() * (x as real) + Rat.of_int(4).to_real())), Real.prod(IccN(1, 501), ((x: nat) => Rat.of_int(4).to_real() * (x as real)))) == 502.0
{
  NatCastProdReal(IccN(1, 501), ((v_1_2_i: nat) => 4 * v_1_2_i + 4), ((x: nat) => Rat.of_int(4).to_real() * (x as real) + Rat.of_int(4).to_real()));
  NatCastProdReal(IccN(1, 501), ((v_1_12_i: nat) => 4 * v_1_12_i), ((x: nat) => Rat.of_int(4).to_real() * (x as real)));
}

// side checks at the same line (not the reported failure): 4 check(s)
// side check: value always satisfies the subset constraints of 'nat'
lemma {:induction false} vc_amc12a_2008_p4_L22_side1()
  requires Rat.of_int(4).Rational?
  requires 4.0 == Rat.of_int(4).to_real()
  requires 0 <= 1
  requires 0 <= 501
  requires Rat.of_int(Int.prod(IccN(1, 501), ((v_1_2_i: nat) => 4 * v_1_2_i + 4))).Rational?
  requires Rat.of_int(Int.prod(IccN(1, 501), ((v_1_12_i: nat) => 4 * v_1_12_i))).Rational?
  requires Rat.div(Rat.of_int(Int.prod(IccN(1, 501), ((v_1_2_i: nat) => 4 * v_1_2_i + 4))), Rat.of_int(Int.prod(IccN(1, 501), ((v_1_12_i: nat) => 4 * v_1_12_i)))).Rational?
  requires Rat.of_int(502).Rational?
  requires Rat.div(Rat.of_int(Int.prod(IccN(1, 501), ((v_1_2_i: nat) => 4 * v_1_2_i + 4))), Rat.of_int(Int.prod(IccN(1, 501), ((v_1_12_i: nat) => 4 * v_1_12_i)))) == Rat.of_int(502)
  ensures  0 <= 1
{ }

// side check: value always satisfies the subset constraints of 'nat'
lemma {:induction false} vc_amc12a_2008_p4_L22_side2()
  requires Rat.of_int(4).Rational?
  requires 4.0 == Rat.of_int(4).to_real()
  requires 0 <= 1
  requires 0 <= 501
  requires Rat.of_int(Int.prod(IccN(1, 501), ((v_1_2_i: nat) => 4 * v_1_2_i + 4))).Rational?
  requires Rat.of_int(Int.prod(IccN(1, 501), ((v_1_12_i: nat) => 4 * v_1_12_i))).Rational?
  requires Rat.div(Rat.of_int(Int.prod(IccN(1, 501), ((v_1_2_i: nat) => 4 * v_1_2_i + 4))), Rat.of_int(Int.prod(IccN(1, 501), ((v_1_12_i: nat) => 4 * v_1_12_i)))).Rational?
  requires Rat.of_int(502).Rational?
  requires Rat.div(Rat.of_int(Int.prod(IccN(1, 501), ((v_1_2_i: nat) => 4 * v_1_2_i + 4))), Rat.of_int(Int.prod(IccN(1, 501), ((v_1_12_i: nat) => 4 * v_1_12_i)))) == Rat.of_int(502)
  ensures  0 <= 501
{ }


// K4 (work copy only): exact Mathlib Nat.cast_prod / Finset.prod_natCast (↑(∏ i ∈ s, f i) = ∏ i ∈ s, ↑(f i)),
// with Finset.prod_congr folded in (h agrees pointwise with the cast of f: Nat.cast_add/Nat.cast_mul/Rat.cast_ofNat).
// All recorded at Lean exec 347 (norm_cast).
lemma {:axiom} NatCastProdReal(s: set<nat>, f: nat -> int, h: nat -> real)
  requires forall x :: x in s ==> f(x) >= 0
  requires forall x :: x in s ==> h(x) == f(x) as real
  ensures Real.prod(s, h) == Int.prod(s, f) as real
