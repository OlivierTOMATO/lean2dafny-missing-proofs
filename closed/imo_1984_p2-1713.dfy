// NOT CLOSED — failing line imo_1984_p2-1713: theorem imo_1984_p2, Dafny line 1713 (OOR: Verification out of resource (imo_1984_p2))
// failing Dafny line: assert (Int.pow((a + b), 7) == (((((((Int.pow(a, 7) + ((7 * (a * a * a * a * a * a)) * b)) + ((21 * (a * a * a * a * a)) * (b * b))) + ((35 * (a * a * a * a)) * (b * b * b))) + ((35 * (a * a * a)) * (
// Lean step: ring_nf
// hypotheses: 11 facts Z3 had at the line; nothing assumed beyond the facts in scope
// not closed: tried H0=oor, K2=oor, K2pow=oor, S_split=oor, S_cite=oor; this file is the honest base attempt
// Dafny: finished with 18 verified, 0 errors, 1 out of resource  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/imo_1984_p2.dfy"
lemma {:induction false} vc_imo_1984_p2_L1713(a: int, b: int)
  requires 0 < a
  requires 0 < b
  requires !IntDvd(7, a)
  requires !IntDvd(7, b)
  requires !IntDvd(7, a + b)
  requires IntDvd(Int.pow(7, 7), Int.pow(a + b, 7) - Int.pow(a, 7) - Int.pow(b, 7))
  requires if Int.pow(7, 7) == 0 then Int.pow(a + b, 7) - Int.pow(a, 7) - Int.pow(b, 7) == 0 else (Int.pow(a + b, 7) - Int.pow(a, 7) - Int.pow(b, 7)) % Int.pow(7, 7) == 0
  requires !IntDvd(7, a * b * (a + b))
  requires Int.pow(a, 1) == a
  requires Int.pow(b, 1) == b
  requires 0 <= 7
  ensures   Int.pow(a + b, 7) == Int.pow(a, 7) + 7 * (a * a * a * a * a * a) * b + 21 * (a * a * a * a * a) * (b * b) + 35 * (a * a * a * a) * (b * b * b) + 35 * (a * a * a) * (b * b * b * b) + 21 * (a * a) * (b * b * b * b * b) + 7 * a * (b * b * b * b * b * b) + Int.pow(b, 7)
{
        // [TACTIC: «_<;>_» ring_nf <;> norm_num norm_num <;> simp_all simp_all simp_all <;> omega omega]
        // [TACTIC: Ring_nfAt]
        IntPowOne(a);  // cite: pow_one [applied by the tactic, not named in it]
        IntPowOne(b);  // cite: pow_one [applied by the tactic, not named in it]
        // UNCITED-APPLIED mul_one ×2: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := a ^ (7 : ℕ)); (a := b ^ (7 : ℕ))
        // `ring_nf` closed the goal; the rest of the chain did not run
        // UNCITED-APPLIED internal ×247 [exec 373 1705-1712]: applications made inside the tactic's own automation, not stated — mul_one ×2, add_zero ×1; machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×8, Mathlib.Tactic.Ring.add_pf_zero_add ×8, Mathlib.Tactic.Ring.cast_pos ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8 (+37 more heads, ×212) (cited in this block, not counted here: pow_one [Lean recorded ×2])
}

