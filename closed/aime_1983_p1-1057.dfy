// CLOSED — failing line aime_1983_p1-1057: theorem aime_1983_p1, Dafny line 1057 (ERR: assertion might not hold)
// failing Dafny line: assert (Real.div((24.0 * Real.log((x as real))), ((2.0 / 5.0) * Real.log((x as real)))) == 60.0) by {
// Lean step: have h₅ : Real.log (x : ℝ) ≠ 0 := by linarith [hlogx]
// hypotheses: 27 facts Z3 had at the line (goal itself removed: 0; the block's own asserts removed: 2); nothing assumed beyond the facts in scope
// how it closes: K5 — DivEqIffReal(24.0*L, 2.0/5.0*L, 60.0); with lemma {:axiom} DivEqIffReal(a,c,b) requires c != 0.0 ensures a / c == b <==> a == b * c (exact Mathlib div_eq_iff, added to work copy; field_simp's simp set)
// Dafny: finished with 16 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/aime_1983_p1.dfy"
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
