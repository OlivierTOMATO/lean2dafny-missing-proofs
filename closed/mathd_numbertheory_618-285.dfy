// CLOSED — failing line mathd_numbertheory_618-285: theorem mathd_numbertheory_618, Dafny line 285 (OOR: Verification out of resource (mathd_numbertheory_618))
// failing Dafny line: assert false;
// Lean step: norm_num [h₀, Nat.gcd_eq_right, Nat.gcd_eq_left, Nat.gcd_eq_right] at h₄ ⊢
// hypotheses: 14 facts Z3 had at the line (the 1 prior-branch disjunction facts dropped); nothing assumed beyond the facts in scope
// how it closes: pass2 — helper lemma GcdPSmall618 (40-case split, each case asserts p(k) == k*k-k+41 and gcd(k*k-k+41, 2k) == 1, which Dafny evaluates on literals since the prelude's gcd is a computable Euclid function) giving gcd(p(n), 2n) == 1 for 1 <= n <= 40, contradicting 1 < gcd(p(n), 2n); dropped 1 giant prior-branch-guard hypotheses; no axioms, no added hypotheses
// Dafny: Dafny program verifier finished with 219 verified, 0 errors (7.2 s)  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/mathd_numbertheory_618.dfy"

lemma {:induction false} vc_mathd_numbertheory_618_L285(n: int, n_0_0_0_1_0: int, n_0_0_0_1_0_1_0: int, p: nat -> nat, x_3_0_0_10__arg: nat, x_3_0_0_1__arg: nat, x_3_0_0_2__arg: nat, x_3_0_0_3__arg: nat, x_3_0_0_4__arg: nat, x_3_0_0_5__arg: nat, x_3_0_0_6__arg: nat, x_3_0_0_7__arg: nat, x_3_0_0_8__arg: nat, x_3_0_0_9__arg: nat, y_3_0_0_10__arg: nat, y_3_0_0_1__arg: nat, y_3_0_0_2__arg: nat, y_3_0_0_3__arg: nat, y_3_0_0_4__arg: nat, y_3_0_0_5__arg: nat, y_3_0_0_6__arg: nat, y_3_0_0_7__arg: nat, y_3_0_0_8__arg: nat, y_3_0_0_9__arg: nat, x_3_0_0_12__arg: nat, x_3_0_0_16__arg: nat, x_3_0_0_17__arg: nat, x_3_0_0_18__arg: nat, x_3_0_0_19__arg: nat, x_3_0_0_20__arg: nat, x_3_0_0_21__arg: nat, x_3_0_0_22__arg: nat, x_3_0_0_23__arg: nat, x_3_0_0_24__arg: nat, x_3_0_0_25__arg: nat, x_3_0_0_26__arg: nat, x_3_0_0_27__arg: nat, x_3_0_0_28__arg: nat, x_3_0_0_29__arg: nat, x_3_0_0_30__arg: nat, x_3_0_0_31__arg: nat, x_3_0_0_32__arg: nat, x_3_0_0_33__arg: nat, x_3_0_0_34__arg: nat, x_3_0_0_35__arg: nat, y_3_0_0_12__arg: nat, y_3_0_0_16__arg: nat, y_3_0_0_17__arg: nat, y_3_0_0_18__arg: nat, y_3_0_0_19__arg: nat, y_3_0_0_20__arg: nat, y_3_0_0_21__arg: nat, y_3_0_0_22__arg: nat, y_3_0_0_23__arg: nat, y_3_0_0_24__arg: nat, y_3_0_0_25__arg: nat, y_3_0_0_26__arg: nat, y_3_0_0_27__arg: nat, y_3_0_0_28__arg: nat, y_3_0_0_29__arg: nat, y_3_0_0_30__arg: nat, y_3_0_0_31__arg: nat, y_3_0_0_32__arg: nat, y_3_0_0_33__arg: nat, y_3_0_0_34__arg: nat, y_3_0_0_35__arg: nat)
  requires 0 <= n
  requires 0 <= n_0_0_0_1_0
  requires 0 <= n_0_0_0_1_0_1_0
  requires n > 0
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires 1 < gcd(p(n), p(n + 1))
  requires 0 <= n + 1
  requires p(n + 1) == p(n) + 2 * n
  requires 0 <= 2 * n
  requires gcd(p(n), p(n + 1)) == gcd(p(n), 2 * n)
  requires 1 < gcd(p(n), 2 * n)
  requires !(41 <= n)
  requires n <= 40
  ensures   false /*VC_GAP*/
{
  GcdPSmall618(n, p);  // pass2: gcd(p(n), 2n) == 1 for 1 <= n <= 40, contradicts 1 < gcd(p(n), 2 * n)  // [ADDED]
}

