// CLOSED — failing line amc12a_2009_p9-181: theorem amc12a_2009_p9, Dafny line 181 (ERR: assertion might not hold)
// failing Dafny line: assert (forall x: real :: ((((a * ((x + 3.0) * (x + 3.0))) + (b * (x + 3.0))) + c) == (((3.0 * (x * x)) + (7.0 * x)) + 4.0)));
// Lean step: simp only [h₁] at h₀ ⊢
// hypotheses: 2 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: K1 — forall x ensures goal(x) { assert f(x+3.0) == a*((x+3.0)*(x+3.0)) + b*(x+3.0) + c; }  (h₁ at x+3, the rewrite simp made in h₀)
// Dafny: finished with 3 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12a_2009_p9.dfy"
lemma {:induction false} vc_amc12a_2009_p9_L181(a: real, b: real, c: real, f: real -> real)
  requires forall x_1: real :: f(x_1 + 3.0) == 3.0 * (x_1 * x_1) + 7.0 * x_1 + 4.0
  requires forall x_3: real :: f(x_3) == a * (x_3 * x_3) + b * x_3 + c
  ensures   forall x_0_2: real :: a * ((x_0_2 + 3.0) * (x_0_2 + 3.0)) + b * (x_0_2 + 3.0) + c == 3.0 * (x_0_2 * x_0_2) + 7.0 * x_0_2 + 4.0
{
  // K1: the instance Lean's `simp only [h₁] at h₀` used: h₁ at x + 3 (rewriting f (x+3) inside h₀)
  forall x_0_2: real
    ensures a * ((x_0_2 + 3.0) * (x_0_2 + 3.0)) + b * (x_0_2 + 3.0) + c == 3.0 * (x_0_2 * x_0_2) + 7.0 * x_0_2 + 4.0
  {
    assert f(x_0_2 + 3.0) == a * ((x_0_2 + 3.0) * (x_0_2 + 3.0)) + b * (x_0_2 + 3.0) + c;
  }
}

