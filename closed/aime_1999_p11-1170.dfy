// CLOSED LEMMA for failing line aime_1999_p11-1170 (theorem aime_1999_p11, Dafny line 1170, OOR)
// closes with: K4 (types) — single
// added: lemma {:axiom} RatCastInj(a: Rat.rat, b: Rat.rat) ensures a.to_real() == b.to_real() <==> a == b  (Mathlib Rat.cast_inj, added to work copy); call RatCastInj(Rat.mul(m, of_int 2), of_int 175)
// Dafny: finished with 20 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_005/aime_1999_p11-1170/K4.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 1170 of aime_1999_p11 (OOR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../../wt_integ5/library/library_new.dfy"

// ========================================================================================
// FAILING LINE 1170 (OOR) in aime_1999_p11: Verification out of resource (aime_1999_p11)
//   dafny |           assert (Rat.mul(m, Rat.of_int(2)) == Rat.of_int(175));  // hypothesis h₃ after `norm_cast` (Lean state) // @tac-hyp 11810-11831
//   statement kind: hypothesis after tactic (@tac-hyp)
//   @tac-hyp 11810-11831 h₃ after: m * (2 : ℚ) = (175 : ℚ)
// inside Lean have h₇, Lean lines 245-264:
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

// 1 path(s) merged (paths); 20 shared facts; 1 distinct path conditions
// [k_ablate K4] K4: Mathlib Rat.cast_inj added and called at (m*2, 175)
// Mathlib: theorem Rat.cast_inj {α} [DivisionRing α] [CharZero α] {m n : ℚ} : (m : α) = n ↔ m = n  (α = ℝ)
lemma {:axiom} RatCastInj(a: Rat.rat, b: Rat.rat)
  ensures a.to_real() == b.to_real() <==> a == b

lemma {:induction false} vc_aime_1999_p11_L1170(m: Rat.rat)
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
  ensures  Rat.mul(m, Rat.of_int(2)) == Rat.of_int(175)
{
  RatCastInj(Rat.mul(m, Rat.of_int(2)), Rat.of_int(175));  // K4: Rat.cast_inj (norm_cast at h₃)
}
