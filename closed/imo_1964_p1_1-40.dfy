// NOT CLOSED — failing line imo_1964_p1_1-40: theorem imo_1964_p1_1, Dafny line 40 (OOR: Verification out of resource (imo_1964_p1_1))
// failing Dafny line: assert (orderOf(2, 7) == 3) by {
// Lean step: rw [orderOf_eq_iff] <;> decide
// hypotheses: 8 facts Z3 had at the line (goal itself removed: 0; the block's own asserts removed: 1); nothing assumed beyond the facts in scope
// not closed: tried H0=oor; this file is the honest base attempt
// Dafny: finished with 23 verified, 0 errors, 1 out of resource  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/imo_1964_p1_1.dfy"
lemma {:induction false} vc_imo_1964_p1_1_L40(m_1_0_0: nat, n: nat)
  requires 0 <= n
  requires NatDvd(7, tsub(Int.pow(2, n), 1))
  requires if 7 == 0 then tsub(Int.pow(2, n), 1) == 0 else tsub(Int.pow(2, n), 1) % 7 == 0
  requires forall n0: nat :: NatDvd(7, tsub(Int.pow(2, n0), 1)) && 0 <= n0 && n0 < n ==> NatDvd(3, n0)
  requires IntMod(Int.pow(2, n), 7) == IntMod(1, 7)
  requires 2 * 2 * 2 % 7 == 1 % 7
  requires forall m_1_0_1: nat :: m_1_0_1 < 3 ==> 0 < m_1_0_1 ==> Int.pow(2, m_1_0_1) % 7 != 1 % 7
  requires ((0 <= m_1_0_0) && (m_1_0_0 < 3) && (0 < m_1_0_0)) || ((0 <= m_1_0_0) && (m_1_0_0 < 3) && (m_1_0_0 <= 0)) || ((0 <= m_1_0_0) && (3 <= m_1_0_0)) || (m_1_0_0 < 0)
  ensures   orderOf(2, 7) == 3
{
      // [TACTIC: «_<;>_» [ orderOf_eq_iff ] rw [ orderOf_eq_iff ] <;> decide decide]
      // [TACTIC: choice [ orderOf_eq_iff ] rw [ orderOf_eq_iff ]]
      // UNCITED orderOf_eq_iff: recorded instance not expressible here (sort/type/scope), not guessed
      // UNCITED-APPLIED congrArg(fun (_a : Prop) => _a): no library counterpart (not stated) [exec 125 885-904]
      assert ((((2 * 2 * 2) % 7) == (1 % 7)) && (forall m_1_0_0: nat :: ((m_1_0_0 < 3) ==> ((0 < m_1_0_0) ==> ((Int.pow(2, m_1_0_0) % 7) != (1 % 7))))));  // sub-goal of `decide` (Lean state) // @tac 909-915
      assert (0 < 3);  // sub-goal of `decide` (Lean state) // @tac 909-915
      // UNCITED-APPLIED internal ×1 [exec 160 909-915]: applications made inside the tactic's own automation, not stated — machinery/glue: of_decide_eq_true ×1
      // UNCITED-APPLIED internal ×1 [exec 163 909-915]: applications made inside the tactic's own automation, not stated — machinery/glue: of_decide_eq_true ×1
}

