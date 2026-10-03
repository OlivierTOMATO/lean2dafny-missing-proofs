// CLOSED LEMMA for failing line algebra_bleqa_apbon2msqrtableqambsqon8b-329 (theorem algebra_bleqa_apbon2msqrtableqambsqon8b, Dafny line 329, ERR)
// closes with: K3 (locality) — base
// added: nothing (line lemma standalone)
// Dafny: verifies unchanged (dossier standalone check)
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/line_lemmas/ERR/algebra_bleqa_apbon2msqrtableqambsqon8b/L329.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 329 of algebra_bleqa_apbon2msqrtableqambsqon8b (ERR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../wt_integ5/out/algebra_bleqa_apbon2msqrtableqambsqon8b.dfy"

// ========================================================================================
// FAILING LINE 329 (ERR) in algebra_bleqa_apbon2msqrtableqambsqon8b: assertion might not hold
//   dafny |           SqNonneg((x - y)); assert (0.0 <= ((x - y) * (x - y)));  // cert: sq_nonneg
//   statement kind: cert (lemma application in a certificate)
// inside Lean have h₁₂₁, Lean lines 61-61:
//   lean  |     have h₁₂₁ : 0 ≤ (x - y) ^ 2 := sq_nonneg (x - y)

// 4 path(s) merged (paths); 17 shared facts; 4 distinct path conditions
lemma {:induction false} vc_algebra_bleqa_apbon2msqrtableqambsqon8b_L329(a: real, b: real, x: real, y_5_0: real)
  requires 0.0 < a
  requires 0.0 < b
  requires b <= a
  requires 0.0 < Real.sqrt(a)
  requires 0.0 < Real.sqrt(b)
  requires Real.sqrt(b) <= Real.sqrt(a)
  requires x == Real.sqrt(a)
  requires 0.0 < x
  requires Real.sqrt(b) <= x
  requires y_5_0 == Real.sqrt(b)
  requires 0.0 < y_5_0
  requires y_5_0 <= x
  requires x >= y_5_0
  requires 2.0 != 0.0
  requires (a + b) / 2.0 - Real.sqrt(a * b) == (x - y_5_0) * (x - y_5_0) / 2.0
  requires Real.div((a - b) * (a - b), 8.0 * b) == Real.div((x - y_5_0) * (x - y_5_0) * ((x + y_5_0) * (x + y_5_0)), 8.0 * (y_5_0 * y_5_0))
  requires 0.0 <= (x - y_5_0) * (x - y_5_0)
  ensures  0.0 <= (x - y_5_0) * (x - y_5_0)
{ }

