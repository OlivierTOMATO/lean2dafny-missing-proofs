// CLOSED LEMMA for failing line numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown-318 (theorem numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown, Dafny line 318, OOR)
// closes with: simplest (simplest) — simplest-close
// added: lemma L318_split(k: nat) requires ((4^(k+1)*6^(k+1) + 4^(k+1)*9^(k+1)) + 6^(k+1)*9^(k+1)) == 6^(k+1)*((4^(k+1)+6^(k+1))+9^(k+1)) ensures (4^(k+1)*6^(k+1) + (4^(k+1)*9^(k+1) + 6^(k+1)*9^(k+1))) == 6^(k+1)*(4^(k+1)+(6^(k+1)+9^(k+1))) {} (Int.pow syntax; called at the line)
// Dafny: finished with 21 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_053/numbertheory_fxeq4powxp6powxp9powx_f2powmdvdf2pown-318/SCsplit.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// shard_053 line 318 simplest-close (c): the step as its own lemma over only the fact it needs (guard conjunct h₇, left-assoc), std library
include "../../../../../wt_integ5/library/library_new.dfy"
lemma L318_split(k: nat)
  requires (((Int.pow(4, (k + 1)) * Int.pow(6, (k + 1))) + (Int.pow(4, (k + 1)) * Int.pow(9, (k + 1)))) + (Int.pow(6, (k + 1)) * Int.pow(9, (k + 1)))) == (Int.pow(6, (k + 1)) * ((Int.pow(4, (k + 1)) + Int.pow(6, (k + 1))) + Int.pow(9, (k + 1))))
  ensures ((Int.pow(4, (k + 1)) * Int.pow(6, (k + 1))) + ((Int.pow(4, (k + 1)) * Int.pow(9, (k + 1))) + (Int.pow(6, (k + 1)) * Int.pow(9, (k + 1))))) == (Int.pow(6, (k + 1)) * (Int.pow(4, (k + 1)) + (Int.pow(6, (k + 1)) + Int.pow(9, (k + 1)))))
{ }
