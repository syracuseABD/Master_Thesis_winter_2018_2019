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

      |- (NOut CONDUCT_PB (exec x) =
          if getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM secure) then
            Secure
          else NoActionTaken) ∧
         (NOut SECURE (exec x) =
          if
            getPlatoonSergeantCOM x = SOME (PlatoonSergeantCOM actionsIn)
          then
            ActionsIn
          else NoActionTaken) ∧
         (NOut ACTIONS_IN (exec x) =
          if getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM withdraw) then
            Withdraw
          else NoActionTaken) ∧
         (NOut WITHDRAW (exec x) =
          if getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM complete) then
            Complete
          else NoActionTaken) ∧ (NOut s (trap v0) = UnAuthorized) ∧
         (NOut s (discard v1) = UnAuthenticated)

   [NOut_ind]  Theorem

      |- ∀P.
           (∀x. P CONDUCT_PB (exec x)) ∧ (∀x. P SECURE (exec x)) ∧
           (∀x. P ACTIONS_IN (exec x)) ∧ (∀x. P WITHDRAW (exec x)) ∧
           (∀s v0. P s (trap v0)) ∧ (∀s v1. P s (discard v1)) ∧
           (∀v6. P COMPLETE (exec v6)) ⇒
           ∀v v1. P v v1

   [NS_def]  Theorem

      |- (NS CONDUCT_PB (exec x) =
          if getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM secure) then
            SECURE
          else CONDUCT_PB) ∧
         (NS SECURE (exec x) =
          if
            getPlatoonSergeantCOM x = SOME (PlatoonSergeantCOM actionsIn)
          then
            ACTIONS_IN
          else SECURE) ∧
         (NS ACTIONS_IN (exec x) =
          if getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM withdraw) then
            WITHDRAW
          else ACTIONS_IN) ∧
         (NS WITHDRAW (exec x) =
          if getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM complete) then
            COMPLETE
          else WITHDRAW) ∧ (NS s (trap v0) = s) ∧ (NS s (discard v1) = s)

   [NS_ind]  Theorem

      |- ∀P.
           (∀x. P CONDUCT_PB (exec x)) ∧ (∀x. P SECURE (exec x)) ∧
           (∀x. P ACTIONS_IN (exec x)) ∧ (∀x. P WITHDRAW (exec x)) ∧
           (∀s v0. P s (trap v0)) ∧ (∀s v1. P s (discard v1)) ∧
           (∀v6. P COMPLETE (exec v6)) ⇒
           ∀v v1. P v v1


*)
end
