// CLOSED — failing line mathd_numbertheory_618-396: theorem mathd_numbertheory_618, Dafny line 396 (OOR: Verification out of resource (mathd_numbertheory_618))
// failing Dafny line: assert false;
// Lean step: norm_num [h₀, Nat.gcd_eq_right, Nat.gcd_eq_left, Nat.gcd_eq_right] at h₄ ⊢
// hypotheses: 5 facts Z3 had at the line (0<n<=40, h0, 1<gcd(p(n),2n)); this variant also drops 14 hypotheses (the base file never pins n == K); nothing assumed beyond the facts in scope
// how it closes: pass2 — K3 + 40-way interval_cases on n: main body calls proved wrapper vc_mathd_numbertheory_618_L396_all (requires 0<n<=40, h0, 1<gcd(p(n),2n); ensures false) which dispatches `if n == K` to 40 proved case lemmas vc_mathd_numbertheory_618_L396_caseK (requires n==K, h0, 1<gcd(p(n),2n); ensures false; body = K2 evaluation K*K, tsub, gcd(p(K),2K)==1); base hypotheses do not fix n, so all 40 cases are discharged
// Dafny: Dafny program verifier finished with 613 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/mathd_numbertheory_618.dfy"
lemma {:induction false} vc_mathd_numbertheory_618_L396(n: int, n_0_0_0_1_0: int, n_0_0_0_1_0_1_0: int, p: nat -> nat, x_3_0_0_0__arg: nat, x_3_0_0_10__arg: nat, x_3_0_0_11__arg: nat, x_3_0_0_12__arg: nat, x_3_0_0_13__arg: nat, x_3_0_0_14__arg: nat, x_3_0_0_15__arg: nat, x_3_0_0_16__arg: nat, x_3_0_0_19__arg: nat, x_3_0_0_1__arg: nat, x_3_0_0_2__arg: nat, x_3_0_0_3__arg: nat, x_3_0_0_4__arg: nat, x_3_0_0_5__arg: nat, x_3_0_0_6__arg: nat, x_3_0_0_7__arg: nat, x_3_0_0_8__arg: nat, x_3_0_0_9__arg: nat, y_3_0_0_0__arg: nat, y_3_0_0_10__arg: nat, y_3_0_0_11__arg: nat, y_3_0_0_12__arg: nat, y_3_0_0_13__arg: nat, y_3_0_0_14__arg: nat, y_3_0_0_15__arg: nat, y_3_0_0_16__arg: nat, y_3_0_0_19__arg: nat, y_3_0_0_1__arg: nat, y_3_0_0_2__arg: nat, y_3_0_0_3__arg: nat, y_3_0_0_4__arg: nat, y_3_0_0_5__arg: nat, y_3_0_0_6__arg: nat, y_3_0_0_7__arg: nat, y_3_0_0_8__arg: nat, y_3_0_0_9__arg: nat)
  requires 0 <= n
  requires n > 0
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires 1 < gcd(p(n), 2 * n)
  requires n <= 40
  ensures   false /*VC_GAP*/
{
  // the hypotheses are contradictory for every n in 1..40 (proved case by case below), so the postcondition follows from false
  vc_mathd_numbertheory_618_L396_all(n, p);  // [ADDED]
}

