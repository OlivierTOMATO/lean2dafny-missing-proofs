// CLOSED LEMMA for failing line imo_1973_p3-564 (theorem imo_1973_p3, Dafny line 564, ERR)
// closes with: K3 (locality) — single
// added: kept 25/37 requires: Lean nlinarith (exec 417) before-state hyps h_y (Q=0), h_y_le_neg_2 (y<=-2) + the named sq_nonneg facts, certificate product pieces and the certificate identity; dropped path copies y_2/y_2_0/y_2_3, existentials, h₂ (not used by the certificate), y>=2-branch disjunct, cast facts
// Dafny: finished with 2 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_035/imo_1973_p3-564/K3.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 564 of imo_1973_p3 (ERR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../../wt_integ5/out/imo_1973_p3.dfy"

// ========================================================================================
// FAILING LINE 564 (ERR) in imo_1973_p3: assertion might not hold
//   dafny |       assert ((4.0 / 5.0) <= ((a * a) + (b * b))) by {  // sub-goal of `nlinarith` (Lean state) // @tac 2449-2614
//   statement kind: sub-goal (Lean tactic state)
//   @tac 2449-2614 | Lean: nlinarith [sq_nonneg (y + 2), sq_nonneg (y - 2), sq_nonneg a, sq_nonneg (b - 2),
//        before-goal ⊢ (4 / 5 : ℝ) ≤ a ^ (2 : ℕ) + b ^ (2 : ℕ)
//        before-goal ⊢ (5 : ℝ) * (1 : ℝ) ^ (2 : ℕ) = (5 : ℝ)
// inside Lean have h₃, Lean lines 63-68:
//   lean  |   have h₃ : a ^ 2 + b ^ 2 ≥ 4 / 5 := by
//   lean  |     obtain ⟨y, h_y, h_y_ineq⟩ := h₁
//   lean  |     have h_y_ineq' := h_y_ineq
//   lean  |     cases' h_y_ineq' with h_y_ge_2 h_y_le_neg_2 <;> simp_all
//   lean  |     <;> nlinarith [sq_nonneg (y + 2), sq_nonneg (y - 2), sq_nonneg a, sq_nonneg (b - 2),
//   lean  |       sq_nonneg (a - b * 2), sq_nonneg (a + b * 2), sq_nonneg (a ^ 2 - 4 * (b - 2))]

