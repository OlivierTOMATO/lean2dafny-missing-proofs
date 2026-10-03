// CLOSED LEMMA for failing line aime_1999_p11-1192 (theorem aime_1999_p11, Dafny line 1192, OOR)
// closes with: K5 (automation lemma) — single
// added: RatNumDivEqOfCoprime(175, 2) — the norm_num hint lemma Rat.num_div_eq_of_coprime (existing library counterpart)
// Dafny: finished with 23 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_005/aime_1999_p11-1192/K5.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 1192 of aime_1999_p11 (OOR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../../wt_integ5/library/library_new.dfy"

// ========================================================================================
// FAILING LINE 1192 (OOR) in aime_1999_p11: Verification out of resource (aime_1999_p11)
//   dafny |     assert (m.num == 175); // @tac 12210-12393 // @tac 12210-12369 // @tac 12210-12310 // @tac 12210-12285 // @tac 12210-12267 // @tac 12210-12222
//   statement kind: have / step assertion
//   @tac 12210-12393 | Lean: rw [h_m_val]
//        before-goal ⊢ m.num = (175 : ℤ)
//   @tac 12210-12369 | Lean: rw [h_m_val]
//        before-goal ⊢ m.num = (175 : ℤ)
//   @tac 12210-12310 | Lean: rw [h_m_val]
//        before-goal ⊢ m.num = (175 : ℤ)
//   @tac 12210-12285 | Lean: rw [h_m_val]
//        before-goal ⊢ m.num = (175 : ℤ)
//   @tac 12210-12267 | Lean: rw [h_m_val]
//        before-goal ⊢ m.num = (175 : ℤ)
//   @tac 12210-12222 | Lean: rw [h_m_val]
//        before-goal ⊢ m.num = (175 : ℤ)
//        before-goal ⊢ (175 / 2 : ℚ).num = (175 : ℤ)
// Lean have h_num, Lean lines 267-276:
//   lean  |   have h_num : m.num = 175 := by
//   lean  |     rw [h_m_val]
//   lean  |     <;> norm_num [Rat.num_div_eq_of_coprime]
//   lean  |     <;> norm_cast
//   lean  |     <;>
//   lean  |     (try decide)
//   lean  |     <;>
//   lean  |     (try ring_nf at * <;> norm_num at * <;> aesop)
//   lean  |     <;>
//   lean  |     (try aesop)

// 1 path(s) merged (paths); 18 shared facts; 1 distinct path conditions
// [k_ablate K5] K5: the norm_num [Rat.num_div_eq_of_coprime] lemma as a call (gcd side condition left to Z3)

lemma {:induction false} vc_aime_1999_p11_L1192(m: Rat.rat)
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
  requires Rat.of_int(175).Rational?
  requires Rat.of_int(2).Rational?
  requires Rat.div(Rat.of_int(175), Rat.of_int(2)).Rational?
  requires m == Rat.div(Rat.of_int(175), Rat.of_int(2))
  ensures  m.num == 175
{
  RatNumDivEqOfCoprime(175, 2);  // K5: norm_num hint Rat.num_div_eq_of_coprime
}
