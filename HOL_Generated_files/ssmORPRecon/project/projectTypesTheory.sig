signature projectTypesTheory =
sig
  type thm = Thm.thm

  (*  Definitions  *)
    val commands_TY_DEF : thm
    val commands_case_def : thm
    val commands_size_def : thm
    val omniCom_BIJ : thm
    val omniCom_CASE : thm
    val omniCom_TY_DEF : thm
    val omniCom_size_def : thm
    val output_BIJ : thm
    val output_CASE : thm
    val output_TY_DEF : thm
    val output_size_def : thm
    val platoonLeaderCom_BIJ : thm
    val platoonLeaderCom_CASE : thm
    val platoonLeaderCom_TY_DEF : thm
    val platoonLeaderCom_size_def : thm
    val principal_BIJ : thm
    val principal_CASE : thm
    val principal_TY_DEF : thm
    val principal_size_def : thm
    val state_BIJ : thm
    val state_CASE : thm
    val state_TY_DEF : thm
    val state_size_def : thm

  (*  Theorems  *)
    val commands_11 : thm
    val commands_Axiom : thm
    val commands_case_cong : thm
    val commands_distinct : thm
    val commands_distinct_clauses : thm
    val commands_induction : thm
    val commands_nchotomy : thm
    val commands_one_one : thm
    val datatype_commands : thm
    val datatype_omniCom : thm
    val datatype_output : thm
    val datatype_platoonLeaderCom : thm
    val datatype_principal : thm
    val datatype_state : thm
    val num2omniCom_11 : thm
    val num2omniCom_ONTO : thm
    val num2omniCom_omniCom2num : thm
    val num2omniCom_thm : thm
    val num2output_11 : thm
    val num2output_ONTO : thm
    val num2output_output2num : thm
    val num2output_thm : thm
    val num2platoonLeaderCom_11 : thm
    val num2platoonLeaderCom_ONTO : thm
    val num2platoonLeaderCom_platoonLeaderCom2num : thm
    val num2platoonLeaderCom_thm : thm
    val num2principal_11 : thm
    val num2principal_ONTO : thm
    val num2principal_principal2num : thm
    val num2principal_thm : thm
    val num2state_11 : thm
    val num2state_ONTO : thm
    val num2state_state2num : thm
    val num2state_thm : thm
    val omniCom2num_11 : thm
    val omniCom2num_ONTO : thm
    val omniCom2num_num2omniCom : thm
    val omniCom2num_thm : thm
    val omniCom_Axiom : thm
    val omniCom_EQ_omniCom : thm
    val omniCom_case_cong : thm
    val omniCom_case_def : thm
    val omniCom_distinct : thm
    val omniCom_distinct_clauses : thm
    val omniCom_induction : thm
    val omniCom_nchotomy : thm
    val output2num_11 : thm
    val output2num_ONTO : thm
    val output2num_num2output : thm
    val output2num_thm : thm
    val output_Axiom : thm
    val output_EQ_output : thm
    val output_case_cong : thm
    val output_case_def : thm
    val output_distinct : thm
    val output_distinct_clauses : thm
    val output_induction : thm
    val output_nchotomy : thm
    val platoonLeaderCom2num_11 : thm
    val platoonLeaderCom2num_ONTO : thm
    val platoonLeaderCom2num_num2platoonLeaderCom : thm
    val platoonLeaderCom2num_thm : thm
    val platoonLeaderCom_Axiom : thm
    val platoonLeaderCom_EQ_platoonLeaderCom : thm
    val platoonLeaderCom_case_cong : thm
    val platoonLeaderCom_case_def : thm
    val platoonLeaderCom_distinct : thm
    val platoonLeaderCom_distinct_clauses : thm
    val platoonLeaderCom_induction : thm
    val platoonLeaderCom_nchotomy : thm
    val principal2num_11 : thm
    val principal2num_ONTO : thm
    val principal2num_num2principal : thm
    val principal2num_thm : thm
    val principal_Axiom : thm
    val principal_EQ_principal : thm
    val principal_case_cong : thm
    val principal_case_def : thm
    val principal_distinct : thm
    val principal_distinct_clauses : thm
    val principal_induction : thm
    val principal_nchotomy : thm
    val state2num_11 : thm
    val state2num_ONTO : thm
    val state2num_num2state : thm
    val state2num_thm : thm
    val state_Axiom : thm
    val state_EQ_state : thm
    val state_case_cong : thm
    val state_case_def : thm
    val state_distinct : thm
    val state_distinct_clauses : thm
    val state_induction : thm
    val state_nchotomy : thm

  val projectTypes_grammars : type_grammar.grammar * term_grammar.grammar
