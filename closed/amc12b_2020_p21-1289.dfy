// CLOSED LEMMA for failing line amc12b_2020_p21-1289 (theorem amc12b_2020_p21, Dafny line 1289, ERR)
// closes with: K5 (automation lemma) — single
// added: RealLeSqrt(21.0, 470.0);  (Mathlib Real.le_sqrt, in Lean's norm_num simp set)
// Dafny: finished with 11 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_023/amc12b_2020_p21-1289/K5.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 1289 of amc12b_2020_p21 (ERR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../../wt_integ5/out/amc12b_2020_p21.dfy"

// ========================================================================================
// FAILING LINE 1289 (ERR) in amc12b_2020_p21: assertion might not hold
//   dafny |                           assert ((21 as real) <= Real.sqrt(470.0)) by {  // sub-goal of `constructor` (Lean state) // @tac 11721-11963 // @tac 11721-11758 // @tac 11674-11963
//   statement kind: sub-goal (Lean tactic state)
//   @tac 11721-11963 | Lean: norm_num [Real.le_sqrt, Real.sqrt_lt]
//        before-goal ⊢ ↑(21 : ℤ) ≤ √(470 : ℝ)
//   @tac 11721-11758 | Lean: norm_num [Real.le_sqrt, Real.sqrt_lt]
//        before-goal ⊢ ↑(21 : ℤ) ≤ √(470 : ℝ)
//   @tac 11674-11963 | Lean: · -- Prove 21 ≤ Real.sqrt 470
//        before-goal ⊢ ↑(21 : ℤ) ≤ √(470 : ℝ)
//        before-goal ⊢ √(470 : ℝ) < ↑(21 : ℤ) + (1 : ℝ)
// inside Lean have h₂, Lean lines 271-283:
//   lean  |           have h₂ : Int.floor (Real.sqrt 470 : ℝ) = 21 := by
//   lean  |             rw [Int.floor_eq_iff]
//   lean  |             constructor
//   lean  |             · -- Prove 21 ≤ Real.sqrt 470
//   lean  |               norm_num [Real.le_sqrt, Real.sqrt_lt]
//   lean  |               <;>
//   lean  |               nlinarith [Real.sqrt_nonneg 470, Real.sq_sqrt (show 0 ≤ (470 : ℝ) by norm_num),
//   lean  |                 Real.sqrt_nonneg 470, Real.sq_sqrt (show 0 ≤ (470 : ℝ) by norm_num)]
//   lean  |             · -- Prove Real.sqrt 470 < 21 + 1
//   lean  |               norm_num [Real.le_sqrt, Real.sqrt_lt]
//   lean  |               <;>
//   lean  |               nlinarith [Real.sqrt_nonneg 470, Real.sq_sqrt (show 0 ≤ (470 : ℝ) by norm_num),
//   lean  |                 Real.sqrt_nonneg 470, Real.sq_sqrt (show 0 ≤ (470 : ℝ) by norm_num)]

