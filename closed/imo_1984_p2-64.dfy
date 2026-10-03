// CLOSED LEMMA for failing line imo_1984_p2-64 (theorem imo_1984_p2, Dafny line 64, OOR)
// closes with: K2 (computation) — variant
// added: interval_cases enumeration as 15 per-a helper lemmas (evaluated values asserted, e.g. assert 7*(…)==126 at a=1,b=1) + one dispatcher lemma over h₁,h₂,h₃,h₉,h₁₂,h₁₃; main body `vc_L64_dispatch(a, b);` (file K2split2.dfy)
// Dafny: finished with 502 verified, 0 errors
// source file on rack: /home/changjie/lean2dafny_research/agents_tac/classify5/kinds/work/shard_037/imo_1984_p2-64/K2split2.dfy
// flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1 (timeout 30)

include "../lib/library_new.dfy"
// k_ablate shard_037 variant K2split2 (K2split + dispatcher lemma over only h1,h2,h3,h12,h13,h9 — the facts interval_cases/contradiction used) (interval_cases enumeration, one lemma per value of a; cases with 7|a, 7|b, 7|a+b closed by h1/h2/h3 as Lean`s contradiction) of imo_1984_p2-64

// Line lemma for failing line 64 of imo_1984_p2 (OOR), integ5 translation; merged from its path
// lemmas (vc_extract, encode-only): requires = facts shared by all paths, then the disjunction
// of the rest of each path; ensures = the line's claim.  Equivalent to the query Z3 gets at the line.


