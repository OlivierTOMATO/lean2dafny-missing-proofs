// CLOSED LEMMA for failing line amc12b_2020_p21-569 (theorem amc12b_2020_p21, Dafny line 569, ERR)
// closes with: K3 (locality) — base
// added: nothing (line lemma standalone)
// Dafny: verifies unchanged (dossier standalone check)
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/line_lemmas/ERR/amc12b_2020_p21/L569.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 569 of amc12b_2020_p21 (ERR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../wt_integ5/out/amc12b_2020_p21.dfy"

// ========================================================================================
// FAILING LINE 569 (ERR) in amc12b_2020_p21: assertion might not hold
//   dafny |                       assert ((((k as real) + 15.0) * ((k as real) + 15.0)) <= (n as real)) by { // @tac 3825-3889
//   statement kind: have / step assertion
//   @tac 3825-3889 | Lean: nlinarith [Real.sq_sqrt (by positivity : 0 ≤ (n : ℝ)), h₉]
//        before-goal ⊢ (↑k + (15 : ℝ)) ^ (2 : ℕ) ≤ ↑n
//        before-goal ⊢ (70 / 70 : ℝ) = (1 : ℝ)
// Lean have h₁₁, Lean lines 74-75:
//   lean  |         have h₁₁ : (k + 15 : ℝ) ^ 2 ≤ (n : ℝ) := by
//   lean  |           nlinarith [Real.sq_sqrt (by positivity : 0 ≤ (n : ℝ)), h₉]

// 1 path(s) merged (joined); 29 shared facts; 1 distinct path conditions
lemma {:induction false} vc_amc12b_2020_p21_L569(S: set<nat>, k_0_0_0_0_0_0_0_0_2: int, k_0_0_0_0_0_0_0_0_3: int, k_0_0_0_0_0_0_0_0_5: int, k_0_0_0_0_0_0_0_0_5_0: int, k_0_0_0_0_0_0_0_0_6: int, n_0_0_0_0: int)
  requires 0 <= k_0_0_0_0_0_0_0_0_5
  requires forall n_1: int :: 0 <= n_1 ==> (n_1 in S) == (0 < n_1 && ((n_1 as real) + 1000.0) / 70.0 == (floor(Real.sqrt((n_1 as real))) as real))
  requires 0 <= n_0_0_0_0
  requires (0 < n_0_0_0_0) || (n_0_0_0_0 <= 0)
  requires (n_0_0_0_0 in S) == (0 < n_0_0_0_0 && ((n_0_0_0_0 as real) + 1000.0) / 70.0 == (floor(Real.sqrt((n_0_0_0_0 as real))) as real))
  requires ((0 < n_0_0_0_0) && (70.0 != 0.0)) || (n_0_0_0_0 <= 0)
  requires 0 < n_0_0_0_0
  requires ((n_0_0_0_0 as real) + 1000.0) / 70.0 == (floor(Real.sqrt((n_0_0_0_0 as real))) as real)
  requires 70 != 0
  requires (n_0_0_0_0 + 1000) % 70 == 0
  requires n_0_0_0_0 % 70 == 50
  requires (0 <= k_0_0_0_0_0_0_0_0_2) || (k_0_0_0_0_0_0_0_0_2 < 0)
  requires exists k_0_0_0_0_0_0_0_0_1: nat :: n_0_0_0_0 == 70 * k_0_0_0_0_0_0_0_0_1 + 50
  requires (0 <= k_0_0_0_0_0_0_0_0_3) || (k_0_0_0_0_0_0_0_0_3 < 0)
  requires exists k_0_0_0_0_0_0_0_0_4: nat :: n_0_0_0_0 == 70 * k_0_0_0_0_0_0_0_0_4 + 50
  requires (0 <= k_0_0_0_0_0_0_0_0_6) || (k_0_0_0_0_0_0_0_0_6 < 0)
  requires (0 <= 0 && n_0_0_0_0 == 70 * 0 + 50) || (0 <= 0 && n_0_0_0_0 == 70 * 0 + 50) || (exists as_k0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0: nat :: n_0_0_0_0 == 70 * as_k0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0 + 50)
  requires 0 <= k_0_0_0_0_0_0_0_0_5_0
  requires n_0_0_0_0 == 70 * k_0_0_0_0_0_0_0_0_5_0 + 50
  requires k_0_0_0_0_0_0_0_0_5_0 + 15 == floor(Real.sqrt((n_0_0_0_0 as real)))
  requires (k_0_0_0_0_0_0_0_0_5_0 as real) + 15.0 <= Real.sqrt((n_0_0_0_0 as real))
  requires 0.0 <= Real.sqrt((n_0_0_0_0 as real))
  requires 0.0 <= (n_0_0_0_0 as real)
  requires (0.0 <= (k_0_0_0_0_0_0_0_0_5_0 as real)) || ((k_0_0_0_0_0_0_0_0_5_0 as real) < 0.0)
  requires ((0.0 <= (k_0_0_0_0_0_0_0_0_5_0 as real)) && ((k_0_0_0_0_0_0_0_0_5_0 as real) + 15.0 - Real.sqrt((n_0_0_0_0 as real)) <= 0.0) && ((k_0_0_0_0_0_0_0_0_5_0 as real) * ((k_0_0_0_0_0_0_0_0_5_0 as real) + 15.0 - Real.sqrt((n_0_0_0_0 as real))) <= 0.0)) || (!(0.0 <= (k_0_0_0_0_0_0_0_0_5_0 as real) && (k_0_0_0_0_0_0_0_0_5_0 as real) + 15.0 - Real.sqrt((n_0_0_0_0 as real)) <= 0.0))
  requires (((k_0_0_0_0_0_0_0_0_5_0 as real) + 15.0 - Real.sqrt((n_0_0_0_0 as real)) <= 0.0) && (0.0 <= ((k_0_0_0_0_0_0_0_0_5_0 as real) + 15.0 - Real.sqrt((n_0_0_0_0 as real))) * ((k_0_0_0_0_0_0_0_0_5_0 as real) + 15.0 - Real.sqrt((n_0_0_0_0 as real))))) || (0.0 < (k_0_0_0_0_0_0_0_0_5_0 as real) + 15.0 - Real.sqrt((n_0_0_0_0 as real)))
  requires 30.0 * ((k_0_0_0_0_0_0_0_0_5_0 as real) + 15.0 - Real.sqrt((n_0_0_0_0 as real))) + ((n_0_0_0_0 as real) - ((k_0_0_0_0_0_0_0_0_5_0 as real) + 15.0) * ((k_0_0_0_0_0_0_0_0_5_0 as real) + 15.0)) + (Real.sqrt((n_0_0_0_0 as real)) * Real.sqrt((n_0_0_0_0 as real)) - (n_0_0_0_0 as real)) + 2.0 * ((k_0_0_0_0_0_0_0_0_5_0 as real) * ((k_0_0_0_0_0_0_0_0_5_0 as real) + 15.0 - Real.sqrt((n_0_0_0_0 as real)))) + (0.0 - ((k_0_0_0_0_0_0_0_0_5_0 as real) + 15.0 - Real.sqrt((n_0_0_0_0 as real))) * ((k_0_0_0_0_0_0_0_0_5_0 as real) + 15.0 - Real.sqrt((n_0_0_0_0 as real)))) == 0.0
  requires ((0.0 < (n_0_0_0_0 as real)) && (0.0 < (n_0_0_0_0 as real)) && (0.0 <= (n_0_0_0_0 as real))) || ((n_0_0_0_0 as real) <= 0.0)
  requires Real.sqrt((n_0_0_0_0 as real)) * Real.sqrt((n_0_0_0_0 as real)) == (n_0_0_0_0 as real)
  ensures  ((k_0_0_0_0_0_0_0_0_5_0 as real) + 15.0) * ((k_0_0_0_0_0_0_0_0_5_0 as real) + 15.0) <= (n_0_0_0_0 as real)
{ }

