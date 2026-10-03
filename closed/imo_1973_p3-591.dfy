// CLOSED — failing line imo_1973_p3-591: theorem imo_1973_p3, Dafny line 591 (ERR: assertion might not hold)
// failing Dafny line: if (0.0 <= ((y + 2.0) * (y + 2.0))) && ((((y * y) + (a * y)) + (b - 2.0)) == 0.0) { assert (-((((y + 2.0) * (y + 2.0)) * (((y * y) + (a * y)) + (b - 2.0)))) == 0.0); }
// Lean step: h₃
// hypotheses: 2 facts Z3 had at the line; this variant also drops 26 hypotheses; nothing assumed beyond the facts in scope
// how it closes: K3 — requires only 0 <= (y+2)*(y+2) and Q == 0 (Lean premises of mul_zero_eq); all other 20-30 requires dropped
// Dafny: finished with 1 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/imo_1973_p3.dfy"
lemma {:induction false} vc_imo_1973_p3_L591(a: real, b: real, y_2: real, y_2_0: real, y_2_2: real, y_2_3: real)
  requires 0.0 <= (y_2_2 + 2.0) * (y_2_2 + 2.0)
  requires y_2_2 * y_2_2 + a * y_2_2 + (b - 2.0) == 0.0
  ensures   0.0 - (y_2_2 + 2.0) * (y_2_2 + 2.0) * (y_2_2 * y_2_2 + a * y_2_2 + (b - 2.0)) == 0.0
{

}

