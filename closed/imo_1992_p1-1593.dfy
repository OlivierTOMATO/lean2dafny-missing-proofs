// CLOSED LEMMA for failing line imo_1992_p1-1593 (theorem imo_1992_p1, Dafny line 1593, OOR)
// closes with: K2 (computation) — single
// added: K2b with monomials written as atoms (-9 * (p * q * r) instead of -9 * p * q * r)
// Dafny: finished with 9 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_037/imo_1992_p1-1593/K2c.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

include "../lib/library_new.dfy"
// k_ablate shard_037 variant K2c (K2b with monomials parenthesized as atoms) of imo_1992_p1-1593
lemma {:induction false} vc_imo_1992_p1_L1593_nf4(p: int, q: int, r: int)
  ensures 9 * (p * q * r - 1 - 2 * ((p - 1) * (q - 1) * (r - 1))) == -9 * (p * q * r) + 18 * (p * q) + 18 * (p * r) + -18 * p + 18 * (q * r) + -18 * q + -18 * r + 9
{ }

lemma {:induction false} vc_imo_1992_p1_L1593_nf5(p: int, q: int, r: int)
  ensures 5 * (q * r + 1 - 5 * 6) == 5 * (q * r) + -145
{ }

lemma {:induction false} vc_imo_1992_p1_L1593_nf7(p: int, q: int, r: int)
  ensures 46 * ((1 + 1 - p) * (p + 1 - q)) == -46 * (p * p) + 46 * (p * q) + 46 * p + -92 * q + 92
{ }

lemma {:induction false} vc_imo_1992_p1_L1593_nf9(p: int, q: int, r: int)
  ensures 23 * ((1 + 1 - p) * (q + 1 - r)) == -23 * (p * q) + 23 * (p * r) + -23 * p + 46 * q + -46 * r + 46
{ }

lemma {:induction false} vc_imo_1992_p1_L1593_nf11(p: int, q: int, r: int)
  ensures 41 * ((1 + 1 - p) * (4 - p)) == 41 * (p * p) + -246 * p + 328
{ }

lemma {:induction false} vc_imo_1992_p1_L1593_nf13(p: int, q: int, r: int)
  ensures 9 * ((1 + 1 - p) * (q * r + 1 - 5 * 6)) == -9 * (p * q * r) + 261 * p + 18 * (q * r) + -522
{ }

lemma {:induction false} vc_imo_1992_p1_L1593_nf15(p: int, q: int, r: int)
  ensures 5 * ((p + 1 - q) * (p + 1 - q)) == 5 * (p * p) + -10 * (p * q) + 10 * p + 5 * (q * q) + -10 * q + 5
{ }

lemma {:induction false} vc_imo_1992_p1_L1593_nf17(p: int, q: int, r: int)
  ensures 5 * ((p + 1 - q) * (q + 1 - r)) == 5 * (p * q) + -5 * (p * r) + 5 * p + -5 * (q * q) + 5 * (q * r) + -5 * r + 5
{ }

// Line lemma for failing line 1593 of imo_1992_p1 (OOR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.


