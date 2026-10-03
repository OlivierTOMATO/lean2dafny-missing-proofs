// NOT CLOSED — failing line mathd_numbertheory_618-255: theorem mathd_numbertheory_618, Dafny line 255 (ERR: assertion might not hold)
// failing Dafny line: assert false;
// Lean step: norm_num [h₀, Nat.gcd_eq_right, Nat.gcd_eq_left, Nat.gcd_eq_right] at h₄ ⊢
// hypotheses: 13 facts Z3 had at the line; nothing assumed beyond the facts in scope
// not closed: tried H0=oor, K1=oor, K2=oor, K5=oor, K1K2=oor; this file is the honest base attempt
// Dafny: finished with 11 verified, 0 errors, 1 out of resource  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/mathd_numbertheory_618.dfy"
lemma {:induction false} vc_mathd_numbertheory_618_L255(n: int, n_0_0_0_1_0: int, n_0_0_0_1_0_1_0: int, p: nat -> nat, x_3_0_0_10__arg: nat, x_3_0_0_11__arg: nat, x_3_0_0_12__arg: nat, x_3_0_0_13__arg: nat, x_3_0_0_14__arg: nat, x_3_0_0_15__arg: nat, x_3_0_0_16__arg: nat, x_3_0_0_17__arg: nat, x_3_0_0_18__arg: nat, x_3_0_0_19__arg: nat, x_3_0_0_20__arg: nat, x_3_0_0_21__arg: nat, x_3_0_0_22__arg: nat, x_3_0_0_23__arg: nat, x_3_0_0_24__arg: nat, x_3_0_0_25__arg: nat, x_3_0_0_26__arg: nat, x_3_0_0_27__arg: nat, x_3_0_0_28__arg: nat, x_3_0_0_5__arg: nat, x_3_0_0_6__arg: nat, x_3_0_0_7__arg: nat, x_3_0_0_8__arg: nat, x_3_0_0_9__arg: nat, y_3_0_0_10__arg: nat, y_3_0_0_11__arg: nat, y_3_0_0_12__arg: nat, y_3_0_0_13__arg: nat, y_3_0_0_14__arg: nat, y_3_0_0_15__arg: nat, y_3_0_0_16__arg: nat, y_3_0_0_17__arg: nat, y_3_0_0_18__arg: nat, y_3_0_0_19__arg: nat, y_3_0_0_20__arg: nat, y_3_0_0_21__arg: nat, y_3_0_0_22__arg: nat, y_3_0_0_23__arg: nat, y_3_0_0_24__arg: nat, y_3_0_0_25__arg: nat, y_3_0_0_26__arg: nat, y_3_0_0_27__arg: nat, y_3_0_0_28__arg: nat, y_3_0_0_5__arg: nat, y_3_0_0_6__arg: nat, y_3_0_0_7__arg: nat, y_3_0_0_8__arg: nat, y_3_0_0_9__arg: nat, x_3_0_0_32__arg: nat, x_3_0_0_33__arg: nat, x_3_0_0_34__arg: nat, x_3_0_0_35__arg: nat, x_3_0_0_36__arg: nat, x_3_0_0_37__arg: nat, x_3_0_0_38__arg: nat, x_3_0_0_39__arg: nat, x_3_0_0_40__arg: nat, x_3_0_0_41__arg: nat, x_3_0_0_42__arg: nat, x_3_0_0_43__arg: nat, x_3_0_0_44__arg: nat, x_3_0_0_45__arg: nat, x_3_0_0_46__arg: nat, x_3_0_0_47__arg: nat, x_3_0_0_48__arg: nat, x_3_0_0_49__arg: nat, x_3_0_0_50__arg: nat, x_3_0_0_51__arg: nat, x_3_0_0_52__arg: nat, x_3_0_0_53__arg: nat, x_3_0_0_54__arg: nat, x_3_0_0_55__arg: nat, x_3_0_0_57__arg: nat, x_3_0_0_58__arg: nat, y_3_0_0_32__arg: nat, y_3_0_0_33__arg: nat, y_3_0_0_34__arg: nat, y_3_0_0_35__arg: nat, y_3_0_0_36__arg: nat, y_3_0_0_37__arg: nat, y_3_0_0_38__arg: nat, y_3_0_0_39__arg: nat, y_3_0_0_40__arg: nat, y_3_0_0_41__arg: nat, y_3_0_0_42__arg: nat, y_3_0_0_43__arg: nat, y_3_0_0_44__arg: nat, y_3_0_0_45__arg: nat, y_3_0_0_46__arg: nat, y_3_0_0_47__arg: nat, y_3_0_0_48__arg: nat, y_3_0_0_49__arg: nat, y_3_0_0_50__arg: nat, y_3_0_0_51__arg: nat, y_3_0_0_52__arg: nat, y_3_0_0_53__arg: nat, y_3_0_0_54__arg: nat, y_3_0_0_55__arg: nat, y_3_0_0_57__arg: nat, y_3_0_0_58__arg: nat, x_3_0_0_60__arg: nat, x_3_0_0_61__arg: nat, x_3_0_0_62__arg: nat, x_3_0_0_63__arg: nat, y_3_0_0_60__arg: nat, y_3_0_0_61__arg: nat, y_3_0_0_62__arg: nat, y_3_0_0_63__arg: nat)
  requires 0 <= n
  requires 0 <= n_0_0_0_1_0
  requires 0 <= n_0_0_0_1_0_1_0
  requires n > 0
  requires forall x_1: nat :: p(x_1) == tsub(x_1 * x_1, x_1) + 41
  requires 1 < gcd(p(n), p(n + 1))
  requires 0 <= n + 1
  requires p(n + 1) == p(n) + 2 * n
  requires 0 <= 2 * n
  requires gcd(p(n), p(n + 1)) == gcd(p(n), 2 * n)
  requires 1 < gcd(p(n), 2 * n)
  requires !(41 <= n)
  requires n <= 40
  ensures   (false /*VC_GAP*/)
{ }

