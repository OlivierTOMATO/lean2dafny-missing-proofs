// CLOSED — failing line numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown-265: theorem numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown, Dafny line 265 (OOR: Verification out of resource (numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown))
// failing Dafny line: assert ((((Int.pow(2, k) * Int.pow(3, k)) * ((Int.pow(2, k) * Int.pow(2, k)) + (Int.pow(3, k) * Int.pow(3, k)))) + ((Int.pow(2, k) * Int.pow(2, k)) * (Int.pow(3, k) * Int.pow(3, k)))) == ((Int.pow(2, 
// Lean step: ring_nf
// hypotheses: 28 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: split+K2pow — 
// Dafny: finished with 24 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)
// NOTE: uses a MODIFIED library copy: see alt/numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown-265/LIBRARY_CHANGES.diff

include "alt/numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown-265/out/numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown.dfy"
lemma {:induction false} vc_numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown_L265(f: nat -> nat, k_0_0: nat, k_0_2_3_2_1_0: int, k_1_1_0_1_0: int, m: int, n: int, t_3_5: int)
  requires 0 <= m
  requires 0 <= n
  requires 0 <= k_0_2_3_2_1_0
  requires 0 <= k_1_1_0_1_0
  requires 0 <= t_3_5
  requires forall x_1: nat :: f.requires(x_1)
  requires forall x_1: nat :: f(x_1) == Int.pow(4, x_1) + Int.pow(6, x_1) + Int.pow(9, x_1)
  requires 0 < m
  requires 0 < n
  requires m <= n
  requires forall m0: int, n0: int :: (forall x_2: nat :: f.requires(x_2)) && (0 <= m0 && 0 <= n0 && (forall x_2: nat :: f(x_2) == Int.pow(4, x_2) + Int.pow(6, x_2) + Int.pow(9, x_2)) && 0 < m0 && 0 < n0 && m0 <= n0 && ((0 <= m0 && m0 < m) || (m0 == m && 0 <= n0 && n0 < n)) ==> f.requires(Int.pow(2, m0)) && f.requires(Int.pow(2, n0)) && NatDvd(f(Int.pow(2, m0)), f(Int.pow(2, n0))))
  requires 0 <= k_0_0
  requires 0 <= 2 * k_0_0
  requires f(2 * k_0_0) == Int.pow(4, 2 * k_0_0) + Int.pow(6, 2 * k_0_0) + Int.pow(9, 2 * k_0_0)
  requires f(k_0_0) == Int.pow(4, k_0_0) + Int.pow(6, k_0_0) + Int.pow(9, k_0_0)
  requires Int.pow(4, 2 * k_0_0) == Int.pow(4, k_0_0) * Int.pow(4, k_0_0)
  requires Int.pow(6, 2 * k_0_0) == Int.pow(6, k_0_0) * Int.pow(6, k_0_0)
  requires Int.pow(9, 2 * k_0_0) == Int.pow(9, k_0_0) * Int.pow(9, k_0_0)
  requires 0 <= (Int.pow(4, k_0_0) + Int.pow(6, k_0_0) + Int.pow(9, k_0_0)) * (Int.pow(4, k_0_0) + Int.pow(6, k_0_0) + Int.pow(9, k_0_0))
  requires 0 <= 2 * (Int.pow(4, k_0_0) * Int.pow(6, k_0_0) + Int.pow(4, k_0_0) * Int.pow(9, k_0_0) + Int.pow(6, k_0_0) * Int.pow(9, k_0_0))
  requires Int.pow(4, k_0_0) * Int.pow(4, k_0_0) + Int.pow(6, k_0_0) * Int.pow(6, k_0_0) + Int.pow(9, k_0_0) * Int.pow(9, k_0_0) == tsub((Int.pow(4, k_0_0) + Int.pow(6, k_0_0) + Int.pow(9, k_0_0)) * (Int.pow(4, k_0_0) + Int.pow(6, k_0_0) + Int.pow(9, k_0_0)), 2 * (Int.pow(4, k_0_0) * Int.pow(6, k_0_0) + Int.pow(4, k_0_0) * Int.pow(9, k_0_0) + Int.pow(6, k_0_0) * Int.pow(9, k_0_0)))
  requires Int.pow(4, k_0_0) * Int.pow(6, k_0_0) + Int.pow(4, k_0_0) * Int.pow(9, k_0_0) + Int.pow(6, k_0_0) * Int.pow(9, k_0_0) == Int.pow(6, k_0_0) * (Int.pow(4, k_0_0) + Int.pow(9, k_0_0)) + Int.pow(4, k_0_0) * Int.pow(9, k_0_0)
  requires Int.pow(6, k_0_0) == Int.pow(2, k_0_0) * Int.pow(3, k_0_0)
  requires Int.pow(4, k_0_0) == Int.pow(2, 2 * k_0_0)
  requires Int.pow(9, k_0_0) == Int.pow(3, 2 * k_0_0)
  requires Int.pow(2, 2 * k_0_0) == Int.pow(2, k_0_0) * Int.pow(2, k_0_0)
  requires Int.pow(3, 2 * k_0_0) == Int.pow(3, k_0_0) * Int.pow(3, k_0_0)
  requires Int.pow(k_0_0, 1) == k_0_0
  ensures   Int.pow(2, k_0_0) * Int.pow(3, k_0_0) * (Int.pow(2, k_0_0) * Int.pow(2, k_0_0) + Int.pow(3, k_0_0) * Int.pow(3, k_0_0)) + Int.pow(2, k_0_0) * Int.pow(2, k_0_0) * (Int.pow(3, k_0_0) * Int.pow(3, k_0_0)) == Int.pow(2, k_0_0) * Int.pow(3, k_0_0) * (Int.pow(2, k_0_0) * Int.pow(2, k_0_0) + Int.pow(2, k_0_0) * Int.pow(3, k_0_0) + Int.pow(3, k_0_0) * Int.pow(3, k_0_0))
{
  RingId(Int.pow(2, k_0_0), Int.pow(3, k_0_0));  // [ADDED]
                    // [TACTIC: «_<;>_» ring_nf <;> nlinarith [ pow_pos ( by norm_num norm_num : 0 < ( 2 : ℕ ) ) k , pow_pos ( by norm_num norm_num : 0 < ( 3 : ℕ ) ) k ] nlinarith [ pow_pos ( by norm_num norm_num : 0 < ( 2 : ℕ ) ) k , pow_pos ( by norm_num norm_num : 0 < ( 3 : ℕ ) ) k ]]
                    // [TACTIC: Ring_nfAt]
                    NatPowOne(k_0_0);  // cite: pow_one [applied by the tactic, not named in it]
                    // UNCITED-APPLIED mul_one ×4: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := k); (a := (3 : ℕ) ^ (k * (3 : ℕ))); (a := (3 : ℕ) ^ (k * (2 : ℕ))); (a := (3 : ℕ) ^ k)
                    // `ring_nf` closed the goal; the rest of the chain did not run
                    // [TACTIC: «Norm_num[_]At___»]
                    // [TACTIC: «Norm_num[_]At___»]
                    // UNCITED-APPLIED internal ×120 [exec 1120 3842-3849]: applications made inside the tactic's own automation, not stated — mul_one ×4, add_zero ×3; machinery/glue: congr ×8, congrArg ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+29 more heads, ×81) (cited in this block, not counted here: pow_one [Lean recorded ×1])
}

lemma RingId(a: int, b: int)  // [ADDED DECLARATION]
  ensures a * b * (a * a + b * b) + a * a * (b * b) == a * b * (a * a + a * b + b * b)
{ }
