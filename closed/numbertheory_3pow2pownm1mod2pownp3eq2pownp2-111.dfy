// NOT CLOSED — failing line numbertheory_3pow2pownm1mod2pownp3eq2pownp2-111: theorem numbertheory_3pow2pownm1mod2pownp3eq2pownp2, Dafny line 111 (OOR: Verification out of resource (induction_helper_1))
// failing Dafny line: assert (NatMod((((Int.pow(2, ((2 * n) + 4)) + (k * Int.pow(2, (n + 4)))) + ((k * k) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k) * Int.pow(2, ((2 * n) + 5)))), Int.pow(2, (n + 4))) == 0) by {
// Lean step: have h₅ : 2 ^ (n + 4) ∣ 2 ^ (2 * n + 4) := by
// hypotheses: 34 facts Z3 had at the line (goal itself removed: 1; the block's own asserts removed: 1); nothing assumed beyond the facts in scope
// not closed: tried H0=oor; this file is the honest base attempt
// Dafny: finished with 407 verified, 0 errors, 21 out of resource  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/numbertheory_3pow2pownm1mod2pownp3eq2pownp2.dfy"
lemma {:induction false} vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L111(k_1_0_0: int, k_1_0_2: int, k_1_0_2_0: int, k_1_0_3: int, n: nat)
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
  requires 0 <= Int.pow(2, n + 4)
  requires 0 <= Int.pow(2, 2 * n + 4)
  requires 0 <= k_1_0_2_0 * Int.pow(2, n + 4)
  requires NatDvd(Int.pow(2, n + 4), k_1_0_2_0 * Int.pow(2, n + 4))
  requires 0 <= k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)
  requires NatDvd(Int.pow(2, n + 4), k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6))
  requires 0 <= 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5)
  requires NatDvd(Int.pow(2, n + 4), 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5))
  requires 0 <= Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5))
  requires ((0 <= k_1_0_0) && (0 <= k_1_0_3)) || ((0 <= k_1_0_0) && (k_1_0_3 < 0)) || ((k_1_0_0 < 0) && (0 <= k_1_0_3)) || ((k_1_0_0 < 0) && (k_1_0_3 < 0))
  ensures   NatMod(Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5), Int.pow(2, n + 4)) == 0
{
              // have h₅ : 2 ^ ( n + 4 ) ∣ 2 ^ ( 2 * n + 4 )  [type from Lean state]
              assert NatDvd(Int.pow(2, (n + 4)), Int.pow(2, ((2 * n) + 4))) by { // @tac 2273-2292
                // [TACTIC: apply pow_dvd_pow 2]
                assert ((n + 4) <= ((2 * n) + 4)) by {  // sub-goal before `omega` (Lean state) // @tac 2305-2310
                  // [TACTIC: omega]
                  // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                  // UNCITED-APPLIED internal ×16 [exec 366 2305-2310]: applications made inside the tactic's own automation, not stated — Int.ofNat_add ×2, Int.ofNat_nonneg ×1, Int.sub_nonneg_of_le ×1, Int.add_one_le_of_lt ×1, Nat.lt_of_not_le ×1, Int.ofNat_mul ×1; machinery/glue: Eq.symm ×6, Decidable.byContradiction ×1, of_decide_eq_true ×1, Lean.Omega.Int.ofNat_lt_of_lt ×1
                }
                assert (((n + 4)) <= (((2 * n) + 4)));  // precondition of NatPowDvdPow (Lean: pow_dvd_pow; `apply`: proved by the steps above)
                NatPowDvdPow(2, (n + 4), ((2 * n) + 4));  // cite: pow_dvd_pow
              }
              // have h₆ : 2 ^ ( n + 4 ) ∣ k * 2 ^ ( n + 4 )  [type from Lean state]
              assert NatDvd(Int.pow(2, (n + 4)), (k_1_0_0 * Int.pow(2, (n + 4)))) by { // @tac 2383-2405
                assert ((k_1_0_0 * Int.pow(2, (n + 4))) == (Int.pow(2, (n + 4)) * k_1_0_0)) by {  // sub-goal of `by` (Lean state) // @tac 2398-2402
                  // [TACTIC: Ring]
                }
                // [TACTIC: exact ⟨ k , by ring ⟩ ⟨ k , by ring ⟩]
                assert (if ((Int.pow(2, (n + 4)) as int)) == 0 then (((k_1_0_0 * Int.pow(2, (n + 4))) as int)) == 0 else (((k_1_0_0 * Int.pow(2, (n + 4))) as int)) % ((Int.pow(2, (n + 4)) as int)) == 0);  // goal closed by `exact ⟨…⟩` (Lean state)
                // UNCITED-APPLIED internal ×55 [exec 383 2383-2405]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_zero ×4, Mathlib.Tactic.Ring.add_mul ×4, Mathlib.Tactic.Ring.mul_add ×4, Mathlib.Tactic.Ring.mul_zero ×4 (+23 more heads, ×39)
              }
              // have h₇ : 2 ^ ( n + 4 ) ∣ k ^ 2 * 2 ^ ( 2 * n + 6 )  [type from Lean state]
              assert NatDvd(Int.pow(2, (n + 4)), ((k_1_0_0 * k_1_0_0) * Int.pow(2, ((2 * n) + 6)))) by { // @tac 2486-2589 // @tac 2602-2707 // @tac 2720-2730
                // have h₈ : 2 ^ ( n + 4 ) ∣ 2 ^ ( 2 * n + 6 )  [type from Lean state]
                assert NatDvd(Int.pow(2, (n + 4)), Int.pow(2, ((2 * n) + 6))) by { // @tac 2550-2569
                  // [TACTIC: apply pow_dvd_pow 2]
                  assert ((n + 4) <= ((2 * n) + 6)) by {  // sub-goal before `omega` (Lean state) // @tac 2584-2589
                    // [TACTIC: omega]
                    // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                    // UNCITED-APPLIED internal ×11 [exec 426 2584-2589]: applications made inside the tactic's own automation, not stated — Int.ofNat_add ×2, Int.ofNat_nonneg ×1, Int.sub_nonneg_of_le ×1, Int.add_one_le_of_lt ×1, Nat.lt_of_not_le ×1, Int.ofNat_mul ×1; machinery/glue: Decidable.byContradiction ×1, of_decide_eq_true ×1, Eq.symm ×1, Lean.Omega.Int.ofNat_lt_of_lt ×1
                  }
                  assert (((n + 4)) <= (((2 * n) + 6)));  // precondition of NatPowDvdPow (Lean: pow_dvd_pow; `apply`: proved by the steps above)
                  NatPowDvdPow(2, (n + 4), ((2 * n) + 6));  // cite: pow_dvd_pow
                }
                // have h₉ : 2 ^ ( n + 4 ) ∣ k ^ 2 * 2 ^ ( 2 * n + 6 )  [type from Lean state]
                assert NatDvd(Int.pow(2, (n + 4)), ((k_1_0_0 * k_1_0_0) * Int.pow(2, ((2 * n) + 6)))) by { // @tac 2674-2707
                  // [TACTIC: exact dvd_mul_of_dvd_right h₈ _]
                  assert NatDvd(Int.pow(2, (n + 4)), Int.pow(2, ((2 * n) + 6)));
                  assert (NatDvd((Int.pow(2, (n + 4))), (Int.pow(2, ((2 * n) + 6)))));  // precondition of NatDvdMulOfDvdRight (Lean: dvd_mul_of_dvd_right)
                  NatDvdMulOfDvdRight(Int.pow(2, (n + 4)), Int.pow(2, ((2 * n) + 6)), (k_1_0_0 * k_1_0_0));  // cite: dvd_mul_of_dvd_right
                }
                // [TACTIC: exact h₉]
                assert NatDvd(Int.pow(2, (n + 4)), ((k_1_0_0 * k_1_0_0) * Int.pow(2, ((2 * n) + 6))));
              }
              // have h₈ : 2 ^ ( n + 4 ) ∣ 2 * k * 2 ^ ( 2 * n + 5 )  [type from Lean state]
              assert NatDvd(Int.pow(2, (n + 4)), ((2 * k_1_0_0) * Int.pow(2, ((2 * n) + 5)))) by { // @tac 2811-2914 // @tac 2927-3342 // @tac 3355-3368
                // have h₉ : 2 ^ ( n + 4 ) ∣ 2 ^ ( 2 * n + 5 )  [type from Lean state]
                assert NatDvd(Int.pow(2, (n + 4)), Int.pow(2, ((2 * n) + 5))) by { // @tac 2875-2894
                  // [TACTIC: apply pow_dvd_pow 2]
                  assert ((n + 4) <= ((2 * n) + 5)) by {  // sub-goal before `omega` (Lean state) // @tac 2909-2914
                    // [TACTIC: omega]
                    // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                    // UNCITED-APPLIED internal ×11 [exec 478 2909-2914]: applications made inside the tactic's own automation, not stated — Int.ofNat_add ×2, Int.ofNat_nonneg ×1, Int.sub_nonneg_of_le ×1, Int.add_one_le_of_lt ×1, Nat.lt_of_not_le ×1, Int.ofNat_mul ×1; machinery/glue: Decidable.byContradiction ×1, of_decide_eq_true ×1, Eq.symm ×1, Lean.Omega.Int.ofNat_lt_of_lt ×1
                  }
                  assert (((n + 4)) <= (((2 * n) + 5)));  // precondition of NatPowDvdPow (Lean: pow_dvd_pow; `apply`: proved by the steps above)
                  NatPowDvdPow(2, (n + 4), ((2 * n) + 5));  // cite: pow_dvd_pow
                }
                // have h₁₀ : 2 ^ ( n + 4 ) ∣ 2 * k * 2 ^ ( 2 * n + 5 )  [type from Lean state]
                assert NatDvd(Int.pow(2, (n + 4)), ((2 * k_1_0_0) * Int.pow(2, ((2 * n) + 5)))) by { // @tac 3002-3056 // @tac 3071-3314 // @tac 3329-3342
                  // have h₁₁ : 2 ^ ( n + 4 ) ∣ 2 ^ ( 2 * n + 5 )  [type from Lean state]
                  assert NatDvd(Int.pow(2, (n + 4)), Int.pow(2, ((2 * n) + 5))) by {
                    // [TACTIC: exact h₉]
                    assert NatDvd(Int.pow(2, (n + 4)), Int.pow(2, ((2 * n) + 5)));
                  }
                  // have h₁₂ : 2 ^ ( n + 4 ) ∣ 2 * k * 2 ^ ( 2 * n + 5 )  [type from Lean state]
                  assert NatDvd(Int.pow(2, (n + 4)), ((2 * k_1_0_0) * Int.pow(2, ((2 * n) + 5)))) by { // @tac 3148-3314
                    assert NatDvd(Int.pow(2, ((2 * n) + 5)), ((2 * k_1_0_0) * Int.pow(2, ((2 * n) + 5)))) by {  // sub-goal of `by` (Lean state) // @tac 3288-3314
                      assert (((2 * k_1_0_0) * Int.pow(2, ((2 * n) + 5))) == (Int.pow(2, ((2 * n) + 5)) * (2 * k_1_0_0))) by {  // sub-goal of `by` (Lean state) // @tac 3307-3311
                        // [TACTIC: Ring]
                      }
                      // [TACTIC: exact ⟨ 2 * k , by ring ⟩ ⟨ 2 * k , by ring ⟩]
                      assert (if ((Int.pow(2, ((2 * n) + 5)) as int)) == 0 then ((((2 * k_1_0_0) * Int.pow(2, ((2 * n) + 5))) as int)) == 0 else ((((2 * k_1_0_0) * Int.pow(2, ((2 * n) + 5))) as int)) % ((Int.pow(2, ((2 * n) + 5)) as int)) == 0);  // goal closed by `exact ⟨…⟩` (Lean state)
                      // UNCITED-APPLIED internal ×72 [exec 528 3288-3314]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_mul ×6, Mathlib.Tactic.Ring.mul_add ×6, Mathlib.Tactic.Ring.zero_mul ×6, Mathlib.Tactic.Ring.mul_pf_right ×5 (+25 more heads, ×49)
                    }
                    // [TACTIC: calc_unparsed 2 ^ ( n + 4 ) ∣ 2 ^ ( 2 * n + 5 ) 2 ^ ( n + 4 ) ∣ 2 ^ ( 2 * n + 5 ) := h₁₁ _ ∣ 2 * k * 2 ^ ( 2 * n + 5 ) _ ∣ 2 * k * 2 ^ ( 2 * n + 5 ) := by exact ⟨ 2 * k , by ring ⟩ ⟨ 2 * k , by ring ⟩ exact ⟨ 2 * k , by ring ⟩ ⟨ 2 * k , by ring ⟩]
                    // GAP: calc chain not lowered (relation outside Dafny calc, e.g. ∣); its step proofs follow, each with its recorded goal; the chain itself is not composed
                  }
                  // [TACTIC: exact h₁₂]
                  assert NatDvd(Int.pow(2, (n + 4)), ((2 * k_1_0_0) * Int.pow(2, ((2 * n) + 5))));
                }
                // [TACTIC: exact h₁₀]
                assert NatDvd(Int.pow(2, (n + 4)), ((2 * k_1_0_0) * Int.pow(2, ((2 * n) + 5))));
              }
              // have h₉ : 2 ^ ( n + 4 ) ∣ 2 ^ ( 2 * n + 4 ) + k * 2 ^ ( n + 4 ) + k ^ 2 * 2 ^ (   [type from Lean state]
              assert NatDvd(Int.pow(2, (n + 4)), (((Int.pow(2, ((2 * n) + 4)) + (k_1_0_0 * Int.pow(2, (n + 4)))) + ((k_1_0_0 * k_1_0_0) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k_1_0_0) * Int.pow(2, ((2 * n) + 5))))) by { // @tac 3511-3565 // @tac 3578-3632 // @tac 3645-3707 // @tac 3720-3782 // @tac 3841-3909
                // have h₁₀ : 2 ^ ( n + 4 ) ∣ 2 ^ ( 2 * n + 4 )  [type from Lean state]
                assert NatDvd(Int.pow(2, (n + 4)), Int.pow(2, ((2 * n) + 4))) by {
                  // [TACTIC: exact h₅]
                  assert NatDvd(Int.pow(2, (n + 4)), Int.pow(2, ((2 * n) + 4)));
                }
                // have h₁₁ : 2 ^ ( n + 4 ) ∣ k * 2 ^ ( n + 4 )  [type from Lean state]
                assert NatDvd(Int.pow(2, (n + 4)), (k_1_0_0 * Int.pow(2, (n + 4)))) by {
                  // [TACTIC: exact h₆]
                  assert NatDvd(Int.pow(2, (n + 4)), (k_1_0_0 * Int.pow(2, (n + 4))));
                }
                // have h₁₂ : 2 ^ ( n + 4 ) ∣ k ^ 2 * 2 ^ ( 2 * n + 6 )  [type from Lean state]
                assert NatDvd(Int.pow(2, (n + 4)), ((k_1_0_0 * k_1_0_0) * Int.pow(2, ((2 * n) + 6)))) by {
                  // [TACTIC: exact h₇]
                  assert NatDvd(Int.pow(2, (n + 4)), ((k_1_0_0 * k_1_0_0) * Int.pow(2, ((2 * n) + 6))));
                }
                // have h₁₃ : 2 ^ ( n + 4 ) ∣ 2 * k * 2 ^ ( 2 * n + 5 )  [type from Lean state]
                assert NatDvd(Int.pow(2, (n + 4)), ((2 * k_1_0_0) * Int.pow(2, ((2 * n) + 5)))) by {
                  // [TACTIC: exact h₈]
                  assert NatDvd(Int.pow(2, (n + 4)), ((2 * k_1_0_0) * Int.pow(2, ((2 * n) + 5))));
                }
                // [TACTIC: exact Nat.dvd_add ( Nat.dvd_add ( Nat.dvd_add h₁₀ h₆ ) h₇ ) h₈]
                assert NatDvd(Int.pow(2, (n + 4)), Int.pow(2, ((2 * n) + 4)));
                assert (NatDvd((Int.pow(2, (n + 4))), (Int.pow(2, ((2 * n) + 4))))) && (NatDvd((Int.pow(2, (n + 4))), ((k_1_0_0 * Int.pow(2, (n + 4))))));  // precondition of NatDvdAdd (Lean: Nat.dvd_add)
                NatDvdAdd(Int.pow(2, (n + 4)), Int.pow(2, ((2 * n) + 4)), (k_1_0_0 * Int.pow(2, (n + 4))));  // cite: Nat.dvd_add
                assert (NatDvd((Int.pow(2, (n + 4))), ((Int.pow(2, ((2 * n) + 4)) + (k_1_0_0 * Int.pow(2, (n + 4))))))) && (NatDvd((Int.pow(2, (n + 4))), (((k_1_0_0 * k_1_0_0) * Int.pow(2, ((2 * n) + 6))))));  // precondition of NatDvdAdd (Lean: Nat.dvd_add)
                NatDvdAdd(Int.pow(2, (n + 4)), (Int.pow(2, ((2 * n) + 4)) + (k_1_0_0 * Int.pow(2, (n + 4)))), ((k_1_0_0 * k_1_0_0) * Int.pow(2, ((2 * n) + 6))));  // cite: Nat.dvd_add
                assert (NatDvd((Int.pow(2, (n + 4))), (((Int.pow(2, ((2 * n) + 4)) + (k_1_0_0 * Int.pow(2, (n + 4)))) + ((k_1_0_0 * k_1_0_0) * Int.pow(2, ((2 * n) + 6))))))) && (NatDvd((Int.pow(2, (n + 4))), (((2 * k_1_0_0) * Int.pow(2, ((2 * n) + 5))))));  // precondition of NatDvdAdd (Lean: Nat.dvd_add)
                NatDvdAdd(Int.pow(2, (n + 4)), ((Int.pow(2, ((2 * n) + 4)) + (k_1_0_0 * Int.pow(2, (n + 4)))) + ((k_1_0_0 * k_1_0_0) * Int.pow(2, ((2 * n) + 6)))), ((2 * k_1_0_0) * Int.pow(2, ((2 * n) + 5))));  // cite: Nat.dvd_add
              }
              // have h₁₀ : ( 2 ^ ( 2 * n + 4 ) + k * 2 ^ ( n + 4 ) + k ^ 2 * 2 ^ ( 2 * n + 6 ) +   [type from Lean state]
              assert (NatMod((((Int.pow(2, ((2 * n) + 4)) + (k_1_0_0 * Int.pow(2, (n + 4)))) + ((k_1_0_0 * k_1_0_0) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k_1_0_0) * Int.pow(2, ((2 * n) + 5)))), Int.pow(2, (n + 4))) == 0) by { // @tac 4059-4183 // @tac 4196-4373 // @tac 4386-4399
                // have h₁₁ : 2 ^ ( n + 4 ) ∣ 2 ^ ( 2 * n + 4 ) + k * 2 ^ ( n + 4 ) + k ^ 2 * 2 ^ (   [type from Lean state]
                assert NatDvd(Int.pow(2, (n + 4)), (((Int.pow(2, ((2 * n) + 4)) + (k_1_0_0 * Int.pow(2, (n + 4)))) + ((k_1_0_0 * k_1_0_0) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k_1_0_0) * Int.pow(2, ((2 * n) + 5))))) by {
                  // [TACTIC: exact h₉]
                  assert NatDvd(Int.pow(2, (n + 4)), (((Int.pow(2, ((2 * n) + 4)) + (k_1_0_0 * Int.pow(2, (n + 4)))) + ((k_1_0_0 * k_1_0_0) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k_1_0_0) * Int.pow(2, ((2 * n) + 5)))));
                }
                // have h₁₂ : ( 2 ^ ( 2 * n + 4 ) + k * 2 ^ ( n + 4 ) + k ^ 2 * 2 ^ ( 2 * n + 6 ) +   [type from Lean state]
                assert (NatMod((((Int.pow(2, ((2 * n) + 4)) + (k_1_0_0 * Int.pow(2, (n + 4)))) + ((k_1_0_0 * k_1_0_0) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k_1_0_0) * Int.pow(2, ((2 * n) + 5)))), Int.pow(2, (n + 4))) == 0) by { // @tac 4337-4373
                  // [TACTIC: exact Nat.mod_eq_zero_of_dvd h₁₁]
                  assert NatDvd(Int.pow(2, (n + 4)), (((Int.pow(2, ((2 * n) + 4)) + (k_1_0_0 * Int.pow(2, (n + 4)))) + ((k_1_0_0 * k_1_0_0) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k_1_0_0) * Int.pow(2, ((2 * n) + 5)))));
                  assert (NatDvd((Int.pow(2, (n + 4))), ((((Int.pow(2, ((2 * n) + 4)) + (k_1_0_0 * Int.pow(2, (n + 4)))) + ((k_1_0_0 * k_1_0_0) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k_1_0_0) * Int.pow(2, ((2 * n) + 5)))))));  // precondition of NatModEqZeroOfDvd (Lean: Nat.mod_eq_zero_of_dvd)
                  NatModEqZeroOfDvd(Int.pow(2, (n + 4)), (((Int.pow(2, ((2 * n) + 4)) + (k_1_0_0 * Int.pow(2, (n + 4)))) + ((k_1_0_0 * k_1_0_0) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k_1_0_0) * Int.pow(2, ((2 * n) + 5)))));  // cite: Nat.mod_eq_zero_of_dvd
                }
                // [TACTIC: exact h₁₂]
                assert (NatMod((((Int.pow(2, ((2 * n) + 4)) + (k_1_0_0 * Int.pow(2, (n + 4)))) + ((k_1_0_0 * k_1_0_0) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k_1_0_0) * Int.pow(2, ((2 * n) + 5)))), Int.pow(2, (n + 4))) == 0);
              }
              // [TACTIC: exact h₁₀]
              assert (NatMod((((Int.pow(2, ((2 * n) + 4)) + (k_1_0_0 * Int.pow(2, (n + 4)))) + ((k_1_0_0 * k_1_0_0) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k_1_0_0) * Int.pow(2, ((2 * n) + 5)))), Int.pow(2, (n + 4))) == 0);
}

