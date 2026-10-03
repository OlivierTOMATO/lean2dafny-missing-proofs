// CLOSED — failing line imo_1974_p5-1803: theorem imo_1974_p5, Dafny line 1803 (ERR: assertion might not hold)
// failing Dafny line: assert (0.0 < (2.0) - (s));
// Lean step: upper_bound
// hypotheses: 25 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: pass2 — body = the file's own later assert-by block proving N < 2*D (Dafny lines 1805-1926), then a var-bound fraction chain with proved helper DivAddFrac (p/x+q/y == (p*y+q*x)/(x*y)) giving s == p4/d4 with p4 == N, d4 == D; MulPos for d4>0; proved helper TwoSubDivPos (q := p/x; q*x == p; 2<=q contradicts p<2x) gives 0 < 2 - s
// Dafny: finished with 166 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/imo_1974_p5.dfy"
// helper (proved, not an axiom): adding two fractions over nonzero denominators
lemma DivAddFrac(p: real, q: real, x: real, y: real)  // [ADDED DECLARATION]
  requires x != 0.0
  requires y != 0.0
  ensures p / x + q / y == (p * y + q * x) / (x * y)
{
  assert p / x == (p * y) / (x * y);
  assert q / y == (q * x) / (x * y);
}

// helper (proved, not an axiom): p < 2x and x > 0 give 0 < 2 - p/x
lemma TwoSubDivPos(p: real, x: real)  // [ADDED DECLARATION]
  requires 0.0 < x
  requires p < 2.0 * x
  ensures 0.0 < 2.0 - p / x
{
  var q := p / x;
  assert q * x == p;
  if 2.0 <= q { assert 2.0 * x <= q * x; assert false; }
}