// interval_cases n (1..40): the base hypotheses never pin n == K, so every case is dispatched to a proved case lemma
lemma {:induction false} vc_mathd_numbertheory_618_L396_all(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n && n > 0 && n <= 40 && (forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41) && 1 < gcd(p(n), 2 * n)
  ensures false
{
  if n == 1 { vc_mathd_numbertheory_618_L396_case1(n, p); }
  if n == 2 { vc_mathd_numbertheory_618_L396_case2(n, p); }
  if n == 3 { vc_mathd_numbertheory_618_L396_case3(n, p); }
  if n == 4 { vc_mathd_numbertheory_618_L396_case4(n, p); }
  if n == 5 { vc_mathd_numbertheory_618_L396_case5(n, p); }
  if n == 6 { vc_mathd_numbertheory_618_L396_case6(n, p); }
  if n == 7 { vc_mathd_numbertheory_618_L396_case7(n, p); }
  if n == 8 { vc_mathd_numbertheory_618_L396_case8(n, p); }
  if n == 9 { vc_mathd_numbertheory_618_L396_case9(n, p); }
  if n == 10 { vc_mathd_numbertheory_618_L396_case10(n, p); }
  if n == 11 { vc_mathd_numbertheory_618_L396_case11(n, p); }
  if n == 12 { vc_mathd_numbertheory_618_L396_case12(n, p); }
  if n == 13 { vc_mathd_numbertheory_618_L396_case13(n, p); }
  if n == 14 { vc_mathd_numbertheory_618_L396_case14(n, p); }
  if n == 15 { vc_mathd_numbertheory_618_L396_case15(n, p); }
  if n == 16 { vc_mathd_numbertheory_618_L396_case16(n, p); }
  if n == 17 { vc_mathd_numbertheory_618_L396_case17(n, p); }
  if n == 18 { vc_mathd_numbertheory_618_L396_case18(n, p); }
  if n == 19 { vc_mathd_numbertheory_618_L396_case19(n, p); }
  if n == 20 { vc_mathd_numbertheory_618_L396_case20(n, p); }
  if n == 21 { vc_mathd_numbertheory_618_L396_case21(n, p); }
  if n == 22 { vc_mathd_numbertheory_618_L396_case22(n, p); }
  if n == 23 { vc_mathd_numbertheory_618_L396_case23(n, p); }
  if n == 24 { vc_mathd_numbertheory_618_L396_case24(n, p); }
  if n == 25 { vc_mathd_numbertheory_618_L396_case25(n, p); }
  if n == 26 { vc_mathd_numbertheory_618_L396_case26(n, p); }
  if n == 27 { vc_mathd_numbertheory_618_L396_case27(n, p); }
  if n == 28 { vc_mathd_numbertheory_618_L396_case28(n, p); }
  if n == 29 { vc_mathd_numbertheory_618_L396_case29(n, p); }
  if n == 30 { vc_mathd_numbertheory_618_L396_case30(n, p); }
  if n == 31 { vc_mathd_numbertheory_618_L396_case31(n, p); }
  if n == 32 { vc_mathd_numbertheory_618_L396_case32(n, p); }
  if n == 33 { vc_mathd_numbertheory_618_L396_case33(n, p); }
  if n == 34 { vc_mathd_numbertheory_618_L396_case34(n, p); }
  if n == 35 { vc_mathd_numbertheory_618_L396_case35(n, p); }
  if n == 36 { vc_mathd_numbertheory_618_L396_case36(n, p); }
  if n == 37 { vc_mathd_numbertheory_618_L396_case37(n, p); }
  if n == 38 { vc_mathd_numbertheory_618_L396_case38(n, p); }
  if n == 39 { vc_mathd_numbertheory_618_L396_case39(n, p); }
  if n == 40 { vc_mathd_numbertheory_618_L396_case40(n, p); }
}

// interval_cases n := 1: norm_num [h0] evaluates gcd(p(1), 2*1) = gcd(41, 2) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case1(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 1
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 1 * 1 == 1;  // K2: isNat_pow 1^2 = 1
  assert tsub(1, 1) == 0;  // K2: isNat_natSub 1 - 1 = 0
  assert gcd(41, 2) == 1;  // K2: isNat_gcd gcd 41 2 = 1
}

// interval_cases n := 2: norm_num [h0] evaluates gcd(p(2), 2*2) = gcd(43, 4) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case2(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 2
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 2 * 2 == 4;  // K2: isNat_pow 2^2 = 4
  assert tsub(4, 2) == 2;  // K2: isNat_natSub 4 - 2 = 2
  assert gcd(43, 4) == 1;  // K2: isNat_gcd gcd 43 4 = 1
}

