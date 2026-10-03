// NOT CLOSED — failing line aime_1999_p11-187: theorem aime_1999_p11, Dafny line 187 (OOR: Verification out of resource (cert_piece_21))
// failing Dafny line: ensures (0.0 < ((175.0 - ((m).to_real() * 2.0)) * (3.0 - Real.pi())))
// Lean step: h_m_val
// hypotheses: 2 facts Z3 had at the line (goal itself removed: 0; facts derived inside the helper lemma's own body removed: 5); nothing assumed beyond the facts in scope
// not closed: tried H0=oor; this file is the honest base attempt
// Dafny: finished with 4 verified, 0 errors, 1 out of resource  (flags: dafny verify --isolate-assertions --resource-limit 1000000 --allow-warnings --cores 1, timeout 30 s)

include "../dafny/aime_1999_p11.dfy"
lemma {:induction false} vc_aime_1999_p11_L187(m: Rat.rat)
  requires 175.0 - m.to_real() * 2.0 < 0.0
  requires 3.0 - Real.pi() < 0.0
  ensures   0.0 < (175.0 - m.to_real() * 2.0) * (3.0 - Real.pi())
{
  MulPos(-((175.0 - ((m).to_real() * 2.0))), -((3.0 - Real.pi()))); MulNeg(-((175.0 - ((m).to_real() * 2.0))), (3.0 - Real.pi())); assert (-((175.0 - ((m).to_real() * 2.0)))) * (-((3.0 - Real.pi()))) == -((-((175.0 - ((m).to_real() * 2.0)))) * ((3.0 - Real.pi()))); assert (-((175.0 - ((m).to_real() * 2.0)))) * ((3.0 - Real.pi())) == -(((175.0 - ((m).to_real() * 2.0))) * ((3.0 - Real.pi())));
}

