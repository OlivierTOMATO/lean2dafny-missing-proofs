// NOT CLOSED — failing line numbertheory_3pow2pownm1mod2pownp3eq2pownp2-528: theorem numbertheory_3pow2pownm1mod2pownp3eq2pownp2, Dafny line 528 (OOR: Verification out of resource (numbertheory_3pow2pownm1mod2pownp3eq2pownp2))
// failing Dafny line: assert (NatMod((Int.pow(2, (n + 2)) + (k * Int.pow(2, (n + 3)))), Int.pow(2, (n + 3))) == NatMod((NatMod(Int.pow(2, (n + 2)), Int.pow(2, (n + 3))) + NatMod((k * Int.pow(2, (n + 3))), Int.pow(2, (n + 3
// Lean step: simp [Nat.add_mod]
// hypotheses: 21 facts Z3 had at the line (goal itself removed: 1; the block's own asserts removed: 0); nothing assumed beyond the facts in scope
// not closed: tried H0=oor; this file is the honest base attempt
// Dafny: finished with 62 verified, 0 errors, 2 out of resource  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/numbertheory_3pow2pownm1mod2pownp3eq2pownp2.dfy"
lemma {:induction false} vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L528(k_1_0: int, k_1_2: int, k_1_2_0: int, k_1_3: int, k_2: int, n: nat)
  requires 0 <= n
  requires 0 <= k_1_2
  requires 0 < n
  requires 0 <= Int.pow(2, n)
  requires 0 <= n + 2
  requires 0 <= n + 3
  requires exists k_1: nat :: Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + k_1 * Int.pow(2, n + 3)
  requires exists k_1_1: nat :: Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + k_1_1 * Int.pow(2, n + 3)
  requires (0 <= 0 && Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + 0 * Int.pow(2, n + 3)) || (0 <= 0 && Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + 0 * Int.pow(2, n + 3)) || (exists as_k1_0_1_0: nat :: Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + as_k1_0_1_0 * Int.pow(2, n + 3))
  requires 0 <= k_1_2_0
  requires Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + k_1_2_0 * Int.pow(2, n + 3)
  requires 0 <= Int.pow(3, Int.pow(2, n))
  requires 0 <= 1
  requires tsub(Int.pow(3, Int.pow(2, n)), 1) == Int.pow(2, n + 2) + k_1_2_0 * Int.pow(2, n + 3)
  requires 0 <= k_1_2_0 * Int.pow(2, n + 3)
  requires 0 <= Int.pow(2, n + 3)
  requires NatMod(k_1_2_0 * Int.pow(2, n + 3), Int.pow(2, n + 3)) == 0
  requires 0 <= Int.pow(2, n + 2)
  requires 0 <= Int.pow(2, n + 2) + k_1_2_0 * Int.pow(2, n + 3)
  requires 0 <= NatMod(Int.pow(2, n + 2), Int.pow(2, n + 3)) + NatMod(k_1_2_0 * Int.pow(2, n + 3), Int.pow(2, n + 3))
  requires ((0 <= k_2) && (0 <= k_1_0) && (0 <= k_1_3)) || ((0 <= k_2) && (0 <= k_1_0) && (k_1_3 < 0)) || ((0 <= k_2) && (k_1_0 < 0) && (0 <= k_1_3)) || ((0 <= k_2) && (k_1_0 < 0) && (k_1_3 < 0)) || ((k_2 < 0) && (0 <= k_1_0) && (0 <= k_1_3)) || ((k_2 < 0) && (0 <= k_1_0) && (k_1_3 < 0)) || ((k_2 < 0) && (k_1_0 < 0) && (0 <= k_1_3)) || ((k_2 < 0) && (k_1_0 < 0) && (k_1_3 < 0))
  ensures   NatMod(Int.pow(2, n + 2) + k_1_2_0 * Int.pow(2, n + 3), Int.pow(2, n + 3)) == NatMod(NatMod(Int.pow(2, n + 2), Int.pow(2, n + 3)) + NatMod(k_1_2_0 * Int.pow(2, n + 3), Int.pow(2, n + 3)), Int.pow(2, n + 3))
{
            // [TACTIC: simp [ Nat.add_mod ]]
            NatAddMod(Int.pow(2, (n + 2)), (k_1_0 * Int.pow(2, (n + 3))), Int.pow(2, (n + 3)));  // cite: Nat.add_mod
            // UNCITED-APPLIED internal ×13 [exec 1340 8590-8608]: applications made inside the tactic's own automation, not stated — Nat.mul_mod_left ×1, add_zero ×1, Nat.mod_mod_of_dvd ×1; machinery/glue: Eq.trans ×4, congrArg ×3, of_eq_true ×1, congr ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.add_mod [Lean recorded ×1])
}

