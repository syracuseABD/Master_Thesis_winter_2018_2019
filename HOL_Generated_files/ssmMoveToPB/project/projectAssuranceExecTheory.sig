signature projectAssuranceExecTheory =
sig
  type thm = Thm.thm

  (*  Theorems  *)
    val FORM_exec_move_lemma1 : thm
    val FORM_exec_move_lemma2 : thm
    val FORM_exec_move_thm : thm
    val MOVE_TO_PB_exec_form_lemma1 : thm
    val MOVE_TO_PB_exec_form_lemma2 : thm
    val MOVE_TO_PB_exec_form_thm : thm
    val MOVE_exec_secureHalt_lemma1 : thm
    val MOVE_exec_secureHalt_lemma2 : thm
    val MOVE_exec_secureHalt_thm : thm

  val projectAssuranceExec_grammars : type_grammar.grammar * term_grammar.grammar
(*
   [projectSecurity] Parent theory of "projectAssuranceExec"

   [FORM_exec_move_lemma1]  Theorem

      |- ∀M Oi Os.
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM move))]::ins) FORM outs) ⇒
           (M,Oi,Os) satList
           propCommandList
             [Name PlatoonLeader says prop (SOME (PlatoonLeaderCOM move))]

   [FORM_exec_move_lemma2]  Theorem

      |- ∀NS Out M Oi Os.
           TR (M,Oi,Os)
             (exec
                (inputList
                   [Name PlatoonLeader says
                    prop (SOME (PlatoonLeaderCOM move))]))
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM move))]::ins) FORM outs)
             (CFG authentication stateAuth globalAuth ins
                (NS FORM
                   (exec
                      (inputList
                         [Name PlatoonLeader says
                          prop (SOME (PlatoonLeaderCOM move))])))
                (Out FORM
                   (exec
                      (inputList
                         [Name PlatoonLeader says
                          prop (SOME (PlatoonLeaderCOM move))]))::outs)) ⇔
           authenticationTest authentication
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM move))] ∧
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM move))]::ins) FORM outs) ∧
           (M,Oi,Os) satList
           propCommandList
             [Name PlatoonLeader says prop (SOME (PlatoonLeaderCOM move))]

   [FORM_exec_move_thm]  Theorem

      |- ∀NS Out M Oi Os.
           TR (M,Oi,Os) (exec [SOME (PlatoonLeaderCOM move)])
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM move))]::ins) FORM outs)
             (CFG authentication stateAuth globalAuth ins
                (NS FORM (exec [SOME (PlatoonLeaderCOM move)]))
                (Out FORM (exec [SOME (PlatoonLeaderCOM move)])::outs)) ⇔
           authenticationTest authentication
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM move))] ∧
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM move))]::ins) FORM outs) ∧
           (M,Oi,Os) satList [prop (SOME (PlatoonLeaderCOM move))]

   [MOVE_TO_PB_exec_form_lemma1]  Theorem

      |- ∀M Oi Os.
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM form))]::ins) MOVE_TO_PB
                outs) ⇒
           (M,Oi,Os) satList
           propCommandList
             [Name PlatoonLeader says prop (SOME (PlatoonLeaderCOM form))]

   [MOVE_TO_PB_exec_form_lemma2]  Theorem

      |- ∀NS Out M Oi Os.
           TR (M,Oi,Os)
             (exec
                (inputList
                   [Name PlatoonLeader says
                    prop (SOME (PlatoonLeaderCOM form))]))
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM form))]::ins) MOVE_TO_PB
                outs)
             (CFG authentication stateAuth globalAuth ins
                (NS MOVE_TO_PB
                   (exec
                      (inputList
                         [Name PlatoonLeader says
                          prop (SOME (PlatoonLeaderCOM form))])))
                (Out MOVE_TO_PB
                   (exec
                      (inputList
                         [Name PlatoonLeader says
                          prop (SOME (PlatoonLeaderCOM form))]))::outs)) ⇔
           authenticationTest authentication
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM form))] ∧
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM form))]::ins) MOVE_TO_PB
                outs) ∧
           (M,Oi,Os) satList
           propCommandList
             [Name PlatoonLeader says prop (SOME (PlatoonLeaderCOM form))]

   [MOVE_TO_PB_exec_form_thm]  Theorem

      |- ∀NS Out M Oi Os.
           TR (M,Oi,Os) (exec [SOME (PlatoonLeaderCOM form)])
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM form))]::ins) MOVE_TO_PB
                outs)
             (CFG authentication stateAuth globalAuth ins
                (NS MOVE_TO_PB (exec [SOME (PlatoonLeaderCOM form)]))
                (Out MOVE_TO_PB (exec [SOME (PlatoonLeaderCOM form)])::
                     outs)) ⇔
           authenticationTest authentication
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM form))] ∧
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM form))]::ins) MOVE_TO_PB
                outs) ∧
           (M,Oi,Os) satList [prop (SOME (PlatoonLeaderCOM form))]

   [MOVE_exec_secureHalt_lemma1]  Theorem

      |- ∀M Oi Os.
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM secureHalt))]::ins) MOVE
                outs) ⇒
           (M,Oi,Os) satList
           propCommandList
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM secureHalt))]

   [MOVE_exec_secureHalt_lemma2]  Theorem

      |- ∀NS Out M Oi Os.
           TR (M,Oi,Os)
             (exec
                (inputList
                   [Name PlatoonLeader says
                    prop (SOME (PlatoonLeaderCOM secureHalt))]))
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM secureHalt))]::ins) MOVE
                outs)
             (CFG authentication stateAuth globalAuth ins
                (NS MOVE
                   (exec
                      (inputList
                         [Name PlatoonLeader says
                          prop (SOME (PlatoonLeaderCOM secureHalt))])))
                (Out MOVE
                   (exec
                      (inputList
                         [Name PlatoonLeader says
                          prop (SOME (PlatoonLeaderCOM secureHalt))]))::
                     outs)) ⇔
           authenticationTest authentication
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM secureHalt))] ∧
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM secureHalt))]::ins) MOVE
                outs) ∧
           (M,Oi,Os) satList
           propCommandList
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM secureHalt))]

   [MOVE_exec_secureHalt_thm]  Theorem

      |- ∀NS Out M Oi Os.
           TR (M,Oi,Os) (exec [SOME (PlatoonLeaderCOM secureHalt)])
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM secureHalt))]::ins) MOVE
                outs)
             (CFG authentication stateAuth globalAuth ins
                (NS MOVE (exec [SOME (PlatoonLeaderCOM secureHalt)]))
                (Out MOVE (exec [SOME (PlatoonLeaderCOM secureHalt)])::
                     outs)) ⇔
           authenticationTest authentication
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM secureHalt))] ∧
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM secureHalt))]::ins) MOVE
                outs) ∧
           (M,Oi,Os) satList [prop (SOME (PlatoonLeaderCOM secureHalt))]


*)
end
