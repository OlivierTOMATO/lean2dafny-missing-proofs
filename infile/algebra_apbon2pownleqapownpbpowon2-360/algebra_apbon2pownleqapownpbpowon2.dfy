// ════════════════════════════════════════════════════════════
// MECHANICAL TRANSLATION (emitter v2) of ast_cache_v2/algebra_apbon2pownleqapownpbpowon2.json
// Each Lean `have` → `assert ... by {}` at the same depth;
// quantified haves → forall statements. Typed pipeline only.
// ════════════════════════════════════════════════════════════

include "../../library/library_new.dfy"

// ──────────────────────────────────────────────────
// certificate identity for `h₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_1(a: real, b: real, n: nat)
  ensures (-(a) + a) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_2(a: real, b: real, n: nat)
  ensures (-(b) + b) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₄/h₄₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_3(a: real, b: real, n: nat)
  ensures ((-(a) + -(b)) + (a + b)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₄/h₄₂`: div_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_4(a: real, b: real, n: nat)
  requires (0.0 < (a + b))
  requires (0.0 < 2.0)
  ensures (0.0 < ((a + b) / 2.0))
{
  DivPos((a + b), 2.0);
}

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₅₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_5(a: real, b: real, n: nat)
  ensures (-(a) + a) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₅₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_6(a: real, b: real, n: nat)
  ensures (-(b) + b) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₅₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_7(a: real, b: real, n: nat)
  ensures ((b - a) + (a - b)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₅₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_8(a: real, b: real, n: nat)
  ensures (-(b) + b) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₅₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_9(a: real, b: real, n: nat, k: nat)
  ensures ((Real.pow(b, k) - Real.pow(a, k)) + (Real.pow(a, k) - Real.pow(b, k))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₅₇`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_10(a: real, b: real, n: nat, k: nat)
  requires ((b - a) <= 0.0)
  requires ((Real.pow(b, k) - Real.pow(a, k)) <= 0.0)
  ensures (0.0 <= ((b - a) * (Real.pow(b, k) - Real.pow(a, k))))
{
  MulNonneg(-((b - a)), -((Real.pow(b, k) - Real.pow(a, k)))); MulNeg(-((b - a)), (Real.pow(b, k) - Real.pow(a, k))); assert (-((b - a))) * (-((Real.pow(b, k) - Real.pow(a, k)))) == -((-((b - a))) * ((Real.pow(b, k) - Real.pow(a, k)))); assert (-((b - a))) * ((Real.pow(b, k) - Real.pow(a, k))) == -(((b - a)) * ((Real.pow(b, k) - Real.pow(a, k))));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₅₇`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_11(a: real, b: real, n: nat, k: nat)
  ensures (((a - b) * (Real.pow(a, k) - Real.pow(b, k))) + -(((b - a) * (Real.pow(b, k) - Real.pow(a, k))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₅₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_12(a: real, b: real, n: nat)
  ensures ((a - b) + -((a - b))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₅₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_13(a: real, b: real, n: nat)
  ensures (-(a) + a) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₅₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_14(a: real, b: real, n: nat)
  ensures ((a - b) + (b - a)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₅₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_15(a: real, b: real, n: nat, k: nat)
  ensures ((Real.pow(a, k) - Real.pow(b, k)) + -((Real.pow(a, k) - Real.pow(b, k)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₅/h₅₇`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_16(a: real, b: real, n: nat, k: nat)
  requires ((a - b) <= 0.0)
  requires ((Real.pow(a, k) - Real.pow(b, k)) <= 0.0)
  ensures (0.0 <= ((a - b) * (Real.pow(a, k) - Real.pow(b, k))))
{
  MulNonneg(-((a - b)), -((Real.pow(a, k) - Real.pow(b, k)))); MulNeg(-((a - b)), (Real.pow(a, k) - Real.pow(b, k))); assert (-((a - b))) * (-((Real.pow(a, k) - Real.pow(b, k)))) == -((-((a - b))) * ((Real.pow(a, k) - Real.pow(b, k)))); assert (-((a - b))) * ((Real.pow(a, k) - Real.pow(b, k))) == -(((a - b)) * ((Real.pow(a, k) - Real.pow(b, k))));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₅/h₅₇`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_17(a: real, b: real, n: nat, k: nat)
  ensures (((a - b) * (Real.pow(a, k) - Real.pow(b, k))) + -(((a - b) * (Real.pow(a, k) - Real.pow(b, k))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₆/h₆₁/h₆₃`: div_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_18(a: real, b: real, n: nat)
  requires (0.0 < (a + b))
  requires (0.0 < 2.0)
  ensures (0.0 < ((a + b) / 2.0))
{
  DivPos((a + b), 2.0);
}

// `gcongr` monotonicity step (proven here; Mathlib: mul_le_mul_of_nonneg_right)
lemma gcongr_mul_le_mul_right(x: real, y: real, c: real)
  requires 0.0 <= c
  requires x <= y
  ensures x * c <= y * c
{
}

// ──────────────────────────────────────────────────
// certificate piece for `h₆/h₆₁/h₆₅`: div_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_19(a: real, b: real, n: nat)
  requires (0.0 < (a + b))
  requires (0.0 < 2.0)
  ensures (0.0 < ((a + b) / 2.0))
{
  DivPos((a + b), 2.0);
}

// ──────────────────────────────────────────────────
// certificate identity for `h₆/h₆₁/h₆₇/h₇₀`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_20(a: real, b: real, n: nat)
  ensures (-(((a - b) * (Real.pow(a, n) - Real.pow(b, n)))) + (((Real.pow(a, n) * a) + (Real.pow(b, n) * b)) - ((Real.pow(a, n) * b) + (Real.pow(b, n) * a)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₆/h₆₁/h₆₇`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_21(a: real, b: real, n: nat)
  ensures (-(((a - b) * (Real.pow(a, n) - Real.pow(b, n)))) + ((((1.0 * Real.pow(a, n)) * (2.0 * a)) + ((1.0 * Real.pow(b, n)) * (2.0 * b))) - (((((1.0 * Real.pow(a, n)) * (1.0 * a)) + ((1.0 * Real.pow(a, n)) * (1.0 * b))) + ((1.0 * Real.pow(b, n)) * (1.0 * a))) + ((1.0 * Real.pow(b, n)) * (1.0 * b))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₆/h₆₁/h₆₈/h₆₉`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_22(a: real, b: real, n: nat)
  ensures (((2.0 * ((2.0 * Real.pow(((a + b) / 2.0), (n + 1))) - ((1.0 * Real.pow(((a + b) / 2.0), n)) * ((1.0 * a) + (1.0 * b))))) + (((1.0 * Real.pow(((a + b) / 2.0), n)) * ((2.0 * a) + (2.0 * b))) - (((((1.0 * Real.pow(a, n)) * (1.0 * a)) + ((1.0 * Real.pow(a, n)) * (1.0 * b))) + ((1.0 * Real.pow(b, n)) * (1.0 * a))) + ((1.0 * Real.pow(b, n)) * (1.0 * b))))) + ((((((1.0 * Real.pow(a, n)) * (1.0 * a)) + ((1.0 * Real.pow(a, n)) * (1.0 * b))) + ((1.0 * Real.pow(b, n)) * (1.0 * a))) + ((1.0 * Real.pow(b, n)) * (1.0 * b))) - (4.0 * Real.pow(((a + b) / 2.0), (n + 1))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₆/h₆₁/h₆₈/h₇₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_23(a: real, b: real, n: nat)
  ensures ((((2.0 * ((2.0 * Real.pow(((a + b) / 2.0), (n + 1))) - ((1.0 * Real.pow(((a + b) / 2.0), n)) * ((1.0 * a) + (1.0 * b))))) + (((1.0 * Real.pow(((a + b) / 2.0), n)) * ((2.0 * a) + (2.0 * b))) - (((((1.0 * Real.pow(a, n)) * (1.0 * a)) + ((1.0 * Real.pow(a, n)) * (1.0 * b))) + ((1.0 * Real.pow(b, n)) * (1.0 * a))) + ((1.0 * Real.pow(b, n)) * (1.0 * b))))) + ((((((1.0 * Real.pow(a, n)) * (1.0 * a)) + ((1.0 * Real.pow(a, n)) * (1.0 * b))) + ((1.0 * Real.pow(b, n)) * (1.0 * a))) + ((1.0 * Real.pow(b, n)) * (1.0 * b))) - ((2.0 * Real.pow(a, (n + 1))) + (2.0 * Real.pow(b, (n + 1)))))) + (2.0 * (((1.0 * Real.pow(a, (n + 1))) + (1.0 * Real.pow(b, (n + 1)))) - (2.0 * Real.pow(((a + b) / 2.0), (n + 1)))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// R14 — recursive lemma for `induction' n` (from-1 / Nat.le): proves P(n+1) for n >= 0
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} induction_helper_1(a: real, b: real, n: nat)
  requires ((0.0 < a) && (0.0 < b))
  requires (0.0 < a)  // ambient have h₂
  requires (0.0 < b)  // ambient have h₃
  requires (0.0 < ((a + b) / 2.0))  // ambient have h₄
  requires (forall k: nat :: (((a - b) * (Real.pow(a, k) - Real.pow(b, k))) >= 0.0))  // ambient have h₅
  ensures (Real.pow(((a + b) / 2.0), (n + 1)) <= ((Real.pow(a, (n + 1)) + Real.pow(b, (n + 1))) / 2.0))
  decreases n
{
  if n == 0 {
    // base: P(1) — Lean base case
    assert (Real.pow(((a + b) / 2.0), (0 + 1)) <= ((Real.pow(a, (0 + 1)) + Real.pow(b, (0 + 1))) / 2.0)) by {  // sub-goal before `norm_num` (Lean state) // @tac 1871-1959 // @tac 1871-1923 // @tac 1871-1889 // @tac 1840-1959
      // [TACTIC: «_<;>_» [ pow_one ] norm_num [ pow_one ] <;> ( try ring_nf ring_nf ) <;> ( try nlinarith nlinarith )]
      // [TACTIC: «Norm_num[_]At___» [ pow_one ]]
      PowOne(((a + b) / 2.0));  // cite: pow_one
      PowOne(a);  // cite: pow_one
      PowOne(b);  // cite: pow_one
      // `norm_num` closed the goal; the rest of the chain did not run
      // [TACTIC: Ring_nfAt]
      // [TACTIC: «Nlinarith[_]At___»]
      // NOT RUN in Lean (no execution recorded): no lemma instances
      // UNCITED-APPLIED internal ×17 [exec 405 1871-1889]: applications made inside the tactic's own automation, not stated — machinery/glue: congrArg ×6, Eq.trans ×4, congr ×2, of_eq_true ×1 (+4 more heads, ×4) (cited in this block, not counted here: pow_one [Lean recorded ×3])
    }
  } else {
    induction_helper_1(a, b, n - 1);   // IH: P(n)
    if (((0 + 1) <= n)) {  // sub-goal before `have` (Lean state)
      // have h₆₂ : ( a - b ) * ( a ^ n - b ^ n ) >= 0  [type from Lean state]
      assert (((a - b) * (Real.pow(a, n) - Real.pow(b, n))) >= 0.0) by {
        // [TACTIC: exact h₅ ( n )]
        assert (((a - b) * (Real.pow(a, n) - Real.pow(b, n))) >= 0.0);  // instance of h₅ (Lean state)
      }
      // have h₆₃ : ( a + b ) / 2 > 0  [type from Lean state]
      assert (((a + b) / 2.0) > 0.0) by { // @tac 2148-2158
        // [TACTIC: Positivity]
        // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 2148-2158 exec 450)
        if (0.0 < (a + b)) && (0.0 < 2.0) { cert_piece_18(a, b, n); }  // cert: div_pos
        // UNCITED-APPLIED internal ×3 [exec 450 2148-2158]: applications made inside the tactic's own automation, not stated — add_pos ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: div_pos [Lean recorded ×1])
        assert (0.0 < ((a + b))) && (0.0 < (2.0));  // precondition of DivPos (Lean: div_pos)
        DivPos((a + b), 2.0);  // cite: div_pos [applied by the tactic, not named in it]
      }
      // have h₆₄ : ( ( a + b ) / 2 ) ^ ( n + 1 ) == ( ( a + b ) / 2 ) ^ n * ( ( a + b ) /  [type from Lean state]
      assert (Real.pow(((a + b) / 2.0), (n + 1)) == (Real.pow(((a + b) / 2.0), n) * ((a + b) / 2.0))) by { // @tac 2258-2312 // @tac 2258-2290 // @tac 2258-2265
        // [TACTIC: «_<;>_» ring_nf <;> field_simp field_simp <;> ring_nf ring_nf]
        // [TACTIC: Ring_nfAt]
        PowOne(a);  // cite: pow_one [applied by the tactic, not named in it]
        PowOne(b);  // cite: pow_one [applied by the tactic, not named in it]
        NatPowOne(n);  // cite: pow_one [applied by the tactic, not named in it]
        // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := n)
        // `ring_nf` closed the goal; the rest of the chain did not run
        // UNCITED-APPLIED internal ×97 [exec 477 2258-2265]: applications made inside the tactic's own automation, not stated — add_zero ×2, mul_one ×1; machinery/glue: congr ×8, congrArg ×8, Eq.trans ×7, Mathlib.Tactic.Ring.mul_add ×6 (+32 more heads, ×65) (cited in this block, not counted here: pow_one [Lean recorded ×3])
      }
      // [TACTIC: rwSeq [ h₆₄ ]]
      // UNCITED-APPLIED congrArg(((a + b) / (2 : ℝ)) ^ (n + (1 : ℕ)), ((a + b) / (2 : ℝ)) ^ n * ((a + b) / (2 : ℝ)), fun (_a : ℝ) => _a ≤ (a ^ succ n + b ^ succ n) / (2 : ℝ)): no library counterpart (not stated) [exec 494 2321-2333]
      assert ((Real.pow(((a + b) / 2.0), n) * ((a + b) / 2.0)) <= ((Real.pow(a, (n + 1)) + Real.pow(b, (n + 1))) / 2.0)) by {  // sub-goal before `have` (Lean state) // @tac 2342-2478 // @tac 2487-2664 // @tac 2673-2696 // @tac 2705-3134 // @tac 3143-3636 // @tac 3645-3675
        // have h₆₅ : ( ( a + b ) / 2 ) ^ n * ( ( a + b ) / 2 ) <= ( ( a ^ n + b ^ n ) / 2 )  [type from Lean state]
        assert ((Real.pow(((a + b) / 2.0), n) * ((a + b) / 2.0)) <= (((Real.pow(a, n) + Real.pow(b, n)) / 2.0) * ((a + b) / 2.0))) by { // @tac 2449-2478 // @tac 2449-2455
          // [TACTIC: «_<;>_» <;> linarith linarith]
          // [TACTIC: Gcongr]
          // gcongr: side goal 0 ≤ c (Lean: positivity), main goal X ≤ Y (Lean: closed by assumption inside gcongr), then mul_le_mul_of_nonneg_right
          assert (0.0 <= ((a + b) / 2.0));  // side goal of `gcongr` (Lean state)
          assert Real.pow(((a + b) / 2.0), n) <= ((Real.pow(a, n) + Real.pow(b, n)) / 2.0);  // sub-goal of `gcongr` (its main goal X <= Y, split from the Lean state X*c <= Y*c; Lean closed it by assumption)
          gcongr_mul_le_mul_right(Real.pow(((a + b) / 2.0), n), ((Real.pow(a, n) + Real.pow(b, n)) / 2.0), ((a + b) / 2.0));  // gcongr: mul_le_mul_of_nonneg_right
          assert ((0.0) < (((a + b) / 2.0)));  // precondition of LeOfLt (Lean: le_of_lt)
          LeOfLt(0.0, ((a + b) / 2.0));  // cite: le_of_lt [applied by the tactic, not named in it: inside its internal steps (`positivity` exec 544)]
          if (0.0 < ((a + b))) && (0.0 < (2.0)) { DivPos((a + b), 2.0); }  // cite: div_pos [applied by the tactic, not named in it: inside its internal steps (`positivity` exec 544)]
          // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 2449-2455 exec 544)
          if (0.0 < (a + b)) && (0.0 < 2.0) { cert_piece_19(a, b, n); }  // cert: div_pos
          // UNCITED-APPLIED internal ×1 [exec 542 2449-2455]: applications made inside the tactic's own automation, not stated — mul_le_mul_of_nonneg_right ×1
          // UNCITED-APPLIED internal ×3 [exec 544 2449-2455]: applications made inside the tactic's own automation, not stated — add_pos ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: div_pos [Lean recorded ×1], le_of_lt [Lean recorded ×1])
          // `gcongr` closed the goal; the rest of the chain did not run
        }
        // have h₆₆ : ( ( a ^ n + b ^ n ) / 2 ) * ( ( a + b ) / 2 ) == ( a ^ n * a + a ^ n *  [type from Lean state]
        assert ((((Real.pow(a, n) + Real.pow(b, n)) / 2.0) * ((a + b) / 2.0)) == (((((Real.pow(a, n) * a) + (Real.pow(a, n) * b)) + (Real.pow(b, n) * a)) + (Real.pow(b, n) * b)) / 4.0)) by { // @tac 2610-2664 // @tac 2610-2642 // @tac 2610-2617
          // [TACTIC: «_<;>_» ring_nf <;> field_simp field_simp <;> ring_nf ring_nf]
          // [TACTIC: Ring_nfAt]
          PowOne(a);  // cite: pow_one [applied by the tactic, not named in it]
          NatPowOne(n);  // cite: pow_one [applied by the tactic, not named in it]
          PowOne(b);  // cite: pow_one [applied by the tactic, not named in it]
          // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := n)
          // `ring_nf` closed the goal; the rest of the chain did not run
          // UNCITED-APPLIED internal ×153 [exec 577 2610-2617]: applications made inside the tactic's own automation, not stated — mul_one ×1, add_zero ×1; machinery/glue: congr ×8, congrArg ×8, Mathlib.Tactic.Ring.mul_pf_right ×8, Mathlib.Tactic.Ring.mul_add ×8 (+37 more heads, ×119) (cited in this block, not counted here: pow_one [Lean recorded ×3])
        }
        // [TACTIC: rwSeq [ h₆₆ ] at h₆₅]
        assert ((Real.pow(((a + b) / 2.0), n) * ((a + b) / 2.0)) <= (((((Real.pow(a, n) * a) + (Real.pow(a, n) * b)) + (Real.pow(b, n) * a)) + (Real.pow(b, n) * b)) / 4.0));  // hypothesis h₆₅ after `rw` (Lean state) // @tac-hyp 2673-2696
        // have h₆₇ : ( a ^ ( n + 1 ) + b ^ ( n + 1 ) ) / 2 >= ( a ^ n * a + a ^ n * b + b ^  [type from Lean state]
        assert (((Real.pow(a, (n + 1)) + Real.pow(b, (n + 1))) / 2.0) >= (((((Real.pow(a, n) * a) + (Real.pow(a, n) * b)) + (Real.pow(b, n) * a)) + (Real.pow(b, n) * b)) / 4.0)) by { // @tac 2824-2888 // @tac 2899-2963 // @tac 2974-2995
          // have h₆₈ : a ^ ( n + 1 ) == a ^ n * a  [type from Lean state]
          assert (Real.pow(a, (n + 1)) == (Real.pow(a, n) * a)) by { // @tac 2881-2888
            // [TACTIC: Ring_nfAt]
            PowOne(a);  // cite: pow_one [applied by the tactic, not named in it]
            NatPowOne(n);  // cite: pow_one [applied by the tactic, not named in it]
            // UNCITED-APPLIED mul_one ×2: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := n); (a := a ^ n)
            // UNCITED-APPLIED internal ×62 [exec 653 2881-2888]: applications made inside the tactic's own automation, not stated — mul_one ×2, add_zero ×1; machinery/glue: Eq.trans ×8, congrArg ×7, congr ×4, Mathlib.Tactic.Ring.add_pf_add_zero ×3 (+23 more heads, ×37) (cited in this block, not counted here: pow_one [Lean recorded ×2])
          }
          // have h₆₉ : b ^ ( n + 1 ) == b ^ n * b  [type from Lean state]
          assert (Real.pow(b, (n + 1)) == (Real.pow(b, n) * b)) by { // @tac 2956-2963
            // [TACTIC: Ring_nfAt]
            PowOne(b);  // cite: pow_one [applied by the tactic, not named in it]
            NatPowOne(n);  // cite: pow_one [applied by the tactic, not named in it]
            // UNCITED-APPLIED mul_one ×2: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := n); (a := b ^ n)
            // UNCITED-APPLIED internal ×62 [exec 670 2956-2963]: applications made inside the tactic's own automation, not stated — mul_one ×2, add_zero ×1; machinery/glue: Eq.trans ×8, congrArg ×7, congr ×4, Mathlib.Tactic.Ring.add_pf_add_zero ×3 (+23 more heads, ×37) (cited in this block, not counted here: pow_one [Lean recorded ×2])
          }
          // [TACTIC: rwSeq [ h₆₈ , h₆₉ ]]
          // UNCITED-APPLIED congrArg(a ^ (n + (1 : ℕ)), a ^ n * a, fun (_a : ℝ) => (_a + b ^ (n + (1 : ℕ))) / (2 : ℝ) ≥ (a ^ n * a + a ^…): no library counterpart (not stated) [exec 675 2974-2995]
          // UNCITED-APPLIED congrArg(b ^ (n + (1 : ℕ)), b ^ n * b, fun (_a : ℝ) => (a ^ n * a + _a) / (2 : ℝ) ≥ (a ^ n * a + a ^ n * b +…): no library counterpart (not stated) [exec 675 2974-2995]
          assert ((((Real.pow(a, n) * a) + (Real.pow(b, n) * b)) / 2.0) >= (((((Real.pow(a, n) * a) + (Real.pow(a, n) * b)) + (Real.pow(b, n) * a)) + (Real.pow(b, n) * b)) / 4.0)) by {  // sub-goal before `have` (Lean state) // @tac 3006-3105 // @tac 3116-3134
            // have h₇₀ : a ^ n * a + b ^ n * b >= a ^ n * b + b ^ n * a  [type from Lean state]
            assert (((Real.pow(a, n) * a) + (Real.pow(b, n) * b)) >= ((Real.pow(a, n) * b) + (Real.pow(b, n) * a))) by { // @tac 3087-3105
              // [TACTIC: «Nlinarith[_]At___» [ h₅ n ]]
              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3087-3105 exec 719)
              cert_identity_20(a, b, n);  // cert: add_lt_of_le_of_neg
              // UNCITED-APPLIED internal ×6 [exec 719 3087-3105]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, add_lt_of_le_of_neg ×1, neg_nonpos_of_nonneg ×1, sub_neg_of_lt ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
              // GAP: 1 of the 1 applications of h₅ written here (`h₅ n`) have no stated instance (no renderable Lean `inst` record for it): not stated
              NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 755)]
              // UNCITED-APPLIED internal ×136 [exec 755 3087-3105]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.neg_mul ×8, Mathlib.Tactic.Ring.add_pf_add_lt ×8, Mathlib.Tactic.Ring.mul_pf_right ×8 (+36 more heads, ×104) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            }
            // [TACTIC: «Nlinarith[_]At___» [ h₅ n ]]
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3116-3134 exec 756)
            // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(4 : ℝ) * ((a ^ n * a + b ^ n * b) / (2 : ℝ) - (a ^ n * a + a ^ n * b + b ^ n * a + b ^ n * b) / (4 : ℝ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((((Real.pow(a, n) * a) + (Real.pow(b, n) * b)) / 2.0) - (((((Real.pow(a, n) * a) + (Real.pow(a, n) * b)) + (Real.pow(b, n) * a)) + (Real.pow(b, n) * b)) / 4.0)) < 0.0); (4.0 > 0.0)
            cert_identity_21(a, b, n);  // cert: add_lt_of_le_of_neg
            // UNCITED-APPLIED internal ×18 [exec 756 3116-3134]: applications made inside the tactic's own automation, not stated — CancelDenoms.mul_subst ×6, CancelDenoms.add_subst ×4, CancelDenoms.div_subst ×2, le_of_not_gt ×1, neg_nonpos_of_nonneg ×1, CancelDenoms.sub_subst ×1, sub_neg_of_lt ×1; machinery/glue: Linarith.lt_irrefl ×1, Linarith.mul_neg ×1
            // UNCITED-APPLIED internal ×6 [exec 758 3116-3134]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×14 [exec 759 3116-3134]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×6 [exec 760 3116-3134]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1)
            // UNCITED-APPLIED internal ×5 [exec 761 3116-3134]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 762 3116-3134]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 763 3116-3134]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 764 3116-3134]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×14 [exec 765 3116-3134]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×6 [exec 766 3116-3134]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // GAP: 1 of the 1 applications of h₅ written here (`h₅ n`) have no stated instance (no renderable Lean `inst` record for it): not stated
            NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 757, 758, 759, 761, 762, 763 … / `ring1` exec 803)]
            NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 767 / `ring1` exec 803)]
            // UNCITED-APPLIED internal ×165 [exec 803 3116-3134]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.neg_mul ×8, Mathlib.Tactic.Ring.add_pf_add_lt ×8, Mathlib.Tactic.Ring.mul_pf_right ×8 (+38 more heads, ×133) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×6 [exec 757 3116-3134]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 767 3116-3134]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          }
        }
        // have h₆₈ : ( ( a + b ) / 2 ) ^ ( n + 1 ) <= ( a ^ ( n + 1 ) + b ^ ( n + 1 ) ) / 2  [type from Lean state]
        assert (Real.pow(((a + b) / 2.0), (n + 1)) <= ((Real.pow(a, (n + 1)) + Real.pow(b, (n + 1))) / 2.0)) by { // @tac 3234-3355 // @tac 3366-3500 // @tac 3511-3612 // @tac 3623-3636
          // have h₆₉ : ( ( a + b ) / 2 ) ^ ( n + 1 ) <= ( a ^ n * a + a ^ n * b + b ^ n * a +  [type from Lean state]
          assert 0 <= n;  /* [IN-FILE CHECK] requires 1 of vc_algebra_apbon2pownleqapownpbpowon2_L360 */
          assert 0.0 < a;  /* [IN-FILE CHECK] requires 2 of vc_algebra_apbon2pownleqapownpbpowon2_L360 */
          assert 0.0 < b;  /* [IN-FILE CHECK] requires 3 of vc_algebra_apbon2pownleqapownpbpowon2_L360 */
          assert 0.0 < (a + b) / 2.0;  /* [IN-FILE CHECK] requires 4 of vc_algebra_apbon2pownleqapownpbpowon2_L360 */
          assert forall k_1: nat :: (a - b) * (Real.pow(a, k_1) - Real.pow(b, k_1)) >= 0.0;  /* [IN-FILE CHECK] requires 5 of vc_algebra_apbon2pownleqapownpbpowon2_L360 */
          assert n != 0;  /* [IN-FILE CHECK] requires 6 of vc_algebra_apbon2pownleqapownpbpowon2_L360 */
          assert 0 <= n - 1;  /* [IN-FILE CHECK] requires 7 of vc_algebra_apbon2pownleqapownpbpowon2_L360 */
          assert 0 <= n || n - 1 == n;  /* [IN-FILE CHECK] requires 8 of vc_algebra_apbon2pownleqapownpbpowon2_L360 */
          assert n - 1 < n;  /* [IN-FILE CHECK] requires 9 of vc_algebra_apbon2pownleqapownpbpowon2_L360 */
          assert forall k_1: nat :: (a - b) * (Real.pow(a, k_1) - Real.pow(b, k_1)) >= 0.0;  /* [IN-FILE CHECK] requires 10 of vc_algebra_apbon2pownleqapownpbpowon2_L360 */
          assert Real.pow((a + b) / 2.0, n - 1 + 1) <= (Real.pow(a, n - 1 + 1) + Real.pow(b, n - 1 + 1)) / 2.0;  /* [IN-FILE CHECK] requires 11 of vc_algebra_apbon2pownleqapownpbpowon2_L360 */
          assert 0 + 1 <= n;  /* [IN-FILE CHECK] requires 12 of vc_algebra_apbon2pownleqapownpbpowon2_L360 */
          assert (a - b) * (Real.pow(a, n) - Real.pow(b, n)) >= 0.0;  /* [IN-FILE CHECK] requires 13 of vc_algebra_apbon2pownleqapownpbpowon2_L360 */
          assert 2.0 != 0.0;  /* [IN-FILE CHECK] requires 14 of vc_algebra_apbon2pownleqapownpbpowon2_L360 */
          assert (a + b) / 2.0 > 0.0;  /* [IN-FILE CHECK] requires 15 of vc_algebra_apbon2pownleqapownpbpowon2_L360 */
          assert 0 <= n + 1;  /* [IN-FILE CHECK] requires 16 of vc_algebra_apbon2pownleqapownpbpowon2_L360 */
          assert Real.pow((a + b) / 2.0, n + 1) == Real.pow((a + b) / 2.0, n) * ((a + b) / 2.0);  /* [IN-FILE CHECK] requires 17 of vc_algebra_apbon2pownleqapownpbpowon2_L360 */
          assert Real.pow((a + b) / 2.0, n) * ((a + b) / 2.0) <= (Real.pow(a, n) + Real.pow(b, n)) / 2.0 * ((a + b) / 2.0);  /* [IN-FILE CHECK] requires 18 of vc_algebra_apbon2pownleqapownpbpowon2_L360 */
          assert 4.0 != 0.0;  /* [IN-FILE CHECK] requires 19 of vc_algebra_apbon2pownleqapownpbpowon2_L360 */
          assert (Real.pow(a, n) + Real.pow(b, n)) / 2.0 * ((a + b) / 2.0) == (Real.pow(a, n) * a + Real.pow(a, n) * b + Real.pow(b, n) * a + Real.pow(b, n) * b) / 4.0;  /* [IN-FILE CHECK] requires 20 of vc_algebra_apbon2pownleqapownpbpowon2_L360 */
          assert Real.pow((a + b) / 2.0, n) * ((a + b) / 2.0) <= (Real.pow(a, n) * a + Real.pow(a, n) * b + Real.pow(b, n) * a + Real.pow(b, n) * b) / 4.0;  /* [IN-FILE CHECK] requires 21 of vc_algebra_apbon2pownleqapownpbpowon2_L360 */
          assert (Real.pow(a, n + 1) + Real.pow(b, n + 1)) / 2.0 >= (Real.pow(a, n) * a + Real.pow(a, n) * b + Real.pow(b, n) * a + Real.pow(b, n) * b) / 4.0;  /* [IN-FILE CHECK] requires 22 of vc_algebra_apbon2pownleqapownpbpowon2_L360 */
          assert 2.0 * (2.0 * Real.pow((a + b) / 2.0, n + 1) - 1.0 * Real.pow((a + b) / 2.0, n) * (1.0 * a + 1.0 * b)) + (1.0 * Real.pow((a + b) / 2.0, n) * (2.0 * a + 2.0 * b) - (1.0 * Real.pow(a, n) * (1.0 * a) + 1.0 * Real.pow(a, n) * (1.0 * b) + 1.0 * Real.pow(b, n) * (1.0 * a) + 1.0 * Real.pow(b, n) * (1.0 * b))) + (1.0 * Real.pow(a, n) * (1.0 * a) + 1.0 * Real.pow(a, n) * (1.0 * b) + 1.0 * Real.pow(b, n) * (1.0 * a) + 1.0 * Real.pow(b, n) * (1.0 * b) - 4.0 * Real.pow((a + b) / 2.0, n + 1)) == 0.0;  /* [IN-FILE CHECK] requires 23 of vc_algebra_apbon2pownleqapownpbpowon2_L360 */
          assert (1 as real) == 1.0;  /* [IN-FILE CHECK] requires 24 of vc_algebra_apbon2pownleqapownpbpowon2_L360 */
          assert (0 as real) == 0.0;  /* [IN-FILE CHECK] requires 25 of vc_algebra_apbon2pownleqapownpbpowon2_L360 */
          vc_algebra_apbon2pownleqapownpbpowon2_L360(a, b, n);  /* [IN-FILE CHECK] the closed lemma for line 360 */
          assert (Real.pow(((a + b) / 2.0), (n + 1)) <= (((((Real.pow(a, n) * a) + (Real.pow(a, n) * b)) + (Real.pow(b, n) * a)) + (Real.pow(b, n) * b)) / 4.0)) by { // @tac 3347-3355
            // [TACTIC: «Linarith[_]At___»]
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3347-3355 exec 836)
            // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℝ) * ((2 : ℝ) * ((a + b) / (2 : ℝ)) ^ (n + (1 : ℕ)) - (1 : ℝ) * ((a + b) / (2 : ℝ)) ^ n * ((1 : ℝ) * a + (1 : ℝ) *…` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((2.0 * Real.pow(((a + b) / 2.0), (n + 1))) - ((1.0 * Real.pow(((a + b) / 2.0), n)) * ((1.0 * a) + (1.0 * b)))) == 0.0); (2.0 > 0.0)
            // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℝ) * (((a + b) / (2 : ℝ)) ^ (n + (1 : ℕ)) - ((a + b) / (2 : ℝ)) ^ n * ((a + b) / (2 : ℝ))) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((Real.pow(((a + b) / 2.0), (n + 1)) - (Real.pow(((a + b) / 2.0), n) * ((a + b) / 2.0))) == 0.0); (2.0 > 0.0)
            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(4 : ℝ) * (((a + b) / (2 : ℝ)) ^ n * ((a + b) / (2 : ℝ)) - (a ^ n * a + a ^ n * b + b ^ n * a + b ^ n * b) / (4 : ℝ)) ≤…` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((Real.pow(((a + b) / 2.0), n) * ((a + b) / 2.0)) - (((((Real.pow(a, n) * a) + (Real.pow(a, n) * b)) + (Real.pow(b, n) * a)) + (Real.pow(b, n) * b)) / 4.0)) <= 0.0); (4.0 > 0.0)
            // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(4 : ℝ) * ((a ^ n * a + a ^ n * b + b ^ n * a + b ^ n * b) / (4 : ℝ) - ((a + b) / (2 : ℝ)) ^ (n + (1 : ℕ))) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((((((Real.pow(a, n) * a) + (Real.pow(a, n) * b)) + (Real.pow(b, n) * a)) + (Real.pow(b, n) * b)) / 4.0) - Real.pow(((a + b) / 2.0), (n + 1))) < 0.0); (4.0 > 0.0)
            // UNCITED-APPLIED Linarith.le_of_eq_of_le: certificate sum `(2 : ℝ) * ((2 : ℝ) * ((a + b) / (2 : ℝ)) ^ (n + (1 : ℕ)) - (1 : ℝ) * ((a + b) / (2 : ℝ)) ^ n * ((1 : ℝ) * a + (1 : ℝ) *…` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
            cert_identity_22(a, b, n);  // cert: add_lt_of_le_of_neg
            // UNCITED-APPLIED internal ×31 [exec 836 3347-3355]: applications made inside the tactic's own automation, not stated — CancelDenoms.mul_subst ×6, CancelDenoms.add_subst ×5, CancelDenoms.sub_subst ×3, CancelDenoms.div_subst ×3, le_of_not_gt ×1, sub_eq_zero_of_eq ×1, sub_nonpos_of_le ×1, sub_neg_of_lt ×1; machinery/glue: congrArg ×4, Linarith.mul_eq ×2, Linarith.lt_irrefl ×1, Linarith.le_of_eq_of_le ×1 (+2 more heads, ×2)
            // UNCITED-APPLIED internal ×180 [exec 888 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_pf_left ×8, Mathlib.Tactic.Ring.mul_zero ×8, Mathlib.Tactic.Ring.mul_pf_right ×8, Mathlib.Tactic.Ring.neg_add ×8 (+46 more heads, ×148) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×14 [exec 850 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×6 [exec 854 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×6 [exec 856 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 878 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 881 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×14 [exec 853 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×6 [exec 851 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1)
            // UNCITED-APPLIED internal ×6 [exec 842 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 837 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 838 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 839 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 840 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×14 [exec 841 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×6 [exec 849 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 844 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 845 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 846 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 847 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×14 [exec 848 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×6 [exec 863 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 852 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 837, 838, 839, 840, 841, 842 … / `ring1` exec 888)]
            NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 843, 852, 878, 881 / `ring1` exec 888)]
            // UNCITED-APPLIED internal ×5 [exec 843 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          }
          // have h₇₀ : ( a ^ ( n + 1 ) + b ^ ( n + 1 ) ) / 2 >= ( a ^ n * a + a ^ n * b + b ^  [type from Lean state]
          assert (((Real.pow(a, (n + 1)) + Real.pow(b, (n + 1))) / 2.0) >= (((((Real.pow(a, n) * a) + (Real.pow(a, n) * b)) + (Real.pow(b, n) * a)) + (Real.pow(b, n) * b)) / 4.0)) by { // @tac 3487-3500
            // [TACTIC: exact h₆₇]
            assert (((Real.pow(a, (n + 1)) + Real.pow(b, (n + 1))) / 2.0) >= (((((Real.pow(a, n) * a) + (Real.pow(a, n) * b)) + (Real.pow(b, n) * a)) + (Real.pow(b, n) * b)) / 4.0));
          }
          // have h₇₁ : ( ( a + b ) / 2 ) ^ ( n + 1 ) <= ( a ^ ( n + 1 ) + b ^ ( n + 1 ) ) / 2  [type from Lean state]
          assert (Real.pow(((a + b) / 2.0), (n + 1)) <= ((Real.pow(a, (n + 1)) + Real.pow(b, (n + 1))) / 2.0)) by { // @tac 3604-3612
            // [TACTIC: «Linarith[_]At___»]
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3604-3612 exec 923)
            // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℝ) * ((2 : ℝ) * ((a + b) / (2 : ℝ)) ^ (n + (1 : ℕ)) - (1 : ℝ) * ((a + b) / (2 : ℝ)) ^ n * ((1 : ℝ) * a + (1 : ℝ) *…` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((2.0 * Real.pow(((a + b) / 2.0), (n + 1))) - ((1.0 * Real.pow(((a + b) / 2.0), n)) * ((1.0 * a) + (1.0 * b)))) == 0.0); (2.0 > 0.0)
            // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℝ) * (((a + b) / (2 : ℝ)) ^ (n + (1 : ℕ)) - ((a + b) / (2 : ℝ)) ^ n * ((a + b) / (2 : ℝ))) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((Real.pow(((a + b) / 2.0), (n + 1)) - (Real.pow(((a + b) / 2.0), n) * ((a + b) / 2.0))) == 0.0); (2.0 > 0.0)
            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(4 : ℝ) * (((a + b) / (2 : ℝ)) ^ n * ((a + b) / (2 : ℝ)) - (a ^ n * a + a ^ n * b + b ^ n * a + b ^ n * b) / (4 : ℝ)) ≤…` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((Real.pow(((a + b) / 2.0), n) * ((a + b) / 2.0)) - (((((Real.pow(a, n) * a) + (Real.pow(a, n) * b)) + (Real.pow(b, n) * a)) + (Real.pow(b, n) * b)) / 4.0)) <= 0.0); (4.0 > 0.0)
            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(4 : ℝ) * ((a ^ n * a + a ^ n * b + b ^ n * a + b ^ n * b) / (4 : ℝ) - (a ^ (n + (1 : ℕ)) + b ^ (n + (1 : ℕ))) / (2 : ℝ…` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((((((Real.pow(a, n) * a) + (Real.pow(a, n) * b)) + (Real.pow(b, n) * a)) + (Real.pow(b, n) * b)) / 4.0) - ((Real.pow(a, (n + 1)) + Real.pow(b, (n + 1))) / 2.0)) <= 0.0); (4.0 > 0.0)
            // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * ((1 : ℝ) * a ^ (n + (1 : ℕ)) + (1 : ℝ) * b ^ (n + (1 : ℕ)) - (2 : ℝ) * ((a + b) / (2 : ℝ)) ^ (n + (1 : ℕ))) <…` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((1.0 * Real.pow(a, (n + 1))) + (1.0 * Real.pow(b, (n + 1)))) - (2.0 * Real.pow(((a + b) / 2.0), (n + 1)))) < 0.0); (2.0 > 0.0)
            // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * ((a ^ (n + (1 : ℕ)) + b ^ (n + (1 : ℕ))) / (2 : ℝ) - ((a + b) / (2 : ℝ)) ^ (n + (1 : ℕ))) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((Real.pow(a, (n + 1)) + Real.pow(b, (n + 1))) / 2.0) - Real.pow(((a + b) / 2.0), (n + 1))) < 0.0); (2.0 > 0.0)
            // UNCITED-APPLIED add_nonpos: certificate sum `(2 : ℝ) * ((2 : ℝ) * ((a + b) / (2 : ℝ)) ^ (n + (1 : ℕ)) - (1 : ℝ) * ((a + b) / (2 : ℝ)) ^ n * ((1 : ℝ) * a + (1 : ℝ) *…` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
            // UNCITED-APPLIED Linarith.le_of_eq_of_le: certificate sum `(2 : ℝ) * ((2 : ℝ) * ((a + b) / (2 : ℝ)) ^ (n + (1 : ℕ)) - (1 : ℝ) * ((a + b) / (2 : ℝ)) ^ n * ((1 : ℝ) * a + (1 : ℝ) *…` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
            cert_identity_23(a, b, n);  // cert: add_lt_of_le_of_neg
            // UNCITED-APPLIED internal ×40 [exec 923 3604-3612]: applications made inside the tactic's own automation, not stated — CancelDenoms.add_subst ×7, CancelDenoms.mul_subst ×6, CancelDenoms.div_subst ×5, CancelDenoms.sub_subst ×4, sub_nonpos_of_le ×2, le_of_not_gt ×1, sub_eq_zero_of_eq ×1, sub_neg_of_lt ×1; machinery/glue: congrArg ×5, Linarith.mul_eq ×2, Linarith.mul_nonpos ×2, Linarith.mul_neg ×2 (+2 more heads, ×2)
            // UNCITED-APPLIED internal ×198 [exec 987 3604-3612]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_pf_left ×8, Mathlib.Tactic.Ring.mul_zero ×8, Mathlib.Tactic.Ring.mul_pf_right ×8, Mathlib.Tactic.Ring.neg_add ×8 (+48 more heads, ×166) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×14 [exec 924 3604-3612]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×6 [exec 925 3604-3612]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×6 [exec 953 3604-3612]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 977 3604-3612]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×14 [exec 933 3604-3612]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×6 [exec 934 3604-3612]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1)
            // UNCITED-APPLIED internal ×6 [exec 932 3604-3612]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 927 3604-3612]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 928 3604-3612]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 929 3604-3612]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 930 3604-3612]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×14 [exec 931 3604-3612]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×6 [exec 941 3604-3612]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 935 3604-3612]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 936 3604-3612]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 937 3604-3612]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 938 3604-3612]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 939 3604-3612]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×14 [exec 940 3604-3612]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×6 [exec 948 3604-3612]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×14 [exec 949 3604-3612]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×6 [exec 950 3604-3612]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1)
            // UNCITED-APPLIED internal ×5 [exec 942 3604-3612]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×14 [exec 952 3604-3612]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×6 [exec 955 3604-3612]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 980 3604-3612]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 983 3604-3612]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 924, 925, 927, 928, 929, 930 … / `ring1` exec 987)]
            NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 926, 935, 942, 977, 980, 983 / `ring1` exec 987)]
            // UNCITED-APPLIED internal ×5 [exec 926 3604-3612]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          }
          // [TACTIC: exact h₇₁]
          assert (Real.pow(((a + b) / 2.0), (n + 1)) <= ((Real.pow(a, (n + 1)) + Real.pow(b, (n + 1))) / 2.0));
        }
        // [TACTIC: simpa [ pow_succ ] using h₆₈]
        PowSucc(a, n);  // cite: pow_succ
        PowSucc(b, n);  // cite: pow_succ
        PowSucc(((a + b) / 2.0), n);  // cite: pow_succ
        // UNCITED-APPLIED internal ×11 [exec 991 3645-3675]: applications made inside the tactic's own automation, not stated — div_pow ×1; machinery/glue: congrArg ×5, congr ×3, Eq.trans ×2 (cited in this block, not counted here: pow_succ [Lean recorded ×3])
      }
      assert (Real.pow(((a + b) / 2.0), (n + 1)) <= ((Real.pow(a, (n + 1)) + Real.pow(b, (n + 1))) / 2.0));  // sub-goal before `have` (Lean state) // @tac 2046-2102 // @tac 1966-3675 // @tac 2111-2158 // @tac 2167-2312 // @tac 2321-2333
    }
  }
}

// statement: Lean elaborated type (v3, stmt_cache) — requires/ensures below
lemma algebra_apbon2pownleqapownpbpowon2(a: real, b: real, n: nat)
  requires ((0.0 < a) && (0.0 < b))
  requires (0 < n)
  ensures (Real.pow(((a + b) / 2.0), n) <= ((Real.pow(a, n) + Real.pow(b, n)) / 2.0)) // @tac 396-441 // @tac 447-492 // @tac 498-645 // @tac 651-1628 // @tac 1634-3700 // @tac 3703-3713
{
  // have h₂ : 0 < a  [type from Lean state]
  assert (0.0 < a) by { // @tac 424-441
    // [TACTIC: «Linarith[_]At___» [ h₀ . 1 ]]
    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 424-441 exec 20)
    cert_identity_1(a, b, n);  // cert: add_lt_of_neg_of_le
    // UNCITED-APPLIED internal ×6 [exec 20 424-441]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
    // UNCITED-APPLIED internal ×20 [exec 21 424-441]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 21)]
  }
  // have h₃ : 0 < b  [type from Lean state]
  assert (0.0 < b) by { // @tac 475-492
    // [TACTIC: «Linarith[_]At___» [ h₀ . 2 ]]
    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 475-492 exec 38)
    cert_identity_2(a, b, n);  // cert: add_lt_of_neg_of_le
    // UNCITED-APPLIED internal ×6 [exec 38 475-492]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
    // UNCITED-APPLIED internal ×20 [exec 39 475-492]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 39)]
  }
  // have h₄ : 0 < ( a + b ) / 2  [type from Lean state]
  assert (0.0 < ((a + b) / 2.0)) by { // @tac 536-575 // @tac 580-627 // @tac 632-645
    // have h₄₁ : 0 < a + b  [type from Lean state]
    assert (0.0 < (a + b)) by { // @tac 567-575
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 567-575 exec 72)
      // UNCITED-APPLIED Left.add_neg: certificate sum `-a + -b < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
      cert_identity_3(a, b, n);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×8 [exec 72 567-575]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, Left.add_neg ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×32 [exec 73 567-575]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×3, Mathlib.Tactic.Ring.add_pf_zero_add ×3, Mathlib.Tactic.Ring.neg_congr ×2, Mathlib.Tactic.Ring.atom_pf ×2 (+17 more heads, ×22) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 73)]
    }
    // have h₄₂ : 0 < ( a + b ) / 2  [type from Lean state]
    assert (0.0 < ((a + b) / 2.0)) by { // @tac 617-627
      // [TACTIC: Positivity]
      // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 617-627 exec 90)
      if (0.0 < (a + b)) && (0.0 < 2.0) { cert_piece_4(a, b, n); }  // cert: div_pos
      // UNCITED-APPLIED internal ×3 [exec 90 617-627]: applications made inside the tactic's own automation, not stated — add_pos ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: div_pos [Lean recorded ×1])
      assert (0.0 < ((a + b))) && (0.0 < (2.0));  // precondition of DivPos (Lean: div_pos)
      DivPos((a + b), 2.0);  // cite: div_pos [applied by the tactic, not named in it]
    }
    // [TACTIC: exact h₄₂]
    assert (0.0 < ((a + b) / 2.0));
  }
  // have h₅ : forall ( k : ℕ ) :: ( a - b ) * ( a ^ k - b ^ k ) >= 0  [type from Lean state]
  forall k: nat // @tac 720-727
    ensures (((a - b) * (Real.pow(a, k) - Real.pow(b, k))) >= 0.0) // @tac 732-767 // @tac 772-807 // @tac 812-838
  {
    // [TACTIC: intro k]
    // have h₅₁ : a > 0  [type from Lean state]
    assert (a > 0.0) by { // @tac 759-767
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 759-767 exec 125)
      cert_identity_5(a, b, n);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×6 [exec 125 759-767]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×20 [exec 129 759-767]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 129)]
    }
    // have h₅₂ : b > 0  [type from Lean state]
    assert (b > 0.0) by { // @tac 799-807
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 799-807 exec 146)
      cert_identity_6(a, b, n);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×6 [exec 146 799-807]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×20 [exec 150 799-807]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 150)]
    }
    // by_cases h₅₃ : a ≥ b
    if (a >= b) {
      assert (((a - b) * (Real.pow(a, k) - Real.pow(b, k))) >= 0.0) by {  // sub-goal before `have` (Lean state) // @tac 869-910 // @tac 843-1233 // @tac 917-1080 // @tac 1087-1136 // @tac 1143-1213 // @tac 1220-1233
        // have h₅₄ : a - b >= 0  [type from Lean state]
        assert ((a - b) >= 0.0) by { // @tac 902-910
          // [TACTIC: «Linarith[_]At___»]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 902-910 exec 176)
          cert_identity_7(a, b, n);  // cert: add_lt_of_le_of_neg
          // UNCITED-APPLIED internal ×6 [exec 176 902-910]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, add_lt_of_le_of_neg ×1, sub_nonpos_of_le ×1, lt_zero_of_zero_gt ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
          // UNCITED-APPLIED internal ×34 [exec 180 902-910]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.sub_congr ×2, Mathlib.Tactic.Ring.atom_pf ×2, Mathlib.Tactic.Ring.sub_pf ×2, Mathlib.Tactic.Ring.neg_add ×2 (+20 more heads, ×26) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 180)]
        }
        // have h₅₅ : a ^ k >= b ^ k  [type from Lean state]
        assert (Real.pow(a, k) >= Real.pow(b, k)) by { // @tac 1029-1080
          assert (0.0 <= b) by {  // sub-goal of `by` (Lean state) // @tac 1061-1069
            // [TACTIC: «Linarith[_]At___»]
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1061-1069 exec 202)
            cert_identity_8(a, b, n);  // cert: Left.add_neg
            // UNCITED-APPLIED internal ×6 [exec 202 1061-1069]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, Left.add_neg ×1, neg_neg_of_pos ×1, lt_zero_of_zero_gt ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
            // UNCITED-APPLIED internal ×20 [exec 206 1061-1069]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 206)]
          }
          // [TACTIC: exact pow_le_pow_of_le_left ( by linarith linarith ) h₅₃ k]
          assert (a >= b);
          assert (0.0 <= (b)) && ((b) <= (a));  // precondition of PowLePowOfLeLeft (Lean: pow_le_pow_of_le_left)
          PowLePowOfLeLeft(b, a, k);  // cite: pow_le_pow_of_le_left
        }
        // have h₅₆ : a ^ k - b ^ k >= 0  [type from Lean state]
        assert ((Real.pow(a, k) - Real.pow(b, k)) >= 0.0) by { // @tac 1128-1136
          // [TACTIC: «Linarith[_]At___»]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1128-1136 exec 223)
          cert_identity_9(a, b, n, k);  // cert: add_lt_of_le_of_neg
          // UNCITED-APPLIED internal ×6 [exec 223 1128-1136]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, add_lt_of_le_of_neg ×1, sub_nonpos_of_le ×1, lt_zero_of_zero_gt ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
          // UNCITED-APPLIED internal ×59 [exec 227 1128-1136]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.atom_pf ×3, Mathlib.Tactic.Ring.sub_congr ×2, Mathlib.Tactic.Ring.pow_congr ×2, Mathlib.Tactic.Ring.pow_add ×2 (+33 more heads, ×50) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 227)]
        }
        // have h₅₇ : ( a - b ) * ( a ^ k - b ^ k ) >= 0  [type from Lean state]
        assert (((a - b) * (Real.pow(a, k) - Real.pow(b, k))) >= 0.0) by { // @tac 1204-1213
          // [TACTIC: «Nlinarith[_]At___»]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1204-1213 exec 244)
          if ((b - a) <= 0.0) && ((Real.pow(b, k) - Real.pow(a, k)) <= 0.0) { cert_piece_10(a, b, n, k); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          cert_identity_11(a, b, n, k);  // cert: add_lt_of_neg_of_le
          // UNCITED-APPLIED internal ×9 [exec 244 1204-1213]: applications made inside the tactic's own automation, not stated — sub_nonpos_of_le ×2, le_of_not_gt ×1, add_lt_of_neg_of_le ×1, lt_zero_of_zero_gt ×1, neg_nonpos_of_nonneg ×1, mul_nonneg_of_nonpos_of_nonpos ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
          // UNCITED-APPLIED internal ×128 [exec 248 1204-1213]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.mul_pf_right ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8 (+34 more heads, ×96) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 248)]
        }
        // [TACTIC: exact h₅₇]
        assert (((a - b) * (Real.pow(a, k) - Real.pow(b, k))) >= 0.0);
      }
    } else {
      assert (((a - b) * (Real.pow(a, k) - Real.pow(b, k))) >= 0.0) by {  // sub-goal before `have` (Lean state) // @tac 1262-1301 // @tac 1238-1628 // @tac 1308-1475 // @tac 1482-1531 // @tac 1538-1608 // @tac 1615-1628
        // have h₅₄ : a - b < 0  [type from Lean state]
        assert ((a - b) < 0.0) by { // @tac 1293-1301
          // [TACTIC: «Linarith[_]At___»]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1293-1301 exec 270)
          cert_identity_12(a, b, n);  // cert: add_lt_of_neg_of_le
          // UNCITED-APPLIED internal ×7 [exec 270 1293-1301]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×2, add_lt_of_neg_of_le ×1, sub_neg_of_lt ×1, neg_nonpos_of_nonneg ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
          // UNCITED-APPLIED internal ×37 [exec 274 1293-1301]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×3, Mathlib.Tactic.Ring.neg_mul ×3, Mathlib.Meta.NormNum.IsInt.to_isNat ×3, Mathlib.Tactic.Ring.atom_pf ×2 (+20 more heads, ×26) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 274)]
        }
        // have h₅₅ : a ^ k <= b ^ k  [type from Lean state]
        assert (Real.pow(a, k) <= Real.pow(b, k)) by { // @tac 1418-1475
          assert (0.0 <= a) by {  // sub-goal of `by` (Lean state) // @tac 1450-1458
            // [TACTIC: «Linarith[_]At___»]
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1450-1458 exec 296)
            cert_identity_13(a, b, n);  // cert: Left.add_neg
            // UNCITED-APPLIED internal ×6 [exec 296 1450-1458]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, Left.add_neg ×1, neg_neg_of_pos ×1, lt_zero_of_zero_gt ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
            // UNCITED-APPLIED internal ×20 [exec 300 1450-1458]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 300)]
          }
          assert (a <= b) by {  // sub-goal of `by` (Lean state) // @tac 1464-1472
            // [TACTIC: «Linarith[_]At___»]
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1464-1472 exec 305)
            cert_identity_14(a, b, n);  // cert: Left.add_neg
            // UNCITED-APPLIED internal ×7 [exec 305 1464-1472]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2, le_of_not_gt ×1, Left.add_neg ×1, lt_of_not_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
            // UNCITED-APPLIED internal ×34 [exec 309 1464-1472]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.sub_congr ×2, Mathlib.Tactic.Ring.atom_pf ×2, Mathlib.Tactic.Ring.sub_pf ×2, Mathlib.Tactic.Ring.neg_add ×2 (+20 more heads, ×26) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 309)]
          }
          // [TACTIC: exact pow_le_pow_of_le_left ( by linarith linarith ) ( by linarith linarith ) k]
          assert (0.0 <= (a)) && ((a) <= (b));  // precondition of PowLePowOfLeLeft (Lean: pow_le_pow_of_le_left)
          PowLePowOfLeLeft(a, b, k);  // cite: pow_le_pow_of_le_left
        }
        // have h₅₆ : a ^ k - b ^ k <= 0  [type from Lean state]
        assert ((Real.pow(a, k) - Real.pow(b, k)) <= 0.0) by { // @tac 1523-1531
          // [TACTIC: «Linarith[_]At___»]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1523-1531 exec 326)
          cert_identity_15(a, b, n, k);  // cert: add_lt_of_le_of_neg
          // UNCITED-APPLIED internal ×6 [exec 326 1523-1531]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, add_lt_of_le_of_neg ×1, sub_nonpos_of_le ×1, neg_neg_of_pos ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
          // UNCITED-APPLIED internal ×63 [exec 330 1523-1531]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.atom_pf ×3, Mathlib.Tactic.Ring.neg_add ×3, Mathlib.Tactic.Ring.neg_mul ×3, Mathlib.Meta.NormNum.IsInt.to_isNat ×3 (+34 more heads, ×51) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 330)]
        }
        // have h₅₇ : ( a - b ) * ( a ^ k - b ^ k ) >= 0  [type from Lean state]
        assert (((a - b) * (Real.pow(a, k) - Real.pow(b, k))) >= 0.0) by { // @tac 1599-1608
          // [TACTIC: «Nlinarith[_]At___»]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1599-1608 exec 347)
          if ((a - b) <= 0.0) && ((Real.pow(a, k) - Real.pow(b, k)) <= 0.0) { cert_piece_16(a, b, n, k); }  // cert: mul_nonneg_of_nonpos_of_nonpos
          cert_identity_17(a, b, n, k);  // cert: add_lt_of_neg_of_le
          // UNCITED-APPLIED internal ×10 [exec 347 1599-1608]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, add_lt_of_neg_of_le ×1, lt_zero_of_zero_gt ×1, neg_nonpos_of_nonneg ×1, mul_nonneg_of_nonpos_of_nonpos ×1, sub_neg_of_lt ×1, lt_of_not_ge ×1, sub_nonpos_of_le ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1 (cited in this block, not counted here: le_of_lt [Lean recorded ×1])
          // UNCITED-APPLIED internal ×109 [exec 351 1599-1608]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_mul ×8, Mathlib.Tactic.Ring.add_overlap_pf_zero ×8, Mathlib.Tactic.Ring.neg_add ×6, Mathlib.Tactic.Ring.add_pf_add_lt ×6 (+33 more heads, ×81) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 351)]
          assert (((a - b)) < (0.0));  // precondition of LeOfLt (Lean: le_of_lt)
          LeOfLt((a - b), 0.0);  // cite: le_of_lt [applied by the tactic, not named in it]
        }
        // [TACTIC: exact h₅₇]
        assert (((a - b) * (Real.pow(a, k) - Real.pow(b, k))) >= 0.0);
      }
    }
  }
  // have h₆ : ( ( a + b ) / 2 ) ^ n <= ( a ^ n + b ^ n ) / 2  [type from Lean state]
  assert (Real.pow(((a + b) / 2.0), n) <= ((Real.pow(a, n) + Real.pow(b, n)) / 2.0)) by { // @tac 1698-3675 // @tac 3680-3700
    // have h₆₁ : forall n : ℕ :: 0 < n -> ( ( a + b ) / 2 ) ^ n <= ( a ^ n + b ^ n ) /   [type from Lean state]
    forall n: nat | (0 < n) // @tac 1790-1800
      ensures (Real.pow(((a + b) / 2.0), n) <= ((Real.pow(a, n) + Real.pow(b, n)) / 2.0)) // @tac 1807-1833
    {
      // [TACTIC: intro n hn]
      // induction' n → recursive lemma induction_helper_1
      induction_helper_1(a, b, n - 1);
    }
    // [TACTIC: exact h₆₁ n h₁]
    assert (forall n: nat :: ((0 < n) ==> (Real.pow(((a + b) / 2.0), n) <= ((Real.pow(a, n) + Real.pow(b, n)) / 2.0))));
    assert (Real.pow(((a + b) / 2.0), n) <= ((Real.pow(a, n) + Real.pow(b, n)) / 2.0));  // instance of h₆₁ (Lean state)
    // UNCITED-APPLIED congrArg(((a + b) / (2 : ℝ)) ^ (n + (1 : ℕ)), ((a + b) / (2 : ℝ)) ^ n * ((a + b) / (2 : ℝ)), fun (_a : ℝ) => _a ≤ (a ^ succ n + b ^ succ n) / (2 : ℝ)): not stated; marked in the block where its execution is translated (lemma induction_helper_1) [exec 494 2321-2333]
  }
  // [TACTIC: exact h₆]
  assert (Real.pow(((a + b) / 2.0), n) <= ((Real.pow(a, n) + Real.pow(b, n)) / 2.0));
}



