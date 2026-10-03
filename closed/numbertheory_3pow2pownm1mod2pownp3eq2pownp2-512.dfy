// NOT CLOSED — failing line numbertheory_3pow2pownm1mod2pownp3eq2pownp2-512: theorem numbertheory_3pow2pownm1mod2pownp3eq2pownp2, Dafny line 512 (OOR: Verification out of resource (numbertheory_3pow2pownm1mod2pownp3eq2pownp2))
// failing Dafny line: assert (NatMod((Int.pow(2, (n + 2)) + (k * Int.pow(2, (n + 3)))), Int.pow(2, (n + 3))) == NatMod(Int.pow(2, (n + 2)), Int.pow(2, (n + 3)))) by {
// Lean step: have h₄ : k * 2 ^ (n + 3) % 2 ^ (n + 3) = 0 := by
// hypotheses: 23 facts Z3 had at the line; nothing assumed beyond the facts in scope
// not closed: tried H0=oor; this file is the honest base attempt
// Dafny: finished with 183 verified, 0 errors, 4 out of resource  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/numbertheory_3pow2pownm1mod2pownp3eq2pownp2.dfy"
lemma {:induction false} vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L512(k_1_0: int, k_1_2: int, k_1_2_0: int, k_1_3: int, k_2: int, n: nat)
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
  requires NatMod(NatMod(Int.pow(2, n + 2), Int.pow(2, n + 3)) + NatMod(k_1_2_0 * Int.pow(2, n + 3), Int.pow(2, n + 3)), Int.pow(2, n + 3)) == NatMod(Int.pow(2, n + 2), Int.pow(2, n + 3))
  requires ((0 <= k_2) && (0 <= k_1_0) && (0 <= k_1_3)) || ((0 <= k_2) && (0 <= k_1_0) && (k_1_3 < 0)) || ((0 <= k_2) && (k_1_0 < 0) && (0 <= k_1_3)) || ((0 <= k_2) && (k_1_0 < 0) && (k_1_3 < 0)) || ((k_2 < 0) && (0 <= k_1_0) && (0 <= k_1_3)) || ((k_2 < 0) && (0 <= k_1_0) && (k_1_3 < 0)) || ((k_2 < 0) && (k_1_0 < 0) && (0 <= k_1_3)) || ((k_2 < 0) && (k_1_0 < 0) && (k_1_3 < 0))
  ensures   NatMod(Int.pow(2, n + 2) + k_1_2_0 * Int.pow(2, n + 3), Int.pow(2, n + 3)) == NatMod(Int.pow(2, n + 2), Int.pow(2, n + 3))
{
          // have h₄ : k * 2 ^ ( n + 3 ) % 2 ^ ( n + 3 ) == 0  [type from Lean state]
          assert (NatMod((k_1_0 * Int.pow(2, (n + 3))), Int.pow(2, (n + 3))) == 0) by { // @tac 8299-8387 // @tac 8398-8431
            // have h₅ : 2 ^ ( n + 3 ) ∣ k * 2 ^ ( n + 3 )  [type from Lean state]
            assert NatDvd(Int.pow(2, (n + 3)), (k_1_0 * Int.pow(2, (n + 3)))) by { // @tac 8361-8387 // @tac 8361-8366
              // [TACTIC: «_<;>_» k <;> ring]
              // [TACTIC: Use k]
              assert ((k_1_0 * Int.pow(2, (n + 3))) == (Int.pow(2, (n + 3)) * k_1_0));  // sub-goal of `ring` (Lean state) // @tac 8383-8387
              // UNCITED-APPLIED internal ×53 [exec 1322 8383-8387]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_zero ×4, Mathlib.Tactic.Ring.add_mul ×4, Mathlib.Tactic.Ring.mul_add ×4, Mathlib.Tactic.Ring.mul_zero ×4 (+22 more heads, ×37)
            }
            // [TACTIC: exact Nat.mod_eq_zero_of_dvd h₅]
            assert NatDvd(Int.pow(2, (n + 3)), (k_1_0 * Int.pow(2, (n + 3))));
            assert (NatDvd((Int.pow(2, (n + 3))), ((k_1_0 * Int.pow(2, (n + 3))))));  // precondition of NatModEqZeroOfDvd (Lean: Nat.mod_eq_zero_of_dvd)
            NatModEqZeroOfDvd(Int.pow(2, (n + 3)), (k_1_0 * Int.pow(2, (n + 3))));  // cite: Nat.mod_eq_zero_of_dvd
          }
          // have h₅ : ( 2 ^ ( n + 2 ) + k * 2 ^ ( n + 3 ) ) % 2 ^ ( n + 3 ) == ( 2 ^ ( n + 2  [type from Lean state]
          assert (NatMod((Int.pow(2, (n + 2)) + (k_1_0 * Int.pow(2, (n + 3)))), Int.pow(2, (n + 3))) == NatMod((NatMod(Int.pow(2, (n + 2)), Int.pow(2, (n + 3))) + NatMod((k_1_0 * Int.pow(2, (n + 3))), Int.pow(2, (n + 3)))), Int.pow(2, (n + 3)))) by { // @tac 8590-8608
            // [TACTIC: simp [ Nat.add_mod ]]
            NatAddMod(Int.pow(2, (n + 2)), (k_1_0 * Int.pow(2, (n + 3))), Int.pow(2, (n + 3)));  // cite: Nat.add_mod
            // UNCITED-APPLIED internal ×13 [exec 1340 8590-8608]: applications made inside the tactic's own automation, not stated — Nat.mul_mod_left ×1, add_zero ×1, Nat.mod_mod_of_dvd ×1; machinery/glue: Eq.trans ×4, congrArg ×3, of_eq_true ×1, congr ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.add_mod [Lean recorded ×1])
          }
          // [TACTIC: rwSeq [ h₅ ]]
          // UNCITED-APPLIED congrArg(((2 : ℕ) ^ (n + (2 : ℕ)) + k * (2 : ℕ) ^ (n + (3 : ℕ))) % (2 : ℕ) ^ (…, ((2 : ℕ) ^ (n + (2 : ℕ)) % (2 : ℕ) ^ (n + (3 : ℕ)) + k * (2 : ℕ) ^ (n…, fun (_a : ℕ) => _a = (2 : ℕ) ^ (n + (2 : ℕ)) % (2 : ℕ) ^ (n + (3 : ℕ))): no library counterpart (not stated) [exec 1345 8617-8626]
          assert (NatMod((NatMod(Int.pow(2, (n + 2)), Int.pow(2, (n + 3))) + NatMod((k_1_0 * Int.pow(2, (n + 3))), Int.pow(2, (n + 3)))), Int.pow(2, (n + 3))) == NatMod(Int.pow(2, (n + 2)), Int.pow(2, (n + 3)))) by {  // sub-goal before `have` (Lean state) // @tac 8635-8688 // @tac 8697-8706
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
}

