// CLOSED LEMMA for failing line imo_1973_p3-601 (theorem imo_1973_p3, Dafny line 601, ERR)
// closes with: K3 (locality) — single
// added: requires only 0 <= (y-2)*(y-2) and Q == 0 (Lean premises of mul_zero_eq); all other 20-30 requires dropped
// Dafny: finished with 1 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_035/imo_1973_p3-601/K3.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 601 of imo_1973_p3 (ERR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../../wt_integ5/out/imo_1973_p3.dfy"

// ========================================================================================
// FAILING LINE 601 (ERR) in imo_1973_p3: assertion might not hold
//   dafny |         if (0.0 <= ((y - 2.0) * (y - 2.0))) && ((((y * y) + (a * y)) + (b - 2.0)) == 0.0) { assert (-((((y - 2.0) * (y - 2.0)) * (((y * y) + (a * y)) + (b - 2.0)))) == 0.0); }  // cert: Linarith.mul_zero_eq
//   statement kind: cert (lemma application in a certificate)
// inside Lean have h₃, Lean lines 63-68:
//   lean  |   have h₃ : a ^ 2 + b ^ 2 ≥ 4 / 5 := by
//   lean  |     obtain ⟨y, h_y, h_y_ineq⟩ := h₁
//   lean  |     have h_y_ineq' := h_y_ineq
//   lean  |     cases' h_y_ineq' with h_y_ge_2 h_y_le_neg_2 <;> simp_all
//   lean  |     <;> nlinarith [sq_nonneg (y + 2), sq_nonneg (y - 2), sq_nonneg a, sq_nonneg (b - 2),
//   lean  |       sq_nonneg (a - b * 2), sq_nonneg (a + b * 2), sq_nonneg (a ^ 2 - 4 * (b - 2))]

// 1 path(s) merged (joined); 33 shared facts; 1 distinct path conditions
// AUGMENTATION: K3 locality: only the premises Lean's Linarith.mul_zero_eq used (sufficiency test)
lemma {:induction false} vc_imo_1973_p3_L601(a: real, b: real, y_2: real, y_2_0: real, y_2_2: real, y_2_3: real)
  requires 0.0 <= (y_2_2 - 2.0) * (y_2_2 - 2.0)
  requires (y_2_2 * y_2_2 + a * y_2_2 + (b - 2.0)) == 0.0
  ensures  0.0 - (y_2_2 - 2.0) * (y_2_2 - 2.0) * (y_2_2 * y_2_2 + a * y_2_2 + (b - 2.0)) == 0.0
{

}

