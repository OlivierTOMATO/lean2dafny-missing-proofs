// CLOSED — failing line imo_1984_p2-1713: theorem imo_1984_p2, Dafny line 1713 (OOR: Verification out of resource (imo_1984_p2))
// failing Dafny line: assert (Int.pow((a + b), 7) == (((((((Int.pow(a, 7) + ((7 * (a * a * a * a * a * a)) * b)) + ((21 * (a * a * a * a * a)) * (b * b))) + ((35 * (a * a * a * a)) * (b * b * b))) + ((35 * (a * a * a)) * (
// Lean step: ring_nf
// hypotheses: 11 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: pass2 — proved helper lemmas: Step2..Step7 (binomial expansion of (a+b)^k via opaque params S==P_{k-1}, T==S*(a+b) ==> T==P_k; Step7 split into MulA6/MulB6 by distributivity), Pow7Mul(x) (Int.pow(x,7)==x*..*x by 7 unfolding asserts), Final1713 (ring identity over opaque P,A,B); main body chains Step_k over Int.pow(a+b,k)
// Dafny: finished with 80 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/imo_1984_p2.dfy"
lemma {:induction false} vc_imo_1984_p2_L1713(a: int, b: int)
  requires 0 < a
  requires 0 < b
  requires !IntDvd(7, a)
  requires !IntDvd(7, b)
  requires !IntDvd(7, a + b)
  requires IntDvd(Int.pow(7, 7), Int.pow(a + b, 7) - Int.pow(a, 7) - Int.pow(b, 7))
  requires if Int.pow(7, 7) == 0 then Int.pow(a + b, 7) - Int.pow(a, 7) - Int.pow(b, 7) == 0 else (Int.pow(a + b, 7) - Int.pow(a, 7) - Int.pow(b, 7)) % Int.pow(7, 7) == 0
  requires !IntDvd(7, a * b * (a + b))
  requires Int.pow(a, 1) == a
  requires Int.pow(b, 1) == b
  requires 0 <= 7
  ensures   Int.pow(a + b, 7) == Int.pow(a, 7) + 7 * (a * a * a * a * a * a) * b + 21 * (a * a * a * a * a) * (b * b) + 35 * (a * a * a * a) * (b * b * b) + 35 * (a * a * a) * (b * b * b * b) + 21 * (a * a) * (b * b * b * b * b) + 7 * a * (b * b * b * b * b * b) + Int.pow(b, 7)
{
        // [TACTIC: «_<;>_» ring_nf <;> norm_num norm_num <;> simp_all simp_all simp_all <;> omega omega]
        // [TACTIC: Ring_nfAt]
        IntPowOne(a);  // cite: pow_one [applied by the tactic, not named in it]
        IntPowOne(b);  // cite: pow_one [applied by the tactic, not named in it]
        // UNCITED-APPLIED mul_one ×2: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := a ^ (7 : ℕ)); (a := b ^ (7 : ℕ))
        // `ring_nf` closed the goal; the rest of the chain did not run
        // UNCITED-APPLIED internal ×247 [exec 373 1705-1712]: applications made inside the tactic's own automation, not stated — mul_one ×2, add_zero ×1; machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×8, Mathlib.Tactic.Ring.add_pf_zero_add ×8, Mathlib.Tactic.Ring.cast_pos ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8 (+37 more heads, ×212) (cited in this block, not counted here: pow_one [Lean recorded ×2])
  assert Int.pow(a + b, 1) == a + b;  // [ADDED]
  Step2(Int.pow(a + b, 1), Int.pow(a + b, 2), a, b);  // [ADDED]
  Step3(Int.pow(a + b, 2), Int.pow(a + b, 3), a, b);  // [ADDED]
  Step4(Int.pow(a + b, 3), Int.pow(a + b, 4), a, b);  // [ADDED]
  Step5(Int.pow(a + b, 4), Int.pow(a + b, 5), a, b);  // [ADDED]
  Step6(Int.pow(a + b, 5), Int.pow(a + b, 6), a, b);  // [ADDED]
  Step7(Int.pow(a + b, 6), Int.pow(a + b, 7), a, b);  // [ADDED]
  Pow7Mul(a); Pow7Mul(b);  // [ADDED]
  Final1713(Int.pow(a + b, 7), Int.pow(a, 7), Int.pow(b, 7), a, b);  // [ADDED]
}

lemma Step2(S: int, T: int, a: int, b: int)  // [ADDED DECLARATION]
  requires S == a + b
  requires T == S * (a + b)
  ensures T == (a * a) + 2 * a * b + (b * b)
{ }

lemma Step3(S: int, T: int, a: int, b: int)  // [ADDED DECLARATION]
  requires S == (a * a) + 2 * a * b + (b * b)
  requires T == S * (a + b)
  ensures T == (a * a * a) + 3 * (a * a) * b + 3 * a * (b * b) + (b * b * b)
{ }

lemma Step4(S: int, T: int, a: int, b: int)  // [ADDED DECLARATION]
  requires S == (a * a * a) + 3 * (a * a) * b + 3 * a * (b * b) + (b * b * b)
  requires T == S * (a + b)
  ensures T == (a * a * a * a) + 4 * (a * a * a) * b + 6 * (a * a) * (b * b) + 4 * a * (b * b * b) + (b * b * b * b)
{ }

