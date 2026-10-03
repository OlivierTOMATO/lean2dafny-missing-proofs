// CLOSED LEMMA for failing line amc12a_2019_p21-29 (theorem amc12a_2019_p21, Dafny line 29, ERR)
// closes with: K2 (computation) — single
// added: Lean kernel checked `exact h₄` by unfolding both finite sums (defeq; zpow at ofNat = npow): both sums expanded to 12 terms with Mathlib Finset.sum_insert/sum_empty (added to work copy)
// Dafny: finished with 182 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_017/amc12a_2019_p21-29/K2.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// shard_017 ablation K2 for amc12a_2019_p21-29 (copy of the ORIGINAL line lemma; see ablate/shard_017.jsonl)
include "../../../../../wt_integ5/out/amc12a_2019_p21.dfy"

// Mathlib: Finset.sum_empty : ∑ x ∈ ∅, f x = 0
lemma {:axiom} CSumEmpty_k<T>(f: T -> Complex.complex)
  ensures Complex.sum({}, f) == Complex.of_real(0.0)
// Mathlib: Finset.sum_insert (h : a ∉ s) : ∑ x ∈ insert a s, f x = f a + ∑ x ∈ s, f x
lemma {:axiom} CSumInsert_k<T>(s: set<T>, a: T, f: T -> Complex.complex)
  requires a !in s
  ensures Complex.sum(s + {a}, f) == Complex.add(f(a), Complex.sum(s, f))

