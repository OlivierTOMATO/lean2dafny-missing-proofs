// CLOSED — failing line algebra_bleqa_apbon2msqrtableqambsqon8b-231: theorem algebra_bleqa_apbon2msqrtableqambsqon8b, Dafny line 231 (ERR: a precondition for this call could not be proved)
// failing Dafny line: LeOfLt(0.0, ((x * x) * (y * y)));
// Lean step: h₁₀₃
// hypotheses: 16 facts Z3 had at the line (goal itself removed: 1; the block's own asserts removed: 0); nothing assumed beyond the facts in scope
// how it closes: own-lemma — nothing: the file's own proof body, hypotheses = facts in scope minus the goal and minus the block's own asserts
// Dafny: finished with 1 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/algebra_bleqa_apbon2msqrtableqambsqon8b.dfy"
lemma {:induction false} vc_algebra_bleqa_apbon2msqrtableqambsqon8b_L231(a: real, b: real, x: real, y_5_0: real)
  requires 0.0 < a
  requires 0.0 < b
  requires b <= a
  requires 0.0 < Real.sqrt(a)
  requires 0.0 < Real.sqrt(b)
  requires Real.sqrt(b) <= Real.sqrt(a)
  requires x == Real.sqrt(a)
  requires 0.0 < x
  requires Real.sqrt(b) <= x
  requires y_5_0 == Real.sqrt(b)
  requires 0.0 < y_5_0
  requires y_5_0 <= x
  requires x >= y_5_0
  requires a == x * x
  requires b == y_5_0 * y_5_0
  requires ((0.0 < x * x) && (0.0 < y_5_0 * y_5_0)) || ((0.0 < x * x) && (!(0.0 < x * x && 0.0 < y_5_0 * y_5_0))) || ((x * x <= 0.0) && (0.0 < x * x) && (0.0 < y_5_0 * y_5_0)) || ((x * x <= 0.0) && (!(0.0 < x * x && 0.0 < y_5_0 * y_5_0))) || ((y_5_0 <= 0.0) && (0.0 < x * x) && (0.0 < y_5_0 * y_5_0)) || ((y_5_0 <= 0.0) && (0.0 < x * x) && (!(0.0 < x * x && 0.0 < y_5_0 * y_5_0))) || ((y_5_0 <= 0.0) && (x * x <= 0.0) && (0.0 < x * x) && (0.0 < y_5_0 * y_5_0)) || ((y_5_0 <= 0.0) && (x * x <= 0.0) && (!(0.0 < x * x && 0.0 < y_5_0 * y_5_0))) || ((x <= 0.0) && (0.0 < x * x) && (0.0 < y_5_0 * y_5_0)) || ((x <= 0.0) && (0.0 < x * x) && (!(0.0 < x * x && 0.0 < y_5_0 * y_5_0))) || ((x <= 0.0) && (x * x <= 0.0) && (0.0 < x * x) && (0.0 < y_5_0 * y_5_0)) || ((x <= 0.0) && (x * x <= 0.0) && (!(0.0 < x * x && 0.0 < y_5_0 * y_5_0))) || ((x <= 0.0) && (y_5_0 <= 0.0) && (0.0 < x * x) && (0.0 < y_5_0 * y_5_0)) || ((x <= 0.0) && (y_5_0 <= 0.0) && (0.0 < x * x) && (!(0.0 < x * x && 0.0 < y_5_0 * y_5_0))) || ((x <= 0.0) && (y_5_0 <= 0.0) && (x * x <= 0.0) && (0.0 < x * x) && (0.0 < y_5_0 * y_5_0)) || ((x <= 0.0) && (y_5_0 <= 0.0) && (x * x <= 0.0) && (!(0.0 < x * x && 0.0 < y_5_0 * y_5_0)))
  ensures   0.0 < x * x * (y_5_0 * y_5_0)
{ }

