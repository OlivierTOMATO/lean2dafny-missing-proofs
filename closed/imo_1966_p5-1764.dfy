// NOT CLOSED — failing line imo_1966_p5-1764: theorem imo_1966_p5, Dafny line 1764 (ERR: a postcondition could not be proved on this return path)
// failing Dafny line: {
// Lean step: x1_val
// hypotheses: 2 facts Z3 had at the line (goal itself removed: 0; facts derived inside the helper lemma's own body removed: 8); nothing assumed beyond the facts in scope
// not closed: tried H0=timeout, K5=timeout, K3=timeout, K5_lib=failed, K3_lib=failed; this file is the honest base attempt
// Dafny: timeout  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/imo_1966_p5.dfy"
lemma {:induction false} vc_imo_1966_p5_L1764(a: nat -> real, x: nat -> real)
  requires a(2) - a(1) < 0.0
  requires x(1) * (a(1) - a(4)) - 1.0 < 0.0
  ensures   0.0 < (a(2) - a(1)) * (x(1) * (a(1) - a(4)) - 1.0)
{
  MulPos(-((a(2) - a(1))), -(((x(1) * (a(1) - a(4))) - 1.0))); MulNeg(-((a(2) - a(1))), ((x(1) * (a(1) - a(4))) - 1.0)); assert (-((a(2) - a(1)))) * (-(((x(1) * (a(1) - a(4))) - 1.0))) == -((-((a(2) - a(1)))) * (((x(1) * (a(1) - a(4))) - 1.0))); assert (-((a(2) - a(1)))) * (((x(1) * (a(1) - a(4))) - 1.0)) == -(((a(2) - a(1))) * (((x(1) * (a(1) - a(4))) - 1.0)));
}

