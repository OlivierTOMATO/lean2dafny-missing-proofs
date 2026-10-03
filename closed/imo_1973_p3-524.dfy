// CLOSED — failing line imo_1973_p3-524: theorem imo_1973_p3, Dafny line 524 (ERR: assertion might not hold)
// failing Dafny line: if (0.0 <= ((y - 2.0) * (y - 2.0))) && ((((y * y) + (a * y)) + (b - 2.0)) == 0.0) { assert (-((((y - 2.0) * (y - 2.0)) * (((y * y) + (a * y)) + (b - 2.0)))) == 0.0); }
// Lean step: h₃
// hypotheses: 33 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: K5 — axiom LinarithMulZeroEq(a,b) requires b==0 ensures a*b==0 (exact Mathlib mul_eq_zero_of_right = Linarith.mul_zero_eq minus unused R-premise); call LinarithMulZeroEq((y-2)*(y-2), Q)
// Dafny: finished with 2 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/imo_1973_p3.dfy"
lemma {:axiom} LinarithMulZeroEq(a: real, b: real)
  requires b == 0.0
  ensures a * b == 0.0

lemma {:induction false} vc_imo_1973_p3_L524(a: real, b: real, y_2: real, y_2_0: real, y_2_2: real, y_2_3: real)
  requires exists x_1: real :: x_1 * x_1 * x_1 * x_1 + a * (x_1 * x_1 * x_1) + b * (x_1 * x_1) + a * x_1 + 1.0 == 0.0
  requires ((y_2 * y_2 + a * y_2 + (b - 2.0) == 0.0) && ((2.0 > y_2) || (y_2 >= 2.0))) || (y_2 * y_2 + a * y_2 + (b - 2.0) != 0.0)
  requires exists y_1: real :: y_1 * y_1 + a * y_1 + (b - 2.0) == 0.0 && (y_1 >= 2.0 || y_1 <= 0.0 - 2.0)
  requires a * a - 4.0 * (b - 2.0) >= 0.0
  requires ((y_2_0 * y_2_0 + a * y_2_0 + (b - 2.0) == 0.0) && ((2.0 > y_2_0) || (y_2_0 >= 2.0))) || (y_2_0 * y_2_0 + a * y_2_0 + (b - 2.0) != 0.0)
  requires exists y_2_1: real :: y_2_1 * y_2_1 + a * y_2_1 + (b - 2.0) == 0.0 && (y_2_1 >= 2.0 || y_2_1 <= 0.0 - 2.0)
  requires ((y_2_3 * y_2_3 + a * y_2_3 + (b - 2.0) == 0.0) && ((2.0 > y_2_3) || (y_2_3 >= 2.0))) || (y_2_3 * y_2_3 + a * y_2_3 + (b - 2.0) != 0.0)
  requires (true && 0.0 * 0.0 + a * 0.0 + (b - 2.0) == 0.0 && (0.0 >= 2.0 || 0.0 <= 0.0 - 2.0)) || (exists as_y2_0_2_0: real :: as_y2_0_2_0 * as_y2_0_2_0 + a * as_y2_0_2_0 + (b - 2.0) == 0.0 && (as_y2_0_2_0 >= 2.0 || as_y2_0_2_0 <= 0.0 - 2.0))
  requires y_2_2 * y_2_2 + a * y_2_2 + (b - 2.0) == 0.0
  requires y_2_2 >= 2.0 || y_2_2 <= 0.0 - 2.0
  requires (2.0 > y_2_2) || (y_2_2 >= 2.0)
  requires y_2_2 >= 2.0
  requires 4.0 * (b - 2.0) <= a * a
  requires 2.0 <= y_2_2
  requires 0.0 <= (y_2_2 - 2.0) * (y_2_2 - 2.0)
  requires 0.0 <= (y_2_2 + 2.0) * (y_2_2 + 2.0)
  requires 0.0 <= (a - b * 2.0) * (a - b * 2.0)
  requires 0.0 <= (a + b * 2.0) * (a + b * 2.0)
  requires 0.0 <= 1.0 * b * (1.0 * b)
  requires 0.0 <= y_2_2 * y_2_2
  requires (1 as real) == 1.0
  requires (0 as real) == 0.0
  requires ((5.0 * (1.0 * a * (1.0 * a)) + 5.0 * (1.0 * b * (1.0 * b)) - 1.0 * 4.0 < 0.0) && (5.0 * (1.0 * a * (1.0 * a)) + 5.0 * (1.0 * b * (1.0 * b)) - 1.0 * 4.0 < 0.0) && (5.0 * (1.0 * a * (1.0 * a)) + 5.0 * (1.0 * b * (1.0 * b)) - 1.0 * 4.0 <= 0.0)) || (0.0 <= 5.0 * (1.0 * a * (1.0 * a)) + 5.0 * (1.0 * b * (1.0 * b)) - 1.0 * 4.0)
  requires (0.0 <= (y_2_2 + 2.0) * (y_2_2 + 2.0)) || ((y_2_2 + 2.0) * (y_2_2 + 2.0) < 0.0)
  requires ((0.0 <= (y_2_2 + 2.0) * (y_2_2 + 2.0)) && (0.0 <= (a - b * 2.0) * (a - b * 2.0)) && (0.0 <= (y_2_2 + 2.0) * (y_2_2 + 2.0) * ((a - b * 2.0) * (a - b * 2.0)))) || (!(0.0 <= (y_2_2 + 2.0) * (y_2_2 + 2.0) && 0.0 <= (a - b * 2.0) * (a - b * 2.0)))
  requires (0.0 <= (y_2_2 + 2.0) * (y_2_2 + 2.0)) || ((y_2_2 + 2.0) * (y_2_2 + 2.0) < 0.0)
  requires ((0.0 <= (y_2_2 + 2.0) * (y_2_2 + 2.0)) && (y_2_2 * y_2_2 + a * y_2_2 + (b - 2.0) == 0.0) && (0.0 - (y_2_2 + 2.0) * (y_2_2 + 2.0) * (y_2_2 * y_2_2 + a * y_2_2 + (b - 2.0)) == 0.0) && ((0.0 <= (a + b * 2.0) * (a + b * 2.0)) || ((a + b * 2.0) * (a + b * 2.0) < 0.0))) || ((!(0.0 <= (y_2_2 + 2.0) * (y_2_2 + 2.0) && y_2_2 * y_2_2 + a * y_2_2 + (b - 2.0) == 0.0)) && ((0.0 <= (a + b * 2.0) * (a + b * 2.0)) || ((a + b * 2.0) * (a + b * 2.0) < 0.0)))
  requires ((0.0 <= (a + b * 2.0) * (a + b * 2.0)) && (0.0 <= (y_2_2 - 2.0) * (y_2_2 - 2.0)) && (0.0 <= (a + b * 2.0) * (a + b * 2.0) * ((y_2_2 - 2.0) * (y_2_2 - 2.0)))) || (!(0.0 <= (a + b * 2.0) * (a + b * 2.0) && 0.0 <= (y_2_2 - 2.0) * (y_2_2 - 2.0)))
  requires (0.0 <= 1.0 * b * (1.0 * b)) || (1.0 * b * (1.0 * b) < 0.0)
  requires ((0.0 <= 1.0 * b * (1.0 * b)) && (0.0 <= (y_2_2 - 2.0) * (y_2_2 - 2.0)) && (0.0 <= 1.0 * b * (1.0 * b) * ((y_2_2 - 2.0) * (y_2_2 - 2.0)))) || (!(0.0 <= 1.0 * b * (1.0 * b) && 0.0 <= (y_2_2 - 2.0) * (y_2_2 - 2.0)))
  requires (0.0 <= 1.0 * b * (1.0 * b)) || (1.0 * b * (1.0 * b) < 0.0)
  requires ((0.0 <= 1.0 * b * (1.0 * b)) && (2.0 - y_2_2 <= 0.0) && (1.0 * b * (1.0 * b) * (2.0 - y_2_2) <= 0.0)) || (!(0.0 <= 1.0 * b * (1.0 * b) && 2.0 - y_2_2 <= 0.0))
  requires ((0.0 <= (y_2_2 - 2.0) * (y_2_2 - 2.0)) && (0.0 <= (y_2_2 - 2.0) * (y_2_2 - 2.0) * ((y_2_2 - 2.0) * (y_2_2 - 2.0))) && ((0.0 <= (y_2_2 - 2.0) * (y_2_2 - 2.0)) || ((y_2_2 - 2.0) * (y_2_2 - 2.0) < 0.0))) || (((y_2_2 - 2.0) * (y_2_2 - 2.0) < 0.0) && ((0.0 <= (y_2_2 - 2.0) * (y_2_2 - 2.0)) || ((y_2_2 - 2.0) * (y_2_2 - 2.0) < 0.0)))
  ensures   0.0 - (y_2_2 - 2.0) * (y_2_2 - 2.0) * (y_2_2 * y_2_2 + a * y_2_2 + (b - 2.0)) == 0.0
{
  LinarithMulZeroEq((y_2_2 - 2.0) * (y_2_2 - 2.0), (y_2_2 * y_2_2 + a * y_2_2 + (b - 2.0)));
}

