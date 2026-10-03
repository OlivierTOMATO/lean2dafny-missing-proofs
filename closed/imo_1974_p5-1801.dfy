// CLOSED — failing line imo_1974_p5-1801: theorem imo_1974_p5, Dafny line 1801 (ERR: assertion might not hold)
// failing Dafny line: assert (1.0 < Real.div(((((((a * ((a + b) + c)) + (b * ((a + b) + d))) * ((b + c) + d)) + (c * (((a + b) + d) * ((a + b) + c)))) * ((a + c) + d)) + (d * ((((a + b) + d) * ((a + b) + c)) * ((b + c) + d
// Lean step: field_simp [h₁] at term1_pos term1_less1 term2_pos term2_less1 term3_pos term3_less1 term4_pos term4_less1 s_pos lower_bound
// hypotheses: 24 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: K2 — assert s == Real.div(((a * (a + b + c) + b * (a + b + d)) * (b + c + d) + c * ((a + b + d) * (a + b + c))) * (a + c + d) + d * ((a + b + d) * (a + b + c) * (b + c + d)), (a + b + d) * (a + b + c) * (b + c + d) * (a + c + d));  (field_simp's normal form: Lean's after-hyp of exec 1254)
// Dafny: finished with 2 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)
// NOTE: uses a MODIFIED library copy: see alt/imo_1974_p5-1801/LIBRARY_CHANGES.diff

include "alt/imo_1974_p5-1801/out/imo_1974_p5.dfy"
lemma {:induction false} vc_imo_1974_p5_L1801(a: real, b: real, c: real, d: real, s: real)
  requires 0.0 < a
  requires 0.0 < b
  requires 0.0 < c
  requires 0.0 < d
  requires s == Real.div(a, a + b + d) + Real.div(b, a + b + c) + Real.div(c, b + c + d) + Real.div(d, a + c + d)
  requires 0.0 < Real.div(a, a + b + d)
  requires Real.div(a, a + b + d) < 1.0
  requires 0.0 < Real.div(b, a + b + c)
  requires Real.div(b, a + b + c) < 1.0
  requires 0.0 < Real.div(c, b + c + d)
  requires Real.div(c, b + c + d) < 1.0
  requires 0.0 < Real.div(d, a + c + d)
  requires Real.div(d, a + c + d) < 1.0
  requires 0.0 < s
  requires 1.0 < s
  requires 0.0 < a + b + c + d
  requires 0.0 < a + b + d
  requires 0.0 < a + b + c
  requires 0.0 < b + c + d
  requires 0.0 < a + c + d
  requires 0.0 < (a + b + d) * (a + b + c)
  requires 0.0 < (a + b + d) * (a + b + c) * (b + c + d)
  requires 0.0 < (a + b + d) * (a + b + c) * (b + c + d) * (a + c + d)
  requires 0.0 < ((a * (a + b + c) + b * (a + b + d)) * (b + c + d) + c * ((a + b + d) * (a + b + c))) * (a + c + d) + d * ((a + b + d) * (a + b + c) * (b + c + d))
  ensures   1.0 < Real.div(((a * (a + b + c) + b * (a + b + d)) * (b + c + d) + c * ((a + b + d) * (a + b + c))) * (a + c + d) + d * ((a + b + d) * (a + b + c) * (b + c + d)), (a + b + d) * (a + b + c) * (b + c + d) * (a + c + d))
{
  assert s == Real.div(((a * (a + b + c) + b * (a + b + d)) * (b + c + d) + c * ((a + b + d) * (a + b + c))) * (a + c + d) + d * ((a + b + d) * (a + b + c) * (b + c + d)), (a + b + d) * (a + b + c) * (b + c + d) * (a + c + d));  // [ADDED]
}

