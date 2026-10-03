// CLOSED — failing line aime_1990_p4-205: theorem aime_1990_p4, Dafny line 205 (ERR: assertion might not hold)
// failing Dafny line: assert (((x - 13.0) == 0.0) || ((x + 3.0) == 0.0));
// Lean step: apply eq_zero_or_eq_zero_of_mul_eq_zero h₅₃
// hypotheses: 9 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: own-lemma — nothing: the file's own proof body, hypotheses = facts in scope minus the goal and minus the block's own asserts
// Dafny: finished with 1 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/aime_1990_p4.dfy"
lemma {:induction false} vc_aime_1990_p4_L205(x: real)
  requires 0.0 < x
  requires x * x - 10.0 * x - 29.0 != 0.0
  requires x * x - 10.0 * x - 45.0 != 0.0
  requires x * x - 10.0 * x - 69.0 != 0.0
  requires Real.div(1.0, x * x - 10.0 * x - 29.0) + Real.div(1.0, x * x - 10.0 * x - 45.0) - Real.div(2.0, x * x - 10.0 * x - 69.0) == 0.0
  requires x * x - 10.0 * x == 39.0
  requires x * x - 10.0 * x - 39.0 == 0.0
  requires (x - 13.0) * (x + 3.0) == 0.0
  requires (x - 13.0 != 0.0) || (x - 13.0 == 0.0)
  ensures   x - 13.0 == 0.0 || x + 3.0 == 0.0
{ }

