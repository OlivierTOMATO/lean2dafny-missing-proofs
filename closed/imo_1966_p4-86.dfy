// CLOSED LEMMA for failing line imo_1966_p4-86 (theorem imo_1966_p4, Dafny line 86, OOR)
// closes with: K3 (locality) — base
// added: nothing (line lemma standalone)
// Dafny: verifies unchanged (dossier standalone check)
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/line_lemmas/OOR/imo_1966_p4/L86.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 86 of imo_1966_p4 (OOR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../wt_integ5/out/imo_1966_p4.dfy"

// ========================================================================================
// FAILING LINE 86 (OOR) in imo_1966_p4: Verification out of resource (imo_1966_p4)
//   dafny |   ensures (Real.sum(IccN(1, n), ((k: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, k) * x))))) == (Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan((Real.pow(2.0, n) * x))))) // @tac 559-1360 // @tac 1363-2656 // @tac 2659-3476 // @tac 3482-3654 // @tac 3660-3677 // @tac 3680-3702 // @tac 3705-37
//   statement kind: contract (ensures/requires)
//   @tac 559-1360 | Lean: have base_case : (1 / Real.sin (2 * x)) = (1 / Real.tan x) - (1 / Real.tan (2 * x)) := by
//        before-goal ⊢ ∑ k ∈ Finset.Icc (1 : ℕ) n, (1 : ℝ) / sin ((2 : ℝ) ^ k * x) = (1 : ℝ) / tan x - (1 : ℝ) / tan ((2 : ℝ) ^ n * x)
//   @tac 1363-2656 | Lean: have inductive_step : ∀ m : ℕ, 0 < m → 
//        before-goal ⊢ ∑ k ∈ Finset.Icc (1 : ℕ) n, (1 : ℝ) / sin ((2 : ℝ) ^ k * x) = (1 : ℝ) / tan x - (1 : ℝ) / tan ((2 : ℝ) ^ n * x)
//   @tac 2659-3476 | Lean: have apply_induction : ∀ n : ℕ, 0 < n → 
//        before-goal ⊢ ∑ k ∈ Finset.Icc (1 : ℕ) n, (1 : ℝ) / sin ((2 : ℝ) ^ k * x) = (1 : ℝ) / tan x - (1 : ℝ) / tan ((2 : ℝ) ^ n * x)
//   @tac 3482-3654 | Lean: have final_conclusion : (∑ k in Finset.Icc 1 n, 1 / Real.sin (2 ^ k * x)) = (1 / Real.tan x) - (1 / Real.tan (2 ^ n * x)) := by
//        before-goal ⊢ ∑ k ∈ Finset.Icc (1 : ℕ) n, (1 : ℝ) / sin ((2 : ℝ) ^ k * x) = (1 : ℝ) / tan x - (1 : ℝ) / tan ((2 : ℝ) ^ n * x)
//   @tac 3660-3677 | Lean: have h₂ := h₁
//        before-goal ⊢ ∑ k ∈ Finset.Icc (1 : ℕ) n, (1 : ℝ) / sin ((2 : ℝ) ^ k * x) = (1 : ℝ) / tan x - (1 : ℝ) / tan ((2 : ℝ) ^ n * x)
//   @tac 3680-3702 | Lean: have h₃ := base_case
//        before-goal ⊢ ∑ k ∈ Finset.Icc (1 : ℕ) n, (1 : ℝ) / sin ((2 : ℝ) ^ k * x) = (1 : ℝ) / tan x - (1 : ℝ) / tan ((2 : ℝ) ^ n * x)
//   @tac 3705-3734 | Lean: have h₄ := inductive_step 0
//        before-goal ⊢ ∑ k ∈ Finset.Icc (1 : ℕ) n, (1 : ℝ) / sin ((2 : ℝ) ^ k * x) = (1 : ℝ) / tan x - (1 : ℝ) / tan ((2 : ℝ) ^ n * x)
//   @tac 3737-3767 | Lean: have h₅ := apply_induction 0
//        before-goal ⊢ ∑ k ∈ Finset.Icc (1 : ℕ) n, (1 : ℝ) / sin ((2 : ℝ) ^ k * x) = (1 : ℝ) / tan x - (1 : ℝ) / tan ((2 : ℝ) ^ n * x)
//   @tac 3770-3799 | Lean: have h₆ := final_conclusion
//        before-goal ⊢ ∑ k ∈ Finset.Icc (1 : ℕ) n, (1 : ℝ) / sin ((2 : ℝ) ^ k * x) = (1 : ℝ) / tan x - (1 : ℝ) / tan ((2 : ℝ) ^ n * x)
//   @tac 3802-3810 | Lean: simp_all
//        before-goal ⊢ ∑ k ∈ Finset.Icc (1 : ℕ) n, (1 : ℝ) / sin ((2 : ℝ) ^ k * x) = (1 : ℝ) / tan x - (1 : ℝ) / tan ((2 : ℝ) ^ n * x)
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

// 18 path(s) merged (paths); 13 shared facts; 18 distinct path conditions
lemma {:induction false} vc_imo_1966_p4_L86(n: nat, x: real, x_0: int)
  requires 0 <= n
  requires forall k_1: nat :: 0 < k_1 ==> (forall m_2: int :: x != Real.div((m_2 as real) * Real.pi(), Real.pow(2.0, k_1)))
  requires 0 < n
  requires forall n0: int :: (forall k_3: nat :: 0 < k_3 ==> (forall m_3: int :: true)) && (0 <= n0 && (forall k_3: nat :: 0 < k_3 ==> (forall m_3: int :: x != Real.div((m_3 as real) * Real.pi(), Real.pow(2.0, k_3)))) && 0 < n0 && ((0 <= n0 && n0 < n) || (n0 == n && 0.0 <= x && x <= x - 1.0)) ==> (forall k: int :: true) && Real.sum(IccN(1, n0), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, n0) * x)))
  requires Real.div(1.0, Real.sin(2.0 * x)) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(2.0 * x))
  requires forall m_1_1: nat :: 0 < m_1_1 && Real.sum(IccN(1, m_1_1), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, m_1_1) * x)) ==> Real.sum(IccN(1, m_1_1 + 1), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, m_1_1 + 1) * x))
  requires forall n_2_1: nat :: 0 < n_2_1 ==> Real.sum(IccN(1, n_2_1), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, n_2_1) * x))
  requires 0 <= 1
  requires Real.sum(IccN(1, n), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, n) * x))
  requires 0 < 0 ==> Real.sum(IccN(1, 0), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, 0) * x)) ==> Real.sum(IccN(1, 0 + 1), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, 0 + 1) * x))
  requires 0 < 0 ==> Real.sum(IccN(1, 0), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, 0) * x))
  requires forall x_0_1: int :: 0 <= x_0_1 ==> x_0_1 in IccN(1, n) ==> (forall k: int :: true) && ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x))).requires(x_0_1) && (forall x_1: int :: true) && ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x))).requires(x_0_1)
  requires forall x_0_1: int :: 0 <= x_0_1 ==> x_0_1 in IccN(1, n) ==> (forall k: int :: true) && ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x))).requires(x_0_1) && (forall x_1: int :: true) && ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x))).requires(x_0_1)
  requires ((0 < 0) && (0 <= 0) && (Real.sum(IccN(1, 0), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, 0) * x))) && (0 <= 0 + 1) && (0 <= x_0) && (x_0 in IccN(1, n)) && (forall x_0_1: int :: 0 <= x_0_1 ==> x_0_1 in IccN(1, n) ==> ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))(x_0_1) == ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))(x_0_1))) || ((0 < 0) && (0 <= 0) && (Real.sum(IccN(1, 0), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, 0) * x))) && (0 <= 0 + 1) && (0 <= x_0) && (x_0 in IccN(1, n)) && (!(forall x_0_1: nat :: x_0_1 in IccN(1, n) ==> ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))(x_0_1) == ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))(x_0_1)))) || ((0 < 0) && (0 <= 0) && (Real.sum(IccN(1, 0), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, 0) * x))) && (0 <= 0 + 1) && (0 <= x_0) && (!(x_0 in IccN(1, n))) && (forall x_0_1: int :: 0 <= x_0_1 ==> x_0_1 in IccN(1, n) ==> ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))(x_0_1) == ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))(x_0_1))) || ((0 < 0) && (0 <= 0) && (Real.sum(IccN(1, 0), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, 0) * x))) && (0 <= 0 + 1) && (0 <= x_0) && (!(x_0 in IccN(1, n))) && (!(forall x_0_1: nat :: x_0_1 in IccN(1, n) ==> ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))(x_0_1) == ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))(x_0_1)))) || ((0 < 0) && (0 <= 0) && (Real.sum(IccN(1, 0), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, 0) * x))) && (0 <= 0 + 1) && (x_0 < 0) && (forall x_0_1: int :: 0 <= x_0_1 ==> x_0_1 in IccN(1, n) ==> ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))(x_0_1) == ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))(x_0_1))) || ((0 < 0) && (0 <= 0) && (Real.sum(IccN(1, 0), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, 0) * x))) && (0 <= 0 + 1) && (x_0 < 0) && (!(forall x_0_1: nat :: x_0_1 in IccN(1, n) ==> ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))(x_0_1) == ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))(x_0_1)))) || ((0 < 0) && (0 <= 0) && (Real.sum(IccN(1, 0), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) != Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, 0) * x))) && (0 <= x_0) && (x_0 in IccN(1, n)) && (forall x_0_1: int :: 0 <= x_0_1 ==> x_0_1 in IccN(1, n) ==> ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))(x_0_1) == ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))(x_0_1))) || ((0 < 0) && (0 <= 0) && (Real.sum(IccN(1, 0), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) != Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, 0) * x))) && (0 <= x_0) && (x_0 in IccN(1, n)) && (!(forall x_0_1: nat :: x_0_1 in IccN(1, n) ==> ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))(x_0_1) == ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))(x_0_1)))) || ((0 < 0) && (0 <= 0) && (Real.sum(IccN(1, 0), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) != Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, 0) * x))) && (0 <= x_0) && (!(x_0 in IccN(1, n))) && (forall x_0_1: int :: 0 <= x_0_1 ==> x_0_1 in IccN(1, n) ==> ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))(x_0_1) == ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))(x_0_1))) || ((0 < 0) && (0 <= 0) && (Real.sum(IccN(1, 0), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) != Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, 0) * x))) && (0 <= x_0) && (!(x_0 in IccN(1, n))) && (!(forall x_0_1: nat :: x_0_1 in IccN(1, n) ==> ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))(x_0_1) == ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))(x_0_1)))) || ((0 < 0) && (0 <= 0) && (Real.sum(IccN(1, 0), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) != Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, 0) * x))) && (x_0 < 0) && (forall x_0_1: int :: 0 <= x_0_1 ==> x_0_1 in IccN(1, n) ==> ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))(x_0_1) == ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))(x_0_1))) || ((0 < 0) && (0 <= 0) && (Real.sum(IccN(1, 0), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) != Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, 0) * x))) && (x_0 < 0) && (!(forall x_0_1: nat :: x_0_1 in IccN(1, n) ==> ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))(x_0_1) == ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))(x_0_1)))) || ((!(0 < 0)) && (0 <= x_0) && (x_0 in IccN(1, n)) && (forall x_0_1: int :: 0 <= x_0_1 ==> x_0_1 in IccN(1, n) ==> ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))(x_0_1) == ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))(x_0_1))) || ((!(0 < 0)) && (0 <= x_0) && (x_0 in IccN(1, n)) && (!(forall x_0_1: nat :: x_0_1 in IccN(1, n) ==> ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))(x_0_1) == ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))(x_0_1)))) || ((!(0 < 0)) && (0 <= x_0) && (!(x_0 in IccN(1, n))) && (forall x_0_1: int :: 0 <= x_0_1 ==> x_0_1 in IccN(1, n) ==> ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))(x_0_1) == ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))(x_0_1))) || ((!(0 < 0)) && (0 <= x_0) && (!(x_0 in IccN(1, n))) && (!(forall x_0_1: nat :: x_0_1 in IccN(1, n) ==> ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))(x_0_1) == ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))(x_0_1)))) || ((!(0 < 0)) && (x_0 < 0) && (forall x_0_1: int :: 0 <= x_0_1 ==> x_0_1 in IccN(1, n) ==> ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))(x_0_1) == ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))(x_0_1))) || ((!(0 < 0)) && (x_0 < 0) && (!(forall x_0_1: nat :: x_0_1 in IccN(1, n) ==> ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))(x_0_1) == ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))(x_0_1))))
  ensures  Real.sum(IccN(1, n), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, n) * x))
{ }

// side checks at the same line (not the reported failure): 1 check(s)
// side check: value always satisfies the subset constraints of 'nat'
lemma {:induction false} vc_imo_1966_p4_L86_side1(k: nat, n: int, x: real)
  requires 0 <= n
  requires 0 <= k
  requires 0 < k ==> (forall m_1: int :: x != Real.div((m_1 as real) * Real.pi(), Real.pow(2.0, k)))
  requires forall k_1: nat :: 0 < k_1 ==> (forall m_2: int :: x != Real.div((m_2 as real) * Real.pi(), Real.pow(2.0, k_1)))
  requires 0 < n
  requires (0 < k) || (k <= 0)
  ensures  0 <= 1
{ }

