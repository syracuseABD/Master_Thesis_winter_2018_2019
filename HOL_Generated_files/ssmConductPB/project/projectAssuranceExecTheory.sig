signature projectAssuranceExecTheory =
sig
  type thm = Thm.thm

  (*  Theorems  *)
    val ACTIONS_IN_exec_withdraw_lemma1 : thm
    val ACTIONS_IN_exec_withdraw_lemma2 : thm
    val ACTIONS_IN_exec_withdraw_thm : thm
    val CONDUCT_PB_exec_secure_lemma1 : thm
    val CONDUCT_PB_exec_secure_lemma2 : thm
    val CONDUCT_PB_exec_secure_thm : thm
    val SECURE_exec_actionsIn_lemma1 : thm
    val SECURE_exec_actionsIn_lemma2 : thm
    val SECURE_exec_actionsIn_thm : thm
    val WITHDRAW_exec_complete_lemma1 : thm
    val WITHDRAW_exec_complete_lemma2 : thm
    val WITHDRAW_exec_complete_thm : thm

  val projectAssuranceExec_grammars : type_grammar.grammar * term_grammar.grammar
(*
   [projectSecurity] Parent theory of "projectAssuranceExec"

   [ACTIONS_IN_exec_withdraw_lemma1]  Theorem

      |- ∀M Oi Os.
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM withdraw))]::ins) ACTIONS_IN
                outs) ⇒
           (M,Oi,Os) satList
           propCommandList
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM withdraw))]

   [ACTIONS_IN_exec_withdraw_lemma2]  Theorem

      |- ∀NS Out M Oi Os.
           TR (M,Oi,Os)
             (exec
                (inputList
                   [Name PlatoonLeader says
                    prop (SOME (PlatoonLeaderCOM withdraw))]))
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM withdraw))]::ins) ACTIONS_IN
                outs)
             (CFG authentication stateAuth globalAuth ins
                (NS ACTIONS_IN
                   (exec
                      (inputList
                         [Name PlatoonLeader says
                          prop (SOME (PlatoonLeaderCOM withdraw))])))
                (Out ACTIONS_IN
                   (exec
                      (inputList
                         [Name PlatoonLeader says
                          prop (SOME (PlatoonLeaderCOM withdraw))]))::
                     outs)) ⇔
           authenticationTest authentication
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM withdraw))] ∧
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM withdraw))]::ins) ACTIONS_IN
                outs) ∧
           (M,Oi,Os) satList
           propCommandList
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM withdraw))]

   [ACTIONS_IN_exec_withdraw_thm]  Theorem

      |- ∀NS Out M Oi Os.
           TR (M,Oi,Os) (exec [SOME (PlatoonLeaderCOM withdraw)])
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM withdraw))]::ins) ACTIONS_IN
                outs)
             (CFG authentication stateAuth globalAuth ins
                (NS ACTIONS_IN (exec [SOME (PlatoonLeaderCOM withdraw)]))
                (Out ACTIONS_IN (exec [SOME (PlatoonLeaderCOM withdraw)])::
                     outs)) ⇔
           authenticationTest authentication
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM withdraw))] ∧
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM withdraw))]::ins) ACTIONS_IN
                outs) ∧
           (M,Oi,Os) satList [prop (SOME (PlatoonLeaderCOM withdraw))]

   [CONDUCT_PB_exec_secure_lemma1]  Theorem

      |- ∀M Oi Os.
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM secure))]::ins) CONDUCT_PB
                outs) ⇒
           (M,Oi,Os) satList
           propCommandList
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM secure))]

   [CONDUCT_PB_exec_secure_lemma2]  Theorem

      |- ∀NS Out M Oi Os.
           TR (M,Oi,Os)
             (exec
                (inputList
                   [Name PlatoonLeader says
                    prop (SOME (PlatoonLeaderCOM secure))]))
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM secure))]::ins) CONDUCT_PB
                outs)
             (CFG authentication stateAuth globalAuth ins
                (NS CONDUCT_PB
                   (exec
                      (inputList
                         [Name PlatoonLeader says
                          prop (SOME (PlatoonLeaderCOM secure))])))
                (Out CONDUCT_PB
                   (exec
                      (inputList
                         [Name PlatoonLeader says
                          prop (SOME (PlatoonLeaderCOM secure))]))::
                     outs)) ⇔
           authenticationTest authentication
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM secure))] ∧
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM secure))]::ins) CONDUCT_PB
                outs) ∧
           (M,Oi,Os) satList
           propCommandList
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM secure))]

   [CONDUCT_PB_exec_secure_thm]  Theorem

      |- ∀NS Out M Oi Os.
           TR (M,Oi,Os) (exec [SOME (PlatoonLeaderCOM secure)])
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM secure))]::ins) CONDUCT_PB
                outs)
             (CFG authentication stateAuth globalAuth ins
                (NS CONDUCT_PB (exec [SOME (PlatoonLeaderCOM secure)]))
                (Out CONDUCT_PB (exec [SOME (PlatoonLeaderCOM secure)])::
                     outs)) ⇔
           authenticationTest authentication
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM secure))] ∧
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM secure))]::ins) CONDUCT_PB
                outs) ∧
           (M,Oi,Os) satList [prop (SOME (PlatoonLeaderCOM secure))]

   [SECURE_exec_actionsIn_lemma1]  Theorem

      |- ∀M Oi Os.
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonSergeant says
                  prop (SOME (PlatoonSergeantCOM actionsIn))]::ins) SECURE
                outs) ⇒
           (M,Oi,Os) satList
           propCommandList
             [Name PlatoonSergeant says
              prop (SOME (PlatoonSergeantCOM actionsIn))]

   [SECURE_exec_actionsIn_lemma2]  Theorem

      |- ∀NS Out M Oi Os.
           TR (M,Oi,Os)
             (exec
                (inputList
                   [Name PlatoonSergeant says
                    prop (SOME (PlatoonSergeantCOM actionsIn))]))
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonSergeant says
                  prop (SOME (PlatoonSergeantCOM actionsIn))]::ins) SECURE
                outs)
             (CFG authentication stateAuth globalAuth ins
                (NS SECURE
                   (exec
                      (inputList
                         [Name PlatoonSergeant says
                          prop (SOME (PlatoonSergeantCOM actionsIn))])))
                (Out SECURE
                   (exec
                      (inputList
                         [Name PlatoonSergeant says
                          prop (SOME (PlatoonSergeantCOM actionsIn))]))::
                     outs)) ⇔
           authenticationTest authentication
             [Name PlatoonSergeant says
              prop (SOME (PlatoonSergeantCOM actionsIn))] ∧
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonSergeant says
                  prop (SOME (PlatoonSergeantCOM actionsIn))]::ins) SECURE
                outs) ∧
           (M,Oi,Os) satList
           propCommandList
             [Name PlatoonSergeant says
              prop (SOME (PlatoonSergeantCOM actionsIn))]

   [SECURE_exec_actionsIn_thm]  Theorem

      |- ∀NS Out M Oi Os.
           TR (M,Oi,Os) (exec [SOME (PlatoonSergeantCOM actionsIn)])
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonSergeant says
                  prop (SOME (PlatoonSergeantCOM actionsIn))]::ins) SECURE
                outs)
             (CFG authentication stateAuth globalAuth ins
                (NS SECURE (exec [SOME (PlatoonSergeantCOM actionsIn)]))
                (Out SECURE (exec [SOME (PlatoonSergeantCOM actionsIn)])::
                     outs)) ⇔
           authenticationTest authentication
             [Name PlatoonSergeant says
              prop (SOME (PlatoonSergeantCOM actionsIn))] ∧
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonSergeant says
                  prop (SOME (PlatoonSergeantCOM actionsIn))]::ins) SECURE
                outs) ∧
           (M,Oi,Os) satList [prop (SOME (PlatoonSergeantCOM actionsIn))]

   [WITHDRAW_exec_complete_lemma1]  Theorem

      |- ∀M Oi Os.
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM complete))]::ins) WITHDRAW
                outs) ⇒
           (M,Oi,Os) satList
           propCommandList
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM complete))]

   [WITHDRAW_exec_complete_lemma2]  Theorem

      |- ∀NS Out M Oi Os.
           TR (M,Oi,Os)
             (exec
                (inputList
                   [Name PlatoonLeader says
                    prop (SOME (PlatoonLeaderCOM complete))]))
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM complete))]::ins) WITHDRAW
                outs)
             (CFG authentication stateAuth globalAuth ins
                (NS WITHDRAW
                   (exec
                      (inputList
                         [Name PlatoonLeader says
                          prop (SOME (PlatoonLeaderCOM complete))])))
                (Out WITHDRAW
                   (exec
                      (inputList
                         [Name PlatoonLeader says
                          prop (SOME (PlatoonLeaderCOM complete))]))::
                     outs)) ⇔
           authenticationTest authentication
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM complete))] ∧
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM complete))]::ins) WITHDRAW
                outs) ∧
           (M,Oi,Os) satList
           propCommandList
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM complete))]

   [WITHDRAW_exec_complete_thm]  Theorem

      |- ∀NS Out M Oi Os.
           TR (M,Oi,Os) (exec [SOME (PlatoonLeaderCOM complete)])
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM complete))]::ins) WITHDRAW
                outs)
             (CFG authentication stateAuth globalAuth ins
                (NS WITHDRAW (exec [SOME (PlatoonLeaderCOM complete)]))
                (Out WITHDRAW (exec [SOME (PlatoonLeaderCOM complete)])::
                     outs)) ⇔
           authenticationTest authentication
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM complete))] ∧
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM complete))]::ins) WITHDRAW
                outs) ∧
           (M,Oi,Os) satList [prop (SOME (PlatoonLeaderCOM complete))]


*)
end
