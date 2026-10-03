// CLOSED — failing line imo_1964_p1_2-61: theorem imo_1964_p1_2, Dafny line 61 (OOR: Verification out of resource (induction_helper_1))
// failing Dafny line: assert ((((Int.pow(2, n) * 2) % 7) == 1) || ((((Int.pow(2, n) * 2) % 7) == 2) || (((Int.pow(2, n) * 2) % 7) == 4))) by {
// Lean step: norm_num [h, Nat.mul_mod, Nat.add_mod]
// hypotheses: 21 facts Z3 had at the line (goal itself removed: 0; the block's own asserts removed: 2); nothing assumed beyond the facts in scope
// how it closes: K2pow — MathPrelude Int.pow: drop `ensures if k == 0 then p == 1 else p == b * pow(b, k - 1)` (body unchanged; sign ensures kept) — work-dir copy of library + translation
// Dafny: finished with 149 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)
// NOTE: uses a MODIFIED library copy: see alt/imo_1964_p1_2-61/LIBRARY_CHANGES.diff

include "alt/imo_1964_p1_2-61/out/imo_1964_p1_2.dfy"
lemma {:induction false} vc_imo_1964_p1_2_L61(n: int, n_1_0: int, n_1_0_0: nat)
  requires 0 <= n
  requires 0 <= n_1_0
  requires forall n0: nat :: true && 0 <= n0 && n0 < n ==> Int.pow(2, n0) % 7 == 1 || Int.pow(2, n0) % 7 == 2 || Int.pow(2, n0) % 7 == 4
  requires n != 0
  requires 0 <= n - 1
  requires 0 <= n || n - 1 == n
  requires n - 1 < n
  requires Int.pow(2, n - 1) % 7 == 1 || Int.pow(2, n - 1) % 7 == 2 || Int.pow(2, n - 1) % 7 == 4
  requires n_1_0_0 == n - 1
  requires 7 != 0
  requires ((Int.pow(2, n_1_0_0) % 7 == 1) && (0 <= 2) && (Int.pow(2, n_1_0_0 + 1) == Int.pow(2, n_1_0_0) * 2) && (7 != 0) && (((Int.pow(2, n_1_0_0) * 2 % 7 != 1) && (7 != 0) && (((Int.pow(2, n_1_0_0) * 2 % 7 != 2) && (7 != 0)) || (Int.pow(2, n_1_0_0) * 2 % 7 == 2))) || (Int.pow(2, n_1_0_0) * 2 % 7 == 1)) && (Int.pow(2, n_1_0_0) * 2 % 7 == 1 || Int.pow(2, n_1_0_0) * 2 % 7 == 2 || Int.pow(2, n_1_0_0) * 2 % 7 == 4) && (0 <= n_1_0_0 + 1) && (((Int.pow(2, n_1_0_0 + 1) % 7 != 1) && (0 <= n_1_0_0 + 1) && (((Int.pow(2, n_1_0_0 + 1) % 7 != 2) && (0 <= n_1_0_0 + 1)) || (Int.pow(2, n_1_0_0 + 1) % 7 == 2))) || (Int.pow(2, n_1_0_0 + 1) % 7 == 1)) && (Int.pow(2, n_1_0_0 + 1) % 7 == 1 || Int.pow(2, n_1_0_0 + 1) % 7 == 2 || Int.pow(2, n_1_0_0 + 1) % 7 == 4)) || (Int.pow(2, n_1_0_0) % 7 != 1)
  requires ((Int.pow(2, n_1_0_0) % 7 != 2) && (7 != 0)) || (Int.pow(2, n_1_0_0) % 7 == 2)
  requires Int.pow(2, n_1_0_0) % 7 == 2 || Int.pow(2, n_1_0_0) % 7 == 4
  requires ((Int.pow(2, n_1_0_0) % 7 == 2) && (0 <= 2) && (Int.pow(2, n_1_0_0 + 1) == Int.pow(2, n_1_0_0) * 2) && (7 != 0) && (((Int.pow(2, n_1_0_0) * 2 % 7 != 1) && (7 != 0) && (((Int.pow(2, n_1_0_0) * 2 % 7 != 2) && (7 != 0)) || (Int.pow(2, n_1_0_0) * 2 % 7 == 2))) || (Int.pow(2, n_1_0_0) * 2 % 7 == 1)) && (Int.pow(2, n_1_0_0) * 2 % 7 == 1 || Int.pow(2, n_1_0_0) * 2 % 7 == 2 || Int.pow(2, n_1_0_0) * 2 % 7 == 4) && (0 <= n_1_0_0 + 1) && (((Int.pow(2, n_1_0_0 + 1) % 7 != 1) && (0 <= n_1_0_0 + 1) && (((Int.pow(2, n_1_0_0 + 1) % 7 != 2) && (0 <= n_1_0_0 + 1)) || (Int.pow(2, n_1_0_0 + 1) % 7 == 2))) || (Int.pow(2, n_1_0_0 + 1) % 7 == 1)) && (Int.pow(2, n_1_0_0 + 1) % 7 == 1 || Int.pow(2, n_1_0_0 + 1) % 7 == 2 || Int.pow(2, n_1_0_0 + 1) % 7 == 4)) || (Int.pow(2, n_1_0_0) % 7 != 2)
  requires Int.pow(2, n_1_0_0) % 7 == 4
  requires 0 <= 2
  requires Int.pow(2, n_1_0_0 + 1) == Int.pow(2, n_1_0_0) * 2
  requires 0 <= Int.pow(2, n_1_0_0)
  requires 0 <= 7
  requires Int.pow(2, n_1_0_0) * 2 % 7 == Int.pow(2, n_1_0_0) % 7 * (2 % 7) % 7
  requires ((Int.pow(2, n_1_0_0) * 2 % 7 != 1) && ((Int.pow(2, n_1_0_0) * 2 % 7 != 2) || (Int.pow(2, n_1_0_0) * 2 % 7 == 2))) || (Int.pow(2, n_1_0_0) * 2 % 7 == 1)
  ensures   Int.pow(2, n_1_0_0) * 2 % 7 == 1 || Int.pow(2, n_1_0_0) * 2 % 7 == 2 || Int.pow(2, n_1_0_0) * 2 % 7 == 4
{
 
            // [TACTIC: «Norm_num[_]At___» [ h , Nat.mul_mod , Nat.add_mod ]]
            // UNCITED Nat.add_mod: named in this rewriting step; no record of Lean's proof attributes an application of it to this execution (its recorded applications are at other tactics of the proof; a rewrite at a hypothesis is filed under the tactic that later uses the hypothesis, and a conditional / under-binder simp rewrite may be unrecorded), so whether it was applied here is not known; not stated
            assert ((7) > 0);  // precondition of NatMulMod (Lean: Nat.mul_mod)
            NatMulMod(Int.pow(2, n), 2, 7);  // cite: Nat.mul_mod
            // UNCITED-APPLIED internal ×29 [exec 171 903-941]: applications made inside the tactic's own automation, not stated — or_self ×1, or_false ×1; machinery/glue: congrArg ×6, Eq.trans ×4, Mathlib.Meta.NormNum.isNat_ofNat ×4, congr ×3 (+7 more heads, ×10) (cited in this block, not counted here: Nat.mul_mod [Lean recorded ×1])
}

