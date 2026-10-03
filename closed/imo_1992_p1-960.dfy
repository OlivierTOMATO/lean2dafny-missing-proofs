// CLOSED LEMMA for failing line imo_1992_p1-960 (theorem imo_1992_p1, Dafny line 960, OOR)
// closes with: K2 (computation) — single
// added: same normal forms as separate context-free helper lemmas, called in the body
// Dafny: finished with 8 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_037/imo_1992_p1-960/K2b.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

include "../lib/library_new.dfy"
// k_ablate shard_037 variant K2b of imo_1992_p1-960
lemma {:induction false} vc_imo_1992_p1_L960_nf6(p: int, q: int, r: int)
  ensures (p - 1) * (q - 1) * (r - 1) == p * q * r - (p * q) - (p * r) + p - (q * r) + q + r + -1
{ }

lemma {:induction false} vc_imo_1992_p1_L960_nf9(p: int, q: int, r: int)
  ensures 1 * ((p - 1) * (q - 1) * (r - 1)) == p * q * r - (p * q) - (p * r) + p - (q * r) + q + r + -1
{ }

lemma {:induction false} vc_imo_1992_p1_L960_nf14(p: int, q: int, r: int)
  ensures (1 + 1 - p) * (p + 1 - q) == (0 - p * p) + p * q + p + -2 * q + 2
{ }

lemma {:induction false} vc_imo_1992_p1_L960_nf16(p: int, q: int, r: int)
  ensures (1 + 1 - p) * (q + 1 - r) == (0 - p * q) + p * r - (p) + 2 * q + -2 * r + 2
{ }

lemma {:induction false} vc_imo_1992_p1_L960_nf18(p: int, q: int, r: int)
  ensures (1 + 1 - p) * (p * q * r - 1 - 1 * ((p - 1) * (q - 1) * (r - 1))) == (0 - p * p * q) - (p * p * r) + p * p - (p * q * r) + 3 * p * q + 3 * p * r + -2 * p + 2 * q * r + -2 * q + -2 * r
{ }

lemma {:induction false} vc_imo_1992_p1_L960_nf20(p: int, q: int, r: int)
  ensures (1 + 1 - p) * (2 * 4 - p * q) == p * p * q + -2 * p * q + -8 * p + 16
{ }

lemma {:induction false} vc_imo_1992_p1_L960_nf22(p: int, q: int, r: int)
  ensures (1 + 1 - p) * (2 * 4 - p * r) == p * p * r + -2 * p * r + -8 * p + 16
{ }

// Line lemma for failing line 960 of imo_1992_p1 (OOR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.


// ========================================================================================
// FAILING LINE 960 (OOR) in cert_identity_104: Verification out of resource (cert_identity_104)
//   dafny |   ensures (((((((((((-((16 * 1)) + (16 * ((1 + 1) - p))) + (2 * ((q + 1) - r))) + ((0 + 1) - (((p - 1) * (q - 1)) * (r - 1)))) + ((((p * q) * r) - 1) - (1 * (((p - 1) * (q - 1)) * (r - 1))))) + (2 * (4 - q))) + ((2 * 4) - (p * q))) + -((((1 + 1) - p) * ((p + 1) - q)))) + -((((1 + 1) - p) * ((q + 1) 
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
lemma {:induction false} vc_imo_1992_p1_L960(p: int, q: int, r: int)
  ensures  0 - 16 * 1 + 16 * (1 + 1 - p) + 2 * (q + 1 - r) + (0 + 1 - (p - 1) * (q - 1) * (r - 1)) + (p * q * r - 1 - 1 * ((p - 1) * (q - 1) * (r - 1))) + 2 * (4 - q) + (2 * 4 - p * q) + (0 - (1 + 1 - p) * (p + 1 - q)) + (0 - (1 + 1 - p) * (q + 1 - r)) + (0 - (1 + 1 - p) * (p * q * r - 1 - 1 * ((p - 1) * (q - 1) * (r - 1)))) + (0 - (1 + 1 - p) * (2 * 4 - p * q)) + (0 - (1 + 1 - p) * (2 * 4 - p * r)) == 0
{
  vc_imo_1992_p1_L960_nf6(p, q, r);
  vc_imo_1992_p1_L960_nf9(p, q, r);
  vc_imo_1992_p1_L960_nf14(p, q, r);
  vc_imo_1992_p1_L960_nf16(p, q, r);
  vc_imo_1992_p1_L960_nf18(p, q, r);
  vc_imo_1992_p1_L960_nf20(p, q, r);
  vc_imo_1992_p1_L960_nf22(p, q, r);
}

