// CLOSED — failing line algebra_others_exirrpowirrrat-198: theorem algebra_others_exirrpowirrrat, Dafny line 198 (ERR: assertion might not hold)
// failing Dafny line: assert false;
// Lean step: have h₅₂ : Irrational (((Real.sqrt 2 ^ Real.sqrt 2 : ℝ) : ℝ) ^ Real.sqrt 2) := h₅₁
// hypotheses: 8 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: S — 
// Dafny: finished with 2 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/algebra_others_exirrpowirrrat.dfy"
lemma {:induction false} vc_algebra_others_exirrpowirrrat_L198()
  requires Irrational(Real.rpow(Real.sqrt(2.0), Real.sqrt(2.0)))
  requires Irrational(Real.sqrt(2.0))
  requires Real.rpow(Real.sqrt(2.0), Real.sqrt(2.0)) > 0.0
  requires Real.rpow(Real.rpow(Real.sqrt(2.0), Real.sqrt(2.0)), Real.sqrt(2.0)) == 2.0
  requires Irrational(Real.rpow(Real.rpow(Real.sqrt(2.0), Real.sqrt(2.0)), Real.sqrt(2.0)))
  requires Irrational(2.0)
  requires Rat.of_int(2).Rational?
  requires Rat.of_int(2).to_real() == 2.0
  ensures   false
{
  NotIrrationalNatCast(2);
}

