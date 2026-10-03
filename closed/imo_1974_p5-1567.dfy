// NOT CLOSED — failing line imo_1974_p5-1567: theorem imo_1974_p5, Dafny line 1567 (ERR: assertion might not hold)
// failing Dafny line: assert (1.0 < s) by {
// Lean step: have h₂ : 0 < a + b + d := by linarith
// hypotheses: 16 facts Z3 had at the line (goal itself removed: 0; the block's own asserts removed: 6); nothing assumed beyond the facts in scope
// not closed: tried H0=failed, K2=error, K5=error, K3=error; this file is the honest base attempt
// Dafny: finished with 108 verified, 2 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/imo_1974_p5.dfy"
lemma {:induction false} vc_imo_1974_p5_L1567(a: real, b: real, c: real, d: real, s: real)
  requires 0.0 < a
  requires 0.0 < b
  requires 0.0 < c
  requires 0.0 < d
  requires s == Real.div(a, a + b + d) + Real.div(b, a + b + c) + Real.div(c, b + c + d) + Real.div(d, a + c + d)
  requires 0.0 < Real.div(a, a + b + d)
  requires Real.div(a, a + b + d) < 1.0
  requires 0.0 < Real.div(b, a + b + c)
  requires Real.div(b, a + b + c) < 1.0
  requires 0.0 < Real.div(c, b + c + d)
  requires Real.div(c, b + c + d) < 1.0
  requires 0.0 < Real.div(d, a + c + d)
  requires Real.div(d, a + c + d) < 1.0
  requires 0.0 < s
  requires 0.0 < (a + b + d) * (a + b + c)
  requires 0.0 < (a + b + d) * (a + b + c) * (b + c + d)
  ensures   1.0 < s
{
    // have h₂ : 0 < a + b + d  [type from Lean state]
    assert (0.0 < ((a + b) + d)) by { // @tac 5387-5395
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 5387-5395 exec 1057)
      // UNCITED-APPLIED Left.add_neg ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `-a + -b + -d < (0 : ℝ)`
      cert_identity_38(a, b, c, d, s);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×10 [exec 1057 5387-5395]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×3, Left.add_neg ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×46 [exec 1058 5387-5395]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×6, Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Tactic.Ring.add_pf_zero_add ×5, Mathlib.Tactic.Ring.neg_congr ×3 (+17 more heads, ×27) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1058)]
    }
    // have h₃ : 0 < a + b + c  [type from Lean state]
    assert (0.0 < ((a + b) + c)) by { // @tac 5432-5440
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 5432-5440 exec 1075)
      // UNCITED-APPLIED Left.add_neg ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `-a + -b + -c < (0 : ℝ)`
      cert_identity_39(a, b, c, d, s);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×10 [exec 1075 5432-5440]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×3, Left.add_neg ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×46 [exec 1076 5432-5440]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×6, Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Tactic.Ring.add_pf_zero_add ×5, Mathlib.Tactic.Ring.neg_congr ×3 (+17 more heads, ×27) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1076)]
    }
    // have h₄ : 0 < b + c + d  [type from Lean state]
    assert (0.0 < ((b + c) + d)) by { // @tac 5477-5485
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 5477-5485 exec 1093)
      // UNCITED-APPLIED Left.add_neg ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `-b + -c + -d < (0 : ℝ)`
      cert_identity_40(a, b, c, d, s);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×10 [exec 1093 5477-5485]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×3, Left.add_neg ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×46 [exec 1094 5477-5485]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×6, Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Tactic.Ring.add_pf_zero_add ×5, Mathlib.Tactic.Ring.neg_congr ×3 (+17 more heads, ×27) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1094)]
    }
    // have h₅ : 0 < a + c + d  [type from Lean state]
    assert (0.0 < ((a + c) + d)) by { // @tac 5522-5530
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 5522-5530 exec 1111)
      // UNCITED-APPLIED Left.add_neg ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `-a + -c + -d < (0 : ℝ)`
      cert_identity_41(a, b, c, d, s);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×10 [exec 1111 5522-5530]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×3, Left.add_neg ×2, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×46 [exec 1112 5522-5530]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×6, Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Tactic.Ring.add_pf_zero_add ×5, Mathlib.Tactic.Ring.neg_congr ×3 (+17 more heads, ×27) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1112)]
    }
    // have h₆ : 0 < a + b + c + d  [type from Lean state]
    assert (0.0 < (((a + b) + c) + d)) by { // @tac 5571-5579
      // [TACTIC: «Linarith[_]At___»]
      // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 5571-5579 exec 1129)
      // UNCITED-APPLIED Left.add_neg ×3: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `-a + -b + -c + -d < (0 : ℝ)`
      cert_identity_42(a, b, c, d, s);  // cert: add_lt_of_neg_of_le
      // UNCITED-APPLIED internal ×12 [exec 1129 5571-5579]: applications made inside the tactic's own automation, not stated — neg_neg_of_pos ×4, Left.add_neg ×3, lt_of_not_ge ×1, add_lt_of_neg_of_le ×1, le_zero_of_zero_ge ×1; machinery/glue: Linarith.lt_irrefl ×1, congrArg ×1
      // UNCITED-APPLIED internal ×58 [exec 1130 5571-5579]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×8, Mathlib.Tactic.Ring.add_congr ×7, Mathlib.Tactic.Ring.add_pf_zero_add ×7, Mathlib.Tactic.Ring.neg_congr ×4 (+17 more heads, ×32) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
      NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 1130)]
    }
    // [TACTIC: «Field_simp[_]At___» [ h₁ , h₂ , h₃ , h₄ , h₅ , h₆ ]]
    assert (0.0 < (((a + b) + d))) && (0.0 < (((a + b) + c)));  // precondition of MulPos (Lean: mul_pos)
    MulPos(((a + b) + d), ((a + b) + c));  // cite: mul_pos [applied by the tactic, not named in it]
    assert (0.0 < ((((a + b) + d) * ((a + b) + c)))) && (0.0 < (((b + c) + d)));  // precondition of MulPos (Lean: mul_pos)
    MulPos((((a + b) + d) * ((a + b) + c)), ((b + c) + d));  // cite: mul_pos [applied by the tactic, not named in it]
    // `fieldSimp` step's recorded applications: the lemma applications Lean's proof term of this step is built from (no linarith run here) (Lean execution 5656-5703 exec 1131)
    if (0.0 < ((a + b) + d)) && (0.0 < ((a + b) + c)) { cert_piece_43(a, b, c, d, s); }  // cert: mul_pos
    if (0.0 < (((a + b) + d) * ((a + b) + c))) && (0.0 < ((b + c) + d)) { cert_piece_44(a, b, c, d, s); }  // cert: mul_pos
    // UNCITED-APPLIED internal ×30 [exec 1131 5656-5703]: applications made inside the tactic's own automation, not stated — ne_of_gt ×6, add_div' ×3, div_mul_eq_mul_div ×3, div_add' ×3, div_div ×3; machinery/glue: Eq.trans ×6, congrArg ×6 (cited in this block, not counted here: mul_pos [Lean recorded ×2])
    assert (1.0 < Real.div(((((((a * ((a + b) + c)) + (b * ((a + b) + d))) * ((b + c) + d)) + (c * (((a + b) + d) * ((a + b) + c)))) * ((a + c) + d)) + (d * ((((a + b) + d) * ((a + b) + c)) * ((b + c) + d)))), (((((a + b) + d) * ((a + b) + c)) * ((b + c) + d)) * ((a + c) + d)))) by {  // sub-goal before `refine'` (Lean state) // @tac 5708-5731
      // [TACTIC: refine' lt_of_sub_pos _]
      assert (0.0 < (Real.div(((((((a * ((a + b) + c)) + (b * ((a + b) + d))) * ((b + c) + d)) + (c * (((a + b) + d) * ((a + b) + c)))) * ((a + c) + d)) + (d * ((((a + b) + d) * ((a + b) + c)) * ((b + c) + d)))), (((((a + b) + d) * ((a + b) + c)) * ((b + c) + d)) * ((a + c) + d)))) - (1.0));  // precondition of LtOfSubPosReal (Lean: lt_of_sub_pos)
      LtOfSubPosReal(Real.div(((((((a * ((a + b) + c)) + (b * ((a + b) + d))) * ((b + c) + d)) + (c * (((a + b) + d) * ((a + b) + c)))) * ((a + c) + d)) + (d * ((((a + b) + d) * ((a + b) + c)) * ((b + c) + d)))), (((((a + b) + d) * ((a + b) + c)) * ((b + c) + d)) * ((a + c) + d))), 1.0);  // cite: lt_of_sub_pos
      assert (0.0 < (Real.div(((((((a * ((a + b) + c)) + (b * ((a + b) + d))) * ((b + c) + d)) + (c * (((a + b) + d) * ((a + b) + c)))) * ((a + c) + d)) + (d * ((((a + b) + d) * ((a + b) + c)) * ((b + c) + d)))), (((((a + b) + d) * ((a + b) + c)) * ((b + c) + d)) * ((a + c) + d))) - 1.0)) by {  // sub-goal before `field_simp` (Lean state) // @tac 5736-5746
        // [TACTIC: «Field_simp[_]At___»]
        if (0.0 < (((((a + b) + d) * ((a + b) + c)) * ((b + c) + d)))) && (0.0 < (((a + c) + d))) { MulPos(((((a + b) + d) * ((a + b) + c)) * ((b + c) + d)), ((a + c) + d)); }  // cite: mul_pos [applied by the tactic, not named in it]
        if (0.0 < ((((a + b) + d) * ((a + b) + c)))) && (0.0 < (((b + c) + d))) { MulPos((((a + b) + d) * ((a + b) + c)), ((b + c) + d)); }  // cite: mul_pos [applied by the tactic, not named in it]
        // cite: mul_pos [same instance stated in an enclosing scope: MulPos(((a + b) + d), ((a + b) + c));]
        // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (a + b + d) * (a + b + c) * (b + c + d) * (a + c + d))
        // `fieldSimp` step's recorded applications: the lemma applications Lean's proof term of this step is built from (no linarith run here) (Lean execution 5736-5746 exec 1133)
        if (0.0 < ((((a + b) + d) * ((a + b) + c)) * ((b + c) + d))) && (0.0 < ((a + c) + d)) { cert_piece_45(a, b, c, d, s); }  // cert: mul_pos
        if (0.0 < (((a + b) + d) * ((a + b) + c))) && (0.0 < ((b + c) + d)) { cert_piece_46(a, b, c, d, s); }  // cert: mul_pos
        if (0.0 < ((a + b) + d)) && (0.0 < ((a + b) + c)) { cert_piece_47(a, b, c, d, s); }  // cert: mul_pos
        // UNCITED-APPLIED internal ×4 [exec 1133 5736-5746]: applications made inside the tactic's own automation, not stated — div_sub' ×1, ne_of_gt ×1, mul_one ×1; machinery/glue: Eq.trans ×1 (cited in this block, not counted here: mul_pos [Lean recorded ×3])
        assert ((((((a + b) + d) * ((a + b) + c)) * ((b + c) + d)) * ((a + c) + d)) < ((((((a * ((a + b) + c)) + (b * ((a + b) + d))) * ((b + c) + d)) + (c * (((a + b) + d) * ((a + b) + c)))) * ((a + c) + d)) + (d * ((((a + b) + d) * ((a + b) + c)) * ((b + c) + d))))) by {  // sub-goal before `ring_nf` (Lean state) // @tac 5751-5758
          // [TACTIC: Ring_nfAt]
          PowOne(a);  // cite: pow_one [applied by the tactic, not named in it]
          PowOne(b);  // cite: pow_one [applied by the tactic, not named in it]
          PowOne(d);  // cite: pow_one [applied by the tactic, not named in it]
          PowOne(c);  // cite: pow_one [applied by the tactic, not named in it]
          // UNCITED-APPLIED mul_one ×6: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := b ^ (3 : ℕ)); (a := d ^ (3 : ℕ)); (a := c ^ (3 : ℕ)); (a := b); (a := d); (a := c)
          // UNCITED-APPLIED internal ×168 [exec 1134 5751-5758]: applications made inside the tactic's own automation, not stated — mul_one ×6, add_zero ×1; machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×8, Mathlib.Tactic.Ring.add_pf_zero_add ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pp_pf_overlap ×8 (+23 more heads, ×129) (cited in this block, not counted here: pow_one [Lean recorded ×4])
          assert (((((((((((((((((((((((((((((((((((a * b) * d) * c) * 9.0) + (((a * b) * (d * d)) * 4.0)) + (((a * b) * (c * c)) * 4.0)) + (((a * (b * b)) * d) * 4.0)) + (((a * (b * b)) * c) * 4.0)) + (a * (b * b * b))) + (((a * d) * (c * c)) * 4.0)) + (((a * (d * d)) * c) * 4.0)) + (a * (d * d * d))) + (a * (c * c * c))) + ((((a * a) * b) * d) * 4.0)) + ((((a * a) * b) * c) * 4.0)) + (((a * a) * (b * b)) * 2.0)) + ((((a * a) * d) * c) * 4.0)) + (((a * a) * (d * d)) * 2.0)) + (((a * a) * (c * c)) * 2.0)) + ((a * a * a) * b)) + ((a * a * a) * d)) + ((a * a * a) * c)) + (((b * d) * (c * c)) * 4.0)) + (((b * (d * d)) * c) * 4.0)) + (b * (d * d * d))) + (b * (c * c * c))) + ((((b * b) * d) * c) * 4.0)) + (((b * b) * (d * d)) * 2.0)) + (((b * b) * (c * c)) * 2.0)) + ((b * b * b) * d)) + ((b * b * b) * c)) + (d * (c * c * c))) + (((d * d) * (c * c)) * 2.0)) + ((d * d * d) * c)) < ((((((((((((((((((((((((((((((((((a * b) * d) * c) * 12.0) + (((a * b) * (d * d)) * 6.0)) + (((a * b) * (c * c)) * 6.0)) + (((a * (b * b)) * d) * 6.0)) + (((a * (b * b)) * c) * 4.0)) + (a * (b * b * b))) + (((a * d) * (c * c)) * 6.0)) + (((a * (d * d)) * c) * 4.0)) + (a * (d * d * d))) + ((a * (c * c * c)) * 2.0)) + ((((a * a) * b) * d) * 4.0)) + ((((a * a) * b) * c) * 6.0)) + (((a * a) * (b * b)) * 2.0)) + ((((a * a) * d) * c) * 6.0)) + (((a * a) * (d * d)) * 2.0)) + (((a * a) * (c * c)) * 4.0)) + ((a * a * a) * b)) + ((a * a * a) * d)) + (((a * a * a) * c) * 2.0)) + (((b * d) * (c * c)) * 4.0)) + (((b * (d * d)) * c) * 6.0)) + ((b * (d * d * d)) * 2.0)) + (b * (c * c * c))) + ((((b * b) * d) * c) * 6.0)) + (((b * b) * (d * d)) * 4.0)) + (((b * b) * (c * c)) * 2.0)) + (((b * b * b) * d) * 2.0)) + ((b * b * b) * c)) + (d * (c * c * c))) + (((d * d) * (c * c)) * 2.0)) + ((d * d * d) * c))) by {  // sub-goal before `nlinarith` (Lean state) // @tac 5763-5947
            // [TACTIC: «Nlinarith[_]At___» [ mul_pos h₀ . 1 h₀ . 2 . 1 , mul_pos h₀ . 2 . 1 h₀ . 2 . 2 . 1 , mul_pos h₀ . 2 . 2 . 1 h₀ . 2 . 2 . 2 , mul_pos h₀ . 1 h₀ . 2 . 2 . 1 , mul_pos h₀ . 1 h₀ . 2 . 2 . 2 , mul_pos h₀ . 2 . 1 h₀ . 2 . 2 . 2 ]]
            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 5763-5947 exec 1135)
            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * -(-b ^ (2 : ℕ) * -d ^ (2 : ℕ)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= ((b * b) * (d * d))); (2.0 > 0.0)
            if (0.0 <= (b * b)) && (0.0 <= (d * d)) { cert_piece_48(a, b, c, d, s); }  // cert: mul_nonneg_of_nonpos_of_nonpos
            SqNonneg(b); assert (0.0 <= (b * b));  // cert: sq_nonneg
            SqNonneg(d); assert (0.0 <= (d * d));  // cert: sq_nonneg
            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * -(-b ^ (2 : ℕ) * -(c * d)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= ((b * b) * (c * d))); (2.0 > 0.0)
            if (0.0 <= (b * b)) && (0.0 <= (c * d)) { cert_piece_49(a, b, c, d, s); }  // cert: mul_nonneg_of_nonpos_of_nonpos
            if (0.0 < c) && (0.0 < d) { cert_piece_50(a, b, c, d, s); }  // cert: mul_pos
            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * -(-b ^ (2 : ℕ) * -(a * d)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= ((b * b) * (a * d))); (2.0 > 0.0)
            if (0.0 <= (b * b)) && (0.0 <= (a * d)) { cert_piece_51(a, b, c, d, s); }  // cert: mul_nonneg_of_nonpos_of_nonpos
            if (0.0 < a) && (0.0 < d) { cert_piece_52(a, b, c, d, s); }  // cert: mul_pos
            if (0.0 <= (b * b)) && (0.0 <= (b * d)) { cert_piece_53(a, b, c, d, s); }  // cert: mul_nonneg_of_nonpos_of_nonpos
            if (0.0 < b) && (0.0 < d) { cert_piece_54(a, b, c, d, s); }  // cert: mul_pos
            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * -(-a ^ (2 : ℕ) * -c ^ (2 : ℕ)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= ((a * a) * (c * c))); (2.0 > 0.0)
            if (0.0 <= (a * a)) && (0.0 <= (c * c)) { cert_piece_55(a, b, c, d, s); }  // cert: mul_nonneg_of_nonpos_of_nonpos
            SqNonneg(a); assert (0.0 <= (a * a));  // cert: sq_nonneg
            SqNonneg(c); assert (0.0 <= (c * c));  // cert: sq_nonneg
            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * -(-a ^ (2 : ℕ) * -(b * c)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= ((a * a) * (b * c))); (2.0 > 0.0)
            if (0.0 <= (a * a)) && (0.0 <= (b * c)) { cert_piece_56(a, b, c, d, s); }  // cert: mul_nonneg_of_nonpos_of_nonpos
            if (0.0 < b) && (0.0 < c) { cert_piece_57(a, b, c, d, s); }  // cert: mul_pos
            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * -(-a ^ (2 : ℕ) * -(c * d)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= ((a * a) * (c * d))); (2.0 > 0.0)
            if (0.0 <= (a * a)) && (0.0 <= (c * d)) { cert_piece_58(a, b, c, d, s); }  // cert: mul_nonneg_of_nonpos_of_nonpos
            if (0.0 <= (a * a)) && (0.0 <= (a * c)) { cert_piece_59(a, b, c, d, s); }  // cert: mul_nonneg_of_nonpos_of_nonpos
            if (0.0 < a) && (0.0 < c) { cert_piece_60(a, b, c, d, s); }  // cert: mul_pos
            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * -(-d ^ (2 : ℕ) * -(a * b)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= ((d * d) * (a * b))); (2.0 > 0.0)
            if (0.0 <= (d * d)) && (0.0 <= (a * b)) { cert_piece_61(a, b, c, d, s); }  // cert: mul_nonneg_of_nonpos_of_nonpos
            if (0.0 < a) && (0.0 < b) { cert_piece_62(a, b, c, d, s); }  // cert: mul_pos
            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * -(-d ^ (2 : ℕ) * -(b * c)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= ((d * d) * (b * c))); (2.0 > 0.0)
            if (0.0 <= (d * d)) && (0.0 <= (b * c)) { cert_piece_63(a, b, c, d, s); }  // cert: mul_nonneg_of_nonpos_of_nonpos
            if (0.0 <= (d * d)) && (0.0 <= (b * d)) { cert_piece_64(a, b, c, d, s); }  // cert: mul_nonneg_of_nonpos_of_nonpos
            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * -(-c ^ (2 : ℕ) * -(a * b)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= ((c * c) * (a * b))); (2.0 > 0.0)
            if (0.0 <= (c * c)) && (0.0 <= (a * b)) { cert_piece_65(a, b, c, d, s); }  // cert: mul_nonneg_of_nonpos_of_nonpos
            if (0.0 <= (c * c)) && (0.0 <= (a * c)) { cert_piece_66(a, b, c, d, s); }  // cert: mul_nonneg_of_nonpos_of_nonpos
            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * -(-c ^ (2 : ℕ) * -(a * d)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= ((c * c) * (a * d))); (2.0 > 0.0)
            if (0.0 <= (c * c)) && (0.0 <= (a * d)) { cert_piece_67(a, b, c, d, s); }  // cert: mul_nonneg_of_nonpos_of_nonpos
            // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(3 : ℝ) * -(-(a * b) * -(c * d)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < ((a * b) * (c * d))); (3.0 > 0.0)
            if (0.0 < (a * b)) && (0.0 < (c * d)) { cert_piece_68(a, b, c, d, s); }  // cert: mul_pos_of_neg_of_neg
            // UNCITED-APPLIED add_nonpos ×14: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `a * b * d * c * (12 : ℝ) + a * b * d ^ (2 : ℕ) * (6 : ℝ) + a * b * c ^ (2 : ℕ) * (6 : ℝ) + a * b ^ (2 : ℕ) * d * (6 : ℝ…`
            cert_identity_69(a, b, c, d, s);  // cert: add_lt_of_le_of_neg
            // UNCITED-APPLIED internal ×34 [exec 1135 5763-5947]: applications made inside the tactic's own automation, not stated — neg_nonpos_of_nonneg ×8, mul_nonneg_of_nonpos_of_nonpos ×8, neg_neg_of_pos ×7, mul_pos_of_neg_of_neg ×1; machinery/glue: Linarith.mul_nonpos ×8, Linarith.lt_irrefl ×1, Linarith.mul_neg ×1 (cited in this block, not counted here: le_of_lt [Lean recorded ×6], mul_pos [Lean recorded ×6], sq_nonneg [Lean recorded ×4])
            // UNCITED-APPLIED internal ×237 [exec 1136 5763-5947]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8 (+33 more heads, ×205) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 1137 5763-5947]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 1138 5763-5947]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 1139 5763-5947]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 1140 5763-5947]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 1141 5763-5947]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 1142 5763-5947]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 1143 5763-5947]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 1144 5763-5947]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 1145 5763-5947]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 1146 5763-5947]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            // UNCITED-APPLIED internal ×5 [exec 1147 5763-5947]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 1137, 1138, 1139, 1140, 1141, 1142 … / `ring1` exec 1136)]
            SqNonneg(b);  // cite: sq_nonneg [applied by the tactic, not named in it]
            SqNonneg(d);  // cite: sq_nonneg [applied by the tactic, not named in it]
            SqNonneg(a);  // cite: sq_nonneg [applied by the tactic, not named in it]
            SqNonneg(c);  // cite: sq_nonneg [applied by the tactic, not named in it]
            if ((-((c * d))) < (0.0)) { LeOfLt(-((c * d)), 0.0); }  // cite: le_of_lt [applied by the tactic, not named in it]
            if ((-((a * d))) < (0.0)) { LeOfLt(-((a * d)), 0.0); }  // cite: le_of_lt [applied by the tactic, not named in it]
            if ((-((b * d))) < (0.0)) { LeOfLt(-((b * d)), 0.0); }  // cite: le_of_lt [applied by the tactic, not named in it]
            if ((-((b * c))) < (0.0)) { LeOfLt(-((b * c)), 0.0); }  // cite: le_of_lt [applied by the tactic, not named in it]
            if ((-((a * c))) < (0.0)) { LeOfLt(-((a * c)), 0.0); }  // cite: le_of_lt [applied by the tactic, not named in it]
            if ((-((a * b))) < (0.0)) { LeOfLt(-((a * b)), 0.0); }  // cite: le_of_lt [applied by the tactic, not named in it]
            assert (0.0 < (a)) && (0.0 < (b));  // precondition of MulPos (Lean: mul_pos)
            MulPos(a, b);  // cite: mul_pos
            assert (0.0 < (a)) && (0.0 < (c));  // precondition of MulPos (Lean: mul_pos)
            MulPos(a, c);  // cite: mul_pos
            assert (0.0 < (b)) && (0.0 < (c));  // precondition of MulPos (Lean: mul_pos)
            MulPos(b, c);  // cite: mul_pos
            assert (0.0 < (b)) && (0.0 < (d));  // precondition of MulPos (Lean: mul_pos)
            MulPos(b, d);  // cite: mul_pos
            assert (0.0 < (a)) && (0.0 < (d));  // precondition of MulPos (Lean: mul_pos)
            MulPos(a, d);  // cite: mul_pos
            assert (0.0 < (c)) && (0.0 < (d));  // precondition of MulPos (Lean: mul_pos)
            MulPos(c, d);  // cite: mul_pos
          }
        }
      }
    }
}

