// CLOSED — failing line aime_1984_p1-466: theorem aime_1984_p1, Dafny line 466 (OOR: Verification out of resource (aime_1984_p1))
// failing Dafny line: assert (Rat.sum(range(49), ((k: nat) => Rat.add(u(0), Rat.mul(Rat.of_int(2), Rat.add(Rat.of_int(k), Rat.of_int(1)))))) == Rat.add(Rat.sum(range(49), ((k: nat) => u(0))), Rat.sum(range(49), ((k: nat) =
// Lean step: rw [Finset.sum_add_distrib]
// hypotheses: 0 facts Z3 had at the line; this variant also drops 18 hypotheses; nothing assumed beyond the facts in scope
// how it closes: S_K3 — 
// Dafny: finished with 14 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/aime_1984_p1.dfy"
lemma FinsetSumAddDistribRatH<T>(s: set<T>, h: T -> Rat.rat, f: T -> Rat.rat, g: T -> Rat.rat)  // [ADDED DECLARATION]
  requires forall x :: x in s ==> h(x) == Rat.add(f(x), g(x))
  ensures Rat.sum(s, h) == Rat.add(Rat.sum(s, f), Rat.sum(s, g))
{
  FinsetSumAddDistribRat(s, f, g);
  FinsetSumApplyRat(s, h, ((x: T) => Rat.add(f(x), g(x))));
}

lemma {:induction false} vc_aime_1984_p1_L466(u: nat -> Rat.rat)
  ensures   Rat.sum(range(49), ((v_27_k: nat) => Rat.add(u(0), Rat.mul(Rat.of_int(2), Rat.add(Rat.of_int(v_27_k), Rat.of_int(1)))))) == Rat.add(Rat.sum(range(49), ((v_1_0_47_k: nat) => u(0))), Rat.sum(range(49), ((v_1_32_k: nat) => Rat.mul(Rat.of_int(2), Rat.add(Rat.of_int(v_1_32_k), Rat.of_int(1))))))
{
  FinsetSumAddDistribRatH(range(49), ((k: nat) => Rat.add(u(0), Rat.mul(Rat.of_int(2), Rat.add(Rat.of_int(k), Rat.of_int(1))))), ((k: nat) => u(0)), ((k: nat) => Rat.mul(Rat.of_int(2), Rat.add(Rat.of_int(k), Rat.of_int(1)))));  // sum_add_distrib, pointwise form, at Lean's instance  // [ADDED]
          // [TACTIC: rwSeq [ Finset.sum_add_distrib ]]
          FinsetSumAddDistribRat(range(49), ((k: nat) => u(0)), ((k: nat) => Rat.mul(Rat.of_int(2), Rat.add(Rat.of_int(k), Rat.of_int(1)))));  // cite: Finset.sum_add_distrib
          // UNCITED-APPLIED congrArg(∑ x ∈ Finset.range (49 : ℕ), (u (0 : ℕ) + (2 : ℚ) * (↑x + (1 : ℚ))), ∑ x ∈ Finset.range (49 : ℕ), u (0 : ℕ) + ∑ x ∈ Finset.range (49 : ℕ),…, fun (_a : ℚ) => _a = ∑ k ∈ Finset.range (49 : ℕ), u (0 : ℕ) + ∑ k ∈ F…): no library counterpart (not stated) [exec 645 3185-3212]
}

