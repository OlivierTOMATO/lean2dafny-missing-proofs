// CLOSED LEMMA for failing line amc12a_2009_p15-183 (theorem amc12a_2009_p15, Dafny line 183, OOR)
// closes with: simplest (simplest) — simplest-close
// added: MathPrelude: `opaque function pow` for Complex.pow; add exact Mathlib one_pow at ℂ (`lemma {:axiom} ComplexOnePow(n: nat) ensures Complex.pow(Complex.of_real(1.0), n) == Complex.of_real(1.0)`); a checked lemma I^4 = 1 (reveal pow, stepwise); split lemma S_L183(r,q) {assert (r+4q)%4==r; ComplexPowAdd(I,r,4q); ComplexPowMul(I,4,q); IP4(); ComplexOnePow(q); assert mul(a,1)==a} and the call S_L183(n%4, n/4)
// Dafny: finished with 134 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_013/amc12a_2009_p15-183/S4.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 183 of amc12a_2009_p15 (OOR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../_libpow/out/amc12a_2009_p15.dfy"

// ========================================================================================
// FAILING LINE 183 (OOR) in amc12a_2009_p15: Verification out of resource (amc12a_2009_p15)
//   dafny |       assert (Complex.pow(Complex.I(), ((n % 4) + (4 * (n / 4)))) == Complex.pow(Complex.I(), (((n % 4) + (4 * (n / 4))) % 4))) by {  // sub-goal before `simp` (Lean state) // @tac 712-788
//   statement kind: sub-goal (Lean tactic state)
//   @tac 712-788 | Lean: simp [pow_add, pow_mul, Complex.I_mul_I, mul_assoc, mul_comm, mul_left_comm]
//        before-goal ⊢ Complex.I ^ (n % (4 : ℕ) + (4 : ℕ) * (n / (4 : ℕ))) = Complex.I ^ ((n % (4 : ℕ) + (4 : ℕ) * (n / (4 : ℕ))) % (4 : ℕ))
// inside Lean have h₂, Lean lines 17-20:
//   lean  |     have h₂ : ∀ n : ℕ, Complex.I ^ n = Complex.I ^ (n % 4) := by
//   lean  |       intro n
//   lean  |       rw [← Nat.mod_add_div n 4]
//   lean  |       simp [pow_add, pow_mul, Complex.I_mul_I, mul_assoc, mul_comm, mul_left_comm]

// 1 path(s) merged (paths); 24 shared facts; 1 distinct path conditions
// ABLATION S4 = K2-pow library (opaque Complex.pow) + split lemma S_L183 (checked) called at r = n % 4, q = n / 4
// Lean (Mathlib): @one_pow : ∀ {M} [Monoid M] (n : ℕ), 1 ^ n = 1   (M = ℂ)
lemma {:axiom} K5_ComplexOnePow(n: nat)
  ensures Complex.pow(Complex.of_real(1.0), n) == Complex.of_real(1.0)
// K2 (checked): I^4 = 1, the value Lean's simp computed (Complex.I_mul_I)
lemma IP4v(i: Complex.complex) requires i == Complex.Complex(0.0, 1.0)
  ensures Complex.pow(i, 4) == Complex.of_real(1.0)
{ reveal Complex.pow();
  assert Complex.pow(i, 1) == i;
  assert Complex.pow(i, 2) == Complex.Complex(-1.0, 0.0);
  assert Complex.pow(i, 3) == Complex.Complex(0.0, -1.0); }
lemma IP4() ensures Complex.pow(Complex.I(), 4) == Complex.of_real(1.0)
{ IP4v(Complex.I()); }
// split (c): the simp step over only the facts it needs (pow_add, pow_mul, I^4=1, one_pow; mod fact by Z3)
lemma S_L183(r: nat, q: nat)
  requires r < 4
  ensures Complex.pow(Complex.I(), r + 4 * q) == Complex.pow(Complex.I(), (r + 4 * q) % 4)
{
  assert (r + 4 * q) % 4 == r;
  ComplexPowAdd(Complex.I(), r, 4 * q);
  ComplexPowMul(Complex.I(), 4, q);
  IP4();
  K5_ComplexOnePow(q);
  var a := Complex.pow(Complex.I(), r);
  assert Complex.mul(a, Complex.of_real(1.0)) == a;
}

