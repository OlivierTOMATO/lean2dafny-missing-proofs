# Missing Lean proofs — Lean → Dafny failing lines

Live site: https://oliviertomato.github.io/lean2dafny-missing-proofs/

One self-contained page (`index.html`: inline CSS, JS and data; only Google Fonts load from the web). For each line
Dafny fails on in the translated competition proofs, it shows the Lean step the line translates, the part of that
step's proof the translator left to Z3, the extracted subgoal lemma, and why the line fails (labels from independent
reviewers). Dafny bar in every round: `dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings`,
Dafny 4.11.

The page covers three rounds:

* **v3 (2026-09-25), the first round:** 306 failing lines in 60 files, labelled by four reviewers. The sections at the top of the page.
* **r6 (2026-10-01), the previous round:** the gated-explicit-statements translator; 462 failing lines re-labelled by four reviewers (section "Round r6 (previous round)").
* **integ5 (2026-10-02/03), the latest round:** the candidate translator that states every Lean tactic's before-goal; 101 theorems, 499 failing lines labelled by three reviewers with adjudication, a fix task per line, the ranked fix list, the size of the missing Lean block (corrected count), and the systematic gaps of the 267 lines that miss only 1–3 Lean lines.

`r6.html` is the page as published for round r6, kept for reference.

Every "closes" on the page is a standalone Dafny check of an extracted subgoal lemma; no proposed fix has been
re-verified inside its theorem file.