// pass2 helper: for every 1 <= n <= 40, gcd(p(n), 2n) = 1 (what Lean's norm_num evaluates per interval_cases branch)
lemma {:induction false} GcdPSmall618(n: nat, p: nat -> nat)  // [ADDED DECLARATION]
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires 1 <= n <= 40
  ensures gcd(p(n), 2 * n) == 1
{
  if n == 1 {
    assert p(1) == 41;
    assert gcd(41, 2) == 1;
  }
  if n == 2 {
    assert p(2) == 43;
    assert gcd(43, 4) == 1;
  }
  if n == 3 {
    assert p(3) == 47;
    assert gcd(47, 6) == 1;
  }
  if n == 4 {
    assert p(4) == 53;
    assert gcd(53, 8) == 1;
  }
  if n == 5 {
    assert p(5) == 61;
    assert gcd(61, 10) == 1;
  }
  if n == 6 {
    assert p(6) == 71;
    assert gcd(71, 12) == 1;
  }
  if n == 7 {
    assert p(7) == 83;
    assert gcd(83, 14) == 1;
  }
  if n == 8 {
    assert p(8) == 97;
    assert gcd(97, 16) == 1;
  }
  if n == 9 {
    assert p(9) == 113;
    assert gcd(113, 18) == 1;
  }
  if n == 10 {
    assert p(10) == 131;
    assert gcd(131, 20) == 1;
  }
  if n == 11 {
    assert p(11) == 151;
    assert gcd(151, 22) == 1;
  }
  if n == 12 {
    assert p(12) == 173;
    assert gcd(173, 24) == 1;
  }
  if n == 13 {
    assert p(13) == 197;
    assert gcd(197, 26) == 1;
  }
  if n == 14 {
    assert p(14) == 223;
    assert gcd(223, 28) == 1;
  }
  if n == 15 {
    assert p(15) == 251;
    assert gcd(251, 30) == 1;
  }
  if n == 16 {
    assert p(16) == 281;
    assert gcd(281, 32) == 1;
  }
  if n == 17 {
    assert p(17) == 313;
    assert gcd(313, 34) == 1;
  }
  if n == 18 {
    assert p(18) == 347;
    assert gcd(347, 36) == 1;
  }
  if n == 19 {
    assert p(19) == 383;
    assert gcd(383, 38) == 1;
  }
  if n == 20 {
    assert p(20) == 421;
    assert gcd(421, 40) == 1;
  }
  if n == 21 {
    assert p(21) == 461;
    assert gcd(461, 42) == 1;
  }
  if n == 22 {
    assert p(22) == 503;
    assert gcd(503, 44) == 1;
  }
  if n == 23 {
    assert p(23) == 547;
    assert gcd(547, 46) == 1;
  }
  if n == 24 {
    assert p(24) == 593;
    assert gcd(593, 48) == 1;
  }
  if n == 25 {
    assert p(25) == 641;
    assert gcd(641, 50) == 1;
  }
  if n == 26 {
    assert p(26) == 691;
    assert gcd(691, 52) == 1;
  }
  if n == 27 {
    assert p(27) == 743;
    assert gcd(743, 54) == 1;
  }
  if n == 28 {
    assert p(28) == 797;
    assert gcd(797, 56) == 1;
  }
  if n == 29 {
    assert p(29) == 853;
    assert gcd(853, 58) == 1;
  }
  if n == 30 {
    assert p(30) == 911;
    assert gcd(911, 60) == 1;
  }
  if n == 31 {
    assert p(31) == 971;
    assert gcd(971, 62) == 1;
  }
  if n == 32 {
    assert p(32) == 1033;
    assert gcd(1033, 64) == 1;
  }
  if n == 33 {
    assert p(33) == 1097;
    assert gcd(1097, 66) == 1;
  }
  if n == 34 {
    assert p(34) == 1163;
    assert gcd(1163, 68) == 1;
  }
  if n == 35 {
    assert p(35) == 1231;
    assert gcd(1231, 70) == 1;
  }
  if n == 36 {
    assert p(36) == 1301;
    assert gcd(1301, 72) == 1;
  }
  if n == 37 {
    assert p(37) == 1373;
    assert gcd(1373, 74) == 1;
  }
  if n == 38 {
    assert p(38) == 1447;
    assert gcd(1447, 76) == 1;
  }
  if n == 39 {
    assert p(39) == 1523;
    assert gcd(1523, 78) == 1;
  }
  if n == 40 {
    assert p(40) == 1601;
    assert gcd(1601, 80) == 1;
  }
}
