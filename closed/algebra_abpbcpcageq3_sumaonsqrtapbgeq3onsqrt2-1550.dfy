// CLOSED — failing line algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2-1550: theorem algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2, Dafny line 1550 (ERR: assertion might not hold)
// failing Dafny line: assert (((Real.div(a, ((a + b) + 2.0)) + Real.div(b, ((b + c) + 2.0))) + Real.div(c, ((c + a) + 2.0))) >= (3.0 / 4.0)) by {
// Lean step: have h₉₁ : 0 < a * b := by positivity
// hypotheses: 18 facts Z3 had at the line (goal itself removed: 0; the block's own asserts removed: 4); nothing assumed beyond the facts in scope; pass2 dropped 9 of them (unused), none added
// how it closes: pass2 — split into (i) Poly1550: the nlinarith certificate 3*D <= 4*N: MulPos for a*b,b*c,c*a; the six sq_nonneg facts via the forall-trigger trick; cert_piece_49..71 called unconditionally (65/67/69 under `if g < 0`); the linear combination done in helper Lin72_1550 whose parameters name each certificate product (requires t_i == product_i and the sign facts; body cert_identity_72) so the final step is linear for Z3; (ii) DivChain1550: a forall statement over atomic p,q,r (trigger {Real.div(a,p), Real.div(b,q), Real.div(c,r)}) proving 3*(pqr) <= 4*N(p,q,r) ==> Real.div(a,p)+Real.div(b,q)+Real.div(c,r) >= 3/4 via DivAddDiv twice and DivLeDivIff(3,4,N,D) (each lemma applied to atomic bound vars through nested forall-trigger statements), instantiated at p,q,r := a+b+2, b+c+2, c+a+2; new axiom DivAddDiv = Mathlib div_add_div; dropped the 8 sqrt/Real.div hypotheses and `4.0 != 0.0` (unused)
// Dafny: finished with 191 verified, 0 errors  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2.dfy"
lemma {:induction false} vc_algebra_abpbcpcageq3_sumaonsqrtapbgeq3onsqrt2_L1550(a: real, b: real, c: real)
  requires 0.0 < a
  requires 0.0 < b
  requires 0.0 < c
  requires 3.0 <= a * b + b * c + c * a
  requires a + b + c >= 3.0
  requires 0.0 < a + b + 2.0
  requires 0.0 < b + c + 2.0
  requires 0.0 < c + a + 2.0
  requires 0.0 < (a + b + 2.0) * (b + c + 2.0) * (c + a + 2.0)
  requires 0.0 < (a + b + 2.0) * (b + c + 2.0)
  ensures   Real.div(a, a + b + 2.0) + Real.div(b, b + c + 2.0) + Real.div(c, c + a + 2.0) >= 3.0 / 4.0
{
  Poly1550(a, b, c);  // [ADDED]
  DivChain1550(a, b, c);  // [ADDED]
}

