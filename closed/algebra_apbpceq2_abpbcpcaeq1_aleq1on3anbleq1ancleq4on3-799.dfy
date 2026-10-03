// CLOSED LEMMA for failing line algebra_apbpceq2_abpbcpcaeq1_aleq1on3anbleq1ancleq4on3-799 (theorem algebra_apbpceq2_abpbcpcaeq1_aleq1on3anbleq1ancleq4on3, Dafny line 799, OOR)
// closes with: K3 (locality) — base
// added: lemma LinarithMulZeroEq(x,y) requires y == 0.0 ensures x*y == 0.0 {} — the piece over only Lean's premise; and Lean's h₆₁ step as its own lemma H61 over h₀,h₁ replacing the emitted certificate block
// Dafny: verifies unchanged (dossier standalone check)
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/line_lemmas/OOR/algebra_apbpceq2_abpbcpcaeq1_aleq1on3anbleq1ancleq4on3/L799.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 799 of algebra_apbpceq2_abpbcpcaeq1_aleq1on3anbleq1ancleq4on3 (OOR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../wt_integ5/out/algebra_apbpceq2_abpbcpcaeq1_aleq1on3anbleq1ancleq4on3.dfy"

// ========================================================================================
// FAILING LINE 799 (OOR) in algebra_apbpceq2_abpbcpcaeq1_aleq1on3anbleq1ancleq4on3: Verification out of resource (algebra_apbpceq2_abpbcpcaeq1_aleq1on3anbleq1ancleq4on3)
//   dafny |             if ((a - b) <= 0.0) && (((((a * b) + (b * c)) + (c * a)) - 1.0) == 0.0) { assert (((a - b) * ((((a * b) + (b * c)) + (c * a)) - 1.0)) == 0.0); }  // cert: Linarith.mul_zero_eq
//   statement kind: cert (lemma application in a certificate)
// inside Lean have h₆₁, Lean lines 19-20:
//   lean  |       have h₆₁ : a ^ 2 + b ^ 2 + c ^ 2 = 2 := by
//   lean  |         nlinarith [sq_nonneg (a + b + c), sq_nonneg (a - b), sq_nonneg (b - c), sq_nonneg (c - a)]

// 1 path(s) merged (joined); 35 shared facts; 1 distinct path conditions
lemma {:induction false} vc_algebra_apbpceq2_abpbcpcaeq1_aleq1on3anbleq1ancleq4on3_L799(a: real, b: real, c: real)
  requires a <= b
  requires b <= c
  requires a + b + c == 2.0
  requires a * b + b * c + c * a == 1.0
  requires !(0.0 <= a)
  requires a < 0.0
  requires a * (4.0 - 3.0 * a) < 0.0
  requires 0.0 <= a * a
  requires 0.0 <= (b - c) * (b - c)
  requires (0.0 <= a * a) || (a * a < 0.0)
  requires ((0.0 <= a * a) && (a + b + c - 2.0 == 0.0) && (0.0 - a * a * (a + b + c - 2.0) == 0.0) && ((0.0 <= c * c) || (c * c < 0.0))) || ((!(0.0 <= a * a && a + b + c - 2.0 == 0.0)) && ((0.0 <= c * c) || (c * c < 0.0)))
  requires ((0.0 <= c * c) && (a + b + c - 2.0 == 0.0) && (0.0 - c * c * (a + b + c - 2.0) == 0.0)) || (!(0.0 <= c * c && a + b + c - 2.0 == 0.0))
  requires 0.0 <= c * c
  requires (0.0 <= (a - b) * (a - b)) || ((a - b) * (a - b) < 0.0)
  requires ((0.0 <= (a - b) * (a - b)) && (a + b + c - 2.0 == 0.0) && (0.0 - (a - b) * (a - b) * (a + b + c - 2.0) == 0.0)) || (!(0.0 <= (a - b) * (a - b) && a + b + c - 2.0 == 0.0))
  requires 0.0 <= (a - b) * (a - b)
  requires (0.0 <= b * b) || (b * b < 0.0)
  requires ((0.0 <= b * b) && (a + b + c - 2.0 == 0.0) && (0.0 - b * b * (a + b + c - 2.0) == 0.0)) || (!(0.0 <= b * b && a + b + c - 2.0 == 0.0))
  requires 0.0 <= b * b
  requires (0.0 <= (c - a) * (c - a)) || ((c - a) * (c - a) < 0.0)
  requires ((0.0 <= (c - a) * (c - a)) && (a + b + c - 2.0 == 0.0) && (0.0 - (c - a) * (c - a) * (a + b + c - 2.0) == 0.0)) || (!(0.0 <= (c - a) * (c - a) && a + b + c - 2.0 == 0.0))
  requires 0.0 <= (c - a) * (c - a)
  requires (0.0 <= (a + b + c) * (a + b + c)) || ((a + b + c) * (a + b + c) < 0.0)
  requires ((0.0 <= (a + b + c) * (a + b + c)) && (a <= 0.0) && ((a + b + c) * (a + b + c) * a <= 0.0)) || (!(0.0 <= (a + b + c) * (a + b + c) && a <= 0.0))
  requires 0.0 <= (a + b + c) * (a + b + c)
  requires (0.0 <= a * a) || (a * a < 0.0)
  requires ((0.0 <= a * a) && (a - b <= 0.0) && (a * a * (a - b) <= 0.0) && ((0.0 <= a * a) || (a * a < 0.0))) || ((!(0.0 <= a * a && a - b <= 0.0)) && ((0.0 <= a * a) || (a * a < 0.0)))
  requires ((0.0 <= a * a) && (b - c <= 0.0) && (a * a * (b - c) <= 0.0) && ((0.0 <= (b - c) * (b - c)) || ((b - c) * (b - c) < 0.0))) || ((!(0.0 <= a * a && b - c <= 0.0)) && ((0.0 <= (b - c) * (b - c)) || ((b - c) * (b - c) < 0.0)))
  requires ((0.0 <= (b - c) * (b - c)) && (b - c <= 0.0) && ((b - c) * (b - c) * (b - c) <= 0.0) && ((0.0 <= (b - c) * (b - c)) || ((b - c) * (b - c) < 0.0))) || ((!(0.0 <= (b - c) * (b - c) && b - c <= 0.0)) && ((0.0 <= (b - c) * (b - c)) || ((b - c) * (b - c) < 0.0)))
  requires ((0.0 <= (b - c) * (b - c)) && (a + b + c - 2.0 == 0.0) && (0.0 - (b - c) * (b - c) * (a + b + c - 2.0) == 0.0) && ((0.0 <= (b - c) * (b - c)) || ((b - c) * (b - c) < 0.0))) || ((!(0.0 <= (b - c) * (b - c) && a + b + c - 2.0 == 0.0)) && ((0.0 <= (b - c) * (b - c)) || ((b - c) * (b - c) < 0.0)))
  requires ((0.0 <= (b - c) * (b - c)) && (a <= 0.0) && ((b - c) * (b - c) * a <= 0.0) && ((0.0 <= c * c) || (c * c < 0.0))) || ((!(0.0 <= (b - c) * (b - c) && a <= 0.0)) && ((0.0 <= c * c) || (c * c < 0.0)))
  requires ((0.0 <= c * c) && (a <= 0.0) && (c * c * a <= 0.0) && ((a - b <= 0.0) || (0.0 < a - b))) || ((!(0.0 <= c * c && a <= 0.0)) && ((a - b <= 0.0) || (0.0 < a - b)))
  requires ((a - b <= 0.0) && (a + b + c - 2.0 == 0.0) && ((a - b) * (a + b + c - 2.0) == 0.0) && ((a - b <= 0.0) || (0.0 < a - b))) || ((!(a - b <= 0.0 && a + b + c - 2.0 == 0.0)) && ((a - b <= 0.0) || (0.0 < a - b)))
  requires a - b <= 0.0
  requires a * b + b * c + c * a - 1.0 == 0.0
  ensures  (a - b) * (a * b + b * c + c * a - 1.0) == 0.0
{ }

