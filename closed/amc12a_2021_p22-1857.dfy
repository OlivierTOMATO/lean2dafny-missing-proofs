// CLOSED — failing line amc12a_2021_p22-1857: theorem amc12a_2021_p22, Dafny line 1857 (OOR: Verification out of resource (amc12a_2021_p22))
// failing Dafny line: if (0.0 <= (((1.0 * Real.cos(((4.0 * Real.pi()) / 7.0))) - (1.0 * Real.cos(((6.0 * Real.pi()) / 7.0)))) * ((1.0 * Real.cos(((4.0 * Real.pi()) / 7.0))) - (1.0 * Real.cos(((6.0 * Real.pi()) / 7.0)))))) 
// Lean step: h₆₁₄
// hypotheses: 2 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: own-lemma — nothing: the file's own proof body, hypotheses = facts in scope minus the goal and minus the block's own asserts
// Dafny: finished with 0 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12a_2021_p22.dfy"
lemma {:induction false} vc_amc12a_2021_p22_L1857(a: real, b: real, c: real, f: real -> real)
  requires forall x_1: real :: f(x_1) == x_1 * x_1 * x_1 + a * (x_1 * x_1) + b * x_1 + c
  requires (iset y: real | f(y) == 0.0) == iset
{ }

