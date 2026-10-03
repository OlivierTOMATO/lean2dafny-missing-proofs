// NOT CLOSED — failing line imo_1974_p5-1629: theorem imo_1974_p5, Dafny line 1629 (ERR: assertion might not hold)
// failing Dafny line: assert (0.0 < (Real.div(((((((a * ((a + b) + c)) + (b * ((a + b) + d))) * ((b + c) + d)) + (c * (((a + b) + d) * ((a + b) + c)))) * ((a + c) + d)) + (d * ((((a + b) + d) * ((a + b) + c)) * ((b + c) + 
// Lean step: lower_bound
// hypotheses: 21 facts Z3 had at the line; nothing assumed beyond the facts in scope
// not closed: tried H0=failed, K2=failed, K5=failed, K5only=failed; this file is the honest base attempt
// Dafny: finished with 0 verified, 1 error  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/imo_1974_p5.dfy"
lemma {:induction false} vc_imo_1974_p5_L1629(a: real, b: real, c: real, d: real, s: real)
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
  requires 0.0 < a + b + d
  requires 0.0 < a + b + c
  requires 0.0 < b + c + d
  requires 0.0 < a + c + d
  requires 0.0 < a + b + c + d
  requires 0.0 < (a + b + d) * (a + b + c)
  requires 0.0 < (a + b + d) * (a + b + c) * (b + c + d)
  ensures   0.0 < Real.div(((a * (a + b + c) + b * (a + b + d)) * (b + c + d) + c * ((a + b + d) * (a + b + c))) * (a + c + d) + d * ((a + b + d) * (a + b + c) * (b + c + d)), (a + b + d) * (a + b + c) * (b + c + d) * (a + c + d)) - 1.0
{ }

