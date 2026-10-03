// CLOSED LEMMA for failing line numbertheory_3pow2pownm1mod2pownp3eq2pownp2-266 (theorem numbertheory_3pow2pownm1mod2pownp3eq2pownp2, Dafny line 266, OOR)
// closes with: K1+K4 (instance, types) — multi
// added: IntMulNonneg(k_1_0_2_0, Int.pow(2, n + 4)); NatDvdIffModEqZero(Int.pow(2, n + 4), k_1_0_2_0 * Int.pow(2, n + 4)); ghost var q: nat := k_1_0_2_0; assert k_1_0_2_0 * Int.pow(2, n + 4) == Int.pow(2, n + 4) * q;
// Dafny: finished with 69 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_047/numbertheory_3pow2pownm1mod2pownp3eq2pownp2-266/L266_K1K4.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 266 of numbertheory_3pow2pownm1mod2pownp3eq2pownp2 (OOR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "/home/changjie/lean2dafny_research/agents_tac/wt_integ5/out/numbertheory_3pow2pownm1mod2pownp3eq2pownp2.dfy"

// ========================================================================================
// FAILING LINE 266 (OOR) in induction_helper_1: Verification out of resource (induction_helper_1)
//   dafny |                   assert (if ((Int.pow(2, (n + 4)) as int)) == 0 then (((k * Int.pow(2, (n + 4))) as int)) == 0 else (((k * Int.pow(2, (n + 4))) as int)) % ((Int.pow(2, (n + 4)) as int)) == 0);  // goal closed by `exact ⟨…⟩` (Lean state)
//   statement kind: have / step assertion
// inside Lean have h₈, Lean lines 91-92:
//   lean  |             have h₈ : 2 ^ (n + 4) ∣ k * 2 ^ (n + 4) := by
//   lean  |               exact ⟨k, by ring⟩

// 4 path(s) merged (paths); 30 shared facts; 4 distinct path conditions
// ABLATION VARIANT K1K4: pair K1+K4
lemma {:induction false} vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L266(k_1_0_0: int, k_1_0_2: int, k_1_0_2_0: int, k_1_0_3: int, n: nat)
  requires 0 <= n
  requires 0 <= k_1_0_2
  requires n != 0
  requires 0 <= n - 1
  requires 0 <= n || n - 1 == n
  requires n - 1 < n
  requires exists k_1: nat :: Int.pow(3, Int.pow(2, n - 1 + 1)) == 1 + Int.pow(2, n - 1 + 1 + 2) + k_1 * Int.pow(2, n - 1 + 1 + 3)
  requires 0 + 1 <= n
  requires 0 <= Int.pow(2, n)
  requires 0 <= n + 2
  requires 0 <= n + 3
  requires exists k_1_0_1: nat :: Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + k_1_0_1 * Int.pow(2, n + 3)
  requires (0 <= 0 && Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + 0 * Int.pow(2, n + 3)) || (0 <= 0 && Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + 0 * Int.pow(2, n + 3)) || (exists as_k1_0_0_1_0_0: nat :: Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + as_k1_0_0_1_0_0 * Int.pow(2, n + 3))
  requires 0 <= k_1_0_2_0
  requires Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + k_1_0_2_0 * Int.pow(2, n + 3)
  requires 0 <= n + 1
  requires 0 <= Int.pow(2, n + 1)
  requires Int.pow(3, Int.pow(2, n + 1)) == Int.pow(3, Int.pow(2, n)) * Int.pow(3, Int.pow(2, n))
  requires 0 <= 2 * n + 4
  requires 0 <= n + 4
  requires 0 <= 2 * n + 6
  requires 0 <= 2 * n + 5
  requires (1 + Int.pow(2, n + 2) + k_1_0_2_0 * Int.pow(2, n + 3)) * (1 + Int.pow(2, n + 2) + k_1_0_2_0 * Int.pow(2, n + 3)) == 1 + Int.pow(2, n + 3) + (Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5))
  requires 0 <= Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5)
  requires 0 <= Int.pow(2, n + 4)
  requires NatMod(Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5), Int.pow(2, n + 4)) == 0
  requires 0 <= Int.pow(2, 2 * n + 4)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4))
  requires k_1_0_2_0 * Int.pow(2, n + 4) == Int.pow(2, n + 4) * k_1_0_2_0
  requires Int.pow(2, n + 4) != 0
  requires ((0 <= k_1_0_0) && (0 <= k_1_0_3)) || ((0 <= k_1_0_0) && (k_1_0_3 < 0)) || ((k_1_0_0 < 0) && (0 <= k_1_0_3)) || ((k_1_0_0 < 0) && (k_1_0_3 < 0))
  ensures  k_1_0_2_0 * Int.pow(2, n + 4) % Int.pow(2, n + 4) == 0
{
  IntMulNonneg(k_1_0_2_0, Int.pow(2, n + 4));
  NatDvdIffModEqZero(Int.pow(2, n + 4), k_1_0_2_0 * Int.pow(2, n + 4));  // Nat.dvd_iff_mod_eq_zero
  ghost var q: nat := k_1_0_2_0;  // Lean witness k
  assert k_1_0_2_0 * Int.pow(2, n + 4) == Int.pow(2, n + 4) * q;  // Lean `by ring` sub-goal (already in requires)
}
