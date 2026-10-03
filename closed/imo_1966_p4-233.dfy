// CLOSED LEMMA for failing line imo_1966_p4-233 (theorem imo_1966_p4, Dafny line 233, OOR)
// closes with: K3 (locality) — base
// added: nothing (line lemma standalone)
// Dafny: verifies unchanged (dossier standalone check)
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/line_lemmas/OOR/imo_1966_p4/L233.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 233 of imo_1966_p4 (OOR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../wt_integ5/out/imo_1966_p4.dfy"

// ========================================================================================
// FAILING LINE 233 (OOR) in imo_1966_p4: Verification out of resource (imo_1966_p4)
//   dafny |                   assert ((Real.div(1.0, Real.cos((Real.pow(2.0, m) * x))) * (Real.div(1.0, Real.sin((Real.pow(2.0, m) * x))) * (1.0 / 2.0))) == (Real.div(Real.cos((Real.pow(2.0, m) * x)), Real.sin((Real.pow(2.0, m) * x))) - Real.div(((2.0 * (Real.cos((Real.pow(2.0, m) * x)) * Real.cos((Real.pow(2.0
//   statement kind: sub-goal (Lean tactic state)
//   @tac 2344-2391 | Lean: by_cases hsin' : Real.sin (2 ^ (m + 1) * x) = 0
//        before-goal ⊢ (cos ((2 : ℝ) ^ m * x))⁻¹ * ((sin ((2 : ℝ) ^ m * x))⁻¹ * (2 : ℝ)⁻¹) =
  cos ((2 : ℝ) ^ m * x) / sin ((2 : ℝ) ^ m * x) -
    ((2 : ℝ) * cos ((2 : ℝ) ^ m * x) ^ (2 : ℕ) - (1 : ℝ)) / ((2 : ℝ) * (sin ((2 : ℝ) ^ m * x) * cos 
// inside Lean have h₃, Lean lines 44-53:
//   lean  |     have h₃ : 1 / Real.sin (2 ^ (m + 1) * x) = 1 / Real.tan (2 ^ m * x) - 1 / Real.tan (2 ^ (m + 1) * x) := by
//   lean  |       rw [show 2 ^ (m + 1) * x = 2 * (2 ^ m * x) by ring]
//   lean  |       simp [Real.tan_eq_sin_div_cos, Real.sin_two_mul, Real.cos_two_mul, mul_assoc]
//   lean  |       by_cases hcos : Real.cos (2 ^ m * x) = 0 <;> by_cases hsin : Real.sin (2 ^ m * x) = 0 <;>
//   lean  |         by_cases hcos' : Real.cos (2 ^ (m + 1) * x) = 0 <;> by_cases hsin' : Real.sin (2 ^ (m + 1) * x) = 0 <;>
//   lean  |           field_simp [hcos, hsin, hcos', hsin']
//   lean  |       <;> ring_nf
//   lean  |       <;> simp_all [Real.cos_sq, Real.sin_sq]
//   lean  |       <;> ring_nf
//   lean  |       <;> nlinarith [Real.sin_sq_add_cos_sq (2 ^ m * x), Real.sin_sq_add_cos_sq (2 ^ (m + 1) * x)]

// 4 path(s) merged (paths); 21 shared facts; 4 distinct path conditions
lemma {:induction false} vc_imo_1966_p4_L233(m_1_0: nat, n: int, x: real)
  requires 0 <= n
  requires forall k_1: nat :: 0 < k_1 ==> (forall m_2: int :: x != Real.div((m_2 as real) * Real.pi(), Real.pow(2.0, k_1)))
  requires 0 < n
  requires forall n0: int :: (forall k_3: nat :: 0 < k_3 ==> (forall m_3: int :: true)) && (0 <= n0 && (forall k_3: nat :: 0 < k_3 ==> (forall m_3: int :: x != Real.div((m_3 as real) * Real.pi(), Real.pow(2.0, k_3)))) && 0 < n0 && ((0 <= n0 && n0 < n) || (n0 == n && 0.0 <= x && x <= x - 1.0)) ==> (forall k: int :: true) && Real.sum(IccN(1, n0), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, n0) * x)))
  requires Real.div(1.0, Real.sin(2.0 * x)) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(2.0 * x))
  requires 0 <= m_1_0
  requires 0 < m_1_0
  requires 0 <= 1
  requires Real.sum(IccN(1, m_1_0), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, m_1_0) * x))
  requires m_1_0 + 1 > 0
  requires 0 <= m_1_0 + 1
  requires Real.sum(IccN(1, m_1_0 + 1), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.sum(IccN(1, m_1_0), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) + Real.div(1.0, Real.sin(Real.pow(2.0, m_1_0 + 1) * x))
  requires Real.pow(2.0, m_1_0 + 1) * x == 2.0 * (Real.pow(2.0, m_1_0) * x)
  requires Real.tan(Real.pow(2.0, m_1_0) * x) == Real.div(Real.sin(Real.pow(2.0, m_1_0) * x), Real.cos(Real.pow(2.0, m_1_0) * x))
  requires Real.tan(2.0 * (Real.pow(2.0, m_1_0) * x)) == Real.div(Real.sin(2.0 * (Real.pow(2.0, m_1_0) * x)), Real.cos(2.0 * (Real.pow(2.0, m_1_0) * x)))
  requires Real.sin(2.0 * (Real.pow(2.0, m_1_0) * x)) == 2.0 * Real.sin(Real.pow(2.0, m_1_0) * x) * Real.cos(Real.pow(2.0, m_1_0) * x)
  requires Real.cos(2.0 * (Real.pow(2.0, m_1_0) * x)) == 2.0 * Real.cos(Real.pow(2.0, m_1_0) * x) * Real.cos(Real.pow(2.0, m_1_0) * x) - 1.0
  requires Real.cos(Real.pow(2.0, m_1_0) * x) == 0.0
  requires Real.sin(Real.pow(2.0, m_1_0) * x) == 0.0
  requires Real.cos(Real.pow(2.0, m_1_0 + 1) * x) != 0.0
  requires Real.div(1.0, Real.cos(Real.pow(2.0, m_1_0) * x)) * (Real.div(1.0, Real.sin(Real.pow(2.0, m_1_0) * x)) * (1.0 / 2.0)) == Real.div(Real.cos(Real.pow(2.0, m_1_0) * x), Real.sin(Real.pow(2.0, m_1_0) * x)) - Real.div(2.0 * (Real.cos(Real.pow(2.0, m_1_0) * x) * Real.cos(Real.pow(2.0, m_1_0) * x)) - 1.0, 2.0 * (Real.sin(Real.pow(2.0, m_1_0) * x) * Real.cos(Real.pow(2.0, m_1_0) * x)))
  requires (Real.sin(Real.pow(2.0, m_1_0 + 1) * x) == 0.0) || (Real.sin(Real.pow(2.0, m_1_0 + 1) * x) != 0.0) || ((m_1_0 <= 0) && (Real.sin(Real.pow(2.0, m_1_0 + 1) * x) == 0.0)) || ((m_1_0 <= 0) && (Real.sin(Real.pow(2.0, m_1_0 + 1) * x) != 0.0))
  ensures  Real.div(1.0, Real.cos(Real.pow(2.0, m_1_0) * x)) * (Real.div(1.0, Real.sin(Real.pow(2.0, m_1_0) * x)) * (1.0 / 2.0)) == Real.div(Real.cos(Real.pow(2.0, m_1_0) * x), Real.sin(Real.pow(2.0, m_1_0) * x)) - Real.div(2.0 * (Real.cos(Real.pow(2.0, m_1_0) * x) * Real.cos(Real.pow(2.0, m_1_0) * x)) - 1.0, 2.0 * (Real.sin(Real.pow(2.0, m_1_0) * x) * Real.cos(Real.pow(2.0, m_1_0) * x)))
{ }

// side checks at the same line (not the reported failure): 1 check(s)
// side check: divisor is always non-zero.
lemma {:induction false} vc_imo_1966_p4_L233_side1(m_1_0: nat, n: int, x: real)
  requires 0 <= n
  requires forall k_1: nat :: 0 < k_1 ==> (forall m_2: int :: x != Real.div((m_2 as real) * Real.pi(), Real.pow(2.0, k_1)))
  requires 0 < n
  requires forall n0: int :: (forall k_3: nat :: 0 < k_3 ==> (forall m_3: int :: true)) && (0 <= n0 && (forall k_3: nat :: 0 < k_3 ==> (forall m_3: int :: x != Real.div((m_3 as real) * Real.pi(), Real.pow(2.0, k_3)))) && 0 < n0 && ((0 <= n0 && n0 < n) || (n0 == n && 0.0 <= x && x <= x - 1.0)) ==> (forall k: int :: true) && Real.sum(IccN(1, n0), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, n0) * x)))
  requires Real.div(1.0, Real.sin(2.0 * x)) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(2.0 * x))
  requires 0 <= m_1_0
  requires 0 < m_1_0
  requires 0 <= 1
  requires Real.sum(IccN(1, m_1_0), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, m_1_0) * x))
  requires m_1_0 + 1 > 0
  requires 0 <= m_1_0 + 1
  requires Real.sum(IccN(1, m_1_0 + 1), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.sum(IccN(1, m_1_0), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) + Real.div(1.0, Real.sin(Real.pow(2.0, m_1_0 + 1) * x))
  requires Real.pow(2.0, m_1_0 + 1) * x == 2.0 * (Real.pow(2.0, m_1_0) * x)
  requires Real.tan(Real.pow(2.0, m_1_0) * x) == Real.div(Real.sin(Real.pow(2.0, m_1_0) * x), Real.cos(Real.pow(2.0, m_1_0) * x))
  requires Real.tan(2.0 * (Real.pow(2.0, m_1_0) * x)) == Real.div(Real.sin(2.0 * (Real.pow(2.0, m_1_0) * x)), Real.cos(2.0 * (Real.pow(2.0, m_1_0) * x)))
  requires Real.sin(2.0 * (Real.pow(2.0, m_1_0) * x)) == 2.0 * Real.sin(Real.pow(2.0, m_1_0) * x) * Real.cos(Real.pow(2.0, m_1_0) * x)
  requires Real.cos(2.0 * (Real.pow(2.0, m_1_0) * x)) == 2.0 * Real.cos(Real.pow(2.0, m_1_0) * x) * Real.cos(Real.pow(2.0, m_1_0) * x) - 1.0
  requires Real.cos(Real.pow(2.0, m_1_0) * x) == 0.0
  requires Real.sin(Real.pow(2.0, m_1_0) * x) == 0.0
  requires Real.cos(Real.pow(2.0, m_1_0 + 1) * x) != 0.0
  requires Real.div(1.0, Real.cos(Real.pow(2.0, m_1_0) * x)) * (Real.div(1.0, Real.sin(Real.pow(2.0, m_1_0) * x)) * (1.0 / 2.0)) == Real.div(Real.cos(Real.pow(2.0, m_1_0) * x), Real.sin(Real.pow(2.0, m_1_0) * x)) - Real.div(2.0 * (Real.cos(Real.pow(2.0, m_1_0) * x) * Real.cos(Real.pow(2.0, m_1_0) * x)) - 1.0, 2.0 * (Real.sin(Real.pow(2.0, m_1_0) * x) * Real.cos(Real.pow(2.0, m_1_0) * x)))
  requires (Real.sin(Real.pow(2.0, m_1_0 + 1) * x) == 0.0) || (Real.sin(Real.pow(2.0, m_1_0 + 1) * x) != 0.0) || ((m_1_0 <= 0) && (Real.sin(Real.pow(2.0, m_1_0 + 1) * x) == 0.0)) || ((m_1_0 <= 0) && (Real.sin(Real.pow(2.0, m_1_0 + 1) * x) != 0.0))
  ensures  2.0 != 0.0
{ }

