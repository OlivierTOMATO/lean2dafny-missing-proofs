// CLOSED LEMMA for failing line aime_1987_p5-495 (theorem aime_1987_p5, Dafny line 495, OOR)
// closes with: K4+K5 (types, automation lemma) — multi
// added: IntDvdIffEmodEqZero(3 * (x * x) + 1, 10 * (3 * (x * x) + 1) + 507); IntDvdIffEmodEqZero(3 * (x * x) + 1, 507); assert 10 * (3 * (x * x) + 1) == (3 * (x * x) + 1) * 10; DvdAddRight(3 * (x * x) + 1, 10 * (3 * (x * x) + 1), 507);
// Dafny: finished with 7 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_004/aime_1987_p5-495/K4K5.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 495 of aime_1987_p5 (OOR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "/home/changjie/lean2dafny_research/agents_tac/wt_integ5/out/aime_1987_p5.dfy"

// ========================================================================================
// FAILING LINE 495 (OOR) in aime_1987_p5: Verification out of resource (aime_1987_p5)
//   dafny |       assert IntDvd(((3 * (x * x)) + 1), 507) by { // @tac 1389-1471 // @tac 1480-1509 // @tac 1518-1556
//   statement kind: have / step assertion
//   @tac 1389-1471 | Lean: have h₂₂₃ : (30 * x ^ 2 + 517 : ℤ) = 10 * (3 * x ^ 2 + 1) + 507 := by ring
//        before-goal ⊢ (3 : ℤ) * x ^ (2 : ℕ) + (1 : ℤ) ∣ (507 : ℤ)
//   @tac 1480-1509 | Lean: rw [h₂₂₃] at h₂₂₁
//        before-goal ⊢ (3 : ℤ) * x ^ (2 : ℕ) + (1 : ℤ) ∣ (507 : ℤ)
//   @tac 1518-1556 | Lean: simpa [dvd_add_right] using h₂₂₁
//        before-goal ⊢ (3 : ℤ) * x ^ (2 : ℕ) + (1 : ℤ) ∣ (507 : ℤ)
// Lean have h₂₂₂, Lean lines 37-40:
//   lean  |       have h₂₂₂ : (3 * x ^ 2 + 1 : ℤ) ∣ 507 := by
//   lean  |         have h₂₂₃ : (30 * x ^ 2 + 517 : ℤ) = 10 * (3 * x ^ 2 + 1) + 507 := by ring
//   lean  |         rw [h₂₂₃] at h₂₂₁
//   lean  |         simpa [dvd_add_right] using h₂₂₁

// 2 path(s) merged (paths); 5 shared facts; 2 distinct path conditions; 2 claims conjoined
// AUGMENTATION K4K5
lemma {:induction false} vc_aime_1987_p5_L495_K4K5(x: int, y: int)
  requires y * y + 3 * (x * x * (y * y)) == 30 * (x * x) + 517
  requires x != 0
  requires IntDvd(3 * (x * x) + 1, 30 * (x * x) + 517)
  requires 30 * (x * x) + 517 == 10 * (3 * (x * x) + 1) + 507
  requires IntDvd(3 * (x * x) + 1, 10 * (3 * (x * x) + 1) + 507)
  ensures  (IntDvd(3 * (x * x) + 1, 507) || (3 * (x * x) + 1 == 0 ==> 507 == 0))
        && (IntDvd(3 * (x * x) + 1, 507) || (3 * (x * x) + 1 != 0 ==> 507 % (3 * (x * x) + 1) == 0))
{
  IntDvdIffEmodEqZero(3 * (x * x) + 1, 10 * (3 * (x * x) + 1) + 507);  // K4: ∣ is ∃ by definition
  IntDvdIffEmodEqZero(3 * (x * x) + 1, 507);  // K4
  assert 10 * (3 * (x * x) + 1) == (3 * (x * x) + 1) * 10;  // dvd_add_right precondition a ∣ 10*a (witness 10)
  DvdAddRight(3 * (x * x) + 1, 10 * (3 * (x * x) + 1), 507);  // K5: Mathlib dvd_add_right named in Lean simp set
}
