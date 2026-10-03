// NOT CLOSED — failing line imo_1966_p4-27: theorem imo_1966_p4, Dafny line 27 (OOR: Verification out of resource (induction_helper_1))
// failing Dafny line: ensures ((0 < n) ==> (Real.sum(IccN(1, n), ((k: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, k) * x))))) == (Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan((Real.pow(2.0, n) * x))))))
// Lean step: 
// hypotheses: 1 facts Z3 had at the line (goal itself removed: 0; facts derived inside the helper lemma's own body removed: 7); nothing assumed beyond the facts in scope
// not closed: tried H0=oor, K1=oor, K2=oor, K2pow=oor, K5=oor, K3=oor, K1K5=oor, SC_K1K5pow=oor; this file is the honest base attempt
// Dafny: finished with 42 verified, 4 errors, 4 out of resource  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/imo_1966_p4.dfy"
lemma {:induction false} vc_imo_1966_p4_L27(n: int, n_1_0: int, n_1_0_1_0: int, x: real)
  requires Real.div(1.0, Real.sin(2.0 * x)) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(2.0 * x))
  ensures   Real.sum(IccN(1, n), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, n) * x))
{
  if n == 0 {
    if ((0 < 0)) {  // sub-goal before `cases` (Lean state)
      // obtain ⟨x⟩ := h₁
      // obtain skeleton (nothing bound); binders: x
      assert (Real.sum(IccN(1, 0), ((k: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, k) * x))))) == (Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan((Real.pow(2.0, 0) * x)))));  // sub-goal before `cases` (Lean state) // @tac 2959-2969
    }
  } else {
    induction_helper_1(n - 1, x);
    var n: nat := n - 1;  // Lean's predecessor binder (succ n)
    if ((0 < (n + 1))) {  // sub-goal before `cases` (Lean state)
      // UNCITED-APPLIED Eq.symm: recorded instance not expressible here (sort/type/scope), not guessed
      // UNCITED-APPLIED Eq.symm ×1: 1 of Lean's 2 recorded instances here have no statement above (which ones is not decided) — Lean's instances: Eq.symm(n, (0 : ℕ)); Eq.symm(n✝, n + (1 : ℕ)) [exec 727 3060-3476]
      // cases n (zero / succ)
      if n == 0 {
        if (((0 < 0) ==> (Real.sum(IccN(1, 0), ((k: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, k) * x))))) == (Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan((Real.pow(2.0, 0) * x))))))) && ((0 < (0 + 1))) {  // sub-goal before `simp_all` (Lean state)
          // [TACTIC: simpAll [ Finset.sum_Icc_succ_top , Nat.one_ne_zero , Nat.succ_pos , base_case ]]
          // UNCITED Finset.sum_Icc_succ_top: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
          // UNCITED Nat.one_ne_zero: named here, no record of its application here; this execution also rewrote hypotheses, whose proofs the harvest does not capture, so whether Lean applied it here is unknown: not stated
          // UNCITED Nat.succ_pos: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED-APPLIED Finset.sum_congr: recorded instance not expressible here (sort/type/scope), not guessed
          // UNCITED-APPLIED zero_add ×1: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (1 : ℕ))
          FinsetIccSelfNat(1);  // cite: Finset.Icc_self [applied by the tactic, not named in it]
          // UNCITED-APPLIED Finset.sum_singleton: recorded instance not expressible here (sort/type/scope), not guessed
          PowOne(2.0);  // cite: pow_one [applied by the tactic, not named in it]
          assert (Real.sum(IccN(1, (0 + 1)), ((k: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, k) * x))))) == (Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan((Real.pow(2.0, (0 + 1)) * x)))));  // sub-goal before `simp_all` (Lean state) // @tac 3125-3201
          // UNCITED-APPLIED internal ×27 [exec 732 3125-3201]: applications made inside the tactic's own automation, not stated — one_div ×4, Finset.sum_congr ×1, zero_add ×1, Finset.sum_singleton ×1; machinery/glue: Eq.trans ×7, congrArg ×7, congr ×4, of_eq_true ×1 (+1 more heads, ×1) (cited in this block, not counted here: Finset.Icc_self [Lean recorded ×1], pow_one [Lean recorded ×1])
        }
      } else {
        var n: nat := n - 1;
        if (((0 < (n + 1)) ==> (Real.sum(IccN(1, (n + 1)), ((k: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, k) * x))))) == (Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan((Real.pow(2.0, (n + 1)) * x))))))) && ((0 < ((n + 1) + 1))) {  // sub-goal before `simp_all` (Lean state)
          // [TACTIC: «_<;>_» [ Finset.sum_Icc_succ_top , Nat.succ_ne_zero , Nat.succ_pos , inductive_step ] simp_all [ Finset.sum_Icc_succ_top , Nat.succ_ne_zero , Nat.succ_pos , inductive_step ] simp_all [ Finset.sum_Icc_succ_top , Nat.succ_ne_zero , Nat.succ_pos , inductive_step ] <;> linarith linarith]
          // [TACTIC: simpAll [ Finset.sum_Icc_succ_top , Nat.succ_ne_zero , Nat.succ_pos , inductive_step ]]
          // UNCITED Finset.sum_Icc_succ_top: 1 more recorded instance ((1 : ℕ), m, fun (k : ℕ) => (sin ((2 : ℝ) ^ k * x))⁻¹) not expressible here (sort/type/scope), not guessed
          // UNCITED Nat.succ_ne_zero: no Lean instance recorded (arguments unknown), not guessed
          // UNCITED Nat.succ_pos: no Lean instance recorded (arguments unknown), not guessed
          if (forall x_0 :: x_0 in (IccN(1, ((n + 1) + 1))) ==> (((k: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, k) * x)))))(x_0) == (((x_1: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, x_1) * x)))))(x_0)) { FinsetSumApply(IccN(1, ((n + 1) + 1)), ((k: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, k) * x)))), ((x_1: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, x_1) * x))))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
          if (forall x_0 :: x_0 in (IccN(1, (n + 1))) ==> (((k: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, k) * x)))))(x_0) == (((x_1: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, x_1) * x)))))(x_0)) { FinsetSumApply(IccN(1, (n + 1)), ((k: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, k) * x)))), ((x_1: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, x_1) * x))))); }  // cite: Finset.sum_congr [applied by the tactic, not named in it]
          // UNCITED-APPLIED Finset.sum_congr: 2 more recorded instances (Finset.Icc (1 : ℕ) m, Finset.Icc (1 : ℕ) m, fun (k : ℕ) => (1 : ℝ) / sin ((2 : ℝ) ^ k * x), fun (x_1 : ℕ) => (sin ((2 : ℝ) ^ x_1 * x))⁻¹); (Finset.Icc (1 : ℕ) (m + (1 : ℕ)), Finset.Icc (1 : ℕ) (m + (1 : ℕ)), fun (k : ℕ) => (1 : ℝ) / sin ((2 : ℝ) ^ k * x), fun (x_1 : ℕ) => (sin ((2 : ℝ) ^ x_1 * x))⁻¹) not expressible here (sort/type/scope), not guessed
          assert ((1) <= (n) + 1);  // precondition of FinsetSumIccSuccTopNat (Lean: Finset.sum_Icc_succ_top)
          FinsetSumIccSuccTopNat(1, n, ((k: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, k) * x)))));  // cite: Finset.sum_Icc_succ_top
          assert ((1) <= ((n + 1)) + 1);  // precondition of FinsetSumIccSuccTopNat (Lean: Finset.sum_Icc_succ_top)
          FinsetSumIccSuccTopNat(1, (n + 1), ((k: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, k) * x)))));  // cite: Finset.sum_Icc_succ_top
          // `simp_all` closed the goal; the rest of the chain did not run
          assert (Real.sum(IccN(1, ((n + 1) + 1)), ((k: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, k) * x))))) == (Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan((Real.pow(2.0, ((n + 1) + 1)) * x)))));  // sub-goal before `simp_all` (Lean state) // @tac 3304-3476 // @tac 3304-3386
          // UNCITED-APPLIED internal ×35 [exec 741 3304-3386]: applications made inside the tactic's own automation, not stated — one_div ×8, implies_congr_ctx ×1, or_true ×1, true_implies ×1; machinery/glue: congr ×8, congrArg ×8, Eq.trans ×5, eq_self ×2 (+1 more heads, ×1) (cited in this block, not counted here: Finset.sum_Icc_succ_top [Lean recorded ×3], Finset.sum_congr [Lean recorded ×4])
        }
      }
      assert (Real.sum(IccN(1, (n + 1)), ((k: nat) => Real.div(1.0, Real.sin((Real.pow(2.0, k) * x))))) == (Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan((Real.pow(2.0, (n + 1)) * x)))));  // sub-goal before `cases` (Lean state) // @tac 3060-3476
    }
  }
}

