// ════════════════════════════════════════════════════════════
// MECHANICAL TRANSLATION (emitter v2) of ast_cache_v2/amc12a_2009_p9.json
// Each Lean `have` → `assert ... by {}` at the same depth;
// quantified haves → forall statements. Typed pipeline only.
// ════════════════════════════════════════════════════════════

include "../../library/library_new.dfy"

// ──────────────────────────────────────────────────
// certificate identity for `h₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_1(a: real, b: real, c: real, f: real -> real, x: real)
  ensures (((((a * ((x + 3.0) * (x + 3.0))) + (b * (x + 3.0))) + c) - (((3.0 * (x * x)) + (7.0 * x)) + 4.0)) + -(((((a * ((x + 3.0) * (x + 3.0))) + (b * (x + 3.0))) + c) - (((3.0 * (x * x)) + (7.0 * x)) + 4.0)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_2(a: real, b: real, c: real, f: real -> real, x: real)
  ensures (((((3.0 * (x * x)) + (7.0 * x)) + 4.0) - (((a * ((x + 3.0) * (x + 3.0))) + (b * (x + 3.0))) + c)) + ((((a * ((x + 3.0) * (x + 3.0))) + (b * (x + 3.0))) + c) - (((3.0 * (x * x)) + (7.0 * x)) + 4.0))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_3(a: real, b: real, c: real, f: real -> real, x: real)
  ensures (-((((((((a * 9.0) + ((a * x) * 6.0)) + (a * (x * x))) + (x * b)) + (b * 3.0)) + c) - ((4.0 + (x * 7.0)) + ((x * x) * 3.0)))) + (((((((a * 9.0) + ((a * x) * 6.0)) + (a * (x * x))) + (x * b)) + (b * 3.0)) + c) - ((4.0 + (x * 7.0)) + ((x * x) * 3.0)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_4(a: real, b: real, c: real, f: real -> real, x: real)
  ensures ((((((((a * 9.0) + ((a * x) * 6.0)) + (a * (x * x))) + (x * b)) + (b * 3.0)) + c) - ((4.0 + (x * 7.0)) + ((x * x) * 3.0))) + (((4.0 + (x * 7.0)) + ((x * x) * 3.0)) - ((((((a * 9.0) + ((a * x) * 6.0)) + (a * (x * x))) + (x * b)) + (b * 3.0)) + c))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_5(a: real, b: real, c: real, f: real -> real, x: real)
  ensures ((((((((a * (x * x)) + ((6.0 * a) * x)) + (9.0 * a)) + (b * x)) + (3.0 * b)) + c) - (((3.0 * (x * x)) + (7.0 * x)) + 4.0)) + -(((((a * ((x + 3.0) * (x + 3.0))) + (b * (x + 3.0))) + c) - (((3.0 * (x * x)) + (7.0 * x)) + 4.0)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_6(a: real, b: real, c: real, f: real -> real, x: real)
  ensures (((((3.0 * (x * x)) + (7.0 * x)) + 4.0) - ((((((a * (x * x)) + ((6.0 * a) * x)) + (9.0 * a)) + (b * x)) + (3.0 * b)) + c)) + ((((a * ((x + 3.0) * (x + 3.0))) + (b * (x + 3.0))) + c) - (((3.0 * (x * x)) + (7.0 * x)) + 4.0))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_7(a: real, b: real, c: real, f: real -> real, x: real)
  ensures (-((((((((a * 9.0) + ((a * x) * 6.0)) + (a * (x * x))) + (x * b)) + (b * 3.0)) + c) - ((4.0 + (x * 7.0)) + ((x * x) * 3.0)))) + (((((((a * 9.0) + ((a * x) * 6.0)) + (a * (x * x))) + (x * b)) + (b * 3.0)) + c) - ((4.0 + (x * 7.0)) + ((x * x) * 3.0)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_8(a: real, b: real, c: real, f: real -> real, x: real)
  ensures ((((((((a * 9.0) + ((a * x) * 6.0)) + (a * (x * x))) + (x * b)) + (b * 3.0)) + c) - ((4.0 + (x * 7.0)) + ((x * x) * 3.0))) + (((4.0 + (x * 7.0)) + ((x * x) * 3.0)) - ((((((a * 9.0) + ((a * x) * 6.0)) + (a * (x * x))) + (x * b)) + (b * 3.0)) + c))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_9(a: real, b: real, c: real, f: real -> real)
  ensures ((((2.0 * ((((9.0 * a) + (3.0 * b)) + c) - 4.0)) + -((((a + ((6.0 * a) + b)) + (((9.0 * a) + (3.0 * b)) + c)) - ((3.0 + 7.0) + 4.0)))) + -((((a + (-(b) + -((6.0 * a)))) + (((9.0 * a) + (3.0 * b)) + c)) - ((3.0 + -(7.0)) + 4.0)))) + (2.0 * (a - 3.0))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_10(a: real, b: real, c: real, f: real -> real)
  ensures (((-((2.0 * ((((9.0 * a) + (3.0 * b)) + c) - 4.0))) + (((a + ((6.0 * a) + b)) + (((9.0 * a) + (3.0 * b)) + c)) - ((3.0 + 7.0) + 4.0))) + (((a + (-(b) + -((6.0 * a)))) + (((9.0 * a) + (3.0 * b)) + c)) - ((3.0 + -(7.0)) + 4.0))) + (2.0 * (3.0 - a))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₇`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_11(a: real, b: real, c: real, f: real -> real)
  ensures (((((3.0 * 6.0) + b) - 7.0) + (((((0.0 * 0.0) * 3.0) + (0.0 * ((3.0 * 6.0) + b))) + (((3.0 * 9.0) + (b * 3.0)) + c)) - ((((0.0 * 0.0) * 3.0) + (0.0 * 7.0)) + 4.0))) + -((((((1.0 * 1.0) * 3.0) + (1.0 * ((3.0 * 6.0) + b))) + (((3.0 * 9.0) + (b * 3.0)) + c)) - ((((1.0 * 1.0) * 3.0) + (1.0 * 7.0)) + 4.0)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₇`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_12(a: real, b: real, c: real, f: real -> real)
  ensures (((7.0 - ((3.0 * 6.0) + b)) + -((((((0.0 * 0.0) * 3.0) + (0.0 * ((3.0 * 6.0) + b))) + (((3.0 * 9.0) + (b * 3.0)) + c)) - ((((0.0 * 0.0) * 3.0) + (0.0 * 7.0)) + 4.0)))) + (((((1.0 * 1.0) * 3.0) + (1.0 * ((3.0 * 6.0) + b))) + (((3.0 * 9.0) + (b * 3.0)) + c)) - ((((1.0 * 1.0) * 3.0) + (1.0 * 7.0)) + 4.0))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_13(a: real, b: real, c: real, f: real -> real)
  ensures (((-((a - 3.0)) + -((((6.0 * a) + b) - 7.0))) + (((a + ((6.0 * a) + b)) + (((9.0 * a) + (3.0 * b)) + c)) - ((3.0 + 7.0) + 4.0))) + (4.0 - (((9.0 * a) + (3.0 * b)) + c))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₈`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_14(a: real, b: real, c: real, f: real -> real)
  ensures ((((a - 3.0) + (((6.0 * a) + b) - 7.0)) + -((((a + ((6.0 * a) + b)) + (((9.0 * a) + (3.0 * b)) + c)) - ((3.0 + 7.0) + 4.0)))) + ((((9.0 * a) + (3.0 * b)) + c) - 4.0)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₉`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_15(a: real, b: real, c: real, f: real -> real)
  ensures (-((a - 3.0)) + (a - 3.0)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₉`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_16(a: real, b: real, c: real, f: real -> real)
  ensures ((a - 3.0) + (3.0 - a)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁₀`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_17(a: real, b: real, c: real, f: real -> real)
  ensures (-((((6.0 * 3.0) + b) - 7.0)) + (b - -(11.0))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁₀`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_18(a: real, b: real, c: real, f: real -> real)
  ensures ((((6.0 * 3.0) + b) - 7.0) + (-(11.0) - b)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁₁/h₁₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_19(a: real, b: real, c: real, f: real -> real)
  ensures (((-((9.0 * (a - 3.0))) + (3.0 * (((6.0 * a) + b) - 7.0))) + -(((((9.0 * a) + (3.0 * b)) + c) - 4.0))) + (c - 10.0)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₁₁/h₁₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_20(a: real, b: real, c: real, f: real -> real)
  ensures ((((9.0 * (a - 3.0)) + -((3.0 * (((6.0 * a) + b) - 7.0)))) + ((((9.0 * a) + (3.0 * b)) + c) - 4.0)) + (10.0 - c)) == 0.0
{ }

// statement: Lean elaborated type (v3, stmt_cache) — requires/ensures below
lemma amc12a_2009_p9(a: real, b: real, c: real, f: real -> real)
  requires (forall x: real :: (f((x + 3.0)) == (((3.0 * (x * x)) + (7.0 * x)) + 4.0)))
  requires (forall x: real :: (f(x) == (((a * (x * x)) + (b * x)) + c)))
  ensures (((a + b) + c) == 2.0) // @tac 489-796 // @tac 802-1424 // @tac 1430-1592 // @tac 1598-1854 // @tac 1860-1998 // @tac 2004-2110 // @tac 2116-2386 // @tac 2392-2548 // @tac 2554-2933 // @tac 2939-3093 // @tac 3099-3421 // @tac 3496-3540
{
  // have h₂ : forall x :: a * ( x + 3 ) ^ 2 + b * ( x + 3 ) + c == 3 * x ^ 2 + 7 * x  [type from Lean state]
  forall x: real // @tac 576-583
    ensures ((((a * ((x + 3.0) * (x + 3.0))) + (b * (x + 3.0))) + c) == (((3.0 * (x * x)) + (7.0 * x)) + 4.0)) // @tac 654-682 // @tac 751-796
  {
    // [TACTIC: intro x]
    // [TACTIC: simp only [ h₁ ] at h₀ ⊢]
    vc_amc12a_2009_p9_L181(a, b, c, f);  /* [IN-FILE CHECK] the closed lemma for line 181 */
    assert (forall x: real :: ((((a * ((x + 3.0) * (x + 3.0))) + (b * (x + 3.0))) + c) == (((3.0 * (x * x)) + (7.0 * x)) + 4.0)));  // hypothesis h₀ after `simp` (Lean state) // @tac-hyp 654-682
    // [TACTIC: «Linarith[_]At___» [ h₀ x , h₀ ( x + 3 ) , h₀ ( x + 6 ) ]]
    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 751-796 exec 22)
    cert_identity_1(a, b, c, f, x);  // cert: Linarith.lt_of_lt_of_eq
    cert_identity_2(a, b, c, f, x);  // cert: Linarith.lt_of_lt_of_eq
    // UNCITED-APPLIED internal ×237 [exec 22 751-796]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_right ×8 (+51 more heads, ×201) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    // GAP: an instance of h₁ that Lean applied at a variable bound inside a proof term (x) is not stated: `f (x + (3 : ℝ)) = a * (x + (3 : ℝ)) ^ (2 : ℕ) + b * (x + (3 : ℝ)) + c` (Lean execution 22)
    // GAP: 3 of the 3 applications of h₀ written here (`h₀ x`, `h₀ ( x + 3 )`, `h₀ ( x + 6 )`) have no stated instance (no renderable Lean `inst` record for them): not stated
    NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
    // UNCITED-APPLIED instance of h₁: `f (x + (3 : ℝ)) = a * (x + (3 : ℝ)) ^ (2 : ℕ) + b * (x + (3 : ℝ)) + c` — Lean's proof of h₂ applies it (by a tactic that does not name it, or one whose instance could not be rendered in scope here); not stated
  }
  // have h₃ : forall x :: a * ( x ^ 2 + 6 * x + 9 ) + b * ( x + 3 ) + c == 3 * x ^ 2  [type from Lean state]
  forall x: real // @tac 897-904
    ensures ((((a * (((x * x) + (6.0 * x)) + 9.0)) + (b * (x + 3.0))) + c) == (((3.0 * (x * x)) + (7.0 * x)) + 4.0)) // @tac 998-1017 // @tac 1022-1041 // @tac 1046-1065 // @tac 1070-1092 // @tac 1097-1116 // @tac 1121-1140 // @tac 1145-1167 // @tac 1172-1214 // @tac 1275-1324
  {
    // [TACTIC: intro x]
    // have h₃ :   [type from Lean state]
    assert ((((a * ((x + 3.0) * (x + 3.0))) + (b * (x + 3.0))) + c) == (((3.0 * (x * x)) + (7.0 * x)) + 4.0)) by {
      // [TACTIC: exact h₂ ( x )]
      assert ((((a * ((x + 3.0) * (x + 3.0))) + (b * (x + 3.0))) + c) == (((3.0 * (x * x)) + (7.0 * x)) + 4.0));  // instance of h₂ (Lean state)
    }
    // have h₄ :   [type from Lean state]
    assert ((((a * ((0.0 + 3.0) * (0.0 + 3.0))) + (b * (0.0 + 3.0))) + c) == (((3.0 * (0.0 * 0.0)) + (7.0 * 0.0)) + 4.0)) by {
      // [TACTIC: exact h₂ ( 0 )]
      assert ((((a * ((0.0 + 3.0) * (0.0 + 3.0))) + (b * (0.0 + 3.0))) + c) == (((3.0 * (0.0 * 0.0)) + (7.0 * 0.0)) + 4.0));  // instance of h₂ (Lean state)
    }
    // have h₅ :   [type from Lean state]
    assert ((((a * ((1.0 + 3.0) * (1.0 + 3.0))) + (b * (1.0 + 3.0))) + c) == (((3.0 * (1.0 * 1.0)) + (7.0 * 1.0)) + 4.0)) by {
      // [TACTIC: exact h₂ ( 1 )]
      assert ((((a * ((1.0 + 3.0) * (1.0 + 3.0))) + (b * (1.0 + 3.0))) + c) == (((3.0 * (1.0 * 1.0)) + (7.0 * 1.0)) + 4.0));  // instance of h₂ (Lean state)
    }
    // have h₆ :   [type from Lean state]
    assert ((((a * ((-(1.0) + 3.0) * (-(1.0) + 3.0))) + (b * (-(1.0) + 3.0))) + c) == (((3.0 * (-(1.0) * -(1.0))) + (7.0 * -(1.0))) + 4.0)) by {
      // [TACTIC: exact h₂ ( ( - 1 ) )]
      assert ((((a * ((-(1.0) + 3.0) * (-(1.0) + 3.0))) + (b * (-(1.0) + 3.0))) + c) == (((3.0 * (-(1.0) * -(1.0))) + (7.0 * -(1.0))) + 4.0));  // instance of h₂ (Lean state)
    }
    // have h₇ :   [type from Lean state]
    assert (f((0.0 + 3.0)) == (((3.0 * (0.0 * 0.0)) + (7.0 * 0.0)) + 4.0)) by {
      // [TACTIC: exact h₀ ( 0 )]
      assert (f((0.0 + 3.0)) == (((3.0 * (0.0 * 0.0)) + (7.0 * 0.0)) + 4.0));  // instance of h₀ (Lean state)
    }
    // have h₈ :   [type from Lean state]
    assert (f((1.0 + 3.0)) == (((3.0 * (1.0 * 1.0)) + (7.0 * 1.0)) + 4.0)) by {
      // [TACTIC: exact h₀ ( 1 )]
      assert (f((1.0 + 3.0)) == (((3.0 * (1.0 * 1.0)) + (7.0 * 1.0)) + 4.0));  // instance of h₀ (Lean state)
    }
    // have h₉ :   [type from Lean state]
    assert (f((-(1.0) + 3.0)) == (((3.0 * (-(1.0) * -(1.0))) + (7.0 * -(1.0))) + 4.0)) by {
      // [TACTIC: exact h₀ ( ( - 1 ) )]
      assert (f((-(1.0) + 3.0)) == (((3.0 * (-(1.0) * -(1.0))) + (7.0 * -(1.0))) + 4.0));  // instance of h₀ (Lean state)
    }
    // [TACTIC: simp at h₃ h₄ h₅ h₆ h₇ h₈ h₉]
    assert ((((a * (3.0 * 3.0)) + (b * 3.0)) + c) == 4.0);  // hypothesis h₄ after `simp` (Lean state) // @tac-hyp 1172-1214
    assert ((((a * ((1.0 + 3.0) * (1.0 + 3.0))) + (b * (1.0 + 3.0))) + c) == ((3.0 + 7.0) + 4.0));  // hypothesis h₅ after `simp` (Lean state) // @tac-hyp 1172-1214
    assert ((((a * ((-(1.0) + 3.0) * (-(1.0) + 3.0))) + (b * (-(1.0) + 3.0))) + c) == ((3.0 + -(7.0)) + 4.0));  // hypothesis h₆ after `simp` (Lean state) // @tac-hyp 1172-1214
    assert (f(3.0) == 4.0);  // hypothesis h₇ after `simp` (Lean state) // @tac-hyp 1172-1214
    assert (f((1.0 + 3.0)) == ((3.0 + 7.0) + 4.0));  // hypothesis h₈ after `simp` (Lean state) // @tac-hyp 1172-1214
    assert (f((-(1.0) + 3.0)) == ((3.0 + -(7.0)) + 4.0));  // hypothesis h₉ after `simp` (Lean state) // @tac-hyp 1172-1214
    // [TACTIC: Ring_nfAt at h₃ h₄ h₅ h₆ h₇ h₈ h₉ ⊢]
    PowOne(a);  // cite: pow_one [applied by the tactic, not named in it]
    PowOne(x);  // cite: pow_one [applied by the tactic, not named in it]
    PowOne(b);  // cite: pow_one [applied by the tactic, not named in it]
    PowOne(c);  // cite: pow_one [applied by the tactic, not named in it]
    // UNCITED-APPLIED mul_one ×3: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := x ^ (2 : ℕ)); (a := b); (a := c)
    // UNCITED-APPLIED internal ×142 [exec 127 1275-1324]: applications made inside the tactic's own automation, not stated — mul_one ×3, add_zero ×2; machinery/glue: congr ×8, congrArg ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8 (+25 more heads, ×105) (cited in this block, not counted here: pow_one [Lean recorded ×4])
    assert (((((((a * 9.0) + ((a * x) * 6.0)) + (a * (x * x))) + (x * b)) + (b * 3.0)) + c) == ((4.0 + (x * 7.0)) + ((x * x) * 3.0)));  // hypothesis h₃ after `ring_nf` (Lean state) // @tac-hyp 1275-1324
    assert ((((a * 9.0) + (b * 3.0)) + c) == 4.0);  // hypothesis h₄ after `ring_nf` (Lean state) // @tac-hyp 1275-1324
    assert ((((a * 16.0) + (b * 4.0)) + c) == 14.0);  // hypothesis h₅ after `ring_nf` (Lean state) // @tac-hyp 1275-1324
    assert ((((a * 4.0) + (b * 2.0)) + c) == 0.0);  // hypothesis h₆ after `ring_nf` (Lean state) // @tac-hyp 1275-1324
    assert (f(4.0) == 14.0);  // hypothesis h₈ after `ring_nf` (Lean state) // @tac-hyp 1275-1324
    assert (f(2.0) == 0.0);  // hypothesis h₉ after `ring_nf` (Lean state) // @tac-hyp 1275-1324
    assert (((((((a * 9.0) + ((a * x) * 6.0)) + (a * (x * x))) + (x * b)) + (b * 3.0)) + c) == ((4.0 + (x * 7.0)) + ((x * x) * 3.0))) by {  // sub-goal before `linarith` (Lean state) // @tac 1416-1424
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1416-1424 exec 128)
      cert_identity_3(a, b, c, f, x);  // cert: Linarith.lt_of_eq_of_lt
      cert_identity_4(a, b, c, f, x);  // cert: Linarith.lt_of_eq_of_lt
      // UNCITED-APPLIED internal ×170 [exec 128 1416-1424]: applications made inside the tactic's own automation, not stated — mul_one ×3, add_zero ×2, sub_neg_of_lt ×2, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congr ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8 (+41 more heads, ×129) (cited in this block, not counted here: pow_one [Lean recorded ×4])
      // UNCITED-APPLIED internal ×198 [exec 129 1416-1424]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8 (+33 more heads, ×166) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×195 [exec 130 1416-1424]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8 (+32 more heads, ×163) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 129, 130)]
      PowOne(a);  // cite: pow_one [applied by the tactic, not named in it]
      PowOne(x);  // cite: pow_one [applied by the tactic, not named in it]
      PowOne(b);  // cite: pow_one [applied by the tactic, not named in it]
      PowOne(c);  // cite: pow_one [applied by the tactic, not named in it]
      // UNCITED-APPLIED mul_one ×3: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := x ^ (2 : ℕ)); (a := b); (a := c)
    }
  }
  // have h₄ : forall x :: a * x ^ 2 + 6 * a * x + 9 * a + b * x + 3 * b + c == 3 * x  [type from Lean state]
  forall x: real // @tac 1533-1540
    ensures (((((((a * (x * x)) + ((6.0 * a) * x)) + (9.0 * a)) + (b * x)) + (3.0 * b)) + c) == (((3.0 * (x * x)) + (7.0 * x)) + 4.0)) // @tac 1545-1592
  {
    // [TACTIC: intro x]
    // [TACTIC: «Linarith[_]At___» [ h₂ x , h₃ x , h₁ x , h₁ ( x + 3 ) ]]
    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1545-1592 exec 148)
    cert_identity_5(a, b, c, f, x);  // cert: Linarith.lt_of_lt_of_eq
    cert_identity_6(a, b, c, f, x);  // cert: Linarith.lt_of_lt_of_eq
    // UNCITED-APPLIED internal ×9 [exec 148 1545-1592]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: Linarith.lt_of_lt_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1, Linarith.lt_irrefl ×1
    // UNCITED-APPLIED internal ×225 [exec 150 1545-1592]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8 (+44 more heads, ×193) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    assert ((((a * ((x + 3.0) * (x + 3.0))) + (b * (x + 3.0))) + c) == (((3.0 * (x * x)) + (7.0 * x)) + 4.0));  // instance of h₂ (Lean state)
    // GAP: 1 of the 1 applications of h₃ written here (`h₃ x`) have no stated instance (no renderable Lean `inst` record for it): not stated
    // GAP: 2 of the 2 applications of h₁ written here (`h₁ x`, `h₁ ( x + 3 )`) have no stated instance (no renderable Lean `inst` record for them): not stated
    NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 149, 150)]
    // UNCITED-APPLIED internal ×230 [exec 149 1545-1592]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8 (+44 more heads, ×198) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
  }
  // have h₅ : forall x :: a * x ^ 2 + ( 6 * a + b ) * x + ( 9 * a + 3 * b + c ) == 3  [type from Lean state]
  forall x: real // @tac 1701-1708
    ensures ((((a * (x * x)) + (((6.0 * a) + b) * x)) + (((9.0 * a) + (3.0 * b)) + c)) == (((3.0 * (x * x)) + (7.0 * x)) + 4.0)) // @tac 1713-1732 // @tac 1737-1756 // @tac 1761-1780 // @tac 1785-1807 // @tac 1812-1841
  {
    // [TACTIC: intro x]
    // have h₅ :   [type from Lean state]
    assert ((((a * ((x + 3.0) * (x + 3.0))) + (b * (x + 3.0))) + c) == (((3.0 * (x * x)) + (7.0 * x)) + 4.0)) by {
      // [TACTIC: exact h₂ ( x )]
      assert ((((a * ((x + 3.0) * (x + 3.0))) + (b * (x + 3.0))) + c) == (((3.0 * (x * x)) + (7.0 * x)) + 4.0));  // instance of h₂ (Lean state)
    }
    // have h₆ :   [type from Lean state]
    assert ((((a * (((x * x) + (6.0 * x)) + 9.0)) + (b * (x + 3.0))) + c) == (((3.0 * (x * x)) + (7.0 * x)) + 4.0)) by {
      // [TACTIC: exact h₃ ( x )]
      assert ((((a * (((x * x) + (6.0 * x)) + 9.0)) + (b * (x + 3.0))) + c) == (((3.0 * (x * x)) + (7.0 * x)) + 4.0));  // instance of h₃ (Lean state)
    }
    // have h₇ :   [type from Lean state]
    assert (((((((a * (x * x)) + ((6.0 * a) * x)) + (9.0 * a)) + (b * x)) + (3.0 * b)) + c) == (((3.0 * (x * x)) + (7.0 * x)) + 4.0)) by {
      // [TACTIC: exact h₄ ( x )]
      assert (((((((a * (x * x)) + ((6.0 * a) * x)) + (9.0 * a)) + (b * x)) + (3.0 * b)) + c) == (((3.0 * (x * x)) + (7.0 * x)) + 4.0));  // instance of h₄ (Lean state)
    }
    // [TACTIC: simp at h₅ h₆ h₇]
    // [TACTIC: Ring_nfAt at h₅ h₆ h₇ ⊢]
    PowOne(a);  // cite: pow_one [applied by the tactic, not named in it]
    PowOne(x);  // cite: pow_one [applied by the tactic, not named in it]
    PowOne(b);  // cite: pow_one [applied by the tactic, not named in it]
    PowOne(c);  // cite: pow_one [applied by the tactic, not named in it]
    // UNCITED-APPLIED mul_one ×3: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := x ^ (2 : ℕ)); (a := b); (a := c)
    // UNCITED-APPLIED internal ×145 [exec 205 1812-1841]: applications made inside the tactic's own automation, not stated — mul_one ×3, add_zero ×2; machinery/glue: congr ×8, congrArg ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8 (+25 more heads, ×108) (cited in this block, not counted here: pow_one [Lean recorded ×4])
    assert (((((((a * 9.0) + ((a * x) * 6.0)) + (a * (x * x))) + (x * b)) + (b * 3.0)) + c) == ((4.0 + (x * 7.0)) + ((x * x) * 3.0)));  // hypothesis h₅ after `ring_nf` (Lean state) // @tac-hyp 1812-1841
    assert (((((((a * 9.0) + ((a * x) * 6.0)) + (a * (x * x))) + (x * b)) + (b * 3.0)) + c) == ((4.0 + (x * 7.0)) + ((x * x) * 3.0)));  // hypothesis h₆ after `ring_nf` (Lean state) // @tac-hyp 1812-1841
    assert (((((((a * 9.0) + ((a * x) * 6.0)) + (a * (x * x))) + (x * b)) + (b * 3.0)) + c) == ((4.0 + (x * 7.0)) + ((x * x) * 3.0)));  // hypothesis h₇ after `ring_nf` (Lean state) // @tac-hyp 1812-1841
    assert (((((((a * 9.0) + ((a * x) * 6.0)) + (a * (x * x))) + (x * b)) + (b * 3.0)) + c) == ((4.0 + (x * 7.0)) + ((x * x) * 3.0))) by {  // sub-goal before `linarith` (Lean state) // @tac 1846-1854
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1846-1854 exec 206)
      cert_identity_7(a, b, c, f, x);  // cert: Linarith.lt_of_eq_of_lt
      cert_identity_8(a, b, c, f, x);  // cert: Linarith.lt_of_eq_of_lt
      // UNCITED-APPLIED internal ×170 [exec 206 1846-1854]: applications made inside the tactic's own automation, not stated — mul_one ×3, add_zero ×2, sub_neg_of_lt ×2, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congr ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8 (+41 more heads, ×129) (cited in this block, not counted here: pow_one [Lean recorded ×4])
      // UNCITED-APPLIED internal ×198 [exec 207 1846-1854]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8 (+33 more heads, ×166) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×195 [exec 208 1846-1854]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8 (+32 more heads, ×163) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 207, 208)]
      PowOne(a);  // cite: pow_one [applied by the tactic, not named in it]
      PowOne(x);  // cite: pow_one [applied by the tactic, not named in it]
      PowOne(b);  // cite: pow_one [applied by the tactic, not named in it]
      PowOne(c);  // cite: pow_one [applied by the tactic, not named in it]
      // UNCITED-APPLIED mul_one ×3: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := x ^ (2 : ℕ)); (a := b); (a := c)
    }
  }
  // have h₆ : a == 3  [type from Lean state]
  assert (a == 3.0) by { // @tac 1888-1907 // @tac 1912-1931 // @tac 1936-1958 // @tac 1963-1985 // @tac 1990-1998
    // have h₆ :   [type from Lean state]
    assert ((((a * (0.0 * 0.0)) + (((6.0 * a) + b) * 0.0)) + (((9.0 * a) + (3.0 * b)) + c)) == (((3.0 * (0.0 * 0.0)) + (7.0 * 0.0)) + 4.0)) by {
      // [TACTIC: exact h₅ ( 0 )]
      assert ((((a * (0.0 * 0.0)) + (((6.0 * a) + b) * 0.0)) + (((9.0 * a) + (3.0 * b)) + c)) == (((3.0 * (0.0 * 0.0)) + (7.0 * 0.0)) + 4.0));  // instance of h₅ (Lean state)
    }
    // have h₇ :   [type from Lean state]
    assert ((((a * (1.0 * 1.0)) + (((6.0 * a) + b) * 1.0)) + (((9.0 * a) + (3.0 * b)) + c)) == (((3.0 * (1.0 * 1.0)) + (7.0 * 1.0)) + 4.0)) by {
      // [TACTIC: exact h₅ ( 1 )]
      assert ((((a * (1.0 * 1.0)) + (((6.0 * a) + b) * 1.0)) + (((9.0 * a) + (3.0 * b)) + c)) == (((3.0 * (1.0 * 1.0)) + (7.0 * 1.0)) + 4.0));  // instance of h₅ (Lean state)
    }
    // have h₈ :   [type from Lean state]
    assert ((((a * (-(1.0) * -(1.0))) + (((6.0 * a) + b) * -(1.0))) + (((9.0 * a) + (3.0 * b)) + c)) == (((3.0 * (-(1.0) * -(1.0))) + (7.0 * -(1.0))) + 4.0)) by {
      // [TACTIC: exact h₅ ( ( - 1 ) )]
      assert ((((a * (-(1.0) * -(1.0))) + (((6.0 * a) + b) * -(1.0))) + (((9.0 * a) + (3.0 * b)) + c)) == (((3.0 * (-(1.0) * -(1.0))) + (7.0 * -(1.0))) + 4.0));  // instance of h₅ (Lean state)
    }
    // [TACTIC: simp at h₆ h₇ h₈]
    assert ((((9.0 * a) + (3.0 * b)) + c) == 4.0);  // hypothesis h₆ after `simp` (Lean state) // @tac-hyp 1963-1985
    assert (((a + ((6.0 * a) + b)) + (((9.0 * a) + (3.0 * b)) + c)) == ((3.0 + 7.0) + 4.0));  // hypothesis h₇ after `simp` (Lean state) // @tac-hyp 1963-1985
    assert (((a + (-(b) + -((6.0 * a)))) + (((9.0 * a) + (3.0 * b)) + c)) == ((3.0 + -(7.0)) + 4.0));  // hypothesis h₈ after `simp` (Lean state) // @tac-hyp 1963-1985
    // [TACTIC: «Linarith[_]At___»]
    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1990-1998 exec 262)
    // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℝ) * ((9 : ℝ) * a + (3 : ℝ) * b + c - (4 : ℝ)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((((9.0 * a) + (3.0 * b)) + c) - 4.0) == 0.0); (2.0 > 0.0)
    // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * (a - (3 : ℝ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((a - 3.0) < 0.0); (2.0 > 0.0)
    // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℝ) * -((9 : ℝ) * a + (3 : ℝ) * b + c - (4 : ℝ)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-(((((9.0 * a) + (3.0 * b)) + c) - 4.0)) == 0.0); (2.0 > 0.0)
    // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * ((3 : ℝ) - a) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((3.0 - a) < 0.0); (2.0 > 0.0)
    // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `(2 : ℝ) * ((9 : ℝ) * a + (3 : ℝ) * b + c - (4 : ℝ)) + -(a + ((6 : ℝ) * a + b) + ((9 : ℝ) * a + (3 : ℝ) * b + c) - ((3 :…` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
    // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `(2 : ℝ) * ((9 : ℝ) * a + (3 : ℝ) * b + c - (4 : ℝ)) + -(a + ((6 : ℝ) * a + b) + ((9 : ℝ) * a + (3 : ℝ) * b + c) - ((3 :…` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
    // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `(2 : ℝ) * -((9 : ℝ) * a + (3 : ℝ) * b + c - (4 : ℝ)) + (a + ((6 : ℝ) * a + b) + ((9 : ℝ) * a + (3 : ℝ) * b + c) - ((3 :…` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
    // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `(2 : ℝ) * -((9 : ℝ) * a + (3 : ℝ) * b + c - (4 : ℝ)) + (a + ((6 : ℝ) * a + b) + ((9 : ℝ) * a + (3 : ℝ) * b + c) - ((3 :…` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
    cert_identity_9(a, b, c, f);  // cert: Linarith.lt_of_eq_of_lt
    cert_identity_10(a, b, c, f);  // cert: Linarith.lt_of_eq_of_lt
    // UNCITED-APPLIED internal ×55 [exec 262 1990-1998]: applications made inside the tactic's own automation, not stated — mul_one ×4, sub_eq_zero_of_eq ×3, neg_eq_zero ×3, zero_add ×2, mul_neg ×2, sub_neg_of_lt ×2, zero_pow ×1, add_zero ×1, Even.neg_pow ×1, neg_add_rev ×1; machinery/glue: congr ×8, Eq.trans ×8, congrArg ×7, Linarith.eq_of_eq_of_eq ×4 (+6 more heads, ×8) (cited in this block, not counted here: one_pow [Lean recorded ×1])
    // UNCITED-APPLIED internal ×219 [exec 263 1990-1998]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Tactic.Ring.add_pf_add_lt ×8, Mathlib.Tactic.Ring.add_pf_zero_add ×8 (+33 more heads, ×187) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    // UNCITED-APPLIED internal ×5 [exec 264 1990-1998]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    // UNCITED-APPLIED internal ×5 [exec 265 1990-1998]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    // UNCITED-APPLIED internal ×216 [exec 266 1990-1998]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Tactic.Ring.add_pf_add_lt ×8, Mathlib.Tactic.Ring.add_pf_zero_add ×8 (+33 more heads, ×184) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    // UNCITED-APPLIED internal ×5 [exec 267 1990-1998]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    // UNCITED-APPLIED internal ×5 [exec 268 1990-1998]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 264, 265, 267, 268 / `ring1` exec 263, 266)]
    // UNCITED-APPLIED zero_add ×2: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (9 : ℝ) * a + (3 : ℝ) * b + c); (a := (4 : ℝ))
    OnePowReal(2);  // cite: one_pow [applied by the tactic, not named in it]
    // UNCITED-APPLIED mul_one ×4: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := a); (a := (6 : ℝ) * a + b); (a := (3 : ℝ)); (a := (7 : ℝ))
    // UNCITED-APPLIED mul_neg ×2: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (6 : ℝ) * a + b, b := (1 : ℝ)); (a := (7 : ℝ), b := (1 : ℝ))
  }
  // have h₇ : 6 * a + b == 7  [type from Lean state]
  assert (((6.0 * a) + b) == 7.0) by { // @tac 2040-2064
    // [TACTIC: simpAll only [ mul_comm ]]
    // UNCITED mul_comm: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances here: (a := (6 : ℝ), b := (3 : ℝ))
    // UNCITED-APPLIED internal ×4 [exec 285 2040-2064]: applications made inside the tactic's own automation, not stated — mul_comm ×1; machinery/glue: congrArg ×2, Eq.trans ×1
    assert (forall x: real :: ((((3.0 * ((x + 3.0) * (x + 3.0))) + (b * (x + 3.0))) + c) == ((((x * x) * 3.0) + (x * 7.0)) + 4.0)));  // hypothesis h₀ after `simp_all` (Lean state) // @tac-hyp 2040-2064
    assert (forall x: real :: (f(x) == ((((x * x) * 3.0) + (b * x)) + c)));  // hypothesis h₁ after `simp_all` (Lean state) // @tac-hyp 2040-2064
    assert (forall x: real :: ((((3.0 * (((x * x) + (x * 6.0)) + 9.0)) + (b * (x + 3.0))) + c) == ((((x * x) * 3.0) + (x * 7.0)) + 4.0)));  // hypothesis h₃ after `simp_all` (Lean state) // @tac-hyp 2040-2064
    assert (forall x: real :: ((((((((x * x) * 3.0) + (x * (3.0 * 6.0))) + (3.0 * 9.0)) + (b * x)) + (b * 3.0)) + c) == ((((x * x) * 3.0) + (x * 7.0)) + 4.0)));  // hypothesis h₄ after `simp_all` (Lean state) // @tac-hyp 2040-2064
    assert (forall x: real :: (((((x * x) * 3.0) + (x * ((3.0 * 6.0) + b))) + (((3.0 * 9.0) + (b * 3.0)) + c)) == ((((x * x) * 3.0) + (x * 7.0)) + 4.0)));  // hypothesis h₅ after `simp_all` (Lean state) // @tac-hyp 2040-2064
    assert (((3.0 * 6.0) + b) == 7.0) by {  // sub-goal before `linarith` (Lean state) // @tac 2069-2110
      // [TACTIC: «Linarith[_]At___» [ h₅ 0 , h₅ 1 , h₅ 2 , h₅ 3 ]]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2069-2110 exec 286)
      // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(7 : ℝ) - ((3 : ℝ) * (6 : ℝ) + b) + -((0 : ℝ) ^ (2 : ℕ) * (3 : ℝ) + (0 : ℝ) * ((3 : ℝ) * (6 : ℝ) + b) + ((3 : ℝ) * (9 :…`
      cert_identity_11(a, b, c, f);  // cert: Linarith.lt_of_lt_of_eq
      cert_identity_12(a, b, c, f);  // cert: Linarith.lt_of_lt_of_eq
      // UNCITED-APPLIED internal ×52 [exec 286 2069-2110]: applications made inside the tactic's own automation, not stated — mul_comm ×15, sub_neg_of_lt ×2, sub_eq_zero_of_eq ×2, neg_eq_zero ×2; machinery/glue: congr ×8, Eq.trans ×8, congrArg ×7, Linarith.lt_of_lt_of_eq ×4 (+4 more heads, ×4)
      // UNCITED-APPLIED internal ×199 [exec 288 2069-2110]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.mul_add ×8 (+40 more heads, ×167) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
      // GAP: 4 of the 4 applications of h₅ written here (`h₅ 0`, `h₅ 1`, `h₅ 2`, `h₅ 3`) have no stated instance (no renderable Lean `inst` record for them): not stated
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 287, 288)]
      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 287, 288)]
      // UNCITED-APPLIED mul_comm ×6: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (3 : ℝ), b := x ^ (2 : ℕ)); (a := (6 : ℝ), b := (3 : ℝ)); (a := (3 : ℝ) * (6 : ℝ) + b, b := x); (a := (9 : ℝ), b := (3 : ℝ)); (a := (3 : ℝ), b := b); (a := (7 : ℝ), b := x)
      // UNCITED-APPLIED internal ×186 [exec 287 2069-2110]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×8, Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Tactic.Ring.mul_add ×8 (+40 more heads, ×154) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
    }
  }
  // have h₈ : 9 * a + 3 * b + c == 4  [type from Lean state]
  assert ((((9.0 * a) + (3.0 * b)) + c) == 4.0) by { // @tac 2160-2179 // @tac 2184-2203 // @tac 2208-2233 // @tac 2238-2373 // @tac 2378-2386
    // have h₈ :   [type from Lean state]
    assert ((((a * (1.0 * 1.0)) + (((6.0 * a) + b) * 1.0)) + (((9.0 * a) + (3.0 * b)) + c)) == (((3.0 * (1.0 * 1.0)) + (7.0 * 1.0)) + 4.0)) by {
      // [TACTIC: exact h₅ ( 1 )]
      assert ((((a * (1.0 * 1.0)) + (((6.0 * a) + b) * 1.0)) + (((9.0 * a) + (3.0 * b)) + c)) == (((3.0 * (1.0 * 1.0)) + (7.0 * 1.0)) + 4.0));  // instance of h₅ (Lean state)
    }
    // have h₉ :   [type from Lean state]
    assert ((((a * (0.0 * 0.0)) + (((6.0 * a) + b) * 0.0)) + (((9.0 * a) + (3.0 * b)) + c)) == (((3.0 * (0.0 * 0.0)) + (7.0 * 0.0)) + 4.0)) by {
      // [TACTIC: exact h₅ ( 0 )]
      assert ((((a * (0.0 * 0.0)) + (((6.0 * a) + b) * 0.0)) + (((9.0 * a) + (3.0 * b)) + c)) == (((3.0 * (0.0 * 0.0)) + (7.0 * 0.0)) + 4.0));  // instance of h₅ (Lean state)
    }
    // have h₁₀ :   [type from Lean state]
    assert ((((a * (-(1.0) * -(1.0))) + (((6.0 * a) + b) * -(1.0))) + (((9.0 * a) + (3.0 * b)) + c)) == (((3.0 * (-(1.0) * -(1.0))) + (7.0 * -(1.0))) + 4.0)) by {
      // [TACTIC: exact h₅ ( ( - 1 ) )]
      assert ((((a * (-(1.0) * -(1.0))) + (((6.0 * a) + b) * -(1.0))) + (((9.0 * a) + (3.0 * b)) + c)) == (((3.0 * (-(1.0) * -(1.0))) + (7.0 * -(1.0))) + 4.0));  // instance of h₅ (Lean state)
    }
    // [TACTIC: simp only [ one_pow , mul_one , mul_zero , zero_add , add_zero , zero_mul , zero_sub , sub_zero , mul_neg , mul_assoc ] at h₈ h₉ h₁₀]
    // UNCITED one_pow: named here, no record of its application here; the harvest has no application record for this execution at all (its proof term was not captured), so whether Lean applied it here is unknown: not stated
    // UNCITED mul_one: named here, no record of its application here; the harvest has no application record for this execution at all (its proof term was not captured), so whether Lean applied it here is unknown: not stated
    // UNCITED mul_zero: no Lean instance recorded (arguments unknown), not guessed
    // UNCITED zero_add: named here, no record of its application here; the harvest has no application record for this execution at all (its proof term was not captured), so whether Lean applied it here is unknown: not stated
    // UNCITED mul_neg: named here, no record of its application here; the harvest has no application record for this execution at all (its proof term was not captured), so whether Lean applied it here is unknown: not stated
    // UNCITED mul_assoc: no Lean instance recorded (arguments unknown), not guessed
    // UNCITED add_zero: named here, no record of its application here; the harvest has no application record for this execution at all (its proof term was not captured), so whether Lean applied it here is unknown: not stated
    // UNCITED zero_mul: named here, no record of its application here; the harvest has no application record for this execution at all (its proof term was not captured), so whether Lean applied it here is unknown: not stated
    // UNCITED zero_sub: named here, no record of its application here; the harvest has no application record for this execution at all (its proof term was not captured), so whether Lean applied it here is unknown: not stated
    // UNCITED sub_zero: named here, no record of its application here; the harvest has no application record for this execution at all (its proof term was not captured), so whether Lean applied it here is unknown: not stated
    assert (((a + ((6.0 * a) + b)) + (((9.0 * a) + (3.0 * b)) + c)) == ((3.0 + 7.0) + 4.0));  // hypothesis h₈ after `simp` (Lean state) // @tac-hyp 2238-2373
    assert (((a * (0.0 * 0.0)) + (((9.0 * a) + (3.0 * b)) + c)) == ((3.0 * (0.0 * 0.0)) + 4.0));  // hypothesis h₉ after `simp` (Lean state) // @tac-hyp 2238-2373
    assert ((((a * (-(1.0) * -(1.0))) + -(((6.0 * a) + b))) + (((9.0 * a) + (3.0 * b)) + c)) == (((3.0 * (-(1.0) * -(1.0))) + -(7.0)) + 4.0));  // hypothesis h₁₀ after `simp` (Lean state) // @tac-hyp 2238-2373
    // [TACTIC: «Linarith[_]At___»]
    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2378-2386 exec 342)
    // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `a - (3 : ℝ) + ((6 : ℝ) * a + b - (7 : ℝ)) + -(a + ((6 : ℝ) * a + b) + ((9 : ℝ) * a + (3 : ℝ) * b + c) - ((3 : ℝ) + (7 :…` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
    // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `a - (3 : ℝ) + ((6 : ℝ) * a + b - (7 : ℝ)) = (0 : ℝ)` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
    // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `-(a - (3 : ℝ)) + -((6 : ℝ) * a + b - (7 : ℝ)) + (a + ((6 : ℝ) * a + b) + ((9 : ℝ) * a + (3 : ℝ) * b + c) - ((3 : ℝ) + (…` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
    // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `-(a - (3 : ℝ)) + -((6 : ℝ) * a + b - (7 : ℝ)) = (0 : ℝ)` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
    cert_identity_13(a, b, c, f);  // cert: Linarith.lt_of_eq_of_lt
    cert_identity_14(a, b, c, f);  // cert: Linarith.lt_of_eq_of_lt
    // UNCITED-APPLIED internal ×34 [exec 342 2378-2386]: applications made inside the tactic's own automation, not stated — mul_one ×4, sub_eq_zero_of_eq ×3, neg_eq_zero ×3, sub_neg_of_lt ×2; machinery/glue: congrArg ×8, Linarith.eq_of_eq_of_eq ×4, congr ×3, Linarith.lt_of_eq_of_lt ×2 (+4 more heads, ×5) (cited in this block, not counted here: one_pow [Lean recorded ×1])
    // UNCITED-APPLIED internal ×175 [exec 343 2378-2386]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×8, Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×8, Mathlib.Meta.NormNum.IsInt.of_raw ×8 (+33 more heads, ×143) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    // UNCITED-APPLIED internal ×183 [exec 344 2378-2386]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×8, Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.neg_one_mul ×8, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×8 (+33 more heads, ×151) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 343, 344)]
    OnePowReal(2);  // cite: one_pow [applied by the tactic, not named in it]
    // UNCITED-APPLIED mul_one ×4: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := a); (a := (6 : ℝ) * a + b); (a := (3 : ℝ)); (a := (7 : ℝ))
  }
  // have h₉ : a == 3  [type from Lean state]
  assert (a == 3.0) by { // @tac 2467-2548 // @tac 2467-2480 // @tac 2540-2548
    // [TACTIC: «_<;>_» at * <;> linarith linarith]
    // [TACTIC: «Norm_num[_]At___» at *]
    NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 376, 377)]
    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2540-2548 exec 375)
    cert_identity_15(a, b, c, f);  // cert: Linarith.lt_of_eq_of_lt
    cert_identity_16(a, b, c, f);  // cert: Linarith.lt_of_eq_of_lt
    // UNCITED-APPLIED internal ×11 [exec 375 2540-2548]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
    // UNCITED-APPLIED internal ×41 [exec 376 2540-2548]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×3, Mathlib.Tactic.Ring.neg_one_mul ×3, Mathlib.Meta.NormNum.isInt_mul ×3, Mathlib.Meta.NormNum.IsInt.to_isNat ×3 (+22 more heads, ×29) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    // UNCITED-APPLIED internal ×39 [exec 377 2540-2548]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.sub_congr ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Tactic.Ring.sub_pf ×2, Mathlib.Tactic.Ring.neg_add ×2 (+21 more heads, ×31) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
  }
  // have h₁₀ : b == - 11  [type from Lean state]
  assert (b == -(11.0)) by { // @tac 2649-2666 // @tac 2671-2691 // @tac 2696-2716 // @tac 2777-2869 // @tac 2925-2933
    // have h₉ :   [type from Lean state]
    assert (((6.0 * a) + b) == 7.0) by {
      // [TACTIC: exact h₇]
      assert (((6.0 * a) + b) == 7.0);
    }
    // have h₁₀ :   [type from Lean state]
    assert ((((9.0 * a) + (3.0 * b)) + c) == 4.0) by {
      // [TACTIC: exact h₈]
      assert ((((9.0 * a) + (3.0 * b)) + c) == 4.0);
    }
    // have h₁₁ :   [type from Lean state]
    assert (((6.0 * a) + b) == 7.0) by {
      // [TACTIC: exact h₉]
      assert (((6.0 * a) + b) == 7.0);
    }
    // [TACTIC: simpAll only [ mul_add , mul_one , mul_neg , mul_zero , add_zero , add_neg_cancel_left , add_zero ]]
    // UNCITED mul_add: no Lean instance recorded (arguments unknown), not guessed
    // UNCITED mul_one: named here, no record of its application here; the harvest has no application record for this execution at all (its proof term was not captured), so whether Lean applied it here is unknown: not stated
    // UNCITED mul_neg: named here, no record of its application here; the harvest has no application record for this execution at all (its proof term was not captured), so whether Lean applied it here is unknown: not stated
    // UNCITED mul_zero: no Lean instance recorded (arguments unknown), not guessed
    // UNCITED add_zero: named here, no record of its application here; the harvest has no application record for this execution at all (its proof term was not captured), so whether Lean applied it here is unknown: not stated
    // UNCITED add_neg_cancel_left: named here, no record of its application here; the harvest has no application record for this execution at all (its proof term was not captured), so whether Lean applied it here is unknown: not stated
    assert (forall x: real :: ((((3.0 * ((x + 3.0) * (x + 3.0))) + ((b * x) + (b * 3.0))) + c) == (((3.0 * (x * x)) + (7.0 * x)) + 4.0)));  // hypothesis h₀ after `simp_all` (Lean state) // @tac-hyp 2777-2869
    assert (forall x: real :: (f(x) == (((3.0 * (x * x)) + (b * x)) + c)));  // hypothesis h₁ after `simp_all` (Lean state) // @tac-hyp 2777-2869
    assert (forall x: real :: ((((((3.0 * (x * x)) + (3.0 * (6.0 * x))) + (3.0 * 9.0)) + ((b * x) + (b * 3.0))) + c) == (((3.0 * (x * x)) + (7.0 * x)) + 4.0)));  // hypothesis h₃ after `simp_all` (Lean state) // @tac-hyp 2777-2869
    assert (forall x: real :: (((((((3.0 * (x * x)) + ((6.0 * 3.0) * x)) + (9.0 * 3.0)) + (b * x)) + (3.0 * b)) + c) == (((3.0 * (x * x)) + (7.0 * x)) + 4.0)));  // hypothesis h₄ after `simp_all` (Lean state) // @tac-hyp 2777-2869
    assert (((6.0 * 3.0) + b) == 7.0);  // hypothesis h₇ after `simp_all` (Lean state) // @tac-hyp 2777-2869
    assert ((((9.0 * 3.0) + (3.0 * b)) + c) == 4.0);  // hypothesis h₈ after `simp_all` (Lean state) // @tac-hyp 2777-2869
    // [TACTIC: «Linarith[_]At___»]
    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2925-2933 exec 431)
    cert_identity_17(a, b, c, f);  // cert: Linarith.lt_of_eq_of_lt
    cert_identity_18(a, b, c, f);  // cert: Linarith.lt_of_eq_of_lt
    // UNCITED-APPLIED internal ×12 [exec 431 2925-2933]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×3, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
    // UNCITED-APPLIED internal ×77 [exec 432 2925-2933]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.of_raw ×6, Mathlib.Meta.NormNum.isNat_ofNat ×5, Mathlib.Tactic.Ring.neg_add ×5, Mathlib.Tactic.Ring.cast_pos ×4 (+30 more heads, ×57) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    // UNCITED-APPLIED internal ×71 [exec 433 2925-2933]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsNat.of_raw ×6, Mathlib.Meta.NormNum.isNat_ofNat ×5, Mathlib.Tactic.Ring.cast_pos ×4, Mathlib.Meta.NormNum.IsNat.to_isInt ×4 (+29 more heads, ×52) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 432, 433)]
  }
  // have h₁₁ : c == 10  [type from Lean state]
  assert (c == 10.0) by { // @tac 3026-3075 // @tac 3080-3093
    // have h₁₁ : c == 10  [type from Lean state]
    assert (c == 10.0) by { // @tac 3060-3075
      // [TACTIC: «Linarith[_]At___» [ h₈ ]]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3060-3075 exec 466)
      // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(9 : ℝ) * -(a - (3 : ℝ)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-((a - 3.0)) == 0.0); (9.0 > 0.0)
      // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(3 : ℝ) * ((6 : ℝ) * a + b - (7 : ℝ)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((6.0 * a) + b) - 7.0) == 0.0); (3.0 > 0.0)
      // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(9 : ℝ) * (a - (3 : ℝ)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((a - 3.0) == 0.0); (9.0 > 0.0)
      // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(3 : ℝ) * -((6 : ℝ) * a + b - (7 : ℝ)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-((((6.0 * a) + b) - 7.0)) == 0.0); (3.0 > 0.0)
      // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `(9 : ℝ) * -(a - (3 : ℝ)) + (3 : ℝ) * ((6 : ℝ) * a + b - (7 : ℝ)) + -((9 : ℝ) * a + (3 : ℝ) * b + c - (4 : ℝ)) = (0 : ℝ)` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
      // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `(9 : ℝ) * -(a - (3 : ℝ)) + (3 : ℝ) * ((6 : ℝ) * a + b - (7 : ℝ)) = (0 : ℝ)` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
      // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `(9 : ℝ) * (a - (3 : ℝ)) + (3 : ℝ) * -((6 : ℝ) * a + b - (7 : ℝ)) + ((9 : ℝ) * a + (3 : ℝ) * b + c - (4 : ℝ)) = (0 : ℝ)` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
      // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `(9 : ℝ) * (a - (3 : ℝ)) + (3 : ℝ) * -((6 : ℝ) * a + b - (7 : ℝ)) = (0 : ℝ)` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
      cert_identity_19(a, b, c, f);  // cert: Linarith.lt_of_eq_of_lt
      cert_identity_20(a, b, c, f);  // cert: Linarith.lt_of_eq_of_lt
      // UNCITED-APPLIED internal ×23 [exec 466 3060-3075]: applications made inside the tactic's own automation, not stated — neg_eq_zero ×3, sub_eq_zero_of_eq ×3, sub_neg_of_lt ×2; machinery/glue: Linarith.eq_of_eq_of_eq ×4, Linarith.mul_eq ×4, congrArg ×2, Linarith.lt_of_eq_of_lt ×2 (+3 more heads, ×3)
      // UNCITED-APPLIED internal ×184 [exec 467 3060-3075]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.neg_one_mul ×8, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×8, Mathlib.Meta.NormNum.isInt_mul ×8 (+34 more heads, ×152) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 468 3060-3075]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 469 3060-3075]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×173 [exec 470 3060-3075]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_raw_eq ×8, Mathlib.Meta.NormNum.isInt_mul ×8, Mathlib.Meta.NormNum.IsInt.of_raw ×8, Mathlib.Meta.NormNum.IsNat.to_isInt ×8 (+33 more heads, ×141) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 471 3060-3075]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 472 3060-3075]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 468, 469, 471, 472 / `ring1` exec 467, 470)]
    }
    // [TACTIC: exact h₁₁]
    assert (c == 10.0);
  }
  // have h₁₂ : a + b + c == 2  [type from Lean state]
  assert (((a + b) + c) == 2.0) by { // @tac 3241-3421 // @tac 3241-3347
    // [TACTIC: «_<;>_» only [ add_assoc , add_left_comm , add_right_comm , mul_add , mul_comm , mul_left_comm , mul_right_comm ] <;> linarith linarith]
    // [TACTIC: simpAll only [ add_assoc , add_left_comm , add_right_comm , mul_add , mul_comm , mul_left_comm , mul_right_comm ]]
    // UNCITED add_assoc: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances here: (a := (3 : ℝ), b := (-11 : ℝ), c := (10 : ℝ))
    // UNCITED mul_add: no Lean instance recorded (arguments unknown), not guessed
    // UNCITED mul_comm: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
    // UNCITED mul_left_comm: no Lean instance recorded (arguments unknown), not guessed
    // UNCITED add_left_comm: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
    // UNCITED add_right_comm: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
    // UNCITED mul_right_comm: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
    // UNCITED-APPLIED internal ×7 [exec 495 3241-3347]: applications made inside the tactic's own automation, not stated — add_assoc ×1; machinery/glue: congrArg ×3, congr ×2, Eq.trans ×1
    assert (forall x: real :: (((3.0 * ((x + 3.0) * (x + 3.0))) + (((x + 3.0) * -(11.0)) + 10.0)) == (((x * x) * 3.0) + ((x * 7.0) + 4.0))));  // hypothesis h₀ after `simp_all` (Lean state) // @tac-hyp 3241-3347
    assert (forall x: real :: (f(x) == (((x * x) * 3.0) + ((x * -(11.0)) + 10.0))));  // hypothesis h₁ after `simp_all` (Lean state) // @tac-hyp 3241-3347
    assert (forall x: real :: ((((x * x) * 3.0) + ((x * (3.0 * 6.0)) + ((3.0 * 9.0) + (((x + 3.0) * -(11.0)) + 10.0)))) == (((x * x) * 3.0) + ((x * 7.0) + 4.0))));  // hypothesis h₃ after `simp_all` (Lean state) // @tac-hyp 3241-3347
    assert (forall x: real :: ((((x * x) * 3.0) + ((x * (3.0 * 6.0)) + ((3.0 * 9.0) + ((x * -(11.0)) + ((3.0 * -(11.0)) + 10.0))))) == (((x * x) * 3.0) + ((x * 7.0) + 4.0))));  // hypothesis h₄ after `simp_all` (Lean state) // @tac-hyp 3241-3347
    assert (((3.0 * 6.0) + -(11.0)) == 7.0);  // hypothesis h₇ after `simp_all` (Lean state) // @tac-hyp 3241-3347
    assert (((3.0 * 9.0) + ((3.0 * -(11.0)) + 10.0)) == 4.0);  // hypothesis h₈ after `simp_all` (Lean state) // @tac-hyp 3241-3347
    assert ((3.0 + (-(11.0) + 10.0)) == 2.0) by {  // sub-goal of `linarith` (Lean state) // @tac 3413-3421
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 505, 506)]
      // UNCITED-APPLIED internal ×7 [exec 504 3413-3421]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2; machinery/glue: congrArg ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1, Linarith.lt_irrefl ×1
      // UNCITED-APPLIED internal ×47 [exec 505 3413-3421]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Mathlib.Tactic.Ring.cast_pos ×4, Mathlib.Meta.NormNum.IsNat.to_isInt ×4, Mathlib.Meta.NormNum.IsNat.of_raw ×4 (+18 more heads, ×30) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×47 [exec 506 3413-3421]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Mathlib.Tactic.Ring.cast_pos ×4, Mathlib.Meta.NormNum.IsNat.to_isInt ×4, Mathlib.Meta.NormNum.IsNat.of_raw ×4 (+18 more heads, ×30) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    }
  }
  // [TACTIC: simpa [ h₉ , h₁₀ , h₁₁ ] using h₁₂]
  // UNCITED-APPLIED internal ×5 [exec 507 3496-3540]: applications made inside the tactic's own automation, not stated — machinery/glue: congrArg ×3, congr ×2
}



// ===== closed lemma for line 181 (from closed/amc12a_2009_p9-181.dfy) =====

lemma {:induction false} vc_amc12a_2009_p9_L181(a: real, b: real, c: real, f: real -> real)
  requires forall x_1: real :: f(x_1 + 3.0) == 3.0 * (x_1 * x_1) + 7.0 * x_1 + 4.0
  requires forall x_3: real :: f(x_3) == a * (x_3 * x_3) + b * x_3 + c
  ensures   forall x_0_2: real :: a * ((x_0_2 + 3.0) * (x_0_2 + 3.0)) + b * (x_0_2 + 3.0) + c == 3.0 * (x_0_2 * x_0_2) + 7.0 * x_0_2 + 4.0
{
  // K1: the instance Lean's `simp only [h₁] at h₀` used: h₁ at x + 3 (rewriting f (x+3) inside h₀)
  forall x_0_2: real  // [ADDED]
    ensures a * ((x_0_2 + 3.0) * (x_0_2 + 3.0)) + b * (x_0_2 + 3.0) + c == 3.0 * (x_0_2 * x_0_2) + 7.0 * x_0_2 + 4.0  // [ADDED]
  {
    assert f(x_0_2 + 3.0) == a * ((x_0_2 + 3.0) * (x_0_2 + 3.0)) + b * (x_0_2 + 3.0) + c;  // [ADDED]
  }
}