// ========================================================================================
// FAILING LINE 64 (OOR) in contrapose_helper_1: Verification out of resource (contrapose_helper_1)
//   dafny |   assert !(IntDvd(Int.pow(7, 7), (7 * (((((((a * a * a * a * a * a) * b) + ((3 * (a * a * a * a * a)) * (b * b))) + ((5 * (a * a * a * a)) * (b * b * b))) + ((5 * (a * a * a)) * (b * b * b * b))) + ((3 * (a * a)) * (b * b * b * b * b))) + (a * (b * b * b * b * b * b)))))) by {  // sub-goal before `h
//   statement kind: sub-goal (Lean tactic state)
//   @tac 2488-2527 | Lean: have h₉ : a + b ≤ 18 := by linarith
//        before-goal ⊢ ¬(7 : ℤ) ^ (7 : ℕ) ∣
//     (7 : ℤ) *
//       (a ^ (6 : ℕ) * b + (3 : ℤ) * a ^ (5 : ℕ) * b ^ (2 : ℕ) + (5 : ℤ) * a ^ (4 : ℕ) * b ^ (3 : ℕ) +
//             (5 : ℤ) * a ^ (3 : ℕ) * b ^ (4 : ℕ) +
//           (3 : ℤ) * a ^ (2 : ℕ) * 
//   @tac 2532-2570 | Lean: have h₁₀ : a ≤ 18 := by linarith
//        before-goal ⊢ ¬(7 : ℤ) ^ (7 : ℕ) ∣
//     (7 : ℤ) *
//       (a ^ (6 : ℕ) * b + (3 : ℤ) * a ^ (5 : ℕ) * b ^ (2 : ℕ) + (5 : ℤ) * a ^ (4 : ℕ) * b ^ (3 : ℕ) +
//             (5 : ℤ) * a ^ (3 : ℕ) * b ^ (4 : ℕ) +
//           (3 : ℤ) * a ^ (2 : ℕ) * 
//   @tac 2575-2613 | Lean: have h₁₁ : b ≤ 18 := by linarith
//        before-goal ⊢ ¬(7 : ℤ) ^ (7 : ℕ) ∣
//     (7 : ℤ) *
//       (a ^ (6 : ℕ) * b + (3 : ℤ) * a ^ (5 : ℕ) * b ^ (2 : ℕ) + (5 : ℤ) * a ^ (4 : ℕ) * b ^ (3 : ℕ) +
//             (5 : ℤ) * a ^ (3 : ℕ) * b ^ (4 : ℕ) +
//           (3 : ℤ) * a ^ (2 : ℕ) * 
//   @tac 2618-2655 | Lean: have h₁₂ : a ≥ 1 := by linarith
//        before-goal ⊢ ¬(7 : ℤ) ^ (7 : ℕ) ∣
//     (7 : ℤ) *
//       (a ^ (6 : ℕ) * b + (3 : ℤ) * a ^ (5 : ℕ) * b ^ (2 : ℕ) + (5 : ℤ) * a ^ (4 : ℕ) * b ^ (3 : ℕ) +
//             (5 : ℤ) * a ^ (3 : ℕ) * b ^ (4 : ℕ) +
//           (3 : ℤ) * a ^ (2 : ℕ) * 
//   @tac 2660-2697 | Lean: have h₁₃ : b ≥ 1 := by linarith
//        before-goal ⊢ ¬(7 : ℤ) ^ (7 : ℕ) ∣
//     (7 : ℤ) *
//       (a ^ (6 : ℕ) * b + (3 : ℤ) * a ^ (5 : ℕ) * b ^ (2 : ℕ) + (5 : ℤ) * a ^ (4 : ℕ) * b ^ (3 : ℕ) +
//             (5 : ℤ) * a ^ (3 : ℕ) * b ^ (4 : ℕ) +
//           (3 : ℤ) * a ^ (2 : ℕ) * 
//   @tac 2702-2800 | Lean: interval_cases a <;> interval_cases b <;> norm_num at h₈ ⊢ <;> try contradiction
//        before-goal ⊢ ¬(7 : ℤ) ^ (7 : ℕ) ∣
//     (7 : ℤ) *
//       (a ^ (6 : ℕ) * b + (3 : ℤ) * a ^ (5 : ℕ) * b ^ (2 : ℕ) + (5 : ℤ) * a ^ (4 : ℕ) * b ^ (3 : ℕ) +
//             (5 : ℤ) * a ^ (3 : ℕ) * b ^ (4 : ℕ) +
//           (3 : ℤ) * a ^ (2 : ℕ) * 
//   @tac 2702-2764 | Lean: interval_cases a <;> interval_cases b <;> norm_num at h₈ ⊢
//        before-goal ⊢ ¬(7 : ℤ) ^ (7 : ℕ) ∣
//     (7 : ℤ) *
//       (a ^ (6 : ℕ) * b + (3 : ℤ) * a ^ (5 : ℕ) * b ^ (2 : ℕ) + (5 : ℤ) * a ^ (4 : ℕ) * b ^ (3 : ℕ) +
//             (5 : ℤ) * a ^ (3 : ℕ) * b ^ (4 : ℕ) +
//           (3 : ℤ) * a ^ (2 : ℕ) * 
//   @tac 2702-2739 | Lean: interval_cases a <;> interval_cases b
//        before-goal ⊢ ¬(7 : ℤ) ^ (7 : ℕ) ∣
//     (7 : ℤ) *
//       (a ^ (6 : ℕ) * b + (3 : ℤ) * a ^ (5 : ℕ) * b ^ (2 : ℕ) + (5 : ℤ) * a ^ (4 : ℕ) * b ^ (3 : ℕ) +
//             (5 : ℤ) * a ^ (3 : ℕ) * b ^ (4 : ℕ) +
//           (3 : ℤ) * a ^ (2 : ℕ) * 
//   @tac 2702-2718 | Lean: interval_cases a
//        before-goal ⊢ ¬(7 : ℤ) ^ (7 : ℕ) ∣
//     (7 : ℤ) *
//       (a ^ (6 : ℕ) * b + (3 : ℤ) * a ^ (5 : ℕ) * b ^ (2 : ℕ) + (5 : ℤ) * a ^ (4 : ℕ) * b ^ (3 : ℕ) +
//             (5 : ℤ) * a ^ (3 : ℕ) * b ^ (4 : ℕ) +
//           (3 : ℤ) * a ^ (2 : ℕ) * 
// Lean theorem statement, Lean lines 9-63:
//   lean  | theorem imo_1984_p2 (a b : ℤ) (h₀ : 0 < a ∧ 0 < b) (h₁ : ¬7 ∣ a) (h₂ : ¬7 ∣ b) (h₃ : ¬7 ∣ a + b)
//   lean  |   (h₄ : 7 ^ 7 ∣ (a + b) ^ 7 - a ^ 7 - b ^ 7) : 19 ≤ a + b := by
//   lean  |   have h₅ : ¬7 ∣ a * b * (a + b) := by
//   lean  |     -- We use the fact that if 7 divides a product of integers, it must divide at least one of them.
//   lean  |     rw [Int.dvd_iff_emod_eq_zero] at h₁ h₂ h₃ h₄ ⊢
//   lean  |     -- We consider the possible residues of a and b modulo 7.
//   lean  |     have h₅ : a % 7 = 1 ∨ a % 7 = 2 ∨ a % 7 = 3 ∨ a % 7 = 4 ∨ a % 7 = 5 ∨ a % 7 = 6 := by
//   lean  |       omega
//   lean  |     have h₆ : b % 7 = 1 ∨ b % 7 = 2 ∨ b % 7 = 3 ∨ b % 7 = 4 ∨ b % 7 = 5 ∨ b % 7 = 6 := by
//   lean  |       omega
//   lean  |     have h₇ : (a + b) % 7 = 1 ∨ (a + b) % 7 = 2 ∨ (a + b) % 7 = 3 ∨ (a + b) % 7 = 4 ∨ (a + b) % 7 = 5 ∨ (a + b) % 7 = 6 := by
//   lean  |       omega
//   lean  |     -- We now consider all combinations of residues for a and b, and check the product ab(a+b) modulo 7.
//   lean  |     rcases h₅ with (h₅ | h₅ | h₅ | h₅ | h₅ | h₅) <;>
//   lean  |       rcases h₆ with (h₆ | h₆ | h₆ | h₆ | h₆ | h₆) <;>
//   lean  |         simp [h₅, h₆, Int.mul_emod, Int.add_emod, Int.sub_emod, pow_succ] at h₄ ⊢ <;>
//   lean  |           omega
//   lean  |   
//   lean  |   have h₆ : (a + b)^7 = a^7 + 7*a^6*b + 21*a^5*b^2 + 35*a^4*b^3 + 35*a^3*b^4 + 21*a^2*b^5 + 7*a*b^6 + b^7 := by
//   lean  |     rw [add_comm]
//   lean  |     -- Use the binomial theorem to expand (b + a)^7
//   lean  |     rw [add_comm]
//   lean  |     -- Simplify the expression using algebraic properties and commutativity
//   lean  |     ring_nf
//   lean  |     -- Normalize the numerical coefficients
//   lean  |     <;> norm_num
//   lean  |     -- Simplify the expression further
//   lean  |     <;> simp_all
//   lean  |     -- Use the omega tactic to solve the remaining arithmetic constraints
//   lean  |     <;> omega
//   lean  |   
//   lean  |   have h₇ : (a + b)^7 - a^7 - b^7 = 7*(a^6*b + 3*a^5*b^2 + 5*a^4*b^3 + 5*a^3*b^4 + 3*a^2*b^5 + a*b^6) := by
//   lean  |     ring_nf at h₆ ⊢
//   lean  |     <;> omega
//   lean  |   
//   lean  |   have h₈ : 7^7 ∣ 7*(a^6*b + 3*a^5*b^2 + 5*a^4*b^3 + 5*a^3*b^4 + 3*a^2*b^5 + a*b^6) := by
//   lean  |     -- We use the given conditions to simplify and conclude the divisibility.
//   lean  |     norm_num at h₁ h₂ h₃ h₄ h₅
//   lean  |     -- Use the properties of divisibility and the given conditions to conclude the proof.
//   lean  |     simp_all [Int.mul_emod, Int.add_emod, pow_succ]
//   lean  |   
//   lean  |   have h₉ : 19 ≤ a + b := by
//   lean  |     contrapose! h₈
//   lean  |     have h₉ : a + b ≤ 18 := by linarith
//   lean  |     have h₁₀ : a ≤ 18 := by linarith
//   lean  |     have h₁₁ : b ≤ 18 := by linarith
//   lean  |     have h₁₂ : a ≥ 1 := by linarith
//   lean  |     have h₁₃ : b ≥ 1 := by linarith
//   lean  |     interval_cases a <;> interval_cases b <;> norm_num at h₈ ⊢ <;> try contradiction
//   lean  |     <;> omega
//   lean  |   
//   lean  |   -- This is a placeholder to satisfy the proof, as the actual logic is in the simplification and contradiction steps.
//   lean  |   linarith
//   lean  | 

