// CLOSED LEMMA for failing line algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2-1620 (theorem algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2, Dafny line 1620, OOR)
// closes with: K3 (locality) — base
// added: nothing (line lemma standalone)
// Dafny: verifies unchanged (dossier standalone check)
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/line_lemmas/OOR/algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2/L1620.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 1620 of algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2 (OOR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../wt_integ5/out/algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2.dfy"

// ========================================================================================
// FAILING LINE 1620 (OOR) in algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2: Verification out of resource (algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2)
//   dafny |           SqNonneg((b - c)); assert (0.0 <= ((b - c) * (b - c)));  // cert: sq_nonneg
//   statement kind: cert (lemma application in a certificate)
// inside Lean have h₉₀, Lean lines 129-137:
//   lean  |     have h₉₀ : a / (a + b + 2) + b / (b + c + 2) + c / (c + a + 2) ≥ 3 / 4 := by
//   lean  |       -- Use the symmetry and the given condition to prove the inequality
//   lean  |       have h₉₁ : 0 < a * b := by positivity
//   lean  |       have h₉₂ : 0 < b * c := by positivity
//   lean  |       have h₉₃ : 0 < c * a := by positivity
//   lean  |       field_simp
//   lean  |       rw [div_le_div_iff (by positivity) (by positivity)]
//   lean  |       nlinarith [sq_nonneg (a - b), sq_nonneg (b - c), sq_nonneg (c - a),
//   lean  |         sq_nonneg (a - 1), sq_nonneg (b - 1), sq_nonneg (c - 1)]

// 1 path(s) merged (joined); 44 shared facts; 1 distinct path conditions
lemma {:induction false} vc_algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2_L1620(a: real, b: real, c: real)
  requires 0.0 < a
  requires 0.0 < b
  requires 0.0 < c
  requires 3.0 <= a * b + b * c + c * a
  requires a + b + c >= 3.0
  requires forall x_1_1: real, y_1_1: real :: 0.0 < x_1_1 && 0.0 < y_1_1 ==> Real.sqrt(x_1_1 + y_1_1) <= Real.div(x_1_1 + y_1_1 + 2.0, 2.0 * Real.sqrt(2.0))
  requires Real.div(a, Real.sqrt(a + b)) >= Real.div(2.0 * Real.sqrt(2.0) * a, a + b + 2.0)
  requires Real.div(b, Real.sqrt(b + c)) >= Real.div(2.0 * Real.sqrt(2.0) * b, b + c + 2.0)
  requires Real.div(c, Real.sqrt(c + a)) >= Real.div(2.0 * Real.sqrt(2.0) * c, c + a + 2.0)
  requires Real.div(a, Real.sqrt(a + b)) + Real.div(b, Real.sqrt(b + c)) + Real.div(c, Real.sqrt(c + a)) >= Real.div(2.0 * Real.sqrt(2.0) * a, a + b + 2.0) + Real.div(2.0 * Real.sqrt(2.0) * b, b + c + 2.0) + Real.div(2.0 * Real.sqrt(2.0) * c, c + a + 2.0)
  requires 0.0 < Real.sqrt(2.0)
  requires 0.0 < 2.0 * Real.sqrt(2.0)
  requires 0.0 < a + b + 2.0
  requires 0.0 < b + c + 2.0
  requires 0.0 < c + a + 2.0
  requires 0.0 < (a + b + 2.0) * (b + c + 2.0) * (c + a + 2.0)
  requires 0.0 < a * b
  requires 0.0 < b * c
  requires 0.0 < c * a
  requires (0.0 < a + b + 2.0) || (a + b + 2.0 <= 0.0)
  requires 0.0 < (a + b + 2.0) * (b + c + 2.0)
  requires (0.0 < a + b + 2.0) || (a + b + 2.0 <= 0.0)
  requires ((0.0 < a + b + 2.0) && (0.0 < b + c + 2.0) && (0.0 < (a + b + 2.0) * (b + c + 2.0))) || (!(0.0 < a + b + 2.0 && 0.0 < b + c + 2.0))
  requires 0.0 < 4.0
  requires (0.0 < 4.0) || (!(0.0 < 4.0))
  requires 0.0 < 4.0
  requires 0.0 < 4.0
  requires (3.0 / 4.0 <= ((a * (b + c + 2.0) + b * (a + b + 2.0)) * (c + a + 2.0) + c * ((a + b + 2.0) * (b + c + 2.0))) / ((a + b + 2.0) * (b + c + 2.0) * (c + a + 2.0))) == (3.0 * ((a + b + 2.0) * (b + c + 2.0) * (c + a + 2.0)) <= ((a * (b + c + 2.0) + b * (a + b + 2.0)) * (c + a + 2.0) + c * ((a + b + 2.0) * (b + c + 2.0))) * 4.0)
  requires (0.0 <= (c - a) * (c - a)) || ((c - a) * (c - a) < 0.0)
  requires ((0.0 <= (c - a) * (c - a)) && (0.0 <= (b - 1.0) * (b - 1.0)) && (0.0 <= (c - a) * (c - a) * ((b - 1.0) * (b - 1.0)))) || (!(0.0 <= (c - a) * (c - a) && 0.0 <= (b - 1.0) * (b - 1.0)))
  requires 0.0 <= (c - a) * (c - a)
  requires 0.0 <= (b - 1.0) * (b - 1.0)
  requires (0.0 <= (c - a) * (c - a)) || ((c - a) * (c - a) < 0.0)
  requires ((0.0 <= (c - a) * (c - a)) && (0.0 <= a) && (0.0 <= (c - a) * (c - a) * a) && ((0.0 <= (c - a) * (c - a)) || ((c - a) * (c - a) < 0.0))) || ((!(0.0 <= (c - a) * (c - a) && 0.0 <= a)) && ((0.0 <= (c - a) * (c - a)) || ((c - a) * (c - a) < 0.0)))
  requires ((0.0 <= (c - a) * (c - a)) && (3.0 - (a * b + b * c + c * a) <= 0.0) && ((c - a) * (c - a) * (3.0 - (a * b + b * c + c * a)) <= 0.0) && ((0.0 <= (a - b) * (a - b)) || ((a - b) * (a - b) < 0.0))) || ((!(0.0 <= (c - a) * (c - a) && 3.0 - (a * b + b * c + c * a) <= 0.0)) && ((0.0 <= (a - b) * (a - b)) || ((a - b) * (a - b) < 0.0)))
  requires ((0.0 <= (a - b) * (a - b)) && (0.0 <= (c - 1.0) * (c - 1.0)) && (0.0 <= (a - b) * (a - b) * ((c - 1.0) * (c - 1.0)))) || (!(0.0 <= (a - b) * (a - b) && 0.0 <= (c - 1.0) * (c - 1.0)))
  requires 0.0 <= (a - b) * (a - b)
  requires 0.0 <= (c - 1.0) * (c - 1.0)
  requires (0.0 <= (a - b) * (a - b)) || ((a - b) * (a - b) < 0.0)
  requires ((0.0 <= (a - b) * (a - b)) && (0.0 <= b) && (0.0 <= (a - b) * (a - b) * b) && ((0.0 <= (a - b) * (a - b)) || ((a - b) * (a - b) < 0.0))) || ((!(0.0 <= (a - b) * (a - b) && 0.0 <= b)) && ((0.0 <= (a - b) * (a - b)) || ((a - b) * (a - b) < 0.0)))
  requires ((0.0 <= (a - b) * (a - b)) && (3.0 - (a * b + b * c + c * a) <= 0.0) && ((a - b) * (a - b) * (3.0 - (a * b + b * c + c * a)) <= 0.0) && ((0.0 <= (a - 1.0) * (a - 1.0)) || ((a - 1.0) * (a - 1.0) < 0.0))) || ((!(0.0 <= (a - b) * (a - b) && 3.0 - (a * b + b * c + c * a) <= 0.0)) && ((0.0 <= (a - 1.0) * (a - 1.0)) || ((a - 1.0) * (a - 1.0) < 0.0)))
  requires ((0.0 <= (a - 1.0) * (a - 1.0)) && (0.0 <= (b - c) * (b - c)) && (0.0 <= (a - 1.0) * (a - 1.0) * ((b - c) * (b - c)))) || (!(0.0 <= (a - 1.0) * (a - 1.0) && 0.0 <= (b - c) * (b - c)))
  requires 0.0 <= (a - 1.0) * (a - 1.0)
  requires 0.0 <= (b - c) * (b - c)
  ensures  0.0 <= (b - c) * (b - c)
{ }