lemma Lin72_1550(a: real, b: real, c: real, t1: real, g: real, t49: real, t50: real, t51: real, t52: real, t53: real, t54: real, t55: real, t56: real, t57: real, t58: real, t59: real, t60: real, t61: real, t62: real, t63: real, t64: real, t65: real, t66: real, t67: real, t68: real, t69: real, t70: real, t71: real)  // [ADDED DECLARATION]
  requires t1 == (3.0 - (((a * b) + (b * c)) + (c * a)))
  requires g == ((((((a * ((b + c) + 2.0)) + (b * ((a + b) + 2.0))) * ((c + a) + 2.0)) + (c * (((a + b) + 2.0) * ((b + c) + 2.0)))) * 4.0) - (3.0 * ((((a + b) + 2.0) * ((b + c) + 2.0)) * ((c + a) + 2.0))))
  requires t49 == (((c - a) * (c - a)) * ((b - 1.0) * (b - 1.0)))
  requires t50 == (((c - a) * (c - a)) * a)
  requires t51 == (((c - a) * (c - a)) * (3.0 - (((a * b) + (b * c)) + (c * a))))
  requires t52 == (((a - b) * (a - b)) * ((c - 1.0) * (c - 1.0)))
  requires t53 == (((a - b) * (a - b)) * b)
  requires t54 == (((a - b) * (a - b)) * (3.0 - (((a * b) + (b * c)) + (c * a))))
  requires t55 == (((a - 1.0) * (a - 1.0)) * ((b - c) * (b - c)))
  requires t56 == (((a - 1.0) * (a - 1.0)) * b)
  requires t57 == (((a - 1.0) * (a - 1.0)) * (a * b))
  requires t58 == (((b - c) * (b - c)) * c)
  requires t59 == (((b - c) * (b - c)) * (3.0 - (((a * b) + (b * c)) + (c * a))))
  requires t60 == (((c - 1.0) * (c - 1.0)) * a)
  requires t61 == (((c - 1.0) * (c - 1.0)) * (c * a))
  requires t62 == (((b - 1.0) * (b - 1.0)) * c)
  requires t63 == (((b - 1.0) * (b - 1.0)) * (b * c))
  requires t64 == (a * (3.0 - (((a * b) + (b * c)) + (c * a))))
  requires t65 == (a * ((((((a * ((b + c) + 2.0)) + (b * ((a + b) + 2.0))) * ((c + a) + 2.0)) + (c * (((a + b) + 2.0) * ((b + c) + 2.0)))) * 4.0) - (3.0 * ((((a + b) + 2.0) * ((b + c) + 2.0)) * ((c + a) + 2.0)))))
  requires t66 == (b * (3.0 - (((a * b) + (b * c)) + (c * a))))
  requires t67 == (b * ((((((a * ((b + c) + 2.0)) + (b * ((a + b) + 2.0))) * ((c + a) + 2.0)) + (c * (((a + b) + 2.0) * ((b + c) + 2.0)))) * 4.0) - (3.0 * ((((a + b) + 2.0) * ((b + c) + 2.0)) * ((c + a) + 2.0)))))
  requires t68 == (c * (3.0 - (((a * b) + (b * c)) + (c * a))))
  requires t69 == (c * ((((((a * ((b + c) + 2.0)) + (b * ((a + b) + 2.0))) * ((c + a) + 2.0)) + (c * (((a + b) + 2.0) * ((b + c) + 2.0)))) * 4.0) - (3.0 * ((((a + b) + 2.0) * ((b + c) + 2.0)) * ((c + a) + 2.0)))))
  requires t70 == ((3.0 - (((a * b) + (b * c)) + (c * a))) * (3.0 - (((a * b) + (b * c)) + (c * a))))
  requires t71 == ((3.0 - ((a + b) + c)) * (3.0 - ((a + b) + c)))
  requires t1 <= 0.0
  requires 0.0 <= t49
  requires 0.0 <= t50
  requires t51 <= 0.0
  requires 0.0 <= t52
  requires 0.0 <= t53
  requires t54 <= 0.0
  requires 0.0 <= t55
  requires 0.0 <= t56
  requires 0.0 <= t57
  requires 0.0 <= t58
  requires t59 <= 0.0
  requires 0.0 <= t60
  requires 0.0 <= t61
  requires 0.0 <= t62
  requires 0.0 <= t63
  requires t64 <= 0.0
  requires g < 0.0 ==> t65 < 0.0
  requires t66 <= 0.0
  requires g < 0.0 ==> t67 < 0.0
  requires t68 <= 0.0
  requires g < 0.0 ==> t69 < 0.0
  requires 0.0 <= t70
  requires 0.0 <= t71
  ensures 0.0 <= g
{ cert_identity_72(a, b, c); }

