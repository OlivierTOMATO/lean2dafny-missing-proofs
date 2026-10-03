// NOT CLOSED — failing line imo_1961_p1-463: theorem imo_1961_p1, Dafny line 463 (ERR: assertion might not hold)
// failing Dafny line: assert (0.0 < ((z - x) * (z - x))) by {
// Lean step: h₁₄
// hypotheses: 15 facts Z3 had at the line (goal itself removed: 1; the block's own asserts removed: 2); nothing assumed beyond the facts in scope
// not closed: tried H0=failed; this file is the honest base attempt
// Dafny: finished with 4 verified, 1 error  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/imo_1961_p1.dfy"
lemma {:induction false} vc_imo_1961_p1_L463(a: real, b: real, x: real, y: real, z: real)
  requires 0.0 < x
  requires 0.0 < y
  requires 0.0 < z
  requires x != y
  requires y != z
  requires x + y + z == a
  requires x * x + y * y + z * z == b * b
  requires x * y == z * z
  requires z == Real.sqrt(x * y)
  requires x + y + Real.sqrt(x * y) == a
  requires x * x + y * y + x * y == b * b
  requires a > 0.0
  requires b * b < a * a
  requires 0.0 < (x - y) * (x - y)
  requires 0.0 < (y - z) * (y - z)
  ensures   0.0 < (z - x) * (z - x)
{
      // [TACTIC: exact sq_pos_of_ne_zero ( ( sub_ne_zero_of_ne ( h₃ ) ) )]
      assert ((z) != (x));  // precondition of SubNeZeroOfNe (Lean: sub_ne_zero_of_ne)
      SubNeZeroOfNe(z, x);  // cite: sub_ne_zero_of_ne
      assert (((z - x)) != 0.0);  // precondition of SqPosOfNeZero (Lean: sq_pos_of_ne_zero)
      SqPosOfNeZero((z - x));  // cite: sq_pos_of_ne_zero
}