// interval_cases n := 3: norm_num [h0] evaluates gcd(p(3), 2*3) = gcd(47, 6) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case3(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 3
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 3 * 3 == 9;  // K2: isNat_pow 3^2 = 9
  assert tsub(9, 3) == 6;  // K2: isNat_natSub 9 - 3 = 6
  assert gcd(47, 6) == 1;  // K2: isNat_gcd gcd 47 6 = 1
}

// interval_cases n := 4: norm_num [h0] evaluates gcd(p(4), 2*4) = gcd(53, 8) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case4(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 4
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 4 * 4 == 16;  // K2: isNat_pow 4^2 = 16
  assert tsub(16, 4) == 12;  // K2: isNat_natSub 16 - 4 = 12
  assert gcd(53, 8) == 1;  // K2: isNat_gcd gcd 53 8 = 1
}

// interval_cases n := 5: norm_num [h0] evaluates gcd(p(5), 2*5) = gcd(61, 10) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case5(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 5
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 5 * 5 == 25;  // K2: isNat_pow 5^2 = 25
  assert tsub(25, 5) == 20;  // K2: isNat_natSub 25 - 5 = 20
  assert gcd(61, 10) == 1;  // K2: isNat_gcd gcd 61 10 = 1
}

// interval_cases n := 6: norm_num [h0] evaluates gcd(p(6), 2*6) = gcd(71, 12) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case6(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 6
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 6 * 6 == 36;  // K2: isNat_pow 6^2 = 36
  assert tsub(36, 6) == 30;  // K2: isNat_natSub 36 - 6 = 30
  assert gcd(71, 12) == 1;  // K2: isNat_gcd gcd 71 12 = 1
}

// interval_cases n := 7: norm_num [h0] evaluates gcd(p(7), 2*7) = gcd(83, 14) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case7(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 7
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 7 * 7 == 49;  // K2: isNat_pow 7^2 = 49
  assert tsub(49, 7) == 42;  // K2: isNat_natSub 49 - 7 = 42
  assert gcd(83, 14) == 1;  // K2: isNat_gcd gcd 83 14 = 1
}

// interval_cases n := 8: norm_num [h0] evaluates gcd(p(8), 2*8) = gcd(97, 16) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case8(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 8
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 8 * 8 == 64;  // K2: isNat_pow 8^2 = 64
  assert tsub(64, 8) == 56;  // K2: isNat_natSub 64 - 8 = 56
  assert gcd(97, 16) == 1;  // K2: isNat_gcd gcd 97 16 = 1
}

// interval_cases n := 9: norm_num [h0] evaluates gcd(p(9), 2*9) = gcd(113, 18) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case9(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 9
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 9 * 9 == 81;  // K2: isNat_pow 9^2 = 81
  assert tsub(81, 9) == 72;  // K2: isNat_natSub 81 - 9 = 72
  assert gcd(113, 18) == 1;  // K2: isNat_gcd gcd 113 18 = 1
}

// interval_cases n := 10: norm_num [h0] evaluates gcd(p(10), 2*10) = gcd(131, 20) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case10(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 10
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 10 * 10 == 100;  // K2: isNat_pow 10^2 = 100
  assert tsub(100, 10) == 90;  // K2: isNat_natSub 100 - 10 = 90
  assert gcd(131, 20) == 1;  // K2: isNat_gcd gcd 131 20 = 1
}

// interval_cases n := 11: norm_num [h0] evaluates gcd(p(11), 2*11) = gcd(151, 22) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case11(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 11
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 11 * 11 == 121;  // K2: isNat_pow 11^2 = 121
  assert tsub(121, 11) == 110;  // K2: isNat_natSub 121 - 11 = 110
  assert gcd(151, 22) == 1;  // K2: isNat_gcd gcd 151 22 = 1
}

// interval_cases n := 12: norm_num [h0] evaluates gcd(p(12), 2*12) = gcd(173, 24) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case12(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 12
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 12 * 12 == 144;  // K2: isNat_pow 12^2 = 144
  assert tsub(144, 12) == 132;  // K2: isNat_natSub 144 - 12 = 132
  assert gcd(173, 24) == 1;  // K2: isNat_gcd gcd 173 24 = 1
}

