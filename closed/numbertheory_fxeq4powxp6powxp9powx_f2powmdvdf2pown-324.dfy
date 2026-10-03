// CLOSED LEMMA for failing line numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown-324 (theorem numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown, Dafny line 324, OOR)
// closes with: simplest (simplest) — simplest-close
// added: non-recursive Int.pow postcondition (K2-pow library) + the step as its own lemma: tsub(S'*S', 2*(6^(k+1)*S')) == S'*tsub(S', 2*6^(k+1)) { NatMulSubLeftDistrib(S', S', 2*6^(k+1)); }, S' = (4^(k+1)+6^(k+1))+9^(k+1)
// Dafny: finished with 32 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_053/numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown-324/SCsplit_POW.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// shard_053 line 324 split lemma with the cited NatMulSubLeftDistrib instance, library=POW
include "../powlib/library/library_new.dfy"
lemma L324_split(k: nat)
  ensures tsub((((Int.pow(4, (k + 1)) + Int.pow(6, (k + 1))) + Int.pow(9, (k + 1))) * ((Int.pow(4, (k + 1)) + Int.pow(6, (k + 1))) + Int.pow(9, (k + 1)))), (2 * (Int.pow(6, (k + 1)) * ((Int.pow(4, (k + 1)) + Int.pow(6, (k + 1))) + Int.pow(9, (k + 1)))))) == (((Int.pow(4, (k + 1)) + Int.pow(6, (k + 1))) + Int.pow(9, (k + 1))) * tsub(((Int.pow(4, (k + 1)) + Int.pow(6, (k + 1))) + Int.pow(9, (k + 1))), (2 * Int.pow(6, (k + 1)))))
{ NatMulSubLeftDistrib(((Int.pow(4, (k + 1)) + Int.pow(6, (k + 1))) + Int.pow(9, (k + 1))), ((Int.pow(4, (k + 1)) + Int.pow(6, (k + 1))) + Int.pow(9, (k + 1))), (2 * Int.pow(6, (k + 1)))); }