// 1 path(s) merged (joined); 37 shared facts; 1 distinct path conditions
// AUGMENTATION: K3 locality: 25/37 requires kept (Lean nlinarith exec 417 before-state hyps h_y, h_y_le_neg_2 + its certificate facts); sufficiency test
lemma {:induction false} vc_imo_1973_p3_L564(a: real, b: real, y_2: real, y_2_0: real, y_2_2: real, y_2_3: real)
  requires y_2_2 * y_2_2 + a * y_2_2 + (b - 2.0) == 0.0
  requires y_2_2 >= 2.0 || y_2_2 <= 0.0 - 2.0
  requires (2.0 > y_2_2) || (y_2_2 >= 2.0)
  requires y_2_2 <= 0.0 - 2.0
  requires 0.0 <= (y_2_2 + 2.0) * (y_2_2 + 2.0)
  requires 0.0 <= 1.0 * b * (1.0 * b)
  requires 0.0 <= (a - b * 2.0) * (a - b * 2.0)
  requires 0.0 <= (a + b * 2.0) * (a + b * 2.0)
  requires 0.0 <= (y_2_2 - 2.0) * (y_2_2 - 2.0)
  requires 0.0 <= y_2_2 * y_2_2
  requires ((5.0 * (1.0 * a * (1.0 * a)) + 5.0 * (1.0 * b * (1.0 * b)) - 1.0 * 4.0 < 0.0) && (5.0 * (1.0 * a * (1.0 * a)) + 5.0 * (1.0 * b * (1.0 * b)) - 1.0 * 4.0 < 0.0) && (5.0 * (1.0 * a * (1.0 * a)) + 5.0 * (1.0 * b * (1.0 * b)) - 1.0 * 4.0 <= 0.0)) || (0.0 <= 5.0 * (1.0 * a * (1.0 * a)) + 5.0 * (1.0 * b * (1.0 * b)) - 1.0 * 4.0)
  requires ((0.0 <= (y_2_2 + 2.0) * (y_2_2 + 2.0)) && (0.0 <= (y_2_2 + 2.0) * (y_2_2 + 2.0) * ((y_2_2 + 2.0) * (y_2_2 + 2.0))) && ((0.0 <= (y_2_2 + 2.0) * (y_2_2 + 2.0)) || ((y_2_2 + 2.0) * (y_2_2 + 2.0) < 0.0))) || (((y_2_2 + 2.0) * (y_2_2 + 2.0) < 0.0) && ((0.0 <= (y_2_2 + 2.0) * (y_2_2 + 2.0)) || ((y_2_2 + 2.0) * (y_2_2 + 2.0) < 0.0)))
  requires ((0.0 <= (y_2_2 + 2.0) * (y_2_2 + 2.0)) && (0.0 <= 1.0 * b * (1.0 * b)) && (0.0 <= (y_2_2 + 2.0) * (y_2_2 + 2.0) * (1.0 * b * (1.0 * b)))) || (!(0.0 <= (y_2_2 + 2.0) * (y_2_2 + 2.0) && 0.0 <= 1.0 * b * (1.0 * b)))
  requires (0.0 <= (y_2_2 + 2.0) * (y_2_2 + 2.0)) || ((y_2_2 + 2.0) * (y_2_2 + 2.0) < 0.0)
  requires ((0.0 <= (y_2_2 + 2.0) * (y_2_2 + 2.0)) && (0.0 <= (a - b * 2.0) * (a - b * 2.0)) && (0.0 <= (y_2_2 + 2.0) * (y_2_2 + 2.0) * ((a - b * 2.0) * (a - b * 2.0)))) || (!(0.0 <= (y_2_2 + 2.0) * (y_2_2 + 2.0) && 0.0 <= (a - b * 2.0) * (a - b * 2.0)))
  requires (0.0 <= (y_2_2 + 2.0) * (y_2_2 + 2.0)) || ((y_2_2 + 2.0) * (y_2_2 + 2.0) < 0.0)
  requires ((0.0 <= (y_2_2 + 2.0) * (y_2_2 + 2.0)) && (y_2_2 * y_2_2 + a * y_2_2 + (b - 2.0) == 0.0) && (0.0 - (y_2_2 + 2.0) * (y_2_2 + 2.0) * (y_2_2 * y_2_2 + a * y_2_2 + (b - 2.0)) == 0.0) && ((0.0 <= (y_2_2 + 2.0) * (y_2_2 + 2.0)) || ((y_2_2 + 2.0) * (y_2_2 + 2.0) < 0.0))) || ((!(0.0 <= (y_2_2 + 2.0) * (y_2_2 + 2.0) && y_2_2 * y_2_2 + a * y_2_2 + (b - 2.0) == 0.0)) && ((0.0 <= (y_2_2 + 2.0) * (y_2_2 + 2.0)) || ((y_2_2 + 2.0) * (y_2_2 + 2.0) < 0.0)))
  requires ((0.0 <= (y_2_2 + 2.0) * (y_2_2 + 2.0)) && (y_2_2 - (0.0 - 2.0) <= 0.0) && ((y_2_2 + 2.0) * (y_2_2 + 2.0) * (y_2_2 - (0.0 - 2.0)) <= 0.0) && ((0.0 <= (a + b * 2.0) * (a + b * 2.0)) || ((a + b * 2.0) * (a + b * 2.0) < 0.0))) || ((!(0.0 <= (y_2_2 + 2.0) * (y_2_2 + 2.0) && y_2_2 - (0.0 - 2.0) <= 0.0)) && ((0.0 <= (a + b * 2.0) * (a + b * 2.0)) || ((a + b * 2.0) * (a + b * 2.0) < 0.0)))
  requires ((0.0 <= (a + b * 2.0) * (a + b * 2.0)) && (0.0 <= (y_2_2 - 2.0) * (y_2_2 - 2.0)) && (0.0 <= (a + b * 2.0) * (a + b * 2.0) * ((y_2_2 - 2.0) * (y_2_2 - 2.0)))) || (!(0.0 <= (a + b * 2.0) * (a + b * 2.0) && 0.0 <= (y_2_2 - 2.0) * (y_2_2 - 2.0)))
  requires (0.0 <= 1.0 * b * (1.0 * b)) || (1.0 * b * (1.0 * b) < 0.0)
  requires ((0.0 <= 1.0 * b * (1.0 * b)) && (y_2_2 - (0.0 - 2.0) <= 0.0) && (1.0 * b * (1.0 * b) * (y_2_2 - (0.0 - 2.0)) <= 0.0) && ((0.0 <= (y_2_2 - 2.0) * (y_2_2 - 2.0)) || ((y_2_2 - 2.0) * (y_2_2 - 2.0) < 0.0))) || ((!(0.0 <= 1.0 * b * (1.0 * b) && y_2_2 - (0.0 - 2.0) <= 0.0)) && ((0.0 <= (y_2_2 - 2.0) * (y_2_2 - 2.0)) || ((y_2_2 - 2.0) * (y_2_2 - 2.0) < 0.0)))
  requires ((0.0 <= (y_2_2 - 2.0) * (y_2_2 - 2.0)) && (y_2_2 * y_2_2 + a * y_2_2 + (b - 2.0) == 0.0) && (0.0 - (y_2_2 - 2.0) * (y_2_2 - 2.0) * (y_2_2 * y_2_2 + a * y_2_2 + (b - 2.0)) == 0.0) && ((0.0 <= y_2_2 * y_2_2) || (y_2_2 * y_2_2 < 0.0))) || ((!(0.0 <= (y_2_2 - 2.0) * (y_2_2 - 2.0) && y_2_2 * y_2_2 + a * y_2_2 + (b - 2.0) == 0.0)) && ((0.0 <= y_2_2 * y_2_2) || (y_2_2 * y_2_2 < 0.0)))
  requires ((0.0 <= y_2_2 * y_2_2) && (5.0 * (1.0 * a * (1.0 * a)) + 5.0 * (1.0 * b * (1.0 * b)) - 1.0 * 4.0 <= 0.0) && (y_2_2 * y_2_2 * (5.0 * (1.0 * a * (1.0 * a)) + 5.0 * (1.0 * b * (1.0 * b)) - 1.0 * 4.0) <= 0.0)) || (!(0.0 <= y_2_2 * y_2_2 && 5.0 * (1.0 * a * (1.0 * a)) + 5.0 * (1.0 * b * (1.0 * b)) - 1.0 * 4.0 <= 0.0))
  requires ((y_2_2 * y_2_2 + a * y_2_2 + (b - 2.0) == 0.0) && ((y_2_2 * y_2_2 + a * y_2_2 + (b - 2.0)) * (y_2_2 * y_2_2 + a * y_2_2 + (b - 2.0)) == 0.0)) || (y_2_2 * y_2_2 + a * y_2_2 + (b - 2.0) != 0.0)
  requires 0.0 - 1528.0 * ((y_2_2 + 2.0) * (y_2_2 + 2.0)) + (0.0 - 960.0 * (y_2_2 * y_2_2 + a * y_2_2 + (b - 2.0))) + 992.0 * (y_2_2 - (0.0 - 2.0)) + 8.0 * (5.0 * (1.0 * a * (1.0 * a)) + 5.0 * (1.0 * b * (1.0 * b)) - 1.0 * 4.0) + (0.0 - 80.0 * ((y_2_2 + 2.0) * (y_2_2 + 2.0) * ((y_2_2 + 2.0) * (y_2_2 + 2.0)))) + (0.0 - 50.0 * ((y_2_2 + 2.0) * (y_2_2 + 2.0) * (1.0 * b * (1.0 * b)))) + (0.0 - 5.0 * ((y_2_2 + 2.0) * (y_2_2 + 2.0) * ((a - b * 2.0) * (a - b * 2.0)))) + 80.0 * ((y_2_2 + 2.0) * (y_2_2 + 2.0) * (y_2_2 * y_2_2 + a * y_2_2 + (b - 2.0))) + 640.0 * ((y_2_2 + 2.0) * (y_2_2 + 2.0) * (y_2_2 - (0.0 - 2.0))) + (0.0 - 5.0 * ((a + b * 2.0) * (a + b * 2.0) * ((y_2_2 - 2.0) * (y_2_2 - 2.0)))) + 200.0 * (1.0 * b * (1.0 * b) * (y_2_2 - (0.0 - 2.0))) + 80.0 * ((y_2_2 - 2.0) * (y_2_2 - 2.0) * (y_2_2 * y_2_2 + a * y_2_2 + (b - 2.0))) + 18.0 * (y_2_2 * y_2_2 * (5.0 * (1.0 * a * (1.0 * a)) + 5.0 * (1.0 * b * (1.0 * b)) - 1.0 * 4.0)) + (0.0 - 80.0 * ((y_2_2 * y_2_2 + a * y_2_2 + (b - 2.0)) * (y_2_2 * y_2_2 + a * y_2_2 + (b - 2.0)))) == 0.0
  ensures  4.0 / 5.0 <= a * a + b * b
{

}