// ========================================================================================
// FAILING LINE 1593 (OOR) in cert_identity_173: Verification out of resource (cert_identity_173)
//   dafny |   ensures ((((((((((-((14 * 1)) + (71 * ((p + 1) - q))) + (33 * ((q + 1) - r))) + (9 * ((((p * q) * r) - 1) - (2 * (((p - 1) * (q - 1)) * (r - 1)))))) + (5 * (((q * r) + 1) - (5 * 6)))) + -((46 * (((1 + 1) - p) * ((p + 1) - q))))) + -((23 * (((1 + 1) - p) * ((q + 1) - r))))) + -((41 * (((1 + 1) - p)
//   statement kind: cert identity
// certificate lemma for Lean have h₅, Lean lines 33-587:
//   lean  |   have h₅ : (p, q, r) = (2, 4, 8) ∨ (p, q, r) = (3, 5, 15) := by
//   lean  |     have h₆ : (p - 1 : ℤ) > 0 := by
//   lean  |       linarith
//   lean  |     have h₇ : (q - 1 : ℤ) > 0 := by
//   lean  |       linarith
//   lean  |     have h₈ : (r - 1 : ℤ) > 0 := by
//   lean  |       linarith
//   lean  |     have h₉ : (p - 1 : ℤ) * (q - 1 : ℤ) * (r - 1 : ℤ) > 0 := by positivity
//   lean  |     have h₁₀ : ∃ (k : ℤ), (p * q * r - 1 : ℤ) = k * ((p - 1 : ℤ) * (q - 1 : ℤ) * (r - 1 : ℤ)) := by
//   lean  |       obtain ⟨k, hk⟩ := h₁
//   lean  |       refine' ⟨k, _⟩
//   lean  |       linarith
//   lean  |     obtain ⟨k, hk⟩ := h₁₀
//   lean  |     have h₁₁ : k > 0 := by
//   lean  |       by_contra h₁₁
//   lean  |       have h₁₂ : k ≤ 0 := by linarith
//   lean  |       have h₁₃ : (p * q * r - 1 : ℤ) ≤ 0 := by
//   lean  |         nlinarith [mul_nonneg (sub_nonneg.mpr h₂) (sub_nonneg.mpr h₃),
//   lean  |           mul_nonneg (sub_nonneg.mpr h₂) (sub_nonneg.mpr h₄),
//   lean  |           mul_nonneg (sub_nonneg.mpr h₃) (sub_nonneg.mpr h₄)]
//   lean  |       have h₁₄ : (p * q * r : ℤ) ≤ 1 := by linarith
//   lean  |       have h₁₅ : (p : ℤ) ≥ 2 := by linarith
//   lean  |       have h₁₆ : (q : ℤ) ≥ 3 := by linarith
//   lean  |       have h₁₇ : (r : ℤ) ≥ 4 := by linarith
//   lean  |       have h₁₈ : (p * q * r : ℤ) ≥ 2 * 3 * 4 := by
//   lean  |         have h₁₉ : (p : ℤ) * q ≥ 2 * 3 := by nlinarith
//   lean  |         nlinarith
//   lean  |       linarith
//   lean  |     have h₁₂ : k ≤ 3 := by
//   lean  |       by_contra h₁₂
//   lean  |       have h₁₃ : k ≥ 4 := by linarith
//   lean  |       have h₁₄ : (p - 1 : ℤ) ≥ 1 := by
//   lean  |         linarith
//   lean  |       have h₁₅ : (q - 1 : ℤ) ≥ 2 := by
//   lean  |         linarith
//   lean  |       have h₁₆ : (r - 1 : ℤ) ≥ 3 := by
//   lean  |         linarith
//   lean  |       have h₁₇ : (p - 1 : ℤ) * (q - 1 : ℤ) ≥ 2 := by
//   lean  |         nlinarith
//   lean  |       have h₁₈ : (p - 1 : ℤ) * (q - 1 : ℤ) * (r - 1 : ℤ) ≥ 6 := by
//   lean  |         nlinarith
//   lean  |       have h₁₉ : (k : ℤ) * ((p - 1 : ℤ) * (q - 1 : ℤ) * (r - 1 : ℤ)) ≥ 4 * ((p - 1 : ℤ) * (q - 1 : ℤ) * (r - 1 : ℤ)) := by
//   lean  |         nlinarith
//   lean  |       have h₂₀ : (p * q * r - 1 : ℤ) ≥ 4 * ((p - 1 : ℤ) * (q - 1 : ℤ) * (r - 1 : ℤ)) := by
//   lean  |         linarith
//   lean  |       have h₂₁ : (p * q * r - 1 : ℤ) < 4 * ((p - 1 : ℤ) * (q - 1 : ℤ) * (r - 1 : ℤ)) := by
//   lean  |         have h₂₂ : (p : ℤ) * q * r < 4 * ((p - 1 : ℤ) * (q - 1 : ℤ) * (r - 1 : ℤ)) + 1 := by
//   lean  |           nlinarith [mul_nonneg (sub_nonneg.mpr h₂) (sub_nonneg.mpr h₃),
//   lean  |             mul_nonneg (sub_nonneg.mpr h₂) (sub_nonneg.mpr h₄),
//   lean  |             mul_nonneg (sub_nonneg.mpr h₃) (sub_nonneg.mpr h₄)]
//   lean  |         linarith
//   lean  |       linarith
//   lean  |     have h₁₃ : k = 1 ∨ k = 2 ∨ k = 3 := by
//   lean  |       omega
//   lean  |     -- We need to handle each case of k separately
//   lean  |     rcases h₁₃ with (rfl | rfl | rfl)
//   lean  |     · -- Case k = 1
//   lean  |       have h₁₄ : p * q * r - 1 = (p - 1) * (q - 1) * (r - 1) := by
//   lean  |         ring_nf at hk ⊢
//   lean  |         <;> linarith
//   lean  |       have h₁₅ : p * q + p * r + q * r = p + q + r := by
//   lean  |         have h₁₅₁ : p * q * r - 1 = (p - 1) * (q - 1) * (r - 1) := by linarith
//   lean  |         ring_nf at h₁₅₁ ⊢
//   lean  |         nlinarith
//   lean  |       have h₁₆ : p = 2 := by
//   lean  |         by_contra h₁₆
//   lean  |         have h₁₇ : p ≥ 3 := by
//   lean  |           by_contra h₁₇
//   lean  |           have h₁₈ : p ≤ 2 := by linarith
//   lean  |           have h₁₉ : p = 2 := by linarith
//   lean  |           contradiction
//   lean  |         have h₂₀ : q ≥ 3 := by linarith
//   lean  |         have h₂₁ : r ≥ 4 := by linarith
//   lean  |         have h₂₂ : (p : ℤ) * q ≥ 3 * 3 := by
//   lean  |           nlinarith
//   lean  |         have h₂₃ : (p : ℤ) * r ≥ 3 * 4 := by
//   lean  |           nlinarith
//   lean  |         have h₂₄ : (q : ℤ) * r ≥ 3 * 4 := by
//   lean  |           nlinarith
//   lean  |         nlinarith
//   lean  |       have h₁₇ : q = 3 := by
//   lean  |         by_contra h₁₇
//   lean  |         have h₁₈ : q ≥ 4 := by
//   lean  |           by_contra h₁₈
//   lean  |           have h₁₉ : q ≤ 3 := by linarith
//   lean  |           have h₂₀ : q = 3 := by linarith
//   lean  |           contradiction
//   lean  |         have h₂₁ : p = 2 := by linarith
//   lean  |         have h₂₂ : (p : ℤ) * q ≥ 2 * 4 := by
//   lean  |           nlinarith
//   lean  |         have h₂₃ : (p : ℤ) * r ≥ 2 * 4 := by
//   lean  |           nlinarith
//   lean  |         have h₂₄ : (q : ℤ) * r ≥ 4 * 4 := by
//   lean  |           nlinarith
//   lean  |         nlinarith
//   lean  |       have h₁₈ : r = 4 := by
//   lean  |         by_contra h₁₈
//   lean  |         have h₁₉ : r ≥ 5 := by
//   lean  |           by_contra h₁₉
//   lean  |           have h₂₀ : r ≤ 4 := by linarith
//   lean  |           have h₂₁ : r = 4 := by linarith
//   lean  |           contradiction
//   lean  |         have h₂₂ : p = 2 := by linarith
//   lean  |         have h₂₃ : q = 3 := by linarith
//   lean  |         have h₂₄ : (p : ℤ) * q ≥ 2 * 3 := by
//   lean  |           nlinarith
//   lean  |         have h₂₅ : (p : ℤ) * r ≥ 2 * 5 := by
//   lean  |           nlinarith
//   lean  |         have h₂₆ : (q : ℤ) * r ≥ 3 * 5 := by
//   lean  |           nlinarith
//   lean  |         nlinarith
//   lean  |       exfalso
//   lean  |       norm_num [h₁₆, h₁₇, h₁₈] at h₁₄ h₁₅ hk h₀ ⊢ <;> linarith
//   lean  |     · -- Case k = 2
//   lean  |       have h₁₄ : p * q * r - 1 = 2 * ((p - 1) * (q - 1) * (r - 1)) := by
//   lean  |         ring_nf at hk ⊢
//   lean  |         <;> linarith
//   lean  |       have h₁₅ : p = 3 := by
//   lean  |         by_contra h₁₅
//   lean  |         have h₁₆ : p ≠ 3 := by tauto
//   lean  |         -- We need to show that p cannot be greater than 3
//   lean  |         have h₁₇ : p ≥ 4 := by
//   lean  |           by_contra h₁₇
//   lean  |           have h₁₈ : p ≤ 3 := by linarith
//   lean  |           have h₁₉ : p = 2 := by
//   lean  |             by_contra h₁₉
//   lean  |             have h₂₀ : p ≥ 3 := by omega
//   lean  |             have h₂₁ : p = 3 := by omega
//   lean  |             contradiction
//   lean  |           have h₂₂ : p = 2 := by omega
//   lean  |           have h₂₃ : q ≥ 3 := by linarith
//   lean  |           have h₂₄ : r ≥ 4 := by linarith
//   lean  |           have h₂₅ : (p : ℤ) * q ≥ 2 * 3 := by nlinarith
//   lean  |           have h₂₆ : (p : ℤ) * r ≥ 2 * 4 := by nlinarith
//   lean  |           have h₂₇ : (q : ℤ) * r ≥ 3 * 4 := by nlinarith
//   lean  |           have h₂₈ : (p : ℤ) * q * r ≥ 2 * 3 * 4 := by nlinarith
//   lean  |           have h₂₉ : (p : ℤ) * q * r - 1 = 2 * ((p - 1) * (q - 1) * (r - 1)) := by linarith
//   lean  |           have h₃₀ : (p : ℤ) = 2 := by omega
//   lean  |           have h₃₁ : (q : ℤ) ≥ 3 := by omega
//   lean  |           have h₃₂ : (r : ℤ) ≥ 4 := by omega
//   lean  |           have h₃₃ : (p : ℤ) * q * r - 1 = 2 * ((p - 1) * (q - 1) * (r - 1)) := by linarith
//   lean  |           have h₃₄ : (p : ℤ) = 2 := by omega
//   lean  |           have h₃₅ : (q : ℤ) ≥ 3 := by omega
//   lean  |           have h₃₆ : (r : ℤ) ≥ 4 := by omega
//   lean  |           have h₃₇ : (p : ℤ) * q * r - 1 = 2 * ((p - 1) * (q - 1) * (r - 1)) := by linarith
//   lean  |           have h₃₈ : False := by
//   lean  |             have h₃₉ : (p : ℤ) = 2 := by omega
//   lean  |             have h₄₀ : (q : ℤ) ≥ 3 := by omega
//   lean  |             have h₄₁ : (r : ℤ) ≥ 4 := by omega
//   lean  |             have h₄₂ : (p : ℤ) * q * r - 1 = 2 * ((p - 1) * (q - 1) * (r - 1)) := by linarith
//   lean  |             have h₄₃ : 2 * q * r - 1 = 2 * (1 * (q - 1) *
//   lean  | … (truncated)

