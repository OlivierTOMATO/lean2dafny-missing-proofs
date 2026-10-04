// ════════════════════════════════════════════════════════════
// MECHANICAL TRANSLATION (emitter v2) of ast_cache_v2/amc12b_2020_p13.json
// Each Lean `have` → `assert ... by {}` at the same depth;
// quantified haves → forall statements. Typed pipeline only.
// ════════════════════════════════════════════════════════════

include "../../library/library_new.dfy"

// ──────────────────────────────────────────────────
// certificate piece for `h₃/h₃₁`: div_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_1()
  requires (0.0 < Real.log(3.0))
  requires (0.0 < Real.log(2.0))
  ensures (0.0 < Real.div(Real.log(3.0), Real.log(2.0)))
{
  DivPos(Real.log(3.0), Real.log(2.0));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₃/h₃₂`: div_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_2()
  requires (0.0 < Real.log(2.0))
  requires (0.0 < Real.log(3.0))
  ensures (0.0 < Real.div(Real.log(2.0), Real.log(3.0)))
{
  DivPos(Real.log(2.0), Real.log(3.0));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₃/h₃₆/h₃₆₁/h₃₆₁₃`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_3()
  requires (0.0 < Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))))
  requires (0.0 < Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))
  ensures (0.0 < (Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))))
{
  MulPos(Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))), Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₃/h₃₆/h₃₆₁/h₃₆₁₃`: div_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_4()
  requires (0.0 < Real.log(3.0))
  requires (0.0 < Real.log(2.0))
  ensures (0.0 < Real.div(Real.log(3.0), Real.log(2.0)))
{
  DivPos(Real.log(3.0), Real.log(2.0));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₃/h₃₆/h₃₆₁/h₃₆₁₃`: div_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_5()
  requires (0.0 < Real.log(2.0))
  requires (0.0 < Real.log(3.0))
  ensures (0.0 < Real.div(Real.log(2.0), Real.log(3.0)))
{
  DivPos(Real.log(2.0), Real.log(3.0));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₃/h₃₆/h₃₆₁/h₃₆₁₆`: mul_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_6()
  requires (0.0 < Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))))
  requires (0.0 < Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))
  ensures (0.0 < (Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))))
{
  MulPos(Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))), Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₃/h₃₆/h₃₆₁/h₃₆₁₆`: div_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_7()
  requires (0.0 < Real.log(3.0))
  requires (0.0 < Real.log(2.0))
  ensures (0.0 < Real.div(Real.log(3.0), Real.log(2.0)))
{
  DivPos(Real.log(3.0), Real.log(2.0));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₃/h₃₆/h₃₆₁/h₃₆₁₆`: div_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_8()
  requires (0.0 < Real.log(2.0))
  requires (0.0 < Real.log(3.0))
  ensures (0.0 < Real.div(Real.log(2.0), Real.log(3.0)))
{
  DivPos(Real.log(2.0), Real.log(3.0));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₃/h₃₆/h₃₆₁`: mul_pos_of_neg_of_neg (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_9()
  requires (0.0 < ((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))))
  requires (((((1.0 * ((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))))) + (1.0 * ((1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))))) + (1.0 * 2.0)) - (1.0 * (((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) + (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))) * ((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) + (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))))))) < 0.0)
  ensures ((((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))) * ((((1.0 * ((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))))) + (1.0 * ((1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))))) + (1.0 * 2.0)) - (1.0 * (((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) + (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))) * ((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) + (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))))))) < 0.0)
{
  MulPos(((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))), -(((((1.0 * ((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))))) + (1.0 * ((1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))))) + (1.0 * 2.0)) - (1.0 * (((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) + (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))) * ((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) + (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))))))))); MulNeg(((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))), ((((1.0 * ((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))))) + (1.0 * ((1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))))) + (1.0 * 2.0)) - (1.0 * (((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) + (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))) * ((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) + (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))))))); assert (((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))))) * (-(((((1.0 * ((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))))) + (1.0 * ((1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))))) + (1.0 * 2.0)) - (1.0 * (((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) + (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))) * ((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) + (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))))))))) == -((((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))))) * (((((1.0 * ((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))))) + (1.0 * ((1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))))) + (1.0 * 2.0)) - (1.0 * (((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) + (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))) * ((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) + (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))))))));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₃/h₃₆/h₃₆₁`: mul_pos_of_neg_of_neg (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_10()
  requires (0.0 < ((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))))
  requires (((1.0 * (((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) + (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))) * ((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) + (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))))) - (((1.0 * ((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))))) + (1.0 * ((1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))))) + (1.0 * 2.0))) < 0.0)
  ensures ((((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))) * ((1.0 * (((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) + (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))) * ((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) + (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))))) - (((1.0 * ((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))))) + (1.0 * ((1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))))) + (1.0 * 2.0)))) < 0.0)
{
  MulPos(((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))), -(((1.0 * (((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) + (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))) * ((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) + (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))))) - (((1.0 * ((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))))) + (1.0 * ((1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))))) + (1.0 * 2.0))))); MulNeg(((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))), ((1.0 * (((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) + (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))) * ((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) + (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))))) - (((1.0 * ((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))))) + (1.0 * ((1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))))) + (1.0 * 2.0)))); assert (((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))))) * (-(((1.0 * (((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) + (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))) * ((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) + (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))))) - (((1.0 * ((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))))) + (1.0 * ((1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))))) + (1.0 * 2.0))))) == -((((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))))) * (((1.0 * (((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) + (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))) * ((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) + (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))))) - (((1.0 * ((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))))) + (1.0 * ((1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))))) + (1.0 * 2.0)))));
}

// ──────────────────────────────────────────────────
// certificate identity for `h₃/h₃₆/h₃₆₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_11()
  ensures ((((-((2.0 * (((1.0 * Real.div(Real.log(3.0), Real.log(2.0))) * (1.0 * Real.div(Real.log(2.0), Real.log(3.0)))) - (1.0 * 1.0)))) + ((1.0 * (((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) + (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))) * ((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) + (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))))) - (((1.0 * ((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))))) + (1.0 * ((1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))))) + (1.0 * 2.0)))) + -((2.0 * (((1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))) * ((1.0 * ((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))))) - (1.0 * Real.div(Real.log(3.0), Real.log(2.0)))))))) + -((2.0 * ((1.0 * Real.div(Real.log(3.0), Real.log(2.0))) * ((1.0 * ((1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))))) - (1.0 * Real.div(Real.log(2.0), Real.log(3.0)))))))) + (((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))) * ((1.0 * (((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) + (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))) * ((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) + (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))))) - (((1.0 * ((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))))) + (1.0 * ((1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))))) + (1.0 * 2.0))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate identity for `h₃/h₃₆/h₃₆₁`: Lean's linarith summed these pieces and
// closed by `ring` (the sum is identically 0); a context-free ring identity
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_identity_12()
  ensures (((((2.0 * (((1.0 * Real.div(Real.log(3.0), Real.log(2.0))) * (1.0 * Real.div(Real.log(2.0), Real.log(3.0)))) - (1.0 * 1.0))) + ((((1.0 * ((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))))) + (1.0 * ((1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))))) + (1.0 * 2.0)) - (1.0 * (((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) + (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))) * ((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) + (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))))))) + (2.0 * (((1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))) * ((1.0 * ((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))))) - (1.0 * Real.div(Real.log(3.0), Real.log(2.0))))))) + (2.0 * ((1.0 * Real.div(Real.log(3.0), Real.log(2.0))) * ((1.0 * ((1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))))) - (1.0 * Real.div(Real.log(2.0), Real.log(3.0))))))) + (((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))) * ((((1.0 * ((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))))) + (1.0 * ((1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))))) + (1.0 * 2.0)) - (1.0 * (((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) + (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))) * ((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) + (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))))))))) == 0.0
{ }

// ──────────────────────────────────────────────────
// certificate piece for `h₃/h₃₆/h₃₆₃`: div_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_13()
  requires (0.0 < Real.log(3.0))
  requires (0.0 < Real.log(2.0))
  ensures (0.0 < Real.div(Real.log(3.0), Real.log(2.0)))
{
  DivPos(Real.log(3.0), Real.log(2.0));
}

// ──────────────────────────────────────────────────
// certificate piece for `h₃/h₃₆/h₃₆₃`: div_pos (context-free, as Lean applied it)
// ──────────────────────────────────────────────────
lemma {:isolate_assertions} cert_piece_14()
  requires (0.0 < Real.log(2.0))
  requires (0.0 < Real.log(3.0))
  ensures (0.0 < Real.div(Real.log(2.0), Real.log(3.0)))
{
  DivPos(Real.log(2.0), Real.log(3.0));
}

