// CLOSED — failing line amc12b_2020_p22-233: theorem amc12b_2020_p22, Dafny line 233 (ERR: assertion might not hold)
// failing Dafny line: assert (Real.div(((Real.rpow(2.0, t) - (3.0 * t)) * t), (Real.rpow(2.0, t) * Real.rpow(2.0, t))) == (Real.div(t, Real.rpow(2.0, t)) - (3.0 * (Real.div(t, Real.rpow(2.0, t)) * Real.div(t, Real.rpow(2.0
// Lean step: field_simp [h₆.ne']
// hypotheses: 8 facts Z3 had at the line (goal itself removed: 0; the block's own asserts removed: 2); nothing assumed beyond the facts in scope — pass2 dropped 5 unused hypotheses (forall u, 4^t == 2^(2t), 0 <= 2, 0 < pow(2^t,2), the 24-way positivity disjunction)
// how it closes: pass2 — proved helper DivIdent2(r, t) (requires r != 0, r*r != 0; ensures the field_simp identity on Real.div in the atom r; body: q := t/r, q*r == t, two ring-identity asserts, (d*e)/d == e, Real.div unfolding) called at local r := 2^t; bridging asserts r*r == 2^t*2^t, (r-3t)*t == (2^t-3t)*t, Real.div(.., r*r) == Real.div(.., 2^t*2^t), Real.div(t,r) == Real.div(t,2^t) and their product; r*r != 0 from the kept hypotheses 4^t == 2^t*2^t, 4^t > 0
// Dafny: finished with 25 verified, 0 errors in 1.9 s  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/amc12b_2020_p22.dfy"
lemma {:induction false} vc_amc12b_2020_p22_L233(t: real)
  requires Real.rpow(4.0, t) == Real.rpow(2.0, t) * Real.rpow(2.0, t)
  requires Real.rpow(4.0, t) > 0.0
  requires Real.rpow(2.0, t) > 0.0
  ensures   Real.div((Real.rpow(2.0, t) - 3.0 * t) * t, Real.rpow(2.0, t) * Real.rpow(2.0, t)) == Real.div(t, Real.rpow(2.0, t)) - 3.0 * (Real.div(t, Real.rpow(2.0, t)) * Real.div(t, Real.rpow(2.0, t)))
{
  var r := Real.rpow(2.0, t);  // [ADDED]
  assert r != 0.0;  // [ADDED]
  assert r * r == Real.rpow(2.0, t) * Real.rpow(2.0, t);  // [ADDED]
  assert 0.0 < r * r;  // [ADDED]
  assert r * r != 0.0;  // [ADDED]
  DivIdent2(r, t);  // [ADDED]
  assert (r - 3.0 * t) * t == (Real.rpow(2.0, t) - 3.0 * t) * t;  // [ADDED]
  assert Real.div((r - 3.0 * t) * t, r * r) == Real.div((Real.rpow(2.0, t) - 3.0 * t) * t, Real.rpow(2.0, t) * Real.rpow(2.0, t));  // [ADDED]
  assert Real.div(t, r) == Real.div(t, Real.rpow(2.0, t));  // [ADDED]
  assert Real.div(t, r) * Real.div(t, r) == Real.div(t, Real.rpow(2.0, t)) * Real.div(t, Real.rpow(2.0, t));  // [ADDED]
}

// helper (proved): the field_simp identity on an atom r with r != 0 and r*r != 0
lemma DivIdent2(r: real, t: real)  // [ADDED DECLARATION]
  requires r != 0.0
  requires r * r != 0.0
  ensures Real.div((r - 3.0 * t) * t, r * r) == Real.div(t, r) - 3.0 * (Real.div(t, r) * Real.div(t, r))
{
  var q := t / r;
  assert Real.div(t, r) == q;
  assert q * r == t;
  assert t == q * r;
  assert (r - 3.0 * t) * t == (r - 3.0 * (q * r)) * (q * r);
  assert (r - 3.0 * (q * r)) * (q * r) == (r * r) * (q - 3.0 * (q * q));
  var d := r * r;
  var e := q - 3.0 * (q * q);
  assert (d * e) / d == e;
  assert Real.div((r - 3.0 * t) * t, r * r) == ((r - 3.0 * t) * t) / (r * r);
  assert ((r - 3.0 * t) * t) / (r * r) == (d * e) / d;
}
