// CLOSED LEMMA for failing line imo_1966_p4-54 (theorem imo_1966_p4, Dafny line 54, OOR)
// closes with: K5 (automation lemma) — single
// added: FinsetSumSingletonNat(1, F)  [exact Mathlib Finset.sum_singleton (ℕ-indexed), added to work copy; Lean applied it internally at exec 732]
// Dafny: finished with 30 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_030/imo_1966_p4-54/K5.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

// k_ablate shard_030, line imo_1966_p4-54, variant K5
// K5: Finset.sum_singleton at (f, 1) (Lean exec 732, internal application)
// base = line_lemmas/OOR/imo_1966_p4/L54.dfy main lemma (side-check lemmas omitted)
include "../../../../../wt_integ5/out/imo_1966_p4.dfy"

// Lean (Mathlib): Finset.sum_singleton (f : α → β) (a : α) : ∑ x ∈ {a}, f x = f a   (α = ℕ, β = ℝ);
// Lean applied it (internal, exec 732) at (fun x_1 => (sin (2^x_1 * x))⁻¹, 1)
lemma {:axiom} FinsetSumSingletonNat(a: nat, f: nat -> real)
  ensures Real.sum({a}, f) == f(a)

lemma {:induction false} vc_imo_1966_p4_L54_K5(n: int, n_1_0: int, n_1_0_0: int, n_1_0_1_0: int, x: real)
  requires 0 <= n
  requires 0 <= n_1_0
  requires 0 <= n_1_0_1_0
  requires forall k_1: nat :: 0 < k_1 ==> (forall m_2: int :: x != Real.div((m_2 as real) * Real.pi(), Real.pow(2.0, k_1)))
  requires Real.div(1.0, Real.sin(2.0 * x)) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(2.0 * x))
  requires forall m_4: nat :: 0 < m_4 ==> Real.sum(IccN(1, m_4), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, m_4) * x)) ==> Real.sum(IccN(1, m_4 + 1), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, m_4 + 1) * x))
  requires forall n0: int :: (forall k_5: nat :: 0 < k_5 ==> (forall m_5: int :: true)) && ((forall k_5: nat :: 0 < k_5 ==> (forall m_5: int :: x != Real.div((m_5 as real) * Real.pi(), Real.pow(2.0, k_5)))) ==> Real.div(1.0, Real.sin(2.0 * x)) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(2.0 * x)) ==> (forall m_6: nat :: 0 < m_6 ==> (forall k: int :: true) && (Real.sum(IccN(1, m_6), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, m_6) * x)) ==> (forall k: int :: true)))) && (0 <= n0 && (forall k_5: nat :: 0 < k_5 ==> (forall m_5: int :: x != Real.div((m_5 as real) * Real.pi(), Real.pow(2.0, k_5)))) && Real.div(1.0, Real.sin(2.0 * x)) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(2.0 * x)) && (forall m_6: nat :: 0 < m_6 ==> Real.sum(IccN(1, m_6), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, m_6) * x)) ==> Real.sum(IccN(1, m_6 + 1), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, m_6 + 1) * x))) && 0 <= n0 && n0 < n ==> (0 < n0 ==> (forall k: int :: true)) && (0 < n0 ==> Real.sum(IccN(1, n0), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, n0) * x))))
  requires n != 0
  requires 0 <= n - 1
  requires 0 <= n || n - 1 == n
  requires n - 1 < n
  requires forall k_1: nat :: 0 < k_1 ==> (forall m_2: int :: x != Real.div((m_2 as real) * Real.pi(), Real.pow(2.0, k_1)))
  requires forall m_4: nat :: 0 < m_4 ==> Real.sum(IccN(1, m_4), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, m_4) * x)) ==> Real.sum(IccN(1, m_4 + 1), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, m_4 + 1) * x))
  requires 0 < n - 1 ==> Real.sum(IccN(1, n - 1), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, n - 1) * x))
  requires n_1_0_0 == n - 1
  requires 0 < n_1_0_0 + 1
  requires n_1_0_0 == 0
  requires 0 <= 1
  requires 0 < 0 ==> Real.sum(IccN(1, 0), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, 0) * x))
  requires 0 < 0 + 1
  requires IccN(1, 1) == {1}
  requires Real.pow(2.0, 1) == 2.0
  requires 0 <= 0 + 1
  requires ((0 < 0) && (0 <= 0)) || (!(0 < 0))
  ensures  Real.sum(IccN(1, 0 + 1), ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x)))) == Real.div(1.0, Real.tan(x)) - Real.div(1.0, Real.tan(Real.pow(2.0, 0 + 1) * x))
{
  FinsetSumSingletonNat(1, ((k: nat) => Real.div(1.0, Real.sin(Real.pow(2.0, k) * x))));  // K5: Finset.sum_singleton
}
