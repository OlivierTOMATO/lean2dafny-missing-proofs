// CLOSED — failing line numbertheory_3pow2pownm1mod2pownp3eq2pownp2-195: theorem numbertheory_3pow2pownm1mod2pownp3eq2pownp2, Dafny line 195 (OOR: Verification out of resource (induction_helper_1))
// failing Dafny line: assert NatDvd(Int.pow(2, (n + 4)), (((Int.pow(2, ((2 * n) + 4)) + (k * Int.pow(2, (n + 4)))) + ((k * k) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k) * Int.pow(2, ((2 * n) + 5))))) by {
// Lean step: have h₁₀ : 2 ^ (n + 4) ∣ 2 ^ (2 * n + 4) := h₅
// hypotheses: 52 facts Z3 had at the line (goal itself removed: 0; the block's own asserts removed: 1); nothing assumed beyond the facts in scope (pass2: kept 43 of 52; dropped the Int.pow(3,·)/∃-witness/n-1/product-identity facts, not needed for the step)
// how it closes: pass2 — the Nat.dvd_add chain restated on the state's own k (k_1_0_2_0) from the four component NatDvd hyps; heavy hyps dropped + opaque-pow library variant (Int.pow without its recursive ensures; copy of closed/alt/numbertheory_3pow2pownm1mod2pownp3eq2pownp2-283)
// Dafny: finished with 220 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)
// NOTE: uses a MODIFIED library copy (opaque Int.pow): see alt/numbertheory_3pow2pownm1mod2pownp3eq2pownp2-195/LIBRARY_CHANGES.diff

include "alt/numbertheory_3pow2pownm1mod2pownp3eq2pownp2-195/out/numbertheory_3pow2pownm1mod2pownp3eq2pownp2.dfy"
lemma {:induction false} vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L195(k_1_0_0: int, k_1_0_2: int, k_1_0_2_0: int, k_1_0_3: int, n: nat)
  requires 0 <= n
  requires 0 <= k_1_0_2
  requires n != 0
  requires 0 + 1 <= n
  requires 0 <= Int.pow(2, n)
  requires 0 <= n + 2
  requires 0 <= n + 3
  requires 0 <= k_1_0_2_0
  requires 0 <= n + 1
  requires 0 <= Int.pow(2, n + 1)
  requires 0 <= 2 * n + 4
  requires 0 <= n + 4
  requires 0 <= 2 * n + 6
  requires 0 <= 2 * n + 5
  requires 0 <= Int.pow(2, n + 4)
  requires 0 <= Int.pow(2, 2 * n + 4)
  requires 0 <= k_1_0_2_0 * Int.pow(2, n + 4)
  requires NatDvd(Int.pow(2, n + 4), k_1_0_2_0 * Int.pow(2, n + 4))
  requires 0 <= k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)
  requires NatDvd(Int.pow(2, n + 4), k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6))
  requires 0 <= 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5)
  requires NatDvd(Int.pow(2, n + 4), 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5))
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4)) || (Int.pow(2, n + 4) == 0 ==> Int.pow(2, 2 * n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4)) || (Int.pow(2, n + 4) != 0 ==> Int.pow(2, 2 * n + 4) % Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), k_1_0_2_0 * Int.pow(2, n + 4)) || (Int.pow(2, n + 4) == 0 ==> k_1_0_2_0 * Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), k_1_0_2_0 * Int.pow(2, n + 4)) || (Int.pow(2, n + 4) != 0 ==> k_1_0_2_0 * Int.pow(2, n + 4) % Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4))
  requires if Int.pow(2, n + 4) == 0 then Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) == 0 else (Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4)) % Int.pow(2, n + 4) == 0
  requires 0 <= Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4)) || (Int.pow(2, n + 4) == 0 ==> Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4)) || (Int.pow(2, n + 4) != 0 ==> (Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4)) % Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)) || (Int.pow(2, n + 4) == 0 ==> k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) == 0)
  requires NatDvd(Int.pow(2, n + 4), k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)) || (Int.pow(2, n + 4) != 0 ==> k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) % Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6))
  requires if Int.pow(2, n + 4) == 0 then Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) == 0 else (Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)) % Int.pow(2, n + 4) == 0
  requires 0 <= Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)) || (Int.pow(2, n + 4) == 0 ==> Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) == 0)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)) || (Int.pow(2, n + 4) != 0 ==> (Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6)) % Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5)) || (Int.pow(2, n + 4) == 0 ==> 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5) == 0)
  requires NatDvd(Int.pow(2, n + 4), 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5)) || (Int.pow(2, n + 4) != 0 ==> 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5) % Int.pow(2, n + 4) == 0)
  requires NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5))
  requires if Int.pow(2, n + 4) == 0 then Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5) == 0 else (Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5)) % Int.pow(2, n + 4) == 0
  requires 0 <= Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5)
  ensures   ((((0 <= k_1_0_0) && (0 <= k_1_0_3)) || ((0 <= k_1_0_0) && (k_1_0_3 < 0)) || ((k_1_0_0 < 0) && (0 <= k_1_0_3)) || ((k_1_0_0 < 0) && (k_1_0_3 < 0))) ==> (NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5)) || (Int.pow(2, n + 4) == 0 ==> Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5) == 0)))
{
  // Lean: exact Nat.dvd_add (Nat.dvd_add (Nat.dvd_add h₁₀ h₆) h₇) h₈
  assert NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4));  // h₁₀ = h₅ (in scope as the two dvd/mod disjunctions; 2^(n+4) > 0)  // [ADDED]
  NatDvdAdd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4), k_1_0_2_0 * Int.pow(2, n + 4));  // cite: Nat.dvd_add  // [ADDED]
  NatDvdAdd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4), k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6));  // cite: Nat.dvd_add  // [ADDED]
  NatDvdAdd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6), 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5));  // cite: Nat.dvd_add  // [ADDED]
}
