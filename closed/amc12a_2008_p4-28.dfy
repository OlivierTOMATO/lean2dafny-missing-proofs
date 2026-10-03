// CLOSED — failing line amc12a_2008_p4-28: theorem amc12a_2008_p4, Dafny line 28 (ERR: assertion might not hold)
// failing Dafny line: assert (Rat.div(Rat.of_int(Int.prod(IccN(1, 501), ((i: nat) => ((4 * i) + 4)))), Rat.of_int(Int.prod(IccN(1, 501), ((i: nat) => (4 * i))))) == Rat.of_int(502));
// Lean step: 
// hypotheses: 8 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: SIMPLE — 
// Dafny: finished with 50 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12a_2008_p4.dfy"
lemma {:axiom} K4_RatCastInjective(a: Rat.rat, b: Rat.rat)
  requires a.to_real() == b.to_real()
  ensures a == b
lemma {:axiom} L_IntProdIccSuccTopNat(N: nat, f: nat -> int)
  requires N >= 1
  ensures Int.prod(IccN(1, N), f) == Int.prod(IccN(1, N - 1), f) * f(N)
lemma {:induction false} S_Telescope(n: nat, f: nat -> int, g: nat -> int)
  requires forall i: nat :: f(i) == 4 * i + 4
  requires forall i: nat :: g(i) == 4 * i
  ensures Int.prod(IccN(1, n), f) == (n + 1) * Int.prod(IccN(1, n), g)
  ensures Int.prod(IccN(1, n), g) > 0
  decreases n
{
  if n == 0 { assert IccN(1, 0) == {}; }
  else {
    S_Telescope(n - 1, f, g);
    L_IntProdIccSuccTopNat(n, f); L_IntProdIccSuccTopNat(n, g);
    var q := Int.prod(IccN(1, n - 1), g);
    assert Int.prod(IccN(1, n - 1), f) == n * q;
    assert n * q * (4 * n + 4) == (n + 1) * (q * (4 * n)) by { assert n * q * (4 * n + 4) == 4 * n * q * (n + 1); }
    MulPosInt(q, 4 * n);
  }
}

lemma {:induction false} vc_amc12a_2008_p4_L28()
  requires Rat.of_int(4).Rational?
  requires 4.0 == Rat.of_int(4).to_real()
  requires 0 <= 1
  requires 0 <= 501
  requires Rat.of_int(Int.prod(IccN(1, 501), ((v_1_2_i: nat) => 4 * v_1_2_i + 4))).Rational?
  requires Rat.of_int(Int.prod(IccN(1, 501), ((v_1_12_i: nat) => 4 * v_1_12_i))).Rational?
  requires Rat.div(Rat.of_int(Int.prod(IccN(1, 501), ((v_1_2_i: nat) => 4 * v_1_2_i + 4))), Rat.of_int(Int.prod(IccN(1, 501), ((v_1_12_i: nat) => 4 * v_1_12_i)))).Rational?
  requires Rat.of_int(502).Rational?
  ensures   Rat.div(Rat.of_int(Int.prod(IccN(1, 501), ((v_1_2_i: nat) => 4 * v_1_2_i + 4))), Rat.of_int(Int.prod(IccN(1, 501), ((v_1_12_i: nat) => 4 * v_1_12_i)))) == Rat.of_int(502)
{
  S_Telescope(501, ((v_1_2_i: nat) => 4 * v_1_2_i + 4), ((v_1_12_i: nat) => 4 * v_1_12_i));
  K4_RatCastInjective(Rat.div(Rat.of_int(Int.prod(IccN(1, 501), ((v_1_2_i: nat) => 4 * v_1_2_i + 4))), Rat.of_int(Int.prod(IccN(1, 501), ((v_1_12_i: nat) => 4 * v_1_12_i)))), Rat.of_int(502));
}

// side checks at the same line (not the reported failure): 4 check(s)
// side check: value always satisfies the subset constraints of 'nat'
lemma {:induction false} vc_amc12a_2008_p4_L28_side1()
  requires Rat.of_int(4).Rational?
  requires 4.0 == Rat.of_int(4).to_real()
  ensures  0 <= 1
{ }

// side check: value always satisfies the subset constraints of 'nat'
lemma {:induction false} vc_amc12a_2008_p4_L28_side2()
  requires Rat.of_int(4).Rational?
  requires 4.0 == Rat.of_int(4).to_real()
  requires 0 <= 1
  ensures  0 <= 501
{ }
