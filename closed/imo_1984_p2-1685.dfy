// CLOSED — failing line imo_1984_p2-1685: theorem imo_1984_p2, Dafny line 1685 (OOR: Verification out of resource (imo_1984_p2))
// failing Dafny line: assert !((((a * b) * (a + b)) % 7) == 0);
// Lean step: simp [h₅, h₆, Int.mul_emod, Int.add_emod, Int.sub_emod, pow_succ] at h₄ ⊢
// hypotheses: 37 facts Z3 had at the line; nothing assumed beyond the facts in scope; pass2 kept 30 of 37 facts (dropped 7 facts: the interval_cases case-structure conjunctions plus the IntDvd(Int.pow(7,7),..)/IntMod(..)/`if Int.pow(7,7)==0` facts, none of which concern the mod-7 goal; hypotheses only dropped, none added)
// how it closes: pass2 — dropped the interval_cases case-structure facts and the pow/IntMod facts; IntMulEmod(a*b, a+b, 7); IntMulEmod(a, b, 7); proved helper Mod7NonZero(x,y,z) (36-way case split on x,y in 1..6 with (x*y)%7 evaluated) called on (a%7, b%7, (a+b)%7)
// Dafny: finished with 199 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/imo_1984_p2.dfy"
lemma {:induction false} vc_imo_1984_p2_L1685(a: int, b: int)
  requires 0 < a
  requires 0 < b
  requires !IntDvd(7, a)
  requires !IntDvd(7, b)
  requires !IntDvd(7, a + b)
  requires 7 != 0
  requires 7 != 0
  requires (a * b * (a + b) % 7 == 0) == (exists k: int :: a * b * (a + b) == 7 * k)
  requires a % 7 != 0
  requires b % 7 != 0
  requires (a + b) % 7 != 0
  requires 0 <= 7
  requires ((a % 7 != 1) && (7 != 0) && (((a % 7 != 2) && (7 != 0) && (((a % 7 != 3) && (7 != 0) && (((a % 7 != 4) && (7 != 0) && (((a % 7 != 5) && (7 != 0)) || (a % 7 == 5))) || (a % 7 == 4))) || (a % 7 == 3))) || (a % 7 == 2))) || (a % 7 == 1)
  requires a % 7 == 1 || a % 7 == 2 || a % 7 == 3 || a % 7 == 4 || a % 7 == 5 || a % 7 == 6
  requires ((b % 7 != 1) && (7 != 0) && (((b % 7 != 2) && (7 != 0) && (((b % 7 != 3) && (7 != 0) && (((b % 7 != 4) && (7 != 0) && (((b % 7 != 5) && (7 != 0)) || (b % 7 == 5))) || (b % 7 == 4))) || (b % 7 == 3))) || (b % 7 == 2))) || (b % 7 == 1)
  requires b % 7 == 1 || b % 7 == 2 || b % 7 == 3 || b % 7 == 4 || b % 7 == 5 || b % 7 == 6
  requires (a + b) % 7 == 1 || (a + b) % 7 == 2 || (a + b) % 7 == 3 || (a + b) % 7 == 4 || (a + b) % 7 == 5 || (a + b) % 7 == 6
  requires a % 7 == 6
  requires ((b % 7 == 2) && (7 > 0) && (a * b % 7 == a % 7 * (b % 7) % 7) && ((a + b) % 7 == (a % 7 + b % 7) % 7) && (7 > 0) && (a * b * (a + b) % 7 == a * b % 7 * ((a + b) % 7) % 7) && (a * b * (a + b) % 7 != 0)) || (b % 7 != 2)
  requires ((b % 7 == 3) && (7 > 0) && (a * b % 7 == a % 7 * (b % 7) % 7) && ((a + b) % 7 == (a % 7 + b % 7) % 7) && (7 > 0) && (a * b * (a + b) % 7 == a * b % 7 * ((a + b) % 7) % 7) && (a * b * (a + b) % 7 != 0)) || (b % 7 != 3)
  requires ((b % 7 == 4) && (7 > 0) && (a * b % 7 == a % 7 * (b % 7) % 7) && ((a + b) % 7 == (a % 7 + b % 7) % 7) && (7 > 0) && (a * b * (a + b) % 7 == a * b % 7 * ((a + b) % 7) % 7) && (a * b * (a + b) % 7 != 0)) || (b % 7 != 4)
  requires b % 7 == 5
  requires 7 > 0
  requires a * b % 7 == a % 7 * (b % 7) % 7
  requires (a + b) % 7 == (a % 7 + b % 7) % 7
  requires 7 > 0
  requires a * b * (a + b) % 7 == a * b % 7 * ((a + b) % 7) % 7
  ensures   a * b * (a + b) % 7 != 0
{
  IntMulEmod(a * b, a + b, 7);  // [ADDED]
  IntMulEmod(a, b, 7);  // [ADDED]
  assert (a * b * (a + b)) % 7 == (((a * b) % 7) * ((a + b) % 7)) % 7;  // [ADDED]
  assert (a * b) % 7 == ((a % 7) * (b % 7)) % 7;  // [ADDED]
  Mod7NonZero(a % 7, b % 7, (a + b) % 7);  // [ADDED]
}

