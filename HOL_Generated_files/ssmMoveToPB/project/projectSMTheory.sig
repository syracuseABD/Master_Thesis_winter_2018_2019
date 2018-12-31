signature projectSMTheory =
sig
  type thm = Thm.thm

  (*  Theorems  *)
    val NOut_def : thm
    val NOut_ind : thm
    val NS_def : thm
    val NS_ind : thm

  val projectSM_grammars : type_grammar.grammar * term_grammar.grammar
(*
   [projectUtilities] Parent theory of "projectSM"

   [ssm] Parent theory of "projectSM"

   [NOut_def]  Theorem

      |- (NOut MOVE_TO_PB (exec x) =
          if getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM form) then Form
          else NoActionTaken) ∧
         (NOut FORM (exec x) =
          if getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM move) then Move
          else NoActionTaken) ∧
         (NOut MOVE (exec x) =
          if
            getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM secureHalt)
          then
            Secure_halt
          else NoActionTaken) ∧ (NOut s (trap v0) = UnAuthorized) ∧
         (NOut s (discard v1) = UnAuthenticated)

   [NOut_ind]  Theorem

      |- ∀P.
           (∀x. P MOVE_TO_PB (exec x)) ∧ (∀x. P FORM (exec x)) ∧
           (∀x. P MOVE (exec x)) ∧ (∀s v0. P s (trap v0)) ∧
           (∀s v1. P s (discard v1)) ∧ (∀v6. P SECURE_HALT (exec v6)) ⇒
           ∀v v1. P v v1

   [NS_def]  Theorem

      |- (NS MOVE_TO_PB (exec x) =
          if getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM form) then FORM
          else MOVE_TO_PB) ∧
         (NS FORM (exec x) =
          if getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM move) then MOVE
          else FORM) ∧
         (NS MOVE (exec x) =
          if
            getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM secureHalt)
          then
            SECURE_HALT
          else MOVE) ∧ (NS s (trap v0) = s) ∧ (NS s (discard v1) = s)

   [NS_ind]  Theorem

      |- ∀P.
           (∀x. P MOVE_TO_PB (exec x)) ∧ (∀x. P FORM (exec x)) ∧
           (∀x. P MOVE (exec x)) ∧ (∀s v0. P s (trap v0)) ∧
           (∀s v1. P s (discard v1)) ∧ (∀v6. P SECURE_HALT (exec v6)) ⇒
           ∀v v1. P v v1


*)
end
