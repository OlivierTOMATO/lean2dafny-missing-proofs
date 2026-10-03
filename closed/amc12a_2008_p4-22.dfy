// CLOSED — failing line amc12a_2008_p4-22: theorem amc12a_2008_p4, Dafny line 22 (ERR: assertion might not hold)
// failing Dafny line: assert (Real.div(Real.prod(IccN(1, 501), ((x: nat) => (((Rat.of_int(4)).to_real() * (x as real)) + (Rat.of_int(4)).to_real()))), Real.prod(IccN(1, 501), ((x: nat) => ((Rat.of_int(4)).to_real() * (x as
// Lean step: norm_cast
// hypotheses: 9 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: K4 — NatCastProdReal ×2 calls; work-copy axiom = exact Mathlib Finset.prod_natCast/Nat.cast_prod with Finset.prod_congr folded (pointwise Nat.cast_add/Nat.cast_mul/Rat.cast_ofNat); Lean exec 347 internal: Finset.prod_natCast ×1, Rat.cast_natCast ×2, Nat.cast_add ×2, Nat.cast_mul ×2, Rat.cast_ofNat ×1, Fi
// Dafny: finished with 56 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12a_2008_p4.dfy"
lemma {:induction false} vc_amc12a_2008_p4_L22()
  requires Rat.of_int(4).Rational?
  requires 4.0 == Rat.of_int(4).to_real()
  requires 0 <= 1
  requires 0 <= 501
  requires Rat.of_int(Int.prod(IccN(1, 501), ((v_1_2_i: nat) => 4 * v_1_2_i + 4))).Rational?
  requires Rat.of_int(Int.prod(IccN(1, 501), ((v_1_12_i: nat) => 4 * v_1_12_i))).Rational?
  requires Rat.div(Rat.of_int(Int.prod(IccN(1, 501), ((v_1_2_i: nat) => 4 * v_1_2_i + 4))), Rat.of_int(Int.prod(IccN(1, 501), ((v_1_12_i: nat) => 4 * v_1_12_i)))).Rational?
  requires Rat.of_int(502).Rational?
  requires Rat.div(Rat.of_int(Int.prod(IccN(1, 501), ((v_1_2_i: nat) => 4 * v_1_2_i + 4))), Rat.of_int(Int.prod(IccN(1, 501), ((v_1_12_i: nat) => 4 * v_1_12_i)))) == Rat.of_int(502)
  ensures   Real.div(Real.prod(IccN(1, 501), ((x: nat) => Rat.of_int(4).to_real() * (x as real) + Rat.of_int(4).to_real())), Real.prod(IccN(1, 501), ((x: nat) => Rat.of_int(4).to_real() * (x as real)))) == 502.0
{
  NatCastProdReal(IccN(1, 501), ((v_1_2_i: nat) => 4 * v_1_2_i + 4), ((x: nat) => Rat.of_int(4).to_real() * (x as real) + Rat.of_int(4).to_real()));  // [ADDED]
  NatCastProdReal(IccN(1, 501), ((v_1_12_i: nat) => 4 * v_1_12_i), ((x: nat) => Rat.of_int(4).to_real() * (x as real)));  // [ADDED]
      // UNCITED-APPLIED Eq.symm(Rat.of_int(Int.prod(IccN(1, 501), ((i: nat) => ((4 * i) + 4)))), Rat.prod(IccN(1, 501), ((x: nat) => Rat.add(Rat.mul(Rat.of_int(4), Rat.of_int(x)), Rat.of…): its premise is not established here and its conclusion is the same Dafny fact (== is symmetric): a guarded call would state nothing
      // UNCITED-APPLIED Eq.symm((Rat.of_int(502)).to_real(), 502.0): its premise is not established here and its conclusion is the same Dafny fact (== is symmetric): a guarded call would state nothing
      // UNCITED-APPLIED Eq.symm: 1 more recorded instance (↑↑x, ↑x) not expressible here (sort/type/scope), not guessed
      // UNCITED-APPLIED Nat.cast_add: recorded instance not expressible here (sort/type/scope), not guessed
      // UNCITED-APPLIED Nat.cast_mul: recorded instance not expressible here (sort/type/scope), not guessed
      assert (Rat.div(Rat.of_int(Int.prod(IccN(1, 501), ((i: nat) => ((4 * i) + 4)))), Rat.of_int(Int.prod(IccN(1, 501), ((i: nat) => (4 * i))))) == Rat.of_int(502));  // sub-goal of `norm_cast` (Lean state)
      // UNCITED-APPLIED internal ×33 [exec 347 626-635]: applications made inside the tactic's own automation, not stated — Finset.prod_congr ×5, Rat.cast_natCast ×2, Nat.cast_add ×2, Nat.cast_mul ×2, Finset.prod_natCast ×1, Rat.cast_ofNat ×1; machinery/glue: congrArg ×8, Eq.trans ×6, Eq.symm ×4, congr ×2
}