// 1 path(s) merged (paths); 17 shared facts; 1 distinct path conditions
lemma {:induction false} vc_L64_case_a1(a: int, b: int)
  requires a == 1
  requires 1 <= b <= 17
  requires !IntDvd(7, b)
  requires !IntDvd(7, a + b)
  ensures !IntDvd(Int.pow(7, 7), 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)))
{
  assert Int.pow(7, 7) == 823543;
  if b == 1 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 126; assert 126 % 823543 == 126; }
  else if b == 2 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 2058; assert 2058 % 823543 == 2058; }
  else if b == 3 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 14196; assert 14196 % 823543 == 14196; }
  else if b == 4 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 61740; assert 61740 % 823543 == 61740; }
  else if b == 5 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 201810; assert 201810 % 823543 == 201810; }
  else if b == 8 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 2685816; assert 2685816 % 823543 == 215187; }
  else if b == 9 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 5217030; assert 5217030 % 823543 == 275772; }
  else if b == 10 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 9487170; assert 9487170 % 823543 == 428197; }
  else if b == 11 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 16344636; assert 16344636 % 823543 == 697319; }
  else if b == 12 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 26916708; assert 26916708 % 823543 == 563332; }
  else if b == 15 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 97576080; assert 97576080 % 823543 == 398006; }
  else if b == 16 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 141903216; assert 141903216 % 823543 == 253820; }
  else if b == 17 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 201881358; assert 201881358 % 823543 == 113323; }
}

