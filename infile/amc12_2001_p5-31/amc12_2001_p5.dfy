// ════════════════════════════════════════════════════════════
// MECHANICAL TRANSLATION (emitter v2) of ast_cache_v2/amc12_2001_p5.json
// Each Lean `have` → `assert ... by {}` at the same depth;
// quantified haves → forall statements. Typed pipeline only.
// ════════════════════════════════════════════════════════════

include "../../library/library_new.dfy"

// statement: Lean elaborated type (v3, stmt_cache) — requires/ensures below
lemma amc12_2001_p5()
  ensures (Int.prod((set x: nat | x in range(10000) && (!Even(x))), ((x_1: nat) => x_1)) == NatDiv(factorial(10000), (Int.pow(2, 5000) * factorial(5000)))) // @tac 620-887 // @tac 893-1756 // @tac 1762-1774
{
  // have h_main : 2 ^ 5000 * 5000 ! ∣ 10000 !  [type from Lean state]
  assert NatDvd((Int.pow(2, 5000) * factorial(5000)), factorial(10000)) by { // @tac 672-872 // @tac 877-887
    // have h₁ : 2 ^ 5000 * 5000 ! ∣ 10000 !  [type from Lean state]
    assert NatDvd((Int.pow(2, 5000) * factorial(5000)), factorial(10000)) by { // @tac 834-862
      // [TACTIC: apply Nat.dvd_of_mod_eq_zero]
      assert (NatMod(factorial(10000), (Int.pow(2, 5000) * factorial(5000))) == 0) by {  // sub-goal before `rfl` (Lean state) // @tac 869-872
        // [TACTIC: Rfl]
      }
      assert (NatMod((factorial(10000)), ((Int.pow(2, 5000) * factorial(5000)))) == 0);  // precondition of NatDvdOfModEqZero (Lean: Nat.dvd_of_mod_eq_zero; `apply`: proved by the steps above)
      NatDvdOfModEqZero((Int.pow(2, 5000) * factorial(5000)), factorial(10000));  // cite: Nat.dvd_of_mod_eq_zero
    }
    // [TACTIC: exact h₁]
    assert NatDvd((Int.pow(2, 5000) * factorial(5000)), factorial(10000));
  }
  // have h_prod : Finset.prod ( ( Finset.filter ( (  ) , ( Finset.range ( 10000 ) ) ) )   [type from Lean state]
  assert (Int.prod((set x: nat | x in range(10000) && (!Even(x))), ((x: nat) => x)) == NatDiv(factorial(10000), (Int.pow(2, 5000) * factorial(5000)))) by { // @tac 1035-1741 // @tac 1746-1756
    // have h₁ : Finset.prod ( ( Finset.filter ( (  ) , ( Finset.range ( 10000 ) ) ) )   [type from Lean state]
    assert (Int.prod((set x: nat | x in range(10000) && (!Even(x))), ((x: nat) => x)) == NatDiv(factorial(10000), (Int.pow(2, 5000) * factorial(5000)))) by { // @tac 1177-1614
      assert ((set x: nat | x in range(10000) && (!Even(x))) == (set x: nat | x in range(10000) && ((x % 2) == 1))) by {  // sub-goal of `by` (Lean state) // @tac 1310-1315
        // [TACTIC: congr]
        // UNCITED-APPLIED Subsingleton.elim: no library counterpart (not stated) [exec 83 1310-1315]
        // GAP: before-goal of `ext` not stated: does not render: (fun (x : ℕ) => ¬Even x) = fun (x : ℕ) => x % (2 : ℕ) = (1 : ℕ) // @tac 1324-1329
        // UNCITED-APPLIED funext(fun (x : ℕ) => Prop, fun (x : ℕ) => ¬Even x, fun (x : ℕ) => x % (2 : ℕ) = (1 : ℕ)): no library counterpart (not stated) [exec 84 1324-1329]
        // [TACTIC: ext x]  (lowered: its recorded pointwise goal)
        forall x: nat
          ensures (!(Even(x)) <==> ((x % 2) == 1))  // sub-goal of `ext` (Lean state) // @tac 1338-1606 // @tac 1338-1582 // @tac 1338-1413 // @tac 1338-1381
        {
          // [TACTIC: «_<;>_» [ Nat.even_iff , Nat.mod_eq_zero_of_dvd ] simp [ Nat.even_iff , Nat.mod_eq_zero_of_dvd ] simp [ Nat.even_iff , Nat.mod_eq_zero_of_dvd ] <;> ( try omega omega ) <;> ( try { cases' mod_two_eq_zero_or_one x with h h <;> simp [ h , Nat.even_iff , Nat.dvd_iff_mod_eq_zero ] simp [ h , Nat.even_iff , Nat.dvd_iff_mod_eq_zero ] simp [ h , Nat.even_iff , Nat.dvd_iff_mod_eq_zero ] <;> omega omega } ) <;> ( try omega omega )]
          // [TACTIC: simp [ Nat.even_iff , Nat.mod_eq_zero_of_dvd ]]
          // UNCITED Nat.even_iff: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED Nat.mod_eq_zero_of_dvd: no Lean instance recorded (arguments unknown), not guessed
          // `simp` closed the goal; the rest of the chain did not run
          // [TACTIC: omega]
          // [TACTIC: SeqBracketed cases' mod_two_eq_zero_or_one x with h h <;> simp [ h , Nat.even_iff , Nat.dvd_iff_mod_eq_zero ] simp [ h , Nat.even_iff , Nat.dvd_iff_mod_eq_zero ] simp [ h , Nat.even_iff , Nat.dvd_iff_mod_eq_zero ] <;> omega omega }]
          // NOT APPLIED Nat.even_iff: named here, but no record of Lean's proof at this tactic applies it
          // NOT APPLIED Nat.dvd_iff_mod_eq_zero: named here, but no record of Lean's proof at this tactic applies it
          // [TACTIC: omega]
        }
        assert forall x_1_0_0_0_1: nat :: true ==> !Even(x_1_0_0_0_1) == (x_1_0_0_0_1 % 2 == 1);  /* [IN-FILE CHECK] requires 1 of vc_amc12_2001_p5_L31 */
        vc_amc12_2001_p5_L31();  /* [IN-FILE CHECK] the closed lemma for line 31 */
      }
      // [TACTIC: rwSeq [ show Finset.filter ( fun x => ¬ Even x ) ( Finset.range 10000 ) = Finset.filter ( fun x => x % 2 = 1 ) ( Finset.range 10000 ) by congr ext x simp [ Nat.even_iff , Nat.mod_eq_zero_of_dvd ] simp [ Nat.even_iff , Nat.mod_eq_zero_of_dvd ] simp [ Nat.even_iff , Nat.mod_eq_zero_of_dvd ] <;> ( try omega omega ) <;> ( try { cases' mod_two_eq_zero_or_one x with h h <;> simp [ h , Nat.even_iff , Nat.dvd_iff_mod_eq_zero ] simp [ h , Nat.even_iff , Nat.dvd_iff_mod_eq_zero ] simp [ h , Nat.even_iff , Nat.dvd_iff_mod_eq_zero ] <;> omega omega } ) <;> ( try omega omega ) ]]
      assert (Int.prod((set x: nat | x in range(10000) && ((x % 2) == 1)), ((x: nat) => x)) == NatDiv(factorial(10000), (Int.pow(2, 5000) * factorial(5000)))) by {  // sub-goal before `rfl` (Lean state) // @tac 1738-1741
        // [TACTIC: Rfl]
      }
      // UNCITED-APPLIED congrArg(Finset.filter (fun (x : ℕ) => ¬Even x) (Finset.range (10000 : ℕ)), Finset.filter (fun (x : ℕ) => x % (2 : ℕ) = (1 : ℕ)) (Finset.range (1…, fun (_a : Finset ℕ) => Finset.prod _a id = (10000 : ℕ)! / ((2 : ℕ) ^ …): no library counterpart (not stated) [exec 76 1177-1614]
      // UNCITED-APPLIED internal ×5 [exec 100 1338-1381]: applications made inside the tactic's own automation, not stated — machinery/glue: congrArg ×2, of_eq_true ×1, Eq.trans ×1, iff_self ×1
    }
    // [TACTIC: exact h₁]
    assert (Int.prod((set x: nat | x in range(10000) && (!Even(x))), ((x: nat) => x)) == NatDiv(factorial(10000), (Int.pow(2, 5000) * factorial(5000))));
  }
  // [TACTIC: apply h_prod]
}



