// CLOSED — failing line imo_1984_p2-64: theorem imo_1984_p2, Dafny line 64 (OOR: Verification out of resource (contrapose_helper_1))
// failing Dafny line: assert !(IntDvd(Int.pow(7, 7), (7 * (((((((a * a * a * a * a * a) * b) + ((3 * (a * a * a * a * a)) * (b * b))) + ((5 * (a * a * a * a)) * (b * b * b))) + ((5 * (a * a * a)) * (b * b * b * b))) + ((3 
// Lean step: have h₉ : a + b ≤ 18 := by linarith
// hypotheses: 12 facts Z3 had at the line (goal itself removed: 0; the block's own asserts removed: 5); nothing assumed beyond the facts in scope
// how it closes: pass2 — assert Int.pow(7,7) == 823543; 17-way chain on a (a in 1..17 from a,b>=1, a+b<19) calling proved helpers Enum64_k(a,b) (requires a==k, 1<=b, a+b<19, 7-non-divisibility; body: if/else-if chain on b so Z3 evaluates 7*Q(k,b) % 823543 != 0 per leaf; Enum64_7/14 vacuous)
// Dafny: finished with 210 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/imo_1984_p2.dfy"
lemma {:induction false} vc_imo_1984_p2_L64(a: int, b: int)
  requires 0 < a
  requires 0 < b
  requires !IntDvd(7, a)
  requires !IntDvd(7, b)
  requires !IntDvd(7, a + b)
  requires IntDvd(Int.pow(7, 7), Int.pow(a + b, 7) - Int.pow(a, 7) - Int.pow(b, 7))
  requires if Int.pow(7, 7) == 0 then Int.pow(a + b, 7) - Int.pow(a, 7) - Int.pow(b, 7) == 0 else (Int.pow(a + b, 7) - Int.pow(a, 7) - Int.pow(b, 7)) % Int.pow(7, 7) == 0
  requires !IntDvd(7, a * b * (a + b))
  requires Int.pow(a + b, 7) == Int.pow(a, 7) + 7 * (a * a * a * a * a * a) * b + 21 * (a * a * a * a * a) * (b * b) + 35 * (a * a * a * a) * (b * b * b) + 35 * (a * a * a) * (b * b * b * b) + 21 * (a * a) * (b * b * b * b * b) + 7 * a * (b * b * b * b * b * b) + Int.pow(b, 7)
  requires Int.pow(a + b, 7) - Int.pow(a, 7) - Int.pow(b, 7) == 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b))
  requires a + b < 19
  requires 0 <= 7
  ensures   !IntDvd(Int.pow(7, 7), 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)))
{
    // have h₉ : a + b <= 18  [type from Lean state]
    assert ((a + b) <= 18) by { // @tac 2519-2527
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2519-2527 exec 493)
      // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(-1 : ℤ) + (a + b + (1 : ℤ) - (19 : ℤ)) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
      cert_identity_1(a, b);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×11 [exec 493 2519-2527]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×68 [exec 494 2519-2527]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Tactic.Ring.neg_add ×4, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×4 (+25 more heads, ×51)
    }
    // have h₁₀ : a <= 18  [type from Lean state]
    assert (a <= 18) by { // @tac 2562-2570
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2562-2570 exec 511)
      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℤ) * (-1 : ℤ) < (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 < 1); (2 > 0)
      // UNCITED-APPLIED add_lt_of_neg_of_le ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(2 : ℤ) * (-1 : ℤ) + ((0 : ℤ) + (1 : ℤ) - b) + (a + b + (1 : ℤ) - (19 : ℤ)) < (0 : ℤ)`
      cert_identity_2(a, b);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×15 [exec 511 2562-2570]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×3, sub_nonpos_of_le ×3, Int.add_one_le_iff ×3, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Linarith.mul_neg ×1
      // UNCITED-APPLIED internal ×93 [exec 512 2562-2570]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×7, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×6, Mathlib.Meta.NormNum.isInt_add ×6, Mathlib.Meta.NormNum.isNat_ofNat ×5 (+30 more heads, ×69)
      // UNCITED-APPLIED internal ×5 [exec 513 2562-2570]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
    }
    // have h₁₁ : b <= 18  [type from Lean state]
    assert (b <= 18) by { // @tac 2605-2613
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2605-2613 exec 530)
      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℤ) * (-1 : ℤ) < (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 < 1); (2 > 0)
      // UNCITED-APPLIED add_lt_of_neg_of_le ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(2 : ℤ) * (-1 : ℤ) + ((0 : ℤ) + (1 : ℤ) - a) + (a + b + (1 : ℤ) - (19 : ℤ)) < (0 : ℤ)`
      cert_identity_3(a, b);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×15 [exec 530 2605-2613]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×3, sub_nonpos_of_le ×3, Int.add_one_le_iff ×3, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Linarith.mul_neg ×1
      // UNCITED-APPLIED internal ×92 [exec 531 2605-2613]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×7, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×6, Mathlib.Meta.NormNum.isInt_add ×6, Mathlib.Meta.NormNum.isNat_ofNat ×5 (+30 more heads, ×68)
      // UNCITED-APPLIED internal ×5 [exec 532 2605-2613]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
    }
    // have h₁₂ : a >= 1  [type from Lean state]
    assert (a >= 1) by { // @tac 2647-2655
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2647-2655 exec 549)
      // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(-1 : ℤ) + ((0 : ℤ) + (1 : ℤ) - a) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
      cert_identity_4(a, b);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×11 [exec 549 2647-2655]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×39 [exec 550 2647-2655]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×4, Mathlib.Tactic.Ring.add_pf_zero_add ×3, Mathlib.Tactic.Ring.add_pf_add_overlap_zero ×3, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+22 more heads, ×27)
    }
    // have h₁₃ : b >= 1  [type from Lean state]
    assert (b >= 1) by { // @tac 2689-2697
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2689-2697 exec 567)
      // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(-1 : ℤ) + ((0 : ℤ) + (1 : ℤ) - b) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
      cert_identity_5(a, b);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×11 [exec 567 2689-2697]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, Int.add_one_le_iff ×2, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×39 [exec 568 2689-2697]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×4, Mathlib.Tactic.Ring.add_pf_zero_add ×3, Mathlib.Tactic.Ring.add_pf_add_overlap_zero ×3, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+22 more heads, ×27)
    }
    // [TACTIC: «_<;>_» a <;> interval_cases b <;> norm_num at h₈ ⊢ <;> try contradiction contradiction <;> omega omega]
    // [TACTIC: Interval_cases a]
    // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
    // UNCITED-APPLIED internal ×40 [exec 584 2702-2718]: applications made inside the tactic's own automation, not stated — le_antisymm ×8, Int.le_sub_one_of_not_le ×8; machinery/glue: Eq.symm ×18, Mathlib.Meta.NormNum.IsNat.to_raw_eq ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Tactic.IntervalCases.of_le_right ×1 (+1 more heads, ×1)
    // GAP: sub-goal of `interval_cases` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((1 : ℤ) ^ (6 : ℕ) * b + (3 : ℤ) * (1 : ℤ) ^ (5 : // @tac 2723-2739
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((1 : ℤ) ^ (6 : ℕ) * (1 : ℤ) + (3 : ℤ) * (1 : ℤ)  // @tac 2744-2764
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((1 : ℤ) ^ (6 : ℕ) * (2 : ℤ) + (3 : ℤ) * (1 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×38 [exec 653 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.isNat_mul ×7, Mathlib.Meta.NormNum.isNat_pow ×6, Mathlib.Meta.NormNum.isNat_add ×5 (+7 more heads, ×12)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((1 : ℤ) ^ (6 : ℕ) * (3 : ℤ) + (3 : ℤ) * (1 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×53 [exec 656 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.isNat_mul ×7, Mathlib.Meta.NormNum.IsNatPowT.run ×6 (+8 more heads, ×24)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((1 : ℤ) ^ (6 : ℕ) * (4 : ℤ) + (3 : ℤ) * (1 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×53 [exec 659 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.isNat_mul ×7, Mathlib.Meta.NormNum.IsNatPowT.run ×6 (+8 more heads, ×24)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((1 : ℤ) ^ (6 : ℕ) * (5 : ℤ) + (3 : ℤ) * (1 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×53 [exec 662 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.isNat_mul ×7, Mathlib.Meta.NormNum.IsNatPowT.run ×6 (+8 more heads, ×24)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((1 : ℤ) ^ (6 : ℕ) * (6 : ℤ) + (3 : ℤ) * (1 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×53 [exec 665 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.isNat_mul ×7, Mathlib.Meta.NormNum.IsNatPowT.run ×6 (+8 more heads, ×24)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((1 : ℤ) ^ (6 : ℕ) * (7 : ℤ) + (3 : ℤ) * (1 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×53 [exec 668 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.isNat_mul ×7, Mathlib.Meta.NormNum.IsNatPowT.run ×6 (+8 more heads, ×24)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((1 : ℤ) ^ (6 : ℕ) * (8 : ℤ) + (3 : ℤ) * (1 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×52 [exec 671 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.isNat_mul ×7, Mathlib.Meta.NormNum.IsNatPowT.run ×6 (+8 more heads, ×23)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((1 : ℤ) ^ (6 : ℕ) * (9 : ℤ) + (3 : ℤ) * (1 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×53 [exec 674 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.isNat_mul ×7, Mathlib.Meta.NormNum.IsNatPowT.run ×6 (+8 more heads, ×24)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((1 : ℤ) ^ (6 : ℕ) * (10 : ℤ) + (3 : ℤ) * (1 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×53 [exec 677 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.isNat_mul ×7, Mathlib.Meta.NormNum.IsNatPowT.run ×6 (+8 more heads, ×24)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((1 : ℤ) ^ (6 : ℕ) * (11 : ℤ) + (3 : ℤ) * (1 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×53 [exec 680 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.isNat_mul ×7, Mathlib.Meta.NormNum.IsNatPowT.run ×6 (+8 more heads, ×24)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((1 : ℤ) ^ (6 : ℕ) * (12 : ℤ) + (3 : ℤ) * (1 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×53 [exec 683 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.isNat_mul ×7, Mathlib.Meta.NormNum.IsNatPowT.run ×6 (+8 more heads, ×24)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((1 : ℤ) ^ (6 : ℕ) * (13 : ℤ) + (3 : ℤ) * (1 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×53 [exec 686 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.isNat_mul ×7, Mathlib.Meta.NormNum.IsNatPowT.run ×6 (+8 more heads, ×24)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((1 : ℤ) ^ (6 : ℕ) * (14 : ℤ) + (3 : ℤ) * (1 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×53 [exec 689 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.isNat_mul ×7, Mathlib.Meta.NormNum.IsNatPowT.run ×6 (+8 more heads, ×24)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((1 : ℤ) ^ (6 : ℕ) * (15 : ℤ) + (3 : ℤ) * (1 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×53 [exec 692 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.isNat_mul ×7, Mathlib.Meta.NormNum.IsNatPowT.run ×6 (+8 more heads, ×24)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((1 : ℤ) ^ (6 : ℕ) * (16 : ℤ) + (3 : ℤ) * (1 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×53 [exec 695 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.isNat_mul ×7, Mathlib.Meta.NormNum.IsNatPowT.run ×6 (+8 more heads, ×24)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((1 : ℤ) ^ (6 : ℕ) * (17 : ℤ) + (3 : ℤ) * (1 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×53 [exec 698 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.isNat_mul ×7, Mathlib.Meta.NormNum.IsNatPowT.run ×6 (+8 more heads, ×24)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((1 : ℤ) ^ (6 : ℕ) * (18 : ℤ) + (3 : ℤ) * (1 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×53 [exec 701 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.isNat_mul ×7, Mathlib.Meta.NormNum.IsNatPowT.run ×6 (+8 more heads, ×24)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // UNCITED-APPLIED internal ×6 [exec 704 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
    // GAP: sub-goal of `interval_cases` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((2 : ℤ) ^ (6 : ℕ) * b + (3 : ℤ) * (2 : ℤ) ^ (5 : // @tac 2723-2739
    // UNCITED-APPLIED internal ×40 [exec 593 2723-2739]: applications made inside the tactic's own automation, not stated — le_antisymm ×8, Int.le_sub_one_of_not_le ×8; machinery/glue: Eq.symm ×18, Mathlib.Meta.NormNum.IsNat.to_raw_eq ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Tactic.IntervalCases.of_le_right ×1 (+1 more heads, ×1)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((2 : ℤ) ^ (6 : ℕ) * (1 : ℤ) + (3 : ℤ) * (2 : ℤ)  // @tac 2744-2764
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((2 : ℤ) ^ (6 : ℕ) * (2 : ℤ) + (3 : ℤ) * (2 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×53 [exec 707 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.isNat_mul ×7, Mathlib.Meta.NormNum.IsNatPowT.run ×6 (+8 more heads, ×24)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((2 : ℤ) ^ (6 : ℕ) * (3 : ℤ) + (3 : ℤ) * (2 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×46 [exec 710 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.isNat_mul ×7, Mathlib.Meta.NormNum.isNat_pow ×6, Mathlib.Meta.NormNum.IsNatPowT.run ×6 (+7 more heads, ×19)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((2 : ℤ) ^ (6 : ℕ) * (4 : ℤ) + (3 : ℤ) * (2 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 713 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((2 : ℤ) ^ (6 : ℕ) * (5 : ℤ) + (3 : ℤ) * (2 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 716 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((2 : ℤ) ^ (6 : ℕ) * (6 : ℤ) + (3 : ℤ) * (2 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 719 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((2 : ℤ) ^ (6 : ℕ) * (7 : ℤ) + (3 : ℤ) * (2 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 722 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((2 : ℤ) ^ (6 : ℕ) * (8 : ℤ) + (3 : ℤ) * (2 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×57 [exec 725 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×26)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((2 : ℤ) ^ (6 : ℕ) * (9 : ℤ) + (3 : ℤ) * (2 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 728 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((2 : ℤ) ^ (6 : ℕ) * (10 : ℤ) + (3 : ℤ) * (2 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 731 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((2 : ℤ) ^ (6 : ℕ) * (11 : ℤ) + (3 : ℤ) * (2 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 734 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((2 : ℤ) ^ (6 : ℕ) * (12 : ℤ) + (3 : ℤ) * (2 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 737 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((2 : ℤ) ^ (6 : ℕ) * (13 : ℤ) + (3 : ℤ) * (2 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 740 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((2 : ℤ) ^ (6 : ℕ) * (14 : ℤ) + (3 : ℤ) * (2 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 743 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((2 : ℤ) ^ (6 : ℕ) * (15 : ℤ) + (3 : ℤ) * (2 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 746 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((2 : ℤ) ^ (6 : ℕ) * (16 : ℤ) + (3 : ℤ) * (2 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 749 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((2 : ℤ) ^ (6 : ℕ) * (17 : ℤ) + (3 : ℤ) * (2 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 752 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((2 : ℤ) ^ (6 : ℕ) * (18 : ℤ) + (3 : ℤ) * (2 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 755 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // UNCITED-APPLIED internal ×6 [exec 758 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
    // GAP: sub-goal of `interval_cases` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((3 : ℤ) ^ (6 : ℕ) * b + (3 : ℤ) * (3 : ℤ) ^ (5 : // @tac 2723-2739
    // UNCITED-APPLIED internal ×40 [exec 596 2723-2739]: applications made inside the tactic's own automation, not stated — le_antisymm ×8, Int.le_sub_one_of_not_le ×8; machinery/glue: Eq.symm ×18, Mathlib.Meta.NormNum.IsNat.to_raw_eq ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Tactic.IntervalCases.of_le_right ×1 (+1 more heads, ×1)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((3 : ℤ) ^ (6 : ℕ) * (1 : ℤ) + (3 : ℤ) * (3 : ℤ)  // @tac 2744-2764
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((3 : ℤ) ^ (6 : ℕ) * (2 : ℤ) + (3 : ℤ) * (3 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×53 [exec 761 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.isNat_mul ×7, Mathlib.Meta.NormNum.IsNatPowT.run ×6 (+8 more heads, ×24)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((3 : ℤ) ^ (6 : ℕ) * (3 : ℤ) + (3 : ℤ) * (3 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 764 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((3 : ℤ) ^ (6 : ℕ) * (4 : ℤ) + (3 : ℤ) * (3 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×46 [exec 767 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.isNat_mul ×7, Mathlib.Meta.NormNum.isNat_pow ×6, Mathlib.Meta.NormNum.IsNatPowT.run ×6 (+7 more heads, ×19)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((3 : ℤ) ^ (6 : ℕ) * (5 : ℤ) + (3 : ℤ) * (3 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 770 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((3 : ℤ) ^ (6 : ℕ) * (6 : ℤ) + (3 : ℤ) * (3 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 773 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((3 : ℤ) ^ (6 : ℕ) * (7 : ℤ) + (3 : ℤ) * (3 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 776 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((3 : ℤ) ^ (6 : ℕ) * (8 : ℤ) + (3 : ℤ) * (3 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×57 [exec 779 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×26)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((3 : ℤ) ^ (6 : ℕ) * (9 : ℤ) + (3 : ℤ) * (3 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 782 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((3 : ℤ) ^ (6 : ℕ) * (10 : ℤ) + (3 : ℤ) * (3 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 785 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((3 : ℤ) ^ (6 : ℕ) * (11 : ℤ) + (3 : ℤ) * (3 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 788 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((3 : ℤ) ^ (6 : ℕ) * (12 : ℤ) + (3 : ℤ) * (3 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 791 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((3 : ℤ) ^ (6 : ℕ) * (13 : ℤ) + (3 : ℤ) * (3 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 794 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((3 : ℤ) ^ (6 : ℕ) * (14 : ℤ) + (3 : ℤ) * (3 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 797 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((3 : ℤ) ^ (6 : ℕ) * (15 : ℤ) + (3 : ℤ) * (3 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 800 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((3 : ℤ) ^ (6 : ℕ) * (16 : ℤ) + (3 : ℤ) * (3 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 803 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((3 : ℤ) ^ (6 : ℕ) * (17 : ℤ) + (3 : ℤ) * (3 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 806 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((3 : ℤ) ^ (6 : ℕ) * (18 : ℤ) + (3 : ℤ) * (3 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 809 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // UNCITED-APPLIED internal ×6 [exec 812 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
    // GAP: sub-goal of `interval_cases` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((4 : ℤ) ^ (6 : ℕ) * b + (3 : ℤ) * (4 : ℤ) ^ (5 : // @tac 2723-2739
    // UNCITED-APPLIED internal ×40 [exec 599 2723-2739]: applications made inside the tactic's own automation, not stated — le_antisymm ×8, Int.le_sub_one_of_not_le ×8; machinery/glue: Eq.symm ×18, Mathlib.Meta.NormNum.IsNat.to_raw_eq ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Tactic.IntervalCases.of_le_right ×1 (+1 more heads, ×1)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((4 : ℤ) ^ (6 : ℕ) * (1 : ℤ) + (3 : ℤ) * (4 : ℤ)  // @tac 2744-2764
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((4 : ℤ) ^ (6 : ℕ) * (2 : ℤ) + (3 : ℤ) * (4 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×53 [exec 815 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.isNat_mul ×7, Mathlib.Meta.NormNum.IsNatPowT.run ×6 (+8 more heads, ×24)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((4 : ℤ) ^ (6 : ℕ) * (3 : ℤ) + (3 : ℤ) * (4 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 818 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((4 : ℤ) ^ (6 : ℕ) * (4 : ℤ) + (3 : ℤ) * (4 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 821 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((4 : ℤ) ^ (6 : ℕ) * (5 : ℤ) + (3 : ℤ) * (4 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×46 [exec 824 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.isNat_mul ×7, Mathlib.Meta.NormNum.isNat_pow ×6, Mathlib.Meta.NormNum.IsNatPowT.run ×6 (+7 more heads, ×19)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((4 : ℤ) ^ (6 : ℕ) * (6 : ℤ) + (3 : ℤ) * (4 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 827 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((4 : ℤ) ^ (6 : ℕ) * (7 : ℤ) + (3 : ℤ) * (4 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 830 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((4 : ℤ) ^ (6 : ℕ) * (8 : ℤ) + (3 : ℤ) * (4 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×57 [exec 833 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×26)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((4 : ℤ) ^ (6 : ℕ) * (9 : ℤ) + (3 : ℤ) * (4 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 836 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((4 : ℤ) ^ (6 : ℕ) * (10 : ℤ) + (3 : ℤ) * (4 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 839 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((4 : ℤ) ^ (6 : ℕ) * (11 : ℤ) + (3 : ℤ) * (4 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 842 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((4 : ℤ) ^ (6 : ℕ) * (12 : ℤ) + (3 : ℤ) * (4 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 845 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((4 : ℤ) ^ (6 : ℕ) * (13 : ℤ) + (3 : ℤ) * (4 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 848 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((4 : ℤ) ^ (6 : ℕ) * (14 : ℤ) + (3 : ℤ) * (4 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 851 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((4 : ℤ) ^ (6 : ℕ) * (15 : ℤ) + (3 : ℤ) * (4 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 854 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((4 : ℤ) ^ (6 : ℕ) * (16 : ℤ) + (3 : ℤ) * (4 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 857 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((4 : ℤ) ^ (6 : ℕ) * (17 : ℤ) + (3 : ℤ) * (4 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 860 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((4 : ℤ) ^ (6 : ℕ) * (18 : ℤ) + (3 : ℤ) * (4 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 863 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // UNCITED-APPLIED internal ×6 [exec 866 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
    // GAP: sub-goal of `interval_cases` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((5 : ℤ) ^ (6 : ℕ) * b + (3 : ℤ) * (5 : ℤ) ^ (5 : // @tac 2723-2739
    // UNCITED-APPLIED internal ×40 [exec 602 2723-2739]: applications made inside the tactic's own automation, not stated — le_antisymm ×8, Int.le_sub_one_of_not_le ×8; machinery/glue: Eq.symm ×18, Mathlib.Meta.NormNum.IsNat.to_raw_eq ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Tactic.IntervalCases.of_le_right ×1 (+1 more heads, ×1)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((5 : ℤ) ^ (6 : ℕ) * (1 : ℤ) + (3 : ℤ) * (5 : ℤ)  // @tac 2744-2764
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((5 : ℤ) ^ (6 : ℕ) * (2 : ℤ) + (3 : ℤ) * (5 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×53 [exec 869 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.isNat_mul ×7, Mathlib.Meta.NormNum.IsNatPowT.run ×6 (+8 more heads, ×24)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((5 : ℤ) ^ (6 : ℕ) * (3 : ℤ) + (3 : ℤ) * (5 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 872 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((5 : ℤ) ^ (6 : ℕ) * (4 : ℤ) + (3 : ℤ) * (5 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 875 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((5 : ℤ) ^ (6 : ℕ) * (5 : ℤ) + (3 : ℤ) * (5 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 878 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((5 : ℤ) ^ (6 : ℕ) * (6 : ℤ) + (3 : ℤ) * (5 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×46 [exec 881 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.isNat_mul ×7, Mathlib.Meta.NormNum.isNat_pow ×6, Mathlib.Meta.NormNum.IsNatPowT.run ×6 (+7 more heads, ×19)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((5 : ℤ) ^ (6 : ℕ) * (7 : ℤ) + (3 : ℤ) * (5 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 884 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((5 : ℤ) ^ (6 : ℕ) * (8 : ℤ) + (3 : ℤ) * (5 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×57 [exec 887 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×26)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((5 : ℤ) ^ (6 : ℕ) * (9 : ℤ) + (3 : ℤ) * (5 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 890 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((5 : ℤ) ^ (6 : ℕ) * (10 : ℤ) + (3 : ℤ) * (5 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 893 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((5 : ℤ) ^ (6 : ℕ) * (11 : ℤ) + (3 : ℤ) * (5 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 896 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((5 : ℤ) ^ (6 : ℕ) * (12 : ℤ) + (3 : ℤ) * (5 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 899 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((5 : ℤ) ^ (6 : ℕ) * (13 : ℤ) + (3 : ℤ) * (5 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 902 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((5 : ℤ) ^ (6 : ℕ) * (14 : ℤ) + (3 : ℤ) * (5 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 905 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((5 : ℤ) ^ (6 : ℕ) * (15 : ℤ) + (3 : ℤ) * (5 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 908 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((5 : ℤ) ^ (6 : ℕ) * (16 : ℤ) + (3 : ℤ) * (5 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 911 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((5 : ℤ) ^ (6 : ℕ) * (17 : ℤ) + (3 : ℤ) * (5 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 914 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((5 : ℤ) ^ (6 : ℕ) * (18 : ℤ) + (3 : ℤ) * (5 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 917 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // UNCITED-APPLIED internal ×6 [exec 920 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
    // GAP: sub-goal of `interval_cases` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((6 : ℤ) ^ (6 : ℕ) * b + (3 : ℤ) * (6 : ℤ) ^ (5 : // @tac 2723-2739
    // UNCITED-APPLIED internal ×40 [exec 605 2723-2739]: applications made inside the tactic's own automation, not stated — le_antisymm ×8, Int.le_sub_one_of_not_le ×8; machinery/glue: Eq.symm ×18, Mathlib.Meta.NormNum.IsNat.to_raw_eq ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Tactic.IntervalCases.of_le_right ×1 (+1 more heads, ×1)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((6 : ℤ) ^ (6 : ℕ) * (1 : ℤ) + (3 : ℤ) * (6 : ℤ)  // @tac 2744-2764
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((6 : ℤ) ^ (6 : ℕ) * (2 : ℤ) + (3 : ℤ) * (6 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×53 [exec 923 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.isNat_mul ×7, Mathlib.Meta.NormNum.IsNatPowT.run ×6 (+8 more heads, ×24)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((6 : ℤ) ^ (6 : ℕ) * (3 : ℤ) + (3 : ℤ) * (6 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 926 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((6 : ℤ) ^ (6 : ℕ) * (4 : ℤ) + (3 : ℤ) * (6 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 929 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((6 : ℤ) ^ (6 : ℕ) * (5 : ℤ) + (3 : ℤ) * (6 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 932 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((6 : ℤ) ^ (6 : ℕ) * (6 : ℤ) + (3 : ℤ) * (6 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 935 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((6 : ℤ) ^ (6 : ℕ) * (7 : ℤ) + (3 : ℤ) * (6 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×46 [exec 938 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.isNat_mul ×7, Mathlib.Meta.NormNum.isNat_pow ×6, Mathlib.Meta.NormNum.IsNatPowT.run ×6 (+7 more heads, ×19)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((6 : ℤ) ^ (6 : ℕ) * (8 : ℤ) + (3 : ℤ) * (6 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×57 [exec 941 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×26)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((6 : ℤ) ^ (6 : ℕ) * (9 : ℤ) + (3 : ℤ) * (6 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 944 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((6 : ℤ) ^ (6 : ℕ) * (10 : ℤ) + (3 : ℤ) * (6 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 947 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((6 : ℤ) ^ (6 : ℕ) * (11 : ℤ) + (3 : ℤ) * (6 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 950 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((6 : ℤ) ^ (6 : ℕ) * (12 : ℤ) + (3 : ℤ) * (6 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 953 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((6 : ℤ) ^ (6 : ℕ) * (13 : ℤ) + (3 : ℤ) * (6 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 956 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((6 : ℤ) ^ (6 : ℕ) * (14 : ℤ) + (3 : ℤ) * (6 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 959 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((6 : ℤ) ^ (6 : ℕ) * (15 : ℤ) + (3 : ℤ) * (6 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 962 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((6 : ℤ) ^ (6 : ℕ) * (16 : ℤ) + (3 : ℤ) * (6 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 965 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((6 : ℤ) ^ (6 : ℕ) * (17 : ℤ) + (3 : ℤ) * (6 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 968 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((6 : ℤ) ^ (6 : ℕ) * (18 : ℤ) + (3 : ℤ) * (6 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 971 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // UNCITED-APPLIED internal ×6 [exec 974 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
    // GAP: sub-goal of `interval_cases` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((7 : ℤ) ^ (6 : ℕ) * b + (3 : ℤ) * (7 : ℤ) ^ (5 : // @tac 2723-2739
    // UNCITED-APPLIED internal ×40 [exec 608 2723-2739]: applications made inside the tactic's own automation, not stated — le_antisymm ×8, Int.le_sub_one_of_not_le ×8; machinery/glue: Eq.symm ×18, Mathlib.Meta.NormNum.IsNat.to_raw_eq ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Tactic.IntervalCases.of_le_right ×1 (+1 more heads, ×1)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((7 : ℤ) ^ (6 : ℕ) * (1 : ℤ) + (3 : ℤ) * (7 : ℤ)  // @tac 2744-2764
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((7 : ℤ) ^ (6 : ℕ) * (2 : ℤ) + (3 : ℤ) * (7 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×52 [exec 977 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.isNat_mul ×7, Mathlib.Meta.NormNum.IsNatPowT.run ×6 (+8 more heads, ×23)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((7 : ℤ) ^ (6 : ℕ) * (3 : ℤ) + (3 : ℤ) * (7 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×57 [exec 980 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×26)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((7 : ℤ) ^ (6 : ℕ) * (4 : ℤ) + (3 : ℤ) * (7 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×57 [exec 983 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×26)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((7 : ℤ) ^ (6 : ℕ) * (5 : ℤ) + (3 : ℤ) * (7 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×57 [exec 986 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×26)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((7 : ℤ) ^ (6 : ℕ) * (6 : ℤ) + (3 : ℤ) * (7 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×57 [exec 989 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×26)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((7 : ℤ) ^ (6 : ℕ) * (7 : ℤ) + (3 : ℤ) * (7 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×57 [exec 992 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×26)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `contradiction` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): False // @tac 2773-2800 // @tac 2769-2800 // @tac 2773-2786
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // UNCITED-APPLIED internal ×1 [exec 1640 2773-2786]: applications made inside the tactic's own automation, not stated — of_decide_eq_false ×1
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((7 : ℤ) ^ (6 : ℕ) * (8 : ℤ) + (3 : ℤ) * (7 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×45 [exec 995 2744-2764]: applications made inside the tactic's own automation, not stated — not_not_intro ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.isNat_mul ×7, Mathlib.Meta.NormNum.isNat_pow ×6, Mathlib.Meta.NormNum.IsNatPowT.run ×6 (+6 more heads, ×17)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((7 : ℤ) ^ (6 : ℕ) * (9 : ℤ) + (3 : ℤ) * (7 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×57 [exec 998 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×26)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((7 : ℤ) ^ (6 : ℕ) * (10 : ℤ) + (3 : ℤ) * (7 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×57 [exec 1001 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×26)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((7 : ℤ) ^ (6 : ℕ) * (11 : ℤ) + (3 : ℤ) * (7 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×57 [exec 1004 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×26)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((7 : ℤ) ^ (6 : ℕ) * (12 : ℤ) + (3 : ℤ) * (7 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×57 [exec 1007 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×26)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((7 : ℤ) ^ (6 : ℕ) * (13 : ℤ) + (3 : ℤ) * (7 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1010 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((7 : ℤ) ^ (6 : ℕ) * (14 : ℤ) + (3 : ℤ) * (7 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1013 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((7 : ℤ) ^ (6 : ℕ) * (15 : ℤ) + (3 : ℤ) * (7 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1016 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((7 : ℤ) ^ (6 : ℕ) * (16 : ℤ) + (3 : ℤ) * (7 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1019 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((7 : ℤ) ^ (6 : ℕ) * (17 : ℤ) + (3 : ℤ) * (7 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1022 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((7 : ℤ) ^ (6 : ℕ) * (18 : ℤ) + (3 : ℤ) * (7 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1025 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // UNCITED-APPLIED internal ×6 [exec 1028 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
    // GAP: sub-goal of `interval_cases` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((8 : ℤ) ^ (6 : ℕ) * b + (3 : ℤ) * (8 : ℤ) ^ (5 : // @tac 2723-2739
    // UNCITED-APPLIED internal ×40 [exec 611 2723-2739]: applications made inside the tactic's own automation, not stated — le_antisymm ×8, Int.le_sub_one_of_not_le ×8; machinery/glue: Eq.symm ×18, Mathlib.Meta.NormNum.IsNat.to_raw_eq ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Tactic.IntervalCases.of_le_right ×1 (+1 more heads, ×1)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((8 : ℤ) ^ (6 : ℕ) * (1 : ℤ) + (3 : ℤ) * (8 : ℤ)  // @tac 2744-2764
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((8 : ℤ) ^ (6 : ℕ) * (2 : ℤ) + (3 : ℤ) * (8 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×53 [exec 1031 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.isNat_mul ×7, Mathlib.Meta.NormNum.IsNatPowT.run ×6 (+8 more heads, ×24)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((8 : ℤ) ^ (6 : ℕ) * (3 : ℤ) + (3 : ℤ) * (8 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 1034 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((8 : ℤ) ^ (6 : ℕ) * (4 : ℤ) + (3 : ℤ) * (8 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 1037 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((8 : ℤ) ^ (6 : ℕ) * (5 : ℤ) + (3 : ℤ) * (8 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 1040 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((8 : ℤ) ^ (6 : ℕ) * (6 : ℤ) + (3 : ℤ) * (8 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 1043 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((8 : ℤ) ^ (6 : ℕ) * (7 : ℤ) + (3 : ℤ) * (8 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 1046 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((8 : ℤ) ^ (6 : ℕ) * (8 : ℤ) + (3 : ℤ) * (8 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×57 [exec 1049 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×26)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((8 : ℤ) ^ (6 : ℕ) * (9 : ℤ) + (3 : ℤ) * (8 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×46 [exec 1052 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.isNat_mul ×7, Mathlib.Meta.NormNum.isNat_pow ×6, Mathlib.Meta.NormNum.IsNatPowT.run ×6 (+7 more heads, ×19)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((8 : ℤ) ^ (6 : ℕ) * (10 : ℤ) + (3 : ℤ) * (8 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 1055 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((8 : ℤ) ^ (6 : ℕ) * (11 : ℤ) + (3 : ℤ) * (8 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 1058 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((8 : ℤ) ^ (6 : ℕ) * (12 : ℤ) + (3 : ℤ) * (8 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1061 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((8 : ℤ) ^ (6 : ℕ) * (13 : ℤ) + (3 : ℤ) * (8 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1064 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((8 : ℤ) ^ (6 : ℕ) * (14 : ℤ) + (3 : ℤ) * (8 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1067 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((8 : ℤ) ^ (6 : ℕ) * (15 : ℤ) + (3 : ℤ) * (8 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1070 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((8 : ℤ) ^ (6 : ℕ) * (16 : ℤ) + (3 : ℤ) * (8 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1073 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((8 : ℤ) ^ (6 : ℕ) * (17 : ℤ) + (3 : ℤ) * (8 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1076 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((8 : ℤ) ^ (6 : ℕ) * (18 : ℤ) + (3 : ℤ) * (8 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1079 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // UNCITED-APPLIED internal ×6 [exec 1082 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
    // GAP: sub-goal of `interval_cases` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((9 : ℤ) ^ (6 : ℕ) * b + (3 : ℤ) * (9 : ℤ) ^ (5 : // @tac 2723-2739
    // UNCITED-APPLIED internal ×40 [exec 614 2723-2739]: applications made inside the tactic's own automation, not stated — le_antisymm ×8, Int.le_sub_one_of_not_le ×8; machinery/glue: Eq.symm ×18, Mathlib.Meta.NormNum.IsNat.to_raw_eq ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Tactic.IntervalCases.of_le_right ×1 (+1 more heads, ×1)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((9 : ℤ) ^ (6 : ℕ) * (1 : ℤ) + (3 : ℤ) * (9 : ℤ)  // @tac 2744-2764
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((9 : ℤ) ^ (6 : ℕ) * (2 : ℤ) + (3 : ℤ) * (9 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×53 [exec 1085 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.isNat_mul ×7, Mathlib.Meta.NormNum.IsNatPowT.run ×6 (+8 more heads, ×24)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((9 : ℤ) ^ (6 : ℕ) * (3 : ℤ) + (3 : ℤ) * (9 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 1088 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((9 : ℤ) ^ (6 : ℕ) * (4 : ℤ) + (3 : ℤ) * (9 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 1091 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((9 : ℤ) ^ (6 : ℕ) * (5 : ℤ) + (3 : ℤ) * (9 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 1094 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((9 : ℤ) ^ (6 : ℕ) * (6 : ℤ) + (3 : ℤ) * (9 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 1097 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((9 : ℤ) ^ (6 : ℕ) * (7 : ℤ) + (3 : ℤ) * (9 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 1100 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((9 : ℤ) ^ (6 : ℕ) * (8 : ℤ) + (3 : ℤ) * (9 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×57 [exec 1103 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×26)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((9 : ℤ) ^ (6 : ℕ) * (9 : ℤ) + (3 : ℤ) * (9 : ℤ)  // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 1106 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((9 : ℤ) ^ (6 : ℕ) * (10 : ℤ) + (3 : ℤ) * (9 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×46 [exec 1109 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.isNat_mul ×7, Mathlib.Meta.NormNum.isNat_pow ×6, Mathlib.Meta.NormNum.IsNatPowT.run ×6 (+7 more heads, ×19)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((9 : ℤ) ^ (6 : ℕ) * (11 : ℤ) + (3 : ℤ) * (9 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1112 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((9 : ℤ) ^ (6 : ℕ) * (12 : ℤ) + (3 : ℤ) * (9 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1115 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((9 : ℤ) ^ (6 : ℕ) * (13 : ℤ) + (3 : ℤ) * (9 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1118 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((9 : ℤ) ^ (6 : ℕ) * (14 : ℤ) + (3 : ℤ) * (9 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1121 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((9 : ℤ) ^ (6 : ℕ) * (15 : ℤ) + (3 : ℤ) * (9 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1124 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((9 : ℤ) ^ (6 : ℕ) * (16 : ℤ) + (3 : ℤ) * (9 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1127 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((9 : ℤ) ^ (6 : ℕ) * (17 : ℤ) + (3 : ℤ) * (9 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1130 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((9 : ℤ) ^ (6 : ℕ) * (18 : ℤ) + (3 : ℤ) * (9 : ℤ) // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1133 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // UNCITED-APPLIED internal ×6 [exec 1136 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
    // GAP: sub-goal of `interval_cases` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((10 : ℤ) ^ (6 : ℕ) * b + (3 : ℤ) * (10 : ℤ) ^ (5 // @tac 2723-2739
    // UNCITED-APPLIED internal ×40 [exec 617 2723-2739]: applications made inside the tactic's own automation, not stated — le_antisymm ×8, Int.le_sub_one_of_not_le ×8; machinery/glue: Eq.symm ×18, Mathlib.Meta.NormNum.IsNat.to_raw_eq ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Tactic.IntervalCases.of_le_right ×1 (+1 more heads, ×1)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((10 : ℤ) ^ (6 : ℕ) * (1 : ℤ) + (3 : ℤ) * (10 : ℤ // @tac 2744-2764
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((10 : ℤ) ^ (6 : ℕ) * (2 : ℤ) + (3 : ℤ) * (10 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×53 [exec 1139 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.isNat_mul ×7, Mathlib.Meta.NormNum.IsNatPowT.run ×6 (+8 more heads, ×24)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((10 : ℤ) ^ (6 : ℕ) * (3 : ℤ) + (3 : ℤ) * (10 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 1142 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((10 : ℤ) ^ (6 : ℕ) * (4 : ℤ) + (3 : ℤ) * (10 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 1145 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((10 : ℤ) ^ (6 : ℕ) * (5 : ℤ) + (3 : ℤ) * (10 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 1148 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((10 : ℤ) ^ (6 : ℕ) * (6 : ℤ) + (3 : ℤ) * (10 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 1151 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((10 : ℤ) ^ (6 : ℕ) * (7 : ℤ) + (3 : ℤ) * (10 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 1154 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((10 : ℤ) ^ (6 : ℕ) * (8 : ℤ) + (3 : ℤ) * (10 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×57 [exec 1157 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×26)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((10 : ℤ) ^ (6 : ℕ) * (9 : ℤ) + (3 : ℤ) * (10 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 1160 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((10 : ℤ) ^ (6 : ℕ) * (10 : ℤ) + (3 : ℤ) * (10 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1163 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((10 : ℤ) ^ (6 : ℕ) * (11 : ℤ) + (3 : ℤ) * (10 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×5 [exec 1166 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((10 : ℤ) ^ (6 : ℕ) * (12 : ℤ) + (3 : ℤ) * (10 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1169 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((10 : ℤ) ^ (6 : ℕ) * (13 : ℤ) + (3 : ℤ) * (10 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1172 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((10 : ℤ) ^ (6 : ℕ) * (14 : ℤ) + (3 : ℤ) * (10 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1175 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((10 : ℤ) ^ (6 : ℕ) * (15 : ℤ) + (3 : ℤ) * (10 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1178 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((10 : ℤ) ^ (6 : ℕ) * (16 : ℤ) + (3 : ℤ) * (10 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1181 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((10 : ℤ) ^ (6 : ℕ) * (17 : ℤ) + (3 : ℤ) * (10 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1184 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((10 : ℤ) ^ (6 : ℕ) * (18 : ℤ) + (3 : ℤ) * (10 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1187 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // UNCITED-APPLIED internal ×6 [exec 1190 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
    // GAP: sub-goal of `interval_cases` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((11 : ℤ) ^ (6 : ℕ) * b + (3 : ℤ) * (11 : ℤ) ^ (5 // @tac 2723-2739
    // UNCITED-APPLIED internal ×40 [exec 620 2723-2739]: applications made inside the tactic's own automation, not stated — le_antisymm ×8, Int.le_sub_one_of_not_le ×8; machinery/glue: Eq.symm ×18, Mathlib.Meta.NormNum.IsNat.to_raw_eq ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Tactic.IntervalCases.of_le_right ×1 (+1 more heads, ×1)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((11 : ℤ) ^ (6 : ℕ) * (1 : ℤ) + (3 : ℤ) * (11 : ℤ // @tac 2744-2764
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((11 : ℤ) ^ (6 : ℕ) * (2 : ℤ) + (3 : ℤ) * (11 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×53 [exec 1193 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.isNat_mul ×7, Mathlib.Meta.NormNum.IsNatPowT.run ×6 (+8 more heads, ×24)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((11 : ℤ) ^ (6 : ℕ) * (3 : ℤ) + (3 : ℤ) * (11 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 1196 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((11 : ℤ) ^ (6 : ℕ) * (4 : ℤ) + (3 : ℤ) * (11 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 1199 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((11 : ℤ) ^ (6 : ℕ) * (5 : ℤ) + (3 : ℤ) * (11 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 1202 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((11 : ℤ) ^ (6 : ℕ) * (6 : ℤ) + (3 : ℤ) * (11 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 1205 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((11 : ℤ) ^ (6 : ℕ) * (7 : ℤ) + (3 : ℤ) * (11 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 1208 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((11 : ℤ) ^ (6 : ℕ) * (8 : ℤ) + (3 : ℤ) * (11 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×57 [exec 1211 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×26)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((11 : ℤ) ^ (6 : ℕ) * (9 : ℤ) + (3 : ℤ) * (11 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1214 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((11 : ℤ) ^ (6 : ℕ) * (10 : ℤ) + (3 : ℤ) * (11 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1217 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((11 : ℤ) ^ (6 : ℕ) * (11 : ℤ) + (3 : ℤ) * (11 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1220 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((11 : ℤ) ^ (6 : ℕ) * (12 : ℤ) + (3 : ℤ) * (11 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×5 [exec 1223 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((11 : ℤ) ^ (6 : ℕ) * (13 : ℤ) + (3 : ℤ) * (11 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1226 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((11 : ℤ) ^ (6 : ℕ) * (14 : ℤ) + (3 : ℤ) * (11 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1229 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((11 : ℤ) ^ (6 : ℕ) * (15 : ℤ) + (3 : ℤ) * (11 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1232 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((11 : ℤ) ^ (6 : ℕ) * (16 : ℤ) + (3 : ℤ) * (11 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1235 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((11 : ℤ) ^ (6 : ℕ) * (17 : ℤ) + (3 : ℤ) * (11 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1238 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((11 : ℤ) ^ (6 : ℕ) * (18 : ℤ) + (3 : ℤ) * (11 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1241 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // UNCITED-APPLIED internal ×6 [exec 1244 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
    // GAP: sub-goal of `interval_cases` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((12 : ℤ) ^ (6 : ℕ) * b + (3 : ℤ) * (12 : ℤ) ^ (5 // @tac 2723-2739
    // UNCITED-APPLIED internal ×40 [exec 623 2723-2739]: applications made inside the tactic's own automation, not stated — le_antisymm ×8, Int.le_sub_one_of_not_le ×8; machinery/glue: Eq.symm ×18, Mathlib.Meta.NormNum.IsNat.to_raw_eq ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Tactic.IntervalCases.of_le_right ×1 (+1 more heads, ×1)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((12 : ℤ) ^ (6 : ℕ) * (1 : ℤ) + (3 : ℤ) * (12 : ℤ // @tac 2744-2764
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((12 : ℤ) ^ (6 : ℕ) * (2 : ℤ) + (3 : ℤ) * (12 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×53 [exec 1247 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.isNat_mul ×7, Mathlib.Meta.NormNum.IsNatPowT.run ×6 (+8 more heads, ×24)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((12 : ℤ) ^ (6 : ℕ) * (3 : ℤ) + (3 : ℤ) * (12 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 1250 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((12 : ℤ) ^ (6 : ℕ) * (4 : ℤ) + (3 : ℤ) * (12 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 1253 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((12 : ℤ) ^ (6 : ℕ) * (5 : ℤ) + (3 : ℤ) * (12 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 1256 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((12 : ℤ) ^ (6 : ℕ) * (6 : ℤ) + (3 : ℤ) * (12 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 1259 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((12 : ℤ) ^ (6 : ℕ) * (7 : ℤ) + (3 : ℤ) * (12 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 1262 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((12 : ℤ) ^ (6 : ℕ) * (8 : ℤ) + (3 : ℤ) * (12 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1265 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((12 : ℤ) ^ (6 : ℕ) * (9 : ℤ) + (3 : ℤ) * (12 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1268 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((12 : ℤ) ^ (6 : ℕ) * (10 : ℤ) + (3 : ℤ) * (12 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1271 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((12 : ℤ) ^ (6 : ℕ) * (11 : ℤ) + (3 : ℤ) * (12 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1274 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((12 : ℤ) ^ (6 : ℕ) * (12 : ℤ) + (3 : ℤ) * (12 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1277 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((12 : ℤ) ^ (6 : ℕ) * (13 : ℤ) + (3 : ℤ) * (12 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×5 [exec 1280 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((12 : ℤ) ^ (6 : ℕ) * (14 : ℤ) + (3 : ℤ) * (12 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1283 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((12 : ℤ) ^ (6 : ℕ) * (15 : ℤ) + (3 : ℤ) * (12 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1286 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((12 : ℤ) ^ (6 : ℕ) * (16 : ℤ) + (3 : ℤ) * (12 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1289 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((12 : ℤ) ^ (6 : ℕ) * (17 : ℤ) + (3 : ℤ) * (12 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1292 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((12 : ℤ) ^ (6 : ℕ) * (18 : ℤ) + (3 : ℤ) * (12 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1295 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // UNCITED-APPLIED internal ×6 [exec 1298 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
    // GAP: sub-goal of `interval_cases` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((13 : ℤ) ^ (6 : ℕ) * b + (3 : ℤ) * (13 : ℤ) ^ (5 // @tac 2723-2739
    // UNCITED-APPLIED internal ×40 [exec 626 2723-2739]: applications made inside the tactic's own automation, not stated — le_antisymm ×8, Int.le_sub_one_of_not_le ×8; machinery/glue: Eq.symm ×18, Mathlib.Meta.NormNum.IsNat.to_raw_eq ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Tactic.IntervalCases.of_le_right ×1 (+1 more heads, ×1)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((13 : ℤ) ^ (6 : ℕ) * (1 : ℤ) + (3 : ℤ) * (13 : ℤ // @tac 2744-2764
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((13 : ℤ) ^ (6 : ℕ) * (2 : ℤ) + (3 : ℤ) * (13 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×53 [exec 1301 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.isNat_mul ×7, Mathlib.Meta.NormNum.IsNatPowT.run ×6 (+8 more heads, ×24)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((13 : ℤ) ^ (6 : ℕ) * (3 : ℤ) + (3 : ℤ) * (13 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 1304 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((13 : ℤ) ^ (6 : ℕ) * (4 : ℤ) + (3 : ℤ) * (13 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 1307 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((13 : ℤ) ^ (6 : ℕ) * (5 : ℤ) + (3 : ℤ) * (13 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 1310 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((13 : ℤ) ^ (6 : ℕ) * (6 : ℤ) + (3 : ℤ) * (13 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 1313 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((13 : ℤ) ^ (6 : ℕ) * (7 : ℤ) + (3 : ℤ) * (13 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1316 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((13 : ℤ) ^ (6 : ℕ) * (8 : ℤ) + (3 : ℤ) * (13 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1319 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((13 : ℤ) ^ (6 : ℕ) * (9 : ℤ) + (3 : ℤ) * (13 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1322 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((13 : ℤ) ^ (6 : ℕ) * (10 : ℤ) + (3 : ℤ) * (13 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1325 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((13 : ℤ) ^ (6 : ℕ) * (11 : ℤ) + (3 : ℤ) * (13 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1328 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((13 : ℤ) ^ (6 : ℕ) * (12 : ℤ) + (3 : ℤ) * (13 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1331 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((13 : ℤ) ^ (6 : ℕ) * (13 : ℤ) + (3 : ℤ) * (13 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1334 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((13 : ℤ) ^ (6 : ℕ) * (14 : ℤ) + (3 : ℤ) * (13 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×5 [exec 1337 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((13 : ℤ) ^ (6 : ℕ) * (15 : ℤ) + (3 : ℤ) * (13 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1340 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((13 : ℤ) ^ (6 : ℕ) * (16 : ℤ) + (3 : ℤ) * (13 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1343 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((13 : ℤ) ^ (6 : ℕ) * (17 : ℤ) + (3 : ℤ) * (13 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1346 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((13 : ℤ) ^ (6 : ℕ) * (18 : ℤ) + (3 : ℤ) * (13 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1349 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // UNCITED-APPLIED internal ×6 [exec 1352 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
    // GAP: sub-goal of `interval_cases` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((14 : ℤ) ^ (6 : ℕ) * b + (3 : ℤ) * (14 : ℤ) ^ (5 // @tac 2723-2739
    // UNCITED-APPLIED internal ×40 [exec 629 2723-2739]: applications made inside the tactic's own automation, not stated — le_antisymm ×8, Int.le_sub_one_of_not_le ×8; machinery/glue: Eq.symm ×18, Mathlib.Meta.NormNum.IsNat.to_raw_eq ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Tactic.IntervalCases.of_le_right ×1 (+1 more heads, ×1)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((14 : ℤ) ^ (6 : ℕ) * (1 : ℤ) + (3 : ℤ) * (14 : ℤ // @tac 2744-2764
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((14 : ℤ) ^ (6 : ℕ) * (2 : ℤ) + (3 : ℤ) * (14 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×53 [exec 1355 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.isNat_mul ×7, Mathlib.Meta.NormNum.IsNatPowT.run ×6 (+8 more heads, ×24)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((14 : ℤ) ^ (6 : ℕ) * (3 : ℤ) + (3 : ℤ) * (14 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 1358 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((14 : ℤ) ^ (6 : ℕ) * (4 : ℤ) + (3 : ℤ) * (14 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 1361 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((14 : ℤ) ^ (6 : ℕ) * (5 : ℤ) + (3 : ℤ) * (14 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 1364 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((14 : ℤ) ^ (6 : ℕ) * (6 : ℤ) + (3 : ℤ) * (14 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1367 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((14 : ℤ) ^ (6 : ℕ) * (7 : ℤ) + (3 : ℤ) * (14 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1370 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((14 : ℤ) ^ (6 : ℕ) * (8 : ℤ) + (3 : ℤ) * (14 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1373 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((14 : ℤ) ^ (6 : ℕ) * (9 : ℤ) + (3 : ℤ) * (14 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1376 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((14 : ℤ) ^ (6 : ℕ) * (10 : ℤ) + (3 : ℤ) * (14 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1379 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((14 : ℤ) ^ (6 : ℕ) * (11 : ℤ) + (3 : ℤ) * (14 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1382 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((14 : ℤ) ^ (6 : ℕ) * (12 : ℤ) + (3 : ℤ) * (14 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1385 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((14 : ℤ) ^ (6 : ℕ) * (13 : ℤ) + (3 : ℤ) * (14 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1388 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((14 : ℤ) ^ (6 : ℕ) * (14 : ℤ) + (3 : ℤ) * (14 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1391 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((14 : ℤ) ^ (6 : ℕ) * (15 : ℤ) + (3 : ℤ) * (14 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×5 [exec 1394 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((14 : ℤ) ^ (6 : ℕ) * (16 : ℤ) + (3 : ℤ) * (14 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1397 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((14 : ℤ) ^ (6 : ℕ) * (17 : ℤ) + (3 : ℤ) * (14 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1400 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((14 : ℤ) ^ (6 : ℕ) * (18 : ℤ) + (3 : ℤ) * (14 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1403 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // UNCITED-APPLIED internal ×6 [exec 1406 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
    // GAP: sub-goal of `interval_cases` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((15 : ℤ) ^ (6 : ℕ) * b + (3 : ℤ) * (15 : ℤ) ^ (5 // @tac 2723-2739
    // UNCITED-APPLIED internal ×40 [exec 632 2723-2739]: applications made inside the tactic's own automation, not stated — le_antisymm ×8, Int.le_sub_one_of_not_le ×8; machinery/glue: Eq.symm ×18, Mathlib.Meta.NormNum.IsNat.to_raw_eq ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Tactic.IntervalCases.of_le_right ×1 (+1 more heads, ×1)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((15 : ℤ) ^ (6 : ℕ) * (1 : ℤ) + (3 : ℤ) * (15 : ℤ // @tac 2744-2764
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((15 : ℤ) ^ (6 : ℕ) * (2 : ℤ) + (3 : ℤ) * (15 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×53 [exec 1409 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.isNat_mul ×7, Mathlib.Meta.NormNum.IsNatPowT.run ×6 (+8 more heads, ×24)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((15 : ℤ) ^ (6 : ℕ) * (3 : ℤ) + (3 : ℤ) * (15 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 1412 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((15 : ℤ) ^ (6 : ℕ) * (4 : ℤ) + (3 : ℤ) * (15 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 1415 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((15 : ℤ) ^ (6 : ℕ) * (5 : ℤ) + (3 : ℤ) * (15 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1418 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((15 : ℤ) ^ (6 : ℕ) * (6 : ℤ) + (3 : ℤ) * (15 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1421 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((15 : ℤ) ^ (6 : ℕ) * (7 : ℤ) + (3 : ℤ) * (15 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1424 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((15 : ℤ) ^ (6 : ℕ) * (8 : ℤ) + (3 : ℤ) * (15 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1427 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((15 : ℤ) ^ (6 : ℕ) * (9 : ℤ) + (3 : ℤ) * (15 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1430 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((15 : ℤ) ^ (6 : ℕ) * (10 : ℤ) + (3 : ℤ) * (15 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1433 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((15 : ℤ) ^ (6 : ℕ) * (11 : ℤ) + (3 : ℤ) * (15 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1436 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((15 : ℤ) ^ (6 : ℕ) * (12 : ℤ) + (3 : ℤ) * (15 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1439 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((15 : ℤ) ^ (6 : ℕ) * (13 : ℤ) + (3 : ℤ) * (15 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1442 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((15 : ℤ) ^ (6 : ℕ) * (14 : ℤ) + (3 : ℤ) * (15 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1445 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((15 : ℤ) ^ (6 : ℕ) * (15 : ℤ) + (3 : ℤ) * (15 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1448 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((15 : ℤ) ^ (6 : ℕ) * (16 : ℤ) + (3 : ℤ) * (15 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×5 [exec 1451 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((15 : ℤ) ^ (6 : ℕ) * (17 : ℤ) + (3 : ℤ) * (15 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1454 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((15 : ℤ) ^ (6 : ℕ) * (18 : ℤ) + (3 : ℤ) * (15 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1457 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // UNCITED-APPLIED internal ×6 [exec 1460 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
    // GAP: sub-goal of `interval_cases` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((16 : ℤ) ^ (6 : ℕ) * b + (3 : ℤ) * (16 : ℤ) ^ (5 // @tac 2723-2739
    // UNCITED-APPLIED internal ×40 [exec 635 2723-2739]: applications made inside the tactic's own automation, not stated — le_antisymm ×8, Int.le_sub_one_of_not_le ×8; machinery/glue: Eq.symm ×18, Mathlib.Meta.NormNum.IsNat.to_raw_eq ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Tactic.IntervalCases.of_le_right ×1 (+1 more heads, ×1)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((16 : ℤ) ^ (6 : ℕ) * (1 : ℤ) + (3 : ℤ) * (16 : ℤ // @tac 2744-2764
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((16 : ℤ) ^ (6 : ℕ) * (2 : ℤ) + (3 : ℤ) * (16 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×53 [exec 1463 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.isNat_mul ×7, Mathlib.Meta.NormNum.IsNatPowT.run ×6 (+8 more heads, ×24)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((16 : ℤ) ^ (6 : ℕ) * (3 : ℤ) + (3 : ℤ) * (16 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×58 [exec 1466 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsNatPowT.run ×8, Mathlib.Meta.NormNum.IsNatPowT.trans ×7 (+7 more heads, ×27)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((16 : ℤ) ^ (6 : ℕ) * (4 : ℤ) + (3 : ℤ) * (16 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1469 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((16 : ℤ) ^ (6 : ℕ) * (5 : ℤ) + (3 : ℤ) * (16 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1472 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((16 : ℤ) ^ (6 : ℕ) * (6 : ℤ) + (3 : ℤ) * (16 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1475 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((16 : ℤ) ^ (6 : ℕ) * (7 : ℤ) + (3 : ℤ) * (16 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1478 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((16 : ℤ) ^ (6 : ℕ) * (8 : ℤ) + (3 : ℤ) * (16 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1481 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((16 : ℤ) ^ (6 : ℕ) * (9 : ℤ) + (3 : ℤ) * (16 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1484 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((16 : ℤ) ^ (6 : ℕ) * (10 : ℤ) + (3 : ℤ) * (16 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1487 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((16 : ℤ) ^ (6 : ℕ) * (11 : ℤ) + (3 : ℤ) * (16 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1490 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((16 : ℤ) ^ (6 : ℕ) * (12 : ℤ) + (3 : ℤ) * (16 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1493 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((16 : ℤ) ^ (6 : ℕ) * (13 : ℤ) + (3 : ℤ) * (16 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1496 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((16 : ℤ) ^ (6 : ℕ) * (14 : ℤ) + (3 : ℤ) * (16 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1499 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((16 : ℤ) ^ (6 : ℕ) * (15 : ℤ) + (3 : ℤ) * (16 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1502 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((16 : ℤ) ^ (6 : ℕ) * (16 : ℤ) + (3 : ℤ) * (16 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1505 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((16 : ℤ) ^ (6 : ℕ) * (17 : ℤ) + (3 : ℤ) * (16 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×5 [exec 1508 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((16 : ℤ) ^ (6 : ℕ) * (18 : ℤ) + (3 : ℤ) * (16 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1511 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // UNCITED-APPLIED internal ×6 [exec 1514 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
    // GAP: sub-goal of `interval_cases` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((17 : ℤ) ^ (6 : ℕ) * b + (3 : ℤ) * (17 : ℤ) ^ (5 // @tac 2723-2739
    // UNCITED-APPLIED internal ×40 [exec 638 2723-2739]: applications made inside the tactic's own automation, not stated — le_antisymm ×8, Int.le_sub_one_of_not_le ×8; machinery/glue: Eq.symm ×18, Mathlib.Meta.NormNum.IsNat.to_raw_eq ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Tactic.IntervalCases.of_le_right ×1 (+1 more heads, ×1)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((17 : ℤ) ^ (6 : ℕ) * (1 : ℤ) + (3 : ℤ) * (17 : ℤ // @tac 2744-2764
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((17 : ℤ) ^ (6 : ℕ) * (2 : ℤ) + (3 : ℤ) * (17 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×53 [exec 1517 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_pow ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.isNat_mul ×7, Mathlib.Meta.NormNum.IsNatPowT.run ×6 (+8 more heads, ×24)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((17 : ℤ) ^ (6 : ℕ) * (3 : ℤ) + (3 : ℤ) * (17 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1520 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((17 : ℤ) ^ (6 : ℕ) * (4 : ℤ) + (3 : ℤ) * (17 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1523 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((17 : ℤ) ^ (6 : ℕ) * (5 : ℤ) + (3 : ℤ) * (17 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1526 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((17 : ℤ) ^ (6 : ℕ) * (6 : ℤ) + (3 : ℤ) * (17 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1529 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((17 : ℤ) ^ (6 : ℕ) * (7 : ℤ) + (3 : ℤ) * (17 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1532 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((17 : ℤ) ^ (6 : ℕ) * (8 : ℤ) + (3 : ℤ) * (17 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1535 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((17 : ℤ) ^ (6 : ℕ) * (9 : ℤ) + (3 : ℤ) * (17 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1538 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((17 : ℤ) ^ (6 : ℕ) * (10 : ℤ) + (3 : ℤ) * (17 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1541 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((17 : ℤ) ^ (6 : ℕ) * (11 : ℤ) + (3 : ℤ) * (17 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1544 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((17 : ℤ) ^ (6 : ℕ) * (12 : ℤ) + (3 : ℤ) * (17 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1547 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((17 : ℤ) ^ (6 : ℕ) * (13 : ℤ) + (3 : ℤ) * (17 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1550 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((17 : ℤ) ^ (6 : ℕ) * (14 : ℤ) + (3 : ℤ) * (17 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1553 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((17 : ℤ) ^ (6 : ℕ) * (15 : ℤ) + (3 : ℤ) * (17 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1556 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((17 : ℤ) ^ (6 : ℕ) * (16 : ℤ) + (3 : ℤ) * (17 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1559 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((17 : ℤ) ^ (6 : ℕ) * (17 : ℤ) + (3 : ℤ) * (17 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1562 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((17 : ℤ) ^ (6 : ℕ) * (18 : ℤ) + (3 : ℤ) * (17 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×5 [exec 1565 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // UNCITED-APPLIED internal ×6 [exec 1568 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
    // GAP: sub-goal of `interval_cases` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((18 : ℤ) ^ (6 : ℕ) * b + (3 : ℤ) * (18 : ℤ) ^ (5 // @tac 2723-2739
    // UNCITED-APPLIED internal ×40 [exec 641 2723-2739]: applications made inside the tactic's own automation, not stated — le_antisymm ×8, Int.le_sub_one_of_not_le ×8; machinery/glue: Eq.symm ×18, Mathlib.Meta.NormNum.IsNat.to_raw_eq ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Tactic.IntervalCases.of_le_right ×1 (+1 more heads, ×1)
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((18 : ℤ) ^ (6 : ℕ) * (1 : ℤ) + (3 : ℤ) * (18 : ℤ // @tac 2744-2764
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((18 : ℤ) ^ (6 : ℕ) * (2 : ℤ) + (3 : ℤ) * (18 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1571 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((18 : ℤ) ^ (6 : ℕ) * (3 : ℤ) + (3 : ℤ) * (18 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1574 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((18 : ℤ) ^ (6 : ℕ) * (4 : ℤ) + (3 : ℤ) * (18 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1577 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((18 : ℤ) ^ (6 : ℕ) * (5 : ℤ) + (3 : ℤ) * (18 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1580 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((18 : ℤ) ^ (6 : ℕ) * (6 : ℤ) + (3 : ℤ) * (18 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1583 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((18 : ℤ) ^ (6 : ℕ) * (7 : ℤ) + (3 : ℤ) * (18 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1586 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((18 : ℤ) ^ (6 : ℕ) * (8 : ℤ) + (3 : ℤ) * (18 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1589 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((18 : ℤ) ^ (6 : ℕ) * (9 : ℤ) + (3 : ℤ) * (18 : ℤ // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1592 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((18 : ℤ) ^ (6 : ℕ) * (10 : ℤ) + (3 : ℤ) * (18 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1595 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((18 : ℤ) ^ (6 : ℕ) * (11 : ℤ) + (3 : ℤ) * (18 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1598 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((18 : ℤ) ^ (6 : ℕ) * (12 : ℤ) + (3 : ℤ) * (18 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1601 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((18 : ℤ) ^ (6 : ℕ) * (13 : ℤ) + (3 : ℤ) * (18 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1604 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((18 : ℤ) ^ (6 : ℕ) * (14 : ℤ) + (3 : ℤ) * (18 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1607 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((18 : ℤ) ^ (6 : ℕ) * (15 : ℤ) + (3 : ℤ) * (18 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1610 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((18 : ℤ) ^ (6 : ℕ) * (16 : ℤ) + (3 : ℤ) * (18 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1613 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((18 : ℤ) ^ (6 : ℕ) * (17 : ℤ) + (3 : ℤ) * (18 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1616 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // GAP: sub-goal of `norm_num` not stated: the interval_cases enumeration of this `<;>` chain has 343 goals, over the cap for one Dafny body (resolve time): ¬(7 : ℤ) ^ (7 : ℕ) ∣ (7 : ℤ) * ((18 : ℤ) ^ (6 : ℕ) * (18 : ℤ) + (3 : ℤ) * (18 :  // @tac 2744-2764
    // UNCITED-APPLIED internal ×6 [exec 1619 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // (its proof follows unguarded: every assert is still checked, the case hypothesis is not available)
    // UNCITED-APPLIED internal ×5 [exec 1622 2744-2764]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_add ×1
    // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
    // UNCITED-APPLIED internal ×40 [exec 644 2723-2739]: applications made inside the tactic's own automation, not stated — le_antisymm ×8, Int.le_sub_one_of_not_le ×8; machinery/glue: Eq.symm ×18, Mathlib.Meta.NormNum.IsNat.to_raw_eq ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Tactic.IntervalCases.of_le_right ×1 (+1 more heads, ×1)
  assert Int.pow(7, 7) == 823543;  // [ADDED]
  if a == 1 {  // [ADDED]
    Enum64_1(a, b);  // [ADDED]
  } else if a == 2 {  // [ADDED]
    Enum64_2(a, b);  // [ADDED]
  } else if a == 3 {  // [ADDED]
    Enum64_3(a, b);  // [ADDED]
  } else if a == 4 {  // [ADDED]
    Enum64_4(a, b);  // [ADDED]
  } else if a == 5 {  // [ADDED]
    Enum64_5(a, b);  // [ADDED]
  } else if a == 6 {  // [ADDED]
    Enum64_6(a, b);  // [ADDED]
  } else if a == 7 {  // [ADDED]
    Enum64_7(a, b);  // [ADDED]
  } else if a == 8 {  // [ADDED]
    Enum64_8(a, b);  // [ADDED]
  } else if a == 9 {  // [ADDED]
    Enum64_9(a, b);  // [ADDED]
  } else if a == 10 {  // [ADDED]
    Enum64_10(a, b);  // [ADDED]
  } else if a == 11 {  // [ADDED]
    Enum64_11(a, b);  // [ADDED]
  } else if a == 12 {  // [ADDED]
    Enum64_12(a, b);  // [ADDED]
  } else if a == 13 {  // [ADDED]
    Enum64_13(a, b);  // [ADDED]
  } else if a == 14 {  // [ADDED]
    Enum64_14(a, b);  // [ADDED]
  } else if a == 15 {  // [ADDED]
    Enum64_15(a, b);  // [ADDED]
  } else if a == 16 {  // [ADDED]
    Enum64_16(a, b);  // [ADDED]
  } else if a == 17 {  // [ADDED]
    Enum64_17(a, b);  // [ADDED]
  } else {  // [ADDED]
    assert false;  // [ADDED]
  }
}

lemma Enum64_1(a: int, b: int)  // [ADDED DECLARATION]
  requires a == 1 && 1 <= b && a + b < 19 && !IntDvd(7, a) && !IntDvd(7, b) && !IntDvd(7, a + b)
  ensures !IntDvd(Int.pow(7, 7), 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)))
{
  assert Int.pow(7, 7) == 823543;
  if b == 1 {  // Q = 18
  } else if b == 2 {  // Q = 294
  } else if b == 3 {  // Q = 2028
  } else if b == 4 {  // Q = 8820
  } else if b == 5 {  // Q = 28830
  } else if b == 6 {  // Q = 77658
  } else if b == 7 {  // Q = 181944
  } else if b == 8 {  // Q = 383688
  } else if b == 9 {  // Q = 745290
  } else if b == 10 {  // Q = 1355310
  } else if b == 11 {  // Q = 2334948
  } else if b == 12 {  // Q = 3845244
  } else if b == 13 {  // Q = 6094998
  } else if b == 14 {  // Q = 9349410
  } else if b == 15 {  // Q = 13939440
  } else if b == 16 {  // Q = 20271888
  } else if b == 17 {  // Q = 28840194
  } else {
    assert false;
  }
}

lemma Enum64_2(a: int, b: int)  // [ADDED DECLARATION]
  requires a == 2 && 1 <= b && a + b < 19 && !IntDvd(7, a) && !IntDvd(7, b) && !IntDvd(7, a + b)
  ensures !IntDvd(Int.pow(7, 7), 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)))
{
  assert Int.pow(7, 7) == 823543;
  if b == 1 {  // Q = 294
  } else if b == 2 {  // Q = 2304
  } else if b == 3 {  // Q = 10830
  } else if b == 4 {  // Q = 37632
  } else if b == 5 {  // Q = 106470
  } else if b == 6 {  // Q = 259584
  } else if b == 7 {  // Q = 565614
  } else if b == 8 {  // Q = 1128960
  } else if b == 9 {  // Q = 2100582
  } else if b == 10 {  // Q = 3690240
  } else if b == 11 {  // Q = 6180174
  } else if b == 12 {  // Q = 9940224
  } else if b == 13 {  // Q = 15444390
  } else if b == 14 {  // Q = 23288832
  } else if b == 15 {  // Q = 34211310
  } else if b == 16 {  // Q = 49112064
  } else {
    assert false;
  }
}

lemma Enum64_3(a: int, b: int)  // [ADDED DECLARATION]
  requires a == 3 && 1 <= b && a + b < 19 && !IntDvd(7, a) && !IntDvd(7, b) && !IntDvd(7, a + b)
  ensures !IntDvd(Int.pow(7, 7), 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)))
{
  assert Int.pow(7, 7) == 823543;
  if b == 1 {  // Q = 2028
  } else if b == 2 {  // Q = 10830
  } else if b == 3 {  // Q = 39366
  } else if b == 4 {  // Q = 114996
  } else if b == 5 {  // Q = 288120
  } else if b == 6 {  // Q = 642978
  } else if b == 7 {  // Q = 1310610
  } else if b == 8 {  // Q = 2483976
  } else if b == 9 {  // Q = 4435236
  } else if b == 10 {  // Q = 7535190
  } else if b == 11 {  // Q = 12274878
  } else if b == 12 {  // Q = 19289340
  } else if b == 13 {  // Q = 29383536
  } else if b == 14 {  // Q = 43560426
  } else if b == 15 {  // Q = 63051210
  } else {
    assert false;
  }
}

lemma Enum64_4(a: int, b: int)  // [ADDED DECLARATION]
  requires a == 4 && 1 <= b && a + b < 19 && !IntDvd(7, a) && !IntDvd(7, b) && !IntDvd(7, a + b)
  ensures !IntDvd(Int.pow(7, 7), 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)))
{
  assert Int.pow(7, 7) == 823543;
  if b == 1 {  // Q = 8820
  } else if b == 2 {  // Q = 37632
  } else if b == 3 {  // Q = 114996
  } else if b == 4 {  // Q = 294912
  } else if b == 5 {  // Q = 669780
  } else if b == 6 {  // Q = 1386240
  } else if b == 7 {  // Q = 2663892
  } else if b == 8 {  // Q = 4816896
  } else if b == 9 {  // Q = 8278452
  } else if b == 10 {  // Q = 13628160
  } else if b == 11 {  // Q = 21622260
  } else if b == 12 {  // Q = 33226752
  } else if b == 13 {  // Q = 49653396
  } else if b == 14 {  // Q = 72398592
  } else {
    assert false;
  }
}

lemma Enum64_5(a: int, b: int)  // [ADDED DECLARATION]
  requires a == 5 && 1 <= b && a + b < 19 && !IntDvd(7, a) && !IntDvd(7, b) && !IntDvd(7, a + b)
  ensures !IntDvd(Int.pow(7, 7), 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)))
{
  assert Int.pow(7, 7) == 823543;
  if b == 1 {  // Q = 28830
  } else if b == 2 {  // Q = 106470
  } else if b == 3 {  // Q = 288120
  } else if b == 4 {  // Q = 669780
  } else if b == 5 {  // Q = 1406250
  } else if b == 6 {  // Q = 2732730
  } else if b == 7 {  // Q = 4990020
  } else if b == 8 {  // Q = 8653320
  } else if b == 9 {  // Q = 14364630
  } else if b == 10 {  // Q = 22968750
  } else if b == 11 {  // Q = 35552880
  } else if b == 12 {  // Q = 53489820
  } else if b == 13 {  // Q = 78484770
  } else {
    assert false;
  }
}

lemma Enum64_6(a: int, b: int)  // [ADDED DECLARATION]
  requires a == 6 && 1 <= b && a + b < 19 && !IntDvd(7, a) && !IntDvd(7, b) && !IntDvd(7, a + b)
  ensures !IntDvd(Int.pow(7, 7), 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)))
{
  assert Int.pow(7, 7) == 823543;
  if b == 1 {  // Q = 77658
  } else if b == 2 {  // Q = 259584
  } else if b == 3 {  // Q = 642978
  } else if b == 4 {  // Q = 1386240
  } else if b == 5 {  // Q = 2732730
  } else if b == 6 {  // Q = 5038848
  } else if b == 7 {  // Q = 8806434
  } else if b == 8 {  // Q = 14719488
  } else if b == 9 {  // Q = 23685210
  } else if b == 10 {  // Q = 36879360
  } else if b == 11 {  // Q = 55795938
  } else if b == 12 {  // Q = 82301184
  } else {
    assert false;
  }
}

lemma Enum64_7(a: int, b: int)  // [ADDED DECLARATION]
  requires a == 7 && 1 <= b && a + b < 19 && !IntDvd(7, a) && !IntDvd(7, b) && !IntDvd(7, a + b)
  ensures !IntDvd(Int.pow(7, 7), 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)))
{
  // vacuous: 7 | a contradicts !IntDvd(7, a)
}

lemma Enum64_8(a: int, b: int)  // [ADDED DECLARATION]
  requires a == 8 && 1 <= b && a + b < 19 && !IntDvd(7, a) && !IntDvd(7, b) && !IntDvd(7, a + b)
  ensures !IntDvd(Int.pow(7, 7), 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)))
{
  assert Int.pow(7, 7) == 823543;
  if b == 1 {  // Q = 383688
  } else if b == 2 {  // Q = 1128960
  } else if b == 3 {  // Q = 2483976
  } else if b == 4 {  // Q = 4816896
  } else if b == 5 {  // Q = 8653320
  } else if b == 6 {  // Q = 14719488
  } else if b == 7 {  // Q = 23991240
  } else if b == 8 {  // Q = 37748736
  } else if b == 9 {  // Q = 57636936
  } else if b == 10 {  // Q = 85731840
  } else {
    assert false;
  }
}

lemma Enum64_9(a: int, b: int)  // [ADDED DECLARATION]
  requires a == 9 && 1 <= b && a + b < 19 && !IntDvd(7, a) && !IntDvd(7, b) && !IntDvd(7, a + b)
  ensures !IntDvd(Int.pow(7, 7), 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)))
{
  assert Int.pow(7, 7) == 823543;
  if b == 1 {  // Q = 745290
  } else if b == 2 {  // Q = 2100582
  } else if b == 3 {  // Q = 4435236
  } else if b == 4 {  // Q = 8278452
  } else if b == 5 {  // Q = 14364630
  } else if b == 6 {  // Q = 23685210
  } else if b == 7 {  // Q = 37546992
  } else if b == 8 {  // Q = 57636936
  } else if b == 9 {  // Q = 86093442
  } else {
    assert false;
  }
}

lemma Enum64_10(a: int, b: int)  // [ADDED DECLARATION]
  requires a == 10 && 1 <= b && a + b < 19 && !IntDvd(7, a) && !IntDvd(7, b) && !IntDvd(7, a + b)
  ensures !IntDvd(Int.pow(7, 7), 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)))
{
  assert Int.pow(7, 7) == 823543;
  if b == 1 {  // Q = 1355310
  } else if b == 2 {  // Q = 3690240
  } else if b == 3 {  // Q = 7535190
  } else if b == 4 {  // Q = 13628160
  } else if b == 5 {  // Q = 22968750
  } else if b == 6 {  // Q = 36879360
  } else if b == 7 {  // Q = 57073590
  } else if b == 8 {  // Q = 85731840
  } else {
    assert false;
  }
}

lemma Enum64_11(a: int, b: int)  // [ADDED DECLARATION]
  requires a == 11 && 1 <= b && a + b < 19 && !IntDvd(7, a) && !IntDvd(7, b) && !IntDvd(7, a + b)
  ensures !IntDvd(Int.pow(7, 7), 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)))
{
  assert Int.pow(7, 7) == 823543;
  if b == 1 {  // Q = 2334948
  } else if b == 2 {  // Q = 6180174
  } else if b == 3 {  // Q = 12274878
  } else if b == 4 {  // Q = 21622260
  } else if b == 5 {  // Q = 35552880
  } else if b == 6 {  // Q = 55795938
  } else if b == 7 {  // Q = 84558474
  } else {
    assert false;
  }
}

lemma Enum64_12(a: int, b: int)  // [ADDED DECLARATION]
  requires a == 12 && 1 <= b && a + b < 19 && !IntDvd(7, a) && !IntDvd(7, b) && !IntDvd(7, a + b)
  ensures !IntDvd(Int.pow(7, 7), 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)))
{
  assert Int.pow(7, 7) == 823543;
  if b == 1 {  // Q = 3845244
  } else if b == 2 {  // Q = 9940224
  } else if b == 3 {  // Q = 19289340
  } else if b == 4 {  // Q = 33226752
  } else if b == 5 {  // Q = 53489820
  } else if b == 6 {  // Q = 82301184
  } else {
    assert false;
  }
}

lemma Enum64_13(a: int, b: int)  // [ADDED DECLARATION]
  requires a == 13 && 1 <= b && a + b < 19 && !IntDvd(7, a) && !IntDvd(7, b) && !IntDvd(7, a + b)
  ensures !IntDvd(Int.pow(7, 7), 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)))
{
  assert Int.pow(7, 7) == 823543;
  if b == 1 {  // Q = 6094998
  } else if b == 2 {  // Q = 15444390
  } else if b == 3 {  // Q = 29383536
  } else if b == 4 {  // Q = 49653396
  } else if b == 5 {  // Q = 78484770
  } else {
    assert false;
  }
}

lemma Enum64_14(a: int, b: int)  // [ADDED DECLARATION]
  requires a == 14 && 1 <= b && a + b < 19 && !IntDvd(7, a) && !IntDvd(7, b) && !IntDvd(7, a + b)
  ensures !IntDvd(Int.pow(7, 7), 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)))
{
  // vacuous: 7 | a contradicts !IntDvd(7, a)
}

lemma Enum64_15(a: int, b: int)  // [ADDED DECLARATION]
  requires a == 15 && 1 <= b && a + b < 19 && !IntDvd(7, a) && !IntDvd(7, b) && !IntDvd(7, a + b)
  ensures !IntDvd(Int.pow(7, 7), 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)))
{
  assert Int.pow(7, 7) == 823543;
  if b == 1 {  // Q = 13939440
  } else if b == 2 {  // Q = 34211310
  } else if b == 3 {  // Q = 63051210
  } else {
    assert false;
  }
}

lemma Enum64_16(a: int, b: int)  // [ADDED DECLARATION]
  requires a == 16 && 1 <= b && a + b < 19 && !IntDvd(7, a) && !IntDvd(7, b) && !IntDvd(7, a + b)
  ensures !IntDvd(Int.pow(7, 7), 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)))
{
  assert Int.pow(7, 7) == 823543;
  if b == 1 {  // Q = 20271888
  } else if b == 2 {  // Q = 49112064
  } else {
    assert false;
  }
}

lemma Enum64_17(a: int, b: int)  // [ADDED DECLARATION]
  requires a == 17 && 1 <= b && a + b < 19 && !IntDvd(7, a) && !IntDvd(7, b) && !IntDvd(7, a + b)
  ensures !IntDvd(Int.pow(7, 7), 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)))
{
  assert Int.pow(7, 7) == 823543;
  if b == 1 {  // Q = 28840194
  } else {
    assert false;
  }
}
