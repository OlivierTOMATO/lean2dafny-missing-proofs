// CLOSED LEMMA for failing line imo_1966_p4-156 (theorem imo_1966_p4, Dafny line 156, OOR)
// closes with: K3 (locality) — base
// added: nothing (line lemma standalone)
// Dafny: verifies unchanged (dossier standalone check)
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/line_lemmas/OOR/imo_1966_p4/L156.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 156 of imo_1966_p4 (OOR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../wt_integ5/out/imo_1966_p4.dfy"

// ========================================================================================
// FAILING LINE 156 (OOR) in imo_1966_p4: Verification out of resource (imo_1966_p4)
//   dafny |     ensures (Real.sum(IccN(1, (m + 1)), ((k: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, k) * x))))) == (Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan((Real.pow(2.0, (m + 1)) * x))))) // @tac 1660-1697 // @tac 1702-1915 // @tac 1920-1932
//   statement kind: contract (ensures/requires)
//   @tac 1660-1697 | Lean: have h₁' : m + 1 > 0 := by linarith
//        before-goal ⊢ ∑ k ∈ Finset.Icc (1 : ℕ) (m + (1 : ℕ)), (1 : ℝ) / sin ((2 : ℝ) ^ k * x) =
  (1 : ℝ) / tan x - (1 : ℝ) / tan ((2 : ℝ) ^ (m + (1 : ℕ)) * x)
//   @tac 1702-1915 | Lean: have h₂ : ∑ k in Finset.Icc 1 (m + 1), 1 / Real.sin (2 ^ k * x) = ∑ k in Finset.Icc 1 m, 1 / Real.sin (2 ^ k * x) + 1 / Real.sin (2 ^ (m + 1) * x) := by
//        before-goal ⊢ ∑ k ∈ Finset.Icc (1 : ℕ) (m + (1 : ℕ)), (1 : ℝ) / sin ((2 : ℝ) ^ k * x) =
  (1 : ℝ) / tan x - (1 : ℝ) / tan ((2 : ℝ) ^ (m + (1 : ℕ)) * x)
//   @tac 1920-1932 | Lean: rw [h₂, h]
//        before-goal ⊢ ∑ k ∈ Finset.Icc (1 : ℕ) (m + (1 : ℕ)), (1 : ℝ) / sin ((2 : ℝ) ^ k * x) =
  (1 : ℝ) / tan x - (1 : ℝ) / tan ((2 : ℝ) ^ (m + (1 : ℕ)) * x)
//        before-goal ⊢ (1 : ℝ) / tan x - (1 : ℝ) / tan ((2 : ℝ) ^ m * x) + (1 : ℝ) / sin ((2 : ℝ) ^ (m + (1 : ℕ)) * x) =
  (1 : ℝ) / tan x - (1 : ℝ) / tan ((2 : ℝ) ^ (m + (1 : ℕ)) * x)
// Lean theorem statement, Lean lines 10-86:
//   lean  | theorem imo_1966_p4 (n : ℕ) (x : ℝ) (h₀ : ∀ k : ℕ, 0 < k → ∀ m : ℤ, x ≠ m * Real.pi / 2 ^ k)
//   lean  |   (h₁ : 0 < n) :
//   lean  |   (∑ k in Finset.Icc 1 n, 1 / Real.sin (2 ^ k * x)) = 1 / Real.tan x - 1 / Real.tan (2 ^ n * x) := by
//   lean  |   have base_case : (1 / Real.sin (2 * x)) = (1 / Real.tan x) - (1 / Real.tan (2 * x)) := by
//   lean  |     rw [Real.tan_eq_sin_div_cos]
//   lean  |     rw [Real.tan_eq_sin_div_cos]
//   lean  |     -- Simplify the expression using the fact that sin(2x) = 2sin(x)cos(x)
//   lean  |     by_cases hx : Real.sin x = 0 <;>
//   lean  |     by_cases hx2 : Real.sin (2 * x) = 0 <;>
//   lean  |     -- Simplify the expression using the fact that sin(2x) = 2sin(x)cos(x)
//   lean  |     simp_all [Real.sin_two_mul, Real.cos_two_mul, mul_assoc]
//   lean  |     -- Use the fact that the composition of two non-zero functions is non-zero
//   lean  |     <;>
//   lean  |     field_simp
//   lean  |     -- Simplify the expression using the fact that the composition of two non-zero functions is non-zero
//   lean  |     <;>
//   lean  |     ring
//   lean  |     <;>
//   lean  |     simp_all [Real.sin_sq, Real.cos_sq]
//   lean  |     <;>
//   lean  |     ring
//   lean  |     <;>
//   lean  |     simp_all [Real.sin_sq, Real.cos_sq]
//   lean  |     <;>
//   lean  |     ring
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
//   lean  |   have apply_induction : ∀ n : ℕ, 0 < n → 
//   lean  |     (∑ k in Finset.Icc 1 n, 1 / Real.sin (2 ^ k * x)) = (1 / Real.tan x) - (1 / Real.tan (2 ^ n * x)) := by
//   lean  |     intro n h₁
//   lean  |     induction n with
//   lean  |     | zero =>
//   lean  |       -- This case is impossible because h₁ : 0 < n, so we derive a contradiction.
//   lean  |       cases h₁
//   lean  |     | succ n ih =>
//   lean  |       -- Use the inductive step to handle the sum for n+1 terms.
//   lean  |       cases n with
//   lean  |       | zero =>
//   lean  |         -- Base case: n = 1
//   lean  |         simp_all [Finset.sum_Icc_succ_top, Nat.one_ne_zero, Nat.succ_pos, base_case]
//   lean  |       | succ n =>
//   lean  |         -- Inductive step: assume the statement holds for n, prove for n+1.
//   lean  |         simp_all [Finset.sum_Icc_succ_top, Nat.succ_ne_zero, Nat.succ_pos, inductive_step]
//   lean  |         -- Use the inductive hypothesis and simplify the expression.
//   lean  |         <;> linarith
//   lean  |   
//   lean  |   have final_conclusion : (∑ k in Finset.Icc 1 n, 1 / Real.sin (2 ^ k * x)) = (1 / Real.tan x) - (1 / Real.tan (2 ^ n * x)) := by
//   lean  |     apply apply_induction
//   lean  |     <;> simp_all
//   lean  |   
//   lean  |   have h₂ := h₁
//   lean  |   have h₃ := base_case
//   lean  |   have h₄ := inductive_step 0
//   lean  |   have h₅ := apply_induction 0
//   lean  |   have h₆ := final_conclusion
//   lean  |   simp_all
//   lean  | 

// 2 path(s) merged (paths); 13 shared facts; 2 distinct path conditions
lemma {:induction false} vc_imo_1966_p4_L156(m_1_0: nat, n: int, x: real)
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
  requires Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, m_1_0) * x)) + Real.div(1.0, Real.sin(Real.pow(2.0, m_1_0 + 1) * x)) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, m_1_0 + 1) * x))
  ensures  Real.sum(IccN(1, m_1_0 + 1), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, m_1_0 + 1) * x))
{ }