lemma {:induction false} vc_L64_case_a2(a: int, b: int)
  requires a == 2
  requires 1 <= b <= 16
  requires !IntDvd(7, b)
  requires !IntDvd(7, a + b)
  ensures !IntDvd(Int.pow(7, 7), 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)))
{
  assert Int.pow(7, 7) == 823543;
  if b == 1 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 2058; assert 2058 % 823543 == 2058; }
  else if b == 2 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 16128; assert 16128 % 823543 == 16128; }
  else if b == 3 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 75810; assert 75810 % 823543 == 75810; }
  else if b == 4 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 263424; assert 263424 % 823543 == 263424; }
  else if b == 6 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 1817088; assert 1817088 % 823543 == 170002; }
  else if b == 8 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 7902720; assert 7902720 % 823543 == 490833; }
  else if b == 9 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 14704074; assert 14704074 % 823543 == 703843; }
  else if b == 10 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 25831680; assert 25831680 % 823543 == 301847; }
  else if b == 11 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 43261218; assert 43261218 % 823543 == 436982; }
  else if b == 13 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 108110730; assert 108110730 % 823543 == 226597; }
  else if b == 15 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 239479170; assert 239479170 % 823543 == 651700; }
  else if b == 16 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 343784448; assert 343784448 % 823543 == 367017; }
}

