// CLOSED — failing line numbertheory_3pow2pownm1mod2pownp3eq2pownp2-40: theorem numbertheory_3pow2pownm1mod2pownp3eq2pownp2, Dafny line 40 (OOR: Verification out of resource (induction_helper_1))
// failing Dafny line: assert (Int.pow(3, Int.pow(2, (n + 1))) == ((1 + Int.pow(2, ((n + 1) + 2))) + (NatDiv((((Int.pow(2, ((2 * n) + 4)) + (k * Int.pow(2, (n + 4)))) + ((k * k) * Int.pow(2, ((2 * n) + 6)))) + ((2 * k) * In
// Lean step: have h₂ : 3 ^ 2 ^ (n + 1) = (3 ^ 2 ^ n) ^ 2 := by
// hypotheses: 27 facts Z3 had at the line (goal itself removed: 0; the block's own asserts removed: 1); nothing assumed beyond the facts in scope
// how it closes: pass2 — h2 (3^(2^(n+1)) == (3^(2^n))^2) proved by NatPowSucc(2,n), NatPowMul(3,2^n,2), NatPowSucc/NatPowOne of 3^(2^n) as explicit asserts, then rewriting with hk and the block's inner rw-goal hypothesis (in k_1_0_2_0); the heavy h3/h4 sub-blocks (own lines) are not re-proved
// Dafny: Dafny program verifier finished with 104 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/numbertheory_3pow2pownm1mod2pownp3eq2pownp2.dfy"
lemma {:induction false} vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L40(k_1_0_0: int, k_1_0_2: int, k_1_0_2_0: int, k_1_0_3: int, n: nat)
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
  requires 0 <= n + 1 + 2
  requires 0 <= 2 * n + 4
  requires 0 <= n + 4
  requires 0 <= 2 * n + 6
  requires 0 <= 2 * n + 5
  requires 0 <= Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5)
  requires 0 <= Int.pow(2, n + 4)
  requires 0 <= n + 1 + 3
  requires (1 + Int.pow(2, n + 2) + k_1_0_2_0 * Int.pow(2, n + 3)) * (1 + Int.pow(2, n + 2) + k_1_0_2_0 * Int.pow(2, n + 3)) == 1 + Int.pow(2, n + 1 + 2) + NatDiv(Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5), Int.pow(2, n + 4)) * Int.pow(2, n + 1 + 3)
  requires ((0 <= k_1_0_0) && (0 <= k_1_0_3)) || ((0 <= k_1_0_0) && (k_1_0_3 < 0)) || ((k_1_0_0 < 0) && (0 <= k_1_0_3)) || ((k_1_0_0 < 0) && (k_1_0_3 < 0))
  ensures   Int.pow(3, Int.pow(2, n + 1)) == 1 + Int.pow(2, n + 1 + 2) + NatDiv(Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5), Int.pow(2, n + 4)) * Int.pow(2, n + 1 + 3)
{
  // h2 : 3^(2^(n+1)) == (3^(2^n))^2 via pow_succ / pow_mul / pow_one (the block's own step, removed from the hypotheses)
  NatPowSucc(2, n);  // 2^(n+1) == 2^n * 2
  NatPowMul(3, Int.pow(2, n), 2);  // 3^(2^n * 2) == (3^(2^n))^2
  NatPowSucc(Int.pow(3, Int.pow(2, n)), 1);  // X^2 == X^1 * X
  NatPowOne(Int.pow(3, Int.pow(2, n)));  // X^1 == X  // [ADDED]
  assert Int.pow(2, n + 1) == Int.pow(2, n) * 2;  // [ADDED]
  assert Int.pow(3, Int.pow(2, n + 1)) == Int.pow(3, Int.pow(2, n) * 2);  // [ADDED]
  assert Int.pow(3, Int.pow(2, n) * 2) == Int.pow(Int.pow(3, Int.pow(2, n)), 2);  // [ADDED]
  assert Int.pow(Int.pow(3, Int.pow(2, n)), 2) == Int.pow(3, Int.pow(2, n)) * Int.pow(3, Int.pow(2, n));  // [ADDED]
  assert Int.pow(3, Int.pow(2, n + 1)) == Int.pow(3, Int.pow(2, n)) * Int.pow(3, Int.pow(2, n));  // [ADDED]
  // rw [h2, hk]; then the block's inner goal (hypothesis, in k_1_0_2_0)
  assert Int.pow(3, Int.pow(2, n)) == 1 + Int.pow(2, n + 2) + k_1_0_2_0 * Int.pow(2, n + 3);  // [ADDED]
  assert Int.pow(3, Int.pow(2, n)) * Int.pow(3, Int.pow(2, n)) == (1 + Int.pow(2, n + 2) + k_1_0_2_0 * Int.pow(2, n + 3)) * (1 + Int.pow(2, n + 2) + k_1_0_2_0 * Int.pow(2, n + 3));  // [ADDED]
  assert (1 + Int.pow(2, n + 2) + k_1_0_2_0 * Int.pow(2, n + 3)) * (1 + Int.pow(2, n + 2) + k_1_0_2_0 * Int.pow(2, n + 3)) == 1 + Int.pow(2, n + 1 + 2) + NatDiv(Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5), Int.pow(2, n + 4)) * Int.pow(2, n + 1 + 3);  // [ADDED]
}
