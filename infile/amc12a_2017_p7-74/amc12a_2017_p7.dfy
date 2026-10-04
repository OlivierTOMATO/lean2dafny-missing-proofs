// ════════════════════════════════════════════════════════════
// MECHANICAL TRANSLATION (emitter v2) of ast_cache_v2/amc12a_2017_p7.json
// Each Lean `have` → `assert ... by {}` at the same depth;
// quantified haves → forall statements. Typed pipeline only.
// ════════════════════════════════════════════════════════════

include "../../library/library_new.dfy"

// ──────────────────────────────────────────────────
// R14 — recursive lemma for `induction n` (structural)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} induction_helper_1(f: nat -> real, n: nat)
  requires (f(1) == 2.0)
  requires (forall n: nat :: (((1 < n) && Even(n)) ==> (f(n) == (f(tsub(n, 1)) + 1.0))))
  requires (forall n: nat :: (((1 < n) && Odd(n)) ==> (f(n) == (f(tsub(n, 2)) + 2.0))))
  requires (((n + 1) + 1) > 1)  // ambient have hn
  ensures (f(((n + 1) + 1)) == ((((n + 1) + 1) as real) + 1.0))
  decreases n
{
  if n == 0 {
    if ((((0 + 1) + 1) > 1)) {  // sub-goal before `simp_all` (Lean state)
      // [TACTIC: simpAll [ Nat.succ_eq_add_one , Nat.add_assoc , Nat.add_comm , Nat.add_left_comm ]]
      // UNCITED Nat.succ_eq_add_one: no Lean instance recorded (arguments unknown), not guessed
      // UNCITED Nat.add_assoc: no Lean instance recorded (arguments unknown), not guessed
      // UNCITED Nat.add_comm: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
      // UNCITED Nat.add_left_comm: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
      // UNCITED-APPLIED zero_add ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (1 : ℕ))
      assert (f(((0 + 1) + 1)) == ((((0 + 1) + 1) as real) + 1.0));  // sub-goal before `simp_all` (Lean state) // @tac 1038-1116
      // UNCITED-APPLIED internal ×12 [exec 70 1038-1116]: applications made inside the tactic's own automation, not stated — zero_add ×1; machinery/glue: congrArg ×4, Eq.trans ×3, of_eq_true ×1, congr ×1 (+2 more heads, ×2)
    }
  } else {
    if ((((tsub(n, 1) + 1) + 1) > 1)) { induction_helper_1(f, n - 1); }  // IH under its hypotheses
    var n: nat := n - 1;  // Lean's predecessor binder (succ n)
    if (((((n + 1) + 1) > 1) ==> (f(((n + 1) + 1)) == ((((n + 1) + 1) as real) + 1.0)))) && (((((n + 1) + 1) + 1) > 1)) {  // sub-goal before `cases'` (Lean state)
      // [TACTIC: «_<;>_» Nat.even_or_odd n with h h <;> simp_all [ Nat.succ_eq_add_one , Nat.add_assoc , Nat.add_comm , Nat.add_left_comm , parity_simps ] simp_all [ Nat.succ_eq_add_one , Nat.add_assoc , Nat.add_comm , Nat.add_left_comm , parity_simps ] simp_all [ Nat.succ_eq_add_one , Nat.add_assoc , Nat.add_comm , Nat.add_left_comm , parity_simps ] <;> linarith linarith]
      // [TACTIC: Cases'_With Nat.even_or_odd n with h h]
      NatEvenOrOdd(n);  // cite: Nat.even_or_odd
      if (Even(n)) {  // sub-goal of `simp_all` (Lean state)
        // UNCITED Nat.succ_eq_add_one: no Lean instance recorded (arguments unknown), not guessed
        // UNCITED Nat.add_assoc: no Lean instance recorded (arguments unknown), not guessed
        // UNCITED Nat.add_comm: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances here: (n := n + (1 : ℕ), m := (1 : ℕ)); (n := n + (2 : ℕ), m := (1 : ℕ))
        // UNCITED Nat.add_left_comm: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances here: (n := (1 : ℕ), m := n, k := (1 : ℕ)); (n := (1 : ℕ), m := n, k := (2 : ℕ))
        NatCastAdd(n, 2);  // cite: Nat.cast_add [applied by the tactic, not named in it]
        NatCastAdd(n, 3);  // cite: Nat.cast_add [applied by the tactic, not named in it]
        // UNCITED parity_simps: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
        assert (forall n: nat :: ((1 < n) ==> (Even(n) ==> (f(n) == (f(tsub(n, 1)) + 1.0)))));  // hypothesis h₁ after `simp_all` (Lean state) // @tac-hyp 1180-1272
        assert (forall n: nat :: ((1 < n) ==> (!(Even(n)) ==> (f(n) == (f(tsub(n, 2)) + 2.0)))));  // hypothesis h₂ after `simp_all` (Lean state) // @tac-hyp 1180-1272
        assert (f((n + 1)) == ((n as real) + 2.0));  // hypothesis ih after `simp_all` (Lean state) // @tac-hyp 1180-1272
        assert ((((n as real) + 2.0) + 2.0) == (((n as real) + 3.0) + 1.0)) by {  // sub-goal of `linarith` (Lean state) // @tac 1283-1291
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
          // UNCITED-APPLIED internal ×60 [exec 105 1283-1291]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2; machinery/glue: Mathlib.Tactic.Ring.add_congr ×4, Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Meta.NormNum.IsNat.of_raw ×4, Mathlib.Tactic.Ring.cast_pos ×3 (+27 more heads, ×43) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
        }
        assert (f((((n + 1) + 1) + 1)) == (((((n + 1) + 1) + 1) as real) + 1.0));  // sub-goal of `simp_all` (Lean state) // @tac 1180-1272
        // UNCITED-APPLIED internal ×28 [exec 93 1180-1272]: applications made inside the tactic's own automation, not stated — Nat.add_comm ×2, Nat.add_left_comm ×2, or_true ×1, Nat.add_sub_assoc ×1, implies_congr_ctx ×1, true_implies ×1; machinery/glue: congrArg ×6, Eq.trans ×6, congr ×2, forall_congr ×2 (+4 more heads, ×4) (cited in this block, not counted here: Nat.cast_add [Lean recorded ×2])
      }
      if (Odd(n)) {  // sub-goal of `simp_all` (Lean state)
        // UNCITED Nat.succ_eq_add_one: no Lean instance recorded (arguments unknown), not guessed
        // UNCITED Nat.add_assoc: no Lean instance recorded (arguments unknown), not guessed
        // UNCITED Nat.add_comm: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances here: (n := n + (1 : ℕ), m := (1 : ℕ)); (n := n + (2 : ℕ), m := (1 : ℕ))
        // UNCITED Nat.add_left_comm: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances here: (n := (1 : ℕ), m := n, k := (1 : ℕ)); (n := (1 : ℕ), m := n, k := (2 : ℕ))
        NatCastAdd(n, 3);  // cite: Nat.cast_add [applied by the tactic, not named in it]
        NatCastAdd(n, 2);  // cite: Nat.cast_add [applied by the tactic, not named in it]
        // UNCITED parity_simps: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
        assert (forall n: nat :: ((1 < n) ==> (Even(n) ==> (f(n) == (f(tsub(n, 1)) + 1.0)))));  // hypothesis h₁ after `simp_all` (Lean state) // @tac-hyp 1180-1272
        assert (forall n: nat :: ((1 < n) ==> (!(Even(n)) ==> (f(n) == (f(tsub(n, 2)) + 2.0)))));  // hypothesis h₂ after `simp_all` (Lean state) // @tac-hyp 1180-1272
        assert ((f(n) + 2.0) == (((n as real) + 2.0) + 1.0));  // hypothesis ih after `simp_all` (Lean state) // @tac-hyp 1180-1272
        assert !(Even(n));  // hypothesis h after `simp_all` (Lean state) // @tac-hyp 1180-1272
        assert ((((n as real) + 2.0) + 1.0) == ((n as real) + 3.0)) by {  // sub-goal of `linarith` (Lean state) // @tac 1283-1291
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
          NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
          // UNCITED-APPLIED internal ×55 [exec 110 1283-1291]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Tactic.Ring.add_congr ×3, Mathlib.Tactic.Ring.cast_pos ×3, Mathlib.Meta.NormNum.IsNat.of_raw ×3 (+27 more heads, ×40) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
        }
        vc_amc12a_2017_p7_L74(f, __outer_n, n_1_0, __outer_n - 1, n, n_1_1_1_2);  /* [IN-FILE CHECK] the closed lemma for line 74 */
        assert (f((((n + 1) + 1) + 1)) == (((((n + 1) + 1) + 1) as real) + 1.0));  // sub-goal of `simp_all` (Lean state) // @tac 1180-1272
        // UNCITED-APPLIED internal ×27 [exec 96 1180-1272]: applications made inside the tactic's own automation, not stated — Nat.add_comm ×2, Nat.add_left_comm ×2, or_true ×1, add_tsub_cancel_right ×1, implies_congr_ctx ×1, true_implies ×1; machinery/glue: Eq.trans ×6, congrArg ×6, congr ×2, forall_congr ×2 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_add [Lean recorded ×2])
      }
      assert (f((((n + 1) + 1) + 1)) == (((((n + 1) + 1) + 1) as real) + 1.0));  // sub-goal before `cases'` (Lean state) // @tac 1142-1291 // @tac 1142-1272 // @tac 1142-1175
    }
  }
}

