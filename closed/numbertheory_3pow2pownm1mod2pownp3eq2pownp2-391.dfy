// NOT CLOSED — failing line numbertheory_3pow2pownm1mod2pownp3eq2pownp2-391: theorem numbertheory_3pow2pownm1mod2pownp3eq2pownp2, Dafny line 391 (OOR: Verification out of resource (induction_helper_1))
// failing Dafny line: assert (((((Int.pow(4, n) * 16) + (k * ((Int.pow(2, n) * 2) * 8))) + ((k * k) * (Int.pow(4, n) * 64))) + ((2 * k) * (Int.pow(4, n) * 32))) == (NatDiv(((((Int.pow(4, n) * 16) + (k * ((Int.pow(2, n) * 2
// Lean step: ring_nf at h₄ h₅ ⊢
// hypotheses: 59 facts Z3 had at the line; nothing assumed beyond the facts in scope
// not closed: tried H0=oor; this file is the honest base attempt
// Dafny: finished with 108 verified, 0 errors, 5 out of resource  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/numbertheory_3pow2pownm1mod2pownp3eq2pownp2.dfy"
lemma {:induction false} vc_numbertheory_3pow2pownm1mod2pownp3eq2pownp2_L391(k_1_0_0: int, k_1_0_2: int, k_1_0_2_0: int, k_1_0_3: int, n: nat)
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
  requires 0 <= Int.pow(4, n) * 16 + k_1_0_2_0 * (Int.pow(2, n) * 2 * 8) + k_1_0_2_0 * k_1_0_2_0 * (Int.pow(4, n) * 64) + 2 * k_1_0_2_0 * (Int.pow(4, n) * 32)
  requires 0 <= Int.pow(2, n) * 2 * 8
  requires NatMod(Int.pow(4, n) * 16 + k_1_0_2_0 * (Int.pow(2, n) * 2 * 8) + k_1_0_2_0 * k_1_0_2_0 * (Int.pow(4, n) * 64) + 2 * k_1_0_2_0 * (Int.pow(4, n) * 32), Int.pow(2, n) * 2 * 8) == 0
  requires NatDiv(Int.pow(4, n) * 16 + k_1_0_2_0 * (Int.pow(2, n) * 2 * 8) + k_1_0_2_0 * k_1_0_2_0 * (Int.pow(4, n) * 64) + 2 * k_1_0_2_0 * (Int.pow(4, n) * 32), Int.pow(2, n) * 2 * 8) * (Int.pow(2, n) * 2 * 8) == Int.pow(4, n) * 16 + k_1_0_2_0 * (Int.pow(2, n) * 2 * 8) + k_1_0_2_0 * k_1_0_2_0 * (Int.pow(4, n) * 64) + 2 * k_1_0_2_0 * (Int.pow(4, n) * 32)
  requires Int.pow(k_1_0_2_0, 1) == k_1_0_2_0
  requires Int.pow(n, 1) == n
  requires 0 <= k_1_0_2_0 * Int.pow(2, n) * 16 + k_1_0_2_0 * Int.pow(4, n) * 64 + Int.pow(k_1_0_2_0, 2) * Int.pow(4, n) * 64 + Int.pow(4, n) * 16
  requires 0 <= Int.pow(2, n) * 16
  requires Int.pow(NatDiv(k_1_0_2_0 * Int.pow(2, n) * 16 + k_1_0_2_0 * Int.pow(4, n) * 64 + Int.pow(k_1_0_2_0, 2) * Int.pow(4, n) * 64 + Int.pow(4, n) * 16, Int.pow(2, n) * 16), 1) == NatDiv(k_1_0_2_0 * Int.pow(2, n) * 16 + k_1_0_2_0 * Int.pow(4, n) * 64 + Int.pow(k_1_0_2_0, 2) * Int.pow(4, n) * 64 + Int.pow(4, n) * 16, Int.pow(2, n) * 16)
  requires 0 <= k_1_0_2_0 * Int.pow(2, n) * 16 + k_1_0_2_0 * Int.pow(4, n) * 64 + k_1_0_2_0 * k_1_0_2_0 * Int.pow(4, n) * 64 + Int.pow(4, n) * 16
  requires NatMod(k_1_0_2_0 * Int.pow(2, n) * 16 + k_1_0_2_0 * Int.pow(4, n) * 64 + k_1_0_2_0 * k_1_0_2_0 * Int.pow(4, n) * 64 + Int.pow(4, n) * 16, Int.pow(2, n) * 16) == 0
  requires NatDiv(k_1_0_2_0 * Int.pow(2, n) * 16 + k_1_0_2_0 * Int.pow(4, n) * 64 + k_1_0_2_0 * k_1_0_2_0 * Int.pow(4, n) * 64 + Int.pow(4, n) * 16, Int.pow(2, n) * 16) * Int.pow(2, n) * 16 == k_1_0_2_0 * Int.pow(2, n) * 16 + k_1_0_2_0 * Int.pow(4, n) * 64 + k_1_0_2_0 * k_1_0_2_0 * Int.pow(4, n) * 64 + Int.pow(4, n) * 16
  requires k_1_0_2_0 * Int.pow(2, n) * 16 + k_1_0_2_0 * Int.pow(4, n) * 64 + k_1_0_2_0 * k_1_0_2_0 * Int.pow(4, n) * 64 + Int.pow(4, n) * 16 == NatDiv(k_1_0_2_0 * Int.pow(2, n) * 16 + k_1_0_2_0 * Int.pow(4, n) * 64 + k_1_0_2_0 * k_1_0_2_0 * Int.pow(4, n) * 64 + Int.pow(4, n) * 16, Int.pow(2, n) * 16) * Int.pow(2, n) * 16
  requires ((0 <= k_1_0_0) && (0 <= k_1_0_3)) || ((0 <= k_1_0_0) && (k_1_0_3 < 0)) || ((k_1_0_0 < 0) && (0 <= k_1_0_3)) || ((k_1_0_0 < 0) && (k_1_0_3 < 0))
  ensures   Int.pow(4, n) * 16 + k_1_0_2_0 * (Int.pow(2, n) * 2 * 8) + k_1_0_2_0 * k_1_0_2_0 * (Int.pow(4, n) * 64) + 2 * k_1_0_2_0 * (Int.pow(4, n) * 32) == NatDiv(Int.pow(4, n) * 16 + k_1_0_2_0 * (Int.pow(2, n) * 2 * 8) + k_1_0_2_0 * k_1_0_2_0 * (Int.pow(4, n) * 64) + 2 * k_1_0_2_0 * (Int.pow(4, n) * 32), Int.pow(2, n) * 2 * 8) * (Int.pow(2, n) * 2 * 8)
{
                NatPowOne(k_1_0_0);  // cite: pow_one [applied by the tactic, not named in it]
                NatPowOne(n);  // cite: pow_one [applied by the tactic, not named in it]
                NatPowOne(NatDiv((((((k_1_0_0 * Int.pow(2, n)) * 16) + ((k_1_0_0 * Int.pow(4, n)) * 64)) + ((Int.pow(k_1_0_0, 2) * Int.pow(4, n)) * 64)) + (Int.pow(4, n) * 16)), (Int.pow(2, n) * 16)));  // cite: pow_one [applied by the tactic, not named in it]
                // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := n)
                assert (NatMod((((((k_1_0_0 * Int.pow(2, n)) * 16) + ((k_1_0_0 * Int.pow(4, n)) * 64)) + (((k_1_0_0 * k_1_0_0) * Int.pow(4, n)) * 64)) + (Int.pow(4, n) * 16)), (Int.pow(2, n) * 16)) == 0);  // hypothesis h₄ after `ring_nf` (Lean state) // @tac-hyp 7407-7431
                assert (((NatDiv((((((k_1_0_0 * Int.pow(2, n)) * 16) + ((k_1_0_0 * Int.pow(4, n)) * 64)) + (((k_1_0_0 * k_1_0_0) * Int.pow(4, n)) * 64)) + (Int.pow(4, n) * 16)), (Int.pow(2, n) * 16)) * Int.pow(2, n)) * 16) == (((((k_1_0_0 * Int.pow(2, n)) * 16) + ((k_1_0_0 * Int.pow(4, n)) * 64)) + (((k_1_0_0 * k_1_0_0) * Int.pow(4, n)) * 64)) + (Int.pow(4, n) * 16)));  // hypothesis h₅ after `ring_nf` (Lean state) // @tac-hyp 7407-7431
                assert ((((((k_1_0_0 * Int.pow(2, n)) * 16) + ((k_1_0_0 * Int.pow(4, n)) * 64)) + (((k_1_0_0 * k_1_0_0) * Int.pow(4, n)) * 64)) + (Int.pow(4, n) * 16)) == ((NatDiv((((((k_1_0_0 * Int.pow(2, n)) * 16) + ((k_1_0_0 * Int.pow(4, n)) * 64)) + (((k_1_0_0 * k_1_0_0) * Int.pow(4, n)) * 64)) + (Int.pow(4, n) * 16)), (Int.pow(2, n) * 16)) * Int.pow(2, n)) * 16)) by {  // sub-goal of `omega` (Lean state) // @tac 7436-7441
                  // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                  // cite: pow_one [same instance stated in an enclosing scope: NatPowOne(k);]
                  // cite: pow_one [same instance stated in an enclosing scope: NatPowOne(n);]
                  // cite: pow_one [same instance stated in an enclosing scope: NatPowOne(NatDiv((((((k * Int.pow(2, n)) * 16) + ((k * Int.pow(4, n)) * 64)) + ((Int.pow(k, 2) * Int.pow(4, n)) * 64)) + (Int.pow(4, n) * 16)), (Int.pow(2, n) * 16)));]
                  // cite: pow_one [same instance stated in an enclosing scope: NatPowOne(2);]
                  // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := n)
                  // cite: pow_add [same instance stated in an enclosing scope: NatPowAdd(2, (2 * n), 4);]
                  // cite: pow_add [same instance stated in an enclosing scope: NatPowAdd(2, (n + 1), 3);]
                  // cite: pow_add [same instance stated in an enclosing scope: NatPowAdd(2, n, 1);]
                  // cite: pow_add [same instance stated in an enclosing scope: NatPowAdd(2, (2 * n), 6);]
                  // cite: pow_add [same instance stated in an enclosing scope: NatPowAdd(2, (2 * n), 5);]
                  // cite: pow_mul [same instance stated in an enclosing scope: NatPowMul(2, 2, n);]
                  // UNCITED-APPLIED internal ×170 [exec 1030 7436-7441]: applications made inside the tactic's own automation, not stated — Int.ofNat_mul ×8, add_zero ×5, Int.ofNat_add ×3, Int.sub_nonneg_of_le ×2, Int.add_one_le_of_lt ×2, Nat.lt_or_gt_of_ne ×1, Int.sub_eq_zero_of_eq ×1, mul_one ×1; machinery/glue: congr ×8, congrArg ×8, Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8 (+34 more heads, ×115) (cited in this block, not counted here: pow_add [Lean recorded ×5], pow_mul [Lean recorded ×1], pow_one [Lean recorded ×4])
                }
                // UNCITED-APPLIED internal ×146 [exec 1021 7407-7431]: applications made inside the tactic's own automation, not stated — add_zero ×5, mul_one ×1; machinery/glue: congr ×8, congrArg ×8, Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8 (+29 more heads, ×108) (cited in this block, not counted here: pow_one [Lean recorded ×3])
}

