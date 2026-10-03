// CLOSED LEMMA for failing line amc12a_2021_p19-1722 (theorem amc12a_2021_p19, Dafny line 1722, OOR)
// closes with: K5 (automation lemma) — single
// added: RealCosPiDivTwo();  // simp-set lemma
// Dafny: finished with 29 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_021/amc12a_2021_p19-1722/K5.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// shard_021 ablation amc12a_2021_p19-1722 variant K5
// K5
include "/home/changjie/lean2dafny_research/agents_tac/wt_integ5/out/amc12a_2021_p19.dfy"

lemma {:induction false} vc_amc12a_2021_p19_L1722(S: set<real>, x_0_0_0_0: real)
  requires forall x_1: real :: (x_1 in S) == (0.0 <= x_1 && x_1 <= Real.pi() && Real.sin(Real.pi() / 2.0 * Real.cos(x_1)) == Real.cos(Real.pi() / 2.0 * Real.sin(x_1)))
  requires ((0.0 <= x_0_0_0_0) && ((x_0_0_0_0 <= Real.pi()) || (Real.pi() < x_0_0_0_0))) || (x_0_0_0_0 < 0.0)
  requires (x_0_0_0_0 in S) == (0.0 <= x_0_0_0_0 && x_0_0_0_0 <= Real.pi() && Real.sin(Real.pi() / 2.0 * Real.cos(x_0_0_0_0)) == Real.cos(Real.pi() / 2.0 * Real.sin(x_0_0_0_0)))
  requires ((0.0 <= x_0_0_0_0) && (((x_0_0_0_0 <= Real.pi()) && (2.0 != 0.0) && (((0.0 <= x_0_0_0_0) && (x_0_0_0_0 <= Real.pi()) && (Real.sin(Real.pi() / 2.0 * Real.cos(x_0_0_0_0)) == Real.cos(Real.pi() / 2.0 * Real.sin(x_0_0_0_0))) && (((x_0_0_0_0 != 0.0) && (2.0 != 0.0)) || (x_0_0_0_0 == 0.0))) || (!(0.0 <= x_0_0_0_0 && x_0_0_0_0 <= Real.pi() && Real.sin(Real.pi() / 2.0 * Real.cos(x_0_0_0_0)) == Real.cos(Real.pi() / 2.0 * Real.sin(x_0_0_0_0)))))) || ((Real.pi() < x_0_0_0_0) && (((0.0 <= x_0_0_0_0) && (x_0_0_0_0 <= Real.pi()) && (Real.sin(Real.pi() / 2.0 * Real.cos(x_0_0_0_0)) == Real.cos(Real.pi() / 2.0 * Real.sin(x_0_0_0_0))) && (((x_0_0_0_0 != 0.0) && (2.0 != 0.0)) || (x_0_0_0_0 == 0.0))) || (!(0.0 <= x_0_0_0_0 && x_0_0_0_0 <= Real.pi() && Real.sin(Real.pi() / 2.0 * Real.cos(x_0_0_0_0)) == Real.cos(Real.pi() / 2.0 * Real.sin(x_0_0_0_0)))))))) || ((x_0_0_0_0 < 0.0) && (((0.0 <= x_0_0_0_0) && (x_0_0_0_0 <= Real.pi()) && (Real.sin(Real.pi() / 2.0 * Real.cos(x_0_0_0_0)) == Real.cos(Real.pi() / 2.0 * Real.sin(x_0_0_0_0))) && (((x_0_0_0_0 != 0.0) && (2.0 != 0.0)) || (x_0_0_0_0 == 0.0))) || (!(0.0 <= x_0_0_0_0 && x_0_0_0_0 <= Real.pi() && Real.sin(Real.pi() / 2.0 * Real.cos(x_0_0_0_0)) == Real.cos(Real.pi() / 2.0 * Real.sin(x_0_0_0_0))))))
  requires 0.0 <= x_0_0_0_0 && x_0_0_0_0 <= Real.pi() && Real.sin(Real.pi() / 2.0 * Real.cos(x_0_0_0_0)) == Real.cos(Real.pi() / 2.0 * Real.sin(x_0_0_0_0)) ==> x_0_0_0_0 == 0.0 || x_0_0_0_0 == Real.pi() / 2.0
  requires ((x_0_0_0_0 != 0.0) && (2.0 != 0.0)) || (x_0_0_0_0 == 0.0)
  requires x_0_0_0_0 == 0.0 || x_0_0_0_0 == Real.pi() / 2.0
  requires ((x_0_0_0_0 == 0.0) && (((0.0 <= 0.0) && (((0.0 <= Real.pi()) && (2.0 != 0.0)) || (Real.pi() < 0.0))) || (0.0 < 0.0)) && (0.0 <= 0.0) && (0.0 <= Real.pi()) && (Real.sin(Real.pi() / 2.0 * Real.cos(0.0)) == Real.cos(Real.pi() / 2.0 * Real.sin(0.0))) && (((0.0 <= x_0_0_0_0) && ((x_0_0_0_0 <= Real.pi()) || (Real.pi() < x_0_0_0_0))) || (x_0_0_0_0 < 0.0)) && (0.0 <= x_0_0_0_0) && (x_0_0_0_0 <= Real.pi()) && (Real.sin(Real.pi() / 2.0 * Real.cos(x_0_0_0_0)) == Real.cos(Real.pi() / 2.0 * Real.sin(x_0_0_0_0)))) || (x_0_0_0_0 != 0.0)
  requires 2.0 != 0.0
  requires x_0_0_0_0 == Real.pi() / 2.0
  requires 0.0 <= Real.pi() / 2.0
  requires Real.pi() / 2.0 <= Real.pi()
  ensures  Real.cos(Real.pi() / 2.0) == 0.0
{
  RealCosPiDivTwo();  // Mathlib Real.cos_pi_div_two (simp set)
}
