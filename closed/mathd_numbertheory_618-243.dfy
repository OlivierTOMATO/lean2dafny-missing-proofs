// CLOSED — failing line mathd_numbertheory_618-243: theorem mathd_numbertheory_618, Dafny line 243 (pass2)
// failing Dafny line: assert false;
// Lean step: norm_num [h₀, Nat.gcd_eq_right, Nat.gcd_eq_left, Nat.gcd_eq_right] at h₄ ⊢
// hypotheses: 35 facts Z3 had at the line; nothing assumed beyond the facts in scope; pass2 kept 21 of 35 (dropped 14 giant disjunctive WP hypotheses, none added)
// how it closes: pass2 — dropped 14 giant WP-encoded hypotheses (the remaining 21 facts suffice); body: instantiate h₀ at n, call proved helper GcdPOne_618(n) (40-case Euclid evaluation, per-case assert with {:fuel gcd,12}: gcd(n*n-n+41, 2n) == 1 for 1<=n<=40), contradiction with 1 < gcd(p(n), 2n); goal follows from false
// Dafny: Dafny program verifier finished with 397 verified, 0 errors  (8.7 s; flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)
include "../dafny/mathd_numbertheory_618.dfy"
lemma {:induction false} vc_mathd_numbertheory_618_L243(n: int, n_0_0_0_1_0: int, n_0_0_0_1_0_1_0: int, p: nat -> nat, x_3_0_0_0__arg: nat, x_3_0_0_10__arg: nat, x_3_0_0_11__arg: nat, x_3_0_0_12__arg: nat, x_3_0_0_13__arg: nat, x_3_0_0_14__arg: nat, x_3_0_0_15__arg: nat, x_3_0_0_16__arg: nat, x_3_0_0_17__arg: nat, x_3_0_0_18__arg: nat, x_3_0_0_19__arg: nat, x_3_0_0_1__arg: nat, x_3_0_0_20__arg: nat, x_3_0_0_21__arg: nat, x_3_0_0_22__arg: nat, x_3_0_0_23__arg: nat, x_3_0_0_24__arg: nat, x_3_0_0_25__arg: nat, x_3_0_0_26__arg: nat, x_3_0_0_27__arg: nat, x_3_0_0_28__arg: nat, x_3_0_0_29__arg: nat, x_3_0_0_2__arg: nat, x_3_0_0_30__arg: nat, x_3_0_0_31__arg: nat, x_3_0_0_32__arg: nat, x_3_0_0_33__arg: nat, x_3_0_0_34__arg: nat, x_3_0_0_35__arg: nat, x_3_0_0_36__arg: nat, x_3_0_0_37__arg: nat, x_3_0_0_38__arg: nat, x_3_0_0_39__arg: nat, x_3_0_0_3__arg: nat, x_3_0_0_40__arg: nat, x_3_0_0_41__arg: nat, x_3_0_0_42__arg: nat, x_3_0_0_43__arg: nat, x_3_0_0_44__arg: nat, x_3_0_0_45__arg: nat, x_3_0_0_46__arg: nat, x_3_0_0_47__arg: nat, x_3_0_0_48__arg: nat, x_3_0_0_49__arg: nat, x_3_0_0_4__arg: nat, x_3_0_0_50__arg: nat, x_3_0_0_51__arg: nat, x_3_0_0_52__arg: nat, x_3_0_0_53__arg: nat, x_3_0_0_54__arg: nat, x_3_0_0_55__arg: nat, x_3_0_0_5__arg: nat, x_3_0_0_6__arg: nat, x_3_0_0_7__arg: nat, x_3_0_0_8__arg: nat, x_3_0_0_9__arg: nat, y_3_0_0_0__arg: nat, y_3_0_0_10__arg: nat, y_3_0_0_11__arg: nat, y_3_0_0_12__arg: nat, y_3_0_0_13__arg: nat, y_3_0_0_14__arg: nat, y_3_0_0_15__arg: nat, y_3_0_0_16__arg: nat, y_3_0_0_17__arg: nat, y_3_0_0_18__arg: nat, y_3_0_0_19__arg: nat, y_3_0_0_1__arg: nat, y_3_0_0_20__arg: nat, y_3_0_0_21__arg: nat, y_3_0_0_22__arg: nat, y_3_0_0_23__arg: nat, y_3_0_0_24__arg: nat, y_3_0_0_25__arg: nat, y_3_0_0_26__arg: nat, y_3_0_0_27__arg: nat, y_3_0_0_28__arg: nat, y_3_0_0_29__arg: nat, y_3_0_0_2__arg: nat, y_3_0_0_30__arg: nat, y_3_0_0_31__arg: nat, y_3_0_0_32__arg: nat, y_3_0_0_33__arg: nat, y_3_0_0_34__arg: nat, y_3_0_0_35__arg: nat, y_3_0_0_36__arg: nat, y_3_0_0_37__arg: nat, y_3_0_0_38__arg: nat, y_3_0_0_39__arg: nat, y_3_0_0_3__arg: nat, y_3_0_0_40__arg: nat, y_3_0_0_41__arg: nat, y_3_0_0_42__arg: nat, y_3_0_0_43__arg: nat, y_3_0_0_44__arg: nat, y_3_0_0_45__arg: nat, y_3_0_0_46__arg: nat, y_3_0_0_47__arg: nat, y_3_0_0_48__arg: nat, y_3_0_0_49__arg: nat, y_3_0_0_4__arg: nat, y_3_0_0_50__arg: nat, y_3_0_0_51__arg: nat, y_3_0_0_52__arg: nat, y_3_0_0_53__arg: nat, y_3_0_0_54__arg: nat, y_3_0_0_55__arg: nat, y_3_0_0_5__arg: nat, y_3_0_0_6__arg: nat, y_3_0_0_7__arg: nat, y_3_0_0_8__arg: nat, y_3_0_0_9__arg: nat)
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
  requires n == 14
  requires 14 > 0
  requires 1 < gcd(p(14), p(14 + 1))
  requires p(14 + 1) == p(14) + 2 * 14
  requires gcd(p(14), p(14 + 1)) == gcd(p(14), 2 * 14)
  requires 1 < gcd(p(14), 2 * 14)
  requires !(41 <= 14)
  requires 14 <= 40
  ensures   false
{
  // instance of h₀ at n, then the helper evaluates gcd(p(n), 2n) == 1 for every n in 1..40,
  // contradicting the hypothesis 1 < gcd(p(n), 2 * n)
  assert p(n) == tsub(n * n, n) + 41;  // [ADDED]
  GcdPOne_618(n);  // [ADDED]
  assert gcd(p(n), 2 * n) == 1;  // [ADDED]
  assert false;  // [ADDED]
}

