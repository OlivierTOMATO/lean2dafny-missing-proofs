// CLOSED LEMMA for failing line algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2-1725 (theorem algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2, Dafny line 1725, ERR)
// closes with: K3 (locality) — base
// added: nothing (line lemma standalone)
// Dafny: verifies unchanged (dossier standalone check)
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/line_lemmas/ERR/algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2/L1725.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 1725 of algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2 (ERR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../wt_integ5/out/algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2.dfy"

// ========================================================================================
// FAILING LINE 1725 (ERR) in algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2: assertion might not hold
//   dafny |       assert (((2.0 * Real.sqrt(2.0)) * ((Real.div(a, ((a + b) + 2.0)) + Real.div(b, ((b + c) + 2.0))) + Real.div(c, ((c + a) + 2.0)))) >= ((2.0 * Real.sqrt(2.0)) * (3.0 / 4.0))) by { // @tac 8736-8761 // @tac 8736-8742
//   statement kind: have / step assertion
//   @tac 8736-8761 | Lean: gcongr
//        before-goal ⊢ (2 : ℝ) * √(2 : ℝ) * (a / (a + b + (2 : ℝ)) + b / (b + c + (2 : ℝ)) + c / (c + a + (2 : ℝ))) ≥
  (2 : ℝ) * √(2 : ℝ) * (3 / 4 : ℝ)
//   @tac 8736-8742 | Lean: gcongr
//        before-goal ⊢ (2 : ℝ) * √(2 : ℝ) * (a / (a + b + (2 : ℝ)) + b / (b + c + (2 : ℝ)) + c / (c + a + (2 : ℝ))) ≥
  (2 : ℝ) * √(2 : ℝ) * (3 / 4 : ℝ)
//        before-goal ⊢ (0 : ℝ) ≤ (2 : ℝ) * √(2 : ℝ)
// Lean have h₉₂, Lean lines 146-148:
//   lean  |     have h₉₂ : 2 * Real.sqrt 2 * (a / (a + b + 2) + b / (b + c + 2) + c / (c + a + 2)) ≥ 2 * Real.sqrt 2 * (3 / 4) := by
//   lean  |       gcongr
//   lean  |       <;> linarith

// 4 path(s) merged (paths); 24 shared facts; 4 distinct path conditions
lemma {:induction false} vc_algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2_L1725(a: real, b: real, c: real)
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
  requires 4.0 != 0.0
  requires Real.div(a, a + b + 2.0) + Real.div(b, b + c + 2.0) + Real.div(c, c + a + 2.0) >= 3.0 / 4.0
  requires Real.div(2.0 * Real.sqrt(2.0) * a, a + b + 2.0) + Real.div(2.0 * Real.sqrt(2.0) * b, b + c + 2.0) + Real.div(2.0 * Real.sqrt(2.0) * c, c + a + 2.0) == 2.0 * Real.sqrt(2.0) * (Real.div(a, a + b + 2.0) + Real.div(b, b + c + 2.0) + Real.div(c, c + a + 2.0))
  requires 0.0 <= 2.0 * Real.sqrt(2.0)
  requires 3.0 / 4.0 <= Real.div(a, a + b + 2.0) + Real.div(b, b + c + 2.0) + Real.div(c, c + a + 2.0)
  requires 2.0 * Real.sqrt(2.0) * (3.0 / 4.0) <= 2.0 * Real.sqrt(2.0) * (Real.div(a, a + b + 2.0) + Real.div(b, b + c + 2.0) + Real.div(c, c + a + 2.0))
  requires 0.0 < 2.0 * Real.sqrt(2.0)
  requires 0.0 < 2.0 * Real.sqrt(2.0)
  requires ((0.0 < 2.0) && (0.0 < 2.0) && (0.0 < 2.0)) || ((0.0 < 2.0) && (!(0.0 < 2.0 && 0.0 < Real.sqrt(2.0)))) || ((!(0.0 < 2.0)) && (0.0 < 2.0) && (0.0 < 2.0)) || ((!(0.0 < 2.0)) && (!(0.0 < 2.0 && 0.0 < Real.sqrt(2.0))))
  ensures  2.0 * Real.sqrt(2.0) * (Real.div(a, a + b + 2.0) + Real.div(b, b + c + 2.0) + Real.div(c, c + a + 2.0)) >= 2.0 * Real.sqrt(2.0) * (3.0 / 4.0)
{ }

// side checks at the same line (not the reported failure): 1 check(s)
// side check: divisor is always non-zero.
lemma {:induction false} vc_algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2_L1725_side1(a: real, b: real, c: real)
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
  requires 4.0 != 0.0
  requires Real.div(a, a + b + 2.0) + Real.div(b, b + c + 2.0) + Real.div(c, c + a + 2.0) >= 3.0 / 4.0
  requires Real.div(2.0 * Real.sqrt(2.0) * a, a + b + 2.0) + Real.div(2.0 * Real.sqrt(2.0) * b, b + c + 2.0) + Real.div(2.0 * Real.sqrt(2.0) * c, c + a + 2.0) == 2.0 * Real.sqrt(2.0) * (Real.div(a, a + b + 2.0) + Real.div(b, b + c + 2.0) + Real.div(c, c + a + 2.0))
  requires 0.0 <= 2.0 * Real.sqrt(2.0)
  requires 3.0 / 4.0 <= Real.div(a, a + b + 2.0) + Real.div(b, b + c + 2.0) + Real.div(c, c + a + 2.0)
  requires 2.0 * Real.sqrt(2.0) * (3.0 / 4.0) <= 2.0 * Real.sqrt(2.0) * (Real.div(a, a + b + 2.0) + Real.div(b, b + c + 2.0) + Real.div(c, c + a + 2.0))
  requires 0.0 < 2.0 * Real.sqrt(2.0)
  requires 0.0 < 2.0 * Real.sqrt(2.0)
  requires ((0.0 < 2.0) && (0.0 < 2.0) && (0.0 < 2.0)) || ((0.0 < 2.0) && (!(0.0 < 2.0 && 0.0 < Real.sqrt(2.0)))) || ((!(0.0 < 2.0)) && (0.0 < 2.0) && (0.0 < 2.0)) || ((!(0.0 < 2.0)) && (!(0.0 < 2.0 && 0.0 < Real.sqrt(2.0))))
  ensures  4.0 != 0.0
{ }

