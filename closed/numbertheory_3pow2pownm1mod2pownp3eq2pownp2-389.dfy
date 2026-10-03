// CLOSED — failing line numbertheory_3pow2pownm1mod2pownp3eq2pownp2-389: theorem numbertheory_3pow2pownm1mod2pownp3eq2pownp2, Dafny line 389 (OOR: Verification out of resource (induction_helper_1))
// failing Dafny line: assert (NatMod(((((Int.pow(4, n) * 16) + (k * ((Int.pow(2, n) * 2) * 8))) + ((k * k) * (Int.pow(4, n) * 64))) + ((2 * k) * (Int.pow(4, n) * 32))), ((Int.pow(2, n) * 2) * 8)) == 0);
// Lean step: simp [h₇, h₈, h₉, pow_add, pow_mul, Nat.mul_div_assoc, Nat.div_eq_of_lt] at h₄ h₅ ⊢
// hypotheses: 45 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: own-lemma — nothing: the file's own proof body, hypotheses = facts in scope minus the goal and minus the block's own asserts
// Dafny: finished with 78 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/numbertheory_3pow2pownm1mod2pownp3eq2pownp2.dfy"
lemma {:induction false} vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L389(k_1_0_0: int, k_1_0_2: int, k_1_0_2_0: int, k_1_0_3: int, n: nat)
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
  requires NatDiv(Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5), Int.pow(2, n + 4)) * Int.pow(2, n + 4) == Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5)
  requires n + 3 == n + 1 + 2
  requires n + 4 == n + 1 + 3
  requires 2 * n + 4 == 2 * n + 4
  requires 0 <= 2
  requires Int.pow(2, n + 1 + 2) == Int.pow(2, n + 1) * Int.pow(2, 2)
  requires 0 <= 1
  requires Int.pow(2, n + 1) == Int.pow(2, n) * Int.pow(2, 1)
  requires 0 <= 2 * n
  requires 0 <= 4
  requires Int.pow(2, 2 * n + 4) == Int.pow(2, 2 * n) * Int.pow(2, 4)
  requires 0 <= 3
  requires Int.pow(2, n + 1 + 3) == Int.pow(2, n + 1) * Int.pow(2, 3)
  requires 0 <= 6
  requires Int.pow(2, 2 * n + 6) == Int.pow(2, 2 * n) * Int.pow(2, 6)
  requires 0 <= 5
  requires Int.pow(2, 2 * n + 5) == Int.pow(2, 2 * n) * Int.pow(2, 5)
  requires Int.pow(2, 2 * n) == Int.pow(Int.pow(2, 2), n)
  requires Int.pow(2, 1) == 2
  ensures   ((((0 <= k_1_0_0) && (0 <= k_1_0_3)) || ((0 <= k_1_0_0) && (k_1_0_3 < 0)) || ((k_1_0_0 < 0) && (0 <= k_1_0_3)) || ((k_1_0_0 < 0) && (k_1_0_3 < 0))) ==> (0 <= Int.pow(4, n) * 16 + k_1_0_2_0 * (Int.pow(2, n) * 2 * 8) + k_1_0_2_0 * k_1_0_2_0 * (Int.pow(4, n) * 64) + 2 * k_1_0_2_0 * (Int.pow(4, n) * 32)))
{ }

