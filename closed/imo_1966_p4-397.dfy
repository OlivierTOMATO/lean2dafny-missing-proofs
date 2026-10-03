// CLOSED LEMMA for failing line imo_1966_p4-397 (theorem imo_1966_p4, Dafny line 397, OOR)
// closes with: K3 (locality) — single
// added: only 0 < n and the stated instance kept (2 requires)
// Dafny: finished with 3 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_034/imo_1966_p4-397/K3.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

include "/home/changjie/lean2dafny_research/agents_tac/wt_integ5/out/imo_1966_p4.dfy"

lemma {:induction false} vc_imo_1966_p4_L397(n: nat, x: real)
  requires 0 < n
  requires 0 < n ==> Real.sum(IccN(1, n), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, n) * x))
  ensures  Real.sum(IccN(1, n), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, n) * x))
{

}
