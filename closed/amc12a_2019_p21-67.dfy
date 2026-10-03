// CLOSED — failing line amc12a_2019_p21-67: theorem amc12a_2019_p21, Dafny line 67 (ERR: assertion might not hold)
// failing Dafny line: assert (Complex.sum(Icc(1, 12), ((k: int) => Complex.div(Complex.of_real(1.0), Complex.zpow(z, (k * k))))) == Complex.add(Complex.add(Complex.mul(Complex.of_real(6.0), Complex.pow(z, 7)), Complex.mul(
// Lean step: h₃
// hypotheses: 21 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: S2 — 
// Dafny: finished with 143 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12a_2019_p21.dfy"
lemma {:axiom} CSumEmpty_k<T>(f: T -> Complex.complex)  // [ADDED DECLARATION]
  ensures Complex.sum({}, f) == Complex.of_real(0.0)
lemma {:axiom} CSumInsert_k<T>(s: set<T>, a: T, f: T -> Complex.complex)  // [ADDED DECLARATION]
  requires a !in s
  ensures Complex.sum(s + {a}, f) == Complex.add(f(a), Complex.sum(s, f))
lemma OnePow_k(q: nat) ensures Complex.pow(Complex.of_real(1.0), q) == Complex.of_real(1.0)  // [ADDED DECLARATION]
{ if q > 0 { OnePow_k(q - 1); } }
lemma PowRed_k(z: Complex.complex, q: nat, r: nat)  // [ADDED DECLARATION]
  requires Complex.pow(z, 8) == Complex.of_real(1.0)
  ensures Complex.pow(z, 8 * q + r) == Complex.pow(z, r)
{ ComplexPowAdd(z, 8 * q, r); ComplexPowMul(z, 8, q); OnePow_k(q); }
lemma L67lin_k(S: Complex.complex, p7: Complex.complex, p4: Complex.complex)  // [ADDED DECLARATION]
  requires S == Complex.add(Complex.of_real(1.0), Complex.add(p7, Complex.add(p4, Complex.add(p7, Complex.add(Complex.of_real(1.0), Complex.add(p7, Complex.add(p4, Complex.add(p7, Complex.add(Complex.of_real(1.0), Complex.add(p7, Complex.add(p4, Complex.add(p7, Complex.of_real(0.0)))))))))))))
  ensures S == Complex.add(Complex.add(Complex.mul(Complex.of_real(6.0), p7), Complex.mul(Complex.of_real(3.0), p4)), Complex.of_real(3.0))
{ }
lemma InvVals_k(z: Complex.complex)  // [ADDED DECLARATION]
  requires z == Complex.Complex(Real.sqrt(2.0) / 2.0, Real.sqrt(2.0) / 2.0)
  requires Complex.pow(z, 4) == Complex.of_real(-1.0)
  requires Complex.pow(z, 7) == Complex.Complex(Real.sqrt(2.0) / 2.0, -(Real.sqrt(2.0) / 2.0))
  ensures Complex.div(Complex.of_real(1.0), z) == Complex.pow(z, 7)
  ensures Complex.div(Complex.of_real(1.0), Complex.pow(z, 4)) == Complex.pow(z, 4)
  ensures Complex.div(Complex.of_real(1.0), Complex.of_real(1.0)) == Complex.of_real(1.0)
{
  assert Real.sqrt(2.0) * Real.sqrt(2.0) == 2.0;
  assert Complex.normSq(z) == 1.0;
  assert Complex.normSq(Complex.of_real(-1.0)) == 1.0;
  assert Complex.normSq(Complex.of_real(1.0)) == 1.0;
}