lemma Poly1550(a: real, b: real, c: real)  // [ADDED DECLARATION]
  requires 0.0 < a
  requires 0.0 < b
  requires 0.0 < c
  requires 3.0 <= a * b + b * c + c * a
  requires a + b + c >= 3.0
  ensures ((3.0 * ((((a + b) + 2.0) * ((b + c) + 2.0)) * ((c + a) + 2.0))) <= (((((a * ((b + c) + 2.0)) + (b * ((a + b) + 2.0))) * ((c + a) + 2.0)) + (c * (((a + b) + 2.0) * ((b + c) + 2.0)))) * 4.0))
{
  MulPos(a, b); MulPos(b, c); MulPos(c, a);
  forall s_: real {:trigger Real.div(s_, 1.0)} | s_ == c - a ensures 0.0 <= s_ * s_ { SqNonneg(s_); }
  assert Real.div(c - a, 1.0) == c - a;
  assert 0.0 <= (c - a) * (c - a);
  forall s_: real {:trigger Real.div(s_, 1.0)} | s_ == b - 1.0 ensures 0.0 <= s_ * s_ { SqNonneg(s_); }
  assert Real.div(b - 1.0, 1.0) == b - 1.0;
  assert 0.0 <= (b - 1.0) * (b - 1.0);
  forall s_: real {:trigger Real.div(s_, 1.0)} | s_ == a - b ensures 0.0 <= s_ * s_ { SqNonneg(s_); }
  assert Real.div(a - b, 1.0) == a - b;
  assert 0.0 <= (a - b) * (a - b);
  forall s_: real {:trigger Real.div(s_, 1.0)} | s_ == c - 1.0 ensures 0.0 <= s_ * s_ { SqNonneg(s_); }
  assert Real.div(c - 1.0, 1.0) == c - 1.0;
  assert 0.0 <= (c - 1.0) * (c - 1.0);
  forall s_: real {:trigger Real.div(s_, 1.0)} | s_ == a - 1.0 ensures 0.0 <= s_ * s_ { SqNonneg(s_); }
  assert Real.div(a - 1.0, 1.0) == a - 1.0;
  assert 0.0 <= (a - 1.0) * (a - 1.0);
  forall s_: real {:trigger Real.div(s_, 1.0)} | s_ == b - c ensures 0.0 <= s_ * s_ { SqNonneg(s_); }
  assert Real.div(b - c, 1.0) == b - c;
  assert 0.0 <= (b - c) * (b - c);
  cert_piece_49(a, b, c);
  cert_piece_50(a, b, c);
  cert_piece_51(a, b, c);
  cert_piece_52(a, b, c);
  cert_piece_53(a, b, c);
  cert_piece_54(a, b, c);
  cert_piece_55(a, b, c);
  cert_piece_56(a, b, c);
  cert_piece_57(a, b, c);
  cert_piece_58(a, b, c);
  cert_piece_59(a, b, c);
  cert_piece_60(a, b, c);
  cert_piece_61(a, b, c);
  cert_piece_62(a, b, c);
  cert_piece_63(a, b, c);
  cert_piece_64(a, b, c);
  cert_piece_66(a, b, c);
  cert_piece_68(a, b, c);
  cert_piece_70(a, b, c);
  cert_piece_71(a, b, c);
  if ((((((a * ((b + c) + 2.0)) + (b * ((a + b) + 2.0))) * ((c + a) + 2.0)) + (c * (((a + b) + 2.0) * ((b + c) + 2.0)))) * 4.0) - (3.0 * ((((a + b) + 2.0) * ((b + c) + 2.0)) * ((c + a) + 2.0)))) < 0.0 { cert_piece_65(a, b, c); cert_piece_67(a, b, c); cert_piece_69(a, b, c); }
  Lin72_1550(a, b, c, (3.0 - (((a * b) + (b * c)) + (c * a))), ((((((a * ((b + c) + 2.0)) + (b * ((a + b) + 2.0))) * ((c + a) + 2.0)) + (c * (((a + b) + 2.0) * ((b + c) + 2.0)))) * 4.0) - (3.0 * ((((a + b) + 2.0) * ((b + c) + 2.0)) * ((c + a) + 2.0)))), (((c - a) * (c - a)) * ((b - 1.0) * (b - 1.0))), (((c - a) * (c - a)) * a), (((c - a) * (c - a)) * (3.0 - (((a * b) + (b * c)) + (c * a)))), (((a - b) * (a - b)) * ((c - 1.0) * (c - 1.0))), (((a - b) * (a - b)) * b), (((a - b) * (a - b)) * (3.0 - (((a * b) + (b * c)) + (c * a)))), (((a - 1.0) * (a - 1.0)) * ((b - c) * (b - c))), (((a - 1.0) * (a - 1.0)) * b), (((a - 1.0) * (a - 1.0)) * (a * b)), (((b - c) * (b - c)) * c), (((b - c) * (b - c)) * (3.0 - (((a * b) + (b * c)) + (c * a)))), (((c - 1.0) * (c - 1.0)) * a), (((c - 1.0) * (c - 1.0)) * (c * a)), (((b - 1.0) * (b - 1.0)) * c), (((b - 1.0) * (b - 1.0)) * (b * c)), (a * (3.0 - (((a * b) + (b * c)) + (c * a)))), (a * ((((((a * ((b + c) + 2.0)) + (b * ((a + b) + 2.0))) * ((c + a) + 2.0)) + (c * (((a + b) + 2.0) * ((b + c) + 2.0)))) * 4.0) - (3.0 * ((((a + b) + 2.0) * ((b + c) + 2.0)) * ((c + a) + 2.0))))), (b * (3.0 - (((a * b) + (b * c)) + (c * a)))), (b * ((((((a * ((b + c) + 2.0)) + (b * ((a + b) + 2.0))) * ((c + a) + 2.0)) + (c * (((a + b) + 2.0) * ((b + c) + 2.0)))) * 4.0) - (3.0 * ((((a + b) + 2.0) * ((b + c) + 2.0)) * ((c + a) + 2.0))))), (c * (3.0 - (((a * b) + (b * c)) + (c * a)))), (c * ((((((a * ((b + c) + 2.0)) + (b * ((a + b) + 2.0))) * ((c + a) + 2.0)) + (c * (((a + b) + 2.0) * ((b + c) + 2.0)))) * 4.0) - (3.0 * ((((a + b) + 2.0) * ((b + c) + 2.0)) * ((c + a) + 2.0))))), ((3.0 - (((a * b) + (b * c)) + (c * a))) * (3.0 - (((a * b) + (b * c)) + (c * a)))), ((3.0 - ((a + b) + c)) * (3.0 - ((a + b) + c))));
}
// Lean: Mathlib theorem div_add_div (a : α) (c : α) (hb : b ≠ 0) (hd : d ≠ 0) : a / b + c / d = (a * d + b * c) / (b * d)
lemma {:axiom} DivAddDiv(a: real, b: real, c: real, d: real)  // [ADDED DECLARATION]
  requires b != 0.0
  requires d != 0.0
  ensures a / b + c / d == (a * d + b * c) / (b * d)