// interval_cases n := 13: norm_num [h0] evaluates gcd(p(13), 2*13) = gcd(197, 26) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case13(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 13
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 13 * 13 == 169;  // K2: isNat_pow 13^2 = 169
  assert tsub(169, 13) == 156;  // K2: isNat_natSub 169 - 13 = 156
  assert gcd(197, 26) == 1;  // K2: isNat_gcd gcd 197 26 = 1
}

// interval_cases n := 14: norm_num [h0] evaluates gcd(p(14), 2*14) = gcd(223, 28) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case14(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 14
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 14 * 14 == 196;  // K2: isNat_pow 14^2 = 196
  assert tsub(196, 14) == 182;  // K2: isNat_natSub 196 - 14 = 182
  assert gcd(223, 28) == 1;  // K2: isNat_gcd gcd 223 28 = 1
}

// interval_cases n := 15: norm_num [h0] evaluates gcd(p(15), 2*15) = gcd(251, 30) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case15(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 15
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 15 * 15 == 225;  // K2: isNat_pow 15^2 = 225
  assert tsub(225, 15) == 210;  // K2: isNat_natSub 225 - 15 = 210
  assert gcd(251, 30) == 1;  // K2: isNat_gcd gcd 251 30 = 1
}

// interval_cases n := 16: norm_num [h0] evaluates gcd(p(16), 2*16) = gcd(281, 32) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case16(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 16
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 16 * 16 == 256;  // K2: isNat_pow 16^2 = 256
  assert tsub(256, 16) == 240;  // K2: isNat_natSub 256 - 16 = 240
  assert gcd(281, 32) == 1;  // K2: isNat_gcd gcd 281 32 = 1
}

// interval_cases n := 17: norm_num [h0] evaluates gcd(p(17), 2*17) = gcd(313, 34) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case17(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 17
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 17 * 17 == 289;  // K2: isNat_pow 17^2 = 289
  assert tsub(289, 17) == 272;  // K2: isNat_natSub 289 - 17 = 272
  assert gcd(313, 34) == 1;  // K2: isNat_gcd gcd 313 34 = 1
}

// interval_cases n := 18: norm_num [h0] evaluates gcd(p(18), 2*18) = gcd(347, 36) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case18(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 18
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 18 * 18 == 324;  // K2: isNat_pow 18^2 = 324
  assert tsub(324, 18) == 306;  // K2: isNat_natSub 324 - 18 = 306
  assert gcd(347, 36) == 1;  // K2: isNat_gcd gcd 347 36 = 1
}

// interval_cases n := 19: norm_num [h0] evaluates gcd(p(19), 2*19) = gcd(383, 38) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case19(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 19
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 19 * 19 == 361;  // K2: isNat_pow 19^2 = 361
  assert tsub(361, 19) == 342;  // K2: isNat_natSub 361 - 19 = 342
  assert gcd(383, 38) == 1;  // K2: isNat_gcd gcd 383 38 = 1
}

// interval_cases n := 20: norm_num [h0] evaluates gcd(p(20), 2*20) = gcd(421, 40) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case20(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 20
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 20 * 20 == 400;  // K2: isNat_pow 20^2 = 400
  assert tsub(400, 20) == 380;  // K2: isNat_natSub 400 - 20 = 380
  assert gcd(421, 40) == 1;  // K2: isNat_gcd gcd 421 40 = 1
}

// interval_cases n := 21: norm_num [h0] evaluates gcd(p(21), 2*21) = gcd(461, 42) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case21(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 21
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 21 * 21 == 441;  // K2: isNat_pow 21^2 = 441
  assert tsub(441, 21) == 420;  // K2: isNat_natSub 441 - 21 = 420
  assert gcd(461, 42) == 1;  // K2: isNat_gcd gcd 461 42 = 1
}

// interval_cases n := 22: norm_num [h0] evaluates gcd(p(22), 2*22) = gcd(503, 44) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case22(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 22
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 22 * 22 == 484;  // K2: isNat_pow 22^2 = 484
  assert tsub(484, 22) == 462;  // K2: isNat_natSub 484 - 22 = 462
  assert gcd(503, 44) == 1;  // K2: isNat_gcd gcd 503 44 = 1
}

