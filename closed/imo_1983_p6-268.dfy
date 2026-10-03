// CLOSED LEMMA for failing line imo_1983_p6-268 (theorem imo_1983_p6, Dafny line 268, OOR)
// closes with: K3 (locality) — base
// added: nothing (line lemma standalone)
// Dafny: verifies unchanged (dossier standalone check)
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/line_lemmas/OOR/imo_1983_p6/L268.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 268 of imo_1983_p6 (OOR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../wt_integ5/out/imo_1983_p6.dfy"

// ========================================================================================
// FAILING LINE 268 (OOR) in imo_1983_p6: Verification out of resource (imo_1983_p6)
//   dafny |     SqNonneg((b - c)); assert (0.0 <= ((b - c) * (b - c)));  // cert: sq_nonneg
//   statement kind: cert (lemma application in a certificate)
// inside Lean have h₇, Lean lines 27-42:
//   lean  |   have h₇ : 0 ≤ a ^ 2 * b * (a - b) + b ^ 2 * c * (b - c) + c ^ 2 * a * (c - a) := by
//   lean  |     have h₇₁ : 0 < a := by linarith
//   lean  |     have h₇₂ : 0 < b := by linarith
//   lean  |     have h₇₃ : 0 < c := by linarith
//   lean  |     have h₇₄ : 0 < a * b := by positivity
//   lean  |     have h₇₅ : 0 < b * c := by positivity
//   lean  |     have h₇₆ : 0 < c * a := by positivity
//   lean  |     -- Use nlinarith to prove the inequality by leveraging the properties of the terms
//   lean  |     nlinarith [sq_nonneg (a - b), sq_nonneg (b - c), sq_nonneg (c - a),
//   lean  |       mul_pos h₀.1 h₀.2.1, mul_pos h₀.2.1 h₀.2.2, mul_pos h₀.2.2 h₀.1,
//   lean  |       mul_pos (sub_pos.mpr h₁) (sub_pos.mpr h₂), mul_pos (sub_pos.mpr h₂) (sub_pos.mpr h₃),
//   lean  |       mul_pos (sub_pos.mpr h₃) (sub_pos.mpr h₁), mul_pos h₄ h₅, mul_pos h₅ h₆,
//   lean  |       mul_pos h₆ h₄, sq_nonneg (a - b + c), sq_nonneg (b - c + a),
//   lean  |       sq_nonneg (c - a + b), mul_nonneg (sub_nonneg.mpr h₁.le) (sub_nonneg.mpr h₂.le),
//   lean  |       mul_nonneg (sub_nonneg.mpr h₂.le) (sub_nonneg.mpr h₃.le),
//   lean  |       mul_nonneg (sub_nonneg.mpr h₃.le) (sub_nonneg.mpr h₁.le)]

// 1 path(s) merged (joined); 23 shared facts; 1 distinct path conditions
lemma {:induction false} vc_imo_1983_p6_L268(a: real, b: real, c: real)
  requires 0.0 < a
  requires 0.0 < b
  requires 0.0 < c
  requires c < a + b
  requires b < a + c
  requires a < b + c
  requires 0.0 < b + c - a
  requires 0.0 < c + a - b
  requires 0.0 < a + b - c
  requires 0.0 < a * b
  requires 0.0 < b * c
  requires 0.0 < c * a
  requires (0.0 <= (a - b) * (a - b)) || ((a - b) * (a - b) < 0.0)
  requires ((0.0 <= (a - b) * (a - b)) && (0.0 <= (b + c - a) * (a + b - c)) && (0.0 <= (a - b) * (a - b) * ((b + c - a) * (a + b - c)))) || (!(0.0 <= (a - b) * (a - b) && 0.0 <= (b + c - a) * (a + b - c)))
  requires 0.0 <= (a - b) * (a - b)
  requires (0.0 < b + c - a) || (b + c - a <= 0.0)
  requires ((0.0 < b + c - a) && (0.0 < a + b - c) && (0.0 < (b + c - a) * (a + b - c)) && ((0.0 <= (c - a) * (c - a)) || ((c - a) * (c - a) < 0.0))) || ((!(0.0 < b + c - a && 0.0 < a + b - c)) && ((0.0 <= (c - a) * (c - a)) || ((c - a) * (c - a) < 0.0)))
  requires ((0.0 <= (c - a) * (c - a)) && (0.0 <= (a + b - c) * (a + c - b)) && (0.0 <= (c - a) * (c - a) * ((a + b - c) * (a + c - b)))) || (!(0.0 <= (c - a) * (c - a) && 0.0 <= (a + b - c) * (a + c - b)))
  requires 0.0 <= (c - a) * (c - a)
  requires (0.0 < a + b - c) || (a + b - c <= 0.0)
  requires ((0.0 < a + b - c) && (0.0 < a + c - b) && (0.0 < (a + b - c) * (a + c - b)) && ((0.0 <= (b - c) * (b - c)) || ((b - c) * (b - c) < 0.0))) || ((!(0.0 < a + b - c && 0.0 < a + c - b)) && ((0.0 <= (b - c) * (b - c)) || ((b - c) * (b - c) < 0.0)))
  requires ((0.0 <= (b - c) * (b - c)) && (0.0 <= (a + c - b) * (b + c - a)) && (0.0 <= (b - c) * (b - c) * ((a + c - b) * (b + c - a)))) || (!(0.0 <= (b - c) * (b - c) && 0.0 <= (a + c - b) * (b + c - a)))
  requires 0.0 <= (b - c) * (b - c)
  ensures  0.0 <= (b - c) * (b - c)
{ }