lemma {:induction false} vc_amc12a_2009_p15_L183(k_0_0: int, m_11: int, m_3_0_2: int, m_4_0_2: int, m_7_2: int, n: int, n_0_0_0: int)
  requires 0 <= n
  requires 0 <= m_3_0_2
  requires 0 <= m_4_0_2
  requires 0 <= m_7_2
  requires 0 <= m_11
  requires 0 < n
  requires Complex.sum(IccN(1, n), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.add(Complex.of_real(48.0), Complex.mul(Complex.of_real(49.0), Complex.I()))
  requires 0 <= k_0_0
  requires 0 <= n_0_0_0
  requires 4 > 0
  requires 0 <= 4
  requires 4 > 0
  requires n_0_0_0 % 4 + 4 * (n_0_0_0 / 4) == n_0_0_0
  requires Complex.I().Complex?
  requires 4 != 0
  requires 0 <= n_0_0_0 % 4
  requires 0 <= 4 * (n_0_0_0 / 4)
  requires Complex.pow(Complex.I(), n_0_0_0 % 4 + 4 * (n_0_0_0 / 4)) == Complex.mul(Complex.pow(Complex.I(), n_0_0_0 % 4), Complex.pow(Complex.I(), 4 * (n_0_0_0 / 4)))
  requires 0 <= n_0_0_0 / 4
  requires Complex.pow(Complex.I(), 4 * (n_0_0_0 / 4)) == Complex.pow(Complex.pow(Complex.I(), 4), n_0_0_0 / 4)
  requires 0 <= n_0_0_0 % 4 + 4 * (n_0_0_0 / 4)
  requires Complex.pow(Complex.I(), n_0_0_0 % 4 + 4 * (n_0_0_0 / 4)).Complex?
  requires 0 <= (n_0_0_0 % 4 + 4 * (n_0_0_0 / 4)) % 4
  requires Complex.pow(Complex.I(), (n_0_0_0 % 4 + 4 * (n_0_0_0 / 4)) % 4).Complex?
  ensures  Complex.pow(Complex.I(), n_0_0_0 % 4 + 4 * (n_0_0_0 / 4)) == Complex.pow(Complex.I(), (n_0_0_0 % 4 + 4 * (n_0_0_0 / 4)) % 4)
{
  S_L183(n_0_0_0 % 4, n_0_0_0 / 4);
}

// side checks at the same line (not the reported failure): 7 check(s)
// side check: divisor is always non-zero.
lemma {:induction false} vc_amc12a_2009_p15_L183_side1(k_0_0: int, m_11: int, m_3_0_2: int, m_4_0_2: int, m_7_2: int, n: int, n_0_0_0: int)
  requires 0 <= n
  requires 0 <= m_3_0_2
  requires 0 <= m_4_0_2
  requires 0 <= m_7_2
  requires 0 <= m_11
  requires 0 < n
  requires Complex.sum(IccN(1, n), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.add(Complex.of_real(48.0), Complex.mul(Complex.of_real(49.0), Complex.I()))
  requires 0 <= k_0_0
  requires 0 <= n_0_0_0
  requires 4 > 0
  requires 0 <= 4
  requires 4 > 0
  requires n_0_0_0 % 4 + 4 * (n_0_0_0 / 4) == n_0_0_0
  requires Complex.I().Complex?
  requires 4 != 0
  requires 0 <= n_0_0_0 % 4
  requires 0 <= 4 * (n_0_0_0 / 4)
  requires Complex.pow(Complex.I(), n_0_0_0 % 4 + 4 * (n_0_0_0 / 4)) == Complex.mul(Complex.pow(Complex.I(), n_0_0_0 % 4), Complex.pow(Complex.I(), 4 * (n_0_0_0 / 4)))
  requires 0 <= n_0_0_0 / 4
  requires Complex.pow(Complex.I(), 4 * (n_0_0_0 / 4)) == Complex.pow(Complex.pow(Complex.I(), 4), n_0_0_0 / 4)
  ensures  4 != 0
{ }

// side check: value always satisfies the subset constraints of 'nat'
lemma {:induction false} vc_amc12a_2009_p15_L183_side2(k_0_0: int, m_11: int, m_3_0_2: int, m_4_0_2: int, m_7_2: int, n: int, n_0_0_0: int)
  requires 0 <= n
  requires 0 <= m_3_0_2
  requires 0 <= m_4_0_2
  requires 0 <= m_7_2
  requires 0 <= m_11
  requires 0 < n
  requires Complex.sum(IccN(1, n), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.add(Complex.of_real(48.0), Complex.mul(Complex.of_real(49.0), Complex.I()))
  requires 0 <= k_0_0
  requires 0 <= n_0_0_0
  requires 4 > 0
  requires 0 <= 4
  requires 4 > 0
  requires n_0_0_0 % 4 + 4 * (n_0_0_0 / 4) == n_0_0_0
  requires Complex.I().Complex?
  requires 4 != 0
  requires 0 <= n_0_0_0 % 4
  requires 0 <= 4 * (n_0_0_0 / 4)
  requires Complex.pow(Complex.I(), n_0_0_0 % 4 + 4 * (n_0_0_0 / 4)) == Complex.mul(Complex.pow(Complex.I(), n_0_0_0 % 4), Complex.pow(Complex.I(), 4 * (n_0_0_0 / 4)))
  requires 0 <= n_0_0_0 / 4
  requires Complex.pow(Complex.I(), 4 * (n_0_0_0 / 4)) == Complex.pow(Complex.pow(Complex.I(), 4), n_0_0_0 / 4)
  ensures  0 <= n_0_0_0 % 4 + 4 * (n_0_0_0 / 4)
{ }

// side check: value always satisfies the subset constraints of 'nat'
lemma {:induction false} vc_amc12a_2009_p15_L183_side3(k_0_0: int, m_11: int, m_3_0_2: int, m_4_0_2: int, m_7_2: int, n: int, n_0_0_0: int)
  requires 0 <= n
  requires 0 <= m_3_0_2
  requires 0 <= m_4_0_2
  requires 0 <= m_7_2
  requires 0 <= m_11
  requires 0 < n
  requires Complex.sum(IccN(1, n), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.add(Complex.of_real(48.0), Complex.mul(Complex.of_real(49.0), Complex.I()))
  requires 0 <= k_0_0
  requires 0 <= n_0_0_0
  requires 4 > 0
  requires 0 <= 4
  requires 4 > 0
  requires n_0_0_0 % 4 + 4 * (n_0_0_0 / 4) == n_0_0_0
  requires Complex.I().Complex?
  requires 4 != 0
  requires 0 <= n_0_0_0 % 4
  requires 0 <= 4 * (n_0_0_0 / 4)
  requires Complex.pow(Complex.I(), n_0_0_0 % 4 + 4 * (n_0_0_0 / 4)) == Complex.mul(Complex.pow(Complex.I(), n_0_0_0 % 4), Complex.pow(Complex.I(), 4 * (n_0_0_0 / 4)))
  requires 0 <= n_0_0_0 / 4
  requires Complex.pow(Complex.I(), 4 * (n_0_0_0 / 4)) == Complex.pow(Complex.pow(Complex.I(), 4), n_0_0_0 / 4)
  requires 0 <= n_0_0_0 % 4 + 4 * (n_0_0_0 / 4)
  requires Complex.pow(Complex.I(), n_0_0_0 % 4 + 4 * (n_0_0_0 / 4)).Complex?
  ensures  0 <= (n_0_0_0 % 4 + 4 * (n_0_0_0 / 4)) % 4
{ }

