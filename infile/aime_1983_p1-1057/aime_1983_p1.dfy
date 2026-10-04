// ════════════════════════════════════════════════════════════
// MECHANICAL TRANSLATION (emitter v2) of ast_cache_v2/aime_1983_p1.json
// Each Lean `have` → `assert ... by {}` at the same depth;
// quantified haves → forall statements. Typed pipeline only.
// ════════════════════════════════════════════════════════════

include "../../library/library_new.dfy"

// ──────────────────────────────────────────────────
// certificate identity for `hx`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_1(x: int, y: int, z: int, w: int)
  ensures ((-(1) + ((1 + 1) - (x as int))) + ((x as int) - 1)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `hy`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_2(x: int, y: int, z: int, w: int)
  ensures ((-(1) + ((1 + 1) - (y as int))) + ((y as int) - 1)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `hz`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_3(x: int, y: int, z: int, w: int)
  ensures ((-(1) + ((1 + 1) - (z as int))) + ((z as int) - 1)) == 0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `hxyz/h₄`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_4(x: nat, y: nat, z: nat, w: nat)
  requires (0.0 <= (x as real))
  requires ((1.0 - (y as real)) <= 0.0)
  ensures (((x as real) * (1.0 - (y as real))) <= 0.0)
{
  MulNonneg((x as real), -((1.0 - (y as real)))); MulNeg((x as real), (1.0 - (y as real))); assert ((x as real)) * (-((1.0 - (y as real)))) == -(((x as real)) * ((1.0 - (y as real))));
}

// ──────────────────────────────────────────────────
// certificate identity for `hxyz/h₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_5(x: nat, y: nat, z: nat, w: nat)
  ensures (((1.0 - (x as real)) + (((x as real) * (y as real)) - 1.0)) + ((x as real) * (1.0 - (y as real)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `hxyz`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_6(x: nat, y: nat, z: nat, w: nat)
  requires (0.0 <= (z as real))
  requires ((1.0 - ((x as real) * (y as real))) <= 0.0)
  ensures (((z as real) * (1.0 - ((x as real) * (y as real)))) <= 0.0)
{
  MulNonneg((z as real), -((1.0 - ((x as real) * (y as real))))); MulNeg((z as real), (1.0 - ((x as real) * (y as real)))); assert ((z as real)) * (-((1.0 - ((x as real) * (y as real))))) == -(((z as real)) * ((1.0 - ((x as real) * (y as real)))));
}

// ──────────────────────────────────────────────────
// certificate identity for `hxyz`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_7(x: nat, y: nat, z: nat, w: nat)
  ensures (((1.0 - (z as real)) + ((((x as real) * (y as real)) * (z as real)) - 1.0)) + ((z as real) * (1.0 - ((x as real) * (y as real))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `hlogxyz/h₁/h₂`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_8(x: nat, y: nat, z: nat, w: nat)
  requires (0.0 < (x as real))
  requires (0.0 < (y as real))
  ensures (0.0 < ((x as real) * (y as real)))
{
  MulPos((x as real), (y as real));
}

// ──────────────────────────────────────────────────
// certificate piece for `hlogxyz/h₁/h₄`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_9(x: nat, y: nat, z: nat, w: nat)
  requires (0.0 < (x as real))
  requires (0.0 < (y as real))
  ensures (0.0 < ((x as real) * (y as real)))
{
  MulPos((x as real), (y as real));
}

// ──────────────────────────────────────────────────
// certificate identity for `hlogxyz`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_10(x: nat, y: nat, z: nat, w: nat)
  ensures (((-(Real.log((x as real))) + -(Real.log((y as real)))) + -(Real.log((z as real)))) + ((Real.log((x as real)) + Real.log((y as real))) + Real.log((z as real)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `hlogw_pos/h₅/h₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_11(x: nat, y: nat, z: nat, w: nat)
  ensures (Real.log((w as real)) + -(Real.log((w as real)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `hlogw_pos/h₅/h₇`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_12(x: nat, y: nat, z: nat, w: nat)
  ensures (-(Real.log((x as real))) + Real.log((x as real))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `hlogw_pos/h₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_13(x: nat, y: nat, z: nat, w: nat)
  ensures ((-((24.0 * 1.0)) + -(((1.0 * Real.div(Real.log((w as real)), Real.log((x as real)))) - (1.0 * 24.0)))) + (1.0 * Real.div(Real.log((w as real)), Real.log((x as real))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `hlogw_eq/h₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_14(x: nat, y: nat, z: nat, w: nat)
  ensures (-(Real.log((x as real))) + Real.log((x as real))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `hlogw_eq/h₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_15(x: nat, y: nat, z: nat, w: nat)
  ensures (-((Real.log((w as real)) - (24.0 * Real.log((x as real))))) + (Real.log((w as real)) - (24.0 * Real.log((x as real))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `hlogw_eq/h₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_16(x: nat, y: nat, z: nat, w: nat)
  ensures ((Real.log((w as real)) - (24.0 * Real.log((x as real)))) + ((24.0 * Real.log((x as real))) - Real.log((w as real)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `hlogw_eq'/h₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_17(x: nat, y: nat, z: nat, w: nat)
  ensures (-(Real.log((y as real))) + Real.log((y as real))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `hlogw_eq'/h₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_18(x: nat, y: nat, z: nat, w: nat)
  ensures (-((Real.log((w as real)) - (40.0 * Real.log((y as real))))) + (Real.log((w as real)) - (40.0 * Real.log((y as real))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `hlogw_eq'/h₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_19(x: nat, y: nat, z: nat, w: nat)
  ensures ((Real.log((w as real)) - (40.0 * Real.log((y as real)))) + ((40.0 * Real.log((y as real))) - Real.log((w as real)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `hlogxy/h₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_20(x: nat, y: nat, z: nat, w: nat)
  ensures (((Real.log((w as real)) - (24.0 * Real.log((x as real)))) + -((Real.log((w as real)) - (40.0 * Real.log((y as real)))))) + ((24.0 * Real.log((x as real))) - (40.0 * Real.log((y as real))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `hlogxy/h₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_21(x: nat, y: nat, z: nat, w: nat)
  ensures ((-((Real.log((w as real)) - (24.0 * Real.log((x as real))))) + (Real.log((w as real)) - (40.0 * Real.log((y as real))))) + ((40.0 * Real.log((y as real))) - (24.0 * Real.log((x as real))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `hlogxy/h₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_22(x: nat, y: nat, z: nat, w: nat)
  ensures (((Real.log((w as real)) - (24.0 * Real.log((x as real)))) + -((Real.log((w as real)) - (40.0 * Real.log((y as real)))))) + (8.0 * ((Real.log((x as real)) * 3.0) - (Real.log((y as real)) * 5.0)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `hlogxy/h₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_23(x: nat, y: nat, z: nat, w: nat)
  ensures ((-((Real.log((w as real)) - (24.0 * Real.log((x as real))))) + (Real.log((w as real)) - (40.0 * Real.log((y as real))))) + (8.0 * ((Real.log((y as real)) * 5.0) - (Real.log((x as real)) * 3.0)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `hlogxyz_eq/h₄/h₅/h₆`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_24(x: nat, y: nat, z: nat, w: nat)
  requires (0.0 < (x as real))
  requires (0.0 < (y as real))
  ensures (0.0 < ((x as real) * (y as real)))
{
  MulPos((x as real), (y as real));
}

// ──────────────────────────────────────────────────
// certificate piece for `hlogxyz_eq/h₄/h₅/h₈`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_25(x: nat, y: nat, z: nat, w: nat)
  requires (0.0 < (x as real))
  requires (0.0 < (y as real))
  ensures (0.0 < ((x as real) * (y as real)))
{
  MulPos((x as real), (y as real));
}

// ──────────────────────────────────────────────────
// certificate identity for `hlogxyz_eq`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_26(x: nat, y: nat, z: nat, w: nat)
  ensures (-((Real.log((w as real)) - (12.0 * ((Real.log((x as real)) + Real.log((y as real))) + Real.log((z as real)))))) + (Real.log((w as real)) - (12.0 * ((Real.log((x as real)) + Real.log((y as real))) + Real.log((z as real)))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `hlogxyz_eq`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_27(x: nat, y: nat, z: nat, w: nat)
  ensures ((Real.log((w as real)) - (12.0 * ((Real.log((x as real)) + Real.log((y as real))) + Real.log((z as real))))) + ((12.0 * ((Real.log((x as real)) + Real.log((y as real))) + Real.log((z as real)))) - Real.log((w as real)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `hlogx_rel/h₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_28(x: nat, y: nat, z: nat, w: nat)
  ensures (((Real.log((w as real)) - (24.0 * Real.log((x as real)))) + -((Real.log((w as real)) - (12.0 * ((Real.log((x as real)) + Real.log((y as real))) + Real.log((z as real))))))) + ((24.0 * Real.log((x as real))) - (12.0 * ((Real.log((x as real)) + Real.log((y as real))) + Real.log((z as real)))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `hlogx_rel/h₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_29(x: nat, y: nat, z: nat, w: nat)
  ensures ((-((Real.log((w as real)) - (24.0 * Real.log((x as real))))) + (Real.log((w as real)) - (12.0 * ((Real.log((x as real)) + Real.log((y as real))) + Real.log((z as real)))))) + ((12.0 * ((Real.log((x as real)) + Real.log((y as real))) + Real.log((z as real)))) - (24.0 * Real.log((x as real))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `hlogx_rel/h₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_30(x: nat, y: nat, z: nat, w: nat)
  ensures (((Real.log((w as real)) - (24.0 * Real.log((x as real)))) + -((Real.log((w as real)) - (12.0 * ((Real.log((x as real)) + Real.log((y as real))) + Real.log((z as real))))))) + (12.0 * ((2.0 * Real.log((x as real))) - ((Real.log((x as real)) + Real.log((y as real))) + Real.log((z as real)))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `hlogx_rel/h₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_31(x: nat, y: nat, z: nat, w: nat)
  ensures ((-((Real.log((w as real)) - (24.0 * Real.log((x as real))))) + (Real.log((w as real)) - (12.0 * ((Real.log((x as real)) + Real.log((y as real))) + Real.log((z as real)))))) + (12.0 * (((Real.log((x as real)) + Real.log((y as real))) + Real.log((z as real))) - (2.0 * Real.log((x as real)))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `hlogx_rel/h₇`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_32(x: nat, y: nat, z: nat, w: nat)
  ensures (((Real.log((w as real)) - (24.0 * Real.log((x as real)))) + -((Real.log((w as real)) - (12.0 * ((Real.log((x as real)) + Real.log((y as real))) + Real.log((z as real))))))) + (12.0 * (Real.log((x as real)) - (Real.log((y as real)) + Real.log((z as real)))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `hlogx_rel/h₇`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_33(x: nat, y: nat, z: nat, w: nat)
  ensures ((-((Real.log((w as real)) - (24.0 * Real.log((x as real))))) + (Real.log((w as real)) - (12.0 * ((Real.log((x as real)) + Real.log((y as real))) + Real.log((z as real)))))) + (12.0 * ((Real.log((y as real)) + Real.log((z as real))) - Real.log((x as real))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `hlogz_rel/h₅/h₅₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_34(x: nat, y: nat, z: nat, w: nat)
  ensures ((-((5.0 * (Real.log((w as real)) - (24.0 * Real.log((x as real)))))) + (5.0 * (Real.log((w as real)) - (40.0 * Real.log((y as real)))))) + (8.0 * (((1.0 * 5.0) * (5.0 * Real.log((y as real)))) - ((1.0 * 5.0) * ((1.0 * 3.0) * (1.0 * Real.log((x as real)))))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `hlogz_rel/h₅/h₅₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_35(x: nat, y: nat, z: nat, w: nat)
  ensures (((5.0 * (Real.log((w as real)) - (24.0 * Real.log((x as real))))) + -((5.0 * (Real.log((w as real)) - (40.0 * Real.log((y as real))))))) + (8.0 * (((1.0 * 5.0) * ((1.0 * 3.0) * (1.0 * Real.log((x as real))))) - ((1.0 * 5.0) * (5.0 * Real.log((y as real))))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `hlogz_rel/h₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_36(x: nat, y: nat, z: nat, w: nat)
  ensures (((-((7.0 * (Real.log((w as real)) - (24.0 * Real.log((x as real)))))) + -((3.0 * (Real.log((w as real)) - (40.0 * Real.log((y as real))))))) + (10.0 * (Real.log((w as real)) - (12.0 * ((Real.log((x as real)) + Real.log((y as real))) + Real.log((z as real))))))) + (24.0 * ((5.0 * Real.log((z as real))) - ((1.0 * Real.log((x as real))) * (1.0 * 2.0))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `hlogz_rel/h₆`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_37(x: nat, y: nat, z: nat, w: nat)
  ensures ((((7.0 * (Real.log((w as real)) - (24.0 * Real.log((x as real))))) + (3.0 * (Real.log((w as real)) - (40.0 * Real.log((y as real)))))) + -((10.0 * (Real.log((w as real)) - (12.0 * ((Real.log((x as real)) + Real.log((y as real))) + Real.log((z as real)))))))) + (24.0 * (((1.0 * Real.log((x as real))) * (1.0 * 2.0)) - (5.0 * Real.log((z as real)))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `hgoal/h₅`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_38(x: nat, y: nat, z: nat, w: nat)
  ensures (-(Real.log((x as real))) + Real.log((x as real))) == 0.0
{ }

// statement: Lean elaborated type (v3, stmt_cache) — requires/ensures below
lemma aime_1983_p1(x: nat, y: nat, z: nat, w: nat)
  requires ((1 < x) && ((1 < y) && (1 < z)))
  requires (0 <= w)
  requires (Real.div(Real.log((w as real)), Real.log((x as real))) == 24.0)
  requires (Real.div(Real.log((w as real)), Real.log((y as real))) == 40.0)
  requires (Real.div(Real.log((w as real)), Real.log((((x as real) * (y as real)) * (z as real)))) == 12.0)
  ensures (Real.div(Real.log((w as real)), Real.log((z as real))) == 60.0) // @tac 529-612 // @tac 616-699 // @tac 703-786 // @tac 790-1007 // @tac 1011-1098 // @tac 1102-1189 // @tac 1193-1280 // @tac 1284-2221 // @tac 2225-2685 // @tac 2689-3030 // @tac 3034-3376 // @tac 3380-3805 // @tac 3809-5394 // @tac 5398-6022 // @tac 6026-6878 // @tac 6882-7291 // @tac 7295-7312
{
  // have hx :  > 1  [type from Lean state]
  assert ((x as real) > 1.0) by { // @tac 563-612 // @tac 563-572
    // [TACTIC: «_<;>_» norm_cast norm_cast <;> linarith [ ht . 1 , ht . 2 . 1 , ht . 2 . 2 ] linarith [ ht . 1 , ht . 2 . 1 , ht . 2 . 2 ]]
    // [TACTIC: choice norm_cast norm_cast]
    // UNCITED-APPLIED Eq.symm((1 as real), 1.0): its premise is not established here and its conclusion is the same Dafny fact (== is symmetric): a guarded call would state nothing
    // UNCITED-APPLIED Nat.cast_one: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
    // UNCITED-APPLIED internal ×4 [exec 31 563-572]: applications made inside the tactic's own automation, not stated — Nat.cast_one ×1; machinery/glue: Eq.trans ×1, congrArg ×1, Eq.symm ×1
    assert (1 < x) by {  // sub-goal of `linarith` (Lean state) // @tac 581-612
      // UNCITED-APPLIED Nat.cast_one: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 581-612 exec 57)
      // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(-1 : ℤ) + ((1 : ℤ) + (1 : ℤ) - ↑x) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
      cert_identity_1(x, y, z, w);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×14 [exec 57 581-612]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, lt_of_not_ge ×1, neg_neg_of_pos ×1, zero_lt_one ×1, Int.add_one_le_iff ×1, Nat.cast_one ×1; machinery/glue: congrArg ×3, Linarith.lt_irrefl ×1, Eq.trans ×1
      // UNCITED-APPLIED internal ×45 [exec 58 581-612]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×3, Mathlib.Meta.NormNum.IsInt.to_isNat ×3, Mathlib.Meta.NormNum.isInt_add ×3, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+25 more heads, ×34)
    }
  }
  // have hy :  > 1  [type from Lean state]
  assert ((y as real) > 1.0) by { // @tac 650-699 // @tac 650-659
    // [TACTIC: «_<;>_» norm_cast norm_cast <;> linarith [ ht . 1 , ht . 2 . 1 , ht . 2 . 2 ] linarith [ ht . 1 , ht . 2 . 1 , ht . 2 . 2 ]]
    // [TACTIC: choice norm_cast norm_cast]
    // UNCITED-APPLIED Eq.symm((1 as real), 1.0): its premise is not established here and its conclusion is the same Dafny fact (== is symmetric): a guarded call would state nothing
    // UNCITED-APPLIED Nat.cast_one: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
    // UNCITED-APPLIED internal ×4 [exec 86 650-659]: applications made inside the tactic's own automation, not stated — Nat.cast_one ×1; machinery/glue: Eq.trans ×1, congrArg ×1, Eq.symm ×1
    assert (1 < y) by {  // sub-goal of `linarith` (Lean state) // @tac 668-699
      // UNCITED-APPLIED Nat.cast_one: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 668-699 exec 112)
      // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(-1 : ℤ) + ((1 : ℤ) + (1 : ℤ) - ↑y) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
      cert_identity_2(x, y, z, w);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×14 [exec 112 668-699]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, lt_of_not_ge ×1, neg_neg_of_pos ×1, zero_lt_one ×1, Int.add_one_le_iff ×1, Nat.cast_one ×1; machinery/glue: congrArg ×3, Linarith.lt_irrefl ×1, Eq.trans ×1
      // UNCITED-APPLIED internal ×45 [exec 113 668-699]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×3, Mathlib.Meta.NormNum.IsInt.to_isNat ×3, Mathlib.Meta.NormNum.isInt_add ×3, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+25 more heads, ×34)
    }
  }
  // have hz :  > 1  [type from Lean state]
  assert ((z as real) > 1.0) by { // @tac 737-786 // @tac 737-746
    // [TACTIC: «_<;>_» norm_cast norm_cast <;> linarith [ ht . 1 , ht . 2 . 1 , ht . 2 . 2 ] linarith [ ht . 1 , ht . 2 . 1 , ht . 2 . 2 ]]
    // [TACTIC: choice norm_cast norm_cast]
    // UNCITED-APPLIED Eq.symm((1 as real), 1.0): its premise is not established here and its conclusion is the same Dafny fact (== is symmetric): a guarded call would state nothing
    // UNCITED-APPLIED Nat.cast_one: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
    // UNCITED-APPLIED internal ×4 [exec 141 737-746]: applications made inside the tactic's own automation, not stated — Nat.cast_one ×1; machinery/glue: Eq.trans ×1, congrArg ×1, Eq.symm ×1
    assert (1 < z) by {  // sub-goal of `linarith` (Lean state) // @tac 755-786
      // UNCITED-APPLIED Nat.cast_one: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 755-786 exec 167)
      // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(-1 : ℤ) + ((1 : ℤ) + (1 : ℤ) - ↑z) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
      cert_identity_3(x, y, z, w);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×14 [exec 167 755-786]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, lt_of_not_ge ×1, neg_neg_of_pos ×1, zero_lt_one ×1, Int.add_one_le_iff ×1, Nat.cast_one ×1; machinery/glue: congrArg ×3, Linarith.lt_irrefl ×1, Eq.trans ×1
      // UNCITED-APPLIED internal ×45 [exec 168 755-786]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_congr ×3, Mathlib.Meta.NormNum.IsInt.to_isNat ×3, Mathlib.Meta.NormNum.isInt_add ×3, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+25 more heads, ×34)
    }
  }
  // have hxyz :  * y * z > 1  [type from Lean state]
  assert ((((x as real) * (y as real)) * (z as real)) > 1.0) by { // @tac 834-865 // @tac 870-901 // @tac 906-937 // @tac 942-993 // @tac 998-1007
    // have h₁ :  > 1  [type from Lean state]
    assert ((x as real) > 1.0) by {
      // [TACTIC: exact hx]
      assert ((x as real) > 1.0);
    }
    // have h₂ :  > 1  [type from Lean state]
    assert ((y as real) > 1.0) by {
      // [TACTIC: exact hy]
      assert ((y as real) > 1.0);
    }
    // have h₃ :  > 1  [type from Lean state]
    assert ((z as real) > 1.0) by {
      // [TACTIC: exact hz]
      assert ((z as real) > 1.0);
    }
    // have h₄ :  * y > 1  [type from Lean state]
    assert (((x as real) * (y as real)) > 1.0) by { // @tac 984-993
      // [TACTIC: «Nlinarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 984-993 exec 237)
      if (0.0 <= (x as real)) && ((1.0 - (y as real)) <= 0.0) { cert_piece_4(x, y, z, w); }  // cert: mul_nonneg_of_nonpos_of_nonpos
      // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(1 : ℝ) - ↑x + (↑x * ↑y - (1 : ℝ)) < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
      cert_identity_5(x, y, z, w);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×12 [exec 237 984-993]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_neg_of_lt ×2, neg_nonpos_of_nonneg ×2, lt_of_not_ge ×1, sub_nonpos_of_le ×1, mul_nonneg_of_nonpos_of_nonpos ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Linarith.natCast_nonneg ×1 (cited in this block, not counted here: le_of_lt [Lean recorded ×1])
      // UNCITED-APPLIED Nat.cast_one: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 238)]
      if (((1.0 - (y as real))) < (0.0)) { LeOfLt((1.0 - (y as real)), 0.0); }  // cite: le_of_lt [applied by the tactic, not named in it]
      // UNCITED-APPLIED internal ×76 [exec 238 984-993]: applications made inside the tactic's own automation, not stated — Nat.cast_one ×1; machinery/glue: Mathlib.Tactic.Ring.neg_add ×5, Mathlib.Tactic.Ring.neg_mul ×4, Mathlib.Tactic.Ring.add_pf_zero_add ×4, Mathlib.Tactic.Ring.sub_congr ×3 (+32 more heads, ×59) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    }
    // [TACTIC: «Nlinarith[_]At___»]
    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 998-1007 exec 239)
    if (0.0 <= (z as real)) && ((1.0 - ((x as real) * (y as real))) <= 0.0) { cert_piece_6(x, y, z, w); }  // cert: mul_nonneg_of_nonpos_of_nonpos
    // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(1 : ℝ) - ↑z + (↑x * ↑y * ↑z - (1 : ℝ)) < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
    cert_identity_7(x, y, z, w);  // cert: add_lt_of_neg_of_le
    // UNCITED-APPLIED internal ×12 [exec 239 998-1007]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_neg_of_lt ×2, neg_nonpos_of_nonneg ×2, lt_of_not_ge ×1, sub_nonpos_of_le ×1, mul_nonneg_of_nonpos_of_nonpos ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1, Linarith.natCast_nonneg ×1 (cited in this block, not counted here: le_of_lt [Lean recorded ×1])
    // UNCITED-APPLIED Nat.cast_one: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
    NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 240)]
    if (((1.0 - ((x as real) * (y as real)))) < (0.0)) { LeOfLt((1.0 - ((x as real) * (y as real))), 0.0); }  // cite: le_of_lt [applied by the tactic, not named in it]
    // UNCITED-APPLIED internal ×89 [exec 240 998-1007]: applications made inside the tactic's own automation, not stated — Nat.cast_one ×1; machinery/glue: Mathlib.Tactic.Ring.neg_add ×5, Mathlib.Tactic.Ring.neg_mul ×5, Mathlib.Tactic.Ring.mul_pf_left ×5, Mathlib.Tactic.Ring.add_pf_zero_add ×4 (+32 more heads, ×69) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
  }
  // have hlogx : Real.log > 0  [type from Lean state]
  assert (Real.log((x as real)) > 0.0) by { // @tac 1057-1098 // @tac 1057-1075
    // [TACTIC: «_<;>_» Real.log_pos apply Real.log_pos <;> simpa using hx simpa using hx]
    // [TACTIC: choice Real.log_pos apply Real.log_pos]
    assert (1.0 < ((x as real)));  // precondition of RealLogPos (Lean: Real.log_pos)
    RealLogPos((x as real));  // cite: Real.log_pos
    assert (1.0 < (x as real));  // sub-goal of `simpa` (Lean state) // @tac 1084-1098
    // UNCITED-APPLIED internal ×1 [exec 271 1084-1098]: applications made inside the tactic's own automation, not stated — machinery/glue: Eq.trans ×1
  }
  // have hlogy : Real.log > 0  [type from Lean state]
  assert (Real.log((y as real)) > 0.0) by { // @tac 1148-1189 // @tac 1148-1166
    // [TACTIC: «_<;>_» Real.log_pos apply Real.log_pos <;> simpa using hy simpa using hy]
    // [TACTIC: choice Real.log_pos apply Real.log_pos]
    assert (1.0 < ((y as real)));  // precondition of RealLogPos (Lean: Real.log_pos)
    RealLogPos((y as real));  // cite: Real.log_pos
    assert (1.0 < (y as real));  // sub-goal of `simpa` (Lean state) // @tac 1175-1189
    // UNCITED-APPLIED internal ×1 [exec 302 1175-1189]: applications made inside the tactic's own automation, not stated — machinery/glue: Eq.trans ×1
  }
  // have hlogz : Real.log > 0  [type from Lean state]
  assert (Real.log((z as real)) > 0.0) by { // @tac 1239-1280 // @tac 1239-1257
    // [TACTIC: «_<;>_» Real.log_pos apply Real.log_pos <;> simpa using hz simpa using hz]
    // [TACTIC: choice Real.log_pos apply Real.log_pos]
    assert (1.0 < ((z as real)));  // precondition of RealLogPos (Lean: Real.log_pos)
    RealLogPos((z as real));  // cite: Real.log_pos
    assert (1.0 < (z as real));  // sub-goal of `simpa` (Lean state) // @tac 1266-1280
    // UNCITED-APPLIED internal ×1 [exec 333 1266-1280]: applications made inside the tactic's own automation, not stated — machinery/glue: Eq.trans ×1
  }
  // have hlogxyz : Real.log ( (  * y * z ) ) > 0  [type from Lean state]
  assert (Real.log((((x as real) * (y as real)) * (z as real))) > 0.0) by { // @tac 1342-1792 // @tac 1797-1806
    // have h₁ : Real.log ( (  * y * z ) ) == Real.log ( (  * y ) ) + Real.log  [type from Lean state]
    assert (Real.log((((x as real) * (y as real)) * (z as real))) == (Real.log(((x as real) * (y as real))) + Real.log((z as real)))) by { // @tac 1443-1489 // @tac 1496-1538 // @tac 1545-1776 // @tac 1783-1792
      // have h₂ :  * y > 0  [type from Lean state]
      assert (((x as real) * (y as real)) > 0.0) by { // @tac 1479-1489
        // [TACTIC: Positivity]
        // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 1479-1489 exec 382)
        if (0.0 < (x as real)) && (0.0 < (y as real)) { cert_piece_8(x, y, z, w); }  // cert: mul_pos
        // UNCITED-APPLIED internal ×5 [exec 382 1479-1489]: applications made inside the tactic's own automation, not stated — lt_trans ×2, Mathlib.Meta.Positivity.pos_of_isNat ×1, Nat.cast_one ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: mul_pos [Lean recorded ×1])
        assert (0.0 < ((x as real))) && (0.0 < ((y as real)));  // precondition of MulPos (Lean: mul_pos)
        MulPos((x as real), (y as real));  // cite: mul_pos [applied by the tactic, not named in it]
        // UNCITED-APPLIED Nat.cast_one: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
      }
      // have h₃ :  > 0  [type from Lean state]
      assert ((z as real) > 0.0); // @tac 1528-1538
        // [TACTIC: Positivity]
        // UNCITED-APPLIED internal ×4 [exec 399 1528-1538]: applications made inside the tactic's own automation, not stated — lt_trans ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1, Nat.cast_one ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1
        // UNCITED-APPLIED Nat.cast_one: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
      // have h₄ : Real.log ( (  * y * z ) ) == Real.log ( (  * y ) ) + Real.log  [type from Lean state]
      assert (Real.log((((x as real) * (y as real)) * (z as real))) == (Real.log(((x as real) * (y as real))) + Real.log((z as real)))) by { // @tac 1648-1776 // @tac 1648-1759 // @tac 1648-1697
        assert (((x as real) * (y as real)) != 0.0) by {  // sub-goal of `by` (Lean state) // @tac 1669-1679
          // [TACTIC: Positivity]
          // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 1669-1679 exec 437)
          if (0.0 < (x as real)) && (0.0 < (y as real)) { cert_piece_9(x, y, z, w); }  // cert: mul_pos
          // UNCITED-APPLIED internal ×6 [exec 437 1669-1679]: applications made inside the tactic's own automation, not stated — lt_trans ×2, ne_of_gt ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1, Nat.cast_one ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: mul_pos [Lean recorded ×1])
          assert (0.0 < ((x as real))) && (0.0 < ((y as real)));  // precondition of MulPos (Lean: mul_pos)
          MulPos((x as real), (y as real));  // cite: mul_pos [applied by the tactic, not named in it]
          // UNCITED-APPLIED Nat.cast_one: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
        }
        assert ((z as real) != 0.0) by {  // sub-goal of `by` (Lean state) // @tac 1685-1695
          // [TACTIC: Positivity]
          // UNCITED-APPLIED internal ×5 [exec 442 1685-1695]: applications made inside the tactic's own automation, not stated — ne_of_gt ×1, lt_trans ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1, Nat.cast_one ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1
          // UNCITED-APPLIED Nat.cast_one: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
        }
        // [TACTIC: «_<;>_» [ Real.log_mul ( by positivity ) ( by positivity ) ] rw [ Real.log_mul ( by positivity ) ( by positivity ) ] <;> rw [ Real.log_mul ( by positivity ) ( by positivity ) ] rw [ Real.log_mul ( by positivity ) ( by positivity ) ] <;> ring]
        // [TACTIC: rwSeq [ Real.log_mul ( by positivity ) ( by positivity ) ]]
        // `rw` closed the goal; the rest of the chain did not run
        // [TACTIC: Positivity]
        // [TACTIC: Positivity]
        assert ((((x as real) * (y as real))) != 0.0) && (((z as real)) != 0.0);  // precondition of RealLogMul (Lean: Real.log_mul)
        RealLogMul(((x as real) * (y as real)), (z as real));  // cite: Real.log_mul
        // UNCITED-APPLIED congrArg(Real.log (↑x * ↑y * ↑z), Real.log (↑x * ↑y) + Real.log ↑z, fun (_a : ℝ) => _a = Real.log (↑x * ↑y) + Real.log ↑z): no library counterpart (not stated) [exec 430 1648-1697]
      }
      // [TACTIC: rwSeq [ h₄ ]]
      // UNCITED-APPLIED congrArg(Real.log (↑x * ↑y * ↑z), Real.log (↑x * ↑y) + Real.log ↑z, fun (_a : ℝ) => _a = Real.log (↑x * ↑y) + Real.log ↑z): no library counterpart (not stated) [exec 477 1783-1792]
    }
    // [TACTIC: rwSeq [ h₁ ]]
    // UNCITED-APPLIED congrArg(Real.log (↑x * ↑y * ↑z), Real.log (↑x * ↑y) + Real.log ↑z, fun (_a : ℝ) => _a > (0 : ℝ)): no library counterpart (not stated) [exec 502 1797-1806]
    assert ((Real.log(((x as real) * (y as real))) + Real.log((z as real))) > 0.0) by {  // sub-goal before `have` (Lean state) // @tac 1811-2049 // @tac 2054-2063
      // have h₂ : Real.log ( (  * y ) ) == Real.log + Real.log  [type from Lean state]
      assert (Real.log(((x as real) * (y as real))) == (Real.log((x as real)) + Real.log((y as real)))) by { // @tac 1902-1944 // @tac 1951-1993 // @tac 2000-2049
        // have h₃ : 0 <   [type from Lean state]
        assert (0.0 < (x as real)); // @tac 1934-1944
          // [TACTIC: Positivity]
          // UNCITED-APPLIED internal ×4 [exec 561 1934-1944]: applications made inside the tactic's own automation, not stated — lt_trans ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1, Nat.cast_one ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1
          // UNCITED-APPLIED Nat.cast_one: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
        // have h₄ : 0 <   [type from Lean state]
        assert (0.0 < (y as real)); // @tac 1983-1993
          // [TACTIC: Positivity]
          // UNCITED-APPLIED internal ×4 [exec 578 1983-1993]: applications made inside the tactic's own automation, not stated — lt_trans ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1, Nat.cast_one ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1
          // UNCITED-APPLIED Nat.cast_one: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
        assert ((x as real) != 0.0) by {  // sub-goal of `by` (Lean state) // @tac 2021-2031
          // [TACTIC: Positivity]
          // UNCITED-APPLIED internal ×5 [exec 590 2021-2031]: applications made inside the tactic's own automation, not stated — ne_of_gt ×1, lt_trans ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1, Nat.cast_one ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1
          // UNCITED-APPLIED Nat.cast_one: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
        }
        assert ((y as real) != 0.0) by {  // sub-goal of `by` (Lean state) // @tac 2037-2047
          // [TACTIC: Positivity]
          // UNCITED-APPLIED internal ×5 [exec 595 2037-2047]: applications made inside the tactic's own automation, not stated — ne_of_gt ×1, lt_trans ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1, Nat.cast_one ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1
          // UNCITED-APPLIED Nat.cast_one: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
        }
        // [TACTIC: rwSeq [ Real.log_mul ( by positivity ) ( by positivity ) ]]
        assert (((x as real)) != 0.0) && (((y as real)) != 0.0);  // precondition of RealLogMul (Lean: Real.log_mul)
        RealLogMul((x as real), (y as real));  // cite: Real.log_mul
        // UNCITED-APPLIED congrArg(Real.log (↑x * ↑y), Real.log ↑x + Real.log ↑y, fun (_a : ℝ) => _a = Real.log ↑x + Real.log ↑y): no library counterpart (not stated) [exec 583 2000-2049]
      }
      // [TACTIC: rwSeq [ h₂ ]]
      // UNCITED-APPLIED congrArg(Real.log (↑x * ↑y), Real.log ↑x + Real.log ↑y, fun (_a : ℝ) => _a + Real.log ↑z > (0 : ℝ)): no library counterpart (not stated) [exec 618 2054-2063]
      assert (((Real.log((x as real)) + Real.log((y as real))) + Real.log((z as real))) > 0.0) by {  // sub-goal before `have` (Lean state) // @tac 2068-2111 // @tac 2116-2159 // @tac 2164-2207 // @tac 2212-2221
        // have h₃ : Real.log > 0  [type from Lean state]
        assert (Real.log((x as real)) > 0.0) by {
          // [TACTIC: exact hlogx]
          assert (Real.log((x as real)) > 0.0);
        }
        // have h₄ : Real.log > 0  [type from Lean state]
        assert (Real.log((y as real)) > 0.0) by {
          // [TACTIC: exact hlogy]
          assert (Real.log((y as real)) > 0.0);
        }
        // have h₅ : Real.log > 0  [type from Lean state]
        assert (Real.log((z as real)) > 0.0) by {
          // [TACTIC: exact hlogz]
          assert (Real.log((z as real)) > 0.0);
        }
        // [TACTIC: «Nlinarith[_]At___»]
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2212-2221 exec 681)
        // UNCITED-APPLIED Left.add_neg ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `-Real.log ↑x + -Real.log ↑y + -Real.log ↑z < (0 : ℝ)`
        cert_identity_10(x, y, z, w);  // cert: add_lt_of_neg_of_le
        // UNCITED-APPLIED internal ×10 [exec 681 2212-2221]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×3, Left.add_neg ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
        // UNCITED-APPLIED internal ×46 [exec 682 2212-2221]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×6, Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Tactic.Ring.add_pf_zero_add ×5, Mathlib.Tactic.Ring.neg_congr ×3 (+17 more heads, ×27) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 682)]
      }
    }
  }
  // have hlogw_pos : Real.log > 0  [type from Lean state]
  assert (Real.log((w as real)) > 0.0) by { // @tac 2275-2352 // @tac 2357-2400 // @tac 2405-2670 // @tac 2675-2685
    // have h₃ : Real.log / Real.log == 24  [type from Lean state]
    assert (Real.div(Real.log((w as real)), Real.log((x as real))) == 24.0); // @tac 2338-2352
      // [TACTIC: simpa using h0]
    // have h₄ : Real.log > 0  [type from Lean state]
    assert (Real.log((x as real)) > 0.0) by {
      // [TACTIC: exact hlogx]
      assert (Real.log((x as real)) > 0.0);
    }
    // have h₅ : Real.log > 0  [type from Lean state]
    assert (Real.log((w as real)) > 0.0) by { // @tac 2452-2463
      // UNCITED-APPLIED Decidable.byContradiction: no library counterpart (not stated) [exec 751 2452-2463]
      // by_contra h
      if !((Real.log((w as real)) > 0.0)) {
        assert false by {  // sub-goal before `have` (Lean state) // @tac 2470-2521 // @tac 2528-2655 // @tac 2662-2670
          // have h₆ : Real.log <= 0  [type from Lean state]
          assert (Real.log((w as real)) <= 0.0) by { // @tac 2513-2521
            // [TACTIC: «Linarith[_]At___»]
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2513-2521 exec 768)
            cert_identity_11(x, y, z, w);  // cert: add_lt_of_le_of_neg
            // UNCITED-APPLIED internal ×5 [exec 768 2513-2521]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, add_lt_of_le_of_neg ×1, neg_neg_of_pos ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
            // UNCITED-APPLIED internal ×20 [exec 769 2513-2521]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1, Mathlib.Tactic.Ring.neg_congr ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 769)]
          }
          // have h₇ : Real.log / Real.log <= 0  [type from Lean state]
          assert (Real.div(Real.log((w as real)), Real.log((x as real))) <= 0.0) by { // @tac 2600-2655
            assert (0.0 <= Real.log((x as real))) by {  // sub-goal of `by` (Lean state) // @tac 2646-2654
              // [TACTIC: «Linarith[_]At___»]
              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2646-2654 exec 791)
              cert_identity_12(x, y, z, w);  // cert: Left.add_neg
              // UNCITED-APPLIED internal ×6 [exec 791 2646-2654]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, Left.add_neg ×1, neg_neg_of_pos ×1, lt_zero_of_zero_gt ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
              // UNCITED-APPLIED internal ×20 [exec 792 2646-2654]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
              NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 792)]
            }
            // [TACTIC: exact div_nonpos_of_nonpos_of_nonneg h₆ ( by linarith linarith )]
            assert (Real.log((w as real)) <= 0.0);
            assert ((Real.log((w as real))) <= 0.0) && (0.0 <= (Real.log((x as real))));  // precondition of DivNonposOfNonposOfNonnegReal (Lean: div_nonpos_of_nonpos_of_nonneg)
            DivNonposOfNonposOfNonnegReal(Real.log((w as real)), Real.log((x as real)));  // cite: div_nonpos_of_nonpos_of_nonneg
          }
          // [TACTIC: «Linarith[_]At___»]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2662-2670 exec 793)
          // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(24 : ℝ) * (-1 : ℝ) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 1.0); (24.0 > 0.0)
          // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(24 : ℝ) * (-1 : ℝ) + -((1 : ℝ) * (Real.log ↑w / Real.log ↑x) - (1 : ℝ) * (24 : ℝ)) < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
          cert_identity_13(x, y, z, w);  // cert: add_lt_of_neg_of_le
          // UNCITED-APPLIED internal ×14 [exec 793 2662-2670]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×1, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1, CancelDenoms.sub_subst ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×3, Linarith.without_one_mul ×2, Linarith.lt_irrefl ×1, Linarith.lt_of_lt_of_eq ×1 (+1 more heads, ×1)
          // UNCITED-APPLIED Nat.cast_one: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 795 / `ring1` exec 794)]
          // UNCITED-APPLIED internal ×87 [exec 794 2662-2670]: applications made inside the tactic's own automation, not stated — Nat.cast_one ×1; machinery/glue: Mathlib.Tactic.Ring.neg_add ×4, Mathlib.Meta.NormNum.isInt_mul ×4, Mathlib.Tactic.Ring.add_mul ×4, Mathlib.Tactic.Ring.mul_add ×4 (+37 more heads, ×70) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 795 2662-2670]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        }
        assert false;
      }
    }
    // [TACTIC: exact h₅]
    assert (Real.log((w as real)) > 0.0);
  }
  // have hlogw_eq : Real.log == 24 * Real.log  [type from Lean state]
  assert (Real.log((w as real)) == (24.0 * Real.log((x as real)))) by { // @tac 2760-2837 // @tac 2842-2893 // @tac 2898-3015 // @tac 3020-3030
    // have h₃ : Real.log / Real.log == 24  [type from Lean state]
    assert (Real.div(Real.log((w as real)), Real.log((x as real))) == 24.0); // @tac 2823-2837
      // [TACTIC: simpa using h0]
    // have h₄ : Real.log != 0  [type from Lean state]
    assert (Real.log((x as real)) != 0.0) by { // @tac 2885-2893
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2885-2893 exec 846)
      cert_identity_14(x, y, z, w);  // cert: Linarith.lt_of_lt_of_eq
      // UNCITED-APPLIED internal ×5 [exec 846 2885-2893]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×1; machinery/glue: Not.intro ×1, Linarith.lt_irrefl ×1, congrArg ×1, Linarith.lt_of_lt_of_eq ×1
      // UNCITED-APPLIED internal ×20 [exec 847 2885-2893]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 847)]
    }
    // have h₅ : Real.log == 24 * Real.log  [type from Lean state]
    assert (Real.log((w as real)) == (24.0 * Real.log((x as real)))) by { // @tac 2967-3015 // @tac 2967-2996 // @tac 3007-3015
      // [TACTIC: «_<;>_» [ h₄ ] at h₃ ⊢ <;> linarith linarith]
      // [TACTIC: «Field_simp[_]At___» [ h₄ ] at h₃ ⊢]
      assert (Real.log((w as real)) == (24.0 * Real.log((x as real))));  // hypothesis h₃ after `field_simp` (Lean state) // @tac-hyp 2967-2996
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 879, 880)]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3007-3015 exec 878)
      cert_identity_15(x, y, z, w);  // cert: Linarith.lt_of_eq_of_lt
      cert_identity_16(x, y, z, w);  // cert: Linarith.lt_of_eq_of_lt
      // UNCITED-APPLIED internal ×11 [exec 878 3007-3015]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
      // UNCITED-APPLIED internal ×53 [exec 879 3007-3015]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×3, Mathlib.Tactic.Ring.neg_mul ×3, Mathlib.Tactic.Ring.neg_one_mul ×3, Mathlib.Meta.NormNum.isInt_mul ×3 (+29 more heads, ×41) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×49 [exec 880 3007-3015]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.sub_congr ×2, Mathlib.Tactic.Ring.atom_pf ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Tactic.Ring.sub_pf ×2 (+28 more heads, ×41) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    }
    // [TACTIC: exact h₅]
    assert (Real.log((w as real)) == (24.0 * Real.log((x as real))));
  }
  // have hlogw_eq' : Real.log == 40 * Real.log  [type from Lean state]
  assert (Real.log((w as real)) == (40.0 * Real.log((y as real)))) by { // @tac 3106-3183 // @tac 3188-3239 // @tac 3244-3361 // @tac 3366-3376
    // have h₃ : Real.log / Real.log == 40  [type from Lean state]
    assert (Real.div(Real.log((w as real)), Real.log((y as real))) == 40.0); // @tac 3169-3183
      // [TACTIC: simpa using h1]
    // have h₄ : Real.log != 0  [type from Lean state]
    assert (Real.log((y as real)) != 0.0) by { // @tac 3231-3239
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3231-3239 exec 931)
      cert_identity_17(x, y, z, w);  // cert: Linarith.lt_of_lt_of_eq
      // UNCITED-APPLIED internal ×5 [exec 931 3231-3239]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×1; machinery/glue: Not.intro ×1, Linarith.lt_irrefl ×1, congrArg ×1, Linarith.lt_of_lt_of_eq ×1
      // UNCITED-APPLIED internal ×20 [exec 932 3231-3239]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 932)]
    }
    // have h₅ : Real.log == 40 * Real.log  [type from Lean state]
    assert (Real.log((w as real)) == (40.0 * Real.log((y as real)))) by { // @tac 3313-3361 // @tac 3313-3342 // @tac 3353-3361
      // [TACTIC: «_<;>_» [ h₄ ] at h₃ ⊢ <;> linarith linarith]
      // [TACTIC: «Field_simp[_]At___» [ h₄ ] at h₃ ⊢]
      assert (Real.log((w as real)) == (40.0 * Real.log((y as real))));  // hypothesis h₃ after `field_simp` (Lean state) // @tac-hyp 3313-3342
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 964, 965)]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3353-3361 exec 963)
      cert_identity_18(x, y, z, w);  // cert: Linarith.lt_of_eq_of_lt
      cert_identity_19(x, y, z, w);  // cert: Linarith.lt_of_eq_of_lt
      // UNCITED-APPLIED internal ×11 [exec 963 3353-3361]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
      // UNCITED-APPLIED internal ×53 [exec 964 3353-3361]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×3, Mathlib.Tactic.Ring.neg_mul ×3, Mathlib.Tactic.Ring.neg_one_mul ×3, Mathlib.Meta.NormNum.isInt_mul ×3 (+29 more heads, ×41) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×49 [exec 965 3353-3361]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.sub_congr ×2, Mathlib.Tactic.Ring.atom_pf ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Tactic.Ring.sub_pf ×2 (+28 more heads, ×41) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    }
    // [TACTIC: exact h₅]
    assert (Real.log((w as real)) == (40.0 * Real.log((y as real))));
  }
  // have hlogxy : 3 * Real.log == 5 * Real.log  [type from Lean state]
  assert ((3.0 * Real.log((x as real))) == (5.0 * Real.log((y as real)))) by { // @tac 3452-3520 // @tac 3525-3594 // @tac 3599-3675 // @tac 3680-3790 // @tac 3795-3805
    // have h₁ : Real.log == 24 * Real.log  [type from Lean state]
    assert (Real.log((w as real)) == (24.0 * Real.log((x as real)))) by {
      // [TACTIC: exact hlogw_eq]
      assert (Real.log((w as real)) == (24.0 * Real.log((x as real))));
    }
    // have h₂ : Real.log == 40 * Real.log  [type from Lean state]
    assert (Real.log((w as real)) == (40.0 * Real.log((y as real))));
      // [TACTIC: exact hlogw_eq']
    // have h₃ : 24 * Real.log == 40 * Real.log  [type from Lean state]
    assert ((24.0 * Real.log((x as real))) == (40.0 * Real.log((y as real)))) by { // @tac 3667-3675
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3667-3675 exec 1023)
      // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `Real.log ↑w - (24 : ℝ) * Real.log ↑x + -(Real.log ↑w - (40 : ℝ) * Real.log ↑y) = (0 : ℝ)` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
      // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `-(Real.log ↑w - (24 : ℝ) * Real.log ↑x) + (Real.log ↑w - (40 : ℝ) * Real.log ↑y) = (0 : ℝ)` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
      cert_identity_20(x, y, z, w);  // cert: Linarith.lt_of_eq_of_lt
      cert_identity_21(x, y, z, w);  // cert: Linarith.lt_of_eq_of_lt
      // UNCITED-APPLIED internal ×15 [exec 1023 3667-3675]: applications made inside the tactic's own automation, not stated — sub_eq_zero_of_eq ×2, neg_eq_zero ×2, sub_neg_of_lt ×2; machinery/glue: congrArg ×2, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_eq_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1 (+2 more heads, ×2)
      // UNCITED-APPLIED internal ×86 [exec 1024 3667-3675]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×4, Mathlib.Tactic.Ring.neg_mul ×4, Mathlib.Tactic.Ring.neg_one_mul ×4, Mathlib.Meta.NormNum.isInt_mul ×4 (+29 more heads, ×70) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×85 [exec 1025 3667-3675]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×4, Mathlib.Tactic.Ring.neg_mul ×4, Mathlib.Tactic.Ring.neg_one_mul ×4, Mathlib.Meta.NormNum.isInt_mul ×4 (+30 more heads, ×69) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1024, 1025)]
    }
    // have h₄ : 3 * Real.log == 5 * Real.log  [type from Lean state]
    assert ((3.0 * Real.log((x as real))) == (5.0 * Real.log((y as real)))) by { // @tac 3752-3790 // @tac 3752-3771
      // [TACTIC: «_<;>_» at h₃ ⊢ <;> linarith linarith]
      // [TACTIC: Ring_nfAt at h₃ ⊢]
      PowOne(Real.log((x as real)));  // cite: pow_one [applied by the tactic, not named in it]
      PowOne(Real.log((y as real)));  // cite: pow_one [applied by the tactic, not named in it]
      // UNCITED-APPLIED internal ×37 [exec 1047 3752-3771]: applications made inside the tactic's own automation, not stated — add_zero ×2; machinery/glue: Eq.trans ×6, congrArg ×5, Mathlib.Tactic.Ring.mul_congr ×2, Mathlib.Tactic.Ring.cast_pos ×2 (+11 more heads, ×20) (cited in this block, not counted here: pow_one [Lean recorded ×2])
      assert ((Real.log((x as real)) * 24.0) == (Real.log((y as real)) * 40.0));  // hypothesis h₃ after `ring_nf` (Lean state) // @tac-hyp 3752-3771
      assert ((Real.log((x as real)) * 3.0) == (Real.log((y as real)) * 5.0)) by {  // sub-goal of `linarith` (Lean state) // @tac 3782-3790
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 1058, 1060 / `ring1` exec 1057, 1059)]
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3782-3790 exec 1056)
        // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(8 : ℝ) * (Real.log ↑x * (3 : ℝ) - Real.log ↑y * (5 : ℝ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((Real.log((x as real)) * 3.0) - (Real.log((y as real)) * 5.0)) < 0.0); (8.0 > 0.0)
        // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(8 : ℝ) * (Real.log ↑y * (5 : ℝ) - Real.log ↑x * (3 : ℝ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((Real.log((y as real)) * 5.0) - (Real.log((x as real)) * 3.0)) < 0.0); (8.0 > 0.0)
        // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `Real.log ↑w - (24 : ℝ) * Real.log ↑x + -(Real.log ↑w - (40 : ℝ) * Real.log ↑y) = (0 : ℝ)` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
        // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `-(Real.log ↑w - (24 : ℝ) * Real.log ↑x) + (Real.log ↑w - (40 : ℝ) * Real.log ↑y) = (0 : ℝ)` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
        cert_identity_22(x, y, z, w);  // cert: Linarith.lt_of_eq_of_lt
        cert_identity_23(x, y, z, w);  // cert: Linarith.lt_of_eq_of_lt
        // UNCITED-APPLIED internal ×17 [exec 1056 3782-3790]: applications made inside the tactic's own automation, not stated — sub_eq_zero_of_eq ×2, neg_eq_zero ×2, sub_neg_of_lt ×2; machinery/glue: congrArg ×2, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_eq_of_eq ×2, Linarith.mul_neg ×2 (+3 more heads, ×3)
        // UNCITED-APPLIED internal ×135 [exec 1057 3782-3790]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×6, Mathlib.Tactic.Ring.mul_add ×6, Mathlib.Tactic.Ring.add_pf_add_zero ×6, Mathlib.Meta.NormNum.isInt_mul ×6 (+32 more heads, ×111) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×5 [exec 1058 3782-3790]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×133 [exec 1059 3782-3790]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×6, Mathlib.Tactic.Ring.mul_add ×6, Mathlib.Meta.NormNum.isInt_mul ×6, Mathlib.Meta.NormNum.IsNat.of_raw ×6 (+33 more heads, ×109) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×5 [exec 1060 3782-3790]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      }
    }
    // [TACTIC: exact h₄]
    assert ((3.0 * Real.log((x as real))) == (5.0 * Real.log((y as real))));
  }
  // have hlogxyz_eq : Real.log == 12 * ( Real.log + Real.log + Real.log )  [type from Lean state]
  assert (Real.log((w as real)) == (12.0 * ((Real.log((x as real)) + Real.log((y as real))) + Real.log((z as real))))) by { // @tac 3926-4013 // @tac 4018-4938 // @tac 4943-4960 // @tac 4965-5088 // @tac 5093-5280 // @tac 5285-5394 // @tac 5285-5314 // @tac 5323-5394
    // have h₃ : Real.log / Real.log ( (  * y * z ) ) == 12  [type from Lean state]
    assert (Real.div(Real.log((w as real)), Real.log((((x as real) * (y as real)) * (z as real)))) == 12.0); // @tac 3999-4013
      // [TACTIC: simpa using h2]
    // have h₄ : Real.log ( (  * y * z ) ) == Real.log + Real.log + Real.log  [type from Lean state]
    assert (Real.log((((x as real) * (y as real)) * (z as real))) == ((Real.log((x as real)) + Real.log((y as real))) + Real.log((z as real)))) by { // @tac 4134-4515 // @tac 4522-4531
      // have h₅ : Real.log ( (  * y * z ) ) == Real.log ( (  * y ) ) + Real.log  [type from Lean state]
      assert (Real.log((((x as real) * (y as real)) * (z as real))) == (Real.log(((x as real) * (y as real))) + Real.log((z as real)))) by { // @tac 4237-4283 // @tac 4292-4334 // @tac 4343-4497 // @tac 4506-4515
        // have h₆ : 0 <  * y  [type from Lean state]
        assert (0.0 < ((x as real) * (y as real))) by { // @tac 4273-4283
          // [TACTIC: Positivity]
          // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 4273-4283 exec 1143)
          if (0.0 < (x as real)) && (0.0 < (y as real)) { cert_piece_24(x, y, z, w); }  // cert: mul_pos
          // UNCITED-APPLIED internal ×5 [exec 1143 4273-4283]: applications made inside the tactic's own automation, not stated — lt_trans ×2, Mathlib.Meta.Positivity.pos_of_isNat ×1, Nat.cast_one ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: mul_pos [Lean recorded ×1])
          assert (0.0 < ((x as real))) && (0.0 < ((y as real)));  // precondition of MulPos (Lean: mul_pos)
          MulPos((x as real), (y as real));  // cite: mul_pos [applied by the tactic, not named in it]
          // UNCITED-APPLIED Nat.cast_one: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
        }
        // have h₇ : 0 <   [type from Lean state]
        assert (0.0 < (z as real)); // @tac 4324-4334
          // [TACTIC: Positivity]
          // UNCITED-APPLIED internal ×4 [exec 1160 4324-4334]: applications made inside the tactic's own automation, not stated — lt_trans ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1, Nat.cast_one ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1
          // UNCITED-APPLIED Nat.cast_one: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
        // have h₈ : Real.log ( (  * y * z ) ) == Real.log ( (  * y ) ) + Real.log  [type from Lean state]
        assert (Real.log((((x as real) * (y as real)) * (z as real))) == (Real.log(((x as real) * (y as real))) + Real.log((z as real)))) by { // @tac 4448-4497
          assert (((x as real) * (y as real)) != 0.0) by {  // sub-goal of `by` (Lean state) // @tac 4469-4479
            // [TACTIC: Positivity]
            // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 4469-4479 exec 1188)
            if (0.0 < (x as real)) && (0.0 < (y as real)) { cert_piece_25(x, y, z, w); }  // cert: mul_pos
            // UNCITED-APPLIED internal ×6 [exec 1188 4469-4479]: applications made inside the tactic's own automation, not stated — lt_trans ×2, ne_of_gt ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1, Nat.cast_one ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: mul_pos [Lean recorded ×1])
            assert (0.0 < ((x as real))) && (0.0 < ((y as real)));  // precondition of MulPos (Lean: mul_pos)
            MulPos((x as real), (y as real));  // cite: mul_pos [applied by the tactic, not named in it]
            // UNCITED-APPLIED Nat.cast_one: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
          }
          assert ((z as real) != 0.0) by {  // sub-goal of `by` (Lean state) // @tac 4485-4495
            // [TACTIC: Positivity]
            // UNCITED-APPLIED internal ×5 [exec 1193 4485-4495]: applications made inside the tactic's own automation, not stated — ne_of_gt ×1, lt_trans ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1, Nat.cast_one ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1
            // UNCITED-APPLIED Nat.cast_one: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
          }
          // [TACTIC: rwSeq [ Real.log_mul ( by positivity ) ( by positivity ) ]]
          assert ((((x as real) * (y as real))) != 0.0) && (((z as real)) != 0.0);  // precondition of RealLogMul (Lean: Real.log_mul)
          RealLogMul(((x as real) * (y as real)), (z as real));  // cite: Real.log_mul
          // UNCITED-APPLIED congrArg(Real.log (↑x * ↑y * ↑z), Real.log (↑x * ↑y) + Real.log ↑z, fun (_a : ℝ) => _a = Real.log (↑x * ↑y) + Real.log ↑z): no library counterpart (not stated) [exec 1181 4448-4497]
        }
        // [TACTIC: rwSeq [ h₈ ]]
        // UNCITED-APPLIED congrArg(Real.log (↑x * ↑y * ↑z), Real.log (↑x * ↑y) + Real.log ↑z, fun (_a : ℝ) => _a = Real.log (↑x * ↑y) + Real.log ↑z): no library counterpart (not stated) [exec 1216 4506-4515]
      }
      // [TACTIC: rwSeq [ h₅ ]]
      // UNCITED-APPLIED congrArg(Real.log (↑x * ↑y * ↑z), Real.log (↑x * ↑y) + Real.log ↑z, fun (_a : ℝ) => _a = Real.log ↑x + Real.log ↑y + Real.log ↑z): no library counterpart (not stated) [exec 1241 4522-4531]
      assert ((Real.log(((x as real) * (y as real))) + Real.log((z as real))) == ((Real.log((x as real)) + Real.log((y as real))) + Real.log((z as real)))) by {  // sub-goal before `have` (Lean state) // @tac 4538-4907 // @tac 4914-4938 // @tac 4914-4923
        // have h₉ : Real.log ( (  * y ) ) == Real.log + Real.log  [type from Lean state]
        assert (Real.log(((x as real) * (y as real))) == (Real.log((x as real)) + Real.log((y as real)))) by { // @tac 4631-4676 // @tac 4685-4730 // @tac 4739-4886 // @tac 4895-4907
          // have h₁₀ : 0 <   [type from Lean state]
          assert (0.0 < (x as real)); // @tac 4666-4676
            // [TACTIC: Positivity]
            // UNCITED-APPLIED internal ×4 [exec 1300 4666-4676]: applications made inside the tactic's own automation, not stated — lt_trans ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1, Nat.cast_one ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1
            // UNCITED-APPLIED Nat.cast_one: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
          // have h₁₁ : 0 <   [type from Lean state]
          assert (0.0 < (y as real)); // @tac 4720-4730
            // [TACTIC: Positivity]
            // UNCITED-APPLIED internal ×4 [exec 1317 4720-4730]: applications made inside the tactic's own automation, not stated — lt_trans ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1, Nat.cast_one ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1
            // UNCITED-APPLIED Nat.cast_one: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
          // have h₁₂ : Real.log ( (  * y ) ) == Real.log + Real.log  [type from Lean state]
          assert (Real.log(((x as real) * (y as real))) == (Real.log((x as real)) + Real.log((y as real)))) by { // @tac 4837-4886
            assert ((x as real) != 0.0) by {  // sub-goal of `by` (Lean state) // @tac 4858-4868
              // [TACTIC: Positivity]
              // UNCITED-APPLIED internal ×5 [exec 1345 4858-4868]: applications made inside the tactic's own automation, not stated — ne_of_gt ×1, lt_trans ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1, Nat.cast_one ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1
              // UNCITED-APPLIED Nat.cast_one: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
            }
            assert ((y as real) != 0.0) by {  // sub-goal of `by` (Lean state) // @tac 4874-4884
              // [TACTIC: Positivity]
              // UNCITED-APPLIED internal ×5 [exec 1350 4874-4884]: applications made inside the tactic's own automation, not stated — ne_of_gt ×1, lt_trans ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1, Nat.cast_one ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×1
              // UNCITED-APPLIED Nat.cast_one: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
            }
            // [TACTIC: rwSeq [ Real.log_mul ( by positivity ) ( by positivity ) ]]
            assert (((x as real)) != 0.0) && (((y as real)) != 0.0);  // precondition of RealLogMul (Lean: Real.log_mul)
            RealLogMul((x as real), (y as real));  // cite: Real.log_mul
            // UNCITED-APPLIED congrArg(Real.log (↑x * ↑y), Real.log ↑x + Real.log ↑y, fun (_a : ℝ) => _a = Real.log ↑x + Real.log ↑y): no library counterpart (not stated) [exec 1338 4837-4886]
          }
          // [TACTIC: rwSeq [ h₁₂ ]]
          // UNCITED-APPLIED congrArg(Real.log (↑x * ↑y), Real.log ↑x + Real.log ↑y, fun (_a : ℝ) => _a = Real.log ↑x + Real.log ↑y): no library counterpart (not stated) [exec 1373 4895-4907]
        }
        // [TACTIC: «_<;>_» [ h₉ ] rw [ h₉ ] <;> ring]
        // [TACTIC: rwSeq [ h₉ ]]
        // `rw` closed the goal; the rest of the chain did not run
        // UNCITED-APPLIED congrArg(Real.log (↑x * ↑y), Real.log ↑x + Real.log ↑y, fun (_a : ℝ) => _a + Real.log ↑z = Real.log ↑x + Real.log ↑y + Real.l…): no library counterpart (not stated) [exec 1403 4914-4923]
      }
    }
    // [TACTIC: rwSeq [ h₄ ] at h₃]
    assert (Real.div(Real.log((w as real)), ((Real.log((x as real)) + Real.log((y as real))) + Real.log((z as real)))) == 12.0);  // hypothesis h₃ after `rw` (Lean state) // @tac-hyp 4943-4960
    // have h₅ : Real.log / ( Real.log + Real.log + Real.log ) == 12  [type from Lean state]
    assert (Real.div(Real.log((w as real)), ((Real.log((x as real)) + Real.log((y as real))) + Real.log((z as real)))) == 12.0); // @tac 5072-5088
      // [TACTIC: simpa using h₃]
    // UNCITED-APPLIED internal ×1 [exec 1477 5072-5088]: applications made inside the tactic's own automation, not stated — machinery/glue: congrArg ×1
    // have h₆ : Real.log + Real.log + Real.log != 0  [type from Lean state]
    assert (((Real.log((x as real)) + Real.log((y as real))) + Real.log((z as real))) != 0.0) by { // @tac 5184-5195
      // by_contra h
      if !((((Real.log((x as real)) + Real.log((y as real))) + Real.log((z as real))) != 0.0)) {
        if ((((Real.log((x as real)) + Real.log((y as real))) + Real.log((z as real))) == 0.0)) {  // sub-goal before `rw` (Lean state)
          // [TACTIC: rwSeq [ h ] at h₅]
          assert (Real.div(Real.log((w as real)), 0.0) == 12.0);  // hypothesis h₅ after `rw` (Lean state) // @tac-hyp 5202-5216
          // [TACTIC: «_<;>_» at h₅ norm_num at h₅ <;> linarith [ hlogx , hlogy , hlogz ] linarith [ hlogx , hlogy , hlogz ]]
          // [TACTIC: «Norm_num[_]At___» at h₅]
          // `norm_num` closed the goal; the rest of the chain did not run
          assert false;  // sub-goal before `rw` (Lean state) // @tac 5202-5216 // @tac 5223-5280 // @tac 5223-5239
        }
        assert false;
      }
      // UNCITED-APPLIED internal ×5 [exec 1537 5223-5239]: applications made inside the tactic's own automation, not stated — div_zero ×1; machinery/glue: congrArg ×2, Eq.trans ×1, eq_false ×1
    }
    // [TACTIC: «_<;>_» [ h₆ ] at h₅ ⊢ <;> nlinarith [ hlogx , hlogy , hlogz , hlogw_pos , hlogw_eq , hlogw_eq' , hlogxy ] nlinarith [ hlogx , hlogy , hlogz , hlogw_pos , hlogw_eq , hlogw_eq' , hlogxy ]]
    // [TACTIC: «Field_simp[_]At___» [ h₆ ] at h₅ ⊢]
    assert (Real.log((w as real)) == (12.0 * ((Real.log((x as real)) + Real.log((y as real))) + Real.log((z as real)))));  // hypothesis h₅ after `field_simp` (Lean state) // @tac-hyp 5285-5314
    NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1559, 1560)]
    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 5323-5394 exec 1558)
    cert_identity_26(x, y, z, w);  // cert: Linarith.lt_of_eq_of_lt
    cert_identity_27(x, y, z, w);  // cert: Linarith.lt_of_eq_of_lt
    // UNCITED-APPLIED internal ×11 [exec 1558 5323-5394]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
    // UNCITED-APPLIED internal ×83 [exec 1559 5323-5394]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×7, Mathlib.Tactic.Ring.neg_mul ×7, Mathlib.Tactic.Ring.add_pf_add_lt ×6, Mathlib.Tactic.Ring.add_pf_zero_add ×6 (+29 more heads, ×57) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
    // UNCITED-APPLIED internal ×75 [exec 1560 5323-5394]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×6, Mathlib.Tactic.Ring.add_pf_zero_add ×6, Mathlib.Tactic.Ring.atom_pf ×4, Mathlib.Tactic.Ring.neg_add ×4 (+28 more heads, ×55) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
  }
  // have hlogx_rel : Real.log == Real.log + Real.log  [type from Lean state]
  assert (Real.log((x as real)) == (Real.log((y as real)) + Real.log((z as real)))) by { // @tac 5486-5554 // @tac 5559-5673 // @tac 5678-5798 // @tac 5803-5915 // @tac 5920-6007 // @tac 6012-6022
    // have h₃ : Real.log == 24 * Real.log  [type from Lean state]
    assert (Real.log((w as real)) == (24.0 * Real.log((x as real)))) by {
      // [TACTIC: exact hlogw_eq]
      assert (Real.log((w as real)) == (24.0 * Real.log((x as real))));
    }
    // have h₄ : Real.log == 12 * ( Real.log + Real.log + Real.log )  [type from Lean state]
    assert (Real.log((w as real)) == (12.0 * ((Real.log((x as real)) + Real.log((y as real))) + Real.log((z as real))))) by {
      // [TACTIC: exact hlogxyz_eq]
      assert (Real.log((w as real)) == (12.0 * ((Real.log((x as real)) + Real.log((y as real))) + Real.log((z as real)))));
    }
    // have h₅ : 24 * Real.log == 12 * ( Real.log + Real.log + Real.log )  [type from Lean state]
    assert ((24.0 * Real.log((x as real))) == (12.0 * ((Real.log((x as real)) + Real.log((y as real))) + Real.log((z as real))))) by { // @tac 5790-5798
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 5790-5798 exec 1617)
      // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `Real.log ↑w - (24 : ℝ) * Real.log ↑x + -(Real.log ↑w - (12 : ℝ) * (Real.log ↑x + Real.log ↑y + Real.log ↑z)) = (0 : ℝ)` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
      // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `-(Real.log ↑w - (24 : ℝ) * Real.log ↑x) + (Real.log ↑w - (12 : ℝ) * (Real.log ↑x + Real.log ↑y + Real.log ↑z)) = (0 : ℝ)` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
      cert_identity_28(x, y, z, w);  // cert: Linarith.lt_of_eq_of_lt
      cert_identity_29(x, y, z, w);  // cert: Linarith.lt_of_eq_of_lt
      // UNCITED-APPLIED internal ×15 [exec 1617 5790-5798]: applications made inside the tactic's own automation, not stated — sub_eq_zero_of_eq ×2, neg_eq_zero ×2, sub_neg_of_lt ×2; machinery/glue: congrArg ×2, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_eq_of_eq ×2, Linarith.eq_of_not_lt_of_not_gt ×1 (+2 more heads, ×2)
      // UNCITED-APPLIED internal ×119 [exec 1618 5790-5798]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.neg_mul ×8, Mathlib.Tactic.Ring.add_pf_add_lt ×7, Mathlib.Tactic.Ring.add_pf_zero_add ×7 (+31 more heads, ×89) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×117 [exec 1619 5790-5798]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_zero_add ×8, Mathlib.Tactic.Ring.add_pf_add_lt ×7, Mathlib.Tactic.Ring.neg_add ×6, Mathlib.Tactic.Ring.neg_mul ×6 (+31 more heads, ×90) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1618, 1619)]
    }
    // have h₆ : 2 * Real.log == Real.log + Real.log + Real.log  [type from Lean state]
    assert ((2.0 * Real.log((x as real))) == ((Real.log((x as real)) + Real.log((y as real))) + Real.log((z as real)))) by { // @tac 5907-5915
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 5907-5915 exec 1636)
      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(12 : ℝ) * ((2 : ℝ) * Real.log ↑x - (Real.log ↑x + Real.log ↑y + Real.log ↑z)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((2.0 * Real.log((x as real))) - ((Real.log((x as real)) + Real.log((y as real))) + Real.log((z as real)))) < 0.0); (12.0 > 0.0)
      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(12 : ℝ) * (Real.log ↑x + Real.log ↑y + Real.log ↑z - (2 : ℝ) * Real.log ↑x) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((Real.log((x as real)) + Real.log((y as real))) + Real.log((z as real))) - (2.0 * Real.log((x as real)))) < 0.0); (12.0 > 0.0)
      // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `Real.log ↑w - (24 : ℝ) * Real.log ↑x + -(Real.log ↑w - (12 : ℝ) * (Real.log ↑x + Real.log ↑y + Real.log ↑z)) = (0 : ℝ)` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
      // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `-(Real.log ↑w - (24 : ℝ) * Real.log ↑x) + (Real.log ↑w - (12 : ℝ) * (Real.log ↑x + Real.log ↑y + Real.log ↑z)) = (0 : ℝ)` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
      cert_identity_30(x, y, z, w);  // cert: Linarith.lt_of_eq_of_lt
      cert_identity_31(x, y, z, w);  // cert: Linarith.lt_of_eq_of_lt
      // UNCITED-APPLIED internal ×17 [exec 1636 5907-5915]: applications made inside the tactic's own automation, not stated — sub_eq_zero_of_eq ×2, neg_eq_zero ×2, sub_neg_of_lt ×2; machinery/glue: congrArg ×2, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_eq_of_eq ×2, Linarith.mul_neg ×2 (+3 more heads, ×3)
      // UNCITED-APPLIED internal ×143 [exec 1637 5907-5915]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.neg_mul ×8, Mathlib.Tactic.Ring.add_pf_add_lt ×8 (+31 more heads, ×111) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 1638 5907-5915]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×143 [exec 1639 5907-5915]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×8, Mathlib.Tactic.Ring.add_pf_zero_add ×8, Mathlib.Tactic.Ring.neg_add ×7, Mathlib.Tactic.Ring.neg_mul ×7 (+31 more heads, ×113) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 1640 5907-5915]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 1638, 1640 / `ring1` exec 1637, 1639)]
    }
    // have h₇ : Real.log == Real.log + Real.log  [type from Lean state]
    assert (Real.log((x as real)) == (Real.log((y as real)) + Real.log((z as real)))) by { // @tac 5999-6007
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 5999-6007 exec 1657)
      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(12 : ℝ) * (Real.log ↑x - (Real.log ↑y + Real.log ↑z)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((Real.log((x as real)) - (Real.log((y as real)) + Real.log((z as real)))) < 0.0); (12.0 > 0.0)
      // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(12 : ℝ) * (Real.log ↑y + Real.log ↑z - Real.log ↑x) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((Real.log((y as real)) + Real.log((z as real))) - Real.log((x as real))) < 0.0); (12.0 > 0.0)
      // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `Real.log ↑w - (24 : ℝ) * Real.log ↑x + -(Real.log ↑w - (12 : ℝ) * (Real.log ↑x + Real.log ↑y + Real.log ↑z)) = (0 : ℝ)` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
      // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `-(Real.log ↑w - (24 : ℝ) * Real.log ↑x) + (Real.log ↑w - (12 : ℝ) * (Real.log ↑x + Real.log ↑y + Real.log ↑z)) = (0 : ℝ)` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
      cert_identity_32(x, y, z, w);  // cert: Linarith.lt_of_eq_of_lt
      cert_identity_33(x, y, z, w);  // cert: Linarith.lt_of_eq_of_lt
      // UNCITED-APPLIED internal ×17 [exec 1657 5999-6007]: applications made inside the tactic's own automation, not stated — sub_eq_zero_of_eq ×2, neg_eq_zero ×2, sub_neg_of_lt ×2; machinery/glue: congrArg ×2, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_eq_of_eq ×2, Linarith.mul_neg ×2 (+3 more heads, ×3)
      // UNCITED-APPLIED internal ×128 [exec 1658 5999-6007]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.neg_mul ×8, Mathlib.Tactic.Ring.add_pf_add_lt ×8, Mathlib.Tactic.Ring.mul_add ×7 (+31 more heads, ×97) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 1659 5999-6007]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×126 [exec 1660 5999-6007]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×8, Mathlib.Tactic.Ring.add_pf_zero_add ×8, Mathlib.Tactic.Ring.neg_add ×7, Mathlib.Tactic.Ring.neg_mul ×7 (+32 more heads, ×96) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      // UNCITED-APPLIED internal ×5 [exec 1661 5999-6007]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 1659, 1661 / `ring1` exec 1658, 1660)]
    }
    // [TACTIC: exact h₇]
    assert (Real.log((x as real)) == (Real.log((y as real)) + Real.log((z as real))));
  }
  // have hlogz_rel : Real.log == 2 / 5 * Real.log  [type from Lean state]
  assert (Real.log((z as real)) == ((2.0 / 5.0) * Real.log((x as real)))) by { // @tac 6109-6178 // @tac 6183-6268 // @tac 6273-6614 // @tac 6619-6863 // @tac 6868-6878
    // have h₃ : 3 * Real.log == 5 * Real.log  [type from Lean state]
    assert ((3.0 * Real.log((x as real))) == (5.0 * Real.log((y as real)))) by {
      // [TACTIC: exact hlogxy]
      assert ((3.0 * Real.log((x as real))) == (5.0 * Real.log((y as real))));
    }
    // have h₄ : Real.log == Real.log + Real.log  [type from Lean state]
    assert (Real.log((x as real)) == (Real.log((y as real)) + Real.log((z as real)))) by {
      // [TACTIC: exact hlogx_rel]
      assert (Real.log((x as real)) == (Real.log((y as real)) + Real.log((z as real))));
    }
    // have h₅ : Real.log == 3 / 5 * Real.log  [type from Lean state]
    assert (Real.log((y as real)) == ((3.0 / 5.0) * Real.log((x as real)))) by { // @tac 6353-6425 // @tac 6432-6594 // @tac 6601-6614
      // have h₅₁ : 3 * Real.log == 5 * Real.log  [type from Lean state]
      assert ((3.0 * Real.log((x as real))) == (5.0 * Real.log((y as real)))) by {
        // [TACTIC: exact hlogxy]
        assert ((3.0 * Real.log((x as real))) == (5.0 * Real.log((y as real))));
      }
      // have h₅₂ : Real.log == 3 / 5 * Real.log  [type from Lean state]
      assert (Real.log((y as real)) == ((3.0 / 5.0) * Real.log((x as real)))) by { // @tac 6517-6576
        assert (5.0 != 0.0) by {  // sub-goal of `by` (Lean state) // @tac 6567-6575
          // [TACTIC: «Norm_num[_]At___»]
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
          // UNCITED-APPLIED internal ×5 [exec 1752 6567-6575]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        }
        // [TACTIC: apply mul_left_cancel₀ ( show ( 5 : ℝ ) ≠ 0 by norm_num norm_num )]
        assert ((5.0 * Real.log((y as real))) == (5.0 * ((3.0 / 5.0) * Real.log((x as real))))) by {  // sub-goal before `nlinarith` (Lean state) // @tac 6585-6594
          // [TACTIC: «Nlinarith[_]At___»]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 6585-6594 exec 1753)
          // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(5 : ℝ) * -(Real.log ↑w - (24 : ℝ) * Real.log ↑x) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-((Real.log((w as real)) - (24.0 * Real.log((x as real))))) == 0.0); (5.0 > 0.0)
          // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(5 : ℝ) * (Real.log ↑w - (40 : ℝ) * Real.log ↑y) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((Real.log((w as real)) - (40.0 * Real.log((y as real)))) == 0.0); (5.0 > 0.0)
          // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(8 : ℝ) * ((1 : ℝ) * (5 : ℝ) * ((5 : ℝ) * Real.log ↑y) - (1 : ℝ) * (5 : ℝ) * ((1 : ℝ) * (3 : ℝ) * ((1 : ℝ) * Real.log ↑…` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((1.0 * 5.0) * (5.0 * Real.log((y as real)))) - ((1.0 * 5.0) * ((1.0 * 3.0) * (1.0 * Real.log((x as real)))))) < 0.0); (8.0 > 0.0)
          // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(5 : ℝ) * ((5 : ℝ) * Real.log ↑y - (5 : ℝ) * ((3 / 5 : ℝ) * Real.log ↑x)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((5.0 * Real.log((y as real))) - (5.0 * ((3.0 / 5.0) * Real.log((x as real))))) < 0.0); (5.0 > 0.0)
          // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(5 : ℝ) * (Real.log ↑w - (24 : ℝ) * Real.log ↑x) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((Real.log((w as real)) - (24.0 * Real.log((x as real)))) == 0.0); (5.0 > 0.0)
          // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(5 : ℝ) * -(Real.log ↑w - (40 : ℝ) * Real.log ↑y) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-((Real.log((w as real)) - (40.0 * Real.log((y as real))))) == 0.0); (5.0 > 0.0)
          // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(8 : ℝ) * ((1 : ℝ) * (5 : ℝ) * ((1 : ℝ) * (3 : ℝ) * ((1 : ℝ) * Real.log ↑x)) - (1 : ℝ) * (5 : ℝ) * ((5 : ℝ) * Real.log …` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((1.0 * 5.0) * ((1.0 * 3.0) * (1.0 * Real.log((x as real))))) - ((1.0 * 5.0) * (5.0 * Real.log((y as real))))) < 0.0); (8.0 > 0.0)
          // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(5 : ℝ) * ((5 : ℝ) * ((3 / 5 : ℝ) * Real.log ↑x) - (5 : ℝ) * Real.log ↑y) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((5.0 * ((3.0 / 5.0) * Real.log((x as real)))) - (5.0 * Real.log((y as real)))) < 0.0); (5.0 > 0.0)
          // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `(5 : ℝ) * -(Real.log ↑w - (24 : ℝ) * Real.log ↑x) + (5 : ℝ) * (Real.log ↑w - (40 : ℝ) * Real.log ↑y) = (0 : ℝ)` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
          // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `(5 : ℝ) * (Real.log ↑w - (24 : ℝ) * Real.log ↑x) + (5 : ℝ) * -(Real.log ↑w - (40 : ℝ) * Real.log ↑y) = (0 : ℝ)` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
          cert_identity_34(x, y, z, w);  // cert: Linarith.lt_of_eq_of_lt
          cert_identity_35(x, y, z, w);  // cert: Linarith.lt_of_eq_of_lt
          // UNCITED-APPLIED internal ×31 [exec 1753 6585-6594]: applications made inside the tactic's own automation, not stated — CancelDenoms.mul_subst ×3, neg_eq_zero ×2, sub_eq_zero_of_eq ×2, CancelDenoms.sub_subst ×2, sub_neg_of_lt ×2, CancelDenoms.div_subst ×1; machinery/glue: congrArg ×4, Linarith.mul_eq ×4, Linarith.mul_neg ×4, Linarith.lt_of_eq_of_lt ×2 (+4 more heads, ×5)
          // UNCITED-APPLIED internal ×5 [exec 1761 6585-6594]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×7 [exec 1754 6585-6594]: applications made inside the tactic's own automation, not stated — Nat.cast_one ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1)
          // UNCITED-APPLIED internal ×15 [exec 1755 6585-6594]: applications made inside the tactic's own automation, not stated — Nat.cast_one ×1; machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6)
          // UNCITED-APPLIED internal ×7 [exec 1756 6585-6594]: applications made inside the tactic's own automation, not stated — Nat.cast_one ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1)
          // UNCITED-APPLIED internal ×7 [exec 1757 6585-6594]: applications made inside the tactic's own automation, not stated — Nat.cast_one ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1)
          // UNCITED-APPLIED internal ×7 [exec 1758 6585-6594]: applications made inside the tactic's own automation, not stated — Nat.cast_one ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1)
          // UNCITED-APPLIED internal ×5 [exec 1762 6585-6594]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1763 6585-6594]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×177 [exec 1770 6585-6594]: applications made inside the tactic's own automation, not stated — Nat.cast_one ×1; machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_right ×8 (+31 more heads, ×144) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1769 6585-6594]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1771 6585-6594]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×15 [exec 1764 6585-6594]: applications made inside the tactic's own automation, not stated — Nat.cast_one ×1; machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6)
          // UNCITED-APPLIED internal ×7 [exec 1765 6585-6594]: applications made inside the tactic's own automation, not stated — Nat.cast_one ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1)
          // UNCITED-APPLIED internal ×7 [exec 1766 6585-6594]: applications made inside the tactic's own automation, not stated — Nat.cast_one ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1)
          // UNCITED-APPLIED internal ×7 [exec 1767 6585-6594]: applications made inside the tactic's own automation, not stated — Nat.cast_one ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1)
          // UNCITED-APPLIED internal ×7 [exec 1768 6585-6594]: applications made inside the tactic's own automation, not stated — Nat.cast_one ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1)
          // UNCITED-APPLIED internal ×5 [exec 1772 6585-6594]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1773 6585-6594]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED Nat.cast_one: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 1759, 1761, 1762, 1763, 1769, 1771 … / `ring1` exec 1760, 1770)]
          // UNCITED-APPLIED internal ×176 [exec 1760 6585-6594]: applications made inside the tactic's own automation, not stated — Nat.cast_one ×1; machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_right ×8 (+32 more heads, ×143) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1759 6585-6594]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        }
        assert ((5.0) != 0.0) && ((5.0) * (Real.log((y as real))) == (5.0) * (((3.0 / 5.0) * Real.log((x as real)))));  // precondition of MulLeftCancel (Lean: mul_left_cancel₀; `apply`: proved by the steps above)
        MulLeftCancel(5.0, Real.log((y as real)), ((3.0 / 5.0) * Real.log((x as real))));  // cite: mul_left_cancel₀
      }
      // [TACTIC: exact h₅₂]
      assert (Real.log((y as real)) == ((3.0 / 5.0) * Real.log((x as real))));
    }
    // have h₆ : Real.log == 2 / 5 * Real.log  [type from Lean state]
    assert (Real.log((z as real)) == ((2.0 / 5.0) * Real.log((x as real)))) by { // @tac 6699-6787 // @tac 6794-6814 // @tac 6821-6863 // @tac 6821-6843
      // have h₆₁ : Real.log == Real.log + Real.log  [type from Lean state]
      assert (Real.log((x as real)) == (Real.log((y as real)) + Real.log((z as real)))) by {
        // [TACTIC: exact hlogx_rel]
        assert (Real.log((x as real)) == (Real.log((y as real)) + Real.log((z as real))));
      }
      // [TACTIC: rwSeq [ h₅ ] at h₆₁]
      assert (Real.log((x as real)) == (((3.0 / 5.0) * Real.log((x as real))) + Real.log((z as real))));  // hypothesis h₆₁ after `rw` (Lean state) // @tac-hyp 6794-6814
      // [TACTIC: «_<;>_» at h₆₁ ⊢ <;> nlinarith nlinarith]
      // [TACTIC: Ring_nfAt at h₆₁ ⊢]
      PowOne(Real.log((x as real)));  // cite: pow_one [applied by the tactic, not named in it]
      // UNCITED-APPLIED internal ×42 [exec 1839 6821-6843]: applications made inside the tactic's own automation, not stated — add_zero ×1; machinery/glue: congrArg ×4, Eq.trans ×3, Mathlib.Tactic.Ring.cast_pos ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+22 more heads, ×30) (cited in this block, not counted here: pow_one [Lean recorded ×1])
      assert (Real.log((x as real)) == ((Real.log((x as real)) * (3.0 / 5.0)) + Real.log((z as real))));  // hypothesis h₆₁ after `ring_nf` (Lean state) // @tac-hyp 6821-6843
      assert (Real.log((z as real)) == (Real.log((x as real)) * (2.0 / 5.0))) by {  // sub-goal of `nlinarith` (Lean state) // @tac 6854-6863
        // UNCITED-APPLIED Nat.cast_one: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 1852, 1856, 1862, 1863, 1864, 1865 … / `ring1` exec 1861, 1878)]
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 6854-6863 exec 1848)
        // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(7 : ℝ) * -(Real.log ↑w - (24 : ℝ) * Real.log ↑x) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-((Real.log((w as real)) - (24.0 * Real.log((x as real))))) == 0.0); (7.0 > 0.0)
        // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(3 : ℝ) * -(Real.log ↑w - (40 : ℝ) * Real.log ↑y) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-((Real.log((w as real)) - (40.0 * Real.log((y as real))))) == 0.0); (3.0 > 0.0)
        // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(10 : ℝ) * (Real.log ↑w - (12 : ℝ) * (Real.log ↑x + Real.log ↑y + Real.log ↑z)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((Real.log((w as real)) - (12.0 * ((Real.log((x as real)) + Real.log((y as real))) + Real.log((z as real))))) == 0.0); (10.0 > 0.0)
        // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(24 : ℝ) * ((5 : ℝ) * Real.log ↑z - (1 : ℝ) * Real.log ↑x * ((1 : ℝ) * (2 : ℝ))) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((5.0 * Real.log((z as real))) - ((1.0 * Real.log((x as real))) * (1.0 * 2.0))) < 0.0); (24.0 > 0.0)
        // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(5 : ℝ) * (Real.log ↑z - Real.log ↑x * (2 / 5 : ℝ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((Real.log((z as real)) - (Real.log((x as real)) * (2.0 / 5.0))) < 0.0); (5.0 > 0.0)
        // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(7 : ℝ) * (Real.log ↑w - (24 : ℝ) * Real.log ↑x) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((Real.log((w as real)) - (24.0 * Real.log((x as real)))) == 0.0); (7.0 > 0.0)
        // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(3 : ℝ) * (Real.log ↑w - (40 : ℝ) * Real.log ↑y) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((Real.log((w as real)) - (40.0 * Real.log((y as real)))) == 0.0); (3.0 > 0.0)
        // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(10 : ℝ) * -(Real.log ↑w - (12 : ℝ) * (Real.log ↑x + Real.log ↑y + Real.log ↑z)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-((Real.log((w as real)) - (12.0 * ((Real.log((x as real)) + Real.log((y as real))) + Real.log((z as real)))))) == 0.0); (10.0 > 0.0)
        // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(24 : ℝ) * ((1 : ℝ) * Real.log ↑x * ((1 : ℝ) * (2 : ℝ)) - (5 : ℝ) * Real.log ↑z) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((1.0 * Real.log((x as real))) * (1.0 * 2.0)) - (5.0 * Real.log((z as real)))) < 0.0); (24.0 > 0.0)
        // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(5 : ℝ) * (Real.log ↑x * (2 / 5 : ℝ) - Real.log ↑z) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((Real.log((x as real)) * (2.0 / 5.0)) - Real.log((z as real))) < 0.0); (5.0 > 0.0)
        // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `(7 : ℝ) * -(Real.log ↑w - (24 : ℝ) * Real.log ↑x) + (3 : ℝ) * -(Real.log ↑w - (40 : ℝ) * Real.log ↑y) + (10 : ℝ) * (Rea…` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
        // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `(7 : ℝ) * -(Real.log ↑w - (24 : ℝ) * Real.log ↑x) + (3 : ℝ) * -(Real.log ↑w - (40 : ℝ) * Real.log ↑y) = (0 : ℝ)` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
        // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `(7 : ℝ) * (Real.log ↑w - (24 : ℝ) * Real.log ↑x) + (3 : ℝ) * (Real.log ↑w - (40 : ℝ) * Real.log ↑y) + (10 : ℝ) * -(Real…` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
        // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `(7 : ℝ) * (Real.log ↑w - (24 : ℝ) * Real.log ↑x) + (3 : ℝ) * (Real.log ↑w - (40 : ℝ) * Real.log ↑y) = (0 : ℝ)` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
        cert_identity_36(x, y, z, w);  // cert: Linarith.lt_of_eq_of_lt
        cert_identity_37(x, y, z, w);  // cert: Linarith.lt_of_eq_of_lt
        // UNCITED-APPLIED internal ×35 [exec 1848 6854-6863]: applications made inside the tactic's own automation, not stated — neg_eq_zero ×3, sub_eq_zero_of_eq ×3, CancelDenoms.sub_subst ×2, sub_neg_of_lt ×2, CancelDenoms.mul_subst ×1, CancelDenoms.div_subst ×1; machinery/glue: Linarith.mul_eq ×6, congrArg ×4, Linarith.eq_of_eq_of_eq ×4, Linarith.mul_neg ×4 (+4 more heads, ×5)
        // UNCITED-APPLIED internal ×213 [exec 1861 6854-6863]: applications made inside the tactic's own automation, not stated — Nat.cast_one ×1; machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_right ×8 (+35 more heads, ×180) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×5 [exec 1862 6854-6863]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×5 [exec 1863 6854-6863]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×5 [exec 1864 6854-6863]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×15 [exec 1849 6854-6863]: applications made inside the tactic's own automation, not stated — Nat.cast_one ×1; machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6)
        // UNCITED-APPLIED internal ×7 [exec 1850 6854-6863]: applications made inside the tactic's own automation, not stated — Nat.cast_one ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1)
        // UNCITED-APPLIED internal ×7 [exec 1851 6854-6863]: applications made inside the tactic's own automation, not stated — Nat.cast_one ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1)
        // UNCITED-APPLIED internal ×5 [exec 1852 6854-6863]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×5 [exec 1865 6854-6863]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×207 [exec 1878 6854-6863]: applications made inside the tactic's own automation, not stated — Nat.cast_one ×1; machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_right ×8 (+35 more heads, ×174) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×5 [exec 1879 6854-6863]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×5 [exec 1880 6854-6863]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×5 [exec 1881 6854-6863]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×15 [exec 1853 6854-6863]: applications made inside the tactic's own automation, not stated — Nat.cast_one ×1; machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6)
        // UNCITED-APPLIED internal ×7 [exec 1854 6854-6863]: applications made inside the tactic's own automation, not stated — Nat.cast_one ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1)
        // UNCITED-APPLIED internal ×7 [exec 1855 6854-6863]: applications made inside the tactic's own automation, not stated — Nat.cast_one ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1)
        // UNCITED-APPLIED internal ×5 [exec 1856 6854-6863]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        // UNCITED-APPLIED internal ×5 [exec 1882 6854-6863]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      }
    }
    // [TACTIC: exact h₆]
    assert (Real.log((z as real)) == ((2.0 / 5.0) * Real.log((x as real))));
  }
  // have hgoal : Real.log / Real.log == 60  [type from Lean state]
  assert (Real.div(Real.log((w as real)), Real.log((z as real))) == 60.0) by { // @tac 6950-7018 // @tac 7023-7103 // @tac 7108-7123
    // have h₃ : Real.log == 24 * Real.log  [type from Lean state]
    assert (Real.log((w as real)) == (24.0 * Real.log((x as real)))) by {
      // [TACTIC: exact hlogw_eq]
      assert (Real.log((w as real)) == (24.0 * Real.log((x as real))));
    }
    // have h₄ : Real.log == 2 / 5 * Real.log  [type from Lean state]
    assert (Real.log((z as real)) == ((2.0 / 5.0) * Real.log((x as real)))) by {
      // [TACTIC: exact hlogz_rel]
      assert (Real.log((z as real)) == ((2.0 / 5.0) * Real.log((x as real))));
    }
    // [TACTIC: rwSeq [ h₃ , h₄ ]]
    // UNCITED-APPLIED congrArg(Real.log ↑w, (24 : ℝ) * Real.log ↑x, fun (_a : ℝ) => _a / Real.log ↑z = (60 : ℝ)): no library counterpart (not stated) [exec 1928 7108-7123]
    // UNCITED-APPLIED congrArg(Real.log ↑z, (2 / 5 : ℝ) * Real.log ↑x, fun (_a : ℝ) => (24 : ℝ) * Real.log ↑x / _a = (60 : ℝ)): no library counterpart (not stated) [exec 1928 7108-7123]
    assert 0 <= x;  /* [IN-FILE CHECK] requires 1 of vc_aime_1983_p1_L1057 */
    assert 0 <= y;  /* [IN-FILE CHECK] requires 2 of vc_aime_1983_p1_L1057 */
    assert 0 <= z;  /* [IN-FILE CHECK] requires 3 of vc_aime_1983_p1_L1057 */
    assert 0 <= w;  /* [IN-FILE CHECK] requires 4 of vc_aime_1983_p1_L1057 */
    assert 1 < x;  /* [IN-FILE CHECK] requires 5 of vc_aime_1983_p1_L1057 */
    assert 1 < y;  /* [IN-FILE CHECK] requires 6 of vc_aime_1983_p1_L1057 */
    assert 1 < z;  /* [IN-FILE CHECK] requires 7 of vc_aime_1983_p1_L1057 */
    assert Real.div(Real.log((w as real)), Real.log((x as real))) == 24.0;  /* [IN-FILE CHECK] requires 8 of vc_aime_1983_p1_L1057 */
    assert Real.div(Real.log((w as real)), Real.log((y as real))) == 40.0;  /* [IN-FILE CHECK] requires 9 of vc_aime_1983_p1_L1057 */
    assert Real.div(Real.log((w as real)), Real.log((x as real) * (y as real) * (z as real))) == 12.0;  /* [IN-FILE CHECK] requires 10 of vc_aime_1983_p1_L1057 */
    assert (x as real) > 1.0;  /* [IN-FILE CHECK] requires 11 of vc_aime_1983_p1_L1057 */
    assert (y as real) > 1.0;  /* [IN-FILE CHECK] requires 12 of vc_aime_1983_p1_L1057 */
    assert (z as real) > 1.0;  /* [IN-FILE CHECK] requires 13 of vc_aime_1983_p1_L1057 */
    assert (x as real) * (y as real) * (z as real) > 1.0;  /* [IN-FILE CHECK] requires 14 of vc_aime_1983_p1_L1057 */
    assert Real.log((x as real)) > 0.0;  /* [IN-FILE CHECK] requires 15 of vc_aime_1983_p1_L1057 */
    assert Real.log((y as real)) > 0.0;  /* [IN-FILE CHECK] requires 16 of vc_aime_1983_p1_L1057 */
    assert Real.log((z as real)) > 0.0;  /* [IN-FILE CHECK] requires 17 of vc_aime_1983_p1_L1057 */
    assert Real.log((x as real) * (y as real) * (z as real)) > 0.0;  /* [IN-FILE CHECK] requires 18 of vc_aime_1983_p1_L1057 */
    assert Real.log((w as real)) > 0.0;  /* [IN-FILE CHECK] requires 19 of vc_aime_1983_p1_L1057 */
    assert Real.log((w as real)) == 24.0 * Real.log((x as real));  /* [IN-FILE CHECK] requires 20 of vc_aime_1983_p1_L1057 */
    assert Real.log((w as real)) == 40.0 * Real.log((y as real));  /* [IN-FILE CHECK] requires 21 of vc_aime_1983_p1_L1057 */
    assert 3.0 * Real.log((x as real)) == 5.0 * Real.log((y as real));  /* [IN-FILE CHECK] requires 22 of vc_aime_1983_p1_L1057 */
    assert Real.log((w as real)) == 12.0 * (Real.log((x as real)) + Real.log((y as real)) + Real.log((z as real)));  /* [IN-FILE CHECK] requires 23 of vc_aime_1983_p1_L1057 */
    assert Real.log((x as real)) == Real.log((y as real)) + Real.log((z as real));  /* [IN-FILE CHECK] requires 24 of vc_aime_1983_p1_L1057 */
    assert 5.0 != 0.0;  /* [IN-FILE CHECK] requires 25 of vc_aime_1983_p1_L1057 */
    assert Real.log((z as real)) == 2.0 / 5.0 * Real.log((x as real));  /* [IN-FILE CHECK] requires 26 of vc_aime_1983_p1_L1057 */
    assert ((0.0 < 2.0) && (0.0 < 2.0) && (0.0 < Real.log((x as real))) && (0.0 < 2.0) && (0.0 < 2.0 * Real.log((x as real)))) || ((0.0 < 2.0) && (!(0.0 < 2.0 && 0.0 < Real.log((x as real))))) || ((!(0.0 < 2.0)) && (0.0 < 2.0) && (0.0 < Real.log((x as real))) && (0.0 < 2.0) && (0.0 < 2.0 * Real.log((x as real)))) || ((!(0.0 < 2.0)) && (!(0.0 < 2.0 && 0.0 < Real.log((x as real)))));  /* [IN-FILE CHECK] requires 27 of vc_aime_1983_p1_L1057 */
    vc_aime_1983_p1_L1057(w, x, y, z);  /* [IN-FILE CHECK] the closed lemma for line 1057 */
    assert (Real.div((24.0 * Real.log((x as real))), ((2.0 / 5.0) * Real.log((x as real)))) == 60.0) by {  // sub-goal before `have` (Lean state) // @tac 7128-7187 // @tac 7192-7291 // @tac 7192-7251 // @tac 7192-7225 // @tac 7192-7209
      // have h₅ : Real.log != 0  [type from Lean state]
      assert (Real.log((x as real)) != 0.0) by { // @tac 7171-7187
        // [TACTIC: «Linarith[_]At___» [ hlogx ]]
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 7171-7187 exec 1972)
        cert_identity_38(x, y, z, w);  // cert: Linarith.lt_of_lt_of_eq
        // UNCITED-APPLIED internal ×5 [exec 1972 7171-7187]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×1; machinery/glue: Not.intro ×1, Linarith.lt_irrefl ×1, congrArg ×1, Linarith.lt_of_lt_of_eq ×1
        // UNCITED-APPLIED internal ×20 [exec 1981 7171-7187]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1981)]
      }
      // [TACTIC: «_<;>_» [ h₅ ] field_simp [ h₅ ] <;> ring_nf ring_nf <;> field_simp [ h₅ ] field_simp [ h₅ ] <;> nlinarith [ hlogx , hlogy , hlogz ] nlinarith [ hlogx , hlogy , hlogz ]]
      // [TACTIC: choice [ h₅ ] field_simp [ h₅ ]]
      if (0.0 < (2.0)) && (0.0 < (Real.log((x as real)))) { MulPos(2.0, Real.log((x as real))); }  // cite: mul_pos [applied by the tactic, not named in it]
      // `fieldSimp` step's recorded applications (Lean execution 7192-7209 exec 1997): nothing of it stated; Lean's records:
      // UNCITED-APPLIED mul_pos: certificate piece `(0 : ℝ) < (2 : ℝ) * Real.log ↑x` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 2.0); (Real.log((x as real)) > 0.0)
      // UNCITED-APPLIED internal ×9 [exec 1997 7192-7209]: applications made inside the tactic's own automation, not stated — div_mul_eq_mul_div ×1, div_div_eq_mul_div ×1, ne_of_gt ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1; machinery/glue: Eq.trans ×2, congrArg ×2, Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: mul_pos [Lean recorded ×1])
      assert (((24.0 * Real.log((x as real))) * 5.0) == (60.0 * (2.0 * Real.log((x as real))))) by {  // sub-goal of `ring_nf` (Lean state) // @tac 7218-7225
        PowOne(Real.log((x as real)));  // cite: pow_one [applied by the tactic, not named in it]
        // UNCITED-APPLIED internal ×58 [exec 2006 7218-7225]: applications made inside the tactic's own automation, not stated — add_zero ×1; machinery/glue: Eq.trans ×5, Mathlib.Tactic.Ring.mul_congr ×4, Mathlib.Tactic.Ring.cast_pos ×4, Mathlib.Meta.NormNum.isNat_ofNat ×4 (+17 more heads, ×40) (cited in this block, not counted here: pow_one [Lean recorded ×1])
      }
    }
  }
  // [TACTIC: simpa using hgoal]
}



// ===== closed lemma for line 1057 (from closed/aime_1983_p1-1057.dfy) =====

lemma {:induction false} vc_aime_1983_p1_L1057(w: int, x: int, y: int, z: int)
  requires 0 <= x
  requires 0 <= y
  requires 0 <= z
  requires 0 <= w
  requires 1 < x
  requires 1 < y
  requires 1 < z
  requires Real.div(Real.log((w as real)), Real.log((x as real))) == 24.0
  requires Real.div(Real.log((w as real)), Real.log((y as real))) == 40.0
  requires Real.div(Real.log((w as real)), Real.log((x as real) * (y as real) * (z as real))) == 12.0
  requires (x as real) > 1.0
  requires (y as real) > 1.0
  requires (z as real) > 1.0
  requires (x as real) * (y as real) * (z as real) > 1.0
  requires Real.log((x as real)) > 0.0
  requires Real.log((y as real)) > 0.0
  requires Real.log((z as real)) > 0.0
  requires Real.log((x as real) * (y as real) * (z as real)) > 0.0
  requires Real.log((w as real)) > 0.0
  requires Real.log((w as real)) == 24.0 * Real.log((x as real))
  requires Real.log((w as real)) == 40.0 * Real.log((y as real))
  requires 3.0 * Real.log((x as real)) == 5.0 * Real.log((y as real))
  requires Real.log((w as real)) == 12.0 * (Real.log((x as real)) + Real.log((y as real)) + Real.log((z as real)))
  requires Real.log((x as real)) == Real.log((y as real)) + Real.log((z as real))
  requires 5.0 != 0.0
  requires Real.log((z as real)) == 2.0 / 5.0 * Real.log((x as real))
  requires ((0.0 < 2.0) && (0.0 < 2.0) && (0.0 < Real.log((x as real))) && (0.0 < 2.0) && (0.0 < 2.0 * Real.log((x as real)))) || ((0.0 < 2.0) && (!(0.0 < 2.0 && 0.0 < Real.log((x as real))))) || ((!(0.0 < 2.0)) && (0.0 < 2.0) && (0.0 < Real.log((x as real))) && (0.0 < 2.0) && (0.0 < 2.0 * Real.log((x as real)))) || ((!(0.0 < 2.0)) && (!(0.0 < 2.0 && 0.0 < Real.log((x as real)))))
  ensures   Real.div(24.0 * Real.log((x as real)), 2.0 / 5.0 * Real.log((x as real))) == 60.0
{
  DivEqIffReal(24.0 * Real.log((x as real)), 2.0 / 5.0 * Real.log((x as real)), 60.0);  // K5: field_simp lemma div_eq_iff (Mathlib)  // [ADDED]
      // have h₅ : Real.log != 0  [type from Lean state]
      assert (Real.log((x as real)) != 0.0) by { // @tac 7171-7187
        // [TACTIC: «Linarith[_]At___» [ hlogx ]]
        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 7171-7187 exec 1972)
        cert_identity_38(x, y, z, w);  // cert: Linarith.lt_of_lt_of_eq
        // UNCITED-APPLIED internal ×5 [exec 1972 7171-7187]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×1; machinery/glue: Not.intro ×1, Linarith.lt_irrefl ×1, congrArg ×1, Linarith.lt_of_lt_of_eq ×1
        // UNCITED-APPLIED internal ×20 [exec 1981 7171-7187]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.of_eq ×1, Mathlib.Tactic.Ring.add_congr ×1, Mathlib.Tactic.Ring.neg_congr ×1, Mathlib.Tactic.Ring.atom_pf ×1 (+16 more heads, ×16) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1981)]
      }
      // [TACTIC: «_<;>_» [ h₅ ] field_simp [ h₅ ] <;> ring_nf ring_nf <;> field_simp [ h₅ ] field_simp [ h₅ ] <;> nlinarith [ hlogx , hlogy , hlogz ] nlinarith [ hlogx , hlogy , hlogz ]]
      // [TACTIC: choice [ h₅ ] field_simp [ h₅ ]]
      if (0.0 < (2.0)) && (0.0 < (Real.log((x as real)))) { MulPos(2.0, Real.log((x as real))); }  // cite: mul_pos [applied by the tactic, not named in it]
      // `fieldSimp` step's recorded applications (Lean execution 7192-7209 exec 1997): nothing of it stated; Lean's records:
      // UNCITED-APPLIED mul_pos: certificate piece `(0 : ℝ) < (2 : ℝ) * Real.log ↑x` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 2.0); (Real.log((x as real)) > 0.0)
      // UNCITED-APPLIED internal ×9 [exec 1997 7192-7209]: applications made inside the tactic's own automation, not stated — div_mul_eq_mul_div ×1, div_div_eq_mul_div ×1, ne_of_gt ×1, Mathlib.Meta.Positivity.pos_of_isNat ×1; machinery/glue: Eq.trans ×2, congrArg ×2, Mathlib.Meta.NormNum.isNat_ofNat ×1 (cited in this block, not counted here: mul_pos [Lean recorded ×1])
      assert (((24.0 * Real.log((x as real))) * 5.0) == (60.0 * (2.0 * Real.log((x as real))))) by {  // sub-goal of `ring_nf` (Lean state) // @tac 7218-7225
        PowOne(Real.log((x as real)));  // cite: pow_one [applied by the tactic, not named in it]
        // UNCITED-APPLIED internal ×58 [exec 2006 7218-7225]: applications made inside the tactic's own automation, not stated — add_zero ×1; machinery/glue: Eq.trans ×5, Mathlib.Tactic.Ring.mul_congr ×4, Mathlib.Tactic.Ring.cast_pos ×4, Mathlib.Meta.NormNum.isNat_ofNat ×4 (+17 more heads, ×40) (cited in this block, not counted here: pow_one [Lean recorded ×1])
      }
}

// side checks at the same line (not the reported failure): 1 check(s)
// side check: divisor is always non-zero.
lemma {:induction false} vc_aime_1983_p1_L1057_side1(w: int, x: int, y: int, z: int)  // [ADDED DECLARATION]
  requires 0 <= x
  requires 0 <= y
  requires 0 <= z
  requires 0 <= w
  requires 1 < x
  requires 1 < y
  requires 1 < z
  requires Real.div(Real.log((w as real)), Real.log((x as real))) == 24.0
  requires Real.div(Real.log((w as real)), Real.log((y as real))) == 40.0
  requires Real.div(Real.log((w as real)), Real.log((x as real) * (y as real) * (z as real))) == 12.0
  requires (x as real) > 1.0
  requires (y as real) > 1.0
  requires (z as real) > 1.0
  requires (x as real) * (y as real) * (z as real) > 1.0
  requires Real.log((x as real)) > 0.0
  requires Real.log((y as real)) > 0.0
  requires Real.log((z as real)) > 0.0
  requires Real.log((x as real) * (y as real) * (z as real)) > 0.0
  requires Real.log((w as real)) > 0.0
  requires Real.log((w as real)) == 24.0 * Real.log((x as real))
  requires Real.log((w as real)) == 40.0 * Real.log((y as real))
  requires 3.0 * Real.log((x as real)) == 5.0 * Real.log((y as real))
  requires Real.log((w as real)) == 12.0 * (Real.log((x as real)) + Real.log((y as real)) + Real.log((z as real)))
  requires Real.log((x as real)) == Real.log((y as real)) + Real.log((z as real))
  requires 5.0 != 0.0
  requires Real.log((z as real)) == 2.0 / 5.0 * Real.log((x as real))
  requires Real.log((x as real)) != 0.0
  requires 24.0 * Real.log((x as real)) * 5.0 == 60.0 * (2.0 * Real.log((x as real)))
  requires ((0.0 < 2.0) && (0.0 < 2.0) && (0.0 < Real.log((x as real))) && (0.0 < 2.0) && (0.0 < 2.0 * Real.log((x as real)))) || ((0.0 < 2.0) && (!(0.0 < 2.0 && 0.0 < Real.log((x as real))))) || ((!(0.0 < 2.0)) && (0.0 < 2.0) && (0.0 < Real.log((x as real))) && (0.0 < 2.0) && (0.0 < 2.0 * Real.log((x as real)))) || ((!(0.0 < 2.0)) && (!(0.0 < 2.0 && 0.0 < Real.log((x as real)))))
  ensures  5.0 != 0.0
{ }


// Mathlib div_eq_iff (hc : c ≠ 0) : a / c = b ↔ a = b * c  [added to work copy]
lemma {:axiom} DivEqIffReal(a: real, c: real, b: real)  // [ADDED DECLARATION]
  requires c != 0.0
  ensures a / c == b <==> a == b * c