lemma {:induction false} vc_amc12a_2019_p21_L29_K2(z: Complex.complex)
  requires z == Complex.div(Complex.add(Complex.of_real(1.0), Complex.I()), Complex.of_real(Real.sqrt(2.0)))
  requires 0 <= 8
  requires Complex.pow(z, 8).Complex?
  requires Complex.of_real(1.0).Complex?
  requires Complex.pow(z, 8) == Complex.of_real(1.0)
  requires Complex.I().Complex?
  requires Complex.add(Complex.of_real(1.0), Complex.I()).Complex?
  requires Complex.of_real(Real.sqrt(2.0)).Complex?
  requires Complex.div(Complex.add(Complex.of_real(1.0), Complex.I()), Complex.of_real(Real.sqrt(2.0))).Complex?
  requires 0 <= 1
  requires 0 <= 12
  requires Complex.sum(IccN(1, 12), ((v_12_k: nat) => Complex.pow(z, v_12_k * v_12_k))).Complex?
  requires Complex.of_real(6.0).Complex?
  requires Complex.mul(Complex.of_real(6.0), z).Complex?
  requires Complex.of_real(3.0).Complex?
  requires 0 <= 4
  requires Complex.pow(z, 4).Complex?
  requires Complex.mul(Complex.of_real(3.0), Complex.pow(z, 4)).Complex?
  requires Complex.add(Complex.mul(Complex.of_real(6.0), z), Complex.mul(Complex.of_real(3.0), Complex.pow(z, 4))).Complex?
  requires Complex.add(Complex.add(Complex.mul(Complex.of_real(6.0), z), Complex.mul(Complex.of_real(3.0), Complex.pow(z, 4))), Complex.of_real(3.0)).Complex?
  requires Complex.sum(IccN(1, 12), ((v_12_k: nat) => Complex.pow(z, v_12_k * v_12_k))) == Complex.add(Complex.add(Complex.mul(Complex.of_real(6.0), z), Complex.mul(Complex.of_real(3.0), Complex.pow(z, 4))), Complex.of_real(3.0))
  requires Complex.sum(Icc(1, 12), ((k: int) => Complex.zpow(z, k * k))).Complex?
  ensures  Complex.sum(Icc(1, 12), ((k: int) => Complex.zpow(z, k * k))) == Complex.add(Complex.add(Complex.mul(Complex.of_real(6.0), z), Complex.mul(Complex.of_real(3.0), Complex.pow(z, 4))), Complex.of_real(3.0))
{
  var si0: set<int> := {};
  assert Icc(1, 12) == {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12};
  CSumEmpty_k<int>(((k: int) => Complex.zpow(z, k * k)));
  var si1: set<int> := {1};
  CSumInsert_k<int>(si0, 1, ((k: int) => Complex.zpow(z, k * k))); assert si0 + {1} == si1;
  var si2: set<int> := {1, 2};
  CSumInsert_k<int>(si1, 2, ((k: int) => Complex.zpow(z, k * k))); assert si1 + {2} == si2;
  var si3: set<int> := {1, 2, 3};
  CSumInsert_k<int>(si2, 3, ((k: int) => Complex.zpow(z, k * k))); assert si2 + {3} == si3;
  var si4: set<int> := {1, 2, 3, 4};
  CSumInsert_k<int>(si3, 4, ((k: int) => Complex.zpow(z, k * k))); assert si3 + {4} == si4;
  var si5: set<int> := {1, 2, 3, 4, 5};
  CSumInsert_k<int>(si4, 5, ((k: int) => Complex.zpow(z, k * k))); assert si4 + {5} == si5;
  var si6: set<int> := {1, 2, 3, 4, 5, 6};
  CSumInsert_k<int>(si5, 6, ((k: int) => Complex.zpow(z, k * k))); assert si5 + {6} == si6;
  var si7: set<int> := {1, 2, 3, 4, 5, 6, 7};
  CSumInsert_k<int>(si6, 7, ((k: int) => Complex.zpow(z, k * k))); assert si6 + {7} == si7;
  var si8: set<int> := {1, 2, 3, 4, 5, 6, 7, 8};
  CSumInsert_k<int>(si7, 8, ((k: int) => Complex.zpow(z, k * k))); assert si7 + {8} == si8;
  var si9: set<int> := {1, 2, 3, 4, 5, 6, 7, 8, 9};
  CSumInsert_k<int>(si8, 9, ((k: int) => Complex.zpow(z, k * k))); assert si8 + {9} == si9;
  var si10: set<int> := {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
  CSumInsert_k<int>(si9, 10, ((k: int) => Complex.zpow(z, k * k))); assert si9 + {10} == si10;
  var si11: set<int> := {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11};
  CSumInsert_k<int>(si10, 11, ((k: int) => Complex.zpow(z, k * k))); assert si10 + {11} == si11;
  var si12: set<int> := {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12};
  CSumInsert_k<int>(si11, 12, ((k: int) => Complex.zpow(z, k * k))); assert si11 + {12} == si12;
  var sn0: set<nat> := {};
  assert IccN(1, 12) == {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12};
  CSumEmpty_k<nat>(((v_12_k: nat) => Complex.pow(z, v_12_k * v_12_k)));
  var sn1: set<nat> := {1};
  CSumInsert_k<nat>(sn0, 1, ((v_12_k: nat) => Complex.pow(z, v_12_k * v_12_k))); assert sn0 + {1} == sn1;
  var sn2: set<nat> := {1, 2};
  CSumInsert_k<nat>(sn1, 2, ((v_12_k: nat) => Complex.pow(z, v_12_k * v_12_k))); assert sn1 + {2} == sn2;
  var sn3: set<nat> := {1, 2, 3};
  CSumInsert_k<nat>(sn2, 3, ((v_12_k: nat) => Complex.pow(z, v_12_k * v_12_k))); assert sn2 + {3} == sn3;
  var sn4: set<nat> := {1, 2, 3, 4};
  CSumInsert_k<nat>(sn3, 4, ((v_12_k: nat) => Complex.pow(z, v_12_k * v_12_k))); assert sn3 + {4} == sn4;
  var sn5: set<nat> := {1, 2, 3, 4, 5};
  CSumInsert_k<nat>(sn4, 5, ((v_12_k: nat) => Complex.pow(z, v_12_k * v_12_k))); assert sn4 + {5} == sn5;
  var sn6: set<nat> := {1, 2, 3, 4, 5, 6};
  CSumInsert_k<nat>(sn5, 6, ((v_12_k: nat) => Complex.pow(z, v_12_k * v_12_k))); assert sn5 + {6} == sn6;
  var sn7: set<nat> := {1, 2, 3, 4, 5, 6, 7};
  CSumInsert_k<nat>(sn6, 7, ((v_12_k: nat) => Complex.pow(z, v_12_k * v_12_k))); assert sn6 + {7} == sn7;
  var sn8: set<nat> := {1, 2, 3, 4, 5, 6, 7, 8};
  CSumInsert_k<nat>(sn7, 8, ((v_12_k: nat) => Complex.pow(z, v_12_k * v_12_k))); assert sn7 + {8} == sn8;
  var sn9: set<nat> := {1, 2, 3, 4, 5, 6, 7, 8, 9};
  CSumInsert_k<nat>(sn8, 9, ((v_12_k: nat) => Complex.pow(z, v_12_k * v_12_k))); assert sn8 + {9} == sn9;
  var sn10: set<nat> := {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
  CSumInsert_k<nat>(sn9, 10, ((v_12_k: nat) => Complex.pow(z, v_12_k * v_12_k))); assert sn9 + {10} == sn10;
  var sn11: set<nat> := {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11};
  CSumInsert_k<nat>(sn10, 11, ((v_12_k: nat) => Complex.pow(z, v_12_k * v_12_k))); assert sn10 + {11} == sn11;
  var sn12: set<nat> := {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12};
  CSumInsert_k<nat>(sn11, 12, ((v_12_k: nat) => Complex.pow(z, v_12_k * v_12_k))); assert sn11 + {12} == sn12;
}