lemma {:induction false} vc_imo_1974_p5_L1803(a: real, b: real, c: real, d: real, s: real)
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
  requires 1.0 < s
  requires 0.0 < a + b + c + d
  requires 0.0 < a + b + d
  requires 0.0 < a + b + c
  requires 0.0 < b + c + d
  requires 0.0 < a + c + d
  requires 0.0 < (a + b + d) * (a + b + c)
  requires 0.0 < (a + b + d) * (a + b + c) * (b + c + d)
  requires 0.0 < (a + b + d) * (a + b + c) * (b + c + d) * (a + c + d)
  requires 0.0 < ((a * (a + b + c) + b * (a + b + d)) * (b + c + d) + c * ((a + b + d) * (a + b + c))) * (a + c + d) + d * ((a + b + d) * (a + b + c) * (b + c + d))
  requires 1.0 < Real.div(((a * (a + b + c) + b * (a + b + d)) * (b + c + d) + c * ((a + b + d) * (a + b + c))) * (a + c + d) + d * ((a + b + d) * (a + b + c) * (b + c + d)), (a + b + d) * (a + b + c) * (b + c + d) * (a + c + d))
  ensures   0.0 < 2.0 - s
{
    assert (0.0 < (2.0 - s)) by {  // sub-goal before `field_simp` (Lean state) // @tac 6549-6566  // [ADDED]
      // [TACTIC: «Field_simp[_]At___» [ h₁ ]]
      // cite: mul_pos [same instance stated in an enclosing scope: MulPos(((a + b) + d), ((a + b) + c));]
      if (0.0 < ((((a + b) + d) * ((a + b) + c)))) && (0.0 < (((b + c) + d))) { MulPos((((a + b) + d) * ((a + b) + c)), ((b + c) + d)); }  // cite: mul_pos [applied by the tactic, not named in it]  // [ADDED]
      if (0.0 < (((((a + b) + d) * ((a + b) + c)) * ((b + c) + d)))) && (0.0 < (((a + c) + d))) { MulPos(((((a + b) + d) * ((a + b) + c)) * ((b + c) + d)), ((a + c) + d)); }  // cite: mul_pos [applied by the tactic, not named in it]  // [ADDED]
      // `fieldSimp` step's recorded applications: the lemma applications Lean's proof term of this step is built from (no linarith run here) (Lean execution 6549-6566 exec 1256)
      if (0.0 < ((a + b) + d)) && (0.0 < ((a + b) + c)) { cert_piece_75(a, b, c, d, s); }  // cert: mul_pos  // [ADDED]
      if (0.0 < (((a + b) + d) * ((a + b) + c))) && (0.0 < ((b + c) + d)) { cert_piece_76(a, b, c, d, s); }  // cert: mul_pos  // [ADDED]
      if (0.0 < ((((a + b) + d) * ((a + b) + c)) * ((b + c) + d))) && (0.0 < ((a + c) + d)) { cert_piece_77(a, b, c, d, s); }  // cert: mul_pos  // [ADDED]
      // UNCITED-APPLIED internal ×37 [exec 1256 6549-6566]: applications made inside the tactic's own automation, not stated — ne_of_gt ×7, add_pos ×7, add_div' ×3, div_mul_eq_mul_div ×3, div_add' ×3, div_div ×3, sub_div' ×1; machinery/glue: congrArg ×6, Eq.trans ×4 (cited in this block, not counted here: mul_pos [Lean recorded ×3])
      assert (((((((a * ((a + b) + c)) + (b * ((a + b) + d))) * ((b + c) + d)) + (c * (((a + b) + d) * ((a + b) + c)))) * ((a + c) + d)) + (d * ((((a + b) + d) * ((a + b) + c)) * ((b + c) + d)))) < (2.0 * (((((a + b) + d) * ((a + b) + c)) * ((b + c) + d)) * ((a + c) + d)))) by {  // sub-goal before `ring_nf` (Lean state) // @tac 6571-6578  // [ADDED]
        // [TACTIC: Ring_nfAt]
        PowOne(a);  // cite: pow_one [applied by the tactic, not named in it]  // [ADDED]
        PowOne(b);  // cite: pow_one [applied by the tactic, not named in it]  // [ADDED]
        PowOne(c);  // cite: pow_one [applied by the tactic, not named in it]  // [ADDED]
        PowOne(d);  // cite: pow_one [applied by the tactic, not named in it]  // [ADDED]
        // UNCITED-APPLIED mul_one ×6: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := b ^ (3 : ℕ)); (a := d ^ (3 : ℕ)); (a := b); (a := d); (a := c ^ (3 : ℕ)); (a := c)
        // UNCITED-APPLIED internal ×176 [exec 1257 6571-6578]: applications made inside the tactic's own automation, not stated — mul_one ×6, add_zero ×2; machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×8, Mathlib.Tactic.Ring.add_pf_zero_add ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pp_pf_overlap ×8 (+26 more heads, ×136) (cited in this block, not counted here: pow_one [Lean recorded ×4])
        assert (((((((((((((((((((((((((((((((((((a * b) * c) * d) * 12.0) + (((a * b) * (c * c)) * 6.0)) + (((a * b) * (d * d)) * 6.0)) + (((a * (b * b)) * c) * 4.0)) + (((a * (b * b)) * d) * 6.0)) + (a * (b * b * b))) + (((a * c) * (d * d)) * 4.0)) + (((a * (c * c)) * d) * 6.0)) + ((a * (c * c * c)) * 2.0)) + (a * (d * d * d))) + ((((a * a) * b) * c) * 6.0)) + ((((a * a) * b) * d) * 4.0)) + (((a * a) * (b * b)) * 2.0)) + ((((a * a) * c) * d) * 6.0)) + (((a * a) * (c * c)) * 4.0)) + (((a * a) * (d * d)) * 2.0)) + ((a * a * a) * b)) + (((a * a * a) * c) * 2.0)) + ((a * a * a) * d)) + (((b * c) * (d * d)) * 6.0)) + (((b * (c * c)) * d) * 4.0)) + (b * (c * c * c))) + ((b * (d * d * d)) * 2.0)) + ((((b * b) * c) * d) * 6.0)) + (((b * b) * (c * c)) * 2.0)) + (((b * b) * (d * d)) * 4.0)) + ((b * b * b) * c)) + (((b * b * b) * d) * 2.0)) + (c * (d * d * d))) + (((c * c) * (d * d)) * 2.0)) + ((c * c * c) * d)) < ((((((((((((((((((((((((((((((((((a * b) * c) * d) * 18.0) + (((a * b) * (c * c)) * 8.0)) + (((a * b) * (d * d)) * 8.0)) + (((a * (b * b)) * c) * 8.0)) + (((a * (b * b)) * d) * 8.0)) + ((a * (b * b * b)) * 2.0)) + (((a * c) * (d * d)) * 8.0)) + (((a * (c * c)) * d) * 8.0)) + ((a * (c * c * c)) * 2.0)) + ((a * (d * d * d)) * 2.0)) + ((((a * a) * b) * c) * 8.0)) + ((((a * a) * b) * d) * 8.0)) + (((a * a) * (b * b)) * 4.0)) + ((((a * a) * c) * d) * 8.0)) + (((a * a) * (c * c)) * 4.0)) + (((a * a) * (d * d)) * 4.0)) + (((a * a * a) * b) * 2.0)) + (((a * a * a) * c) * 2.0)) + (((a * a * a) * d) * 2.0)) + (((b * c) * (d * d)) * 8.0)) + (((b * (c * c)) * d) * 8.0)) + ((b * (c * c * c)) * 2.0)) + ((b * (d * d * d)) * 2.0)) + ((((b * b) * c) * d) * 8.0)) + (((b * b) * (c * c)) * 4.0)) + (((b * b) * (d * d)) * 4.0)) + (((b * b * b) * c) * 2.0)) + (((b * b * b) * d) * 2.0)) + ((c * (d * d * d)) * 2.0)) + (((c * c) * (d * d)) * 4.0)) + (((c * c * c) * d) * 2.0))) by {  // sub-goal before `nlinarith` (Lean state) // @tac 6583-6767  // [ADDED]
          // [TACTIC: «Nlinarith[_]At___» [ mul_pos h₀ . 1 h₀ . 2 . 1 , mul_pos h₀ . 1 h₀ . 2 . 2 . 1 , mul_pos h₀ . 1 h₀ . 2 . 2 . 2 , mul_pos h₀ . 2 . 1 h₀ . 2 . 2 . 1 , mul_pos h₀ . 2 . 1 h₀ . 2 . 2 . 2 , mul_pos h₀ . 2 . 2 . 1 h₀ . 2 . 2 . 2 ]]
          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 6583-6767 exec 1258)
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * -(-b ^ (2 : ℕ) * -c ^ (2 : ℕ)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= ((b * b) * (c * c))); (2.0 > 0.0)
          if (0.0 <= (b * b)) && (0.0 <= (c * c)) { cert_piece_78(a, b, c, d, s); }  // cert: mul_nonneg_of_nonpos_of_nonpos  // [ADDED]
          SqNonneg(b); assert (0.0 <= (b * b));  // cert: sq_nonneg  // [ADDED]
          SqNonneg(c); assert (0.0 <= (c * c));  // cert: sq_nonneg  // [ADDED]
          if (0.0 <= (b * b)) && (0.0 <= (a * b)) { cert_piece_79(a, b, c, d, s); }  // cert: mul_nonneg_of_nonpos_of_nonpos  // [ADDED]
          if (0.0 < a) && (0.0 < b) { cert_piece_80(a, b, c, d, s); }  // cert: mul_pos  // [ADDED]
          if (0.0 <= (b * b)) && (0.0 <= (b * c)) { cert_piece_81(a, b, c, d, s); }  // cert: mul_nonneg_of_nonpos_of_nonpos  // [ADDED]
          if (0.0 < b) && (0.0 < c) { cert_piece_82(a, b, c, d, s); }  // cert: mul_pos  // [ADDED]
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * -(-b ^ (2 : ℕ) * -(c * d)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= ((b * b) * (c * d))); (2.0 > 0.0)
          if (0.0 <= (b * b)) && (0.0 <= (c * d)) { cert_piece_83(a, b, c, d, s); }  // cert: mul_nonneg_of_nonpos_of_nonpos  // [ADDED]
          if (0.0 < c) && (0.0 < d) { cert_piece_84(a, b, c, d, s); }  // cert: mul_pos  // [ADDED]
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * -(-a ^ (2 : ℕ) * -d ^ (2 : ℕ)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= ((a * a) * (d * d))); (2.0 > 0.0)
          if (0.0 <= (a * a)) && (0.0 <= (d * d)) { cert_piece_85(a, b, c, d, s); }  // cert: mul_nonneg_of_nonpos_of_nonpos  // [ADDED]
          SqNonneg(a); assert (0.0 <= (a * a));  // cert: sq_nonneg  // [ADDED]
          SqNonneg(d); assert (0.0 <= (d * d));  // cert: sq_nonneg  // [ADDED]
          if (0.0 <= (a * a)) && (0.0 <= (a * b)) { cert_piece_86(a, b, c, d, s); }  // cert: mul_nonneg_of_nonpos_of_nonpos  // [ADDED]
          if (0.0 <= (a * a)) && (0.0 <= (a * d)) { cert_piece_87(a, b, c, d, s); }  // cert: mul_nonneg_of_nonpos_of_nonpos  // [ADDED]
          if (0.0 < a) && (0.0 < d) { cert_piece_88(a, b, c, d, s); }  // cert: mul_pos  // [ADDED]
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * -(-a ^ (2 : ℕ) * -(c * d)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= ((a * a) * (c * d))); (2.0 > 0.0)
          if (0.0 <= (a * a)) && (0.0 <= (c * d)) { cert_piece_89(a, b, c, d, s); }  // cert: mul_nonneg_of_nonpos_of_nonpos  // [ADDED]
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * -(-c ^ (2 : ℕ) * -d ^ (2 : ℕ)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= ((c * c) * (d * d))); (2.0 > 0.0)
          if (0.0 <= (c * c)) && (0.0 <= (d * d)) { cert_piece_90(a, b, c, d, s); }  // cert: mul_nonneg_of_nonpos_of_nonpos  // [ADDED]
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * -(-c ^ (2 : ℕ) * -(a * b)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= ((c * c) * (a * b))); (2.0 > 0.0)
          if (0.0 <= (c * c)) && (0.0 <= (a * b)) { cert_piece_91(a, b, c, d, s); }  // cert: mul_nonneg_of_nonpos_of_nonpos  // [ADDED]
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * -(-c ^ (2 : ℕ) * -(a * d)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= ((c * c) * (a * d))); (2.0 > 0.0)
          if (0.0 <= (c * c)) && (0.0 <= (a * d)) { cert_piece_92(a, b, c, d, s); }  // cert: mul_nonneg_of_nonpos_of_nonpos  // [ADDED]
          if (0.0 <= (c * c)) && (0.0 <= (b * c)) { cert_piece_93(a, b, c, d, s); }  // cert: mul_nonneg_of_nonpos_of_nonpos  // [ADDED]
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(4 : ℝ) * -(-c ^ (2 : ℕ) * -(b * d)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= ((c * c) * (b * d))); (4.0 > 0.0)
          if (0.0 <= (c * c)) && (0.0 <= (b * d)) { cert_piece_94(a, b, c, d, s); }  // cert: mul_nonneg_of_nonpos_of_nonpos  // [ADDED]
          if (0.0 < b) && (0.0 < d) { cert_piece_95(a, b, c, d, s); }  // cert: mul_pos  // [ADDED]
          if (0.0 <= (c * c)) && (0.0 <= (c * d)) { cert_piece_96(a, b, c, d, s); }  // cert: mul_nonneg_of_nonpos_of_nonpos  // [ADDED]
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * -(-d ^ (2 : ℕ) * -(a * b)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= ((d * d) * (a * b))); (2.0 > 0.0)
          if (0.0 <= (d * d)) && (0.0 <= (a * b)) { cert_piece_97(a, b, c, d, s); }  // cert: mul_nonneg_of_nonpos_of_nonpos  // [ADDED]
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(4 : ℝ) * -(-d ^ (2 : ℕ) * -(a * c)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= ((d * d) * (a * c))); (4.0 > 0.0)
          if (0.0 <= (d * d)) && (0.0 <= (a * c)) { cert_piece_98(a, b, c, d, s); }  // cert: mul_nonneg_of_nonpos_of_nonpos  // [ADDED]
          if (0.0 < a) && (0.0 < c) { cert_piece_99(a, b, c, d, s); }  // cert: mul_pos  // [ADDED]
          if (0.0 <= (d * d)) && (0.0 <= (a * d)) { cert_piece_100(a, b, c, d, s); }  // cert: mul_nonneg_of_nonpos_of_nonpos  // [ADDED]
          // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * -(-d ^ (2 : ℕ) * -(b * c)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 <= ((d * d) * (b * c))); (2.0 > 0.0)
          if (0.0 <= (d * d)) && (0.0 <= (b * c)) { cert_piece_101(a, b, c, d, s); }  // cert: mul_nonneg_of_nonpos_of_nonpos  // [ADDED]
          if (0.0 <= (d * d)) && (0.0 <= (c * d)) { cert_piece_102(a, b, c, d, s); }  // cert: mul_nonneg_of_nonpos_of_nonpos  // [ADDED]
          // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * -(-(a * b) * -(a * b)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < ((a * b) * (a * b))); (2.0 > 0.0)
          if (0.0 < (a * b)) { cert_piece_103(a, b, c, d, s); }  // cert: mul_pos_of_neg_of_neg (square of a compound term: Z3 may not carry it through the lemma binding)  // [ADDED]
          // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * -(-(a * b) * -(a * c)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < ((a * b) * (a * c))); (2.0 > 0.0)
          if (0.0 < (a * b)) && (0.0 < (a * c)) { cert_piece_104(a, b, c, d, s); }  // cert: mul_pos_of_neg_of_neg  // [ADDED]
          // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(4 : ℝ) * -(-(a * b) * -(a * d)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < ((a * b) * (a * d))); (4.0 > 0.0)
          if (0.0 < (a * b)) && (0.0 < (a * d)) { cert_piece_105(a, b, c, d, s); }  // cert: mul_pos_of_neg_of_neg  // [ADDED]
          // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(4 : ℝ) * -(-(a * b) * -(b * c)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < ((a * b) * (b * c))); (4.0 > 0.0)
          if (0.0 < (a * b)) && (0.0 < (b * c)) { cert_piece_106(a, b, c, d, s); }  // cert: mul_pos_of_neg_of_neg  // [ADDED]
          // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(2 : ℝ) * -(-(a * b) * -(b * d)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < ((a * b) * (b * d))); (2.0 > 0.0)
          if (0.0 < (a * b)) && (0.0 < (b * d)) { cert_piece_107(a, b, c, d, s); }  // cert: mul_pos_of_neg_of_neg  // [ADDED]
          // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(6 : ℝ) * -(-(a * b) * -(c * d)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < ((a * b) * (c * d))); (6.0 > 0.0)
          if (0.0 < (a * b)) && (0.0 < (c * d)) { cert_piece_108(a, b, c, d, s); }  // cert: mul_pos_of_neg_of_neg  // [ADDED]
          // UNCITED-APPLIED Left.add_neg ×4: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `a * b * c * d * (18 : ℝ) + a * b * c ^ (2 : ℕ) * (8 : ℝ) + a * b * d ^ (2 : ℕ) * (8 : ℝ) + a * b ^ (2 : ℕ) * c * (8 : ℝ…`
          // UNCITED-APPLIED add_lt_of_le_of_neg: certificate sum `a * b * c * d * (18 : ℝ) + a * b * c ^ (2 : ℕ) * (8 : ℝ) + a * b * d ^ (2 : ℕ) * (8 : ℝ) + a * b ^ (2 : ℕ) * c * (8 : ℝ…` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
          // UNCITED-APPLIED add_nonpos ×19: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `a * b * c * d * (18 : ℝ) + a * b * c ^ (2 : ℕ) * (8 : ℝ) + a * b * d ^ (2 : ℕ) * (8 : ℝ) + a * b ^ (2 : ℕ) * c * (8 : ℝ…`
          cert_identity_109(a, b, c, d, s);  // cert: Left.add_neg  // [ADDED]
          // UNCITED-APPLIED internal ×45 [exec 1258 6583-6767]: applications made inside the tactic's own automation, not stated — neg_nonpos_of_nonneg ×8, mul_nonneg_of_nonpos_of_nonpos ×8, neg_neg_of_pos ×8, mul_pos_of_neg_of_neg ×6; machinery/glue: Linarith.mul_nonpos ×8, Linarith.mul_neg ×6, Linarith.lt_irrefl ×1 (cited in this block, not counted here: le_of_lt [Lean recorded ×6], mul_pos [Lean recorded ×6], sq_nonneg [Lean recorded ×4])
          // UNCITED-APPLIED internal ×5 [exec 1261 6583-6767]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1262 6583-6767]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1263 6583-6767]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1264 6583-6767]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1265 6583-6767]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1266 6583-6767]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1267 6583-6767]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1268 6583-6767]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1269 6583-6767]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1270 6583-6767]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1271 6583-6767]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1272 6583-6767]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1273 6583-6767]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1274 6583-6767]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1275 6583-6767]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1276 6583-6767]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          assert (0.0 < (a)) && (0.0 < (b));  // precondition of MulPos (Lean: mul_pos)  // [ADDED]
          MulPos(a, b);  // cite: mul_pos  // [ADDED]
          assert (0.0 < (b)) && (0.0 < (c));  // precondition of MulPos (Lean: mul_pos)  // [ADDED]
          MulPos(b, c);  // cite: mul_pos  // [ADDED]
          assert (0.0 < (c)) && (0.0 < (d));  // precondition of MulPos (Lean: mul_pos)  // [ADDED]
          MulPos(c, d);  // cite: mul_pos  // [ADDED]
          assert (0.0 < (a)) && (0.0 < (d));  // precondition of MulPos (Lean: mul_pos)  // [ADDED]
          MulPos(a, d);  // cite: mul_pos  // [ADDED]
          assert (0.0 < (b)) && (0.0 < (d));  // precondition of MulPos (Lean: mul_pos)  // [ADDED]
          MulPos(b, d);  // cite: mul_pos  // [ADDED]
          assert (0.0 < (a)) && (0.0 < (c));  // precondition of MulPos (Lean: mul_pos)  // [ADDED]
          MulPos(a, c);  // cite: mul_pos  // [ADDED]
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 1260, 1261, 1262, 1263, 1264, 1265 … / `ring1` exec 1259)]  // [ADDED]
          SqNonneg(b);  // cite: sq_nonneg [applied by the tactic, not named in it]  // [ADDED]
          SqNonneg(c);  // cite: sq_nonneg [applied by the tactic, not named in it]  // [ADDED]
          SqNonneg(a);  // cite: sq_nonneg [applied by the tactic, not named in it]  // [ADDED]
          SqNonneg(d);  // cite: sq_nonneg [applied by the tactic, not named in it]  // [ADDED]
          if ((-((a * b))) < (0.0)) { LeOfLt(-((a * b)), 0.0); }  // cite: le_of_lt [applied by the tactic, not named in it]  // [ADDED]
          if ((-((b * c))) < (0.0)) { LeOfLt(-((b * c)), 0.0); }  // cite: le_of_lt [applied by the tactic, not named in it]  // [ADDED]
          if ((-((c * d))) < (0.0)) { LeOfLt(-((c * d)), 0.0); }  // cite: le_of_lt [applied by the tactic, not named in it]  // [ADDED]
          if ((-((a * d))) < (0.0)) { LeOfLt(-((a * d)), 0.0); }  // cite: le_of_lt [applied by the tactic, not named in it]  // [ADDED]
          if ((-((b * d))) < (0.0)) { LeOfLt(-((b * d)), 0.0); }  // cite: le_of_lt [applied by the tactic, not named in it]  // [ADDED]
          if ((-((a * c))) < (0.0)) { LeOfLt(-((a * c)), 0.0); }  // cite: le_of_lt [applied by the tactic, not named in it]  // [ADDED]
          // UNCITED-APPLIED internal ×253 [exec 1259 6583-6767]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8 (+34 more heads, ×221) (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          // UNCITED-APPLIED internal ×5 [exec 1260 6583-6767]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
        }
      }
      var x1 := a + b + d; var y1 := a + b + c; var z1 := b + c + d; var w1 := a + c + d;  // [ADDED]
      assert Real.div(a, a + b + d) == a / x1;  // [ADDED]
      assert Real.div(b, a + b + c) == b / y1;  // [ADDED]
      assert Real.div(c, b + c + d) == c / z1;  // [ADDED]
      assert Real.div(d, a + c + d) == d / w1;  // [ADDED]
      DivAddFrac(a, b, x1, y1);  // [ADDED]
      var p2 := a * y1 + b * x1; var d2 := x1 * y1;  // [ADDED]
      assert a / x1 + b / y1 == p2 / d2;  // [ADDED]
      DivAddFrac(p2, c, d2, z1);  // [ADDED]
      var p3 := p2 * z1 + c * d2; var d3 := d2 * z1;  // [ADDED]
      assert p2 / d2 + c / z1 == p3 / d3;  // [ADDED]
      DivAddFrac(p3, d, d3, w1);  // [ADDED]
      var p4 := p3 * w1 + d * d3; var d4 := d3 * w1;  // [ADDED]
      assert p3 / d3 + d / w1 == p4 / d4;  // [ADDED]
      assert s == p4 / d4;  // [ADDED]
      assert p4 == ((a * (a + b + c) + b * (a + b + d)) * (b + c + d) + c * ((a + b + d) * (a + b + c))) * (a + c + d) + d * ((a + b + d) * (a + b + c) * (b + c + d));  // [ADDED]
      assert d4 == (a + b + d) * (a + b + c) * (b + c + d) * (a + c + d);  // [ADDED]
      assert Real.div(((a * (a + b + c) + b * (a + b + d)) * (b + c + d) + c * ((a + b + d) * (a + b + c))) * (a + c + d) + d * ((a + b + d) * (a + b + c) * (b + c + d)), (a + b + d) * (a + b + c) * (b + c + d) * (a + c + d)) == p4 / d4;  // [ADDED]
      var d3w := d3 * w1;  // [ADDED]
      MulPos(d3, w1);  // [ADDED]
      assert 0.0 < d4;  // [ADDED]
      assert 0.0 < 2.0 * d4 - p4;  // [ADDED]
      TwoSubDivPos(p4, d4);  // [ADDED]
      assert 0.0 < 2.0 - p4 / d4;  // [ADDED]
      assert 0.0 < 2.0 - s;  // [ADDED]
    }
}

