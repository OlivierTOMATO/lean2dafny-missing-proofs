// ════════════════════════════════════════════════════════════
// MECHANICAL TRANSLATION (emitter v2) of ast_cache_v2/mathd_algebra_156.json
// Each Lean `have` → `assert ... by {}` at the same depth;
// quantified haves → forall statements. Typed pipeline only.
// ════════════════════════════════════════════════════════════

include "../../library/library_new.dfy"

// ──────────────────────────────────────────────────
// certificate identity for `h₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_1(x: real, y: real, f: real -> real, g: real -> real)
  ensures (((-((f(x) - g(x))) + (f(x) - (x * x * x * x))) + -((g(x) - ((5.0 * (x * x)) - 6.0)))) + ((6.0 - ((x * x) * 5.0)) + (x * x * x * x))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_2(x: real, y: real, f: real -> real, g: real -> real)
  ensures ((((f(x) - g(x)) + -((f(x) - (x * x * x * x)))) + (g(x) - ((5.0 * (x * x)) - 6.0))) + -(((6.0 - ((x * x) * 5.0)) + (x * x * x * x)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_3(x: real, y: real, f: real -> real, g: real -> real)
  ensures (((-((f(y) - g(y))) + (f(y) - (y * y * y * y))) + -((g(y) - ((5.0 * (y * y)) - 6.0)))) + ((6.0 - ((y * y) * 5.0)) + (y * y * y * y))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_4(x: real, y: real, f: real -> real, g: real -> real)
  ensures ((((f(y) - g(y)) + -((f(y) - (y * y * y * y)))) + (g(y) - ((5.0 * (y * y)) - 6.0))) + -(((6.0 - ((y * y) * 5.0)) + (y * y * y * y)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₇/h₇₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_5(x: real, y: real, f: real -> real, g: real -> real)
  ensures (-((((x * x * x * x) - (5.0 * (x * x))) + 6.0)) + ((6.0 - ((x * x) * 5.0)) + (x * x * x * x))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₇/h₇₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_6(x: real, y: real, f: real -> real, g: real -> real)
  ensures ((((x * x * x * x) - (5.0 * (x * x))) + 6.0) + -(((6.0 - ((x * x) * 5.0)) + (x * x * x * x)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₇/h₇₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_7(x: real, y: real, f: real -> real, g: real -> real)
  ensures (-(((x * x) - 2.0)) + ((x * x) - 2.0)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₇/h₇₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_8(x: real, y: real, f: real -> real, g: real -> real)
  ensures (((x * x) - 2.0) + (2.0 - (x * x))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₇/h₇₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_9(x: real, y: real, f: real -> real, g: real -> real)
  ensures (-(((x * x) - 3.0)) + ((x * x) - 3.0)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₇/h₇₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_10(x: real, y: real, f: real -> real, g: real -> real)
  ensures (((x * x) - 3.0) + (3.0 - (x * x))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₈/h₈₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_11(x: real, y: real, f: real -> real, g: real -> real)
  ensures (-((((y * y * y * y) - (5.0 * (y * y))) + 6.0)) + ((6.0 - ((y * y) * 5.0)) + (y * y * y * y))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₈/h₈₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_12(x: real, y: real, f: real -> real, g: real -> real)
  ensures ((((y * y * y * y) - (5.0 * (y * y))) + 6.0) + -(((6.0 - ((y * y) * 5.0)) + (y * y * y * y)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₈/h₈₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_13(x: real, y: real, f: real -> real, g: real -> real)
  ensures (-(((y * y) - 2.0)) + ((y * y) - 2.0)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₈/h₈₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_14(x: real, y: real, f: real -> real, g: real -> real)
  ensures (((y * y) - 2.0) + (2.0 - (y * y))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₈/h₈₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_15(x: real, y: real, f: real -> real, g: real -> real)
  ensures (-(((y * y) - 3.0)) + ((y * y) - 3.0)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₈/h₈₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_16(x: real, y: real, f: real -> real, g: real -> real)
  ensures (((y * y) - 3.0) + (3.0 - (y * y))) == 0.0
{ }

// statement: Lean elaborated type (v3, stmt_cache) — requires/ensures below
lemma mathd_algebra_156(x: real, y: real, f: real -> real, g: real -> real)
  requires (forall t: real :: (f(t) == (t * t * t * t)))
  requires (forall t: real :: (g(t) == ((5.0 * (t * t)) - 6.0)))
  requires (f(x) == g(x))
  requires (f(y) == g(y))
  requires ((x * x) < (y * y))
  ensures (((y * y) - (x * x)) == 1.0) // @tac 490-749 // @tac 755-1014 // @tac 1020-1555 // @tac 1561-2080 // @tac 2086-2797 // @tac 2803-3151 // @tac 3157-3235 // @tac 3241-3254
{
  // have h₅ : x ^ 4 - 5 * x ^ 2 + 6 == 0  [type from Lean state]
  assert ((((x * x * x * x) - (5.0 * (x * x))) + 6.0) == 0.0) by { // @tac 538-570 // @tac 575-617 // @tac 622-672 // @tac 677-709 // @tac 714-736
    // have h₅₁ : f ( x ) == g ( x )  [type from Lean state]
    assert (f(x) == g(x)) by {
      // [TACTIC: exact h₂]
      assert (f(x) == g(x));
    }
    // have h₅₂ : f ( x ) == x ^ 4  [type from Lean state]
    assert (f(x) == (x * x * x * x)) by { // @tac 608-617
      // [TACTIC: rwSeq [ h₀ ]]
      assert (f(x) == (x * x * x * x));  // instance of h₀ (Lean state)
      // UNCITED-APPLIED congrArg(f x, x ^ (4 : ℕ), fun (_a : ℝ) => _a = x ^ (4 : ℕ)): no library counterpart (not stated) [exec 52 608-617]
    }
    // have h₅₃ : g ( x ) == 5 * x ^ 2 - 6  [type from Lean state]
    assert (g(x) == ((5.0 * (x * x)) - 6.0)) by { // @tac 663-672
      // [TACTIC: rwSeq [ h₁ ]]
      assert (g(x) == ((5.0 * (x * x)) - 6.0));  // instance of h₁ (Lean state)
      // UNCITED-APPLIED congrArg(g x, (5 : ℝ) * x ^ (2 : ℕ) - (6 : ℝ), fun (_a : ℝ) => _a = (5 : ℝ) * x ^ (2 : ℕ) - (6 : ℝ)): no library counterpart (not stated) [exec 93 663-672]
    }
    // [TACTIC: rwSeq [ h₅₂ , h₅₃ ] at h₅₁]
    assert ((x * x * x * x) == ((5.0 * (x * x)) - 6.0));  // hypothesis h₅₁ after `rw` (Lean state) // @tac-hyp 677-709
    // [TACTIC: Ring_nfAt at h₅₁ ⊢]
    // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := x ^ (4 : ℕ))
    // UNCITED-APPLIED internal ×78 [exec 146 714-736]: applications made inside the tactic's own automation, not stated — mul_one ×1, add_zero ×1; machinery/glue: congrArg ×7, Eq.trans ×6, Mathlib.Tactic.Ring.cast_pos ×4, Mathlib.Meta.NormNum.isNat_ofNat ×4 (+36 more heads, ×55)
    assert ((x * x * x * x) == (-(6.0) + ((x * x) * 5.0)));  // hypothesis h₅₁ after `ring_nf` (Lean state) // @tac-hyp 714-736
    assert (((6.0 - ((x * x) * 5.0)) + (x * x * x * x)) == 0.0) by {  // sub-goal before `linarith` (Lean state) // @tac 741-749
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 741-749 exec 147)
      // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `-(f x - g x) + (f x - x ^ (4 : ℕ)) + -(g x - ((5 : ℝ) * x ^ (2 : ℕ) - (6 : ℝ))) = (0 : ℝ)` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
      // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `-(f x - g x) + (f x - x ^ (4 : ℕ)) = (0 : ℝ)` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
      // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `f x - g x + -(f x - x ^ (4 : ℕ)) + (g x - ((5 : ℝ) * x ^ (2 : ℕ) - (6 : ℝ))) = (0 : ℝ)` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
      // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `f x - g x + -(f x - x ^ (4 : ℕ)) = (0 : ℝ)` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
      cert_identity_1(x, y, f, g);  // cert: Linarith.lt_of_eq_of_lt
      cert_identity_2(x, y, f, g);  // cert: Linarith.lt_of_eq_of_lt
      // UNCITED-APPLIED internal ×18 [exec 147 741-749]: applications made inside the tactic's own automation, not stated — neg_eq_zero ×3, sub_eq_zero_of_eq ×3, neg_neg_of_pos ×1; machinery/glue: Linarith.eq_of_eq_of_eq ×4, congrArg ×2, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_not_lt_of_not_gt ×1 (+2 more heads, ×2)
      // UNCITED-APPLIED internal ×147 [exec 148 741-749]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.add_pf_add_lt ×7, Mathlib.Meta.NormNum.IsInt.to_isNat ×7, Mathlib.Tactic.Ring.neg_mul ×6 (+38 more heads, ×119) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×146 [exec 149 741-749]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.add_pf_add_lt ×7, Mathlib.Meta.NormNum.IsInt.to_isNat ×7, Mathlib.Tactic.Ring.neg_mul ×6 (+38 more heads, ×118) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 148, 149)]
    }
  }
  // have h₆ : y ^ 4 - 5 * y ^ 2 + 6 == 0  [type from Lean state]
  assert ((((y * y * y * y) - (5.0 * (y * y))) + 6.0) == 0.0) by { // @tac 803-835 // @tac 840-882 // @tac 887-937 // @tac 942-974 // @tac 979-1001
    // have h₆₁ : f ( y ) == g ( y )  [type from Lean state]
    assert (f(y) == g(y)) by {
      // [TACTIC: exact h₃]
      assert (f(y) == g(y));
    }
    // have h₆₂ : f ( y ) == y ^ 4  [type from Lean state]
    assert (f(y) == (y * y * y * y)) by { // @tac 873-882
      // [TACTIC: rwSeq [ h₀ ]]
      assert (f(y) == (y * y * y * y));  // instance of h₀ (Lean state)
      // UNCITED-APPLIED congrArg(f y, y ^ (4 : ℕ), fun (_a : ℝ) => _a = y ^ (4 : ℕ)): no library counterpart (not stated) [exec 198 873-882]
    }
    // have h₆₃ : g ( y ) == 5 * y ^ 2 - 6  [type from Lean state]
    assert (g(y) == ((5.0 * (y * y)) - 6.0)) by { // @tac 928-937
      // [TACTIC: rwSeq [ h₁ ]]
      assert (g(y) == ((5.0 * (y * y)) - 6.0));  // instance of h₁ (Lean state)
      // UNCITED-APPLIED congrArg(g y, (5 : ℝ) * y ^ (2 : ℕ) - (6 : ℝ), fun (_a : ℝ) => _a = (5 : ℝ) * y ^ (2 : ℕ) - (6 : ℝ)): no library counterpart (not stated) [exec 239 928-937]
    }
    // [TACTIC: rwSeq [ h₆₂ , h₆₃ ] at h₆₁]
    assert ((y * y * y * y) == ((5.0 * (y * y)) - 6.0));  // hypothesis h₆₁ after `rw` (Lean state) // @tac-hyp 942-974
    // [TACTIC: Ring_nfAt at h₆₁ ⊢]
    // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := y ^ (4 : ℕ))
    // UNCITED-APPLIED internal ×78 [exec 292 979-1001]: applications made inside the tactic's own automation, not stated — mul_one ×1, add_zero ×1; machinery/glue: congrArg ×7, Eq.trans ×6, Mathlib.Tactic.Ring.cast_pos ×4, Mathlib.Meta.NormNum.isNat_ofNat ×4 (+36 more heads, ×55)
    assert ((y * y * y * y) == (-(6.0) + ((y * y) * 5.0)));  // hypothesis h₆₁ after `ring_nf` (Lean state) // @tac-hyp 979-1001
    assert (((6.0 - ((y * y) * 5.0)) + (y * y * y * y)) == 0.0) by {  // sub-goal before `linarith` (Lean state) // @tac 1006-1014
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1006-1014 exec 293)
      // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `-(f y - g y) + (f y - y ^ (4 : ℕ)) + -(g y - ((5 : ℝ) * y ^ (2 : ℕ) - (6 : ℝ))) = (0 : ℝ)` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
      // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `-(f y - g y) + (f y - y ^ (4 : ℕ)) = (0 : ℝ)` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
      // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `f y - g y + -(f y - y ^ (4 : ℕ)) + (g y - ((5 : ℝ) * y ^ (2 : ℕ) - (6 : ℝ))) = (0 : ℝ)` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
      // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `f y - g y + -(f y - y ^ (4 : ℕ)) = (0 : ℝ)` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
      cert_identity_3(x, y, f, g);  // cert: Linarith.lt_of_eq_of_lt
      cert_identity_4(x, y, f, g);  // cert: Linarith.lt_of_eq_of_lt
      // UNCITED-APPLIED internal ×18 [exec 293 1006-1014]: applications made inside the tactic's own automation, not stated — neg_eq_zero ×3, sub_eq_zero_of_eq ×3, neg_neg_of_pos ×1; machinery/glue: Linarith.eq_of_eq_of_eq ×4, congrArg ×2, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_not_lt_of_not_gt ×1 (+2 more heads, ×2)
      // UNCITED-APPLIED internal ×147 [exec 294 1006-1014]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.add_pf_add_lt ×7, Mathlib.Meta.NormNum.IsInt.to_isNat ×7, Mathlib.Tactic.Ring.neg_mul ×6 (+38 more heads, ×119) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×146 [exec 295 1006-1014]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.add_pf_add_lt ×7, Mathlib.Meta.NormNum.IsInt.to_isNat ×7, Mathlib.Tactic.Ring.neg_mul ×6 (+38 more heads, ×118) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 294, 295)]
    }
  }
  // have h₇ : x ^ 2 == 2 || x ^ 2 == 3  [type from Lean state]
  assert (((x * x) == 2.0) || ((x * x) == 3.0)) by { // @tac 1066-1114 // @tac 1119-1217 // @tac 1222-1328 // @tac 1333-1555
    // have h₇₁ : x ^ 4 - 5 * x ^ 2 + 6 == 0  [type from Lean state]
    assert ((((x * x * x * x) - (5.0 * (x * x))) + 6.0) == 0.0) by {
      // [TACTIC: exact h₅]
      assert ((((x * x * x * x) - (5.0 * (x * x))) + 6.0) == 0.0);
    }
    // have h₇₂ : ( x ^ 2 - 2 ) * ( x ^ 2 - 3 ) == 0  [type from Lean state]
    assert ((((x * x) - 2.0) * ((x * x) - 3.0)) == 0.0) by { // @tac 1176-1217 // @tac 1176-1198
      // [TACTIC: «_<;>_» at h₇₁ ⊢ <;> linarith linarith]
      // [TACTIC: Ring_nfAt at h₇₁ ⊢]
      // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := x ^ (4 : ℕ))
      // UNCITED-APPLIED internal ×95 [exec 345 1176-1198]: applications made inside the tactic's own automation, not stated — mul_one ×1, add_zero ×1; machinery/glue: congrArg ×7, Eq.trans ×6, Mathlib.Tactic.Ring.mul_add ×5, Mathlib.Tactic.Ring.add_pf_add_zero ×4 (+43 more heads, ×71)
      assert (((6.0 - ((x * x) * 5.0)) + (x * x * x * x)) == 0.0);  // hypothesis h₇₁ after `ring_nf` (Lean state) // @tac-hyp 1176-1198
      assert (((6.0 - ((x * x) * 5.0)) + (x * x * x * x)) == 0.0) by {  // sub-goal of `linarith` (Lean state) // @tac 1209-1217
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 355, 356)]
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1209-1217 exec 354)
        cert_identity_5(x, y, f, g);  // cert: Linarith.lt_of_eq_of_lt
        cert_identity_6(x, y, f, g);  // cert: Linarith.lt_of_eq_of_lt
        // UNCITED-APPLIED internal ×9 [exec 354 1209-1217]: applications made inside the tactic's own automation, not stated — neg_eq_zero ×1, neg_neg_of_pos ×1; machinery/glue: congrArg ×2, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
        // UNCITED-APPLIED internal ×108 [exec 355 1209-1217]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.cast_pos ×4, Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Tactic.Ring.one_mul ×4, Mathlib.Tactic.Ring.add_mul ×4 (+38 more heads, ×92) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×108 [exec 356 1209-1217]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.cast_pos ×4, Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Tactic.Ring.one_mul ×4, Mathlib.Tactic.Ring.add_mul ×4 (+38 more heads, ×92) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      }
    }
    // have h₇₃ : x ^ 2 - 2 == 0 || x ^ 2 - 3 == 0  [type from Lean state]
    assert forall t_1: real :: f(t_1) == t_1 * t_1 * t_1 * t_1;  /* [IN-FILE CHECK] requires 1 of vc_mathd_algebra_156_L251 */
    assert forall t_3: real :: g(t_3) == 5.0 * (t_3 * t_3) - 6.0;  /* [IN-FILE CHECK] requires 2 of vc_mathd_algebra_156_L251 */
    assert f(x) == g(x);  /* [IN-FILE CHECK] requires 3 of vc_mathd_algebra_156_L251 */
    assert f(y) == g(y);  /* [IN-FILE CHECK] requires 4 of vc_mathd_algebra_156_L251 */
    assert x * x < y * y;  /* [IN-FILE CHECK] requires 5 of vc_mathd_algebra_156_L251 */
    assert x * x * x * x - 5.0 * (x * x) + 6.0 == 0.0;  /* [IN-FILE CHECK] requires 6 of vc_mathd_algebra_156_L251 */
    assert y * y * y * y - 5.0 * (y * y) + 6.0 == 0.0;  /* [IN-FILE CHECK] requires 7 of vc_mathd_algebra_156_L251 */
    assert (x * x - 2.0) * (x * x - 3.0) == 0.0;  /* [IN-FILE CHECK] requires 8 of vc_mathd_algebra_156_L251 */
    assert (x * x - 2.0 != 0.0) || (x * x - 2.0 == 0.0);  /* [IN-FILE CHECK] requires 9 of vc_mathd_algebra_156_L251 */
    vc_mathd_algebra_156_L251(f, g, x, y);  /* [IN-FILE CHECK] the closed lemma for line 251 */
    assert ((((x * x) - 2.0) == 0.0) || (((x * x) - 3.0) == 0.0)); // @tac 1281-1328
      // [TACTIC: apply eq_zero_or_eq_zero_of_mul_eq_zero h₇₂]
      // UNCITED eq_zero_or_eq_zero_of_mul_eq_zero: no Lean instance recorded (arguments unknown), not guessed
    // `cases`: 2 cases (Lean states); 2 branch bodies
    if ((((x * x) - 2.0) == 0.0)) {  // sub-goal of `cases` (Lean state)
      // have h₇₅ : x ^ 2 == 2  [type from Lean state]
      assert ((x * x) == 2.0) by { // @tac 1418-1426
        // [TACTIC: «Linarith[_]At___»]
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1418-1426 exec 395)
        cert_identity_7(x, y, f, g);  // cert: Linarith.lt_of_eq_of_lt
        cert_identity_8(x, y, f, g);  // cert: Linarith.lt_of_eq_of_lt
        // UNCITED-APPLIED internal ×10 [exec 395 1418-1426]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2, neg_eq_zero ×1; machinery/glue: congrArg ×2, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
        // UNCITED-APPLIED internal ×56 [exec 396 1418-1426]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Tactic.Ring.neg_add ×3, Mathlib.Tactic.Ring.neg_one_mul ×3, Mathlib.Meta.NormNum.isInt_mul ×3 (+34 more heads, ×44) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×54 [exec 397 1418-1426]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Tactic.Ring.sub_congr ×2, Mathlib.Tactic.Ring.cast_pos ×2, Mathlib.Tactic.Ring.one_mul ×2 (+33 more heads, ×45) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 396, 397)]
      }
      // [TACTIC: exact Or.inl h₇₅]
      assert ((x * x) == 2.0);
      assert (((x * x) == 2.0) || ((x * x) == 3.0));  // sub-goal of `cases` (Lean state) // @tac 1379-1426 // @tac 1433-1453
    }
    if ((((x * x) - 3.0) == 0.0)) {  // sub-goal of `cases` (Lean state)
      // have h₇₅ : x ^ 2 == 3  [type from Lean state]
      assert ((x * x) == 3.0) by { // @tac 1520-1528
        // [TACTIC: «Linarith[_]At___»]
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1520-1528 exec 418)
        cert_identity_9(x, y, f, g);  // cert: Linarith.lt_of_eq_of_lt
        cert_identity_10(x, y, f, g);  // cert: Linarith.lt_of_eq_of_lt
        // UNCITED-APPLIED internal ×10 [exec 418 1520-1528]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2, neg_eq_zero ×1; machinery/glue: congrArg ×2, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
        // UNCITED-APPLIED internal ×56 [exec 419 1520-1528]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Tactic.Ring.neg_add ×3, Mathlib.Tactic.Ring.neg_one_mul ×3, Mathlib.Meta.NormNum.isInt_mul ×3 (+34 more heads, ×44) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×54 [exec 420 1520-1528]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Tactic.Ring.sub_congr ×2, Mathlib.Tactic.Ring.cast_pos ×2, Mathlib.Tactic.Ring.one_mul ×2 (+33 more heads, ×45) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 419, 420)]
      }
      // [TACTIC: exact Or.inr h₇₅]
      assert ((x * x) == 3.0);
      assert (((x * x) == 2.0) || ((x * x) == 3.0));  // sub-goal of `cases` (Lean state) // @tac 1481-1528 // @tac 1535-1555
    }
  }
  // have h₈ : y ^ 2 == 2 || y ^ 2 == 3  [type from Lean state]
  assert (((y * y) == 2.0) || ((y * y) == 3.0)) by { // @tac 1607-1655 // @tac 1660-1758 // @tac 1763-1869 // @tac 1874-2080
    // have h₈₁ : y ^ 4 - 5 * y ^ 2 + 6 == 0  [type from Lean state]
    assert ((((y * y * y * y) - (5.0 * (y * y))) + 6.0) == 0.0) by {
      // [TACTIC: exact h₆]
      assert ((((y * y * y * y) - (5.0 * (y * y))) + 6.0) == 0.0);
    }
    // have h₈₂ : ( y ^ 2 - 2 ) * ( y ^ 2 - 3 ) == 0  [type from Lean state]
    assert ((((y * y) - 2.0) * ((y * y) - 3.0)) == 0.0) by { // @tac 1717-1758 // @tac 1717-1739
      // [TACTIC: «_<;>_» at h₈₁ ⊢ <;> linarith linarith]
      // [TACTIC: Ring_nfAt at h₈₁ ⊢]
      // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := y ^ (4 : ℕ))
      // UNCITED-APPLIED internal ×95 [exec 471 1717-1739]: applications made inside the tactic's own automation, not stated — mul_one ×1, add_zero ×1; machinery/glue: congrArg ×7, Eq.trans ×6, Mathlib.Tactic.Ring.mul_add ×5, Mathlib.Tactic.Ring.add_pf_add_zero ×4 (+43 more heads, ×71)
      assert (((6.0 - ((y * y) * 5.0)) + (y * y * y * y)) == 0.0);  // hypothesis h₈₁ after `ring_nf` (Lean state) // @tac-hyp 1717-1739
      assert (((6.0 - ((y * y) * 5.0)) + (y * y * y * y)) == 0.0) by {  // sub-goal of `linarith` (Lean state) // @tac 1750-1758
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 481, 482)]
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1750-1758 exec 480)
        cert_identity_11(x, y, f, g);  // cert: Linarith.lt_of_eq_of_lt
        cert_identity_12(x, y, f, g);  // cert: Linarith.lt_of_eq_of_lt
        // UNCITED-APPLIED internal ×9 [exec 480 1750-1758]: applications made inside the tactic's own automation, not stated — neg_eq_zero ×1, neg_neg_of_pos ×1; machinery/glue: congrArg ×2, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
        // UNCITED-APPLIED internal ×108 [exec 481 1750-1758]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.cast_pos ×4, Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Tactic.Ring.one_mul ×4, Mathlib.Tactic.Ring.add_mul ×4 (+38 more heads, ×92) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×108 [exec 482 1750-1758]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.cast_pos ×4, Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Tactic.Ring.one_mul ×4, Mathlib.Tactic.Ring.add_mul ×4 (+38 more heads, ×92) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      }
    }
    // have h₈₃ : y ^ 2 - 2 == 0 || y ^ 2 - 3 == 0  [type from Lean state]
    assert ((((y * y) - 2.0) == 0.0) || (((y * y) - 3.0) == 0.0)); // @tac 1822-1869
      // [TACTIC: apply eq_zero_or_eq_zero_of_mul_eq_zero h₈₂]
      // UNCITED eq_zero_or_eq_zero_of_mul_eq_zero: no Lean instance recorded (arguments unknown), not guessed
    // `cases`: 2 cases (Lean states); 2 branch bodies
    if ((((y * y) - 2.0) == 0.0)) {  // sub-goal of `cases` (Lean state)
      // have h₈₅ : y ^ 2 == 2  [type from Lean state]
      assert ((y * y) == 2.0) by { // @tac 1951-1959
        // [TACTIC: «Linarith[_]At___»]
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1951-1959 exec 521)
        cert_identity_13(x, y, f, g);  // cert: Linarith.lt_of_eq_of_lt
        cert_identity_14(x, y, f, g);  // cert: Linarith.lt_of_eq_of_lt
        // UNCITED-APPLIED internal ×10 [exec 521 1951-1959]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2, neg_eq_zero ×1; machinery/glue: congrArg ×2, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
        // UNCITED-APPLIED internal ×56 [exec 522 1951-1959]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Tactic.Ring.neg_add ×3, Mathlib.Tactic.Ring.neg_one_mul ×3, Mathlib.Meta.NormNum.isInt_mul ×3 (+34 more heads, ×44) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×54 [exec 523 1951-1959]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Tactic.Ring.sub_congr ×2, Mathlib.Tactic.Ring.cast_pos ×2, Mathlib.Tactic.Ring.one_mul ×2 (+33 more heads, ×45) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 522, 523)]
      }
      // [TACTIC: exact Or.inl h₈₅]
      assert ((y * y) == 2.0);
      assert (((y * y) == 2.0) || ((y * y) == 3.0));  // sub-goal of `cases` (Lean state) // @tac 1920-1959 // @tac 1966-1986
    }
    if ((((y * y) - 3.0) == 0.0)) {  // sub-goal of `cases` (Lean state)
      // have h₈₅ : y ^ 2 == 3  [type from Lean state]
      assert ((y * y) == 3.0) by { // @tac 2045-2053
        // [TACTIC: «Linarith[_]At___»]
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2045-2053 exec 544)
        cert_identity_15(x, y, f, g);  // cert: Linarith.lt_of_eq_of_lt
        cert_identity_16(x, y, f, g);  // cert: Linarith.lt_of_eq_of_lt
        // UNCITED-APPLIED internal ×10 [exec 544 2045-2053]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2, neg_eq_zero ×1; machinery/glue: congrArg ×2, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
        // UNCITED-APPLIED internal ×56 [exec 545 2045-2053]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Tactic.Ring.neg_add ×3, Mathlib.Tactic.Ring.neg_one_mul ×3, Mathlib.Meta.NormNum.isInt_mul ×3 (+34 more heads, ×44) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×54 [exec 546 2045-2053]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Tactic.Ring.sub_congr ×2, Mathlib.Tactic.Ring.cast_pos ×2, Mathlib.Tactic.Ring.one_mul ×2 (+33 more heads, ×45) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 545, 546)]
      }
      // [TACTIC: exact Or.inr h₈₅]
      assert ((y * y) == 3.0);
      assert (((y * y) == 2.0) || ((y * y) == 3.0));  // sub-goal of `cases` (Lean state) // @tac 2014-2053 // @tac 2060-2080
    }
  }
  // have h₉ : x ^ 2 == 2  [type from Lean state]
  assert ((x * x) == 2.0) by { // @tac 2118-2797
    // `cases`: 2 cases (Lean states); 2 branch bodies
    if (((x * x) == 2.0)) {  // sub-goal of `cases` (Lean state)
      // [TACTIC: exact h₇]
      assert ((x * x) == 2.0);
      assert ((x * x) == 2.0);  // sub-goal of `cases` (Lean state) // @tac 2158-2168
    }
    if (((x * x) == 3.0)) {  // sub-goal of `cases` (Lean state)
      // have h₉ : x ^ 2 == 3  [type from Lean state]
      assert ((x * x) == 3.0) by {
        // [TACTIC: exact h₇]
        assert ((x * x) == 3.0);
      }
      // have h₁₀ : y ^ 2 == 2 || y ^ 2 == 3  [type from Lean state]
      assert (((y * y) == 2.0) || ((y * y) == 3.0)) by {
        // [TACTIC: exact h₈]
        assert (((y * y) == 2.0) || ((y * y) == 3.0));
      }
      // `cases`: 2 cases (Lean states); 2 branch bodies
      if (((y * y) == 2.0)) {  // sub-goal of `cases` (Lean state)
        // have h₁₁ : y ^ 2 == 2  [type from Lean state]
        assert ((y * y) == 2.0) by {
          // [TACTIC: exact h₁₀]
          assert ((y * y) == 2.0);
        }
        // have h₁₂ : x ^ 2 < y ^ 2  [type from Lean state]
        assert ((x * x) < (y * y)) by {
          // [TACTIC: exact h₄]
          assert ((x * x) < (y * y));
        }
        // [TACTIC: rwSeq [ h₉ , h₁₁ ] at h₁₂]
        assert (3.0 < 2.0);  // hypothesis h₁₂ after `rw` (Lean state) // @tac-hyp 2496-2525
        // [TACTIC: «_<;>_» at h₁₂ norm_num at h₁₂ <;> linarith linarith]
        // [TACTIC: «Norm_num[_]At___» at h₁₂]
        // `norm_num` closed the goal; the rest of the chain did not run
        assert ((x * x) == 2.0);  // sub-goal of `cases` (Lean state) // @tac 2407-2442 // @tac 2451-2487 // @tac 2496-2525 // @tac 2534-2574 // @tac 2534-2553
        // UNCITED-APPLIED internal ×6 [exec 663 2534-2553]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, congrArg ×2, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1
      }
      if (((y * y) == 3.0)) {  // sub-goal of `cases` (Lean state)
        // have h₁₁ : y ^ 2 == 3  [type from Lean state]
        assert ((y * y) == 3.0) by {
          // [TACTIC: exact h₁₀]
          assert ((y * y) == 3.0);
        }
        // have h₁₂ : x ^ 2 < y ^ 2  [type from Lean state]
        assert ((x * x) < (y * y)) by {
          // [TACTIC: exact h₄]
          assert ((x * x) < (y * y));
        }
        // [TACTIC: rwSeq [ h₉ , h₁₁ ] at h₁₂]
        assert (3.0 < 3.0);  // hypothesis h₁₂ after `rw` (Lean state) // @tac-hyp 2719-2748
        // [TACTIC: «_<;>_» at h₁₂ norm_num at h₁₂ <;> linarith linarith]
        // [TACTIC: «Norm_num[_]At___» at h₁₂]
        // `norm_num` closed the goal; the rest of the chain did not run
        assert ((x * x) == 2.0);  // sub-goal of `cases` (Lean state) // @tac 2630-2665 // @tac 2674-2710 // @tac 2719-2748 // @tac 2757-2797 // @tac 2757-2776
        // UNCITED-APPLIED internal ×5 [exec 734 2757-2776]: applications made inside the tactic's own automation, not stated — machinery/glue: congrArg ×2, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_ofNat ×1
      }
      assert ((x * x) == 2.0);  // sub-goal of `cases` (Lean state) // @tac 2244-2273 // @tac 2280-2326 // @tac 2333-2797
    }
  }
  // have h₁₀ : y ^ 2 == 3  [type from Lean state]
  assert ((y * y) == 3.0) by { // @tac 2838-3151
    // `cases`: 2 cases (Lean states); 2 branch bodies
    if (((y * y) == 2.0)) {  // sub-goal of `cases` (Lean state)
      // have h₁₀ : y ^ 2 == 2  [type from Lean state]
      assert ((y * y) == 2.0) by {
        // [TACTIC: exact h₈]
        assert ((y * y) == 2.0);
      }
      // have h₁₁ : x ^ 2 < y ^ 2  [type from Lean state]
      assert ((x * x) < (y * y)) by {
        // [TACTIC: exact h₄]
        assert ((x * x) < (y * y));
      }
      // [TACTIC: rwSeq [ h₉ , h₁₀ ] at h₁₁]
      assert (2.0 < 2.0);  // hypothesis h₁₁ after `rw` (Lean state) // @tac-hyp 2983-3012
      // [TACTIC: «_<;>_» at h₁₁ norm_num at h₁₁ <;> linarith linarith]
      // [TACTIC: «Norm_num[_]At___» at h₁₁]
      // `norm_num` closed the goal; the rest of the chain did not run
      assert ((y * y) == 3.0);  // sub-goal of `cases` (Lean state) // @tac 2901-2933 // @tac 2940-2976 // @tac 2983-3012 // @tac 3019-3051 // @tac 3019-3038
      // UNCITED-APPLIED internal ×5 [exec 823 3019-3038]: applications made inside the tactic's own automation, not stated — machinery/glue: congrArg ×2, eq_false ×1, Mathlib.Meta.NormNum.isNat_lt_false ×1, Mathlib.Meta.NormNum.isNat_ofNat ×1
    }
    if (((y * y) == 3.0)) {  // sub-goal of `cases` (Lean state)
      // have h₁₀ : y ^ 2 == 3  [type from Lean state]
      assert ((y * y) == 3.0) by {
        // [TACTIC: exact h₈]
        assert ((y * y) == 3.0);
      }
      // [TACTIC: exact h₁₀]
      assert ((y * y) == 3.0);
      assert ((y * y) == 3.0);  // sub-goal of `cases` (Lean state) // @tac 3099-3131 // @tac 3138-3151
    }
  }
  // have h₁₁ : y ^ 2 - x ^ 2 == 1  [type from Lean state]
  assert (((y * y) - (x * x)) == 1.0) by { // @tac 3200-3235 // @tac 3200-3218
    // [TACTIC: «_<;>_» [ h₉ , h₁₀ ] rw [ h₉ , h₁₀ ] <;> norm_num norm_num]
    // [TACTIC: choice [ h₉ , h₁₀ ] rw [ h₉ , h₁₀ ]]
    // UNCITED-APPLIED congrArg(x ^ (2 : ℕ), (2 : ℝ), fun (_a : ℝ) => y ^ (2 : ℕ) - _a = (1 : ℝ)): no library counterpart (not stated) [exec 871 3200-3218]
    // UNCITED-APPLIED congrArg(y ^ (2 : ℕ), (3 : ℝ), fun (_a : ℝ) => _a - (2 : ℝ) = (1 : ℝ)): no library counterpart (not stated) [exec 871 3200-3218]
    assert ((3.0 - 2.0) == 1.0) by {  // sub-goal of `norm_num` (Lean state) // @tac 3227-3235
      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
      // UNCITED-APPLIED internal ×10 [exec 907 3227-3235]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×3, Mathlib.Meta.NormNum.IsNat.to_isInt ×2, of_eq_true ×1, eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
    }
  }
  // [TACTIC: apply h₁₁]
}



// ===== closed lemma for line 251 (from closed/mathd_algebra_156-251.dfy) =====

lemma {:induction false} vc_mathd_algebra_156_L251(f: real -> real, g: real -> real, x: real, y: real)
  requires forall t_1: real :: f(t_1) == t_1 * t_1 * t_1 * t_1
  requires forall t_3: real :: g(t_3) == 5.0 * (t_3 * t_3) - 6.0
  requires f(x) == g(x)
  requires f(y) == g(y)
  requires x * x < y * y
  requires x * x * x * x - 5.0 * (x * x) + 6.0 == 0.0
  requires y * y * y * y - 5.0 * (y * y) + 6.0 == 0.0
  requires (x * x - 2.0) * (x * x - 3.0) == 0.0
  requires (x * x - 2.0 != 0.0) || (x * x - 2.0 == 0.0)
  ensures   x * x - 2.0 == 0.0 || x * x - 3.0 == 0.0
{
  EqZeroOrEqZeroOfMulEqZero(x * x - 2.0, x * x - 3.0);  // [ADDED]
}

