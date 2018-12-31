signature projectAssuranceExecTheory =
sig
  type thm = Thm.thm

  (*  Theorems  *)
    val ORP_RECON_exec_withdraw_lemma1 : thm
    val ORP_RECON_exec_withdraw_lemma2 : thm
    val ORP_RECON_exec_withdraw_thm : thm
    val SECURE_HALT_exec_secure_lemma1 : thm
    val SECURE_HALT_exec_secure_lemma2 : thm
    val SECURE_HALT_exec_secure_thm : thm
    val SECURE_exec_orpRecon_lemma1 : thm
    val SECURE_exec_orpRecon_lemma2 : thm
    val SECURE_exec_orpRecon_thm : thm
    val WITHDRAW_exec_complete_lemma1 : thm
    val WITHDRAW_exec_complete_lemma2 : thm
    val WITHDRAW_exec_complete_thm : thm

  val projectAssuranceExec_grammars : type_grammar.grammar * term_grammar.grammar
(*
   [projectSecurity] Parent theory of "projectAssuranceExec"

   [ORP_RECON_exec_withdraw_lemma1]  Theorem

      |- ∀M Oi Os.
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM withdraw))]::ins) ORP_RECON
                outs) ⇒
           (M,Oi,Os) satList
           propCommandList
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM withdraw))]

   [ORP_RECON_exec_withdraw_lemma2]  Theorem

      |- ∀NS Out M Oi Os.
           TR (M,Oi,Os)
             (exec
                (inputList
                   [Name PlatoonLeader says
                    prop (SOME (PlatoonLeaderCOM withdraw))]))
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM withdraw))]::ins) ORP_RECON
                outs)
             (CFG authentication stateAuth globalAuth ins
                (NS ORP_RECON
                   (exec
                      (inputList
                         [Name PlatoonLeader says
                          prop (SOME (PlatoonLeaderCOM withdraw))])))
                (Out ORP_RECON
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
                  prop (SOME (PlatoonLeaderCOM withdraw))]::ins) ORP_RECON
                outs) ∧
           (M,Oi,Os) satList
           propCommandList
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM withdraw))]

   [ORP_RECON_exec_withdraw_thm]  Theorem

      |- ∀NS Out M Oi Os.
           TR (M,Oi,Os) (exec [SOME (PlatoonLeaderCOM withdraw)])
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM withdraw))]::ins) ORP_RECON
                outs)
             (CFG authentication stateAuth globalAuth ins
                (NS ORP_RECON (exec [SOME (PlatoonLeaderCOM withdraw)]))
                (Out ORP_RECON (exec [SOME (PlatoonLeaderCOM withdraw)])::
                     outs)) ⇔
           authenticationTest authentication
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM withdraw))] ∧
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM withdraw))]::ins) ORP_RECON
                outs) ∧
           (M,Oi,Os) satList [prop (SOME (PlatoonLeaderCOM withdraw))]

   [SECURE_HALT_exec_secure_lemma1]  Theorem

      |- ∀M Oi Os.
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM secure))]::ins) SECURE_HALT
                outs) ⇒
           (M,Oi,Os) satList
           propCommandList
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM secure))]

   [SECURE_HALT_exec_secure_lemma2]  Theorem

      |- ∀NS Out M Oi Os.
           TR (M,Oi,Os)
             (exec
                (inputList
                   [Name PlatoonLeader says
                    prop (SOME (PlatoonLeaderCOM secure))]))
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM secure))]::ins) SECURE_HALT
                outs)
             (CFG authentication stateAuth globalAuth ins
                (NS SECURE_HALT
                   (exec
                      (inputList
                         [Name PlatoonLeader says
                          prop (SOME (PlatoonLeaderCOM secure))])))
                (Out SECURE_HALT
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
                  prop (SOME (PlatoonLeaderCOM secure))]::ins) SECURE_HALT
                outs) ∧
           (M,Oi,Os) satList
           propCommandList
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM secure))]

   [SECURE_HALT_exec_secure_thm]  Theorem

      |- ∀NS Out M Oi Os.
           TR (M,Oi,Os) (exec [SOME (PlatoonLeaderCOM secure)])
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM secure))]::ins) SECURE_HALT
                outs)
             (CFG authentication stateAuth globalAuth ins
                (NS SECURE_HALT (exec [SOME (PlatoonLeaderCOM secure)]))
                (Out SECURE_HALT (exec [SOME (PlatoonLeaderCOM secure)])::
                     outs)) ⇔
           authenticationTest authentication
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM secure))] ∧
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM secure))]::ins) SECURE_HALT
                outs) ∧
           (M,Oi,Os) satList [prop (SOME (PlatoonLeaderCOM secure))]

   [SECURE_exec_orpRecon_lemma1]  Theorem

      |- ∀M Oi Os.
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM orpRecon))]::ins) SECURE
                outs) ⇒
           (M,Oi,Os) satList
           propCommandList
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM orpRecon))]

   [SECURE_exec_orpRecon_lemma2]  Theorem

      |- ∀NS Out M Oi Os.
           TR (M,Oi,Os)
             (exec
                (inputList
                   [Name PlatoonLeader says
                    prop (SOME (PlatoonLeaderCOM orpRecon))]))
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM orpRecon))]::ins) SECURE
                outs)
             (CFG authentication stateAuth globalAuth ins
                (NS SECURE
                   (exec
                      (inputList
                         [Name PlatoonLeader says
                          prop (SOME (PlatoonLeaderCOM orpRecon))])))
                (Out SECURE
                   (exec
                      (inputList
                         [Name PlatoonLeader says
                          prop (SOME (PlatoonLeaderCOM orpRecon))]))::
                     outs)) ⇔
           authenticationTest authentication
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM orpRecon))] ∧
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM orpRecon))]::ins) SECURE
                outs) ∧
           (M,Oi,Os) satList
           propCommandList
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM orpRecon))]

   [SECURE_exec_orpRecon_thm]  Theorem

      |- ∀NS Out M Oi Os.
           TR (M,Oi,Os) (exec [SOME (PlatoonLeaderCOM orpRecon)])
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM orpRecon))]::ins) SECURE
                outs)
             (CFG authentication stateAuth globalAuth ins
                (NS SECURE (exec [SOME (PlatoonLeaderCOM orpRecon)]))
                (Out SECURE (exec [SOME (PlatoonLeaderCOM orpRecon)])::
                     outs)) ⇔
           authenticationTest authentication
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM orpRecon))] ∧
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM orpRecon))]::ins) SECURE
                outs) ∧
           (M,Oi,Os) satList [prop (SOME (PlatoonLeaderCOM orpRecon))]

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
