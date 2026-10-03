// CLOSED LEMMA for failing line algebra_apbon2pownleqapownpbpowon2-243 (theorem algebra_apbon2pownleqapownpbpowon2, Dafny line 243, ERR)
// closes with: K2 (computation) — single
// added: K2-pow: line lemma verbatim over the library without the recursive pow ensures
// Dafny: finished with 12 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_007/algebra_apbon2pownleqapownpbpowon2-243/K2pow_linelemma.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// ABLATE K2-pow: line lemma verbatim, included theory uses library without recursive pow ensures
// Line lemma for failing line 243 of algebra_apbon2pownleqapownpbpowon2 (ERR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "/home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_007/_nopow/out/algebra_apbon2pownleqapownpbpowon2.dfy"

// ========================================================================================
// FAILING LINE 243 (ERR) in induction_helper_1: a precondition for this call could not be proved
//   dafny |     induction_helper_1(a, b, n - 1);   // IH: P(n)
//   statement kind: lemma call (precondition)
// Lean theorem statement, Lean lines 9-92:
//   lean  | theorem algebra_apbon2pownleqapownpbpowon2 (a b : ℝ) (n : ℕ) (h₀ : 0 < a ∧ 0 < b) (h₁ : 0 < n) :
//   lean  |     ((a + b) / 2) ^ n ≤ (a ^ n + b ^ n) / 2 := by
//   lean  |   have h₂ : 0 < a := by
//   lean  |     linarith [h₀.1]
//   lean  |   
//   lean  |   have h₃ : 0 < b := by
//   lean  |     linarith [h₀.2]
//   lean  |   
//   lean  |   have h₄ : 0 < (a + b) / 2 := by
//   lean  |     have h₄₁ : 0 < a + b := by linarith
//   lean  |     have h₄₂ : 0 < (a + b) / 2 := by positivity
//   lean  |     exact h₄₂
//   lean  |   
//   lean  |   have h₅ : ∀ (k : ℕ), (a - b) * (a ^ k - b ^ k) ≥ 0 := by
//   lean  |     intro k
//   lean  |     have h₅₁ : a > 0 := by linarith
//   lean  |     have h₅₂ : b > 0 := by linarith
//   lean  |     by_cases h₅₃ : a ≥ b
//   lean  |     · -- Case: a ≥ b
//   lean  |       have h₅₄ : a - b ≥ 0 := by linarith
//   lean  |       have h₅₅ : a ^ k ≥ b ^ k := by
//   lean  |         -- Since a ≥ b > 0, a^k ≥ b^k for any natural number k
//   lean  |         exact pow_le_pow_of_le_left (by linarith) h₅₃ k
//   lean  |       have h₅₆ : a ^ k - b ^ k ≥ 0 := by linarith
//   lean  |       have h₅₇ : (a - b) * (a ^ k - b ^ k) ≥ 0 := by
//   lean  |         nlinarith
//   lean  |       exact h₅₇
//   lean  |     · -- Case: a < b
//   lean  |       have h₅₄ : a - b < 0 := by linarith
//   lean  |       have h₅₅ : a ^ k ≤ b ^ k := by
//   lean  |         -- Since 0 < a < b, a^k ≤ b^k for any natural number k
//   lean  |         exact pow_le_pow_of_le_left (by linarith) (by linarith) k
//   lean  |       have h₅₆ : a ^ k - b ^ k ≤ 0 := by linarith
//   lean  |       have h₅₇ : (a - b) * (a ^ k - b ^ k) ≥ 0 := by
//   lean  |         nlinarith
//   lean  |       exact h₅₇
//   lean  |   
//   lean  |   have h₆ : ((a + b) / 2) ^ n ≤ (a ^ n + b ^ n) / 2 := by
//   lean  |     have h₆₁ : ∀ n : ℕ, 0 < n → ((a + b) / 2) ^ n ≤ (a ^ n + b ^ n) / 2 := by
//   lean  |       intro n hn
//   lean  |       induction' hn with n hn IH
//   lean  |       · -- Base case: n = 1
//   lean  |         norm_num [pow_one]
//   lean  |         <;>
//   lean  |         (try ring_nf)
//   lean  |         <;>
//   lean  |         (try nlinarith)
//   lean  |       · -- Inductive step: assume the statement holds for n, prove for n + 1
//   lean  |         have h₆₂ : (a - b) * (a ^ n - b ^ n) ≥ 0 := h₅ n
//   lean  |         have h₆₃ : (a + b) / 2 > 0 := by positivity
//   lean  |         have h₆₄ : ((a + b) / 2) ^ (n + 1) = ((a + b) / 2) ^ n * ((a + b) / 2) := by
//   lean  |           ring_nf
//   lean  |           <;> field_simp
//   lean  |           <;> ring_nf
//   lean  |         rw [h₆₄]
//   lean  |         have h₆₅ : ((a + b) / 2) ^ n * ((a + b) / 2) ≤ ((a ^ n + b ^ n) / 2) * ((a + b) / 2) := by
//   lean  |           gcongr
//   lean  |           <;> linarith
//   lean  |         have h₆₆ : ((a ^ n + b ^ n) / 2) * ((a + b) / 2) = (a ^ n * a + a ^ n * b + b ^ n * a + b ^ n * b) / 4 := by
//   lean  |           ring_nf
//   lean  |           <;> field_simp
//   lean  |           <;> ring_nf
//   lean  |         rw [h₆₆] at h₆₅
//   lean  |         have h₆₇ : (a ^ (n + 1) + b ^ (n + 1)) / 2 ≥ (a ^ n * a + a ^ n * b + b ^ n * a + b ^ n * b) / 4 := by
//   lean  |           have h₆₈ : a ^ (n + 1) = a ^ n * a := by
//   lean  |             ring_nf
//   lean  |           have h₆₉ : b ^ (n + 1) = b ^ n * b := by
//   lean  |             ring_nf
//   lean  |           rw [h₆₈, h₆₉]
//   lean  |           have h₇₀ : a ^ n * a + b ^ n * b ≥ a ^ n * b + b ^ n * a := by
//   lean  |             nlinarith [h₅ n]
//   lean  |           nlinarith [h₅ n]
//   lean  |         have h₆₈ : ((a + b) / 2) ^ (n + 1) ≤ (a ^ (n + 1) + b ^ (n + 1)) / 2 := by
//   lean  |           have h₆₉ : ((a + b) / 2) ^ (n + 1) ≤ (a ^ n * a + a ^ n * b + b ^ n * a + b ^ n * b) / 4 := by
//   lean  |             linarith
//   lean  |           have h₇₀ : (a ^ (n + 1) + b ^ (n + 1)) / 2 ≥ (a ^ n * a + a ^ n * b + b ^ n * a + b ^ n * b) / 4 := by
//   lean  |             exact h₆₇
//   lean  |           have h₇₁ : ((a + b) / 2) ^ (n + 1) ≤ (a ^ (n + 1) + b ^ (n + 1)) / 2 := by
//   lean  |             linarith
//   lean  |           exact h₇₁
//   lean  |         simpa [pow_succ] using h₆₈
//   lean  |     exact h₆₁ n h₁
//   lean  |   exact h₆