// statement: Lean elaborated type (v3, stmt_cache) — requires/ensures below
lemma amc12b_2020_p13()
  ensures (Real.sqrt((Real.div(Real.log(6.0), Real.log(2.0)) + Real.div(Real.log(6.0), Real.log(3.0)))) == (Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) + Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))) // @tac 606-2285 // @tac 2291-3006 // @tac 3012-6439 // @tac 6445-7064 // @tac 7070-7493 // @tac 7070-7386 // @tac 7070-7365 // @tac 7070-7142 // @tac 7070-7121 // @tac 7070-7079
{
  // have h₁ : Real.log ( 6 ) / Real.log ( 2 ) + Real.log ( 6 ) / Real.log ( 3 ) == (  [type from Lean state]
  assert ((Real.div(Real.log(6.0), Real.log(2.0)) + Real.div(Real.log(6.0), Real.log(3.0))) == ((Real.div(Real.log(3.0), Real.log(2.0)) + Real.div(Real.log(2.0), Real.log(3.0))) + 2.0)) by { // @tac 738-1035 // @tac 1040-1403 // @tac 1408-1771 // @tac 1776-2285 // @tac 1776-2269 // @tac 1776-2049 // @tac 1776-2033 // @tac 1776-1813 // @tac 1776-1797
    // have h₁₁ : Real.log ( 6 ) == Real.log ( 2 ) + Real.log ( 3 )  [type from Lean state]
    assert (Real.log(6.0) == (Real.log(2.0) + Real.log(3.0))) by { // @tac 802-864 // @tac 871-886
      // have h₁₁₁ : Real.log ( 6 ) == Real.log ( ( 2 * 3 ) )  [type from Lean state]
      assert (Real.log(6.0) == Real.log((2.0 * 3.0))); // @tac 856-864
        // [TACTIC: «Norm_num[_]At___»]
      // UNCITED-APPLIED internal ×9 [exec 52 856-864]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, Eq.trans ×1, congrArg ×1 (+4 more heads, ×4)
      // [TACTIC: rwSeq [ h₁₁₁ ]]
      // UNCITED-APPLIED congrArg(Real.log (6 : ℝ), Real.log ((2 : ℝ) * (3 : ℝ)), fun (_a : ℝ) => _a = Real.log (2 : ℝ) + Real.log (3 : ℝ)): no library counterpart (not stated) [exec 57 871-886]
      assert (Real.log((2.0 * 3.0)) == (Real.log(2.0) + Real.log(3.0))) by {  // sub-goal before `have` (Lean state) // @tac 893-1013 // @tac 1020-1035
        // have h₁₁₂ : Real.log ( ( 2 * 3 ) ) == Real.log ( 2 ) + Real.log ( 3 )  [type from Lean state]
        assert (Real.log((2.0 * 3.0)) == (Real.log(2.0) + Real.log(3.0))) by { // @tac 968-1013
          assert (2.0 != 0.0) by {  // sub-goal of `by` (Lean state) // @tac 989-997
            // [TACTIC: «Norm_num[_]At___»]
            NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
            // UNCITED-APPLIED internal ×5 [exec 111 989-997]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          }
          assert (3.0 != 0.0) by {  // sub-goal of `by` (Lean state) // @tac 1003-1011
            // [TACTIC: «Norm_num[_]At___»]
            NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
            // UNCITED-APPLIED internal ×5 [exec 116 1003-1011]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_false ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
          }
          // [TACTIC: rwSeq [ Real.log_mul ( by norm_num norm_num ) ( by norm_num norm_num ) ]]
          assert ((2.0) != 0.0) && ((3.0) != 0.0);  // precondition of RealLogMul (Lean: Real.log_mul)
          RealLogMul(2.0, 3.0);  // cite: Real.log_mul
          // UNCITED-APPLIED congrArg(Real.log ((2 : ℝ) * (3 : ℝ)), Real.log (2 : ℝ) + Real.log (3 : ℝ), fun (_a : ℝ) => _a = Real.log (2 : ℝ) + Real.log (3 : ℝ)): no library counterpart (not stated) [exec 104 968-1013]
        }
        // [TACTIC: rwSeq [ h₁₁₂ ]]
        // UNCITED-APPLIED congrArg(Real.log ((2 : ℝ) * (3 : ℝ)), Real.log (2 : ℝ) + Real.log (3 : ℝ), fun (_a : ℝ) => _a = Real.log (2 : ℝ) + Real.log (3 : ℝ)): no library counterpart (not stated) [exec 139 1020-1035]
      }
    }
    // have h₁₂ : Real.log ( 6 ) / Real.log ( 2 ) == 1 + Real.log ( 3 ) / Real.log ( 2 )  [type from Lean state]
    assert (Real.div(Real.log(6.0), Real.log(2.0)) == (1.0 + Real.div(Real.log(3.0), Real.log(2.0)))) by { // @tac 1121-1133
      // [TACTIC: rwSeq [ h₁₁ ]]
      // UNCITED-APPLIED congrArg(Real.log (6 : ℝ), Real.log (2 : ℝ) + Real.log (3 : ℝ), fun (_a : ℝ) => _a / Real.log (2 : ℝ) = (1 : ℝ) + Real.log (3 : ℝ) / …): no library counterpart (not stated) [exec 180 1121-1133]
      assert (Real.div((Real.log(2.0) + Real.log(3.0)), Real.log(2.0)) == (1.0 + Real.div(Real.log(3.0), Real.log(2.0)))) by {  // sub-goal before `field_simp` (Lean state) // @tac 1140-1403 // @tac 1140-1385 // @tac 1140-1266 // @tac 1140-1248
        assert (0.0 < 2.0) by {  // sub-goal of `by` (Lean state) // @tac 1190-1198
          // [TACTIC: «Norm_num[_]At___»]
        }
        assert (2.0 != 1.0) by {  // sub-goal of `by` (Lean state) // @tac 1220-1228
          // [TACTIC: «Norm_num[_]At___»]
        }
        // [TACTIC: «_<;>_» [ Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 2 ) ( by norm_num norm_num : ( 2 : ℝ ) ≠ 1 ) ] field_simp [ Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 2 ) ( by norm_num norm_num : ( 2 : ℝ ) ≠ 1 ) ] <;> ring_nf ring_nf <;> field_simp [ Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 2 ) ( by norm_num norm_num : ( 2 : ℝ ) ≠ 1 ) ] field_simp [ Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 2 ) ( by norm_num norm_num : ( 2 : ℝ ) ≠ 1 ) ] <;> ring_nf ring_nf]
        // [TACTIC: «Field_simp[_]At___» [ Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 2 ) ( by norm_num norm_num : ( 2 : ℝ ) ≠ 1 ) ]]
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
        NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
        // `field_simp` closed the goal; the rest of the chain did not run
        // [TACTIC: «Norm_num[_]At___»]
        // [TACTIC: «Norm_num[_]At___»]
        assert (0.0 < (2.0)) && ((2.0) != 1.0);  // precondition of RealLogNeZeroOfPosOfNeOne (Lean: Real.log_ne_zero_of_pos_of_ne_one)
        RealLogNeZeroOfPosOfNeOne(2.0);  // cite: Real.log_ne_zero_of_pos_of_ne_one
        // UNCITED-APPLIED internal ×22 [exec 222 1140-1248]: applications made inside the tactic's own automation, not stated — add_div' ×1, ne_of_gt ×1, Mathlib.Meta.Positivity.log_pos_of_isNat ×1, one_mul ×1, div_mul_eq_mul_div ×1, IsUnit.mul_div_cancel_right ×1; machinery/glue: congrArg ×4, Eq.trans ×3, Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1 (+5 more heads, ×5) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1], Real.log_ne_zero_of_pos_of_ne_one [Lean recorded ×1])
      }
    }
    // have h₁₃ : Real.log ( 6 ) / Real.log ( 3 ) == 1 + Real.log ( 2 ) / Real.log ( 3 )  [type from Lean state]
    assert (Real.div(Real.log(6.0), Real.log(3.0)) == (1.0 + Real.div(Real.log(2.0), Real.log(3.0)))) by { // @tac 1489-1501
      // [TACTIC: rwSeq [ h₁₁ ]]
      // UNCITED-APPLIED congrArg(Real.log (6 : ℝ), Real.log (2 : ℝ) + Real.log (3 : ℝ), fun (_a : ℝ) => _a / Real.log (3 : ℝ) = (1 : ℝ) + Real.log (2 : ℝ) / …): no library counterpart (not stated) [exec 271 1489-1501]
      assert (Real.div((Real.log(2.0) + Real.log(3.0)), Real.log(3.0)) == (1.0 + Real.div(Real.log(2.0), Real.log(3.0)))) by {  // sub-goal before `field_simp` (Lean state) // @tac 1508-1771 // @tac 1508-1753 // @tac 1508-1634 // @tac 1508-1616
        assert (0.0 < 3.0) by {  // sub-goal of `by` (Lean state) // @tac 1558-1566
          // [TACTIC: «Norm_num[_]At___»]
        }
        assert (3.0 != 1.0) by {  // sub-goal of `by` (Lean state) // @tac 1588-1596
          // [TACTIC: «Norm_num[_]At___»]
        }
        // [TACTIC: «_<;>_» [ Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 3 ) ( by norm_num norm_num : ( 3 : ℝ ) ≠ 1 ) ] field_simp [ Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 3 ) ( by norm_num norm_num : ( 3 : ℝ ) ≠ 1 ) ] <;> ring_nf ring_nf <;> field_simp [ Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 3 ) ( by norm_num norm_num : ( 3 : ℝ ) ≠ 1 ) ] field_simp [ Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 3 ) ( by norm_num norm_num : ( 3 : ℝ ) ≠ 1 ) ] <;> ring_nf ring_nf]
        // [TACTIC: choice [ Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 3 ) ( by norm_num norm_num : ( 3 : ℝ ) ≠ 1 ) ] field_simp [ Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 3 ) ( by norm_num norm_num : ( 3 : ℝ ) ≠ 1 ) ]]
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
        NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
        // UNCITED-APPLIED internal ×21 [exec 313 1508-1616]: applications made inside the tactic's own automation, not stated — add_div' ×1, ne_of_gt ×1, Mathlib.Meta.Positivity.log_pos_of_isNat ×1, one_mul ×1, div_mul_eq_mul_div ×1, IsUnit.mul_div_cancel_right ×1; machinery/glue: congrArg ×4, Eq.trans ×3, Mathlib.Meta.NormNum.isNat_ofNat ×3, of_eq_true ×1 (+4 more heads, ×4) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1], Real.log_ne_zero_of_pos_of_ne_one [Lean recorded ×1])
        assert ((Real.log(2.0) + Real.log(3.0)) == (Real.log(3.0) + Real.log(2.0))) by {  // sub-goal of `ring_nf` (Lean state) // @tac 1627-1634
          PowOne(Real.log(2.0));  // cite: pow_one [applied by the tactic, not named in it]
          PowOne(Real.log(3.0));  // cite: pow_one [applied by the tactic, not named in it]
          // UNCITED-APPLIED mul_one ×2: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := Real.log (2 : ℝ)); (a := Real.log (3 : ℝ))
          // UNCITED-APPLIED internal ×28 [exec 332 1627-1634]: applications made inside the tactic's own automation, not stated — mul_one ×2, add_zero ×1; machinery/glue: Eq.trans ×7, congrArg ×7, congr ×3, Mathlib.Tactic.Ring.atom_pf ×2 (+6 more heads, ×6) (cited in this block, not counted here: pow_one [Lean recorded ×2])
        }
        // [TACTIC: «Norm_num[_]At___»]
        // [TACTIC: «Norm_num[_]At___»]
        assert (0.0 < (3.0)) && ((3.0) != 1.0);  // precondition of RealLogNeZeroOfPosOfNeOne (Lean: Real.log_ne_zero_of_pos_of_ne_one)
        RealLogNeZeroOfPosOfNeOne(3.0);  // cite: Real.log_ne_zero_of_pos_of_ne_one
      }
    }
    // [TACTIC: «_<;>_» [ h₁₂ , h₁₃ ] rw [ h₁₂ , h₁₃ ] <;> ring_nf ring_nf <;> field_simp [ Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 2 ) ( by norm_num norm_num : ( 2 : ℝ ) ≠ 1 ) , Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 3 ) ( by norm_num norm_num : ( 3 : ℝ ) ≠ 1 ) ] field_simp [ Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 2 ) ( by norm_num norm_num : ( 2 : ℝ ) ≠ 1 ) , Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 3 ) ( by norm_num norm_num : ( 3 : ℝ ) ≠ 1 ) ] <;> ring_nf ring_nf <;> field_simp [ Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 2 ) ( by norm_num norm_num : ( 2 : ℝ ) ≠ 1 ) , Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 3 ) ( by norm_num norm_num : ( 3 : ℝ ) ≠ 1 ) ] field_simp [ Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 2 ) ( by norm_num norm_num : ( 2 : ℝ ) ≠ 1 ) , Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 3 ) ( by norm_num norm_num : ( 3 : ℝ ) ≠ 1 ) ] <;> ring_nf ring_nf]
    // [TACTIC: choice [ h₁₂ , h₁₃ ] rw [ h₁₂ , h₁₃ ]]
    // UNCITED-APPLIED congrArg(Real.log (6 : ℝ) / Real.log (2 : ℝ), (1 : ℝ) + Real.log (3 : ℝ) / Real.log (2 : ℝ), fun (_a : ℝ) => _a + Real.log (6 : ℝ) / Real.log (3 : ℝ) = Real.log (…): no library counterpart (not stated) [exec 374 1776-1797]
    // UNCITED-APPLIED congrArg(Real.log (6 : ℝ) / Real.log (3 : ℝ), (1 : ℝ) + Real.log (2 : ℝ) / Real.log (3 : ℝ), fun (_a : ℝ) => (1 : ℝ) + Real.log (3 : ℝ) / Real.log (2 : ℝ) + _a = …): no library counterpart (not stated) [exec 374 1776-1797]
    assert (((1.0 + Real.div(Real.log(3.0), Real.log(2.0))) + (1.0 + Real.div(Real.log(2.0), Real.log(3.0)))) == ((Real.div(Real.log(3.0), Real.log(2.0)) + Real.div(Real.log(2.0), Real.log(3.0))) + 2.0)) by {  // sub-goal of `ring_nf` (Lean state) // @tac 1806-1813
      NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
      PowOne(Real.log(3.0));  // cite: pow_one [applied by the tactic, not named in it]
      PowOne(Real.div(1.0, Real.log(2.0)));  // cite: pow_one [applied by the tactic, not named in it]
      PowOne(Real.log(2.0));  // cite: pow_one [applied by the tactic, not named in it]
      PowOne(Real.div(1.0, Real.log(3.0)));  // cite: pow_one [applied by the tactic, not named in it]
      // UNCITED-APPLIED mul_one ×2: a commutative-ring identity (native in Dafny's arithmetic), not stated — Lean's instances: (a := (Real.log (2 : ℝ))⁻¹); (a := (Real.log (3 : ℝ))⁻¹)
      // UNCITED-APPLIED internal ×79 [exec 410 1806-1813]: applications made inside the tactic's own automation, not stated — mul_one ×2, add_zero ×1; machinery/glue: Eq.trans ×8, congrArg ×8, congr ×6, Mathlib.Tactic.Ring.add_congr ×5 (+30 more heads, ×49) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], pow_one [Lean recorded ×4])
    }
    // [TACTIC: «Norm_num[_]At___»]
    // [TACTIC: «Norm_num[_]At___»]
    // [TACTIC: «Norm_num[_]At___»]
    // [TACTIC: «Norm_num[_]At___»]
    // [TACTIC: «Norm_num[_]At___»]
    // [TACTIC: «Norm_num[_]At___»]
    // [TACTIC: «Norm_num[_]At___»]
    // [TACTIC: «Norm_num[_]At___»]
  }
  // have h₂ : Real.sqrt ( ( Real.log ( 6 ) / Real.log ( 2 ) + Real.log ( 6 ) / Real.  [type from Lean state]
  assert (Real.sqrt((Real.div(Real.log(6.0), Real.log(2.0)) + Real.div(Real.log(6.0), Real.log(3.0)))) == Real.sqrt(((Real.div(Real.log(3.0), Real.log(2.0)) + Real.div(Real.log(2.0), Real.log(3.0))) + 2.0))); // @tac 2447-3006 // @tac 2447-2986 // @tac 2447-2762 // @tac 2447-2742 // @tac 2447-2518 // @tac 2447-2498 // @tac 2447-2456
  // UNCITED-APPLIED congrArg(Real.log (6 : ℝ) / Real.log (2 : ℝ) + Real.log (6 : ℝ) / Real.log (3 …, Real.log (3 : ℝ) / Real.log (2 : ℝ) + Real.log (2 : ℝ) / Real.log (3 …, fun (_a : ℝ) => √_a = √(Real.log (3 : ℝ) / Real.log (2 : ℝ) + Real.lo…): no library counterpart (not stated) [exec 485 2447-2456]
    // [TACTIC: «_<;>_» [ h₁ ] rw [ h₁ ] <;> simp [ Real.sqrt_eq_iff_sq_eq ] simp [ Real.sqrt_eq_iff_sq_eq ] simp [ Real.sqrt_eq_iff_sq_eq ] <;> ring_nf ring_nf <;> field_simp [ Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 2 ) ( by norm_num norm_num : ( 2 : ℝ ) ≠ 1 ) , Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 3 ) ( by norm_num norm_num : ( 3 : ℝ ) ≠ 1 ) ] field_simp [ Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 2 ) ( by norm_num norm_num : ( 2 : ℝ ) ≠ 1 ) , Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 3 ) ( by norm_num norm_num : ( 3 : ℝ ) ≠ 1 ) ] <;> ring_nf ring_nf <;> field_simp [ Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 2 ) ( by norm_num norm_num : ( 2 : ℝ ) ≠ 1 ) , Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 3 ) ( by norm_num norm_num : ( 3 : ℝ ) ≠ 1 ) ] field_simp [ Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 2 ) ( by norm_num norm_num : ( 2 : ℝ ) ≠ 1 ) , Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 3 ) ( by norm_num norm_num : ( 3 : ℝ ) ≠ 1 ) ] <;> ring_nf ring_nf]
    // [TACTIC: rwSeq [ h₁ ]]
    // `rw` closed the goal; the rest of the chain did not run
    // [TACTIC: «Norm_num[_]At___»]
    // [TACTIC: «Norm_num[_]At___»]
    // [TACTIC: «Norm_num[_]At___»]
    // [TACTIC: «Norm_num[_]At___»]
    // [TACTIC: «Norm_num[_]At___»]
    // [TACTIC: «Norm_num[_]At___»]
    // [TACTIC: «Norm_num[_]At___»]
    // [TACTIC: «Norm_num[_]At___»]
  // have h₃ : Real.sqrt ( ( ( Real.log ( 3 ) / Real.log ( 2 ) ) + ( Real.log ( 2 ) /  [type from Lean state]
  assert (Real.sqrt(((Real.div(Real.log(3.0), Real.log(2.0)) + Real.div(Real.log(2.0), Real.log(3.0))) + 2.0)) == (Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) + Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))) by { // @tac 3180-3332 // @tac 3337-3489 // @tac 3494-3547 // @tac 3552-3605 // @tac 3610-4291 // @tac 4296-6379 // @tac 6384-6439 // @tac 6384-6418 // @tac 6384-6397
    // have h₃₁ : Real.log ( 3 ) / Real.log ( 2 ) > 0  [type from Lean state]
    assert (Real.div(Real.log(3.0), Real.log(2.0)) > 0.0) by { // @tac 3235-3248
      // [TACTIC: apply div_pos]
      // `apply` step's recorded applications: the lemma applications Lean's proof term of this step is built from (no linarith run here) (Lean execution 3235-3248 exec 574)
      if (0.0 < Real.log(3.0)) && (0.0 < Real.log(2.0)) { cert_piece_1(); }  // cert: div_pos
      // `apply`: 2 cases (Lean states); 2 branch bodies
      assert (0.0 < Real.log(3.0)) by {  // sub-goal of `apply` (Lean state) // @tac 3258-3290 // @tac 3255-3290
        assert (1.0 < 3.0) by {  // sub-goal of `by` (Lean state) // @tac 3281-3289
          // [TACTIC: «Norm_num[_]At___»]
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
          // UNCITED-APPLIED internal ×5 [exec 584 3281-3289]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
        }
        // [TACTIC: exact Real.log_pos ( by norm_num norm_num )]
        assert (1.0 < (3.0));  // precondition of RealLogPos (Lean: Real.log_pos)
        RealLogPos(3.0);  // cite: Real.log_pos
      }
      assert (0.0 < Real.log(2.0)) by {  // sub-goal of `apply` (Lean state) // @tac 3300-3332 // @tac 3297-3332
        assert (1.0 < 2.0) by {  // sub-goal of `by` (Lean state) // @tac 3323-3331
          // [TACTIC: «Norm_num[_]At___»]
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
          // UNCITED-APPLIED internal ×5 [exec 594 3323-3331]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
        }
        // [TACTIC: exact Real.log_pos ( by norm_num norm_num )]
        assert (1.0 < (2.0));  // precondition of RealLogPos (Lean: Real.log_pos)
        RealLogPos(2.0);  // cite: Real.log_pos
      }
      assert (0.0 < (Real.log(3.0))) && (0.0 < (Real.log(2.0)));  // precondition of DivPos (Lean: div_pos; `apply`: proved by the steps above)
      DivPos(Real.log(3.0), Real.log(2.0));  // cite: div_pos
    }
    // have h₃₂ : Real.log ( 2 ) / Real.log ( 3 ) > 0  [type from Lean state]
    assert (Real.div(Real.log(2.0), Real.log(3.0)) > 0.0) by { // @tac 3392-3405
      // [TACTIC: apply div_pos]
      // `apply` step's recorded applications: the lemma applications Lean's proof term of this step is built from (no linarith run here) (Lean execution 3392-3405 exec 611)
      if (0.0 < Real.log(2.0)) && (0.0 < Real.log(3.0)) { cert_piece_2(); }  // cert: div_pos
      // `apply`: 2 cases (Lean states); 2 branch bodies
      assert (0.0 < Real.log(2.0)) by {  // sub-goal of `apply` (Lean state) // @tac 3415-3447 // @tac 3412-3447
        assert (1.0 < 2.0) by {  // sub-goal of `by` (Lean state) // @tac 3438-3446
          // [TACTIC: «Norm_num[_]At___»]
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
          // UNCITED-APPLIED internal ×5 [exec 621 3438-3446]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
        }
        // [TACTIC: exact Real.log_pos ( by norm_num norm_num )]
        assert (1.0 < (2.0));  // precondition of RealLogPos (Lean: Real.log_pos)
        RealLogPos(2.0);  // cite: Real.log_pos
      }
      assert (0.0 < Real.log(3.0)) by {  // sub-goal of `apply` (Lean state) // @tac 3457-3489 // @tac 3454-3489
        assert (1.0 < 3.0) by {  // sub-goal of `by` (Lean state) // @tac 3480-3488
          // [TACTIC: «Norm_num[_]At___»]
          NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
          // UNCITED-APPLIED internal ×5 [exec 631 3480-3488]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
        }
        // [TACTIC: exact Real.log_pos ( by norm_num norm_num )]
        assert (1.0 < (3.0));  // precondition of RealLogPos (Lean: Real.log_pos)
        RealLogPos(3.0);  // cite: Real.log_pos
      }
      assert (0.0 < (Real.log(2.0))) && (0.0 < (Real.log(3.0)));  // precondition of DivPos (Lean: div_pos; `apply`: proved by the steps above)
      DivPos(Real.log(2.0), Real.log(3.0));  // cite: div_pos
    }
    // have h₃₃ : Real.log ( 3 ) / Real.log ( 2 ) > 0  [type from Lean state]
    assert (Real.div(Real.log(3.0), Real.log(2.0)) > 0.0) by {
      // [TACTIC: exact h₃₁]
      assert (Real.div(Real.log(3.0), Real.log(2.0)) > 0.0);
    }
    // have h₃₄ : Real.log ( 2 ) / Real.log ( 3 ) > 0  [type from Lean state]
    assert (Real.div(Real.log(2.0), Real.log(3.0)) > 0.0) by {
      // [TACTIC: exact h₃₂]
      assert (Real.div(Real.log(2.0), Real.log(3.0)) > 0.0);
    }
    // have h₃₅ : ( Real.log ( 3 ) / Real.log ( 2 ) ) * ( Real.log ( 2 ) / Real.log ( 3   [type from Lean state]
    assert ((Real.div(Real.log(3.0), Real.log(2.0)) * Real.div(Real.log(2.0), Real.log(3.0))) == 1.0) by { // @tac 3695-4268 // @tac 4275-4291
      // have h₃₅₁ : ( Real.log ( 3 ) / Real.log ( 2 ) ) * ( Real.log ( 2 ) / Real.log ( 3   [type from Lean state]
      assert ((Real.div(Real.log(3.0), Real.log(2.0)) * Real.div(Real.log(2.0), Real.log(3.0))) == 1.0) by { // @tac 3785-4268 // @tac 3785-4248 // @tac 3785-4020 // @tac 3785-4000
        assert (0.0 < 2.0) by {  // sub-goal of `by` (Lean state) // @tac 3835-3843
          // [TACTIC: «Norm_num[_]At___»]
        }
        assert (2.0 != 1.0) by {  // sub-goal of `by` (Lean state) // @tac 3865-3873
          // [TACTIC: «Norm_num[_]At___»]
        }
        assert (0.0 < 3.0) by {  // sub-goal of `by` (Lean state) // @tac 3942-3950
          // [TACTIC: «Norm_num[_]At___»]
        }
        assert (3.0 != 1.0) by {  // sub-goal of `by` (Lean state) // @tac 3972-3980
          // [TACTIC: «Norm_num[_]At___»]
        }
        // [TACTIC: «_<;>_» [ Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 2 ) ( by norm_num norm_num : ( 2 : ℝ ) ≠ 1 ) , Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 3 ) ( by norm_num norm_num : ( 3 : ℝ ) ≠ 1 ) ] field_simp [ Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 2 ) ( by norm_num norm_num : ( 2 : ℝ ) ≠ 1 ) , Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 3 ) ( by norm_num norm_num : ( 3 : ℝ ) ≠ 1 ) ] <;> ring_nf ring_nf <;> field_simp [ Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 2 ) ( by norm_num norm_num : ( 2 : ℝ ) ≠ 1 ) , Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 3 ) ( by norm_num norm_num : ( 3 : ℝ ) ≠ 1 ) ] field_simp [ Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 2 ) ( by norm_num norm_num : ( 2 : ℝ ) ≠ 1 ) , Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 3 ) ( by norm_num norm_num : ( 3 : ℝ ) ≠ 1 ) ] <;> ring_nf ring_nf]
        // [TACTIC: «Field_simp[_]At___» [ Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 2 ) ( by norm_num norm_num : ( 2 : ℝ ) ≠ 1 ) , Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 3 ) ( by norm_num norm_num : ( 3 : ℝ ) ≠ 1 ) ]]
        NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it]
        NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it]
        // NOT APPLIED 1 of the 2 named instances of Real.log_ne_zero_of_pos_of_ne_one: Lean's records at this tactic hold only 1 distinct application of it (which named ones: not identified)
        // `field_simp` closed the goal; the rest of the chain did not run
        // [TACTIC: «Norm_num[_]At___»]
        // [TACTIC: «Norm_num[_]At___»]
        // [TACTIC: «Norm_num[_]At___»]
        // [TACTIC: «Norm_num[_]At___»]
        assert (0.0 < (2.0)) && ((2.0) != 1.0);  // precondition of RealLogNeZeroOfPosOfNeOne (Lean: Real.log_ne_zero_of_pos_of_ne_one)
        RealLogNeZeroOfPosOfNeOne(2.0);  // cite: Real.log_ne_zero_of_pos_of_ne_one
        // UNCITED-APPLIED internal ×23 [exec 703 3785-4000]: applications made inside the tactic's own automation, not stated — mul_div_assoc' ×1, div_mul_eq_mul_div ×1, IsUnit.mul_div_cancel_right ×1, div_self ×1, ne_of_gt ×1, Mathlib.Meta.Positivity.log_pos_of_isNat ×1; machinery/glue: Eq.trans ×4, Mathlib.Meta.NormNum.isNat_ofNat ×4, congrArg ×3, of_eq_true ×1 (+5 more heads, ×5) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1], Real.log_ne_zero_of_pos_of_ne_one [Lean recorded ×1])
      }
      // [TACTIC: exact h₃₅₁]
      assert ((Real.div(Real.log(3.0), Real.log(2.0)) * Real.div(Real.log(2.0), Real.log(3.0))) == 1.0);
    }
    // have h₃₆ : Real.sqrt ( ( ( Real.log ( 3 ) / Real.log ( 2 ) ) + ( Real.log ( 2 ) /  [type from Lean state]
    assert (Real.sqrt(((Real.div(Real.log(3.0), Real.log(2.0)) + Real.div(Real.log(2.0), Real.log(3.0))) + 2.0)) == (Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) + Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))) by { // @tac 4469-5885 // @tac 5892-6095 // @tac 6102-6117
      // have h₃₆₁ : ( Real.log ( 3 ) / Real.log ( 2 ) ) + ( Real.log ( 2 ) / Real.log ( 3   [type from Lean state]
      assert (((Real.div(Real.log(3.0), Real.log(2.0)) + Real.div(Real.log(2.0), Real.log(3.0))) + 2.0) == ((Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) + Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))) * (Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) + Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))))) by { // @tac 4641-4730 // @tac 4739-4828 // @tac 4837-4952 // @tac 4961-5102 // @tac 5111-5252 // @tac 5261-5885
        // have h₃₆₁₁ : 0 < Real.sqrt ( ( Real.log ( 3 ) / Real.log ( 2 ) ) )  [type from Lean state]
        assert (0.0 < Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) by {
          // [TACTIC: exact Real.sqrt_pos.mpr ( h₃₁ )]
          assert (0.0 < (Real.div(Real.log(3.0), Real.log(2.0))));  // precondition of RealSqrtPosMpr (Lean: Real.sqrt_pos.mpr)
          RealSqrtPosMpr(Real.div(Real.log(3.0), Real.log(2.0)));  // cite: Real.sqrt_pos.mpr
          // UNCITED-APPLIED Real.sqrt_pos(Real.log (3 : ℝ) / Real.log (2 : ℝ)): this block states the lemma as `cite: Real.sqrt_pos.mpr` (the direction of the iff the tactic uses); not stated under the recorded name [exec 784 4641-4730]
        }
        // have h₃₆₁₂ : 0 < Real.sqrt ( ( Real.log ( 2 ) / Real.log ( 3 ) ) )  [type from Lean state]
        assert (0.0 < Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))) by {
          // [TACTIC: exact Real.sqrt_pos.mpr ( h₃₂ )]
          assert (0.0 < (Real.div(Real.log(2.0), Real.log(3.0))));  // precondition of RealSqrtPosMpr (Lean: Real.sqrt_pos.mpr)
          RealSqrtPosMpr(Real.div(Real.log(2.0), Real.log(3.0)));  // cite: Real.sqrt_pos.mpr
          // UNCITED-APPLIED Real.sqrt_pos(Real.log (2 : ℝ) / Real.log (3 : ℝ)): this block states the lemma as `cite: Real.sqrt_pos.mpr` (the direction of the iff the tactic uses); not stated under the recorded name [exec 796 4739-4828]
        }
        // have h₃₆₁₃ : 0 < Real.sqrt ( ( Real.log ( 3 ) / Real.log ( 2 ) ) ) * Real.sqrt ( (   [type from Lean state]
        assert (0.0 < (Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))) by { // @tac 4942-4952
          // [TACTIC: Positivity]
          // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 4942-4952 exec 815)
          if (0.0 < Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) && (0.0 < Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))) { cert_piece_3(); }  // cert: mul_pos
          if (0.0 < Real.log(3.0)) && (0.0 < Real.log(2.0)) { cert_piece_4(); }  // cert: div_pos
          if (0.0 < Real.log(2.0)) && (0.0 < Real.log(3.0)) { cert_piece_5(); }  // cert: div_pos
          // UNCITED-APPLIED internal ×6 [exec 815 4942-4952]: applications made inside the tactic's own automation, not stated — Real.sqrt_pos_of_pos ×2, Mathlib.Meta.Positivity.log_pos_of_isNat ×2; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2 (cited in this block, not counted here: div_pos [Lean recorded ×2], mul_pos [Lean recorded ×1])
          assert (0.0 < (Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))))) && (0.0 < (Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))));  // precondition of MulPos (Lean: mul_pos)
          MulPos(Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))), Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))));  // cite: mul_pos [applied by the tactic, not named in it]
          assert (0.0 < (Real.log(3.0))) && (0.0 < (Real.log(2.0)));  // precondition of DivPos (Lean: div_pos)
          DivPos(Real.log(3.0), Real.log(2.0));  // cite: div_pos [applied by the tactic, not named in it]
          assert (0.0 < (Real.log(2.0))) && (0.0 < (Real.log(3.0)));  // precondition of DivPos (Lean: div_pos)
          DivPos(Real.log(2.0), Real.log(3.0));  // cite: div_pos [applied by the tactic, not named in it]
        }
        // have h₃₆₁₄ : ( Real.sqrt ( ( Real.log ( 3 ) / Real.log ( 2 ) ) ) ) ^ 2 == Real.log   [type from Lean state]
        assert ((Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) == Real.div(Real.log(3.0), Real.log(2.0))) by { // @tac 5066-5102
          // [TACTIC: rwSeq [ Real.sq_sqrt ( le_of_lt h₃₁ ) ]]
          assert ((0.0) < (Real.div(Real.log(3.0), Real.log(2.0))));  // precondition of LeOfLt (Lean: le_of_lt)
          LeOfLt(0.0, Real.div(Real.log(3.0), Real.log(2.0)));  // cite: le_of_lt
          assert (0.0 <= (Real.div(Real.log(3.0), Real.log(2.0))));  // precondition of RealSqSqrt (Lean: Real.sq_sqrt)
          RealSqSqrt(Real.div(Real.log(3.0), Real.log(2.0)));  // cite: Real.sq_sqrt
          // UNCITED-APPLIED congrArg(√(Real.log (3 : ℝ) / Real.log (2 : ℝ)) ^ (2 : ℕ), Real.log (3 : ℝ) / Real.log (2 : ℝ), fun (_a : ℝ) => _a = Real.log (3 : ℝ) / Real.log (2 : ℝ)): no library counterpart (not stated) [exec 836 5066-5102]
        }
        // have h₃₆₁₅ : ( Real.sqrt ( ( Real.log ( 2 ) / Real.log ( 3 ) ) ) ) ^ 2 == Real.log   [type from Lean state]
        assert ((Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))) * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))) == Real.div(Real.log(2.0), Real.log(3.0))) by { // @tac 5216-5252
          // [TACTIC: rwSeq [ Real.sq_sqrt ( le_of_lt h₃₂ ) ]]
          assert ((0.0) < (Real.div(Real.log(2.0), Real.log(3.0))));  // precondition of LeOfLt (Lean: le_of_lt)
          LeOfLt(0.0, Real.div(Real.log(2.0), Real.log(3.0)));  // cite: le_of_lt
          assert (0.0 <= (Real.div(Real.log(2.0), Real.log(3.0))));  // precondition of RealSqSqrt (Lean: Real.sq_sqrt)
          RealSqSqrt(Real.div(Real.log(2.0), Real.log(3.0)));  // cite: Real.sq_sqrt
          // UNCITED-APPLIED congrArg(√(Real.log (2 : ℝ) / Real.log (3 : ℝ)) ^ (2 : ℕ), Real.log (2 : ℝ) / Real.log (3 : ℝ), fun (_a : ℝ) => _a = Real.log (2 : ℝ) / Real.log (3 : ℝ)): no library counterpart (not stated) [exec 877 5216-5252]
        }
        // calc ( Real.log ( 3 ) / Real.log ( 2 ) ) + ( Real.log ( 2 ) / Rea ...  (carrier real from the Lean state; 2/3 steps typed)
        calc {
          ((Real.div(Real.log(3.0), Real.log(2.0)) + Real.div(Real.log(2.0), Real.log(3.0))) + 2.0);
          == {
            assert (((Real.div(Real.log(3.0), Real.log(2.0)) + Real.div(Real.log(2.0), Real.log(3.0))) + 2.0) == ((Real.div(Real.log(3.0), Real.log(2.0)) + Real.div(Real.log(2.0), Real.log(3.0))) + 2.0)) by {  // sub-goal before `rfl` (Lean state) // @tac 5400-5403
              // [TACTIC: Rfl]
            }
          }
          ((Real.div(Real.log(3.0), Real.log(2.0)) + Real.div(Real.log(2.0), Real.log(3.0))) + 2.0);
          == {
            assert (((Real.div(Real.log(3.0), Real.log(2.0)) + Real.div(Real.log(2.0), Real.log(3.0))) + 2.0) == (((Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) + (Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))) * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))) + 2.0)) by {  // sub-goal before `rw` (Lean state) // @tac 5526-5559
              // [TACTIC: rwSeq [ h₃₆₁₄ , h₃₆₁₅ ]]
              // UNCITED-APPLIED congrArg(√(Real.log (3 : ℝ) / Real.log (2 : ℝ)) ^ (2 : ℕ), Real.log (3 : ℝ) / Real.log (2 : ℝ), fun (_a : ℝ) => Real.log (3 : ℝ) / Real.log (2 : ℝ) + Real.log (2 : ℝ…): no library counterpart (not stated) [exec 913 5526-5559]
              // UNCITED-APPLIED congrArg(√(Real.log (2 : ℝ) / Real.log (3 : ℝ)) ^ (2 : ℕ), Real.log (2 : ℝ) / Real.log (3 : ℝ), fun (_a : ℝ) => Real.log (3 : ℝ) / Real.log (2 : ℝ) + Real.log (2 : ℝ…): no library counterpart (not stated) [exec 913 5526-5559]
            }
          }
          (((Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) + (Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))) * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))) + 2.0);
          == {
            assert ((((Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) + (Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))) * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))) + 2.0) == ((Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) + Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))) * (Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) + Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))))) by {  // sub-goal before `have` (Lean state) // @tac 5672-5787 // @tac 5800-5885
              // have h₃₆₁₆ : 0 < Real.sqrt ( ( Real.log ( 3 ) / Real.log ( 2 ) ) ) * Real.sqrt ( (   [type from Lean state]
              assert (0.0 < (Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))) by { // @tac 5777-5787
                // [TACTIC: Positivity]
                // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 5777-5787 exec 955)
                if (0.0 < Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) && (0.0 < Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))) { cert_piece_6(); }  // cert: mul_pos
                if (0.0 < Real.log(3.0)) && (0.0 < Real.log(2.0)) { cert_piece_7(); }  // cert: div_pos
                if (0.0 < Real.log(2.0)) && (0.0 < Real.log(3.0)) { cert_piece_8(); }  // cert: div_pos
                // UNCITED-APPLIED internal ×6 [exec 955 5777-5787]: applications made inside the tactic's own automation, not stated — Real.sqrt_pos_of_pos ×2, Mathlib.Meta.Positivity.log_pos_of_isNat ×2; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2 (cited in this block, not counted here: div_pos [Lean recorded ×2], mul_pos [Lean recorded ×1])
                assert (0.0 < (Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))))) && (0.0 < (Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))));  // precondition of MulPos (Lean: mul_pos)
                MulPos(Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))), Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))));  // cite: mul_pos [applied by the tactic, not named in it]
                assert (0.0 < (Real.log(3.0))) && (0.0 < (Real.log(2.0)));  // precondition of DivPos (Lean: div_pos)
                DivPos(Real.log(3.0), Real.log(2.0));  // cite: div_pos [applied by the tactic, not named in it]
                assert (0.0 < (Real.log(2.0))) && (0.0 < (Real.log(3.0)));  // precondition of DivPos (Lean: div_pos)
                DivPos(Real.log(2.0), Real.log(3.0));  // cite: div_pos [applied by the tactic, not named in it]
              }
              // [TACTIC: «Nlinarith[_]At___» [ Real.sq_sqrt ( le_of_lt h₃₁ ) , Real.sq_sqrt ( le_of_lt h₃₂ ) , h₃₅ ]]
              // (n)linarith certificate: Lean's product pieces and the identity it closed with (Lean execution 5800-5885 exec 956)
              // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℝ) * ((1 : ℝ) * (Real.log (3 : ℝ) / Real.log (2 : ℝ)) * ((1 : ℝ) * (Real.log (2 : ℝ) / Real.log (3 : ℝ))) - (1 : ℝ…` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((1.0 * Real.div(Real.log(3.0), Real.log(2.0))) * (1.0 * Real.div(Real.log(2.0), Real.log(3.0)))) - (1.0 * 1.0)) == 0.0); (2.0 > 0.0)
              // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℝ) * -(-((1 : ℝ) * √(Real.log (2 : ℝ) / Real.log (3 : ℝ))) ^ (2 : ℕ) * ((1 : ℝ) * ((1 : ℝ) * √(Real.log (3 : ℝ) / …` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: ((((1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))) * ((1.0 * ((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))))) - (1.0 * Real.div(Real.log(3.0), Real.log(2.0))))) == 0.0); (2.0 > 0.0)
              if (0.0 <= ((1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))))) && (((1.0 * ((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))))) - (1.0 * Real.div(Real.log(3.0), Real.log(2.0)))) == 0.0) { assert (-((((1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))) * ((1.0 * ((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))))) - (1.0 * Real.div(Real.log(3.0), Real.log(2.0)))))) == 0.0); }  // cert: Linarith.mul_zero_eq
              SqNonneg((1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))); assert (0.0 <= ((1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))));  // cert: sq_nonneg
              // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℝ) * -(-((1 : ℝ) * (Real.log (3 : ℝ) / Real.log (2 : ℝ))) * ((1 : ℝ) * ((1 : ℝ) * √(Real.log (2 : ℝ) / Real.log (3…` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (((1.0 * Real.div(Real.log(3.0), Real.log(2.0))) * ((1.0 * ((1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))))) - (1.0 * Real.div(Real.log(2.0), Real.log(3.0))))) == 0.0); (2.0 > 0.0)
              if (0.0 < (1.0 * Real.div(Real.log(3.0), Real.log(2.0)))) && (((1.0 * ((1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))))) - (1.0 * Real.div(Real.log(2.0), Real.log(3.0)))) == 0.0) { assert (-(((1.0 * Real.div(Real.log(3.0), Real.log(2.0))) * ((1.0 * ((1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))))) - (1.0 * Real.div(Real.log(2.0), Real.log(3.0)))))) == 0.0); }  // cert: Linarith.mul_zero_eq
              if (0.0 < ((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))))) && (((((1.0 * ((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))))) + (1.0 * ((1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))))) + (1.0 * 2.0)) - (1.0 * (((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) + (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))) * ((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) + (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))))))) < 0.0) { cert_piece_9(); }  // cert: mul_pos_of_neg_of_neg
              // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℝ) * -((1 : ℝ) * (Real.log (3 : ℝ) / Real.log (2 : ℝ)) * ((1 : ℝ) * (Real.log (2 : ℝ) / Real.log (3 : ℝ))) - (1 : …` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-((((1.0 * Real.div(Real.log(3.0), Real.log(2.0))) * (1.0 * Real.div(Real.log(2.0), Real.log(3.0)))) - (1.0 * 1.0))) == 0.0); (2.0 > 0.0)
              // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℝ) * (-((1 : ℝ) * √(Real.log (2 : ℝ) / Real.log (3 : ℝ))) ^ (2 : ℕ) * ((1 : ℝ) * ((1 : ℝ) * √(Real.log (3 : ℝ) / R…` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-((((1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))) * ((1.0 * ((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))))) - (1.0 * Real.div(Real.log(3.0), Real.log(2.0)))))) == 0.0); (2.0 > 0.0)
              // UNCITED-APPLIED Linarith.mul_eq: certificate piece `(2 : ℝ) * (-((1 : ℝ) * (Real.log (3 : ℝ) / Real.log (2 : ℝ))) * ((1 : ℝ) * ((1 : ℝ) * √(Real.log (2 : ℝ) / Real.log (3 …` not stated: a numeral multiple of a fact (linear: Dafny's arithmetic scales it natively); Lean's premises: (-(((1.0 * Real.div(Real.log(3.0), Real.log(2.0))) * ((1.0 * ((1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))))) - (1.0 * Real.div(Real.log(2.0), Real.log(3.0)))))) == 0.0); (2.0 > 0.0)
              if (0.0 < ((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))))) && (((1.0 * (((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) + (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))) * ((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) + (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))))) - (((1.0 * ((1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)))))) + (1.0 * ((1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))) * (1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))))) + (1.0 * 2.0))) < 0.0) { cert_piece_10(); }  // cert: mul_pos_of_neg_of_neg
              // UNCITED-APPLIED Linarith.lt_of_lt_of_eq ×4: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(2 : ℝ) * -((1 : ℝ) * (Real.log (3 : ℝ) / Real.log (2 : ℝ)) * ((1 : ℝ) * (Real.log (2 : ℝ) / Real.log (3 : ℝ))) - (1 : …`
              // UNCITED-APPLIED Linarith.lt_of_eq_of_lt ×2: certificate sums not stated: partial sums (subterms of a larger recorded sum of this certificate), e.g. `(2 : ℝ) * -((1 : ℝ) * (Real.log (3 : ℝ) / Real.log (2 : ℝ)) * ((1 : ℝ) * (Real.log (2 : ℝ) / Real.log (3 : ℝ))) - (1 : …`
              cert_identity_11();  // cert: Left.add_neg
              cert_identity_12();  // cert: Left.add_neg
              // UNCITED-APPLIED internal ×54 [exec 956 5800-5885]: applications made inside the tactic's own automation, not stated — CancelDenoms.sub_subst ×5, sub_eq_zero_of_eq ×3, CancelDenoms.add_subst ×3, CancelDenoms.pow_subst ×3, neg_eq_zero ×3, CancelDenoms.mul_subst ×2, sub_neg_of_lt ×2, CancelDenoms.neg_subst ×2, neg_neg_of_pos ×2, mul_pos_of_neg_of_neg ×2, neg_nonpos_of_nonneg ×1; machinery/glue: Linarith.without_one_mul ×7, Linarith.mul_eq ×6, congrArg ×6, Linarith.lt_of_eq_of_lt ×2 (+4 more heads, ×5) (cited in this block, not counted here: sq_nonneg [Lean recorded ×1])
              // UNCITED-APPLIED internal ×8 [exec 958 5800-5885]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
              // UNCITED-APPLIED internal ×8 [exec 959 5800-5885]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
              // UNCITED-APPLIED internal ×8 [exec 960 5800-5885]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
              // UNCITED-APPLIED internal ×8 [exec 961 5800-5885]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
              // UNCITED-APPLIED internal ×5 [exec 970 5800-5885]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
              // UNCITED-APPLIED internal ×8 [exec 962 5800-5885]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
              // UNCITED-APPLIED internal ×5 [exec 971 5800-5885]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
              // UNCITED-APPLIED internal ×5 [exec 963 5800-5885]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
              // UNCITED-APPLIED internal ×8 [exec 964 5800-5885]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
              // UNCITED-APPLIED internal ×8 [exec 965 5800-5885]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
              // UNCITED-APPLIED internal ×8 [exec 973 5800-5885]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
              // UNCITED-APPLIED internal ×220 [exec 983 5800-5885]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8 (+53 more heads, ×188) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
              // UNCITED-APPLIED internal ×5 [exec 966 5800-5885]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
              // UNCITED-APPLIED internal ×5 [exec 984 5800-5885]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
              // UNCITED-APPLIED internal ×8 [exec 974 5800-5885]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
              // UNCITED-APPLIED internal ×8 [exec 975 5800-5885]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
              // UNCITED-APPLIED internal ×8 [exec 976 5800-5885]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
              // UNCITED-APPLIED internal ×8 [exec 977 5800-5885]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
              // UNCITED-APPLIED internal ×5 [exec 985 5800-5885]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
              // UNCITED-APPLIED internal ×8 [exec 979 5800-5885]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
              // UNCITED-APPLIED internal ×5 [exec 986 5800-5885]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
              // UNCITED-APPLIED internal ×5 [exec 967 5800-5885]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
              // UNCITED-APPLIED internal ×8 [exec 980 5800-5885]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1 (+3 more heads, ×3) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
              // NOT APPLIED Real.sq_sqrt: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
              // NOT APPLIED le_of_lt: named here, but Lean's proof at this tactic does not apply it (applied only at other tactics of the proof)
              NatCastOne();  // cite: Nat.cast_one [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 957, 958, 959, 960, 961, 962 … / `ring1` exec 968, 983)]
              NatCastZero();  // cite: Nat.cast_zero [applied by the tactic, not named in it: inside its internal steps (`normNum` exec 969, 970, 971, 984, 985, 986 / `ring1` exec 968, 983)]
              SqNonneg((1.0 * Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))));  // cite: sq_nonneg [applied by the tactic, not named in it]
              // UNCITED-APPLIED internal ×221 [exec 968 5800-5885]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Tactic.Ring.mul_congr ×8, Mathlib.Tactic.Ring.add_mul ×8, Mathlib.Tactic.Ring.mul_add ×8, Mathlib.Tactic.Ring.mul_pf_left ×8 (+53 more heads, ×189) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1], Nat.cast_zero [Lean recorded ×1])
              // UNCITED-APPLIED internal ×5 [exec 957 5800-5885]: applications made inside the tactic's own automation, not stated — machinery/glue: of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_eq_true ×1, Mathlib.Meta.NormNum.isNat_mul ×1 (+1 more heads, ×1) (cited in this block, not counted here: Nat.cast_one [Lean recorded ×1])
              // UNCITED-APPLIED internal ×5 [exec 969 5800-5885]: applications made inside the tactic's own automation, not stated — machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2, of_eq_true ×1, eq_true ×1, Mathlib.Meta.NormNum.isNat_lt_true ×1 (cited in this block, not counted here: Nat.cast_zero [Lean recorded ×1])
            }
          }
          ((Real.sqrt((Real.div(Real.log(3.0), Real.log(2.0)))) + Real.sqrt((Real.div(Real.log(2.0), Real.log(3.0))))) * (Real.sqrt((Real.div(Real.log(3.0), Real.log(2.0)))) + Real.sqrt((Real.div(Real.log(2.0), Real.log(3.0))))));
        }
      }
      // have h₃₆₂ : Real.sqrt ( ( ( Real.log ( 3 ) / Real.log ( 2 ) ) + ( Real.log ( 2 ) /  [type from Lean state]
      assert (Real.sqrt(((Real.div(Real.log(3.0), Real.log(2.0)) + Real.div(Real.log(2.0), Real.log(3.0))) + 2.0)) == Real.sqrt(((Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) + Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))) * (Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) + Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))))); // @tac 6080-6095
        // [TACTIC: rwSeq [ h₃₆₁ ]]
      // UNCITED-APPLIED congrArg(Real.log (3 : ℝ) / Real.log (2 : ℝ) + Real.log (2 : ℝ) / Real.log (3 …, (√(Real.log (3 : ℝ) / Real.log (2 : ℝ)) + √(Real.log (2 : ℝ) / Real.l…, fun (_a : ℝ) => √_a = √((√(Real.log (3 : ℝ) / Real.log (2 : ℝ)) + √(R…): no library counterpart (not stated) [exec 1007 6080-6095]
      // [TACTIC: rwSeq [ h₃₆₂ ]]
      // UNCITED-APPLIED congrArg(√(Real.log (3 : ℝ) / Real.log (2 : ℝ) + Real.log (2 : ℝ) / Real.log (…, √((√(Real.log (3 : ℝ) / Real.log (2 : ℝ)) + √(Real.log (2 : ℝ) / Real…, fun (_a : ℝ) => _a = √(Real.log (3 : ℝ) / Real.log (2 : ℝ)) + √(Real.…): no library counterpart (not stated) [exec 1032 6102-6117]
      assert (Real.sqrt(((Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) + Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))) * (Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) + Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))))) == (Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) + Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))) by {  // sub-goal before `have` (Lean state) // @tac 6124-6357 // @tac 6364-6379
        // have h₃₆₃ : Real.sqrt ( ( ( Real.sqrt ( ( Real.log ( 3 ) / Real.log ( 2 ) ) ) + Re  [type from Lean state]
        assert (Real.sqrt(((Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) + Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))) * (Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) + Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))))) == (Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) + Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))) by { // @tac 6324-6357
          assert (0.0 <= (Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) + Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))) by {  // sub-goal of `by` (Lean state) // @tac 6345-6355
            // [TACTIC: Positivity]
            // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 6345-6355 exec 1086)
            if (0.0 < Real.log(3.0)) && (0.0 < Real.log(2.0)) { cert_piece_13(); }  // cert: div_pos
            if (0.0 < Real.log(2.0)) && (0.0 < Real.log(3.0)) { cert_piece_14(); }  // cert: div_pos
            // UNCITED-APPLIED internal ×7 [exec 1086 6345-6355]: applications made inside the tactic's own automation, not stated — Real.sqrt_pos_of_pos ×2, Mathlib.Meta.Positivity.log_pos_of_isNat ×2, add_pos ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2 (cited in this block, not counted here: div_pos [Lean recorded ×2], le_of_lt [Lean recorded ×1])
            assert ((0.0) < ((Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) + Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))));  // precondition of LeOfLt (Lean: le_of_lt)
            LeOfLt(0.0, (Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) + Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))));  // cite: le_of_lt [applied by the tactic, not named in it]
            assert (0.0 < (Real.log(3.0))) && (0.0 < (Real.log(2.0)));  // precondition of DivPos (Lean: div_pos)
            DivPos(Real.log(3.0), Real.log(2.0));  // cite: div_pos [applied by the tactic, not named in it]
            assert (0.0 < (Real.log(2.0))) && (0.0 < (Real.log(3.0)));  // precondition of DivPos (Lean: div_pos)
            DivPos(Real.log(2.0), Real.log(3.0));  // cite: div_pos [applied by the tactic, not named in it]
          }
          // [TACTIC: rwSeq [ Real.sqrt_sq ( by positivity ) ]]
          assert (0.0 <= ((Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) + Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))));  // precondition of RealSqrtSq (Lean: Real.sqrt_sq)
          RealSqrtSq((Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) + Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))));  // cite: Real.sqrt_sq
          // UNCITED-APPLIED congrArg(√((√(Real.log (3 : ℝ) / Real.log (2 : ℝ)) + √(Real.log (2 : ℝ) / Real…, √(Real.log (3 : ℝ) / Real.log (2 : ℝ)) + √(Real.log (2 : ℝ) / Real.lo…, fun (_a : ℝ) => _a = √(Real.log (3 : ℝ) / Real.log (2 : ℝ)) + √(Real.…): no library counterpart (not stated) [exec 1079 6324-6357]
          vc_amc12b_2020_p13_L530();  /* [IN-FILE CHECK] the closed lemma for line 530 */
        }
        // [TACTIC: rwSeq [ h₃₆₃ ]]
        // UNCITED-APPLIED congrArg(√((√(Real.log (3 : ℝ) / Real.log (2 : ℝ)) + √(Real.log (2 : ℝ) / Real…, √(Real.log (3 : ℝ) / Real.log (2 : ℝ)) + √(Real.log (2 : ℝ) / Real.lo…, fun (_a : ℝ) => _a = √(Real.log (3 : ℝ) / Real.log (2 : ℝ)) + √(Real.…): no library counterpart (not stated) [exec 1109 6364-6379]
      }
    }
    // [TACTIC: «_<;>_» h₃₆ exact h₃₆ <;> simp_all simp_all simp_all <;> linarith linarith]
    // [TACTIC: exact h₃₆]
    assert (Real.sqrt(((Real.div(Real.log(3.0), Real.log(2.0)) + Real.div(Real.log(2.0), Real.log(3.0))) + 2.0)) == (Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) + Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))));
    // `exact` closed the goal; the rest of the chain did not run
  }
  // have h₄ : Real.sqrt ( ( Real.log ( 6 ) / Real.log ( 2 ) + Real.log ( 6 ) / Real.  [type from Lean state]
  assert (Real.sqrt((Real.div(Real.log(6.0), Real.log(2.0)) + Real.div(Real.log(6.0), Real.log(3.0)))) == (Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) + Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))) by { // @tac 6605-6614
    // [TACTIC: rwSeq [ h₂ ]]
    // UNCITED-APPLIED congrArg(√(Real.log (6 : ℝ) / Real.log (2 : ℝ) + Real.log (6 : ℝ) / Real.log (…, √(Real.log (3 : ℝ) / Real.log (2 : ℝ) + Real.log (2 : ℝ) / Real.log (…, fun (_a : ℝ) => _a = √(Real.log (3 : ℝ) / Real.log (2 : ℝ)) + √(Real.…): no library counterpart (not stated) [exec 1173 6605-6614]
    assert (Real.sqrt(((Real.div(Real.log(3.0), Real.log(2.0)) + Real.div(Real.log(2.0), Real.log(3.0))) + 2.0)) == (Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) + Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))) by {  // sub-goal before `rw` (Lean state) // @tac 6619-7064 // @tac 6619-6953 // @tac 6619-6928 // @tac 6619-6699 // @tac 6619-6674 // @tac 6619-6628
      // [TACTIC: «_<;>_» [ h₃ ] rw [ h₃ ] <;> simp_all [ Real.sqrt_eq_iff_sq_eq ] simp_all [ Real.sqrt_eq_iff_sq_eq ] simp_all [ Real.sqrt_eq_iff_sq_eq ] <;> ring_nf at * <;> field_simp [ Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 2 ) ( by norm_num norm_num : ( 2 : ℝ ) ≠ 1 ) , Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 3 ) ( by norm_num norm_num : ( 3 : ℝ ) ≠ 1 ) ] at * <;> ring_nf at * <;> nlinarith [ Real.log_pos ( by norm_num norm_num : ( 1 : ℝ ) < 2 ) , Real.log_pos ( by norm_num norm_num : ( 1 : ℝ ) < 3 ) ] nlinarith [ Real.log_pos ( by norm_num norm_num : ( 1 : ℝ ) < 2 ) , Real.log_pos ( by norm_num norm_num : ( 1 : ℝ ) < 3 ) ]]
      // [TACTIC: rwSeq [ h₃ ]]
      // `rw` closed the goal; the rest of the chain did not run
      // [TACTIC: «Norm_num[_]At___»]
      // [TACTIC: «Norm_num[_]At___»]
      // [TACTIC: «Norm_num[_]At___»]
      // [TACTIC: «Norm_num[_]At___»]
      // [TACTIC: «Norm_num[_]At___»]
      // [TACTIC: «Norm_num[_]At___»]
      // UNCITED-APPLIED congrArg(√(Real.log (3 : ℝ) / Real.log (2 : ℝ) + Real.log (2 : ℝ) / Real.log (…, √(Real.log (3 : ℝ) / Real.log (2 : ℝ)) + √(Real.log (2 : ℝ) / Real.lo…, fun (_a : ℝ) => _a = √(Real.log (3 : ℝ) / Real.log (2 : ℝ)) + √(Real.…): no library counterpart (not stated) [exec 1229 6619-6628]
    }
  }
  // [TACTIC: «_<;>_» [ h₄ ] rw [ h₄ ] <;> simp_all [ Real.sqrt_eq_iff_sq_eq ] simp_all [ Real.sqrt_eq_iff_sq_eq ] simp_all [ Real.sqrt_eq_iff_sq_eq ] <;> ring_nf at * <;> field_simp [ Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 2 ) ( by norm_num norm_num : ( 2 : ℝ ) ≠ 1 ) , Real.log_ne_zero_of_pos_of_ne_one ( by norm_num norm_num : ( 0 : ℝ ) < 3 ) ( by norm_num norm_num : ( 3 : ℝ ) ≠ 1 ) ] at * <;> ring_nf at * <;> nlinarith [ Real.log_pos ( by norm_num norm_num : ( 1 : ℝ ) < 2 ) , Real.log_pos ( by norm_num norm_num : ( 1 : ℝ ) < 3 ) ] nlinarith [ Real.log_pos ( by norm_num norm_num : ( 1 : ℝ ) < 2 ) , Real.log_pos ( by norm_num norm_num : ( 1 : ℝ ) < 3 ) ]]
  // [TACTIC: rwSeq [ h₄ ]]
  // `rw` closed the goal; the rest of the chain did not run
  // [TACTIC: «Norm_num[_]At___»]
  // [TACTIC: «Norm_num[_]At___»]
  // [TACTIC: «Norm_num[_]At___»]
  // [TACTIC: «Norm_num[_]At___»]
  // [TACTIC: «Norm_num[_]At___»]
  // [TACTIC: «Norm_num[_]At___»]
  // GAP: recorded applications of Lean executions this translation states nowhere:
  // UNCITED-APPLIED congrArg(√(Real.log (6 : ℝ) / Real.log (2 : ℝ) + Real.log (6 : ℝ) / Real.log (…, √(Real.log (3 : ℝ) / Real.log (2 : ℝ)) + √(Real.log (2 : ℝ) / Real.lo…, fun (_a : ℝ) => _a = √(Real.log (3 : ℝ) / Real.log (2 : ℝ)) + √(Real.…): no library counterpart (not stated) [exec 1309 7070-7079]
}



