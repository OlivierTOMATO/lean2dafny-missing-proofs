// CLOSED LEMMA for failing line algebra_amgm_sumasqdivbgeqsuma-845 (theorem algebra_amgm_sumasqdivbgeqsuma, Dafny line 845, OOR)
// closes with: K3 (locality) — base
// added: nothing (line lemma standalone)
// Dafny: verifies unchanged (dossier standalone check)
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/line_lemmas/OOR/algebra_amgm_sumasqdivbgeqsuma/L845.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 845 of algebra_amgm_sumasqdivbgeqsuma (OOR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../wt_integ5/out/algebra_amgm_sumasqdivbgeqsuma.dfy"

// ========================================================================================
// FAILING LINE 845 (OOR) in algebra_amgm_sumasqdivbgeqsuma: Verification out of resource (algebra_amgm_sumasqdivbgeqsuma)
//   dafny |       SqNonneg((a - d)); assert (0.0 <= ((a - d) * (a - d)));  // cert: sq_nonneg
//   statement kind: cert (lemma application in a certificate)
// inside Lean have h₄₅, Lean lines 65-72:
//   lean  |     have h₄₅ : d ^ 2 / a + a ≥ 2 * d := by
//   lean  |       -- Use the AM-GM inequality to prove the desired inequality
//   lean  |       have h₄₅₁ : 0 < d ^ 2 / a := by positivity
//   lean  |       have h₄₅₂ : 0 < a := by linarith
//   lean  |       have h₄₅₃ : 0 < d ^ 2 / a * a := by positivity
//   lean  |       -- Use the AM-GM inequality to prove the desired inequality
//   lean  |       nlinarith [sq_nonneg (d - a), sq_nonneg (d ^ 2 / a - a), sq_nonneg (d ^ 2 / a - d),
//   lean  |         sq_nonneg (a - d)]

// 1 path(s) merged (paths); 11 shared facts; 1 distinct path conditions
lemma {:induction false} vc_algebra_amgm_sumasqdivbgeqsuma_L845(a: real, b: real, c: real, d: real)
  requires 0.0 < a
  requires 0.0 < b
  requires 0.0 < c
  requires 0.0 < d
  requires Real.div(a * a, b) + b >= 2.0 * a
  requires Real.div(b * b, c) + c >= 2.0 * b
  requires Real.div(c * c, d) + d >= 2.0 * c
  requires 0.0 < Real.div(d * d, a)
  requires Real.div(d * d, a) * a == d * d
  requires 0.0 < Real.div(d * d, a) * a
  requires 0.0 <= (a - d) * (a - d)
  ensures  0.0 <= (a - d) * (a - d)
{ }

