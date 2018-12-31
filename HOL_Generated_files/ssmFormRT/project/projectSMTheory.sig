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

      |- (NOut RT_FORM (exec x) =
          if getSquadLeaderCOM x = SOME (SquadLeaderCOM rtPosition) then
            RtPosition
          else NoActionTaken) ∧
         (NOut RT_POSITION (exec x) =
          if getSquadLeaderCOM x = SOME (SquadLeaderCOM rtOrient) then
            RtOrient
          else NoActionTaken) ∧
         (NOut RT_ORIENT (exec x) =
          if getSquadLeaderCOM x = SOME (SquadLeaderCOM rtAlert) then
            RtAlert
          else NoActionTaken) ∧
         (NOut RT_ALERT (exec x) =
          if getSquadLeaderCOM x = SOME (SquadLeaderCOM complete) then
            Complete
          else NoActionTaken) ∧ (NOut s (trap v0) = UnAuthorized) ∧
         (NOut s (discard v1) = UnAuthenticated)

   [NOut_ind]  Theorem

      |- ∀P.
           (∀x. P RT_FORM (exec x)) ∧ (∀x. P RT_POSITION (exec x)) ∧
           (∀x. P RT_ORIENT (exec x)) ∧ (∀x. P RT_ALERT (exec x)) ∧
           (∀s v0. P s (trap v0)) ∧ (∀s v1. P s (discard v1)) ∧
           (∀v6. P COMPLETE (exec v6)) ⇒
           ∀v v1. P v v1

   [NS_def]  Theorem

      |- (NS RT_FORM (exec x) =
          if getSquadLeaderCOM x = SOME (SquadLeaderCOM rtPosition) then
            RT_POSITION
          else RT_FORM) ∧
         (NS RT_POSITION (exec x) =
          if getSquadLeaderCOM x = SOME (SquadLeaderCOM rtOrient) then
            RT_ORIENT
          else RT_POSITION) ∧
         (NS RT_ORIENT (exec x) =
          if getSquadLeaderCOM x = SOME (SquadLeaderCOM rtAlert) then
            RT_ALERT
          else RT_ORIENT) ∧
         (NS RT_ALERT (exec x) =
          if getSquadLeaderCOM x = SOME (SquadLeaderCOM complete) then
            COMPLETE
          else RT_ALERT) ∧ (NS s (trap v0) = s) ∧ (NS s (discard v1) = s)

   [NS_ind]  Theorem

      |- ∀P.
           (∀x. P RT_FORM (exec x)) ∧ (∀x. P RT_POSITION (exec x)) ∧
           (∀x. P RT_ORIENT (exec x)) ∧ (∀x. P RT_ALERT (exec x)) ∧
           (∀s v0. P s (trap v0)) ∧ (∀s v1. P s (discard v1)) ∧
           (∀v6. P COMPLETE (exec v6)) ⇒
           ∀v v1. P v v1


*)
end