// 6 path(s) merged (paths); 9 shared facts; 4 distinct path conditions; 4 claims conjoined
lemma {:induction false} vc_algebra_apbon2pownleqapownpbpowon2_L243(a: real, b: real, n: int)
  requires 0 <= n
  requires 0.0 < a
  requires 0.0 < b
  requires 0.0 < (a + b) / 2.0
  requires forall k_1: nat :: (a - b) * (Real.pow(a, k_1) - Real.pow(b, k_1)) >= 0.0
  requires n != 0
  requires 0 <= n - 1
  requires 0 <= n || n - 1 == n
  requires n - 1 < n
  ensures  (0.0 < a)
        && (0.0 < b)
        && (0.0 < (a + b) / 2.0)
        && (forall k_1: nat :: (a - b) * (Real.pow(a, k_1) - Real.pow(b, k_1)) >= 0.0)
{ }

// side checks at the same line (not the reported failure): 3 check(s)
// side check: value always satisfies the subset constraints of 'nat'
lemma {:induction false} vc_algebra_apbon2pownleqapownpbpowon2_L243_side1(a: real, b: real, n: int)
  requires 0 <= n
  requires 0.0 < a
  requires 0.0 < b
  requires 0.0 < (a + b) / 2.0
  requires forall k_1: nat :: (a - b) * (Real.pow(a, k_1) - Real.pow(b, k_1)) >= 0.0
  requires n != 0
  ensures  0 <= n - 1
{ }

// side check: decreases expression is bounded below by 0
lemma {:induction false} vc_algebra_apbon2pownleqapownpbpowon2_L243_side2(a: real, b: real, n: int)
  requires 0 <= n
  requires 0.0 < a
  requires 0.0 < b
  requires 0.0 < (a + b) / 2.0
  requires forall k_1: nat :: (a - b) * (Real.pow(a, k_1) - Real.pow(b, k_1)) >= 0.0
  requires n != 0
  requires 0 <= n - 1
  ensures  0 <= n || n - 1 == n
{ }

// side check: loop or recursion terminates
lemma {:induction false} vc_algebra_apbon2pownleqapownpbpowon2_L243_side3(a: real, b: real, n: int)
  requires 0 <= n
  requires 0.0 < a
  requires 0.0 < b
  requires 0.0 < (a + b) / 2.0
  requires forall k_1: nat :: (a - b) * (Real.pow(a, k_1) - Real.pow(b, k_1)) >= 0.0
  requires n != 0
  requires 0 <= n - 1
  requires 0 <= n || n - 1 == n
  ensures  n - 1 < n
{ }