// side checks at the same line (not the reported failure): 3 check(s)
// side check: divisor is always non-zero.
lemma {:induction false} vc_imo_1964_p1_2_L61_side1(n: int, n_1_0: int, n_1_0_0: nat)  // [ADDED DECLARATION]
  requires 0 <= n
  requires 0 <= n_1_0
  requires forall n0: nat :: true && 0 <= n0 && n0 < n ==> Int.pow(2, n0) % 7 == 1 || Int.pow(2, n0) % 7 == 2 || Int.pow(2, n0) % 7 == 4
  requires n != 0
  requires 0 <= n - 1
  requires 0 <= n || n - 1 == n
  requires n - 1 < n
  requires Int.pow(2, n - 1) % 7 == 1 || Int.pow(2, n - 1) % 7 == 2 || Int.pow(2, n - 1) % 7 == 4
  requires n_1_0_0 == n - 1
  requires 7 != 0
  requires ((Int.pow(2, n_1_0_0) % 7 == 1) && (0 <= 2) && (Int.pow(2, n_1_0_0 + 1) == Int.pow(2, n_1_0_0) * 2) && (7 != 0) && (((Int.pow(2, n_1_0_0) * 2 % 7 != 1) && (7 != 0) && (((Int.pow(2, n_1_0_0) * 2 % 7 != 2) && (7 != 0)) || (Int.pow(2, n_1_0_0) * 2 % 7 == 2))) || (Int.pow(2, n_1_0_0) * 2 % 7 == 1)) && (Int.pow(2, n_1_0_0) * 2 % 7 == 1 || Int.pow(2, n_1_0_0) * 2 % 7 == 2 || Int.pow(2, n_1_0_0) * 2 % 7 == 4) && (0 <= n_1_0_0 + 1) && (((Int.pow(2, n_1_0_0 + 1) % 7 != 1) && (0 <= n_1_0_0 + 1) && (((Int.pow(2, n_1_0_0 + 1) % 7 != 2) && (0 <= n_1_0_0 + 1)) || (Int.pow(2, n_1_0_0 + 1) % 7 == 2))) || (Int.pow(2, n_1_0_0 + 1) % 7 == 1)) && (Int.pow(2, n_1_0_0 + 1) % 7 == 1 || Int.pow(2, n_1_0_0 + 1) % 7 == 2 || Int.pow(2, n_1_0_0 + 1) % 7 == 4)) || (Int.pow(2, n_1_0_0) % 7 != 1)
  requires ((Int.pow(2, n_1_0_0) % 7 != 2) && (7 != 0)) || (Int.pow(2, n_1_0_0) % 7 == 2)
  requires Int.pow(2, n_1_0_0) % 7 == 2 || Int.pow(2, n_1_0_0) % 7 == 4
  requires ((Int.pow(2, n_1_0_0) % 7 == 2) && (0 <= 2) && (Int.pow(2, n_1_0_0 + 1) == Int.pow(2, n_1_0_0) * 2) && (7 != 0) && (((Int.pow(2, n_1_0_0) * 2 % 7 != 1) && (7 != 0) && (((Int.pow(2, n_1_0_0) * 2 % 7 != 2) && (7 != 0)) || (Int.pow(2, n_1_0_0) * 2 % 7 == 2))) || (Int.pow(2, n_1_0_0) * 2 % 7 == 1)) && (Int.pow(2, n_1_0_0) * 2 % 7 == 1 || Int.pow(2, n_1_0_0) * 2 % 7 == 2 || Int.pow(2, n_1_0_0) * 2 % 7 == 4) && (0 <= n_1_0_0 + 1) && (((Int.pow(2, n_1_0_0 + 1) % 7 != 1) && (0 <= n_1_0_0 + 1) && (((Int.pow(2, n_1_0_0 + 1) % 7 != 2) && (0 <= n_1_0_0 + 1)) || (Int.pow(2, n_1_0_0 + 1) % 7 == 2))) || (Int.pow(2, n_1_0_0 + 1) % 7 == 1)) && (Int.pow(2, n_1_0_0 + 1) % 7 == 1 || Int.pow(2, n_1_0_0 + 1) % 7 == 2 || Int.pow(2, n_1_0_0 + 1) % 7 == 4)) || (Int.pow(2, n_1_0_0) % 7 != 2)
  requires Int.pow(2, n_1_0_0) % 7 == 4
  requires 0 <= 2
  requires Int.pow(2, n_1_0_0 + 1) == Int.pow(2, n_1_0_0) * 2
  requires 7 > 0
  requires 0 <= Int.pow(2, n_1_0_0)
  requires 0 <= 7
  requires 7 > 0
  requires Int.pow(2, n_1_0_0) * 2 % 7 == Int.pow(2, n_1_0_0) % 7 * (2 % 7) % 7
  ensures  7 != 0
{ }
