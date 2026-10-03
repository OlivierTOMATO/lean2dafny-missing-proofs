// NOT CLOSED — failing line aime_1983_p3-856: theorem aime_1983_p3, Dafny line 856 (ERR: assertion might not hold)
// failing Dafny line: assert (Real.prod({ (-(9.0) + Real.sqrt(61.0)), (-(9.0) - Real.sqrt(61.0)) }, ((x: real) => x)) == ((-(9.0) + Real.sqrt(61.0)) * (-(9.0) - Real.sqrt(61.0)))) by {
// Lean step: simp [Finset.prod_pair (show (-9 + Real.sqrt 61 : ℝ) ≠ -9 - Real.sqrt 61 by
// hypotheses: 8 facts Z3 had at the line; nothing assumed beyond the facts in scope
// not closed: tried H0=error, K5=error; this file is the honest base attempt
// Dafny: 3 parse errors detected in H_aime_1983_p3-856_H0.dfy  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/aime_1983_p3.dfy"
lemma {:induction false} vc_aime_1983_p3_L856(f: real -> real, h1_set: set<real>)
  requires forall x_1: real :: f.requires(x_1)
  requires forall x_1: real :: f(x_1) == x_1 * x_1 + (18.0 * x_1 + 30.0) - 2.0 * Real.sqrt(x_1 * x_1 + (18.0 * x_1 + 45.0))
  requires forall x_3: real :: (x_3 in h1_set) == (f(x_3) == 0.0)
  requires f(0.0 - 9.0 + Real.sqrt(61.0)) == 0.0
  requires f(0.0 - 9.0 - Real.sqrt(61.0)) == 0.0
  requires forall x_2_1: real :: f.requires(x_2_1)
  requires forall x_2_1: real :: f(x_2_1) == 0.0 ==> x_2_1 == 0.0 - 9.0 + Real.sqrt(61.0) || x_2_1 == 0.0 - 9.0 - Real.sqrt(61.0)
  requires h1_set == 
{
          assert ((-(9.0) + Real.sqrt(61.0)) != (-(9.0) - Real.sqrt(61.0))) by {  // sub-goal of `by` (Lean state) // @tac 5439-5446
            // intro h (hypothesis and goal from the Lean state)
            if ((-(9.0) + Real.sqrt(61.0)) == (-(9.0) - Real.sqrt(61.0))) {
              assert (0.0 <= 61.0) by {  // sub-goal of `by` (Lean state) // @tac 5520-5528
                // [TACTIC: «Norm_num[_]At___»]
              }
              // [TACTIC: «Nlinarith[_]At___» [ Real.sqrt_nonneg 61 , Real.sq_sqrt ( show 0 ≤ 61 by norm_num norm_num ) ]]
              // UNCITED Real.sqrt_nonneg: named here, no record of its application here; the harvest has no application record for this execution at all (its proof term was not captured), so whether Lean applied it here is unknown: not stated
              // UNCITED Real.sq_sqrt: Lean's record attributes its application to the enclosing tactic at 5349-5532, not to this one; not placed here
              assert false;  // goal after intro (Lean state) // @tac 5457-5530
            }
          }
          // [TACTIC: «_<;>_» [ Finset.prod_pair ( show ( - 9 + Real.sqrt 61 : ℝ ) ≠ - 9 - Real.sqrt 61 by intro h intro h nlinarith [ Real.sqrt_nonneg 61 , Real.sq_sqrt ( show 0 ≤ 61 by norm_num norm_num ) ] nlinarith [ Real.sqrt_nonneg 61 , Real.sq_sqrt ( show 0 ≤ 61 by norm_num norm_num ) ] ) ] simp [ Finset.prod_pair ( show ( - 9 + Real.sqrt 61 : ℝ ) ≠ - 9 - Real.sqrt 61 by intro h intro h nlinarith [ Real.sqrt_nonneg 61 , Real.sq_sqrt ( show 0 ≤ 61 by norm_num norm_num ) ] nlinarith [ Real.sqrt_nonneg 61 , Real.sq_sqrt ( show 0 ≤ 61 by norm_num norm_num ) ] ) ] simp [ Finset.prod_pair ( show ( - 9 + Real.sqrt 61 : ℝ ) ≠ - 9 - Real.sqrt 61 by intro h intro h nlinarith [ Real.sqrt_nonneg 61 , Real.sq_sqrt ( show 0 ≤ 61 by norm_num norm_num ) ] nlinarith [ Real.sqrt_nonneg 61 , Real.sq_sqrt ( show 0 ≤ 61 by norm_num norm_num ) ] ) ] <;> ring_nf ring_nf <;> norm_num norm_num <;> nlinarith [ Real.sqrt_nonneg 61 , Real.sq_sqrt ( show 0 ≤ 61 by norm_num norm_num ) ] nlinarith [ Real.sqrt_nonneg 61 , Real.sq_sqrt ( show 0 ≤ 61 by norm_num norm_num ) ]]
          // [TACTIC: simp [ Finset.prod_pair ( show ( - 9 + Real.sqrt 61 : ℝ ) ≠ - 9 - Real.sqrt 61 by intro h intro h nlinarith [ Real.sqrt_nonneg 61 , Real.sq_sqrt ( show 0 ≤ 61 by norm_num norm_num ) ] nlinarith [ Real.sqrt_nonneg 61 , Real.sq_sqrt ( show 0 ≤ 61 by norm_num norm_num ) ] ) ]]
          // UNCITED Finset.prod_pair: recorded instance not expressible here (sort/type/scope), not guessed
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
          // `simp` step's recorded applications: the lemma applications Lean's proof term of this step is built from (no linarith run here) (Lean execution 5349-5532 exec 1429)
          // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(244 : ℝ) * (-1 : ℝ) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0.0 < 1.0); (244.0 > 0.0)
          // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(4 : ℝ) * -(√(61 : ℝ) ^ (2 : ℕ) - (61 : ℝ)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-(((Real.sqrt(61.0) * Real.sqrt(61.0)) - 61.0)) == 0.0); (4.0 > 0.0)
          if (((-(9.0) + Real.sqrt(61.0)) - (-(9.0) - Real.sqrt(61.0))) == 0.0) { assert ((((-(9.0) + Real.sqrt(61.0)) - (-(9.0) - Real.sqrt(61.0))) * ((-(9.0) + Real.sqrt(61.0)) - (-(9.0) - Real.sqrt(61.0)))) == 0.0); }  // cert: Linarith.zero_mul_eq
          // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(244 : ℝ) * (-1 : ℝ) + (4 : ℝ) * -(√(61 : ℝ) ^ (2 : ℕ) - (61 : ℝ)) < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
          cert_identity_29(f, h1_set);  // cert: Linarith.lt_of_lt_of_eq
          // `simp` closed the goal; the rest of the chain did not run
          // [TACTIC: «Norm_num[_]At___»]
          assert (0.0 <= (61.0));  // precondition of RealSqSqrt (Lean: Real.sq_sqrt)
          RealSqSqrt(61.0);  // cite: Real.sq_sqrt
          // UNCITED-APPLIED internal ×168 [exec 1429 5349-5532]: applications made inside the tactic's own automation, not stated — sub_eq_zero_of_eq ×2, Finset.prod_pair ×1, neg_neg_of_pos ×1, zero_lt_one ×1, neg_eq_zero ×1; machinery/glue: Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Meta.NormNum.isInt_mul ×8, Mathlib.Meta.NormNum.isNat_ofNat ×7, Mathlib.Meta.NormNum.IsNat.to_raw_eq ×7 (+54 more heads, ×132) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×2], Real.sq_sqrt [Lean recorded ×1])
}

