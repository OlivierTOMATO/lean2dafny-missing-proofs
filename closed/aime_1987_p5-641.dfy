// CLOSED — failing line aime_1987_p5-641: theorem aime_1987_p5, Dafny line 641 (ERR: assertion might not hold)
// failing Dafny line: assert (0 < (507)) && (exists k: int :: (507) == (((3 * (x * x)) + 1)) * k);
// Lean step: h₃₅₁₇
// hypotheses: 6 facts Z3 had at the line (goal itself removed: 1; the block's own asserts removed: 0); nothing assumed beyond the facts in scope
// how it closes: own-lemma — nothing: the file's own proof body, hypotheses = facts in scope minus the goal and minus the block's own asserts
// Dafny: finished with 1 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/aime_1987_p5.dfy"
lemma {:induction false} vc_aime_1987_p5_L641(x: int, y: int)
  requires y * y + 3 * (x * x * (y * y)) == 30 * (x * x) + 517
  requires x != 0
  requires IntDvd(3 * (x * x) + 1, 507)
  requires x * x >= 1
  requires 3 * (x * x) + 1 > 0
  requires 3 * (x * x) + 1 <= 507
  ensures   (0 < 507)
{ }