lemma Step5(S: int, T: int, a: int, b: int)  // [ADDED DECLARATION]
  requires S == (a * a * a * a) + 4 * (a * a * a) * b + 6 * (a * a) * (b * b) + 4 * a * (b * b * b) + (b * b * b * b)
  requires T == S * (a + b)
  ensures T == (a * a * a * a * a) + 5 * (a * a * a * a) * b + 10 * (a * a * a) * (b * b) + 10 * (a * a) * (b * b * b) + 5 * a * (b * b * b * b) + (b * b * b * b * b)
{ }

lemma Step6(S: int, T: int, a: int, b: int)  // [ADDED DECLARATION]
  requires S == (a * a * a * a * a) + 5 * (a * a * a * a) * b + 10 * (a * a * a) * (b * b) + 10 * (a * a) * (b * b * b) + 5 * a * (b * b * b * b) + (b * b * b * b * b)
  requires T == S * (a + b)
  ensures T == (a * a * a * a * a * a) + 6 * (a * a * a * a * a) * b + 15 * (a * a * a * a) * (b * b) + 20 * (a * a * a) * (b * b * b) + 15 * (a * a) * (b * b * b * b) + 6 * a * (b * b * b * b * b) + (b * b * b * b * b * b)
{ }

lemma MulA6(S: int, a: int, b: int)  // [ADDED DECLARATION]
  requires S == (a * a * a * a * a * a) + 6 * (a * a * a * a * a) * b + 15 * (a * a * a * a) * (b * b) + 20 * (a * a * a) * (b * b * b) + 15 * (a * a) * (b * b * b * b) + 6 * a * (b * b * b * b * b) + (b * b * b * b * b * b)
  ensures S * a == (a * a * a * a * a * a * a) + 6 * (a * a * a * a * a * a) * b + 15 * (a * a * a * a * a) * (b * b) + 20 * (a * a * a * a) * (b * b * b) + 15 * (a * a * a) * (b * b * b * b) + 6 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)
{ }

lemma MulB6(S: int, a: int, b: int)  // [ADDED DECLARATION]
  requires S == (a * a * a * a * a * a) + 6 * (a * a * a * a * a) * b + 15 * (a * a * a * a) * (b * b) + 20 * (a * a * a) * (b * b * b) + 15 * (a * a) * (b * b * b * b) + 6 * a * (b * b * b * b * b) + (b * b * b * b * b * b)
  ensures S * b == (a * a * a * a * a * a) * b + 6 * (a * a * a * a * a) * (b * b) + 15 * (a * a * a * a) * (b * b * b) + 20 * (a * a * a) * (b * b * b * b) + 15 * (a * a) * (b * b * b * b * b) + 6 * a * (b * b * b * b * b * b) + (b * b * b * b * b * b * b)
{ }

lemma Step7(S: int, T: int, a: int, b: int)  // [ADDED DECLARATION]
  requires S == (a * a * a * a * a * a) + 6 * (a * a * a * a * a) * b + 15 * (a * a * a * a) * (b * b) + 20 * (a * a * a) * (b * b * b) + 15 * (a * a) * (b * b * b * b) + 6 * a * (b * b * b * b * b) + (b * b * b * b * b * b)
  requires T == S * (a + b)
  ensures T == (a * a * a * a * a * a * a) + 7 * (a * a * a * a * a * a) * b + 21 * (a * a * a * a * a) * (b * b) + 35 * (a * a * a * a) * (b * b * b) + 35 * (a * a * a) * (b * b * b * b) + 21 * (a * a) * (b * b * b * b * b) + 7 * a * (b * b * b * b * b * b) + (b * b * b * b * b * b * b)
{
  assert T == S * a + S * b;
  MulA6(S, a, b);
  MulB6(S, a, b);
  assert S * a + S * b == (a * a * a * a * a * a * a) + 7 * (a * a * a * a * a * a) * b + 21 * (a * a * a * a * a) * (b * b) + 35 * (a * a * a * a) * (b * b * b) + 35 * (a * a * a) * (b * b * b * b) + 21 * (a * a) * (b * b * b * b * b) + 7 * a * (b * b * b * b * b * b) + (b * b * b * b * b * b * b);
}

lemma Pow7Mul(x: int)  // [ADDED DECLARATION]
  ensures Int.pow(x, 7) == x * x * x * x * x * x * x
{
  assert Int.pow(x, 1) == x;
  assert Int.pow(x, 2) == x * x;
  assert Int.pow(x, 3) == x * x * x;
  assert Int.pow(x, 4) == x * x * x * x;
  assert Int.pow(x, 5) == x * x * x * x * x;
  assert Int.pow(x, 6) == x * x * x * x * x * x;
  assert Int.pow(x, 7) == x * x * x * x * x * x * x;
}

lemma Final1713(P: int, A: int, B: int, a: int, b: int)  // [ADDED DECLARATION]
  requires P == (a * a * a * a * a * a * a) + 7 * (a * a * a * a * a * a) * b + 21 * (a * a * a * a * a) * (b * b) + 35 * (a * a * a * a) * (b * b * b) + 35 * (a * a * a) * (b * b * b * b) + 21 * (a * a) * (b * b * b * b * b) + 7 * a * (b * b * b * b * b * b) + (b * b * b * b * b * b * b)
  requires A == a * a * a * a * a * a * a
  requires B == b * b * b * b * b * b * b
  ensures P == A + 7 * (a * a * a * a * a * a) * b + 21 * (a * a * a * a * a) * (b * b) + 35 * (a * a * a * a) * (b * b * b) + 35 * (a * a * a) * (b * b * b * b) + 21 * (a * a) * (b * b * b * b * b) + 7 * a * (b * b * b * b * b * b) + B
{ }