// ──────────────────────────────────────────────────
// certificate identity for `result`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_1(f: nat -> real)
  ensures (-((f(2017) - (2017.0 + 1.0))) + (f(2017) - 2018.0)) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `result`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_2(f: nat -> real)
  ensures ((f(2017) - (2017.0 + 1.0)) + (2018.0 - f(2017))) == 0.0
{ }

// statement: Lean elaborated type (v3, stmt_cache) — requires/ensures below
lemma amc12a_2017_p7(f: nat -> real)
  requires (f(1) == 2.0)
  requires (forall n: nat :: (((1 < n) && Even(n)) ==> (f(n) == (f(tsub(n, 1)) + 1.0))))
  requires (forall n: nat :: (((1 < n) && Odd(n)) ==> (f(n) == (f(tsub(n, 2)) + 2.0))))
  ensures (f(2017) == 2018.0) // @tac 640-837 // @tac 843-1291 // @tac 1297-1470 // @tac 1476-2207 // @tac 2307-2319
{
  // have base_case : f ( 1 ) == 2  [type from Lean state]
  assert (f(1) == 2.0); // @tac 735-837 // @tac 735-762
  // UNCITED-APPLIED internal ×4 [exec 25 735-762]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, Eq.trans ×1, congrArg ×1, eq_self ×1
    // [TACTIC: «_<;>_» [ Nat.lt_succ_self ] simp_all [ Nat.lt_succ_self ] simp_all [ Nat.lt_succ_self ] <;> linarith linarith]
    // [TACTIC: simpAll [ Nat.lt_succ_self ]]
    // UNCITED Nat.lt_succ_self: no Lean instance recorded (arguments unknown), not guessed
    // `simp_all` closed the goal; the rest of the chain did not run
  // have inductive_step : forall n :: n > 1 -> f ( n ) == n + 1  [type from Lean state]
  forall n: nat | (n > 1) // @tac 904-914
    ensures (f(n) == ((n as real) + 1.0)) // @tac 919-934
  {
    // [TACTIC: intro n hn]
    // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
    // UNCITED-APPLIED Eq.symm ×1: 1 of Lean's 2 recorded instances here have no statement above (which ones is not decided) — Lean's instances: Eq.symm(n, (0 : ℕ)); Eq.symm(n✝, n + (1 : ℕ)) [exec 53 919-934]
    // cases n (zero / succ)
    if n == 0 {
      if ((0 > 1)) {  // sub-goal before `contradiction` (Lean state)
        // [TACTIC: contradiction]
        assert (f(0) == ((0 as real) + 1.0));  // sub-goal before `contradiction` (Lean state) // @tac 942-955 // @tac 939-955
        // UNCITED-APPLIED internal ×1 [exec 58 942-955]: applications made inside the tactic's own automation, not stated — of_decide_eq_false ×1
      }
    } else {
      var n: nat := n - 1;
      if (((n + 1) > 1)) {  // sub-goal before `cases'` (Lean state)
        // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
        // UNCITED-APPLIED Eq.symm ×1: 1 of Lean's 2 recorded instances here have no statement above (which ones is not decided) — Lean's instances: Eq.symm(n, (0 : ℕ)); Eq.symm(n✝, n + (1 : ℕ)) [exec 59 960-975]
        // cases n (zero / succ)
        if n == 0 {
          if (((0 + 1) > 1)) {  // sub-goal before `contradiction` (Lean state)
            // [TACTIC: contradiction]
            assert (f((0 + 1)) == (((0 + 1) as real) + 1.0));  // sub-goal before `contradiction` (Lean state) // @tac 983-996 // @tac 980-996
            // UNCITED-APPLIED internal ×1 [exec 64 983-996]: applications made inside the tactic's own automation, not stated — of_decide_eq_false ×1
          }
        } else {
          var n: nat := n - 1;
          if ((((n + 1) + 1) > 1)) {  // sub-goal before `induction` (Lean state)
            // induction n → recursive lemma induction_helper_1
            induction_helper_1(f, n);
            assert (f(((n + 1) + 1)) == ((((n + 1) + 1) as real) + 1.0));  // sub-goal before `induction` (Lean state) // @tac 1001-1291
          }
        }
        assert (f((n + 1)) == (((n + 1) as real) + 1.0));  // sub-goal before `cases'` (Lean state) // @tac 960-975
      }
    }
  }
  // have f_2017 : f ( 2017 ) == 2017 + 1  [type from Lean state]
  assert (f(2017) == (2017.0 + 1.0)) by { // @tac 1397-1470
    assert (2017 > 1) by {  // sub-goal of `by` (Lean state) // @tac 1461-1469
      // [TACTIC: «Norm_num[_]At___»]
      // UNCITED-APPLIED internal ×5 [exec 134 1461-1469]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1
    }
    // [TACTIC: simpa [ Nat.even_iff , Nat.odd_iff ] using inductive_step 2017 ( by norm_num norm_num )]
    assert (f(2017) == ((2017 as real) + 1.0));  // instance of inductive_step (Lean state)
    // UNCITED Nat.even_iff: no Lean instance recorded (arguments unknown), not guessed
    // UNCITED Nat.odd_iff: no Lean instance recorded (arguments unknown), not guessed
  }
  // have result : f ( 2017 ) == 2018  [type from Lean state]
  assert (f(2017) == 2018.0) by { // @tac 1618-1647 // @tac 1652-1681 // @tac 1686-1703 // @tac 1803-1822 // @tac 1827-1846 // @tac 1851-1868 // @tac 2199-2207
    // have h₃ :   [type from Lean state]
    assert ((1 > 1) ==> (f(1) == ((1 as real) + 1.0))) by {
      // [TACTIC: exact inductive_step ( 1 )]
      assert ((1 > 1) ==> (f(1) == ((1 as real) + 1.0)));  // instance of inductive_step (Lean state)
    }
    // have h₄ :   [type from Lean state]
    assert ((2 > 1) ==> (f(2) == ((2 as real) + 1.0))) by {
      // [TACTIC: exact inductive_step ( 2 )]
      assert ((2 > 1) ==> (f(2) == ((2 as real) + 1.0)));  // instance of inductive_step (Lean state)
    }
    // [TACTIC: simp at h₃ h₄]
    assert (f(2) == (2.0 + 1.0));  // hypothesis h₄ after `simp` (Lean state) // @tac-hyp 1686-1703
    // have h₅ :   [type from Lean state]
    assert (((1 < 2) && Odd(2)) ==> (f(2) == (f(tsub(2, 2)) + 2.0))) by {
      // [TACTIC: exact h₂ ( 2 )]
      assert (((1 < 2) && Odd(2)) ==> (f(2) == (f(tsub(2, 2)) + 2.0)));  // instance of h₂ (Lean state)
    }
    // have h₆ :   [type from Lean state]
    assert (((1 < 2) && Even(2)) ==> (f(2) == (f(tsub(2, 1)) + 1.0))) by {
      // [TACTIC: exact h₁ ( 2 )]
      assert (((1 < 2) && Even(2)) ==> (f(2) == (f(tsub(2, 1)) + 1.0)));  // instance of h₁ (Lean state)
    }
    // [TACTIC: simp at h₅ h₆]
    assert (f(2) == (f(1) + 1.0));  // hypothesis h₆ after `simp` (Lean state) // @tac-hyp 1851-1868
    // [TACTIC: «Linarith[_]At___»]
    // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 2199-2207 exec 201)
    cert_identity_1(f);  // cert: Linarith.lt_of_eq_of_lt
    cert_identity_2(f);  // cert: Linarith.lt_of_eq_of_lt
    // UNCITED-APPLIED internal ×11 [exec 201 2199-2207]: applications made inside the tactic's own automation, not stated — sub_neg_of_lt ×2, neg_eq_zero ×1, sub_eq_zero_of_eq ×1; machinery/glue: congrArg ×2, Linarith.lt_of_eq_of_lt ×2, Linarith.eq_of_not_lt_of_not_gt ×1, Not.intro ×1 (+1 more heads, ×1)
    // UNCITED-APPLIED internal ×51 [exec 202 2199-2207]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Tactic.Ring.cast_pos ×3, Mathlib.Meta.NormNum.IsNat.of_raw ×3, Mathlib.Tactic.Ring.neg_add ×3 (+24 more heads, ×38) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
    // UNCITED-APPLIED internal ×48 [exec 203 2199-2207]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×4, Mathlib.Tactic.Ring.cast_pos ×3, Mathlib.Meta.NormNum.IsNat.of_raw ×3, Mathlib.Tactic.Ring.add_congr ×2 (+24 more heads, ×36) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
    NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 202, 203)]
    NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`ring1` exec 202, 203)]
  }
  // [TACTIC: exact result]
}