lemma {:induction false} vc_L64_case_a3(a: int, b: int)
  requires a == 3
  requires 1 <= b <= 15
  requires !IntDvd(7, b)
  requires !IntDvd(7, a + b)
  ensures !IntDvd(Int.pow(7, 7), 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)))
{
  assert Int.pow(7, 7) == 823543;
  if b == 1 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 14196; assert 14196 % 823543 == 14196; }
  else if b == 2 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 75810; assert 75810 % 823543 == 75810; }
  else if b == 3 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 275562; assert 275562 % 823543 == 275562; }
  else if b == 5 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 2016840; assert 2016840 % 823543 == 369754; }
  else if b == 6 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 4500846; assert 4500846 % 823543 == 383131; }
  else if b == 8 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 17387832; assert 17387832 % 823543 == 93429; }
  else if b == 9 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 31046652; assert 31046652 % 823543 == 575561; }
  else if b == 10 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 52746330; assert 52746330 % 823543 == 39578; }
  else if b == 12 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 135025380; assert 135025380 % 823543 == 787871; }
  else if b == 13 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 205684752; assert 205684752 % 823543 == 622545; }
  else if b == 15 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 441358470; assert 441358470 % 823543 == 762965; }
}

lemma {:induction false} vc_L64_case_a4(a: int, b: int)
  requires a == 4
  requires 1 <= b <= 14
  requires !IntDvd(7, b)
  requires !IntDvd(7, a + b)
  ensures !IntDvd(Int.pow(7, 7), 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)))
{
  assert Int.pow(7, 7) == 823543;
  if b == 1 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 61740; assert 61740 % 823543 == 61740; }
  else if b == 2 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 263424; assert 263424 % 823543 == 263424; }
  else if b == 4 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 2064384; assert 2064384 % 823543 == 417298; }
  else if b == 5 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 4688460; assert 4688460 % 823543 == 570745; }
  else if b == 6 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 9703680; assert 9703680 % 823543 == 644707; }
  else if b == 8 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 33718272; assert 33718272 % 823543 == 776552; }
  else if b == 9 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 57949164; assert 57949164 % 823543 == 301154; }
  else if b == 11 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 151355820; assert 151355820 % 823543 == 647451; }
  else if b == 12 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 232587264; assert 232587264 % 823543 == 348138; }
  else if b == 13 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 347573772; assert 347573772 % 823543 == 38626; }
}

lemma {:induction false} vc_L64_case_a5(a: int, b: int)
  requires a == 5
  requires 1 <= b <= 13
  requires !IntDvd(7, b)
  requires !IntDvd(7, a + b)
  ensures !IntDvd(Int.pow(7, 7), 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)))
{
  assert Int.pow(7, 7) == 823543;
  if b == 1 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 201810; assert 201810 % 823543 == 201810; }
  else if b == 3 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 2016840; assert 2016840 % 823543 == 369754; }
  else if b == 4 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 4688460; assert 4688460 % 823543 == 570745; }
  else if b == 5 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 9843750; assert 9843750 % 823543 == 784777; }
  else if b == 6 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 19129110; assert 19129110 % 823543 == 187621; }
  else if b == 8 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 60573240; assert 60573240 % 823543 == 454601; }
  else if b == 10 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 160781250; assert 160781250 % 823543 == 190365; }
  else if b == 11 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 248870160; assert 248870160 % 823543 == 160174; }
  else if b == 12 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 374428740; assert 374428740 % 823543 == 540218; }
  else if b == 13 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 549393390; assert 549393390 % 823543 == 90209; }
}

