// CLOSED — failing line imo_1964_p1_1-87: theorem imo_1964_p1_1, Dafny line 87 (OOR: Verification out of resource (imo_1964_p1_1))
// failing Dafny line: assert ((Int.pow((2 % 7), (n % 3)) % 7) == 1);
// Lean step: simp [pow_add, pow_mul, Nat.pow_mod, Nat.mul_mod, Nat.mod_mod] at h₃
// hypotheses: 15 facts Z3 had at the line; nothing assumed beyond the facts in scope
// how it closes: pass2 — kept only the h3 hypothesis; pow_add/pow_mul stated as forall-facts (matched at the goal's terms), proved helpers Pow8Mod7_b9 (induction, 8^k % 7 == 1), S3Mod7_b9 (Nat.mul_mod step on ints), then Nat.pow_mod(2,n%3,7)
// Dafny: Dafny program verifier finished with 60 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s; 2.2s)

include "../dafny/imo_1964_p1_1.dfy"
lemma {:induction false} vc_imo_1964_p1_1_L87(n: nat)
  requires 0 <= n
  requires Int.pow(2, n % 3 + 3 * (n / 3)) % 7 == 1 % 7
  ensures   Int.pow(2 % 7, n % 3) % 7 == 1
{
  // pow_add / pow_mul, stated as quantified facts so Z3 instantiates them at the goal's terms by matching
  forall m: nat, e: nat | m == n % 3 && e == 3 * (n / 3) ensures Int.pow(2, m + e) == Int.pow(2, m) * Int.pow(2, e) { NatPowAdd(2, m, e); }  // [ADDED]
  forall d: nat | d == n / 3 ensures Int.pow(2, 3 * d) == Int.pow(8, d) { NatPowMul(2, 3, d); Pow2Cubed_b9(); }  // [ADDED]
  Pow8Mod7_b9(n / 3);  // [ADDED]
  S3Mod7_b9(Int.pow(2, n % 3), Int.pow(8, n / 3));  // [ADDED]
  NatPowMod(2, n % 3, 7);  // [ADDED]
}

// helpers (all proved; the pow-free ones carry the modular arithmetic, the pow ones only congruence)
lemma Pow2Cubed_b9() ensures Int.pow(2, 3) == 8 {}  // [ADDED DECLARATION]
lemma OneMod7_b9(q: int) requires q == 1 ensures q % 7 == 1 {}  // [ADDED DECLARATION]
lemma Mul8Mod7_b9(p: int, q: int) requires p % 7 == 1 requires q == 8 * p ensures q % 7 == 1 {}  // [ADDED DECLARATION]
lemma S3Mod7_b9(p: nat, q: nat) requires q % 7 == 1 requires (p * q) % 7 == 1 % 7 ensures p % 7 == 1 { NatMulMod(p, q, 7); }  // [ADDED DECLARATION]
lemma {:induction false} Pow8Mod7_b9(b: nat)  // [ADDED DECLARATION]
  ensures Int.pow(8, b) % 7 == 1
  decreases b
{
  if b == 0 {
    assert Int.pow(8, b) == 1;
    OneMod7_b9(Int.pow(8, b));
  } else {
    forall c: nat | c == b - 1 ensures Int.pow(8, c) % 7 == 1 { Pow8Mod7_b9(c); }
    assert Int.pow(8, b) == 8 * Int.pow(8, b - 1);
    Mul8Mod7_b9(Int.pow(8, b - 1), Int.pow(8, b));
  }
}