// ===== closed lemma for line 530 (from closed/amc12b_2020_p13-530.dfy) =====

lemma {:induction false} vc_amc12b_2020_p13_L530()
  requires Real.div(Real.log(6.0), Real.log(2.0)) + Real.div(Real.log(6.0), Real.log(3.0)) == Real.div(Real.log(3.0), Real.log(2.0)) + Real.div(Real.log(2.0), Real.log(3.0)) + 2.0
  requires Real.sqrt(Real.div(Real.log(6.0), Real.log(2.0)) + Real.div(Real.log(6.0), Real.log(3.0))) == Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)) + Real.div(Real.log(2.0), Real.log(3.0)) + 2.0)
  requires Real.div(Real.log(3.0), Real.log(2.0)) > 0.0
  requires Real.div(Real.log(2.0), Real.log(3.0)) > 0.0
  requires Real.div(Real.log(3.0), Real.log(2.0)) * Real.div(Real.log(2.0), Real.log(3.0)) == 1.0
  requires Real.div(Real.log(3.0), Real.log(2.0)) + Real.div(Real.log(2.0), Real.log(3.0)) + 2.0 == (Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) + Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))) * (Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) + Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))
  requires Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0)) + Real.div(Real.log(2.0), Real.log(3.0)) + 2.0) == Real.sqrt((Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) + Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))) * (Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) + Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))))
  requires Real.sqrt(Real.pow(Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) + Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))), 2)) == Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) + Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))
  ensures   Real.sqrt((Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) + Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))) * (Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) + Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))) == Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) + Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))
{
  assert Real.pow(Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) + Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))), 2) == (Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) + Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))) * (Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) + Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))));  // K2: Lean's s ^ 2 normal form (checked)  // [ADDED]
          assert (0.0 <= (Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) + Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))) by {  // sub-goal of `by` (Lean state) // @tac 6345-6355
            // [TACTIC: Positivity]
            // positivity proof: the lemma applications Lean's positivity proof is built from (Lean execution 6345-6355 exec 1086)
            if (0.0 < Real.log(3.0)) && (0.0 < Real.log(2.0)) { cert_piece_13(); }  // cert: div_pos
            if (0.0 < Real.log(2.0)) && (0.0 < Real.log(3.0)) { cert_piece_14(); }  // cert: div_pos
            // UNCITED-APPLIED internal ×7 [exec 1086 6345-6355]: applications made inside the tactic's own automation, not stated — Real.sqrt_pos_of_pos ×2, Mathlib.Meta.Positivity.log_pos_of_isNat ×2, add_pos ×1; machinery/glue: Mathlib.Meta.NormNum.isNat_ofNat ×2 (cited in this block, not counted here: div_pos [Lean recorded ×2], le_of_lt [Lean recorded ×1])
            assert ((0.0) < ((Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) + Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))));  // precondition of LeOfLt (Lean: le_of_lt)
            LeOfLt(0.0, (Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) + Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))));  // cite: le_of_lt [applied by the tactic, not named in it]
            assert (0.0 < (Real.log(3.0))) && (0.0 < (Real.log(2.0)));  // precondition of DivPos (Lean: div_pos)
            DivPos(Real.log(3.0), Real.log(2.0));  // cite: div_pos [applied by the tactic, not named in it]
            assert (0.0 < (Real.log(2.0))) && (0.0 < (Real.log(3.0)));  // precondition of DivPos (Lean: div_pos)
            DivPos(Real.log(2.0), Real.log(3.0));  // cite: div_pos [applied by the tactic, not named in it]
          }
          // [TACTIC: rwSeq [ Real.sqrt_sq ( by positivity ) ]]
          assert (0.0 <= ((Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) + Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0))))));  // precondition of RealSqrtSq (Lean: Real.sqrt_sq)
          RealSqrtSq((Real.sqrt(Real.div(Real.log(3.0), Real.log(2.0))) + Real.sqrt(Real.div(Real.log(2.0), Real.log(3.0)))));  // cite: Real.sqrt_sq
          // UNCITED-APPLIED congrArg(√((√(Real.log (3 : ℝ) / Real.log (2 : ℝ)) + √(Real.log (2 : ℝ) / Real…, √(Real.log (3 : ℝ) / Real.log (2 : ℝ)) + √(Real.log (2 : ℝ) / Real.lo…, fun (_a : ℝ) => _a = √(Real.log (3 : ℝ) / Real.log (2 : ℝ)) + √(Real.…): no library counterpart (not stated) [exec 1079 6324-6357]
}