lemma {:induction false} vc_L64_case_a6(a: int, b: int)
  requires a == 6
  requires 1 <= b <= 12
  requires !IntDvd(7, b)
  requires !IntDvd(7, a + b)
  ensures !IntDvd(Int.pow(7, 7), 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)))
{
  assert Int.pow(7, 7) == 823543;
  if b == 2 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 1817088; assert 1817088 % 823543 == 170002; }
  else if b == 3 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 4500846; assert 4500846 % 823543 == 383131; }
  else if b == 4 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 9703680; assert 9703680 % 823543 == 644707; }
  else if b == 5 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 19129110; assert 19129110 % 823543 == 187621; }
  else if b == 6 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 35271936; assert 35271936 % 823543 == 683130; }
  else if b == 9 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 165796470; assert 165796470 % 823543 == 264327; }
  else if b == 10 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 258155520; assert 258155520 % 823543 == 386561; }
  else if b == 11 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 390571566; assert 390571566 % 823543 == 212184; }
  else if b == 12 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 576108288; assert 576108288 % 823543 == 451731; }
}

lemma {:induction false} vc_L64_case_a8(a: int, b: int)
  requires a == 8
  requires 1 <= b <= 10
  requires !IntDvd(7, b)
  requires !IntDvd(7, a + b)
  ensures !IntDvd(Int.pow(7, 7), 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)))
{
  assert Int.pow(7, 7) == 823543;
  if b == 1 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 2685816; assert 2685816 % 823543 == 215187; }
  else if b == 2 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 7902720; assert 7902720 % 823543 == 490833; }
  else if b == 3 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 17387832; assert 17387832 % 823543 == 93429; }
  else if b == 4 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 33718272; assert 33718272 % 823543 == 776552; }
  else if b == 5 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 60573240; assert 60573240 % 823543 == 454601; }
  else if b == 8 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 264241152; assert 264241152 % 823543 == 707392; }
  else if b == 9 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 403458552; assert 403458552 % 823543 == 746025; }
  else if b == 10 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 600122880; assert 600122880 % 823543 == 583576; }
}

lemma {:induction false} vc_L64_case_a9(a: int, b: int)
  requires a == 9
  requires 1 <= b <= 9
  requires !IntDvd(7, b)
  requires !IntDvd(7, a + b)
  ensures !IntDvd(Int.pow(7, 7), 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)))
{
  assert Int.pow(7, 7) == 823543;
  if b == 1 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 5217030; assert 5217030 % 823543 == 275772; }
  else if b == 2 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 14704074; assert 14704074 % 823543 == 703843; }
  else if b == 3 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 31046652; assert 31046652 % 823543 == 575561; }
  else if b == 4 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 57949164; assert 57949164 % 823543 == 301154; }
  else if b == 6 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 165796470; assert 165796470 % 823543 == 264327; }
  else if b == 8 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 403458552; assert 403458552 % 823543 == 746025; }
  else if b == 9 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 602654094; assert 602654094 % 823543 == 644161; }
}

lemma {:induction false} vc_L64_case_a10(a: int, b: int)
  requires a == 10
  requires 1 <= b <= 8
  requires !IntDvd(7, b)
  requires !IntDvd(7, a + b)
  ensures !IntDvd(Int.pow(7, 7), 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)))
{
  assert Int.pow(7, 7) == 823543;
  if b == 1 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 9487170; assert 9487170 % 823543 == 428197; }
  else if b == 2 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 25831680; assert 25831680 % 823543 == 301847; }
  else if b == 3 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 52746330; assert 52746330 % 823543 == 39578; }
  else if b == 5 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 160781250; assert 160781250 % 823543 == 190365; }
  else if b == 6 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 258155520; assert 258155520 % 823543 == 386561; }
  else if b == 8 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 600122880; assert 600122880 % 823543 == 583576; }
}

lemma {:induction false} vc_L64_case_a11(a: int, b: int)
  requires a == 11
  requires 1 <= b <= 7
  requires !IntDvd(7, b)
  requires !IntDvd(7, a + b)
  ensures !IntDvd(Int.pow(7, 7), 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)))
{
  assert Int.pow(7, 7) == 823543;
  if b == 1 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 16344636; assert 16344636 % 823543 == 697319; }
  else if b == 2 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 43261218; assert 43261218 % 823543 == 436982; }
  else if b == 4 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 151355820; assert 151355820 % 823543 == 647451; }
  else if b == 5 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 248870160; assert 248870160 % 823543 == 160174; }
  else if b == 6 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 390571566; assert 390571566 % 823543 == 212184; }
}

