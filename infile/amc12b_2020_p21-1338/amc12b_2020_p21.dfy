// ════════════════════════════════════════════════════════════
// MECHANICAL TRANSLATION (emitter v2) of ast_cache_v2/amc12b_2020_p21.json
// Each Lean `have` → `assert ... by {}` at the same depth;
// quantified haves → forall statements. Typed pipeline only.
// ════════════════════════════════════════════════════════════

include "../../library/library_new.dfy"

// ──────────────────────────────────────────────────
// certificate identity for `h_main/h₃/h₅/h₇/h₉`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_1(S: set<nat>, n: nat)
  ensures (-((((1.0 * (n as real)) + (1.0 * 1000.0)) - (70.0 * (floor(Real.sqrt((n as real))) as real)))) + (((1.0 * (n as real)) + (1.0 * 1000.0)) - (70.0 * (floor(Real.sqrt((n as real))) as real)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h_main/h₃/h₅/h₇/h₉`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_2(S: set<nat>, n: nat)
  ensures ((((1.0 * (n as real)) + (1.0 * 1000.0)) - (70.0 * (floor(Real.sqrt((n as real))) as real))) + ((70.0 * (floor(Real.sqrt((n as real))) as real)) - ((1.0 * (n as real)) + (1.0 * 1000.0)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h_main/h₃/h₅/h₇/h₁₀`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_3(S: set<nat>, n: nat)
  ensures (-((((1.0 * (n as real)) + (1.0 * 1000.0)) - (70.0 * (floor(Real.sqrt((n as real))) as real)))) + (((n as real) + 1000.0) - ((floor(Real.sqrt((n as real))) as real) * 70.0))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h_main/h₃/h₅/h₇/h₁₀`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_4(S: set<nat>, n: nat)
  ensures ((((1.0 * (n as real)) + (1.0 * 1000.0)) - (70.0 * (floor(Real.sqrt((n as real))) as real))) + (((floor(Real.sqrt((n as real))) as real) * 70.0) - ((n as real) + 1000.0))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h_main/h₇/h₁₀`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_5(S: set<nat>, k: nat, n: nat)
  ensures ((-((((1.0 * (n as real)) + (1.0 * 1000.0)) - (70.0 * (floor(Real.sqrt((n as real))) as real)))) + -((((70.0 * (k as real)) + (70.0 * 15.0)) - ((1.0 * (n as real)) + (1.0 * 1000.0))))) + (70.0 * (((k as real) + 15.0) - (floor(Real.sqrt((n as real))) as real)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h_main/h₇/h₁₀`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_6(S: set<nat>, k: nat, n: nat)
  ensures (((((1.0 * (n as real)) + (1.0 * 1000.0)) - (70.0 * (floor(Real.sqrt((n as real))) as real))) + (((70.0 * (k as real)) + (70.0 * 15.0)) - ((1.0 * (n as real)) + (1.0 * 1000.0)))) + (70.0 * ((floor(Real.sqrt((n as real))) as real) - ((k as real) + 15.0)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h_main/h₈/h₉/h₁₀`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_7(S: set<nat>, k: nat, n: nat)
  ensures (((((k as real) + 15.0) - (floor(Real.sqrt((n as real))) as real)) + ((floor(Real.sqrt((n as real))) as real) - Real.sqrt((n as real)))) + (Real.sqrt((n as real)) - ((k as real) + 15.0))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h_main/h₈/h₁₁`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_8(S: set<nat>, k: nat, n: nat)
  requires (0.0 <= (k as real))
  requires ((((k as real) + 15.0) - Real.sqrt((n as real))) <= 0.0)
  ensures (((k as real) * (((k as real) + 15.0) - Real.sqrt((n as real)))) <= 0.0)
{
  MulNonneg((k as real), -((((k as real) + 15.0) - Real.sqrt((n as real))))); MulNeg((k as real), (((k as real) + 15.0) - Real.sqrt((n as real)))); assert ((k as real)) * (-((((k as real) + 15.0) - Real.sqrt((n as real))))) == -(((k as real)) * ((((k as real) + 15.0) - Real.sqrt((n as real)))));
}

// ──────────────────────────────────────────────────
// certificate piece for `h_main/h₈/h₁₁`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_9(S: set<nat>, k: nat, n: nat)
  requires ((((k as real) + 15.0) - Real.sqrt((n as real))) <= 0.0)
  ensures (0.0 <= ((((k as real) + 15.0) - Real.sqrt((n as real))) * (((k as real) + 15.0) - Real.sqrt((n as real)))))
{
  MulNonneg(-((((k as real) + 15.0) - Real.sqrt((n as real)))), -((((k as real) + 15.0) - Real.sqrt((n as real))))); MulNeg(-((((k as real) + 15.0) - Real.sqrt((n as real)))), (((k as real) + 15.0) - Real.sqrt((n as real)))); assert (-((((k as real) + 15.0) - Real.sqrt((n as real))))) * (-((((k as real) + 15.0) - Real.sqrt((n as real))))) == -((-((((k as real) + 15.0) - Real.sqrt((n as real))))) * ((((k as real) + 15.0) - Real.sqrt((n as real))))); assert (-((((k as real) + 15.0) - Real.sqrt((n as real))))) * ((((k as real) + 15.0) - Real.sqrt((n as real)))) == -(((((k as real) + 15.0) - Real.sqrt((n as real)))) * ((((k as real) + 15.0) - Real.sqrt((n as real)))));
}

// ──────────────────────────────────────────────────
// certificate identity for `h_main/h₈/h₁₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_10(S: set<nat>, k: nat, n: nat)
  ensures (((((30.0 * (((k as real) + 15.0) - Real.sqrt((n as real)))) + ((n as real) - (((k as real) + 15.0) * ((k as real) + 15.0)))) + ((Real.sqrt((n as real)) * Real.sqrt((n as real))) - (n as real))) + (2.0 * ((k as real) * (((k as real) + 15.0) - Real.sqrt((n as real)))))) + -(((((k as real) + 15.0) - Real.sqrt((n as real))) * (((k as real) + 15.0) - Real.sqrt((n as real)))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h_main/h₉/h₁₀/h₁₁/h₁₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_11(S: set<nat>, k: nat, n: nat)
  ensures (-((((k as real) + 15.0) - (floor(Real.sqrt((n as real))) as real))) + (((k as real) + 15.0) - (floor(Real.sqrt((n as real))) as real))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h_main/h₉/h₁₀/h₁₁/h₁₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_12(S: set<nat>, k: nat, n: nat)
  ensures ((((k as real) + 15.0) - (floor(Real.sqrt((n as real))) as real)) + ((floor(Real.sqrt((n as real))) as real) - ((k as real) + 15.0))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h_main/h₉/h₁₀/h₁₁/h₁₃`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_13(S: set<nat>, n: nat)
  ensures ((((floor(Real.sqrt((n as real))) as real) + 1.0) - Real.sqrt((n as real))) + (Real.sqrt((n as real)) - ((floor(Real.sqrt((n as real))) as real) + 1.0))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h_main/h₉/h₁₀/h₁₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_14(S: set<nat>, k: nat, n: nat)
  ensures ((((floor(Real.sqrt((n as real))) as real) - ((k as real) + 15.0)) + (Real.sqrt((n as real)) - ((floor(Real.sqrt((n as real))) as real) + 1.0))) + (((k as real) + 16.0) - Real.sqrt((n as real)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h_main/h₉/h₁₂`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_15(S: set<nat>, k: nat, n: nat)
  requires (0.0 <= (k as real))
  requires ((Real.sqrt((n as real)) - ((k as real) + 16.0)) <= 0.0)
  ensures (((k as real) * (Real.sqrt((n as real)) - ((k as real) + 16.0))) <= 0.0)
{
  MulNonneg((k as real), -((Real.sqrt((n as real)) - ((k as real) + 16.0)))); MulNeg((k as real), (Real.sqrt((n as real)) - ((k as real) + 16.0))); assert ((k as real)) * (-((Real.sqrt((n as real)) - ((k as real) + 16.0)))) == -(((k as real)) * ((Real.sqrt((n as real)) - ((k as real) + 16.0))));
}

// ──────────────────────────────────────────────────
// certificate piece for `h_main/h₉/h₁₂`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_16(S: set<nat>, k: nat, n: nat)
  requires ((Real.sqrt((n as real)) - ((k as real) + 16.0)) <= 0.0)
  requires (0.0 <= Real.sqrt((n as real)))
  ensures (((Real.sqrt((n as real)) - ((k as real) + 16.0)) * Real.sqrt((n as real))) <= 0.0)
{
  MulNonneg(-((Real.sqrt((n as real)) - ((k as real) + 16.0))), Real.sqrt((n as real))); MulNeg(Real.sqrt((n as real)), (Real.sqrt((n as real)) - ((k as real) + 16.0))); assert (-((Real.sqrt((n as real)) - ((k as real) + 16.0)))) * (Real.sqrt((n as real))) == -((Real.sqrt((n as real))) * ((Real.sqrt((n as real)) - ((k as real) + 16.0))));
}

// ──────────────────────────────────────────────────
// certificate identity for `h_main/h₉/h₁₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_17(S: set<nat>, k: nat, n: nat)
  ensures (((((16.0 * (Real.sqrt((n as real)) - ((k as real) + 16.0))) + ((((k as real) + 16.0) * ((k as real) + 16.0)) - (n as real))) + -(((Real.sqrt((n as real)) * Real.sqrt((n as real))) - (n as real)))) + ((k as real) * (Real.sqrt((n as real)) - ((k as real) + 16.0)))) + ((Real.sqrt((n as real)) - ((k as real) + 16.0)) * Real.sqrt((n as real)))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h_main/h₁₂/h₁₄`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_18(S: set<nat>, k: nat)
  requires (0 <= (k as int))
  requires (((35 + 1) - (k as int)) <= 0)
  ensures (((k as int) * ((35 + 1) - (k as int))) <= 0)
{
  MulNonnegInt((k as int), -(((35 + 1) - (k as int))));
}

// ──────────────────────────────────────────────────
// certificate piece for `h_main/h₁₂/h₁₄`: mul_nonneg_of_nonpos_of_nonpos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_19(S: set<nat>, k: nat)
  requires (((35 + 1) - (k as int)) <= 0)
  ensures (0 <= (((35 + 1) - (k as int)) * ((35 + 1) - (k as int))))
{
  MulNonnegInt(-(((35 + 1) - (k as int))), -(((35 + 1) - (k as int))));
}

// ──────────────────────────────────────────────────
// certificate identity for `h_main/h₁₂/h₁₄`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_20(S: set<nat>, k: int, n: int)
  ensures ((((-((279 * 1)) + (9 * ((n as int) - ((70 * (k as int)) + 50)))) + (9 * ((((k as int) + 15) * ((k as int) + 15)) - (n as int)))) + (8 * ((k as int) * ((35 + 1) - (k as int))))) + -((((35 + 1) - (k as int)) * ((35 + 1) - (k as int))))) == 0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h_main/h₁₂`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_21(S: set<nat>, k: int, n: int)
  ensures ((-(1) + ((((k as int) + 15) * ((k as int) + 15)) - (n as int))) + (((n as int) + 1) - (((k as int) + 15) * ((k as int) + 15)))) == 0
{ }

// statement: Lean elaborated type (v3, stmt_cache) — requires/ensures below
lemma amc12b_2020_p21(S: set<nat>)
  requires (forall n: nat :: ((n in S) <==> ((0 < n) && ((((n as real) + 1000.0) / 70.0) == (floor(Real.sqrt((n as real))) as real)))))
  ensures (|S| == 6) // @tac 571-16297 // @tac 16303-16374 // @tac 16380-16392
{
  // have h_main : S == { 400, 470, 2290, 2360, 2430, 2500 }  [type from Lean state]
  assert (S == { 400, 470, 2290, 2360, 2430, 2500 }) by { // @tac 634-650
    // [TACTIC: apply Finset.ext]
    assert (forall a: nat :: ((a in S) <==> (a in { 400, 470, 2290, 2360, 2430, 2500 }))) by {  // sub-goal before `intro` (Lean state) // @tac 655-662
      // [TACTIC: intro n]  (lowered: its recorded goal under the new binders)
      forall n: nat
        ensures ((n in S) <==> (n in { 400, 470, 2290, 2360, 2430, 2500 }))  // sub-goal of `intro` (Lean state) // @tac 667-676
      {
        // [TACTIC: rwSeq [ h₀ ]]
        assert ((n in S) <==> ((0 < n) && ((((n as real) + 1000.0) / 70.0) == (floor(Real.sqrt((n as real))) as real))));  // instance of h₀ (Lean state)
        // UNCITED-APPLIED congrArg(fun (_a : Prop) => _a ↔ n ∈ {(400 : ℕ), (470 : ℕ), (2290 : ℕ), (2360 …): no library counterpart (not stated) [exec 26 667-676]
        assert (((0 < n) && ((((n as real) + 1000.0) / 70.0) == (floor(Real.sqrt((n as real))) as real))) <==> (n in { 400, 470, 2290, 2360, 2430, 2500 })) by {  // sub-goal before `simp` (Lean state) // @tac 681-732
          // [TACTIC: simp only [ Finset.mem_insert , Finset.mem_singleton ]]
          // UNCITED Finset.mem_insert: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED Finset.mem_singleton: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED-APPLIED internal ×7 [exec 53 681-732]: applications made inside the tactic's own automation, not stated — machinery/glue: congrArg ×6, Eq.trans ×1
          assert (((0 < n) && ((((n as real) + 1000.0) / 70.0) == (floor(Real.sqrt((n as real))) as real))) <==> ((n == 400) || ((n == 470) || ((n == 2290) || ((n == 2360) || ((n == 2430) || (n == 2500))))))) by {  // sub-goal before `constructor` (Lean state) // @tac 737-748
            // [TACTIC: constructor]
            // `constructor`: 2 cases (Lean states); 2 branch bodies
            assert (((0 < n) && ((((n as real) + 1000.0) / 70.0) == (floor(Real.sqrt((n as real))) as real))) ==> ((n == 400) || ((n == 470) || ((n == 2290) || ((n == 2360) || ((n == 2430) || (n == 2500))))))) by {  // sub-goal of `constructor` (Lean state) // @tac 838-845 // @tac 753-10365
              // intro h: P → Q  (N7 if-wrapper)
              if ((0 < n) && ((((n as real) + 1000.0) / 70.0) == (floor(Real.sqrt((n as real))) as real))) {
                assert ((n == 400) || ((n == 470) || ((n == 2290) || ((n == 2360) || ((n == 2430) || (n == 2500)))))) by {  // sub-goal before `have` (Lean state) // @tac 852-876 // @tac 883-954 // @tac 961-2208 // @tac 2215-2258 // @tac 2265-2386 // @tac 2393-2421
                  // have h₁ : 0 < n  [type from Lean state]
                  assert (0 < n);
                    // [TACTIC: exact h . 1]
                  // have h₂ : ( ↑ n + 1000 ) / 70 == Int.floor ( ( Real.sqrt ( n ) ) )  [type from Lean state]
                  assert ((((n as real) + 1000.0) / 70.0) == (floor(Real.sqrt((n as real))) as real));
                    // [TACTIC: exact h . 2]
                  // have h₃ : ( n + 1000 ) % 70 == 0  [type from Lean state]
                  assert (((n + 1000) % 70) == 0) by { // @tac 1007-1094 // @tac 1103-2180 // @tac 2189-2208
                    // have h₄ : (  + 1000 ) / 70 == Int.floor ( ( Real.sqrt ( n ) ) )  [type from Lean state]
                    assert ((((n as real) + 1000.0) / 70.0) == (floor(Real.sqrt((n as real))) as real)); // @tac 1075-1094
                      // [TACTIC: Exact_mod_cast h₂]
                      // UNCITED-APPLIED Nat.cast_add: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
                      // UNCITED-APPLIED Eq.symm(((n + 1000) as real), ((n as real) + (1000 as real))): its premise is not established here and its conclusion is the same Dafny fact (== is symmetric): a guarded call would state nothing
                      // UNCITED-APPLIED Eq.symm: 1 more recorded instance () not expressible here (sort/type/scope), not guessed
                      // UNCITED-APPLIED congrArg((↑n + ↑(1000 : ℕ)) / ↑(70 : ℕ), ↑(n + (1000 : ℕ)) / ↑(70 : ℕ), fun (x : ℝ) => x = ↑⌊√↑n⌋): no library counterpart (not stated) [exec 117 1075-1094]
                      // UNCITED-APPLIED congrArg(↑n + ↑(1000 : ℕ), ↑(n + (1000 : ℕ)), fun (x : ℝ) => x / ↑(70 : ℕ)): no library counterpart (not stated) [exec 117 1075-1094]
                      // UNCITED-APPLIED congrArg(↑(n + (1000 : ℕ)), ↑(n + (1000 : ℕ)), fun (x : ℝ) => x / ↑(70 : ℕ)): no library counterpart (not stated) [exec 117 1075-1094]
                      // UNCITED-APPLIED Eq.trans: no library counterpart (not stated) [exec 117 1075-1094]
                      // UNCITED-APPLIED Eq.trans((↑n + ↑(1000 : ℕ)) / ↑(70 : ℕ), ↑(n + (1000 : ℕ)) / ↑(70 : ℕ), ↑(n + (1000 : ℕ)) / ↑(70 : ℕ)): no library counterpart (not stated) [exec 117 1075-1094]
                      // UNCITED-APPLIED Eq.trans(↑(n + (1000 : ℕ)), ↑n + ↑(1000 : ℕ), ↑(n + (1000 : ℕ))): no library counterpart (not stated) [exec 117 1075-1094]
                    // have h₅ : ( n + 1000 : ℤ ) % 70 == 0  [type from Lean state]
                    assert ((((n as int) + 1000) % 70) == 0) by { // @tac 1157-1250 // @tac 1261-2159 // @tac 2170-2180
                      // have h₆ :  + 1000 / 70 == Int.floor ( ( Real.sqrt ( n ) ) )  [type from Lean state]
                      assert ((((n as real) + 1000.0) / 70.0) == (floor(Real.sqrt((n as real))) as real)); // @tac 1231-1250
                        // [TACTIC: Exact_mod_cast h₂]
                        // UNCITED-APPLIED Nat.cast_add: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
                        // UNCITED-APPLIED Eq.symm(((n + 1000) as real), ((n as real) + (1000 as real))): its premise is not established here and its conclusion is the same Dafny fact (== is symmetric): a guarded call would state nothing
                        // UNCITED-APPLIED Eq.symm: 1 more recorded instance () not expressible here (sort/type/scope), not guessed
                        // UNCITED-APPLIED congrArg((↑n + ↑(1000 : ℕ)) / ↑(70 : ℕ), ↑(n + (1000 : ℕ)) / ↑(70 : ℕ), fun (x : ℝ) => x = ↑⌊√↑n⌋): no library counterpart (not stated) [exec 151 1231-1250]
                        // UNCITED-APPLIED congrArg(↑n + ↑(1000 : ℕ), ↑(n + (1000 : ℕ)), fun (x : ℝ) => x / ↑(70 : ℕ)): no library counterpart (not stated) [exec 151 1231-1250]
                        // UNCITED-APPLIED congrArg(↑(n + (1000 : ℕ)), ↑(n + (1000 : ℕ)), fun (x : ℝ) => x / ↑(70 : ℕ)): no library counterpart (not stated) [exec 151 1231-1250]
                        // UNCITED-APPLIED Eq.trans: no library counterpart (not stated) [exec 151 1231-1250]
                        // UNCITED-APPLIED Eq.trans((↑n + ↑(1000 : ℕ)) / ↑(70 : ℕ), ↑(n + (1000 : ℕ)) / ↑(70 : ℕ), ↑(n + (1000 : ℕ)) / ↑(70 : ℕ)): no library counterpart (not stated) [exec 151 1231-1250]
                        // UNCITED-APPLIED Eq.trans(↑(n + (1000 : ℕ)), ↑n + ↑(1000 : ℕ), ↑(n + (1000 : ℕ))): no library counterpart (not stated) [exec 151 1231-1250]
                      // have h₇ :  + 1000 ≡ 0 [ZMOD 70 ]  [type from Lean state]
                      assert (IntMod(((n as int) + 1000), 70) == IntMod(0, 70)) by { // @tac 1324-1417 // @tac 1430-1520 // @tac 1533-1618 // @tac 1631-2018 // @tac 2031-2133 // @tac 2146-2159
                        // have h₈ :  + 1000 / 70 == Int.floor ( ( Real.sqrt ( n ) ) )  [type from Lean state]
                        assert ((((n as real) + 1000.0) / 70.0) == (floor(Real.sqrt((n as real))) as real)); // @tac 1398-1417
                          // [TACTIC: Exact_mod_cast h₂]
                          // UNCITED-APPLIED Nat.cast_add: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
                          // UNCITED-APPLIED Eq.symm(((n + 1000) as real), ((n as real) + (1000 as real))): its premise is not established here and its conclusion is the same Dafny fact (== is symmetric): a guarded call would state nothing
                          // UNCITED-APPLIED Eq.symm: 1 more recorded instance () not expressible here (sort/type/scope), not guessed
                          // UNCITED-APPLIED congrArg((↑n + ↑(1000 : ℕ)) / ↑(70 : ℕ), ↑(n + (1000 : ℕ)) / ↑(70 : ℕ), fun (x : ℝ) => x = ↑⌊√↑n⌋): no library counterpart (not stated) [exec 185 1398-1417]
                          // UNCITED-APPLIED congrArg(↑n + ↑(1000 : ℕ), ↑(n + (1000 : ℕ)), fun (x : ℝ) => x / ↑(70 : ℕ)): no library counterpart (not stated) [exec 185 1398-1417]
                          // UNCITED-APPLIED congrArg(↑(n + (1000 : ℕ)), ↑(n + (1000 : ℕ)), fun (x : ℝ) => x / ↑(70 : ℕ)): no library counterpart (not stated) [exec 185 1398-1417]
                          // UNCITED-APPLIED Eq.trans: no library counterpart (not stated) [exec 185 1398-1417]
                          // UNCITED-APPLIED Eq.trans((↑n + ↑(1000 : ℕ)) / ↑(70 : ℕ), ↑(n + (1000 : ℕ)) / ↑(70 : ℕ), ↑(n + (1000 : ℕ)) / ↑(70 : ℕ)): no library counterpart (not stated) [exec 185 1398-1417]
                          // UNCITED-APPLIED Eq.trans(↑(n + (1000 : ℕ)), ↑n + ↑(1000 : ℕ), ↑(n + (1000 : ℕ))): no library counterpart (not stated) [exec 185 1398-1417]
                        // have h₉ : Int.floor ( ( Real.sqrt ( n ) ) ) ==  + 1000 / 70  [type from Lean state]
                        assert ((floor(Real.sqrt((n as real))) as real) == (((n as real) + 1000.0) / 70.0)) by { // @tac 1512-1520
                          // [TACTIC: «Linarith[_]At___»]
                          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1512-1520 exec 202)
                          // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(70 : ℝ) * ((↑n + (1000 : ℝ)) / (70 : ℝ) - ↑⌊√↑n⌋) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((((n as real) + 1000.0) / 70.0) - (floor(Real.sqrt((n as real))) as real)) == 0.0); (70.0 > 0.0)
                          // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(70 : ℝ) * (↑⌊√↑n⌋ - (↑n + (1000 : ℝ)) / (70 : ℝ)) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((floor(Real.sqrt((n as real))) as real) - (((n as real) + 1000.0) / 70.0)) < 0.0); (70.0 > 0.0)
                          // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(70 : ℝ) * ((↑n + (1000 : ℝ)) / (70 : ℝ) - ↑⌊√↑n⌋) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((((n as real) + 1000.0) / 70.0) - (floor(Real.sqrt((n as real))) as real)) < 0.0); (70.0 > 0.0)
                          cert_identity_1(S, n);  // cert: Linarith.lt_of_eq_of_lt
                          cert_identity_2(S, n);  // cert: Linarith.lt_of_eq_of_lt
                          // UNCITED-APPLIED internal ×21 [exec 202 1512-1520]: applications made inside the tactic's own automation, not stated — CancelDenoms.sub_subst ×2, sub_neg_of_lt ×2, CancelDenoms.div_subst ×1, CancelDenoms.add_subst ×1, sub_eq_zero_of_eq ×1, neg_eq_zero ×1; machinery/glue: congrArg ×5, Linarith.lt_of_eq_of_lt ×2, Linarith.mul_neg ×2, Linarith.eq_of_not_lt_of_not_gt ×1 (+3 more heads, ×3)
                          // UNCITED-APPLIED internal ×82 [exec 221 1512-1520]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Tactic.Ring.mul_congr ×3, Mathlib.Tactic.Ring.cast_pos ×3, Mathlib.Tactic.Ring.add_mul ×3 (+29 more heads, ×68) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                          // UNCITED-APPLIED internal ×14 [exec 203 1512-1520]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                          // UNCITED-APPLIED internal ×6 [exec 204 1512-1520]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                          // UNCITED-APPLIED internal ×6 [exec 205 1512-1520]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                          // UNCITED-APPLIED internal ×14 [exec 206 1512-1520]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                          // UNCITED-APPLIED internal ×6 [exec 207 1512-1520]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                          // UNCITED-APPLIED internal ×6 [exec 208 1512-1520]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                          // UNCITED-APPLIED internal ×85 [exec 240 1512-1520]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Tactic.Ring.neg_add ×4, Mathlib.Tactic.Ring.neg_one_mul ×4, Mathlib.Meta.NormNum.isInt_mul ×4 (+31 more heads, ×68) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                          // UNCITED-APPLIED internal ×14 [exec 209 1512-1520]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                          // UNCITED-APPLIED internal ×6 [exec 210 1512-1520]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                          // UNCITED-APPLIED internal ×6 [exec 211 1512-1520]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                          // UNCITED-APPLIED internal ×14 [exec 212 1512-1520]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                          // UNCITED-APPLIED internal ×6 [exec 213 1512-1520]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                          // UNCITED-APPLIED internal ×6 [exec 214 1512-1520]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 203, 204, 206, 207, 209, 210 … / `ring1` exec 221, 240)]
                          // UNCITED-APPLIED Nat.cast_zero: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
                        }
                        // have h₁₀ : Int.floor ( ( Real.sqrt ( n ) ) ) * 70 ==  + 1000  [type from Lean state]
                        assert (((floor(Real.sqrt((n as real))) as real) * 70.0) == ((n as real) + 1000.0)) by { // @tac 1610-1618
                          // [TACTIC: «Linarith[_]At___»]
                          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 1610-1618 exec 257)
                          // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(70 : ℝ) * ((↑n + (1000 : ℝ)) / (70 : ℝ) - ↑⌊√↑n⌋) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((((n as real) + 1000.0) / 70.0) - (floor(Real.sqrt((n as real))) as real)) == 0.0); (70.0 > 0.0)
                          cert_identity_3(S, n);  // cert: Linarith.lt_of_eq_of_lt
                          cert_identity_4(S, n);  // cert: Linarith.lt_of_eq_of_lt
                          // UNCITED-APPLIED internal ×16 [exec 257 1610-1618]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2, CancelDenoms.sub_subst ×1, CancelDenoms.div_subst ×1, CancelDenoms.add_subst ×1, sub_eq_zero_of_eq ×1, neg_eq_zero ×1; machinery/glue: congrArg ×3, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+2 more heads, ×2)
                          // UNCITED-APPLIED internal ×90 [exec 276 1610-1618]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Tactic.Ring.mul_congr ×4, Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Tactic.Ring.add_mul ×4, Mathlib.Tactic.Ring.mul_add ×4 (+30 more heads, ×73) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                          // UNCITED-APPLIED internal ×14 [exec 258 1610-1618]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                          // UNCITED-APPLIED internal ×6 [exec 259 1610-1618]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                          // UNCITED-APPLIED internal ×6 [exec 260 1610-1618]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                          // UNCITED-APPLIED internal ×94 [exec 295 1610-1618]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Tactic.Ring.mul_congr ×4, Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Tactic.Ring.add_mul ×4, Mathlib.Tactic.Ring.mul_add ×4 (+32 more heads, ×77) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                          // UNCITED-APPLIED internal ×14 [exec 261 1610-1618]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                          // UNCITED-APPLIED internal ×6 [exec 262 1610-1618]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                          // UNCITED-APPLIED internal ×6 [exec 263 1610-1618]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 258, 259, 261, 262 / `ring1` exec 276, 295)]
                          // UNCITED-APPLIED Nat.cast_zero: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
                        }
                        // have h₁₁ : Int.floor ( ( Real.sqrt ( n ) ) ) * 70 ==  + 1000  [type from Lean state]
                        assert ((floor(Real.sqrt((n as real))) * 70) == ((n as int) + 1000)) by { // @tac 1722-2018 // @tac 1722-1999 // @tac 1722-1964 // @tac 1722-1917 // @tac 1722-1898 // @tac 1722-1863 // @tac 1722-1827 // @tac 1722-1794 // @tac 1722-1746
                          // [TACTIC: «_<;>_» at h₁₀ ⊢ norm_cast at h₁₀ ⊢ <;> ( try norm_num at h₁₀ ⊢ ) <;> ( try ring_nf at h₁₀ ⊢ ) <;> ( try field_simp at h₁₀ ⊢ ) <;> ( try norm_cast at h₁₀ ⊢ norm_cast at h₁₀ ⊢ ) <;> ( try linarith linarith ) <;> ( try ring_nf at h₁₀ ⊢ ) <;> ( try norm_cast at h₁₀ ⊢ norm_cast at h₁₀ ⊢ ) <;> ( try linarith linarith )]
                          // [TACTIC: Norm_cast at h₁₀ ⊢]
                          // UNCITED-APPLIED Eq.symm((70 as real), 70.0): its premise is not established here and its conclusion is the same Dafny fact (== is symmetric): a guarded call would state nothing
                          // UNCITED-APPLIED Nat.cast_add: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
                          assert ((floor(Real.sqrt((n as real))) * 70) == ((n + 1000) as int));  // hypothesis h₁₀ after `norm_cast` (Lean state) // @tac-hyp 1722-1746
                          assert ((floor(Real.sqrt((n as real))) * 70) == ((n + 1000) as int));  // sub-goal of `norm_cast` (Lean state)
                          // `norm_cast` closed the goal; the rest of the chain did not run
                          // [TACTIC: «Norm_num[_]At___» at h₁₀ ⊢]
                          // [TACTIC: Ring_nfAt at h₁₀ ⊢]
                          // [TACTIC: «Field_simp[_]At___» at h₁₀ ⊢]
                          // NOT RUN in Lean (no execution recorded): no lemma instances
                          // [TACTIC: Norm_cast at h₁₀ ⊢]
                          // NOT RUN in Lean (no execution recorded): no lemma instances
                          // [TACTIC: «Linarith[_]At___»]
                          // NOT RUN in Lean (no execution recorded): no lemma instances
                          // [TACTIC: Ring_nfAt at h₁₀ ⊢]
                          // [TACTIC: Norm_cast at h₁₀ ⊢]
                          // NOT RUN in Lean (no execution recorded): no lemma instances
                          // [TACTIC: «Linarith[_]At___»]
                          // NOT RUN in Lean (no execution recorded): no lemma instances
                          // UNCITED-APPLIED Eq.symm ×1: 1 of Lean's 2 recorded instances here have no statement above (which ones is not decided) — Lean's instances: Eq.symm(↑(70 : ℤ), (70 : ℝ)); Eq.symm(↑↑(n + (1000 : ℕ)), ↑n + (1000 : ℝ)) [exec 372 1722-1746]
                          // UNCITED-APPLIED congrArg(↑⌊√↑n⌋ * (70 : ℝ), ↑(⌊√↑n⌋ * ↑(70 : ℕ)), Eq): no library counterpart (not stated) [exec 372 1722-1746]
                          // UNCITED-APPLIED congrArg((70 : ℝ), ↑(70 : ℤ), HMul.hMul ↑⌊√↑n⌋): no library counterpart (not stated) [exec 372 1722-1746]
                          // UNCITED-APPLIED congrArg(↑(n + (1000 : ℕ)), ↑↑(n + (1000 : ℕ)), Eq ↑(⌊√↑n⌋ * ↑(70 : ℕ))): no library counterpart (not stated) [exec 372 1722-1746]
                          // UNCITED-APPLIED congrArg(↑(n + (1000 : ℕ)), ↑n + ↑(1000 : ℕ), Int.cast): no library counterpart (not stated) [exec 372 1722-1746]
                          // UNCITED-APPLIED congrArg(↑↑n, ↑n, HAdd.hAdd): no library counterpart (not stated) [exec 372 1722-1746]
                          // UNCITED-APPLIED Eq.trans: no library counterpart (not stated) [exec 372 1722-1746]
                          // UNCITED-APPLIED Eq.trans(↑⌊√↑n⌋ * (70 : ℝ), ↑⌊√↑n⌋ * ↑(70 : ℤ), ↑(⌊√↑n⌋ * ↑(70 : ℕ))): no library counterpart (not stated) [exec 372 1722-1746]
                          // UNCITED-APPLIED Eq.trans(↑(n + (1000 : ℕ)), ↑n + ↑(1000 : ℕ), ↑↑(n + (1000 : ℕ))): no library counterpart (not stated) [exec 372 1722-1746]
                          // UNCITED-APPLIED Eq.trans(↑↑(n + (1000 : ℕ)), ↑↑n + ↑(1000 : ℤ), ↑n + (1000 : ℝ)): no library counterpart (not stated) [exec 372 1722-1746]
                          // UNCITED-APPLIED Eq.trans(↑↑(n + (1000 : ℕ)), ↑(↑n + ↑(1000 : ℕ)), ↑↑n + ↑(1000 : ℤ)): no library counterpart (not stated) [exec 372 1722-1746]
                          // UNCITED-APPLIED congr(Eq (↑⌊√↑n⌋ * (70 : ℝ)), Eq ↑(⌊√↑n⌋ * ↑(70 : ℕ)), ↑n + ↑(1000 : ℕ), ↑(n + (1000 : ℕ))): no library counterpart (not stated) [exec 372 1722-1746]
                          // UNCITED-APPLIED congr(HAdd.hAdd ↑↑n, HAdd.hAdd ↑n, ↑(1000 : ℤ), (1000 : ℝ)): no library counterpart (not stated) [exec 372 1722-1746]
                          // UNCITED-APPLIED Int.cast_ofNat(nat_lit 70): no library counterpart (not stated) [exec 372 1722-1746]
                          // UNCITED-APPLIED Int.cast_ofNat(nat_lit 1000): no library counterpart (not stated) [exec 372 1722-1746]
                          // UNCITED-APPLIED Int.cast_add(↑n, (1000 : ℤ)): no library counterpart (not stated) [exec 372 1722-1746]
                          // UNCITED-APPLIED Int.cast_natCast(n): no library counterpart (not stated) [exec 372 1722-1746]
                          // UNCITED-APPLIED internal ×1 [exec 358 1722-1746]: applications made inside the tactic's own automation, not stated — machinery/glue: congrArg ×1
                        }
                        // have h₁₂ :  + 1000 ≡ 0 [ZMOD 70 ]  [type from Lean state]
                        assert (IntMod(((n as int) + 1000), 70) == IntMod(0, 70)) by { // @tac 2099-2113
                          // [TACTIC: rwSeq [ Int.ModEq ]]
                          // UNCITED Int.ModEq: no Lean instance recorded (arguments unknown), not guessed
                          // UNCITED-APPLIED congrArg(fun (_a : Prop) => _a): no library counterpart (not stated) [exec 441 2099-2113]
                          // UNCITED-APPLIED Int.ModEq.eq_1((70 : ℤ), ↑n + (1000 : ℤ), (0 : ℤ)): no library counterpart (not stated) [exec 441 2099-2113]
                          assert ((((n as int) + 1000) % 70) == (0 % 70)) by {  // sub-goal before `omega` (Lean state) // @tac 2128-2133
                            // [TACTIC: omega]
                            // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                            // UNCITED-APPLIED internal ×88 [exec 468 2128-2133]: applications made inside the tactic's own automation, not stated — le_of_le_of_eq ×4, Int.sub_nonneg_of_le ×4, Int.add_one_le_of_lt ×3, Int.emod_def ×2, Int.lt_or_gt_of_ne ×1, Int.sub_eq_zero_of_eq ×1, Int.mul_ediv_self_le ×1, Int.lt_mul_ediv_self_add ×1; machinery/glue: Eq.symm ×16, Eq.trans ×8, Lean.Omega.tidy_sat ×5, Lean.Omega.Int.sub_congr ×5 (+15 more heads, ×37)
                          }
                        }
                        // [TACTIC: exact h₁₂]
                        assert (IntMod(((n as int) + 1000), 70) == IntMod(0, 70));
                      }
                      // [TACTIC: exact h₇]
                      assert (IntMod(((n as int) + 1000), 70) == IntMod(0, 70));
                    }
                    // [TACTIC: Exact_mod_cast h₅]
                    // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                    // UNCITED-APPLIED Nat.cast_zero: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
                    // UNCITED-APPLIED congrArg((0 : ℤ), ↑(0 : ℕ), Eq ((↑n + ↑(1000 : ℕ)) % ↑(70 : ℕ))): no library counterpart (not stated) [exec 472 2189-2208]
                    // UNCITED-APPLIED congrArg(↑n + ↑(1000 : ℕ), ↑(n + (1000 : ℕ)), fun (x : ℤ) => x % ↑(70 : ℕ) = ↑(0 : ℕ)): no library counterpart (not stated) [exec 472 2189-2208]
                    // UNCITED-APPLIED Eq.trans: no library counterpart (not stated) [exec 472 2189-2208]
                  }
                  // have h₄ : n % 70 == 50  [type from Lean state]
                  assert ((n % 70) == 50); // @tac 2253-2258
                    // [TACTIC: omega]
                    // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                    // UNCITED-APPLIED internal ×93 [exec 489 2253-2258]: applications made inside the tactic's own automation, not stated — le_of_le_of_eq ×4, Int.sub_nonneg_of_le ×4, Int.add_one_le_of_lt ×3, Int.ofNat_emod ×2, Int.emod_def ×2, Nat.lt_or_gt_of_ne ×1, Int.ofNat_add ×1, Int.sub_eq_zero_of_eq ×1, Int.mul_ediv_self_le ×1, Int.lt_mul_ediv_self_add ×1; machinery/glue: Eq.symm ×16, Eq.trans ×8, Lean.Omega.Int.sub_congr ×6, Lean.Omega.LinearCombo.sub_eval ×6 (+17 more heads, ×37)
                  // have h₅ : ∃ k : ℕ , n = 70 * k + 50  [type from Lean state]
                  assert (exists k: nat :: (n == ((70 * k) + 50))) by { // @tac 2320-2330
                    // [TACTIC: Use n / 70]
                    assert (n == ((70 * (n / 70)) + 50)) by {  // sub-goal of `use` (Lean state) // @tac 2339-2372 // @tac 2381-2386
                      // have h₆ :   [type from Lean state]
                      assert (((n % 70) + (70 * (n / 70))) == n) by {
                        // [TACTIC: exact Nat.mod_add_div ( n , 70 )]
                        assert ((70) > 0);  // precondition of NatModAddDiv (Lean: Nat.mod_add_div)
                        NatModAddDiv(n, 70);  // cite: Nat.mod_add_div
                      }
                      // [TACTIC: omega]
                      // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                      // UNCITED-APPLIED internal ×88 [exec 537 2381-2386]: applications made inside the tactic's own automation, not stated — Int.ofNat_emod ×2, Int.emod_def ×2, Int.ofNat_add ×2, Int.sub_eq_zero_of_eq ×2, le_of_le_of_eq ×2, Int.sub_nonneg_of_le ×2, Int.add_one_le_of_lt ×2, Nat.lt_or_gt_of_ne ×1, Int.ofNat_mul ×1, Int.ofNat_ediv ×1; machinery/glue: Eq.symm ×17, Eq.trans ×8, Lean.Omega.Int.sub_congr ×6, Lean.Omega.LinearCombo.sub_eval ×6 (+16 more heads, ×34)
                    }
                  }
                  // obtain ⟨k⟩ := h₅
                  assert exists k: nat :: (n == ((70 * k) + 50));
                  var k: nat :| (n == ((70 * k) + 50));
                  if ((n == ((70 * k) + 50))) {  // sub-goal before `have` (Lean state)
                    // have h₇ : k + 15 == Int.floor ( ( Real.sqrt ( n ) ) )  [type from Lean state]
                    assert (((k as int) + 15) == floor(Real.sqrt((n as real)))) by { // @tac 2487-2580 // @tac 2589-2832 // @tac 2841-2929 // @tac 2938-3201 // @tac 3210-3232
                      // have h₈ :  + 1000 / 70 == Int.floor ( ( Real.sqrt ( n ) ) )  [type from Lean state]
                      assert ((((n as real) + 1000.0) / 70.0) == (floor(Real.sqrt((n as real))) as real)); // @tac 2561-2580
                        // [TACTIC: Exact_mod_cast h₂]
                        // UNCITED-APPLIED Nat.cast_add: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
                        // UNCITED-APPLIED Eq.symm(((n + 1000) as real), ((n as real) + (1000 as real))): its premise is not established here and its conclusion is the same Dafny fact (== is symmetric): a guarded call would state nothing
                        // UNCITED-APPLIED Eq.symm: 1 more recorded instance () not expressible here (sort/type/scope), not guessed
                        // UNCITED-APPLIED congrArg((↑n + ↑(1000 : ℕ)) / ↑(70 : ℕ), ↑(n + (1000 : ℕ)) / ↑(70 : ℕ), fun (x : ℝ) => x = ↑⌊√↑n⌋): no library counterpart (not stated) [exec 572 2561-2580]
                        // UNCITED-APPLIED congrArg(↑n + ↑(1000 : ℕ), ↑(n + (1000 : ℕ)), fun (x : ℝ) => x / ↑(70 : ℕ)): no library counterpart (not stated) [exec 572 2561-2580]
                        // UNCITED-APPLIED congrArg(↑(n + (1000 : ℕ)), ↑(n + (1000 : ℕ)), fun (x : ℝ) => x / ↑(70 : ℕ)): no library counterpart (not stated) [exec 572 2561-2580]
                        // UNCITED-APPLIED Eq.trans: no library counterpart (not stated) [exec 572 2561-2580]
                        // UNCITED-APPLIED Eq.trans((↑n + ↑(1000 : ℕ)) / ↑(70 : ℕ), ↑(n + (1000 : ℕ)) / ↑(70 : ℕ), ↑(n + (1000 : ℕ)) / ↑(70 : ℕ)): no library counterpart (not stated) [exec 572 2561-2580]
                        // UNCITED-APPLIED Eq.trans(↑(n + (1000 : ℕ)), ↑n + ↑(1000 : ℕ), ↑(n + (1000 : ℕ))): no library counterpart (not stated) [exec 572 2561-2580]
                      // have h₉ :  + 15 ==  + 1000 / 70  [type from Lean state]
                      assert (((k as real) + 15.0) == (((n as real) + 1000.0) / 70.0)) by { // @tac 2664-2832 // @tac 2664-2809 // @tac 2664-2780 // @tac 2664-2753 // @tac 2664-2723 // @tac 2664-2700 // @tac 2664-2673
                        // [TACTIC: «_<;>_» [ h₆ ] rw [ h₆ ] <;> ring_nf at * <;> norm_num norm_num <;> field_simp at * <;> ring_nf at * <;> norm_cast at * norm_cast at * <;> linarith linarith]
                        // [TACTIC: choice [ h₆ ] rw [ h₆ ]]
                        // UNCITED-APPLIED congrArg(n, (70 : ℕ) * k + (50 : ℕ), fun (_a : ℕ) => ↑k + (15 : ℝ) = (↑_a + (1000 : ℝ)) / (70 : ℝ)): no library counterpart (not stated) [exec 623 2664-2673]
                        assert (((k as real) + 15.0) == (((((70 * k) + 50) as real) + 1000.0) / 70.0)) by {  // sub-goal of `ring_nf` (Lean state) // @tac 2688-2700
                          PowOne((k as real));  // cite: pow_one [applied by the tactic, not named in it]
                          NatPowOne(k);  // cite: pow_one [applied by the tactic, not named in it]
                          PowOne(((50 + (k * 70)) as real));  // cite: pow_one [applied by the tactic, not named in it]
                          // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := ↑k)
                          assert (((100.0 / 7.0) + ((n as real) * (1.0 / 70.0))) == (floor(Real.sqrt((n as real))) as real));  // hypothesis h₈ after `ring_nf` (Lean state) // @tac-hyp 2688-2700
                          assert (n == (50 + (k * 70)));  // hypothesis h₆ after `ring_nf` (Lean state) // @tac-hyp 2688-2700
                          assert (((1000 + n) % 70) == 0);  // hypothesis h₃ after `ring_nf` (Lean state) // @tac-hyp 2688-2700
                          assert (((100.0 / 7.0) + ((n as real) * (1.0 / 70.0))) == (floor(Real.sqrt((n as real))) as real));  // hypothesis h₂ after `ring_nf` (Lean state) // @tac-hyp 2688-2700
                          assert ((0 < n) && (((100.0 / 7.0) + ((n as real) * (1.0 / 70.0))) == (floor(Real.sqrt((n as real))) as real)));  // hypothesis h after `ring_nf` (Lean state) // @tac-hyp 2688-2700
                          assert (forall n: nat :: ((n in S) <==> ((0 < n) && (((100.0 / 7.0) + ((n as real) * (1.0 / 70.0))) == (floor(Real.sqrt((n as real))) as real)))));  // hypothesis h₀ after `ring_nf` (Lean state) // @tac-hyp 2688-2700
                          assert ((15.0 + (k as real)) == ((100.0 / 7.0) + (((50 + (k * 70)) as real) * (1.0 / 70.0)))) by {  // sub-goal of `norm_num` (Lean state) // @tac 2715-2723
                            // UNCITED-APPLIED Nat.cast_add: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
                            // UNCITED-APPLIED Nat.cast_mul: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
                            NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
                            assert ((15.0 + (k as real)) == ((100.0 / 7.0) + ((50.0 + ((k as real) * 70.0)) * (1.0 / 70.0)))) by {  // sub-goal of `field_simp` (Lean state) // @tac 2738-2753
                              // UNCITED-APPLIED mul_one ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (50 : ℝ) + ↑k * (70 : ℝ))
                              // UNCITED-APPLIED Nat.cast_zero: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
                              assert (((100.0 * 70.0) + ((n as real) * 7.0)) == ((floor(Real.sqrt((n as real))) as real) * (7.0 * 70.0)));  // hypothesis h₈ after `field_simp` (Lean state) // @tac-hyp 2738-2753
                              assert (((100.0 * 70.0) + ((n as real) * 7.0)) == ((floor(Real.sqrt((n as real))) as real) * (7.0 * 70.0)));  // hypothesis h₂ after `field_simp` (Lean state) // @tac-hyp 2738-2753
                              assert ((0 < n) && (((100.0 * 70.0) + ((n as real) * 7.0)) == ((floor(Real.sqrt((n as real))) as real) * (7.0 * 70.0))));  // hypothesis h after `field_simp` (Lean state) // @tac-hyp 2738-2753
                              assert (forall n: nat :: ((n in S) <==> ((0 < n) && (((100.0 * 70.0) + ((n as real) * 7.0)) == ((floor(Real.sqrt((n as real))) as real) * (7.0 * 70.0))))));  // hypothesis h₀ after `field_simp` (Lean state) // @tac-hyp 2738-2753
                              assert (((15.0 + (k as real)) * (7.0 * 70.0)) == ((100.0 * 70.0) + ((50.0 + ((k as real) * 70.0)) * 7.0))) by {  // sub-goal of `ring_nf` (Lean state) // @tac 2768-2780
                                // cite: pow_one [same instance stated in an enclosing scope: PowOne((k as real));]
                                // UNCITED-APPLIED internal ×96 [exec 685 2768-2780]: applications made inside the tactic's own automation, not stated — add_zero ×1; machinery/glue: Mathlib.Meta.NormNum.IsNat.of_raw ×8, Mathlib.Tactic.Ring.add_mul ×7, Mathlib.Tactic.Ring.mul_add ×7, Mathlib.Meta.NormNum.IsNat.to_raw_eq ×6 (+21 more heads, ×67) (cited in this block, not counted here: pow_one [Lean recorded ×1])
                              }
                              // UNCITED-APPLIED internal ×25 [exec 676 2738-2753]: applications made inside the tactic's own automation, not stated — mul_div_assoc' ×1, mul_one ×1, add_div' ×1, Nat.cast_zero ×1, div_mul_eq_mul_div ×1, div_add' ×1, div_div ×1; machinery/glue: Eq.trans ×6, congrArg ×5, Mathlib.Meta.NormNum.isNat_eq_false ×3, Mathlib.Meta.NormNum.isNat_ofNat ×3 (+1 more heads, ×1)
                            }
                            // UNCITED-APPLIED internal ×40 [exec 667 2715-2723]: applications made inside the tactic's own automation, not stated — Nat.cast_add ×1, Nat.cast_mul ×1; machinery/glue: congrArg ×7, Mathlib.Meta.NormNum.isNat_ofNat ×6, Eq.trans ×5, congr ×4 (+7 more heads, ×16) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                          }
                          // UNCITED-APPLIED internal ×82 [exec 658 2688-2700]: applications made inside the tactic's own automation, not stated — add_zero ×3, mul_one ×1; machinery/glue: congrArg ×8, Eq.trans ×8, Mathlib.Tactic.Ring.cast_pos ×5, Mathlib.Meta.NormNum.isNat_ofNat ×5 (+29 more heads, ×52) (cited in this block, not counted here: pow_one [Lean recorded ×3])
                        }
                      }
                      // have h₁₀ :  + 15 == Int.floor ( ( Real.sqrt ( n ) ) )  [type from Lean state]
                      assert (((k as real) + 15.0) == (floor(Real.sqrt((n as real))) as real)) by { // @tac 2921-2929
                        // [TACTIC: «Linarith[_]At___»]
                        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2921-2929 exec 714)
                        // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(70 : ℝ) * ((↑n + (1000 : ℝ)) / (70 : ℝ) - ↑⌊√↑n⌋) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((((n as real) + 1000.0) / 70.0) - (floor(Real.sqrt((n as real))) as real)) == 0.0); (70.0 > 0.0)
                        // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(70 : ℝ) * (↑k + (15 : ℝ) - (↑n + (1000 : ℝ)) / (70 : ℝ)) = (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((k as real) + 15.0) - (((n as real) + 1000.0) / 70.0)) == 0.0); (70.0 > 0.0)
                        // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(70 : ℝ) * (↑k + (15 : ℝ) - ↑⌊√↑n⌋) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((k as real) + 15.0) - (floor(Real.sqrt((n as real))) as real)) < 0.0); (70.0 > 0.0)
                        // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(70 : ℝ) * (↑⌊√↑n⌋ - (↑k + (15 : ℝ))) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((floor(Real.sqrt((n as real))) as real) - ((k as real) + 15.0)) < 0.0); (70.0 > 0.0)
                        // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `-((1 : ℝ) * ↑n + (1 : ℝ) * (1000 : ℝ) - (70 : ℝ) * ↑⌊√↑n⌋) + -((70 : ℝ) * ↑k + (70 : ℝ) * (15 : ℝ) - ((1 : ℝ) * ↑n + (1…` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
                        // UNCITED-APPLIED Linarith.eq_of_eq_of_eq: certificate sum `(1 : ℝ) * ↑n + (1 : ℝ) * (1000 : ℝ) - (70 : ℝ) * ↑⌊√↑n⌋ + ((70 : ℝ) * ↑k + (70 : ℝ) * (15 : ℝ) - ((1 : ℝ) * ↑n + (1 : ℝ…` not stated: not of the form S < 0 / S <= 0 (only those are lowered, to the identity S == 0)
                        cert_identity_5(S, k, n);  // cert: Linarith.lt_of_eq_of_lt
                        cert_identity_6(S, k, n);  // cert: Linarith.lt_of_eq_of_lt
                        // UNCITED-APPLIED internal ×223 [exec 714 2921-2929]: applications made inside the tactic's own automation, not stated — neg_eq_zero ×2, CancelDenoms.sub_subst ×2, CancelDenoms.add_subst ×2, sub_eq_zero_of_eq ×2, sub_neg_of_lt ×2, Nat.cast_zero ×1, CancelDenoms.div_subst ×1; machinery/glue: Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×8 (+42 more heads, ×179) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×14 [exec 715 2921-2929]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×6 [exec 716 2921-2929]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×6 [exec 717 2921-2929]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                        // UNCITED-APPLIED internal ×14 [exec 718 2921-2929]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×6 [exec 719 2921-2929]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×6 [exec 720 2921-2929]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                        // UNCITED-APPLIED internal ×6 [exec 723 2921-2929]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                        // UNCITED-APPLIED internal ×14 [exec 721 2921-2929]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×6 [exec 722 2921-2929]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×6 [exec 726 2921-2929]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                        // UNCITED-APPLIED internal ×14 [exec 724 2921-2929]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.IsInt.to_isNat ×2, Mathlib.Meta.NormNum.IsRat.to_isInt ×2, Mathlib.Meta.NormNum.IsNat.to_isRat ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2 (+6 more heads, ×6) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×6 [exec 725 2921-2929]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×6 [exec 728 2921-2929]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                        // UNCITED-APPLIED internal ×6 [exec 731 2921-2929]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                        NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
                        // UNCITED-APPLIED Nat.cast_zero: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
                      }
                      // have h₁₁ :  + 15 == Int.floor ( ( Real.sqrt ( n ) ) )  [type from Lean state]
                      assert (((k as int) + 15) == floor(Real.sqrt((n as real)))) by { // @tac 3010-3201 // @tac 3010-3182 // @tac 3010-3147 // @tac 3010-3111 // @tac 3010-3078 // @tac 3010-3034
                        // [TACTIC: «_<;>_» at h₁₀ ⊢ norm_cast at h₁₀ ⊢ <;> ( try norm_num at h₁₀ ⊢ ) <;> ( try ring_nf at h₁₀ ⊢ ) <;> ( try field_simp at h₁₀ ⊢ ) <;> ( try norm_cast at h₁₀ ⊢ norm_cast at h₁₀ ⊢ ) <;> ( try linarith linarith )]
                        // [TACTIC: Norm_cast at h₁₀ ⊢]
                        // UNCITED-APPLIED Nat.cast_add: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
                        assert (((k + 15) as int) == floor(Real.sqrt((n as real))));  // hypothesis h₁₀ after `norm_cast` (Lean state) // @tac-hyp 3010-3034
                        assert (((k + 15) as int) == floor(Real.sqrt((n as real))));  // sub-goal of `norm_cast` (Lean state)
                        // `norm_cast` closed the goal; the rest of the chain did not run
                        // [TACTIC: «Norm_num[_]At___» at h₁₀ ⊢]
                        // [TACTIC: Ring_nfAt at h₁₀ ⊢]
                        // [TACTIC: «Field_simp[_]At___» at h₁₀ ⊢]
                        // NOT RUN in Lean (no execution recorded): no lemma instances
                        // [TACTIC: Norm_cast at h₁₀ ⊢]
                        // NOT RUN in Lean (no execution recorded): no lemma instances
                        // [TACTIC: «Linarith[_]At___»]
                        // NOT RUN in Lean (no execution recorded): no lemma instances
                        // UNCITED-APPLIED Eq.symm(↑↑(k + (15 : ℕ)), ↑k + (15 : ℝ)): library counterpart exists, but the translation of this tactic states no such instance [exec 804 3010-3034]
                        // UNCITED-APPLIED congrArg(↑k + ↑(15 : ℕ), ↑(k + (15 : ℕ)), fun (x : ℝ) => x = ↑⌊√↑n⌋): no library counterpart (not stated) [exec 804 3010-3034]
                        // UNCITED-APPLIED congrArg(↑(k + (15 : ℕ)), ↑↑(k + (15 : ℕ)), fun (x : ℝ) => x = ↑⌊√↑n⌋): no library counterpart (not stated) [exec 804 3010-3034]
                        // UNCITED-APPLIED congrArg(↑(k + (15 : ℕ)), ↑k + ↑(15 : ℕ), Int.cast): no library counterpart (not stated) [exec 804 3010-3034]
                        // UNCITED-APPLIED congrArg(↑↑k, ↑k, HAdd.hAdd): no library counterpart (not stated) [exec 804 3010-3034]
                        // UNCITED-APPLIED Eq.trans: no library counterpart (not stated) [exec 804 3010-3034]
                        // UNCITED-APPLIED Eq.trans(↑(k + (15 : ℕ)), ↑k + ↑(15 : ℕ), ↑↑(k + (15 : ℕ))): no library counterpart (not stated) [exec 804 3010-3034]
                        // UNCITED-APPLIED Eq.trans(↑↑(k + (15 : ℕ)), ↑↑k + ↑(15 : ℤ), ↑k + (15 : ℝ)): no library counterpart (not stated) [exec 804 3010-3034]
                        // UNCITED-APPLIED Eq.trans(↑↑(k + (15 : ℕ)), ↑(↑k + ↑(15 : ℕ)), ↑↑k + ↑(15 : ℤ)): no library counterpart (not stated) [exec 804 3010-3034]
                        // UNCITED-APPLIED congr(HAdd.hAdd ↑↑k, HAdd.hAdd ↑k, ↑(15 : ℤ), (15 : ℝ)): no library counterpart (not stated) [exec 804 3010-3034]
                        // UNCITED-APPLIED Int.cast_ofNat(nat_lit 15): no library counterpart (not stated) [exec 804 3010-3034]
                        // UNCITED-APPLIED Int.cast_add(↑k, (15 : ℤ)): no library counterpart (not stated) [exec 804 3010-3034]
                        // UNCITED-APPLIED Int.cast_natCast(k): no library counterpart (not stated) [exec 804 3010-3034]
                        // UNCITED-APPLIED internal ×1 [exec 790 3010-3034]: applications made inside the tactic's own automation, not stated — machinery/glue: congrArg ×1
                      }
                      // [TACTIC: Exact_mod_cast h₁₁]
                      // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                      // UNCITED-APPLIED congrArg(↑k + ↑(15 : ℕ), ↑(k + (15 : ℕ)), fun (x : ℤ) => x = ⌊√↑n⌋): no library counterpart (not stated) [exec 836 3210-3232]
                      // UNCITED-APPLIED Eq.trans: no library counterpart (not stated) [exec 836 3210-3232]
                    }
                    // have h₈ : k + 15 ^ 2 <=   [type from Lean state]
                    assert ((((k as real) + 15.0) * ((k as real) + 15.0)) <= (n as real)) by { // @tac 3298-3689 // @tac 3698-3752 // @tac 3761-3889 // @tac 3898-3911
                      // have h₉ : k + 15 <= Real.sqrt ( n )  [type from Lean state]
                      assert (((k as real) + 15.0) <= Real.sqrt((n as real))) by { // @tac 3357-3665 // @tac 3676-3689
                        // have h₁₀ : k + 15 <= Real.sqrt ( n )  [type from Lean state]
                        assert (((k as real) + 15.0) <= Real.sqrt((n as real))) by { // @tac 3421-3516 // @tac 3529-3644 // @tac 3657-3665
                          // have h₁₁ : k + 15 == Int.floor ( ( Real.sqrt ( n ) ) )  [type from Lean state]
                          assert (((k as real) + 15.0) == (floor(Real.sqrt((n as real))) as real)); // @tac 3497-3516
                            // [TACTIC: Exact_mod_cast h₇]
                            // UNCITED-APPLIED Eq.symm: 1 more recorded instance () not expressible here (sort/type/scope), not guessed
                            // UNCITED-APPLIED Nat.cast_add: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
                            // UNCITED-APPLIED Eq.symm ×1: 1 of Lean's 2 recorded instances here have no statement above (which ones is not decided) — Lean's instances: Eq.symm; Eq.symm(↑↑(k + (15 : ℕ)), ↑k + (15 : ℝ)) [exec 902 3497-3516]
                            // UNCITED-APPLIED congrArg(↑k + ↑(15 : ℕ), ↑(k + (15 : ℕ)), fun (x : ℤ) => x = ⌊√↑n⌋): no library counterpart (not stated) [exec 902 3497-3516]
                            // UNCITED-APPLIED congrArg(↑k + ↑(15 : ℕ), ↑(k + (15 : ℕ)), fun (x : ℝ) => x = ↑⌊√↑n⌋): no library counterpart (not stated) [exec 902 3497-3516]
                            // UNCITED-APPLIED congrArg(↑(k + (15 : ℕ)), ↑↑(k + (15 : ℕ)), fun (x : ℝ) => x = ↑⌊√↑n⌋): no library counterpart (not stated) [exec 902 3497-3516]
                            // UNCITED-APPLIED congrArg(↑(k + (15 : ℕ)), ↑k + ↑(15 : ℕ), Int.cast): no library counterpart (not stated) [exec 902 3497-3516]
                            // UNCITED-APPLIED congrArg(↑↑k, ↑k, HAdd.hAdd): no library counterpart (not stated) [exec 902 3497-3516]
                            // UNCITED-APPLIED Eq.trans: no library counterpart (not stated) [exec 902 3497-3516]
                            // UNCITED-APPLIED Eq.trans(↑(k + (15 : ℕ)), ↑k + ↑(15 : ℕ), ↑↑(k + (15 : ℕ))): no library counterpart (not stated) [exec 902 3497-3516]
                            // UNCITED-APPLIED Eq.trans(↑↑(k + (15 : ℕ)), ↑↑k + ↑(15 : ℤ), ↑k + (15 : ℝ)): no library counterpart (not stated) [exec 902 3497-3516]
                            // UNCITED-APPLIED Eq.trans(↑↑(k + (15 : ℕ)), ↑(↑k + ↑(15 : ℕ)), ↑↑k + ↑(15 : ℤ)): no library counterpart (not stated) [exec 902 3497-3516]
                            // UNCITED-APPLIED congr(HAdd.hAdd ↑↑k, HAdd.hAdd ↑k, ↑(15 : ℤ), (15 : ℝ)): no library counterpart (not stated) [exec 902 3497-3516]
                            // UNCITED-APPLIED Int.cast_ofNat(nat_lit 15): no library counterpart (not stated) [exec 902 3497-3516]
                            // UNCITED-APPLIED Int.cast_add(↑k, (15 : ℤ)): no library counterpart (not stated) [exec 902 3497-3516]
                            // UNCITED-APPLIED Int.cast_natCast(k): no library counterpart (not stated) [exec 902 3497-3516]
                          // have h₁₂ : Int.floor ( ( Real.sqrt ( n ) ) ) <= Real.sqrt ( n )  [type from Lean state]
                          assert ((floor(Real.sqrt((n as real))) as real) <= Real.sqrt((n as real))) by { // @tac 3612-3644
                            // [TACTIC: exact Int.floor_le ( Real.sqrt n )]
                            IntFloorLe(Real.sqrt((n as real)));  // cite: Int.floor_le
                          }
                          // [TACTIC: «Linarith[_]At___»]
                          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3657-3665 exec 920)
                          // UNCITED-APPLIED Linarith.le_of_eq_of_le: certificate sum `↑k + (15 : ℝ) - ↑⌊√↑n⌋ + (↑⌊√↑n⌋ - √↑n) ≤ (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                          cert_identity_7(S, k, n);  // cert: add_lt_of_le_of_neg
                          // UNCITED-APPLIED internal ×72 [exec 920 3657-3665]: applications made inside the tactic's own automation, not stated — le_of_not_gt ×1, Nat.cast_zero ×1, add_lt_of_le_of_neg ×1, sub_eq_zero_of_eq ×1, sub_nonpos_of_le ×1, sub_neg_of_lt ×1; machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×5, Mathlib.Tactic.Ring.neg_add ×4, Mathlib.Tactic.Ring.add_pf_add_overlap_zero ×4, Mathlib.Tactic.Ring.add_congr ×3 (+24 more heads, ×50)
                          // UNCITED-APPLIED Nat.cast_zero: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
                        }
                        // [TACTIC: exact h₁₀]
                        assert (((k as real) + 15.0) <= Real.sqrt((n as real)));
                      }
                      // have h₁₀ : 0 <= Real.sqrt ( n )  [type from Lean state]
                      assert (0.0 <= Real.sqrt((n as real))) by {
                        // [TACTIC: exact Real.sqrt_nonneg ( n )]
                        RealSqrtNonneg((n as real));  // cite: Real.sqrt_nonneg
                      }
                      // have h₁₁ : k + 15 ^ 2 <=   [type from Lean state]
                      assert ((((k as real) + 15.0) * ((k as real) + 15.0)) <= (n as real)) by { // @tac 3825-3889
                        assert (0.0 <= (n as real)) by {  // sub-goal of `by` (Lean state) // @tac 3853-3863
                          // [TACTIC: Positivity]
                        }
                        // [TACTIC: «Nlinarith[_]At___» [ Real.sq_sqrt ( by positivity : 0 ≤ ( n : ℝ ) ) , h₉ ]]
                        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 3825-3889 exec 957)
                        // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(30 : ℝ) * (↑k + (15 : ℝ) - √↑n) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((k as real) + 15.0) - Real.sqrt((n as real))) <= 0.0); (30.0 > 0.0)
                        // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(2 : ℝ) * -(-↑k * (↑k + (15 : ℝ) - √↑n)) ≤ (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((k as real) * (((k as real) + 15.0) - Real.sqrt((n as real)))) <= 0.0); (2.0 > 0.0)
                        if (0.0 <= (k as real)) && ((((k as real) + 15.0) - Real.sqrt((n as real))) <= 0.0) { cert_piece_8(S, k, n); }  // cert: mul_nonneg_of_nonpos_of_nonpos
                        if ((((k as real) + 15.0) - Real.sqrt((n as real))) <= 0.0) { cert_piece_9(S, k, n); }  // cert: mul_nonneg_of_nonpos_of_nonpos (square of a compound term: Z3 may not carry it through the lemma binding)
                        // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(30 : ℝ) * (↑k + (15 : ℝ) - √↑n) + (↑n - (↑k + (15 : ℝ)) ^ (2 : ℕ)) + (√↑n ^ (2 : ℕ) - ↑n) + (2 : ℝ) * -(-↑k * (↑k + (1…` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                        // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(30 : ℝ) * (↑k + (15 : ℝ) - √↑n) + (↑n - (↑k + (15 : ℝ)) ^ (2 : ℕ)) + (√↑n ^ (2 : ℕ) - ↑n) < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                        // UNCITED-APPLIED add_lt_of_le_of_neg: certificate sum `(30 : ℝ) * (↑k + (15 : ℝ) - √↑n) + (↑n - (↑k + (15 : ℝ)) ^ (2 : ℕ)) < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                        cert_identity_10(S, k, n);  // cert: add_lt_of_neg_of_le
                        // UNCITED-APPLIED internal ×258 [exec 957 3825-3889]: applications made inside the tactic's own automation, not stated — neg_nonpos_of_nonneg ×3, add_lt_of_neg_of_le ×2, mul_nonneg_of_nonpos_of_nonpos ×2, le_of_not_gt ×1, Nat.cast_zero ×1, add_lt_of_le_of_neg ×1, sub_nonpos_of_le ×1, sub_neg_of_lt ×1, sub_eq_zero_of_eq ×1, Nat.cast_pos ×1; machinery/glue: Mathlib.Tactic.Ring.add_pf_add_gt ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Tactic.Ring.neg_add ×8, Mathlib.Tactic.Ring.add_pf_add_lt ×8 (+51 more heads, ×212) (cited in this block, not counted here: Real.sq_sqrt [Lean recorded ×1], le_of_lt [Lean recorded ×1])
                        // UNCITED-APPLIED internal ×6 [exec 970 3825-3889]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                        // UNCITED-APPLIED internal ×6 [exec 971 3825-3889]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                        // UNCITED-APPLIED Nat.cast_zero: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
                        if ((0.0) < ((n as real))) { LeOfLt(0.0, (n as real)); }  // cite: le_of_lt [applied by the tactic, not named in it]
                        assert (0.0 <= ((n as real)));  // precondition of RealSqSqrt (Lean: Real.sq_sqrt)
                        RealSqSqrt((n as real));  // cite: Real.sq_sqrt
                      }
                      // [TACTIC: exact h₁₁]
                      assert ((((k as real) + 15.0) * ((k as real) + 15.0)) <= (n as real));
                    }
                    // have h₉ :  < k + 16 ^ 2  [type from Lean state]
                    assert ((n as real) < (((k as real) + 16.0) * ((k as real) + 16.0))) by { // @tac 3975-4517 // @tac 4526-4580 // @tac 4589-4718 // @tac 4727-4740
                      // have h₁₀ : Real.sqrt ( n ) < k + 16  [type from Lean state]
                      assert (Real.sqrt((n as real)) < ((k as real) + 16.0)) by { // @tac 4035-4493 // @tac 4504-4517
                        // have h₁₁ : Real.sqrt ( n ) < k + 16  [type from Lean state]
                        assert (Real.sqrt((n as real)) < ((k as real) + 16.0)) by { // @tac 4097-4301 // @tac 4314-4472 // @tac 4485-4493
                          // have h₁₂ : Int.floor ( ( Real.sqrt ( n ) ) ) == k + 15  [type from Lean state]
                          assert ((floor(Real.sqrt((n as real))) as real) == ((k as real) + 15.0)) by { // @tac 4181-4278 // @tac 4293-4301
                            // have h₁₃ : k + 15 == Int.floor ( ( Real.sqrt ( n ) ) )  [type from Lean state]
                            assert (((k as real) + 15.0) == (floor(Real.sqrt((n as real))) as real)); // @tac 4259-4278
                              // [TACTIC: Exact_mod_cast h₇]
                              // UNCITED-APPLIED Eq.symm: 1 more recorded instance () not expressible here (sort/type/scope), not guessed
                              // UNCITED-APPLIED Nat.cast_add: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
                              // UNCITED-APPLIED Eq.symm ×1: 1 of Lean's 2 recorded instances here have no statement above (which ones is not decided) — Lean's instances: Eq.symm; Eq.symm(↑↑(k + (15 : ℕ)), ↑k + (15 : ℝ)) [exec 1054 4259-4278]
                              // UNCITED-APPLIED congrArg(↑k + ↑(15 : ℕ), ↑(k + (15 : ℕ)), fun (x : ℤ) => x = ⌊√↑n⌋): no library counterpart (not stated) [exec 1054 4259-4278]
                              // UNCITED-APPLIED congrArg(↑k + ↑(15 : ℕ), ↑(k + (15 : ℕ)), fun (x : ℝ) => x = ↑⌊√↑n⌋): no library counterpart (not stated) [exec 1054 4259-4278]
                              // UNCITED-APPLIED congrArg(↑(k + (15 : ℕ)), ↑↑(k + (15 : ℕ)), fun (x : ℝ) => x = ↑⌊√↑n⌋): no library counterpart (not stated) [exec 1054 4259-4278]
                              // UNCITED-APPLIED congrArg(↑(k + (15 : ℕ)), ↑k + ↑(15 : ℕ), Int.cast): no library counterpart (not stated) [exec 1054 4259-4278]
                              // UNCITED-APPLIED congrArg(↑↑k, ↑k, HAdd.hAdd): no library counterpart (not stated) [exec 1054 4259-4278]
                              // UNCITED-APPLIED Eq.trans: no library counterpart (not stated) [exec 1054 4259-4278]
                              // UNCITED-APPLIED Eq.trans(↑(k + (15 : ℕ)), ↑k + ↑(15 : ℕ), ↑↑(k + (15 : ℕ))): no library counterpart (not stated) [exec 1054 4259-4278]
                              // UNCITED-APPLIED Eq.trans(↑↑(k + (15 : ℕ)), ↑↑k + ↑(15 : ℤ), ↑k + (15 : ℝ)): no library counterpart (not stated) [exec 1054 4259-4278]
                              // UNCITED-APPLIED Eq.trans(↑↑(k + (15 : ℕ)), ↑(↑k + ↑(15 : ℕ)), ↑↑k + ↑(15 : ℤ)): no library counterpart (not stated) [exec 1054 4259-4278]
                              // UNCITED-APPLIED congr(HAdd.hAdd ↑↑k, HAdd.hAdd ↑k, ↑(15 : ℤ), (15 : ℝ)): no library counterpart (not stated) [exec 1054 4259-4278]
                              // UNCITED-APPLIED Int.cast_ofNat(nat_lit 15): no library counterpart (not stated) [exec 1054 4259-4278]
                              // UNCITED-APPLIED Int.cast_add(↑k, (15 : ℤ)): no library counterpart (not stated) [exec 1054 4259-4278]
                              // UNCITED-APPLIED Int.cast_natCast(k): no library counterpart (not stated) [exec 1054 4259-4278]
                            // [TACTIC: «Linarith[_]At___»]
                            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 4293-4301 exec 1055)
                            cert_identity_11(S, k, n);  // cert: Linarith.lt_of_eq_of_lt
                            cert_identity_12(S, k, n);  // cert: Linarith.lt_of_eq_of_lt
                            // UNCITED-APPLIED internal ×81 [exec 1055 4293-4301]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2, Nat.cast_zero ×1, sub_eq_zero_of_eq ×1, neg_eq_zero ×1; machinery/glue: Mathlib.Tactic.Ring.neg_add ×6, Mathlib.Tactic.Ring.add_pf_add_overlap_zero ×6, Mathlib.Meta.NormNum.IsInt.to_isNat ×5, Mathlib.Meta.NormNum.isInt_add ×4 (+28 more heads, ×55)
                            // UNCITED-APPLIED Nat.cast_zero: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
                          }
                          // have h₁₃ : Real.sqrt ( n ) < Int.floor ( ( Real.sqrt ( n ) ) ) + 1  [type from Lean state]
                          assert (Real.sqrt((n as real)) < ((floor(Real.sqrt((n as real))) as real) + 1.0)) by { // @tac 4399-4472
                            // [TACTIC: «Linarith[_]At___» [ Int.floor_le ( Real.sqrt n ) , Int.lt_floor_add_one ( Real.sqrt n ) ]]
                            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 4399-4472 exec 1086)
                            cert_identity_13(S, n);  // cert: add_lt_of_le_of_neg
                            // UNCITED-APPLIED internal ×50 [exec 1086 4399-4472]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, Nat.cast_zero ×1, add_lt_of_le_of_neg ×1, sub_nonpos_of_le ×1, sub_neg_of_lt ×1; machinery/glue: Mathlib.Tactic.Ring.add_pf_add_gt ×3, Mathlib.Tactic.Ring.neg_add ×3, Mathlib.Tactic.Ring.add_pf_add_overlap_zero ×3, Mathlib.Tactic.Ring.add_congr ×2 (+23 more heads, ×34) (cited in this block, not counted here: Int.lt_floor_add_one [Lean recorded ×1], Nat.cast_one [Lean recorded ×1])
                            // NOT APPLIED Int.floor_le: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
                            IntLtFloorAddOne(Real.sqrt((n as real)));  // cite: Int.lt_floor_add_one
                            NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
                            // UNCITED-APPLIED Nat.cast_zero: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
                          }
                          // [TACTIC: «Linarith[_]At___»]
                          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 4485-4493 exec 1094)
                          // UNCITED-APPLIED Linarith.lt_of_eq_of_lt: certificate sum `↑⌊√↑n⌋ - (↑k + (15 : ℝ)) + (√↑n - (↑⌊√↑n⌋ + (1 : ℝ))) < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                          cert_identity_14(S, k, n);  // cert: add_lt_of_neg_of_le
                          // UNCITED-APPLIED internal ×89 [exec 1094 4485-4493]: applications made inside the tactic's own automation, not stated — lt_of_not_ge ×1, Nat.cast_zero ×1, add_lt_of_neg_of_le ×1, sub_eq_zero_of_eq ×1, sub_neg_of_lt ×1, sub_nonpos_of_le ×1; machinery/glue: Mathlib.Tactic.Ring.add_pf_add_gt ×6, Mathlib.Tactic.Ring.add_congr ×5, Mathlib.Tactic.Ring.neg_add ×5, Mathlib.Meta.NormNum.isNat_ofNat ×4 (+25 more heads, ×63) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
                          // UNCITED-APPLIED Nat.cast_zero: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
                        }
                        // [TACTIC: exact h₁₁]
                        assert (Real.sqrt((n as real)) < ((k as real) + 16.0));
                      }
                      // have h₁₁ : 0 <= Real.sqrt ( n )  [type from Lean state]
                      assert (0.0 <= Real.sqrt((n as real))) by {
                        // [TACTIC: exact Real.sqrt_nonneg ( n )]
                        RealSqrtNonneg((n as real));  // cite: Real.sqrt_nonneg
                      }
                      // have h₁₂ :  < k + 16 ^ 2  [type from Lean state]
                      assert ((n as real) < (((k as real) + 16.0) * ((k as real) + 16.0))) by { // @tac 4651-4718
                        assert (0.0 <= (n as real)) by {  // sub-goal of `by` (Lean state) // @tac 4679-4689
                          // [TACTIC: Positivity]
                        }
                        // [TACTIC: «Nlinarith[_]At___» [ Real.sq_sqrt ( by positivity : 0 ≤ ( n : ℝ ) ) , h₁₀ ]]
                        // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 4651-4718 exec 1131)
                        // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(16 : ℝ) * (√↑n - (↑k + (16 : ℝ))) < (0 : ℝ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((Real.sqrt((n as real)) - ((k as real) + 16.0)) < 0.0); (16.0 > 0.0)
                        if (0.0 <= (k as real)) && ((Real.sqrt((n as real)) - ((k as real) + 16.0)) <= 0.0) { cert_piece_15(S, k, n); }  // cert: mul_nonneg_of_nonpos_of_nonpos
                        if ((Real.sqrt((n as real)) - ((k as real) + 16.0)) <= 0.0) && (0.0 <= Real.sqrt((n as real))) { cert_piece_16(S, k, n); }  // cert: mul_nonneg_of_nonpos_of_nonpos
                        // UNCITED-APPLIED add_lt_of_neg_of_le ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(16 : ℝ) * (√↑n - (↑k + (16 : ℝ))) + ((↑k + (16 : ℝ)) ^ (2 : ℕ) - ↑n) + -(√↑n ^ (2 : ℕ) - ↑n) + -(-↑k * (√↑n - (↑k + (1…`
                        // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(16 : ℝ) * (√↑n - (↑k + (16 : ℝ))) + ((↑k + (16 : ℝ)) ^ (2 : ℕ) - ↑n) + -(√↑n ^ (2 : ℕ) - ↑n) < (0 : ℝ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                        cert_identity_17(S, k, n);  // cert: add_lt_of_neg_of_le
                        // UNCITED-APPLIED internal ×225 [exec 1131 4651-4718]: applications made inside the tactic's own automation, not stated — neg_nonpos_of_nonneg ×4, add_lt_of_neg_of_le ×3, mul_nonneg_of_nonpos_of_nonpos ×2, lt_of_not_ge ×1, Nat.cast_zero ×1, sub_neg_of_lt ×1, sub_nonpos_of_le ×1, neg_eq_zero ×1, sub_eq_zero_of_eq ×1, Nat.cast_pos ×1; machinery/glue: Mathlib.Tactic.Ring.add_pf_add_zero ×8, Mathlib.Tactic.Ring.add_pf_add_lt ×8, Mathlib.Tactic.Ring.add_pf_zero_add ×8, Mathlib.Tactic.Ring.add_mul ×8 (+53 more heads, ×177) (cited in this block, not counted here: Real.sq_sqrt [Lean recorded ×1], le_of_lt [Lean recorded ×2])
                        // UNCITED-APPLIED internal ×6 [exec 1144 4651-4718]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                        // UNCITED-APPLIED Nat.cast_zero: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
                        if ((0.0) < ((n as real))) { LeOfLt(0.0, (n as real)); }  // cite: le_of_lt [applied by the tactic, not named in it]
                        if (((Real.sqrt((n as real)) - ((k as real) + 16.0))) < (0.0)) { LeOfLt((Real.sqrt((n as real)) - ((k as real) + 16.0)), 0.0); }  // cite: le_of_lt [applied by the tactic, not named in it]
                        assert (0.0 <= ((n as real)));  // precondition of RealSqSqrt (Lean: Real.sq_sqrt)
                        RealSqSqrt((n as real));  // cite: Real.sq_sqrt
                      }
                      // [TACTIC: exact h₁₂]
                      assert ((n as real) < (((k as real) + 16.0) * ((k as real) + 16.0)));
                    }
                    // have h₁₀ : k + 15 ^ 2 <= n  [type from Lean state]
                    assert (((k + 15) * (k + 15)) <= n) by { // @tac 4801-4911 // @tac 4801-4891 // @tac 4801-4860 // @tac 4801-4822
                      // [TACTIC: «_<;>_» at h₈ ⊢ norm_cast at h₈ ⊢ <;> ( try ring_nf at h₈ ⊢ ) <;> ( try norm_num at h₈ ⊢ ) <;> ( try nlinarith nlinarith )]
                      // [TACTIC: Norm_cast at h₈ ⊢]
                      assert (((k + 15) * (k + 15)) <= n);  // hypothesis h₈ after `norm_cast` (Lean state) // @tac-hyp 4801-4822
                      // `norm_cast` closed the goal; the rest of the chain did not run
                      // [TACTIC: Ring_nfAt at h₈ ⊢]
                      // [TACTIC: «Norm_num[_]At___» at h₈ ⊢]
                      // [TACTIC: «Nlinarith[_]At___»]
                      // NOT RUN in Lean (no execution recorded): no lemma instances
                      // UNCITED-APPLIED congrArg((↑k + ↑(15 : ℕ)) ^ (2 : ℕ), ↑((k + (15 : ℕ)) ^ (2 : ℕ)), fun (x : ℝ) => x ≤ ↑n): no library counterpart (not stated) [exec 1197 4801-4822]
                      // UNCITED-APPLIED congrArg(↑k + ↑(15 : ℕ), ↑(k + (15 : ℕ)), fun (x : ℝ) => x ^ (2 : ℕ)): no library counterpart (not stated) [exec 1197 4801-4822]
                      // UNCITED-APPLIED Eq.trans: no library counterpart (not stated) [exec 1197 4801-4822]
                      // UNCITED-APPLIED Eq.trans((↑k + ↑(15 : ℕ)) ^ (2 : ℕ), ↑(k + (15 : ℕ)) ^ (2 : ℕ), ↑((k + (15 : ℕ)) ^ (2 : ℕ))): no library counterpart (not stated) [exec 1197 4801-4822]
                    }
                    // have h₁₁ : n < k + 16 ^ 2  [type from Lean state]
                    assert (n < ((k + 16) * (k + 16))) by { // @tac 4970-5080 // @tac 4970-5060 // @tac 4970-5029 // @tac 4970-4991
                      // [TACTIC: «_<;>_» at h₉ ⊢ norm_cast at h₉ ⊢ <;> ( try ring_nf at h₉ ⊢ ) <;> ( try norm_num at h₉ ⊢ ) <;> ( try nlinarith nlinarith )]
                      // [TACTIC: Norm_cast at h₉ ⊢]
                      assert (n < ((k + 16) * (k + 16)));  // hypothesis h₉ after `norm_cast` (Lean state) // @tac-hyp 4970-4991
                      // `norm_cast` closed the goal; the rest of the chain did not run
                      // [TACTIC: Ring_nfAt at h₉ ⊢]
                      // [TACTIC: «Norm_num[_]At___» at h₉ ⊢]
                      // [TACTIC: «Nlinarith[_]At___»]
                      // NOT RUN in Lean (no execution recorded): no lemma instances
                      // UNCITED-APPLIED congrArg((↑k + ↑(16 : ℕ)) ^ (2 : ℕ), ↑((k + (16 : ℕ)) ^ (2 : ℕ)), LT.lt ↑n): no library counterpart (not stated) [exec 1267 4970-4991]
                      // UNCITED-APPLIED congrArg(↑k + ↑(16 : ℕ), ↑(k + (16 : ℕ)), fun (x : ℝ) => x ^ (2 : ℕ)): no library counterpart (not stated) [exec 1267 4970-4991]
                      // UNCITED-APPLIED Eq.trans: no library counterpart (not stated) [exec 1267 4970-4991]
                      // UNCITED-APPLIED Eq.trans((↑k + ↑(16 : ℕ)) ^ (2 : ℕ), ↑(k + (16 : ℕ)) ^ (2 : ℕ), ↑((k + (16 : ℕ)) ^ (2 : ℕ))): no library counterpart (not stated) [exec 1267 4970-4991]
                    }
                    // have h₁₂ : k <= 35  [type from Lean state]
                    assert (k <= 35) by { // @tac 5125-5136
                      // UNCITED-APPLIED Decidable.byContradiction: no library counterpart (not stated) [exec 1309 5125-5136]
                      // by_contra h
                      if !((k <= 35)) {
                        assert false by {  // sub-goal before `have` (Lean state) // @tac 5145-5180 // @tac 5189-5252 // @tac 5261-5270
                          // have h₁₃ : k >= 36  [type from Lean state]
                          assert (k >= 36); // @tac 5175-5180
                            // [TACTIC: omega]
                            // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                            // UNCITED-APPLIED internal ×42 [exec 1326 5175-5180]: applications made inside the tactic's own automation, not stated — le_of_le_of_eq ×2, Int.sub_nonneg_of_le ×2, Int.add_one_le_of_lt ×2, Nat.lt_of_not_le ×2, Int.sub_eq_zero_of_eq ×1; machinery/glue: Eq.symm ×8, Lean.Omega.Int.sub_congr ×3, Lean.Omega.LinearCombo.sub_eval ×3, Lean.Omega.combo_sat' ×2 (+13 more heads, ×17)
                          // have h₁₄ : k + 15 ^ 2 > n  [type from Lean state]
                          assert (((k + 15) * (k + 15)) > n) by { // @tac 5243-5252
                            // [TACTIC: «Nlinarith[_]At___»]
                            // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 5243-5252 exec 1343)
                            // UNCITED-APPLIED Linarith.mul_neg: certificate piece `(279 : ℤ) * (-1 : ℤ) < (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (0 < 1); (279 > 0)
                            // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(9 : ℤ) * (↑n - ((70 : ℤ) * ↑k + (50 : ℤ))) = (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((n as int) - ((70 * (k as int)) + 50)) == 0); (9 > 0)
                            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(9 : ℤ) * ((↑k + (15 : ℤ)) ^ (2 : ℕ) - ↑n) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((((k as int) + 15) * ((k as int) + 15)) - (n as int)) <= 0); (9 > 0)
                            // UNCITED-APPLIED Linarith.mul_nonpos: certificate piece `(8 : ℤ) * -(-↑k * ((35 : ℤ) + (1 : ℤ) - ↑k)) ≤ (0 : ℤ)` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((k as int) * ((35 + 1) - (k as int))) <= 0); (8 > 0)
                            if (0 <= (k as int)) && (((35 + 1) - (k as int)) <= 0) { cert_piece_18(S, k); }  // cert: mul_nonneg_of_nonpos_of_nonpos
                            if (((35 + 1) - (k as int)) <= 0) { cert_piece_19(S, k); }  // cert: mul_nonneg_of_nonpos_of_nonpos (square of a compound term: Z3 may not carry it through the lemma binding)
                            // UNCITED-APPLIED add_lt_of_neg_of_le ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(279 : ℤ) * (-1 : ℤ) + (9 : ℤ) * (↑n - ((70 : ℤ) * ↑k + (50 : ℤ))) + (9 : ℤ) * ((↑k + (15 : ℤ)) ^ (2 : ℕ) - ↑n) + (8 : …`
                            // UNCITED-APPLIED Linarith.lt_of_lt_of_eq: certificate sum `(279 : ℤ) * (-1 : ℤ) + (9 : ℤ) * (↑n - ((70 : ℤ) * ↑k + (50 : ℤ))) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                            cert_identity_20(S, k, n);  // cert: add_lt_of_neg_of_le
                            // UNCITED-APPLIED internal ×276 [exec 1343 5243-5252]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×3, neg_nonpos_of_nonneg ×3, lt_of_not_ge ×2, Nat.cast_add ×2, sub_nonpos_of_le ×2, mul_nonneg_of_nonpos_of_nonpos ×2, neg_neg_of_pos ×1, zero_lt_one ×1, sub_eq_zero_of_eq ×1, Nat.cast_mul ×1, Int.add_one_le_iff ×1; machinery/glue: Mathlib.Tactic.Ring.cast_pos ×8, Mathlib.Meta.NormNum.isNat_ofNat ×8, Mathlib.Meta.NormNum.IsInt.to_raw_eq ×8, Mathlib.Meta.NormNum.isInt_mul ×8 (+52 more heads, ×225) (cited in this block, not counted here: Nat.cast_pow [Lean recorded ×1])
                            // UNCITED-APPLIED internal ×5 [exec 1351 5243-5252]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                            // UNCITED-APPLIED internal ×5 [exec 1352 5243-5252]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                            // UNCITED-APPLIED internal ×5 [exec 1353 5243-5252]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                            // UNCITED-APPLIED internal ×5 [exec 1354 5243-5252]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                            // UNCITED-APPLIED Nat.cast_add: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
                            // UNCITED-APPLIED Nat.cast_mul: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
                            NatCastPowInt((k + 15), 2);  // cite: Nat.cast_pow [applied by the tactic, not named in it]
                          }
                          // [TACTIC: «Nlinarith[_]At___»]
                          // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 5261-5270 exec 1355)
                          // UNCITED-APPLIED add_lt_of_neg_of_le: certificate sum `(-1 : ℤ) + ((↑k + (15 : ℤ)) ^ (2 : ℕ) - ↑n) < (0 : ℤ)` not stated: a partial sum (a subterm of a larger recorded sum of this certificate)
                          cert_identity_21(S, k, n);  // cert: add_lt_of_neg_of_le
                          // UNCITED-APPLIED internal ×158 [exec 1355 5261-5270]: applications made inside the tactic's own automation, not stated — add_lt_of_neg_of_le ×2, sub_nonpos_of_le ×2, neg_neg_of_pos ×1, zero_lt_one ×1, Nat.cast_add ×1, Int.add_one_le_iff ×1; machinery/glue: Mathlib.Tactic.Ring.add_pf_add_lt ×8, Mathlib.Tactic.Ring.add_pf_add_zero ×7, Mathlib.Tactic.Ring.mul_add ×7, Mathlib.Tactic.Ring.add_pf_zero_add ×6 (+47 more heads, ×122) (cited in this block, not counted here: Nat.cast_pow [Lean recorded ×1])
                          NatCastPowInt((k + 15), 2);  // cite: Nat.cast_pow [applied by the tactic, not named in it]
                          // UNCITED-APPLIED Nat.cast_add: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
                        }
                        assert false;
                      }
                    }
                    // have h₁₃ : k >= 5 || k <= 4  [type from Lean state]
                    assert ((k >= 5) || (k <= 4)); // @tac 5318-5323
                      // [TACTIC: omega]
                      // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                      // UNCITED-APPLIED internal ×122 [exec 1379 5318-5323]: applications made inside the tactic's own automation, not stated — Int.sub_eq_zero_of_eq ×4, le_of_le_of_eq ×4, Int.sub_nonneg_of_le ×4, Int.add_one_le_of_lt ×3, Nat.lt_of_not_le ×2, Int.ofNat_emod ×2, Int.emod_def ×2, Int.ofNat_add ×2, Int.ofNat_mul ×1; machinery/glue: Eq.symm ×26, Lean.Omega.combo_sat' ×8, Lean.Omega.Int.sub_congr ×8, Lean.Omega.LinearCombo.sub_eval ×8 (+21 more heads, ×48)
                    // `cases`: 2 cases (Lean states); 2 branch bodies
                    if ((k >= 5)) {  // sub-goal of `cases` (Lean state)
                      // have h₁₅ : k >= 5  [type from Lean state]
                      assert (k >= 5) by {
                        // [TACTIC: exact h₁₄]
                        assert (k >= 5);
                      }
                      // have h₁₆ : k <= 35  [type from Lean state]
                      assert (k <= 35); // @tac 5452-5457
                        // [TACTIC: omega]
                        // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                        // UNCITED-APPLIED internal ×115 [exec 1413 5452-5457]: applications made inside the tactic's own automation, not stated — Int.sub_eq_zero_of_eq ×4, le_of_le_of_eq ×4, Int.sub_nonneg_of_le ×4, Int.add_one_le_of_lt ×2, Int.ofNat_emod ×2, Int.emod_def ×2, Int.ofNat_add ×2, Nat.lt_of_not_le ×1, Int.ofNat_mul ×1; machinery/glue: Eq.symm ×25, Lean.Omega.combo_sat' ×8, Lean.Omega.Int.sub_congr ×8, Lean.Omega.LinearCombo.sub_eval ×8 (+20 more heads, ×44)
                      // [TACTIC: «_<;>_» k <;> norm_num at h₆ h₁₀ h₁₁ h₈ h₉ h₇ ⊢ <;> ( try omega omega ) <;> ( try { have h₁₇ : n = 400 := by omega omega have h₁₇ : n = 400 := by omega omega simp_all [ h₁₇ ] simp_all [ h₁₇ ] simp_all [ h₁₇ ] <;> norm_num [ Int.emod_eq_of_lt ] at * <;> ( try { rw [ eq_comm ] rw [ eq_comm ] <;> norm_num [ Int.floor_eq_iff , Real.le_sqrt , Real.sqrt_lt ] norm_num [ Int.floor_eq_iff , Real.le_sqrt , Real.sqrt_lt ] <;> ( try { constructor constructor <;> norm_num norm_num <;> nlinarith [ Real.sqrt_nonneg 400 , Real.sq_sqrt ( show 0 ≤ ( 400 : ℝ ) by norm_num norm_num ) ] nlinarith [ Real.sqrt_nonneg 400 , Real.sq_sqrt ( show 0 ≤ ( 400 : ℝ ) by norm_num norm_num ) ] } ) } ) } ) <;> ( try { have h₁₇ : n = 470 := by omega omega have h₁₇ : n = 470 := by omega omega simp_all [ h₁₇ ] simp_all [ h₁₇ ] simp_all [ h₁₇ ] <;> norm_num [ Int.emod_eq_of_lt ] at * <;> ( try { rw [ eq_comm ] rw [ eq_comm ] <;> norm_num [ Int.floor_eq_iff , Real.le_sqrt , Real.sqrt_lt ] norm_num [ Int.floor_eq_iff , Real.le_sqrt , Real.sqrt_lt ] <;> ( try { constructor constructor <;> norm_num norm_num <;> nlinarith [ Real.sqrt_nonneg 470 , Real.sq_sqrt ( show 0 ≤ ( 470 : ℝ ) by norm_num norm_num ) ] nlinarith [ Real.sqrt_nonneg 470 , Real.sq_sqrt ( show 0 ≤ ( 470 : ℝ ) by norm_num norm_num ) ] } ) } ) } ) <;> ( try { have h₁₇ : n = 2290 := by omega omega have h₁₇ : n = 2290 := by omega omega simp_all [ h₁₇ ] simp_all [ h₁₇ ] simp_all [ h₁₇ ] <;> norm_num [ Int.emod_eq_of_lt ] at * <;> ( try { rw [ eq_comm ] rw [ eq_comm ] <;> norm_num [ Int.floor_eq_iff , Real.le_sqrt , Real.sqrt_lt ] norm_num [ Int.floor_eq_iff , Real.le_sqrt , Real.sqrt_lt ] <;> ( try { constructor constructor <;> norm_num norm_num <;> nlinarith [ Real.sqrt_nonneg 2290 , Real.sq_sqrt ( show 0 ≤ ( 2290 : ℝ ) by norm_num norm_num ) ] nlinarith [ Real.sqrt_nonneg 2290 , Real.sq_sqrt ( show 0 ≤ ( 2290 : ℝ ) by norm_num norm_num ) ] } ) } ) } ) <;> ( try { have h₁₇ : n = 2360 := by omega omega have h₁₇ : n = 2360 := by omega omega simp_all [ h₁₇ ] simp_all [ h₁₇ ] simp_all [ h₁₇ ] <;> norm_num [ Int.emod_eq_of_lt ] at * <;> ( try { rw [ eq_comm ] rw [ eq_comm ] <;> norm_num [ Int.floor_eq_iff , Real.le_sqrt , Real.sqrt_lt ] norm_num [ Int.floor_eq_iff , Real.le_sqrt , Real.sqrt_lt ] <;> ( try { constructor constructor <;> norm_num norm_num <;> nlinarith [ Real.sqrt_nonneg 2360 , Real.sq_sqrt ( show 0 ≤ ( 2360 : ℝ ) by norm_num norm_num ) ] nlinarith [ Real.sqrt_nonneg 2360 , Real.sq_sqrt ( show 0 ≤ ( 2360 : ℝ ) by norm_num norm_num ) ] } ) } ) } ) <;> ( try { have h₁₇ : n = 2430 := by omega omega have h₁₇ : n = 2430 := by omega omega simp_all [ h₁₇ ] simp_all [ h₁₇ ] simp_all [ h₁₇ ] <;> norm_num [ Int.emod_eq_of_lt ] at * <;> ( try { rw [ eq_comm ] rw [ eq_comm ] <;> norm_num [ Int.floor_eq_iff , Real.le_sqrt , Real.sqrt_lt ] norm_num [ Int.floor_eq_iff , Real.le_sqrt , Real.sqrt_lt ] <;> ( try { constructor constructor <;> norm_num norm_num <;> nlinarith [ Real.sqrt_nonneg 2430 , Real.sq_sqrt ( show 0 ≤ ( 2430 : ℝ ) by norm_num norm_num ) ] nlinarith [ Real.sqrt_nonneg 2430 , Real.sq_sqrt ( show 0 ≤ ( 2430 : ℝ ) by norm_num norm_num ) ] } ) } ) } ) <;> ( try { have h₁₇ : n = 2500 := by omega omega have h₁₇ : n = 2500 := by omega omega simp_all [ h₁₇ ] simp_all [ h₁₇ ] simp_all [ h₁₇ ] <;> norm_num [ Int.emod_eq_of_lt ] at * <;> ( try { rw [ eq_comm ] rw [ eq_comm ] <;> norm_num [ Int.floor_eq_iff , Real.le_sqrt , Real.sqrt_lt ] norm_num [ Int.floor_eq_iff , Real.le_sqrt , Real.sqrt_lt ] <;> ( try { constructor constructor <;> norm_num norm_num <;> nlinarith [ Real.sqrt_nonneg 2500 , Real.sq_sqrt ( show 0 ≤ ( 2500 : ℝ ) by norm_num norm_num ) ] nlinarith [ Real.sqrt_nonneg 2500 , Real.sq_sqrt ( show 0 ≤ ( 2500 : ℝ ) by norm_num norm_num ) ] } ) } ) } ) <;> ( try omega omega )]
                      // [TACTIC: Interval_cases k]
                      // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                      // UNCITED-APPLIED internal ×53 [exec 1459 5466-5482]: applications made inside the tactic's own automation, not stated — le_antisymm ×8, Nat.ge_of_not_lt ×8; machinery/glue: Eq.symm ×31, Mathlib.Meta.NormNum.IsNat.to_raw_eq ×2, Mathlib.Meta.NormNum.isNat_ofNat ×2, Mathlib.Tactic.IntervalCases.of_le_right ×1 (+1 more heads, ×1)
                      if (k == 5) && ((n == ((70 * 5) + 50))) && ((((5 as int) + 15) == floor(Real.sqrt((n as real))))) && (((((5 as real) + 15.0) * ((5 as real) + 15.0)) <= (n as real))) && (((n as real) < (((5 as real) + 16.0) * ((5 as real) + 16.0)))) && ((((5 + 15) * (5 + 15)) <= n)) && ((n < ((5 + 16) * (5 + 16)))) && ((5 <= 35)) && ((5 >= 5)) {  // sub-goal of `norm_num` (Lean state)
                        assert (n == 400);  // hypothesis h₆ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (400 <= n);  // hypothesis h₁₀ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (n < 441);  // hypothesis h₁₁ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (400 <= n);  // hypothesis h₈ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (n < 441);  // hypothesis h₉ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (20 == (floor(Real.sqrt((n as real))) as int));  // hypothesis h₇ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                        assert ((n == 400) || ((n == 470) || ((n == 2290) || ((n == 2360) || ((n == 2430) || (n == 2500))))));  // sub-goal of `norm_num` (Lean state) // @tac 5487-5538 // @tac 5554-5563 // @tac 5558-5563
                        // UNCITED-APPLIED internal ×138 [exec 1574 5558-5563]: applications made inside the tactic's own automation, not stated — le_of_le_of_eq ×7, Int.sub_nonneg_of_le ×7, Int.add_one_le_of_lt ×7, Nat.lt_or_gt_of_ne ×6, Int.sub_eq_zero_of_eq ×3, Int.ofNat_emod ×2, Int.emod_def ×2, Int.ofNat_add ×1; machinery/glue: Eq.symm ×22, Lean.Omega.combo_sat' ×8, Eq.trans ×8, Lean.Omega.Int.sub_congr ×8 (+22 more heads, ×57)
                      }
                      if (k == 6) && ((n == ((70 * 6) + 50))) && ((((6 as int) + 15) == floor(Real.sqrt((n as real))))) && (((((6 as real) + 15.0) * ((6 as real) + 15.0)) <= (n as real))) && (((n as real) < (((6 as real) + 16.0) * ((6 as real) + 16.0)))) && ((((6 + 15) * (6 + 15)) <= n)) && ((n < ((6 + 16) * (6 + 16)))) && ((6 <= 35)) && ((6 >= 5)) {  // sub-goal of `norm_num` (Lean state)
                        assert (n == 470);  // hypothesis h₆ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (441 <= n);  // hypothesis h₁₀ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (n < 484);  // hypothesis h₁₁ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (441 <= n);  // hypothesis h₈ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (n < 484);  // hypothesis h₉ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (21 == (floor(Real.sqrt((n as real))) as int));  // hypothesis h₇ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                        assert ((n == 400) || ((n == 470) || ((n == 2290) || ((n == 2360) || ((n == 2430) || (n == 2500))))));  // sub-goal of `norm_num` (Lean state) // @tac 5487-5538 // @tac 5554-5563 // @tac 5558-5563
                        // UNCITED-APPLIED internal ×131 [exec 1584 5558-5563]: applications made inside the tactic's own automation, not stated — le_of_le_of_eq ×6, Int.sub_nonneg_of_le ×6, Int.add_one_le_of_lt ×6, Nat.lt_or_gt_of_ne ×5, Int.sub_eq_zero_of_eq ×3, Int.ofNat_emod ×2, Int.emod_def ×2, Int.ofNat_add ×1; machinery/glue: Eq.symm ×21, Lean.Omega.combo_sat' ×8, Eq.trans ×8, Lean.Omega.Int.sub_congr ×8 (+22 more heads, ×55)
                      }
                      if (k == 7) && ((n == ((70 * 7) + 50))) && ((((7 as int) + 15) == floor(Real.sqrt((n as real))))) && (((((7 as real) + 15.0) * ((7 as real) + 15.0)) <= (n as real))) && (((n as real) < (((7 as real) + 16.0) * ((7 as real) + 16.0)))) && ((((7 + 15) * (7 + 15)) <= n)) && ((n < ((7 + 16) * (7 + 16)))) && ((7 <= 35)) && ((7 >= 5)) {  // sub-goal of `norm_num` (Lean state)
                        assert (n == 540);  // hypothesis h₆ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (484 <= n);  // hypothesis h₁₀ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (n < 529);  // hypothesis h₁₁ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (484 <= n);  // hypothesis h₈ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (n < 529);  // hypothesis h₉ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (22 == (floor(Real.sqrt((n as real))) as int));  // hypothesis h₇ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                        assert ((n == 400) || ((n == 470) || ((n == 2290) || ((n == 2360) || ((n == 2430) || (n == 2500))))));  // sub-goal of `norm_num` (Lean state) // @tac 5487-5538 // @tac 5554-5563 // @tac 5558-5563
                        // UNCITED-APPLIED internal ×93 [exec 1594 5558-5563]: applications made inside the tactic's own automation, not stated — Int.sub_eq_zero_of_eq ×3, Int.ofNat_emod ×2, Int.emod_def ×2, Int.ofNat_add ×1, le_of_le_of_eq ×1, Int.sub_nonneg_of_le ×1, Int.add_one_le_of_lt ×1; machinery/glue: Eq.symm ×16, Eq.trans ×8, Lean.Omega.combo_sat' ×6, Lean.Omega.Int.sub_congr ×6 (+24 more heads, ×46)
                      }
                      if (k == 8) && ((n == ((70 * 8) + 50))) && ((((8 as int) + 15) == floor(Real.sqrt((n as real))))) && (((((8 as real) + 15.0) * ((8 as real) + 15.0)) <= (n as real))) && (((n as real) < (((8 as real) + 16.0) * ((8 as real) + 16.0)))) && ((((8 + 15) * (8 + 15)) <= n)) && ((n < ((8 + 16) * (8 + 16)))) && ((8 <= 35)) && ((8 >= 5)) {  // sub-goal of `norm_num` (Lean state)
                        assert (n == 610);  // hypothesis h₆ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (529 <= n);  // hypothesis h₁₀ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (n < 576);  // hypothesis h₁₁ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (529 <= n);  // hypothesis h₈ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (n < 576);  // hypothesis h₉ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (23 == (floor(Real.sqrt((n as real))) as int));  // hypothesis h₇ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                        assert ((n == 400) || ((n == 470) || ((n == 2290) || ((n == 2360) || ((n == 2430) || (n == 2500))))));  // sub-goal of `norm_num` (Lean state) // @tac 5487-5538 // @tac 5554-5563 // @tac 5558-5563
                        // UNCITED-APPLIED internal ×93 [exec 1604 5558-5563]: applications made inside the tactic's own automation, not stated — Int.sub_eq_zero_of_eq ×3, Int.ofNat_emod ×2, Int.emod_def ×2, Int.ofNat_add ×1, le_of_le_of_eq ×1, Int.sub_nonneg_of_le ×1, Int.add_one_le_of_lt ×1; machinery/glue: Eq.symm ×16, Eq.trans ×8, Lean.Omega.combo_sat' ×6, Lean.Omega.Int.sub_congr ×6 (+24 more heads, ×46)
                      }
                      if (k == 9) && ((n == ((70 * 9) + 50))) && ((((9 as int) + 15) == floor(Real.sqrt((n as real))))) && (((((9 as real) + 15.0) * ((9 as real) + 15.0)) <= (n as real))) && (((n as real) < (((9 as real) + 16.0) * ((9 as real) + 16.0)))) && ((((9 + 15) * (9 + 15)) <= n)) && ((n < ((9 + 16) * (9 + 16)))) && ((9 <= 35)) && ((9 >= 5)) {  // sub-goal of `norm_num` (Lean state)
                        assert (n == 680);  // hypothesis h₆ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (576 <= n);  // hypothesis h₁₀ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (n < 625);  // hypothesis h₁₁ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (576 <= n);  // hypothesis h₈ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (n < 625);  // hypothesis h₉ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (24 == (floor(Real.sqrt((n as real))) as int));  // hypothesis h₇ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                        assert ((n == 400) || ((n == 470) || ((n == 2290) || ((n == 2360) || ((n == 2430) || (n == 2500))))));  // sub-goal of `norm_num` (Lean state) // @tac 5487-5538 // @tac 5554-5563 // @tac 5558-5563
                        // UNCITED-APPLIED internal ×93 [exec 1614 5558-5563]: applications made inside the tactic's own automation, not stated — Int.sub_eq_zero_of_eq ×3, Int.ofNat_emod ×2, Int.emod_def ×2, Int.ofNat_add ×1, le_of_le_of_eq ×1, Int.sub_nonneg_of_le ×1, Int.add_one_le_of_lt ×1; machinery/glue: Eq.symm ×16, Eq.trans ×8, Lean.Omega.combo_sat' ×6, Lean.Omega.Int.sub_congr ×6 (+24 more heads, ×46)
                      }
                      if (k == 10) && ((n == ((70 * 10) + 50))) && ((((10 as int) + 15) == floor(Real.sqrt((n as real))))) && (((((10 as real) + 15.0) * ((10 as real) + 15.0)) <= (n as real))) && (((n as real) < (((10 as real) + 16.0) * ((10 as real) + 16.0)))) && ((((10 + 15) * (10 + 15)) <= n)) && ((n < ((10 + 16) * (10 + 16)))) && ((10 <= 35)) && ((10 >= 5)) {  // sub-goal of `norm_num` (Lean state)
                        assert (n == 750);  // hypothesis h₆ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (625 <= n);  // hypothesis h₁₀ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (n < 676);  // hypothesis h₁₁ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (625 <= n);  // hypothesis h₈ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (n < 676);  // hypothesis h₉ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (25 == (floor(Real.sqrt((n as real))) as int));  // hypothesis h₇ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                        assert ((n == 400) || ((n == 470) || ((n == 2290) || ((n == 2360) || ((n == 2430) || (n == 2500))))));  // sub-goal of `norm_num` (Lean state) // @tac 5487-5538 // @tac 5554-5563 // @tac 5558-5563
                        // UNCITED-APPLIED internal ×93 [exec 1624 5558-5563]: applications made inside the tactic's own automation, not stated — Int.sub_eq_zero_of_eq ×3, Int.ofNat_emod ×2, Int.emod_def ×2, Int.ofNat_add ×1, le_of_le_of_eq ×1, Int.sub_nonneg_of_le ×1, Int.add_one_le_of_lt ×1; machinery/glue: Eq.symm ×16, Eq.trans ×8, Lean.Omega.combo_sat' ×6, Lean.Omega.Int.sub_congr ×6 (+24 more heads, ×46)
                      }
                      if (k == 11) && ((n == ((70 * 11) + 50))) && ((((11 as int) + 15) == floor(Real.sqrt((n as real))))) && (((((11 as real) + 15.0) * ((11 as real) + 15.0)) <= (n as real))) && (((n as real) < (((11 as real) + 16.0) * ((11 as real) + 16.0)))) && ((((11 + 15) * (11 + 15)) <= n)) && ((n < ((11 + 16) * (11 + 16)))) && ((11 <= 35)) && ((11 >= 5)) {  // sub-goal of `norm_num` (Lean state)
                        assert (n == 820);  // hypothesis h₆ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (676 <= n);  // hypothesis h₁₀ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (n < 729);  // hypothesis h₁₁ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (676 <= n);  // hypothesis h₈ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (n < 729);  // hypothesis h₉ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (26 == (floor(Real.sqrt((n as real))) as int));  // hypothesis h₇ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                        assert ((n == 400) || ((n == 470) || ((n == 2290) || ((n == 2360) || ((n == 2430) || (n == 2500))))));  // sub-goal of `norm_num` (Lean state) // @tac 5487-5538 // @tac 5554-5563 // @tac 5558-5563
                        // UNCITED-APPLIED internal ×93 [exec 1634 5558-5563]: applications made inside the tactic's own automation, not stated — Int.sub_eq_zero_of_eq ×3, Int.ofNat_emod ×2, Int.emod_def ×2, Int.ofNat_add ×1, le_of_le_of_eq ×1, Int.sub_nonneg_of_le ×1, Int.add_one_le_of_lt ×1; machinery/glue: Eq.symm ×16, Eq.trans ×8, Lean.Omega.combo_sat' ×6, Lean.Omega.Int.sub_congr ×6 (+24 more heads, ×46)
                      }
                      if (k == 12) && ((n == ((70 * 12) + 50))) && ((((12 as int) + 15) == floor(Real.sqrt((n as real))))) && (((((12 as real) + 15.0) * ((12 as real) + 15.0)) <= (n as real))) && (((n as real) < (((12 as real) + 16.0) * ((12 as real) + 16.0)))) && ((((12 + 15) * (12 + 15)) <= n)) && ((n < ((12 + 16) * (12 + 16)))) && ((12 <= 35)) && ((12 >= 5)) {  // sub-goal of `norm_num` (Lean state)
                        assert (n == 890);  // hypothesis h₆ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (729 <= n);  // hypothesis h₁₀ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (n < 784);  // hypothesis h₁₁ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (729 <= n);  // hypothesis h₈ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (n < 784);  // hypothesis h₉ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (27 == (floor(Real.sqrt((n as real))) as int));  // hypothesis h₇ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                        assert ((n == 400) || ((n == 470) || ((n == 2290) || ((n == 2360) || ((n == 2430) || (n == 2500))))));  // sub-goal of `norm_num` (Lean state) // @tac 5487-5538 // @tac 5554-5563 // @tac 5558-5563
                        // UNCITED-APPLIED internal ×93 [exec 1644 5558-5563]: applications made inside the tactic's own automation, not stated — Int.sub_eq_zero_of_eq ×3, Int.ofNat_emod ×2, Int.emod_def ×2, Int.ofNat_add ×1, le_of_le_of_eq ×1, Int.sub_nonneg_of_le ×1, Int.add_one_le_of_lt ×1; machinery/glue: Eq.symm ×16, Eq.trans ×8, Lean.Omega.combo_sat' ×6, Lean.Omega.Int.sub_congr ×6 (+24 more heads, ×46)
                      }
                      if (k == 13) && ((n == ((70 * 13) + 50))) && ((((13 as int) + 15) == floor(Real.sqrt((n as real))))) && (((((13 as real) + 15.0) * ((13 as real) + 15.0)) <= (n as real))) && (((n as real) < (((13 as real) + 16.0) * ((13 as real) + 16.0)))) && ((((13 + 15) * (13 + 15)) <= n)) && ((n < ((13 + 16) * (13 + 16)))) && ((13 <= 35)) && ((13 >= 5)) {  // sub-goal of `norm_num` (Lean state)
                        assert (n == 960);  // hypothesis h₆ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (784 <= n);  // hypothesis h₁₀ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (n < 841);  // hypothesis h₁₁ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (784 <= n);  // hypothesis h₈ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (n < 841);  // hypothesis h₉ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (28 == (floor(Real.sqrt((n as real))) as int));  // hypothesis h₇ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                        assert ((n == 400) || ((n == 470) || ((n == 2290) || ((n == 2360) || ((n == 2430) || (n == 2500))))));  // sub-goal of `norm_num` (Lean state) // @tac 5487-5538 // @tac 5554-5563 // @tac 5558-5563
                        // UNCITED-APPLIED internal ×93 [exec 1654 5558-5563]: applications made inside the tactic's own automation, not stated — Int.sub_eq_zero_of_eq ×3, Int.ofNat_emod ×2, Int.emod_def ×2, Int.ofNat_add ×1, le_of_le_of_eq ×1, Int.sub_nonneg_of_le ×1, Int.add_one_le_of_lt ×1; machinery/glue: Eq.symm ×16, Eq.trans ×8, Lean.Omega.combo_sat' ×6, Lean.Omega.Int.sub_congr ×6 (+24 more heads, ×46)
                      }
                      if (k == 14) && ((n == ((70 * 14) + 50))) && ((((14 as int) + 15) == floor(Real.sqrt((n as real))))) && (((((14 as real) + 15.0) * ((14 as real) + 15.0)) <= (n as real))) && (((n as real) < (((14 as real) + 16.0) * ((14 as real) + 16.0)))) && ((((14 + 15) * (14 + 15)) <= n)) && ((n < ((14 + 16) * (14 + 16)))) && ((14 <= 35)) && ((14 >= 5)) {  // sub-goal of `norm_num` (Lean state)
                        assert (n == 1030);  // hypothesis h₆ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (841 <= n);  // hypothesis h₁₀ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (n < 900);  // hypothesis h₁₁ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (841 <= n);  // hypothesis h₈ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (n < 900);  // hypothesis h₉ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (29 == (floor(Real.sqrt((n as real))) as int));  // hypothesis h₇ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                        assert ((n == 400) || ((n == 470) || ((n == 2290) || ((n == 2360) || ((n == 2430) || (n == 2500))))));  // sub-goal of `norm_num` (Lean state) // @tac 5487-5538 // @tac 5554-5563 // @tac 5558-5563
                        // UNCITED-APPLIED internal ×93 [exec 1664 5558-5563]: applications made inside the tactic's own automation, not stated — Int.sub_eq_zero_of_eq ×3, Int.ofNat_emod ×2, Int.emod_def ×2, Int.ofNat_add ×1, le_of_le_of_eq ×1, Int.sub_nonneg_of_le ×1, Int.add_one_le_of_lt ×1; machinery/glue: Eq.symm ×16, Eq.trans ×8, Lean.Omega.combo_sat' ×6, Lean.Omega.Int.sub_congr ×6 (+24 more heads, ×46)
                      }
                      if (k == 15) && ((n == ((70 * 15) + 50))) && ((((15 as int) + 15) == floor(Real.sqrt((n as real))))) && (((((15 as real) + 15.0) * ((15 as real) + 15.0)) <= (n as real))) && (((n as real) < (((15 as real) + 16.0) * ((15 as real) + 16.0)))) && ((((15 + 15) * (15 + 15)) <= n)) && ((n < ((15 + 16) * (15 + 16)))) && ((15 <= 35)) && ((15 >= 5)) {  // sub-goal of `norm_num` (Lean state)
                        assert (n == 1100);  // hypothesis h₆ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (900 <= n);  // hypothesis h₁₀ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (n < 961);  // hypothesis h₁₁ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (900 <= n);  // hypothesis h₈ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (n < 961);  // hypothesis h₉ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (30 == (floor(Real.sqrt((n as real))) as int));  // hypothesis h₇ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                        assert ((n == 400) || ((n == 470) || ((n == 2290) || ((n == 2360) || ((n == 2430) || (n == 2500))))));  // sub-goal of `norm_num` (Lean state) // @tac 5487-5538 // @tac 5554-5563 // @tac 5558-5563
                        // UNCITED-APPLIED internal ×93 [exec 1674 5558-5563]: applications made inside the tactic's own automation, not stated — Int.sub_eq_zero_of_eq ×3, Int.ofNat_emod ×2, Int.emod_def ×2, Int.ofNat_add ×1, le_of_le_of_eq ×1, Int.sub_nonneg_of_le ×1, Int.add_one_le_of_lt ×1; machinery/glue: Eq.symm ×16, Eq.trans ×8, Lean.Omega.combo_sat' ×6, Lean.Omega.Int.sub_congr ×6 (+24 more heads, ×46)
                      }
                      if (k == 16) && ((n == ((70 * 16) + 50))) && ((((16 as int) + 15) == floor(Real.sqrt((n as real))))) && (((((16 as real) + 15.0) * ((16 as real) + 15.0)) <= (n as real))) && (((n as real) < (((16 as real) + 16.0) * ((16 as real) + 16.0)))) && ((((16 + 15) * (16 + 15)) <= n)) && ((n < ((16 + 16) * (16 + 16)))) && ((16 <= 35)) && ((16 >= 5)) {  // sub-goal of `norm_num` (Lean state)
                        assert (n == 1170);  // hypothesis h₆ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (961 <= n);  // hypothesis h₁₀ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (n < 1024);  // hypothesis h₁₁ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (961 <= n);  // hypothesis h₈ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (n < 1024);  // hypothesis h₉ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (31 == (floor(Real.sqrt((n as real))) as int));  // hypothesis h₇ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                        assert ((n == 400) || ((n == 470) || ((n == 2290) || ((n == 2360) || ((n == 2430) || (n == 2500))))));  // sub-goal of `norm_num` (Lean state) // @tac 5487-5538 // @tac 5554-5563 // @tac 5558-5563
                        // UNCITED-APPLIED internal ×92 [exec 1684 5558-5563]: applications made inside the tactic's own automation, not stated — Int.sub_eq_zero_of_eq ×3, Int.ofNat_emod ×2, Int.emod_def ×2, Int.ofNat_add ×1, le_of_le_of_eq ×1, Int.sub_nonneg_of_le ×1, Int.add_one_le_of_lt ×1; machinery/glue: Eq.symm ×16, Eq.trans ×8, Lean.Omega.combo_sat' ×6, Lean.Omega.Int.sub_congr ×6 (+24 more heads, ×45)
                      }
                      if (k == 17) && ((n == ((70 * 17) + 50))) && ((((17 as int) + 15) == floor(Real.sqrt((n as real))))) && (((((17 as real) + 15.0) * ((17 as real) + 15.0)) <= (n as real))) && (((n as real) < (((17 as real) + 16.0) * ((17 as real) + 16.0)))) && ((((17 + 15) * (17 + 15)) <= n)) && ((n < ((17 + 16) * (17 + 16)))) && ((17 <= 35)) && ((17 >= 5)) {  // sub-goal of `norm_num` (Lean state)
                        assert (n == 1240);  // hypothesis h₆ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (1024 <= n);  // hypothesis h₁₀ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (n < 1089);  // hypothesis h₁₁ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (1024 <= n);  // hypothesis h₈ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (n < 1089);  // hypothesis h₉ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (32 == (floor(Real.sqrt((n as real))) as int));  // hypothesis h₇ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                        assert ((n == 400) || ((n == 470) || ((n == 2290) || ((n == 2360) || ((n == 2430) || (n == 2500))))));  // sub-goal of `norm_num` (Lean state) // @tac 5487-5538 // @tac 5554-5563 // @tac 5558-5563
                        // UNCITED-APPLIED internal ×93 [exec 1694 5558-5563]: applications made inside the tactic's own automation, not stated — Int.sub_eq_zero_of_eq ×3, Int.ofNat_emod ×2, Int.emod_def ×2, Int.ofNat_add ×1, le_of_le_of_eq ×1, Int.sub_nonneg_of_le ×1, Int.add_one_le_of_lt ×1; machinery/glue: Eq.symm ×16, Eq.trans ×8, Lean.Omega.combo_sat' ×6, Lean.Omega.Int.sub_congr ×6 (+24 more heads, ×46)
                      }
                      if (k == 18) && ((n == ((70 * 18) + 50))) && ((((18 as int) + 15) == floor(Real.sqrt((n as real))))) && (((((18 as real) + 15.0) * ((18 as real) + 15.0)) <= (n as real))) && (((n as real) < (((18 as real) + 16.0) * ((18 as real) + 16.0)))) && ((((18 + 15) * (18 + 15)) <= n)) && ((n < ((18 + 16) * (18 + 16)))) && ((18 <= 35)) && ((18 >= 5)) {  // sub-goal of `norm_num` (Lean state)
                        assert (n == 1310);  // hypothesis h₆ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (1089 <= n);  // hypothesis h₁₀ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (n < 1156);  // hypothesis h₁₁ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (1089 <= n);  // hypothesis h₈ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (n < 1156);  // hypothesis h₉ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (33 == (floor(Real.sqrt((n as real))) as int));  // hypothesis h₇ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                        assert ((n == 400) || ((n == 470) || ((n == 2290) || ((n == 2360) || ((n == 2430) || (n == 2500))))));  // sub-goal of `norm_num` (Lean state) // @tac 5487-5538 // @tac 5554-5563 // @tac 5558-5563
                        // UNCITED-APPLIED internal ×93 [exec 1704 5558-5563]: applications made inside the tactic's own automation, not stated — Int.sub_eq_zero_of_eq ×3, Int.ofNat_emod ×2, Int.emod_def ×2, Int.ofNat_add ×1, le_of_le_of_eq ×1, Int.sub_nonneg_of_le ×1, Int.add_one_le_of_lt ×1; machinery/glue: Eq.symm ×16, Eq.trans ×8, Lean.Omega.combo_sat' ×6, Lean.Omega.Int.sub_congr ×6 (+24 more heads, ×46)
                      }
                      if (k == 19) && ((n == ((70 * 19) + 50))) && ((((19 as int) + 15) == floor(Real.sqrt((n as real))))) && (((((19 as real) + 15.0) * ((19 as real) + 15.0)) <= (n as real))) && (((n as real) < (((19 as real) + 16.0) * ((19 as real) + 16.0)))) && ((((19 + 15) * (19 + 15)) <= n)) && ((n < ((19 + 16) * (19 + 16)))) && ((19 <= 35)) && ((19 >= 5)) {  // sub-goal of `norm_num` (Lean state)
                        assert (n == 1380);  // hypothesis h₆ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (1156 <= n);  // hypothesis h₁₀ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (n < 1225);  // hypothesis h₁₁ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (1156 <= n);  // hypothesis h₈ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (n < 1225);  // hypothesis h₉ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (34 == (floor(Real.sqrt((n as real))) as int));  // hypothesis h₇ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                        assert ((n == 400) || ((n == 470) || ((n == 2290) || ((n == 2360) || ((n == 2430) || (n == 2500))))));  // sub-goal of `norm_num` (Lean state) // @tac 5487-5538 // @tac 5554-5563 // @tac 5558-5563
                        // UNCITED-APPLIED internal ×93 [exec 1714 5558-5563]: applications made inside the tactic's own automation, not stated — Int.sub_eq_zero_of_eq ×3, Int.ofNat_emod ×2, Int.emod_def ×2, Int.ofNat_add ×1, le_of_le_of_eq ×1, Int.sub_nonneg_of_le ×1, Int.add_one_le_of_lt ×1; machinery/glue: Eq.symm ×16, Eq.trans ×8, Lean.Omega.combo_sat' ×6, Lean.Omega.Int.sub_congr ×6 (+24 more heads, ×46)
                      }
                      if (k == 20) && ((n == ((70 * 20) + 50))) && ((((20 as int) + 15) == floor(Real.sqrt((n as real))))) && (((((20 as real) + 15.0) * ((20 as real) + 15.0)) <= (n as real))) && (((n as real) < (((20 as real) + 16.0) * ((20 as real) + 16.0)))) && ((((20 + 15) * (20 + 15)) <= n)) && ((n < ((20 + 16) * (20 + 16)))) && ((20 <= 35)) && ((20 >= 5)) {  // sub-goal of `norm_num` (Lean state)
                        assert (n == 1450);  // hypothesis h₆ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (1225 <= n);  // hypothesis h₁₀ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (n < 1296);  // hypothesis h₁₁ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (1225 <= n);  // hypothesis h₈ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (n < 1296);  // hypothesis h₉ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (35 == (floor(Real.sqrt((n as real))) as int));  // hypothesis h₇ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                        assert ((n == 400) || ((n == 470) || ((n == 2290) || ((n == 2360) || ((n == 2430) || (n == 2500))))));  // sub-goal of `norm_num` (Lean state) // @tac 5487-5538 // @tac 5554-5563 // @tac 5558-5563
                        // UNCITED-APPLIED internal ×93 [exec 1724 5558-5563]: applications made inside the tactic's own automation, not stated — Int.sub_eq_zero_of_eq ×3, Int.ofNat_emod ×2, Int.emod_def ×2, Int.ofNat_add ×1, le_of_le_of_eq ×1, Int.sub_nonneg_of_le ×1, Int.add_one_le_of_lt ×1; machinery/glue: Eq.symm ×16, Eq.trans ×8, Lean.Omega.combo_sat' ×6, Lean.Omega.Int.sub_congr ×6 (+24 more heads, ×46)
                      }
                      if (k == 21) && ((n == ((70 * 21) + 50))) && ((((21 as int) + 15) == floor(Real.sqrt((n as real))))) && (((((21 as real) + 15.0) * ((21 as real) + 15.0)) <= (n as real))) && (((n as real) < (((21 as real) + 16.0) * ((21 as real) + 16.0)))) && ((((21 + 15) * (21 + 15)) <= n)) && ((n < ((21 + 16) * (21 + 16)))) && ((21 <= 35)) && ((21 >= 5)) {  // sub-goal of `norm_num` (Lean state)
                        assert (n == 1520);  // hypothesis h₆ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (1296 <= n);  // hypothesis h₁₀ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (n < 1369);  // hypothesis h₁₁ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (1296 <= n);  // hypothesis h₈ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (n < 1369);  // hypothesis h₉ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (36 == (floor(Real.sqrt((n as real))) as int));  // hypothesis h₇ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                        assert ((n == 400) || ((n == 470) || ((n == 2290) || ((n == 2360) || ((n == 2430) || (n == 2500))))));  // sub-goal of `norm_num` (Lean state) // @tac 5487-5538 // @tac 5554-5563 // @tac 5558-5563
                        // UNCITED-APPLIED internal ×93 [exec 1734 5558-5563]: applications made inside the tactic's own automation, not stated — Int.sub_eq_zero_of_eq ×3, Int.ofNat_emod ×2, Int.emod_def ×2, Int.ofNat_add ×1, le_of_le_of_eq ×1, Int.sub_nonneg_of_le ×1, Int.add_one_le_of_lt ×1; machinery/glue: Eq.symm ×16, Eq.trans ×8, Lean.Omega.combo_sat' ×6, Lean.Omega.Int.sub_congr ×6 (+24 more heads, ×46)
                      }
                      if (k == 22) && ((n == ((70 * 22) + 50))) && ((((22 as int) + 15) == floor(Real.sqrt((n as real))))) && (((((22 as real) + 15.0) * ((22 as real) + 15.0)) <= (n as real))) && (((n as real) < (((22 as real) + 16.0) * ((22 as real) + 16.0)))) && ((((22 + 15) * (22 + 15)) <= n)) && ((n < ((22 + 16) * (22 + 16)))) && ((22 <= 35)) && ((22 >= 5)) {  // sub-goal of `norm_num` (Lean state)
                        assert (n == 1590);  // hypothesis h₆ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (1369 <= n);  // hypothesis h₁₀ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (n < 1444);  // hypothesis h₁₁ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (1369 <= n);  // hypothesis h₈ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (n < 1444);  // hypothesis h₉ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (37 == (floor(Real.sqrt((n as real))) as int));  // hypothesis h₇ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                        assert ((n == 400) || ((n == 470) || ((n == 2290) || ((n == 2360) || ((n == 2430) || (n == 2500))))));  // sub-goal of `norm_num` (Lean state) // @tac 5487-5538 // @tac 5554-5563 // @tac 5558-5563
                        // UNCITED-APPLIED internal ×93 [exec 1744 5558-5563]: applications made inside the tactic's own automation, not stated — Int.sub_eq_zero_of_eq ×3, Int.ofNat_emod ×2, Int.emod_def ×2, Int.ofNat_add ×1, le_of_le_of_eq ×1, Int.sub_nonneg_of_le ×1, Int.add_one_le_of_lt ×1; machinery/glue: Eq.symm ×16, Eq.trans ×8, Lean.Omega.combo_sat' ×6, Lean.Omega.Int.sub_congr ×6 (+24 more heads, ×46)
                      }
                      if (k == 23) && ((n == ((70 * 23) + 50))) && ((((23 as int) + 15) == floor(Real.sqrt((n as real))))) && (((((23 as real) + 15.0) * ((23 as real) + 15.0)) <= (n as real))) && (((n as real) < (((23 as real) + 16.0) * ((23 as real) + 16.0)))) && ((((23 + 15) * (23 + 15)) <= n)) && ((n < ((23 + 16) * (23 + 16)))) && ((23 <= 35)) && ((23 >= 5)) {  // sub-goal of `norm_num` (Lean state)
                        assert (n == 1660);  // hypothesis h₆ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (1444 <= n);  // hypothesis h₁₀ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (n < 1521);  // hypothesis h₁₁ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (1444 <= n);  // hypothesis h₈ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (n < 1521);  // hypothesis h₉ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (38 == (floor(Real.sqrt((n as real))) as int));  // hypothesis h₇ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                        assert ((n == 400) || ((n == 470) || ((n == 2290) || ((n == 2360) || ((n == 2430) || (n == 2500))))));  // sub-goal of `norm_num` (Lean state) // @tac 5487-5538 // @tac 5554-5563 // @tac 5558-5563
                        // UNCITED-APPLIED internal ×93 [exec 1754 5558-5563]: applications made inside the tactic's own automation, not stated — Int.sub_eq_zero_of_eq ×3, Int.ofNat_emod ×2, Int.emod_def ×2, Int.ofNat_add ×1, le_of_le_of_eq ×1, Int.sub_nonneg_of_le ×1, Int.add_one_le_of_lt ×1; machinery/glue: Eq.symm ×16, Eq.trans ×8, Lean.Omega.combo_sat' ×6, Lean.Omega.Int.sub_congr ×6 (+24 more heads, ×46)
                      }
                      if (k == 24) && ((n == ((70 * 24) + 50))) && ((((24 as int) + 15) == floor(Real.sqrt((n as real))))) && (((((24 as real) + 15.0) * ((24 as real) + 15.0)) <= (n as real))) && (((n as real) < (((24 as real) + 16.0) * ((24 as real) + 16.0)))) && ((((24 + 15) * (24 + 15)) <= n)) && ((n < ((24 + 16) * (24 + 16)))) && ((24 <= 35)) && ((24 >= 5)) {  // sub-goal of `norm_num` (Lean state)
                        assert (n == 1730);  // hypothesis h₆ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (1521 <= n);  // hypothesis h₁₀ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (n < 1600);  // hypothesis h₁₁ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (1521 <= n);  // hypothesis h₈ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (n < 1600);  // hypothesis h₉ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (39 == (floor(Real.sqrt((n as real))) as int));  // hypothesis h₇ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                        assert ((n == 400) || ((n == 470) || ((n == 2290) || ((n == 2360) || ((n == 2430) || (n == 2500))))));  // sub-goal of `norm_num` (Lean state) // @tac 5487-5538 // @tac 5554-5563 // @tac 5558-5563
                        // UNCITED-APPLIED internal ×93 [exec 1764 5558-5563]: applications made inside the tactic's own automation, not stated — Int.sub_eq_zero_of_eq ×3, Int.ofNat_emod ×2, Int.emod_def ×2, Int.ofNat_add ×1, le_of_le_of_eq ×1, Int.sub_nonneg_of_le ×1, Int.add_one_le_of_lt ×1; machinery/glue: Eq.symm ×16, Eq.trans ×8, Lean.Omega.combo_sat' ×6, Lean.Omega.Int.sub_congr ×6 (+24 more heads, ×46)
                      }
                      if (k == 25) && ((n == ((70 * 25) + 50))) && ((((25 as int) + 15) == floor(Real.sqrt((n as real))))) && (((((25 as real) + 15.0) * ((25 as real) + 15.0)) <= (n as real))) && (((n as real) < (((25 as real) + 16.0) * ((25 as real) + 16.0)))) && ((((25 + 15) * (25 + 15)) <= n)) && ((n < ((25 + 16) * (25 + 16)))) && ((25 <= 35)) && ((25 >= 5)) {  // sub-goal of `norm_num` (Lean state)
                        assert (n == 1800);  // hypothesis h₆ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (1600 <= n);  // hypothesis h₁₀ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (n < 1681);  // hypothesis h₁₁ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (1600 <= n);  // hypothesis h₈ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (n < 1681);  // hypothesis h₉ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (40 == (floor(Real.sqrt((n as real))) as int));  // hypothesis h₇ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                        assert ((n == 400) || ((n == 470) || ((n == 2290) || ((n == 2360) || ((n == 2430) || (n == 2500))))));  // sub-goal of `norm_num` (Lean state) // @tac 5487-5538 // @tac 5554-5563 // @tac 5558-5563
                        // UNCITED-APPLIED internal ×93 [exec 1774 5558-5563]: applications made inside the tactic's own automation, not stated — Int.sub_eq_zero_of_eq ×3, Int.ofNat_emod ×2, Int.emod_def ×2, Int.ofNat_add ×1, le_of_le_of_eq ×1, Int.sub_nonneg_of_le ×1, Int.add_one_le_of_lt ×1; machinery/glue: Eq.symm ×16, Eq.trans ×8, Lean.Omega.combo_sat' ×6, Lean.Omega.Int.sub_congr ×6 (+24 more heads, ×46)
                      }
                      if (k == 26) && ((n == ((70 * 26) + 50))) && ((((26 as int) + 15) == floor(Real.sqrt((n as real))))) && (((((26 as real) + 15.0) * ((26 as real) + 15.0)) <= (n as real))) && (((n as real) < (((26 as real) + 16.0) * ((26 as real) + 16.0)))) && ((((26 + 15) * (26 + 15)) <= n)) && ((n < ((26 + 16) * (26 + 16)))) && ((26 <= 35)) && ((26 >= 5)) {  // sub-goal of `norm_num` (Lean state)
                        assert (n == 1870);  // hypothesis h₆ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (1681 <= n);  // hypothesis h₁₀ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (n < 1764);  // hypothesis h₁₁ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (1681 <= n);  // hypothesis h₈ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (n < 1764);  // hypothesis h₉ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (41 == (floor(Real.sqrt((n as real))) as int));  // hypothesis h₇ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                        assert ((n == 400) || ((n == 470) || ((n == 2290) || ((n == 2360) || ((n == 2430) || (n == 2500))))));  // sub-goal of `norm_num` (Lean state) // @tac 5487-5538 // @tac 5554-5563 // @tac 5558-5563
                        // UNCITED-APPLIED internal ×93 [exec 1784 5558-5563]: applications made inside the tactic's own automation, not stated — Int.sub_eq_zero_of_eq ×3, Int.ofNat_emod ×2, Int.emod_def ×2, Int.ofNat_add ×1, le_of_le_of_eq ×1, Int.sub_nonneg_of_le ×1, Int.add_one_le_of_lt ×1; machinery/glue: Eq.symm ×16, Eq.trans ×8, Lean.Omega.combo_sat' ×6, Lean.Omega.Int.sub_congr ×6 (+24 more heads, ×46)
                      }
                      if (k == 27) && ((n == ((70 * 27) + 50))) && ((((27 as int) + 15) == floor(Real.sqrt((n as real))))) && (((((27 as real) + 15.0) * ((27 as real) + 15.0)) <= (n as real))) && (((n as real) < (((27 as real) + 16.0) * ((27 as real) + 16.0)))) && ((((27 + 15) * (27 + 15)) <= n)) && ((n < ((27 + 16) * (27 + 16)))) && ((27 <= 35)) && ((27 >= 5)) {  // sub-goal of `norm_num` (Lean state)
                        assert (n == 1940);  // hypothesis h₆ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (1764 <= n);  // hypothesis h₁₀ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (n < 1849);  // hypothesis h₁₁ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (1764 <= n);  // hypothesis h₈ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (n < 1849);  // hypothesis h₉ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (42 == (floor(Real.sqrt((n as real))) as int));  // hypothesis h₇ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                        assert ((n == 400) || ((n == 470) || ((n == 2290) || ((n == 2360) || ((n == 2430) || (n == 2500))))));  // sub-goal of `norm_num` (Lean state) // @tac 5487-5538 // @tac 5554-5563 // @tac 5558-5563
                        // UNCITED-APPLIED internal ×93 [exec 1794 5558-5563]: applications made inside the tactic's own automation, not stated — Int.sub_eq_zero_of_eq ×3, Int.ofNat_emod ×2, Int.emod_def ×2, Int.ofNat_add ×1, le_of_le_of_eq ×1, Int.sub_nonneg_of_le ×1, Int.add_one_le_of_lt ×1; machinery/glue: Eq.symm ×16, Eq.trans ×8, Lean.Omega.combo_sat' ×6, Lean.Omega.Int.sub_congr ×6 (+24 more heads, ×46)
                      }
                      if (k == 28) && ((n == ((70 * 28) + 50))) && ((((28 as int) + 15) == floor(Real.sqrt((n as real))))) && (((((28 as real) + 15.0) * ((28 as real) + 15.0)) <= (n as real))) && (((n as real) < (((28 as real) + 16.0) * ((28 as real) + 16.0)))) && ((((28 + 15) * (28 + 15)) <= n)) && ((n < ((28 + 16) * (28 + 16)))) && ((28 <= 35)) && ((28 >= 5)) {  // sub-goal of `norm_num` (Lean state)
                        assert (n == 2010);  // hypothesis h₆ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (1849 <= n);  // hypothesis h₁₀ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (n < 1936);  // hypothesis h₁₁ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (1849 <= n);  // hypothesis h₈ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (n < 1936);  // hypothesis h₉ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (43 == (floor(Real.sqrt((n as real))) as int));  // hypothesis h₇ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                        assert ((n == 400) || ((n == 470) || ((n == 2290) || ((n == 2360) || ((n == 2430) || (n == 2500))))));  // sub-goal of `norm_num` (Lean state) // @tac 5487-5538 // @tac 5554-5563 // @tac 5558-5563
                        // UNCITED-APPLIED internal ×93 [exec 1804 5558-5563]: applications made inside the tactic's own automation, not stated — Int.sub_eq_zero_of_eq ×3, Int.ofNat_emod ×2, Int.emod_def ×2, Int.ofNat_add ×1, le_of_le_of_eq ×1, Int.sub_nonneg_of_le ×1, Int.add_one_le_of_lt ×1; machinery/glue: Eq.symm ×16, Eq.trans ×8, Lean.Omega.combo_sat' ×6, Lean.Omega.Int.sub_congr ×6 (+24 more heads, ×46)
                      }
                      if (k == 29) && ((n == ((70 * 29) + 50))) && ((((29 as int) + 15) == floor(Real.sqrt((n as real))))) && (((((29 as real) + 15.0) * ((29 as real) + 15.0)) <= (n as real))) && (((n as real) < (((29 as real) + 16.0) * ((29 as real) + 16.0)))) && ((((29 + 15) * (29 + 15)) <= n)) && ((n < ((29 + 16) * (29 + 16)))) && ((29 <= 35)) && ((29 >= 5)) {  // sub-goal of `norm_num` (Lean state)
                        assert (n == 2080);  // hypothesis h₆ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (1936 <= n);  // hypothesis h₁₀ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (n < 2025);  // hypothesis h₁₁ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (1936 <= n);  // hypothesis h₈ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (n < 2025);  // hypothesis h₉ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (44 == (floor(Real.sqrt((n as real))) as int));  // hypothesis h₇ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                        assert ((n == 400) || ((n == 470) || ((n == 2290) || ((n == 2360) || ((n == 2430) || (n == 2500))))));  // sub-goal of `norm_num` (Lean state) // @tac 5487-5538 // @tac 5554-5563 // @tac 5558-5563
                        // UNCITED-APPLIED internal ×93 [exec 1814 5558-5563]: applications made inside the tactic's own automation, not stated — Int.sub_eq_zero_of_eq ×3, Int.ofNat_emod ×2, Int.emod_def ×2, Int.ofNat_add ×1, le_of_le_of_eq ×1, Int.sub_nonneg_of_le ×1, Int.add_one_le_of_lt ×1; machinery/glue: Eq.symm ×16, Eq.trans ×8, Lean.Omega.combo_sat' ×6, Lean.Omega.Int.sub_congr ×6 (+24 more heads, ×46)
                      }
                      if (k == 30) && ((n == ((70 * 30) + 50))) && ((((30 as int) + 15) == floor(Real.sqrt((n as real))))) && (((((30 as real) + 15.0) * ((30 as real) + 15.0)) <= (n as real))) && (((n as real) < (((30 as real) + 16.0) * ((30 as real) + 16.0)))) && ((((30 + 15) * (30 + 15)) <= n)) && ((n < ((30 + 16) * (30 + 16)))) && ((30 <= 35)) && ((30 >= 5)) {  // sub-goal of `norm_num` (Lean state)
                        assert (n == 2150);  // hypothesis h₆ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (2025 <= n);  // hypothesis h₁₀ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (n < 2116);  // hypothesis h₁₁ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (2025 <= n);  // hypothesis h₈ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (n < 2116);  // hypothesis h₉ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (45 == (floor(Real.sqrt((n as real))) as int));  // hypothesis h₇ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                        assert ((n == 400) || ((n == 470) || ((n == 2290) || ((n == 2360) || ((n == 2430) || (n == 2500))))));  // sub-goal of `norm_num` (Lean state) // @tac 5487-5538 // @tac 5554-5563 // @tac 5558-5563
                        // UNCITED-APPLIED internal ×93 [exec 1824 5558-5563]: applications made inside the tactic's own automation, not stated — Int.sub_eq_zero_of_eq ×3, Int.ofNat_emod ×2, Int.emod_def ×2, Int.ofNat_add ×1, le_of_le_of_eq ×1, Int.sub_nonneg_of_le ×1, Int.add_one_le_of_lt ×1; machinery/glue: Eq.symm ×16, Eq.trans ×8, Lean.Omega.combo_sat' ×6, Lean.Omega.Int.sub_congr ×6 (+24 more heads, ×46)
                      }
                      if (k == 31) && ((n == ((70 * 31) + 50))) && ((((31 as int) + 15) == floor(Real.sqrt((n as real))))) && (((((31 as real) + 15.0) * ((31 as real) + 15.0)) <= (n as real))) && (((n as real) < (((31 as real) + 16.0) * ((31 as real) + 16.0)))) && ((((31 + 15) * (31 + 15)) <= n)) && ((n < ((31 + 16) * (31 + 16)))) && ((31 <= 35)) && ((31 >= 5)) {  // sub-goal of `norm_num` (Lean state)
                        assert (n == 2220);  // hypothesis h₆ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (2116 <= n);  // hypothesis h₁₀ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (n < 2209);  // hypothesis h₁₁ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (2116 <= n);  // hypothesis h₈ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (n < 2209);  // hypothesis h₉ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (46 == (floor(Real.sqrt((n as real))) as int));  // hypothesis h₇ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                        assert ((n == 400) || ((n == 470) || ((n == 2290) || ((n == 2360) || ((n == 2430) || (n == 2500))))));  // sub-goal of `norm_num` (Lean state) // @tac 5487-5538 // @tac 5554-5563 // @tac 5558-5563
                        // UNCITED-APPLIED internal ×93 [exec 1834 5558-5563]: applications made inside the tactic's own automation, not stated — Int.sub_eq_zero_of_eq ×3, Int.ofNat_emod ×2, Int.emod_def ×2, Int.ofNat_add ×1, le_of_le_of_eq ×1, Int.sub_nonneg_of_le ×1, Int.add_one_le_of_lt ×1; machinery/glue: Eq.symm ×16, Eq.trans ×8, Lean.Omega.combo_sat' ×6, Lean.Omega.Int.sub_congr ×6 (+24 more heads, ×46)
                      }
                      if (k == 32) && ((n == ((70 * 32) + 50))) && ((((32 as int) + 15) == floor(Real.sqrt((n as real))))) && (((((32 as real) + 15.0) * ((32 as real) + 15.0)) <= (n as real))) && (((n as real) < (((32 as real) + 16.0) * ((32 as real) + 16.0)))) && ((((32 + 15) * (32 + 15)) <= n)) && ((n < ((32 + 16) * (32 + 16)))) && ((32 <= 35)) && ((32 >= 5)) {  // sub-goal of `norm_num` (Lean state)
                        assert (n == 2290);  // hypothesis h₆ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (2209 <= n);  // hypothesis h₁₀ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (n < 2304);  // hypothesis h₁₁ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (2209 <= n);  // hypothesis h₈ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (n < 2304);  // hypothesis h₉ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (47 == (floor(Real.sqrt((n as real))) as int));  // hypothesis h₇ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                        assert ((n == 400) || ((n == 470) || ((n == 2290) || ((n == 2360) || ((n == 2430) || (n == 2500))))));  // sub-goal of `norm_num` (Lean state) // @tac 5487-5538 // @tac 5554-5563 // @tac 5558-5563
                        // UNCITED-APPLIED internal ×123 [exec 1844 5558-5563]: applications made inside the tactic's own automation, not stated — le_of_le_of_eq ×5, Int.sub_nonneg_of_le ×5, Int.add_one_le_of_lt ×5, Nat.lt_or_gt_of_ne ×4, Int.sub_eq_zero_of_eq ×3, Int.ofNat_emod ×2, Int.emod_def ×2, Int.ofNat_add ×1; machinery/glue: Eq.symm ×20, Lean.Omega.combo_sat' ×8, Eq.trans ×8, Lean.Omega.Int.sub_congr ×8 (+22 more heads, ×52)
                      }
                      if (k == 33) && ((n == ((70 * 33) + 50))) && ((((33 as int) + 15) == floor(Real.sqrt((n as real))))) && (((((33 as real) + 15.0) * ((33 as real) + 15.0)) <= (n as real))) && (((n as real) < (((33 as real) + 16.0) * ((33 as real) + 16.0)))) && ((((33 + 15) * (33 + 15)) <= n)) && ((n < ((33 + 16) * (33 + 16)))) && ((33 <= 35)) && ((33 >= 5)) {  // sub-goal of `norm_num` (Lean state)
                        assert (n == 2360);  // hypothesis h₆ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (2304 <= n);  // hypothesis h₁₀ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (n < 2401);  // hypothesis h₁₁ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (2304 <= n);  // hypothesis h₈ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (n < 2401);  // hypothesis h₉ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (48 == (floor(Real.sqrt((n as real))) as int));  // hypothesis h₇ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                        assert ((n == 400) || ((n == 470) || ((n == 2290) || ((n == 2360) || ((n == 2430) || (n == 2500))))));  // sub-goal of `norm_num` (Lean state) // @tac 5487-5538 // @tac 5554-5563 // @tac 5558-5563
                        // UNCITED-APPLIED internal ×115 [exec 1854 5558-5563]: applications made inside the tactic's own automation, not stated — le_of_le_of_eq ×4, Int.sub_nonneg_of_le ×4, Int.add_one_le_of_lt ×4, Nat.lt_or_gt_of_ne ×3, Int.sub_eq_zero_of_eq ×3, Int.ofNat_emod ×2, Int.emod_def ×2, Int.ofNat_add ×1; machinery/glue: Eq.symm ×19, Lean.Omega.combo_sat' ×8, Eq.trans ×8, Lean.Omega.Int.sub_congr ×8 (+22 more heads, ×49)
                      }
                      if (k == 34) && ((n == ((70 * 34) + 50))) && ((((34 as int) + 15) == floor(Real.sqrt((n as real))))) && (((((34 as real) + 15.0) * ((34 as real) + 15.0)) <= (n as real))) && (((n as real) < (((34 as real) + 16.0) * ((34 as real) + 16.0)))) && ((((34 + 15) * (34 + 15)) <= n)) && ((n < ((34 + 16) * (34 + 16)))) && ((34 <= 35)) && ((34 >= 5)) {  // sub-goal of `norm_num` (Lean state)
                        assert (n == 2430);  // hypothesis h₆ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (2401 <= n);  // hypothesis h₁₀ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (n < 2500);  // hypothesis h₁₁ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (2401 <= n);  // hypothesis h₈ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (n < 2500);  // hypothesis h₉ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (49 == (floor(Real.sqrt((n as real))) as int));  // hypothesis h₇ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                        assert ((n == 400) || ((n == 470) || ((n == 2290) || ((n == 2360) || ((n == 2430) || (n == 2500))))));  // sub-goal of `norm_num` (Lean state) // @tac 5487-5538 // @tac 5554-5563 // @tac 5558-5563
                        // UNCITED-APPLIED internal ×107 [exec 1864 5558-5563]: applications made inside the tactic's own automation, not stated — Int.sub_eq_zero_of_eq ×3, le_of_le_of_eq ×3, Int.sub_nonneg_of_le ×3, Int.add_one_le_of_lt ×3, Nat.lt_or_gt_of_ne ×2, Int.ofNat_emod ×2, Int.emod_def ×2, Int.ofNat_add ×1; machinery/glue: Eq.symm ×18, Lean.Omega.combo_sat' ×8, Eq.trans ×8, Lean.Omega.Int.sub_congr ×8 (+22 more heads, ×46)
                      }
                      if (k == 35) && ((n == ((70 * 35) + 50))) && ((((35 as int) + 15) == floor(Real.sqrt((n as real))))) && (((((35 as real) + 15.0) * ((35 as real) + 15.0)) <= (n as real))) && (((n as real) < (((35 as real) + 16.0) * ((35 as real) + 16.0)))) && ((((35 + 15) * (35 + 15)) <= n)) && ((n < ((35 + 16) * (35 + 16)))) && ((35 <= 35)) && ((35 >= 5)) {  // sub-goal of `norm_num` (Lean state)
                        assert (n == 2500);  // hypothesis h₆ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (2500 <= n);  // hypothesis h₁₀ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (n < 2601);  // hypothesis h₁₁ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (2500 <= n);  // hypothesis h₈ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (n < 2601);  // hypothesis h₉ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        assert (50 == (floor(Real.sqrt((n as real))) as int));  // hypothesis h₇ after `norm_num` (Lean state) // @tac-hyp 5487-5538
                        // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                        assert ((n == 400) || ((n == 470) || ((n == 2290) || ((n == 2360) || ((n == 2430) || (n == 2500))))));  // sub-goal of `norm_num` (Lean state) // @tac 5487-5538 // @tac 5554-5563 // @tac 5558-5563
                        // UNCITED-APPLIED internal ×97 [exec 1874 5558-5563]: applications made inside the tactic's own automation, not stated — Int.sub_eq_zero_of_eq ×3, Int.ofNat_emod ×2, Int.emod_def ×2, le_of_le_of_eq ×2, Int.sub_nonneg_of_le ×2, Int.add_one_le_of_lt ×2, Nat.lt_or_gt_of_ne ×1, Int.ofNat_add ×1; machinery/glue: Eq.symm ×17, Lean.Omega.combo_sat' ×8, Eq.trans ×8, Lean.Omega.Int.sub_congr ×7 (+22 more heads, ×42)
                      }
                      // [TACTIC: ( try { have h₁₇ : n = 400 := by omega omega have h₁₇ : n = 400 := by omega omega simp_all [ h₁₇ ] simp_all [ h₁₇ ] simp]  NOT RUN in Lean (no execution recorded)
                      // [TACTIC: ( try { have h₁₇ : n = 470 := by omega omega have h₁₇ : n = 470 := by omega omega simp_all [ h₁₇ ] simp_all [ h₁₇ ] simp]  NOT RUN in Lean (no execution recorded)
                      // [TACTIC: ( try { have h₁₇ : n = 2290 := by omega omega have h₁₇ : n = 2290 := by omega omega simp_all [ h₁₇ ] simp_all [ h₁₇ ] si]  NOT RUN in Lean (no execution recorded)
                      // [TACTIC: ( try { have h₁₇ : n = 2360 := by omega omega have h₁₇ : n = 2360 := by omega omega simp_all [ h₁₇ ] simp_all [ h₁₇ ] si]  NOT RUN in Lean (no execution recorded)
                      // [TACTIC: ( try { have h₁₇ : n = 2430 := by omega omega have h₁₇ : n = 2430 := by omega omega simp_all [ h₁₇ ] simp_all [ h₁₇ ] si]  NOT RUN in Lean (no execution recorded)
                      // [TACTIC: ( try { have h₁₇ : n = 2500 := by omega omega have h₁₇ : n = 2500 := by omega omega simp_all [ h₁₇ ] simp_all [ h₁₇ ] si]  NOT RUN in Lean (no execution recorded)
                      // [TACTIC: try omega omega]  NOT RUN in Lean (no execution recorded)
                      // [TACTIC: ( try omega omega )]  NOT RUN in Lean (no execution recorded)
                      // [TACTIC: omega]
                      // NOT RUN in Lean (no execution recorded): no lemma instances
                      // [TACTIC: omega]
                      // NOT RUN in Lean (no execution recorded): no lemma instances
                      // [TACTIC: omega]
                      // NOT RUN in Lean (no execution recorded): no lemma instances
                      // [TACTIC: omega]
                      // NOT RUN in Lean (no execution recorded): no lemma instances
                      // [TACTIC: omega]
                      // NOT RUN in Lean (no execution recorded): no lemma instances
                      // [TACTIC: omega]
                      // NOT RUN in Lean (no execution recorded): no lemma instances
                      assert ((n == 400) || ((n == 470) || ((n == 2290) || ((n == 2360) || ((n == 2430) || (n == 2500))))));  // sub-goal of `cases` (Lean state) // @tac 5380-5413 // @tac 5422-5457 // @tac 5466-9478 // @tac 5466-9452 // @tac 5466-8803 // @tac 5466-8154 // @tac 5466-7505 // @tac 5466-6856 // @tac 5466-6210 // @tac 5466-5564 // @tac 5466-5538 // @tac 5466-5482
                    }
                    if ((k <= 4)) {  // sub-goal of `cases` (Lean state)
                      // have h₁₅ : k <= 4  [type from Lean state]
                      assert (k <= 4) by {
                        // [TACTIC: exact h₁₄]
                        assert (k <= 4);
                      }
                      // have h₁₆ : k >= 0  [type from Lean state]
                      assert (k >= 0); // @tac 9581-9586
                        // [TACTIC: omega]
                        // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                        // UNCITED-APPLIED internal ×120 [exec 1948 9581-9586]: applications made inside the tactic's own automation, not stated — Int.sub_eq_zero_of_eq ×4, le_of_le_of_eq ×4, Int.sub_nonneg_of_le ×4, Int.add_one_le_of_lt ×2, Int.ofNat_emod ×2, Int.emod_def ×2, Int.ofNat_add ×2, Nat.lt_of_not_le ×1, Int.ofNat_mul ×1; machinery/glue: Eq.symm ×26, Lean.Omega.combo_sat' ×8, Lean.Omega.Int.sub_congr ×8, Lean.Omega.LinearCombo.sub_eval ×8 (+20 more heads, ×48)
                      // [TACTIC: «_<;>_» k <;> norm_num at h₆ h₁₀ h₁₁ h₈ h₉ h₇ ⊢ <;> ( try omega omega ) <;> ( try { have h₁₇ : n = 400 := by omega omega have h₁₇ : n = 400 := by omega omega simp_all [ h₁₇ ] simp_all [ h₁₇ ] simp_all [ h₁₇ ] <;> norm_num [ Int.emod_eq_of_lt ] at * <;> ( try { rw [ eq_comm ] rw [ eq_comm ] <;> norm_num [ Int.floor_eq_iff , Real.le_sqrt , Real.sqrt_lt ] norm_num [ Int.floor_eq_iff , Real.le_sqrt , Real.sqrt_lt ] <;> ( try { constructor constructor <;> norm_num norm_num <;> nlinarith [ Real.sqrt_nonneg 400 , Real.sq_sqrt ( show 0 ≤ ( 400 : ℝ ) by norm_num norm_num ) ] nlinarith [ Real.sqrt_nonneg 400 , Real.sq_sqrt ( show 0 ≤ ( 400 : ℝ ) by norm_num norm_num ) ] } ) } ) } ) <;> ( try omega omega )]
                      // [TACTIC: Interval_cases k]
                      // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                      // UNCITED-APPLIED internal ×18 [exec 1969 9595-9611]: applications made inside the tactic's own automation, not stated — le_antisymm ×5, Nat.ge_of_not_lt ×4, Nat.zero_le ×1; machinery/glue: Eq.symm ×5, Mathlib.Tactic.IntervalCases.of_le_right ×1, Mathlib.Meta.NormNum.IsNat.to_raw_eq ×1, Mathlib.Meta.NormNum.isNat_ofNat ×1
                      if (k == 0) && ((n == ((70 * 0) + 50))) && ((((0 as int) + 15) == floor(Real.sqrt((n as real))))) && (((((0 as real) + 15.0) * ((0 as real) + 15.0)) <= (n as real))) && (((n as real) < (((0 as real) + 16.0) * ((0 as real) + 16.0)))) && ((((0 + 15) * (0 + 15)) <= n)) && ((n < ((0 + 16) * (0 + 16)))) && ((0 <= 35)) && ((0 <= 4)) && ((0 >= 0)) {  // sub-goal of `norm_num` (Lean state)
                        assert (n == 50);  // hypothesis h₆ after `norm_num` (Lean state) // @tac-hyp 9616-9667
                        assert (225 <= n);  // hypothesis h₁₀ after `norm_num` (Lean state) // @tac-hyp 9616-9667
                        assert (n < 256);  // hypothesis h₁₁ after `norm_num` (Lean state) // @tac-hyp 9616-9667
                        assert (225 <= n);  // hypothesis h₈ after `norm_num` (Lean state) // @tac-hyp 9616-9667
                        assert (n < 256);  // hypothesis h₉ after `norm_num` (Lean state) // @tac-hyp 9616-9667
                        assert (15 == (floor(Real.sqrt((n as real))) as int));  // hypothesis h₇ after `norm_num` (Lean state) // @tac-hyp 9616-9667
                        // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                        assert ((n == 400) || ((n == 470) || ((n == 2290) || ((n == 2360) || ((n == 2430) || (n == 2500))))));  // sub-goal of `norm_num` (Lean state) // @tac 9616-9667 // @tac 9683-9692 // @tac 9687-9692
                        // UNCITED-APPLIED internal ×89 [exec 2006 9687-9692]: applications made inside the tactic's own automation, not stated — Int.sub_eq_zero_of_eq ×3, Int.ofNat_emod ×2, Int.emod_def ×2, Int.ofNat_add ×1, le_of_le_of_eq ×1, Int.sub_nonneg_of_le ×1; machinery/glue: Eq.symm ×15, Eq.trans ×8, Lean.Omega.combo_sat' ×6, Lean.Omega.Int.sub_congr ×6 (+24 more heads, ×44)
                      }
                      if (k == 1) && ((n == ((70 * 1) + 50))) && ((((1 as int) + 15) == floor(Real.sqrt((n as real))))) && (((((1 as real) + 15.0) * ((1 as real) + 15.0)) <= (n as real))) && (((n as real) < (((1 as real) + 16.0) * ((1 as real) + 16.0)))) && ((((1 + 15) * (1 + 15)) <= n)) && ((n < ((1 + 16) * (1 + 16)))) && ((1 <= 35)) && ((1 <= 4)) && ((1 >= 0)) {  // sub-goal of `norm_num` (Lean state)
                        assert (n == 120);  // hypothesis h₆ after `norm_num` (Lean state) // @tac-hyp 9616-9667
                        assert (256 <= n);  // hypothesis h₁₀ after `norm_num` (Lean state) // @tac-hyp 9616-9667
                        assert (n < 289);  // hypothesis h₁₁ after `norm_num` (Lean state) // @tac-hyp 9616-9667
                        assert (256 <= n);  // hypothesis h₈ after `norm_num` (Lean state) // @tac-hyp 9616-9667
                        assert (n < 289);  // hypothesis h₉ after `norm_num` (Lean state) // @tac-hyp 9616-9667
                        assert (16 == (floor(Real.sqrt((n as real))) as int));  // hypothesis h₇ after `norm_num` (Lean state) // @tac-hyp 9616-9667
                        // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                        assert ((n == 400) || ((n == 470) || ((n == 2290) || ((n == 2360) || ((n == 2430) || (n == 2500))))));  // sub-goal of `norm_num` (Lean state) // @tac 9616-9667 // @tac 9683-9692 // @tac 9687-9692
                        // UNCITED-APPLIED internal ×89 [exec 2016 9687-9692]: applications made inside the tactic's own automation, not stated — Int.sub_eq_zero_of_eq ×3, Int.ofNat_emod ×2, Int.emod_def ×2, Int.ofNat_add ×1, le_of_le_of_eq ×1, Int.sub_nonneg_of_le ×1; machinery/glue: Eq.symm ×15, Eq.trans ×8, Lean.Omega.combo_sat' ×6, Lean.Omega.Int.sub_congr ×6 (+24 more heads, ×44)
                      }
                      if (k == 2) && ((n == ((70 * 2) + 50))) && ((((2 as int) + 15) == floor(Real.sqrt((n as real))))) && (((((2 as real) + 15.0) * ((2 as real) + 15.0)) <= (n as real))) && (((n as real) < (((2 as real) + 16.0) * ((2 as real) + 16.0)))) && ((((2 + 15) * (2 + 15)) <= n)) && ((n < ((2 + 16) * (2 + 16)))) && ((2 <= 35)) && ((2 <= 4)) && ((2 >= 0)) {  // sub-goal of `norm_num` (Lean state)
                        assert (n == 190);  // hypothesis h₆ after `norm_num` (Lean state) // @tac-hyp 9616-9667
                        assert (289 <= n);  // hypothesis h₁₀ after `norm_num` (Lean state) // @tac-hyp 9616-9667
                        assert (n < 324);  // hypothesis h₁₁ after `norm_num` (Lean state) // @tac-hyp 9616-9667
                        assert (289 <= n);  // hypothesis h₈ after `norm_num` (Lean state) // @tac-hyp 9616-9667
                        assert (n < 324);  // hypothesis h₉ after `norm_num` (Lean state) // @tac-hyp 9616-9667
                        assert (17 == (floor(Real.sqrt((n as real))) as int));  // hypothesis h₇ after `norm_num` (Lean state) // @tac-hyp 9616-9667
                        // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                        assert ((n == 400) || ((n == 470) || ((n == 2290) || ((n == 2360) || ((n == 2430) || (n == 2500))))));  // sub-goal of `norm_num` (Lean state) // @tac 9616-9667 // @tac 9683-9692 // @tac 9687-9692
                        // UNCITED-APPLIED internal ×88 [exec 2026 9687-9692]: applications made inside the tactic's own automation, not stated — Int.sub_eq_zero_of_eq ×3, Int.ofNat_emod ×2, Int.emod_def ×2, Int.ofNat_add ×1, le_of_le_of_eq ×1, Int.sub_nonneg_of_le ×1; machinery/glue: Eq.symm ×15, Eq.trans ×8, Lean.Omega.combo_sat' ×6, Lean.Omega.Int.sub_congr ×6 (+24 more heads, ×43)
                      }
                      if (k == 3) && ((n == ((70 * 3) + 50))) && ((((3 as int) + 15) == floor(Real.sqrt((n as real))))) && (((((3 as real) + 15.0) * ((3 as real) + 15.0)) <= (n as real))) && (((n as real) < (((3 as real) + 16.0) * ((3 as real) + 16.0)))) && ((((3 + 15) * (3 + 15)) <= n)) && ((n < ((3 + 16) * (3 + 16)))) && ((3 <= 35)) && ((3 <= 4)) && ((3 >= 0)) {  // sub-goal of `norm_num` (Lean state)
                        assert (n == 260);  // hypothesis h₆ after `norm_num` (Lean state) // @tac-hyp 9616-9667
                        assert (324 <= n);  // hypothesis h₁₀ after `norm_num` (Lean state) // @tac-hyp 9616-9667
                        assert (n < 361);  // hypothesis h₁₁ after `norm_num` (Lean state) // @tac-hyp 9616-9667
                        assert (324 <= n);  // hypothesis h₈ after `norm_num` (Lean state) // @tac-hyp 9616-9667
                        assert (n < 361);  // hypothesis h₉ after `norm_num` (Lean state) // @tac-hyp 9616-9667
                        assert (18 == (floor(Real.sqrt((n as real))) as int));  // hypothesis h₇ after `norm_num` (Lean state) // @tac-hyp 9616-9667
                        // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                        assert ((n == 400) || ((n == 470) || ((n == 2290) || ((n == 2360) || ((n == 2430) || (n == 2500))))));  // sub-goal of `norm_num` (Lean state) // @tac 9616-9667 // @tac 9683-9692 // @tac 9687-9692
                        // UNCITED-APPLIED internal ×89 [exec 2036 9687-9692]: applications made inside the tactic's own automation, not stated — Int.sub_eq_zero_of_eq ×3, Int.ofNat_emod ×2, Int.emod_def ×2, Int.ofNat_add ×1, le_of_le_of_eq ×1, Int.sub_nonneg_of_le ×1; machinery/glue: Eq.symm ×15, Eq.trans ×8, Lean.Omega.combo_sat' ×6, Lean.Omega.Int.sub_congr ×6 (+24 more heads, ×44)
                      }
                      if (k == 4) && ((n == ((70 * 4) + 50))) && ((((4 as int) + 15) == floor(Real.sqrt((n as real))))) && (((((4 as real) + 15.0) * ((4 as real) + 15.0)) <= (n as real))) && (((n as real) < (((4 as real) + 16.0) * ((4 as real) + 16.0)))) && ((((4 + 15) * (4 + 15)) <= n)) && ((n < ((4 + 16) * (4 + 16)))) && ((4 <= 35)) && ((4 <= 4)) && ((4 >= 0)) {  // sub-goal of `norm_num` (Lean state)
                        assert (n == 330);  // hypothesis h₆ after `norm_num` (Lean state) // @tac-hyp 9616-9667
                        assert (361 <= n);  // hypothesis h₁₀ after `norm_num` (Lean state) // @tac-hyp 9616-9667
                        assert (n < 400);  // hypothesis h₁₁ after `norm_num` (Lean state) // @tac-hyp 9616-9667
                        assert (361 <= n);  // hypothesis h₈ after `norm_num` (Lean state) // @tac-hyp 9616-9667
                        assert (n < 400);  // hypothesis h₉ after `norm_num` (Lean state) // @tac-hyp 9616-9667
                        assert (19 == (floor(Real.sqrt((n as real))) as int));  // hypothesis h₇ after `norm_num` (Lean state) // @tac-hyp 9616-9667
                        // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                        assert ((n == 400) || ((n == 470) || ((n == 2290) || ((n == 2360) || ((n == 2430) || (n == 2500))))));  // sub-goal of `norm_num` (Lean state) // @tac 9616-9667 // @tac 9683-9692 // @tac 9687-9692
                        // UNCITED-APPLIED internal ×89 [exec 2046 9687-9692]: applications made inside the tactic's own automation, not stated — Int.sub_eq_zero_of_eq ×3, Int.ofNat_emod ×2, Int.emod_def ×2, Int.ofNat_add ×1, le_of_le_of_eq ×1, Int.sub_nonneg_of_le ×1; machinery/glue: Eq.symm ×15, Eq.trans ×8, Lean.Omega.combo_sat' ×6, Lean.Omega.Int.sub_congr ×6 (+24 more heads, ×44)
                      }
                      // [TACTIC: ( try { have h₁₇ : n = 400 := by omega omega have h₁₇ : n = 400 := by omega omega simp_all [ h₁₇ ] simp_all [ h₁₇ ] simp]  NOT RUN in Lean (no execution recorded)
                      // [TACTIC: try omega omega]  NOT RUN in Lean (no execution recorded)
                      // [TACTIC: ( try omega omega )]  NOT RUN in Lean (no execution recorded)
                      // [TACTIC: omega]
                      // NOT RUN in Lean (no execution recorded): no lemma instances
                      assert ((n == 400) || ((n == 470) || ((n == 2290) || ((n == 2360) || ((n == 2430) || (n == 2500))))));  // sub-goal of `cases` (Lean state) // @tac 9510-9543 // @tac 9552-9586 // @tac 9595-10365 // @tac 9595-10339 // @tac 9595-9693 // @tac 9595-9667 // @tac 9595-9611
                    }
                    assert ((n == 400) || ((n == 470) || ((n == 2290) || ((n == 2360) || ((n == 2430) || (n == 2500))))));  // sub-goal before `have` (Lean state) // @tac 2428-3232 // @tac 3239-3911 // @tac 3918-4740 // @tac 4747-4911 // @tac 4918-5080 // @tac 5087-5270 // @tac 5277-5323 // @tac 5330-10365
                  }
                }
              }
            }
            assert (((n == 400) || ((n == 470) || ((n == 2290) || ((n == 2360) || ((n == 2430) || (n == 2500)))))) ==> ((0 < n) && ((((n as real) + 1000.0) / 70.0) == (floor(Real.sqrt((n as real))) as real)))) by {  // sub-goal of `constructor` (Lean state) // @tac 10455-10462 // @tac 10370-16297
              // intro h: P → Q  (N7 if-wrapper)
              if ((n == 400) || ((n == 470) || ((n == 2290) || ((n == 2360) || ((n == 2430) || (n == 2500)))))) {
                assert ((0 < n) && ((((n as real) + 1000.0) / 70.0) == (floor(Real.sqrt((n as real))) as real))) by {  // sub-goal before `have` (Lean state) // @tac 10469-10572 // @tac 10579-10631
                  // have h₁ : n == 400 || n == 470 || n == 2290 || n == 2360 || n == 2430 || n == 25  [type from Lean state]
                  assert ((n == 400) || ((n == 470) || ((n == 2290) || ((n == 2360) || ((n == 2430) || (n == 2500)))))); // @tac 10567-10572
                    // [TACTIC: Tauto]
                  // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
                  // UNCITED-APPLIED Eq.symm ×5: 5 of Lean's 6 recorded instances here have no statement above (which ones is not decided) — Lean's instances: Eq.symm(n, (400 : ℕ)); Eq.symm(n, (470 : ℕ)); Eq.symm(n, (2290 : ℕ)); Eq.symm(n, (2360 : ℕ)) … [exec 2083 10579-10631]
                  // `rcases`: 6 cases (Lean states); 6 branch bodies
                  if (n == 400) && (((400 == 400) || ((400 == 470) || ((400 == 2290) || ((400 == 2360) || ((400 == 2430) || (400 == 2500))))))) {  // sub-goal of `rcases` (Lean state)
                    // [TACTIC: constructor]
                    // `constructor`: 2 cases (Lean states); 2 branch bodies
                    assert (0 < 400) by {  // sub-goal of `constructor` (Lean state) // @tac 10715-10723 // @tac 10685-10723
                      // [TACTIC: «Norm_num[_]At___»]
                      // UNCITED-APPLIED internal ×5 [exec 2093 10715-10723]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                    }
                    assert ((((400 as real) + 1000.0) / 70.0) == (floor(Real.sqrt((400 as real))) as real)) by {  // sub-goal of `constructor` (Lean state) // @tac 10811-11235 // @tac 10732-11369 // @tac 11246-11369 // @tac 11246-11261
                      // have h₂ : Int.floor ( Real.sqrt ( 400 ) ) == 20  [type from Lean state]
                      assert (floor(Real.sqrt(400.0)) == 20) by { // @tac 10878-10899
                        // [TACTIC: rwSeq [ Int.floor_eq_iff ]]
                        IntFloorEqIff(Real.sqrt(400.0), 20);  // cite: Int.floor_eq_iff
                        // UNCITED-APPLIED congrArg(fun (_a : Prop) => _a): no library counterpart (not stated) [exec 2118 10878-10899]
                        assert (((20 as real) <= Real.sqrt(400.0)) && (Real.sqrt(400.0) < ((20 as real) + 1.0))) by {  // sub-goal before `constructor` (Lean state) // @tac 10912-10923
                          // [TACTIC: constructor]
                          // `constructor`: 2 cases (Lean states); 2 branch bodies
                          assert ((20 as real) <= Real.sqrt(400.0)) by {  // sub-goal of `constructor` (Lean state) // @tac 10983-11020 // @tac 10936-11020
                            // [TACTIC: «Norm_num[_]At___» [ Real.le_sqrt , Real.sqrt_lt ]]
                            // UNCITED Real.le_sqrt: no Lean instance recorded (arguments unknown), not guessed
                            // UNCITED Real.sqrt_lt: no Lean instance recorded (arguments unknown), not guessed
                            // UNCITED-APPLIED Nat.cast_zero: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
                            // UNCITED-APPLIED internal ×18 [exec 2150 10983-11020]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Mathlib.Meta.NormNum.isNat_le_true ×3, of_eq_true ×1, Eq.trans ×1 (+7 more heads, ×7)
                          }
                          assert (Real.sqrt(400.0) < ((20 as real) + 1.0)) by {  // sub-goal of `constructor` (Lean state) // @tac 11082-11235 // @tac 11082-11119 // @tac 11033-11235
                            // [TACTIC: «_<;>_» [ Real.le_sqrt , Real.sqrt_lt ] norm_num [ Real.le_sqrt , Real.sqrt_lt ] <;> nlinarith [ Real.sqrt_nonneg 400 , Real.sq_sqrt ( show 0 ≤ ( 400 : ℝ ) by norm_num norm_num ) ] nlinarith [ Real.sqrt_nonneg 400 , Real.sq_sqrt ( show 0 ≤ ( 400 : ℝ ) by norm_num norm_num ) ]]
                            // [TACTIC: «Norm_num[_]At___» [ Real.le_sqrt , Real.sqrt_lt ]]
                            // UNCITED Real.le_sqrt: no Lean instance recorded (arguments unknown), not guessed
                            // UNCITED Real.sqrt_lt: no Lean instance recorded (arguments unknown), not guessed
                            NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
                            // UNCITED-APPLIED Nat.cast_zero: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
                            // `norm_num` closed the goal; the rest of the chain did not run
                            // [TACTIC: «Norm_num[_]At___»]
                            // UNCITED-APPLIED internal ×20 [exec 2160 11082-11119]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×6, Mathlib.Meta.NormNum.isNat_le_true ×2, of_eq_true ×1, Eq.trans ×1 (+9 more heads, ×9) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                          }
                        }
                      }
                      // [TACTIC: «_<;>_» [ h₂ ] norm_num [ h₂ ] <;> nlinarith [ Real.sqrt_nonneg 400 , Real.sq_sqrt ( show 0 ≤ ( 400 : ℝ ) by norm_num norm_num ) ] nlinarith [ Real.sqrt_nonneg 400 , Real.sq_sqrt ( show 0 ≤ ( 400 : ℝ ) by norm_num norm_num ) ]]
                      // [TACTIC: «Norm_num[_]At___» [ h₂ ]]
                      // `norm_num` closed the goal; the rest of the chain did not run
                      // [TACTIC: «Norm_num[_]At___»]
                      // UNCITED-APPLIED internal ×28 [exec 2172 11246-11261]: applications made inside the tactic's own automation, not stated — Int.cast_ofNat ×1; machinery/glue: Eq.trans ×3, congrArg ×3, Mathlib.Meta.NormNum.IsNat.to_isRat ×3, Mathlib.Meta.NormNum.isNat_ofNat ×3 (+12 more heads, ×15)
                    }
                    assert ((0 < 400) && ((((400 as real) + 1000.0) / 70.0) == (floor(Real.sqrt((400 as real))) as real)));  // sub-goal of `rcases` (Lean state) // @tac 10638-11369 // @tac 10665-10676
                  }
                  if (n == 470) && (((470 == 400) || ((470 == 470) || ((470 == 2290) || ((470 == 2360) || ((470 == 2430) || (470 == 2500))))))) {  // sub-goal of `rcases` (Lean state)
                    // [TACTIC: constructor]
                    // `constructor`: 2 cases (Lean states); 2 branch bodies
                    assert (0 < 470) by {  // sub-goal of `constructor` (Lean state) // @tac 11453-11461 // @tac 11423-11461
                      // [TACTIC: «Norm_num[_]At___»]
                      // UNCITED-APPLIED internal ×5 [exec 2188 11453-11461]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                    }
                    assert ((((470 as real) + 1000.0) / 70.0) == (floor(Real.sqrt((470 as real))) as real)) by {  // sub-goal of `constructor` (Lean state) // @tac 11549-12267 // @tac 11470-12401 // @tac 12278-12401 // @tac 12278-12293
                      // have h₂ : Int.floor ( Real.sqrt ( 470 ) ) == 21  [type from Lean state]
                      assert (floor(Real.sqrt(470.0)) == 21) by { // @tac 11616-11637
                        // [TACTIC: rwSeq [ Int.floor_eq_iff ]]
                        IntFloorEqIff(Real.sqrt(470.0), 21);  // cite: Int.floor_eq_iff
                        // UNCITED-APPLIED congrArg(fun (_a : Prop) => _a): no library counterpart (not stated) [exec 2213 11616-11637]
                        assert (((21 as real) <= Real.sqrt(470.0)) && (Real.sqrt(470.0) < ((21 as real) + 1.0))) by {  // sub-goal before `constructor` (Lean state) // @tac 11650-11661
                          // [TACTIC: constructor]
                          // `constructor`: 2 cases (Lean states); 2 branch bodies
                          assert ((21 as real) <= Real.sqrt(470.0)) by {  // sub-goal of `constructor` (Lean state) // @tac 11721-11963 // @tac 11721-11758 // @tac 11674-11963
                            // [TACTIC: «_<;>_» [ Real.le_sqrt , Real.sqrt_lt ] norm_num [ Real.le_sqrt , Real.sqrt_lt ] <;> nlinarith [ Real.sqrt_nonneg 470 , Real.sq_sqrt ( show 0 ≤ ( 470 : ℝ ) by norm_num norm_num ) , Real.sqrt_nonneg 470 , Real.sq_sqrt ( show 0 ≤ ( 470 : ℝ ) by norm_num norm_num ) ] nlinarith [ Real.sqrt_nonneg 470 , Real.sq_sqrt ( show 0 ≤ ( 470 : ℝ ) by norm_num norm_num ) , Real.sqrt_nonneg 470 , Real.sq_sqrt ( show 0 ≤ ( 470 : ℝ ) by norm_num norm_num ) ]]
                            // [TACTIC: «Norm_num[_]At___» [ Real.le_sqrt , Real.sqrt_lt ]]
                            // UNCITED Real.le_sqrt: no Lean instance recorded (arguments unknown), not guessed
                            // UNCITED Real.sqrt_lt: no Lean instance recorded (arguments unknown), not guessed
                            // UNCITED-APPLIED Nat.cast_zero: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
                            // `norm_num` closed the goal; the rest of the chain did not run
                            // [TACTIC: «Norm_num[_]At___»]
                            // [TACTIC: «Norm_num[_]At___»]
                            // UNCITED-APPLIED internal ×18 [exec 2250 11721-11758]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Mathlib.Meta.NormNum.isNat_le_true ×3, of_eq_true ×1, Eq.trans ×1 (+7 more heads, ×7)
                          }
                          assert (Real.sqrt(470.0) < ((21 as real) + 1.0)) by {  // sub-goal of `constructor` (Lean state) // @tac 12025-12267 // @tac 12025-12062 // @tac 11976-12267
                            // [TACTIC: «_<;>_» [ Real.le_sqrt , Real.sqrt_lt ] norm_num [ Real.le_sqrt , Real.sqrt_lt ] <;> nlinarith [ Real.sqrt_nonneg 470 , Real.sq_sqrt ( show 0 ≤ ( 470 : ℝ ) by norm_num norm_num ) , Real.sqrt_nonneg 470 , Real.sq_sqrt ( show 0 ≤ ( 470 : ℝ ) by norm_num norm_num ) ] nlinarith [ Real.sqrt_nonneg 470 , Real.sq_sqrt ( show 0 ≤ ( 470 : ℝ ) by norm_num norm_num ) , Real.sqrt_nonneg 470 , Real.sq_sqrt ( show 0 ≤ ( 470 : ℝ ) by norm_num norm_num ) ]]
                            // [TACTIC: «Norm_num[_]At___» [ Real.le_sqrt , Real.sqrt_lt ]]
                            // UNCITED Real.le_sqrt: no Lean instance recorded (arguments unknown), not guessed
                            // UNCITED Real.sqrt_lt: no Lean instance recorded (arguments unknown), not guessed
                            NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
                            // UNCITED-APPLIED Nat.cast_zero: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
                            // `norm_num` closed the goal; the rest of the chain did not run
                            // [TACTIC: «Norm_num[_]At___»]
                            // [TACTIC: «Norm_num[_]At___»]
                            // UNCITED-APPLIED internal ×20 [exec 2266 12025-12062]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×6, Mathlib.Meta.NormNum.isNat_le_true ×2, of_eq_true ×1, Eq.trans ×1 (+9 more heads, ×9) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                          }
                        }
                      }
                      // [TACTIC: «_<;>_» [ h₂ ] norm_num [ h₂ ] <;> nlinarith [ Real.sqrt_nonneg 470 , Real.sq_sqrt ( show 0 ≤ ( 470 : ℝ ) by norm_num norm_num ) ] nlinarith [ Real.sqrt_nonneg 470 , Real.sq_sqrt ( show 0 ≤ ( 470 : ℝ ) by norm_num norm_num ) ]]
                      // [TACTIC: «Norm_num[_]At___» [ h₂ ]]
                      // `norm_num` closed the goal; the rest of the chain did not run
                      // [TACTIC: «Norm_num[_]At___»]
                      // UNCITED-APPLIED internal ×28 [exec 2278 12278-12293]: applications made inside the tactic's own automation, not stated — Int.cast_ofNat ×1; machinery/glue: Eq.trans ×3, congrArg ×3, Mathlib.Meta.NormNum.IsNat.to_isRat ×3, Mathlib.Meta.NormNum.isNat_ofNat ×3 (+12 more heads, ×15)
                    }
                    assert ((0 < 470) && ((((470 as real) + 1000.0) / 70.0) == (floor(Real.sqrt((470 as real))) as real)));  // sub-goal of `rcases` (Lean state) // @tac 11376-12401 // @tac 11403-11414
                  }
                  if (n == 2290) && (((2290 == 400) || ((2290 == 470) || ((2290 == 2290) || ((2290 == 2360) || ((2290 == 2430) || (2290 == 2500))))))) {  // sub-goal of `rcases` (Lean state)
                    // [TACTIC: constructor]
                    // `constructor`: 2 cases (Lean states); 2 branch bodies
                    assert (0 < 2290) by {  // sub-goal of `constructor` (Lean state) // @tac 12487-12495 // @tac 12456-12495
                      // [TACTIC: «Norm_num[_]At___»]
                      // UNCITED-APPLIED internal ×5 [exec 2294 12487-12495]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                    }
                    assert ((((2290 as real) + 1000.0) / 70.0) == (floor(Real.sqrt((2290 as real))) as real)) by {  // sub-goal of `constructor` (Lean state) // @tac 12585-13314 // @tac 12504-13450 // @tac 13325-13450 // @tac 13325-13340
                      // have h₂ : Int.floor ( Real.sqrt ( 2290 ) ) == 47  [type from Lean state]
                      assert (floor(Real.sqrt(2290.0)) == 47) by { // @tac 12653-12674
                        // [TACTIC: rwSeq [ Int.floor_eq_iff ]]
                        IntFloorEqIff(Real.sqrt(2290.0), 47);  // cite: Int.floor_eq_iff
                        // UNCITED-APPLIED congrArg(fun (_a : Prop) => _a): no library counterpart (not stated) [exec 2319 12653-12674]
                        assert (((47 as real) <= Real.sqrt(2290.0)) && (Real.sqrt(2290.0) < ((47 as real) + 1.0))) by {  // sub-goal before `constructor` (Lean state) // @tac 12687-12698
                          // [TACTIC: constructor]
                          // `constructor`: 2 cases (Lean states); 2 branch bodies
                          assert ((47 as real) <= Real.sqrt(2290.0)) by {  // sub-goal of `constructor` (Lean state) // @tac 12759-13005 // @tac 12759-12796 // @tac 12711-13005
                            // [TACTIC: «_<;>_» [ Real.le_sqrt , Real.sqrt_lt ] norm_num [ Real.le_sqrt , Real.sqrt_lt ] <;> nlinarith [ Real.sqrt_nonneg 2290 , Real.sq_sqrt ( show 0 ≤ ( 2290 : ℝ ) by norm_num norm_num ) , Real.sqrt_nonneg 2290 , Real.sq_sqrt ( show 0 ≤ ( 2290 : ℝ ) by norm_num norm_num ) ] nlinarith [ Real.sqrt_nonneg 2290 , Real.sq_sqrt ( show 0 ≤ ( 2290 : ℝ ) by norm_num norm_num ) , Real.sqrt_nonneg 2290 , Real.sq_sqrt ( show 0 ≤ ( 2290 : ℝ ) by norm_num norm_num ) ]]
                            // [TACTIC: «Norm_num[_]At___» [ Real.le_sqrt , Real.sqrt_lt ]]
                            // UNCITED Real.le_sqrt: no Lean instance recorded (arguments unknown), not guessed
                            // UNCITED Real.sqrt_lt: no Lean instance recorded (arguments unknown), not guessed
                            // UNCITED-APPLIED Nat.cast_zero: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
                            // `norm_num` closed the goal; the rest of the chain did not run
                            // [TACTIC: «Norm_num[_]At___»]
                            // [TACTIC: «Norm_num[_]At___»]
                            // UNCITED-APPLIED internal ×18 [exec 2356 12759-12796]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Mathlib.Meta.NormNum.isNat_le_true ×3, of_eq_true ×1, Eq.trans ×1 (+7 more heads, ×7)
                            vc_amc12b_2020_p21_L1338(S, n);  /* [IN-FILE CHECK] the closed lemma for line 1338 */
                          }
                          assert (Real.sqrt(2290.0) < ((47 as real) + 1.0)) by {  // sub-goal of `constructor` (Lean state) // @tac 13068-13314 // @tac 13068-13105 // @tac 13018-13314
                            // [TACTIC: «_<;>_» [ Real.le_sqrt , Real.sqrt_lt ] norm_num [ Real.le_sqrt , Real.sqrt_lt ] <;> nlinarith [ Real.sqrt_nonneg 2290 , Real.sq_sqrt ( show 0 ≤ ( 2290 : ℝ ) by norm_num norm_num ) , Real.sqrt_nonneg 2290 , Real.sq_sqrt ( show 0 ≤ ( 2290 : ℝ ) by norm_num norm_num ) ] nlinarith [ Real.sqrt_nonneg 2290 , Real.sq_sqrt ( show 0 ≤ ( 2290 : ℝ ) by norm_num norm_num ) , Real.sqrt_nonneg 2290 , Real.sq_sqrt ( show 0 ≤ ( 2290 : ℝ ) by norm_num norm_num ) ]]
                            // [TACTIC: «Norm_num[_]At___» [ Real.le_sqrt , Real.sqrt_lt ]]
                            // UNCITED Real.le_sqrt: no Lean instance recorded (arguments unknown), not guessed
                            // UNCITED Real.sqrt_lt: no Lean instance recorded (arguments unknown), not guessed
                            NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
                            // UNCITED-APPLIED Nat.cast_zero: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
                            // `norm_num` closed the goal; the rest of the chain did not run
                            // [TACTIC: «Norm_num[_]At___»]
                            // [TACTIC: «Norm_num[_]At___»]
                            // UNCITED-APPLIED internal ×20 [exec 2372 13068-13105]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×6, Mathlib.Meta.NormNum.isNat_le_true ×2, of_eq_true ×1, Eq.trans ×1 (+9 more heads, ×9) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                          }
                        }
                      }
                      // [TACTIC: «_<;>_» [ h₂ ] norm_num [ h₂ ] <;> nlinarith [ Real.sqrt_nonneg 2290 , Real.sq_sqrt ( show 0 ≤ ( 2290 : ℝ ) by norm_num norm_num ) ] nlinarith [ Real.sqrt_nonneg 2290 , Real.sq_sqrt ( show 0 ≤ ( 2290 : ℝ ) by norm_num norm_num ) ]]
                      // [TACTIC: «Norm_num[_]At___» [ h₂ ]]
                      // `norm_num` closed the goal; the rest of the chain did not run
                      // [TACTIC: «Norm_num[_]At___»]
                      // UNCITED-APPLIED internal ×28 [exec 2384 13325-13340]: applications made inside the tactic's own automation, not stated — Int.cast_ofNat ×1; machinery/glue: Eq.trans ×3, congrArg ×3, Mathlib.Meta.NormNum.IsNat.to_isRat ×3, Mathlib.Meta.NormNum.isNat_ofNat ×3 (+12 more heads, ×15)
                    }
                    assert ((0 < 2290) && ((((2290 as real) + 1000.0) / 70.0) == (floor(Real.sqrt((2290 as real))) as real)));  // sub-goal of `rcases` (Lean state) // @tac 12408-13450 // @tac 12436-12447
                  }
                  if (n == 2360) && (((2360 == 400) || ((2360 == 470) || ((2360 == 2290) || ((2360 == 2360) || ((2360 == 2430) || (2360 == 2500))))))) {  // sub-goal of `rcases` (Lean state)
                    // [TACTIC: constructor]
                    // `constructor`: 2 cases (Lean states); 2 branch bodies
                    assert (0 < 2360) by {  // sub-goal of `constructor` (Lean state) // @tac 13536-13544 // @tac 13505-13544
                      // [TACTIC: «Norm_num[_]At___»]
                      // UNCITED-APPLIED internal ×5 [exec 2400 13536-13544]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                    }
                    assert ((((2360 as real) + 1000.0) / 70.0) == (floor(Real.sqrt((2360 as real))) as real)) by {  // sub-goal of `constructor` (Lean state) // @tac 13634-14363 // @tac 13553-14499 // @tac 14374-14499 // @tac 14374-14389
                      // have h₂ : Int.floor ( Real.sqrt ( 2360 ) ) == 48  [type from Lean state]
                      assert (floor(Real.sqrt(2360.0)) == 48) by { // @tac 13702-13723
                        // [TACTIC: rwSeq [ Int.floor_eq_iff ]]
                        IntFloorEqIff(Real.sqrt(2360.0), 48);  // cite: Int.floor_eq_iff
                        // UNCITED-APPLIED congrArg(fun (_a : Prop) => _a): no library counterpart (not stated) [exec 2425 13702-13723]
                        assert (((48 as real) <= Real.sqrt(2360.0)) && (Real.sqrt(2360.0) < ((48 as real) + 1.0))) by {  // sub-goal before `constructor` (Lean state) // @tac 13736-13747
                          // [TACTIC: constructor]
                          // `constructor`: 2 cases (Lean states); 2 branch bodies
                          assert ((48 as real) <= Real.sqrt(2360.0)) by {  // sub-goal of `constructor` (Lean state) // @tac 13808-14054 // @tac 13808-13845 // @tac 13760-14054
                            // [TACTIC: «_<;>_» [ Real.le_sqrt , Real.sqrt_lt ] norm_num [ Real.le_sqrt , Real.sqrt_lt ] <;> nlinarith [ Real.sqrt_nonneg 2360 , Real.sq_sqrt ( show 0 ≤ ( 2360 : ℝ ) by norm_num norm_num ) , Real.sqrt_nonneg 2360 , Real.sq_sqrt ( show 0 ≤ ( 2360 : ℝ ) by norm_num norm_num ) ] nlinarith [ Real.sqrt_nonneg 2360 , Real.sq_sqrt ( show 0 ≤ ( 2360 : ℝ ) by norm_num norm_num ) , Real.sqrt_nonneg 2360 , Real.sq_sqrt ( show 0 ≤ ( 2360 : ℝ ) by norm_num norm_num ) ]]
                            // [TACTIC: «Norm_num[_]At___» [ Real.le_sqrt , Real.sqrt_lt ]]
                            // UNCITED Real.le_sqrt: no Lean instance recorded (arguments unknown), not guessed
                            // UNCITED Real.sqrt_lt: no Lean instance recorded (arguments unknown), not guessed
                            // UNCITED-APPLIED Nat.cast_zero: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
                            // `norm_num` closed the goal; the rest of the chain did not run
                            // [TACTIC: «Norm_num[_]At___»]
                            // [TACTIC: «Norm_num[_]At___»]
                            // UNCITED-APPLIED internal ×18 [exec 2462 13808-13845]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Mathlib.Meta.NormNum.isNat_le_true ×3, of_eq_true ×1, Eq.trans ×1 (+7 more heads, ×7)
                          }
                          assert (Real.sqrt(2360.0) < ((48 as real) + 1.0)) by {  // sub-goal of `constructor` (Lean state) // @tac 14117-14363 // @tac 14117-14154 // @tac 14067-14363
                            // [TACTIC: «_<;>_» [ Real.le_sqrt , Real.sqrt_lt ] norm_num [ Real.le_sqrt , Real.sqrt_lt ] <;> nlinarith [ Real.sqrt_nonneg 2360 , Real.sq_sqrt ( show 0 ≤ ( 2360 : ℝ ) by norm_num norm_num ) , Real.sqrt_nonneg 2360 , Real.sq_sqrt ( show 0 ≤ ( 2360 : ℝ ) by norm_num norm_num ) ] nlinarith [ Real.sqrt_nonneg 2360 , Real.sq_sqrt ( show 0 ≤ ( 2360 : ℝ ) by norm_num norm_num ) , Real.sqrt_nonneg 2360 , Real.sq_sqrt ( show 0 ≤ ( 2360 : ℝ ) by norm_num norm_num ) ]]
                            // [TACTIC: «Norm_num[_]At___» [ Real.le_sqrt , Real.sqrt_lt ]]
                            // UNCITED Real.le_sqrt: no Lean instance recorded (arguments unknown), not guessed
                            // UNCITED Real.sqrt_lt: no Lean instance recorded (arguments unknown), not guessed
                            NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
                            // UNCITED-APPLIED Nat.cast_zero: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
                            // `norm_num` closed the goal; the rest of the chain did not run
                            // [TACTIC: «Norm_num[_]At___»]
                            // [TACTIC: «Norm_num[_]At___»]
                            // UNCITED-APPLIED internal ×20 [exec 2478 14117-14154]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×6, Mathlib.Meta.NormNum.isNat_le_true ×2, of_eq_true ×1, Eq.trans ×1 (+9 more heads, ×9) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                          }
                        }
                      }
                      // [TACTIC: «_<;>_» [ h₂ ] norm_num [ h₂ ] <;> nlinarith [ Real.sqrt_nonneg 2360 , Real.sq_sqrt ( show 0 ≤ ( 2360 : ℝ ) by norm_num norm_num ) ] nlinarith [ Real.sqrt_nonneg 2360 , Real.sq_sqrt ( show 0 ≤ ( 2360 : ℝ ) by norm_num norm_num ) ]]
                      // [TACTIC: «Norm_num[_]At___» [ h₂ ]]
                      // `norm_num` closed the goal; the rest of the chain did not run
                      // [TACTIC: «Norm_num[_]At___»]
                      // UNCITED-APPLIED internal ×28 [exec 2490 14374-14389]: applications made inside the tactic's own automation, not stated — Int.cast_ofNat ×1; machinery/glue: Eq.trans ×3, congrArg ×3, Mathlib.Meta.NormNum.IsNat.to_isRat ×3, Mathlib.Meta.NormNum.isNat_ofNat ×3 (+12 more heads, ×15)
                    }
                    assert ((0 < 2360) && ((((2360 as real) + 1000.0) / 70.0) == (floor(Real.sqrt((2360 as real))) as real)));  // sub-goal of `rcases` (Lean state) // @tac 13457-14499 // @tac 13485-13496
                  }
                  if (n == 2430) && (((2430 == 400) || ((2430 == 470) || ((2430 == 2290) || ((2430 == 2360) || ((2430 == 2430) || (2430 == 2500))))))) {  // sub-goal of `rcases` (Lean state)
                    // [TACTIC: constructor]
                    // `constructor`: 2 cases (Lean states); 2 branch bodies
                    assert (0 < 2430) by {  // sub-goal of `constructor` (Lean state) // @tac 14585-14593 // @tac 14554-14593
                      // [TACTIC: «Norm_num[_]At___»]
                      // UNCITED-APPLIED internal ×5 [exec 2506 14585-14593]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                    }
                    assert ((((2430 as real) + 1000.0) / 70.0) == (floor(Real.sqrt((2430 as real))) as real)) by {  // sub-goal of `constructor` (Lean state) // @tac 14683-15412 // @tac 14602-15548 // @tac 15423-15548 // @tac 15423-15438
                      // have h₂ : Int.floor ( Real.sqrt ( 2430 ) ) == 49  [type from Lean state]
                      assert (floor(Real.sqrt(2430.0)) == 49) by { // @tac 14751-14772
                        // [TACTIC: rwSeq [ Int.floor_eq_iff ]]
                        IntFloorEqIff(Real.sqrt(2430.0), 49);  // cite: Int.floor_eq_iff
                        // UNCITED-APPLIED congrArg(fun (_a : Prop) => _a): no library counterpart (not stated) [exec 2531 14751-14772]
                        assert (((49 as real) <= Real.sqrt(2430.0)) && (Real.sqrt(2430.0) < ((49 as real) + 1.0))) by {  // sub-goal before `constructor` (Lean state) // @tac 14785-14796
                          // [TACTIC: constructor]
                          // `constructor`: 2 cases (Lean states); 2 branch bodies
                          assert ((49 as real) <= Real.sqrt(2430.0)) by {  // sub-goal of `constructor` (Lean state) // @tac 14857-15103 // @tac 14857-14894 // @tac 14809-15103
                            // [TACTIC: «_<;>_» [ Real.le_sqrt , Real.sqrt_lt ] norm_num [ Real.le_sqrt , Real.sqrt_lt ] <;> nlinarith [ Real.sqrt_nonneg 2430 , Real.sq_sqrt ( show 0 ≤ ( 2430 : ℝ ) by norm_num norm_num ) , Real.sqrt_nonneg 2430 , Real.sq_sqrt ( show 0 ≤ ( 2430 : ℝ ) by norm_num norm_num ) ] nlinarith [ Real.sqrt_nonneg 2430 , Real.sq_sqrt ( show 0 ≤ ( 2430 : ℝ ) by norm_num norm_num ) , Real.sqrt_nonneg 2430 , Real.sq_sqrt ( show 0 ≤ ( 2430 : ℝ ) by norm_num norm_num ) ]]
                            // [TACTIC: «Norm_num[_]At___» [ Real.le_sqrt , Real.sqrt_lt ]]
                            // UNCITED Real.le_sqrt: no Lean instance recorded (arguments unknown), not guessed
                            // UNCITED Real.sqrt_lt: no Lean instance recorded (arguments unknown), not guessed
                            // UNCITED-APPLIED Nat.cast_zero: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
                            // `norm_num` closed the goal; the rest of the chain did not run
                            // [TACTIC: «Norm_num[_]At___»]
                            // [TACTIC: «Norm_num[_]At___»]
                            // UNCITED-APPLIED internal ×18 [exec 2568 14857-14894]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Mathlib.Meta.NormNum.isNat_le_true ×3, of_eq_true ×1, Eq.trans ×1 (+7 more heads, ×7)
                          }
                          assert (Real.sqrt(2430.0) < ((49 as real) + 1.0)) by {  // sub-goal of `constructor` (Lean state) // @tac 15166-15412 // @tac 15166-15203 // @tac 15116-15412
                            // [TACTIC: «_<;>_» [ Real.le_sqrt , Real.sqrt_lt ] norm_num [ Real.le_sqrt , Real.sqrt_lt ] <;> nlinarith [ Real.sqrt_nonneg 2430 , Real.sq_sqrt ( show 0 ≤ ( 2430 : ℝ ) by norm_num norm_num ) , Real.sqrt_nonneg 2430 , Real.sq_sqrt ( show 0 ≤ ( 2430 : ℝ ) by norm_num norm_num ) ] nlinarith [ Real.sqrt_nonneg 2430 , Real.sq_sqrt ( show 0 ≤ ( 2430 : ℝ ) by norm_num norm_num ) , Real.sqrt_nonneg 2430 , Real.sq_sqrt ( show 0 ≤ ( 2430 : ℝ ) by norm_num norm_num ) ]]
                            // [TACTIC: «Norm_num[_]At___» [ Real.le_sqrt , Real.sqrt_lt ]]
                            // UNCITED Real.le_sqrt: no Lean instance recorded (arguments unknown), not guessed
                            // UNCITED Real.sqrt_lt: no Lean instance recorded (arguments unknown), not guessed
                            NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
                            // UNCITED-APPLIED Nat.cast_zero: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
                            // `norm_num` closed the goal; the rest of the chain did not run
                            // [TACTIC: «Norm_num[_]At___»]
                            // [TACTIC: «Norm_num[_]At___»]
                            // UNCITED-APPLIED internal ×20 [exec 2584 15166-15203]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×6, Mathlib.Meta.NormNum.isNat_le_true ×2, of_eq_true ×1, Eq.trans ×1 (+9 more heads, ×9) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                          }
                        }
                      }
                      // [TACTIC: «_<;>_» [ h₂ ] norm_num [ h₂ ] <;> nlinarith [ Real.sqrt_nonneg 2430 , Real.sq_sqrt ( show 0 ≤ ( 2430 : ℝ ) by norm_num norm_num ) ] nlinarith [ Real.sqrt_nonneg 2430 , Real.sq_sqrt ( show 0 ≤ ( 2430 : ℝ ) by norm_num norm_num ) ]]
                      // [TACTIC: «Norm_num[_]At___» [ h₂ ]]
                      // `norm_num` closed the goal; the rest of the chain did not run
                      // [TACTIC: «Norm_num[_]At___»]
                      // UNCITED-APPLIED internal ×28 [exec 2596 15423-15438]: applications made inside the tactic's own automation, not stated — Int.cast_ofNat ×1; machinery/glue: Eq.trans ×3, congrArg ×3, Mathlib.Meta.NormNum.IsNat.to_isRat ×3, Mathlib.Meta.NormNum.isNat_ofNat ×3 (+12 more heads, ×15)
                    }
                    assert ((0 < 2430) && ((((2430 as real) + 1000.0) / 70.0) == (floor(Real.sqrt((2430 as real))) as real)));  // sub-goal of `rcases` (Lean state) // @tac 14506-15548 // @tac 14534-14545
                  }
                  if (n == 2500) && (((2500 == 400) || ((2500 == 470) || ((2500 == 2290) || ((2500 == 2360) || ((2500 == 2430) || (2500 == 2500))))))) {  // sub-goal of `rcases` (Lean state)
                    // [TACTIC: constructor]
                    // `constructor`: 2 cases (Lean states); 2 branch bodies
                    assert (0 < 2500) by {  // sub-goal of `constructor` (Lean state) // @tac 15634-15642 // @tac 15603-15642
                      // [TACTIC: «Norm_num[_]At___»]
                      // UNCITED-APPLIED internal ×5 [exec 2612 15634-15642]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
                    }
                    assert ((((2500 as real) + 1000.0) / 70.0) == (floor(Real.sqrt((2500 as real))) as real)) by {  // sub-goal of `constructor` (Lean state) // @tac 15732-16161 // @tac 15651-16297 // @tac 16172-16297 // @tac 16172-16187
                      // have h₂ : Int.floor ( Real.sqrt ( 2500 ) ) == 50  [type from Lean state]
                      assert (floor(Real.sqrt(2500.0)) == 50) by { // @tac 15800-15821
                        // [TACTIC: rwSeq [ Int.floor_eq_iff ]]
                        IntFloorEqIff(Real.sqrt(2500.0), 50);  // cite: Int.floor_eq_iff
                        // UNCITED-APPLIED congrArg(fun (_a : Prop) => _a): no library counterpart (not stated) [exec 2637 15800-15821]
                        assert (((50 as real) <= Real.sqrt(2500.0)) && (Real.sqrt(2500.0) < ((50 as real) + 1.0))) by {  // sub-goal before `constructor` (Lean state) // @tac 15834-15845
                          // [TACTIC: constructor]
                          // `constructor`: 2 cases (Lean states); 2 branch bodies
                          assert ((50 as real) <= Real.sqrt(2500.0)) by {  // sub-goal of `constructor` (Lean state) // @tac 15906-15943 // @tac 15858-15943
                            // [TACTIC: «Norm_num[_]At___» [ Real.le_sqrt , Real.sqrt_lt ]]
                            // UNCITED Real.le_sqrt: no Lean instance recorded (arguments unknown), not guessed
                            // UNCITED Real.sqrt_lt: no Lean instance recorded (arguments unknown), not guessed
                            // UNCITED-APPLIED Nat.cast_zero: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
                            // UNCITED-APPLIED internal ×18 [exec 2669 15906-15943]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Mathlib.Meta.NormNum.isNat_le_true ×3, of_eq_true ×1, Eq.trans ×1 (+7 more heads, ×7)
                          }
                          assert (Real.sqrt(2500.0) < ((50 as real) + 1.0)) by {  // sub-goal of `constructor` (Lean state) // @tac 16006-16161 // @tac 16006-16043 // @tac 15956-16161
                            // [TACTIC: «_<;>_» [ Real.le_sqrt , Real.sqrt_lt ] norm_num [ Real.le_sqrt , Real.sqrt_lt ] <;> nlinarith [ Real.sqrt_nonneg 2500 , Real.sq_sqrt ( show 0 ≤ ( 2500 : ℝ ) by norm_num norm_num ) ] nlinarith [ Real.sqrt_nonneg 2500 , Real.sq_sqrt ( show 0 ≤ ( 2500 : ℝ ) by norm_num norm_num ) ]]
                            // [TACTIC: «Norm_num[_]At___» [ Real.le_sqrt , Real.sqrt_lt ]]
                            // UNCITED Real.le_sqrt: no Lean instance recorded (arguments unknown), not guessed
                            // UNCITED Real.sqrt_lt: no Lean instance recorded (arguments unknown), not guessed
                            NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
                            // UNCITED-APPLIED Nat.cast_zero: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
                            // `norm_num` closed the goal; the rest of the chain did not run
                            // [TACTIC: «Norm_num[_]At___»]
                            // UNCITED-APPLIED internal ×20 [exec 2679 16006-16043]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×6, Mathlib.Meta.NormNum.isNat_le_true ×2, of_eq_true ×1, Eq.trans ×1 (+9 more heads, ×9) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
                          }
                        }
                      }
                      // [TACTIC: «_<;>_» [ h₂ ] norm_num [ h₂ ] <;> nlinarith [ Real.sqrt_nonneg 2500 , Real.sq_sqrt ( show 0 ≤ ( 2500 : ℝ ) by norm_num norm_num ) ] nlinarith [ Real.sqrt_nonneg 2500 , Real.sq_sqrt ( show 0 ≤ ( 2500 : ℝ ) by norm_num norm_num ) ]]
                      // [TACTIC: «Norm_num[_]At___» [ h₂ ]]
                      // `norm_num` closed the goal; the rest of the chain did not run
                      // [TACTIC: «Norm_num[_]At___»]
                      // UNCITED-APPLIED internal ×28 [exec 2691 16172-16187]: applications made inside the tactic's own automation, not stated — Int.cast_ofNat ×1; machinery/glue: Eq.trans ×3, congrArg ×3, Mathlib.Meta.NormNum.IsNat.to_isRat ×3, Mathlib.Meta.NormNum.isNat_ofNat ×3 (+12 more heads, ×15)
                    }
                    assert ((0 < 2500) && ((((2500 as real) + 1000.0) / 70.0) == (floor(Real.sqrt((2500 as real))) as real)));  // sub-goal of `rcases` (Lean state) // @tac 15555-16297 // @tac 15583-15594
                  }
                }
              }
            }
          }
        }
      }
    }
    assert (forall a :: a in (S) <==> a in ({ 400, 470, 2290, 2360, 2430, 2500 }));  // precondition of FinsetExt (Lean: Finset.ext; `apply`: proved by the steps above)
    FinsetExt(S, { 400, 470, 2290, 2360, 2430, 2500 });  // cite: Finset.ext
  }
  // have h_card : S.card == 6  [type from Lean state]
  assert (|S| == 6) by { // @tac 16338-16349
    // [TACTIC: rwSeq [ h_main ]]
    // UNCITED-APPLIED congrArg(S, {(400 : ℕ), (470 : ℕ), (2290 : ℕ), (2360 : ℕ), (2430 : ℕ), (2500 : ℕ)}, fun (_a : Finset ℕ) => Finset.card _a = (6 : ℕ)): no library counterpart (not stated) [exec 2718 16338-16349]
    assert (|{ 400, 470, 2290, 2360, 2430, 2500 }| == 6) by {  // sub-goal before `norm_num` (Lean state) // @tac 16354-16374 // @tac 16354-16362
      // [TACTIC: «_<;>_» norm_num <;> rfl rfl]
      // [TACTIC: «Norm_num[_]At___»]
      if ((400) !in ({ 470, 2290, 2360, 2430, 2500 })) { FinsetCardInsertOfNotMem(400, { 470, 2290, 2360, 2430, 2500 }); }  // cite: Finset.card_insert_of_not_mem [applied by the tactic, not named in it]
      if ((470) !in ({ 2290, 2360, 2430, 2500 })) { FinsetCardInsertOfNotMem(470, { 2290, 2360, 2430, 2500 }); }  // cite: Finset.card_insert_of_not_mem [applied by the tactic, not named in it]
      if ((2290) !in ({ 2360, 2430, 2500 })) { FinsetCardInsertOfNotMem(2290, { 2360, 2430, 2500 }); }  // cite: Finset.card_insert_of_not_mem [applied by the tactic, not named in it]
      if ((2360) !in ({ 2430, 2500 })) { FinsetCardInsertOfNotMem(2360, { 2430, 2500 }); }  // cite: Finset.card_insert_of_not_mem [applied by the tactic, not named in it]
      if ((2430) !in ({ 2500 })) { FinsetCardInsertOfNotMem(2430, { 2500 }); }  // cite: Finset.card_insert_of_not_mem [applied by the tactic, not named in it]
      // `norm_num` closed the goal; the rest of the chain did not run
      // UNCITED-APPLIED internal ×48 [exec 2750 16354-16362]: applications made inside the tactic's own automation, not stated — or_self ×1, Finset.card_singleton ×1; machinery/glue: Mathlib.Meta.NormNum.IsNat.to_eq ×8, congr ×8, Mathlib.Meta.NormNum.isNat_eq_false ×8, Mathlib.Meta.NormNum.isNat_ofNat ×6 (+7 more heads, ×16) (cited in this block, not counted here: Finset.card_insert_of_not_mem [Lean recorded ×5])
    }
  }
  // [TACTIC: exact h_card]
  assert (|S| == 6);
  // LEAN NEVER RAN (no goal left when Lean reached it; no Lean goal-state record inside): have h₁₇ : n = 400 := by omega omega — nothing to translate
  // LEAN NEVER RAN (no goal left when Lean reached it; no Lean goal-state record inside): have h₁₇ : n = 470 := by omega omega — nothing to translate
  // LEAN NEVER RAN (no goal left when Lean reached it; no Lean goal-state record inside): have h₁₇ : n = 2290 := by omega omega — nothing to translate
  // LEAN NEVER RAN (no goal left when Lean reached it; no Lean goal-state record inside): have h₁₇ : n = 2360 := by omega omega — nothing to translate
  // LEAN NEVER RAN (no goal left when Lean reached it; no Lean goal-state record inside): have h₁₇ : n = 2430 := by omega omega — nothing to translate
  // LEAN NEVER RAN (no goal left when Lean reached it; no Lean goal-state record inside): have h₁₇ : n = 2500 := by omega omega — nothing to translate
  // LEAN NEVER RAN (no goal left when Lean reached it; no Lean goal-state record inside): have h₁₇ : n = 400 := by omega omega — nothing to translate
}



// ===== closed lemma for line 1338 (from closed/amc12b_2020_p21-1338.dfy) =====

lemma {:induction false} vc_amc12b_2020_p21_L1338(S: set<nat>, n_0_0_0_0: int)
  requires forall n_1: int :: 0 <= n_1 ==> (n_1 in S) == (0 < n_1 && ((n_1 as real) + 1000.0) / 70.0 == (floor(Real.sqrt((n_1 as real))) as real))
  requires 0 <= n_0_0_0_0
  requires (0 < n_0_0_0_0) || (n_0_0_0_0 <= 0)
  requires (n_0_0_0_0 in S) == (0 < n_0_0_0_0 && ((n_0_0_0_0 as real) + 1000.0) / 70.0 == (floor(Real.sqrt((n_0_0_0_0 as real))) as real))
  requires ((0 < n_0_0_0_0) && (70.0 != 0.0) && (((0 < n_0_0_0_0) && (((n_0_0_0_0 as real) + 1000.0) / 70.0 == (floor(Real.sqrt((n_0_0_0_0 as real))) as real)) && (((n_0_0_0_0 != 400) && (((n_0_0_0_0 != 470) && (((n_0_0_0_0 != 2290) && (((n_0_0_0_0 != 2360) && ((n_0_0_0_0 != 2430) || (n_0_0_0_0 == 2430))) || (n_0_0_0_0 == 2360))) || (n_0_0_0_0 == 2290))) || (n_0_0_0_0 == 470))) || (n_0_0_0_0 == 400))) || (!(0 < n_0_0_0_0 && ((n_0_0_0_0 as real) + 1000.0) / 70.0 == (floor(Real.sqrt((n_0_0_0_0 as real))) as real))))) || ((n_0_0_0_0 <= 0) && (((0 < n_0_0_0_0) && (((n_0_0_0_0 as real) + 1000.0) / 70.0 == (floor(Real.sqrt((n_0_0_0_0 as real))) as real)) && (((n_0_0_0_0 != 400) && (((n_0_0_0_0 != 470) && (((n_0_0_0_0 != 2290) && (((n_0_0_0_0 != 2360) && ((n_0_0_0_0 != 2430) || (n_0_0_0_0 == 2430))) || (n_0_0_0_0 == 2360))) || (n_0_0_0_0 == 2290))) || (n_0_0_0_0 == 470))) || (n_0_0_0_0 == 400))) || (!(0 < n_0_0_0_0 && ((n_0_0_0_0 as real) + 1000.0) / 70.0 == (floor(Real.sqrt((n_0_0_0_0 as real))) as real)))))
  requires 0 < n_0_0_0_0 && ((n_0_0_0_0 as real) + 1000.0) / 70.0 == (floor(Real.sqrt((n_0_0_0_0 as real))) as real) ==> n_0_0_0_0 == 400 || n_0_0_0_0 == 470 || n_0_0_0_0 == 2290 || n_0_0_0_0 == 2360 || n_0_0_0_0 == 2430 || n_0_0_0_0 == 2500
  requires ((n_0_0_0_0 != 400) && (((n_0_0_0_0 != 470) && (((n_0_0_0_0 != 2290) && (((n_0_0_0_0 != 2360) && ((n_0_0_0_0 != 2430) || (n_0_0_0_0 == 2430))) || (n_0_0_0_0 == 2360))) || (n_0_0_0_0 == 2290))) || (n_0_0_0_0 == 470))) || (n_0_0_0_0 == 400)
  requires n_0_0_0_0 == 400 || n_0_0_0_0 == 470 || n_0_0_0_0 == 2290 || n_0_0_0_0 == 2360 || n_0_0_0_0 == 2430 || n_0_0_0_0 == 2500
  requires ((n_0_0_0_0 != 400) && (((n_0_0_0_0 != 470) && (((n_0_0_0_0 != 2290) && (((n_0_0_0_0 != 2360) && ((n_0_0_0_0 != 2430) || (n_0_0_0_0 == 2430))) || (n_0_0_0_0 == 2360))) || (n_0_0_0_0 == 2290))) || (n_0_0_0_0 == 470))) || (n_0_0_0_0 == 400)
  requires ((n_0_0_0_0 == 400) && (((400 != 400) && (((400 != 470) && (((400 != 2290) && (((400 != 2360) && ((400 != 2430) || (400 == 2430))) || (400 == 2360))) || (400 == 2290))) || (400 == 470))) || (400 == 400))) || (n_0_0_0_0 != 400)
  requires ((n_0_0_0_0 == 400) && (400 == 400 || 400 == 470 || 400 == 2290 || 400 == 2360 || 400 == 2430 || 400 == 2500) && (0 < 400) && (70.0 != 0.0) && (((400 as real) + 1000.0) / 70.0 == (floor(Real.sqrt((400 as real))) as real)) && ((0 < 400) || (!(0 < 400))) && (0 < 400) && (((n_0_0_0_0 == 470) && (((470 != 400) && (((470 != 470) && (((470 != 2290) && (((470 != 2360) && ((470 != 2430) || (470 == 2430))) || (470 == 2360))) || (470 == 2290))) || (470 == 470))) || (470 == 400))) || (n_0_0_0_0 != 470))) || ((!(n_0_0_0_0 == 400 && (400 == 400 || 400 == 470 || 400 == 2290 || 400 == 2360 || 400 == 2430 || 400 == 2500))) && (((n_0_0_0_0 == 470) && (((470 != 400) && (((470 != 470) && (((470 != 2290) && (((470 != 2360) && ((470 != 2430) || (470 == 2430))) || (470 == 2360))) || (470 == 2290))) || (470 == 470))) || (470 == 400))) || (n_0_0_0_0 != 470)))
  requires ((n_0_0_0_0 == 470) && (470 == 400 || 470 == 470 || 470 == 2290 || 470 == 2360 || 470 == 2430 || 470 == 2500) && (0 < 470) && (70.0 != 0.0) && (((470 as real) + 1000.0) / 70.0 == (floor(Real.sqrt((470 as real))) as real)) && ((0 < 470) || (!(0 < 470))) && (0 < 470) && (((n_0_0_0_0 == 2290) && (((2290 != 400) && (((2290 != 470) && (((2290 != 2290) && (((2290 != 2360) && ((2290 != 2430) || (2290 == 2430))) || (2290 == 2360))) || (2290 == 2290))) || (2290 == 470))) || (2290 == 400))) || (n_0_0_0_0 != 2290))) || ((!(n_0_0_0_0 == 470 && (470 == 400 || 470 == 470 || 470 == 2290 || 470 == 2360 || 470 == 2430 || 470 == 2500))) && (((n_0_0_0_0 == 2290) && (((2290 != 400) && (((2290 != 470) && (((2290 != 2290) && (((2290 != 2360) && ((2290 != 2430) || (2290 == 2430))) || (2290 == 2360))) || (2290 == 2290))) || (2290 == 470))) || (2290 == 400))) || (n_0_0_0_0 != 2290)))
  requires n_0_0_0_0 == 2290
  requires 2290 == 400 || 2290 == 470 || 2290 == 2290 || 2290 == 2360 || 2290 == 2430 || 2290 == 2500
  requires 0 < 2290
  requires (floor(Real.sqrt(2290.0)) == 47) == ((47 as real) <= Real.sqrt(2290.0) && Real.sqrt(2290.0) < (47 as real) + 1.0)
  ensures   (47 as real) <= Real.sqrt(2290.0)
{
  // K5: Real.le_sqrt (named in Lean's norm_num simp set; rewrote the goal to 47^2 <= 2290)
  RealLeSqrt(47.0, 2290.0);  // [ADDED]
                            // [TACTIC: «_<;>_» [ Real.le_sqrt , Real.sqrt_lt ] norm_num [ Real.le_sqrt , Real.sqrt_lt ] <;> nlinarith [ Real.sqrt_nonneg 2290 , Real.sq_sqrt ( show 0 ≤ ( 2290 : ℝ ) by norm_num norm_num ) , Real.sqrt_nonneg 2290 , Real.sq_sqrt ( show 0 ≤ ( 2290 : ℝ ) by norm_num norm_num ) ] nlinarith [ Real.sqrt_nonneg 2290 , Real.sq_sqrt ( show 0 ≤ ( 2290 : ℝ ) by norm_num norm_num ) , Real.sqrt_nonneg 2290 , Real.sq_sqrt ( show 0 ≤ ( 2290 : ℝ ) by norm_num norm_num ) ]]
                            // [TACTIC: «Norm_num[_]At___» [ Real.le_sqrt , Real.sqrt_lt ]]
                            // UNCITED Real.le_sqrt: no Lean instance recorded (arguments unknown), not guessed
                            // UNCITED Real.sqrt_lt: no Lean instance recorded (arguments unknown), not guessed
                            // UNCITED-APPLIED Nat.cast_zero: cast target unknown (Lean applies it at ℝ and ℤ in this proof; the record does not say which)
                            // `norm_num` closed the goal; the rest of the chain did not run
                            // [TACTIC: «Norm_num[_]At___»]
                            // [TACTIC: «Norm_num[_]At___»]
                            // UNCITED-APPLIED internal ×18 [exec 2356 12759-12796]: applications made inside the tactic's own automation, not stated — Nat.cast_zero ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×5, Mathlib.Meta.NormNum.isNat_le_true ×3, of_eq_true ×1, Eq.trans ×1 (+7 more heads, ×7)
}

