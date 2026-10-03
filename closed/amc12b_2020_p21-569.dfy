// CLOSED — failing line amc12b_2020_p21-569: theorem amc12b_2020_p21, Dafny line 569 (ERR: assertion might not hold)
// failing Dafny line: assert ((((k as real) + 15.0) * ((k as real) + 15.0)) <= (n as real)) by {
// Lean step: nlinarith [Real.sq_sqrt (by positivity : 0 ≤ (n : ℝ)), h₉]
// hypotheses: 29 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: pass2 — RealSqSqrt(n) + proved helper SqLeOfLe(a, s): 0 <= a <= s ==> a*a <= s*s (body: MulNonneg(a, s-a); MulNonneg(s, s-a)) called at a := k+15, s := sqrt(n)
// Dafny: finished with 14 verified, 0 errors in 2.6 s  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12b_2020_p21.dfy"
lemma {:induction false} vc_amc12b_2020_p21_L569(S: set<nat>, k_0_0_0_0_0_0_0_0_2: int, k_0_0_0_0_0_0_0_0_3: int, k_0_0_0_0_0_0_0_0_5: int, k_0_0_0_0_0_0_0_0_5_0: int, k_0_0_0_0_0_0_0_0_6: int, n_0_0_0_0: int)
  requires 0 <= k_0_0_0_0_0_0_0_0_5
  requires forall n_1: int :: 0 <= n_1 ==> (n_1 in S) == (0 < n_1 && ((n_1 as real) + 1000.0) / 70.0 == (floor(Real.sqrt((n_1 as real))) as real))
  requires 0 <= n_0_0_0_0
  requires (0 < n_0_0_0_0) || (n_0_0_0_0 <= 0)
  requires (n_0_0_0_0 in S) == (0 < n_0_0_0_0 && ((n_0_0_0_0 as real) + 1000.0) / 70.0 == (floor(Real.sqrt((n_0_0_0_0 as real))) as real))
  requires ((0 < n_0_0_0_0) && (70.0 != 0.0)) || (n_0_0_0_0 <= 0)
  requires 0 < n_0_0_0_0
  requires ((n_0_0_0_0 as real) + 1000.0) / 70.0 == (floor(Real.sqrt((n_0_0_0_0 as real))) as real)
  requires 70 != 0
  requires (n_0_0_0_0 + 1000) % 70 == 0
  requires n_0_0_0_0 % 70 == 50
  requires (0 <= k_0_0_0_0_0_0_0_0_2) || (k_0_0_0_0_0_0_0_0_2 < 0)
  requires exists k_0_0_0_0_0_0_0_0_1: nat :: n_0_0_0_0 == 70 * k_0_0_0_0_0_0_0_0_1 + 50
  requires (0 <= k_0_0_0_0_0_0_0_0_3) || (k_0_0_0_0_0_0_0_0_3 < 0)
  requires exists k_0_0_0_0_0_0_0_0_4: nat :: n_0_0_0_0 == 70 * k_0_0_0_0_0_0_0_0_4 + 50
  requires (0 <= k_0_0_0_0_0_0_0_0_6) || (k_0_0_0_0_0_0_0_0_6 < 0)
  requires (0 <= 0 && n_0_0_0_0 == 70 * 0 + 50) || (0 <= 0 && n_0_0_0_0 == 70 * 0 + 50) || (exists as_k0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0: nat :: n_0_0_0_0 == 70 * as_k0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0 + 50)
  requires 0 <= k_0_0_0_0_0_0_0_0_5_0
  requires n_0_0_0_0 == 70 * k_0_0_0_0_0_0_0_0_5_0 + 50
  requires k_0_0_0_0_0_0_0_0_5_0 + 15 == floor(Real.sqrt((n_0_0_0_0 as real)))
  requires (k_0_0_0_0_0_0_0_0_5_0 as real) + 15.0 <= Real.sqrt((n_0_0_0_0 as real))
  requires 0.0 <= Real.sqrt((n_0_0_0_0 as real))
  requires 0.0 <= (n_0_0_0_0 as real)
  requires (0.0 <= (k_0_0_0_0_0_0_0_0_5_0 as real)) || ((k_0_0_0_0_0_0_0_0_5_0 as real) < 0.0)
  requires ((0.0 <= (k_0_0_0_0_0_0_0_0_5_0 as real)) && ((k_0_0_0_0_0_0_0_0_5_0 as real) + 15.0 - Real.sqrt((n_0_0_0_0 as real)) <= 0.0) && ((k_0_0_0_0_0_0_0_0_5_0 as real) * ((k_0_0_0_0_0_0_0_0_5_0 as real) + 15.0 - Real.sqrt((n_0_0_0_0 as real))) <= 0.0)) || (!(0.0 <= (k_0_0_0_0_0_0_0_0_5_0 as real) && (k_0_0_0_0_0_0_0_0_5_0 as real) + 15.0 - Real.sqrt((n_0_0_0_0 as real)) <= 0.0))
  requires (((k_0_0_0_0_0_0_0_0_5_0 as real) + 15.0 - Real.sqrt((n_0_0_0_0 as real)) <= 0.0) && (0.0 <= ((k_0_0_0_0_0_0_0_0_5_0 as real) + 15.0 - Real.sqrt((n_0_0_0_0 as real))) * ((k_0_0_0_0_0_0_0_0_5_0 as real) + 15.0 - Real.sqrt((n_0_0_0_0 as real))))) || (0.0 < (k_0_0_0_0_0_0_0_0_5_0 as real) + 15.0 - Real.sqrt((n_0_0_0_0 as real)))
  requires 30.0 * ((k_0_0_0_0_0_0_0_0_5_0 as real) + 15.0 - Real.sqrt((n_0_0_0_0 as real))) + ((n_0_0_0_0 as real) - ((k_0_0_0_0_0_0_0_0_5_0 as real) + 15.0) * ((k_0_0_0_0_0_0_0_0_5_0 as real) + 15.0)) + (Real.sqrt((n_0_0_0_0 as real)) * Real.sqrt((n_0_0_0_0 as real)) - (n_0_0_0_0 as real)) + 2.0 * ((k_0_0_0_0_0_0_0_0_5_0 as real) * ((k_0_0_0_0_0_0_0_0_5_0 as real) + 15.0 - Real.sqrt((n_0_0_0_0 as real)))) + (0.0 - ((k_0_0_0_0_0_0_0_0_5_0 as real) + 15.0 - Real.sqrt((n_0_0_0_0 as real))) * ((k_0_0_0_0_0_0_0_0_5_0 as real) + 15.0 - Real.sqrt((n_0_0_0_0 as real)))) == 0.0
  requires ((0.0 < (n_0_0_0_0 as real)) && (0.0 < (n_0_0_0_0 as real)) && (0.0 <= (n_0_0_0_0 as real))) || ((n_0_0_0_0 as real) <= 0.0)
  requires Real.sqrt((n_0_0_0_0 as real)) * Real.sqrt((n_0_0_0_0 as real)) == (n_0_0_0_0 as real)
  ensures   ((k_0_0_0_0_0_0_0_0_5_0 as real) + 15.0) * ((k_0_0_0_0_0_0_0_0_5_0 as real) + 15.0) <= (n_0_0_0_0 as real)
{
  RealSqSqrt((n_0_0_0_0 as real));
  SqLeOfLe((k_0_0_0_0_0_0_0_0_5_0 as real) + 15.0, Real.sqrt((n_0_0_0_0 as real)));  // [ADDED]
}

// helper (proved): 0 <= a <= s ==> a*a <= s*s
lemma SqLeOfLe(a: real, s: real)  // [ADDED DECLARATION]
  requires 0.0 <= a
  requires a <= s
  ensures a * a <= s * s
{
  MulNonneg(a, s - a);
  MulNonneg(s, s - a);
}