// 1 path(s) merged (paths); 0 shared facts; 1 distinct path conditions
lemma {:induction false} vc_imo_1992_p1_L1593(p: int, q: int, r: int)
  ensures  0 - 14 * 1 + 71 * (p + 1 - q) + 33 * (q + 1 - r) + 9 * (p * q * r - 1 - 2 * ((p - 1) * (q - 1) * (r - 1))) + 5 * (q * r + 1 - 5 * 6) + (0 - 46 * ((1 + 1 - p) * (p + 1 - q))) + (0 - 23 * ((1 + 1 - p) * (q + 1 - r))) + (0 - 41 * ((1 + 1 - p) * (4 - p))) + (0 - 9 * ((1 + 1 - p) * (q * r + 1 - 5 * 6))) + (0 - 5 * ((p + 1 - q) * (p + 1 - q))) + (0 - 5 * ((p + 1 - q) * (q + 1 - r))) == 0
{
  vc_imo_1992_p1_L1593_nf4(p, q, r);
  vc_imo_1992_p1_L1593_nf5(p, q, r);
  vc_imo_1992_p1_L1593_nf7(p, q, r);
  vc_imo_1992_p1_L1593_nf9(p, q, r);
  vc_imo_1992_p1_L1593_nf11(p, q, r);
  vc_imo_1992_p1_L1593_nf13(p, q, r);
  vc_imo_1992_p1_L1593_nf15(p, q, r);
  vc_imo_1992_p1_L1593_nf17(p, q, r);
}

