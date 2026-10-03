// CLOSED LEMMA for failing line amc12a_2021_p14-219 (theorem amc12a_2021_p14, Dafny line 219, ERR)
// closes with: K5 (automation lemma) — single
// added: FinsetSumSingletonNat(1, k => k as real);  (Finset.sum_singleton applied internally by norm_num at exec 921; exact Mathlib statement added to the work copy, ℕ index)
// Dafny: finished with 134 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_018/amc12a_2021_p14-219/K5.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// shard_018 ablation variant: K5
// base: /home/changjie/lean2dafny_research/agents_tac/classify5/line_lemmas/ERR/amc12a_2021_p14/L219.dfy (main lemma only; side checks dropped)
include "/home/changjie/lean2dafny_research/agents_tac/wt_integ5/out/amc12a_2021_p14.dfy"

// Mathlib: theorem Finset.sum_singleton (f : α → β) (a : α) : ∑ x ∈ {a}, f x = f a  (ℕ index, ℝ values)
lemma {:axiom} FinsetSumSingletonNat(a: nat, f: nat -> real)
  ensures Real.sum({a}, f) == f(a)

lemma {:induction false} vc_amc12a_2021_p14_L219()
  requires forall k_0_1: nat :: k_0_1 in IccN(1, 20) ==> Real.logb(Real.pow(5.0, k_0_1), Real.pow(3.0, Int.pow(k_0_1, 2))) == (k_0_1 as real) * Real.logb(5.0, 3.0)
  requires 0 <= 1
  requires 0 <= 20
  requires Real.sum(IccN(1, 20), ((k: nat) => Real.logb(Real.pow(5.0, k), Real.pow(3.0, Int.pow(k, 2))))) == Real.sum(IccN(1, 20), ((v_22_k: nat) => (v_22_k as real) * Real.logb(5.0, 3.0)))
  requires Real.sum(IccN(1, 20), ((v_22_k: nat) => (v_22_k as real) * Real.logb(5.0, 3.0))) == Real.sum(IccN(1, 20), ((v_1_22_k: nat) => (v_1_22_k as real))) * Real.logb(5.0, 3.0)
  requires IccN(1, 1) == {1}
  requires (1 as real) == 1.0
  requires 1 <= 1 + 1
  requires 1 <= 1 + 1
  requires ((v_1_22_k: nat) => (v_1_22_k as real)).requires(1 + 1)
  requires Real.sum(IccN(1, 1 + 1), ((v_1_22_k: nat) => (v_1_22_k as real))) == Real.sum(IccN(1, 1), ((v_1_22_k: nat) => (v_1_22_k as real))) + ((v_1_22_k: nat) => (v_1_22_k as real))(1 + 1)
  requires 1 <= 2 + 1
  requires 0 <= 2
  requires 1 <= 2 + 1
  requires ((v_1_22_k: nat) => (v_1_22_k as real)).requires(2 + 1)
  requires Real.sum(IccN(1, 2 + 1), ((v_1_22_k: nat) => (v_1_22_k as real))) == Real.sum(IccN(1, 2), ((v_1_22_k: nat) => (v_1_22_k as real))) + ((v_1_22_k: nat) => (v_1_22_k as real))(2 + 1)
  requires 1 <= 3 + 1
  requires 0 <= 3
  requires 1 <= 3 + 1
  requires ((v_1_22_k: nat) => (v_1_22_k as real)).requires(3 + 1)
  requires Real.sum(IccN(1, 3 + 1), ((v_1_22_k: nat) => (v_1_22_k as real))) == Real.sum(IccN(1, 3), ((v_1_22_k: nat) => (v_1_22_k as real))) + ((v_1_22_k: nat) => (v_1_22_k as real))(3 + 1)
  requires 1 <= 4 + 1
  requires 0 <= 4
  requires 1 <= 4 + 1
  requires ((v_1_22_k: nat) => (v_1_22_k as real)).requires(4 + 1)
  requires Real.sum(IccN(1, 4 + 1), ((v_1_22_k: nat) => (v_1_22_k as real))) == Real.sum(IccN(1, 4), ((v_1_22_k: nat) => (v_1_22_k as real))) + ((v_1_22_k: nat) => (v_1_22_k as real))(4 + 1)
  requires 1 <= 5 + 1
  requires 0 <= 5
  requires 1 <= 5 + 1
  requires ((v_1_22_k: nat) => (v_1_22_k as real)).requires(5 + 1)
  requires Real.sum(IccN(1, 5 + 1), ((v_1_22_k: nat) => (v_1_22_k as real))) == Real.sum(IccN(1, 5), ((v_1_22_k: nat) => (v_1_22_k as real))) + ((v_1_22_k: nat) => (v_1_22_k as real))(5 + 1)
  requires 1 <= 6 + 1
  requires 0 <= 6
  requires 1 <= 6 + 1
  requires ((v_1_22_k: nat) => (v_1_22_k as real)).requires(6 + 1)
  requires Real.sum(IccN(1, 6 + 1), ((v_1_22_k: nat) => (v_1_22_k as real))) == Real.sum(IccN(1, 6), ((v_1_22_k: nat) => (v_1_22_k as real))) + ((v_1_22_k: nat) => (v_1_22_k as real))(6 + 1)
  requires 1 <= 7 + 1
  requires 0 <= 7
  requires 1 <= 7 + 1
  requires ((v_1_22_k: nat) => (v_1_22_k as real)).requires(7 + 1)
  requires Real.sum(IccN(1, 7 + 1), ((v_1_22_k: nat) => (v_1_22_k as real))) == Real.sum(IccN(1, 7), ((v_1_22_k: nat) => (v_1_22_k as real))) + ((v_1_22_k: nat) => (v_1_22_k as real))(7 + 1)
  requires 1 <= 8 + 1
  requires 0 <= 8
  requires 1 <= 8 + 1
  requires ((v_1_22_k: nat) => (v_1_22_k as real)).requires(8 + 1)
  requires Real.sum(IccN(1, 8 + 1), ((v_1_22_k: nat) => (v_1_22_k as real))) == Real.sum(IccN(1, 8), ((v_1_22_k: nat) => (v_1_22_k as real))) + ((v_1_22_k: nat) => (v_1_22_k as real))(8 + 1)
  requires 1 <= 9 + 1
  requires 0 <= 9
  requires 1 <= 9 + 1
  requires ((v_1_22_k: nat) => (v_1_22_k as real)).requires(9 + 1)
  requires Real.sum(IccN(1, 9 + 1), ((v_1_22_k: nat) => (v_1_22_k as real))) == Real.sum(IccN(1, 9), ((v_1_22_k: nat) => (v_1_22_k as real))) + ((v_1_22_k: nat) => (v_1_22_k as real))(9 + 1)
  requires 1 <= 10 + 1
  requires 0 <= 10
  requires 1 <= 10 + 1
  requires ((v_1_22_k: nat) => (v_1_22_k as real)).requires(10 + 1)
  requires Real.sum(IccN(1, 10 + 1), ((v_1_22_k: nat) => (v_1_22_k as real))) == Real.sum(IccN(1, 10), ((v_1_22_k: nat) => (v_1_22_k as real))) + ((v_1_22_k: nat) => (v_1_22_k as real))(10 + 1)
  requires 1 <= 11 + 1
  requires 0 <= 11
  requires 1 <= 11 + 1
  requires ((v_1_22_k: nat) => (v_1_22_k as real)).requires(11 + 1)
  requires Real.sum(IccN(1, 11 + 1), ((v_1_22_k: nat) => (v_1_22_k as real))) == Real.sum(IccN(1, 11), ((v_1_22_k: nat) => (v_1_22_k as real))) + ((v_1_22_k: nat) => (v_1_22_k as real))(11 + 1)
  requires 1 <= 12 + 1
  requires 0 <= 12
  requires 1 <= 12 + 1
  requires ((v_1_22_k: nat) => (v_1_22_k as real)).requires(12 + 1)
  requires Real.sum(IccN(1, 12 + 1), ((v_1_22_k: nat) => (v_1_22_k as real))) == Real.sum(IccN(1, 12), ((v_1_22_k: nat) => (v_1_22_k as real))) + ((v_1_22_k: nat) => (v_1_22_k as real))(12 + 1)
  requires 1 <= 13 + 1
  requires 0 <= 13
  requires 1 <= 13 + 1
  requires ((v_1_22_k: nat) => (v_1_22_k as real)).requires(13 + 1)
  requires Real.sum(IccN(1, 13 + 1), ((v_1_22_k: nat) => (v_1_22_k as real))) == Real.sum(IccN(1, 13), ((v_1_22_k: nat) => (v_1_22_k as real))) + ((v_1_22_k: nat) => (v_1_22_k as real))(13 + 1)
  requires 1 <= 14 + 1
  requires 0 <= 14
  requires 1 <= 14 + 1
  requires ((v_1_22_k: nat) => (v_1_22_k as real)).requires(14 + 1)
  requires Real.sum(IccN(1, 14 + 1), ((v_1_22_k: nat) => (v_1_22_k as real))) == Real.sum(IccN(1, 14), ((v_1_22_k: nat) => (v_1_22_k as real))) + ((v_1_22_k: nat) => (v_1_22_k as real))(14 + 1)
  requires 1 <= 15 + 1
  requires 0 <= 15
  requires 1 <= 15 + 1
  requires ((v_1_22_k: nat) => (v_1_22_k as real)).requires(15 + 1)
  requires Real.sum(IccN(1, 15 + 1), ((v_1_22_k: nat) => (v_1_22_k as real))) == Real.sum(IccN(1, 15), ((v_1_22_k: nat) => (v_1_22_k as real))) + ((v_1_22_k: nat) => (v_1_22_k as real))(15 + 1)
  requires 1 <= 16 + 1
  requires 0 <= 16
  requires 1 <= 16 + 1
  requires ((v_1_22_k: nat) => (v_1_22_k as real)).requires(16 + 1)
  requires Real.sum(IccN(1, 16 + 1), ((v_1_22_k: nat) => (v_1_22_k as real))) == Real.sum(IccN(1, 16), ((v_1_22_k: nat) => (v_1_22_k as real))) + ((v_1_22_k: nat) => (v_1_22_k as real))(16 + 1)
  requires 1 <= 17 + 1
  requires 0 <= 17
  requires 1 <= 17 + 1
  requires ((v_1_22_k: nat) => (v_1_22_k as real)).requires(17 + 1)
  requires Real.sum(IccN(1, 17 + 1), ((v_1_22_k: nat) => (v_1_22_k as real))) == Real.sum(IccN(1, 17), ((v_1_22_k: nat) => (v_1_22_k as real))) + ((v_1_22_k: nat) => (v_1_22_k as real))(17 + 1)
  requires 1 <= 18 + 1
  requires 0 <= 18
  requires 1 <= 18 + 1
  requires ((v_1_22_k: nat) => (v_1_22_k as real)).requires(18 + 1)
  requires Real.sum(IccN(1, 18 + 1), ((v_1_22_k: nat) => (v_1_22_k as real))) == Real.sum(IccN(1, 18), ((v_1_22_k: nat) => (v_1_22_k as real))) + ((v_1_22_k: nat) => (v_1_22_k as real))(18 + 1)
  requires 1 <= 19 + 1
  requires 0 <= 19
  requires 1 <= 19 + 1
  requires ((v_1_22_k: nat) => (v_1_22_k as real)).requires(19 + 1)
  requires Real.sum(IccN(1, 19 + 1), ((v_1_22_k: nat) => (v_1_22_k as real))) == Real.sum(IccN(1, 19), ((v_1_22_k: nat) => (v_1_22_k as real))) + ((v_1_22_k: nat) => (v_1_22_k as real))(19 + 1)
  ensures  Real.sum(IccN(1, 20), ((v_1_22_k: nat) => (v_1_22_k as real))) == 210.0
{
  FinsetSumSingletonNat(1, ((v_1_22_k: nat) => (v_1_22_k as real)));  // sum_singleton (norm_num internal)
}