lemma Mod7NonZero(x: int, y: int, z: int)  // [ADDED DECLARATION]
  requires 1 <= x <= 6
  requires 1 <= y <= 6
  requires 1 <= z <= 6
  ensures (((x * y) % 7) * z) % 7 != 0
{
  if x == 1 {
    if y == 1 { assert (x * y) % 7 == 1; }
    if y == 2 { assert (x * y) % 7 == 2; }
    if y == 3 { assert (x * y) % 7 == 3; }
    if y == 4 { assert (x * y) % 7 == 4; }
    if y == 5 { assert (x * y) % 7 == 5; }
    if y == 6 { assert (x * y) % 7 == 6; }
  }
  if x == 2 {
    if y == 1 { assert (x * y) % 7 == 2; }
    if y == 2 { assert (x * y) % 7 == 4; }
    if y == 3 { assert (x * y) % 7 == 6; }
    if y == 4 { assert (x * y) % 7 == 1; }
    if y == 5 { assert (x * y) % 7 == 3; }
    if y == 6 { assert (x * y) % 7 == 5; }
  }
  if x == 3 {
    if y == 1 { assert (x * y) % 7 == 3; }
    if y == 2 { assert (x * y) % 7 == 6; }
    if y == 3 { assert (x * y) % 7 == 2; }
    if y == 4 { assert (x * y) % 7 == 5; }
    if y == 5 { assert (x * y) % 7 == 1; }
    if y == 6 { assert (x * y) % 7 == 4; }
  }
  if x == 4 {
    if y == 1 { assert (x * y) % 7 == 4; }
    if y == 2 { assert (x * y) % 7 == 1; }
    if y == 3 { assert (x * y) % 7 == 5; }
    if y == 4 { assert (x * y) % 7 == 2; }
    if y == 5 { assert (x * y) % 7 == 6; }
    if y == 6 { assert (x * y) % 7 == 3; }
  }
  if x == 5 {
    if y == 1 { assert (x * y) % 7 == 5; }
    if y == 2 { assert (x * y) % 7 == 3; }
    if y == 3 { assert (x * y) % 7 == 1; }
    if y == 4 { assert (x * y) % 7 == 6; }
    if y == 5 { assert (x * y) % 7 == 4; }
    if y == 6 { assert (x * y) % 7 == 2; }
  }
  if x == 6 {
    if y == 1 { assert (x * y) % 7 == 6; }
    if y == 2 { assert (x * y) % 7 == 5; }
    if y == 3 { assert (x * y) % 7 == 4; }
    if y == 4 { assert (x * y) % 7 == 3; }
    if y == 5 { assert (x * y) % 7 == 2; }
    if y == 6 { assert (x * y) % 7 == 1; }
  }
}
