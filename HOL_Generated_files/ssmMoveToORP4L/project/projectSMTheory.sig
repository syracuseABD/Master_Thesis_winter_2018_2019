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

      |- (NOut MOVE_TO_ORP (exec x) =
          if getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM formRT) then
            FormRT
          else NoActionTaken) ∧
         (NOut FORM_RT (exec x) =
          if getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM rtMove) then
            RtMove
          else NoActionTaken) ∧
         (NOut RT_MOVE (exec x) =
          if getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM rtHalt) then
            RtHalt
          else NoActionTaken) ∧
         (NOut RT_HALT (exec x) =
          if getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM complete) then
            Complete
          else NoActionTaken) ∧ (NOut s (trap v0) = UnAuthorized) ∧
         (NOut s (discard v1) = UnAuthenticated)

   [NOut_ind]  Theorem

      |- ∀P.
           (∀x. P MOVE_TO_ORP (exec x)) ∧ (∀x. P FORM_RT (exec x)) ∧
           (∀x. P RT_MOVE (exec x)) ∧ (∀x. P RT_HALT (exec x)) ∧
           (∀s v0. P s (trap v0)) ∧ (∀s v1. P s (discard v1)) ∧
           (∀v6. P COMPLETE (exec v6)) ⇒
           ∀v v1. P v v1

   [NS_def]  Theorem

      |- (NS MOVE_TO_ORP (exec x) =
          if getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM formRT) then
            FORM_RT
          else MOVE_TO_ORP) ∧
         (NS FORM_RT (exec x) =
          if getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM rtMove) then
            RT_MOVE
          else FORM_RT) ∧
         (NS RT_MOVE (exec x) =
          if getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM rtHalt) then
            RT_HALT
          else RT_MOVE) ∧
         (NS RT_HALT (exec x) =
          if getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM complete) then
            COMPLETE
          else RT_HALT) ∧ (NS s (trap v0) = s) ∧ (NS s (discard v1) = s)

   [NS_ind]  Theorem

      |- ∀P.
           (∀x. P MOVE_TO_ORP (exec x)) ∧ (∀x. P FORM_RT (exec x)) ∧
           (∀x. P RT_MOVE (exec x)) ∧ (∀x. P RT_HALT (exec x)) ∧
           (∀s v0. P s (trap v0)) ∧ (∀s v1. P s (discard v1)) ∧
           (∀v6. P COMPLETE (exec v6)) ⇒
           ∀v v1. P v v1


*)
end
