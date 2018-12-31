signature projectAssuranceExecTheory =
sig
  type thm = Thm.thm

  (*  Theorems  *)
    val CONDUCT_ORP_exec_formST_lemma1 : thm
    val CONDUCT_ORP_exec_formST_lemma2 : thm
    val CONDUCT_ORP_exec_formST_thm : thm
    val CONTINGENCY_PLAN_exec_moveToORP_lemma1 : thm
    val CONTINGENCY_PLAN_exec_moveToORP_lemma2 : thm
    val CONTINGENCY_PLAN_exec_moveToORP_thm : thm
    val FORM_ST_exec_returnToUnit_lemma1 : thm
    val FORM_ST_exec_returnToUnit_lemma2 : thm
    val FORM_ST_exec_returnToUnit_thm : thm
    val MOVE_TO_ORP_exec_conductORP_lemma1 : thm
    val MOVE_TO_ORP_exec_conductORP_lemma2 : thm
    val MOVE_TO_ORP_exec_conductORP_thm : thm
    val ORP_RECON_exec_contingencyPlan_lemma1 : thm
    val ORP_RECON_exec_contingencyPlan_lemma2 : thm
    val ORP_RECON_exec_contingencyPlan_thm : thm
    val RETURN_TO_UNIT_exec_complete_lemma1 : thm
    val RETURN_TO_UNIT_exec_complete_lemma2 : thm
    val RETURN_TO_UNIT_exec_complete_thm : thm

  val projectAssuranceExec_grammars : type_grammar.grammar * term_grammar.grammar
