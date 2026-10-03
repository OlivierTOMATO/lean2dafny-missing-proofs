// CLOSED LEMMA for failing line algebra_apbon2pownleqapownpbpowon2-648 (theorem algebra_apbon2pownleqapownpbpowon2, Dafny line 648, ERR)
// closes with: K2 (computation) — single
// added: K2-pow: line lemma verbatim over the library without the recursive pow ensures
// Dafny: finished with 8 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_007/algebra_apbon2pownleqapownpbpowon2-648/K2pow_linelemma.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// ABLATE K2-pow: line lemma verbatim, included theory uses library without recursive pow ensures
// Line lemma for failing line 648 of algebra_apbon2pownleqapownpbpowon2 (ERR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "/home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_007/_nopow/out/algebra_apbon2pownleqapownpbpowon2.dfy"

// ========================================================================================
// FAILING LINE 648 (ERR) in algebra_apbon2pownleqapownpbpowon2: a precondition for this call could not be proved
//   dafny |       induction_helper_1(a, b, n - 1);
//   statement kind: lemma call (precondition)
// inside Lean have h₆₁, Lean lines 47-89:
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

// 6 path(s) merged (paths); 10 shared facts; 4 distinct path conditions; 4 claims conjoined
lemma {:induction false} vc_algebra_apbon2pownleqapownpbpowon2_L648(a: real, b: real, n: int, n_4_0_0: int)
  requires 0 <= n
  requires 0.0 < a
  requires 0.0 < b
  requires 0 < n
  requires 2.0 != 0.0
  requires 0.0 < (a + b) / 2.0
  requires forall k_3_1: nat :: true ==> (a - b) * (Real.pow(a, k_3_1) - Real.pow(b, k_3_1)) >= 0.0
  requires 0 <= n_4_0_0
  requires 0 < n_4_0_0
  requires 0 <= n_4_0_0 - 1
  ensures  (0.0 < a)
        && (0.0 < b)
        && (0.0 < (a + b) / 2.0)
        && (forall k_1: nat :: (a - b) * (Real.pow(a, k_1) - Real.pow(b, k_1)) >= 0.0)
{ }

// side checks at the same line (not the reported failure): 1 check(s)
// side check: value always satisfies the subset constraints of 'nat'
lemma {:induction false} vc_algebra_apbon2pownleqapownpbpowon2_L648_side1(a: real, b: real, n: int, n_4_0_0: int)
  requires 0 <= n
  requires 0.0 < a
  requires 0.0 < b
  requires 0 < n
  requires 2.0 != 0.0
  requires 0.0 < (a + b) / 2.0
  requires forall k_3_1: nat :: true ==> (a - b) * (Real.pow(a, k_3_1) - Real.pow(b, k_3_1)) >= 0.0
  requires 0 <= n_4_0_0
  requires 0 < n_4_0_0
  ensures  0 <= n_4_0_0 - 1
{ }