// 1 path(s) merged (joined); 16 shared facts; 1 distinct path conditions
lemma {:induction false} vc_amc12b_2020_p21_L1289_K5(S: set<nat>, k_0_0_0_0_0_0_0_0_5: int, n_0_0_0_0: int)
  requires 0 <= k_0_0_0_0_0_0_0_0_5
  requires forall n_1: int :: 0 <= n_1 ==> (n_1 in S) == (0 < n_1 && ((n_1 as real) + 1000.0) / 70.0 == (floor(Real.sqrt((n_1 as real))) as real))
  requires 0 <= n_0_0_0_0
  requires (0 < n_0_0_0_0) || (n_0_0_0_0 <= 0)
  requires (n_0_0_0_0 in S) == (0 < n_0_0_0_0 && ((n_0_0_0_0 as real) + 1000.0) / 70.0 == (floor(Real.sqrt((n_0_0_0_0 as real))) as real))
  requires ((0 < n_0_0_0_0) && (70.0 != 0.0) && (((0 < n_0_0_0_0) && (((n_0_0_0_0 as real) + 1000.0) / 70.0 == (floor(Real.sqrt((n_0_0_0_0 as real))) as real)) && (((n_0_0_0_0 != 400) && (((n_0_0_0_0 != 470) && (((n_0_0_0_0 != 2290) && (((n_0_0_0_0 != 2360) && ((n_0_0_0_0 != 2430) || (n_0_0_0_0 == 2430))) || (n_0_0_0_0 == 2360))) || (n_0_0_0_0 == 2290))) || (n_0_0_0_0 == 470))) || (n_0_0_0_0 == 400))) || (!(0 < n_0_0_0_0 && ((n_0_0_0_0 as real) + 1000.0) / 70.0 == (floor(Real.sqrt((n_0_0_0_0 as real))) as real))))) || ((n_0_0_0_0 <= 0) && (((0 < n_0_0_0_0) && (((n_0_0_0_0 as real) + 1000.0) / 70.0 == (floor(Real.sqrt((n_0_0_0_0 as real))) as real)) && (((n_0_0_0_0 != 400) && (((n_0_0_0_0 != 470) && (((n_0_0_0_0 != 2290) && (((n_0_0_0_0 != 2360) && ((n_0_0_0_0 != 2430) || (n_0_0_0_0 == 2430))) || (n_0_0_0_0 == 2360))) || (n_0_0_0_0 == 2290))) || (n_0_0_0_0 == 470))) || (n_0_0_0_0 == 400))) || (!(0 < n_0_0_0_0 && ((n_0_0_0_0 as real) + 1000.0) / 70.0 == (floor(Real.sqrt((n_0_0_0_0 as real))) as real)))))
  requires 0 < n_0_0_0_0 && ((n_0_0_0_0 as real) + 1000.0) / 70.0 == (floor(Real.sqrt((n_0_0_0_0 as real))) as real) ==> n_0_0_0_0 == 400 || n_0_0_0_0 == 470 || n_0_0_0_0 == 2290 || n_0_0_0_0 == 2360 || n_0_0_0_0 == 2430 || n_0_0_0_0 == 2500
  requires ((n_0_0_0_0 != 400) && (((n_0_0_0_0 != 470) && (((n_0_0_0_0 != 2290) && (((n_0_0_0_0 != 2360) && ((n_0_0_0_0 != 2430) || (n_0_0_0_0 == 2430))) || (n_0_0_0_0 == 2360))) || (n_0_0_0_0 == 2290))) || (n_0_0_0_0 == 470))) || (n_0_0_0_0 == 400)
  requires n_0_0_0_0 == 400 || n_0_0_0_0 == 470 || n_0_0_0_0 == 2290 || n_0_0_0_0 == 2360 || n_0_0_0_0 == 2430 || n_0_0_0_0 == 2500
  requires ((n_0_0_0_0 != 400) && (((n_0_0_0_0 != 470) && (((n_0_0_0_0 != 2290) && (((n_0_0_0_0 != 2360) && ((n_0_0_0_0 != 2430) || (n_0_0_0_0 == 2430))) || (n_0_0_0_0 == 2360))) || (n_0_0_0_0 == 2290))) || (n_0_0_0_0 == 470))) || (n_0_0_0_0 == 400)
  requires ((n_0_0_0_0 == 400) && (((400 != 400) && (((400 != 470) && (((400 != 2290) && (((400 != 2360) && ((400 != 2430) || (400 == 2430))) || (400 == 2360))) || (400 == 2290))) || (400 == 470))) || (400 == 400))) || (n_0_0_0_0 != 400)
  requires ((n_0_0_0_0 == 400) && (400 == 400 || 400 == 470 || 400 == 2290 || 400 == 2360 || 400 == 2430 || 400 == 2500) && (0 < 400) && (70.0 != 0.0) && (((400 as real) + 1000.0) / 70.0 == (floor(Real.sqrt((400 as real))) as real)) && ((0 < 400) || (!(0 < 400))) && (0 < 400) && (((n_0_0_0_0 == 470) && (((470 != 400) && (((470 != 470) && (((470 != 2290) && (((470 != 2360) && ((470 != 2430) || (470 == 2430))) || (470 == 2360))) || (470 == 2290))) || (470 == 470))) || (470 == 400))) || (n_0_0_0_0 != 470))) || ((!(n_0_0_0_0 == 400 && (400 == 400 || 400 == 470 || 400 == 2290 || 400 == 2360 || 400 == 2430 || 400 == 2500))) && (((n_0_0_0_0 == 470) && (((470 != 400) && (((470 != 470) && (((470 != 2290) && (((470 != 2360) && ((470 != 2430) || (470 == 2430))) || (470 == 2360))) || (470 == 2290))) || (470 == 470))) || (470 == 400))) || (n_0_0_0_0 != 470)))
  requires n_0_0_0_0 == 470
  requires 470 == 400 || 470 == 470 || 470 == 2290 || 470 == 2360 || 470 == 2430 || 470 == 2500
  requires 0 < 470
  requires (floor(Real.sqrt(470.0)) == 21) == ((21 as real) <= Real.sqrt(470.0) && Real.sqrt(470.0) < (21 as real) + 1.0)
  ensures  (21 as real) <= Real.sqrt(470.0)
{
  // K5: Real.le_sqrt (named in Lean's norm_num simp set; rewrote the goal to 21^2 <= 470)
  RealLeSqrt(21.0, 470.0);
}
