// NOT CLOSED — failing line numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown-18: theorem numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown, Dafny line 18 (OOR: Verification out of resource (induction_helper_1))
// failing Dafny line: ensures NatDvd(f(Int.pow(2, m)), f(Int.pow(2, (m + t))))
// Lean step: 
// hypotheses: 1 facts Z3 had at the line (goal itself removed: 0; facts derived inside the helper lemma's own body removed: 13); nothing assumed beyond the facts in scope
// not closed: tried H0=oor, K1=oor, K2pow=oor, K5=oor, K3=oor, K1+K2pow=oor, K3+K2pow=oor; this file is the honest base attempt
// Dafny: finished with 101 verified, 2 errors, 5 out of resource  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown.dfy"
lemma {:induction false} vc_numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown_L18(f: nat -> nat, m: nat, n: int, t: int, t_1_0: int, t_1_0_0: int)
  requires m <= n
  ensures   ((((t == 0) && (0 <= m + 0) && (0 <= Int.pow(2, m + 0)) && (NatDvd(f(Int.pow(2, m)), f(Int.pow(2, m + 0))))) || ((t != 0) && (0 <= t - 1) && (0 <= t || t - 1 == t) && (t - 1 < t) && (NatDvd(f(Int.pow(2, m)), f(Int.pow(2, m + (t - 1))))) && (if f(Int.pow(2, m)) == 0 then f(Int.pow(2, m + (t - 1))) == 0 else f(Int.pow(2, m + (t - 1))) % f(Int.pow(2, m)) == 0) && (t_1_0_0 == t - 1) && (0 <= m + (t_1_0_0 + 1)) && (0 <= Int.pow(2, m + (t_1_0_0 + 1))) && (NatDvd(f(Int.pow(2, m)), f(Int.pow(2, m + (t_1_0_0 + 1))))))) ==> (NatDvd(f(Int.pow(2, m)), f(Int.pow(2, m + t))) || (f(Int.pow(2, m)) == 0 ==> f(Int.pow(2, m + t)) == 0)))
{
  if t == 0 {
    assert NatDvd(f(Int.pow(2, m)), f(Int.pow(2, (m + 0)))) by {  // sub-goal before `simp` (Lean state) // @tac 5121-5132 // @tac 5090-5132
      // [TACTIC: simp [ h₀ ]]
      assert (f(Int.pow(2, m)) == ((Int.pow(4, Int.pow(2, m)) + Int.pow(6, Int.pow(2, m))) + Int.pow(9, Int.pow(2, m))));  // instance of h₀ (Lean state)
      // UNCITED-APPLIED internal ×7 [exec 1413 5121-5132]: applications made inside the tactic's own automation, not stated — add_zero ×1; machinery/glue: Eq.trans ×2, congrArg ×2, of_eq_true ×1, congr ×1
    }
  } else {
    induction_helper_1(m, n, f, t - 1);
    var t: nat := t - 1;  // Lean's predecessor binder (succ t)
    assert NatDvd(f(Int.pow(2, m)), f(Int.pow(2, (m + (t + 1))))) by {  // sub-goal before `have` (Lean state) // @tac 5219-5281 // @tac 5139-5649 // @tac 5290-5510 // @tac 5519-5536 // @tac 5545-5591 // @tac 5600-5617 // @tac 5626-5649
      // have h₄ : f ( 2 ^ ( m + t ) ) ∣ f ( 2 * 2 ^ ( m + t ) )  [type from Lean state]
      assert NatDvd(f(Int.pow(2, (m + t))), f((2 * Int.pow(2, (m + t))))) by {
        // [TACTIC: exact h_div ( _ )]
        assert NatDvd(f(Int.pow(2, (m + t))), f((2 * Int.pow(2, (m + t)))));  // instance of h_div (Lean state)
      }
      // have h₅ : f ( ( 2 * 2 ^ ( m + t ) ) ) == f ( ( 2 ^ ( m + t + 1 ) ) )  [type from Lean state]
      assert (f((2 * Int.pow(2, (m + t)))) == f(Int.pow(2, ((m + t) + 1)))) by { // @tac 5360-5510
        assert ((2 * Int.pow(2, (m + t))) == Int.pow(2, ((m + t) + 1))) by {  // sub-goal of `by` (Lean state) // @tac 5426-5509 // @tac 5426-5433
          // [TACTIC: «_<;>_» ring_nf <;> simp [ pow_add , pow_one , mul_add , mul_one , add_mul , one_mul ] simp [ pow_add , pow_one , mul_add , mul_one , add_mul , one_mul ] simp [ pow_add , pow_one , mul_add , mul_one , add_mul , one_mul ]]
          // [TACTIC: Ring_nfAt]
          NatPowOne(m);  // cite: pow_one [applied by the tactic, not named in it]
          NatPowOne(t);  // cite: pow_one [applied by the tactic, not named in it]
          // UNCITED-APPLIED mul_one ×2: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := m); (a := t)
          // `ring_nf` closed the goal; the rest of the chain did not run
          // UNCITED-APPLIED internal ×76 [exec 1462 5426-5433]: applications made inside the tactic's own automation, not stated — add_zero ×2, mul_one ×2; machinery/glue: Eq.trans ×8, congrArg ×8, congr ×6, Mathlib.Tactic.Ring.add_pf_add_zero ×4 (+26 more heads, ×46) (cited in this block, not counted here: pow_one [Lean recorded ×2])
        }
        // [TACTIC: rwSeq [ show ( 2 * 2 ^ ( m + t ) : ℕ ) = 2 ^ ( m + t + 1 ) by ring_nf ring_nf <;> simp [ pow_add , pow_one , mul_add , mul_one , add_mul , one_mul ] simp [ pow_add , pow_one , mul_add , mul_one , add_mul , one_mul ] simp [ pow_add , pow_one , mul_add , mul_one , add_mul , one_mul ] ]]
        // UNCITED-APPLIED congrArg((2 : ℕ) * (2 : ℕ) ^ (m + t), (2 : ℕ) ^ (m + t + (1 : ℕ)), fun (_a : ℕ) => f _a = f ((2 : ℕ) ^ (m + t + (1 : ℕ)))): no library counterpart (not stated) [exec 1450 5360-5510]
      }
      // [TACTIC: rwSeq [ h₅ ] at h₄]
      assert NatDvd(f(Int.pow(2, (m + t))), f(Int.pow(2, ((m + t) + 1))));  // hypothesis h₄ after `rw` (Lean state) // @tac-hyp 5519-5536
      // have h₆ : m + t + 1 == m + ( t + 1 )  [type from Lean state]
      assert (((m + t) + 1) == (m + (t + 1))); // @tac 5587-5591
        // [TACTIC: Ring]
      // UNCITED-APPLIED internal ×16 [exec 1538 5587-5591]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×4, Mathlib.Tactic.Ring.add_pf_add_gt ×3, Mathlib.Tactic.Ring.atom_pf ×2, Mathlib.Tactic.Ring.add_pf_add_zero ×2 (+5 more heads, ×5)
      // [TACTIC: rwSeq [ h₆ ] at h₄]
      assert NatDvd(f(Int.pow(2, (m + t))), f(Int.pow(2, (m + (t + 1)))));  // hypothesis h₄ after `rw` (Lean state) // @tac-hyp 5600-5617
      // [TACTIC: exact dvd_trans ih h₄]
      assert NatDvd(f(Int.pow(2, (m + t))), f(Int.pow(2, (m + (t + 1)))));  // hypothesis h₄ at `exact` (Lean state)
      assert (NatDvd((f(Int.pow(2, m))), (f(Int.pow(2, (m + t)))))) && (NatDvd((f(Int.pow(2, (m + t)))), (f(Int.pow(2, (m + (t + 1)))))));  // precondition of NatDvdTrans (Lean: dvd_trans)
      NatDvdTrans(f(Int.pow(2, m)), f(Int.pow(2, (m + t))), f(Int.pow(2, (m + (t + 1)))));  // cite: dvd_trans
      // UNCITED-APPLIED congrArg(m + t + (1 : ℕ), m + (t + (1 : ℕ)), fun (_a : ℕ) => f ((2 : ℕ) ^ (m + t)) ∣ f ((2 : ℕ) ^ _a)): no library counterpart (not stated) [exec 1570 5626-5649]
      // UNCITED-APPLIED congrArg(f ((2 : ℕ) * (2 : ℕ) ^ (m + t)), f ((2 : ℕ) ^ (m + t + (1 : ℕ))), fun (_a : ℕ) => f ((2 : ℕ) ^ (m + t)) ∣ _a): no library counterpart (not stated) [exec 1570 5626-5649]
    }
  }
}

