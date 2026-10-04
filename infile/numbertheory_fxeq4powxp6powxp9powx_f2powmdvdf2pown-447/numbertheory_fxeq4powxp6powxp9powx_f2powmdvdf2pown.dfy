// ════════════════════════════════════════════════════════════
// MECHANICAL TRANSLATION (emitter v2) of ast_cache_v2/numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown.json
// Each Lean `have` → `assert ... by {}` at the same depth;
// quantified haves → forall statements. Typed pipeline only.
// ════════════════════════════════════════════════════════════

include "../../library/library_new.dfy"

// ──────────────────────────────────────────────────
// R14 — recursive lemma for `induction t` (structural)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} induction_helper_1(m: nat, n: nat, f: nat -> nat, t: nat)
  requires (forall x: nat :: (f(x) == ((Int.pow(4, x) + Int.pow(6, x)) + Int.pow(9, x))))
  requires ((0 < m) && (0 < n))
  requires (m <= n)
  requires (forall k: nat :: (f((2 * k)) == (f(k) * tsub(f(k), (2 * Int.pow(6, k))))))  // ambient have h_main
  requires (forall k: nat :: NatDvd(f(k), f((2 * k))))  // ambient have h_div
  ensures NatDvd(f(Int.pow(2, m)), f(Int.pow(2, (m + t))))
  decreases t
{
  if t == 0 {
    assert NatDvd(f(Int.pow(2, m)), f(Int.pow(2, (m + 0)))) by {  // sub-goal before `simp` (Lean state) // @tac 5121-5132 // @tac 5090-5132
      // [TACTIC: simp [ h₀ ]]
      assert (f(Int.pow(2, m)) == ((Int.pow(4, Int.pow(2, m)) + Int.pow(6, Int.pow(2, m))) + Int.pow(9, Int.pow(2, m))));  // instance of h₀ (Lean state)
      // UNCITED-APPLIED internal ×7 [exec 1413 5121-5132]: applications made inside the tactic's own automation, not stated — add_zero ×1; machinery/glue: Eq.trans ×2, congrArg ×2, of_eq_true ×1, congr ×1
    }
  } else {
    induction_helper_1(m, n, f, t - 1);
    var t: nat := t - 1;  // Lean's predecessor binder (succ t)
    assert NatDvd(f(Int.pow(2, m)), f(Int.pow(2, (m + (t + 1))))) by {  // sub-goal before `have` (Lean state) // @tac 5219-5281 // @tac 5139-5649 // @tac 5290-5510 // @tac 5519-5536 // @tac 5545-5591 // @tac 5600-5617 // @tac 5626-5649
      // have h₄ : f ( 2 ^ ( m + t ) ) ∣ f ( 2 * 2 ^ ( m + t ) )  [type from Lean state]
      assert NatDvd(f(Int.pow(2, (m + t))), f((2 * Int.pow(2, (m + t))))) by {
        // [TACTIC: exact h_div ( _ )]
        assert NatDvd(f(Int.pow(2, (m + t))), f((2 * Int.pow(2, (m + t)))));  // instance of h_div (Lean state)
      }
      // have h₅ : f ( ( 2 * 2 ^ ( m + t ) ) ) == f ( ( 2 ^ ( m + t + 1 ) ) )  [type from Lean state]
      assert (f((2 * Int.pow(2, (m + t)))) == f(Int.pow(2, ((m + t) + 1)))) by { // @tac 5360-5510
        assert ((2 * Int.pow(2, (m + t))) == Int.pow(2, ((m + t) + 1))) by {  // sub-goal of `by` (Lean state) // @tac 5426-5509 // @tac 5426-5433
          // [TACTIC: «_<;>_» ring_nf <;> simp [ pow_add , pow_one , mul_add , mul_one , add_mul , one_mul ] simp [ pow_add , pow_one , mul_add , mul_one , add_mul , one_mul ] simp [ pow_add , pow_one , mul_add , mul_one , add_mul , one_mul ]]
          // [TACTIC: Ring_nfAt]
          NatPowOne(m);  // cite: pow_one [applied by the tactic, not named in it]
          NatPowOne(t);  // cite: pow_one [applied by the tactic, not named in it]
          // UNCITED-APPLIED mul_one ×2: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := m); (a := t)
          // `ring_nf` closed the goal; the rest of the chain did not run
          // UNCITED-APPLIED internal ×76 [exec 1462 5426-5433]: applications made inside the tactic's own automation, not stated — add_zero ×2, mul_one ×2; machinery/glue: Eq.trans ×8, congrArg ×8, congr ×6, Mathlib.Tactic.Ring.add_pf_add_zero ×4 (+26 more heads, ×46) (cited in this block, not counted here: pow_one [Lean recorded ×2])
        }
        // [TACTIC: rwSeq [ show ( 2 * 2 ^ ( m + t ) : ℕ ) = 2 ^ ( m + t + 1 ) by ring_nf ring_nf <;> simp [ pow_add , pow_one , mul_add , mul_one , add_mul , one_mul ] simp [ pow_add , pow_one , mul_add , mul_one , add_mul , one_mul ] simp [ pow_add , pow_one , mul_add , mul_one , add_mul , one_mul ] ]]
        // UNCITED-APPLIED congrArg((2 : ℕ) * (2 : ℕ) ^ (m + t), (2 : ℕ) ^ (m + t + (1 : ℕ)), fun (_a : ℕ) => f _a = f ((2 : ℕ) ^ (m + t + (1 : ℕ)))): no library counterpart (not stated) [exec 1450 5360-5510]
      }
      // [TACTIC: rwSeq [ h₅ ] at h₄]
      assert NatDvd(f(Int.pow(2, (m + t))), f(Int.pow(2, ((m + t) + 1))));  // hypothesis h₄ after `rw` (Lean state) // @tac-hyp 5519-5536
      // have h₆ : m + t + 1 == m + ( t + 1 )  [type from Lean state]
      assert (((m + t) + 1) == (m + (t + 1))); // @tac 5587-5591
        // [TACTIC: Ring]
      // UNCITED-APPLIED internal ×16 [exec 1538 5587-5591]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×4, Mathlib.Tactic.Ring.add_pf_add_gt ×3, Mathlib.Tactic.Ring.atom_pf ×2, Mathlib.Tactic.Ring.add_pf_add_zero ×2 (+5 more heads, ×5)
      // [TACTIC: rwSeq [ h₆ ] at h₄]
      assert NatDvd(f(Int.pow(2, (m + t))), f(Int.pow(2, (m + (t + 1)))));  // hypothesis h₄ after `rw` (Lean state) // @tac-hyp 5600-5617
      // [TACTIC: exact dvd_trans ih h₄]
      assert NatDvd(f(Int.pow(2, (m + t))), f(Int.pow(2, (m + (t + 1)))));  // hypothesis h₄ at `exact` (Lean state)
      assert (NatDvd((f(Int.pow(2, m))), (f(Int.pow(2, (m + t)))))) && (NatDvd((f(Int.pow(2, (m + t)))), (f(Int.pow(2, (m + (t + 1)))))));  // precondition of NatDvdTrans (Lean: dvd_trans)
      NatDvdTrans(f(Int.pow(2, m)), f(Int.pow(2, (m + t))), f(Int.pow(2, (m + (t + 1)))));  // cite: dvd_trans
      // UNCITED-APPLIED congrArg(m + t + (1 : ℕ), m + (t + (1 : ℕ)), fun (_a : ℕ) => f ((2 : ℕ) ^ (m + t)) ∣ f ((2 : ℕ) ^ _a)): no library counterpart (not stated) [exec 1570 5626-5649]
      // UNCITED-APPLIED congrArg(f ((2 : ℕ) * (2 : ℕ) ^ (m + t)), f ((2 : ℕ) ^ (m + t + (1 : ℕ))), fun (_a : ℕ) => f ((2 : ℕ) ^ (m + t)) ∣ _a): no library counterpart (not stated) [exec 1570 5626-5649]
    }
  }
}