// side checks at the same line (not the reported failure): 4 check(s)
// side check: value always satisfies the subset constraints of 'nat'
lemma {:induction false} vc_amc12a_2008_p4_L22_side1()  // [ADDED DECLARATION]
  requires Rat.of_int(4).Rational?
  requires 4.0 == Rat.of_int(4).to_real()
  requires 0 <= 1
  requires 0 <= 501
  requires Rat.of_int(Int.prod(IccN(1, 501), ((v_1_2_i: nat) => 4 * v_1_2_i + 4))).Rational?
  requires Rat.of_int(Int.prod(IccN(1, 501), ((v_1_12_i: nat) => 4 * v_1_12_i))).Rational?
  requires Rat.div(Rat.of_int(Int.prod(IccN(1, 501), ((v_1_2_i: nat) => 4 * v_1_2_i + 4))), Rat.of_int(Int.prod(IccN(1, 501), ((v_1_12_i: nat) => 4 * v_1_12_i)))).Rational?
  requires Rat.of_int(502).Rational?
  requires Rat.div(Rat.of_int(Int.prod(IccN(1, 501), ((v_1_2_i: nat) => 4 * v_1_2_i + 4))), Rat.of_int(Int.prod(IccN(1, 501), ((v_1_12_i: nat) => 4 * v_1_12_i)))) == Rat.of_int(502)
  ensures  0 <= 1
{ }

// side check: value always satisfies the subset constraints of 'nat'
lemma {:induction false} vc_amc12a_2008_p4_L22_side2()  // [ADDED DECLARATION]
  requires Rat.of_int(4).Rational?
  requires 4.0 == Rat.of_int(4).to_real()
  requires 0 <= 1
  requires 0 <= 501
  requires Rat.of_int(Int.prod(IccN(1, 501), ((v_1_2_i: nat) => 4 * v_1_2_i + 4))).Rational?
  requires Rat.of_int(Int.prod(IccN(1, 501), ((v_1_12_i: nat) => 4 * v_1_12_i))).Rational?
  requires Rat.div(Rat.of_int(Int.prod(IccN(1, 501), ((v_1_2_i: nat) => 4 * v_1_2_i + 4))), Rat.of_int(Int.prod(IccN(1, 501), ((v_1_12_i: nat) => 4 * v_1_12_i)))).Rational?
  requires Rat.of_int(502).Rational?
  requires Rat.div(Rat.of_int(Int.prod(IccN(1, 501), ((v_1_2_i: nat) => 4 * v_1_2_i + 4))), Rat.of_int(Int.prod(IccN(1, 501), ((v_1_12_i: nat) => 4 * v_1_12_i)))) == Rat.of_int(502)
  ensures  0 <= 501
{ }


// K4 (work copy only): exact Mathlib Nat.cast_prod / Finset.prod_natCast (↑(∏ i ∈ s, f i) = ∏ i ∈ s, ↑(f i)),
// with Finset.prod_congr folded in (h agrees pointwise with the cast of f: Nat.cast_add/Nat.cast_mul/Rat.cast_ofNat).
// All recorded at Lean exec 347 (norm_cast).
lemma {:axiom} NatCastProdReal(s: set<nat>, f: nat -> int, h: nat -> real)  // [ADDED DECLARATION]
  requires forall x :: x in s ==> f(x) >= 0
  requires forall x :: x in s ==> h(x) == f(x) as real
  ensures Real.prod(s, h) == Int.prod(s, f) as real
