// CLOSED LEMMA for failing line aime_1987_p5-452 (theorem aime_1987_p5, Dafny line 452, OOR)
// closes with: K1 (instance) — single
// added: assert exists k: int :: 30*(x*x)+517 == (3 * (x * x) + 1)*k by { assert 30*(x*x)+517 == (3 * (x * x) + 1)*(y*y); }  (Lean: use y ^ 2)
// Dafny: finished with 5 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_004/aime_1987_p5-452/K1.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 452 of aime_1987_p5 (OOR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "/home/changjie/lean2dafny_research/agents_tac/wt_integ5/out/aime_1987_p5.dfy"

// ========================================================================================
// FAILING LINE 452 (OOR) in aime_1987_p5: Verification out of resource (aime_1987_p5)
//   dafny |     assert IntDvd(((3 * (x * x)) + 1), ((30 * (x * x)) + 517)) by { // @tac 956-965
//   statement kind: have / step assertion
//   @tac 956-965 | Lean: use y ^ 2
//        before-goal ⊢ (3 : ℤ) * x ^ (2 : ℕ) + (1 : ℤ) ∣ (30 : ℤ) * x ^ (2 : ℕ) + (517 : ℤ)
//        before-goal ⊢ ℤ
// Lean have h₂₁, Lean lines 28-34:
//   lean  |     have h₂₁ : (3 * x ^ 2 + 1 : ℤ) ∣ 30 * x ^ 2 + 517 := by
//   lean  |       use y ^ 2
//   lean  |       have h₂₁₁ : y ^ 2 + 3 * (x ^ 2 * y ^ 2) = 30 * x ^ 2 + 517 := h₀
//   lean  |       have h₂₁₂ : y ^ 2 * (3 * x ^ 2 + 1) = 30 * x ^ 2 + 517 := by
//   lean  |         ring_nf at h₂₁₁ ⊢
//   lean  |         <;> linarith
//   lean  |       linarith

// 2 path(s) merged (paths); 3 shared facts; 2 distinct path conditions; 2 claims conjoined
// AUGMENTATION K1
lemma {:induction false} vc_aime_1987_p5_L452_K1(x: int, y: int)
  requires y * y + 3 * (x * x * (y * y)) == 30 * (x * x) + 517
  requires x != 0
  requires 30 * (x * x) + 517 == (3 * (x * x) + 1) * (y * y)
  ensures  (IntDvd(3 * (x * x) + 1, 30 * (x * x) + 517) || (3 * (x * x) + 1 == 0 ==> 30 * (x * x) + 517 == 0))
        && (IntDvd(3 * (x * x) + 1, 30 * (x * x) + 517) || (3 * (x * x) + 1 != 0 ==> (30 * (x * x) + 517) % (3 * (x * x) + 1) == 0))
{
  assert exists k: int :: 30 * (x * x) + 517 == (3 * (x * x) + 1) * k by { assert 30 * (x * x) + 517 == (3 * (x * x) + 1) * (y * y); }  // K1: Lean `use y ^ 2` (instance of the ∃ in Lean's ∣)
}
