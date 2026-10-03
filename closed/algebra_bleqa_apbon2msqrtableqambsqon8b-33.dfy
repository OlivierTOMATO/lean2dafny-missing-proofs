// NOT CLOSED — failing line algebra_bleqa_apbon2msqrtableqambsqon8b-33: theorem algebra_bleqa_apbon2msqrtableqambsqon8b, Dafny line 33 (ERR: a precondition for this call could not be proved)
// failing Dafny line: MulPos((x * x), (y * y));
// Lean step: h₁₀
// hypotheses: 1 facts Z3 had at the line (goal itself removed: 1; facts derived inside the helper lemma's own body removed: 0); nothing assumed beyond the facts in scope
// not closed: tried H0=failed; this file is the honest base attempt
// Dafny: finished with 1 verified, 2 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/algebra_bleqa_apbon2msqrtableqambsqon8b.dfy"
lemma {:induction false} vc_algebra_bleqa_apbon2msqrtableqambsqon8b_L33(x: real, y: real)
  requires 0.0 < y * y
  ensures   (0.0 < x * x)
{
  MulPos((x * x), (y * y));
}

