// CLOSED LEMMA for failing line numbertheory_3pow2pownm1mod2pownp3eq2pownp2-243 (theorem numbertheory_3pow2pownm1mod2pownp3eq2pownp2, Dafny line 243, OOR)
// closes with: K3 (locality) — variant
// added: requires: 0<=k, WF, NatMod(S,P)==0 (h₁₀)
// Dafny: finished with 21 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_047/numbertheory_3pow2pownm1mod2pownp3eq2pownp2-243/L243_K3.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 243 of numbertheory_3pow2pownm1mod2pownp3eq2pownp2 (OOR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "/home/changjie/lean2dafny_research/agents_tac/wt_integ5/out/numbertheory_3pow2pownm1mod2pownp3eq2pownp2.dfy"

// ========================================================================================
// FAILING LINE 243 (OOR) in induction_helper_1: Verification out of resource (induction_helper_1)
//   dafny |               assert (NatMod((((Int.pow(2, ((2 * n) + 4)) + (k * Int.pow(2, (n + 4)))) + ((k * k) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k) * Int.pow(2, ((2 * n) + 5)))), Int.pow(2, (n + 4))) == 0);
//   statement kind: have / step assertion
// inside Lean have h₄, Lean lines 47-85:
//   lean  |         have h₄ : (2 ^ (2 * n + 4) + k * 2 ^ (n + 4) + k ^ 2 * 2 ^ (2 * n + 6) + 2 * k * 2 ^ (2 * n + 5)) % 2 ^ (n + 4) = 0 := by
//   lean  |           have h₅ : 2 ^ (n + 4) ∣ 2 ^ (2 * n + 4) := by
//   lean  |             apply pow_dvd_pow 2
//   lean  |             omega
//   lean  |           have h₆ : 2 ^ (n + 4) ∣ k * 2 ^ (n + 4) := by
//   lean  |             exact ⟨k, by ring⟩
//   lean  |           have h₇ : 2 ^ (n + 4) ∣ k ^ 2 * 2 ^ (2 * n + 6) := by
//   lean  |             have h₈ : 2 ^ (n + 4) ∣ 2 ^ (2 * n + 6) := by
//   lean  |               apply pow_dvd_pow 2
//   lean  |               omega
//   lean  |             have h₉ : 2 ^ (n + 4) ∣ k ^ 2 * 2 ^ (2 * n + 6) := by
//   lean  |               exact dvd_mul_of_dvd_right h₈ _
//   lean  |             exact h₉
//   lean  |           have h₈ : 2 ^ (n + 4) ∣ 2 * k * 2 ^ (2 * n + 5) := by
//   lean  |             have h₉ : 2 ^ (n + 4) ∣ 2 ^ (2 * n + 5) := by
//   lean  |               apply pow_dvd_pow 2
//   lean  |               omega
//   lean  |             have h₁₀ : 2 ^ (n + 4) ∣ 2 * k * 2 ^ (2 * n + 5) := by
//   lean  |               have h₁₁ : 2 ^ (n + 4) ∣ 2 ^ (2 * n + 5) := h₉
//   lean  |               have h₁₂ : 2 ^ (n + 4) ∣ 2 * k * 2 ^ (2 * n + 5) := by
//   lean  |                 calc
//   lean  |                   2 ^ (n + 4) ∣ 2 ^ (2 * n + 5) := h₁₁
//   lean  |                   _ ∣ 2 * k * 2 ^ (2 * n + 5) := by
//   lean  |                     exact ⟨2 * k, by ring⟩
//   lean  |               exact h₁₂
//   lean  |             exact h₁₀
//   lean  |           have h₉ : 2 ^ (n + 4) ∣ 2 ^ (2 * n + 4) + k * 2 ^ (n + 4) + k ^ 2 * 2 ^ (2 * n + 6) + 2 * k * 2 ^ (2 * n + 5) := by
//   lean  |             have h₁₀ : 2 ^ (n + 4) ∣ 2 ^ (2 * n + 4) := h₅
//   lean  |             have h₁₁ : 2 ^ (n + 4) ∣ k * 2 ^ (n + 4) := h₆
//   lean  |             have h₁₂ : 2 ^ (n + 4) ∣ k ^ 2 * 2 ^ (2 * n + 6) := h₇
//   lean  |             have h₁₃ : 2 ^ (n + 4) ∣ 2 * k * 2 ^ (2 * n + 5) := h₈
//   lean  |             -- Sum of multiples is a multiple
//   lean  |             exact Nat.dvd_add (Nat.dvd_add (Nat.dvd_add h₁₀ h₆) h₇) h₈
//   lean  |           have h₁₀ : (2 ^ (2 * n + 4) + k * 2 ^ (n + 4) + k ^ 2 * 2 ^ (2 * n + 6) + 2 * k * 2 ^ (2 * n + 5)) % 2 ^ (n + 4) = 0 := by
//   lean  |             have h₁₁ : 2 ^ (n + 4) ∣ 2 ^ (2 * n + 4) + k * 2 ^ (n + 4) + k ^ 2 * 2 ^ (2 * n + 6) + 2 * k * 2 ^ (2 * n + 5) := h₉
//   lean  |             have h₁₂ : (2 ^ (2 * n + 4) + k * 2 ^ (n + 4) + k ^ 2 * 2 ^ (2 * n + 6) + 2 * k * 2 ^ (2 * n + 5)) % 2 ^ (n + 4) = 0 := by
//   lean  |               exact Nat.mod_eq_zero_of_dvd h₁₁
//   lean  |             exact h₁₂
//   lean  |           exact h₁₀

// 4 path(s) merged (paths); 35 shared facts; 4 distinct path conditions
// ABLATION VARIANT K3: Lean `exact h₁₀` uses only h₁₀; other requires dropped
lemma {:induction false} vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L243(k_1_0_0: int, k_1_0_2: int, k_1_0_2_0: int, k_1_0_3: int, n: nat)
  requires 0 <= k_1_0_2_0
  requires 0 <= Int.pow(2, n + 4)
  requires 0 <= Int.pow(2, 2 * n + 4)
  requires 0 <= Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5)
  requires NatMod(Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5), Int.pow(2, n + 4)) == 0
  ensures  NatMod(Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5), Int.pow(2, n + 4)) == 0
{ }
