// CLOSED LEMMA for failing line imo_1966_p4-187 (theorem imo_1966_p4, Dafny line 187, OOR)
// closes with: K3 (locality) — base
// added: nothing (line lemma standalone)
// Dafny: verifies unchanged (dossier standalone check)
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/line_lemmas/OOR/imo_1966_p4/L187.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 187 of imo_1966_p4 (OOR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../wt_integ5/out/imo_1966_p4.dfy"

// ========================================================================================
// FAILING LINE 187 (OOR) in imo_1966_p4: Verification out of resource (imo_1966_p4)
//   dafny |     assert (((Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan((Real.pow(2.0, m) * x)))) + Real.div(1.0, Real.sin((Real.pow(2.0, (m + 1)) * x)))) == (Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan((Real.pow(2.0, (m + 1)) * x))))) by {  // sub-goal before `have` (Lean state) // @tac 1937-2624
//   statement kind: sub-goal (Lean tactic state)
//   @tac 1937-2624 | Lean: have h₃ : 1 / Real.sin (2 ^ (m + 1) * x) = 1 / Real.tan (2 ^ m * x) - 1 / Real.tan (2 ^ (m + 1) * x) := by
//        before-goal ⊢ (1 : ℝ) / tan x - (1 : ℝ) / tan ((2 : ℝ) ^ m * x) + (1 : ℝ) / sin ((2 : ℝ) ^ (m + (1 : ℕ)) * x) =
  (1 : ℝ) / tan x - (1 : ℝ) / tan ((2 : ℝ) ^ (m + (1 : ℕ)) * x)
//   @tac 2629-2656 | Lean: rw [h₃]
//        before-goal ⊢ (1 : ℝ) / tan x - (1 : ℝ) / tan ((2 : ℝ) ^ m * x) + (1 : ℝ) / sin ((2 : ℝ) ^ (m + (1 : ℕ)) * x) =
  (1 : ℝ) / tan x - (1 : ℝ) / tan ((2 : ℝ) ^ (m + (1 : ℕ)) * x)
//   @tac 2629-2638 | Lean: rw [h₃]
//        before-goal ⊢ (1 : ℝ) / tan x - (1 : ℝ) / tan ((2 : ℝ) ^ m * x) + (1 : ℝ) / sin ((2 : ℝ) ^ (m + (1 : ℕ)) * x) =
  (1 : ℝ) / tan x - (1 : ℝ) / tan ((2 : ℝ) ^ (m + (1 : ℕ)) * x)
//        before-goal ⊢ (1 : ℝ) / tan x - (1 : ℝ) / tan ((2 : ℝ) ^ m * x) +
    ((1 : ℝ) / tan ((2 : ℝ) ^ m * x) - (1 : ℝ) / tan ((2 : ℝ) ^ (m + (1 : ℕ)) * x)) =
  (1 : ℝ) / tan x - (1 : ℝ) / tan ((2 : ℝ) ^ (m + (1 : ℕ)) * x)
// inside Lean have inductive_step, Lean lines 35-55:
//   lean  |   have inductive_step : ∀ m : ℕ, 0 < m → 
//   lean  |     (∑ k in Finset.Icc 1 m, 1 / Real.sin (2 ^ k * x)) = (1 / Real.tan x) - (1 / Real.tan (2 ^ m * x)) →
//   lean  |     (∑ k in Finset.Icc 1 (m + 1), 1 / Real.sin (2 ^ k * x)) = (1 / Real.tan x) - (1 / Real.tan (2 ^ (m + 1) * x)) := by
//   lean  |     intro m hm h
//   lean  |     have h₁' : m + 1 > 0 := by linarith
//   lean  |     have h₂ : ∑ k in Finset.Icc 1 (m + 1), 1 / Real.sin (2 ^ k * x) = ∑ k in Finset.Icc 1 m, 1 / Real.sin (2 ^ k * x) + 1 / Real.sin (2 ^ (m + 1) * x) := by
//   lean  |       rw [Finset.sum_Icc_succ_top]
//   lean  |       <;> simp [hm]
//   lean  |     rw [h₂, h]
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
//   lean  |     rw [h₃]
//   lean  |     <;> nlinarith

// 2 path(s) merged (paths); 14 shared facts; 2 distinct path conditions
lemma {:induction false} vc_imo_1966_p4_L187(m_1_0: nat, n: int, x: real)
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
  requires Real.div(1.0, Real.sin(Real.pow(2.0, m_1_0 + 1) * x)) == Real.div(1.0, Real.tan(Real.pow(2.0, m_1_0) * x)) - Real.div(1.0, Real.tan(Real.pow(2.0, m_1_0 + 1) * x))
  requires Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, m_1_0) * x)) + (Real.div(1.0, Real.tan(Real.pow(2.0, m_1_0) * x)) - Real.div(1.0, Real.tan(Real.pow(2.0, m_1_0 + 1) * x))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, m_1_0 + 1) * x))
  ensures  Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, m_1_0) * x)) + Real.div(1.0, Real.sin(Real.pow(2.0, m_1_0 + 1) * x)) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, m_1_0 + 1) * x))
{ }

// side checks at the same line (not the reported failure): 2 check(s)
// side check: value always satisfies the subset constraints of 'nat'
lemma {:induction false} vc_imo_1966_p4_L187_side1(m_1_0: nat, n: int, x: real)
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
  requires Real.div(1.0, Real.sin(Real.pow(2.0, m_1_0 + 1) * x)) == Real.div(1.0, Real.tan(Real.pow(2.0, m_1_0) * x)) - Real.div(1.0, Real.tan(Real.pow(2.0, m_1_0 + 1) * x))
  requires Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, m_1_0) * x)) + (Real.div(1.0, Real.tan(Real.pow(2.0, m_1_0) * x)) - Real.div(1.0, Real.tan(Real.pow(2.0, m_1_0 + 1) * x))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, m_1_0 + 1) * x))
  ensures  0 <= m_1_0 + 1
{ }

