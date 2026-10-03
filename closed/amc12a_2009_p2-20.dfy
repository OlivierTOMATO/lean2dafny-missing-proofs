// CLOSED LEMMA for failing line amc12a_2009_p2-20 (theorem amc12a_2009_p2, Dafny line 20, ERR)
// closes with: K4 (types) — single
// added: RatCastInjective(lhs, rhs) [Mathlib Rat.cast_injective as {:axiom} lemma in the work copy] on the two sides
// Dafny: finished with 2 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_016/amc12a_2009_p2-20/K4.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 20 of amc12a_2009_p2 (ERR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "/home/changjie/lean2dafny_research/agents_tac/wt_integ5/out/amc12a_2009_p2.dfy"

// ========================================================================================
// FAILING LINE 20 (ERR) in amc12a_2009_p2: assertion might not hold
//   dafny |   assert (Rat.add(Rat.of_int(1), Rat.div(Rat.of_int(1), Rat.add(Rat.of_int(1), Rat.of_int(1)))) == Rat.div(Rat.of_int(3), Rat.of_int(2))); // @tac 911-1199 // @tac 911-1118 // @tac 911-1029 // @tac 911-927
//   statement kind: have / step assertion
//   @tac 911-1199 | Lean: norm_num [step1]
//        before-goal ⊢ (1 : ℚ) + (1 : ℚ) / ((1 : ℚ) + (1 : ℚ)) = (3 / 2 : ℚ)
//   @tac 911-1118 | Lean: norm_num [step1]
//        before-goal ⊢ (1 : ℚ) + (1 : ℚ) / ((1 : ℚ) + (1 : ℚ)) = (3 / 2 : ℚ)
//   @tac 911-1029 | Lean: norm_num [step1]
//        before-goal ⊢ (1 : ℚ) + (1 : ℚ) / ((1 : ℚ) + (1 : ℚ)) = (3 / 2 : ℚ)
//   @tac 911-927 | Lean: norm_num [step1]
//        before-goal ⊢ (1 : ℚ) + (1 : ℚ) / ((1 : ℚ) + (1 : ℚ)) = (3 / 2 : ℚ)
// Lean have step2, Lean lines 22-30:
//   lean  |   have step2 : 1 + 1 / (1 + 1) = (3 : ℚ) / 2 := by
//   lean  |     -- Simplify the expression by normalizing the numbers and using the given step1.
//   lean  |     norm_num [step1]
//   lean  |     -- Simplify the expression using field operations and the given step1.
//   lean  |     <;> field_simp [step1]
//   lean  |     -- Normalize the expression by simplifying it using ring operations.
//   lean  |     <;> ring_nf
//   lean  |     -- Ensure all numerical values are in their simplest form.
//   lean  |     <;> norm_cast

// 1 path(s) merged (paths); 8 shared facts; 1 distinct path conditions
lemma {:induction false} vc_amc12a_2009_p2_L20()
  requires 1 + 1 == 2
  requires Rat.of_int(1).Rational?
  requires Rat.add(Rat.of_int(1), Rat.of_int(1)).Rational?
  requires Rat.div(Rat.of_int(1), Rat.add(Rat.of_int(1), Rat.of_int(1))).Rational?
  requires Rat.add(Rat.of_int(1), Rat.div(Rat.of_int(1), Rat.add(Rat.of_int(1), Rat.of_int(1)))).Rational?
  requires Rat.of_int(3).Rational?
  requires Rat.of_int(2).Rational?
  requires Rat.div(Rat.of_int(3), Rat.of_int(2)).Rational?
  ensures  Rat.add(Rat.of_int(1), Rat.div(Rat.of_int(1), Rat.add(Rat.of_int(1), Rat.of_int(1)))) == Rat.div(Rat.of_int(3), Rat.of_int(2))
{
  // K4: ℚ is a normalised structure / cast ℚ→ℝ injective (Rat.cast_injective)
  RatCastInjective(Rat.add(Rat.of_int(1), Rat.div(Rat.of_int(1), Rat.add(Rat.of_int(1), Rat.of_int(1)))), Rat.div(Rat.of_int(3), Rat.of_int(2)));
}


// Mathlib: Rat.cast_injective (ℚ → ℝ cast is injective), exact statement over the library's to_real cast
lemma {:axiom} RatCastInjective(a: Rat.rat, b: Rat.rat)
  requires a.to_real() == b.to_real()
  ensures a == b