// interval_cases n := 23: norm_num [h0] evaluates gcd(p(23), 2*23) = gcd(547, 46) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case23(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 23
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 23 * 23 == 529;  // K2: isNat_pow 23^2 = 529
  assert tsub(529, 23) == 506;  // K2: isNat_natSub 529 - 23 = 506
  assert gcd(547, 46) == 1;  // K2: isNat_gcd gcd 547 46 = 1
}

// interval_cases n := 24: norm_num [h0] evaluates gcd(p(24), 2*24) = gcd(593, 48) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case24(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 24
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 24 * 24 == 576;  // K2: isNat_pow 24^2 = 576
  assert tsub(576, 24) == 552;  // K2: isNat_natSub 576 - 24 = 552
  assert gcd(593, 48) == 1;  // K2: isNat_gcd gcd 593 48 = 1
}

// interval_cases n := 25: norm_num [h0] evaluates gcd(p(25), 2*25) = gcd(641, 50) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case25(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 25
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 25 * 25 == 625;  // K2: isNat_pow 25^2 = 625
  assert tsub(625, 25) == 600;  // K2: isNat_natSub 625 - 25 = 600
  assert gcd(641, 50) == 1;  // K2: isNat_gcd gcd 641 50 = 1
}

// interval_cases n := 26: norm_num [h0] evaluates gcd(p(26), 2*26) = gcd(691, 52) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case26(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 26
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 26 * 26 == 676;  // K2: isNat_pow 26^2 = 676
  assert tsub(676, 26) == 650;  // K2: isNat_natSub 676 - 26 = 650
  assert gcd(691, 52) == 1;  // K2: isNat_gcd gcd 691 52 = 1
}

// interval_cases n := 27: norm_num [h0] evaluates gcd(p(27), 2*27) = gcd(743, 54) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case27(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 27
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 27 * 27 == 729;  // K2: isNat_pow 27^2 = 729
  assert tsub(729, 27) == 702;  // K2: isNat_natSub 729 - 27 = 702
  assert gcd(743, 54) == 1;  // K2: isNat_gcd gcd 743 54 = 1
}

// interval_cases n := 28: norm_num [h0] evaluates gcd(p(28), 2*28) = gcd(797, 56) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case28(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 28
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 28 * 28 == 784;  // K2: isNat_pow 28^2 = 784
  assert tsub(784, 28) == 756;  // K2: isNat_natSub 784 - 28 = 756
  assert gcd(797, 56) == 1;  // K2: isNat_gcd gcd 797 56 = 1
}

// interval_cases n := 29: norm_num [h0] evaluates gcd(p(29), 2*29) = gcd(853, 58) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case29(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 29
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 29 * 29 == 841;  // K2: isNat_pow 29^2 = 841
  assert tsub(841, 29) == 812;  // K2: isNat_natSub 841 - 29 = 812
  assert gcd(853, 58) == 1;  // K2: isNat_gcd gcd 853 58 = 1
}

// interval_cases n := 30: norm_num [h0] evaluates gcd(p(30), 2*30) = gcd(911, 60) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case30(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 30
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 30 * 30 == 900;  // K2: isNat_pow 30^2 = 900
  assert tsub(900, 30) == 870;  // K2: isNat_natSub 900 - 30 = 870
  assert gcd(911, 60) == 1;  // K2: isNat_gcd gcd 911 60 = 1
}

// interval_cases n := 31: norm_num [h0] evaluates gcd(p(31), 2*31) = gcd(971, 62) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case31(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 31
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 31 * 31 == 961;  // K2: isNat_pow 31^2 = 961
  assert tsub(961, 31) == 930;  // K2: isNat_natSub 961 - 31 = 930
  assert gcd(971, 62) == 1;  // K2: isNat_gcd gcd 971 62 = 1
}

