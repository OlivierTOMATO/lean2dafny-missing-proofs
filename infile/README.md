# In-file confirmation of the closed lines

For every CLOSED line the closed lemma was put back into the source theorem file and called **at the failing line** (`infile/<id>/<theorem>.dfy`, lines marked `/* [IN-FILE CHECK] */`): one `assert` per `requires` of the lemma (its parameters replaced by the file’s variables), then the lemma call, then the original failing line. Dafny verifies exactly those lines in the real context (`--isolate-assertions --filter-position`, same resource limit as the corpus runs). Two questions are answered per line:

1. **PRE** — is every hypothesis of the closed lemma provable at that point of the file? (per `requires`: ok / FAIL / OOR)

2. **LINE** — does the failing line verify once the lemma’s conclusion is available?

Not done here: re-verifying the whole method after the insertion (regression check on later obligations).

Lemma parameters that have no name at the line (vc_extract’s lemma-argument temporaries `x__arg`, skolem copies `x_14`) are dropped together with the `requires` that mention them; the reduced lemma must still verify standalone, otherwise the line is UNSUPPORTED. Shadow copies `n_1_0` of a file variable are mapped to that variable (or to the expression a `requires n_1_0_0 == n - 1` defines); lines where such a guess was needed are marked “(guessed names)”.

## Result

| status | lines | meaning |
|---|---:|---|
| CONFIRMED | 253 | passes both checks: every hypothesis is provable at the line and the line verifies with the lemma’s conclusion (the rest of the method is NOT re-verified: the added facts could still push later obligations out of resource) |
| LINE_OK_PRE_FAIL | 68 | given its hypotheses the lemma proves the line (Dafny assumes an assert after checking it, so LINE is conditional here), but at least one hypothesis is not provable at that point (FAIL = Dafny cannot prove the re-stated fact there: a Z3-side derived form of a context fact, or a variable mapping the checker could not establish; OOR = the context is too heavy even to re-check a known fact) |
| LINE_FAIL | 39 | the line still fails with the lemma’s conclusion available: the lemma states the obligation in Z3’s spelling (`0.0 - 1.0` for `-(1.0)`, `true ==` for `<==>`, renamed bound variables) which the file’s assertion does not match syntactically, or the context runs out of resource whatever is added |
| UNSUPPORTED | 49 | the check could not be built (parameters with no name at the line, parse of the extracted clauses) — nothing claimed |

### PRE failures by kind
| kind | lines |
|---|---:|
| OOR only | 44 |
| FAIL | 24 |

### LINE failures by Dafny message
| message | lines |
|---|---:|
| OOR | 24 |
| assertion might not hold | 14 |
| cannot establish the existence of LHS values  | 1 |

### By how the line was closed
| closed by | CONFIRMED | LINE_OK_PRE_FAIL | LINE_FAIL | UNSUPPORTED |
|---|---:|---:|---:|---:|
| K-kind | 107 | 8 | 13 | 14 |
| own lemma (H0) | 25 | 42 | 2 | 14 |
| pass-2 (agent) | 94 | 12 | 24 | 18 |
| pow library | 27 | 6 | 0 | 3 |

## Per line
Open `infile/<id>/<theorem>.dfy` at the first inserted line; the requires-asserts, the call and the failing line follow. `.out` next to it is Dafny’s output.

