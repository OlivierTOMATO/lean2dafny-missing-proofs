// CLOSED LEMMA for failing line numbertheory_3pow2pownm1mod2pownp3eq2pownp2-226 (theorem numbertheory_3pow2pownm1mod2pownp3eq2pownp2, Dafny line 226, OOR)
// closes with: K2+K3 (computation, locality) — multi
// added: state the step as its own lemma over the facts in scope (the extracted line lemma) — closes standalone
// Dafny: finished with 30 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_047/numbertheory_3pow2pownm1mod2pownp3eq2pownp2-226/L226_K3K2pow.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 226 of numbertheory_3pow2pownm1mod2pownp3eq2pownp2 (OOR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "/home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_047/_powlib/out/numbertheory_3pow2pownm1mod2pownp3eq2pownp2.dfy"

// ========================================================================================
// FAILING LINE 226 (OOR) in induction_helper_1: Verification out of resource (induction_helper_1)
//   dafny |               assert (NatMod((((Int.pow(2, ((2 * n) + 4)) + (k * Int.pow(2, (n + 4)))) + ((k * k) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k) * Int.pow(2, ((2 * n) + 5)))), Int.pow(2, (n + 4))) == 0) by { // @tac 4059-4183 // @tac 4196-4373 // @tac 4386-4399
//   statement kind: have / step assertion
//   @tac 4059-4183 | Lean: have h₁₁ : 2 ^ (n + 4) ∣ 2 ^ (2 * n + 4) + k * 2 ^ (n + 4) + k ^ 2 * 2 ^ (2 * n + 6) + 2 * k * 2 ^ (2 * n + 5) := h₉
//        before-goal ⊢ ((2 : ℕ) ^ ((2 : ℕ) * n + (4 : ℕ)) + k * (2 : ℕ) ^ (n + (4 : ℕ)) + k ^ (2 : ℕ) * (2 : ℕ) ^ ((2 : ℕ) * n + (6 : ℕ)) +
//         (2 : ℕ) * k * (2 : ℕ) ^ ((2 : ℕ) * n + (5 : ℕ))) %
//       (2 : ℕ) ^ (n + (4 : ℕ)) =
//     (0 : ℕ)
//   @tac 4196-4373 | Lean: have h₁₂ : (2 ^ (2 * n + 4) + k * 2 ^ (n + 4) + k ^ 2 * 2 ^ (2 * n + 6) + 2 * k * 2 ^ (2 * n + 5)) % 2 ^ (n + 4) = 0 := by
//        before-goal ⊢ ((2 : ℕ) ^ ((2 : ℕ) * n + (4 : ℕ)) + k * (2 : ℕ) ^ (n + (4 : ℕ)) + k ^ (2 : ℕ) * (2 : ℕ) ^ ((2 : ℕ) * n + (6 : ℕ)) +
//         (2 : ℕ) * k * (2 : ℕ) ^ ((2 : ℕ) * n + (5 : ℕ))) %
//       (2 : ℕ) ^ (n + (4 : ℕ)) =
//     (0 : ℕ)
//   @tac 4386-4399 | Lean: exact h₁₂
//        before-goal ⊢ ((2 : ℕ) ^ ((2 : ℕ) * n + (4 : ℕ)) + k * (2 : ℕ) ^ (n + (4 : ℕ)) + k ^ (2 : ℕ) * (2 : ℕ) ^ ((2 : ℕ) * n + (6 : ℕ)) +
//         (2 : ℕ) * k * (2 : ℕ) ^ ((2 : ℕ) * n + (5 : ℕ))) %
//       (2 : ℕ) ^ (n + (4 : ℕ)) =
//     (0 : ℕ)
// Lean have h₁₀, Lean lines 80-84:
//   lean  |           have h₁₀ : (2 ^ (2 * n + 4) + k * 2 ^ (n + 4) + k ^ 2 * 2 ^ (2 * n + 6) + 2 * k * 2 ^ (2 * n + 5)) % 2 ^ (n + 4) = 0 := by
//   lean  |             have h₁₁ : 2 ^ (n + 4) ∣ 2 ^ (2 * n + 4) + k * 2 ^ (n + 4) + k ^ 2 * 2 ^ (2 * n + 6) + 2 * k * 2 ^ (2 * n + 5) := h₉
//   lean  |             have h₁₂ : (2 ^ (2 * n + 4) + k * 2 ^ (n + 4) + k ^ 2 * 2 ^ (2 * n + 6) + 2 * k * 2 ^ (2 * n + 5)) % 2 ^ (n + 4) = 0 := by
//   lean  |               exact Nat.mod_eq_zero_of_dvd h₁₁
//   lean  |             exact h₁₂

// 4 path(s) merged (paths); 35 shared facts; 4 distinct path conditions
// ABLATION VARIANT K3+K2pow (pair; K3 file with the no-recursive-pow-ensures library): Lean h₁₀ uses only h₉ (via h₁₁ := h₉) + Nat.mod_eq_zero_of_dvd; all other requires dropped (sufficiency test)
lemma {:induction false} vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L226(k_1_0_0: int, k_1_0_2: int, k_1_0_2_0: int, k_1_0_3: int, n: nat)
  requires 0 <= k_1_0_2_0
  requires 0 <= Int.pow(2, n + 4)
  requires 0 <= Int.pow(2, 2 * n + 4)
  requires 0 <= Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5))
  ensures  NatMod(Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5), Int.pow(2, n + 4)) == 0
{
  NatModEqZeroOfDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5));  // translation's own cite (Nat.mod_eq_zero_of_dvd h₁₁), already in the file
}
