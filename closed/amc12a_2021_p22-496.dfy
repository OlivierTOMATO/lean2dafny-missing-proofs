// CLOSED — failing line amc12a_2021_p22-496: theorem amc12a_2021_p22, Dafny line 496 (ERR: a postcondition could not be proved on this return path)
// failing Dafny line: {
// Lean step: h₈
// hypotheses: 2 facts Z3 had at the line (goal itself removed: 0; facts derived inside the helper lemma's own body removed: 4); nothing assumed beyond the facts in scope
// how it closes: pass2 — locals u := 1*cos(pi/7), p := the cubic; MulPos(u, -p); MulNeg(u, p); assert u*p == the goal's product (bridges the locals back to the goal's terms; the direct calls on the compound terms are not matched by Z3)
// Dafny: finished with 32 verified, 0 errors in 4.3 s  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12a_2021_p22.dfy"
lemma {:induction false} vc_amc12a_2021_p22_L496()
  requires 0.0 < 1.0 * Real.cos(Real.pi() / 7.0)
  requires 1.0 * 8.0 * (1.0 * (1.0 * Real.cos(Real.pi() / 7.0) * (1.0 * Real.cos(Real.pi() / 7.0)) * (1.0 * Real.cos(Real.pi() / 7.0)))) - 1.0 * 4.0 * (1.0 * (1.0 * Real.cos(Real.pi() / 7.0) * (1.0 * Real.cos(Real.pi() / 7.0)))) - 1.0 * 4.0 * (1.0 * Real.cos(Real.pi() / 7.0)) + 1.0 * 1.0 < 0.0
  ensures   1.0 * Real.cos(Real.pi() / 7.0) * (1.0 * 8.0 * (1.0 * (1.0 * Real.cos(Real.pi() / 7.0) * (1.0 * Real.cos(Real.pi() / 7.0)) * (1.0 * Real.cos(Real.pi() / 7.0)))) - 1.0 * 4.0 * (1.0 * (1.0 * Real.cos(Real.pi() / 7.0) * (1.0 * Real.cos(Real.pi() / 7.0)))) - 1.0 * 4.0 * (1.0 * Real.cos(Real.pi() / 7.0)) + 1.0 * 1.0) < 0.0
{
  var u := 1.0 * Real.cos(Real.pi() / 7.0);  // [ADDED]
  var p := 1.0 * 8.0 * (1.0 * (1.0 * Real.cos(Real.pi() / 7.0) * (1.0 * Real.cos(Real.pi() / 7.0)) * (1.0 * Real.cos(Real.pi() / 7.0)))) - 1.0 * 4.0 * (1.0 * (1.0 * Real.cos(Real.pi() / 7.0) * (1.0 * Real.cos(Real.pi() / 7.0)))) - 1.0 * 4.0 * (1.0 * Real.cos(Real.pi() / 7.0)) + 1.0 * 1.0;  // [ADDED]
  MulPos(u, -p);  // [ADDED]
  MulNeg(u, p);  // [ADDED]
  assert u * p == 1.0 * Real.cos(Real.pi() / 7.0) * (1.0 * 8.0 * (1.0 * (1.0 * Real.cos(Real.pi() / 7.0) * (1.0 * Real.cos(Real.pi() / 7.0)) * (1.0 * Real.cos(Real.pi() / 7.0)))) - 1.0 * 4.0 * (1.0 * (1.0 * Real.cos(Real.pi() / 7.0) * (1.0 * Real.cos(Real.pi() / 7.0)))) - 1.0 * 4.0 * (1.0 * Real.cos(Real.pi() / 7.0)) + 1.0 * 1.0);  // [ADDED]
}