// helper (proved, no axiom): for 1 <= k <= 40, gcd(k*k - k + 41, 2k) == 1 — Euclid evaluated per case
lemma GcdPOne_618(k: nat)  // [ADDED DECLARATION]
  requires 1 <= k <= 40
  ensures gcd(tsub(k * k, k) + 41, 2 * k) == 1
{
  if k == 1 {
    assert tsub(k * k, k) + 41 == 41;
    assert {:fuel gcd, 12} gcd(41, 2) == 1;
    assert gcd(tsub(k * k, k) + 41, 2 * k) == 1;
  } else if k == 2 {
    assert tsub(k * k, k) + 41 == 43;
    assert {:fuel gcd, 12} gcd(43, 4) == 1;
    assert gcd(tsub(k * k, k) + 41, 2 * k) == 1;
  } else if k == 3 {
    assert tsub(k * k, k) + 41 == 47;
    assert {:fuel gcd, 12} gcd(47, 6) == 1;
    assert gcd(tsub(k * k, k) + 41, 2 * k) == 1;
  } else if k == 4 {
    assert tsub(k * k, k) + 41 == 53;
    assert {:fuel gcd, 12} gcd(53, 8) == 1;
    assert gcd(tsub(k * k, k) + 41, 2 * k) == 1;
  } else if k == 5 {
    assert tsub(k * k, k) + 41 == 61;
    assert {:fuel gcd, 12} gcd(61, 10) == 1;
    assert gcd(tsub(k * k, k) + 41, 2 * k) == 1;
  } else if k == 6 {
    assert tsub(k * k, k) + 41 == 71;
    assert {:fuel gcd, 12} gcd(71, 12) == 1;
    assert gcd(tsub(k * k, k) + 41, 2 * k) == 1;
  } else if k == 7 {
    assert tsub(k * k, k) + 41 == 83;
    assert {:fuel gcd, 12} gcd(83, 14) == 1;
    assert gcd(tsub(k * k, k) + 41, 2 * k) == 1;
  } else if k == 8 {
    assert tsub(k * k, k) + 41 == 97;
    assert {:fuel gcd, 12} gcd(97, 16) == 1;
    assert gcd(tsub(k * k, k) + 41, 2 * k) == 1;
  } else if k == 9 {
    assert tsub(k * k, k) + 41 == 113;
    assert {:fuel gcd, 12} gcd(113, 18) == 1;
    assert gcd(tsub(k * k, k) + 41, 2 * k) == 1;
  } else if k == 10 {
    assert tsub(k * k, k) + 41 == 131;
    assert {:fuel gcd, 12} gcd(131, 20) == 1;
    assert gcd(tsub(k * k, k) + 41, 2 * k) == 1;
  } else if k == 11 {
    assert tsub(k * k, k) + 41 == 151;
    assert {:fuel gcd, 12} gcd(151, 22) == 1;
    assert gcd(tsub(k * k, k) + 41, 2 * k) == 1;
  } else if k == 12 {
    assert tsub(k * k, k) + 41 == 173;
    assert {:fuel gcd, 12} gcd(173, 24) == 1;
    assert gcd(tsub(k * k, k) + 41, 2 * k) == 1;
  } else if k == 13 {
    assert tsub(k * k, k) + 41 == 197;
    assert {:fuel gcd, 12} gcd(197, 26) == 1;
    assert gcd(tsub(k * k, k) + 41, 2 * k) == 1;
  } else if k == 14 {
    assert tsub(k * k, k) + 41 == 223;
    assert {:fuel gcd, 12} gcd(223, 28) == 1;
    assert gcd(tsub(k * k, k) + 41, 2 * k) == 1;
  } else if k == 15 {
    assert tsub(k * k, k) + 41 == 251;
    assert {:fuel gcd, 12} gcd(251, 30) == 1;
    assert gcd(tsub(k * k, k) + 41, 2 * k) == 1;
  } else if k == 16 {
    assert tsub(k * k, k) + 41 == 281;
    assert {:fuel gcd, 12} gcd(281, 32) == 1;
    assert gcd(tsub(k * k, k) + 41, 2 * k) == 1;
  } else if k == 17 {
    assert tsub(k * k, k) + 41 == 313;
    assert {:fuel gcd, 12} gcd(313, 34) == 1;
    assert gcd(tsub(k * k, k) + 41, 2 * k) == 1;
  } else if k == 18 {
    assert tsub(k * k, k) + 41 == 347;
    assert {:fuel gcd, 12} gcd(347, 36) == 1;
    assert gcd(tsub(k * k, k) + 41, 2 * k) == 1;
  } else if k == 19 {
    assert tsub(k * k, k) + 41 == 383;
    assert {:fuel gcd, 12} gcd(383, 38) == 1;
    assert gcd(tsub(k * k, k) + 41, 2 * k) == 1;
  } else if k == 20 {
    assert tsub(k * k, k) + 41 == 421;
    assert {:fuel gcd, 12} gcd(421, 40) == 1;
    assert gcd(tsub(k * k, k) + 41, 2 * k) == 1;
  } else if k == 21 {
    assert tsub(k * k, k) + 41 == 461;
    assert {:fuel gcd, 12} gcd(461, 42) == 1;
    assert gcd(tsub(k * k, k) + 41, 2 * k) == 1;
  } else if k == 22 {
    assert tsub(k * k, k) + 41 == 503;
    assert {:fuel gcd, 12} gcd(503, 44) == 1;
    assert gcd(tsub(k * k, k) + 41, 2 * k) == 1;
  } else if k == 23 {
    assert tsub(k * k, k) + 41 == 547;
    assert {:fuel gcd, 12} gcd(547, 46) == 1;
    assert gcd(tsub(k * k, k) + 41, 2 * k) == 1;
  } else if k == 24 {
    assert tsub(k * k, k) + 41 == 593;
    assert {:fuel gcd, 12} gcd(593, 48) == 1;
    assert gcd(tsub(k * k, k) + 41, 2 * k) == 1;
  } else if k == 25 {
    assert tsub(k * k, k) + 41 == 641;
    assert {:fuel gcd, 12} gcd(641, 50) == 1;
    assert gcd(tsub(k * k, k) + 41, 2 * k) == 1;
  } else if k == 26 {
    assert tsub(k * k, k) + 41 == 691;
    assert {:fuel gcd, 12} gcd(691, 52) == 1;
    assert gcd(tsub(k * k, k) + 41, 2 * k) == 1;
  } else if k == 27 {
    assert tsub(k * k, k) + 41 == 743;
    assert {:fuel gcd, 12} gcd(743, 54) == 1;
    assert gcd(tsub(k * k, k) + 41, 2 * k) == 1;
  } else if k == 28 {
    assert tsub(k * k, k) + 41 == 797;
    assert {:fuel gcd, 12} gcd(797, 56) == 1;
    assert gcd(tsub(k * k, k) + 41, 2 * k) == 1;
  } else if k == 29 {
    assert tsub(k * k, k) + 41 == 853;
    assert {:fuel gcd, 12} gcd(853, 58) == 1;
    assert gcd(tsub(k * k, k) + 41, 2 * k) == 1;
  } else if k == 30 {
    assert tsub(k * k, k) + 41 == 911;
    assert {:fuel gcd, 12} gcd(911, 60) == 1;
    assert gcd(tsub(k * k, k) + 41, 2 * k) == 1;
  } else if k == 31 {
    assert tsub(k * k, k) + 41 == 971;
    assert {:fuel gcd, 12} gcd(971, 62) == 1;
    assert gcd(tsub(k * k, k) + 41, 2 * k) == 1;
  } else if k == 32 {
    assert tsub(k * k, k) + 41 == 1033;
    assert {:fuel gcd, 12} gcd(1033, 64) == 1;
    assert gcd(tsub(k * k, k) + 41, 2 * k) == 1;
  } else if k == 33 {
    assert tsub(k * k, k) + 41 == 1097;
    assert {:fuel gcd, 12} gcd(1097, 66) == 1;
    assert gcd(tsub(k * k, k) + 41, 2 * k) == 1;
  } else if k == 34 {
    assert tsub(k * k, k) + 41 == 1163;
    assert {:fuel gcd, 12} gcd(1163, 68) == 1;
    assert gcd(tsub(k * k, k) + 41, 2 * k) == 1;
  } else if k == 35 {
    assert tsub(k * k, k) + 41 == 1231;
    assert {:fuel gcd, 12} gcd(1231, 70) == 1;
    assert gcd(tsub(k * k, k) + 41, 2 * k) == 1;
  } else if k == 36 {
    assert tsub(k * k, k) + 41 == 1301;
    assert {:fuel gcd, 12} gcd(1301, 72) == 1;
    assert gcd(tsub(k * k, k) + 41, 2 * k) == 1;
  } else if k == 37 {
    assert tsub(k * k, k) + 41 == 1373;
    assert {:fuel gcd, 12} gcd(1373, 74) == 1;
    assert gcd(tsub(k * k, k) + 41, 2 * k) == 1;
  } else if k == 38 {
    assert tsub(k * k, k) + 41 == 1447;
    assert {:fuel gcd, 12} gcd(1447, 76) == 1;
    assert gcd(tsub(k * k, k) + 41, 2 * k) == 1;
  } else if k == 39 {
    assert tsub(k * k, k) + 41 == 1523;
    assert {:fuel gcd, 12} gcd(1523, 78) == 1;
    assert gcd(tsub(k * k, k) + 41, 2 * k) == 1;
  } else if k == 40 {
    assert tsub(k * k, k) + 41 == 1601;
    assert {:fuel gcd, 12} gcd(1601, 80) == 1;
    assert gcd(tsub(k * k, k) + 41, 2 * k) == 1;
  }
}