(*
   [projectSecurity] Parent theory of "projectAssuranceExec"

   [CONDUCT_ORP_exec_formST_lemma1]  Theorem

      |- ∀M Oi Os.
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM formST))]::ins) CONDUCT_ORP
                outs) ⇒
           (M,Oi,Os) satList
           propCommandList
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM formST))]

   [CONDUCT_ORP_exec_formST_lemma2]  Theorem

      |- ∀NS Out M Oi Os.
           TR (M,Oi,Os)
             (exec
                (inputList
                   [Name PlatoonLeader says
                    prop (SOME (PlatoonLeaderCOM formST))]))
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM formST))]::ins) CONDUCT_ORP
                outs)
             (CFG authentication stateAuth globalAuth ins
                (NS CONDUCT_ORP
                   (exec
                      (inputList
                         [Name PlatoonLeader says
                          prop (SOME (PlatoonLeaderCOM formST))])))
                (Out CONDUCT_ORP
                   (exec
                      (inputList
                         [Name PlatoonLeader says
                          prop (SOME (PlatoonLeaderCOM formST))]))::
                     outs)) ⇔
           authenticationTest authentication
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM formST))] ∧
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM formST))]::ins) CONDUCT_ORP
                outs) ∧
           (M,Oi,Os) satList
           propCommandList
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM formST))]

   [CONDUCT_ORP_exec_formST_thm]  Theorem

      |- ∀NS Out M Oi Os.
           TR (M,Oi,Os) (exec [SOME (PlatoonLeaderCOM formST)])
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM formST))]::ins) CONDUCT_ORP
                outs)
             (CFG authentication stateAuth globalAuth ins
                (NS CONDUCT_ORP (exec [SOME (PlatoonLeaderCOM formST)]))
                (Out CONDUCT_ORP (exec [SOME (PlatoonLeaderCOM formST)])::
                     outs)) ⇔
           authenticationTest authentication
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM formST))] ∧
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM formST))]::ins) CONDUCT_ORP
                outs) ∧
           (M,Oi,Os) satList [prop (SOME (PlatoonLeaderCOM formST))]

   [CONTINGENCY_PLAN_exec_moveToORP_lemma1]  Theorem

      |- ∀M Oi Os.
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM moveToORP))]::ins)
                CONTINGENCY_PLAN outs) ⇒
           (M,Oi,Os) satList
           propCommandList
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM moveToORP))]

   [CONTINGENCY_PLAN_exec_moveToORP_lemma2]  Theorem

      |- ∀NS Out M Oi Os.
           TR (M,Oi,Os)
             (exec
                (inputList
                   [Name PlatoonLeader says
                    prop (SOME (PlatoonLeaderCOM moveToORP))]))
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM moveToORP))]::ins)
                CONTINGENCY_PLAN outs)
             (CFG authentication stateAuth globalAuth ins
                (NS CONTINGENCY_PLAN
                   (exec
                      (inputList
                         [Name PlatoonLeader says
                          prop (SOME (PlatoonLeaderCOM moveToORP))])))
                (Out CONTINGENCY_PLAN
                   (exec
                      (inputList
                         [Name PlatoonLeader says
                          prop (SOME (PlatoonLeaderCOM moveToORP))]))::
                     outs)) ⇔
           authenticationTest authentication
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM moveToORP))] ∧
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM moveToORP))]::ins)
                CONTINGENCY_PLAN outs) ∧
           (M,Oi,Os) satList
           propCommandList
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM moveToORP))]

   [CONTINGENCY_PLAN_exec_moveToORP_thm]  Theorem

      |- ∀NS Out M Oi Os.
           TR (M,Oi,Os) (exec [SOME (PlatoonLeaderCOM moveToORP)])
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM moveToORP))]::ins)
                CONTINGENCY_PLAN outs)
             (CFG authentication stateAuth globalAuth ins
                (NS CONTINGENCY_PLAN
                   (exec [SOME (PlatoonLeaderCOM moveToORP)]))
                (Out CONTINGENCY_PLAN
                   (exec [SOME (PlatoonLeaderCOM moveToORP)])::outs)) ⇔
           authenticationTest authentication
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM moveToORP))] ∧
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM moveToORP))]::ins)
                CONTINGENCY_PLAN outs) ∧
           (M,Oi,Os) satList [prop (SOME (PlatoonLeaderCOM moveToORP))]

   [FORM_ST_exec_returnToUnit_lemma1]  Theorem

      |- ∀M Oi Os.
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM returnToUnit))]::ins)
                FORM_ST outs) ⇒
           (M,Oi,Os) satList
           propCommandList
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM returnToUnit))]

   [FORM_ST_exec_returnToUnit_lemma2]  Theorem

      |- ∀NS Out M Oi Os.
           TR (M,Oi,Os)
             (exec
                (inputList
                   [Name PlatoonLeader says
                    prop (SOME (PlatoonLeaderCOM returnToUnit))]))
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM returnToUnit))]::ins)
                FORM_ST outs)
             (CFG authentication stateAuth globalAuth ins
                (NS FORM_ST
                   (exec
                      (inputList
                         [Name PlatoonLeader says
                          prop (SOME (PlatoonLeaderCOM returnToUnit))])))
                (Out FORM_ST
                   (exec
                      (inputList
                         [Name PlatoonLeader says
                          prop (SOME (PlatoonLeaderCOM returnToUnit))]))::
                     outs)) ⇔
           authenticationTest authentication
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM returnToUnit))] ∧
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM returnToUnit))]::ins)
                FORM_ST outs) ∧
           (M,Oi,Os) satList
           propCommandList
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM returnToUnit))]

   [FORM_ST_exec_returnToUnit_thm]  Theorem

      |- ∀NS Out M Oi Os.
           TR (M,Oi,Os) (exec [SOME (PlatoonLeaderCOM returnToUnit)])
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM returnToUnit))]::ins)
                FORM_ST outs)
             (CFG authentication stateAuth globalAuth ins
                (NS FORM_ST (exec [SOME (PlatoonLeaderCOM returnToUnit)]))
                (Out FORM_ST
                   (exec [SOME (PlatoonLeaderCOM returnToUnit)])::outs)) ⇔
           authenticationTest authentication
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM returnToUnit))] ∧
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM returnToUnit))]::ins)
                FORM_ST outs) ∧
           (M,Oi,Os) satList [prop (SOME (PlatoonLeaderCOM returnToUnit))]

   [MOVE_TO_ORP_exec_conductORP_lemma1]  Theorem

      |- ∀M Oi Os.
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM conductORP))]::ins)
                MOVE_TO_ORP outs) ⇒
           (M,Oi,Os) satList
           propCommandList
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM conductORP))]

   [MOVE_TO_ORP_exec_conductORP_lemma2]  Theorem

      |- ∀NS Out M Oi Os.
           TR (M,Oi,Os)
             (exec
                (inputList
                   [Name PlatoonLeader says
                    prop (SOME (PlatoonLeaderCOM conductORP))]))
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM conductORP))]::ins)
                MOVE_TO_ORP outs)
             (CFG authentication stateAuth globalAuth ins
                (NS MOVE_TO_ORP
                   (exec
                      (inputList
                         [Name PlatoonLeader says
                          prop (SOME (PlatoonLeaderCOM conductORP))])))
                (Out MOVE_TO_ORP
                   (exec
                      (inputList
                         [Name PlatoonLeader says
                          prop (SOME (PlatoonLeaderCOM conductORP))]))::
                     outs)) ⇔
           authenticationTest authentication
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM conductORP))] ∧
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM conductORP))]::ins)
                MOVE_TO_ORP outs) ∧
           (M,Oi,Os) satList
           propCommandList
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM conductORP))]

   [MOVE_TO_ORP_exec_conductORP_thm]  Theorem

      |- ∀NS Out M Oi Os.
           TR (M,Oi,Os) (exec [SOME (PlatoonLeaderCOM conductORP)])
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM conductORP))]::ins)
                MOVE_TO_ORP outs)
             (CFG authentication stateAuth globalAuth ins
                (NS MOVE_TO_ORP
                   (exec [SOME (PlatoonLeaderCOM conductORP)]))
                (Out MOVE_TO_ORP
                   (exec [SOME (PlatoonLeaderCOM conductORP)])::outs)) ⇔
           authenticationTest authentication
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM conductORP))] ∧
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM conductORP))]::ins)
                MOVE_TO_ORP outs) ∧
           (M,Oi,Os) satList [prop (SOME (PlatoonLeaderCOM conductORP))]

   [ORP_RECON_exec_contingencyPlan_lemma1]  Theorem

      |- ∀M Oi Os.
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM contingencyPlan))]::ins)
                ORP_RECON outs) ⇒
           (M,Oi,Os) satList
           propCommandList
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM contingencyPlan))]

   [ORP_RECON_exec_contingencyPlan_lemma2]  Theorem

      |- ∀NS Out M Oi Os.
           TR (M,Oi,Os)
             (exec
                (inputList
                   [Name PlatoonLeader says
                    prop (SOME (PlatoonLeaderCOM contingencyPlan))]))
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM contingencyPlan))]::ins)
                ORP_RECON outs)
             (CFG authentication stateAuth globalAuth ins
                (NS ORP_RECON
                   (exec
                      (inputList
                         [Name PlatoonLeader says
                          prop
                            (SOME (PlatoonLeaderCOM contingencyPlan))])))
                (Out ORP_RECON
                   (exec
                      (inputList
                         [Name PlatoonLeader says
                          prop
                            (SOME (PlatoonLeaderCOM contingencyPlan))]))::
                     outs)) ⇔
           authenticationTest authentication
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM contingencyPlan))] ∧
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM contingencyPlan))]::ins)
                ORP_RECON outs) ∧
           (M,Oi,Os) satList
           propCommandList
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM contingencyPlan))]

   [ORP_RECON_exec_contingencyPlan_thm]  Theorem

      |- ∀NS Out M Oi Os.
           TR (M,Oi,Os) (exec [SOME (PlatoonLeaderCOM contingencyPlan)])
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM contingencyPlan))]::ins)
                ORP_RECON outs)
             (CFG authentication stateAuth globalAuth ins
                (NS ORP_RECON
                   (exec [SOME (PlatoonLeaderCOM contingencyPlan)]))
                (Out ORP_RECON
                   (exec [SOME (PlatoonLeaderCOM contingencyPlan)])::
                     outs)) ⇔
           authenticationTest authentication
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM contingencyPlan))] ∧
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM contingencyPlan))]::ins)
                ORP_RECON outs) ∧
           (M,Oi,Os) satList
           [prop (SOME (PlatoonLeaderCOM contingencyPlan))]

   [RETURN_TO_UNIT_exec_complete_lemma1]  Theorem

      |- ∀M Oi Os.
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM complete))]::ins)
                RETURN_TO_UNIT outs) ⇒
           (M,Oi,Os) satList
           propCommandList
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM complete))]

   [RETURN_TO_UNIT_exec_complete_lemma2]  Theorem

      |- ∀NS Out M Oi Os.
           TR (M,Oi,Os)
             (exec
                (inputList
                   [Name PlatoonLeader says
                    prop (SOME (PlatoonLeaderCOM complete))]))
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM complete))]::ins)
                RETURN_TO_UNIT outs)
             (CFG authentication stateAuth globalAuth ins
                (NS RETURN_TO_UNIT
                   (exec
                      (inputList
                         [Name PlatoonLeader says
                          prop (SOME (PlatoonLeaderCOM complete))])))
                (Out RETURN_TO_UNIT
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
                  prop (SOME (PlatoonLeaderCOM complete))]::ins)
                RETURN_TO_UNIT outs) ∧
           (M,Oi,Os) satList
           propCommandList
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM complete))]

   [RETURN_TO_UNIT_exec_complete_thm]  Theorem

      |- ∀NS Out M Oi Os.
           TR (M,Oi,Os) (exec [SOME (PlatoonLeaderCOM complete)])
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM complete))]::ins)
                RETURN_TO_UNIT outs)
             (CFG authentication stateAuth globalAuth ins
                (NS RETURN_TO_UNIT
                   (exec [SOME (PlatoonLeaderCOM complete)]))
                (Out RETURN_TO_UNIT
                   (exec [SOME (PlatoonLeaderCOM complete)])::outs)) ⇔
           authenticationTest authentication
             [Name PlatoonLeader says
              prop (SOME (PlatoonLeaderCOM complete))] ∧
           CFGInterpret (M,Oi,Os)
             (CFG authentication stateAuth globalAuth
                ([Name PlatoonLeader says
                  prop (SOME (PlatoonLeaderCOM complete))]::ins)
                RETURN_TO_UNIT outs) ∧
           (M,Oi,Os) satList [prop (SOME (PlatoonLeaderCOM complete))]


*)
end