// ===== closed lemma for line 31 (from closed/amc12_2001_p5-31.dfy) =====

lemma {:induction false} vc_amc12_2001_p5_L31()
  // pass2: dropped hypothesis (factorial/pow term, Z3 unfolds it -> out of resource): 0 <= 5000
  // pass2: dropped hypothesis (factorial/pow term, Z3 unfolds it -> out of resource): 0 <= Int.pow(2, 5000) * factorial(5000)
  // pass2: dropped hypothesis (factorial/pow term, Z3 unfolds it -> out of resource): 0 <= 10000
  // pass2: dropped hypothesis (factorial/pow term, Z3 unfolds it -> out of resource): NatDvd(Int.pow(2, 5000) * factorial(5000), factorial(10000))
  requires forall x_1_0_0_0_1: nat :: true ==> !Even(x_1_0_0_0_1) == (x_1_0_0_0_1 % 2 == 1)
  ensures   (set y_1: nat | y_1 in range(10000) && !Even(y_1)) == (set y_1_0_7: nat | y_1_0_7 in range(10000) && y_1_0_7 % 2 == 1)
{
        // [TACTIC: congr]
        // UNCITED-APPLIED Subsingleton.elim: no library counterpart (not stated) [exec 83 1310-1315]
        // GAP: before-goal of `ext` not stated: does not render: (fun (x : ℕ) => ¬Even x) = fun (x : ℕ) => x % (2 : ℕ) = (1 : ℕ) // @tac 1324-1329
        // UNCITED-APPLIED funext(fun (x : ℕ) => Prop, fun (x : ℕ) => ¬Even x, fun (x : ℕ) => x % (2 : ℕ) = (1 : ℕ)): no library counterpart (not stated) [exec 84 1324-1329]
        // [TACTIC: ext x]  (lowered: its recorded pointwise goal)
        forall x_1_0_0: nat
          ensures (!(Even(x_1_0_0)) <==> ((x_1_0_0 % 2) == 1))  // sub-goal of `ext` (Lean state) // @tac 1338-1606 // @tac 1338-1582 // @tac 1338-1413 // @tac 1338-1381
        {
          // [TACTIC: «_<;>_» [ Nat.even_iff , Nat.mod_eq_zero_of_dvd ] simp [ Nat.even_iff , Nat.mod_eq_zero_of_dvd ] simp [ Nat.even_iff , Nat.mod_eq_zero_of_dvd ] <;> ( try omega omega ) <;> ( try { cases' mod_two_eq_zero_or_one x with h h <;> simp [ h , Nat.even_iff , Nat.dvd_iff_mod_eq_zero ] simp [ h , Nat.even_iff , Nat.dvd_iff_mod_eq_zero ] simp [ h , Nat.even_iff , Nat.dvd_iff_mod_eq_zero ] <;> omega omega } ) <;> ( try omega omega )]
          // [TACTIC: simp [ Nat.even_iff , Nat.mod_eq_zero_of_dvd ]]
          // UNCITED Nat.even_iff: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED Nat.mod_eq_zero_of_dvd: no Lean instance recorded (arguments unknown), not guessed
          // `simp` closed the goal; the rest of the chain did not run
          // [TACTIC: omega]
          // [TACTIC: SeqBracketed cases' mod_two_eq_zero_or_one x with h h <;> simp [ h , Nat.even_iff , Nat.dvd_iff_mod_eq_zero ] simp [ h , Nat.even_iff , Nat.dvd_iff_mod_eq_zero ] simp [ h , Nat.even_iff , Nat.dvd_iff_mod_eq_zero ] <;> omega omega }]
          // NOT APPLIED Nat.even_iff: named here, but no record of Lean's proof at this tactic applies it
          // NOT APPLIED Nat.dvd_iff_mod_eq_zero: named here, but no record of Lean's proof at this tactic applies it
          // [TACTIC: omega]
        }
        // pass2: Finset.ext pointwise (the forall above), via named sets
        ghost var S1 := set y_1: nat | y_1 in range(10000) && !Even(y_1);  // [ADDED DECLARATION]
        ghost var S2 := set y_1_0_7: nat | y_1_0_7 in range(10000) && y_1_0_7 % 2 == 1;  // [ADDED DECLARATION]
        assert forall o: nat :: o in S1 <==> o in S2;
        assert S1 == S2;
}
