// NOT CLOSED — failing line numbertheory_3pow2pownm1mod2pownp3eq2pownp2-246: theorem numbertheory_3pow2pownm1mod2pownp3eq2pownp2, Dafny line 246 (OOR: Verification out of resource (induction_helper_1))
// failing Dafny line: assert ((NatDiv((((Int.pow(2, ((2 * n) + 4)) + (k * Int.pow(2, (n + 4)))) + ((k * k) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k) * Int.pow(2, ((2 * n) + 5)))), Int.pow(2, (n + 4))) * Int.pow(2, (n + 4)))
// Lean step: have h₆ : 2 ^ (n + 4) ∣ 2 ^ (2 * n + 4) + k * 2 ^ (n + 4) + k ^ 2 * 2 ^ (2 * n + 6) + 2 * k * 2 ^ (2 * n + 5) := by
// hypotheses: 28 facts Z3 had at the line (goal itself removed: 1; the block's own asserts removed: 0); nothing assumed beyond the facts in scope
// not closed: tried H0=oor, L246_K3=oor, L246_K3K2pow=oor; this file is the honest base attempt
// Dafny: finished with 375 verified, 0 errors, 21 out of resource  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/numbertheory_3pow2pownm1mod2pownp3eq2pownp2.dfy"
lemma {:induction false} vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L246(k_1_0_0: int, k_1_0_2: int, k_1_0_2_0: int, k_1_0_3: int, n: nat)
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
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5))
  requires ((0 <= k_1_0_0) && (0 <= k_1_0_3)) || ((0 <= k_1_0_0) && (k_1_0_3 < 0)) || ((k_1_0_0 < 0) && (0 <= k_1_0_3)) || ((k_1_0_0 < 0) && (k_1_0_3 < 0))
  ensures   NatDiv(Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5), Int.pow(2, n + 4)) * Int.pow(2, n + 4) == Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5)
{
              // have h₆ : 2 ^ ( n + 4 ) ∣ 2 ^ ( 2 * n + 4 ) + k * 2 ^ ( n + 4 ) + k ^ 2 * 2 ^ (   [type from Lean state]
              assert NatDvd(Int.pow(2, (n + 4)), (((Int.pow(2, ((2 * n) + 4)) + (k_1_0_0 * Int.pow(2, (n + 4)))) + ((k_1_0_0 * k_1_0_0) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k_1_0_0) * Int.pow(2, ((2 * n) + 5))))) by { // @tac 4798-4901 // @tac 4914-5000 // @tac 5013-5351 // @tac 5364-6024 // @tac 6083-6151
                // have h₇ : 2 ^ ( n + 4 ) ∣ 2 ^ ( 2 * n + 4 )  [type from Lean state]
                assert NatDvd(Int.pow(2, (n + 4)), Int.pow(2, ((2 * n) + 4))) by { // @tac 4862-4881
                  // [TACTIC: apply pow_dvd_pow 2]
                  assert ((n + 4) <= ((2 * n) + 4)) by {  // sub-goal before `omega` (Lean state) // @tac 4896-4901
                    // [TACTIC: omega]
                    // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                    // UNCITED-APPLIED internal ×11 [exec 701 4896-4901]: applications made inside the tactic's own automation, not stated — Int.ofNat_add ×2, Int.ofNat_nonneg ×1, Int.sub_nonneg_of_le ×1, Int.add_one_le_of_lt ×1, Nat.lt_of_not_le ×1, Int.ofNat_mul ×1; machinery/glue: Decidable.byContradiction ×1, of_decide_eq_true ×1, Eq.symm ×1, Lean.Omega.Int.ofNat_lt_of_lt ×1
                  }
                  assert (((n + 4)) <= (((2 * n) + 4)));  // precondition of NatPowDvdPow (Lean: pow_dvd_pow; `apply`: proved by the steps above)
                  NatPowDvdPow(2, (n + 4), ((2 * n) + 4));  // cite: pow_dvd_pow
                }
                // have h₈ : 2 ^ ( n + 4 ) ∣ k * 2 ^ ( n + 4 )  [type from Lean state]
                assert NatDvd(Int.pow(2, (n + 4)), (k_1_0_0 * Int.pow(2, (n + 4)))) by { // @tac 4978-5000
                  assert ((k_1_0_0 * Int.pow(2, (n + 4))) == (Int.pow(2, (n + 4)) * k_1_0_0)) by {  // sub-goal of `by` (Lean state) // @tac 4993-4997
                    // [TACTIC: Ring]
                  }
                  // [TACTIC: exact ⟨ k , by ring ⟩ ⟨ k , by ring ⟩]
                  assert (if ((Int.pow(2, (n + 4)) as int)) == 0 then (((k_1_0_0 * Int.pow(2, (n + 4))) as int)) == 0 else (((k_1_0_0 * Int.pow(2, (n + 4))) as int)) % ((Int.pow(2, (n + 4)) as int)) == 0);  // goal closed by `exact ⟨…⟩` (Lean state)
                  // UNCITED-APPLIED internal ×55 [exec 718 4978-5000]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_zero ×4, Mathlib.Tactic.Ring.add_mul ×4, Mathlib.Tactic.Ring.mul_add ×4, Mathlib.Tactic.Ring.mul_zero ×4 (+23 more heads, ×39)
                }
                // have h₉ : 2 ^ ( n + 4 ) ∣ k ^ 2 * 2 ^ ( 2 * n + 6 )  [type from Lean state]
                assert NatDvd(Int.pow(2, (n + 4)), ((k_1_0_0 * k_1_0_0) * Int.pow(2, ((2 * n) + 6)))) by { // @tac 5085-5195 // @tac 5210-5323 // @tac 5338-5351
                  // have h₁₀ : 2 ^ ( n + 4 ) ∣ 2 ^ ( 2 * n + 6 )  [type from Lean state]
                  assert NatDvd(Int.pow(2, (n + 4)), Int.pow(2, ((2 * n) + 6))) by { // @tac 5154-5173
                    // [TACTIC: apply pow_dvd_pow 2]
                    assert ((n + 4) <= ((2 * n) + 6)) by {  // sub-goal before `omega` (Lean state) // @tac 5190-5195
                      // [TACTIC: omega]
                      // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                      // UNCITED-APPLIED internal ×11 [exec 761 5190-5195]: applications made inside the tactic's own automation, not stated — Int.ofNat_add ×2, Int.ofNat_nonneg ×1, Int.sub_nonneg_of_le ×1, Int.add_one_le_of_lt ×1, Nat.lt_of_not_le ×1, Int.ofNat_mul ×1; machinery/glue: Decidable.byContradiction ×1, of_decide_eq_true ×1, Eq.symm ×1, Lean.Omega.Int.ofNat_lt_of_lt ×1
                    }
                    assert (((n + 4)) <= (((2 * n) + 6)));  // precondition of NatPowDvdPow (Lean: pow_dvd_pow; `apply`: proved by the steps above)
                    NatPowDvdPow(2, (n + 4), ((2 * n) + 6));  // cite: pow_dvd_pow
                  }
                  // have h₁₁ : 2 ^ ( n + 4 ) ∣ k ^ 2 * 2 ^ ( 2 * n + 6 )  [type from Lean state]
                  assert NatDvd(Int.pow(2, (n + 4)), ((k_1_0_0 * k_1_0_0) * Int.pow(2, ((2 * n) + 6)))) by { // @tac 5287-5323
                    // [TACTIC: exact dvd_mul_of_dvd_right h₁₀ _]
                    assert NatDvd(Int.pow(2, (n + 4)), Int.pow(2, ((2 * n) + 6)));
                    assert (NatDvd((Int.pow(2, (n + 4))), (Int.pow(2, ((2 * n) + 6)))));  // precondition of NatDvdMulOfDvdRight (Lean: dvd_mul_of_dvd_right)
                    NatDvdMulOfDvdRight(Int.pow(2, (n + 4)), Int.pow(2, ((2 * n) + 6)), (k_1_0_0 * k_1_0_0));  // cite: dvd_mul_of_dvd_right
                  }
                  // [TACTIC: exact h₁₁]
                  assert NatDvd(Int.pow(2, (n + 4)), ((k_1_0_0 * k_1_0_0) * Int.pow(2, ((2 * n) + 6))));
                }
                // have h₁₀ : 2 ^ ( n + 4 ) ∣ 2 * k * 2 ^ ( 2 * n + 5 )  [type from Lean state]
                assert NatDvd(Int.pow(2, (n + 4)), ((2 * k_1_0_0) * Int.pow(2, ((2 * n) + 5)))) by { // @tac 5439-5549 // @tac 5564-5996 // @tac 6011-6024
                  // have h₁₁ : 2 ^ ( n + 4 ) ∣ 2 ^ ( 2 * n + 5 )  [type from Lean state]
                  assert NatDvd(Int.pow(2, (n + 4)), Int.pow(2, ((2 * n) + 5))) by { // @tac 5508-5527
                    // [TACTIC: apply pow_dvd_pow 2]
                    assert ((n + 4) <= ((2 * n) + 5)) by {  // sub-goal before `omega` (Lean state) // @tac 5544-5549
                      // [TACTIC: omega]
                      // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                      // UNCITED-APPLIED internal ×11 [exec 813 5544-5549]: applications made inside the tactic's own automation, not stated — Int.ofNat_add ×2, Int.ofNat_nonneg ×1, Int.sub_nonneg_of_le ×1, Int.add_one_le_of_lt ×1, Nat.lt_of_not_le ×1, Int.ofNat_mul ×1; machinery/glue: Decidable.byContradiction ×1, of_decide_eq_true ×1, Eq.symm ×1, Lean.Omega.Int.ofNat_lt_of_lt ×1
                    }
                    assert (((n + 4)) <= (((2 * n) + 5)));  // precondition of NatPowDvdPow (Lean: pow_dvd_pow; `apply`: proved by the steps above)
                    NatPowDvdPow(2, (n + 4), ((2 * n) + 5));  // cite: pow_dvd_pow
                  }
                  // have h₁₂ : 2 ^ ( n + 4 ) ∣ 2 * k * 2 ^ ( 2 * n + 5 )  [type from Lean state]
                  assert NatDvd(Int.pow(2, (n + 4)), ((2 * k_1_0_0) * Int.pow(2, ((2 * n) + 5)))) by { // @tac 5641-5698 // @tac 5715-5966 // @tac 5983-5996
                    // have h₁₃ : 2 ^ ( n + 4 ) ∣ 2 ^ ( 2 * n + 5 )  [type from Lean state]
                    assert NatDvd(Int.pow(2, (n + 4)), Int.pow(2, ((2 * n) + 5))) by {
                      // [TACTIC: exact h₁₁]
                      assert NatDvd(Int.pow(2, (n + 4)), Int.pow(2, ((2 * n) + 5)));
                    }
                    // have h₁₄ : 2 ^ ( n + 4 ) ∣ 2 * k * 2 ^ ( 2 * n + 5 )  [type from Lean state]
                    assert NatDvd(Int.pow(2, (n + 4)), ((2 * k_1_0_0) * Int.pow(2, ((2 * n) + 5)))) by { // @tac 5794-5966
                      assert NatDvd(Int.pow(2, ((2 * n) + 5)), ((2 * k_1_0_0) * Int.pow(2, ((2 * n) + 5)))) by {  // sub-goal of `by` (Lean state) // @tac 5940-5966
                        assert (((2 * k_1_0_0) * Int.pow(2, ((2 * n) + 5))) == (Int.pow(2, ((2 * n) + 5)) * (2 * k_1_0_0))) by {  // sub-goal of `by` (Lean state) // @tac 5959-5963
                          // [TACTIC: Ring]
                        }
                        // [TACTIC: exact ⟨ 2 * k , by ring ⟩ ⟨ 2 * k , by ring ⟩]
                        assert (if ((Int.pow(2, ((2 * n) + 5)) as int)) == 0 then ((((2 * k_1_0_0) * Int.pow(2, ((2 * n) + 5))) as int)) == 0 else ((((2 * k_1_0_0) * Int.pow(2, ((2 * n) + 5))) as int)) % ((Int.pow(2, ((2 * n) + 5)) as int)) == 0);  // goal closed by `exact ⟨…⟩` (Lean state)
                        // UNCITED-APPLIED internal ×72 [exec 863 5940-5966]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_mul ×6, Mathlib.Tactic.Ring.mul_add ×6, Mathlib.Tactic.Ring.zero_mul ×6, Mathlib.Tactic.Ring.mul_pf_right ×5 (+25 more heads, ×49)
                      }
                      // [TACTIC: calc_unparsed 2 ^ ( n + 4 ) ∣ 2 ^ ( 2 * n + 5 ) 2 ^ ( n + 4 ) ∣ 2 ^ ( 2 * n + 5 ) := h₁₃ _ ∣ 2 * k * 2 ^ ( 2 * n + 5 ) _ ∣ 2 * k * 2 ^ ( 2 * n + 5 ) := by exact ⟨ 2 * k , by ring ⟩ ⟨ 2 * k , by ring ⟩ exact ⟨ 2 * k , by ring ⟩ ⟨ 2 * k , by ring ⟩]
                      // GAP: calc chain not lowered (relation outside Dafny calc, e.g. ∣); its step proofs follow, each with its recorded goal; the chain itself is not composed
                    }
                    // [TACTIC: exact h₁₄]
                    assert NatDvd(Int.pow(2, (n + 4)), ((2 * k_1_0_0) * Int.pow(2, ((2 * n) + 5))));
                  }
                  // [TACTIC: exact h₁₂]
                  assert NatDvd(Int.pow(2, (n + 4)), ((2 * k_1_0_0) * Int.pow(2, ((2 * n) + 5))));
                }
                // [TACTIC: exact Nat.dvd_add ( Nat.dvd_add ( Nat.dvd_add h₇ h₈ ) h₉ ) h₁₀]
                assert NatDvd(Int.pow(2, (n + 4)), Int.pow(2, ((2 * n) + 4)));
                assert (NatDvd((Int.pow(2, (n + 4))), (Int.pow(2, ((2 * n) + 4))))) && (NatDvd((Int.pow(2, (n + 4))), ((k_1_0_0 * Int.pow(2, (n + 4))))));  // precondition of NatDvdAdd (Lean: Nat.dvd_add)
                NatDvdAdd(Int.pow(2, (n + 4)), Int.pow(2, ((2 * n) + 4)), (k_1_0_0 * Int.pow(2, (n + 4))));  // cite: Nat.dvd_add
                assert (NatDvd((Int.pow(2, (n + 4))), ((Int.pow(2, ((2 * n) + 4)) + (k_1_0_0 * Int.pow(2, (n + 4))))))) && (NatDvd((Int.pow(2, (n + 4))), (((k_1_0_0 * k_1_0_0) * Int.pow(2, ((2 * n) + 6))))));  // precondition of NatDvdAdd (Lean: Nat.dvd_add)
                NatDvdAdd(Int.pow(2, (n + 4)), (Int.pow(2, ((2 * n) + 4)) + (k_1_0_0 * Int.pow(2, (n + 4)))), ((k_1_0_0 * k_1_0_0) * Int.pow(2, ((2 * n) + 6))));  // cite: Nat.dvd_add
                assert (NatDvd((Int.pow(2, (n + 4))), (((Int.pow(2, ((2 * n) + 4)) + (k_1_0_0 * Int.pow(2, (n + 4)))) + ((k_1_0_0 * k_1_0_0) * Int.pow(2, ((2 * n) + 6))))))) && (NatDvd((Int.pow(2, (n + 4))), (((2 * k_1_0_0) * Int.pow(2, ((2 * n) + 5))))));  // precondition of NatDvdAdd (Lean: Nat.dvd_add)
                NatDvdAdd(Int.pow(2, (n + 4)), ((Int.pow(2, ((2 * n) + 4)) + (k_1_0_0 * Int.pow(2, (n + 4)))) + ((k_1_0_0 * k_1_0_0) * Int.pow(2, ((2 * n) + 6)))), ((2 * k_1_0_0) * Int.pow(2, ((2 * n) + 5))));  // cite: Nat.dvd_add
              }
              // have h₁₁ : ( 2 ^ ( 2 * n + 4 ) + k * 2 ^ ( n + 4 ) + k ^ 2 * 2 ^ ( 2 * n + 6 ) +   [type from Lean state]
              assert ((NatDiv((((Int.pow(2, ((2 * n) + 4)) + (k_1_0_0 * Int.pow(2, (n + 4)))) + ((k_1_0_0 * k_1_0_0) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k_1_0_0) * Int.pow(2, ((2 * n) + 5)))), Int.pow(2, (n + 4))) * Int.pow(2, (n + 4))) == (((Int.pow(2, ((2 * n) + 4)) + (k_1_0_0 * Int.pow(2, (n + 4)))) + ((k_1_0_0 * k_1_0_0) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k_1_0_0) * Int.pow(2, ((2 * n) + 5))))) by { // @tac 6401-6525 // @tac 6538-6811 // @tac 6824-6837
                // have h₁₂ : 2 ^ ( n + 4 ) ∣ 2 ^ ( 2 * n + 4 ) + k * 2 ^ ( n + 4 ) + k ^ 2 * 2 ^ (   [type from Lean state]
                assert NatDvd(Int.pow(2, (n + 4)), (((Int.pow(2, ((2 * n) + 4)) + (k_1_0_0 * Int.pow(2, (n + 4)))) + ((k_1_0_0 * k_1_0_0) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k_1_0_0) * Int.pow(2, ((2 * n) + 5))))) by {
                  // [TACTIC: exact h₆]
                  assert NatDvd(Int.pow(2, (n + 4)), (((Int.pow(2, ((2 * n) + 4)) + (k_1_0_0 * Int.pow(2, (n + 4)))) + ((k_1_0_0 * k_1_0_0) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k_1_0_0) * Int.pow(2, ((2 * n) + 5)))));
                }
                // have h₁₃ : ( 2 ^ ( 2 * n + 4 ) + k * 2 ^ ( n + 4 ) + k ^ 2 * 2 ^ ( 2 * n + 6 ) +   [type from Lean state]
                assert ((NatDiv((((Int.pow(2, ((2 * n) + 4)) + (k_1_0_0 * Int.pow(2, (n + 4)))) + ((k_1_0_0 * k_1_0_0) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k_1_0_0) * Int.pow(2, ((2 * n) + 5)))), Int.pow(2, (n + 4))) * Int.pow(2, (n + 4))) == (((Int.pow(2, ((2 * n) + 4)) + (k_1_0_0 * Int.pow(2, (n + 4)))) + ((k_1_0_0 * k_1_0_0) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k_1_0_0) * Int.pow(2, ((2 * n) + 5))))) by { // @tac 6779-6811
                  // [TACTIC: exact Nat.div_mul_cancel h₁₂]
                  assert NatDvd(Int.pow(2, (n + 4)), (((Int.pow(2, ((2 * n) + 4)) + (k_1_0_0 * Int.pow(2, (n + 4)))) + ((k_1_0_0 * k_1_0_0) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k_1_0_0) * Int.pow(2, ((2 * n) + 5)))));
                  assert (NatDvd((Int.pow(2, (n + 4))), ((((Int.pow(2, ((2 * n) + 4)) + (k_1_0_0 * Int.pow(2, (n + 4)))) + ((k_1_0_0 * k_1_0_0) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k_1_0_0) * Int.pow(2, ((2 * n) + 5)))))));  // precondition of NatDivMulCancel (Lean: Nat.div_mul_cancel)
                  NatDivMulCancel((((Int.pow(2, ((2 * n) + 4)) + (k_1_0_0 * Int.pow(2, (n + 4)))) + ((k_1_0_0 * k_1_0_0) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k_1_0_0) * Int.pow(2, ((2 * n) + 5)))), Int.pow(2, (n + 4)));  // cite: Nat.div_mul_cancel
                }
                // [TACTIC: exact h₁₃]
                assert ((NatDiv((((Int.pow(2, ((2 * n) + 4)) + (k_1_0_0 * Int.pow(2, (n + 4)))) + ((k_1_0_0 * k_1_0_0) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k_1_0_0) * Int.pow(2, ((2 * n) + 5)))), Int.pow(2, (n + 4))) * Int.pow(2, (n + 4))) == (((Int.pow(2, ((2 * n) + 4)) + (k_1_0_0 * Int.pow(2, (n + 4)))) + ((k_1_0_0 * k_1_0_0) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k_1_0_0) * Int.pow(2, ((2 * n) + 5)))));
              }
              // [TACTIC: exact h₁₁]
              assert ((NatDiv((((Int.pow(2, ((2 * n) + 4)) + (k_1_0_0 * Int.pow(2, (n + 4)))) + ((k_1_0_0 * k_1_0_0) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k_1_0_0) * Int.pow(2, ((2 * n) + 5)))), Int.pow(2, (n + 4))) * Int.pow(2, (n + 4))) == (((Int.pow(2, ((2 * n) + 4)) + (k_1_0_0 * Int.pow(2, (n + 4)))) + ((k_1_0_0 * k_1_0_0) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k_1_0_0) * Int.pow(2, ((2 * n) + 5)))));
}