// ===== closed lemma for line 360 (from closed/algebra_apbon2pownleqapownpbpowon2-360.dfy) =====

lemma {:induction false} vc_algebra_apbon2pownleqapownpbpowon2_L360(a: real, b: real, n: nat)
  requires 0 <= n
  requires 0.0 < a
  requires 0.0 < b
  requires 0.0 < (a + b) / 2.0
  requires forall k_1: nat :: (a - b) * (Real.pow(a, k_1) - Real.pow(b, k_1)) >= 0.0
  requires n != 0
  requires 0 <= n - 1
  requires 0 <= n || n - 1 == n
  requires n - 1 < n
  requires forall k_1: nat :: (a - b) * (Real.pow(a, k_1) - Real.pow(b, k_1)) >= 0.0
  requires Real.pow((a + b) / 2.0, n - 1 + 1) <= (Real.pow(a, n - 1 + 1) + Real.pow(b, n - 1 + 1)) / 2.0
  requires 0 + 1 <= n
  requires (a - b) * (Real.pow(a, n) - Real.pow(b, n)) >= 0.0
  requires 2.0 != 0.0
  requires (a + b) / 2.0 > 0.0
  requires 0 <= n + 1
  requires Real.pow((a + b) / 2.0, n + 1) == Real.pow((a + b) / 2.0, n) * ((a + b) / 2.0)
  requires Real.pow((a + b) / 2.0, n) * ((a + b) / 2.0) <= (Real.pow(a, n) + Real.pow(b, n)) / 2.0 * ((a + b) / 2.0)
  requires 4.0 != 0.0
  requires (Real.pow(a, n) + Real.pow(b, n)) / 2.0 * ((a + b) / 2.0) == (Real.pow(a, n) * a + Real.pow(a, n) * b + Real.pow(b, n) * a + Real.pow(b, n) * b) / 4.0
  requires Real.pow((a + b) / 2.0, n) * ((a + b) / 2.0) <= (Real.pow(a, n) * a + Real.pow(a, n) * b + Real.pow(b, n) * a + Real.pow(b, n) * b) / 4.0
  requires (Real.pow(a, n + 1) + Real.pow(b, n + 1)) / 2.0 >= (Real.pow(a, n) * a + Real.pow(a, n) * b + Real.pow(b, n) * a + Real.pow(b, n) * b) / 4.0
  requires 2.0 * (2.0 * Real.pow((a + b) / 2.0, n + 1) - 1.0 * Real.pow((a + b) / 2.0, n) * (1.0 * a + 1.0 * b)) + (1.0 * Real.pow((a + b) / 2.0, n) * (2.0 * a + 2.0 * b) - (1.0 * Real.pow(a, n) * (1.0 * a) + 1.0 * Real.pow(a, n) * (1.0 * b) + 1.0 * Real.pow(b, n) * (1.0 * a) + 1.0 * Real.pow(b, n) * (1.0 * b))) + (1.0 * Real.pow(a, n) * (1.0 * a) + 1.0 * Real.pow(a, n) * (1.0 * b) + 1.0 * Real.pow(b, n) * (1.0 * a) + 1.0 * Real.pow(b, n) * (1.0 * b) - 4.0 * Real.pow((a + b) / 2.0, n + 1)) == 0.0
  requires (1 as real) == 1.0
  requires (0 as real) == 0.0
  ensures   Real.pow((a + b) / 2.0, n + 1) <= (Real.pow(a, n) * a + Real.pow(a, n) * b + Real.pow(b, n) * a + Real.pow(b, n) * b) / 4.0
{
            // [TACTIC: «Linarith[_]At___»]
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3347-3355 exec 836)
            // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℝ) * ((2 : ℝ) * ((a + b) / (2 : ℝ)) ^ (n + (1 : ℕ)) - (1 : ℝ) * ((a + b) / (2 : ℝ)) ^ n * ((1 : ℝ) * a + (1 : ℝ) *…` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((2.0 * Real.pow(((a + b) / 2.0), (n + 1))) - ((1.0 * Real.pow(((a + b) / 2.0), n)) * ((1.0 * a) + (1.0 * b)))) == 0.0); (2.0 > 0.0)
            // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℝ) * (((a + b) / (2 : ℝ)) ^ (n + (1 : ℕ)) - ((a + b) / (2 : ℝ)) ^ n * ((a + b) / (2 : ℝ))) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((Real.pow(((a + b) / 2.0), (n + 1)) - (Real.pow(((a + b) / 2.0), n) * ((a + b) / 2.0))) == 0.0); (2.0 > 0.0)
            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(4 : ℝ) * (((a + b) / (2 : ℝ)) ^ n * ((a + b) / (2 : ℝ)) - (a ^ n * a + a ^ n * b + b ^ n * a + b ^ n * b) / (4 : ℝ)) ≤…` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((Real.pow(((a + b) / 2.0), n) * ((a + b) / 2.0)) - (((((Real.pow(a, n) * a) + (Real.pow(a, n) * b)) + (Real.pow(b, n) * a)) + (Real.pow(b, n) * b)) / 4.0)) <= 0.0); (4.0 > 0.0)
            // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(4 : ℝ) * ((a ^ n * a + a ^ n * b + b ^ n * a + b ^ n * b) / (4 : ℝ) - ((a + b) / (2 : ℝ)) ^ (n + (1 : ℕ))) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((((((Real.pow(a, n) * a) + (Real.pow(a, n) * b)) + (Real.pow(b, n) * a)) + (Real.pow(b, n) * b)) / 4.0) - Real.pow(((a + b) / 2.0), (n + 1))) < 0.0); (4.0 > 0.0)
            // UNCITED-APPLIED Linarith.le_of_eq_of_le: certificate sum `(2 : ℝ) * ((2 : ℝ) * ((a + b) / (2 : ℝ)) ^ (n + (1 : ℕ)) - (1 : ℝ) * ((a + b) / (2 : ℝ)) ^ n * ((1 : ℝ) * a + (1 : ℝ) *…` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
            cert_identity_22(a, b, n);  // cert: add_lt_of_le_of_neg
            // UNCITED-APPLIED internal ×31 [exec 836 3347-3355]: applications made inside the tactic's own automation, not stated — CancelDenoms.mul_subst ×6, CancelDenoms.add_subst ×5, CancelDenoms.sub_subst ×3, CancelDenoms.div_subst ×3, le_of_not_gt ×1, sub_eq_zero_of_eq ×1, sub_nonpos_of_le ×1, sub_neg_of_lt ×1; machinery/glue: congrArg ×4, Linarith.mul_eq ×2, Linarith.lt_irrefl ×1, Linarith.le_of_eq_of_le ×1 (+2 more heads, ×2)
            // UNCITED-APPLIED internal ×180 [exec 888 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_pf_left ×8, Mathlib.Tactic.Ring.mul_zero ×8, Mathlib.Tactic.Ring.mul_pf_right ×8, Mathlib.Tactic.Ring.neg_add ×8 (+46 more heads, ×148) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×14 [exec 850 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×6 [exec 854 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×6 [exec 856 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 878 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 881 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×14 [exec 853 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×6 [exec 851 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1)
            // UNCITED-APPLIED internal ×6 [exec 842 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 837 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 838 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 839 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 840 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×14 [exec 841 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×6 [exec 849 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 844 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 845 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 846 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 847 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×14 [exec 848 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×6 [exec 863 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 852 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 837, 838, 839, 840, 841, 842 … / `ring1` exec 888)]
            NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 843, 852, 878, 881 / `ring1` exec 888)]
            // UNCITED-APPLIED internal ×5 [exec 843 3347-3355]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
}

