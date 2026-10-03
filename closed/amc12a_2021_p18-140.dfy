// CLOSED LEMMA for failing line amc12a_2021_p18-140 (theorem amc12a_2021_p18, Dafny line 140, ERR)
// closes with: K2 (computation) — single
// added: NatPrimeDefLt(5) [Mathlib Nat.prime_def_lt added to work copy]; Z3 then checks the 5 divisibility cases by computation (Lean: decide, of_decide_eq_true)
// Dafny: finished with 5 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_020/amc12a_2021_p18-140/K2.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 140 of amc12a_2021_p18 (ERR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../../wt_integ5/out/amc12a_2021_p18.dfy"

// ========================================================================================
// FAILING LINE 140 (ERR) in amc12a_2021_p18: assertion might not hold
//   dafny |     assert prime(5); // @tac 1259-1265
//   statement kind: have / step assertion
//   @tac 1259-1265 | Lean: decide
//        before-goal ⊢ Nat.Prime (5 : ℕ)
// Lean have h₃₁, Lean lines 24-24:
//   lean  |     have h₃₁ : Nat.Prime 5 := by decide

// 1 path(s) merged (paths); 7 shared facts; 1 distinct path conditions

// Library extension (work copy only). Lean (Mathlib): theorem Nat.prime_def_lt {p : ℕ} :
//   Nat.Prime p ↔ 2 ≤ p ∧ ∀ m < p, m ∣ p → m = 1   (the ← direction; ∣ is NatDvd)
lemma {:axiom} NatPrimeDefLt(p: nat)
  requires 2 <= p
  requires forall m: nat :: m < p ==> NatDvd(m, p) ==> m == 1
  ensures prime(p)

lemma {:induction false} vc_amc12a_2021_p18_L140_K2(f: Rat.rat -> real)
  requires forall x_1: Rat.rat :: Rat.gt(x_1, Rat.of_int(0)) ==> (forall y_2: Rat.rat :: Rat.gt(y_2, Rat.of_int(0)) ==> f.requires(Rat.mul(x_1, y_2)) && f.requires(x_1) && f.requires(y_2))
  requires forall x_1: Rat.rat :: Rat.gt(x_1, Rat.of_int(0)) ==> (forall y_2: Rat.rat :: Rat.gt(y_2, Rat.of_int(0)) ==> f(Rat.mul(x_1, y_2)) == f(x_1) + f(y_2))
  requires forall p_1: nat :: prime(p_1) ==> f.requires(Rat.of_int(p_1))
  requires forall p_1: nat :: prime(p_1) ==> f(Rat.of_int(p_1)) == (p_1 as real)
  requires Rat.of_int(1).Rational?
  requires f(Rat.of_int(1)) == 0.0
  requires 0 <= 5
  ensures  prime(5)
{
  NatPrimeDefLt(5);
}

