signature projectAssuranceExecTheory =
sig
  type thm = Thm.thm

  (*  Theorems  *)
    val RT_ALERT_exec_complete_lemma1 : thm
    val RT_ALERT_exec_complete_lemma2 : thm
    val RT_ALERT_exec_complete_thm : thm
    val RT_FORM_exec_rtPosition_lemma1 : thm
    val RT_FORM_exec_rtPosition_lemma2 : thm
    val RT_FORM_exec_rtPosition_thm : thm
    val RT_ORIENT_exec_rtAlert_lemma1 : thm
    val RT_ORIENT_exec_rtAlert_lemma2 : thm
    val RT_ORIENT_exec_rtAlert_thm : thm
    val RT_POSITION_exec_rtOrient_lemma1 : thm
    val RT_POSITION_exec_rtOrient_lemma2 : thm
    val RT_POSITION_exec_rtOrient_thm : thm

  val projectAssuranceExec_grammars : type_grammar.grammar * term_grammar.grammar
(*
   [projectSecurity] Parent theory of "projectAssuranceExec"

   [RT_ALERT_exec_complete_lemma1]  Theorem

      |- ∀M Oi Os.
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name SquadLeader says
                  prop (SOME (SquadLeaderCOM complete))]::ins) RT_ALERT
                outs) ⇒
           (M,Oi,Os) satList
           propCommandList
             [Name SquadLeader says prop (SOME (SquadLeaderCOM complete))]

   [RT_ALERT_exec_complete_lemma2]  Theorem

      |- ∀NS Out M Oi Os.
           TR (M,Oi,Os)
             (exec
                (inputList
                   [Name SquadLeader says
                    prop (SOME (SquadLeaderCOM complete))]))
             (CFG authentication stateAuth globalAuth
                ([Name SquadLeader says
                  prop (SOME (SquadLeaderCOM complete))]::ins) RT_ALERT
                outs)
             (CFG authentication stateAuth globalAuth ins
                (NS RT_ALERT
                   (exec
                      (inputList
                         [Name SquadLeader says
                          prop (SOME (SquadLeaderCOM complete))])))
                (Out RT_ALERT
                   (exec
                      (inputList
                         [Name SquadLeader says
                          prop (SOME (SquadLeaderCOM complete))]))::
                     outs)) ⇔
           authenticationTest authentication
             [Name SquadLeader says
              prop (SOME (SquadLeaderCOM complete))] ∧
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name SquadLeader says
                  prop (SOME (SquadLeaderCOM complete))]::ins) RT_ALERT
                outs) ∧
           (M,Oi,Os) satList
           propCommandList
             [Name SquadLeader says prop (SOME (SquadLeaderCOM complete))]

   [RT_ALERT_exec_complete_thm]  Theorem

      |- ∀NS Out M Oi Os.
           TR (M,Oi,Os) (exec [SOME (SquadLeaderCOM complete)])
             (CFG authentication stateAuth globalAuth
                ([Name SquadLeader says
                  prop (SOME (SquadLeaderCOM complete))]::ins) RT_ALERT
                outs)
             (CFG authentication stateAuth globalAuth ins
                (NS RT_ALERT (exec [SOME (SquadLeaderCOM complete)]))
                (Out RT_ALERT (exec [SOME (SquadLeaderCOM complete)])::
                     outs)) ⇔
           authenticationTest authentication
             [Name SquadLeader says
              prop (SOME (SquadLeaderCOM complete))] ∧
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name SquadLeader says
                  prop (SOME (SquadLeaderCOM complete))]::ins) RT_ALERT
                outs) ∧
           (M,Oi,Os) satList [prop (SOME (SquadLeaderCOM complete))]

   [RT_FORM_exec_rtPosition_lemma1]  Theorem

      |- ∀M Oi Os.
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name SquadLeader says
                  prop (SOME (SquadLeaderCOM rtPosition))]::ins) RT_FORM
                outs) ⇒
           (M,Oi,Os) satList
           propCommandList
             [Name SquadLeader says
              prop (SOME (SquadLeaderCOM rtPosition))]

   [RT_FORM_exec_rtPosition_lemma2]  Theorem

      |- ∀NS Out M Oi Os.
           TR (M,Oi,Os)
             (exec
                (inputList
                   [Name SquadLeader says
                    prop (SOME (SquadLeaderCOM rtPosition))]))
             (CFG authentication stateAuth globalAuth
                ([Name SquadLeader says
                  prop (SOME (SquadLeaderCOM rtPosition))]::ins) RT_FORM
                outs)
             (CFG authentication stateAuth globalAuth ins
                (NS RT_FORM
                   (exec
                      (inputList
                         [Name SquadLeader says
                          prop (SOME (SquadLeaderCOM rtPosition))])))
                (Out RT_FORM
                   (exec
                      (inputList
                         [Name SquadLeader says
                          prop (SOME (SquadLeaderCOM rtPosition))]))::
                     outs)) ⇔
           authenticationTest authentication
             [Name SquadLeader says
              prop (SOME (SquadLeaderCOM rtPosition))] ∧
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name SquadLeader says
                  prop (SOME (SquadLeaderCOM rtPosition))]::ins) RT_FORM
                outs) ∧
           (M,Oi,Os) satList
           propCommandList
             [Name SquadLeader says
              prop (SOME (SquadLeaderCOM rtPosition))]

   [RT_FORM_exec_rtPosition_thm]  Theorem

      |- ∀NS Out M Oi Os.
           TR (M,Oi,Os) (exec [SOME (SquadLeaderCOM rtPosition)])
             (CFG authentication stateAuth globalAuth
                ([Name SquadLeader says
                  prop (SOME (SquadLeaderCOM rtPosition))]::ins) RT_FORM
                outs)
             (CFG authentication stateAuth globalAuth ins
                (NS RT_FORM (exec [SOME (SquadLeaderCOM rtPosition)]))
                (Out RT_FORM (exec [SOME (SquadLeaderCOM rtPosition)])::
                     outs)) ⇔
           authenticationTest authentication
             [Name SquadLeader says
              prop (SOME (SquadLeaderCOM rtPosition))] ∧
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name SquadLeader says
                  prop (SOME (SquadLeaderCOM rtPosition))]::ins) RT_FORM
                outs) ∧
           (M,Oi,Os) satList [prop (SOME (SquadLeaderCOM rtPosition))]

   [RT_ORIENT_exec_rtAlert_lemma1]  Theorem

      |- ∀M Oi Os.
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name SquadLeader says
                  prop (SOME (SquadLeaderCOM rtAlert))]::ins) RT_ORIENT
                outs) ⇒
           (M,Oi,Os) satList
           propCommandList
             [Name SquadLeader says prop (SOME (SquadLeaderCOM rtAlert))]

   [RT_ORIENT_exec_rtAlert_lemma2]  Theorem

      |- ∀NS Out M Oi Os.
           TR (M,Oi,Os)
             (exec
                (inputList
                   [Name SquadLeader says
                    prop (SOME (SquadLeaderCOM rtAlert))]))
             (CFG authentication stateAuth globalAuth
                ([Name SquadLeader says
                  prop (SOME (SquadLeaderCOM rtAlert))]::ins) RT_ORIENT
                outs)
             (CFG authentication stateAuth globalAuth ins
                (NS RT_ORIENT
                   (exec
                      (inputList
                         [Name SquadLeader says
                          prop (SOME (SquadLeaderCOM rtAlert))])))
                (Out RT_ORIENT
                   (exec
                      (inputList
                         [Name SquadLeader says
                          prop (SOME (SquadLeaderCOM rtAlert))]))::outs)) ⇔
           authenticationTest authentication
             [Name SquadLeader says prop (SOME (SquadLeaderCOM rtAlert))] ∧
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name SquadLeader says
                  prop (SOME (SquadLeaderCOM rtAlert))]::ins) RT_ORIENT
                outs) ∧
           (M,Oi,Os) satList
           propCommandList
             [Name SquadLeader says prop (SOME (SquadLeaderCOM rtAlert))]

   [RT_ORIENT_exec_rtAlert_thm]  Theorem

      |- ∀NS Out M Oi Os.
           TR (M,Oi,Os) (exec [SOME (SquadLeaderCOM rtAlert)])
             (CFG authentication stateAuth globalAuth
                ([Name SquadLeader says
                  prop (SOME (SquadLeaderCOM rtAlert))]::ins) RT_ORIENT
                outs)
             (CFG authentication stateAuth globalAuth ins
                (NS RT_ORIENT (exec [SOME (SquadLeaderCOM rtAlert)]))
                (Out RT_ORIENT (exec [SOME (SquadLeaderCOM rtAlert)])::
                     outs)) ⇔
           authenticationTest authentication
             [Name SquadLeader says prop (SOME (SquadLeaderCOM rtAlert))] ∧
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name SquadLeader says
                  prop (SOME (SquadLeaderCOM rtAlert))]::ins) RT_ORIENT
                outs) ∧
           (M,Oi,Os) satList [prop (SOME (SquadLeaderCOM rtAlert))]

   [RT_POSITION_exec_rtOrient_lemma1]  Theorem

      |- ∀M Oi Os.
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name SquadLeader says
                  prop (SOME (SquadLeaderCOM rtOrient))]::ins) RT_POSITION
                outs) ⇒
           (M,Oi,Os) satList
           propCommandList
             [Name SquadLeader says prop (SOME (SquadLeaderCOM rtOrient))]

   [RT_POSITION_exec_rtOrient_lemma2]  Theorem

      |- ∀NS Out M Oi Os.
           TR (M,Oi,Os)
             (exec
                (inputList
                   [Name SquadLeader says
                    prop (SOME (SquadLeaderCOM rtOrient))]))
             (CFG authentication stateAuth globalAuth
                ([Name SquadLeader says
                  prop (SOME (SquadLeaderCOM rtOrient))]::ins) RT_POSITION
                outs)
             (CFG authentication stateAuth globalAuth ins
                (NS RT_POSITION
                   (exec
                      (inputList
                         [Name SquadLeader says
                          prop (SOME (SquadLeaderCOM rtOrient))])))
                (Out RT_POSITION
                   (exec
                      (inputList
                         [Name SquadLeader says
                          prop (SOME (SquadLeaderCOM rtOrient))]))::
                     outs)) ⇔
           authenticationTest authentication
             [Name SquadLeader says
              prop (SOME (SquadLeaderCOM rtOrient))] ∧
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name SquadLeader says
                  prop (SOME (SquadLeaderCOM rtOrient))]::ins) RT_POSITION
                outs) ∧
           (M,Oi,Os) satList
           propCommandList
             [Name SquadLeader says prop (SOME (SquadLeaderCOM rtOrient))]

   [RT_POSITION_exec_rtOrient_thm]  Theorem

      |- ∀NS Out M Oi Os.
           TR (M,Oi,Os) (exec [SOME (SquadLeaderCOM rtOrient)])
             (CFG authentication stateAuth globalAuth
                ([Name SquadLeader says
                  prop (SOME (SquadLeaderCOM rtOrient))]::ins) RT_POSITION
                outs)
             (CFG authentication stateAuth globalAuth ins
                (NS RT_POSITION (exec [SOME (SquadLeaderCOM rtOrient)]))
                (Out RT_POSITION (exec [SOME (SquadLeaderCOM rtOrient)])::
                     outs)) ⇔
           authenticationTest authentication
             [Name SquadLeader says
              prop (SOME (SquadLeaderCOM rtOrient))] ∧
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name SquadLeader says
                  prop (SOME (SquadLeaderCOM rtOrient))]::ins) RT_POSITION
                outs) ∧
           (M,Oi,Os) satList [prop (SOME (SquadLeaderCOM rtOrient))]


*)
end
