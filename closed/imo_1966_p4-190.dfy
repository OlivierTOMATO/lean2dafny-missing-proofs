// CLOSED LEMMA for failing line imo_1966_p4-190 (theorem imo_1966_p4, Dafny line 190, OOR)
// closes with: K2+K3 (computation, locality) — multi
// added: no in-context edit closes: PowSucc+MulComm+MulAssoc calls (S_assoc), the same with the K2-pow library (S_assoc_K2pow), and the step as its own lemma over fresh p,q with q==p*2 (S_split: step lemma closes at 2,969, but the main ensures - now identical to the step lemma's ensures - still OOR at ~1.01M in 0.2 s). Only the context-free pair K3+K2pow closes: lemma `ensures Real.pow(2.0,m+1)*x == 2.0*(Real.pow(2.0,m)*x)` with no requires, library Real.pow without the recursive ensures (sufficiency)
// Dafny: finished with 2 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_031/imo_1966_p4-190/K3_K2pow.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// k_ablate_shard_031 variant K3+K2pow of line_lemmas/OOR/imo_1966_p4/L190.dfy (main lemma only)
// PAIR K3+K2pow (sufficiency; library pow without recursive ensures): ring uses no hypotheses; all requires dropped
include "/home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_031/_k2pow/out/imo_1966_p4.dfy"

lemma {:induction false} vc_imo_1966_p4_L190(m_1_0: nat, n: int, x: real)
  ensures  Real.pow(2.0, m_1_0 + 1) * x == 2.0 * (Real.pow(2.0, m_1_0) * x)
{ }
