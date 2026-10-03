// CLOSED LEMMA for failing line numbertheory_3pow2pownm1mod2pownp3eq2pownp2-88 (theorem numbertheory_3pow2pownm1mod2pownp3eq2pownp2, Dafny line 88, OOR)
// closes with: K2 (computation) — simplest-close
// added: library: drop Int.pow recursive ensures (opaque-style pow); plus in the step: IntPowAdd(2,n,2);IntPowAdd(2,n,3);IntPowAdd(2,n,4);IntPowAdd(2,n,n);assert n+n==2*n;IntPowAdd(2,2*n,4);IntPowAdd(2,2*n,5);IntPowAdd(2,2*n,6);assert Int.pow(2,2)==4&&…&&Int.pow(2,6)==64; and a call to the pow-free helper le
// Dafny: finished with 69 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_045/numbertheory_3pow2pownm1mod2pownp3eq2pownp2-88/SPLIT_K2pow.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// shard_045 ablation SPLIT_K2pow of numbertheory_3pow2pownm1mod2pownp3eq2pownp2 L88 (original line lemma, main VC only)
// SPLIT_K2pow: pow_add instances + IsNat values + pow-free polynomial helper lemma
include "/home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_045/numbertheory_3pow2pownm1mod2pownp3eq2pownp2-88/SPLIT_K2pow_lib/out/numbertheory_3pow2pownm1mod2pownp3eq2pownp2.dfy"

lemma {:induction false} vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L88(k_1_0_0: int, k_1_0_2: int, k_1_0_2_0: int, k_1_0_3: int, n: nat)
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
  requires n >= 0
  requires 2 * n + 4 >= n + 4
  requires 2 * n + 6 >= n + 4
  requires 2 * n + 5 >= n + 4
  requires Int.pow(k_1_0_2_0, 1) == k_1_0_2_0
  requires Int.pow(n, 1) == n
  requires 0 <= 2 * n + 4
  requires 0 <= n + 4
  requires 0 <= 2 * n + 6
  requires 0 <= 2 * n + 5
  requires ((0 <= k_1_0_0) && (0 <= k_1_0_3)) || ((0 <= k_1_0_0) && (k_1_0_3 < 0)) || ((k_1_0_0 < 0) && (0 <= k_1_0_3)) || ((k_1_0_0 < 0) && (k_1_0_3 < 0))
  ensures  (1 + Int.pow(2, n + 2) + k_1_0_2_0 * Int.pow(2, n + 3)) * (1 + Int.pow(2, n + 2) + k_1_0_2_0 * Int.pow(2, n + 3)) == 1 + Int.pow(2, n + 3) + (Int.pow(2, 2 * n + 4) + k_1_0_2_0 * Int.pow(2, n + 4) + k_1_0_2_0 * k_1_0_2_0 * Int.pow(2, 2 * n + 6) + 2 * k_1_0_2_0 * Int.pow(2, 2 * n + 5))
{
  IntPowAdd(2, n, 2); IntPowAdd(2, n, 3); IntPowAdd(2, n, 4); IntPowAdd(2, n, n);
  assert n + n == 2 * n;
  IntPowAdd(2, 2 * n, 4); IntPowAdd(2, 2 * n, 5); IntPowAdd(2, 2 * n, 6);
  assert Int.pow(2, 2) == 4 && Int.pow(2, 3) == 8 && Int.pow(2, 4) == 16 && Int.pow(2, 5) == 32 && Int.pow(2, 6) == 64;
  vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L88_poly(Int.pow(2, n), k_1_0_2_0, Int.pow(2, n + 2), Int.pow(2, n + 3), Int.pow(2, n + 4), Int.pow(2, 2 * n + 4), Int.pow(2, 2 * n + 5), Int.pow(2, 2 * n + 6));
}

// split helper: the ring_nf step over plain ints (pow atoms replaced by variables tied to Lean's normal form)
lemma vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L88_poly(a: int, k: int, p2: int, p3: int, p4: int, q4: int, q5: int, q6: int)
  requires p2 == a * 4 && p3 == a * 8 && p4 == a * 16
  requires q4 == a * a * 16 && q5 == a * a * 32 && q6 == a * a * 64
  ensures (1 + p2 + k * p3) * (1 + p2 + k * p3) == 1 + p3 + (q4 + k * p4 + k * k * q6 + 2 * k * q5)
{ }