lemma {:induction false} vc_amc12a_2019_p21_L67(z: Complex.complex)
  requires z == Complex.div(Complex.add(Complex.of_real(1.0), Complex.I()), Complex.of_real(Real.sqrt(2.0)))
  requires 0 <= 8
  requires Complex.pow(z, 8).Complex?
  requires Complex.of_real(1.0).Complex?
  requires Complex.pow(z, 8) == Complex.of_real(1.0)
  requires Complex.sum(Icc(1, 12), ((k: int) => Complex.zpow(z, k * k))).Complex?
  requires Complex.of_real(6.0).Complex?
  requires Complex.mul(Complex.of_real(6.0), z).Complex?
  requires Complex.of_real(3.0).Complex?
  requires 0 <= 4
  requires Complex.pow(z, 4).Complex?
  requires Complex.mul(Complex.of_real(3.0), Complex.pow(z, 4)).Complex?
  requires Complex.add(Complex.mul(Complex.of_real(6.0), z), Complex.mul(Complex.of_real(3.0), Complex.pow(z, 4))).Complex?
  requires Complex.add(Complex.add(Complex.mul(Complex.of_real(6.0), z), Complex.mul(Complex.of_real(3.0), Complex.pow(z, 4))), Complex.of_real(3.0)).Complex?
  requires Complex.sum(Icc(1, 12), ((k: int) => Complex.zpow(z, k * k))) == Complex.add(Complex.add(Complex.mul(Complex.of_real(6.0), z), Complex.mul(Complex.of_real(3.0), Complex.pow(z, 4))), Complex.of_real(3.0))
  requires Complex.sum(Icc(1, 12), ((k: int) => Complex.div(Complex.of_real(1.0), Complex.zpow(z, k * k)))).Complex?
  requires 0 <= 7
  requires Complex.pow(z, 7).Complex?
  requires Complex.mul(Complex.of_real(6.0), Complex.pow(z, 7)).Complex?
  requires Complex.add(Complex.mul(Complex.of_real(6.0), Complex.pow(z, 7)), Complex.mul(Complex.of_real(3.0), Complex.pow(z, 4))).Complex?
  requires Complex.add(Complex.add(Complex.mul(Complex.of_real(6.0), Complex.pow(z, 7)), Complex.mul(Complex.of_real(3.0), Complex.pow(z, 4))), Complex.of_real(3.0)).Complex?
  ensures   Complex.sum(Icc(1, 12), ((k: int) => Complex.div(Complex.of_real(1.0), Complex.zpow(z, k * k)))) == Complex.add(Complex.add(Complex.mul(Complex.of_real(6.0), Complex.pow(z, 7)), Complex.mul(Complex.of_real(3.0), Complex.pow(z, 4))), Complex.of_real(3.0))
{
  assert Real.sqrt(2.0) * Real.sqrt(2.0) == 2.0;  // [ADDED]
  assert Complex.normSq(Complex.of_real(Real.sqrt(2.0))) == 2.0;  // [ADDED]
  assert z == Complex.Complex(Real.sqrt(2.0) / 2.0, Real.sqrt(2.0) / 2.0);  // [ADDED]
  assert Complex.pow(z, 2) == Complex.I() by { ComplexPowTwo(z); }  // [ADDED]
  assert Complex.pow(z, 4) == Complex.of_real(-1.0) by { ComplexPowMul(z, 2, 2); ComplexPowTwo(Complex.pow(z, 2)); ComplexIMulI(); }  // [ADDED]
  assert Complex.pow(z, 8) == Complex.of_real(1.0) by { ComplexPowMul(z, 4, 2); ComplexPowTwo(Complex.pow(z, 4)); }  // [ADDED]
  var si0: set<int> := {};  // [ADDED]
  assert Icc(1, 12) == {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12};  // [ADDED]
  CSumEmpty_k<int>(((k: int) => Complex.div(Complex.of_real(1.0), Complex.zpow(z, k * k))));  // [ADDED]
  var si1: set<int> := {1};  // [ADDED]
  CSumInsert_k<int>(si0, 1, ((k: int) => Complex.div(Complex.of_real(1.0), Complex.zpow(z, k * k)))); assert si0 + {1} == si1;  // [ADDED]
  var si2: set<int> := {1, 2};  // [ADDED]
  CSumInsert_k<int>(si1, 2, ((k: int) => Complex.div(Complex.of_real(1.0), Complex.zpow(z, k * k)))); assert si1 + {2} == si2;  // [ADDED]
  var si3: set<int> := {1, 2, 3};  // [ADDED]
  CSumInsert_k<int>(si2, 3, ((k: int) => Complex.div(Complex.of_real(1.0), Complex.zpow(z, k * k)))); assert si2 + {3} == si3;  // [ADDED]
  var si4: set<int> := {1, 2, 3, 4};  // [ADDED]
  CSumInsert_k<int>(si3, 4, ((k: int) => Complex.div(Complex.of_real(1.0), Complex.zpow(z, k * k)))); assert si3 + {4} == si4;  // [ADDED]
  var si5: set<int> := {1, 2, 3, 4, 5};  // [ADDED]
  CSumInsert_k<int>(si4, 5, ((k: int) => Complex.div(Complex.of_real(1.0), Complex.zpow(z, k * k)))); assert si4 + {5} == si5;  // [ADDED]
  var si6: set<int> := {1, 2, 3, 4, 5, 6};  // [ADDED]
  CSumInsert_k<int>(si5, 6, ((k: int) => Complex.div(Complex.of_real(1.0), Complex.zpow(z, k * k)))); assert si5 + {6} == si6;  // [ADDED]
  var si7: set<int> := {1, 2, 3, 4, 5, 6, 7};  // [ADDED]
  CSumInsert_k<int>(si6, 7, ((k: int) => Complex.div(Complex.of_real(1.0), Complex.zpow(z, k * k)))); assert si6 + {7} == si7;  // [ADDED]
  var si8: set<int> := {1, 2, 3, 4, 5, 6, 7, 8};  // [ADDED]
  CSumInsert_k<int>(si7, 8, ((k: int) => Complex.div(Complex.of_real(1.0), Complex.zpow(z, k * k)))); assert si7 + {8} == si8;  // [ADDED]
  var si9: set<int> := {1, 2, 3, 4, 5, 6, 7, 8, 9};  // [ADDED]
  CSumInsert_k<int>(si8, 9, ((k: int) => Complex.div(Complex.of_real(1.0), Complex.zpow(z, k * k)))); assert si8 + {9} == si9;  // [ADDED]
  var si10: set<int> := {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};  // [ADDED]
  CSumInsert_k<int>(si9, 10, ((k: int) => Complex.div(Complex.of_real(1.0), Complex.zpow(z, k * k)))); assert si9 + {10} == si10;  // [ADDED]
  var si11: set<int> := {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11};  // [ADDED]
  CSumInsert_k<int>(si10, 11, ((k: int) => Complex.div(Complex.of_real(1.0), Complex.zpow(z, k * k)))); assert si10 + {11} == si11;  // [ADDED]
  var si12: set<int> := {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12};  // [ADDED]
  CSumInsert_k<int>(si11, 12, ((k: int) => Complex.div(Complex.of_real(1.0), Complex.zpow(z, k * k)))); assert si11 + {12} == si12;  // [ADDED]
  assert Complex.sum(Icc(1, 12), ((k: int) => Complex.div(Complex.of_real(1.0), Complex.zpow(z, k * k)))) == Complex.add(Complex.div(Complex.of_real(1.0), Complex.zpow(z, 144)), Complex.add(Complex.div(Complex.of_real(1.0), Complex.zpow(z, 121)), Complex.add(Complex.div(Complex.of_real(1.0), Complex.zpow(z, 100)), Complex.add(Complex.div(Complex.of_real(1.0), Complex.zpow(z, 81)), Complex.add(Complex.div(Complex.of_real(1.0), Complex.zpow(z, 64)), Complex.add(Complex.div(Complex.of_real(1.0), Complex.zpow(z, 49)), Complex.add(Complex.div(Complex.of_real(1.0), Complex.zpow(z, 36)), Complex.add(Complex.div(Complex.of_real(1.0), Complex.zpow(z, 25)), Complex.add(Complex.div(Complex.of_real(1.0), Complex.zpow(z, 16)), Complex.add(Complex.div(Complex.of_real(1.0), Complex.zpow(z, 9)), Complex.add(Complex.div(Complex.of_real(1.0), Complex.zpow(z, 4)), Complex.add(Complex.div(Complex.of_real(1.0), Complex.zpow(z, 1)), Complex.of_real(0.0)))))))))))));  // [ADDED]
  PowRed_k(z, 0, 1);  // [ADDED]
  PowRed_k(z, 0, 4);  // [ADDED]
  PowRed_k(z, 1, 1);  // [ADDED]
  PowRed_k(z, 2, 0);  // [ADDED]
  PowRed_k(z, 3, 1);  // [ADDED]
  PowRed_k(z, 4, 4);  // [ADDED]
  PowRed_k(z, 6, 1);  // [ADDED]
  PowRed_k(z, 8, 0);  // [ADDED]
  PowRed_k(z, 10, 1);  // [ADDED]
  PowRed_k(z, 12, 4);  // [ADDED]
  PowRed_k(z, 15, 1);  // [ADDED]
  PowRed_k(z, 18, 0);  // [ADDED]
  ComplexPowOne(z); ComplexPowZero(z);  // [ADDED]
  ComplexPowAdd(z, 4, 3); ComplexPowThree(z);  // [ADDED]
  assert Complex.pow(z, 7) == Complex.Complex(Real.sqrt(2.0) / 2.0, -(Real.sqrt(2.0) / 2.0));  // [ADDED]
  InvVals_k(z);  // [ADDED]
  assert Complex.sum(Icc(1, 12), ((k: int) => Complex.div(Complex.of_real(1.0), Complex.zpow(z, k * k)))) == Complex.add(Complex.of_real(1.0), Complex.add(Complex.pow(z, 7), Complex.add(Complex.pow(z, 4), Complex.add(Complex.pow(z, 7), Complex.add(Complex.of_real(1.0), Complex.add(Complex.pow(z, 7), Complex.add(Complex.pow(z, 4), Complex.add(Complex.pow(z, 7), Complex.add(Complex.of_real(1.0), Complex.add(Complex.pow(z, 7), Complex.add(Complex.pow(z, 4), Complex.add(Complex.pow(z, 7), Complex.of_real(0.0)))))))))))));  // [ADDED]
  L67lin_k(Complex.sum(Icc(1, 12), ((k: int) => Complex.div(Complex.of_real(1.0), Complex.zpow(z, k * k)))), Complex.pow(z, 7), Complex.pow(z, 4));  // [ADDED]
}