// statement: Lean elaborated type (v3, stmt_cache) — requires/ensures below
lemma numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown(m: nat, n: nat, f: nat -> nat)
  requires (forall x: nat :: (f(x) == ((Int.pow(4, x) + Int.pow(6, x)) + Int.pow(9, x))))
  requires ((0 < m) && (0 < n))
  requires (m <= n)
  ensures NatDvd(f(Int.pow(2, m)), f(Int.pow(2, n))) // @tac 447-4417 // @tac 4423-4894 // @tac 4900-5666 // @tac 5672-6200 // @tac 6206-6219
{
  // have h_main : forall k : ℕ :: f ( ( 2 * k ) ) == f ( k ) * ( f ( k ) - 2 * 6 ^ k )  [type from Lean state]
  forall k: nat // @tac 520-527
    ensures (f((2 * k)) == (f(k) * tsub(f(k), (2 * Int.pow(6, k))))) // @tac 532-617 // @tac 622-683 // @tac 688-703
  {
    // [TACTIC: intro k]
    // have h₁ : f ( ( 2 * k ) ) == 4 ^ ( 2 * k ) + 6 ^ ( 2 * k ) + 9 ^ ( 2 * k )  [type from Lean state]
    assert (f((2 * k)) == ((Int.pow(4, (2 * k)) + Int.pow(6, (2 * k))) + Int.pow(9, (2 * k)))) by { // @tac 608-617
      // [TACTIC: rwSeq [ h₀ ]]
      assert (f((2 * k)) == ((Int.pow(4, (2 * k)) + Int.pow(6, (2 * k))) + Int.pow(9, (2 * k))));  // instance of h₀ (Lean state)
      // UNCITED-APPLIED congrArg(f ((2 : ℕ) * k), (4 : ℕ) ^ ((2 : ℕ) * k) + (6 : ℕ) ^ ((2 : ℕ) * k) + (9 : ℕ) ^ ((2 : ℕ…, fun (_a : ℕ) => _a = (4 : ℕ) ^ ((2 : ℕ) * k) + (6 : ℕ) ^ ((2 : ℕ) * k…): no library counterpart (not stated) [exec 41 608-617]
    }
    // have h₂ : f ( k ) == 4 ^ k + 6 ^ k + 9 ^ k  [type from Lean state]
    assert (f(k) == ((Int.pow(4, k) + Int.pow(6, k)) + Int.pow(9, k))) by { // @tac 674-683
      // [TACTIC: rwSeq [ h₀ ]]
      assert (f(k) == ((Int.pow(4, k) + Int.pow(6, k)) + Int.pow(9, k)));  // instance of h₀ (Lean state)
      // UNCITED-APPLIED congrArg(f k, (4 : ℕ) ^ k + (6 : ℕ) ^ k + (9 : ℕ) ^ k, fun (_a : ℕ) => _a = (4 : ℕ) ^ k + (6 : ℕ) ^ k + (9 : ℕ) ^ k): no library counterpart (not stated) [exec 82 674-683]
    }
    // [TACTIC: rwSeq [ h₁ , h₂ ]]
    // UNCITED-APPLIED congrArg(f ((2 : ℕ) * k), (4 : ℕ) ^ ((2 : ℕ) * k) + (6 : ℕ) ^ ((2 : ℕ) * k) + (9 : ℕ) ^ ((2 : ℕ…, fun (_a : ℕ) => _a = f k * (f k - (2 : ℕ) * (6 : ℕ) ^ k)): no library counterpart (not stated) [exec 107 688-703]
    // UNCITED-APPLIED congrArg(f k, (4 : ℕ) ^ k + (6 : ℕ) ^ k + (9 : ℕ) ^ k, fun (_a : ℕ) => (4 : ℕ) ^ ((2 : ℕ) * k) + (6 : ℕ) ^ ((2 : ℕ) * k) + (…): no library counterpart (not stated) [exec 107 688-703]
    assert (((Int.pow(4, (2 * k)) + Int.pow(6, (2 * k))) + Int.pow(9, (2 * k))) == (((Int.pow(4, k) + Int.pow(6, k)) + Int.pow(9, k)) * tsub(((Int.pow(4, k) + Int.pow(6, k)) + Int.pow(9, k)), (2 * Int.pow(6, k))))) by {  // sub-goal before `have` (Lean state) // @tac 708-857 // @tac 862-1011 // @tac 1016-1165 // @tac 1170-1191
      // have h₃ : 4 ^ ( 2 * k ) == 4 ^ k * 4 ^ k  [type from Lean state]
      assert (Int.pow(4, (2 * k)) == (Int.pow(4, k) * Int.pow(4, k))) by { // @tac 784-823
        assert ((2 * k) == (k + k)) by {  // sub-goal of `by` (Lean state) // @tac 818-822
          // [TACTIC: Ring]
          // UNCITED-APPLIED internal ×19 [exec 166 818-822]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.mul_congr ×1, Mathlib.Tactic.Ring.cast_pos ×1, Mathlib.Meta.NormNum.isNat_ofNat ×1 (+15 more heads, ×15)
        }
        // [TACTIC: rwSeq [ show ( 2 * k : ℕ ) = k + k by ring ]]
        // UNCITED-APPLIED congrArg((2 : ℕ) * k, k + k, fun (_a : ℕ) => (4 : ℕ) ^ _a = (4 : ℕ) ^ k * (4 : ℕ) ^ k): no library counterpart (not stated) [exec 155 784-823]
        assert (Int.pow(4, (k + k)) == (Int.pow(4, k) * Int.pow(4, k))) by {  // sub-goal before `rw` (Lean state) // @tac 830-857 // @tac 830-842
          // [TACTIC: «_<;>_» [ pow_add ] rw [ pow_add ] <;> ring]
          // [TACTIC: rwSeq [ pow_add ]]
          NatPowAdd(4, k, k);  // cite: pow_add
          // `rw` closed the goal; the rest of the chain did not run
          // UNCITED-APPLIED congrArg((4 : ℕ) ^ (k + k), (4 : ℕ) ^ k * (4 : ℕ) ^ k, fun (_a : ℕ) => _a = (4 : ℕ) ^ k * (4 : ℕ) ^ k): no library counterpart (not stated) [exec 200 830-842]
        }
      }
      // have h₄ : 6 ^ ( 2 * k ) == 6 ^ k * 6 ^ k  [type from Lean state]
      assert (Int.pow(6, (2 * k)) == (Int.pow(6, k) * Int.pow(6, k))) by { // @tac 938-977
        assert ((2 * k) == (k + k)) by {  // sub-goal of `by` (Lean state) // @tac 972-976
          // [TACTIC: Ring]
          // UNCITED-APPLIED internal ×19 [exec 258 972-976]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.mul_congr ×1, Mathlib.Tactic.Ring.cast_pos ×1, Mathlib.Meta.NormNum.isNat_ofNat ×1 (+15 more heads, ×15)
        }
        // [TACTIC: rwSeq [ show ( 2 * k : ℕ ) = k + k by ring ]]
        // UNCITED-APPLIED congrArg((2 : ℕ) * k, k + k, fun (_a : ℕ) => (6 : ℕ) ^ _a = (6 : ℕ) ^ k * (6 : ℕ) ^ k): no library counterpart (not stated) [exec 247 938-977]
        assert (Int.pow(6, (k + k)) == (Int.pow(6, k) * Int.pow(6, k))) by {  // sub-goal before `rw` (Lean state) // @tac 984-1011 // @tac 984-996
          // [TACTIC: «_<;>_» [ pow_add ] rw [ pow_add ] <;> ring]
          // [TACTIC: rwSeq [ pow_add ]]
          NatPowAdd(6, k, k);  // cite: pow_add
          // `rw` closed the goal; the rest of the chain did not run
          // UNCITED-APPLIED congrArg((6 : ℕ) ^ (k + k), (6 : ℕ) ^ k * (6 : ℕ) ^ k, fun (_a : ℕ) => _a = (6 : ℕ) ^ k * (6 : ℕ) ^ k): no library counterpart (not stated) [exec 292 984-996]
        }
      }
      // have h₅ : 9 ^ ( 2 * k ) == 9 ^ k * 9 ^ k  [type from Lean state]
      assert (Int.pow(9, (2 * k)) == (Int.pow(9, k) * Int.pow(9, k))) by { // @tac 1092-1131
        assert ((2 * k) == (k + k)) by {  // sub-goal of `by` (Lean state) // @tac 1126-1130
          // [TACTIC: Ring]
          // UNCITED-APPLIED internal ×19 [exec 350 1126-1130]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.mul_congr ×1, Mathlib.Tactic.Ring.cast_pos ×1, Mathlib.Meta.NormNum.isNat_ofNat ×1 (+15 more heads, ×15)
        }
        // [TACTIC: rwSeq [ show ( 2 * k : ℕ ) = k + k by ring ]]
        // UNCITED-APPLIED congrArg((2 : ℕ) * k, k + k, fun (_a : ℕ) => (9 : ℕ) ^ _a = (9 : ℕ) ^ k * (9 : ℕ) ^ k): no library counterpart (not stated) [exec 339 1092-1131]
        assert (Int.pow(9, (k + k)) == (Int.pow(9, k) * Int.pow(9, k))) by {  // sub-goal before `rw` (Lean state) // @tac 1138-1165 // @tac 1138-1150
          // [TACTIC: «_<;>_» [ pow_add ] rw [ pow_add ] <;> ring]
          // [TACTIC: rwSeq [ pow_add ]]
          NatPowAdd(9, k, k);  // cite: pow_add
          // `rw` closed the goal; the rest of the chain did not run
          // UNCITED-APPLIED congrArg((9 : ℕ) ^ (k + k), (9 : ℕ) ^ k * (9 : ℕ) ^ k, fun (_a : ℕ) => _a = (9 : ℕ) ^ k * (9 : ℕ) ^ k): no library counterpart (not stated) [exec 384 1138-1150]
        }
      }
      // [TACTIC: rwSeq [ h₃ , h₄ , h₅ ]]
      // UNCITED-APPLIED congrArg((4 : ℕ) ^ ((2 : ℕ) * k), (4 : ℕ) ^ k * (4 : ℕ) ^ k, fun (_a : ℕ) => _a + (6 : ℕ) ^ ((2 : ℕ) * k) + (9 : ℕ) ^ ((2 : ℕ) * k…): no library counterpart (not stated) [exec 415 1170-1191]
      // UNCITED-APPLIED congrArg((6 : ℕ) ^ ((2 : ℕ) * k), (6 : ℕ) ^ k * (6 : ℕ) ^ k, fun (_a : ℕ) => (4 : ℕ) ^ k * (4 : ℕ) ^ k + _a + (9 : ℕ) ^ ((2 : ℕ) *…): no library counterpart (not stated) [exec 415 1170-1191]
      // UNCITED-APPLIED congrArg((9 : ℕ) ^ ((2 : ℕ) * k), (9 : ℕ) ^ k * (9 : ℕ) ^ k, fun (_a : ℕ) => (4 : ℕ) ^ k * (4 : ℕ) ^ k + (6 : ℕ) ^ k * (6 : ℕ) ^ k…): no library counterpart (not stated) [exec 415 1170-1191]
      assert ((((Int.pow(4, k) * Int.pow(4, k)) + (Int.pow(6, k) * Int.pow(6, k))) + (Int.pow(9, k) * Int.pow(9, k))) == (((Int.pow(4, k) + Int.pow(6, k)) + Int.pow(9, k)) * tsub(((Int.pow(4, k) + Int.pow(6, k)) + Int.pow(9, k)), (2 * Int.pow(6, k))))) by {  // sub-goal before `have` (Lean state) // @tac 1196-2067 // @tac 2072-4114 // @tac 4119-4417 // @tac 4119-4134
        // have h₆ : 4 ^ k * 4 ^ k + 6 ^ k * 6 ^ k + 9 ^ k * 9 ^ k == ( 4 ^ k + 6 ^ k + 9 ^  [type from Lean state]
        assert ((((Int.pow(4, k) * Int.pow(4, k)) + (Int.pow(6, k) * Int.pow(6, k))) + (Int.pow(9, k) * Int.pow(9, k))) == tsub((((Int.pow(4, k) + Int.pow(6, k)) + Int.pow(9, k)) * ((Int.pow(4, k) + Int.pow(6, k)) + Int.pow(9, k))), (2 * (((Int.pow(4, k) * Int.pow(6, k)) + (Int.pow(4, k) * Int.pow(9, k))) + (Int.pow(6, k) * Int.pow(9, k)))))) by { // @tac 1516-1842 // @tac 1849-2055 // @tac 2062-2067
          // have h₇ : ( 4 ^ k + 6 ^ k + 9 ^ k ) * ( 4 ^ k + 6 ^ k + 9 ^ k ) == 4 ^ k * 4 ^ k  [type from Lean state]
          assert ((((Int.pow(4, k) + Int.pow(6, k)) + Int.pow(9, k)) * ((Int.pow(4, k) + Int.pow(6, k)) + Int.pow(9, k))) == ((((Int.pow(4, k) * Int.pow(4, k)) + (Int.pow(6, k) * Int.pow(6, k))) + (Int.pow(9, k) * Int.pow(9, k))) + (2 * (((Int.pow(4, k) * Int.pow(6, k)) + (Int.pow(4, k) * Int.pow(9, k))) + (Int.pow(6, k) * Int.pow(9, k)))))); // @tac 1838-1842
            // [TACTIC: Ring]
          // UNCITED-APPLIED internal ×112 [exec 480 1838-1842]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Tactic.Ring.add_pf_zero_add ×8, Mathlib.Tactic.Ring.mul_pf_right ×8, Mathlib.Tactic.Ring.add_pf_add_lt ×7 (+24 more heads, ×81)
          // have h₈ : 4 ^ k * 6 ^ k + 4 ^ k * 9 ^ k + 6 ^ k * 9 ^ k == 6 ^ k * ( 4 ^ k + 9 ^  [type from Lean state]
          assert ((((Int.pow(4, k) * Int.pow(6, k)) + (Int.pow(4, k) * Int.pow(9, k))) + (Int.pow(6, k) * Int.pow(9, k))) == ((Int.pow(6, k) * (Int.pow(4, k) + Int.pow(9, k))) + (Int.pow(4, k) * Int.pow(9, k)))); // @tac 2051-2055
            // [TACTIC: Ring]
          // UNCITED-APPLIED internal ×76 [exec 501 2051-2055]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_mul ×7, Mathlib.Tactic.Ring.mul_add ×7, Mathlib.Tactic.Ring.add_pf_add_zero ×7, Mathlib.Tactic.Ring.mul_pf_left ×6 (+17 more heads, ×49)
          // [TACTIC: omega]
          // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
          // UNCITED-APPLIED internal ×66 [exec 502 2062-2067]: applications made inside the tactic's own automation, not stated — Int.ofNat_add ×8, Int.ofNat_mul ×8, Int.sub_eq_zero_of_eq ×7, Int.sub_nonneg_of_le ×3, Int.add_one_le_of_lt ×3, Nat.lt_or_gt_of_ne ×1, Int.ofNat_nonneg ×1; machinery/glue: Eq.symm ×20, Lean.Omega.Int.ofNat_congr ×6, Lean.Omega.Int.ofNat_lt_of_lt ×3, Lean.Omega.Int.ofNat_pow ×3 (+3 more heads, ×3)
        }
        // have h₇ : 4 ^ k * 6 ^ k + 4 ^ k * 9 ^ k + 6 ^ k * 9 ^ k == 6 ^ k * ( 4 ^ k + 6 ^  [type from Lean state]
        assert ((((Int.pow(4, k) * Int.pow(6, k)) + (Int.pow(4, k) * Int.pow(9, k))) + (Int.pow(6, k) * Int.pow(9, k))) == (Int.pow(6, k) * ((Int.pow(4, k) + Int.pow(6, k)) + Int.pow(9, k)))) by { // @tac 2256-2462 // @tac 2469-4102 // @tac 4109-4114
          // have h₈ : 4 ^ k * 6 ^ k + 4 ^ k * 9 ^ k + 6 ^ k * 9 ^ k == 6 ^ k * ( 4 ^ k + 9 ^  [type from Lean state]
          assert ((((Int.pow(4, k) * Int.pow(6, k)) + (Int.pow(4, k) * Int.pow(9, k))) + (Int.pow(6, k) * Int.pow(9, k))) == ((Int.pow(6, k) * (Int.pow(4, k) + Int.pow(9, k))) + (Int.pow(4, k) * Int.pow(9, k)))); // @tac 2458-2462
            // [TACTIC: Ring]
          // UNCITED-APPLIED internal ×76 [exec 539 2458-2462]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_mul ×7, Mathlib.Tactic.Ring.mul_add ×7, Mathlib.Tactic.Ring.add_pf_add_zero ×7, Mathlib.Tactic.Ring.mul_pf_left ×6 (+17 more heads, ×49)
          // have h₉ : 6 ^ k * ( 4 ^ k + 9 ^ k ) + 4 ^ k * 9 ^ k == 6 ^ k * ( 4 ^ k + 6 ^ k +  [type from Lean state]
          assert (((Int.pow(6, k) * (Int.pow(4, k) + Int.pow(9, k))) + (Int.pow(4, k) * Int.pow(9, k))) == (Int.pow(6, k) * ((Int.pow(4, k) + Int.pow(6, k)) + Int.pow(9, k)))) by { // @tac 2641-2799 // @tac 2808-2820
            // have h₁₀ : 6 ^ k == 2 ^ k * 3 ^ k  [type from Lean state]
            assert (Int.pow(6, k) == (Int.pow(2, k) * Int.pow(3, k))) by { // @tac 2718-2757
              assert (6 == (2 * 3)) by {  // sub-goal of `by` (Lean state) // @tac 2748-2756
                // [TACTIC: «Norm_num[_]At___»]
                // UNCITED-APPLIED internal ×7 [exec 583 2748-2756]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1)
              }
              // [TACTIC: rwSeq [ show ( 6 : ℕ ) = 2 * 3 by norm_num norm_num ]]
              // UNCITED-APPLIED congrArg((6 : ℕ), (2 : ℕ) * (3 : ℕ), fun (_a : ℕ) => _a ^ k = (2 : ℕ) ^ k * (3 : ℕ) ^ k): no library counterpart (not stated) [exec 576 2718-2757]
              assert (Int.pow((2 * 3), k) == (Int.pow(2, k) * Int.pow(3, k))) by {  // sub-goal before `rw` (Lean state) // @tac 2768-2799 // @tac 2768-2780
                // [TACTIC: «_<;>_» [ mul_pow ] rw [ mul_pow ] <;> ring]
                // [TACTIC: rwSeq [ mul_pow ]]
                MulPowInt(2, 3, k);  // cite: mul_pow
                // `rw` closed the goal; the rest of the chain did not run
                // UNCITED-APPLIED congrArg(((2 : ℕ) * (3 : ℕ)) ^ k, (2 : ℕ) ^ k * (3 : ℕ) ^ k, fun (_a : ℕ) => _a = (2 : ℕ) ^ k * (3 : ℕ) ^ k): no library counterpart (not stated) [exec 617 2768-2780]
              }
            }
            // [TACTIC: rwSeq [ h₁₀ ]]
            // UNCITED-APPLIED congrArg((6 : ℕ) ^ k, (2 : ℕ) ^ k * (3 : ℕ) ^ k, fun (_a : ℕ) => _a * ((4 : ℕ) ^ k + (9 : ℕ) ^ k) + (4 : ℕ) ^ k * (9 :…): no library counterpart (not stated) [exec 648 2808-2820]
            assert ((((Int.pow(2, k) * Int.pow(3, k)) * (Int.pow(4, k) + Int.pow(9, k))) + (Int.pow(4, k) * Int.pow(9, k))) == ((Int.pow(2, k) * Int.pow(3, k)) * ((Int.pow(4, k) + (Int.pow(2, k) * Int.pow(3, k))) + Int.pow(9, k)))) by {  // sub-goal before `have` (Lean state) // @tac 2829-2984 // @tac 2993-3148 // @tac 3157-3178
              // have h₁₁ : 4 ^ k == 2 ^ ( 2 * k )  [type from Lean state]
              assert (Int.pow(4, k) == Int.pow(2, (2 * k))) by { // @tac 2896-2935
                assert (4 == (2 * 2)) by {  // sub-goal of `by` (Lean state) // @tac 2926-2934
                  // [TACTIC: «Norm_num[_]At___»]
                  // UNCITED-APPLIED internal ×8 [exec 702 2926-2934]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3)
                }
                // [TACTIC: rwSeq [ show ( 4 : ℕ ) = 2 ^ 2 by norm_num norm_num ]]
                // UNCITED-APPLIED congrArg((4 : ℕ), (2 : ℕ) ^ (2 : ℕ), fun (_a : ℕ) => _a ^ k = (2 : ℕ) ^ ((2 : ℕ) * k)): no library counterpart (not stated) [exec 695 2896-2935]
                assert (Int.pow((2 * 2), k) == Int.pow(2, (2 * k))) by {  // sub-goal before `rw` (Lean state) // @tac 2946-2984 // @tac 2946-2962
                  // [TACTIC: «_<;>_» [ ← pow_mul ] rw [ ← pow_mul ] <;> ring_nf ring_nf]
                  // [TACTIC: rwSeq [ ← pow_mul ]]
                  NatPowMul(2, 2, k);  // cite: pow_mul
                  // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                  // `rw` closed the goal; the rest of the chain did not run
                  // UNCITED-APPLIED congrArg(((2 : ℕ) ^ (2 : ℕ)) ^ k, (2 : ℕ) ^ ((2 : ℕ) * k), fun (_a : ℕ) => _a = (2 : ℕ) ^ ((2 : ℕ) * k)): no library counterpart (not stated) [exec 736 2946-2962]
                }
              }
              // have h₁₂ : 9 ^ k == 3 ^ ( 2 * k )  [type from Lean state]
              assert (Int.pow(9, k) == Int.pow(3, (2 * k))) by { // @tac 3060-3099
                assert (9 == (3 * 3)) by {  // sub-goal of `by` (Lean state) // @tac 3090-3098
                  // [TACTIC: «Norm_num[_]At___»]
                  // UNCITED-APPLIED internal ×9 [exec 790 3090-3098]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3)
                }
                // [TACTIC: rwSeq [ show ( 9 : ℕ ) = 3 ^ 2 by norm_num norm_num ]]
                // UNCITED-APPLIED congrArg((9 : ℕ), (3 : ℕ) ^ (2 : ℕ), fun (_a : ℕ) => _a ^ k = (3 : ℕ) ^ ((2 : ℕ) * k)): no library counterpart (not stated) [exec 783 3060-3099]
                assert (Int.pow((3 * 3), k) == Int.pow(3, (2 * k))) by {  // sub-goal before `rw` (Lean state) // @tac 3110-3148 // @tac 3110-3126
                  // [TACTIC: «_<;>_» [ ← pow_mul ] rw [ ← pow_mul ] <;> ring_nf ring_nf]
                  // [TACTIC: rwSeq [ ← pow_mul ]]
                  NatPowMul(3, 2, k);  // cite: pow_mul
                  // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                  // `rw` closed the goal; the rest of the chain did not run
                  // UNCITED-APPLIED congrArg(((3 : ℕ) ^ (2 : ℕ)) ^ k, (3 : ℕ) ^ ((2 : ℕ) * k), fun (_a : ℕ) => _a = (3 : ℕ) ^ ((2 : ℕ) * k)): no library counterpart (not stated) [exec 824 3110-3126]
                }
              }
              // [TACTIC: rwSeq [ h₁₁ , h₁₂ ]]
              // UNCITED-APPLIED congrArg((4 : ℕ) ^ k, (2 : ℕ) ^ ((2 : ℕ) * k), fun (_a : ℕ) => (2 : ℕ) ^ k * (3 : ℕ) ^ k * (_a + (9 : ℕ) ^ k) + _a *…): no library counterpart (not stated) [exec 855 3157-3178]
              // UNCITED-APPLIED congrArg((9 : ℕ) ^ k, (3 : ℕ) ^ ((2 : ℕ) * k), fun (_a : ℕ) => (2 : ℕ) ^ k * (3 : ℕ) ^ k * ((2 : ℕ) ^ ((2 : ℕ) * k) …): no library counterpart (not stated) [exec 855 3157-3178]
              assert ((((Int.pow(2, k) * Int.pow(3, k)) * (Int.pow(2, (2 * k)) + Int.pow(3, (2 * k)))) + (Int.pow(2, (2 * k)) * Int.pow(3, (2 * k)))) == ((Int.pow(2, k) * Int.pow(3, k)) * ((Int.pow(2, (2 * k)) + (Int.pow(2, k) * Int.pow(3, k))) + Int.pow(3, (2 * k))))) by {  // sub-goal before `have` (Lean state) // @tac 3187-3956 // @tac 3965-4102 // @tac 3965-3997 // @tac 3965-3977
                // have h₁₃ : 2 ^ k * 3 ^ k * ( 2 ^ ( 2 * k ) + 3 ^ ( 2 * k ) ) + 2 ^ ( 2 * k ) * 3   [type from Lean state]
                assert ((((Int.pow(2, k) * Int.pow(3, k)) * (Int.pow(2, (2 * k)) + Int.pow(3, (2 * k)))) + (Int.pow(2, (2 * k)) * Int.pow(3, (2 * k)))) == ((Int.pow(2, k) * Int.pow(3, k)) * ((Int.pow(2, (2 * k)) + (Int.pow(2, k) * Int.pow(3, k))) + Int.pow(3, (2 * k))))) by { // @tac 3448-3618 // @tac 3629-3799 // @tac 3810-3831
                  // have h₁₄ : 2 ^ ( 2 * k ) == 2 ^ k * 2 ^ k  [type from Lean state]
                  assert (Int.pow(2, (2 * k)) == (Int.pow(2, k) * Int.pow(2, k))) by { // @tac 3533-3572
                    assert ((2 * k) == (k + k)) by {  // sub-goal of `by` (Lean state) // @tac 3567-3571
                      // [TACTIC: Ring]
                      // UNCITED-APPLIED internal ×19 [exec 930 3567-3571]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.mul_congr ×1, Mathlib.Tactic.Ring.cast_pos ×1, Mathlib.Meta.NormNum.isNat_ofNat ×1 (+15 more heads, ×15)
                    }
                    // [TACTIC: rwSeq [ show ( 2 * k : ℕ ) = k + k by ring ]]
                    // UNCITED-APPLIED congrArg((2 : ℕ) * k, k + k, fun (_a : ℕ) => (2 : ℕ) ^ _a = (2 : ℕ) ^ k * (2 : ℕ) ^ k): no library counterpart (not stated) [exec 919 3533-3572]
                    assert (Int.pow(2, (k + k)) == (Int.pow(2, k) * Int.pow(2, k))) by {  // sub-goal before `rw` (Lean state) // @tac 3585-3618 // @tac 3585-3597
                      // [TACTIC: «_<;>_» [ pow_add ] rw [ pow_add ] <;> ring]
                      // [TACTIC: rwSeq [ pow_add ]]
                      NatPowAdd(2, k, k);  // cite: pow_add
                      // `rw` closed the goal; the rest of the chain did not run
                      // UNCITED-APPLIED congrArg((2 : ℕ) ^ (k + k), (2 : ℕ) ^ k * (2 : ℕ) ^ k, fun (_a : ℕ) => _a = (2 : ℕ) ^ k * (2 : ℕ) ^ k): no library counterpart (not stated) [exec 964 3585-3597]
                    }
                  }
                  // have h₁₅ : 3 ^ ( 2 * k ) == 3 ^ k * 3 ^ k  [type from Lean state]
                  assert (Int.pow(3, (2 * k)) == (Int.pow(3, k) * Int.pow(3, k))) by { // @tac 3714-3753
                    assert ((2 * k) == (k + k)) by {  // sub-goal of `by` (Lean state) // @tac 3748-3752
                      // [TACTIC: Ring]
                      // UNCITED-APPLIED internal ×19 [exec 1022 3748-3752]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.mul_congr ×1, Mathlib.Tactic.Ring.cast_pos ×1, Mathlib.Meta.NormNum.isNat_ofNat ×1 (+15 more heads, ×15)
                    }
                    // [TACTIC: rwSeq [ show ( 2 * k : ℕ ) = k + k by ring ]]
                    // UNCITED-APPLIED congrArg((2 : ℕ) * k, k + k, fun (_a : ℕ) => (3 : ℕ) ^ _a = (3 : ℕ) ^ k * (3 : ℕ) ^ k): no library counterpart (not stated) [exec 1011 3714-3753]
                    assert (Int.pow(3, (k + k)) == (Int.pow(3, k) * Int.pow(3, k))) by {  // sub-goal before `rw` (Lean state) // @tac 3766-3799 // @tac 3766-3778
                      // [TACTIC: «_<;>_» [ pow_add ] rw [ pow_add ] <;> ring]
                      // [TACTIC: rwSeq [ pow_add ]]
                      NatPowAdd(3, k, k);  // cite: pow_add
                      // `rw` closed the goal; the rest of the chain did not run
                      // UNCITED-APPLIED congrArg((3 : ℕ) ^ (k + k), (3 : ℕ) ^ k * (3 : ℕ) ^ k, fun (_a : ℕ) => _a = (3 : ℕ) ^ k * (3 : ℕ) ^ k): no library counterpart (not stated) [exec 1056 3766-3778]
                    }
                  }
                  // [TACTIC: rwSeq [ h₁₄ , h₁₅ ]]
                  // UNCITED-APPLIED congrArg((2 : ℕ) ^ ((2 : ℕ) * k), (2 : ℕ) ^ k * (2 : ℕ) ^ k, fun (_a : ℕ) => (2 : ℕ) ^ k * (3 : ℕ) ^ k * (_a + (3 : ℕ) ^ ((2 : ℕ) …): no library counterpart (not stated) [exec 1087 3810-3831]
                  // UNCITED-APPLIED congrArg((3 : ℕ) ^ ((2 : ℕ) * k), (3 : ℕ) ^ k * (3 : ℕ) ^ k, fun (_a : ℕ) => (2 : ℕ) ^ k * (3 : ℕ) ^ k * ((2 : ℕ) ^ k * (2 : ℕ) ^ …): no library counterpart (not stated) [exec 1087 3810-3831]
                  assert ((((Int.pow(2, k) * Int.pow(3, k)) * ((Int.pow(2, k) * Int.pow(2, k)) + (Int.pow(3, k) * Int.pow(3, k)))) + ((Int.pow(2, k) * Int.pow(2, k)) * (Int.pow(3, k) * Int.pow(3, k)))) == ((Int.pow(2, k) * Int.pow(3, k)) * (((Int.pow(2, k) * Int.pow(2, k)) + (Int.pow(2, k) * Int.pow(3, k))) + (Int.pow(3, k) * Int.pow(3, k))))) by {  // sub-goal before `ring_nf` (Lean state) // @tac 3842-3956 // @tac 3842-3849
                    // [TACTIC: «_<;>_» ring_nf <;> nlinarith [ pow_pos ( by norm_num norm_num : 0 < ( 2 : ℕ ) ) k , pow_pos ( by norm_num norm_num : 0 < ( 3 : ℕ ) ) k ] nlinarith [ pow_pos ( by norm_num norm_num : 0 < ( 2 : ℕ ) ) k , pow_pos ( by norm_num norm_num : 0 < ( 3 : ℕ ) ) k ]]
                    // [TACTIC: Ring_nfAt]
                    NatPowOne(k);  // cite: pow_one [applied by the tactic, not named in it]
                    // UNCITED-APPLIED mul_one ×4: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := k); (a := (3 : ℕ) ^ (k * (3 : ℕ))); (a := (3 : ℕ) ^ (k * (2 : ℕ))); (a := (3 : ℕ) ^ k)
                    // `ring_nf` closed the goal; the rest of the chain did not run
                    // [TACTIC: «Norm_num[_]At___»]
                    // [TACTIC: «Norm_num[_]At___»]
                    // UNCITED-APPLIED internal ×120 [exec 1120 3842-3849]: applications made inside the tactic's own automation, not stated — mul_one ×4, add_zero ×3; machinery/glue: congr ×8, congrArg ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+29 more heads, ×81) (cited in this block, not counted here: pow_one [Lean recorded ×1])
                  }
                }
                // [TACTIC: «_<;>_» [ h₁₃ ] rw [ h₁₃ ] <;> ring_nf ring_nf <;> nlinarith [ pow_pos ( by norm_num norm_num : 0 < ( 2 : ℕ ) ) k , pow_pos ( by norm_num norm_num : 0 < ( 3 : ℕ ) ) k ] nlinarith [ pow_pos ( by norm_num norm_num : 0 < ( 2 : ℕ ) ) k , pow_pos ( by norm_num norm_num : 0 < ( 3 : ℕ ) ) k ]]
                // [TACTIC: rwSeq [ h₁₃ ]]
                // `rw` closed the goal; the rest of the chain did not run
                // [TACTIC: «Norm_num[_]At___»]
                // [TACTIC: «Norm_num[_]At___»]
                // UNCITED-APPLIED congrArg((2 : ℕ) ^ k * (3 : ℕ) ^ k * ((2 : ℕ) ^ ((2 : ℕ) * k) + (3 : ℕ) ^ ((2 …, (2 : ℕ) ^ k * (3 : ℕ) ^ k * ((2 : ℕ) ^ ((2 : ℕ) * k) + (2 : ℕ) ^ k * …, fun (_a : ℕ) => _a = (2 : ℕ) ^ k * (3 : ℕ) ^ k * ((2 : ℕ) ^ ((2 : ℕ) …): no library counterpart (not stated) [exec 1141 3965-3977]
              }
            }
          }
          // [TACTIC: omega]
          // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
          // UNCITED-APPLIED internal ×28 [exec 1174 4109-4114]: applications made inside the tactic's own automation, not stated — Int.ofNat_mul ×5, Int.ofNat_add ×3, Int.sub_eq_zero_of_eq ×2, Int.sub_nonneg_of_le ×2, Int.add_one_le_of_lt ×2, Nat.lt_or_gt_of_ne ×1; machinery/glue: Eq.symm ×7, Lean.Omega.Int.ofNat_congr ×2, Lean.Omega.Int.ofNat_lt_of_lt ×2, Decidable.byContradiction ×1 (+1 more heads, ×1)
        }
        // [TACTIC: «_<;>_» [ h₆ , h₇ ] rw [ h₆ , h₇ ] <;> cases k with | zero => norm_num [ h₀ , pow_zero , Nat.mul_sub_left_distrib , Nat.mul_sub_right_distrib ] norm_num [ h₀ , pow_zero , Nat.mul_sub_left_distrib , Nat.mul_sub_right_distrib ] | succ k => simp_all [ Nat.mul_sub_left_distrib , Nat.mul_sub_right_distrib , Nat.add_assoc ] simp_all [ Nat.mul_sub_left_distrib , Nat.mul_sub_right_distrib , Nat.add_assoc ] simp_all [ Nat.mul_sub_left_distrib , Nat.mul_sub_right_distrib , Nat.add_assoc ] <;> ring_nf at * <;> norm_num at * <;> omega omega]
        // [TACTIC: choice [ h₆ , h₇ ] rw [ h₆ , h₇ ]]
        // UNCITED-APPLIED congrArg((4 : ℕ) ^ k * (4 : ℕ) ^ k + (6 : ℕ) ^ k * (6 : ℕ) ^ k + (9 : ℕ) ^ k *…, ((4 : ℕ) ^ k + (6 : ℕ) ^ k + (9 : ℕ) ^ k) * ((4 : ℕ) ^ k + (6 : ℕ) ^ …, fun (_a : ℕ) => _a = ((4 : ℕ) ^ k + (6 : ℕ) ^ k + (9 : ℕ) ^ k) * ((4 …): no library counterpart (not stated) [exec 1184 4119-4134]
        // UNCITED-APPLIED congrArg((4 : ℕ) ^ k * (6 : ℕ) ^ k + (4 : ℕ) ^ k * (9 : ℕ) ^ k + (6 : ℕ) ^ k *…, (6 : ℕ) ^ k * ((4 : ℕ) ^ k + (6 : ℕ) ^ k + (9 : ℕ) ^ k), fun (_a : ℕ) => ((4 : ℕ) ^ k + (6 : ℕ) ^ k + (9 : ℕ) ^ k) * ((4 : ℕ) …): no library counterpart (not stated) [exec 1184 4119-4134]
        assert (tsub((((Int.pow(4, k) + Int.pow(6, k)) + Int.pow(9, k)) * ((Int.pow(4, k) + Int.pow(6, k)) + Int.pow(9, k))), (2 * (Int.pow(6, k) * ((Int.pow(4, k) + Int.pow(6, k)) + Int.pow(9, k))))) == (((Int.pow(4, k) + Int.pow(6, k)) + Int.pow(9, k)) * tsub(((Int.pow(4, k) + Int.pow(6, k)) + Int.pow(9, k)), (2 * Int.pow(6, k))))) by {  // sub-goal of `cases` (Lean state) // @tac 4143-4417
          // cases k (zero / succ) — branches with their Lean states
          if k == 0 {
            if ((f((2 * 0)) == ((Int.pow(4, (2 * 0)) + Int.pow(6, (2 * 0))) + Int.pow(9, (2 * 0))))) && ((f(0) == ((Int.pow(4, 0) + Int.pow(6, 0)) + Int.pow(9, 0)))) && ((Int.pow(4, (2 * 0)) == (Int.pow(4, 0) * Int.pow(4, 0)))) && ((Int.pow(6, (2 * 0)) == (Int.pow(6, 0) * Int.pow(6, 0)))) && ((Int.pow(9, (2 * 0)) == (Int.pow(9, 0) * Int.pow(9, 0)))) && (((((Int.pow(4, 0) * Int.pow(4, 0)) + (Int.pow(6, 0) * Int.pow(6, 0))) + (Int.pow(9, 0) * Int.pow(9, 0))) == tsub((((Int.pow(4, 0) + Int.pow(6, 0)) + Int.pow(9, 0)) * ((Int.pow(4, 0) + Int.pow(6, 0)) + Int.pow(9, 0))), (2 * (((Int.pow(4, 0) * Int.pow(6, 0)) + (Int.pow(4, 0) * Int.pow(9, 0))) + (Int.pow(6, 0) * Int.pow(9, 0))))))) && (((((Int.pow(4, 0) * Int.pow(6, 0)) + (Int.pow(4, 0) * Int.pow(9, 0))) + (Int.pow(6, 0) * Int.pow(9, 0))) == (Int.pow(6, 0) * ((Int.pow(4, 0) + Int.pow(6, 0)) + Int.pow(9, 0))))) {  // sub-goal of `cases` (Lean state)
              // [TACTIC: «Norm_num[_]At___» [ h₀ , pow_zero , Nat.mul_sub_left_distrib , Nat.mul_sub_right_distrib ]]
              // UNCITED pow_zero: named in this rewriting step; no record of Lean's proof attributes an application of it to this execution (its recorded applications are at other tactics of the proof; a rewrite at a hypothesis is filed under the tactic that later uses the hypothesis, and a conditional / under-binder simp rewrite may be unrecorded), so whether it was applied here is not known; not stated
              // UNCITED Nat.mul_sub_left_distrib: named in this rewriting step; no record of Lean's proof attributes an application of it to this execution (its recorded applications are at other tactics of the proof; a rewrite at a hypothesis is filed under the tactic that later uses the hypothesis, and a conditional / under-binder simp rewrite may be unrecorded), so whether it was applied here is not known; not stated
              // UNCITED Nat.mul_sub_right_distrib: no Lean instance recorded (arguments unknown), not guessed
              assert (tsub((((Int.pow(4, 0) + Int.pow(6, 0)) + Int.pow(9, 0)) * ((Int.pow(4, 0) + Int.pow(6, 0)) + Int.pow(9, 0))), (2 * (Int.pow(6, 0) * ((Int.pow(4, 0) + Int.pow(6, 0)) + Int.pow(9, 0))))) == (((Int.pow(4, 0) + Int.pow(6, 0)) + Int.pow(9, 0)) * tsub(((Int.pow(4, 0) + Int.pow(6, 0)) + Int.pow(9, 0)), (2 * Int.pow(6, 0)))));  // sub-goal of `cases` (Lean state) // @tac 4176-4254
              // UNCITED-APPLIED internal ×23 [exec 1225 4176-4254]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_mul ×5, Mathlib.Meta.NormNum.isNat_ofNat ×5, Mathlib.Meta.NormNum.isNat_pow ×3, Mathlib.Meta.NormNum.natPow_zero ×3 (+5 more heads, ×7)
            }
          } else {
            var k: nat := k - 1;
            if ((f((2 * (k + 1))) == ((Int.pow(4, (2 * (k + 1))) + Int.pow(6, (2 * (k + 1)))) + Int.pow(9, (2 * (k + 1)))))) && ((f((k + 1)) == ((Int.pow(4, (k + 1)) + Int.pow(6, (k + 1))) + Int.pow(9, (k + 1))))) && ((Int.pow(4, (2 * (k + 1))) == (Int.pow(4, (k + 1)) * Int.pow(4, (k + 1))))) && ((Int.pow(6, (2 * (k + 1))) == (Int.pow(6, (k + 1)) * Int.pow(6, (k + 1))))) && ((Int.pow(9, (2 * (k + 1))) == (Int.pow(9, (k + 1)) * Int.pow(9, (k + 1))))) && (((((Int.pow(4, (k + 1)) * Int.pow(4, (k + 1))) + (Int.pow(6, (k + 1)) * Int.pow(6, (k + 1)))) + (Int.pow(9, (k + 1)) * Int.pow(9, (k + 1)))) == tsub((((Int.pow(4, (k + 1)) + Int.pow(6, (k + 1))) + Int.pow(9, (k + 1))) * ((Int.pow(4, (k + 1)) + Int.pow(6, (k + 1))) + Int.pow(9, (k + 1)))), (2 * (((Int.pow(4, (k + 1)) * Int.pow(6, (k + 1))) + (Int.pow(4, (k + 1)) * Int.pow(9, (k + 1)))) + (Int.pow(6, (k + 1)) * Int.pow(9, (k + 1)))))))) && (((((Int.pow(4, (k + 1)) * Int.pow(6, (k + 1))) + (Int.pow(4, (k + 1)) * Int.pow(9, (k + 1)))) + (Int.pow(6, (k + 1)) * Int.pow(9, (k + 1)))) == (Int.pow(6, (k + 1)) * ((Int.pow(4, (k + 1)) + Int.pow(6, (k + 1))) + Int.pow(9, (k + 1)))))) {  // sub-goal of `cases` (Lean state)
              // [TACTIC: «_<;>_» [ Nat.mul_sub_left_distrib , Nat.mul_sub_right_distrib , Nat.add_assoc ] simp_all [ Nat.mul_sub_left_distrib , Nat.mul_sub_right_distrib , Nat.add_assoc ] simp_all [ Nat.mul_sub_left_distrib , Nat.mul_sub_right_distrib , Nat.add_assoc ] <;> ring_nf at * <;> norm_num at * <;> omega omega]
              // [TACTIC: choice [ Nat.mul_sub_left_distrib , Nat.mul_sub_right_distrib , Nat.add_assoc ] simp_all [ Nat.mul_sub_left_distrib , Nat.mul_sub_right_distrib , Nat.add_assoc ] simp_all [ Nat.mul_sub_left_distrib , Nat.mul_sub_right_distrib , Nat.add_assoc ]]
              NatMulSubLeftDistrib((Int.pow(4, (k + 1)) + (Int.pow(6, (k + 1)) + Int.pow(9, (k + 1)))), (Int.pow(4, (k + 1)) + (Int.pow(6, (k + 1)) + Int.pow(9, (k + 1)))), (2 * Int.pow(6, (k + 1))));  // cite: Nat.mul_sub_left_distrib
              // UNCITED Nat.mul_sub_right_distrib: no Lean instance recorded (arguments unknown), not guessed
              // UNCITED Nat.add_assoc: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances here: (n := (4 : ℕ) ^ (k + (1 : ℕ)), m := (6 : ℕ) ^ (k + (1 : ℕ)), k := (9 : ℕ) ^ (k + (1 : ℕ)))
              // GAP: Nat.mul_sub_left_distrib: this execution also rewrote the hypotheses h₁, h₂, h₇; the harvest for this theorem records only the goal-side application(s) of the tactic (hypothesis-side rewrites are not recorded), so its applications to those hypotheses (if any) are not stated
              // UNCITED-APPLIED internal ×8 [exec 1244 4277-4354]: applications made inside the tactic's own automation, not stated — Nat.add_assoc ×1; machinery/glue: congrArg ×4, congr ×3 (cited in this block, not counted here: Nat.mul_sub_left_distrib [Lean recorded ×1])
              assert (forall x: nat :: (f(x) == (Int.pow(4, x) + (Int.pow(6, x) + Int.pow(9, x)))));  // hypothesis h₀ after `simp_all` (Lean state) // @tac-hyp 4277-4354
              assert ((0 < m) && (0 < n));  // hypothesis h₁ after `simp_all` (Lean state) // @tac-hyp 4277-4354
              assert (m <= n);  // hypothesis h₂ after `simp_all` (Lean state) // @tac-hyp 4277-4354
              assert (((Int.pow(4, (k + 1)) * Int.pow(4, (k + 1))) + ((Int.pow(6, (k + 1)) * Int.pow(6, (k + 1))) + (Int.pow(9, (k + 1)) * Int.pow(9, (k + 1))))) == tsub(((Int.pow(4, (k + 1)) + (Int.pow(6, (k + 1)) + Int.pow(9, (k + 1)))) * (Int.pow(4, (k + 1)) + (Int.pow(6, (k + 1)) + Int.pow(9, (k + 1))))), (2 * (Int.pow(6, (k + 1)) * (Int.pow(4, (k + 1)) + (Int.pow(6, (k + 1)) + Int.pow(9, (k + 1))))))));  // hypothesis h₁ after `simp_all` (Lean state) // @tac-hyp 4277-4354
              assert (((Int.pow(4, (k + 1)) * Int.pow(6, (k + 1))) + ((Int.pow(4, (k + 1)) * Int.pow(9, (k + 1))) + (Int.pow(6, (k + 1)) * Int.pow(9, (k + 1))))) == (Int.pow(6, (k + 1)) * (Int.pow(4, (k + 1)) + (Int.pow(6, (k + 1)) + Int.pow(9, (k + 1))))));  // hypothesis h₇ after `simp_all` (Lean state) // @tac-hyp 4277-4354
              assert (tsub(((Int.pow(4, (k + 1)) + (Int.pow(6, (k + 1)) + Int.pow(9, (k + 1)))) * (Int.pow(4, (k + 1)) + (Int.pow(6, (k + 1)) + Int.pow(9, (k + 1))))), (2 * (Int.pow(6, (k + 1)) * (Int.pow(4, (k + 1)) + (Int.pow(6, (k + 1)) + Int.pow(9, (k + 1))))))) == tsub(((Int.pow(4, (k + 1)) + (Int.pow(6, (k + 1)) + Int.pow(9, (k + 1)))) * (Int.pow(4, (k + 1)) + (Int.pow(6, (k + 1)) + Int.pow(9, (k + 1))))), ((Int.pow(4, (k + 1)) + (Int.pow(6, (k + 1)) + Int.pow(9, (k + 1)))) * (2 * Int.pow(6, (k + 1)))))) by {  // sub-goal of `ring_nf` (Lean state) // @tac 4365-4377
                NatPowOne(k);  // cite: pow_one [applied by the tactic, not named in it]
                // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := k)
                // UNCITED-APPLIED internal ×187 [exec 1253 4365-4377]: applications made inside the tactic's own automation, not stated — add_zero ×5, mul_one ×1; machinery/glue: Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Tactic.Ring.mul_pf_left ×8, Mathlib.Tactic.Ring.mul_zero ×8, Mathlib.Tactic.Ring.mul_pf_right ×8 (+33 more heads, ×149) (cited in this block, not counted here: pow_one [Lean recorded ×1])
              }
              assert (tsub((((Int.pow(4, (k + 1)) + Int.pow(6, (k + 1))) + Int.pow(9, (k + 1))) * ((Int.pow(4, (k + 1)) + Int.pow(6, (k + 1))) + Int.pow(9, (k + 1)))), (2 * (Int.pow(6, (k + 1)) * ((Int.pow(4, (k + 1)) + Int.pow(6, (k + 1))) + Int.pow(9, (k + 1)))))) == (((Int.pow(4, (k + 1)) + Int.pow(6, (k + 1))) + Int.pow(9, (k + 1))) * tsub(((Int.pow(4, (k + 1)) + Int.pow(6, (k + 1))) + Int.pow(9, (k + 1))), (2 * Int.pow(6, (k + 1))))));  // sub-goal of `cases` (Lean state) // @tac 4277-4417 // @tac 4277-4401 // @tac 4277-4377 // @tac 4277-4354
            }
          }
          // UNCITED-APPLIED Eq.symm(k, (0 : ℕ)): library counterpart exists, but the translation of this tactic states no such instance [exec 1220 4143-4417]
          // UNCITED-APPLIED Eq.symm(k✝, k + (1 : ℕ)): library counterpart exists, but the translation of this tactic states no such instance [exec 1220 4143-4417]
        }
      }
    }
  }
  // have h_div : forall k : ℕ :: f k ∣ f ( 2 * k )  [type from Lean state]
  forall k: nat // @tac 4477-4484
    ensures NatDvd(f(k), f((2 * k))) // @tac 4489-4548 // @tac 4553-4562
  {
    // [TACTIC: intro k]
    // have h₁ : f ( ( 2 * k ) ) == f ( k ) * ( f ( k ) - 2 * 6 ^ k )  [type from Lean state]
    assert (f((2 * k)) == (f(k) * tsub(f(k), (2 * Int.pow(6, k))))) by {
      // [TACTIC: exact h_main ( k )]
      assert (f((2 * k)) == (f(k) * tsub(f(k), (2 * Int.pow(6, k)))));  // instance of h_main (Lean state)
    }
    // [TACTIC: rwSeq [ h₁ ]]
    // UNCITED-APPLIED congrArg(f ((2 : ℕ) * k), f k * (f k - (2 : ℕ) * (6 : ℕ) ^ k), fun (_a : ℕ) => f k ∣ _a): no library counterpart (not stated) [exec 1299 4553-4562]
    assert NatDvd(f(k), (f(k) * tsub(f(k), (2 * Int.pow(6, k))))) by {  // sub-goal before `exact` (Lean state) // @tac 4567-4894
      assert ((f(k) * tsub(f(k), (2 * Int.pow(6, k)))) == (f(k) * tsub(f(k), (2 * Int.pow(6, k))))) by {  // sub-goal of `by` (Lean state) // @tac 4602-4886
        // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
        // UNCITED-APPLIED Nat.add_assoc ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (n := (4 : ℕ) ^ x, m := (6 : ℕ) ^ x, k := (9 : ℕ) ^ x)
        // UNCITED-APPLIED Nat.mul_sub_left_distrib: recorded instance not expressible here (sort/type/scope), not guessed
        // UNCITED-APPLIED Eq.symm ×1: 1 of Lean's 2 recorded instances here have no statement above (which ones is not decided) — Lean's instances: Eq.symm(k, (0 : ℕ)); Eq.symm(k✝, k + (1 : ℕ)) [exec 1331 4602-4886]
        // UNCITED-APPLIED congrArg(f (k + (1 : ℕ)) * (f (k + (1 : ℕ)) - (2 : ℕ) * (6 : ℕ) ^ (k + (1 : ℕ)…, ((4 : ℕ) ^ (k + (1 : ℕ)) + ((6 : ℕ) ^ (k + (1 : ℕ)) + (9 : ℕ) ^ (k + …, Eq): no library counterpart (not stated) [exec 1331 4602-4886]
        // UNCITED-APPLIED congrArg(f (k + (1 : ℕ)), (4 : ℕ) ^ (k + (1 : ℕ)) + ((6 : ℕ) ^ (k + (1 : ℕ)) + (9 : ℕ) ^ (k + (…, HMul.hMul): no library counterpart (not stated) [exec 1331 4602-4886]
        // UNCITED-APPLIED congrArg((4 : ℕ) ^ x + (6 : ℕ) ^ x + (9 : ℕ) ^ x, (4 : ℕ) ^ x + ((6 : ℕ) ^ x + (9 : ℕ) ^ x), Eq (f x)): no library counterpart (not stated) [exec 1331 4602-4886]
        // UNCITED-APPLIED congrArg(f (k + (1 : ℕ)), (4 : ℕ) ^ (k + (1 : ℕ)) + ((6 : ℕ) ^ (k + (1 : ℕ)) + (9 : ℕ) ^ (k + (…, fun (x : ℕ) => x - (2 : ℕ) * (6 : ℕ) ^ (k + (1 : ℕ))): no library counterpart (not stated) [exec 1331 4602-4886]
        // UNCITED-APPLIED of_eq_true: no library counterpart (not stated) [exec 1331 4602-4886]
        // UNCITED-APPLIED Eq.trans: no library counterpart (not stated) [exec 1331 4602-4886]
        // UNCITED-APPLIED Eq.trans(f (k + (1 : ℕ)) * (f (k + (1 : ℕ)) - (2 : ℕ) * (6 : ℕ) ^ (k + (1 : ℕ)…, ((4 : ℕ) ^ (k + (1 : ℕ)) + ((6 : ℕ) ^ (k + (1 : ℕ)) + (9 : ℕ) ^ (k + …, ((4 : ℕ) ^ (k + (1 : ℕ)) + ((6 : ℕ) ^ (k + (1 : ℕ)) + (9 : ℕ) ^ (k + …): no library counterpart (not stated) [exec 1331 4602-4886]
        // UNCITED-APPLIED congr(Eq (f (k + (1 : ℕ)) * (f (k + (1 : ℕ)) - (2 : ℕ) * (6 : ℕ) ^ (k + (1 …, Eq (((4 : ℕ) ^ (k + (1 : ℕ)) + ((6 : ℕ) ^ (k + (1 : ℕ)) + (9 : ℕ) ^ (…, f (k + (1 : ℕ)) * (f (k + (1 : ℕ)) - (2 : ℕ) * (6 : ℕ) ^ (k + (1 : ℕ)…, ((4 : ℕ) ^ (k + (1 : ℕ)) + ((6 : ℕ) ^ (k + (1 : ℕ)) + (9 : ℕ) ^ (k + …): no library counterpart (not stated) [exec 1331 4602-4886]
        // UNCITED-APPLIED congr(HMul.hMul (f (k + (1 : ℕ))), HMul.hMul ((4 : ℕ) ^ (k + (1 : ℕ)) + ((6 : ℕ) ^ (k + (1 : ℕ)) + (9 : …, f (k + (1 : ℕ)) - (2 : ℕ) * (6 : ℕ) ^ (k + (1 : ℕ)), (4 : ℕ) ^ (k + (1 : ℕ)) + ((6 : ℕ) ^ (k + (1 : ℕ)) + (9 : ℕ) ^ (k + (…): no library counterpart (not stated) [exec 1331 4602-4886]
        // UNCITED-APPLIED forall_congr(fun (a : ℕ) => f a = (4 : ℕ) ^ a + (6 : ℕ) ^ a + (9 : ℕ) ^ a, fun (a : ℕ) => f a = (4 : ℕ) ^ a + ((6 : ℕ) ^ a + (9 : ℕ) ^ a)): no library counterpart (not stated) [exec 1331 4602-4886]
        // UNCITED-APPLIED eq_self(((4 : ℕ) ^ (k + (1 : ℕ)) + ((6 : ℕ) ^ (k + (1 : ℕ)) + (9 : ℕ) ^ (k + …): no library counterpart (not stated) [exec 1331 4602-4886]
        // cases k (zero / succ)
        if k == 0 {
          if ((f((2 * 0)) == (f(0) * tsub(f(0), (2 * Int.pow(6, 0)))))) {  // sub-goal before `simp` (Lean state)
            // [TACTIC: simp [ h₀ , pow_zero , Nat.mul_sub_left_distrib , Nat.mul_sub_right_distrib ]]
            assert (f(0) == ((Int.pow(4, 0) + Int.pow(6, 0)) + Int.pow(9, 0)));  // instance of h₀ (Lean state)
            NatPowZero(4);  // cite: pow_zero
            NatPowZero(6);  // cite: pow_zero
            NatPowZero(9);  // cite: pow_zero
            // UNCITED Nat.mul_sub_left_distrib: Lean's record attributes its application to the enclosing tactic at 4602-4886, not to this one; not placed here
            // UNCITED Nat.mul_sub_right_distrib: no Lean instance recorded (arguments unknown), not guessed
            // UNCITED-APPLIED mul_one ×2: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (2 : ℕ)); (a := (3 : ℕ))
            assert ((f(0) * tsub(f(0), (2 * Int.pow(6, 0)))) == (f(0) * tsub(f(0), (2 * Int.pow(6, 0)))));  // sub-goal before `simp` (Lean state) // @tac 4639-4713
            // UNCITED-APPLIED internal ×19 [exec 1336 4639-4713]: applications made inside the tactic's own automation, not stated — mul_one ×2; machinery/glue: congrArg ×6, congr ×5, Eq.trans ×4, of_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: pow_zero [Lean recorded ×3])
          }
        } else {
          var k: nat := k - 1;
          if ((f((2 * (k + 1))) == (f((k + 1)) * tsub(f((k + 1)), (2 * Int.pow(6, (k + 1))))))) {  // sub-goal before `simp_all` (Lean state)
            // [TACTIC: «_<;>_» [ Nat.mul_sub_left_distrib , Nat.mul_sub_right_distrib , Nat.add_assoc ] simp_all [ Nat.mul_sub_left_distrib , Nat.mul_sub_right_distrib , Nat.add_assoc ] simp_all [ Nat.mul_sub_left_distrib , Nat.mul_sub_right_distrib , Nat.add_assoc ] <;> ring_nf at * <;> norm_num at * <;> omega omega]
            // [TACTIC: simpAll [ Nat.mul_sub_left_distrib , Nat.mul_sub_right_distrib , Nat.add_assoc ]]
            // UNCITED Nat.mul_sub_left_distrib: Lean's record attributes its application to the enclosing tactic at 4602-4886, not to this one; not placed here
            // UNCITED Nat.mul_sub_right_distrib: no Lean instance recorded (arguments unknown), not guessed
            // UNCITED Nat.add_assoc: Lean's record attributes its application to the enclosing tactic at 4602-4886, not to this one; not placed here
            // `simp_all` closed the goal; the rest of the chain did not run
            assert ((f((k + 1)) * tsub(f((k + 1)), (2 * Int.pow(6, (k + 1))))) == (f((k + 1)) * tsub(f((k + 1)), (2 * Int.pow(6, (k + 1))))));  // sub-goal before `simp_all` (Lean state) // @tac 4740-4886 // @tac 4740-4868 // @tac 4740-4842 // @tac 4740-4817
          }
        }
      }
      // [TACTIC: exact ⟨ f k - 2 * 6 ^ k , by cases k with | zero => simp [ h₀ , pow_zero , Nat.mul_sub_left_distrib , Nat.mul_sub_right_distrib ] simp [ h₀ , pow_zero , Nat.mul_sub_left_distrib , Nat.mul_sub_right_distrib ] simp [ h₀ , pow_zero , Nat.mul_sub_left_distrib , Nat.mul_sub_right_distrib ] | succ k => simp_all [ Nat.mul_sub_left_distrib , Nat.mul_sub_right_distrib , Nat.add_assoc ] simp_all [ Nat.mul_sub_left_distrib , Nat.mul_sub_right_distrib , Nat.add_assoc ] simp_all [ Nat.mul_sub_left_distrib , Nat.mul_sub_right_distrib , Nat.add_assoc ] <;> ring_nf at * <;> norm_num at * <;> omega omega ⟩ ⟨ f k - 2 * 6 ^ k , by cases k with | zero => simp [ h₀ , pow_zero , Nat.mul_sub_left_distrib , Nat.mul_sub_right_distrib ] simp [ h₀ , pow_zero , Nat.mul_sub_left_distrib , Nat.mul_sub_right_distrib ] simp [ h₀ , pow_zero , Nat.mul_sub_left_distrib , Nat.mul_sub_right_distrib ] | succ k => simp_all [ Nat.mul_sub_left_distrib , Nat.mul_sub_right_distrib , Nat.add_assoc ] simp_all [ Nat.mul_sub_left_distrib , Nat.mul_sub_right_distrib , Nat.add_assoc ] simp_all [ Nat.mul_sub_left_distrib , Nat.mul_sub_right_distrib , Nat.add_assoc ] <;> ring_nf at * <;> norm_num at * <;> omega omega ⟩]
      assert (if ((f(k) as int)) == 0 then (((f(k) * tsub(f(k), (2 * Int.pow(6, k)))) as int)) == 0 else (((f(k) * tsub(f(k), (2 * Int.pow(6, k)))) as int)) % ((f(k) as int)) == 0);  // goal closed by `exact ⟨…⟩` (Lean state)
    }
  }
  // have h_chain : forall t : ℕ :: f ( 2 ^ m ) ∣ f ( 2 ^ ( m + t ) )  [type from Lean state]
  forall t: nat // @tac 4968-4975
    ensures NatDvd(f(Int.pow(2, m)), f(Int.pow(2, (m + t)))) // @tac 4980-5649 // @tac 5654-5666
  {
    // [TACTIC: intro t]
    // have h₃ : forall t : ℕ :: f ( 2 ^ m ) ∣ f ( 2 ^ ( m + t ) )  [type from Lean state]
    forall t: nat // @tac 5047-5054
      ensures NatDvd(f(Int.pow(2, m)), f(Int.pow(2, (m + t)))) // @tac 5061-5083
    {
      // [TACTIC: intro t]
      // induction t → recursive lemma induction_helper_1
      induction_helper_1(m, n, f, t);
    }
    // [TACTIC: exact h₃ t]
    assert (forall t: nat :: NatDvd(f(Int.pow(2, m)), f(Int.pow(2, (m + t)))));
    assert NatDvd(f(Int.pow(2, m)), f(Int.pow(2, (m + t))));  // instance of h₃ (Lean state)
  }
  // have h_final : f ( 2 ^ m ) ∣ f ( 2 ^ n )  [type from Lean state]
  assert NatDvd(f(Int.pow(2, m)), f(Int.pow(2, n))) by { // @tac 5721-5966 // @tac 5971-5997 // @tac 6002-6056 // @tac 6061-6163 // @tac 6168-6185 // @tac 6190-6200
    // have h₃ : ∃ t , n = m + t  [type from Lean state]
    assert (exists t: nat :: (n == (m + t))) by { // @tac 5762-5771
      // [TACTIC: Use n - m]
      assert (n == (m + tsub(n, m))) by {  // sub-goal of `use` (Lean state) // @tac 5778-5805 // @tac 5812-5954 // @tac 5961-5966
        // have h₄ : m <= n  [type from Lean state]
        assert (m <= n) by {
          // [TACTIC: exact h₂]
          assert (m <= n);
        }
        // have h₅ : n - m + m == n  [type from Lean state]
        assert ((tsub(n, m) + m) == n) by { // @tac 5852-5879 // @tac 5888-5935 // @tac 5944-5954
          // have h₆ : m <= n  [type from Lean state]
          assert (m <= n) by {
            // [TACTIC: exact h₂]
            assert (m <= n);
          }
          // have h₇ : n - m + m == n  [type from Lean state]
          assert ((tsub(n, m) + m) == n); // @tac 5930-5935
            // [TACTIC: omega]
            // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
            // UNCITED-APPLIED internal ×73 [exec 1679 5930-5935]: applications made inside the tactic's own automation, not stated — le_of_le_of_eq ×4, Int.sub_nonneg_of_le ×4, Int.add_one_le_of_lt ×3, Nat.lt_or_gt_of_ne ×1, Int.sub_eq_zero_of_eq ×1, Int.ofNat_add ×1; machinery/glue: Eq.symm ×12, Eq.trans ×8, Lean.Omega.Int.sub_congr ×5, Lean.Omega.LinearCombo.sub_eval ×5 (+15 more heads, ×29)
          // [TACTIC: exact h₇]
          assert ((tsub(n, m) + m) == n);
        }
        // [TACTIC: omega]
        // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
        // UNCITED-APPLIED internal ×58 [exec 1681 5961-5966]: applications made inside the tactic's own automation, not stated — Int.ofNat_add ×2, le_of_le_of_eq ×2, Int.sub_nonneg_of_le ×2, Int.add_one_le_of_lt ×2, Nat.lt_or_gt_of_ne ×1, Int.sub_eq_zero_of_eq ×1; machinery/glue: Eq.symm ×11, Eq.trans ×8, Lean.Omega.Int.add_congr ×4, Lean.Omega.LinearCombo.add_eval ×4 (+14 more heads, ×21)
      }
    }
    // obtain ⟨t, ht⟩ := h₃
    assert exists t: nat :: (n == (m + t));
    var t: nat :| (n == (m + t));
    // have h₄ : f ( 2 ^ m ) ∣ f ( 2 ^ ( m + t ) )  [type from Lean state]
    assert NatDvd(f(Int.pow(2, m)), f(Int.pow(2, (m + t)))) by {
      // [TACTIC: exact h_chain ( t )]
      vc_numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown_L447(f, k, k_1_1_0_1_0, m, n, t_3_2, t_3_3, t_3_5, t, t_3_6);  /* [IN-FILE CHECK] the closed lemma for line 447 */
      assert NatDvd(f(Int.pow(2, m)), f(Int.pow(2, (m + t))));  // instance of h_chain (Lean state)
    }
    // have h₅ : f ( ( 2 ^ ( m + t ) ) ) == f ( ( 2 ^ n ) )  [type from Lean state]
    assert (f(Int.pow(2, (m + t))) == f(Int.pow(2, n))); // @tac 6113-6163 // @tac 6113-6145 // @tac 6113-6120
    // UNCITED-APPLIED congrArg(n, m + t, fun (_a : ℕ) => f ((2 : ℕ) ^ (m + t)) = f ((2 : ℕ) ^ _a)): no library counterpart (not stated) [exec 1725 6113-6120]
      // [TACTIC: «_<;>_» [ ht ] rw [ ht ] <;> simp [ pow_add ] simp [ pow_add ] simp [ pow_add ] <;> ring_nf ring_nf]
      // [TACTIC: rwSeq [ ht ]]
      // `rw` closed the goal; the rest of the chain did not run
    // [TACTIC: rwSeq [ h₅ ] at h₄]
    assert NatDvd(f(Int.pow(2, m)), f(Int.pow(2, n)));  // hypothesis h₄ after `rw` (Lean state) // @tac-hyp 6168-6185
    // [TACTIC: exact h₄]
    assert NatDvd(f(Int.pow(2, m)), f(Int.pow(2, n)));  // hypothesis h₄ at `exact` (Lean state)
    // UNCITED-APPLIED congrArg(f ((2 : ℕ) ^ (m + t)), f ((2 : ℕ) ^ n), fun (_a : ℕ) => f ((2 : ℕ) ^ m) ∣ _a): no library counterpart (not stated) [exec 1789 6190-6200]
  }
  // [TACTIC: exact h_final]
  assert NatDvd(f(Int.pow(2, m)), f(Int.pow(2, n)));
}



