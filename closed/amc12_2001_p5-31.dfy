// NOT CLOSED — failing line amc12_2001_p5-31: theorem amc12_2001_p5, Dafny line 31 (OOR: Verification out of resource (amc12_2001_p5))
// failing Dafny line: assert ((set x: nat | x in range(10000) && (!Even(x))) == (set x: nat | x in range(10000) && ((x % 2) == 1))) by {
// Lean step: congr
// hypotheses: 6 facts Z3 had at the line; nothing assumed beyond the facts in scope
// not closed: tried H0=oor; this file is the honest base attempt
// Dafny: finished with 63 verified, 0 errors, 2 out of resource  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12_2001_p5.dfy"
lemma {:induction false} vc_amc12_2001_p5_L31(x_1_0_0: int, x_1_0_2: int)
  requires 0 <= 5000
  requires 0 <= Int.pow(2, 5000) * factorial(5000)
  requires 0 <= 10000
  requires NatDvd(Int.pow(2, 5000) * factorial(5000), factorial(10000))
  requires forall x_1_0_0_0_1: nat :: true ==> !Even(x_1_0_0_0_1) == (x_1_0_0_0_1 % 2 == 1)
  requires ((0 <= x_1_0_0) && (x_1_0_0 in range(10000)) && (!Even(x_1_0_0)) && (0 <= x_1_0_2) && (x_1_0_2 in range(10000)) && (x_1_0_2 % 2 == 1)) || ((0 <= x_1_0_0) && (x_1_0_0 in range(10000)) && (!Even(x_1_0_0)) && (0 <= x_1_0_2) && (x_1_0_2 in range(10000)) && (!(x_1_0_2 in range(10000) && x_1_0_2 % 2 == 1))) || ((0 <= x_1_0_0) && (x_1_0_0 in range(10000)) && (!Even(x_1_0_0)) && (0 <= x_1_0_2) && (!(x_1_0_2 in range(10000))) && (!(x_1_0_2 in range(10000) && x_1_0_2 % 2 == 1))) || ((0 <= x_1_0_0) && (x_1_0_0 in range(10000)) && (!Even(x_1_0_0)) && (x_1_0_2 < 0)) || ((0 <= x_1_0_0) && (x_1_0_0 in range(10000)) && (!(x_1_0_0 in range(10000) && !Even(x_1_0_0))) && (0 <= x_1_0_2) && (x_1_0_2 in range(10000)) && (x_1_0_2 % 2 == 1)) || ((0 <= x_1_0_0) && (x_1_0_0 in range(10000)) && (!(x_1_0_0 in range(10000) && !Even(x_1_0_0))) && (0 <= x_1_0_2) && (x_1_0_2 in range(10000)) && (!(x_1_0_2 in range(10000) && x_1_0_2 % 2 == 1))) || ((0 <= x_1_0_0) && (x_1_0_0 in range(10000)) && (!(x_1_0_0 in range(10000) && !Even(x_1_0_0))) && (0 <= x_1_0_2) && (!(x_1_0_2 in range(10000))) && (!(x_1_0_2 in range(10000) && x_1_0_2 % 2 == 1))) || ((0 <= x_1_0_0) && (x_1_0_0 in range(10000)) && (!(x_1_0_0 in range(10000) && !Even(x_1_0_0))) && (x_1_0_2 < 0)) || ((0 <= x_1_0_0) && (!(x_1_0_0 in range(10000))) && (!(x_1_0_0 in range(10000) && !Even(x_1_0_0))) && (0 <= x_1_0_2) && (x_1_0_2 in range(10000)) && (x_1_0_2 % 2 == 1)) || ((0 <= x_1_0_0) && (!(x_1_0_0 in range(10000))) && (!(x_1_0_0 in range(10000) && !Even(x_1_0_0))) && (0 <= x_1_0_2) && (x_1_0_2 in range(10000)) && (!(x_1_0_2 in range(10000) && x_1_0_2 % 2 == 1))) || ((0 <= x_1_0_0) && (!(x_1_0_0 in range(10000))) && (!(x_1_0_0 in range(10000) && !Even(x_1_0_0))) && (0 <= x_1_0_2) && (!(x_1_0_2 in range(10000))) && (!(x_1_0_2 in range(10000) && x_1_0_2 % 2 == 1))) || ((0 <= x_1_0_0) && (!(x_1_0_0 in range(10000))) && (!(x_1_0_0 in range(10000) && !Even(x_1_0_0))) && (x_1_0_2 < 0)) || ((x_1_0_0 < 0) && (0 <= x_1_0_2) && (x_1_0_2 in range(10000)) && (x_1_0_2 % 2 == 1)) || ((x_1_0_0 < 0) && (0 <= x_1_0_2) && (x_1_0_2 in range(10000)) && (!(x_1_0_2 in range(10000) && x_1_0_2 % 2 == 1))) || ((x_1_0_0 < 0) && (0 <= x_1_0_2) && (!(x_1_0_2 in range(10000))) && (!(x_1_0_2 in range(10000) && x_1_0_2 % 2 == 1))) || ((x_1_0_0 < 0) && (x_1_0_2 < 0))
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
}

