// CLOSED — failing line mathd_numbertheory_618-139: theorem mathd_numbertheory_618, Dafny line 139 (OOR: Verification out of resource (mathd_numbertheory_618))
// failing Dafny line: assert false by {
// Lean step: have h₆ : n ≤ 40 := by linarith
// hypotheses: 53 facts Z3 had at the line (goal itself removed: 0; the block's own asserts removed: 1); nothing assumed beyond the facts in scope; pass2 kept 12 of 53 facts (dropped 41 interval_cases case-structure facts, hypotheses only dropped, none added)
// how it closes: pass2 — dropped the interval_cases case-structure facts; body restructured as a 40-way if/else-if chain on n (n in 1..40 from n>0, !(41<=n)); each branch asserts p(n) == n*n-n+41 (value) and gcd(value, 2n) == 1 (literal gcd evaluates), contradicting 1 < gcd(p(n), 2*n)
// Dafny: finished with 213 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/mathd_numbertheory_618.dfy"
lemma {:induction false} vc_mathd_numbertheory_618_L139(n: int, n_0_0_0_1_0: int, n_0_0_0_1_0_1_0: int, p: nat -> nat, x_3_0_0_0__arg: nat, x_3_0_0_100__arg: nat, x_3_0_0_101__arg: nat, x_3_0_0_102__arg: nat, x_3_0_0_103__arg: nat, x_3_0_0_104__arg: nat, x_3_0_0_105__arg: nat, x_3_0_0_106__arg: nat, x_3_0_0_107__arg: nat, x_3_0_0_108__arg: nat, x_3_0_0_109__arg: nat, x_3_0_0_10__arg: nat, x_3_0_0_110__arg: nat, x_3_0_0_111__arg: nat, x_3_0_0_112__arg: nat, x_3_0_0_113__arg: nat, x_3_0_0_114__arg: nat, x_3_0_0_115__arg: nat, x_3_0_0_116__arg: nat, x_3_0_0_117__arg: nat, x_3_0_0_118__arg: nat, x_3_0_0_119__arg: nat, x_3_0_0_11__arg: nat, x_3_0_0_120__arg: nat, x_3_0_0_121__arg: nat, x_3_0_0_122__arg: nat, x_3_0_0_123__arg: nat, x_3_0_0_124__arg: nat, x_3_0_0_125__arg: nat, x_3_0_0_126__arg: nat, x_3_0_0_127__arg: nat, x_3_0_0_128__arg: nat, x_3_0_0_129__arg: nat, x_3_0_0_12__arg: nat, x_3_0_0_130__arg: nat, x_3_0_0_131__arg: nat, x_3_0_0_132__arg: nat, x_3_0_0_133__arg: nat, x_3_0_0_134__arg: nat, x_3_0_0_135__arg: nat, x_3_0_0_136__arg: nat, x_3_0_0_137__arg: nat, x_3_0_0_138__arg: nat, x_3_0_0_139__arg: nat, x_3_0_0_13__arg: nat, x_3_0_0_140__arg: nat, x_3_0_0_141__arg: nat, x_3_0_0_142__arg: nat, x_3_0_0_143__arg: nat, x_3_0_0_144__arg: nat, x_3_0_0_145__arg: nat, x_3_0_0_146__arg: nat, x_3_0_0_147__arg: nat, x_3_0_0_148__arg: nat, x_3_0_0_149__arg: nat, x_3_0_0_14__arg: nat, x_3_0_0_150__arg: nat, x_3_0_0_151__arg: nat, x_3_0_0_152__arg: nat, x_3_0_0_153__arg: nat, x_3_0_0_154__arg: nat, x_3_0_0_155__arg: nat, x_3_0_0_156__arg: nat, x_3_0_0_157__arg: nat, x_3_0_0_158__arg: nat, x_3_0_0_159__arg: nat, x_3_0_0_15__arg: nat, x_3_0_0_16__arg: nat, x_3_0_0_17__arg: nat, x_3_0_0_18__arg: nat, x_3_0_0_19__arg: nat, x_3_0_0_1__arg: nat, x_3_0_0_20__arg: nat, x_3_0_0_21__arg: nat, x_3_0_0_22__arg: nat, x_3_0_0_23__arg: nat, x_3_0_0_24__arg: nat, x_3_0_0_25__arg: nat, x_3_0_0_26__arg: nat, x_3_0_0_27__arg: nat, x_3_0_0_28__arg: nat, x_3_0_0_29__arg: nat, x_3_0_0_2__arg: nat, x_3_0_0_30__arg: nat, x_3_0_0_31__arg: nat, x_3_0_0_32__arg: nat, x_3_0_0_33__arg: nat, x_3_0_0_34__arg: nat, x_3_0_0_35__arg: nat, x_3_0_0_36__arg: nat, x_3_0_0_37__arg: nat, x_3_0_0_38__arg: nat, x_3_0_0_39__arg: nat, x_3_0_0_3__arg: nat, x_3_0_0_40__arg: nat, x_3_0_0_41__arg: nat, x_3_0_0_42__arg: nat, x_3_0_0_43__arg: nat, x_3_0_0_44__arg: nat, x_3_0_0_45__arg: nat, x_3_0_0_46__arg: nat, x_3_0_0_47__arg: nat, x_3_0_0_48__arg: nat, x_3_0_0_49__arg: nat, x_3_0_0_4__arg: nat, x_3_0_0_50__arg: nat, x_3_0_0_51__arg: nat, x_3_0_0_52__arg: nat, x_3_0_0_53__arg: nat, x_3_0_0_54__arg: nat, x_3_0_0_55__arg: nat, x_3_0_0_56__arg: nat, x_3_0_0_57__arg: nat, x_3_0_0_58__arg: nat, x_3_0_0_59__arg: nat, x_3_0_0_5__arg: nat, x_3_0_0_60__arg: nat, x_3_0_0_61__arg: nat, x_3_0_0_62__arg: nat, x_3_0_0_63__arg: nat, x_3_0_0_64__arg: nat, x_3_0_0_65__arg: nat, x_3_0_0_66__arg: nat, x_3_0_0_67__arg: nat, x_3_0_0_68__arg: nat, x_3_0_0_69__arg: nat, x_3_0_0_6__arg: nat, x_3_0_0_70__arg: nat, x_3_0_0_71__arg: nat, x_3_0_0_72__arg: nat, x_3_0_0_73__arg: nat, x_3_0_0_74__arg: nat, x_3_0_0_75__arg: nat, x_3_0_0_76__arg: nat, x_3_0_0_77__arg: nat, x_3_0_0_78__arg: nat, x_3_0_0_79__arg: nat, x_3_0_0_7__arg: nat, x_3_0_0_80__arg: nat, x_3_0_0_81__arg: nat, x_3_0_0_82__arg: nat, x_3_0_0_83__arg: nat, x_3_0_0_84__arg: nat, x_3_0_0_85__arg: nat, x_3_0_0_86__arg: nat, x_3_0_0_87__arg: nat, x_3_0_0_88__arg: nat, x_3_0_0_89__arg: nat, x_3_0_0_8__arg: nat, x_3_0_0_90__arg: nat, x_3_0_0_91__arg: nat, x_3_0_0_92__arg: nat, x_3_0_0_93__arg: nat, x_3_0_0_94__arg: nat, x_3_0_0_95__arg: nat, x_3_0_0_96__arg: nat, x_3_0_0_97__arg: nat, x_3_0_0_98__arg: nat, x_3_0_0_99__arg: nat, x_3_0_0_9__arg: nat, y_3_0_0_0__arg: nat, y_3_0_0_100__arg: nat, y_3_0_0_101__arg: nat, y_3_0_0_102__arg: nat, y_3_0_0_103__arg: nat, y_3_0_0_104__arg: nat, y_3_0_0_105__arg: nat, y_3_0_0_106__arg: nat, y_3_0_0_107__arg: nat, y_3_0_0_108__arg: nat, y_3_0_0_109__arg: nat, y_3_0_0_10__arg: nat, y_3_0_0_110__arg: nat, y_3_0_0_111__arg: nat, y_3_0_0_112__arg: nat, y_3_0_0_113__arg: nat, y_3_0_0_114__arg: nat, y_3_0_0_115__arg: nat, y_3_0_0_116__arg: nat, y_3_0_0_117__arg: nat, y_3_0_0_118__arg: nat, y_3_0_0_119__arg: nat, y_3_0_0_11__arg: nat, y_3_0_0_120__arg: nat, y_3_0_0_121__arg: nat, y_3_0_0_122__arg: nat, y_3_0_0_123__arg: nat, y_3_0_0_124__arg: nat, y_3_0_0_125__arg: nat, y_3_0_0_126__arg: nat, y_3_0_0_127__arg: nat, y_3_0_0_128__arg: nat, y_3_0_0_129__arg: nat, y_3_0_0_12__arg: nat, y_3_0_0_130__arg: nat, y_3_0_0_131__arg: nat, y_3_0_0_132__arg: nat, y_3_0_0_133__arg: nat, y_3_0_0_134__arg: nat, y_3_0_0_135__arg: nat, y_3_0_0_136__arg: nat, y_3_0_0_137__arg: nat, y_3_0_0_138__arg: nat, y_3_0_0_139__arg: nat, y_3_0_0_13__arg: nat, y_3_0_0_140__arg: nat, y_3_0_0_141__arg: nat, y_3_0_0_142__arg: nat, y_3_0_0_143__arg: nat, y_3_0_0_144__arg: nat, y_3_0_0_145__arg: nat, y_3_0_0_146__arg: nat, y_3_0_0_147__arg: nat, y_3_0_0_148__arg: nat, y_3_0_0_149__arg: nat, y_3_0_0_14__arg: nat, y_3_0_0_150__arg: nat, y_3_0_0_151__arg: nat, y_3_0_0_152__arg: nat, y_3_0_0_153__arg: nat, y_3_0_0_154__arg: nat, y_3_0_0_155__arg: nat, y_3_0_0_156__arg: nat, y_3_0_0_157__arg: nat, y_3_0_0_158__arg: nat, y_3_0_0_159__arg: nat, y_3_0_0_15__arg: nat, y_3_0_0_16__arg: nat, y_3_0_0_17__arg: nat, y_3_0_0_18__arg: nat, y_3_0_0_19__arg: nat, y_3_0_0_1__arg: nat, y_3_0_0_20__arg: nat, y_3_0_0_21__arg: nat, y_3_0_0_22__arg: nat, y_3_0_0_23__arg: nat, y_3_0_0_24__arg: nat, y_3_0_0_25__arg: nat, y_3_0_0_26__arg: nat, y_3_0_0_27__arg: nat, y_3_0_0_28__arg: nat, y_3_0_0_29__arg: nat, y_3_0_0_2__arg: nat, y_3_0_0_30__arg: nat, y_3_0_0_31__arg: nat, y_3_0_0_32__arg: nat, y_3_0_0_33__arg: nat, y_3_0_0_34__arg: nat, y_3_0_0_35__arg: nat, y_3_0_0_36__arg: nat, y_3_0_0_37__arg: nat, y_3_0_0_38__arg: nat, y_3_0_0_39__arg: nat, y_3_0_0_3__arg: nat, y_3_0_0_40__arg: nat, y_3_0_0_41__arg: nat, y_3_0_0_42__arg: nat, y_3_0_0_43__arg: nat, y_3_0_0_44__arg: nat, y_3_0_0_45__arg: nat, y_3_0_0_46__arg: nat, y_3_0_0_47__arg: nat, y_3_0_0_48__arg: nat, y_3_0_0_49__arg: nat, y_3_0_0_4__arg: nat, y_3_0_0_50__arg: nat, y_3_0_0_51__arg: nat, y_3_0_0_52__arg: nat, y_3_0_0_53__arg: nat, y_3_0_0_54__arg: nat, y_3_0_0_55__arg: nat, y_3_0_0_56__arg: nat, y_3_0_0_57__arg: nat, y_3_0_0_58__arg: nat, y_3_0_0_59__arg: nat, y_3_0_0_5__arg: nat, y_3_0_0_60__arg: nat, y_3_0_0_61__arg: nat, y_3_0_0_62__arg: nat, y_3_0_0_63__arg: nat, y_3_0_0_64__arg: nat, y_3_0_0_65__arg: nat, y_3_0_0_66__arg: nat, y_3_0_0_67__arg: nat, y_3_0_0_68__arg: nat, y_3_0_0_69__arg: nat, y_3_0_0_6__arg: nat, y_3_0_0_70__arg: nat, y_3_0_0_71__arg: nat, y_3_0_0_72__arg: nat, y_3_0_0_73__arg: nat, y_3_0_0_74__arg: nat, y_3_0_0_75__arg: nat, y_3_0_0_76__arg: nat, y_3_0_0_77__arg: nat, y_3_0_0_78__arg: nat, y_3_0_0_79__arg: nat, y_3_0_0_7__arg: nat, y_3_0_0_80__arg: nat, y_3_0_0_81__arg: nat, y_3_0_0_82__arg: nat, y_3_0_0_83__arg: nat, y_3_0_0_84__arg: nat, y_3_0_0_85__arg: nat, y_3_0_0_86__arg: nat, y_3_0_0_87__arg: nat, y_3_0_0_88__arg: nat, y_3_0_0_89__arg: nat, y_3_0_0_8__arg: nat, y_3_0_0_90__arg: nat, y_3_0_0_91__arg: nat, y_3_0_0_92__arg: nat, y_3_0_0_93__arg: nat, y_3_0_0_94__arg: nat, y_3_0_0_95__arg: nat, y_3_0_0_96__arg: nat, y_3_0_0_97__arg: nat, y_3_0_0_98__arg: nat, y_3_0_0_99__arg: nat, y_3_0_0_9__arg: nat)
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
  ensures   false
{
  if n == 1 {  // [ADDED]
    assert p(n) == 41; assert gcd(41, 2) == 1;  // [ADDED]
  } else if n == 2 {  // [ADDED]
    assert p(n) == 43; assert gcd(43, 4) == 1;  // [ADDED]
  } else if n == 3 {  // [ADDED]
    assert p(n) == 47; assert gcd(47, 6) == 1;  // [ADDED]
  } else if n == 4 {  // [ADDED]
    assert p(n) == 53; assert gcd(53, 8) == 1;  // [ADDED]
  } else if n == 5 {  // [ADDED]
    assert p(n) == 61; assert gcd(61, 10) == 1;  // [ADDED]
  } else if n == 6 {  // [ADDED]
    assert p(n) == 71; assert gcd(71, 12) == 1;  // [ADDED]
  } else if n == 7 {  // [ADDED]
    assert p(n) == 83; assert gcd(83, 14) == 1;  // [ADDED]
  } else if n == 8 {  // [ADDED]
    assert p(n) == 97; assert gcd(97, 16) == 1;  // [ADDED]
  } else if n == 9 {  // [ADDED]
    assert p(n) == 113; assert gcd(113, 18) == 1;  // [ADDED]
  } else if n == 10 {  // [ADDED]
    assert p(n) == 131; assert gcd(131, 20) == 1;  // [ADDED]
  } else if n == 11 {  // [ADDED]
    assert p(n) == 151; assert gcd(151, 22) == 1;  // [ADDED]
  } else if n == 12 {  // [ADDED]
    assert p(n) == 173; assert gcd(173, 24) == 1;  // [ADDED]
  } else if n == 13 {  // [ADDED]
    assert p(n) == 197; assert gcd(197, 26) == 1;  // [ADDED]
  } else if n == 14 {  // [ADDED]
    assert p(n) == 223; assert gcd(223, 28) == 1;  // [ADDED]
  } else if n == 15 {  // [ADDED]
    assert p(n) == 251; assert gcd(251, 30) == 1;  // [ADDED]
  } else if n == 16 {  // [ADDED]
    assert p(n) == 281; assert gcd(281, 32) == 1;  // [ADDED]
  } else if n == 17 {  // [ADDED]
    assert p(n) == 313; assert gcd(313, 34) == 1;  // [ADDED]
  } else if n == 18 {  // [ADDED]
    assert p(n) == 347; assert gcd(347, 36) == 1;  // [ADDED]
  } else if n == 19 {  // [ADDED]
    assert p(n) == 383; assert gcd(383, 38) == 1;  // [ADDED]
  } else if n == 20 {  // [ADDED]
    assert p(n) == 421; assert gcd(421, 40) == 1;  // [ADDED]
  } else if n == 21 {  // [ADDED]
    assert p(n) == 461; assert gcd(461, 42) == 1;  // [ADDED]
  } else if n == 22 {  // [ADDED]
    assert p(n) == 503; assert gcd(503, 44) == 1;  // [ADDED]
  } else if n == 23 {  // [ADDED]
    assert p(n) == 547; assert gcd(547, 46) == 1;  // [ADDED]
  } else if n == 24 {  // [ADDED]
    assert p(n) == 593; assert gcd(593, 48) == 1;  // [ADDED]
  } else if n == 25 {  // [ADDED]
    assert p(n) == 641; assert gcd(641, 50) == 1;  // [ADDED]
  } else if n == 26 {  // [ADDED]
    assert p(n) == 691; assert gcd(691, 52) == 1;  // [ADDED]
  } else if n == 27 {  // [ADDED]
    assert p(n) == 743; assert gcd(743, 54) == 1;  // [ADDED]
  } else if n == 28 {  // [ADDED]
    assert p(n) == 797; assert gcd(797, 56) == 1;  // [ADDED]
  } else if n == 29 {  // [ADDED]
    assert p(n) == 853; assert gcd(853, 58) == 1;  // [ADDED]
  } else if n == 30 {  // [ADDED]
    assert p(n) == 911; assert gcd(911, 60) == 1;  // [ADDED]
  } else if n == 31 {  // [ADDED]
    assert p(n) == 971; assert gcd(971, 62) == 1;  // [ADDED]
  } else if n == 32 {  // [ADDED]
    assert p(n) == 1033; assert gcd(1033, 64) == 1;  // [ADDED]
  } else if n == 33 {  // [ADDED]
    assert p(n) == 1097; assert gcd(1097, 66) == 1;  // [ADDED]
  } else if n == 34 {  // [ADDED]
    assert p(n) == 1163; assert gcd(1163, 68) == 1;  // [ADDED]
  } else if n == 35 {  // [ADDED]
    assert p(n) == 1231; assert gcd(1231, 70) == 1;  // [ADDED]
  } else if n == 36 {  // [ADDED]
    assert p(n) == 1301; assert gcd(1301, 72) == 1;  // [ADDED]
  } else if n == 37 {  // [ADDED]
    assert p(n) == 1373; assert gcd(1373, 74) == 1;  // [ADDED]
  } else if n == 38 {  // [ADDED]
    assert p(n) == 1447; assert gcd(1447, 76) == 1;  // [ADDED]
  } else if n == 39 {  // [ADDED]
    assert p(n) == 1523; assert gcd(1523, 78) == 1;  // [ADDED]
  } else if n == 40 {  // [ADDED]
    assert p(n) == 1601; assert gcd(1601, 80) == 1;  // [ADDED]
  } else {  // [ADDED]
    assert false;
  }
}


