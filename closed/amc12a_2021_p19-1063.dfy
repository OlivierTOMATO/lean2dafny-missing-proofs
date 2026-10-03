// CLOSED LEMMA for failing line amc12a_2021_p19-1063 (theorem amc12a_2021_p19, Dafny line 1063, OOR)
// closes with: K3 (locality) — base
// added: nothing (line lemma standalone)
// Dafny: verifies unchanged (dossier standalone check)
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/line_lemmas/OOR/amc12a_2021_p19/L1063.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// Line lemma for failing line 1063 of amc12a_2021_p19 (OOR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.
include "../../../../wt_integ5/out/amc12a_2021_p19.dfy"

// ========================================================================================
// FAILING LINE 1063 (OOR) in amc12a_2021_p19: Verification out of resource (amc12a_2021_p19)
//   dafny |                     SqNonneg((1.0 - Real.cos(x))); assert (0.0 <= ((1.0 - Real.cos(x)) * (1.0 - Real.cos(x))));  // cert: sq_nonneg
//   statement kind: cert (lemma application in a certificate)
// inside Lean have h₅₈, Lean lines 77-78:
//   lean  |         have h₅₈ : (1 - Real.cos x) ^ 2 = 1 - Real.cos x ^ 2 := by
//   lean  |           nlinarith [Real.sin_sq_add_cos_sq x]

// 1 path(s) merged (joined); 21 shared facts; 1 distinct path conditions
lemma {:induction false} vc_amc12a_2021_p19_L1063(S: set<real>, x_0_0_0_0: real)
  requires forall x_1: real :: (x_1 in S) == (0.0 <= x_1 && x_1 <= Real.pi() && Real.sin(Real.pi() / 2.0 * Real.cos(x_1)) == Real.cos(Real.pi() / 2.0 * Real.sin(x_1)))
  requires ((0.0 <= x_0_0_0_0) && ((x_0_0_0_0 <= Real.pi()) || (Real.pi() < x_0_0_0_0))) || (x_0_0_0_0 < 0.0)
  requires (x_0_0_0_0 in S) == (0.0 <= x_0_0_0_0 && x_0_0_0_0 <= Real.pi() && Real.sin(Real.pi() / 2.0 * Real.cos(x_0_0_0_0)) == Real.cos(Real.pi() / 2.0 * Real.sin(x_0_0_0_0)))
  requires ((0.0 <= x_0_0_0_0) && (((x_0_0_0_0 <= Real.pi()) && (2.0 != 0.0)) || (Real.pi() < x_0_0_0_0))) || (x_0_0_0_0 < 0.0)
  requires 0.0 <= x_0_0_0_0
  requires x_0_0_0_0 <= Real.pi()
  requires Real.sin(Real.pi() / 2.0 * Real.cos(x_0_0_0_0)) == Real.cos(Real.pi() / 2.0 * Real.sin(x_0_0_0_0))
  requires 2.0 != 0.0
  requires Real.sin(Real.pi() / 2.0 * Real.cos(x_0_0_0_0)) == Real.cos(Real.pi() / 2.0 * (1.0 - Real.cos(x_0_0_0_0)))
  requires Real.cos(Real.pi() / 2.0 * (1.0 - Real.cos(x_0_0_0_0))) == Real.cos(Real.pi() / 2.0 * Real.sin(x_0_0_0_0))
  requires Real.pi() / 2.0 * (1.0 - Real.cos(x_0_0_0_0)) == Real.pi() / 2.0 * Real.sin(x_0_0_0_0)
  requires 1.0 - Real.cos(x_0_0_0_0) == Real.sin(x_0_0_0_0)
  requires Real.sin(x_0_0_0_0) == 1.0 - Real.cos(x_0_0_0_0)
  requires Real.sin(x_0_0_0_0) * Real.sin(x_0_0_0_0) + Real.cos(x_0_0_0_0) * Real.cos(x_0_0_0_0) == 1.0
  requires Real.sin(x_0_0_0_0) >= 0.0
  requires (0.0 <= Real.cos(x_0_0_0_0) * Real.cos(x_0_0_0_0)) || (Real.cos(x_0_0_0_0) * Real.cos(x_0_0_0_0) < 0.0)
  requires ((0.0 <= Real.cos(x_0_0_0_0) * Real.cos(x_0_0_0_0)) && (1.0 - Real.cos(x_0_0_0_0) - Real.sin(x_0_0_0_0) == 0.0) && (0.0 - Real.cos(x_0_0_0_0) * Real.cos(x_0_0_0_0) * (1.0 - Real.cos(x_0_0_0_0) - Real.sin(x_0_0_0_0)) == 0.0)) || (!(0.0 <= Real.cos(x_0_0_0_0) * Real.cos(x_0_0_0_0) && 1.0 - Real.cos(x_0_0_0_0) - Real.sin(x_0_0_0_0) == 0.0))
  requires 0.0 <= Real.cos(x_0_0_0_0) * Real.cos(x_0_0_0_0)
  requires (0.0 <= (1.0 - Real.cos(x_0_0_0_0)) * (1.0 - Real.cos(x_0_0_0_0))) || ((1.0 - Real.cos(x_0_0_0_0)) * (1.0 - Real.cos(x_0_0_0_0)) < 0.0)
  requires ((0.0 <= (1.0 - Real.cos(x_0_0_0_0)) * (1.0 - Real.cos(x_0_0_0_0))) && (1.0 - Real.cos(x_0_0_0_0) - Real.sin(x_0_0_0_0) == 0.0) && (0.0 - (1.0 - Real.cos(x_0_0_0_0)) * (1.0 - Real.cos(x_0_0_0_0)) * (1.0 - Real.cos(x_0_0_0_0) - Real.sin(x_0_0_0_0)) == 0.0)) || (!(0.0 <= (1.0 - Real.cos(x_0_0_0_0)) * (1.0 - Real.cos(x_0_0_0_0)) && 1.0 - Real.cos(x_0_0_0_0) - Real.sin(x_0_0_0_0) == 0.0))
  requires 0.0 <= (1.0 - Real.cos(x_0_0_0_0)) * (1.0 - Real.cos(x_0_0_0_0))
  ensures  0.0 <= (1.0 - Real.cos(x_0_0_0_0)) * (1.0 - Real.cos(x_0_0_0_0))
{ }

