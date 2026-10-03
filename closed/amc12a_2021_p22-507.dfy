// CLOSED — failing line amc12a_2021_p22-507: theorem amc12a_2021_p22, Dafny line 507 (ERR: a postcondition could not be proved on this return path)
// failing Dafny line: {
// Lean step: h₈
// hypotheses: 2 facts Z3 had at the line (goal itself removed: 1; facts derived inside the helper lemma's own body removed: 1); nothing assumed beyond the facts in scope
// how it closes: pass2 — locals u := 1*cos(pi/7), p := the cubic; MulPos(u, p); assert u*p == the goal's product (bridging assert; the direct MulPos on the compound terms is not matched by Z3)
// Dafny: finished with 32 verified, 0 errors in 4.3 s  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12a_2021_p22.dfy"
lemma {:induction false} vc_amc12a_2021_p22_L507()
  requires 0.0 < 1.0 * Real.cos(Real.pi() / 7.0)
  requires 0.0 < 1.0 * 8.0 * (1.0 * (1.0 * Real.cos(Real.pi() / 7.0) * (1.0 * Real.cos(Real.pi() / 7.0)) * (1.0 * Real.cos(Real.pi() / 7.0)))) - 1.0 * 4.0 * (1.0 * (1.0 * Real.cos(Real.pi() / 7.0) * (1.0 * Real.cos(Real.pi() / 7.0)))) - 1.0 * 4.0 * (1.0 * Real.cos(Real.pi() / 7.0)) + 1.0 * 1.0
  ensures   0.0 < 1.0 * Real.cos(Real.pi() / 7.0) * (1.0 * 8.0 * (1.0 * (1.0 * Real.cos(Real.pi() / 7.0) * (1.0 * Real.cos(Real.pi() / 7.0)) * (1.0 * Real.cos(Real.pi() / 7.0)))) - 1.0 * 4.0 * (1.0 * (1.0 * Real.cos(Real.pi() / 7.0) * (1.0 * Real.cos(Real.pi() / 7.0)))) - 1.0 * 4.0 * (1.0 * Real.cos(Real.pi() / 7.0)) + 1.0 * 1.0)
{
  var u := 1.0 * Real.cos(Real.pi() / 7.0);  // [ADDED]
  var p := 1.0 * 8.0 * (1.0 * (1.0 * Real.cos(Real.pi() / 7.0) * (1.0 * Real.cos(Real.pi() / 7.0)) * (1.0 * Real.cos(Real.pi() / 7.0)))) - 1.0 * 4.0 * (1.0 * (1.0 * Real.cos(Real.pi() / 7.0) * (1.0 * Real.cos(Real.pi() / 7.0)))) - 1.0 * 4.0 * (1.0 * Real.cos(Real.pi() / 7.0)) + 1.0 * 1.0;  // [ADDED]
  MulPos(u, p);  // [ADDED]
  assert u * p == 1.0 * Real.cos(Real.pi() / 7.0) * (1.0 * 8.0 * (1.0 * (1.0 * Real.cos(Real.pi() / 7.0) * (1.0 * Real.cos(Real.pi() / 7.0)) * (1.0 * Real.cos(Real.pi() / 7.0)))) - 1.0 * 4.0 * (1.0 * (1.0 * Real.cos(Real.pi() / 7.0) * (1.0 * Real.cos(Real.pi() / 7.0)))) - 1.0 * 4.0 * (1.0 * Real.cos(Real.pi() / 7.0)) + 1.0 * 1.0);  // [ADDED]
}
