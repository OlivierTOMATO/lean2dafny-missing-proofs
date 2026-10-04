// ════════════════════════════════════════════════════════════
// MECHANICAL TRANSLATION (emitter v2) of ast_cache_v2/imo_1984_p2.json
// Each Lean `have` → `assert ... by {}` at the same depth;
// quantified haves → forall statements. Typed pipeline only.
// ════════════════════════════════════════════════════════════

include "../../library/library_new.dfy"

// ──────────────────────────────────────────────────
// certificate identity for `h₉/h₉`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_1(a: int, b: int)
  ensures ((-(1) + (((a + b) + 1) - 19)) + ((18 + 1) - (a + b))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₉/h₁₀`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_2(a: int, b: int)
  ensures (((-((2 * 1)) + ((0 + 1) - b)) + (((a + b) + 1) - 19)) + ((18 + 1) - a)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₉/h₁₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_3(a: int, b: int)
  ensures (((-((2 * 1)) + ((0 + 1) - a)) + (((a + b) + 1) - 19)) + ((18 + 1) - b)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₉/h₁₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_4(a: int, b: int)
  ensures ((-(1) + ((0 + 1) - a)) + ((a + 1) - 1)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₉/h₁₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_5(a: int, b: int)
  ensures ((-(1) + ((0 + 1) - b)) + ((b + 1) - 1)) == 0
{ }

// ──────────────────────────────────────────────────
// `contrapose! h₈`: Lean's context after the tactic (h₈ reverted, its negation is the goal)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} contrapose_helper_1(a: int, b: int)
  requires ((0 < a) && (0 < b))
  requires (!IntDvd(7, a))
  requires (!IntDvd(7, b))
  requires (!IntDvd(7, (a + b)))
  requires IntDvd(Int.pow(7, 7), ((Int.pow((a + b), 7) - Int.pow(a, 7)) - Int.pow(b, 7)))
  requires !(IntDvd(7, ((a * b) * (a + b))))  // h₅
  requires (Int.pow((a + b), 7) == (((((((Int.pow(a, 7) + ((7 * (a * a * a * a * a * a)) * b)) + ((21 * (a * a * a * a * a)) * (b * b))) + ((35 * (a * a * a * a)) * (b * b * b))) + ((35 * (a * a * a)) * (b * b * b * b))) + ((21 * (a * a)) * (b * b * b * b * b))) + ((7 * a) * (b * b * b * b * b * b))) + Int.pow(b, 7)))  // h₆
  requires (((Int.pow((a + b), 7) - Int.pow(a, 7)) - Int.pow(b, 7)) == (7 * (((((((a * a * a * a * a * a) * b) + ((3 * (a * a * a * a * a)) * (b * b))) + ((5 * (a * a * a * a)) * (b * b * b))) + ((5 * (a * a * a)) * (b * b * b * b))) + ((3 * (a * a)) * (b * b * b * b * b))) + (a * (b * b * b * b * b * b)))))  // h₇
  requires ((a + b) < 19)  // h₈ (after `contrapose!`)
  ensures !(IntDvd(Int.pow(7, 7), (7 * (((((((a * a * a * a * a * a) * b) + ((3 * (a * a * a * a * a)) * (b * b))) + ((5 * (a * a * a * a)) * (b * b * b))) + ((5 * (a * a * a)) * (b * b * b * b))) + ((3 * (a * a)) * (b * b * b * b * b))) + (a * (b * b * b * b * b * b))))))  // goal after `contrapose!` at 2467-2483 (Lean state)
{
  assert !(IntDvd(Int.pow(7, 7), (7 * (((((((a * a * a * a * a * a) * b) + ((3 * (a * a * a * a * a)) * (b * b))) + ((5 * (a * a * a * a)) * (b * b * b))) + ((5 * (a * a * a)) * (b * b * b * b))) + ((3 * (a * a)) * (b * b * b * b * b))) + (a * (b * b * b * b * b * b)))))) by {  // sub-goal before `have` (Lean state) // @tac 2488-2527 // @tac 2532-2570 // @tac 2575-2613 // @tac 2618-2655 // @tac 2660-2697 // @tac 2702-2800 // @tac 2702-2764 // @tac 2702-2739 // @tac 2702-2718
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
  }
}

// ──────────────────────────────────────────────────
// certificate identity for ``: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_6(a: int, b: int)
  ensures ((-(1) + (19 - (a + b))) + (((a + b) + 1) - 19)) == 0
{ }

// statement: Lean elaborated type (v3, stmt_cache) — requires/ensures below
lemma imo_1984_p2(a: int, b: int)
  requires ((0 < a) && (0 < b))
  requires (!IntDvd(7, a))
  requires (!IntDvd(7, b))
  requires (!IntDvd(7, (a + b)))
  requires IntDvd(Int.pow(7, 7), ((Int.pow((a + b), 7) - Int.pow(a, 7)) - Int.pow(b, 7)))
  ensures (19 <= (a + b)) // @tac 425-1419 // @tac 1425-1917 // @tac 1923-2068 // @tac 2074-2426 // @tac 2432-2800 // @tac 2925-2933
{
  // have h₅ : ¬ 7 ∣ a * b * ( a + b ) 7 ∣ a * b * ( a + b )  [type from Lean state]
  assert !(IntDvd(7, ((a * b) * (a + b)))) by { // @tac 572-628
    // [TACTIC: rwSeq [ Int.dvd_iff_emod_eq_zero ] at h₁ h₂ h₃ h₄ ⊢]
    assert ((7) != 0);  // precondition of IntDvdIffEmodEqZero (Lean: Int.dvd_iff_emod_eq_zero)
    IntDvdIffEmodEqZero(7, ((a * b) * (a + b)));  // cite: Int.dvd_iff_emod_eq_zero
    // GAP: Int.dvd_iff_emod_eq_zero: this execution also rewrote the hypotheses h₁, h₂, h₃, h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
    // UNCITED-APPLIED congrArg(fun (_a : Prop) => ¬_a): no library counterpart (not stated) [exec 24 572-628]
    assert !((a % 7) == 0);  // hypothesis h₁ after `rw` (Lean state) // @tac-hyp 572-628
    assert !((b % 7) == 0);  // hypothesis h₂ after `rw` (Lean state) // @tac-hyp 572-628
    assert !(((a + b) % 7) == 0);  // hypothesis h₃ after `rw` (Lean state) // @tac-hyp 572-628
    assert (IntMod(((Int.pow((a + b), 7) - Int.pow(a, 7)) - Int.pow(b, 7)), Int.pow(7, 7)) == 0);  // hypothesis h₄ after `rw` (Lean state) // @tac-hyp 572-628
    assert !((((a * b) * (a + b)) % 7) == 0) by {  // sub-goal before `have` (Lean state) // @tac 695-804 // @tac 809-918 // @tac 923-1068 // @tac 1178-1419 // @tac 1178-1399 // @tac 1178-1305 // @tac 1178-1236
      // have h₅ : a % 7 == 1 || a % 7 == 2 || a % 7 == 3 || a % 7 == 4 || a % 7 == 5 ||   [type from Lean state]
      assert (((a % 7) == 1) || (((a % 7) == 2) || (((a % 7) == 3) || (((a % 7) == 4) || (((a % 7) == 5) || ((a % 7) == 6)))))) by { // @tac 799-804
        // [TACTIC: omega]
        if ((7) != 0) { IntDvdIffEmodEqZero(7, (a + b)); }  // cite: Int.dvd_iff_emod_eq_zero [applied by the tactic, not named in it]
        if ((7) != 0) { IntDvdIffEmodEqZero(7, b); }  // cite: Int.dvd_iff_emod_eq_zero [applied by the tactic, not named in it]
        if ((7) != 0) { IntDvdIffEmodEqZero(7, a); }  // cite: Int.dvd_iff_emod_eq_zero [applied by the tactic, not named in it]
        // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
        // UNCITED-APPLIED internal ×168 [exec 67 799-804]: applications made inside the tactic's own automation, not stated — Int.lt_or_gt_of_ne ×8, Int.sub_nonneg_of_le ×8, Int.add_one_le_of_lt ×8, Int.emod_def ×3, Int.mul_ediv_self_le ×3, Int.lt_mul_ediv_self_add ×1; machinery/glue: Eq.symm ×56, Lean.Omega.Constraint.combine_sat' ×8, Lean.Omega.tidy_sat ×8, Lean.Omega.Constraint.addInequality_sat ×8 (+16 more heads, ×57) (cited in this block, not counted here: Int.dvd_iff_emod_eq_zero [Lean recorded ×3])
      }
      // have h₆ : b % 7 == 1 || b % 7 == 2 || b % 7 == 3 || b % 7 == 4 || b % 7 == 5 ||   [type from Lean state]
      assert (((b % 7) == 1) || (((b % 7) == 2) || (((b % 7) == 3) || (((b % 7) == 4) || (((b % 7) == 5) || ((b % 7) == 6)))))) by { // @tac 913-918
        // [TACTIC: omega]
        if ((7) != 0) { IntDvdIffEmodEqZero(7, (a + b)); }  // cite: Int.dvd_iff_emod_eq_zero [applied by the tactic, not named in it]
        if ((7) != 0) { IntDvdIffEmodEqZero(7, b); }  // cite: Int.dvd_iff_emod_eq_zero [applied by the tactic, not named in it]
        // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
        // UNCITED-APPLIED internal ×166 [exec 84 913-918]: applications made inside the tactic's own automation, not stated — Int.lt_or_gt_of_ne ×8, Int.sub_nonneg_of_le ×8, Int.add_one_le_of_lt ×8, Int.sub_eq_zero_of_eq ×6, Int.emod_def ×3, Int.mul_ediv_self_le ×2, Int.lt_mul_ediv_self_add ×1; machinery/glue: Eq.symm ×54, Lean.Omega.tidy_sat ×8, Lean.Omega.combo_sat' ×8, Lean.Omega.LinearCombo.sub_eval ×8 (+17 more heads, ×52) (cited in this block, not counted here: Int.dvd_iff_emod_eq_zero [Lean recorded ×2])
      }
      // have h₇ : ( a + b ) % 7 == 1 || ( a + b ) % 7 == 2 || ( a + b ) % 7 == 3 || ( a   [type from Lean state]
      assert ((((a + b) % 7) == 1) || ((((a + b) % 7) == 2) || ((((a + b) % 7) == 3) || ((((a + b) % 7) == 4) || ((((a + b) % 7) == 5) || (((a + b) % 7) == 6)))))) by { // @tac 1063-1068
        // [TACTIC: omega]
        // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
        if ((7) != 0) { IntDvdIffEmodEqZero(7, (a + b)); }  // cite: Int.dvd_iff_emod_eq_zero [applied by the tactic, not named in it]
        // UNCITED-APPLIED internal ×180 [exec 101 1063-1068]: applications made inside the tactic's own automation, not stated — Int.sub_nonneg_of_le ×8, Int.add_one_le_of_lt ×8, Int.lt_or_gt_of_ne ×7, Int.sub_eq_zero_of_eq ×7, Int.emod_def ×3, Int.mul_ediv_self_le ×1, Int.lt_mul_ediv_self_add ×1; machinery/glue: Eq.symm ×66, Lean.Omega.tidy_sat ×8, Lean.Omega.combo_sat' ×8, Lean.Omega.LinearCombo.sub_eval ×8 (+17 more heads, ×55) (cited in this block, not counted here: Int.dvd_iff_emod_eq_zero [Lean recorded ×1])
      }
      // [TACTIC: «_<;>_» h₅ with ( h₅ | h₅ | h₅ | h₅ | h₅ | h₅ ) <;> rcases h₆ with ( h₆ | h₆ | h₆ | h₆ | h₆ | h₆ ) <;> simp [ h₅ , h₆ , Int.mul_emod , Int.add_emod , Int.sub_emod , pow_succ ] at h₄ ⊢ simp [ h₅ , h₆ , Int.mul_emod , Int.add_emod , Int.sub_emod , pow_succ ] at h₄ ⊢ <;> omega omega]
      // [TACTIC: rcases h₅ with ( h₅ | h₅ | h₅ | h₅ | h₅ | h₅ )]
      if (((a % 7) == 1)) {  // sub-goal of `rcases` (Lean state)
        if (((b % 7) == 1)) {  // sub-goal of `simp` (Lean state)
          IntMulEmod(a, b, 7);  // cite: Int.mul_emod
          IntAddEmod(a, b, 7);  // cite: Int.add_emod
          // UNCITED Int.sub_emod: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED pow_succ: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
          // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (1 : ℤ))
          assert ((7) > 0);  // precondition of IntMulEmod (Lean: Int.mul_emod)
          IntMulEmod((a * b), (a + b), 7);  // cite: Int.mul_emod
          // GAP: Int.mul_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          // GAP: Int.add_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          assert !((((a * b) * (a + b)) % 7) == 0);  // sub-goal of `simp` (Lean state) // @tac 1318-1399
          // UNCITED-APPLIED internal ×20 [exec 150 1318-1399]: applications made inside the tactic's own automation, not stated — mul_one ×1, one_mul ×1; machinery/glue: congrArg ×8, Eq.trans ×6, congr ×3, of_eq_true ×1 (cited in this block, not counted here: Int.add_emod [Lean recorded ×1], Int.mul_emod [Lean recorded ×2])
        }
        if (((b % 7) == 2)) {  // sub-goal of `simp` (Lean state)
          IntMulEmod(a, b, 7);  // cite: Int.mul_emod
          IntAddEmod(a, b, 7);  // cite: Int.add_emod
          // UNCITED Int.sub_emod: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED pow_succ: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
          assert ((7) > 0);  // precondition of IntMulEmod (Lean: Int.mul_emod)
          IntMulEmod((a * b), (a + b), 7);  // cite: Int.mul_emod
          // GAP: Int.mul_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          // GAP: Int.add_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          assert !((((a * b) * (a + b)) % 7) == 0);  // sub-goal of `simp` (Lean state) // @tac 1318-1399
          // UNCITED-APPLIED internal ×18 [exec 153 1318-1399]: applications made inside the tactic's own automation, not stated — one_mul ×1; machinery/glue: congrArg ×8, Eq.trans ×5, congr ×3, of_eq_true ×1 (cited in this block, not counted here: Int.add_emod [Lean recorded ×1], Int.mul_emod [Lean recorded ×2])
        }
        if (((b % 7) == 3)) {  // sub-goal of `simp` (Lean state)
          IntMulEmod(a, b, 7);  // cite: Int.mul_emod
          IntAddEmod(a, b, 7);  // cite: Int.add_emod
          // UNCITED Int.sub_emod: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED pow_succ: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
          assert ((7) > 0);  // precondition of IntMulEmod (Lean: Int.mul_emod)
          IntMulEmod((a * b), (a + b), 7);  // cite: Int.mul_emod
          // GAP: Int.mul_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          // GAP: Int.add_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          assert !((((a * b) * (a + b)) % 7) == 0);  // sub-goal of `simp` (Lean state) // @tac 1318-1399
          // UNCITED-APPLIED internal ×18 [exec 156 1318-1399]: applications made inside the tactic's own automation, not stated — one_mul ×1; machinery/glue: congrArg ×8, Eq.trans ×5, congr ×3, of_eq_true ×1 (cited in this block, not counted here: Int.add_emod [Lean recorded ×1], Int.mul_emod [Lean recorded ×2])
        }
        if (((b % 7) == 4)) {  // sub-goal of `simp` (Lean state)
          IntMulEmod(a, b, 7);  // cite: Int.mul_emod
          IntAddEmod(a, b, 7);  // cite: Int.add_emod
          // UNCITED Int.sub_emod: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED pow_succ: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
          assert ((7) > 0);  // precondition of IntMulEmod (Lean: Int.mul_emod)
          IntMulEmod((a * b), (a + b), 7);  // cite: Int.mul_emod
          // GAP: Int.mul_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          // GAP: Int.add_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          assert !((((a * b) * (a + b)) % 7) == 0);  // sub-goal of `simp` (Lean state) // @tac 1318-1399
          // UNCITED-APPLIED internal ×18 [exec 159 1318-1399]: applications made inside the tactic's own automation, not stated — one_mul ×1; machinery/glue: congrArg ×8, Eq.trans ×5, congr ×3, of_eq_true ×1 (cited in this block, not counted here: Int.add_emod [Lean recorded ×1], Int.mul_emod [Lean recorded ×2])
        }
        if (((b % 7) == 5)) {  // sub-goal of `simp` (Lean state)
          IntMulEmod(a, b, 7);  // cite: Int.mul_emod
          IntAddEmod(a, b, 7);  // cite: Int.add_emod
          // UNCITED Int.sub_emod: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED pow_succ: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
          assert ((7) > 0);  // precondition of IntMulEmod (Lean: Int.mul_emod)
          IntMulEmod((a * b), (a + b), 7);  // cite: Int.mul_emod
          // GAP: Int.mul_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          // GAP: Int.add_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          assert !((((a * b) * (a + b)) % 7) == 0);  // sub-goal of `simp` (Lean state) // @tac 1318-1399
          // UNCITED-APPLIED internal ×18 [exec 162 1318-1399]: applications made inside the tactic's own automation, not stated — one_mul ×1; machinery/glue: congrArg ×8, Eq.trans ×5, congr ×3, of_eq_true ×1 (cited in this block, not counted here: Int.add_emod [Lean recorded ×1], Int.mul_emod [Lean recorded ×2])
        }
        if (((b % 7) == 6)) {  // sub-goal of `simp` (Lean state)
          IntMulEmod(a, b, 7);  // cite: Int.mul_emod
          IntAddEmod(a, b, 7);  // cite: Int.add_emod
          // UNCITED Int.sub_emod: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED pow_succ: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
          assert ((7) > 0);  // precondition of IntMulEmod (Lean: Int.mul_emod)
          IntMulEmod((a * b), (a + b), 7);  // cite: Int.mul_emod
          // GAP: Int.mul_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          // GAP: Int.add_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          assert IntDvd(823543, ((((((((((((((((((((((((((a % 823543) % 823543) + ((b % 823543) % 823543)) % 823543) % 823543) * (((((a % 823543) % 823543) + ((b % 823543) % 823543)) % 823543) % 823543)) % 823543) % 823543) * (((((a % 823543) % 823543) + ((b % 823543) % 823543)) % 823543) % 823543)) % 823543) % 823543) * (((((a % 823543) % 823543) + ((b % 823543) % 823543)) % 823543) % 823543)) % 823543) % 823543) * (((((a % 823543) % 823543) + ((b % 823543) % 823543)) % 823543) % 823543)) % 823543) % 823543) * (((((a % 823543) % 823543) + ((b % 823543) % 823543)) % 823543) % 823543)) % 823543) % 823543) * (((((a % 823543) % 823543) + ((b % 823543) % 823543)) % 823543) % 823543)) % 823543) % 823543) - ((((((((((((((((((((a % 823543) % 823543) * ((a % 823543) % 823543)) % 823543) % 823543) * ((a % 823543) % 823543)) % 823543) % 823543) * ((a % 823543) % 823543)) % 823543) % 823543) * ((a % 823543) % 823543)) % 823543) % 823543) * ((a % 823543) % 823543)) % 823543) % 823543) * ((a % 823543) % 823543)) % 823543) % 823543)) % 823543) - (((((((((((((((((((b % 823543) % 823543) * ((b % 823543) % 823543)) % 823543) % 823543) * ((b % 823543) % 823543)) % 823543) % 823543) * ((b % 823543) % 823543)) % 823543) % 823543) * ((b % 823543) % 823543)) % 823543) % 823543) * ((b % 823543) % 823543)) % 823543) % 823543) * ((b % 823543) % 823543)) % 823543)));  // hypothesis h₄ after `simp` (Lean state) // @tac-hyp 1318-1399
          assert false;  // sub-goal of `omega` (Lean state) // @tac 1414-1419
          // UNCITED-APPLIED internal ×12 [exec 264 1414-1419]: applications made inside the tactic's own automation, not stated — Int.sub_eq_zero_of_eq ×8, Int.emod_def ×3; machinery/glue: of_decide_eq_true ×1
          assert !((((a * b) * (a + b)) % 7) == 0);  // sub-goal of `simp` (Lean state) // @tac 1318-1399
          // UNCITED-APPLIED internal ×22 [exec 165 1318-1399]: applications made inside the tactic's own automation, not stated — one_mul ×1, EuclideanDomain.mod_self ×1, EuclideanDomain.zero_mod ×1; machinery/glue: congrArg ×8, Eq.trans ×7, congr ×3, eq_self ×1 (cited in this block, not counted here: Int.add_emod [Lean recorded ×1], Int.mul_emod [Lean recorded ×2])
        }
        assert !((((a * b) * (a + b)) % 7) == 0);  // sub-goal of `rcases` (Lean state) // @tac 1247-1305
      }
      if (((a % 7) == 2)) {  // sub-goal of `rcases` (Lean state)
        if (((b % 7) == 1)) {  // sub-goal of `simp` (Lean state)
          IntMulEmod(a, b, 7);  // cite: Int.mul_emod
          IntAddEmod(a, b, 7);  // cite: Int.add_emod
          // UNCITED Int.sub_emod: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED pow_succ: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
          // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (2 : ℤ))
          assert ((7) > 0);  // precondition of IntMulEmod (Lean: Int.mul_emod)
          IntMulEmod((a * b), (a + b), 7);  // cite: Int.mul_emod
          // GAP: Int.mul_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          // GAP: Int.add_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          assert !((((a * b) * (a + b)) % 7) == 0);  // sub-goal of `simp` (Lean state) // @tac 1318-1399
          // UNCITED-APPLIED internal ×18 [exec 168 1318-1399]: applications made inside the tactic's own automation, not stated — mul_one ×1; machinery/glue: congrArg ×8, Eq.trans ×5, congr ×3, of_eq_true ×1 (cited in this block, not counted here: Int.add_emod [Lean recorded ×1], Int.mul_emod [Lean recorded ×2])
        }
        if (((b % 7) == 2)) {  // sub-goal of `simp` (Lean state)
          IntMulEmod(a, b, 7);  // cite: Int.mul_emod
          IntAddEmod(a, b, 7);  // cite: Int.add_emod
          // UNCITED Int.sub_emod: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED pow_succ: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
          assert ((7) > 0);  // precondition of IntMulEmod (Lean: Int.mul_emod)
          IntMulEmod((a * b), (a + b), 7);  // cite: Int.mul_emod
          // GAP: Int.mul_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          // GAP: Int.add_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          assert !((((a * b) * (a + b)) % 7) == 0);  // sub-goal of `simp` (Lean state) // @tac 1318-1399
          // UNCITED-APPLIED internal ×16 [exec 171 1318-1399]: applications made inside the tactic's own automation, not stated — machinery/glue: congrArg ×8, Eq.trans ×4, congr ×3, of_eq_true ×1 (cited in this block, not counted here: Int.add_emod [Lean recorded ×1], Int.mul_emod [Lean recorded ×2])
        }
        if (((b % 7) == 3)) {  // sub-goal of `simp` (Lean state)
          IntMulEmod(a, b, 7);  // cite: Int.mul_emod
          IntAddEmod(a, b, 7);  // cite: Int.add_emod
          // UNCITED Int.sub_emod: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED pow_succ: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
          assert ((7) > 0);  // precondition of IntMulEmod (Lean: Int.mul_emod)
          IntMulEmod((a * b), (a + b), 7);  // cite: Int.mul_emod
          // GAP: Int.mul_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          // GAP: Int.add_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          assert !((((a * b) * (a + b)) % 7) == 0);  // sub-goal of `simp` (Lean state) // @tac 1318-1399
          // UNCITED-APPLIED internal ×16 [exec 174 1318-1399]: applications made inside the tactic's own automation, not stated — machinery/glue: congrArg ×8, Eq.trans ×4, congr ×3, of_eq_true ×1 (cited in this block, not counted here: Int.add_emod [Lean recorded ×1], Int.mul_emod [Lean recorded ×2])
        }
        if (((b % 7) == 4)) {  // sub-goal of `simp` (Lean state)
          IntMulEmod(a, b, 7);  // cite: Int.mul_emod
          IntAddEmod(a, b, 7);  // cite: Int.add_emod
          // UNCITED Int.sub_emod: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED pow_succ: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
          assert ((7) > 0);  // precondition of IntMulEmod (Lean: Int.mul_emod)
          IntMulEmod((a * b), (a + b), 7);  // cite: Int.mul_emod
          // GAP: Int.mul_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          // GAP: Int.add_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          assert !((((a * b) * (a + b)) % 7) == 0);  // sub-goal of `simp` (Lean state) // @tac 1318-1399
          // UNCITED-APPLIED internal ×18 [exec 177 1318-1399]: applications made inside the tactic's own automation, not stated — one_mul ×1; machinery/glue: congrArg ×8, Eq.trans ×5, congr ×3, of_eq_true ×1 (cited in this block, not counted here: Int.add_emod [Lean recorded ×1], Int.mul_emod [Lean recorded ×2])
        }
        if (((b % 7) == 5)) {  // sub-goal of `simp` (Lean state)
          IntMulEmod(a, b, 7);  // cite: Int.mul_emod
          IntAddEmod(a, b, 7);  // cite: Int.add_emod
          // UNCITED Int.sub_emod: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED pow_succ: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
          assert ((7) > 0);  // precondition of IntMulEmod (Lean: Int.mul_emod)
          IntMulEmod((a * b), (a + b), 7);  // cite: Int.mul_emod
          // GAP: Int.mul_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          // GAP: Int.add_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          assert IntDvd(823543, ((((((((((((((((((((((((((a % 823543) % 823543) + ((b % 823543) % 823543)) % 823543) % 823543) * (((((a % 823543) % 823543) + ((b % 823543) % 823543)) % 823543) % 823543)) % 823543) % 823543) * (((((a % 823543) % 823543) + ((b % 823543) % 823543)) % 823543) % 823543)) % 823543) % 823543) * (((((a % 823543) % 823543) + ((b % 823543) % 823543)) % 823543) % 823543)) % 823543) % 823543) * (((((a % 823543) % 823543) + ((b % 823543) % 823543)) % 823543) % 823543)) % 823543) % 823543) * (((((a % 823543) % 823543) + ((b % 823543) % 823543)) % 823543) % 823543)) % 823543) % 823543) * (((((a % 823543) % 823543) + ((b % 823543) % 823543)) % 823543) % 823543)) % 823543) % 823543) - ((((((((((((((((((((a % 823543) % 823543) * ((a % 823543) % 823543)) % 823543) % 823543) * ((a % 823543) % 823543)) % 823543) % 823543) * ((a % 823543) % 823543)) % 823543) % 823543) * ((a % 823543) % 823543)) % 823543) % 823543) * ((a % 823543) % 823543)) % 823543) % 823543) * ((a % 823543) % 823543)) % 823543) % 823543)) % 823543) - (((((((((((((((((((b % 823543) % 823543) * ((b % 823543) % 823543)) % 823543) % 823543) * ((b % 823543) % 823543)) % 823543) % 823543) * ((b % 823543) % 823543)) % 823543) % 823543) * ((b % 823543) % 823543)) % 823543) % 823543) * ((b % 823543) % 823543)) % 823543) % 823543) * ((b % 823543) % 823543)) % 823543)));  // hypothesis h₄ after `simp` (Lean state) // @tac-hyp 1318-1399
          assert false;  // sub-goal of `omega` (Lean state) // @tac 1414-1419
          // UNCITED-APPLIED internal ×12 [exec 267 1414-1419]: applications made inside the tactic's own automation, not stated — Int.sub_eq_zero_of_eq ×8, Int.emod_def ×3; machinery/glue: of_decide_eq_true ×1
          assert !((((a * b) * (a + b)) % 7) == 0);  // sub-goal of `simp` (Lean state) // @tac 1318-1399
          // UNCITED-APPLIED internal ×21 [exec 180 1318-1399]: applications made inside the tactic's own automation, not stated — EuclideanDomain.mod_self ×1, EuclideanDomain.zero_mod ×1; machinery/glue: congrArg ×8, Eq.trans ×7, congr ×3, eq_self ×1 (cited in this block, not counted here: Int.add_emod [Lean recorded ×1], Int.mul_emod [Lean recorded ×2])
        }
        if (((b % 7) == 6)) {  // sub-goal of `simp` (Lean state)
          IntMulEmod(a, b, 7);  // cite: Int.mul_emod
          IntAddEmod(a, b, 7);  // cite: Int.add_emod
          // UNCITED Int.sub_emod: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED pow_succ: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
          // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (5 : ℤ))
          assert ((7) > 0);  // precondition of IntMulEmod (Lean: Int.mul_emod)
          IntMulEmod((a * b), (a + b), 7);  // cite: Int.mul_emod
          // GAP: Int.mul_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          // GAP: Int.add_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          assert !((((a * b) * (a + b)) % 7) == 0);  // sub-goal of `simp` (Lean state) // @tac 1318-1399
          // UNCITED-APPLIED internal ×18 [exec 183 1318-1399]: applications made inside the tactic's own automation, not stated — mul_one ×1; machinery/glue: congrArg ×8, Eq.trans ×5, congr ×3, of_eq_true ×1 (cited in this block, not counted here: Int.add_emod [Lean recorded ×1], Int.mul_emod [Lean recorded ×2])
        }
        assert !((((a * b) * (a + b)) % 7) == 0);  // sub-goal of `rcases` (Lean state) // @tac 1247-1305
      }
      if (((a % 7) == 3)) {  // sub-goal of `rcases` (Lean state)
        if (((b % 7) == 1)) {  // sub-goal of `simp` (Lean state)
          IntMulEmod(a, b, 7);  // cite: Int.mul_emod
          IntAddEmod(a, b, 7);  // cite: Int.add_emod
          // UNCITED Int.sub_emod: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED pow_succ: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
          // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (3 : ℤ))
          assert ((7) > 0);  // precondition of IntMulEmod (Lean: Int.mul_emod)
          IntMulEmod((a * b), (a + b), 7);  // cite: Int.mul_emod
          // GAP: Int.mul_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          // GAP: Int.add_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          assert !((((a * b) * (a + b)) % 7) == 0);  // sub-goal of `simp` (Lean state) // @tac 1318-1399
          // UNCITED-APPLIED internal ×18 [exec 186 1318-1399]: applications made inside the tactic's own automation, not stated — mul_one ×1; machinery/glue: congrArg ×8, Eq.trans ×5, congr ×3, of_eq_true ×1 (cited in this block, not counted here: Int.add_emod [Lean recorded ×1], Int.mul_emod [Lean recorded ×2])
        }
        if (((b % 7) == 2)) {  // sub-goal of `simp` (Lean state)
          IntMulEmod(a, b, 7);  // cite: Int.mul_emod
          IntAddEmod(a, b, 7);  // cite: Int.add_emod
          // UNCITED Int.sub_emod: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED pow_succ: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
          assert ((7) > 0);  // precondition of IntMulEmod (Lean: Int.mul_emod)
          IntMulEmod((a * b), (a + b), 7);  // cite: Int.mul_emod
          // GAP: Int.mul_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          // GAP: Int.add_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          assert !((((a * b) * (a + b)) % 7) == 0);  // sub-goal of `simp` (Lean state) // @tac 1318-1399
          // UNCITED-APPLIED internal ×16 [exec 189 1318-1399]: applications made inside the tactic's own automation, not stated — machinery/glue: congrArg ×8, Eq.trans ×4, congr ×3, of_eq_true ×1 (cited in this block, not counted here: Int.add_emod [Lean recorded ×1], Int.mul_emod [Lean recorded ×2])
        }
        if (((b % 7) == 3)) {  // sub-goal of `simp` (Lean state)
          IntMulEmod(a, b, 7);  // cite: Int.mul_emod
          IntAddEmod(a, b, 7);  // cite: Int.add_emod
          // UNCITED Int.sub_emod: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED pow_succ: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
          assert ((7) > 0);  // precondition of IntMulEmod (Lean: Int.mul_emod)
          IntMulEmod((a * b), (a + b), 7);  // cite: Int.mul_emod
          // GAP: Int.mul_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          // GAP: Int.add_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          assert !((((a * b) * (a + b)) % 7) == 0);  // sub-goal of `simp` (Lean state) // @tac 1318-1399
          // UNCITED-APPLIED internal ×16 [exec 192 1318-1399]: applications made inside the tactic's own automation, not stated — machinery/glue: congrArg ×8, Eq.trans ×4, congr ×3, of_eq_true ×1 (cited in this block, not counted here: Int.add_emod [Lean recorded ×1], Int.mul_emod [Lean recorded ×2])
        }
        if (((b % 7) == 4)) {  // sub-goal of `simp` (Lean state)
          IntMulEmod(a, b, 7);  // cite: Int.mul_emod
          IntAddEmod(a, b, 7);  // cite: Int.add_emod
          // UNCITED Int.sub_emod: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED pow_succ: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
          assert ((7) > 0);  // precondition of IntMulEmod (Lean: Int.mul_emod)
          IntMulEmod((a * b), (a + b), 7);  // cite: Int.mul_emod
          // GAP: Int.mul_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          // GAP: Int.add_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          assert IntDvd(823543, ((((((((((((((((((((((((((a % 823543) % 823543) + ((b % 823543) % 823543)) % 823543) % 823543) * (((((a % 823543) % 823543) + ((b % 823543) % 823543)) % 823543) % 823543)) % 823543) % 823543) * (((((a % 823543) % 823543) + ((b % 823543) % 823543)) % 823543) % 823543)) % 823543) % 823543) * (((((a % 823543) % 823543) + ((b % 823543) % 823543)) % 823543) % 823543)) % 823543) % 823543) * (((((a % 823543) % 823543) + ((b % 823543) % 823543)) % 823543) % 823543)) % 823543) % 823543) * (((((a % 823543) % 823543) + ((b % 823543) % 823543)) % 823543) % 823543)) % 823543) % 823543) * (((((a % 823543) % 823543) + ((b % 823543) % 823543)) % 823543) % 823543)) % 823543) % 823543) - ((((((((((((((((((((a % 823543) % 823543) * ((a % 823543) % 823543)) % 823543) % 823543) * ((a % 823543) % 823543)) % 823543) % 823543) * ((a % 823543) % 823543)) % 823543) % 823543) * ((a % 823543) % 823543)) % 823543) % 823543) * ((a % 823543) % 823543)) % 823543) % 823543) * ((a % 823543) % 823543)) % 823543) % 823543)) % 823543) - (((((((((((((((((((b % 823543) % 823543) * ((b % 823543) % 823543)) % 823543) % 823543) * ((b % 823543) % 823543)) % 823543) % 823543) * ((b % 823543) % 823543)) % 823543) % 823543) * ((b % 823543) % 823543)) % 823543) % 823543) * ((b % 823543) % 823543)) % 823543) % 823543) * ((b % 823543) % 823543)) % 823543)));  // hypothesis h₄ after `simp` (Lean state) // @tac-hyp 1318-1399
          assert false;  // sub-goal of `omega` (Lean state) // @tac 1414-1419
          // UNCITED-APPLIED internal ×12 [exec 270 1414-1419]: applications made inside the tactic's own automation, not stated — Int.sub_eq_zero_of_eq ×8, Int.emod_def ×3; machinery/glue: of_decide_eq_true ×1
          assert !((((a * b) * (a + b)) % 7) == 0);  // sub-goal of `simp` (Lean state) // @tac 1318-1399
          // UNCITED-APPLIED internal ×21 [exec 195 1318-1399]: applications made inside the tactic's own automation, not stated — EuclideanDomain.mod_self ×1, EuclideanDomain.zero_mod ×1; machinery/glue: congrArg ×8, Eq.trans ×7, congr ×3, eq_self ×1 (cited in this block, not counted here: Int.add_emod [Lean recorded ×1], Int.mul_emod [Lean recorded ×2])
        }
        if (((b % 7) == 5)) {  // sub-goal of `simp` (Lean state)
          IntMulEmod(a, b, 7);  // cite: Int.mul_emod
          IntAddEmod(a, b, 7);  // cite: Int.add_emod
          // UNCITED Int.sub_emod: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED pow_succ: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
          // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (1 : ℤ))
          assert ((7) > 0);  // precondition of IntMulEmod (Lean: Int.mul_emod)
          IntMulEmod((a * b), (a + b), 7);  // cite: Int.mul_emod
          // GAP: Int.mul_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          // GAP: Int.add_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          assert !((((a * b) * (a + b)) % 7) == 0);  // sub-goal of `simp` (Lean state) // @tac 1318-1399
          // UNCITED-APPLIED internal ×18 [exec 198 1318-1399]: applications made inside the tactic's own automation, not stated — mul_one ×1; machinery/glue: congrArg ×8, Eq.trans ×5, congr ×3, of_eq_true ×1 (cited in this block, not counted here: Int.add_emod [Lean recorded ×1], Int.mul_emod [Lean recorded ×2])
        }
        if (((b % 7) == 6)) {  // sub-goal of `simp` (Lean state)
          IntMulEmod(a, b, 7);  // cite: Int.mul_emod
          IntAddEmod(a, b, 7);  // cite: Int.add_emod
          // UNCITED Int.sub_emod: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED pow_succ: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
          assert ((7) > 0);  // precondition of IntMulEmod (Lean: Int.mul_emod)
          IntMulEmod((a * b), (a + b), 7);  // cite: Int.mul_emod
          // GAP: Int.mul_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          // GAP: Int.add_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          assert !((((a * b) * (a + b)) % 7) == 0);  // sub-goal of `simp` (Lean state) // @tac 1318-1399
          // UNCITED-APPLIED internal ×16 [exec 201 1318-1399]: applications made inside the tactic's own automation, not stated — machinery/glue: congrArg ×8, Eq.trans ×4, congr ×3, of_eq_true ×1 (cited in this block, not counted here: Int.add_emod [Lean recorded ×1], Int.mul_emod [Lean recorded ×2])
        }
        assert !((((a * b) * (a + b)) % 7) == 0);  // sub-goal of `rcases` (Lean state) // @tac 1247-1305
      }
      if (((a % 7) == 4)) {  // sub-goal of `rcases` (Lean state)
        if (((b % 7) == 1)) {  // sub-goal of `simp` (Lean state)
          IntMulEmod(a, b, 7);  // cite: Int.mul_emod
          IntAddEmod(a, b, 7);  // cite: Int.add_emod
          // UNCITED Int.sub_emod: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED pow_succ: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
          // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (4 : ℤ))
          assert ((7) > 0);  // precondition of IntMulEmod (Lean: Int.mul_emod)
          IntMulEmod((a * b), (a + b), 7);  // cite: Int.mul_emod
          // GAP: Int.mul_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          // GAP: Int.add_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          assert !((((a * b) * (a + b)) % 7) == 0);  // sub-goal of `simp` (Lean state) // @tac 1318-1399
          // UNCITED-APPLIED internal ×18 [exec 204 1318-1399]: applications made inside the tactic's own automation, not stated — mul_one ×1; machinery/glue: congrArg ×8, Eq.trans ×5, congr ×3, of_eq_true ×1 (cited in this block, not counted here: Int.add_emod [Lean recorded ×1], Int.mul_emod [Lean recorded ×2])
        }
        if (((b % 7) == 2)) {  // sub-goal of `simp` (Lean state)
          IntMulEmod(a, b, 7);  // cite: Int.mul_emod
          IntAddEmod(a, b, 7);  // cite: Int.add_emod
          // UNCITED Int.sub_emod: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED pow_succ: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
          assert ((7) > 0);  // precondition of IntMulEmod (Lean: Int.mul_emod)
          IntMulEmod((a * b), (a + b), 7);  // cite: Int.mul_emod
          // GAP: Int.mul_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          // GAP: Int.add_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          assert !((((a * b) * (a + b)) % 7) == 0);  // sub-goal of `simp` (Lean state) // @tac 1318-1399
          // UNCITED-APPLIED internal ×18 [exec 207 1318-1399]: applications made inside the tactic's own automation, not stated — one_mul ×1; machinery/glue: congrArg ×8, Eq.trans ×5, congr ×3, of_eq_true ×1 (cited in this block, not counted here: Int.add_emod [Lean recorded ×1], Int.mul_emod [Lean recorded ×2])
        }
        if (((b % 7) == 3)) {  // sub-goal of `simp` (Lean state)
          IntMulEmod(a, b, 7);  // cite: Int.mul_emod
          IntAddEmod(a, b, 7);  // cite: Int.add_emod
          // UNCITED Int.sub_emod: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED pow_succ: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
          assert ((7) > 0);  // precondition of IntMulEmod (Lean: Int.mul_emod)
          IntMulEmod((a * b), (a + b), 7);  // cite: Int.mul_emod
          // GAP: Int.mul_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          // GAP: Int.add_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          assert IntDvd(823543, ((((((((((((((((((((((((((a % 823543) % 823543) + ((b % 823543) % 823543)) % 823543) % 823543) * (((((a % 823543) % 823543) + ((b % 823543) % 823543)) % 823543) % 823543)) % 823543) % 823543) * (((((a % 823543) % 823543) + ((b % 823543) % 823543)) % 823543) % 823543)) % 823543) % 823543) * (((((a % 823543) % 823543) + ((b % 823543) % 823543)) % 823543) % 823543)) % 823543) % 823543) * (((((a % 823543) % 823543) + ((b % 823543) % 823543)) % 823543) % 823543)) % 823543) % 823543) * (((((a % 823543) % 823543) + ((b % 823543) % 823543)) % 823543) % 823543)) % 823543) % 823543) * (((((a % 823543) % 823543) + ((b % 823543) % 823543)) % 823543) % 823543)) % 823543) % 823543) - ((((((((((((((((((((a % 823543) % 823543) * ((a % 823543) % 823543)) % 823543) % 823543) * ((a % 823543) % 823543)) % 823543) % 823543) * ((a % 823543) % 823543)) % 823543) % 823543) * ((a % 823543) % 823543)) % 823543) % 823543) * ((a % 823543) % 823543)) % 823543) % 823543) * ((a % 823543) % 823543)) % 823543) % 823543)) % 823543) - (((((((((((((((((((b % 823543) % 823543) * ((b % 823543) % 823543)) % 823543) % 823543) * ((b % 823543) % 823543)) % 823543) % 823543) * ((b % 823543) % 823543)) % 823543) % 823543) * ((b % 823543) % 823543)) % 823543) % 823543) * ((b % 823543) % 823543)) % 823543) % 823543) * ((b % 823543) % 823543)) % 823543)));  // hypothesis h₄ after `simp` (Lean state) // @tac-hyp 1318-1399
          assert false;  // sub-goal of `omega` (Lean state) // @tac 1414-1419
          // UNCITED-APPLIED internal ×12 [exec 273 1414-1419]: applications made inside the tactic's own automation, not stated — Int.sub_eq_zero_of_eq ×8, Int.emod_def ×3; machinery/glue: of_decide_eq_true ×1
          assert !((((a * b) * (a + b)) % 7) == 0);  // sub-goal of `simp` (Lean state) // @tac 1318-1399
          // UNCITED-APPLIED internal ×21 [exec 210 1318-1399]: applications made inside the tactic's own automation, not stated — EuclideanDomain.mod_self ×1, EuclideanDomain.zero_mod ×1; machinery/glue: congrArg ×8, Eq.trans ×7, congr ×3, eq_self ×1 (cited in this block, not counted here: Int.add_emod [Lean recorded ×1], Int.mul_emod [Lean recorded ×2])
        }
        if (((b % 7) == 4)) {  // sub-goal of `simp` (Lean state)
          IntMulEmod(a, b, 7);  // cite: Int.mul_emod
          IntAddEmod(a, b, 7);  // cite: Int.add_emod
          // UNCITED Int.sub_emod: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED pow_succ: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
          // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (2 : ℤ))
          assert ((7) > 0);  // precondition of IntMulEmod (Lean: Int.mul_emod)
          IntMulEmod((a * b), (a + b), 7);  // cite: Int.mul_emod
          // GAP: Int.mul_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          // GAP: Int.add_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          assert !((((a * b) * (a + b)) % 7) == 0);  // sub-goal of `simp` (Lean state) // @tac 1318-1399
          // UNCITED-APPLIED internal ×18 [exec 213 1318-1399]: applications made inside the tactic's own automation, not stated — mul_one ×1; machinery/glue: congrArg ×8, Eq.trans ×5, congr ×3, of_eq_true ×1 (cited in this block, not counted here: Int.add_emod [Lean recorded ×1], Int.mul_emod [Lean recorded ×2])
        }
        if (((b % 7) == 5)) {  // sub-goal of `simp` (Lean state)
          IntMulEmod(a, b, 7);  // cite: Int.mul_emod
          IntAddEmod(a, b, 7);  // cite: Int.add_emod
          // UNCITED Int.sub_emod: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED pow_succ: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
          assert ((7) > 0);  // precondition of IntMulEmod (Lean: Int.mul_emod)
          IntMulEmod((a * b), (a + b), 7);  // cite: Int.mul_emod
          // GAP: Int.mul_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          // GAP: Int.add_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          assert !((((a * b) * (a + b)) % 7) == 0);  // sub-goal of `simp` (Lean state) // @tac 1318-1399
          // UNCITED-APPLIED internal ×16 [exec 216 1318-1399]: applications made inside the tactic's own automation, not stated — machinery/glue: congrArg ×8, Eq.trans ×4, congr ×3, of_eq_true ×1 (cited in this block, not counted here: Int.add_emod [Lean recorded ×1], Int.mul_emod [Lean recorded ×2])
        }
        if (((b % 7) == 6)) {  // sub-goal of `simp` (Lean state)
          IntMulEmod(a, b, 7);  // cite: Int.mul_emod
          IntAddEmod(a, b, 7);  // cite: Int.add_emod
          // UNCITED Int.sub_emod: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED pow_succ: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
          assert ((7) > 0);  // precondition of IntMulEmod (Lean: Int.mul_emod)
          IntMulEmod((a * b), (a + b), 7);  // cite: Int.mul_emod
          // GAP: Int.mul_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          // GAP: Int.add_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          assert !((((a * b) * (a + b)) % 7) == 0);  // sub-goal of `simp` (Lean state) // @tac 1318-1399
          // UNCITED-APPLIED internal ×16 [exec 219 1318-1399]: applications made inside the tactic's own automation, not stated — machinery/glue: congrArg ×8, Eq.trans ×4, congr ×3, of_eq_true ×1 (cited in this block, not counted here: Int.add_emod [Lean recorded ×1], Int.mul_emod [Lean recorded ×2])
        }
        assert !((((a * b) * (a + b)) % 7) == 0);  // sub-goal of `rcases` (Lean state) // @tac 1247-1305
      }
      if (((a % 7) == 5)) {  // sub-goal of `rcases` (Lean state)
        if (((b % 7) == 1)) {  // sub-goal of `simp` (Lean state)
          IntMulEmod(a, b, 7);  // cite: Int.mul_emod
          IntAddEmod(a, b, 7);  // cite: Int.add_emod
          // UNCITED Int.sub_emod: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED pow_succ: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
          // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (5 : ℤ))
          assert ((7) > 0);  // precondition of IntMulEmod (Lean: Int.mul_emod)
          IntMulEmod((a * b), (a + b), 7);  // cite: Int.mul_emod
          // GAP: Int.mul_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          // GAP: Int.add_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          assert !((((a * b) * (a + b)) % 7) == 0);  // sub-goal of `simp` (Lean state) // @tac 1318-1399
          // UNCITED-APPLIED internal ×18 [exec 222 1318-1399]: applications made inside the tactic's own automation, not stated — mul_one ×1; machinery/glue: congrArg ×8, Eq.trans ×5, congr ×3, of_eq_true ×1 (cited in this block, not counted here: Int.add_emod [Lean recorded ×1], Int.mul_emod [Lean recorded ×2])
        }
        if (((b % 7) == 2)) {  // sub-goal of `simp` (Lean state)
          IntMulEmod(a, b, 7);  // cite: Int.mul_emod
          IntAddEmod(a, b, 7);  // cite: Int.add_emod
          // UNCITED Int.sub_emod: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED pow_succ: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
          assert ((7) > 0);  // precondition of IntMulEmod (Lean: Int.mul_emod)
          IntMulEmod((a * b), (a + b), 7);  // cite: Int.mul_emod
          // GAP: Int.mul_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          // GAP: Int.add_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          assert IntDvd(823543, ((((((((((((((((((((((((((a % 823543) % 823543) + ((b % 823543) % 823543)) % 823543) % 823543) * (((((a % 823543) % 823543) + ((b % 823543) % 823543)) % 823543) % 823543)) % 823543) % 823543) * (((((a % 823543) % 823543) + ((b % 823543) % 823543)) % 823543) % 823543)) % 823543) % 823543) * (((((a % 823543) % 823543) + ((b % 823543) % 823543)) % 823543) % 823543)) % 823543) % 823543) * (((((a % 823543) % 823543) + ((b % 823543) % 823543)) % 823543) % 823543)) % 823543) % 823543) * (((((a % 823543) % 823543) + ((b % 823543) % 823543)) % 823543) % 823543)) % 823543) % 823543) * (((((a % 823543) % 823543) + ((b % 823543) % 823543)) % 823543) % 823543)) % 823543) % 823543) - ((((((((((((((((((((a % 823543) % 823543) * ((a % 823543) % 823543)) % 823543) % 823543) * ((a % 823543) % 823543)) % 823543) % 823543) * ((a % 823543) % 823543)) % 823543) % 823543) * ((a % 823543) % 823543)) % 823543) % 823543) * ((a % 823543) % 823543)) % 823543) % 823543) * ((a % 823543) % 823543)) % 823543) % 823543)) % 823543) - (((((((((((((((((((b % 823543) % 823543) * ((b % 823543) % 823543)) % 823543) % 823543) * ((b % 823543) % 823543)) % 823543) % 823543) * ((b % 823543) % 823543)) % 823543) % 823543) * ((b % 823543) % 823543)) % 823543) % 823543) * ((b % 823543) % 823543)) % 823543) % 823543) * ((b % 823543) % 823543)) % 823543)));  // hypothesis h₄ after `simp` (Lean state) // @tac-hyp 1318-1399
          assert false;  // sub-goal of `omega` (Lean state) // @tac 1414-1419
          // UNCITED-APPLIED internal ×12 [exec 276 1414-1419]: applications made inside the tactic's own automation, not stated — Int.sub_eq_zero_of_eq ×8, Int.emod_def ×3; machinery/glue: of_decide_eq_true ×1
          assert !((((a * b) * (a + b)) % 7) == 0);  // sub-goal of `simp` (Lean state) // @tac 1318-1399
          // UNCITED-APPLIED internal ×21 [exec 225 1318-1399]: applications made inside the tactic's own automation, not stated — EuclideanDomain.mod_self ×1, EuclideanDomain.zero_mod ×1; machinery/glue: congrArg ×8, Eq.trans ×7, congr ×3, eq_self ×1 (cited in this block, not counted here: Int.add_emod [Lean recorded ×1], Int.mul_emod [Lean recorded ×2])
        }
        if (((b % 7) == 3)) {  // sub-goal of `simp` (Lean state)
          IntMulEmod(a, b, 7);  // cite: Int.mul_emod
          IntAddEmod(a, b, 7);  // cite: Int.add_emod
          // UNCITED Int.sub_emod: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED pow_succ: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
          // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (1 : ℤ))
          assert ((7) > 0);  // precondition of IntMulEmod (Lean: Int.mul_emod)
          IntMulEmod((a * b), (a + b), 7);  // cite: Int.mul_emod
          // GAP: Int.mul_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          // GAP: Int.add_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          assert !((((a * b) * (a + b)) % 7) == 0);  // sub-goal of `simp` (Lean state) // @tac 1318-1399
          // UNCITED-APPLIED internal ×18 [exec 228 1318-1399]: applications made inside the tactic's own automation, not stated — mul_one ×1; machinery/glue: congrArg ×8, Eq.trans ×5, congr ×3, of_eq_true ×1 (cited in this block, not counted here: Int.add_emod [Lean recorded ×1], Int.mul_emod [Lean recorded ×2])
        }
        if (((b % 7) == 4)) {  // sub-goal of `simp` (Lean state)
          IntMulEmod(a, b, 7);  // cite: Int.mul_emod
          IntAddEmod(a, b, 7);  // cite: Int.add_emod
          // UNCITED Int.sub_emod: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED pow_succ: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
          assert ((7) > 0);  // precondition of IntMulEmod (Lean: Int.mul_emod)
          IntMulEmod((a * b), (a + b), 7);  // cite: Int.mul_emod
          // GAP: Int.mul_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          // GAP: Int.add_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          assert !((((a * b) * (a + b)) % 7) == 0);  // sub-goal of `simp` (Lean state) // @tac 1318-1399
          // UNCITED-APPLIED internal ×16 [exec 231 1318-1399]: applications made inside the tactic's own automation, not stated — machinery/glue: congrArg ×8, Eq.trans ×4, congr ×3, of_eq_true ×1 (cited in this block, not counted here: Int.add_emod [Lean recorded ×1], Int.mul_emod [Lean recorded ×2])
        }
        if (((b % 7) == 5)) {  // sub-goal of `simp` (Lean state)
          IntMulEmod(a, b, 7);  // cite: Int.mul_emod
          IntAddEmod(a, b, 7);  // cite: Int.add_emod
          // UNCITED Int.sub_emod: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED pow_succ: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
          assert ((7) > 0);  // precondition of IntMulEmod (Lean: Int.mul_emod)
          IntMulEmod((a * b), (a + b), 7);  // cite: Int.mul_emod
          // GAP: Int.mul_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          // GAP: Int.add_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          assert !((((a * b) * (a + b)) % 7) == 0);  // sub-goal of `simp` (Lean state) // @tac 1318-1399
          // UNCITED-APPLIED internal ×16 [exec 234 1318-1399]: applications made inside the tactic's own automation, not stated — machinery/glue: congrArg ×8, Eq.trans ×4, congr ×3, of_eq_true ×1 (cited in this block, not counted here: Int.add_emod [Lean recorded ×1], Int.mul_emod [Lean recorded ×2])
        }
        if (((b % 7) == 6)) {  // sub-goal of `simp` (Lean state)
          IntMulEmod(a, b, 7);  // cite: Int.mul_emod
          IntAddEmod(a, b, 7);  // cite: Int.add_emod
          // UNCITED Int.sub_emod: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED pow_succ: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
          assert ((7) > 0);  // precondition of IntMulEmod (Lean: Int.mul_emod)
          IntMulEmod((a * b), (a + b), 7);  // cite: Int.mul_emod
          // GAP: Int.mul_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          // GAP: Int.add_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          assert !((((a * b) * (a + b)) % 7) == 0);  // sub-goal of `simp` (Lean state) // @tac 1318-1399
          // UNCITED-APPLIED internal ×16 [exec 237 1318-1399]: applications made inside the tactic's own automation, not stated — machinery/glue: congrArg ×8, Eq.trans ×4, congr ×3, of_eq_true ×1 (cited in this block, not counted here: Int.add_emod [Lean recorded ×1], Int.mul_emod [Lean recorded ×2])
        }
        assert !((((a * b) * (a + b)) % 7) == 0);  // sub-goal of `rcases` (Lean state) // @tac 1247-1305
      }
      if (((a % 7) == 6)) {  // sub-goal of `rcases` (Lean state)
        if (((b % 7) == 1)) {  // sub-goal of `simp` (Lean state)
          IntMulEmod(a, b, 7);  // cite: Int.mul_emod
          IntAddEmod(a, b, 7);  // cite: Int.add_emod
          // UNCITED Int.sub_emod: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED pow_succ: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
          // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (6 : ℤ))
          assert ((7) > 0);  // precondition of IntMulEmod (Lean: Int.mul_emod)
          IntMulEmod((a * b), (a + b), 7);  // cite: Int.mul_emod
          // GAP: Int.mul_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          // GAP: Int.add_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          assert IntDvd(823543, ((((((((((((((((((((((((((a % 823543) % 823543) + ((b % 823543) % 823543)) % 823543) % 823543) * (((((a % 823543) % 823543) + ((b % 823543) % 823543)) % 823543) % 823543)) % 823543) % 823543) * (((((a % 823543) % 823543) + ((b % 823543) % 823543)) % 823543) % 823543)) % 823543) % 823543) * (((((a % 823543) % 823543) + ((b % 823543) % 823543)) % 823543) % 823543)) % 823543) % 823543) * (((((a % 823543) % 823543) + ((b % 823543) % 823543)) % 823543) % 823543)) % 823543) % 823543) * (((((a % 823543) % 823543) + ((b % 823543) % 823543)) % 823543) % 823543)) % 823543) % 823543) * (((((a % 823543) % 823543) + ((b % 823543) % 823543)) % 823543) % 823543)) % 823543) % 823543) - ((((((((((((((((((((a % 823543) % 823543) * ((a % 823543) % 823543)) % 823543) % 823543) * ((a % 823543) % 823543)) % 823543) % 823543) * ((a % 823543) % 823543)) % 823543) % 823543) * ((a % 823543) % 823543)) % 823543) % 823543) * ((a % 823543) % 823543)) % 823543) % 823543) * ((a % 823543) % 823543)) % 823543) % 823543)) % 823543) - (((((((((((((((((((b % 823543) % 823543) * ((b % 823543) % 823543)) % 823543) % 823543) * ((b % 823543) % 823543)) % 823543) % 823543) * ((b % 823543) % 823543)) % 823543) % 823543) * ((b % 823543) % 823543)) % 823543) % 823543) * ((b % 823543) % 823543)) % 823543) % 823543) * ((b % 823543) % 823543)) % 823543)));  // hypothesis h₄ after `simp` (Lean state) // @tac-hyp 1318-1399
          assert false;  // sub-goal of `omega` (Lean state) // @tac 1414-1419
          // UNCITED-APPLIED internal ×12 [exec 279 1414-1419]: applications made inside the tactic's own automation, not stated — Int.sub_eq_zero_of_eq ×8, Int.emod_def ×3; machinery/glue: of_decide_eq_true ×1
          assert !((((a * b) * (a + b)) % 7) == 0);  // sub-goal of `simp` (Lean state) // @tac 1318-1399
          // UNCITED-APPLIED internal ×22 [exec 240 1318-1399]: applications made inside the tactic's own automation, not stated — mul_one ×1, EuclideanDomain.mod_self ×1, EuclideanDomain.zero_mod ×1; machinery/glue: congrArg ×8, Eq.trans ×7, congr ×3, eq_self ×1 (cited in this block, not counted here: Int.add_emod [Lean recorded ×1], Int.mul_emod [Lean recorded ×2])
        }
        if (((b % 7) == 2)) {  // sub-goal of `simp` (Lean state)
          IntMulEmod(a, b, 7);  // cite: Int.mul_emod
          IntAddEmod(a, b, 7);  // cite: Int.add_emod
          // UNCITED Int.sub_emod: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED pow_succ: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
          // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (5 : ℤ))
          assert ((7) > 0);  // precondition of IntMulEmod (Lean: Int.mul_emod)
          IntMulEmod((a * b), (a + b), 7);  // cite: Int.mul_emod
          // GAP: Int.mul_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          // GAP: Int.add_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          assert !((((a * b) * (a + b)) % 7) == 0);  // sub-goal of `simp` (Lean state) // @tac 1318-1399
          // UNCITED-APPLIED internal ×18 [exec 243 1318-1399]: applications made inside the tactic's own automation, not stated — mul_one ×1; machinery/glue: congrArg ×8, Eq.trans ×5, congr ×3, of_eq_true ×1 (cited in this block, not counted here: Int.add_emod [Lean recorded ×1], Int.mul_emod [Lean recorded ×2])
        }
        if (((b % 7) == 3)) {  // sub-goal of `simp` (Lean state)
          IntMulEmod(a, b, 7);  // cite: Int.mul_emod
          IntAddEmod(a, b, 7);  // cite: Int.add_emod
          // UNCITED Int.sub_emod: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED pow_succ: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
          assert ((7) > 0);  // precondition of IntMulEmod (Lean: Int.mul_emod)
          IntMulEmod((a * b), (a + b), 7);  // cite: Int.mul_emod
          // GAP: Int.mul_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          // GAP: Int.add_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          assert !((((a * b) * (a + b)) % 7) == 0);  // sub-goal of `simp` (Lean state) // @tac 1318-1399
          // UNCITED-APPLIED internal ×16 [exec 246 1318-1399]: applications made inside the tactic's own automation, not stated — machinery/glue: congrArg ×8, Eq.trans ×4, congr ×3, of_eq_true ×1 (cited in this block, not counted here: Int.add_emod [Lean recorded ×1], Int.mul_emod [Lean recorded ×2])
        }
        if (((b % 7) == 4)) {  // sub-goal of `simp` (Lean state)
          IntMulEmod(a, b, 7);  // cite: Int.mul_emod
          IntAddEmod(a, b, 7);  // cite: Int.add_emod
          // UNCITED Int.sub_emod: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED pow_succ: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
          assert ((7) > 0);  // precondition of IntMulEmod (Lean: Int.mul_emod)
          IntMulEmod((a * b), (a + b), 7);  // cite: Int.mul_emod
          // GAP: Int.mul_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          // GAP: Int.add_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          assert !((((a * b) * (a + b)) % 7) == 0);  // sub-goal of `simp` (Lean state) // @tac 1318-1399
          // UNCITED-APPLIED internal ×16 [exec 249 1318-1399]: applications made inside the tactic's own automation, not stated — machinery/glue: congrArg ×8, Eq.trans ×4, congr ×3, of_eq_true ×1 (cited in this block, not counted here: Int.add_emod [Lean recorded ×1], Int.mul_emod [Lean recorded ×2])
        }
        if (((b % 7) == 5)) {  // sub-goal of `simp` (Lean state)
          IntMulEmod(a, b, 7);  // cite: Int.mul_emod
          IntAddEmod(a, b, 7);  // cite: Int.add_emod
          // UNCITED Int.sub_emod: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED pow_succ: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
          assert ((7) > 0);  // precondition of IntMulEmod (Lean: Int.mul_emod)
          IntMulEmod((a * b), (a + b), 7);  // cite: Int.mul_emod
          // GAP: Int.mul_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          // GAP: Int.add_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          assert !((((a * b) * (a + b)) % 7) == 0);  // sub-goal of `simp` (Lean state) // @tac 1318-1399
          // UNCITED-APPLIED internal ×16 [exec 252 1318-1399]: applications made inside the tactic's own automation, not stated — machinery/glue: congrArg ×8, Eq.trans ×4, congr ×3, of_eq_true ×1 (cited in this block, not counted here: Int.add_emod [Lean recorded ×1], Int.mul_emod [Lean recorded ×2])
        }
        if (((b % 7) == 6)) {  // sub-goal of `simp` (Lean state)
          IntMulEmod(a, b, 7);  // cite: Int.mul_emod
          IntAddEmod(a, b, 7);  // cite: Int.add_emod
          // UNCITED Int.sub_emod: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED pow_succ: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
          assert ((7) > 0);  // precondition of IntMulEmod (Lean: Int.mul_emod)
          IntMulEmod((a * b), (a + b), 7);  // cite: Int.mul_emod
          // GAP: Int.mul_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          // GAP: Int.add_emod: this execution also rewrote the hypotheses h₄; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
          assert !((((a * b) * (a + b)) % 7) == 0);  // sub-goal of `simp` (Lean state) // @tac 1318-1399
          // UNCITED-APPLIED internal ×18 [exec 255 1318-1399]: applications made inside the tactic's own automation, not stated — one_mul ×1; machinery/glue: congrArg ×8, Eq.trans ×5, congr ×3, of_eq_true ×1 (cited in this block, not counted here: Int.add_emod [Lean recorded ×1], Int.mul_emod [Lean recorded ×2])
        }
        assert !((((a * b) * (a + b)) % 7) == 0);  // sub-goal of `rcases` (Lean state) // @tac 1247-1305
      }
    }
  }
  // have h₆ : ( a + b ) ^ 7 == a ^ 7 + 7 * a ^ 6 * b + 21 * a ^ 5 * b ^ 2 + 35 * a ^  [type from Lean state]
  assert (Int.pow((a + b), 7) == (((((((Int.pow(a, 7) + ((7 * (a * a * a * a * a * a)) * b)) + ((21 * (a * a * a * a * a)) * (b * b))) + ((35 * (a * a * a * a)) * (b * b * b))) + ((35 * (a * a * a)) * (b * b * b * b))) + ((21 * (a * a)) * (b * b * b * b * b))) + ((7 * a) * (b * b * b * b * b * b))) + Int.pow(b, 7))) by { // @tac 1541-1554
    // [TACTIC: rwSeq [ add_comm ]]
    // UNCITED add_comm: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances here: (a := a, b := b)
    // UNCITED-APPLIED congrArg(a + b, b + a, fun (_a : ℤ) => _a ^ (7 : ℕ) = a ^ (7 : ℕ) + (7 : ℤ) * a ^ (6 : ℕ) * …): no library counterpart (not stated) [exec 300 1541-1554]
    assert (Int.pow((b + a), 7) == (((((((Int.pow(a, 7) + ((7 * (a * a * a * a * a * a)) * b)) + ((21 * (a * a * a * a * a)) * (b * b))) + ((35 * (a * a * a * a)) * (b * b * b))) + ((35 * (a * a * a)) * (b * b * b * b))) + ((21 * (a * a)) * (b * b * b * b * b))) + ((7 * a) * (b * b * b * b * b * b))) + Int.pow(b, 7))) by {  // sub-goal before `rw` (Lean state) // @tac 1611-1624
      // [TACTIC: rwSeq [ add_comm ]]
      // UNCITED add_comm: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances here: (a := b, b := a)
      // UNCITED-APPLIED congrArg(b + a, a + b, fun (_a : ℤ) => _a ^ (7 : ℕ) = a ^ (7 : ℕ) + (7 : ℤ) * a ^ (6 : ℕ) * …): no library counterpart (not stated) [exec 331 1611-1624]
      assert 0 < a;  /* [IN-FILE CHECK] requires 1 of vc_imo_1984_p2_L1713 */
      assert 0 < b;  /* [IN-FILE CHECK] requires 2 of vc_imo_1984_p2_L1713 */
      assert !IntDvd(7, a);  /* [IN-FILE CHECK] requires 3 of vc_imo_1984_p2_L1713 */
      assert !IntDvd(7, b);  /* [IN-FILE CHECK] requires 4 of vc_imo_1984_p2_L1713 */
      assert !IntDvd(7, a + b);  /* [IN-FILE CHECK] requires 5 of vc_imo_1984_p2_L1713 */
      assert IntDvd(Int.pow(7, 7), Int.pow(a + b, 7) - Int.pow(a, 7) - Int.pow(b, 7));  /* [IN-FILE CHECK] requires 6 of vc_imo_1984_p2_L1713 */
      assert if Int.pow(7, 7) == 0 then Int.pow(a + b, 7) - Int.pow(a, 7) - Int.pow(b, 7) == 0 else (Int.pow(a + b, 7) - Int.pow(a, 7) - Int.pow(b, 7)) % Int.pow(7, 7) == 0;  /* [IN-FILE CHECK] requires 7 of vc_imo_1984_p2_L1713 */
      assert !IntDvd(7, a * b * (a + b));  /* [IN-FILE CHECK] requires 8 of vc_imo_1984_p2_L1713 */
      assert Int.pow(a, 1) == a;  /* [IN-FILE CHECK] requires 9 of vc_imo_1984_p2_L1713 */
      assert Int.pow(b, 1) == b;  /* [IN-FILE CHECK] requires 10 of vc_imo_1984_p2_L1713 */
      assert 0 <= 7;  /* [IN-FILE CHECK] requires 11 of vc_imo_1984_p2_L1713 */
      vc_imo_1984_p2_L1713(a, b);  /* [IN-FILE CHECK] the closed lemma for line 1713 */
      assert (Int.pow((a + b), 7) == (((((((Int.pow(a, 7) + ((7 * (a * a * a * a * a * a)) * b)) + ((21 * (a * a * a * a * a)) * (b * b))) + ((35 * (a * a * a * a)) * (b * b * b))) + ((35 * (a * a * a)) * (b * b * b * b))) + ((21 * (a * a)) * (b * b * b * b * b))) + ((7 * a) * (b * b * b * b * b * b))) + Int.pow(b, 7))) by {  // sub-goal before `ring_nf` (Lean state) // @tac 1705-1917 // @tac 1705-1829 // @tac 1705-1773 // @tac 1705-1712
        // [TACTIC: «_<;>_» ring_nf <;> norm_num norm_num <;> simp_all simp_all simp_all <;> omega omega]
        // [TACTIC: Ring_nfAt]
        IntPowOne(a);  // cite: pow_one [applied by the tactic, not named in it]
        IntPowOne(b);  // cite: pow_one [applied by the tactic, not named in it]
        // UNCITED-APPLIED mul_one ×2: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := a ^ (7 : ℕ)); (a := b ^ (7 : ℕ))
        // `ring_nf` closed the goal; the rest of the chain did not run
        // UNCITED-APPLIED internal ×247 [exec 373 1705-1712]: applications made inside the tactic's own automation, not stated — mul_one ×2, add_zero ×1; machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×8, Mathlib.Tactic.Ring.add_pf_zero_add ×8, Mathlib.Tactic.Ring.cast_pos ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8 (+37 more heads, ×212) (cited in this block, not counted here: pow_one [Lean recorded ×2])
      }
    }
  }
  // have h₇ : ( a + b ) ^ 7 - a ^ 7 - b ^ 7 == 7 * ( a ^ 6 * b + 3 * a ^ 5 * b ^ 2 +  [type from Lean state]
  assert (((Int.pow((a + b), 7) - Int.pow(a, 7)) - Int.pow(b, 7)) == (7 * (((((((a * a * a * a * a * a) * b) + ((3 * (a * a * a * a * a)) * (b * b))) + ((5 * (a * a * a * a)) * (b * b * b))) + ((5 * (a * a * a)) * (b * b * b * b))) + ((3 * (a * a)) * (b * b * b * b * b))) + (a * (b * b * b * b * b * b))))) by { // @tac 2035-2068 // @tac 2035-2054
    // [TACTIC: «_<;>_» at h₆ ⊢ <;> omega omega]
    // [TACTIC: Ring_nfAt at h₆ ⊢]
    IntPowOne(a);  // cite: pow_one [applied by the tactic, not named in it]
    IntPowOne(b);  // cite: pow_one [applied by the tactic, not named in it]
    // UNCITED-APPLIED internal ×266 [exec 413 2035-2054]: applications made inside the tactic's own automation, not stated — add_zero ×1; machinery/glue: congrArg ×8, Mathlib.Tactic.Ring.add_pf_add_lt ×8, Mathlib.Tactic.Ring.add_pf_zero_add ×8, Mathlib.Tactic.Ring.cast_pos ×8 (+50 more heads, ×233) (cited in this block, not counted here: pow_one [Lean recorded ×2])
    // `ring_nf` closed the goal; the rest of the chain did not run
  }
  // have h₈ : 7 ^ 7 ∣ 7 * ( a ^ 6 * b + 3 * a ^ 5 * b ^ 2 + 5 * a ^ 4 * b ^ 3 + 5 *   [type from Lean state]
  assert IntDvd(Int.pow(7, 7), (7 * (((((((a * a * a * a * a * a) * b) + ((3 * (a * a * a * a * a)) * (b * b))) + ((5 * (a * a * a * a)) * (b * b * b))) + ((5 * (a * a * a)) * (b * b * b * b))) + ((3 * (a * a)) * (b * b * b * b * b))) + (a * (b * b * b * b * b * b))))) by { // @tac 2248-2284 // @tac 2379-2426
    // [TACTIC: «Norm_num[_]At___» at h₁ h₂ h₃ h₄ h₅]
    assert IntDvd(823543, ((Int.pow((a + b), 7) - Int.pow(a, 7)) - Int.pow(b, 7)));  // hypothesis h₄ after `norm_num` (Lean state) // @tac-hyp 2248-2284
    // [TACTIC: simpAll [ Int.mul_emod , Int.add_emod , pow_succ ]]
    // UNCITED Int.mul_emod: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
    // UNCITED Int.add_emod: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
    IntPowSucc(7, 6);  // cite: pow_succ
    IntPowSucc(7, 5);  // cite: pow_succ
    IntPowSucc(7, 4);  // cite: pow_succ
    IntPowSucc(7, 3);  // cite: pow_succ
    IntPowSucc(7, 2);  // cite: pow_succ
    IntPowSucc(7, 1);  // cite: pow_succ
    IntPowSucc(7, 0);  // cite: pow_succ
    IntPowSucc(a, 5);  // cite: pow_succ
    IntPowSucc(a, 4);  // cite: pow_succ
    IntPowSucc(a, 3);  // cite: pow_succ
    IntPowSucc(a, 2);  // cite: pow_succ
    IntPowSucc(a, 1);  // cite: pow_succ
    IntPowSucc(a, 0);  // cite: pow_succ
    IntPowSucc(b, 1);  // cite: pow_succ
    IntPowSucc(b, 0);  // cite: pow_succ
    IntPowSucc(b, 2);  // cite: pow_succ
    IntPowSucc(b, 3);  // cite: pow_succ
    IntPowSucc(b, 4);  // cite: pow_succ
    IntPowSucc(b, 5);  // cite: pow_succ
    IntPowSucc((a + b), 6);  // cite: pow_succ
    IntPowSucc((a + b), 5);  // cite: pow_succ
    IntPowSucc((a + b), 4);  // cite: pow_succ
    IntPowSucc((a + b), 3);  // cite: pow_succ
    IntPowSucc((a + b), 2);  // cite: pow_succ
    IntPowSucc((a + b), 1);  // cite: pow_succ
    IntPowSucc((a + b), 0);  // cite: pow_succ
    IntPowSucc(a, 6);  // cite: pow_succ
    IntPowSucc(b, 6);  // cite: pow_succ
    IntPowZero(7);  // cite: pow_zero [applied by the tactic, not named in it]
    IntPowZero(a);  // cite: pow_zero [applied by the tactic, not named in it]
    IntPowZero(b);  // cite: pow_zero [applied by the tactic, not named in it]
    IntPowZero((a + b));  // cite: pow_zero [applied by the tactic, not named in it]
    // UNCITED-APPLIED internal ×36 [exec 437 2379-2426]: applications made inside the tactic's own automation, not stated — one_mul ×4; machinery/glue: Eq.trans ×8, congrArg ×8, congr ×6, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+7 more heads, ×8) (cited in this block, not counted here: pow_succ [Lean recorded ×28], pow_zero [Lean recorded ×4])
  }
  // have h₉ : 19 <= a + b  [type from Lean state]
  assert (19 <= (a + b)) by { // @tac 2467-2483
    // contrapose! h₈ → lemma contrapose_helper_1 (Lean's context after the tactic: h₈ reverted)
    if !((19 <= (a + b))) {
      contrapose_helper_1(a, b);  // requires: ((a + b) < 19) (from the negated goal)
      assert false;  // its ensures contradicts the reverted h₈
    }
    // UNCITED-APPLIED implies_congr: no library counterpart (not stated) [exec 474 2467-2483]
    // UNCITED-APPLIED internal ×1 [exec 468 2467-2483]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Contrapose.mtr ×1
    // UNCITED-APPLIED internal ×1 [exec 474 2467-2483]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.PushNeg.not_le_eq ×1
  }
  // [TACTIC: «Linarith[_]At___»]
  // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2925-2933 exec 1647)
  // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(-1 : ℤ) + ((19 : ℤ) - (a + b)) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
  cert_identity_6(a, b);  // cert: add_lt_of_neg_of_le
  // UNCITED-APPLIED internal ×10 [exec 1647 2925-2933]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, le_of_not_gt ×1, neg_neg_of_pos ×1, zero_lt_one ×1, Int.add_one_le_iff ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
  // UNCITED-APPLIED internal ×63 [exec 1648 2925-2933]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×4, Mathlib.Tactic.Ring.neg_add ×4, Mathlib.Meta.NormNum.isInt_add ×4, Mathlib.Meta.NormNum.isNat_ofNat ×3 (+24 more heads, ×48)
  // Option A sweep: tactic executions without a statement above
  // GAP: 1 of 2 executions of `contrapose!` not stated: it ran on 2 goals and the emitter lowers this syntax 1 time // @tac 2467-2483
}



// ===== closed lemma for line 1713 (from closed/imo_1984_p2-1713.dfy) =====

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
  assert Int.pow(a + b, 1) == a + b;  // [ADDED]
  Step2(Int.pow(a + b, 1), Int.pow(a + b, 2), a, b);  // [ADDED]
  Step3(Int.pow(a + b, 2), Int.pow(a + b, 3), a, b);  // [ADDED]
  Step4(Int.pow(a + b, 3), Int.pow(a + b, 4), a, b);  // [ADDED]
  Step5(Int.pow(a + b, 4), Int.pow(a + b, 5), a, b);  // [ADDED]
  Step6(Int.pow(a + b, 5), Int.pow(a + b, 6), a, b);  // [ADDED]
  Step7(Int.pow(a + b, 6), Int.pow(a + b, 7), a, b);  // [ADDED]
  Pow7Mul(a); Pow7Mul(b);  // [ADDED]
  Final1713(Int.pow(a + b, 7), Int.pow(a, 7), Int.pow(b, 7), a, b);  // [ADDED]
}

lemma Step2(S: int, T: int, a: int, b: int)  // [ADDED DECLARATION]
  requires S == a + b
  requires T == S * (a + b)
  ensures T == (a * a) + 2 * a * b + (b * b)
{ }

lemma Step3(S: int, T: int, a: int, b: int)  // [ADDED DECLARATION]
  requires S == (a * a) + 2 * a * b + (b * b)
  requires T == S * (a + b)
  ensures T == (a * a * a) + 3 * (a * a) * b + 3 * a * (b * b) + (b * b * b)
{ }

lemma Step4(S: int, T: int, a: int, b: int)  // [ADDED DECLARATION]
  requires S == (a * a * a) + 3 * (a * a) * b + 3 * a * (b * b) + (b * b * b)
  requires T == S * (a + b)
  ensures T == (a * a * a * a) + 4 * (a * a * a) * b + 6 * (a * a) * (b * b) + 4 * a * (b * b * b) + (b * b * b * b)
{ }

lemma Step5(S: int, T: int, a: int, b: int)  // [ADDED DECLARATION]
  requires S == (a * a * a * a) + 4 * (a * a * a) * b + 6 * (a * a) * (b * b) + 4 * a * (b * b * b) + (b * b * b * b)
  requires T == S * (a + b)
  ensures T == (a * a * a * a * a) + 5 * (a * a * a * a) * b + 10 * (a * a * a) * (b * b) + 10 * (a * a) * (b * b * b) + 5 * a * (b * b * b * b) + (b * b * b * b * b)
{ }

lemma Step6(S: int, T: int, a: int, b: int)  // [ADDED DECLARATION]
  requires S == (a * a * a * a * a) + 5 * (a * a * a * a) * b + 10 * (a * a * a) * (b * b) + 10 * (a * a) * (b * b * b) + 5 * a * (b * b * b * b) + (b * b * b * b * b)
  requires T == S * (a + b)
  ensures T == (a * a * a * a * a * a) + 6 * (a * a * a * a * a) * b + 15 * (a * a * a * a) * (b * b) + 20 * (a * a * a) * (b * b * b) + 15 * (a * a) * (b * b * b * b) + 6 * a * (b * b * b * b * b) + (b * b * b * b * b * b)
{ }

lemma MulA6(S: int, a: int, b: int)  // [ADDED DECLARATION]
  requires S == (a * a * a * a * a * a) + 6 * (a * a * a * a * a) * b + 15 * (a * a * a * a) * (b * b) + 20 * (a * a * a) * (b * b * b) + 15 * (a * a) * (b * b * b * b) + 6 * a * (b * b * b * b * b) + (b * b * b * b * b * b)
  ensures S * a == (a * a * a * a * a * a * a) + 6 * (a * a * a * a * a * a) * b + 15 * (a * a * a * a * a) * (b * b) + 20 * (a * a * a * a) * (b * b * b) + 15 * (a * a * a) * (b * b * b * b) + 6 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)
{ }

lemma MulB6(S: int, a: int, b: int)  // [ADDED DECLARATION]
  requires S == (a * a * a * a * a * a) + 6 * (a * a * a * a * a) * b + 15 * (a * a * a * a) * (b * b) + 20 * (a * a * a) * (b * b * b) + 15 * (a * a) * (b * b * b * b) + 6 * a * (b * b * b * b * b) + (b * b * b * b * b * b)
  ensures S * b == (a * a * a * a * a * a) * b + 6 * (a * a * a * a * a) * (b * b) + 15 * (a * a * a * a) * (b * b * b) + 20 * (a * a * a) * (b * b * b * b) + 15 * (a * a) * (b * b * b * b * b) + 6 * a * (b * b * b * b * b * b) + (b * b * b * b * b * b * b)
{ }

lemma Step7(S: int, T: int, a: int, b: int)  // [ADDED DECLARATION]
  requires S == (a * a * a * a * a * a) + 6 * (a * a * a * a * a) * b + 15 * (a * a * a * a) * (b * b) + 20 * (a * a * a) * (b * b * b) + 15 * (a * a) * (b * b * b * b) + 6 * a * (b * b * b * b * b) + (b * b * b * b * b * b)
  requires T == S * (a + b)
  ensures T == (a * a * a * a * a * a * a) + 7 * (a * a * a * a * a * a) * b + 21 * (a * a * a * a * a) * (b * b) + 35 * (a * a * a * a) * (b * b * b) + 35 * (a * a * a) * (b * b * b * b) + 21 * (a * a) * (b * b * b * b * b) + 7 * a * (b * b * b * b * b * b) + (b * b * b * b * b * b * b)
{
  assert T == S * a + S * b;
  MulA6(S, a, b);
  MulB6(S, a, b);
  assert S * a + S * b == (a * a * a * a * a * a * a) + 7 * (a * a * a * a * a * a) * b + 21 * (a * a * a * a * a) * (b * b) + 35 * (a * a * a * a) * (b * b * b) + 35 * (a * a * a) * (b * b * b * b) + 21 * (a * a) * (b * b * b * b * b) + 7 * a * (b * b * b * b * b * b) + (b * b * b * b * b * b * b);
}

lemma Pow7Mul(x: int)  // [ADDED DECLARATION]
  ensures Int.pow(x, 7) == x * x * x * x * x * x * x
{
  assert Int.pow(x, 1) == x;
  assert Int.pow(x, 2) == x * x;
  assert Int.pow(x, 3) == x * x * x;
  assert Int.pow(x, 4) == x * x * x * x;
  assert Int.pow(x, 5) == x * x * x * x * x;
  assert Int.pow(x, 6) == x * x * x * x * x * x;
  assert Int.pow(x, 7) == x * x * x * x * x * x * x;
}

lemma Final1713(P: int, A: int, B: int, a: int, b: int)  // [ADDED DECLARATION]
  requires P == (a * a * a * a * a * a * a) + 7 * (a * a * a * a * a * a) * b + 21 * (a * a * a * a * a) * (b * b) + 35 * (a * a * a * a) * (b * b * b) + 35 * (a * a * a) * (b * b * b * b) + 21 * (a * a) * (b * b * b * b * b) + 7 * a * (b * b * b * b * b * b) + (b * b * b * b * b * b * b)
  requires A == a * a * a * a * a * a * a
  requires B == b * b * b * b * b * b * b
  ensures P == A + 7 * (a * a * a * a * a * a) * b + 21 * (a * a * a * a * a) * (b * b) + 35 * (a * a * a * a) * (b * b * b) + 35 * (a * a * a) * (b * b * b * b) + 21 * (a * a) * (b * b * b * b * b) + 7 * a * (b * b * b * b * b * b) + B
{ }
