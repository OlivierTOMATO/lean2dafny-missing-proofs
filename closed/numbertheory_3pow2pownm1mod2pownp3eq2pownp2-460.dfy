// NOT CLOSED — failing line numbertheory_3pow2pownm1mod2pownp3eq2pownp2-460: theorem numbertheory_3pow2pownm1mod2pownp3eq2pownp2, Dafny line 460 (ERR: assertion might not hold)
// failing Dafny line: assert (forall n: nat :: ((0 < n) ==> (exists k: nat :: (Int.pow(3, Int.pow(2, n)) == ((1 + Int.pow(2, (n + 2))) + (k * Int.pow(2, (n + 3))))))));
// Lean step: h₁
// hypotheses: 5 facts Z3 had at the line; nothing assumed beyond the facts in scope
// not closed: tried H0=failed, K1=failed, K2pow=failed, K3=failed, S=failed, K1b=failed; this file is the honest base attempt
// Dafny: finished with 6 verified, 1 error  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/numbertheory_3pow2pownm1mod2pownp3eq2pownp2.dfy"
lemma {:induction false} vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L460(k_0_0: int, k_1_2: int, n: int, n_0_0: nat)
  requires 0 <= n
  requires 0 <= k_1_2
  requires 0 < n
  requires forall n_0_0_1: nat :: 0 < n_0_0_1 ==> (exists k_0_0_2: nat :: Int.pow(3, Int.pow(2, n_0_0_1)) == 1 + Int.pow(2, n_0_0_1 + 2) + k_0_0_2 * Int.pow(2, n_0_0_1 + 3))
  requires ((0 <= n_0_0) && (0 < n_0_0) && (0 <= k_0_0) && (0 <= Int.pow(2, n_0_0)) && (0 <= n_0_0 + 2) && (0 <= n_0_0 + 3)) || ((0 <= n_0_0) && (0 < n_0_0) && (k_0_0 < 0)) || ((0 <= n_0_0) && (n_0_0 <= 0)) || (n_0_0 < 0)
  ensures   forall n_0_1: nat :: 0 < n_0_1 ==> (exists k_0_2: nat :: Int.pow(3, Int.pow(2, n_0_1)) == 1 + Int.pow(2, n_0_1 + 2) + k_0_2 * Int.pow(2, n_0_1 + 3))
{ }

