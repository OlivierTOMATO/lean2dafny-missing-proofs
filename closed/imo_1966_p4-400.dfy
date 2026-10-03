// CLOSED — failing line imo_1966_p4-400: theorem imo_1966_p4, Dafny line 400 (OOR: Verification out of resource (imo_1966_p4))
// failing Dafny line: assert ((0 < n) ==> (Real.sum(IccN(1, n), ((k: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, k) * x))))) == (Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan((Real.pow(2.0, n) * x))))));
// Lean step: final_conclusion
// hypotheses: 8 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: pass2 — opaque-pow library variant (alt copy of imo_1966_p4-190); body = bridge_pow_mul(n, x, Real.pow(2.0,n)*x) — pow-fuel bridge lemma bridge_pow_mul (ensures pow(2,n)*x==v ==> pow(2,n)*x==v, proved by Dafny: antecedent is at layer $LS($LZ), consequent at $LS($LS($LZ)); Z3 legacy arith cannot merge pow(L1)*x with pow(L2)*x inside tan/cos by itself) — after which the `forall n_2_1` hypothesis instance at n gives the goal; dropped (allowed) the trigger-less hypotheses that make Z3 matching-loop (strong-induction `forall n0`, h0, inductive_step, base_case)
// Dafny: finished with 4 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "alt/imo_1966_p4-400/out/imo_1966_p4.dfy"
lemma {:induction false} vc_imo_1966_p4_L400(n: nat, x: real)
  requires 0 <= n
  requires 0 < n
  requires forall n_2_1: nat :: 0 < n_2_1 ==> Real.sum(IccN(1, n_2_1), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, n_2_1) * x))
  requires (0 <= 1) || (n <= 0)
  ensures   Real.sum(IccN(1, n), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, n) * x))
{
  bridge_pow_mul(n, x, Real.pow(2.0, n) * x);  // [ADDED]
}

  // fuel bridge (pure Dafny, no axiom): Dafny translates the antecedent at pow-layer $LS($LZ) and the
  // consequent at $LS($LS($LZ)); Z3's arithmetic proves it from the layer axiom, and at a call site it
  // hands the E-graph the product equality that congruence on Real.tan(Real.pow(2.0,n)*x) needs.
lemma {:induction false} bridge_pow_mul(n: nat, x: real, v: real)  // [ADDED DECLARATION]
  ensures Real.pow(2.0, n) * x == v ==> Real.pow(2.0, n) * x == v
{ }
