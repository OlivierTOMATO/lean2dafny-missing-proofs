// CLOSED LEMMA for failing line amc12b_2020_p22-25 (theorem amc12b_2020_p22, Dafny line 25, ERR)
// closes with: K3 (locality) — base
// added: nothing (line lemma standalone)
// Dafny: verifies unchanged (dossier standalone check)
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/line_lemmas/ERR/amc12b_2020_p22/L25.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 25 of amc12b_2020_p22 (ERR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../wt_integ5/out/amc12b_2020_p22.dfy"

// ========================================================================================
// FAILING LINE 25 (ERR) in cert_piece_2: a precondition for this call could not be proved
//   dafny |   MulPos(Real.rpow(2.0, t), (Real.rpow(2.0, t) * Real.rpow(2.0, t)));
//   statement kind: cert piece
// certificate lemma for Lean have h₃, Lean lines 56-75:
//   lean  |   have h₃ : (2 ^ t - 3 * t) * t / 4 ^ t = (t / (2 : ℝ) ^ t - 3 * (t / (2 : ℝ) ^ t) ^ 2) := by
//   lean  |     have h₄ : (4 : ℝ) ^ t = ((2 : ℝ) ^ t) ^ 2 := h₂
//   lean  |     have h₅ : (4 : ℝ) ^ t > 0 := by positivity
//   lean  |     have h₆ : (2 : ℝ) ^ t > 0 := by positivity
//   lean  |     calc
//   lean  |       (2 ^ t - 3 * t) * t / 4 ^ t = ((2 : ℝ) ^ t - 3 * t) * t / 4 ^ t := by norm_num
//   lean  |       _ = ((2 : ℝ) ^ t - 3 * t) * t / ((2 : ℝ) ^ t) ^ 2 := by rw [h₄]
//   lean  |       _ = ((2 : ℝ) ^ t - 3 * t) * t / ((2 : ℝ) ^ t) ^ 2 := by ring
//   lean  |       _ = (t / (2 : ℝ) ^ t - 3 * (t / (2 : ℝ) ^ t) ^ 2) := by
//   lean  |         have h₇ : ((2 : ℝ) ^ t - 3 * t) * t / ((2 : ℝ) ^ t) ^ 2 = (t / (2 : ℝ) ^ t - 3 * (t / (2 : ℝ) ^ t) ^ 2) := by
//   lean  |           have h₈ : ((2 : ℝ) ^ t - 3 * t) * t / ((2 : ℝ) ^ t) ^ 2 = (t / (2 : ℝ) ^ t - 3 * (t / (2 : ℝ) ^ t) ^ 2) := by
//   lean  |             field_simp [h₆.ne']
//   lean  |             <;> ring_nf
//   lean  |             <;> field_simp [h₆.ne']
//   lean  |             <;> ring_nf
//   lean  |             <;> field_simp [h₆.ne']
//   lean  |             <;> ring_nf
//   lean  |           rw [h₈]
//   lean  |         rw [h₇]
//   lean  |       _ = (t / (2 : ℝ) ^ t - 3 * (t / (2 : ℝ) ^ t) ^ 2) := by ring

// 2 path(s) merged (paths); 2 shared facts; 2 distinct path conditions; 2 claims conjoined
lemma {:induction false} vc_amc12b_2020_p22_L25(t: real)
  requires 0.0 < Real.rpow(2.0, t)
  requires 0.0 < Real.rpow(2.0, t) * Real.rpow(2.0, t)
  ensures  (0.0 < Real.rpow(2.0, t))
        && (0.0 < Real.rpow(2.0, t) * Real.rpow(2.0, t))
{ }

