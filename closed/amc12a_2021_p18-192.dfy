// CLOSED LEMMA for failing line amc12a_2021_p18-192 (theorem amc12a_2021_p18, Dafny line 192, ERR)
// closes with: K2 (computation) — single
// added: NatPrimeDefLt(11) [Mathlib Nat.prime_def_lt added to work copy]; Z3 then checks the 11 divisibility cases by computation (Lean: decide, of_decide_eq_true)
// Dafny: finished with 5 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_020/amc12a_2021_p18-192/K2.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 192 of amc12a_2021_p18 (ERR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../../wt_integ5/out/amc12a_2021_p18.dfy"

// ========================================================================================
// FAILING LINE 192 (ERR) in amc12a_2021_p18: assertion might not hold
//   dafny |     assert prime(11); // @tac 1860-1866
//   statement kind: have / step assertion
//   @tac 1860-1866 | Lean: decide
//        before-goal ⊢ Nat.Prime (11 : ℕ)
// Lean have h₅₁, Lean lines 42-42:
//   lean  |     have h₅₁ : Nat.Prime 11 := by decide

// 1 path(s) merged (paths); 11 shared facts; 1 distinct path conditions

// Library extension (work copy only). Lean (Mathlib): theorem Nat.prime_def_lt {p : ℕ} :
//   Nat.Prime p ↔ 2 ≤ p ∧ ∀ m < p, m ∣ p → m = 1   (the ← direction; ∣ is NatDvd)
lemma {:axiom} NatPrimeDefLt(p: nat)
  requires 2 <= p
  requires forall m: nat :: m < p ==> NatDvd(m, p) ==> m == 1
  ensures prime(p)

lemma {:induction false} vc_amc12a_2021_p18_L192_K2(f: Rat.rat -> real)
  requires forall x_1: Rat.rat :: Rat.gt(x_1, Rat.of_int(0)) ==> (forall y_2: Rat.rat :: Rat.gt(y_2, Rat.of_int(0)) ==> f.requires(Rat.mul(x_1, y_2)) && f.requires(x_1) && f.requires(y_2))
  requires forall x_1: Rat.rat :: Rat.gt(x_1, Rat.of_int(0)) ==> (forall y_2: Rat.rat :: Rat.gt(y_2, Rat.of_int(0)) ==> f(Rat.mul(x_1, y_2)) == f(x_1) + f(y_2))
  requires forall p_1: nat :: prime(p_1) ==> f.requires(Rat.of_int(p_1))
  requires forall p_1: nat :: prime(p_1) ==> f(Rat.of_int(p_1)) == (p_1 as real)
  requires Rat.of_int(1).Rational?
  requires f(Rat.of_int(1)) == 0.0
  requires Rat.of_int(5).Rational?
  requires f(Rat.of_int(5)) == 5.0
  requires Rat.of_int(25).Rational?
  requires f(Rat.of_int(25)) == 10.0
  requires 0 <= 11
  ensures  prime(11)
{
  NatPrimeDefLt(11);
}

