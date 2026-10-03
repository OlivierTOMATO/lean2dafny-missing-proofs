// NOT CLOSED — failing line imo_1965_p1-1021: theorem imo_1965_p1, Dafny line 1021 (OOR: Verification out of resource (imo_1965_p1))
// failing Dafny line: if (((Real.sqrt((1.0 + Real.sin((2.0 * x)))) * Real.sqrt((1.0 + Real.sin((2.0 * x))))) - (1.0 + Real.sin((2.0 * x)))) == 0.0) { assert ((((Real.sqrt((1.0 + Real.sin((2.0 * x)))) * Real.sqrt((1.0 + Rea
// Lean step: h₄
// hypotheses: 12 facts Z3 had at the line; nothing assumed beyond the facts in scope
// not closed: tried H0=failed; this file is the honest base attempt
// Dafny: finished with 0 verified, 1 error  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/imo_1965_p1.dfy"
lemma {:induction false} vc_imo_1965_p1_L1021(x: real)
  requires 0.0 <= x
  requires x <= 2.0 * Real.pi()
  requires 2.0 * Real.cos(x) <= abs(Real.sqrt(1.0 + Real.sin(2.0 * x)) - Real.sqrt(1.0 - Real.sin(2.0 * x)))
  requires abs(Real.sqrt(1.0 + Real.sin(2.0 * x)) - Real.sqrt(1.0 - Real.sin(2.0 * x))) <= Real.sqrt(2.0)
  requires 0.0 <= Real.sqrt(1.0 + Real.sin(2.0 * x))
  requires 0.0 <= Real.sqrt(1.0 - Real.sin(2.0 * x))
  requires 0.0 <= Real.sqrt(2.0)
  requires 0.0 <= Real.sqrt(1.0 + Real.sin(2.0 * x)) * Real.sqrt(1.0 - Real.sin(2.0 * x))
  requires 0.0 <= Real.cos(2.0 * x) || Real.cos(2.0 * x) <= 0.0
  requires 0.0 <= Real.cos(2.0 * x)
  requires ((0.0 <= Real.sqrt(1.0 + Real.sin(2.0 * x)) - Real.sqrt(1.0 - Real.sin(2.0 * x))) && (((0.0 <= Real.sqrt(1.0 + Real.sin(2.0 * x)) - Real.sqrt(1.0 - Real.sin(2.0 * x))) && (Real.abs(Real.sqrt(1.0 + Real.sin(2.0 * x)) - Real.sqrt(1.0 - Real.sin(2.0 * x))) == Real.sqrt(1.0 + Real.sin(2.0 * x)) - Real.sqrt(1.0 - Real.sin(2.0 * x)))) || (Real.sqrt(1.0 + Real.sin(2.0 * x)) - Real.sqrt(1.0 - Real.sin(2.0 * x)) < 0.0)) && (((0.0 <= Real.cos(2.0 * x)) && (Real.abs(Real.cos(2.0 * x)) == Real.cos(2.0 * x))) || (Real.cos(2.0 * x) < 0.0)) && (2.0 * Real.cos(x) <= Real.sqrt(1.0 + Real.sin(2.0 * x)) - Real.sqrt(1.0 - Real.sin(2.0 * x))) && (Real.sqrt(1.0 + Real.sin(2.0 * x)) <= Real.sqrt(2.0) + Real.sqrt(1.0 - Real.sin(2.0 * x))) && (Real.sqrt(1.0 - Real.sin(2.0 * x)) <= Real.sqrt(1.0 + Real.sin(2.0 * x))) && ((Real.sqrt(1.0 + Real.sin(2.0 * x)) - Real.sqrt(1.0 - Real.sin(2.0 * x))) * (Real.sqrt(1.0 + Real.sin(2.0 * x)) - Real.sqrt(1.0 - Real.sin(2.0 * x))) == 2.0 - 2.0 * Real.cos(2.0 * x)) && (abs(Real.sqrt(1.0 + Real.sin(2.0 * x)) - Real.sqrt(1.0 - Real.sin(2.0 * x))) * abs(Real.sqrt(1.0 + Real.sin(2.0 * x)) - Real.sqrt(1.0 - Real.sin(2.0 * x))) == 2.0 - 2.0 * abs(Real.cos(2.0 * x)))) || (Real.sqrt(1.0 + Real.sin(2.0 * x)) - Real.sqrt(1.0 - Real.sin(2.0 * x)) < 0.0)
  requires Real.sqrt(1.0 + Real.sin(2.0 * x)) - Real.sqrt(1.0 - Real.sin(2.0 * x)) <= 0.0
  ensures   false /*VC_GAP*/
{ }