lemma {:induction false} vc_L64_case_a12(a: int, b: int)
  requires a == 12
  requires 1 <= b <= 6
  requires !IntDvd(7, b)
  requires !IntDvd(7, a + b)
  ensures !IntDvd(Int.pow(7, 7), 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)))
{
  assert Int.pow(7, 7) == 823543;
  if b == 1 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 26916708; assert 26916708 % 823543 == 563332; }
  else if b == 3 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 135025380; assert 135025380 % 823543 == 787871; }
  else if b == 4 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 232587264; assert 232587264 % 823543 == 348138; }
  else if b == 5 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 374428740; assert 374428740 % 823543 == 540218; }
  else if b == 6 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 576108288; assert 576108288 % 823543 == 451731; }
}

lemma {:induction false} vc_L64_case_a13(a: int, b: int)
  requires a == 13
  requires 1 <= b <= 5
  requires !IntDvd(7, b)
  requires !IntDvd(7, a + b)
  ensures !IntDvd(Int.pow(7, 7), 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)))
{
  assert Int.pow(7, 7) == 823543;
  if b == 2 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 108110730; assert 108110730 % 823543 == 226597; }
  else if b == 3 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 205684752; assert 205684752 % 823543 == 622545; }
  else if b == 4 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 347573772; assert 347573772 % 823543 == 38626; }
  else if b == 5 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 549393390; assert 549393390 % 823543 == 90209; }
}

lemma {:induction false} vc_L64_case_a15(a: int, b: int)
  requires a == 15
  requires 1 <= b <= 3
  requires !IntDvd(7, b)
  requires !IntDvd(7, a + b)
  ensures !IntDvd(Int.pow(7, 7), 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)))
{
  assert Int.pow(7, 7) == 823543;
  if b == 1 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 97576080; assert 97576080 % 823543 == 398006; }
  else if b == 2 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 239479170; assert 239479170 % 823543 == 651700; }
  else if b == 3 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 441358470; assert 441358470 % 823543 == 762965; }
}

lemma {:induction false} vc_L64_case_a16(a: int, b: int)
  requires a == 16
  requires 1 <= b <= 2
  requires !IntDvd(7, b)
  requires !IntDvd(7, a + b)
  ensures !IntDvd(Int.pow(7, 7), 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)))
{
  assert Int.pow(7, 7) == 823543;
  if b == 1 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 141903216; assert 141903216 % 823543 == 253820; }
  else if b == 2 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 343784448; assert 343784448 % 823543 == 367017; }
}

lemma {:induction false} vc_L64_case_a17(a: int, b: int)
  requires a == 17
  requires 1 <= b <= 1
  requires !IntDvd(7, b)
  requires !IntDvd(7, a + b)
  ensures !IntDvd(Int.pow(7, 7), 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)))
{
  assert Int.pow(7, 7) == 823543;
  if b == 1 { assert 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)) == 201881358; assert 201881358 % 823543 == 113323; }
}

lemma {:induction false} vc_L64_dispatch(a: int, b: int)
  requires 1 <= a && 1 <= b && a + b <= 18
  requires !IntDvd(7, a)
  requires !IntDvd(7, b)
  requires !IntDvd(7, a + b)
  ensures !IntDvd(Int.pow(7, 7), 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)))
{
  if a == 1 { vc_L64_case_a1(a, b); }
  else if a == 2 { vc_L64_case_a2(a, b); }
  else if a == 3 { vc_L64_case_a3(a, b); }
  else if a == 4 { vc_L64_case_a4(a, b); }
  else if a == 5 { vc_L64_case_a5(a, b); }
  else if a == 6 { vc_L64_case_a6(a, b); }
  else if a == 8 { vc_L64_case_a8(a, b); }
  else if a == 9 { vc_L64_case_a9(a, b); }
  else if a == 10 { vc_L64_case_a10(a, b); }
  else if a == 11 { vc_L64_case_a11(a, b); }
  else if a == 12 { vc_L64_case_a12(a, b); }
  else if a == 13 { vc_L64_case_a13(a, b); }
  else if a == 15 { vc_L64_case_a15(a, b); }
  else if a == 16 { vc_L64_case_a16(a, b); }
  else if a == 17 { vc_L64_case_a17(a, b); }
}