// interval_cases n := 32: norm_num [h0] evaluates gcd(p(32), 2*32) = gcd(1033, 64) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case32(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 32
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 32 * 32 == 1024;  // K2: isNat_pow 32^2 = 1024
  assert tsub(1024, 32) == 992;  // K2: isNat_natSub 1024 - 32 = 992
  assert gcd(1033, 64) == 1;  // K2: isNat_gcd gcd 1033 64 = 1
}

// interval_cases n := 33: norm_num [h0] evaluates gcd(p(33), 2*33) = gcd(1097, 66) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case33(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 33
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 33 * 33 == 1089;  // K2: isNat_pow 33^2 = 1089
  assert tsub(1089, 33) == 1056;  // K2: isNat_natSub 1089 - 33 = 1056
  assert gcd(1097, 66) == 1;  // K2: isNat_gcd gcd 1097 66 = 1
}

// interval_cases n := 34: norm_num [h0] evaluates gcd(p(34), 2*34) = gcd(1163, 68) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case34(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 34
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 34 * 34 == 1156;  // K2: isNat_pow 34^2 = 1156
  assert tsub(1156, 34) == 1122;  // K2: isNat_natSub 1156 - 34 = 1122
  assert gcd(1163, 68) == 1;  // K2: isNat_gcd gcd 1163 68 = 1
}

// interval_cases n := 35: norm_num [h0] evaluates gcd(p(35), 2*35) = gcd(1231, 70) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case35(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 35
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 35 * 35 == 1225;  // K2: isNat_pow 35^2 = 1225
  assert tsub(1225, 35) == 1190;  // K2: isNat_natSub 1225 - 35 = 1190
  assert gcd(1231, 70) == 1;  // K2: isNat_gcd gcd 1231 70 = 1
}

// interval_cases n := 36: norm_num [h0] evaluates gcd(p(36), 2*36) = gcd(1301, 72) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case36(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 36
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 36 * 36 == 1296;  // K2: isNat_pow 36^2 = 1296
  assert tsub(1296, 36) == 1260;  // K2: isNat_natSub 1296 - 36 = 1260
  assert gcd(1301, 72) == 1;  // K2: isNat_gcd gcd 1301 72 = 1
}

// interval_cases n := 37: norm_num [h0] evaluates gcd(p(37), 2*37) = gcd(1373, 74) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case37(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 37
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 37 * 37 == 1369;  // K2: isNat_pow 37^2 = 1369
  assert tsub(1369, 37) == 1332;  // K2: isNat_natSub 1369 - 37 = 1332
  assert gcd(1373, 74) == 1;  // K2: isNat_gcd gcd 1373 74 = 1
}

// interval_cases n := 38: norm_num [h0] evaluates gcd(p(38), 2*38) = gcd(1447, 76) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case38(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 38
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 38 * 38 == 1444;  // K2: isNat_pow 38^2 = 1444
  assert tsub(1444, 38) == 1406;  // K2: isNat_natSub 1444 - 38 = 1406
  assert gcd(1447, 76) == 1;  // K2: isNat_gcd gcd 1447 76 = 1
}

// interval_cases n := 39: norm_num [h0] evaluates gcd(p(39), 2*39) = gcd(1523, 78) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case39(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 39
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 39 * 39 == 1521;  // K2: isNat_pow 39^2 = 1521
  assert tsub(1521, 39) == 1482;  // K2: isNat_natSub 1521 - 39 = 1482
  assert gcd(1523, 78) == 1;  // K2: isNat_gcd gcd 1523 78 = 1
}

// interval_cases n := 40: norm_num [h0] evaluates gcd(p(40), 2*40) = gcd(1601, 80) = 1, contradicting h4
lemma {:induction false} vc_mathd_numbertheory_618_L396_case40(n: int, p: nat -> nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires n == 40
  requires 1 < gcd(p(n), 2 * n)
  ensures false
{
  assert 40 * 40 == 1600;  // K2: isNat_pow 40^2 = 1600
  assert tsub(1600, 40) == 1560;  // K2: isNat_natSub 1600 - 40 = 1560
  assert gcd(1601, 80) == 1;  // K2: isNat_gcd gcd 1601 80 = 1
}

