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

      |- (NOut ORP_RECON (exec x) =
          if
            getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM contingencyPlan)
          then
            ContingencyPlan
          else NoActionTaken) ∧
         (NOut CONTINGENCY_PLAN (exec x) =
          if getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM moveToORP) then
            MoveToORP
          else NoActionTaken) ∧
         (NOut MOVE_TO_ORP (exec x) =
          if
            getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM conductORP)
          then
            ConductORP
          else NoActionTaken) ∧
         (NOut CONDUCT_ORP (exec x) =
          if getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM formST) then
            FormST
          else NoActionTaken) ∧
         (NOut FORM_ST (exec x) =
          if
            getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM returnToUnit)
          then
            ReturnToUnit
          else NoActionTaken) ∧
         (NOut RETURN_TO_UNIT (exec x) =
          if getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM complete) then
            Complete
          else NoActionTaken) ∧ (NOut s (trap v0) = UnAuthorized) ∧
         (NOut s (discard v1) = UnAuthenticated)

   [NOut_ind]  Theorem

      |- ∀P.
           (∀x. P ORP_RECON (exec x)) ∧ (∀x. P CONTINGENCY_PLAN (exec x)) ∧
           (∀x. P MOVE_TO_ORP (exec x)) ∧ (∀x. P CONDUCT_ORP (exec x)) ∧
           (∀x. P FORM_ST (exec x)) ∧ (∀x. P RETURN_TO_UNIT (exec x)) ∧
           (∀s v0. P s (trap v0)) ∧ (∀s v1. P s (discard v1)) ∧
           (∀v6. P COMPLETE (exec v6)) ⇒
           ∀v v1. P v v1

   [NS_def]  Theorem

      |- (NS ORP_RECON (exec x) =
          if
            getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM contingencyPlan)
          then
            CONTINGENCY_PLAN
          else ORP_RECON) ∧
         (NS CONTINGENCY_PLAN (exec x) =
          if getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM moveToORP) then
            MOVE_TO_ORP
          else CONTINGENCY_PLAN) ∧
         (NS MOVE_TO_ORP (exec x) =
          if
            getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM conductORP)
          then
            CONDUCT_ORP
          else MOVE_TO_ORP) ∧
         (NS CONDUCT_ORP (exec x) =
          if getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM formST) then
            FORM_ST
          else CONDUCT_ORP) ∧
         (NS FORM_ST (exec x) =
          if
            getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM returnToUnit)
          then
            RETURN_TO_UNIT
          else FORM_ST) ∧
         (NS RETURN_TO_UNIT (exec x) =
          if getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM complete) then
            COMPLETE
          else RETURN_TO_UNIT) ∧ (NS s (trap v0) = s) ∧
         (NS s (discard v1) = s)

   [NS_ind]  Theorem

      |- ∀P.
           (∀x. P ORP_RECON (exec x)) ∧ (∀x. P CONTINGENCY_PLAN (exec x)) ∧
           (∀x. P MOVE_TO_ORP (exec x)) ∧ (∀x. P CONDUCT_ORP (exec x)) ∧
           (∀x. P FORM_ST (exec x)) ∧ (∀x. P RETURN_TO_UNIT (exec x)) ∧
           (∀s v0. P s (trap v0)) ∧ (∀s v1. P s (discard v1)) ∧
           (∀v6. P COMPLETE (exec v6)) ⇒
           ∀v v1. P v v1


*)
end
