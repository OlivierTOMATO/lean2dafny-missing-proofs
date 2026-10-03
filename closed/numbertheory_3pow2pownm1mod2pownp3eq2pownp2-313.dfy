// NOT CLOSED — failing line numbertheory_3pow2pownm1mod2pownp3eq2pownp2-313: theorem numbertheory_3pow2pownm1mod2pownp3eq2pownp2, Dafny line 313 (OOR: Verification out of resource (induction_helper_1))
// failing Dafny line: assert NatDvd(Int.pow(2, (n + 4)), ((2 * k) * Int.pow(2, ((2 * n) + 5)))) by {
// Lean step: calc
// hypotheses: 36 facts Z3 had at the line; nothing assumed beyond the facts in scope
// not closed: tried H0=oor, K1=oor, K2pow=oor, K3=oor; this file is the honest base attempt
// Dafny: finished with 91 verified, 0 errors, 2 out of resource  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/numbertheory_3pow2pownm1mod2pownp3eq2pownp2.dfy"
lemma {:induction false} vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L313(k_1_0_0: int, k_1_0_2: int, k_1_0_2_0: int, k_1_0_3: int, n: nat)
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
  requires 0 <= k_1_0_2_0 * Int.pow(2, n + 4)
  requires NatDvd(Int.pow(2, n + 4), k_1_0_2_0 * Int.pow(2, n + 4))
  requires 0 <= k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)
  requires NatDvd(Int.pow(2, n + 4), k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6))
  requires 0 <= Int.pow(2, 2 * n + 5)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 5))
  requires 0 <= 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5)
  requires NatDvd(Int.pow(2, 2 * n + 5), 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5))
  ensures   ((((0 <= k_1_0_0) && (0 <= k_1_0_3)) || ((0 <= k_1_0_0) && (k_1_0_3 < 0)) || ((k_1_0_0 < 0) && (0 <= k_1_0_3)) || ((k_1_0_0 < 0) && (k_1_0_3 < 0))) ==> (NatDvd(Int.pow(2, n + 4), 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5)) || (Int.pow(2, n + 4) == 0 ==> 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5) == 0)))
{
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

