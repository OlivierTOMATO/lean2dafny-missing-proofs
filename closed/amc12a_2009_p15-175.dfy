// CLOSED LEMMA for failing line amc12a_2009_p15-175 (theorem amc12a_2009_p15, Dafny line 175, OOR)
// closes with: K3 (locality) — base
// added: nothing (line lemma standalone)
// Dafny: verifies unchanged (dossier standalone check)
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/line_lemmas/OOR/amc12a_2009_p15/L175.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 175 of amc12a_2009_p15 (OOR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../wt_integ5/out/amc12a_2009_p15.dfy"

// ========================================================================================
// FAILING LINE 175 (OOR) in amc12a_2009_p15: Verification out of resource (amc12a_2009_p15)
//   dafny |       ensures (Complex.pow(Complex.I(), n) == Complex.pow(Complex.I(), (n % 4))) // @tac 677-705
//   statement kind: contract (ensures/requires)
//   @tac 677-705 | Lean: rw [← Nat.mod_add_div n 4]
//        before-goal ⊢ Complex.I ^ n = Complex.I ^ (n % (4 : ℕ))
//        before-goal ⊢ Complex.I ^ (n % (4 : ℕ) + (4 : ℕ) * (n / (4 : ℕ))) = Complex.I ^ ((n % (4 : ℕ) + (4 : ℕ) * (n / (4 : ℕ))) % (4 : ℕ))
// inside Lean have h_periodicity, Lean lines 15-21:
//   lean  |   have h_periodicity : ∀ k : ℕ, Complex.I ^ (k % 4) = Complex.I ^ k := by
//   lean  |     intro k
//   lean  |     have h₂ : ∀ n : ℕ, Complex.I ^ n = Complex.I ^ (n % 4) := by
//   lean  |       intro n
//   lean  |       rw [← Nat.mod_add_div n 4]
//   lean  |       simp [pow_add, pow_mul, Complex.I_mul_I, mul_assoc, mul_comm, mul_left_comm]
//   lean  |     rw [h₂ k]

// 1 path(s) merged (paths); 20 shared facts; 1 distinct path conditions
lemma {:induction false} vc_amc12a_2009_p15_L175(k_0_0: int, m_11: int, m_3_0_2: int, m_4_0_2: int, m_7_2: int, n: int, n_0_0_0: int)
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
  requires 0 <= n_0_0_0 % 4 + 4 * (n_0_0_0 / 4)
  requires Complex.pow(Complex.I(), n_0_0_0 % 4 + 4 * (n_0_0_0 / 4)).Complex?
  requires 0 <= (n_0_0_0 % 4 + 4 * (n_0_0_0 / 4)) % 4
  requires Complex.pow(Complex.I(), (n_0_0_0 % 4 + 4 * (n_0_0_0 / 4)) % 4).Complex?
  requires Complex.pow(Complex.I(), n_0_0_0 % 4 + 4 * (n_0_0_0 / 4)) == Complex.pow(Complex.I(), (n_0_0_0 % 4 + 4 * (n_0_0_0 / 4)) % 4)
  ensures  Complex.pow(Complex.I(), n_0_0_0) == Complex.pow(Complex.I(), n_0_0_0 % 4)
{ }

// side checks at the same line (not the reported failure): 2 check(s)
// side check: divisor is always non-zero.
lemma {:induction false} vc_amc12a_2009_p15_L175_side1(k_0_0: int, m_11: int, m_3_0_2: int, m_4_0_2: int, m_7_2: int, n: int, n_0_0_0: nat)
  requires 0 <= n
  requires 0 <= m_3_0_2
  requires 0 <= m_4_0_2
  requires 0 <= m_7_2
  requires 0 <= m_11
  requires 0 < n
  requires Complex.sum(IccN(1, n), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.add(Complex.of_real(48.0), Complex.mul(Complex.of_real(49.0), Complex.I()))
  requires 0 <= k_0_0
  requires 0 <= n_0_0_0
  requires Complex.I().Complex?
  requires Complex.pow(Complex.I(), n_0_0_0).Complex?
  ensures  4 != 0
{ }

// side check: value always satisfies the subset constraints of 'nat'
lemma {:induction false} vc_amc12a_2009_p15_L175_side2(k_0_0: int, m_11: int, m_3_0_2: int, m_4_0_2: int, m_7_2: int, n: int, n_0_0_0: nat)
  requires 0 <= n
  requires 0 <= m_3_0_2
  requires 0 <= m_4_0_2
  requires 0 <= m_7_2
  requires 0 <= m_11
  requires 0 < n
  requires Complex.sum(IccN(1, n), ((k: nat) => Complex.mul(Complex.of_real((k as real)), Complex.pow(Complex.I(), k)))) == Complex.add(Complex.of_real(48.0), Complex.mul(Complex.of_real(49.0), Complex.I()))
  requires 0 <= k_0_0
  requires 0 <= n_0_0_0
  requires Complex.I().Complex?
  requires Complex.pow(Complex.I(), n_0_0_0).Complex?
  ensures  0 <= n_0_0_0 % 4
{ }

