// CLOSED LEMMA for failing line amc12a_2009_p9-181 (theorem amc12a_2009_p9, Dafny line 181, ERR)
// closes with: K1 (instance) — single
// added: forall x ensures goal(x) { assert f(x+3.0) == a*((x+3.0)*(x+3.0)) + b*(x+3.0) + c; }  (h₁ at x+3, the rewrite simp made in h₀)
// Dafny: finished with 3 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_016/amc12a_2009_p9-181/K1.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 181 of amc12a_2009_p9 (ERR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "/home/changjie/lean2dafny_research/agents_tac/wt_integ5/out/amc12a_2009_p9.dfy"

// ========================================================================================
// FAILING LINE 181 (ERR) in amc12a_2009_p9: assertion might not hold
//   dafny |     assert (forall x: real :: ((((a * ((x + 3.0) * (x + 3.0))) + (b * (x + 3.0))) + c) == (((3.0 * (x * x)) + (7.0 * x)) + 4.0)));  // hypothesis h₀ after `simp` (Lean state) // @tac-hyp 654-682
//   statement kind: hypothesis after tactic (@tac-hyp)
//   @tac-hyp 654-682 h₀ after: ∀ (x : ℝ), a * (x + (3 : ℝ)) ^ (2 : ℕ) + b * (x + (3 : ℝ)) + c = (3 : ℝ) * x ^ (2 : ℕ) + (7 : ℝ) * x + (4 : ℝ)
// Lean have h₂, Lean lines 13-18:
//   lean  |   have h₂ : ∀ x, a * (x + 3) ^ 2 + b * (x + 3) + c = 3 * x ^ 2 + 7 * x + 4 := by
//   lean  |     intro x
//   lean  |     -- Simplify the function definition using the given form of f
//   lean  |     simp only [h₁] at h₀ ⊢
//   lean  |     -- Use the given functional equation to equate coefficients
//   lean  |     linarith [h₀ x, h₀ (x + 3), h₀ (x + 6)]

// 1 path(s) merged (paths); 2 shared facts; 1 distinct path conditions
lemma {:induction false} vc_amc12a_2009_p9_L181(a: real, b: real, c: real, f: real -> real)
  requires forall x_1: real :: f(x_1 + 3.0) == 3.0 * (x_1 * x_1) + 7.0 * x_1 + 4.0
  requires forall x_3: real :: f(x_3) == a * (x_3 * x_3) + b * x_3 + c
  ensures  forall x_0_2: real :: a * ((x_0_2 + 3.0) * (x_0_2 + 3.0)) + b * (x_0_2 + 3.0) + c == 3.0 * (x_0_2 * x_0_2) + 7.0 * x_0_2 + 4.0
{
  // K1: the instance Lean's `simp only [h₁] at h₀` used: h₁ at x + 3 (rewriting f (x+3) inside h₀)
  forall x_0_2: real
    ensures a * ((x_0_2 + 3.0) * (x_0_2 + 3.0)) + b * (x_0_2 + 3.0) + c == 3.0 * (x_0_2 * x_0_2) + 7.0 * x_0_2 + 4.0
  {
    assert f(x_0_2 + 3.0) == a * ((x_0_2 + 3.0) * (x_0_2 + 3.0)) + b * (x_0_2 + 3.0) + c;
  }
}

