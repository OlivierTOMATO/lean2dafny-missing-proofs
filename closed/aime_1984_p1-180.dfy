// CLOSED — failing line aime_1984_p1-180: theorem aime_1984_p1, Dafny line 180 (OOR: Verification out of resource (aime_1984_p1))
// failing Dafny line: assert (Rat.add(Rat.sum(range(98), ((k: nat) => u(0))), Rat.sum(range(98), ((k: nat) => Rat.add(Rat.of_int(k), Rat.of_int(1))))) == Rat.add(Rat.mul(Rat.of_int(98), u(0)), Rat.sum(range(98), ((k: nat) 
// Lean step: simp [Finset.sum_const, Finset.card_range]
// hypotheses: 20 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: K5 — NsmulEqMulRat(98, u(0)) [Mathlib nsmul_eq_mul, internal simp record; not in library, added to work copy]
// Dafny: finished with 44 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/aime_1984_p1.dfy"
lemma {:axiom} NsmulEqMulRat(n: nat, a: Rat.rat)
  ensures Rat.nsmul(n, a) == Rat.mul(Rat.of_int(n), a)

lemma {:induction false} vc_aime_1984_p1_L180(u: nat -> Rat.rat)
  requires forall n_1: int :: 0 <= n_1 ==> u.requires(n_1 + 1) && u.requires(n_1)
  requires forall n_1: int :: 0 <= n_1 ==> u(n_1 + 1) == Rat.add(u(n_1), Rat.of_int(1))
  requires Rat.sum(range(98), ((k: nat) => u(k + 1))) == Rat.of_int(137)
  requires forall n_0_1: nat :: true ==> u.requires(n_0_1) && u.requires(0)
  requires forall n_0_1: nat :: true ==> u(n_0_1) == Rat.add(u(0), Rat.of_int(n_0_1))
  requires 0 <= 98
  requires Rat.sum(range(98), ((k: nat) => u(k + 1))).Rational?
  requires Rat.of_int(137).Rational?
  requires Rat.sum(range(98), ((v_47_k: nat) => Rat.add(u(0), Rat.add(Rat.of_int(v_47_k), Rat.of_int(1))))).Rational?
  requires Rat.sum(range(98), ((k: nat) => u(k + 1))) == Rat.sum(range(98), ((v_47_k: nat) => Rat.add(u(0), Rat.add(Rat.of_int(v_47_k), Rat.of_int(1)))))
  requires Rat.sum(range(98), ((v_47_k: nat) => Rat.add(u(0), Rat.add(Rat.of_int(v_47_k), Rat.of_int(1))))) == Rat.of_int(137)
  requires Rat.sum(range(98), ((v_1_0_47_k: nat) => u(0))).Rational?
  requires Rat.sum(range(98), ((v_102_k: nat) => Rat.add(Rat.of_int(v_102_k), Rat.of_int(1)))).Rational?
  requires Rat.add(Rat.sum(range(98), ((v_1_0_47_k: nat) => u(0))), Rat.sum(range(98), ((v_102_k: nat) => Rat.add(Rat.of_int(v_102_k), Rat.of_int(1))))).Rational?
  requires Rat.sum(range(98), ((v_47_k: nat) => Rat.add(u(0), Rat.add(Rat.of_int(v_47_k), Rat.of_int(1))))) == Rat.add(Rat.sum(range(98), ((v_1_0_47_k: nat) => u(0))), Rat.sum(range(98), ((v_102_k: nat) => Rat.add(Rat.of_int(v_102_k), Rat.of_int(1)))))
  requires 0 <= 0
  requires |range(98)| == 98
  requires Rat.of_int(98).Rational?
  requires Rat.mul(Rat.of_int(98), u(0)).Rational?
  requires Rat.add(Rat.mul(Rat.of_int(98), u(0)), Rat.sum(range(98), ((v_102_k: nat) => Rat.add(Rat.of_int(v_102_k), Rat.of_int(1))))).Rational?
  ensures   Rat.add(Rat.sum(range(98), ((v_1_0_47_k: nat) => u(0))), Rat.sum(range(98), ((v_102_k: nat) => Rat.add(Rat.of_int(v_102_k), Rat.of_int(1))))) == Rat.add(Rat.mul(Rat.of_int(98), u(0)), Rat.sum(range(98), ((v_102_k: nat) => Rat.add(Rat.of_int(v_102_k), Rat.of_int(1)))))
{
  NsmulEqMulRat(98, u(0));  // Lean simp internal: nsmul_eq_mul
        // [TACTIC: «_<;>_» [ Finset.sum_const , Finset.card_range ] simp [ Finset.sum_const , Finset.card_range ] simp [ Finset.sum_const , Finset.card_range ] <;> ring <;> field_simp field_simp <;> ring]
        // [TACTIC: simp [ Finset.sum_const , Finset.card_range ]]
        FinsetSumConstRat(range(98), u(0));  // cite: Finset.sum_const
        FinsetCardRange(98);  // cite: Finset.card_range
        // `simp` closed the goal; the rest of the chain did not run
        // UNCITED-APPLIED internal ×8 [exec 306 1924-1966]: applications made inside the tactic's own automation, not stated — nsmul_eq_mul ×1; machinery/glue: Eq.trans ×3, congrArg ×2, of_eq_true ×1, eq_self ×1 (cited in this block, not counted here: Finset.card_range [Lean recorded ×1], Finset.sum_const [Lean recorded ×1])
}