// side checks at the same line (not the reported failure): 3 check(s)
// side check: value always satisfies the subset constraints of 'nat'
lemma {:induction false} vc_imo_1966_p4_L156_side1(m_1_0: nat, n: int, x: real)
  requires 0 <= n
  requires forall k_1: nat :: 0 < k_1 ==> (forall m_2: int :: x != Real.div((m_2 as real) * Real.pi(), Real.pow(2.0, k_1)))
  requires 0 < n
  requires forall n0: int :: (forall k_3: nat :: 0 < k_3 ==> (forall m_3: int :: true)) && (0 <= n0 && (forall k_3: nat :: 0 < k_3 ==> (forall m_3: int :: x != Real.div((m_3 as real) * Real.pi(), Real.pow(2.0, k_3)))) && 0 < n0 && ((0 <= n0 && n0 < n) || (n0 == n && 0.0 <= x && x <= x - 1.0)) ==> (forall k: int :: true) && Real.sum(IccN(1, n0), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, n0) * x)))
  requires Real.div(1.0, Real.sin(2.0 * x)) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(2.0 * x))
  requires 0 <= m_1_0
  requires 0 < m_1_0
  requires Real.sum(IccN(1, m_1_0), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, m_1_0) * x))
  requires (0 <= 1) || (m_1_0 <= 0)
  ensures  0 <= 1
{ }

// side check: value always satisfies the subset constraints of 'nat'
lemma {:induction false} vc_imo_1966_p4_L156_side2(m_1_0: nat, n: int, x: real)
  requires 0 <= n
  requires forall k_1: nat :: 0 < k_1 ==> (forall m_2: int :: x != Real.div((m_2 as real) * Real.pi(), Real.pow(2.0, k_1)))
  requires 0 < n
  requires forall n0: int :: (forall k_3: nat :: 0 < k_3 ==> (forall m_3: int :: true)) && (0 <= n0 && (forall k_3: nat :: 0 < k_3 ==> (forall m_3: int :: x != Real.div((m_3 as real) * Real.pi(), Real.pow(2.0, k_3)))) && 0 < n0 && ((0 <= n0 && n0 < n) || (n0 == n && 0.0 <= x && x <= x - 1.0)) ==> (forall k: int :: true) && Real.sum(IccN(1, n0), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, n0) * x)))
  requires Real.div(1.0, Real.sin(2.0 * x)) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(2.0 * x))
  requires 0 <= m_1_0
  requires 0 < m_1_0
  requires 0 <= 1
  requires Real.sum(IccN(1, m_1_0), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, m_1_0) * x))
  ensures  0 <= m_1_0 + 1
{ }