lemma DivChain1550(a: real, b: real, c: real)  // [ADDED DECLARATION]
  requires 0.0 < a
  requires 0.0 < b
  requires 0.0 < c
  requires ((3.0 * ((((a + b) + 2.0) * ((b + c) + 2.0)) * ((c + a) + 2.0))) <= (((((a * ((b + c) + 2.0)) + (b * ((a + b) + 2.0))) * ((c + a) + 2.0)) + (c * (((a + b) + 2.0) * ((b + c) + 2.0)))) * 4.0))
  ensures Real.div(a, a + b + 2.0) + Real.div(b, b + c + 2.0) + Real.div(c, c + a + 2.0) >= 3.0 / 4.0
{
  forall p: real, q: real, r: real {:trigger Real.div(a, p), Real.div(b, q), Real.div(c, r)} | 0.0 < p && 0.0 < q && 0.0 < r
    ensures 3.0 * ((p * q) * r) <= (((a * q) + (b * p)) * r + c * (p * q)) * 4.0 ==> Real.div(a, p) + Real.div(b, q) + Real.div(c, r) >= 3.0 / 4.0
  {
    if 3.0 * ((p * q) * r) <= (((a * q) + (b * p)) * r + c * (p * q)) * 4.0 {
      MulPos(p, q);
      assert 0.0 < p * q;
      forall w: real {:trigger Real.div(w, 1.0)} | w == p * q ensures 0.0 < w * r { MulPos(w, r); }
      assert Real.div(p * q, 1.0) == p * q;
      assert 0.0 < (p * q) * r;
      assert Real.div(a, p) == a / p;
      assert Real.div(b, q) == b / q;
      assert Real.div(c, r) == c / r;
      DivAddDiv(a, p, b, q);
      assert a / p + b / q == (a * q + p * b) / (p * q);
      forall u: real, v: real {:trigger Real.div(u, v)} | u == a * q + p * b && v == p * q
        ensures u / v + c / r == (u * r + v * c) / (v * r)
      { DivAddDiv(u, v, c, r); }
      assert Real.div(a * q + p * b, p * q) == (a * q + p * b) / (p * q);
      assert (a * q + p * b) / (p * q) + c / r == ((a * q + p * b) * r + (p * q) * c) / ((p * q) * r);
      forall x: real, y: real {:trigger Real.div(x, y)} | x == (a * q + p * b) * r + (p * q) * c && y == (p * q) * r
        ensures 0.0 < y ==> ((3.0 / 4.0 <= x / y) <==> (3.0 * y <= x * 4.0))
      { if 0.0 < y { DivLeDivIff(3.0, 4.0, x, y); } }
      assert Real.div((a * q + p * b) * r + (p * q) * c, (p * q) * r) == ((a * q + p * b) * r + (p * q) * c) / ((p * q) * r);
      assert 3.0 * ((p * q) * r) <= ((a * q + p * b) * r + (p * q) * c) * 4.0;
      assert 3.0 / 4.0 <= ((a * q + p * b) * r + (p * q) * c) / ((p * q) * r);
      assert Real.div(a, p) + Real.div(b, q) + Real.div(c, r) >= 3.0 / 4.0;
    }
  }
  assert Real.div(a, a + b + 2.0) == a / (a + b + 2.0);
  assert Real.div(b, b + c + 2.0) == b / (b + c + 2.0);
  assert Real.div(c, c + a + 2.0) == c / (c + a + 2.0);
  assert 3.0 * (((a + b + 2.0) * (b + c + 2.0)) * (c + a + 2.0)) <= (((a * (b + c + 2.0)) + (b * (a + b + 2.0))) * (c + a + 2.0) + c * ((a + b + 2.0) * (b + c + 2.0))) * 4.0;
  assert Real.div(a, a + b + 2.0) + Real.div(b, b + c + 2.0) + Real.div(c, c + a + 2.0) >= 3.0 / 4.0;
}