(*
   [indexedLists] Parent theory of "projectTypes"

   [patternMatches] Parent theory of "projectTypes"

   [commands_TY_DEF]  Definition

      |- ∃rep.
           TYPE_DEFINITION
             (λa0.
                ∀'commands' .
                  (∀a0.
                     (∃a.
                        a0 =
                        (λa.
                           ind_type$CONSTR 0 (a,ARB) (λn. ind_type$BOTTOM))
                          a) ∨
                     (∃a.
                        a0 =
                        (λa.
                           ind_type$CONSTR (SUC 0) (ARB,a)
                             (λn. ind_type$BOTTOM)) a) ⇒
                     'commands' a0) ⇒
                  'commands' a0) rep

   [commands_case_def]  Definition

      |- (∀a f f1. commands_CASE (PlatoonLeaderCOM a) f f1 = f a) ∧
         ∀a f f1. commands_CASE (OmniCOM a) f f1 = f1 a

   [commands_size_def]  Definition

      |- (∀a.
            commands_size (PlatoonLeaderCOM a) =
            1 + platoonLeaderCom_size a) ∧
         ∀a. commands_size (OmniCOM a) = 1 + omniCom_size a

   [omniCom_BIJ]  Definition

      |- (∀a. num2omniCom (omniCom2num a) = a) ∧
         ∀r. (λn. n < 2) r ⇔ (omniCom2num (num2omniCom r) = r)

   [omniCom_CASE]  Definition

      |- ∀x v0 v1.
           (case x of none => v0 | omniNA => v1) =
           (λm. if m = 0 then v0 else v1) (omniCom2num x)

   [omniCom_TY_DEF]  Definition

      |- ∃rep. TYPE_DEFINITION (λn. n < 2) rep

   [omniCom_size_def]  Definition

      |- ∀x. omniCom_size x = 0

   [output_BIJ]  Definition

      |- (∀a. num2output (output2num a) = a) ∧
         ∀r. (λn. n < 9) r ⇔ (output2num (num2output r) = r)

   [output_CASE]  Definition

      |- ∀x v0 v1 v2 v3 v4 v5 v6 v7 v8.
           (case x of
              ContingencyPlan => v0
            | MoveToORP => v1
            | ConductORP => v2
            | FormST => v3
            | ReturnToUnit => v4
            | Complete => v5
            | NoActionTaken => v6
            | UnAuthenticated => v7
            | UnAuthorized => v8) =
           (λm.
              if m < 4 then
                if m < 1 then v0
                else if m < 2 then v1
                else if m = 2 then v2
                else v3
              else if m < 6 then if m = 4 then v4 else v5
              else if m < 7 then v6
              else if m = 7 then v7
              else v8) (output2num x)

   [output_TY_DEF]  Definition

      |- ∃rep. TYPE_DEFINITION (λn. n < 9) rep

   [output_size_def]  Definition

      |- ∀x. output_size x = 0

   [platoonLeaderCom_BIJ]  Definition

      |- (∀a. num2platoonLeaderCom (platoonLeaderCom2num a) = a) ∧
         ∀r.
           (λn. n < 6) r ⇔
           (platoonLeaderCom2num (num2platoonLeaderCom r) = r)

   [platoonLeaderCom_CASE]  Definition

      |- ∀x v0 v1 v2 v3 v4 v5.
           (case x of
              contingencyPlan => v0
            | moveToORP => v1
            | conductORP => v2
            | formST => v3
            | returnToUnit => v4
            | complete => v5) =
           (λm.
              if m < 2 then if m = 0 then v0 else v1
              else if m < 3 then v2
              else if m < 4 then v3
              else if m = 4 then v4
              else v5) (platoonLeaderCom2num x)

   [platoonLeaderCom_TY_DEF]  Definition

      |- ∃rep. TYPE_DEFINITION (λn. n < 6) rep

   [platoonLeaderCom_size_def]  Definition

      |- ∀x. platoonLeaderCom_size x = 0

   [principal_BIJ]  Definition

      |- (∀a. num2principal (principal2num a) = a) ∧
         ∀r. (λn. n < 2) r ⇔ (principal2num (num2principal r) = r)

   [principal_CASE]  Definition

      |- ∀x v0 v1.
           (case x of PlatoonLeader => v0 | Omni => v1) =
           (λm. if m = 0 then v0 else v1) (principal2num x)

   [principal_TY_DEF]  Definition

      |- ∃rep. TYPE_DEFINITION (λn. n < 2) rep

   [principal_size_def]  Definition

      |- ∀x. principal_size x = 0

   [state_BIJ]  Definition

      |- (∀a. num2state (state2num a) = a) ∧
         ∀r. (λn. n < 7) r ⇔ (state2num (num2state r) = r)

   [state_CASE]  Definition

      |- ∀x v0 v1 v2 v3 v4 v5 v6.
           (case x of
              ORP_RECON => v0
            | CONTINGENCY_PLAN => v1
            | MOVE_TO_ORP => v2
            | CONDUCT_ORP => v3
            | FORM_ST => v4
            | RETURN_TO_UNIT => v5
            | COMPLETE => v6) =
           (λm.
              if m < 3 then if m < 1 then v0 else if m = 1 then v1 else v2
              else if m < 4 then v3
              else if m < 5 then v4
              else if m = 5 then v5
              else v6) (state2num x)

   [state_TY_DEF]  Definition

      |- ∃rep. TYPE_DEFINITION (λn. n < 7) rep

   [state_size_def]  Definition

      |- ∀x. state_size x = 0

   [commands_11]  Theorem

      |- (∀a a'. (PlatoonLeaderCOM a = PlatoonLeaderCOM a') ⇔ (a = a')) ∧
         ∀a a'. (OmniCOM a = OmniCOM a') ⇔ (a = a')

   [commands_Axiom]  Theorem

      |- ∀f0 f1.
           ∃fn.
             (∀a. fn (PlatoonLeaderCOM a) = f0 a) ∧
             ∀a. fn (OmniCOM a) = f1 a

   [commands_case_cong]  Theorem

      |- ∀M M' f f1.
           (M = M') ∧ (∀a. (M' = PlatoonLeaderCOM a) ⇒ (f a = f' a)) ∧
           (∀a. (M' = OmniCOM a) ⇒ (f1 a = f1' a)) ⇒
           (commands_CASE M f f1 = commands_CASE M' f' f1')

   [commands_distinct]  Theorem

      |- ∀a' a. PlatoonLeaderCOM a ≠ OmniCOM a'

   [commands_distinct_clauses]  Theorem

      |- ∀a' a. PlatoonLeaderCOM a ≠ OmniCOM a'

   [commands_induction]  Theorem

      |- ∀P.
           (∀p. P (PlatoonLeaderCOM p)) ∧ (∀ $o. P (OmniCOM $o)) ⇒ ∀c. P c

   [commands_nchotomy]  Theorem

      |- ∀cc. (∃p. cc = PlatoonLeaderCOM p) ∨ ∃ $o. cc = OmniCOM $o

   [commands_one_one]  Theorem

      |- (∀a a'. (PlatoonLeaderCOM a = PlatoonLeaderCOM a') ⇔ (a = a')) ∧
         ∀a a'. (OmniCOM a = OmniCOM a') ⇔ (a = a')

   [datatype_commands]  Theorem

      |- DATATYPE (commands PlatoonLeaderCOM OmniCOM)

   [datatype_omniCom]  Theorem

      |- DATATYPE (omniCom none omniNA)

   [datatype_output]  Theorem

      |- DATATYPE
           (output ContingencyPlan MoveToORP ConductORP FormST ReturnToUnit
              Complete NoActionTaken UnAuthenticated UnAuthorized)

   [datatype_platoonLeaderCom]  Theorem

      |- DATATYPE
           (platoonLeaderCom contingencyPlan moveToORP conductORP formST
              returnToUnit complete)

   [datatype_principal]  Theorem

      |- DATATYPE (principal PlatoonLeader Omni)

   [datatype_state]  Theorem

      |- DATATYPE
           (state ORP_RECON CONTINGENCY_PLAN MOVE_TO_ORP CONDUCT_ORP
              FORM_ST RETURN_TO_UNIT COMPLETE)

   [num2omniCom_11]  Theorem

      |- ∀r r'.
           r < 2 ⇒ r' < 2 ⇒ ((num2omniCom r = num2omniCom r') ⇔ (r = r'))

   [num2omniCom_ONTO]  Theorem

      |- ∀a. ∃r. (a = num2omniCom r) ∧ r < 2

   [num2omniCom_omniCom2num]  Theorem

      |- ∀a. num2omniCom (omniCom2num a) = a

   [num2omniCom_thm]  Theorem

      |- (num2omniCom 0 = none) ∧ (num2omniCom 1 = omniNA)

   [num2output_11]  Theorem

      |- ∀r r'.
           r < 9 ⇒ r' < 9 ⇒ ((num2output r = num2output r') ⇔ (r = r'))

   [num2output_ONTO]  Theorem

      |- ∀a. ∃r. (a = num2output r) ∧ r < 9

   [num2output_output2num]  Theorem

      |- ∀a. num2output (output2num a) = a

   [num2output_thm]  Theorem

      |- (num2output 0 = ContingencyPlan) ∧ (num2output 1 = MoveToORP) ∧
         (num2output 2 = ConductORP) ∧ (num2output 3 = FormST) ∧
         (num2output 4 = ReturnToUnit) ∧ (num2output 5 = Complete) ∧
         (num2output 6 = NoActionTaken) ∧
         (num2output 7 = UnAuthenticated) ∧ (num2output 8 = UnAuthorized)

   [num2platoonLeaderCom_11]  Theorem

      |- ∀r r'.
           r < 6 ⇒
           r' < 6 ⇒
           ((num2platoonLeaderCom r = num2platoonLeaderCom r') ⇔ (r = r'))

   [num2platoonLeaderCom_ONTO]  Theorem

      |- ∀a. ∃r. (a = num2platoonLeaderCom r) ∧ r < 6

   [num2platoonLeaderCom_platoonLeaderCom2num]  Theorem

      |- ∀a. num2platoonLeaderCom (platoonLeaderCom2num a) = a

   [num2platoonLeaderCom_thm]  Theorem

      |- (num2platoonLeaderCom 0 = contingencyPlan) ∧
         (num2platoonLeaderCom 1 = moveToORP) ∧
         (num2platoonLeaderCom 2 = conductORP) ∧
         (num2platoonLeaderCom 3 = formST) ∧
         (num2platoonLeaderCom 4 = returnToUnit) ∧
         (num2platoonLeaderCom 5 = complete)

   [num2principal_11]  Theorem

      |- ∀r r'.
           r < 2 ⇒
           r' < 2 ⇒
           ((num2principal r = num2principal r') ⇔ (r = r'))

   [num2principal_ONTO]  Theorem

      |- ∀a. ∃r. (a = num2principal r) ∧ r < 2

   [num2principal_principal2num]  Theorem

      |- ∀a. num2principal (principal2num a) = a

   [num2principal_thm]  Theorem

      |- (num2principal 0 = PlatoonLeader) ∧ (num2principal 1 = Omni)

   [num2state_11]  Theorem

      |- ∀r r'. r < 7 ⇒ r' < 7 ⇒ ((num2state r = num2state r') ⇔ (r = r'))

   [num2state_ONTO]  Theorem

      |- ∀a. ∃r. (a = num2state r) ∧ r < 7

   [num2state_state2num]  Theorem

      |- ∀a. num2state (state2num a) = a

   [num2state_thm]  Theorem

      |- (num2state 0 = ORP_RECON) ∧ (num2state 1 = CONTINGENCY_PLAN) ∧
         (num2state 2 = MOVE_TO_ORP) ∧ (num2state 3 = CONDUCT_ORP) ∧
         (num2state 4 = FORM_ST) ∧ (num2state 5 = RETURN_TO_UNIT) ∧
         (num2state 6 = COMPLETE)

   [omniCom2num_11]  Theorem

      |- ∀a a'. (omniCom2num a = omniCom2num a') ⇔ (a = a')

   [omniCom2num_ONTO]  Theorem

      |- ∀r. r < 2 ⇔ ∃a. r = omniCom2num a

   [omniCom2num_num2omniCom]  Theorem

      |- ∀r. r < 2 ⇔ (omniCom2num (num2omniCom r) = r)

   [omniCom2num_thm]  Theorem

      |- (omniCom2num none = 0) ∧ (omniCom2num omniNA = 1)

   [omniCom_Axiom]  Theorem

      |- ∀x0 x1. ∃f. (f none = x0) ∧ (f omniNA = x1)

   [omniCom_EQ_omniCom]  Theorem

      |- ∀a a'. (a = a') ⇔ (omniCom2num a = omniCom2num a')

   [omniCom_case_cong]  Theorem

      |- ∀M M' v0 v1.
           (M = M') ∧ ((M' = none) ⇒ (v0 = v0')) ∧
           ((M' = omniNA) ⇒ (v1 = v1')) ⇒
           ((case M of none => v0 | omniNA => v1) =
            case M' of none => v0' | omniNA => v1')

   [omniCom_case_def]  Theorem

      |- (∀v0 v1. (case none of none => v0 | omniNA => v1) = v0) ∧
         ∀v0 v1. (case omniNA of none => v0 | omniNA => v1) = v1

   [omniCom_distinct]  Theorem

      |- none ≠ omniNA

   [omniCom_distinct_clauses]  Theorem

      |- none ≠ omniNA

   [omniCom_induction]  Theorem

      |- ∀P. P none ∧ P omniNA ⇒ ∀a. P a

   [omniCom_nchotomy]  Theorem

      |- ∀a. (a = none) ∨ (a = omniNA)

   [output2num_11]  Theorem

      |- ∀a a'. (output2num a = output2num a') ⇔ (a = a')

   [output2num_ONTO]  Theorem

      |- ∀r. r < 9 ⇔ ∃a. r = output2num a

   [output2num_num2output]  Theorem

      |- ∀r. r < 9 ⇔ (output2num (num2output r) = r)

   [output2num_thm]  Theorem

      |- (output2num ContingencyPlan = 0) ∧ (output2num MoveToORP = 1) ∧
         (output2num ConductORP = 2) ∧ (output2num FormST = 3) ∧
         (output2num ReturnToUnit = 4) ∧ (output2num Complete = 5) ∧
         (output2num NoActionTaken = 6) ∧
         (output2num UnAuthenticated = 7) ∧ (output2num UnAuthorized = 8)

   [output_Axiom]  Theorem

      |- ∀x0 x1 x2 x3 x4 x5 x6 x7 x8.
           ∃f.
             (f ContingencyPlan = x0) ∧ (f MoveToORP = x1) ∧
             (f ConductORP = x2) ∧ (f FormST = x3) ∧
             (f ReturnToUnit = x4) ∧ (f Complete = x5) ∧
             (f NoActionTaken = x6) ∧ (f UnAuthenticated = x7) ∧
             (f UnAuthorized = x8)

   [output_EQ_output]  Theorem

      |- ∀a a'. (a = a') ⇔ (output2num a = output2num a')

   [output_case_cong]  Theorem

      |- ∀M M' v0 v1 v2 v3 v4 v5 v6 v7 v8.
           (M = M') ∧ ((M' = ContingencyPlan) ⇒ (v0 = v0')) ∧
           ((M' = MoveToORP) ⇒ (v1 = v1')) ∧
           ((M' = ConductORP) ⇒ (v2 = v2')) ∧
           ((M' = FormST) ⇒ (v3 = v3')) ∧
           ((M' = ReturnToUnit) ⇒ (v4 = v4')) ∧
           ((M' = Complete) ⇒ (v5 = v5')) ∧
           ((M' = NoActionTaken) ⇒ (v6 = v6')) ∧
           ((M' = UnAuthenticated) ⇒ (v7 = v7')) ∧
           ((M' = UnAuthorized) ⇒ (v8 = v8')) ⇒
           ((case M of
               ContingencyPlan => v0
             | MoveToORP => v1
             | ConductORP => v2
             | FormST => v3
             | ReturnToUnit => v4
             | Complete => v5
             | NoActionTaken => v6
             | UnAuthenticated => v7
             | UnAuthorized => v8) =
            case M' of
              ContingencyPlan => v0'
            | MoveToORP => v1'
            | ConductORP => v2'
            | FormST => v3'
            | ReturnToUnit => v4'
            | Complete => v5'
            | NoActionTaken => v6'
            | UnAuthenticated => v7'
            | UnAuthorized => v8')

   [output_case_def]  Theorem

      |- (∀v0 v1 v2 v3 v4 v5 v6 v7 v8.
            (case ContingencyPlan of
               ContingencyPlan => v0
             | MoveToORP => v1
             | ConductORP => v2
             | FormST => v3
             | ReturnToUnit => v4
             | Complete => v5
             | NoActionTaken => v6
             | UnAuthenticated => v7
             | UnAuthorized => v8) =
            v0) ∧
         (∀v0 v1 v2 v3 v4 v5 v6 v7 v8.
            (case MoveToORP of
               ContingencyPlan => v0
             | MoveToORP => v1
             | ConductORP => v2
             | FormST => v3
             | ReturnToUnit => v4
             | Complete => v5
             | NoActionTaken => v6
             | UnAuthenticated => v7
             | UnAuthorized => v8) =
            v1) ∧
         (∀v0 v1 v2 v3 v4 v5 v6 v7 v8.
            (case ConductORP of
               ContingencyPlan => v0
             | MoveToORP => v1
             | ConductORP => v2
             | FormST => v3
             | ReturnToUnit => v4
             | Complete => v5
             | NoActionTaken => v6
             | UnAuthenticated => v7
             | UnAuthorized => v8) =
            v2) ∧
         (∀v0 v1 v2 v3 v4 v5 v6 v7 v8.
            (case FormST of
               ContingencyPlan => v0
             | MoveToORP => v1
             | ConductORP => v2
             | FormST => v3
             | ReturnToUnit => v4
             | Complete => v5
             | NoActionTaken => v6
             | UnAuthenticated => v7
             | UnAuthorized => v8) =
            v3) ∧
         (∀v0 v1 v2 v3 v4 v5 v6 v7 v8.
            (case ReturnToUnit of
               ContingencyPlan => v0
             | MoveToORP => v1
             | ConductORP => v2
             | FormST => v3
             | ReturnToUnit => v4
             | Complete => v5
             | NoActionTaken => v6
             | UnAuthenticated => v7
             | UnAuthorized => v8) =
            v4) ∧
         (∀v0 v1 v2 v3 v4 v5 v6 v7 v8.
            (case Complete of
               ContingencyPlan => v0
             | MoveToORP => v1
             | ConductORP => v2
             | FormST => v3
             | ReturnToUnit => v4
             | Complete => v5
             | NoActionTaken => v6
             | UnAuthenticated => v7
             | UnAuthorized => v8) =
            v5) ∧
         (∀v0 v1 v2 v3 v4 v5 v6 v7 v8.
            (case NoActionTaken of
               ContingencyPlan => v0
             | MoveToORP => v1
             | ConductORP => v2
             | FormST => v3
             | ReturnToUnit => v4
             | Complete => v5
             | NoActionTaken => v6
             | UnAuthenticated => v7
             | UnAuthorized => v8) =
            v6) ∧
         (∀v0 v1 v2 v3 v4 v5 v6 v7 v8.
            (case UnAuthenticated of
               ContingencyPlan => v0
             | MoveToORP => v1
             | ConductORP => v2
             | FormST => v3
             | ReturnToUnit => v4
             | Complete => v5
             | NoActionTaken => v6
             | UnAuthenticated => v7
             | UnAuthorized => v8) =
            v7) ∧
         ∀v0 v1 v2 v3 v4 v5 v6 v7 v8.
           (case UnAuthorized of
              ContingencyPlan => v0
            | MoveToORP => v1
            | ConductORP => v2
            | FormST => v3
            | ReturnToUnit => v4
            | Complete => v5
            | NoActionTaken => v6
            | UnAuthenticated => v7
            | UnAuthorized => v8) =
           v8

   [output_distinct]  Theorem

      |- ContingencyPlan ≠ MoveToORP ∧ ContingencyPlan ≠ ConductORP ∧
         ContingencyPlan ≠ FormST ∧ ContingencyPlan ≠ ReturnToUnit ∧
         ContingencyPlan ≠ Complete ∧ ContingencyPlan ≠ NoActionTaken ∧
         ContingencyPlan ≠ UnAuthenticated ∧
         ContingencyPlan ≠ UnAuthorized ∧ MoveToORP ≠ ConductORP ∧
         MoveToORP ≠ FormST ∧ MoveToORP ≠ ReturnToUnit ∧
         MoveToORP ≠ Complete ∧ MoveToORP ≠ NoActionTaken ∧
         MoveToORP ≠ UnAuthenticated ∧ MoveToORP ≠ UnAuthorized ∧
         ConductORP ≠ FormST ∧ ConductORP ≠ ReturnToUnit ∧
         ConductORP ≠ Complete ∧ ConductORP ≠ NoActionTaken ∧
         ConductORP ≠ UnAuthenticated ∧ ConductORP ≠ UnAuthorized ∧
         FormST ≠ ReturnToUnit ∧ FormST ≠ Complete ∧
         FormST ≠ NoActionTaken ∧ FormST ≠ UnAuthenticated ∧
         FormST ≠ UnAuthorized ∧ ReturnToUnit ≠ Complete ∧
         ReturnToUnit ≠ NoActionTaken ∧ ReturnToUnit ≠ UnAuthenticated ∧
         ReturnToUnit ≠ UnAuthorized ∧ Complete ≠ NoActionTaken ∧
         Complete ≠ UnAuthenticated ∧ Complete ≠ UnAuthorized ∧
         NoActionTaken ≠ UnAuthenticated ∧ NoActionTaken ≠ UnAuthorized ∧
         UnAuthenticated ≠ UnAuthorized

   [output_distinct_clauses]  Theorem

      |- ContingencyPlan ≠ MoveToORP ∧ ContingencyPlan ≠ ConductORP ∧
         ContingencyPlan ≠ FormST ∧ ContingencyPlan ≠ ReturnToUnit ∧
         ContingencyPlan ≠ Complete ∧ ContingencyPlan ≠ NoActionTaken ∧
         ContingencyPlan ≠ UnAuthenticated ∧
         ContingencyPlan ≠ UnAuthorized ∧ MoveToORP ≠ ConductORP ∧
         MoveToORP ≠ FormST ∧ MoveToORP ≠ ReturnToUnit ∧
         MoveToORP ≠ Complete ∧ MoveToORP ≠ NoActionTaken ∧
         MoveToORP ≠ UnAuthenticated ∧ MoveToORP ≠ UnAuthorized ∧
         ConductORP ≠ FormST ∧ ConductORP ≠ ReturnToUnit ∧
         ConductORP ≠ Complete ∧ ConductORP ≠ NoActionTaken ∧
         ConductORP ≠ UnAuthenticated ∧ ConductORP ≠ UnAuthorized ∧
         FormST ≠ ReturnToUnit ∧ FormST ≠ Complete ∧
         FormST ≠ NoActionTaken ∧ FormST ≠ UnAuthenticated ∧
         FormST ≠ UnAuthorized ∧ ReturnToUnit ≠ Complete ∧
         ReturnToUnit ≠ NoActionTaken ∧ ReturnToUnit ≠ UnAuthenticated ∧
         ReturnToUnit ≠ UnAuthorized ∧ Complete ≠ NoActionTaken ∧
         Complete ≠ UnAuthenticated ∧ Complete ≠ UnAuthorized ∧
         NoActionTaken ≠ UnAuthenticated ∧ NoActionTaken ≠ UnAuthorized ∧
         UnAuthenticated ≠ UnAuthorized

   [output_induction]  Theorem

      |- ∀P.
           P Complete ∧ P ConductORP ∧ P ContingencyPlan ∧ P FormST ∧
           P MoveToORP ∧ P NoActionTaken ∧ P ReturnToUnit ∧
           P UnAuthenticated ∧ P UnAuthorized ⇒
           ∀a. P a

   [output_nchotomy]  Theorem

      |- ∀a.
           (a = ContingencyPlan) ∨ (a = MoveToORP) ∨ (a = ConductORP) ∨
           (a = FormST) ∨ (a = ReturnToUnit) ∨ (a = Complete) ∨
           (a = NoActionTaken) ∨ (a = UnAuthenticated) ∨ (a = UnAuthorized)

   [platoonLeaderCom2num_11]  Theorem

      |- ∀a a'.
           (platoonLeaderCom2num a = platoonLeaderCom2num a') ⇔ (a = a')

   [platoonLeaderCom2num_ONTO]  Theorem

      |- ∀r. r < 6 ⇔ ∃a. r = platoonLeaderCom2num a

   [platoonLeaderCom2num_num2platoonLeaderCom]  Theorem

      |- ∀r. r < 6 ⇔ (platoonLeaderCom2num (num2platoonLeaderCom r) = r)

   [platoonLeaderCom2num_thm]  Theorem

      |- (platoonLeaderCom2num contingencyPlan = 0) ∧
         (platoonLeaderCom2num moveToORP = 1) ∧
         (platoonLeaderCom2num conductORP = 2) ∧
         (platoonLeaderCom2num formST = 3) ∧
         (platoonLeaderCom2num returnToUnit = 4) ∧
         (platoonLeaderCom2num complete = 5)

   [platoonLeaderCom_Axiom]  Theorem

      |- ∀x0 x1 x2 x3 x4 x5.
           ∃f.
             (f contingencyPlan = x0) ∧ (f moveToORP = x1) ∧
             (f conductORP = x2) ∧ (f formST = x3) ∧
             (f returnToUnit = x4) ∧ (f complete = x5)

   [platoonLeaderCom_EQ_platoonLeaderCom]  Theorem

      |- ∀a a'.
           (a = a') ⇔ (platoonLeaderCom2num a = platoonLeaderCom2num a')

   [platoonLeaderCom_case_cong]  Theorem

      |- ∀M M' v0 v1 v2 v3 v4 v5.
           (M = M') ∧ ((M' = contingencyPlan) ⇒ (v0 = v0')) ∧
           ((M' = moveToORP) ⇒ (v1 = v1')) ∧
           ((M' = conductORP) ⇒ (v2 = v2')) ∧
           ((M' = formST) ⇒ (v3 = v3')) ∧
           ((M' = returnToUnit) ⇒ (v4 = v4')) ∧
           ((M' = complete) ⇒ (v5 = v5')) ⇒
           ((case M of
               contingencyPlan => v0
             | moveToORP => v1
             | conductORP => v2
             | formST => v3
             | returnToUnit => v4
             | complete => v5) =
            case M' of
              contingencyPlan => v0'
            | moveToORP => v1'
            | conductORP => v2'
            | formST => v3'
            | returnToUnit => v4'
            | complete => v5')

   [platoonLeaderCom_case_def]  Theorem

      |- (∀v0 v1 v2 v3 v4 v5.
            (case contingencyPlan of
               contingencyPlan => v0
             | moveToORP => v1
             | conductORP => v2
             | formST => v3
             | returnToUnit => v4
             | complete => v5) =
            v0) ∧
         (∀v0 v1 v2 v3 v4 v5.
            (case moveToORP of
               contingencyPlan => v0
             | moveToORP => v1
             | conductORP => v2
             | formST => v3
             | returnToUnit => v4
             | complete => v5) =
            v1) ∧
         (∀v0 v1 v2 v3 v4 v5.
            (case conductORP of
               contingencyPlan => v0
             | moveToORP => v1
             | conductORP => v2
             | formST => v3
             | returnToUnit => v4
             | complete => v5) =
            v2) ∧
         (∀v0 v1 v2 v3 v4 v5.
            (case formST of
               contingencyPlan => v0
             | moveToORP => v1
             | conductORP => v2
             | formST => v3
             | returnToUnit => v4
             | complete => v5) =
            v3) ∧
         (∀v0 v1 v2 v3 v4 v5.
            (case returnToUnit of
               contingencyPlan => v0
             | moveToORP => v1
             | conductORP => v2
             | formST => v3
             | returnToUnit => v4
             | complete => v5) =
            v4) ∧
         ∀v0 v1 v2 v3 v4 v5.
           (case complete of
              contingencyPlan => v0
            | moveToORP => v1
            | conductORP => v2
            | formST => v3
            | returnToUnit => v4
            | complete => v5) =
           v5

   [platoonLeaderCom_distinct]  Theorem

      |- contingencyPlan ≠ moveToORP ∧ contingencyPlan ≠ conductORP ∧
         contingencyPlan ≠ formST ∧ contingencyPlan ≠ returnToUnit ∧
         contingencyPlan ≠ complete ∧ moveToORP ≠ conductORP ∧
         moveToORP ≠ formST ∧ moveToORP ≠ returnToUnit ∧
         moveToORP ≠ complete ∧ conductORP ≠ formST ∧
         conductORP ≠ returnToUnit ∧ conductORP ≠ complete ∧
         formST ≠ returnToUnit ∧ formST ≠ complete ∧
         returnToUnit ≠ complete

   [platoonLeaderCom_distinct_clauses]  Theorem

      |- contingencyPlan ≠ moveToORP ∧ contingencyPlan ≠ conductORP ∧
         contingencyPlan ≠ formST ∧ contingencyPlan ≠ returnToUnit ∧
         contingencyPlan ≠ complete ∧ moveToORP ≠ conductORP ∧
         moveToORP ≠ formST ∧ moveToORP ≠ returnToUnit ∧
         moveToORP ≠ complete ∧ conductORP ≠ formST ∧
         conductORP ≠ returnToUnit ∧ conductORP ≠ complete ∧
         formST ≠ returnToUnit ∧ formST ≠ complete ∧
         returnToUnit ≠ complete

   [platoonLeaderCom_induction]  Theorem

      |- ∀P.
           P complete ∧ P conductORP ∧ P contingencyPlan ∧ P formST ∧
           P moveToORP ∧ P returnToUnit ⇒
           ∀a. P a

   [platoonLeaderCom_nchotomy]  Theorem

      |- ∀a.
           (a = contingencyPlan) ∨ (a = moveToORP) ∨ (a = conductORP) ∨
           (a = formST) ∨ (a = returnToUnit) ∨ (a = complete)

   [principal2num_11]  Theorem

      |- ∀a a'. (principal2num a = principal2num a') ⇔ (a = a')

   [principal2num_ONTO]  Theorem

      |- ∀r. r < 2 ⇔ ∃a. r = principal2num a

   [principal2num_num2principal]  Theorem

      |- ∀r. r < 2 ⇔ (principal2num (num2principal r) = r)

   [principal2num_thm]  Theorem

      |- (principal2num PlatoonLeader = 0) ∧ (principal2num Omni = 1)

   [principal_Axiom]  Theorem

      |- ∀x0 x1. ∃f. (f PlatoonLeader = x0) ∧ (f Omni = x1)

   [principal_EQ_principal]  Theorem

      |- ∀a a'. (a = a') ⇔ (principal2num a = principal2num a')

   [principal_case_cong]  Theorem

      |- ∀M M' v0 v1.
           (M = M') ∧ ((M' = PlatoonLeader) ⇒ (v0 = v0')) ∧
           ((M' = Omni) ⇒ (v1 = v1')) ⇒
           ((case M of PlatoonLeader => v0 | Omni => v1) =
            case M' of PlatoonLeader => v0' | Omni => v1')

   [principal_case_def]  Theorem

      |- (∀v0 v1.
            (case PlatoonLeader of PlatoonLeader => v0 | Omni => v1) =
            v0) ∧
         ∀v0 v1. (case Omni of PlatoonLeader => v0 | Omni => v1) = v1

   [principal_distinct]  Theorem

      |- PlatoonLeader ≠ Omni

   [principal_distinct_clauses]  Theorem

      |- PlatoonLeader ≠ Omni

   [principal_induction]  Theorem

      |- ∀P. P Omni ∧ P PlatoonLeader ⇒ ∀a. P a

   [principal_nchotomy]  Theorem

      |- ∀a. (a = PlatoonLeader) ∨ (a = Omni)

   [state2num_11]  Theorem

      |- ∀a a'. (state2num a = state2num a') ⇔ (a = a')

   [state2num_ONTO]  Theorem

      |- ∀r. r < 7 ⇔ ∃a. r = state2num a

   [state2num_num2state]  Theorem

      |- ∀r. r < 7 ⇔ (state2num (num2state r) = r)

   [state2num_thm]  Theorem

      |- (state2num ORP_RECON = 0) ∧ (state2num CONTINGENCY_PLAN = 1) ∧
         (state2num MOVE_TO_ORP = 2) ∧ (state2num CONDUCT_ORP = 3) ∧
         (state2num FORM_ST = 4) ∧ (state2num RETURN_TO_UNIT = 5) ∧
         (state2num COMPLETE = 6)

   [state_Axiom]  Theorem

      |- ∀x0 x1 x2 x3 x4 x5 x6.
           ∃f.
             (f ORP_RECON = x0) ∧ (f CONTINGENCY_PLAN = x1) ∧
             (f MOVE_TO_ORP = x2) ∧ (f CONDUCT_ORP = x3) ∧
             (f FORM_ST = x4) ∧ (f RETURN_TO_UNIT = x5) ∧ (f COMPLETE = x6)

   [state_EQ_state]  Theorem

      |- ∀a a'. (a = a') ⇔ (state2num a = state2num a')

   [state_case_cong]  Theorem

      |- ∀M M' v0 v1 v2 v3 v4 v5 v6.
           (M = M') ∧ ((M' = ORP_RECON) ⇒ (v0 = v0')) ∧
           ((M' = CONTINGENCY_PLAN) ⇒ (v1 = v1')) ∧
           ((M' = MOVE_TO_ORP) ⇒ (v2 = v2')) ∧
           ((M' = CONDUCT_ORP) ⇒ (v3 = v3')) ∧
           ((M' = FORM_ST) ⇒ (v4 = v4')) ∧
           ((M' = RETURN_TO_UNIT) ⇒ (v5 = v5')) ∧
           ((M' = COMPLETE) ⇒ (v6 = v6')) ⇒
           ((case M of
               ORP_RECON => v0
             | CONTINGENCY_PLAN => v1
             | MOVE_TO_ORP => v2
             | CONDUCT_ORP => v3
             | FORM_ST => v4
             | RETURN_TO_UNIT => v5
             | COMPLETE => v6) =
            case M' of
              ORP_RECON => v0'
            | CONTINGENCY_PLAN => v1'
            | MOVE_TO_ORP => v2'
            | CONDUCT_ORP => v3'
            | FORM_ST => v4'
            | RETURN_TO_UNIT => v5'
            | COMPLETE => v6')

   [state_case_def]  Theorem

      |- (∀v0 v1 v2 v3 v4 v5 v6.
            (case ORP_RECON of
               ORP_RECON => v0
             | CONTINGENCY_PLAN => v1
             | MOVE_TO_ORP => v2
             | CONDUCT_ORP => v3
             | FORM_ST => v4
             | RETURN_TO_UNIT => v5
             | COMPLETE => v6) =
            v0) ∧
         (∀v0 v1 v2 v3 v4 v5 v6.
            (case CONTINGENCY_PLAN of
               ORP_RECON => v0
             | CONTINGENCY_PLAN => v1
             | MOVE_TO_ORP => v2
             | CONDUCT_ORP => v3
             | FORM_ST => v4
             | RETURN_TO_UNIT => v5
             | COMPLETE => v6) =
            v1) ∧
         (∀v0 v1 v2 v3 v4 v5 v6.
            (case MOVE_TO_ORP of
               ORP_RECON => v0
             | CONTINGENCY_PLAN => v1
             | MOVE_TO_ORP => v2
             | CONDUCT_ORP => v3
             | FORM_ST => v4
             | RETURN_TO_UNIT => v5
             | COMPLETE => v6) =
            v2) ∧
         (∀v0 v1 v2 v3 v4 v5 v6.
            (case CONDUCT_ORP of
               ORP_RECON => v0
             | CONTINGENCY_PLAN => v1
             | MOVE_TO_ORP => v2
             | CONDUCT_ORP => v3
             | FORM_ST => v4
             | RETURN_TO_UNIT => v5
             | COMPLETE => v6) =
            v3) ∧
         (∀v0 v1 v2 v3 v4 v5 v6.
            (case FORM_ST of
               ORP_RECON => v0
             | CONTINGENCY_PLAN => v1
             | MOVE_TO_ORP => v2
             | CONDUCT_ORP => v3
             | FORM_ST => v4
             | RETURN_TO_UNIT => v5
             | COMPLETE => v6) =
            v4) ∧
         (∀v0 v1 v2 v3 v4 v5 v6.
            (case RETURN_TO_UNIT of
               ORP_RECON => v0
             | CONTINGENCY_PLAN => v1
             | MOVE_TO_ORP => v2
             | CONDUCT_ORP => v3
             | FORM_ST => v4
             | RETURN_TO_UNIT => v5
             | COMPLETE => v6) =
            v5) ∧
         ∀v0 v1 v2 v3 v4 v5 v6.
           (case COMPLETE of
              ORP_RECON => v0
            | CONTINGENCY_PLAN => v1
            | MOVE_TO_ORP => v2
            | CONDUCT_ORP => v3
            | FORM_ST => v4
            | RETURN_TO_UNIT => v5
            | COMPLETE => v6) =
           v6

   [state_distinct]  Theorem

      |- ORP_RECON ≠ CONTINGENCY_PLAN ∧ ORP_RECON ≠ MOVE_TO_ORP ∧
         ORP_RECON ≠ CONDUCT_ORP ∧ ORP_RECON ≠ FORM_ST ∧
         ORP_RECON ≠ RETURN_TO_UNIT ∧ ORP_RECON ≠ COMPLETE ∧
         CONTINGENCY_PLAN ≠ MOVE_TO_ORP ∧ CONTINGENCY_PLAN ≠ CONDUCT_ORP ∧
         CONTINGENCY_PLAN ≠ FORM_ST ∧ CONTINGENCY_PLAN ≠ RETURN_TO_UNIT ∧
         CONTINGENCY_PLAN ≠ COMPLETE ∧ MOVE_TO_ORP ≠ CONDUCT_ORP ∧
         MOVE_TO_ORP ≠ FORM_ST ∧ MOVE_TO_ORP ≠ RETURN_TO_UNIT ∧
         MOVE_TO_ORP ≠ COMPLETE ∧ CONDUCT_ORP ≠ FORM_ST ∧
         CONDUCT_ORP ≠ RETURN_TO_UNIT ∧ CONDUCT_ORP ≠ COMPLETE ∧
         FORM_ST ≠ RETURN_TO_UNIT ∧ FORM_ST ≠ COMPLETE ∧
         RETURN_TO_UNIT ≠ COMPLETE

   [state_distinct_clauses]  Theorem

      |- ORP_RECON ≠ CONTINGENCY_PLAN ∧ ORP_RECON ≠ MOVE_TO_ORP ∧
         ORP_RECON ≠ CONDUCT_ORP ∧ ORP_RECON ≠ FORM_ST ∧
         ORP_RECON ≠ RETURN_TO_UNIT ∧ ORP_RECON ≠ COMPLETE ∧
         CONTINGENCY_PLAN ≠ MOVE_TO_ORP ∧ CONTINGENCY_PLAN ≠ CONDUCT_ORP ∧
         CONTINGENCY_PLAN ≠ FORM_ST ∧ CONTINGENCY_PLAN ≠ RETURN_TO_UNIT ∧
         CONTINGENCY_PLAN ≠ COMPLETE ∧ MOVE_TO_ORP ≠ CONDUCT_ORP ∧
         MOVE_TO_ORP ≠ FORM_ST ∧ MOVE_TO_ORP ≠ RETURN_TO_UNIT ∧
         MOVE_TO_ORP ≠ COMPLETE ∧ CONDUCT_ORP ≠ FORM_ST ∧
         CONDUCT_ORP ≠ RETURN_TO_UNIT ∧ CONDUCT_ORP ≠ COMPLETE ∧
         FORM_ST ≠ RETURN_TO_UNIT ∧ FORM_ST ≠ COMPLETE ∧
         RETURN_TO_UNIT ≠ COMPLETE

   [state_induction]  Theorem

      |- ∀P.
           P COMPLETE ∧ P CONDUCT_ORP ∧ P CONTINGENCY_PLAN ∧ P FORM_ST ∧
           P MOVE_TO_ORP ∧ P ORP_RECON ∧ P RETURN_TO_UNIT ⇒
           ∀a. P a

   [state_nchotomy]  Theorem

      |- ∀a.
           (a = ORP_RECON) ∨ (a = CONTINGENCY_PLAN) ∨ (a = MOVE_TO_ORP) ∨
           (a = CONDUCT_ORP) ∨ (a = FORM_ST) ∨ (a = RETURN_TO_UNIT) ∨
           (a = COMPLETE)


*)
end