| line | closed by | status | inserted at | requires (ok/bad) | PRE detail | LINE message |
|---|---|---|---:|---:|---|---|
| aime_1983_p1-507 | H0 | CONFIRMED | 532 | 18/0 |  |  |
| aime_1983_p1-1057 | K5 | CONFIRMED | 1077 | 27/0 |  |  |
| aime_1983_p3-274 | S_instarg_sqrtnone | CONFIRMED | 274 | 3/0 |  |  |
| aime_1983_p3-507 | L_sqrtle0 | CONFIRMED | 507 | 6/0 |  |  |
| aime_1983_p3-856 | pass2 | UNSUPPORTED | | | insertion does not resolve/parse: closeparen expected (line 938) | |
| aime_1984_p1-35 | K4 | CONFIRMED | 38 | 9/0 |  |  |
| aime_1984_p1-62 | K4 | CONFIRMED | 62 | 26/0 |  [dropped 1 unnamed params / 1 requires] |  |
| aime_1984_p1-82 | K2K4 | CONFIRMED | 84 | 0/0 |  |  |
| aime_1984_p1-90 | K4 | CONFIRMED | 92 | 0/0 |  |  |
| aime_1984_p1-98 | K4b | CONFIRMED | 100 | 0/0 |  |  |
| aime_1984_p1-106 | K2K4 | CONFIRMED | 108 | 0/0 |  |  |
| aime_1984_p1-114 | K4b | CONFIRMED | 116 | 0/0 |  |  |
| aime_1984_p1-123 | K4b | CONFIRMED | 124 | 0/0 |  |  |
| aime_1984_p1-175 | S_K3 | CONFIRMED | 179 | 0/0 |  |  |
| aime_1984_p1-180 | K5 | CONFIRMED | 187 | 20/0 |  |  |
| aime_1984_p1-192 | S2 | CONFIRMED | 192 | 19/0 |  |  |
| aime_1984_p1-408 | K3K4b | CONFIRMED | 428 | 1/0 |  |  |
| aime_1984_p1-466 | S_K3 | CONFIRMED | 470 | 0/0 |  |  |
| aime_1984_p1-471 | K5 | LINE_OK_PRE_FAIL | 478 | 21/1 | OOR: `forall n_1: int :: 0 <= n_1 ==> u(n_1 + 1) == Rat.add(u(n_1), Rat.of_i` |  |
| aime_1984_p1-484 | S2_K3 | CONFIRMED | 484 | 0/0 |  |  |
| aime_1984_p1-596 | K3K4b | CONFIRMED | 599 | 0/0 |  |  |
| aime_1987_p5-452 | H0 | CONFIRMED | 486 | 2/0 |  |  |
| aime_1987_p5-495 | K4K5 | CONFIRMED | 505 | 3/0 |  |  |
| aime_1987_p5-594 | K4 | CONFIRMED | 594 | 6/0 |  |  |
| aime_1987_p5-641 | K4 | CONFIRMED | 641 | 7/0 |  |  |
| aime_1990_p4-205 | H0 | CONFIRMED | 205 | 9/0 |  |  |
| aime_1999_p11-177 | pass2 | CONFIRMED | 178 | 2/0 |  |  |
| aime_1999_p11-187 | pass2 | CONFIRMED | 189 | 2/0 |  |  |
| aime_1999_p11-224 | K1 | CONFIRMED | 224 | 8/0 |  |  |
| aime_1999_p11-938 | pass2 | CONFIRMED | 1083 | 16/0 |  |  |
| aime_1999_p11-1161 | pass2 | CONFIRMED | 1187 | 20/0 |  |  |
| aime_1999_p11-1170 | K4 | CONFIRMED | 1170 | 20/0 |  |  |
| aime_1999_p11-1192 | K5 | CONFIRMED | 1192 | 18/0 |  |  |
| algebra_9onxpypzleqsum2onxpy-471 | K2 | CONFIRMED | 575 | 5/0 |  |  |
| algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2-40 | pass2 | CONFIRMED | 41 | 2/0 |  |  |
| algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2-51 | pass2 | CONFIRMED | 52 | 2/0 |  |  |
| algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2-62 | pass2 | CONFIRMED | 63 | 2/0 |  |  |
| algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2-945 | K2 | CONFIRMED | 1004 | 14/0 |  |  |
| algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2-949 | H0 | CONFIRMED | 1003 | 15/0 |  |  |
| algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2-1550 | pass2 | CONFIRMED | 1698 | 10/0 |  |  |
| algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2-1620 | pass2 | CONFIRMED | 1620 | 0/0 |  |  |
| algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2-1725 | H0 | LINE_OK_PRE_FAIL | 1740 | 19/1 | FAIL: `2.0 * Real.sqrt(2.0) * (3.0 / 4.0) <= 2.0 * Real.sqrt(2.0) * (Real.div` |  |
| algebra_absapbon1pabsapbleqsumabsaon1pabsa-312 | pass2 | CONFIRMED | 312 | 8/0 |  |  |
| algebra_amgm_sumasqdivbgeqsuma-803 | K3 | CONFIRMED | 803 | 2/0 |  |  |
| algebra_amgm_sumasqdivbgeqsuma-845 | pass2 | CONFIRMED | 845 | 0/0 |  |  |
| algebra_apbon2pownleqapownpbpowon2-91 | pass2 | CONFIRMED | 92 | 2/0 |  |  |
| algebra_apbon2pownleqapownpbpowon2-142 | pass2 | CONFIRMED | 143 | 2/0 |  |  |
| algebra_apbon2pownleqapownpbpowon2-302 | H0 | LINE_OK_PRE_FAIL | 302 | 19/1 | FAIL: `Real.pow((a + b) / 2.0, n) * ((a + b) / 2.0) <= (Real.pow(a, n) + Real` |  |
| algebra_apbon2pownleqapownpbpowon2-360 | H0 | CONFIRMED | 395 | 25/0 | call: Verification out of resource (induction_helper_1) |  |
| algebra_apbpceq2_abpbcpcaeq1_aleq1on3anbleq1ancleq4on3-799 | H0 | CONFIRMED | 799 | 35/0 |  |  |
| algebra_apbpceq2_abpbcpcaeq1_aleq1on3anbleq1ancleq4on3-1502 | H0 | CONFIRMED | 1546 | 25/0 |  |  |
| algebra_bleqa_apbon2msqrtableqambsqon8b-192 | S | CONFIRMED | 278 | 16/0 |  |  |
| algebra_bleqa_apbon2msqrtableqambsqon8b-222 | S | CONFIRMED | 258 | 21/0 |  |  |
| algebra_bleqa_apbon2msqrtableqambsqon8b-231 | H0 | LINE_OTHER_OBLIGATION | 231 | 16/0 |  | a precondition for this call could not be proved |
| algebra_bleqa_apbon2msqrtableqambsqon8b-329 | H0 | CONFIRMED | 329 | 16/0 |  |  |
| algebra_others_exirrpowirrrat-198 | S | CONFIRMED | 198 | 8/0 |  |  |
| algebra_sum1onsqrt2to1onsqrt10000lt198-167 | pass2 | CONFIRMED | 175 | 6/0 |  [dropped 1 unnamed params / 1 requires] |  |
| algebra_sum1onsqrt2to1onsqrt10000lt198-212 | K1 | CONFIRMED | 212 | 14/0 |  [dropped 4 unnamed params / 14 requires] |  |
| algebra_sum1onsqrt2to1onsqrt10000lt198-213 | pass2 | CONFIRMED | 213 | 16/0 |  [dropped 4 unnamed params / 14 requires] |  |
| algebra_sum1onsqrt2to1onsqrt10000lt198-462 | K2 | CONFIRMED | 517 | 22/0 |  |  |
| amc12_2000_p20-483 | pass2 | CONFIRMED | 484 | 1/0 |  |  |
| amc12_2000_p20-493 | pass2 | CONFIRMED | 494 | 1/0 |  |  |
| amc12_2001_p5-11 | pass2 | LINE_FAIL | 13 | 0/0 |  [dropped 1 unnamed params / 0 requires] | Verification out of resource (amc12_2001_p5) |
| amc12_2001_p5-31 | pass2 | LINE_OK_PRE_FAIL | 51 | 0/1 | OOR: `forall x_1_0_0_0_1: nat :: true ==> !Even(x_1_0_0_0_1) == (x_1_0_0_0_1` [dropped 2 unnamed params / 1 requires] |  |
| amc12_2001_p5-38 | pass2 | LINE_FAIL | 40 | 1/0 |  | Verification out of resource (amc12_2001_p5) |
| amc12a_2003_p25-28 | pass2 | LINE_FAIL | 28 | 3/2 | FAIL: `forall x_1: real :: f(x_1) == Real.sqrt(a * (x_1 * x_1) + b * x_1)`; FAIL: `forall x_19: real :: true == (exists x_1_17: real :: Real.sqrt(a * (x_` [dropped 4 unnamed params / 1 requires] | assertion might not hold |
| amc12a_2003_p25-34 | pass2 | LINE_FAIL | 34 | 2/4 | FAIL: `forall x_1: real :: f(x_1) == Real.sqrt(a * (x_1 * x_1) + b * x_1)`; FAIL: `forall x_19: real :: true == (exists x_1_17: real :: Real.sqrt(a * (x_` [dropped 4 unnamed params / 4 requires] | assertion might not hold |
| amc12a_2003_p25-40 | pass2 | LINE_FAIL | 40 | 2/6 | FAIL: `forall x_1: real :: f(x_1) == Real.sqrt(a * (x_1 * x_1) + b * x_1)`; FAIL: `forall x_19: real :: true == (exists x_1_17: real :: Real.sqrt(a * (x_` [dropped 4 unnamed params / 4 requires] | assertion might not hold |
| amc12a_2003_p25-43 | pass2 | LINE_FAIL | 43 | 2/7 | FAIL: `forall x_1: real :: f(x_1) == Real.sqrt(a * (x_1 * x_1) + b * x_1)`; FAIL: `forall x_19: real :: true == (exists x_1_17: real :: Real.sqrt(a * (x_` [dropped 4 unnamed params / 4 requires] | assertion might not hold |
| amc12a_2003_p25-44 | pass2 | LINE_FAIL | 44 | 2/8 | FAIL: `forall x_1: real :: f(x_1) == Real.sqrt(a * (x_1 * x_1) + b * x_1)`; FAIL: `forall x_19: real :: true == (exists x_1_17: real :: Real.sqrt(a * (x_` [dropped 4 unnamed params / 4 requires] | assertion might not hold |
| amc12a_2003_p25-45 | pass2 | LINE_FAIL | 45 | 2/9 | FAIL: `forall x_1: real :: f(x_1) == Real.sqrt(a * (x_1 * x_1) + b * x_1)`; FAIL: `forall x_19: real :: true == (exists x_1_17: real :: Real.sqrt(a * (x_` [dropped 4 unnamed params / 4 requires] | assertion might not hold |
| amc12a_2003_p25-46 | pass2 | LINE_FAIL | 46 | 2/10 | FAIL: `forall x_1: real :: f(x_1) == Real.sqrt(a * (x_1 * x_1) + b * x_1)`; FAIL: `forall x_19: real :: true == (exists x_1_17: real :: Real.sqrt(a * (x_` [dropped 4 unnamed params / 4 requires] | assertion might not hold |
| amc12a_2003_p25-47 | K5 | LINE_FAIL | 47 | 2/11 | FAIL: `forall x_1: real :: f(x_1) == Real.sqrt(a * (x_1 * x_1) + b * x_1)`; FAIL: `forall x_19: real :: true == (exists x_1_17: real :: Real.sqrt(a * (x_` [dropped 4 unnamed params / 4 requires] | assertion might not hold |
| amc12a_2003_p25-49 | K5 | LINE_FAIL | 55 | 2/13 | FAIL: `forall x_1: real :: f(x_1) == Real.sqrt(a * (x_1 * x_1) + b * x_1)`; FAIL: `forall x_19: real :: true == (exists x_1_17: real :: Real.sqrt(a * (x_` [dropped 4 unnamed params / 4 requires] | assertion might not hold |
| amc12a_2003_p25-51 | K5 | LINE_FAIL | 51 | 2/12 | FAIL: `forall x_1: real :: f(x_1) == Real.sqrt(a * (x_1 * x_1) + b * x_1)`; FAIL: `forall x_19: real :: true == (exists x_1_17: real :: Real.sqrt(a * (x_` [dropped 4 unnamed params / 4 requires] | assertion might not hold |
| amc12a_2003_p25-58 | K5 | LINE_FAIL | 64 | 2/14 | FAIL: `forall x_1: real :: f(x_1) == Real.sqrt(a * (x_1 * x_1) + b * x_1)`; FAIL: `forall x_19: real :: true == (exists x_1_17: real :: Real.sqrt(a * (x_` [dropped 4 unnamed params / 4 requires] | assertion might not hold |
| amc12a_2003_p25-60 | pass2 | LINE_OK_PRE_FAIL | 60 | 2/5 | FAIL: `forall x_1: real :: f(x_1) == Real.sqrt(a * (x_1 * x_1) + b * x_1)`; FAIL: `forall x_19: real :: true == (exists x_1_17: real :: Real.sqrt(a * (x_` [dropped 4 unnamed params / 4 requires] |  |
| amc12a_2003_p25-72 | K5 | LINE_FAIL | 72 | 2/14 | FAIL: `forall x_1: real :: f(x_1) == Real.sqrt(a * (x_1 * x_1) + b * x_1)`; FAIL: `forall x_19: real :: true == (exists x_1_17: real :: Real.sqrt(a * (x_` [dropped 4 unnamed params / 4 requires] | assertion might not hold |
| amc12a_2003_p25-81 | K5 | LINE_FAIL | 81 | 4/15 | FAIL: `forall x_1: real :: f(x_1) == Real.sqrt(a * (x_1 * x_1) + b * x_1)`; FAIL: `forall x_19: real :: true == (exists x_1_17: real :: Real.sqrt(a * (x_` [dropped 4 unnamed params / 4 requires] | assertion might not hold |
| amc12a_2003_p25-82 | K5 | LINE_FAIL | 82 | 4/16 | FAIL: `forall x_1: real :: f(x_1) == Real.sqrt(a * (x_1 * x_1) + b * x_1)`; FAIL: `forall x_19: real :: true == (exists x_1_17: real :: Real.sqrt(a * (x_` [dropped 4 unnamed params / 4 requires] | cannot establish the existence of LHS values that satisfy th |
| amc12a_2003_p25-90 | K5 | LINE_OK_PRE_FAIL | 90 | 3/18 | FAIL: `forall x_1: real :: f(x_1) == Real.sqrt(a * (x_1 * x_1) + b * x_1)`; FAIL: `forall x_19: real :: true == (exists x_1_17: real :: Real.sqrt(a * (x_` [dropped 5 unnamed params / 5 requires] |  |
| amc12a_2003_p25-91 | K5 | LINE_OK_PRE_FAIL | 91 | 4/18 | FAIL: `forall x_1: real :: f(x_1) == Real.sqrt(a * (x_1 * x_1) + b * x_1)`; FAIL: `forall x_19: real :: true == (exists x_1_17: real :: Real.sqrt(a * (x_` [dropped 5 unnamed params / 5 requires] |  |
| amc12a_2008_p4-12 | pass2 | CONFIRMED | 13 | 0/0 |  |  |
| amc12a_2008_p4-22 | K4 | CONFIRMED | 30 | 9/0 |  |  |
| amc12a_2008_p4-28 | SIMPLE | CONFIRMED | 28 | 8/0 |  |  |
| amc12a_2009_p15-32 | K3K5b | CONFIRMED | 32 | 0/0 |  |  |
| amc12a_2009_p15-45 | H0 | LINE_OK_PRE_FAIL | 47 | 33/1 | FAIL: `IccN(4 * n_1_1_1_0 + 1, 4 * n_1_1_1_0 + 1) ==` [dropped 14 unnamed params / 12 requires] |  |
| amc12a_2009_p15-96 | H0 | LINE_OK_PRE_FAIL | 96 | 39/1 | FAIL: `IccN(4 * n_1_1_1_0 + 1, 4 * n_1_1_1_0 + 1) ==` [dropped 12 unnamed params / 6 requires] |  |
| amc12a_2009_p15-98 | H0 | LINE_OK_PRE_FAIL | 98 | 33/1 | FAIL: `IccN(4 * n_1_1_1_0 + 1, 4 * n_1_1_1_0 + 1) ==` [dropped 14 unnamed params / 12 requires] |  |
| amc12a_2009_p15-99 | H0 | LINE_OK_PRE_FAIL | 99 | 33/1 | FAIL: `IccN(4 * n_1_1_1_0 + 1, 4 * n_1_1_1_0 + 1) ==` [dropped 14 unnamed params / 12 requires] |  |
| amc12a_2009_p15-100 | H0 | LINE_OK_PRE_FAIL | 100 | 33/1 | FAIL: `IccN(4 * n_1_1_1_0 + 1, 4 * n_1_1_1_0 + 1) ==` [dropped 14 unnamed params / 12 requires] |  |
| amc12a_2009_p15-107 | H0 | LINE_OK_PRE_FAIL | 107 | 33/1 | FAIL: `IccN(4 * n_1_1_1_0 + 1, 4 * n_1_1_1_0 + 1) ==` [dropped 14 unnamed params / 12 requires] |  |
| amc12a_2009_p15-183 | S4 | UNSUPPORTED | | | parameters ['m_11', 'm_3_0_2', 'm_4_0_2', 'm_7_2', 'n'] are bound/skolem variables with no name at the line; without them (and their require | |
| amc12a_2009_p15-201 | pass2 | LINE_FAIL | 203 | 2/0 |  [dropped 4 unnamed params / 0 requires] | Verification out of resource (amc12a_2009_p15) |
| amc12a_2009_p15-241 | H0 | LINE_FAIL | 241 | 13/0 |  [dropped 4 unnamed params / 16 requires] | Verification out of resource (amc12a_2009_p15) |
| amc12a_2009_p15-242 | H0 | LINE_FAIL | 242 | 13/0 |  [dropped 5 unnamed params / 16 requires] | Verification out of resource (amc12a_2009_p15) |
| amc12a_2009_p15-282 | H0 | CONFIRMED | 282 | 21/0 |  [dropped 7 unnamed params / 10 requires] |  |
| amc12a_2009_p15-287 | H0 | CONFIRMED | 287 | 28/0 |  [dropped 7 unnamed params / 10 requires] |  |
| amc12a_2009_p15-292 | H0 | CONFIRMED | 292 | 34/0 |  [dropped 7 unnamed params / 10 requires] |  |
| amc12a_2009_p15-297 | H0 | CONFIRMED | 297 | 41/0 |  [dropped 7 unnamed params / 10 requires] |  |
| amc12a_2009_p15-302 | K1 | CONFIRMED | 302 | 47/0 |  [dropped 7 unnamed params / 10 requires] |  |
| amc12a_2009_p15-323 | pass2 | CONFIRMED | 323 | 0/0 |  [dropped 8 unnamed params / 0 requires] |  |
| amc12a_2009_p15-325 | pass2 | UNSUPPORTED | | | parameters ['m_11', 'm_3_0', 'm_3_0_0_0', 'm_3_0_2', 'm_3_0_2_0', 'm_3_0_3', 'm_4_0_2', 'm_7_2'] are bound/skolem variables with no name at  | |
| amc12a_2009_p15-586 | pass2 | LINE_FAIL | 588 | 2/0 |  [dropped 11 unnamed params / 0 requires] | assertion might not hold |
| amc12a_2009_p15-597 | H0 | CONFIRMED | 597 | 20/0 |  [dropped 7 unnamed params / 9 requires] |  |
| amc12a_2009_p15-607 | H0 | CONFIRMED | 607 | 28/0 |  [dropped 7 unnamed params / 16 requires] |  |
| amc12a_2009_p15-612 | H0 | CONFIRMED | 612 | 35/0 |  [dropped 7 unnamed params / 16 requires] |  |
| amc12a_2009_p15-617 | H0 | CONFIRMED | 617 | 41/0 |  [dropped 7 unnamed params / 16 requires] |  |
| amc12a_2009_p15-693 | H0 | LINE_OK_PRE_FAIL | 693 | 70/1 | FAIL: `IccN(5, 5) ==` [dropped 8 unnamed params / 21 requires] |  |
| amc12a_2009_p15-694 | H0 | LINE_OK_PRE_FAIL | 694 | 70/1 | FAIL: `IccN(5, 5) ==` [dropped 9 unnamed params / 21 requires] |  |
| amc12a_2009_p15-696 | H0 | LINE_OK_PRE_FAIL | 696 | 70/1 | FAIL: `IccN(5, 5) ==` [dropped 11 unnamed params / 21 requires] |  |
| amc12a_2009_p15-728 | pass2 | LINE_FAIL | 728 | 0/0 |  [dropped 11 unnamed params / 0 requires] | Verification out of resource (amc12a_2009_p15) |
| amc12a_2009_p15-729 | pass2 | LINE_FAIL | 729 | 0/0 |  [dropped 12 unnamed params / 0 requires] | Verification out of resource (amc12a_2009_p15) |
| amc12a_2009_p15-731 | pass2 | LINE_FAIL | 731 | 0/0 |  [dropped 17 unnamed params / 0 requires] | Verification out of resource (amc12a_2009_p15) |
| amc12a_2009_p15-732 | pass2 | UNSUPPORTED | | | parameters ['k_7_2', 'm_11', 'm_2', 'm_4_0_2', 'm_5', 'm_7_0', 'm_7_2', 'm_7_2_0', 'm_7_3', 'm_7_4', 'm_7_6', 'm_7_8', 'm_8', 'x_7_2'] are b | |
| amc12a_2009_p15-735 | pass2 | UNSUPPORTED | | | parameters ['k_7_2', 'm_11', 'm_2', 'm_4_0_2', 'm_5', 'm_7_0', 'm_7_2', 'm_7_2_0', 'm_7_3', 'm_7_4', 'm_7_6', 'm_7_8', 'm_8', 'x_7_2'] are b | |
| amc12a_2009_p15-741 | SC_lib | LINE_FAIL | 741 | 0/1 | OOR: `forall m_7_5: nat :: (4.0 * (m_7_5 as real) + 1.0) * Complex.Re(Comple` [dropped 30 unnamed params / 0 requires] | Verification out of resource (amc12a_2009_p15) |
| amc12a_2009_p15-742 | K3 | LINE_FAIL | 742 | 0/1 | OOR: `forall m_7_7: nat :: Real.sum(IccN(1, 4 * m_7_7), ((v_1_48_x: nat) => ` [dropped 31 unnamed params / 0 requires] | Verification out of resource (amc12a_2009_p15) |
| amc12a_2009_p15-743 | H0 | UNSUPPORTED | | | parameters ['k_7_2', 'm_11', 'm_2', 'm_3_0_2', 'm_4_0_2', 'm_5', 'm_7_0', 'm_7_1_0', 'm_7_1_0_2', 'm_7_2', 'm_7_2_0', 'm_7_3', 'm_7_4', 'm_7 | |
| amc12a_2009_p15-744 | SC_lib | LINE_FAIL | 744 | 0/1 | OOR: `forall m_7_1_1: nat :: (1.0 + (m_7_1_1 as real) * 4.0 == 0.0 || Comple` [dropped 42 unnamed params / 0 requires] | Verification out of resource (amc12a_2009_p15) |
| amc12a_2009_p2-20 | K4 | CONFIRMED | 20 | 8/0 |  |  |
| amc12a_2009_p2-26 | K4 | CONFIRMED | 26 | 13/0 |  |  |
| amc12a_2009_p6-137 | K2 | LINE_OK_PRE_FAIL | 143 | 14/1 | FAIL: `Real.rpow(2.0, (2 as real) * (m * n)) == Real.rpow(Real.rpow(2.0, (2 a` |  |
| amc12a_2009_p9-181 | K1 | CONFIRMED | 181 | 2/0 |  |  |
| amc12a_2009_p9-388 | K1 | CONFIRMED | 401 | 16/0 |  |  |
| amc12a_2013_p4-15 | K2 | CONFIRMED | 16 | 0/0 |  |  |
| amc12a_2013_p4-75 | K2 | CONFIRMED | 91 | 7/0 |  |  |
| amc12a_2017_p7-28 | K1 | CONFIRMED | 28 | 11/0 |  |  |
| amc12a_2017_p7-48 | K1 | UNSUPPORTED | | | parameters ['n_1_0_0'] are bound/skolem variables with no name at the line; without them (and their requires) the lemma no longer verifies | |
| amc12a_2017_p7-54 | K1 | UNSUPPORTED | | | parameters ['n_1_0_0'] are bound/skolem variables with no name at the line; without them (and their requires) the lemma no longer verifies | |
| amc12a_2017_p7-67 | K1 | UNSUPPORTED | | | parameters ['n', 'n_1_0', 'n_1_1_1_2'] are bound/skolem variables with no name at the line; without them (and their requires) the lemma no l | |
| amc12a_2017_p7-74 | K1 | UNSUPPORTED | | | parameters ['n', 'n_1_0', 'n_1_1_1_2'] are bound/skolem variables with no name at the line; without them (and their requires) the lemma no l | |
| amc12a_2019_p21-18 | P25 | CONFIRMED | 18 | 4/0 |  |  |
| amc12a_2019_p21-41 | S2 | CONFIRMED | 62 | 1/0 |  |  |
| amc12a_2019_p21-67 | S2 | CONFIRMED | 67 | 21/0 |  |  |
| amc12a_2021_p14-79 | K1 | CONFIRMED | 79 | 9/0 |  |  |
| amc12a_2021_p14-90 | K2 | LINE_OK_PRE_FAIL | 99 | 11/1 | OOR: `Real.log(Real.pow(3.0, Int.pow(k_0_0, 2))) == (Int.pow(k_0_0, 2) as re` |  |
| amc12a_2021_p14-95 | K2pow | CONFIRMED | 98 | 12/0 |  |  |
| amc12a_2021_p14-113 | K1 | CONFIRMED | 113 | 12/0 |  |  |
| amc12a_2021_p14-121 | S_split2 | CONFIRMED | 141 | 16/0 |  |  |
| amc12a_2021_p14-168 | K2pow | CONFIRMED | 168 | 4/0 |  [dropped 2 unnamed params / 1 requires] |  |
| amc12a_2021_p14-197 | S_split | CONFIRMED | 203 | 4/0 |  |  |
| amc12a_2021_p14-219 | pass2 | CONFIRMED | 266 | 5/0 |  |  |
| amc12a_2021_p14-280 | K1 | CONFIRMED | 280 | 7/0 |  |  |
| amc12a_2021_p14-309 | K2pow | CONFIRMED | 442 | 11/0 |  |  |
| amc12a_2021_p14-357 | pass2 | CONFIRMED | 441 | 9/0 |  |  |
| amc12a_2021_p14-467 | pairK3K5 | CONFIRMED | 474 | 0/0 |  |  |
| amc12a_2021_p14-482 | pass2 | CONFIRMED | 540 | 3/0 |  |  |
| amc12a_2021_p14-484 | K1 | CONFIRMED | 484 | 7/0 |  |  |
| amc12a_2021_p14-492 | K1 | CONFIRMED | 492 | 8/0 |  |  |
| amc12a_2021_p14-502 | K3 | CONFIRMED | 539 | 0/0 |  |  |
| amc12a_2021_p14-542 | pass2 | CONFIRMED | 605 | 7/0 |  |  |
| amc12a_2021_p14-548 | pass2 | CONFIRMED | 604 | 7/0 |  |  |
| amc12a_2021_p18-105 | K5 | CONFIRMED | 105 | 7/0 |  |  |
| amc12a_2021_p18-140 | K2 | CONFIRMED | 140 | 7/0 |  |  |
| amc12a_2021_p18-160 | K5 | CONFIRMED | 160 | 10/0 |  |  |
| amc12a_2021_p18-192 | K2 | CONFIRMED | 192 | 11/0 |  |  |
| amc12a_2021_p18-225 | K5 | CONFIRMED | 225 | 15/0 |  |  |
| amc12a_2021_p19-599 | pass2 | CONFIRMED | 599 | 2/0 |  |  |
| amc12a_2021_p19-855 | K1 | CONFIRMED | 939 | 14/0 |  |  |
| amc12a_2021_p19-1063 | pass2 | CONFIRMED | 1063 | 16/0 |  |  |
| amc12a_2021_p19-1344 | K5 | CONFIRMED | 1344 | 17/0 |  |  |
| amc12a_2021_p19-1348 | K5 | CONFIRMED | 1348 | 18/0 |  |  |
| amc12a_2021_p19-1352 | K1 | CONFIRMED | 1404 | 19/0 |  |  |
| amc12a_2021_p19-1556 | K5 | CONFIRMED | 1556 | 18/0 |  |  |
| amc12a_2021_p19-1560 | K5 | CONFIRMED | 1560 | 19/0 |  |  |
| amc12a_2021_p19-1564 | K1 | CONFIRMED | 1604 | 20/0 |  |  |
| amc12a_2021_p19-1668 | K5 | CONFIRMED | 1668 | 8/0 |  |  |
| amc12a_2021_p19-1722 | K5 | CONFIRMED | 1722 | 12/0 |  |  |
| amc12a_2021_p19-1726 | K5 | CONFIRMED | 1726 | 13/0 |  |  |
| amc12a_2021_p22-496 | pass2 | CONFIRMED | 497 | 2/0 |  |  |
| amc12a_2021_p22-507 | pass2 | CONFIRMED | 508 | 2/0 |  |  |
| amc12a_2021_p22-1857 | H0 | LINE_OK_PRE_FAIL | 1857 | 1/1 | FAIL: `(iset y: real | f(y) == 0.0) == iset` |  |
| amc12a_2021_p22-1858 | H0 | LINE_OK_PRE_FAIL | 1858 | 1/1 | FAIL: `(iset y: real | f(y) == 0.0) == iset` |  |
| amc12a_2021_p22-1859 | H0 | LINE_OK_PRE_FAIL | 1859 | 1/1 | FAIL: `(iset y: real | f(y) == 0.0) == iset` |  |
| amc12b_2003_p17-101 | pass2 | LINE_OK_PRE_FAIL | 101 | 2/1 | FAIL: `Real.log(x * Real.pow(y, 3)) == 1.0` |  |
| amc12b_2003_p17-102 | pass2 | LINE_OK_PRE_FAIL | 102 | 2/1 | FAIL: `Real.log(Real.pow(x, 2) * y) == 1.0` |  |
| amc12b_2020_p13-197 | K5 | CONFIRMED | 214 | 4/0 |  |  |
| amc12b_2020_p13-220 | K5 | CONFIRMED | 242 | 5/0 |  |  |
| amc12b_2020_p13-452 | H0 | CONFIRMED | 517 | 22/0 |  |  |
| amc12b_2020_p13-530 | K2 | CONFIRMED | 548 | 8/0 |  |  |
| amc12b_2020_p21-569 | pass2 | CONFIRMED | 590 | 26/0 |  [dropped 3 unnamed params / 3 requires] |  |
| amc12b_2020_p21-656 | pass2 | CONFIRMED | 675 | 29/0 |  [dropped 3 unnamed params / 3 requires] |  |
| amc12b_2020_p21-698 | K4 | CONFIRMED | 698 | 17/0 |  [dropped 4 unnamed params / 2 requires] |  |
| amc12b_2020_p21-1245 | K5 | CONFIRMED | 1251 | 14/0 |  [dropped 1 unnamed params / 1 requires] |  |
| amc12b_2020_p21-1289 | K5 | CONFIRMED | 1299 | 15/0 |  [dropped 1 unnamed params / 1 requires] |  |
| amc12b_2020_p21-1338 | K5 | CONFIRMED | 1348 | 16/0 |  [dropped 1 unnamed params / 1 requires] |  |
| amc12b_2020_p21-1387 | K5 | CONFIRMED | 1397 | 17/0 |  [dropped 1 unnamed params / 1 requires] |  |
| amc12b_2020_p21-1436 | K5 | CONFIRMED | 1446 | 18/0 |  [dropped 1 unnamed params / 1 requires] |  |
| amc12b_2020_p22-233 | pass2 | CONFIRMED | 250 | 3/0 |  |  |
| amc12b_2021_p1-366 | K5 | CONFIRMED | 366 | 4/0 |  |  |
| amc12b_2021_p18-31 | pass2 | CONFIRMED | 32 | 1/0 |  |  |
| amc12b_2021_p18-41 | pass2 | CONFIRMED | 42 | 1/0 |  |  |
| amc12b_2021_p18-91 | pass2 | CONFIRMED | 92 | 1/0 |  |  |
| amc12b_2021_p18-101 | pass2 | CONFIRMED | 102 | 1/0 |  |  |
| amc12b_2021_p9-412 | K3 | CONFIRMED | 430 | 0/0 |  |  |
| amc12b_2021_p9-488 | K3 | CONFIRMED | 506 | 0/0 |  |  |
| amc12b_2021_p9-546 | sc_divsubdivsame | CONFIRMED | 554 | 11/0 |  |  |
| amc12b_2021_p9-562 | H0 | CONFIRMED | 567 | 11/0 |  |  |
| imo_1959_p1-32 | K5 | CONFIRMED | 37 | 9/0 |  |  |
| imo_1959_p1-61 | K5 | CONFIRMED | 67 | 12/0 |  |  |
| imo_1960_p2-415 | pass2 | CONFIRMED | 577 | 12/0 |  |  |
| imo_1961_p1-447 | pass2 | CONFIRMED | 453 | 13/0 |  |  |
| imo_1961_p1-455 | pass2 | CONFIRMED | 461 | 14/0 |  |  |
| imo_1961_p1-463 | pass2 | CONFIRMED | 469 | 15/0 |  |  |
| imo_1964_p1_1-20 | pass2 | CONFIRMED | 35 | 8/0 |  |  |
| imo_1964_p1_1-27 | pass2 | CONFIRMED | 34 | 12/0 |  |  |
| imo_1964_p1_1-40 | pass2 | CONFIRMED | 49 | 1/0 |  [dropped 1 unnamed params / 0 requires] |  |
| imo_1964_p1_1-80 | pass2 | CONFIRMED | 80 | 2/0 |  |  |
| imo_1964_p1_1-87 | pass2 | CONFIRMED | 87 | 2/0 |  |  |
| imo_1964_p1_1-121 | pass2 | CONFIRMED | 121 | 3/0 |  |  |
| imo_1964_p1_1-152 | H0 | CONFIRMED | 162 | 14/0 |  |  |
| imo_1964_p1_2-33 | K2pow | CONFIRMED | 39 | 16/0 |  [dropped 1 unnamed params / 1 requires] |  |
| imo_1964_p1_2-48 | K2pow | CONFIRMED | 54 | 17/0 |  [dropped 1 unnamed params / 1 requires] |  |
| imo_1964_p1_2-61 | K2pow | CONFIRMED | 67 | 20/0 |  [dropped 1 unnamed params / 1 requires] |  |
| imo_1964_p1_2-78 | K2pow | CONFIRMED | 80 | 0/0 |  |  |
| imo_1964_p1_2-84 | H0 | LINE_OK_PRE_FAIL | 110 | 7/2 | OOR: `((Int.pow(2, n) + 1) % 7 == 0) == (exists q: nat :: Int.pow(2, n) + 1 `; OOR: `((Int.pow(2, n) % 7 != 1) && (Int.pow(2, n) % 7 != 2) && (Int.pow(2, n` |  |
| imo_1964_p1_2-95 | K2pow | CONFIRMED | 95 | 13/0 |  |  |
| imo_1964_p1_2-101 | K2pow | CONFIRMED | 101 | 14/0 |  |  |
| imo_1964_p1_2-107 | K2pow | CONFIRMED | 107 | 14/0 |  |  |
| imo_1965_p1-833 | cite | LINE_OK_PRE_FAIL | 946 | 48/3 | OOR: `Real.cos(2.0 * x) * Real.cos(2.0 * x) + Real.sin(2.0 * x) * Real.sin(2`; OOR: `((0.0 <= Real.sqrt(1.0 - Real.sin(2.0 * x)) * Real.sqrt(1.0 - Real.sin` |  |
| imo_1965_p1-885 | H0 | LINE_OK_PRE_FAIL | 885 | 36/3 | OOR: `0.0 <= (Real.sqrt(1.0 + Real.sin(2.0 * x)) - Real.sqrt(1.0 - Real.sin(`; OOR: `((0.0 <= Real.sqrt(1.0 - Real.sin(2.0 * x)) * Real.sqrt(1.0 - Real.sin` |  |
| imo_1965_p1-893 | H0 | LINE_OK_PRE_FAIL | 893 | 43/2 | OOR: `((0.0 <= Real.sqrt(1.0 - Real.sin(2.0 * x)) * Real.sqrt(1.0 - Real.sin`; OOR: `((0.0 <= Real.sqrt(1.0 + Real.sin(2.0 * x)) * Real.sqrt(1.0 + Real.sin` |  |
| imo_1965_p1-903 | H0 | LINE_OK_PRE_FAIL | 903 | 49/2 | OOR: `((0.0 <= Real.sqrt(1.0 - Real.sin(2.0 * x)) * Real.sqrt(1.0 - Real.sin`; OOR: `((0.0 <= Real.sqrt(1.0 + Real.sin(2.0 * x)) * Real.sqrt(1.0 + Real.sin` |  |
| imo_1965_p1-961 | pass2 | CONFIRMED | 1074 | 6/0 |  |  |
| imo_1965_p1-1011 | H0 | CONFIRMED | 1011 | 38/0 |  |  |
| imo_1965_p1-1013 | H0 | LINE_OK_PRE_FAIL | 1013 | 39/1 | OOR: `((0.0 <= Real.sqrt(1.0 - Real.sin(2.0 * x)) * Real.sqrt(1.0 - Real.sin` |  |
| imo_1965_p1-1093 | pass2 | LINE_OK_PRE_FAIL | 1206 | 5/1 | OOR: `Real.cos(2.0 * x) * Real.cos(2.0 * x) + Real.sin(2.0 * x) * Real.sin(2` |  |
| imo_1965_p1-1136 | H0 | CONFIRMED | 1136 | 32/0 |  |  |
| imo_1965_p1-1143 | H0 | LINE_OK_PRE_FAIL | 1143 | 35/3 | OOR: `0.0 <= (Real.sqrt(1.0 + Real.sin(2.0 * x)) - Real.sqrt(1.0 - Real.sin(`; OOR: `((0.0 <= Real.sqrt(1.0 - Real.sin(2.0 * x)) * Real.sqrt(1.0 - Real.sin` |  |
| imo_1965_p1-1146 | H0 | LINE_OK_PRE_FAIL | 1146 | 37/2 | OOR: `((0.0 <= Real.sqrt(1.0 - Real.sin(2.0 * x)) * Real.sqrt(1.0 - Real.sin`; OOR: `((0.0 <= Real.sqrt(1.0 + Real.sin(2.0 * x)) * Real.sqrt(1.0 + Real.sin` |  |
| imo_1965_p1-1148 | H0 | LINE_OK_PRE_FAIL | 1148 | 39/3 | OOR: `Real.cos(2.0 * x) * Real.cos(2.0 * x) + Real.sin(2.0 * x) * Real.sin(2`; OOR: `((0.0 <= Real.sqrt(1.0 - Real.sin(2.0 * x)) * Real.sqrt(1.0 - Real.sin` |  |
| imo_1965_p1-1153 | H0 | LINE_OK_PRE_FAIL | 1153 | 43/3 | OOR: `Real.cos(2.0 * x) * Real.cos(2.0 * x) + Real.sin(2.0 * x) * Real.sin(2`; OOR: `((0.0 <= Real.sqrt(1.0 - Real.sin(2.0 * x)) * Real.sqrt(1.0 - Real.sin` |  |
| imo_1965_p1-1161 | H0 | LINE_OK_PRE_FAIL | 1161 | 47/3 | OOR: `Real.cos(2.0 * x) * Real.cos(2.0 * x) + Real.sin(2.0 * x) * Real.sin(2`; OOR: `((0.0 <= Real.sqrt(1.0 - Real.sin(2.0 * x)) * Real.sqrt(1.0 - Real.sin` |  |
| imo_1965_p1-1163 | H0 | LINE_OK_PRE_FAIL | 1163 | 49/3 | OOR: `Real.cos(2.0 * x) * Real.cos(2.0 * x) + Real.sin(2.0 * x) * Real.sin(2`; OOR: `((0.0 <= Real.sqrt(1.0 - Real.sin(2.0 * x)) * Real.sqrt(1.0 - Real.sin` |  |
| imo_1965_p1-1222 | pass2 | LINE_OK_PRE_FAIL | 1335 | 5/1 | OOR: `Real.cos(2.0 * x) * Real.cos(2.0 * x) + Real.sin(2.0 * x) * Real.sin(2` |  |
| imo_1965_p1-1269 | H0 | LINE_OK_PRE_FAIL | 1269 | 35/2 | OOR: `((0.0 <= Real.cos(2.0 * x)) && (((0.0 <= Real.sqrt(1.0 + Real.sin(2.0 `; OOR: `((0.0 <= Real.sqrt(1.0 - Real.sin(2.0 * x)) * Real.sqrt(1.0 - Real.sin` |  |
| imo_1965_p1-1274 | H0 | LINE_OK_PRE_FAIL | 1274 | 40/1 | OOR: `((0.0 <= Real.sqrt(1.0 - Real.sin(2.0 * x)) * Real.sqrt(1.0 - Real.sin` |  |
| imo_1965_p1-1277 | H0 | LINE_OK_PRE_FAIL | 1277 | 40/3 | OOR: `((0.0 <= Real.cos(2.0 * x)) && (((0.0 <= Real.sqrt(1.0 + Real.sin(2.0 `; OOR: `((0.0 <= Real.sqrt(1.0 - Real.sin(2.0 * x)) * Real.sqrt(1.0 - Real.sin` |  |
| imo_1965_p1-1282 | H0 | LINE_OK_PRE_FAIL | 1282 | 43/4 | OOR: `((0.0 <= Real.cos(2.0 * x)) && (((0.0 <= Real.sqrt(1.0 + Real.sin(2.0 `; OOR: `Real.cos(2.0 * x) * Real.cos(2.0 * x) + Real.sin(2.0 * x) * Real.sin(2` |  |
| imo_1966_p4-37 | K2upow | UNSUPPORTED | | | parameters ['n', 'n_1_0'] are bound/skolem variables with no name at the line; without them (and their requires) the lemma no longer verifie | |
| imo_1966_p4-54 | H0 | LINE_OK_PRE_FAIL | 54 | 11/1 | FAIL: `IccN(1, 1) ==` [dropped 2 unnamed params / 9 requires] |  |
| imo_1966_p4-73 | pass2 | UNSUPPORTED | | | parameters ['n', 'n_1_0', 'n_1_0_1_0', 'x'] are bound/skolem variables with no name at the line; without them (and their requires) the lemma | |
| imo_1966_p4-77 | pass2 | UNSUPPORTED | | | parameters ['n_1_0_0'] are bound/skolem variables with no name at the line; without them (and their requires) the lemma no longer verifies | |
| imo_1966_p4-86 | pass2 | UNSUPPORTED | | | parameters ['x'] are bound/skolem variables with no name at the line; without them (and their requires) the lemma no longer verifies | |
| imo_1966_p4-156 | pass2 | LINE_FAIL | 158 | 1/0 |  | Verification out of resource (imo_1966_p4) |
| imo_1966_p4-174 | pass2 | LINE_OK_PRE_FAIL | 183 | 11/1 | FAIL: `Real.sum(IccN(1, m_1_0), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(` |  |
| imo_1966_p4-187 | pass2 | LINE_OK_PRE_FAIL | 386 | 11/1 | OOR: `Real.sum(IccN(1, m_1_0), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(` |  |
| imo_1966_p4-189 | pass2 | LINE_OK_PRE_FAIL | 375 | 11/1 | OOR: `Real.sum(IccN(1, m_1_0), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(` |  |
| imo_1966_p4-190 | K3_K2pow | CONFIRMED | 193 | 0/0 |  |  |
| imo_1966_p4-196 | pass2 | LINE_FAIL | 374 | 1/5 | OOR: `Real.sum(IccN(1, m_1_0), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(`; OOR: `Real.tan(Real.pow(2.0, m_1_0) * x) == Real.div(Real.sin(Real.pow(2.0, ` | Verification out of resource (imo_1966_p4) |
| imo_1966_p4-204 | pass2 | LINE_FAIL | 373 | 0/0 |  | Verification out of resource (imo_1966_p4) |
| imo_1966_p4-212 | H0 | LINE_OK_PRE_FAIL | 212 | 16/5 | OOR: `forall n0: int :: (forall k_3: nat :: 0 < k_3 ==> (forall m_3: int :: `; OOR: `Real.sum(IccN(1, m_1_0), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(` |  |
| imo_1966_p4-220 | pass2 | LINE_FAIL | 220 | 0/0 |  | Verification out of resource (imo_1966_p4) |
| imo_1966_p4-225 | pass2 | LINE_FAIL | 225 | 0/0 |  | Verification out of resource (imo_1966_p4) |
| imo_1966_p4-230 | H0 | LINE_OK_PRE_FAIL | 230 | 13/8 | OOR: `forall n0: int :: (forall k_3: nat :: 0 < k_3 ==> (forall m_3: int :: `; OOR: `Real.sum(IccN(1, m_1_0), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(` |  |
| imo_1966_p4-233 | pass2 | LINE_FAIL | 233 | 17/0 |  | Verification out of resource (imo_1966_p4) |
| imo_1966_p4-235 | pass2 | LINE_FAIL | 235 | 15/0 |  | Verification out of resource (imo_1966_p4) |
| imo_1966_p4-241 | K2 | LINE_OK_PRE_FAIL | 241 | 11/10 | OOR: `forall n0: int :: (forall k_3: nat :: 0 < k_3 ==> (forall m_3: int :: `; OOR: `Real.sum(IccN(1, m_1_0), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(` |  |
| imo_1966_p4-246 | K2pow | CONFIRMED | 246 | 24/0 |  |  |
| imo_1966_p4-254 | K2pow | LINE_OK_PRE_FAIL | 254 | 23/1 | FAIL: `Real.sin(2.0 * (Real.pow(2.0, m_1_0) * x)) == 2.0 * Real.sin(Real.pow(` |  |
| imo_1966_p4-259 | H0 | CONFIRMED | 259 | 25/0 |  |  |
| imo_1966_p4-262 | H0 | LINE_OK_PRE_FAIL | 262 | 12/13 | OOR: `forall n0: int :: (forall k_3: nat :: 0 < k_3 ==> (forall m_3: int :: `; OOR: `Real.sum(IccN(1, m_1_0), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(` |  |
| imo_1966_p4-266 | H0 | LINE_OK_PRE_FAIL | 266 | 12/9 | OOR: `forall n0: int :: (forall k_3: nat :: 0 < k_3 ==> (forall m_3: int :: `; OOR: `Real.sum(IccN(1, m_1_0), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(` |  |
| imo_1966_p4-273 | K2pow | LINE_OK_PRE_FAIL | 273 | 13/10 | OOR: `forall n0: int :: (forall k_3: nat :: 0 < k_3 ==> (forall m_3: int :: `; OOR: `Real.sum(IccN(1, m_1_0), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(` |  |
| imo_1966_p4-278 | H0 | LINE_OK_PRE_FAIL | 278 | 21/3 | OOR: `forall n0: int :: (forall k_3: nat :: 0 < k_3 ==> (forall m_3: int :: `; OOR: `Real.sum(IccN(1, m_1_0), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(` |  |
| imo_1966_p4-281 | H0 | LINE_OK_PRE_FAIL | 281 | 12/12 | OOR: `forall n0: int :: (forall k_3: nat :: 0 < k_3 ==> (forall m_3: int :: `; OOR: `Real.sum(IccN(1, m_1_0), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(` |  |
| imo_1966_p4-286 | pass2 | LINE_FAIL | 286 | 0/0 |  | Verification out of resource (imo_1966_p4) |
| imo_1966_p4-291 | K2pow | CONFIRMED | 291 | 25/0 |  |  |
| imo_1966_p4-294 | H0 | LINE_OK_PRE_FAIL | 294 | 12/13 | OOR: `forall n0: int :: (forall k_3: nat :: 0 < k_3 ==> (forall m_3: int :: `; OOR: `Real.sum(IccN(1, m_1_0), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(` |  |
| imo_1966_p4-296 | H0 | LINE_OK_PRE_FAIL | 296 | 12/11 | OOR: `forall n0: int :: (forall k_3: nat :: 0 < k_3 ==> (forall m_3: int :: `; OOR: `Real.sum(IccN(1, m_1_0), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(` |  |
| imo_1966_p4-313 | H0 | LINE_OK_PRE_FAIL | 313 | 23/8 | OOR: `forall n0: int :: (forall k_3: nat :: 0 < k_3 ==> (forall m_3: int :: `; OOR: `Real.sum(IccN(1, m_1_0), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(` |  |
| imo_1966_p4-329 | pass2 | LINE_FAIL | 329 | 0/0 |  | Verification out of resource (imo_1966_p4) |
| imo_1966_p4-332 | H0 | LINE_OK_PRE_FAIL | 332 | 12/13 | OOR: `forall n0: int :: (forall k_3: nat :: 0 < k_3 ==> (forall m_3: int :: `; OOR: `Real.sum(IccN(1, m_1_0), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(` |  |
| imo_1966_p4-348 | K2pow | LINE_OK_PRE_FAIL | 348 | 28/4 | FAIL: `Real.sum(IccN(1, m_1_0), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(`; FAIL: `Real.sin(2.0 * (Real.pow(2.0, m_1_0) * x)) == 2.0 * Real.sin(Real.pow(` |  |
| imo_1966_p4-364 | pass2 | LINE_FAIL | 364 | 15/8 | OOR: `Real.tan(Real.pow(2.0, m_1_0) * x) == Real.div(Real.sin(Real.pow(2.0, `; OOR: `Real.tan(2.0 * (Real.pow(2.0, m_1_0) * x)) == Real.div(Real.sin(2.0 * ` | Verification out of resource (imo_1966_p4) |
| imo_1966_p4-367 | H0 | LINE_OK_PRE_FAIL | 367 | 12/14 | OOR: `forall n0: int :: (forall k_3: nat :: 0 < k_3 ==> (forall m_3: int :: `; OOR: `Real.sum(IccN(1, m_1_0), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(` |  |
| imo_1966_p4-371 | H0 | LINE_OK_PRE_FAIL | 371 | 12/10 | OOR: `forall n0: int :: (forall k_3: nat :: 0 < k_3 ==> (forall m_3: int :: `; OOR: `Real.sum(IccN(1, m_1_0), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(` |  |
| imo_1966_p4-397 | pass2 | LINE_OK_PRE_FAIL | 404 | 2/1 | OOR: `forall n_2_1: nat :: 0 < n_2_1 ==> Real.sum(IccN(1, n_2_1), ((k: nat) ` |  |
| imo_1966_p4-400 | pass2 | LINE_OK_PRE_FAIL | 400 | 3/1 | OOR: `forall n_2_1: nat :: 0 < n_2_1 ==> Real.sum(IccN(1, n_2_1), ((k: nat) ` |  |
| imo_1966_p4-424 | pass2 | LINE_OK_PRE_FAIL | 424 | 6/1 | OOR: `forall n_2_1: nat :: 0 < n_2_1 ==> Real.sum(IccN(1, n_2_1), ((k: nat) ` |  |
| imo_1973_p3-512 | H0 | UNSUPPORTED | | | parameters ['y_2', 'y_2_2', 'y_2_3'] are bound/skolem variables with no name at the line; without them (and their requires) the lemma no lon | |
| imo_1973_p3-524 | K5 | UNSUPPORTED | | | parameters ['y_2', 'y_2_2', 'y_2_3'] are bound/skolem variables with no name at the line; without them (and their requires) the lemma no lon | |
| imo_1973_p3-531 | K5 | UNSUPPORTED | | | parameters ['y_2', 'y_2_2', 'y_2_3'] are bound/skolem variables with no name at the line; without them (and their requires) the lemma no lon | |
| imo_1973_p3-564 | pass2 | UNSUPPORTED | | | parameters ['y_2_2', 'y_2_3'] are bound/skolem variables with no name at the line; without them (and their requires) the lemma no longer ver | |
| imo_1973_p3-591 | K3 | UNSUPPORTED | | | parameters ['y_2', 'y_2_2', 'y_2_3'] are bound/skolem variables with no name at the line; without them (and their requires) the lemma no lon | |
| imo_1973_p3-601 | H0 | UNSUPPORTED | | | parameters ['y_2', 'y_2_2', 'y_2_3'] are bound/skolem variables with no name at the line; without them (and their requires) the lemma no lon | |
| imo_1973_p3-606 | H0 | UNSUPPORTED | | | parameters ['y_2', 'y_2_2', 'y_2_3'] are bound/skolem variables with no name at the line; without them (and their requires) the lemma no lon | |
| imo_1974_p5-383 | pass2 | CONFIRMED | 384 | 2/0 |  |  |
| imo_1974_p5-636 | pass2 | CONFIRMED | 637 | 2/0 |  |  |
| imo_1974_p5-717 | pass2 | CONFIRMED | 718 | 2/0 |  |  |
| imo_1974_p5-1013 | pass2 | CONFIRMED | 1014 | 2/0 |  |  |
| imo_1974_p5-1024 | pass2 | CONFIRMED | 1025 | 2/0 |  |  |
| imo_1974_p5-1035 | pass2 | CONFIRMED | 1036 | 2/0 |  |  |
| imo_1974_p5-1046 | pass2 | CONFIRMED | 1047 | 2/0 |  |  |
| imo_1974_p5-1057 | pass2 | CONFIRMED | 1058 | 2/0 |  |  |
| imo_1974_p5-1567 | pass2 | CONFIRMED | 1731 | 16/0 |  |  |
| imo_1974_p5-1629 | pass2 | CONFIRMED | 1629 | 21/0 |  |  |
| imo_1974_p5-1801 | K2 | CONFIRMED | 1801 | 24/0 |  |  |
| imo_1974_p5-1803 | pass2 | CONFIRMED | 1803 | 25/0 |  |  |
| imo_1983_p6-268 | pass2 | CONFIRMED | 268 | 14/0 |  |  |
| imo_1984_p2-64 | pass2 | CONFIRMED | 1165 | 12/0 |  |  |
| imo_1984_p2-1685 | pass2 | CONFIRMED | 1685 | 27/0 |  |  |
| imo_1984_p2-1713 | pass2 | CONFIRMED | 1721 | 11/0 |  |  |
| imo_1984_p2-1725 | pass2 | CONFIRMED | 1732 | 12/0 |  |  |
| imo_1992_p1-780 | K2 | CONFIRMED | 782 | 0/0 |  |  |
| imo_1992_p1-960 | K2b | LINE_FAIL | 962 | 0/0 |  | Verification out of resource (cert_identity_104) |
| imo_1992_p1-1145 | K2b | LINE_FAIL | 1147 | 0/0 |  | Verification out of resource (cert_identity_124) |
| imo_1992_p1-1303 | K2 | CONFIRMED | 1305 | 0/0 |  |  |
| imo_1992_p1-1343 | K2 | CONFIRMED | 1345 | 0/0 |  |  |
| imo_1992_p1-1593 | K2c | LINE_FAIL | 1595 | 0/0 |  | Verification out of resource (cert_identity_173) |
| imo_1992_p1-5471 | K2 | CONFIRMED | 5471 | 30/0 |  |  |
| mathd_algebra_156-251 | K1 | CONFIRMED | 251 | 9/0 |  |  |
| mathd_algebra_156-313 | K1 | CONFIRMED | 313 | 10/0 |  |  |
| mathd_algebra_170-285 | K2 | CONFIRMED | 287 | 2/0 |  |  |
| mathd_algebra_342-130 | K5 | CONFIRMED | 146 | 17/0 |  |  |
| mathd_algebra_598-542 | SC_library | CONFIRMED | 574 | 13/0 |  |  |
| mathd_algebra_756-231 | K1 | CONFIRMED | 231 | 5/0 |  |  |
| mathd_algebra_756-438 | K5 | CONFIRMED | 438 | 5/0 |  |  |
| mathd_numbertheory_175-27 | K2pow | CONFIRMED | 27 | 8/0 |  |  |
| mathd_numbertheory_175-54 | cite_opaque | CONFIRMED | 54 | 4/0 |  |  |
| mathd_numbertheory_175-71 | K5 | CONFIRMED | 71 | 5/0 |  |  |
| mathd_numbertheory_175-79 | pass2 | CONFIRMED | 115 | 7/0 |  |  |
| mathd_numbertheory_175-93 | K5 | LINE_OK_PRE_FAIL | 101 | 10/1 | OOR: `Int.pow(2 * 2 * 2 * 2, 502) % 10 + 10 * (Int.pow(2 * 2 * 2 * 2, 502) /` |  |
| mathd_numbertheory_175-107 | K2pow | CONFIRMED | 107 | 8/0 |  |  |
| mathd_numbertheory_618-114 | k5 | UNSUPPORTED | | | parameters ['n', 'n_0_0_0_1_0'] are bound/skolem variables with no name at the line; without them (and their requires) the lemma no longer v | |
| mathd_numbertheory_618-139 | pass2 | UNSUPPORTED | | | parameters ['n', 'n_0_0_0_1_0'] are bound/skolem variables with no name at the line; without them (and their requires) the lemma no longer v | |
| mathd_numbertheory_618-177 | pass2 | CONFIRMED | 177 | 20/0 |  [dropped 25 unnamed params / 1 requires] |  |
| mathd_numbertheory_618-183 | pass2 | CONFIRMED | 183 | 20/0 |  [dropped 33 unnamed params / 1 requires] |  |
| mathd_numbertheory_618-189 | pass2 | CONFIRMED | 189 | 20/0 |  [dropped 41 unnamed params / 1 requires] |  |
| mathd_numbertheory_618-195 | pass2 | CONFIRMED | 195 | 20/0 |  [dropped 49 unnamed params / 1 requires] |  |
| mathd_numbertheory_618-201 | pass2 | CONFIRMED | 201 | 20/0 |  [dropped 57 unnamed params / 1 requires] |  |
| mathd_numbertheory_618-237 | pass2 | CONFIRMED | 237 | 20/0 |  [dropped 105 unnamed params / 1 requires] |  |
| mathd_numbertheory_618-243 | pass2 | CONFIRMED | 243 | 20/0 |  [dropped 113 unnamed params / 1 requires] |  |
| mathd_numbertheory_618-267 | pass2 | CONFIRMED | 267 | 20/0 |  [dropped 145 unnamed params / 1 requires] |  |
| mathd_numbertheory_618-279 | pass2 | CONFIRMED | 279 | 20/0 |  [dropped 161 unnamed params / 1 requires] |  |
| mathd_numbertheory_618-285 | pass2 | UNSUPPORTED | | | parameters ['n', 'n_0_0_0_1_0'] are bound/skolem variables with no name at the line; without them (and their requires) the lemma no longer v | |
| mathd_numbertheory_618-291 | pass2 | UNSUPPORTED | | | parameters ['n', 'n_0_0_0_1_0'] are bound/skolem variables with no name at the line; without them (and their requires) the lemma no longer v | |
| mathd_numbertheory_618-297 | pass2 | UNSUPPORTED | | | parameters ['n', 'n_0_0_0_1_0'] are bound/skolem variables with no name at the line; without them (and their requires) the lemma no longer v | |
| mathd_numbertheory_618-303 | pass2 | CONFIRMED | 303 | 20/0 |  [dropped 193 unnamed params / 1 requires] |  |
| mathd_numbertheory_618-309 | pass2 | CONFIRMED | 309 | 20/0 |  [dropped 201 unnamed params / 1 requires] |  |
| mathd_numbertheory_618-327 | pass2 | UNSUPPORTED | | | parameters ['n', 'n_0_0_0_1_0'] are bound/skolem variables with no name at the line; without them (and their requires) the lemma no longer v | |
| mathd_numbertheory_618-333 | pass2 | CONFIRMED | 333 | 4/0 |  [dropped 233 unnamed params / 0 requires] |  |
| mathd_numbertheory_618-345 | pass2 | CONFIRMED | 345 | 4/0 |  [dropped 249 unnamed params / 0 requires] |  |
| mathd_numbertheory_618-357 | pass2 | UNSUPPORTED | | | parameters ['n', 'n_0_0_0_1_0'] are bound/skolem variables with no name at the line; without them (and their requires) the lemma no longer v | |
| mathd_numbertheory_618-363 | pass2 | UNSUPPORTED | | | parameters ['n', 'n_0_0_0_1_0'] are bound/skolem variables with no name at the line; without them (and their requires) the lemma no longer v | |
| mathd_numbertheory_618-369 | K3K2 | CONFIRMED | 369 | 4/0 |  [dropped 281 unnamed params / 0 requires] |  |
| mathd_numbertheory_618-382 | K3K2 | CONFIRMED | 382 | 4/0 |  [dropped 297 unnamed params / 0 requires] |  |
| mathd_numbertheory_618-396 | pass2 | UNSUPPORTED | | | parameters ['n', 'n_0_0_0_1_0'] are bound/skolem variables with no name at the line; without them (and their requires) the lemma no longer v | |
| mathd_numbertheory_84-26 | K5 | CONFIRMED | 33 | 3/0 |  |  |
| numbertheory_2pownm1prime_nprime-104 | K1 | CONFIRMED | 113 | 7/0 |  [dropped 4 unnamed params / 4 requires] |  |
| numbertheory_2pownm1prime_nprime-284 | pass2 | UNSUPPORTED | | | parameters ['k_1_0_0_2_2_0', 'k_1_0_0_2_2_3', 'm_1_0_0_2', 'm_1_0_0_3', 'm_1_0_0_5', 'm_1_0_0_5_0', 'm_1_0_0_6'] are bound/skolem variables  | |
| numbertheory_2pownm1prime_nprime-286 | K1 | UNSUPPORTED | | | insertion does not resolve/parse: rbrace expected (line 287) | |
| numbertheory_2pownm1prime_nprime-324 | H0 | UNSUPPORTED | | | parameters ['k_1_0_0_2_2_3', 'm_1_0_0_2', 'm_1_0_0_3', 'm_1_0_0_5', 'm_1_0_0_5_0', 'm_1_0_0_6'] are bound/skolem variables with no name at t | |
| numbertheory_2pownm1prime_nprime-333 | H0 | CONFIRMED | 333 | 12/0 |  [dropped 6 unnamed params / 15 requires] |  |
| numbertheory_2pownm1prime_nprime-338 | H0 | CONFIRMED | 338 | 13/0 |  [dropped 6 unnamed params / 16 requires] |  |
| numbertheory_2pownm1prime_nprime-380 | H0 | UNSUPPORTED | | | parameters ['k_1_0_0_2_2_3', 'm_1_0_0_2', 'm_1_0_0_3', 'm_1_0_0_5', 'm_1_0_0_5_0', 'm_1_0_0_6'] are bound/skolem variables with no name at t | |
| numbertheory_2pownm1prime_nprime-393 | H0 | CONFIRMED | 400 | 12/0 |  [dropped 6 unnamed params / 17 requires] |  |
| numbertheory_3pow2pownm1mod2pownp3eq2pownp2-40 | pass2 | CONFIRMED | 422 | 25/0 | call: Verification out of resource (induction_helper_1) [dropped 2 unnamed params / 2 requires] |  |
| numbertheory_3pow2pownm1mod2pownp3eq2pownp2-57 | pass2 | CONFIRMED | 421 | 27/0 | call: Verification out of resource (induction_helper_1) [dropped 2 unnamed params / 2 requires] |  |
| numbertheory_3pow2pownm1mod2pownp3eq2pownp2-59 | pass2 | CONFIRMED | 106 | 2/0 |  [dropped 2 unnamed params / 0 requires] |  |
| numbertheory_3pow2pownm1mod2pownp3eq2pownp2-88 | pass2 | CONFIRMED | 96 | 2/0 |  [dropped 2 unnamed params / 0 requires] |  |
| numbertheory_3pow2pownm1mod2pownp3eq2pownp2-98 | pass2 | UNSUPPORTED | | | insertion does not resolve/parse: expression is not allowed to invoke a lemma (vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L98) (line 98) | |
| numbertheory_3pow2pownm1mod2pownp3eq2pownp2-109 | pass2 | CONFIRMED | 420 | 2/0 |  [dropped 2 unnamed params / 0 requires] |  |
| numbertheory_3pow2pownm1mod2pownp3eq2pownp2-111 | pass2 | CONFIRMED | 244 | 2/0 |  [dropped 2 unnamed params / 0 requires] |  |
| numbertheory_3pow2pownm1mod2pownp3eq2pownp2-113 | H0 | UNSUPPORTED | | | parameters ['k_1_0_0', 'k_1_0_2', 'k_1_0_3'] are bound/skolem variables with no name at the line; without them (and their requires) the lemm | |
| numbertheory_3pow2pownm1mod2pownp3eq2pownp2-124 | pass2 | CONFIRMED | 131 | 2/0 |  [dropped 2 unnamed params / 0 requires] |  |
| numbertheory_3pow2pownm1mod2pownp3eq2pownp2-129 | K1 | CONFIRMED | 129 | 27/0 | call: Verification out of resource (induction_helper_1) [dropped 3 unnamed params / 2 requires] |  |
| numbertheory_3pow2pownm1mod2pownp3eq2pownp2-146 | pass2 | CONFIRMED | 151 | 2/0 |  [dropped 2 unnamed params / 0 requires] |  |
| numbertheory_3pow2pownm1mod2pownp3eq2pownp2-150 | pass2 | CONFIRMED | 150 | 2/0 |  [dropped 3 unnamed params / 0 requires] |  |
| numbertheory_3pow2pownm1mod2pownp3eq2pownp2-177 | pass2 | CONFIRMED | 184 | 2/0 |  [dropped 2 unnamed params / 0 requires] |  |
| numbertheory_3pow2pownm1mod2pownp3eq2pownp2-182 | pass2 | CONFIRMED | 182 | 33/0 | call: Verification out of resource (induction_helper_1) [dropped 3 unnamed params / 2 requires] |  |
| numbertheory_3pow2pownm1mod2pownp3eq2pownp2-220 | H0 | UNSUPPORTED | | | parameters ['k_1_0_0', 'k_1_0_2', 'k_1_0_3'] are bound/skolem variables with no name at the line; without them (and their requires) the lemm | |
| numbertheory_3pow2pownm1mod2pownp3eq2pownp2-221 | H0 | UNSUPPORTED | | | parameters ['k_1_0_0', 'k_1_0_2', 'k_1_0_3'] are bound/skolem variables with no name at the line; without them (and their requires) the lemm | |
| numbertheory_3pow2pownm1mod2pownp3eq2pownp2-222 | H0 | UNSUPPORTED | | | parameters ['k_1_0_0', 'k_1_0_2', 'k_1_0_3'] are bound/skolem variables with no name at the line; without them (and their requires) the lemm | |
| numbertheory_3pow2pownm1mod2pownp3eq2pownp2-226 | pass2 | CONFIRMED | 241 | 24/0 |  [dropped 2 unnamed params / 2 requires] |  |
| numbertheory_3pow2pownm1mod2pownp3eq2pownp2-233 | pass2 | CONFIRMED | 238 | 26/0 |  [dropped 2 unnamed params / 2 requires] |  |
| numbertheory_3pow2pownm1mod2pownp3eq2pownp2-240 | pass2 | CONFIRMED | 240 | 24/0 |  [dropped 3 unnamed params / 2 requires] |  |
| numbertheory_3pow2pownm1mod2pownp3eq2pownp2-243 | pass2 | CONFIRMED | 243 | 24/0 |  [dropped 3 unnamed params / 2 requires] |  |
| numbertheory_3pow2pownm1mod2pownp3eq2pownp2-246 | pass2 | CONFIRMED | 359 | 17/0 |  [dropped 2 unnamed params / 2 requires] |  |
| numbertheory_3pow2pownm1mod2pownp3eq2pownp2-250 | H0 | UNSUPPORTED | | | parameters ['k_1_0_0', 'k_1_0_2', 'k_1_0_3'] are bound/skolem variables with no name at the line; without them (and their requires) the lemm | |
| numbertheory_3pow2pownm1mod2pownp3eq2pownp2-261 | pass2 | CONFIRMED | 268 | 29/0 | call: Verification out of resource (induction_helper_1) [dropped 2 unnamed params / 2 requires] |  |
| numbertheory_3pow2pownm1mod2pownp3eq2pownp2-266 | L266_K1K4 | CONFIRMED | 266 | 29/0 | call: Verification out of resource (induction_helper_1) [dropped 3 unnamed params / 2 requires] |  |
| numbertheory_3pow2pownm1mod2pownp3eq2pownp2-283 | L283_K2pow | CONFIRMED | 288 | 35/0 |  [dropped 2 unnamed params / 2 requires] |  |
| numbertheory_3pow2pownm1mod2pownp3eq2pownp2-287 | L287_K2pow | CONFIRMED | 287 | 31/0 |  [dropped 3 unnamed params / 2 requires] |  |
| numbertheory_3pow2pownm1mod2pownp3eq2pownp2-314 | pass2 | CONFIRMED | 321 | 35/0 | call: Verification out of resource (induction_helper_1) [dropped 2 unnamed params / 2 requires] |  |
| numbertheory_3pow2pownm1mod2pownp3eq2pownp2-319 | K1 | CONFIRMED | 319 | 35/0 | call: Verification out of resource (induction_helper_1) [dropped 3 unnamed params / 2 requires] |  |
| numbertheory_3pow2pownm1mod2pownp3eq2pownp2-335 | H0 | UNSUPPORTED | | | parameters ['k_1_0_0', 'k_1_0_2', 'k_1_0_3'] are bound/skolem variables with no name at the line; without them (and their requires) the lemm | |
| numbertheory_3pow2pownm1mod2pownp3eq2pownp2-336 | H0 | UNSUPPORTED | | | parameters ['k_1_0_0', 'k_1_0_2', 'k_1_0_3'] are bound/skolem variables with no name at the line; without them (and their requires) the lemm | |
| numbertheory_3pow2pownm1mod2pownp3eq2pownp2-337 | H0 | UNSUPPORTED | | | parameters ['k_1_0_0', 'k_1_0_2', 'k_1_0_3'] are bound/skolem variables with no name at the line; without them (and their requires) the lemm | |
| numbertheory_3pow2pownm1mod2pownp3eq2pownp2-389 | K2pow | UNSUPPORTED | | | parameters ['k_1_0_0', 'k_1_0_2', 'k_1_0_3'] are bound/skolem variables with no name at the line; without them (and their requires) the lemm | |
| numbertheory_3pow2pownm1mod2pownp3eq2pownp2-390 | K2pow | CONFIRMED | 390 | 47/0 |  [dropped 3 unnamed params / 2 requires] |  |
| numbertheory_3pow2pownm1mod2pownp3eq2pownp2-394 | K2pow | UNSUPPORTED | | | parameters ['k_1_0_0', 'k_1_0_2', 'k_1_0_3'] are bound/skolem variables with no name at the line; without them (and their requires) the lemm | |
| numbertheory_3pow2pownm1mod2pownp3eq2pownp2-483 | K2pow | CONFIRMED | 483 | 18/0 |  [dropped 4 unnamed params / 2 requires] |  |
| numbertheory_3pow2pownm1mod2pownp3eq2pownp2-516 | K1K4 | UNSUPPORTED | | | parameters ['k_1_2', 'k_1_3', 'k_2'] are bound/skolem variables with no name at the line; without them (and their requires) the lemma no lon | |
| numbertheory_3pow2pownm1mod2pownp3eq2pownp2-545 | K5 | CONFIRMED | 545 | 21/0 | call: Verification out of resource (numbertheory_3pow2pownm1mod2po [dropped 4 unnamed params / 2 requires] |  |
| numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown-60 | K3+K2pow | LINE_OK_PRE_FAIL | 60 | 7/1 | OOR: `NatDvd(f(Int.pow(2, m)), f(Int.pow(2, m + (t - 1))))` [dropped 1 unnamed params / 1 requires] |  |
| numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown-97 | K2pow | CONFIRMED | 111 | 16/0 |  [dropped 2 unnamed params / 2 requires] |  |
| numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown-113 | K2pow | CONFIRMED | 127 | 17/0 |  [dropped 2 unnamed params / 2 requires] |  |
| numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown-129 | K2pow | CONFIRMED | 143 | 18/0 |  [dropped 2 unnamed params / 2 requires] |  |
| numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown-148 | K2pow | CONFIRMED | 330 | 24/0 | call: Verification out of resource (numbertheory_fxeq4powxp6powxp9 [dropped 2 unnamed params / 2 requires] |  |
| numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown-150 | K2pow | CONFIRMED | 162 | 18/0 |  [dropped 2 unnamed params / 2 requires] |  |
| numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown-231 | K2pow | CONFIRMED | 245 | 26/0 | call: Verification out of resource (numbertheory_fxeq4powxp6powxp9 [dropped 2 unnamed params / 2 requires] |  |
| numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown-247 | K2pow | CONFIRMED | 261 | 27/0 | call: Verification out of resource (numbertheory_fxeq4powxp6powxp9 [dropped 2 unnamed params / 2 requires] |  |
| numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown-265 | split+K2pow | LINE_OK_PRE_FAIL | 274 | 25/1 | OOR: `forall m0: int, n0: int :: (forall x_2: nat :: f.requires(x_2)) && (0 ` [dropped 2 unnamed params / 2 requires] |  |
| numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown-306 | K2pow | LINE_OK_PRE_FAIL | 306 | 28/1 | OOR: `forall m0: int, n0: int :: (forall x_2: nat :: f.requires(x_2)) && (0 ` [dropped 3 unnamed params / 3 requires] |  |
| numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown-390 | SCsplit_helper | UNSUPPORTED | | | parameters ['k_1_0', 'k_1_1_0_1_0', 't_3_5'] are bound/skolem variables with no name at the line; without them (and their requires) the lemm | |
| numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown-408 | K1 | UNSUPPORTED | | | parameters ['k_0_2_3_2_1_0', 'k_1_1_0_1_0', 't_2_1', 't_3_5'] are bound/skolem variables with no name at the line; without them (and their r | |
| numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown-447 | K1 | UNSUPPORTED | | | parameters ['k_0_2_3_2_1_0', 'k_1_1_0_1_0', 't_3_2', 't_3_3', 't_3_5', 't_3_6'] are bound/skolem variables with no name at the line; without | |
| numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown-450 | K3K2pow | CONFIRMED | 450 | 5/0 |  [dropped 6 unnamed params / 0 requires] |  |