// ===== closed lemma for line 74 (from closed/amc12a_2017_p7-74.dfy) =====

lemma {:induction false} vc_amc12a_2017_p7_L74(f: nat -> real, n: nat, n_1_0: int, n_1_0_0: int, n_1_1_1_0: int, n_1_1_1_2: int)
  requires 0 <= n
  requires 0 <= n_1_0
  requires f(1) == 2.0
  requires forall n_2: nat :: 1 < n_2 && Even(n_2) ==> f(n_2) == f(tsub(n_2, 1)) + 1.0
  requires forall n_4: nat :: 1 < n_4 && Odd(n_4) ==> f(n_4) == f(tsub(n_4, 2)) + 2.0
  requires n + 1 + 1 > 1
  requires n != 0
  requires 0 <= 1
  requires 0 <= n - 1
  requires n_1_0_0 == n - 1
  requires ((n_1_0_0 + 1 + 1 > 1) && (0 <= n_1_0_0 + 1 + 1) && ((n_1_0_0 + 1 + 1 > 1 ==> f(n_1_0_0 + 1 + 1) == ((n_1_0_0 + 1 + 1) as real) + 1.0) || (!(n_1_0_0 + 1 + 1 > 1 ==> f(n_1_0_0 + 1 + 1) == ((n_1_0_0 + 1 + 1) as real) + 1.0)))) || ((1 >= n_1_0_0 + 1 + 1) && ((n_1_0_0 + 1 + 1 > 1 ==> f(n_1_0_0 + 1 + 1) == ((n_1_0_0 + 1 + 1) as real) + 1.0) || (!(n_1_0_0 + 1 + 1 > 1 ==> f(n_1_0_0 + 1 + 1) == ((n_1_0_0 + 1 + 1) as real) + 1.0))))
  requires n_1_0_0 + 1 + 1 > 1 ==> f(n_1_0_0 + 1 + 1) == ((n_1_0_0 + 1 + 1) as real) + 1.0
  requires n_1_0_0 + 1 + 1 + 1 > 1
  requires Even(n_1_0_0) || Odd(n_1_0_0)
  requires Odd(n_1_0_0)
  requires 0 <= 3
  requires ((n_1_0_0 + 3) as real) == (n_1_0_0 as real) + (3 as real)
  requires 0 <= 2
  requires ((n_1_0_0 + 2) as real) == (n_1_0_0 as real) + (2 as real)
  requires ((0 <= n_1_1_1_0) && (((1 < n_1_1_1_0) && (((Even(n_1_1_1_0)) && (0 <= 1)) || (!Even(n_1_1_1_0)))) || (n_1_1_1_0 <= 1))) || (n_1_1_1_0 < 0)
  requires forall n_1_1_1_1: nat :: 1 < n_1_1_1_1 ==> Even(n_1_1_1_1) ==> f(n_1_1_1_1) == f(tsub(n_1_1_1_1, 1)) + 1.0
  requires ((0 <= n_1_1_1_2) && (((1 < n_1_1_1_2) && (((!Even(n_1_1_1_2)) && (0 <= 2)) || (Even(n_1_1_1_2)))) || (n_1_1_1_2 <= 1))) || (n_1_1_1_2 < 0)
  requires forall n_1_1_1_3: nat :: 1 < n_1_1_1_3 ==> !Even(n_1_1_1_3) ==> f(n_1_1_1_3) == f(tsub(n_1_1_1_3, 2)) + 2.0
  requires f(n_1_0_0) + 2.0 == (n_1_0_0 as real) + 2.0 + 1.0
  requires !Even(n_1_0_0)
  requires (n_1_0_0 as real) + 2.0 + 1.0 == (n_1_0_0 as real) + 3.0
  requires 0 <= n_1_0_0 + 1 + 1 + 1
  ensures   f(n_1_0_0 + 1 + 1 + 1) == ((n_1_0_0 + 1 + 1 + 1) as real) + 1.0
{
  assert f(n_1_0_0 + 1 + 1 + 1) == f(tsub(n_1_0_0 + 1 + 1 + 1, 1)) + 1.0;  // [ADDED]
}

