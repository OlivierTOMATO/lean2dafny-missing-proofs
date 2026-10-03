// CLOSED LEMMA for failing line algebra_apbpceq2_abpbcpcaeq1_aleq1on3anbleq1ancleq4on3-1502 (theorem algebra_apbpceq2_abpbcpcaeq1_aleq1on3anbleq1ancleq4on3, Dafny line 1502, ERR)
// closes with: K3 (locality) — base
// added: lemma Split1502 over only the certificate's hypotheses (0≤a, a≤b, b≤c, c≤4/3, a+b+c=2, ab=(c-1)²) with Lean's own pieces + cert_identity_70, called at the start of the h₆₅ block
// Dafny: verifies unchanged (dossier standalone check)
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/line_lemmas/ERR/algebra_apbpceq2_abpbcpcaeq1_aleq1on3anbleq1ancleq4on3/L1502.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 1502 of algebra_apbpceq2_abpbcpcaeq1_aleq1on3anbleq1ancleq4on3 (ERR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../wt_integ5/out/algebra_apbpceq2_abpbcpcaeq1_aleq1on3anbleq1ancleq4on3.dfy"

// ========================================================================================
// FAILING LINE 1502 (ERR) in algebra_apbpceq2_abpbcpcaeq1_aleq1on3anbleq1ancleq4on3: assertion might not hold
//   dafny |     assert (a <= (1.0 / 3.0)) by { // @tac 4620-4887
//   statement kind: have / step assertion
//   @tac 4620-4887 | Lean: nlinarith [sq_nonneg (a - b), sq_nonneg (b - c), sq_nonneg (c - a),
//        before-goal ⊢ a ≤ (1 / 3 : ℝ)
//        before-goal ⊢ (3 / 3 : ℝ) = (1 : ℝ)
// Lean have h₆₅, Lean lines 104-108:
//   lean  |     have h₆₅ : a ≤ 1 / 3 := by
//   lean  |       nlinarith [sq_nonneg (a - b), sq_nonneg (b - c), sq_nonneg (c - a),
//   lean  |         mul_nonneg (sub_nonneg.mpr h₃) (sub_nonneg.mpr h₀.1),
//   lean  |         mul_nonneg (sub_nonneg.mpr h₀.1) (sub_nonneg.mpr h₀.2),
//   lean  |         mul_nonneg (sub_nonneg.mpr h₃) (sub_nonneg.mpr h₀.2)]

// 1 path(s) merged (joined); 25 shared facts; 1 distinct path conditions
lemma {:induction false} vc_algebra_apbpceq2_abpbcpcaeq1_aleq1on3anbleq1ancleq4on3_L1502(a: real, b: real, c: real)
  requires a <= b
  requires b <= c
  requires a + b + c == 2.0
  requires a * b + b * c + c * a == 1.0
  requires 0.0 <= a
  requires 1.0 <= c
  requires 3.0 != 0.0
  requires c <= 4.0 / 3.0
  requires a + b == 2.0 - c
  requires a * b == (c - 1.0) * (c - 1.0)
  requires c >= 1.0
  requires (0.0 <= a - 0.0) || (a - 0.0 < 0.0)
  requires ((0.0 <= a - 0.0) && (0.0 <= b - a) && (0.0 <= (a - 0.0) * (b - a)) && ((a - b <= 0.0) || (0.0 < a - b))) || ((!(0.0 <= a - 0.0 && 0.0 <= b - a)) && ((a - b <= 0.0) || (0.0 < a - b)))
  requires ((a - b <= 0.0) && (a + b + c - 2.0 == 0.0) && ((a - b) * (a + b + c - 2.0) == 0.0) && ((b - c <= 0.0) || (0.0 < b - c))) || ((!(a - b <= 0.0 && a + b + c - 2.0 == 0.0)) && ((b - c <= 0.0) || (0.0 < b - c)))
  requires ((b - c <= 0.0) && (a + b + c - 2.0 == 0.0) && ((b - c) * (a + b + c - 2.0) == 0.0) && ((b - c <= 0.0) || (0.0 < b - c))) || ((!(b - c <= 0.0 && a + b + c - 2.0 == 0.0)) && ((b - c <= 0.0) || (0.0 < b - c)))
  requires ((b - c <= 0.0) && (3.0 * c - 1.0 * 4.0 <= 0.0) && (0.0 <= (b - c) * (3.0 * c - 1.0 * 4.0))) || (!(b - c <= 0.0 && 3.0 * c - 1.0 * 4.0 <= 0.0))
  requires 2.0 * (a - b) + (0.0 - 2.0 * (a + b + c - 2.0)) + 6.0 * (a * b - (c - 1.0) * (c - 1.0)) + 2.0 * (1.0 * 1.0 - 3.0 * a) + (0.0 - 3.0 * ((a - 0.0) * (b - a))) + (0.0 - 3.0 * ((a - b) * (a + b + c - 2.0))) + (0.0 - 3.0 * ((b - c) * (a + b + c - 2.0))) + (0.0 - (b - c) * (3.0 * c - 1.0 * 4.0)) == 0.0
  requires (0.0 <= a - 0.0) == (0.0 <= a)
  requires (0.0 <= b - a) == (a <= b)
  requires (1 as real) == 1.0
  requires (0 as real) == 0.0
  requires (0.0 <= a - 0.0) || (a - 0.0 < 0.0)
  requires 0.0 <= a - 0.0
  requires 0.0 <= b - a
  requires 0.0 <= (a - 0.0) * (b - a)
  ensures  a <= 1.0 / 3.0
{ }

// side checks at the same line (not the reported failure): 1 check(s)
// side check: divisor is always non-zero.
lemma {:induction false} vc_algebra_apbpceq2_abpbcpcaeq1_aleq1on3anbleq1ancleq4on3_L1502_side1(a: real, b: real, c: real)
  requires a <= b
  requires b <= c
  requires a + b + c == 2.0
  requires a * b + b * c + c * a == 1.0
  requires 0.0 <= a
  requires 1.0 <= c
  requires 3.0 != 0.0
  requires c <= 4.0 / 3.0
  requires a + b == 2.0 - c
  requires a * b == (c - 1.0) * (c - 1.0)
  requires c >= 1.0
  requires (0.0 <= a - 0.0) || (a - 0.0 < 0.0)
  requires ((0.0 <= a - 0.0) && (0.0 <= b - a) && (0.0 <= (a - 0.0) * (b - a)) && ((a - b <= 0.0) || (0.0 < a - b))) || ((!(0.0 <= a - 0.0 && 0.0 <= b - a)) && ((a - b <= 0.0) || (0.0 < a - b)))
  requires ((a - b <= 0.0) && (a + b + c - 2.0 == 0.0) && ((a - b) * (a + b + c - 2.0) == 0.0) && ((b - c <= 0.0) || (0.0 < b - c))) || ((!(a - b <= 0.0 && a + b + c - 2.0 == 0.0)) && ((b - c <= 0.0) || (0.0 < b - c)))
  requires ((b - c <= 0.0) && (a + b + c - 2.0 == 0.0) && ((b - c) * (a + b + c - 2.0) == 0.0) && ((b - c <= 0.0) || (0.0 < b - c))) || ((!(b - c <= 0.0 && a + b + c - 2.0 == 0.0)) && ((b - c <= 0.0) || (0.0 < b - c)))
  requires ((b - c <= 0.0) && (3.0 * c - 1.0 * 4.0 <= 0.0) && (0.0 <= (b - c) * (3.0 * c - 1.0 * 4.0))) || (!(b - c <= 0.0 && 3.0 * c - 1.0 * 4.0 <= 0.0))
  requires 2.0 * (a - b) + (0.0 - 2.0 * (a + b + c - 2.0)) + 6.0 * (a * b - (c - 1.0) * (c - 1.0)) + 2.0 * (1.0 * 1.0 - 3.0 * a) + (0.0 - 3.0 * ((a - 0.0) * (b - a))) + (0.0 - 3.0 * ((a - b) * (a + b + c - 2.0))) + (0.0 - 3.0 * ((b - c) * (a + b + c - 2.0))) + (0.0 - (b - c) * (3.0 * c - 1.0 * 4.0)) == 0.0
  requires (0.0 <= a - 0.0) == (0.0 <= a)
  requires (0.0 <= b - a) == (a <= b)
  requires (1 as real) == 1.0
  requires (0 as real) == 0.0
  requires (0.0 <= a - 0.0) || (a - 0.0 < 0.0)
  requires 0.0 <= a - 0.0
  requires 0.0 <= b - a
  requires 0.0 <= (a - 0.0) * (b - a)
  ensures  3.0 != 0.0
{ }