lemma {:induction false} vc_imo_1984_p2_L64(a: int, b: int)
  requires 0 < a
  requires 0 < b
  requires !IntDvd(7, a)
  requires !IntDvd(7, b)
  requires !IntDvd(7, a + b)
  requires IntDvd(Int.pow(7, 7), Int.pow(a + b, 7) - Int.pow(a, 7) - Int.pow(b, 7))
  requires if Int.pow(7, 7) == 0 then Int.pow(a + b, 7) - Int.pow(a, 7) - Int.pow(b, 7) == 0 else (Int.pow(a + b, 7) - Int.pow(a, 7) - Int.pow(b, 7)) % Int.pow(7, 7) == 0
  requires !IntDvd(7, a * b * (a + b))
  requires Int.pow(a + b, 7) == Int.pow(a, 7) + 7 * (a * a * a * a * a * a) * b + 21 * (a * a * a * a * a) * (b * b) + 35 * (a * a * a * a) * (b * b * b) + 35 * (a * a * a) * (b * b * b * b) + 21 * (a * a) * (b * b * b * b * b) + 7 * a * (b * b * b * b * b * b) + Int.pow(b, 7)
  requires Int.pow(a + b, 7) - Int.pow(a, 7) - Int.pow(b, 7) == 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b))
  requires a + b < 19
  requires a + b <= 18
  requires a <= 18
  requires b <= 18
  requires a >= 1
  requires b >= 1
  requires 0 <= 7
  ensures  !IntDvd(Int.pow(7, 7), 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b)))
{
  vc_L64_dispatch(a, b);
}

// side checks at the same line (not the reported failure): 1 check(s)
// side check: value always satisfies the subset constraints of 'nat'
lemma {:induction false} vc_imo_1984_p2_L64_side1(a: int, b: int)
  requires 0 < a
  requires 0 < b
  requires !IntDvd(7, a)
  requires !IntDvd(7, b)
  requires !IntDvd(7, a + b)
  requires IntDvd(Int.pow(7, 7), Int.pow(a + b, 7) - Int.pow(a, 7) - Int.pow(b, 7))
  requires if Int.pow(7, 7) == 0 then Int.pow(a + b, 7) - Int.pow(a, 7) - Int.pow(b, 7) == 0 else (Int.pow(a + b, 7) - Int.pow(a, 7) - Int.pow(b, 7)) % Int.pow(7, 7) == 0
  requires !IntDvd(7, a * b * (a + b))
  requires Int.pow(a + b, 7) == Int.pow(a, 7) + 7 * (a * a * a * a * a * a) * b + 21 * (a * a * a * a * a) * (b * b) + 35 * (a * a * a * a) * (b * b * b) + 35 * (a * a * a) * (b * b * b * b) + 21 * (a * a) * (b * b * b * b * b) + 7 * a * (b * b * b * b * b * b) + Int.pow(b, 7)
  requires Int.pow(a + b, 7) - Int.pow(a, 7) - Int.pow(b, 7) == 7 * (a * a * a * a * a * a * b + 3 * (a * a * a * a * a) * (b * b) + 5 * (a * a * a * a) * (b * b * b) + 5 * (a * a * a) * (b * b * b * b) + 3 * (a * a) * (b * b * b * b * b) + a * (b * b * b * b * b * b))
  requires a + b < 19
  requires a + b <= 18
  requires a <= 18
  requires b <= 18
  requires a >= 1
  requires b >= 1
  ensures  0 <= 7
{ }

