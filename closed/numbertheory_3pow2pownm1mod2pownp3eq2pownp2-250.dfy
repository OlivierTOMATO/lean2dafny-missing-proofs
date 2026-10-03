// CLOSED LEMMA for failing line numbertheory_3pow2pownm1mod2pownp3eq2pownp2-250 (theorem numbertheory_3pow2pownm1mod2pownp3eq2pownp2, Dafny line 250, OOR)
// closes with: K3 (locality) — variant
// added: requires: 0<=k, n+4<=2n+4 (omega subgoal); body: NatPowDvdPow(2,n+4,2n+4) (translation's own cite)
// Dafny: finished with 20 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_047/numbertheory_3pow2pownm1mod2pownp3eq2pownp2-250/L250_K3.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 250 of numbertheory_3pow2pownm1mod2pownp3eq2pownp2 (OOR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "/home/changjie/lean2dafny_research/agents_tac/wt_integ5/out/numbertheory_3pow2pownm1mod2pownp3eq2pownp2.dfy"

// ========================================================================================
// FAILING LINE 250 (OOR) in induction_helper_1: Verification out of resource (induction_helper_1)
//   dafny |                 assert NatDvd(Int.pow(2, (n + 4)), Int.pow(2, ((2 * n) + 4))) by { // @tac 4862-4881
//   statement kind: have / step assertion
//   @tac 4862-4881 | Lean: apply pow_dvd_pow 2
//        before-goal ⊢ (2 : ℕ) ^ (n + (4 : ℕ)) ∣ (2 : ℕ) ^ ((2 : ℕ) * n + (4 : ℕ))
// Lean have h₇, Lean lines 88-90:
//   lean  |             have h₇ : 2 ^ (n + 4) ∣ 2 ^ (2 * n + 4) := by
//   lean  |               apply pow_dvd_pow 2
//   lean  |               omega

// 8 path(s) merged (paths); 31 shared facts; 2 distinct path conditions; 2 claims conjoined
// ABLATION VARIANT K3: Lean h₇: apply pow_dvd_pow 2; omega — uses only the omega sub-goal n+4 ≤ 2n+4; other requires dropped
lemma {:induction false} vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L250(k_1_0_0: int, k_1_0_2: int, k_1_0_2_0: int, k_1_0_3: int, n: nat)
  requires 0 <= k_1_0_2_0
  requires n + 4 <= 2 * n + 4
  ensures  ((((0 <= k_1_0_0) && (0 <= k_1_0_3)) || ((0 <= k_1_0_0) && (k_1_0_3 < 0)) || ((k_1_0_0 < 0) && (0 <= k_1_0_3)) || ((k_1_0_0 < 0) && (k_1_0_3 < 0))) ==> (NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4)) || (Int.pow(2, n + 4) == 0 ==> Int.pow(2, 2 * n + 4) == 0)))
        && ((((0 <= k_1_0_0) && (0 <= k_1_0_3)) || ((0 <= k_1_0_0) && (k_1_0_3 < 0)) || ((k_1_0_0 < 0) && (0 <= k_1_0_3)) || ((k_1_0_0 < 0) && (k_1_0_3 < 0))) ==> (NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4)) || (Int.pow(2, n + 4) != 0 ==> Int.pow(2, 2 * n + 4) % Int.pow(2, n + 4) == 0)))
{
  NatPowDvdPow(2, n + 4, 2 * n + 4);  // translation's own cite (apply pow_dvd_pow 2), already in the file
}
