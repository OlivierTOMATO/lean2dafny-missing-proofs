// CLOSED LEMMA for failing line numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown-319 (theorem numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown, Dafny line 319, OOR)
// closes with: simplest (simplest) — simplest-close
// added: Int.pow without the recursive `ensures if k == 0 then p == 1 else p == b * pow(b, k - 1)` (opaque/fuel-bounded pow) + the step as its own hypothesis-free lemma tsub(S*S, 2*(6^(k+1)*S)) == tsub(S*S, S*(2*6^(k+1))), S = 4^(k+1)+(6^(k+1)+9^(k+1))
// Dafny: finished with 25 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_053/numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown-319/SCsplit_POW.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// shard_053 line 319 split lemma (no hypotheses; Lean: ring_nf), library=POW
include "../powlib/library/library_new.dfy"
lemma L319_split(k: nat)
  ensures tsub(((Int.pow(4, (k + 1)) + (Int.pow(6, (k + 1)) + Int.pow(9, (k + 1)))) * (Int.pow(4, (k + 1)) + (Int.pow(6, (k + 1)) + Int.pow(9, (k + 1))))), (2 * (Int.pow(6, (k + 1)) * (Int.pow(4, (k + 1)) + (Int.pow(6, (k + 1)) + Int.pow(9, (k + 1))))))) == tsub(((Int.pow(4, (k + 1)) + (Int.pow(6, (k + 1)) + Int.pow(9, (k + 1)))) * (Int.pow(4, (k + 1)) + (Int.pow(6, (k + 1)) + Int.pow(9, (k + 1))))), ((Int.pow(4, (k + 1)) + (Int.pow(6, (k + 1)) + Int.pow(9, (k + 1)))) * (2 * Int.pow(6, (k + 1)))))
{ }