// ===== closed lemma for line 447 (from closed/numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown-447.dfy) =====

lemma {:induction false} vc_numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown_L447(f: nat -> nat, k_0_2_3_2_1_0: int, k_1_1_0_1_0: int, m: nat, n: int, t_3_2: int, t_3_3: int, t_3_5: int, t_3_5_0: int, t_3_6: int)
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
  requires forall k_0_1: nat :: true ==> f.requires(2 * k_0_1) && f.requires(k_0_1) && f.requires(k_0_1)
  requires forall k_0_1: nat :: true ==> f(2 * k_0_1) == f(k_0_1) * tsub(f(k_0_1), 2 * Int.pow(6, k_0_1))
  requires forall k_1_1: nat :: true ==> f.requires(k_1_1) && f.requires(2 * k_1_1)
  requires forall k_1_1: nat :: true ==> NatDvd(f(k_1_1), f(2 * k_1_1))
  requires forall t_2_3: nat :: true ==> f.requires(Int.pow(2, m)) && f.requires(Int.pow(2, m + t_2_3))
  requires forall t_2_3: nat :: true ==> NatDvd(f(Int.pow(2, m)), f(Int.pow(2, m + t_2_3)))
  requires exists t_3_1: nat :: n == m + t_3_1
  requires exists t_3_4: nat :: n == m + t_3_4
  requires (0 <= n - m && n == m + (n - m)) || (0 <= 0 && n == m + 0) || (0 <= 0 && n == m + 0) || (exists as_t3_0_3_0: nat :: n == m + as_t3_0_3_0)
  requires 0 <= t_3_5_0
  requires n == m + t_3_5_0
  requires 0 <= Int.pow(2, m)
  requires 0 <= m + t_3_5_0
  requires 0 <= Int.pow(2, m + t_3_5_0)
  ensures  ((((0 <= t_3_2) && (0 <= t_3_3) && (0 <= t_3_6)) || ((0 <= t_3_2) && (0 <= t_3_3) && (t_3_6 < 0)) || ((0 <= t_3_2) && (t_3_3 < 0) && (0 <= t_3_6)) || ((0 <= t_3_2) && (t_3_3 < 0) && (t_3_6 < 0)) || ((t_3_2 < 0) && (0 <= t_3_3) && (0 <= t_3_6)) || ((t_3_2 < 0) && (0 <= t_3_3) && (t_3_6 < 0)) || ((t_3_2 < 0) && (t_3_3 < 0) && (0 <= t_3_6)) || ((t_3_2 < 0) && (t_3_3 < 0) && (t_3_6 < 0))) ==> (NatDvd(f(Int.pow(2, m)), f(Int.pow(2, m + t_3_5_0))) || (f(Int.pow(2, m)) == 0 ==> f(Int.pow(2, m + t_3_5_0)) == 0))) && ((((0 <= t_3_2) && (0 <= t_3_3) && (0 <= t_3_6)) || ((0 <= t_3_2) && (0 <= t_3_3) && (t_3_6 < 0)) || ((0 <= t_3_2) && (t_3_3 < 0) && (0 <= t_3_6)) || ((0 <= t_3_2) && (t_3_3 < 0) && (t_3_6 < 0)) || ((t_3_2 < 0) && (0 <= t_3_3) && (0 <= t_3_6)) || ((t_3_2 < 0) && (0 <= t_3_3) && (t_3_6 < 0)) || ((t_3_2 < 0) && (t_3_3 < 0) && (0 <= t_3_6)) || ((t_3_2 < 0) && (t_3_3 < 0) && (t_3_6 < 0))) ==> (NatDvd(f(Int.pow(2, m)), f(Int.pow(2, m + t_3_5_0))) || (f(Int.pow(2, m)) != 0 ==> f(Int.pow(2, m + t_3_5_0)) % f(Int.pow(2, m)) == 0)))
{
  induction_helper_1(m, n, f, t_3_5_0);  // h_chain t: Lean inst record (h_final.h₄)  // [ADDED]
}

