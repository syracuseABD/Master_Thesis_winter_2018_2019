signature projectAssuranceExecTheory =
sig
  type thm = Thm.thm

  (*  Theorems  *)
    val FORM_RT_exec_rtMove_lemma1 : thm
    val FORM_RT_exec_rtMove_lemma2 : thm
    val FORM_RT_exec_rtMove_thm : thm
    val MOVE_TO_ORP_exec_formRT_lemma1 : thm
    val MOVE_TO_ORP_exec_formRT_lemma2 : thm
    val MOVE_TO_ORP_exec_formRT_thm : thm
    val RT_HALT_exec_complete_lemma1 : thm
    val RT_HALT_exec_complete_lemma2 : thm
    val RT_HALT_exec_complete_thm : thm
    val RT_MOVE_exec_rtHalt_lemma1 : thm
    val RT_MOVE_exec_rtHalt_lemma2 : thm
    val RT_MOVE_exec_rtHalt_thm : thm

  val projectAssuranceExec_grammars : type_grammar.grammar * term_grammar.grammar
(*
   [projectSecurity] Parent theory of "projectAssuranceExec"

   [FORM_RT_exec_rtMove_lemma1]  Theorem

      |- ∀M Oi Os.
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM rtMove))]::ins) FORM_RT
                outs) ⇒
           (M,Oi,Os) satList
           propCommandList
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM rtMove))]

   [FORM_RT_exec_rtMove_lemma2]  Theorem

      |- ∀NS Out M Oi Os.
           TR (M,Oi,Os)
             (exec
                (inputList
                   [Name PlatoonLeader says
                    prop (SOME (PlatoonLeaderCOM rtMove))]))
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM rtMove))]::ins) FORM_RT
                outs)
             (CFG authentication stateAuth globalAuth ins
                (NS FORM_RT
                   (exec
                      (inputList
                         [Name PlatoonLeader says
                          prop (SOME (PlatoonLeaderCOM rtMove))])))
                (Out FORM_RT
                   (exec
                      (inputList
                         [Name PlatoonLeader says
                          prop (SOME (PlatoonLeaderCOM rtMove))]))::
                     outs)) ⇔
           authenticationTest authentication
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM rtMove))] ∧
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM rtMove))]::ins) FORM_RT
                outs) ∧
           (M,Oi,Os) satList
           propCommandList
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM rtMove))]

   [FORM_RT_exec_rtMove_thm]  Theorem

      |- ∀NS Out M Oi Os.
           TR (M,Oi,Os) (exec [SOME (PlatoonLeaderCOM rtMove)])
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM rtMove))]::ins) FORM_RT
                outs)
             (CFG authentication stateAuth globalAuth ins
                (NS FORM_RT (exec [SOME (PlatoonLeaderCOM rtMove)]))
                (Out FORM_RT (exec [SOME (PlatoonLeaderCOM rtMove)])::
                     outs)) ⇔
           authenticationTest authentication
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM rtMove))] ∧
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM rtMove))]::ins) FORM_RT
                outs) ∧
           (M,Oi,Os) satList [prop (SOME (PlatoonLeaderCOM rtMove))]

   [MOVE_TO_ORP_exec_formRT_lemma1]  Theorem

      |- ∀M Oi Os.
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM formRT))]::ins) MOVE_TO_ORP
                outs) ⇒
           (M,Oi,Os) satList
           propCommandList
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM formRT))]

   [MOVE_TO_ORP_exec_formRT_lemma2]  Theorem

      |- ∀NS Out M Oi Os.
           TR (M,Oi,Os)
             (exec
                (inputList
                   [Name PlatoonLeader says
                    prop (SOME (PlatoonLeaderCOM formRT))]))
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM formRT))]::ins) MOVE_TO_ORP
                outs)
             (CFG authentication stateAuth globalAuth ins
                (NS MOVE_TO_ORP
                   (exec
                      (inputList
                         [Name PlatoonLeader says
                          prop (SOME (PlatoonLeaderCOM formRT))])))
                (Out MOVE_TO_ORP
                   (exec
                      (inputList
                         [Name PlatoonLeader says
                          prop (SOME (PlatoonLeaderCOM formRT))]))::
                     outs)) ⇔
           authenticationTest authentication
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM formRT))] ∧
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM formRT))]::ins) MOVE_TO_ORP
                outs) ∧
           (M,Oi,Os) satList
           propCommandList
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM formRT))]

   [MOVE_TO_ORP_exec_formRT_thm]  Theorem

      |- ∀NS Out M Oi Os.
           TR (M,Oi,Os) (exec [SOME (PlatoonLeaderCOM formRT)])
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM formRT))]::ins) MOVE_TO_ORP
                outs)
             (CFG authentication stateAuth globalAuth ins
                (NS MOVE_TO_ORP (exec [SOME (PlatoonLeaderCOM formRT)]))
                (Out MOVE_TO_ORP (exec [SOME (PlatoonLeaderCOM formRT)])::
                     outs)) ⇔
           authenticationTest authentication
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM formRT))] ∧
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM formRT))]::ins) MOVE_TO_ORP
                outs) ∧
           (M,Oi,Os) satList [prop (SOME (PlatoonLeaderCOM formRT))]

   [RT_HALT_exec_complete_lemma1]  Theorem

      |- ∀M Oi Os.
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM complete))]::ins) RT_HALT
                outs) ⇒
           (M,Oi,Os) satList
           propCommandList
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM complete))]

   [RT_HALT_exec_complete_lemma2]  Theorem

      |- ∀NS Out M Oi Os.
           TR (M,Oi,Os)
             (exec
                (inputList
                   [Name PlatoonLeader says
                    prop (SOME (PlatoonLeaderCOM complete))]))
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM complete))]::ins) RT_HALT
                outs)
             (CFG authentication stateAuth globalAuth ins
                (NS RT_HALT
                   (exec
                      (inputList
                         [Name PlatoonLeader says
                          prop (SOME (PlatoonLeaderCOM complete))])))
                (Out RT_HALT
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
                  prop (SOME (PlatoonLeaderCOM complete))]::ins) RT_HALT
                outs) ∧
           (M,Oi,Os) satList
           propCommandList
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM complete))]

   [RT_HALT_exec_complete_thm]  Theorem

      |- ∀NS Out M Oi Os.
           TR (M,Oi,Os) (exec [SOME (PlatoonLeaderCOM complete)])
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM complete))]::ins) RT_HALT
                outs)
             (CFG authentication stateAuth globalAuth ins
                (NS RT_HALT (exec [SOME (PlatoonLeaderCOM complete)]))
                (Out RT_HALT (exec [SOME (PlatoonLeaderCOM complete)])::
                     outs)) ⇔
           authenticationTest authentication
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM complete))] ∧
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM complete))]::ins) RT_HALT
                outs) ∧
           (M,Oi,Os) satList [prop (SOME (PlatoonLeaderCOM complete))]

   [RT_MOVE_exec_rtHalt_lemma1]  Theorem

      |- ∀M Oi Os.
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM rtHalt))]::ins) RT_MOVE
                outs) ⇒
           (M,Oi,Os) satList
           propCommandList
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM rtHalt))]

   [RT_MOVE_exec_rtHalt_lemma2]  Theorem

      |- ∀NS Out M Oi Os.
           TR (M,Oi,Os)
             (exec
                (inputList
                   [Name PlatoonLeader says
                    prop (SOME (PlatoonLeaderCOM rtHalt))]))
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM rtHalt))]::ins) RT_MOVE
                outs)
             (CFG authentication stateAuth globalAuth ins
                (NS RT_MOVE
                   (exec
                      (inputList
                         [Name PlatoonLeader says
                          prop (SOME (PlatoonLeaderCOM rtHalt))])))
                (Out RT_MOVE
                   (exec
                      (inputList
                         [Name PlatoonLeader says
                          prop (SOME (PlatoonLeaderCOM rtHalt))]))::
                     outs)) ⇔
           authenticationTest authentication
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM rtHalt))] ∧
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM rtHalt))]::ins) RT_MOVE
                outs) ∧
           (M,Oi,Os) satList
           propCommandList
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM rtHalt))]

   [RT_MOVE_exec_rtHalt_thm]  Theorem

      |- ∀NS Out M Oi Os.
           TR (M,Oi,Os) (exec [SOME (PlatoonLeaderCOM rtHalt)])
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM rtHalt))]::ins) RT_MOVE
                outs)
             (CFG authentication stateAuth globalAuth ins
                (NS RT_MOVE (exec [SOME (PlatoonLeaderCOM rtHalt)]))
                (Out RT_MOVE (exec [SOME (PlatoonLeaderCOM rtHalt)])::
                     outs)) ⇔
           authenticationTest authentication
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM rtHalt))] ∧
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM rtHalt))]::ins) RT_MOVE
                outs) ∧
           (M,Oi,Os) satList [prop (SOME (PlatoonLeaderCOM rtHalt))]


*)
end
