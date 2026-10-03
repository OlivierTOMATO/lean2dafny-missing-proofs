// CLOSED — failing line numbertheory_3pow2pownm1mod2pownp3eq2pownp2-111: theorem numbertheory_3pow2pownm1mod2pownp3eq2pownp2, Dafny line 111 (OOR: Verification out of resource (induction_helper_1))
// failing Dafny line: assert (NatMod((((Int.pow(2, ((2 * n) + 4)) + (k * Int.pow(2, (n + 4)))) + ((k * k) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k) * Int.pow(2, ((2 * n) + 5)))), Int.pow(2, (n + 4))) == 0) by {
// Lean step: have h₅ : 2 ^ (n + 4) ∣ 2 ^ (2 * n + 4) := by
// hypotheses: 1 of the 34 facts Z3 had at the line kept (0 <= k_1_0_2_0, plus n: nat); the other facts dropped (none added); the goal is a standalone fact about n, k_1_0_2_0 and powers of 2
// how it closes: pass2 — dropped all hypotheses but 0<=k; body replaced: NatPowDvdPow x4 + NatDvdMulOfDvdRight x3 + NatDvdAdd x3 give 2^(n+4) | S through library lemmas only (IntMulNonneg for nat typing) then NatModEqZeroOfDvd
// Dafny: finished with 139 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)
// NOTE: uses a MODIFIED library copy (opaque Int.pow: recursive ensures removed): see alt/numbertheory_3pow2pownm1mod2pownp3eq2pownp2-111/LIBRARY_CHANGES.diff

include "alt/numbertheory_3pow2pownm1mod2pownp3eq2pownp2-111/out/numbertheory_3pow2pownm1mod2pownp3eq2pownp2.dfy"
lemma {:induction false} vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L111(k_1_0_0: int, k_1_0_2: int, k_1_0_2_0: int, k_1_0_3: int, n: nat)
  requires 0 <= n
  requires 0 <= k_1_0_2_0
  ensures   NatMod(Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5), Int.pow(2, n + 4)) == 0
{
  // pass2: every piece through library lemmas only; no nonlinear `%` facts asserted directly
  assert 0 < Int.pow(2, n + 4);                                   // Int.pow ensures: b > 0 ==> p > 0  // [ADDED]
  IntMulNonneg(k_1_0_2_0, k_1_0_2_0);  // [ADDED]
  // 2^(n+4) | 2^(2n+4)                               (Lean h₅: pow_dvd_pow)
  NatPowDvdPow(2, n + 4, 2 * n + 4);  // [ADDED]
  assert NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4));  // [ADDED]
  // 2^(n+4) | k * 2^(n+4)                            (Lean h₆: ⟨k, by ring⟩; here via pow_dvd_pow refl + dvd_mul_of_dvd_right)
  NatPowDvdPow(2, n + 4, n + 4);  // [ADDED]
  assert NatDvd(Int.pow(2, n + 4), Int.pow(2, n + 4));  // [ADDED]
  NatDvdMulOfDvdRight(Int.pow(2, n + 4), Int.pow(2, n + 4), k_1_0_2_0);  // [ADDED]
  IntMulNonneg(k_1_0_2_0, Int.pow(2, n + 4));  // [ADDED]
  assert NatDvd(Int.pow(2, n + 4), k_1_0_2_0 * Int.pow(2, n + 4));  // [ADDED]
  // 2^(n+4) | k^2 * 2^(2n+6)                         (Lean h₇: pow_dvd_pow + dvd_mul_of_dvd_right)
  NatPowDvdPow(2, n + 4, 2 * n + 6);  // [ADDED]
  NatDvdMulOfDvdRight(Int.pow(2, n + 4), Int.pow(2, 2 * n + 6), k_1_0_2_0 * k_1_0_2_0);  // [ADDED]
  IntMulNonneg(k_1_0_2_0 * k_1_0_2_0, Int.pow(2, 2 * n + 6));  // [ADDED]
  assert NatDvd(Int.pow(2, n + 4), k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6));  // [ADDED]
  // 2^(n+4) | 2k * 2^(2n+5)                          (Lean h₈: pow_dvd_pow + ⟨2k, by ring⟩)
  NatPowDvdPow(2, n + 4, 2 * n + 5);  // [ADDED]
  NatDvdMulOfDvdRight(Int.pow(2, n + 4), Int.pow(2, 2 * n + 5), 2 * k_1_0_2_0);  // [ADDED]
  IntMulNonneg(2 * k_1_0_2_0, Int.pow(2, 2 * n + 5));  // [ADDED]
  assert NatDvd(Int.pow(2, n + 4), 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5));  // [ADDED]
  // sum of multiples                                 (Lean h₉: Nat.dvd_add ×3)
  NatDvdAdd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4), k_1_0_2_0 * Int.pow(2, n + 4));  // [ADDED]
  NatDvdAdd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4), k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6));  // [ADDED]
  NatDvdAdd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6), 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5));  // [ADDED]
  assert NatDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5));  // [ADDED]

  // Lean h₁₂: Nat.mod_eq_zero_of_dvd
  NatModEqZeroOfDvd(Int.pow(2, n + 4), Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5));  // [ADDED]
}
