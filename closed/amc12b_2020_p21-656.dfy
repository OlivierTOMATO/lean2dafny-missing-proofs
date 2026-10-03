// CLOSED — failing line amc12b_2020_p21-656: theorem amc12b_2020_p21, Dafny line 656 (ERR: assertion might not hold)
// failing Dafny line: assert ((n as real) < (((k as real) + 16.0) * ((k as real) + 16.0))) by {
// Lean step: nlinarith [Real.sq_sqrt (by positivity : 0 ≤ (n : ℝ)), h₁₀]
// hypotheses: 32 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: pass2 — RealSqSqrt(n) + proved helper SqLtOfLt(s, b): 0 <= s < b ==> s*s < b*b (body: d := b-s; MulNonneg(s, d); MulPos(b, d); asserts s*d == s*b - s*s, b*d == b*b - b*s) called at locals s := sqrt(n), b := k+16 with bridging asserts s*s == sqrt(n)*sqrt(n) == n and b*b == (k+16)*(k+16) (direct calls on the compound terms are not matched by Z3's nonlinear solver)
// Dafny: finished with 19 verified, 0 errors in 2.6 s  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12b_2020_p21.dfy"
lemma {:induction false} vc_amc12b_2020_p21_L656(S: set<nat>, k_0_0_0_0_0_0_0_0_2: int, k_0_0_0_0_0_0_0_0_3: int, k_0_0_0_0_0_0_0_0_5: int, k_0_0_0_0_0_0_0_0_5_0: int, k_0_0_0_0_0_0_0_0_6: int, n_0_0_0_0: int)
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
  requires ((k_0_0_0_0_0_0_0_0_5_0 as real) + 15.0) * ((k_0_0_0_0_0_0_0_0_5_0 as real) + 15.0) <= (n_0_0_0_0 as real)
  requires Real.sqrt((n_0_0_0_0 as real)) < (k_0_0_0_0_0_0_0_0_5_0 as real) + 16.0
  requires 0.0 <= Real.sqrt((n_0_0_0_0 as real))
  requires 0.0 <= (n_0_0_0_0 as real)
  requires (0.0 <= (k_0_0_0_0_0_0_0_0_5_0 as real)) || ((k_0_0_0_0_0_0_0_0_5_0 as real) < 0.0)
  requires ((0.0 <= (k_0_0_0_0_0_0_0_0_5_0 as real)) && (Real.sqrt((n_0_0_0_0 as real)) - ((k_0_0_0_0_0_0_0_0_5_0 as real) + 16.0) <= 0.0) && ((k_0_0_0_0_0_0_0_0_5_0 as real) * (Real.sqrt((n_0_0_0_0 as real)) - ((k_0_0_0_0_0_0_0_0_5_0 as real) + 16.0)) <= 0.0)) || (!(0.0 <= (k_0_0_0_0_0_0_0_0_5_0 as real) && Real.sqrt((n_0_0_0_0 as real)) - ((k_0_0_0_0_0_0_0_0_5_0 as real) + 16.0) <= 0.0))
  requires (Real.sqrt((n_0_0_0_0 as real)) - ((k_0_0_0_0_0_0_0_0_5_0 as real) + 16.0) <= 0.0) || (0.0 < Real.sqrt((n_0_0_0_0 as real)) - ((k_0_0_0_0_0_0_0_0_5_0 as real) + 16.0))
  requires ((Real.sqrt((n_0_0_0_0 as real)) - ((k_0_0_0_0_0_0_0_0_5_0 as real) + 16.0) <= 0.0) && (0.0 <= Real.sqrt((n_0_0_0_0 as real))) && ((Real.sqrt((n_0_0_0_0 as real)) - ((k_0_0_0_0_0_0_0_0_5_0 as real) + 16.0)) * Real.sqrt((n_0_0_0_0 as real)) <= 0.0)) || (!(Real.sqrt((n_0_0_0_0 as real)) - ((k_0_0_0_0_0_0_0_0_5_0 as real) + 16.0) <= 0.0 && 0.0 <= Real.sqrt((n_0_0_0_0 as real))))
  requires 16.0 * (Real.sqrt((n_0_0_0_0 as real)) - ((k_0_0_0_0_0_0_0_0_5_0 as real) + 16.0)) + (((k_0_0_0_0_0_0_0_0_5_0 as real) + 16.0) * ((k_0_0_0_0_0_0_0_0_5_0 as real) + 16.0) - (n_0_0_0_0 as real)) + (0.0 - (Real.sqrt((n_0_0_0_0 as real)) * Real.sqrt((n_0_0_0_0 as real)) - (n_0_0_0_0 as real))) + (k_0_0_0_0_0_0_0_0_5_0 as real) * (Real.sqrt((n_0_0_0_0 as real)) - ((k_0_0_0_0_0_0_0_0_5_0 as real) + 16.0)) + (Real.sqrt((n_0_0_0_0 as real)) - ((k_0_0_0_0_0_0_0_0_5_0 as real) + 16.0)) * Real.sqrt((n_0_0_0_0 as real)) == 0.0
  requires ((0.0 < (n_0_0_0_0 as real)) && (0.0 < (n_0_0_0_0 as real)) && (0.0 <= (n_0_0_0_0 as real))) || ((n_0_0_0_0 as real) <= 0.0)
  requires ((Real.sqrt((n_0_0_0_0 as real)) - ((k_0_0_0_0_0_0_0_0_5_0 as real) + 16.0) < 0.0) && (Real.sqrt((n_0_0_0_0 as real)) - ((k_0_0_0_0_0_0_0_0_5_0 as real) + 16.0) < 0.0) && (Real.sqrt((n_0_0_0_0 as real)) - ((k_0_0_0_0_0_0_0_0_5_0 as real) + 16.0) <= 0.0)) || (0.0 <= Real.sqrt((n_0_0_0_0 as real)) - ((k_0_0_0_0_0_0_0_0_5_0 as real) + 16.0))
  requires Real.sqrt((n_0_0_0_0 as real)) * Real.sqrt((n_0_0_0_0 as real)) == (n_0_0_0_0 as real)
  ensures   (n_0_0_0_0 as real) < ((k_0_0_0_0_0_0_0_0_5_0 as real) + 16.0) * ((k_0_0_0_0_0_0_0_0_5_0 as real) + 16.0)
{
  var s := Real.sqrt((n_0_0_0_0 as real));  // [ADDED]
  var b := (k_0_0_0_0_0_0_0_0_5_0 as real) + 16.0;  // [ADDED]
  RealSqSqrt((n_0_0_0_0 as real));
  assert s * s == Real.sqrt((n_0_0_0_0 as real)) * Real.sqrt((n_0_0_0_0 as real));  // [ADDED]
  assert s * s == (n_0_0_0_0 as real);  // [ADDED]
  SqLtOfLt(s, b);  // [ADDED]
  assert b * b == ((k_0_0_0_0_0_0_0_0_5_0 as real) + 16.0) * ((k_0_0_0_0_0_0_0_0_5_0 as real) + 16.0);  // [ADDED]
}

// helper (proved): 0 <= s < b ==> s*s < b*b
lemma SqLtOfLt(s: real, b: real)  // [ADDED DECLARATION]
  requires 0.0 <= s
  requires s < b
  ensures s * s < b * b
{
  var d := b - s;
  MulNonneg(s, d);
  MulPos(b, d);
  assert s * d == s * b - s * s;
  assert b * d == b * b - b * s;
}
