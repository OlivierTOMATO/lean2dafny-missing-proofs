// CLOSED LEMMA for failing line algebra_amgm_sumasqdivbgeqsuma-803 (theorem algebra_amgm_sumasqdivbgeqsuma, Dafny line 803, OOR)
// closes with: K3 (locality) — single
// added: keep only 0<a, 0<d; drop h₄₀–h₄₂ (three Real.div AM-GM facts) and 0<b,0<c,0<d²/a (sufficiency)
// Dafny: finished with 1 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_006/algebra_amgm_sumasqdivbgeqsuma-803/K3.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// AUGMENTATION K3 of algebra_amgm_sumasqdivbgeqsuma-803 (shard_006 kind ablation)
// K3: only h₄₁ (0<a) and 0<d
// K3 locality: DROPPED requires (sufficiency test, not a proof of the original):
//   - 0.0 < b
//   - 0.0 < c
//   - Real.div(a * a, b) + b >= 2.0 * a
//   - Real.div(b * b, c) + c >= 2.0 * b
//   - Real.div(c * c, d) + d >= 2.0 * c
//   - 0.0 < Real.div(d * d, a)
// Line lemma for failing line 803 of algebra_amgm_sumasqdivbgeqsuma (OOR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "/home/changjie/lean2dafny_research/agents_tac/wt_integ5/out/algebra_amgm_sumasqdivbgeqsuma.dfy"

// ========================================================================================
// FAILING LINE 803 (OOR) in algebra_amgm_sumasqdivbgeqsuma: Verification out of resource (algebra_amgm_sumasqdivbgeqsuma)
//   dafny |     assert ((Real.div((d * d), a) * a) == (d * d)); // @tac 2810-2834
//   statement kind: have / step assertion
//   @tac 2810-2834 | Lean: field_simp [h₄₁.ne']
//        before-goal ⊢ d ^ (2 : ℕ) / a * a = d ^ (2 : ℕ)
// Lean have h₄₄, Lean lines 63-64:
//   lean  |     have h₄₄ : d ^ 2 / a * a = d ^ 2 := by
//   lean  |       field_simp [h₄₁.ne']

// 1 path(s) merged (paths); 8 shared facts; 1 distinct path conditions
lemma {:induction false} vc_algebra_amgm_sumasqdivbgeqsuma_L803_K3(a: real, b: real, c: real, d: real)
  requires 0.0 < a
  requires 0.0 < d
  ensures  Real.div(d * d, a) * a == d * d
{ }
