// CLOSED — failing line imo_1966_p4-397: theorem imo_1966_p4, Dafny line 397 (OOR: Verification out of resource (imo_1966_p4))
// failing Dafny line: assert (Real.sum(IccN(1, n), ((k: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, k) * x))))) == (Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan((Real.pow(2.0, n) * x))))) by {
// Lean step: apply apply_induction
// hypotheses: 7 facts Z3 had at the line (goal itself removed: 0; the block's own asserts removed: 2); nothing assumed beyond the facts in scope
// how it closes: pass2 — opaque-pow library variant (alt copy of imo_1966_p4-190); pow-fuel bridge lemma bridge_pow_mul (ensures pow(2,n)*x==v ==> pow(2,n)*x==v, proved by Dafny: antecedent is at layer $LS($LZ), consequent at $LS($LS($LZ)); Z3 legacy arith cannot merge pow(L1)*x with pow(L2)*x inside tan/cos by itself); case split n==0 (IccN(1,0)=={} so the sum is 0 and 2^0*x=x — `0 < n` (h1) is not among the facts the extractor kept) / n>0 (bridge, then the hypothesis `forall n_2_1` instance at n is the ensures); body restructured: the block's `assert (0 < n)` moved into the n>0 branch and its restatement of the goal as a body assert removed (the restated body assert does not verify although the identical ensures does — not diagnosed); dropped (allowed) the trigger-less hypotheses that make Z3 matching-loop (strong-induction `forall n0`, h0, inductive_step, base_case)
// Dafny: finished with 14 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "alt/imo_1966_p4-397/out/imo_1966_p4.dfy"
lemma {:induction false} vc_imo_1966_p4_L397(n: nat, x: real)
  requires 0 <= n
  requires forall n_2_1: nat :: 0 < n_2_1 ==> Real.sum(IccN(1, n_2_1), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, n_2_1) * x))
  requires 0 <= 1
  ensures   Real.sum(IccN(1, n), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, n) * x))
{
  if n == 0 {  // [ADDED]
    // n = 0: both sides are 0 (empty Icc sum; 2^0 * x = x) — the Lean goal's `0 < n` is not among the facts here
    assert IccN(1, 0) == {};  // [ADDED]
    assert Real.sum(IccN(1, 0), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == 0.0;  // [ADDED]
    bridge_pow_mul(0, x, x);  // [ADDED]
    assert Real.div(1.0, Real.tan(Real.pow(2.0, 0) * x)) == Real.div(1.0, Real.tan(x));  // [ADDED]
  } else {  // [ADDED]
    bridge_pow_mul(n, x, Real.pow(2.0, n) * x);  // [ADDED]
    // [TACTIC: «_<;>_» apply_induction apply apply_induction <;> simp_all simp_all simp_all]
    // [TACTIC: choice apply_induction apply apply_induction]
    // instance of apply_induction at n: the hypothesis `forall n_2_1` instantiated at n is exactly the ensures (checked as the
    // postcondition); the file's own `assert (0 < n) ==> ...` restating it inside the body does not verify although the
    // identical ensures does (not diagnosed), so it is not restated here
    assert (0 < n);  // sub-goal of `simp_all` (Lean state) // @tac 3646-3654 — holds in this branch
  }
}

  // fuel bridge (pure Dafny, no axiom): Dafny translates the antecedent at pow-layer $LS($LZ) and the
  // consequent at $LS($LS($LZ)); Z3's arithmetic proves it from the layer axiom, and at a call site it
  // hands the E-graph the product equality that congruence on Real.tan(Real.pow(2.0,n)*x) needs.
lemma {:induction false} bridge_pow_mul(n: nat, x: real, v: real)  // [ADDED DECLARATION]
  ensures Real.pow(2.0, n) * x == v ==> Real.pow(2.0, n) * x == v
{ }
