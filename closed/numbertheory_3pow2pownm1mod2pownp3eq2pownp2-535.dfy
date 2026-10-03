// NOT CLOSED — failing line numbertheory_3pow2pownm1mod2pownp3eq2pownp2-535: theorem numbertheory_3pow2pownm1mod2pownp3eq2pownp2, Dafny line 535 (OOR: Verification out of resource (numbertheory_3pow2pownm1mod2pownp3eq2pownp2))
// failing Dafny line: assert (NatMod((NatMod(Int.pow(2, (n + 2)), Int.pow(2, (n + 3))) + NatMod((k * Int.pow(2, (n + 3))), Int.pow(2, (n + 3)))), Int.pow(2, (n + 3))) == NatMod(Int.pow(2, (n + 2)), Int.pow(2, (n + 3)))) by
// Lean step: have h₆ : k * 2 ^ (n + 3) % 2 ^ (n + 3) = 0 := h₄
// hypotheses: 23 facts Z3 had at the line (goal itself removed: 0; the block's own asserts removed: 1); nothing assumed beyond the facts in scope
// not closed: tried H0=oor, K1=oor, K2pow=oor, K3=oor; this file is the honest base attempt
// Dafny: finished with 107 verified, 0 errors, 4 out of resource  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/numbertheory_3pow2pownm1mod2pownp3eq2pownp2.dfy"
lemma {:induction false} vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L535(k_1_0: int, k_1_2: int, k_1_2_0: int, k_1_3: int, k_2: int, n: nat)
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
  requires 0 <= Int.pow(2, n + 2) + k_1_2_0 * Int.pow(2, n + 3)
  requires 0 <= Int.pow(2, n + 2)
  requires 0 <= NatMod(Int.pow(2, n + 2), Int.pow(2, n + 3)) + NatMod(k_1_2_0 * Int.pow(2, n + 3), Int.pow(2, n + 3))
  requires NatMod(Int.pow(2, n + 2) + k_1_2_0 * Int.pow(2, n + 3), Int.pow(2, n + 3)) == NatMod(NatMod(Int.pow(2, n + 2), Int.pow(2, n + 3)) + NatMod(k_1_2_0 * Int.pow(2, n + 3), Int.pow(2, n + 3)), Int.pow(2, n + 3))
  requires 0 <= NatMod(Int.pow(2, n + 2), Int.pow(2, n + 3)) + 0
  requires ((0 <= k_2) && (0 <= k_1_0) && (0 <= k_1_3)) || ((0 <= k_2) && (0 <= k_1_0) && (k_1_3 < 0)) || ((0 <= k_2) && (k_1_0 < 0) && (0 <= k_1_3)) || ((0 <= k_2) && (k_1_0 < 0) && (k_1_3 < 0)) || ((k_2 < 0) && (0 <= k_1_0) && (0 <= k_1_3)) || ((k_2 < 0) && (0 <= k_1_0) && (k_1_3 < 0)) || ((k_2 < 0) && (k_1_0 < 0) && (0 <= k_1_3)) || ((k_2 < 0) && (k_1_0 < 0) && (k_1_3 < 0))
  ensures   NatMod(NatMod(Int.pow(2, n + 2), Int.pow(2, n + 3)) + NatMod(k_1_2_0 * Int.pow(2, n + 3), Int.pow(2, n + 3)), Int.pow(2, n + 3)) == NatMod(Int.pow(2, n + 2), Int.pow(2, n + 3))
{
            // have h₆ : k * 2 ^ ( n + 3 ) % 2 ^ ( n + 3 ) == 0  [type from Lean state]
            assert (NatMod((k_1_0 * Int.pow(2, (n + 3))), Int.pow(2, (n + 3))) == 0) by {
              // [TACTIC: exact h₄]
              assert (NatMod((k_1_0 * Int.pow(2, (n + 3))), Int.pow(2, (n + 3))) == 0);
            }
            // [TACTIC: rwSeq [ h₆ ]]
            // UNCITED-APPLIED congrArg(k * (2 : ℕ) ^ (n + (3 : ℕ)) % (2 : ℕ) ^ (n + (3 : ℕ)), (0 : ℕ), fun (_a : ℕ) => ((2 : ℕ) ^ (n + (2 : ℕ)) % (2 : ℕ) ^ (n + (3 : ℕ)) + …): no library counterpart (not stated) [exec 1388 8697-8706]
            assert (NatMod((NatMod(Int.pow(2, (n + 2)), Int.pow(2, (n + 3))) + 0), Int.pow(2, (n + 3))) == NatMod(Int.pow(2, (n + 2)), Int.pow(2, (n + 3)))) by {  // sub-goal before `have` (Lean state) // @tac 8715-8835 // @tac 8844-8853
              // have h₇ : ( 2 ^ ( n + 2 ) % 2 ^ ( n + 3 ) + 0 ) % 2 ^ ( n + 3 ) == 2 ^ ( n + 2 )  [type from Lean state]
              assert (NatMod((NatMod(Int.pow(2, (n + 2)), Int.pow(2, (n + 3))) + 0), Int.pow(2, (n + 3))) == NatMod(Int.pow(2, (n + 2)), Int.pow(2, (n + 3)))); // @tac 8817-8835
                // [TACTIC: simp [ Nat.add_mod ]]
                // UNCITED Nat.add_mod: named in this rewriting step; no record of Lean's proof attributes an application of it to this execution (its recorded applications are at other tactics of the proof; a rewrite at a hypothesis is filed under the tactic that later uses the hypothesis, and a conditional / under-binder simp rewrite may be unrecorded), so whether it was applied here is not known; not stated
                // UNCITED-APPLIED internal ×8 [exec 1431 8817-8835]: applications made inside the tactic's own automation, not stated — add_zero ×1, Nat.mod_mod_of_dvd ×1; machinery/glue: Eq.trans ×2, congrArg ×2, of_eq_true ×1, eq_self ×1
              // [TACTIC: rwSeq [ h₇ ]]
              // UNCITED-APPLIED congrArg(((2 : ℕ) ^ (n + (2 : ℕ)) % (2 : ℕ) ^ (n + (3 : ℕ)) + (0 : ℕ)) % (2 : …, (2 : ℕ) ^ (n + (2 : ℕ)) % (2 : ℕ) ^ (n + (3 : ℕ)), fun (_a : ℕ) => _a = (2 : ℕ) ^ (n + (2 : ℕ)) % (2 : ℕ) ^ (n + (3 : ℕ))): no library counterpart (not stated) [exec 1436 8844-8853]
            }
}

