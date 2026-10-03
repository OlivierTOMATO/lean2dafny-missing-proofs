// CLOSED LEMMA for failing line amc12a_2009_p2-26 (theorem amc12a_2009_p2, Dafny line 26, OOR)
// closes with: K4 (types) — single
// added: RatCastInjective(lhs, rhs) [Mathlib Rat.cast_injective as {:axiom} lemma in the work copy]
// Dafny: finished with 2 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_016/amc12a_2009_p2-26/K4.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 26 of amc12a_2009_p2 (OOR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "/home/changjie/lean2dafny_research/agents_tac/wt_integ5/out/amc12a_2009_p2.dfy"

// ========================================================================================
// FAILING LINE 26 (OOR) in amc12a_2009_p2: Verification out of resource (amc12a_2009_p2)
//   dafny |   assert (Rat.add(Rat.of_int(1), Rat.div(Rat.of_int(1), Rat.div(Rat.of_int(3), Rat.of_int(2)))) == Rat.div(Rat.of_int(5), Rat.of_int(3))); // @tac 1260-1360 // @tac 1260-1343 // @tac 1260-1330 // @tac 1260-1313 // @tac 1260-1283
//   statement kind: have / step assertion
//   @tac 1260-1360 | Lean: norm_num [step1, step2]
//        before-goal ⊢ (1 : ℚ) + (1 : ℚ) / (3 / 2 : ℚ) = (5 / 3 : ℚ)
//   @tac 1260-1343 | Lean: norm_num [step1, step2]
//        before-goal ⊢ (1 : ℚ) + (1 : ℚ) / (3 / 2 : ℚ) = (5 / 3 : ℚ)
//   @tac 1260-1330 | Lean: norm_num [step1, step2]
//        before-goal ⊢ (1 : ℚ) + (1 : ℚ) / (3 / 2 : ℚ) = (5 / 3 : ℚ)
//   @tac 1260-1313 | Lean: norm_num [step1, step2]
//        before-goal ⊢ (1 : ℚ) + (1 : ℚ) / (3 / 2 : ℚ) = (5 / 3 : ℚ)
//   @tac 1260-1283 | Lean: norm_num [step1, step2]
//        before-goal ⊢ (1 : ℚ) + (1 : ℚ) / (3 / 2 : ℚ) = (5 / 3 : ℚ)
// Lean have step3, Lean lines 32-37:
//   lean  |   have step3 : 1 + 1 / (3 / 2) = (5 : ℚ) / 3 := by
//   lean  |     norm_num [step1, step2]
//   lean  |     <;> simp [div_eq_mul_inv]
//   lean  |     <;> norm_num
//   lean  |     <;> ring
//   lean  |     <;> norm_num

// 1 path(s) merged (paths); 13 shared facts; 1 distinct path conditions
lemma {:induction false} vc_amc12a_2009_p2_L26()
  requires 1 + 1 == 2
  requires Rat.of_int(1).Rational?
  requires Rat.add(Rat.of_int(1), Rat.of_int(1)).Rational?
  requires Rat.div(Rat.of_int(1), Rat.add(Rat.of_int(1), Rat.of_int(1))).Rational?
  requires Rat.add(Rat.of_int(1), Rat.div(Rat.of_int(1), Rat.add(Rat.of_int(1), Rat.of_int(1)))).Rational?
  requires Rat.of_int(3).Rational?
  requires Rat.of_int(2).Rational?
  requires Rat.div(Rat.of_int(3), Rat.of_int(2)).Rational?
  requires Rat.add(Rat.of_int(1), Rat.div(Rat.of_int(1), Rat.add(Rat.of_int(1), Rat.of_int(1)))) == Rat.div(Rat.of_int(3), Rat.of_int(2))
  requires Rat.div(Rat.of_int(1), Rat.div(Rat.of_int(3), Rat.of_int(2))).Rational?
  requires Rat.add(Rat.of_int(1), Rat.div(Rat.of_int(1), Rat.div(Rat.of_int(3), Rat.of_int(2)))).Rational?
  requires Rat.of_int(5).Rational?
  requires Rat.div(Rat.of_int(5), Rat.of_int(3)).Rational?
  ensures  Rat.add(Rat.of_int(1), Rat.div(Rat.of_int(1), Rat.div(Rat.of_int(3), Rat.of_int(2)))) == Rat.div(Rat.of_int(5), Rat.of_int(3))
{
  // K4: cast ℚ→ℝ injective (Rat.cast_injective)
  RatCastInjective(Rat.add(Rat.of_int(1), Rat.div(Rat.of_int(1), Rat.div(Rat.of_int(3), Rat.of_int(2)))), Rat.div(Rat.of_int(5), Rat.of_int(3)));
}


// Mathlib: Rat.cast_injective (ℚ → ℝ cast is injective), exact statement over the library's to_real cast
lemma {:axiom} RatCastInjective(a: Rat.rat, b: Rat.rat)
  requires a.to_real() == b.to_real()
  ensures a == b
