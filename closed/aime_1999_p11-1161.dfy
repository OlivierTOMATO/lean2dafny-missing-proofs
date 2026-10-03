// CLOSED LEMMA for failing line aime_1999_p11-1161 (theorem aime_1999_p11, Dafny line 1161, OOR)
// closes with: K2 (computation) — single
// added: assert gcd(175,2)==1; RatNumDivEqOfCoprime(175,2); RatDenDivEqOfCoprime(175,2); RatNumDenOfReducedValue(m,175,2) — Lean's computed representation of 175/2 (norm_num IsRat), existing library lemmas
// Dafny: finished with 35 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_005/aime_1999_p11-1161/K2.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 1161 of aime_1999_p11 (OOR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../../wt_integ5/library/library_new.dfy"

// ========================================================================================
// FAILING LINE 1161 (OOR) in aime_1999_p11: Verification out of resource (aime_1999_p11)
//   dafny |       assert (m == Rat.div(Rat.of_int(175), Rat.of_int(2))) by { // @tac 11739-12154 // @tac 11739-12129 // @tac 11739-12099 // @tac 11739-12070 // @tac 11739-12040 // @tac 11739-11987 // @tac 11739-11942 // @tac 11739-11917 // @tac 11739-11892 // @tac 11739-11861 // @tac 11739-11831 // @tac 11739-1
//   statement kind: have / step assertion
//   @tac 11739-12154 | Lean: norm_cast at h₃ ⊢
//        before-goal ⊢ m = (175 / 2 : ℚ)
//   @tac 11739-12129 | Lean: norm_cast at h₃ ⊢
//        before-goal ⊢ m = (175 / 2 : ℚ)
//   @tac 11739-12099 | Lean: norm_cast at h₃ ⊢
//        before-goal ⊢ m = (175 / 2 : ℚ)
//   @tac 11739-12070 | Lean: norm_cast at h₃ ⊢
//        before-goal ⊢ m = (175 / 2 : ℚ)
//   @tac 11739-12040 | Lean: norm_cast at h₃ ⊢
//        before-goal ⊢ m = (175 / 2 : ℚ)
//   @tac 11739-11987 | Lean: norm_cast at h₃ ⊢
//        before-goal ⊢ m = (175 / 2 : ℚ)
//   @tac 11739-11942 | Lean: norm_cast at h₃ ⊢
//        before-goal ⊢ m = (175 / 2 : ℚ)
//   @tac 11739-11917 | Lean: norm_cast at h₃ ⊢
//        before-goal ⊢ m = (175 / 2 : ℚ)
//   @tac 11739-11892 | Lean: norm_cast at h₃ ⊢
//        before-goal ⊢ m = (175 / 2 : ℚ)
//   @tac 11739-11861 | Lean: norm_cast at h₃ ⊢
//        before-goal ⊢ m = (175 / 2 : ℚ)
//   @tac 11739-11831 | Lean: norm_cast at h₃ ⊢
//        before-goal ⊢ m = (175 / 2 : ℚ)
//   @tac 11739-11799 | Lean: norm_cast at h₃ ⊢
//        before-goal ⊢ m = (175 / 2 : ℚ)
//   @tac 11739-11760 | Lean: norm_cast at h₃ ⊢
//        before-goal ⊢ m = (175 / 2 : ℚ)
//   @tac 11777-11799 | Lean: field_simp at h₃ ⊢
//        before-goal ⊢ m = (175 / 2 : ℚ)
// Lean have h₇, Lean lines 245-264:
//   lean  |     have h₇ : m = 175 / 2 := by
//   lean  |       norm_cast at h₃ ⊢
//   lean  |       <;>
//   lean  |       field_simp at h₃ ⊢ <;>
//   lean  |       norm_cast at h₃ ⊢ <;>
//   lean  |       ring_nf at h₃ ⊢ <;>
//   lean  |       norm_num at h₃ ⊢ <;>
//   lean  |       (try norm_num) <;>
//   lean  |       (try linarith) <;>
//   lean  |       (try nlinarith [Real.pi_gt_three])
//   lean  |       <;>
//   lean  |       simp_all [Rat.ext_iff, Nat.cast_inj]
//   lean  |       <;>
//   lean  |       norm_num at *
//   lean  |       <;>
//   lean  |       ring_nf at *
//   lean  |       <;>
//   lean  |       norm_num at *
//   lean  |       <;>
//   lean  |       linarith

// 1 path(s) merged (paths); 22 shared facts; 1 distinct path conditions
// [k_ablate K2] K2: Lean's computed representation of 175/2 (num 175, den 2, coprime) as checked asserts/lemma calls; existing library lemmas

lemma {:induction false} vc_aime_1999_p11_L1161(m: Rat.rat)
  requires m.Rational?
  requires gcd(Int.natAbs(m.num), m.denom) == 1
  requires Rat.lt(Rat.of_int(0), m)
  requires Rat.of_int(0).num * m.denom < m.num * Rat.of_int(0).denom
  requires Real.sum(IccN(1, 35), ((k: nat) => Real.sin(5.0 * (k as real) * Real.pi() / 180.0))) == Real.tan(m.to_real() * Real.pi() / 180.0)
  requires Real.div((m.num as real), (m.denom as real)) < 90.0
  requires 0 <= 1
  requires 0 <= 35
  requires 180.0 != 0.0
  requires Real.sum(IccN(1, 35), ((k: nat) => Real.sin(5.0 * (k as real) * Real.pi() / 180.0))) == Real.div(Real.cos(2.5 * Real.pi() / 180.0), Real.sin(2.5 * Real.pi() / 180.0))
  requires 72.0 != 0.0
  requires Real.sum(IccN(1, 35), ((k: nat) => Real.sin(5.0 * (k as real) * Real.pi() / 180.0))) == Real.tan(35.0 * Real.pi() / 72.0)
  requires Real.tan(m.to_real() * Real.pi() / 180.0) == Real.tan(35.0 * Real.pi() / 72.0)
  requires m.to_real() * Real.pi() / 180.0 == 35.0 * Real.pi() / 72.0
  requires 2.0 != 0.0
  requires m.to_real() == 175.0 / 2.0
  requires m.to_real() * 2.0 == 175.0
  requires Rat.of_int(2).Rational?
  requires Rat.mul(m, Rat.of_int(2)).Rational?
  requires Rat.of_int(175).Rational?
  requires Rat.mul(m, Rat.of_int(2)) == Rat.of_int(175)
  requires Rat.div(Rat.of_int(175), Rat.of_int(2)).Rational?
  ensures  m == Rat.div(Rat.of_int(175), Rat.of_int(2))
{
  assert gcd(175, 2) == 1;  // K2: Lean norm_num/decide value
  RatNumDivEqOfCoprime(175, 2); RatDenDivEqOfCoprime(175, 2);  // (175/2:ℚ).num/.den (norm_num ℚ evaluation, IsRat)
  RatNumDenOfReducedValue(m, 175, 2);
}
