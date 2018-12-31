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
         ∀r. (λn. n < 7) r ⇔ (output2num (num2output r) = r)

   [output_CASE]  Definition

      |- ∀x v0 v1 v2 v3 v4 v5 v6.
           (case x of
              FormRT => v0
            | RtMove => v1
            | RtHalt => v2
            | Complete => v3
            | NoActionTaken => v4
            | UnAuthenticated => v5
            | UnAuthorized => v6) =
           (λm.
              if m < 3 then if m < 1 then v0 else if m = 1 then v1 else v2
              else if m < 4 then v3
              else if m < 5 then v4
              else if m = 5 then v5
              else v6) (output2num x)

   [output_TY_DEF]  Definition

      |- ∃rep. TYPE_DEFINITION (λn. n < 7) rep

   [output_size_def]  Definition

      |- ∀x. output_size x = 0

   [platoonLeaderCom_BIJ]  Definition

      |- (∀a. num2platoonLeaderCom (platoonLeaderCom2num a) = a) ∧
         ∀r.
           (λn. n < 4) r ⇔
           (platoonLeaderCom2num (num2platoonLeaderCom r) = r)

   [platoonLeaderCom_CASE]  Definition

      |- ∀x v0 v1 v2 v3.
           (case x of
              formRT => v0
            | rtMove => v1
            | rtHalt => v2
            | complete => v3) =
           (λm.
              if m < 1 then v0
              else if m < 2 then v1
              else if m = 2 then v2
              else v3) (platoonLeaderCom2num x)

   [platoonLeaderCom_TY_DEF]  Definition

      |- ∃rep. TYPE_DEFINITION (λn. n < 4) rep

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
         ∀r. (λn. n < 5) r ⇔ (state2num (num2state r) = r)

   [state_CASE]  Definition

      |- ∀x v0 v1 v2 v3 v4.
           (case x of
              MOVE_TO_ORP => v0
            | FORM_RT => v1
            | RT_MOVE => v2
            | RT_HALT => v3
            | COMPLETE => v4) =
           (λm.
              if m < 2 then if m = 0 then v0 else v1
              else if m < 3 then v2
              else if m = 3 then v3
              else v4) (state2num x)

   [state_TY_DEF]  Definition

      |- ∃rep. TYPE_DEFINITION (λn. n < 5) rep

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
           (output FormRT RtMove RtHalt Complete NoActionTaken
              UnAuthenticated UnAuthorized)

   [datatype_platoonLeaderCom]  Theorem

      |- DATATYPE (platoonLeaderCom formRT rtMove rtHalt complete)

   [datatype_principal]  Theorem

      |- DATATYPE (principal PlatoonLeader Omni)

   [datatype_state]  Theorem

      |- DATATYPE (state MOVE_TO_ORP FORM_RT RT_MOVE RT_HALT COMPLETE)

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
           r < 7 ⇒ r' < 7 ⇒ ((num2output r = num2output r') ⇔ (r = r'))

   [num2output_ONTO]  Theorem

      |- ∀a. ∃r. (a = num2output r) ∧ r < 7

   [num2output_output2num]  Theorem

      |- ∀a. num2output (output2num a) = a

   [num2output_thm]  Theorem

      |- (num2output 0 = FormRT) ∧ (num2output 1 = RtMove) ∧
         (num2output 2 = RtHalt) ∧ (num2output 3 = Complete) ∧
         (num2output 4 = NoActionTaken) ∧
         (num2output 5 = UnAuthenticated) ∧ (num2output 6 = UnAuthorized)

   [num2platoonLeaderCom_11]  Theorem

      |- ∀r r'.
           r < 4 ⇒
           r' < 4 ⇒
           ((num2platoonLeaderCom r = num2platoonLeaderCom r') ⇔ (r = r'))

   [num2platoonLeaderCom_ONTO]  Theorem

      |- ∀a. ∃r. (a = num2platoonLeaderCom r) ∧ r < 4

   [num2platoonLeaderCom_platoonLeaderCom2num]  Theorem

      |- ∀a. num2platoonLeaderCom (platoonLeaderCom2num a) = a

   [num2platoonLeaderCom_thm]  Theorem

      |- (num2platoonLeaderCom 0 = formRT) ∧
         (num2platoonLeaderCom 1 = rtMove) ∧
         (num2platoonLeaderCom 2 = rtHalt) ∧
         (num2platoonLeaderCom 3 = complete)

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

      |- ∀r r'. r < 5 ⇒ r' < 5 ⇒ ((num2state r = num2state r') ⇔ (r = r'))

   [num2state_ONTO]  Theorem

      |- ∀a. ∃r. (a = num2state r) ∧ r < 5

   [num2state_state2num]  Theorem

      |- ∀a. num2state (state2num a) = a

   [num2state_thm]  Theorem

      |- (num2state 0 = MOVE_TO_ORP) ∧ (num2state 1 = FORM_RT) ∧
         (num2state 2 = RT_MOVE) ∧ (num2state 3 = RT_HALT) ∧
         (num2state 4 = COMPLETE)

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

      |- ∀r. r < 7 ⇔ ∃a. r = output2num a

   [output2num_num2output]  Theorem

      |- ∀r. r < 7 ⇔ (output2num (num2output r) = r)

   [output2num_thm]  Theorem

      |- (output2num FormRT = 0) ∧ (output2num RtMove = 1) ∧
         (output2num RtHalt = 2) ∧ (output2num Complete = 3) ∧
         (output2num NoActionTaken = 4) ∧
         (output2num UnAuthenticated = 5) ∧ (output2num UnAuthorized = 6)

   [output_Axiom]  Theorem

      |- ∀x0 x1 x2 x3 x4 x5 x6.
           ∃f.
             (f FormRT = x0) ∧ (f RtMove = x1) ∧ (f RtHalt = x2) ∧
             (f Complete = x3) ∧ (f NoActionTaken = x4) ∧
             (f UnAuthenticated = x5) ∧ (f UnAuthorized = x6)

   [output_EQ_output]  Theorem

      |- ∀a a'. (a = a') ⇔ (output2num a = output2num a')

   [output_case_cong]  Theorem

      |- ∀M M' v0 v1 v2 v3 v4 v5 v6.
           (M = M') ∧ ((M' = FormRT) ⇒ (v0 = v0')) ∧
           ((M' = RtMove) ⇒ (v1 = v1')) ∧ ((M' = RtHalt) ⇒ (v2 = v2')) ∧
           ((M' = Complete) ⇒ (v3 = v3')) ∧
           ((M' = NoActionTaken) ⇒ (v4 = v4')) ∧
           ((M' = UnAuthenticated) ⇒ (v5 = v5')) ∧
           ((M' = UnAuthorized) ⇒ (v6 = v6')) ⇒
           ((case M of
               FormRT => v0
             | RtMove => v1
             | RtHalt => v2
             | Complete => v3
             | NoActionTaken => v4
             | UnAuthenticated => v5
             | UnAuthorized => v6) =
            case M' of
              FormRT => v0'
            | RtMove => v1'
            | RtHalt => v2'
            | Complete => v3'
            | NoActionTaken => v4'
            | UnAuthenticated => v5'
            | UnAuthorized => v6')

   [output_case_def]  Theorem

      |- (∀v0 v1 v2 v3 v4 v5 v6.
            (case FormRT of
               FormRT => v0
             | RtMove => v1
             | RtHalt => v2
             | Complete => v3
             | NoActionTaken => v4
             | UnAuthenticated => v5
             | UnAuthorized => v6) =
            v0) ∧
         (∀v0 v1 v2 v3 v4 v5 v6.
            (case RtMove of
               FormRT => v0
             | RtMove => v1
             | RtHalt => v2
             | Complete => v3
             | NoActionTaken => v4
             | UnAuthenticated => v5
             | UnAuthorized => v6) =
            v1) ∧
         (∀v0 v1 v2 v3 v4 v5 v6.
            (case RtHalt of
               FormRT => v0
             | RtMove => v1
             | RtHalt => v2
             | Complete => v3
             | NoActionTaken => v4
             | UnAuthenticated => v5
             | UnAuthorized => v6) =
            v2) ∧
         (∀v0 v1 v2 v3 v4 v5 v6.
            (case Complete of
               FormRT => v0
             | RtMove => v1
             | RtHalt => v2
             | Complete => v3
             | NoActionTaken => v4
             | UnAuthenticated => v5
             | UnAuthorized => v6) =
            v3) ∧
         (∀v0 v1 v2 v3 v4 v5 v6.
            (case NoActionTaken of
               FormRT => v0
             | RtMove => v1
             | RtHalt => v2
             | Complete => v3
             | NoActionTaken => v4
             | UnAuthenticated => v5
             | UnAuthorized => v6) =
            v4) ∧
         (∀v0 v1 v2 v3 v4 v5 v6.
            (case UnAuthenticated of
               FormRT => v0
             | RtMove => v1
             | RtHalt => v2
             | Complete => v3
             | NoActionTaken => v4
             | UnAuthenticated => v5
             | UnAuthorized => v6) =
            v5) ∧
         ∀v0 v1 v2 v3 v4 v5 v6.
           (case UnAuthorized of
              FormRT => v0
            | RtMove => v1
            | RtHalt => v2
            | Complete => v3
            | NoActionTaken => v4
            | UnAuthenticated => v5
            | UnAuthorized => v6) =
           v6

   [output_distinct]  Theorem

      |- FormRT ≠ RtMove ∧ FormRT ≠ RtHalt ∧ FormRT ≠ Complete ∧
         FormRT ≠ NoActionTaken ∧ FormRT ≠ UnAuthenticated ∧
         FormRT ≠ UnAuthorized ∧ RtMove ≠ RtHalt ∧ RtMove ≠ Complete ∧
         RtMove ≠ NoActionTaken ∧ RtMove ≠ UnAuthenticated ∧
         RtMove ≠ UnAuthorized ∧ RtHalt ≠ Complete ∧
         RtHalt ≠ NoActionTaken ∧ RtHalt ≠ UnAuthenticated ∧
         RtHalt ≠ UnAuthorized ∧ Complete ≠ NoActionTaken ∧
         Complete ≠ UnAuthenticated ∧ Complete ≠ UnAuthorized ∧
         NoActionTaken ≠ UnAuthenticated ∧ NoActionTaken ≠ UnAuthorized ∧
         UnAuthenticated ≠ UnAuthorized

   [output_distinct_clauses]  Theorem

      |- FormRT ≠ RtMove ∧ FormRT ≠ RtHalt ∧ FormRT ≠ Complete ∧
         FormRT ≠ NoActionTaken ∧ FormRT ≠ UnAuthenticated ∧
         FormRT ≠ UnAuthorized ∧ RtMove ≠ RtHalt ∧ RtMove ≠ Complete ∧
         RtMove ≠ NoActionTaken ∧ RtMove ≠ UnAuthenticated ∧
         RtMove ≠ UnAuthorized ∧ RtHalt ≠ Complete ∧
         RtHalt ≠ NoActionTaken ∧ RtHalt ≠ UnAuthenticated ∧
         RtHalt ≠ UnAuthorized ∧ Complete ≠ NoActionTaken ∧
         Complete ≠ UnAuthenticated ∧ Complete ≠ UnAuthorized ∧
         NoActionTaken ≠ UnAuthenticated ∧ NoActionTaken ≠ UnAuthorized ∧
         UnAuthenticated ≠ UnAuthorized

   [output_induction]  Theorem

      |- ∀P.
           P Complete ∧ P FormRT ∧ P NoActionTaken ∧ P RtHalt ∧ P RtMove ∧
           P UnAuthenticated ∧ P UnAuthorized ⇒
           ∀a. P a

   [output_nchotomy]  Theorem

      |- ∀a.
           (a = FormRT) ∨ (a = RtMove) ∨ (a = RtHalt) ∨ (a = Complete) ∨
           (a = NoActionTaken) ∨ (a = UnAuthenticated) ∨ (a = UnAuthorized)

   [platoonLeaderCom2num_11]  Theorem

      |- ∀a a'.
           (platoonLeaderCom2num a = platoonLeaderCom2num a') ⇔ (a = a')

   [platoonLeaderCom2num_ONTO]  Theorem

      |- ∀r. r < 4 ⇔ ∃a. r = platoonLeaderCom2num a

   [platoonLeaderCom2num_num2platoonLeaderCom]  Theorem

      |- ∀r. r < 4 ⇔ (platoonLeaderCom2num (num2platoonLeaderCom r) = r)

   [platoonLeaderCom2num_thm]  Theorem

      |- (platoonLeaderCom2num formRT = 0) ∧
         (platoonLeaderCom2num rtMove = 1) ∧
         (platoonLeaderCom2num rtHalt = 2) ∧
         (platoonLeaderCom2num complete = 3)

   [platoonLeaderCom_Axiom]  Theorem

      |- ∀x0 x1 x2 x3.
           ∃f.
             (f formRT = x0) ∧ (f rtMove = x1) ∧ (f rtHalt = x2) ∧
             (f complete = x3)

   [platoonLeaderCom_EQ_platoonLeaderCom]  Theorem

      |- ∀a a'.
           (a = a') ⇔ (platoonLeaderCom2num a = platoonLeaderCom2num a')

   [platoonLeaderCom_case_cong]  Theorem

      |- ∀M M' v0 v1 v2 v3.
           (M = M') ∧ ((M' = formRT) ⇒ (v0 = v0')) ∧
           ((M' = rtMove) ⇒ (v1 = v1')) ∧ ((M' = rtHalt) ⇒ (v2 = v2')) ∧
           ((M' = complete) ⇒ (v3 = v3')) ⇒
           ((case M of
               formRT => v0
             | rtMove => v1
             | rtHalt => v2
             | complete => v3) =
            case M' of
              formRT => v0'
            | rtMove => v1'
            | rtHalt => v2'
            | complete => v3')

   [platoonLeaderCom_case_def]  Theorem

      |- (∀v0 v1 v2 v3.
            (case formRT of
               formRT => v0
             | rtMove => v1
             | rtHalt => v2
             | complete => v3) =
            v0) ∧
         (∀v0 v1 v2 v3.
            (case rtMove of
               formRT => v0
             | rtMove => v1
             | rtHalt => v2
             | complete => v3) =
            v1) ∧
         (∀v0 v1 v2 v3.
            (case rtHalt of
               formRT => v0
             | rtMove => v1
             | rtHalt => v2
             | complete => v3) =
            v2) ∧
         ∀v0 v1 v2 v3.
           (case complete of
              formRT => v0
            | rtMove => v1
            | rtHalt => v2
            | complete => v3) =
           v3

   [platoonLeaderCom_distinct]  Theorem

      |- formRT ≠ rtMove ∧ formRT ≠ rtHalt ∧ formRT ≠ complete ∧
         rtMove ≠ rtHalt ∧ rtMove ≠ complete ∧ rtHalt ≠ complete

   [platoonLeaderCom_distinct_clauses]  Theorem

      |- formRT ≠ rtMove ∧ formRT ≠ rtHalt ∧ formRT ≠ complete ∧
         rtMove ≠ rtHalt ∧ rtMove ≠ complete ∧ rtHalt ≠ complete

   [platoonLeaderCom_induction]  Theorem

      |- ∀P. P complete ∧ P formRT ∧ P rtHalt ∧ P rtMove ⇒ ∀a. P a

   [platoonLeaderCom_nchotomy]  Theorem

      |- ∀a. (a = formRT) ∨ (a = rtMove) ∨ (a = rtHalt) ∨ (a = complete)

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

      |- ∀r. r < 5 ⇔ ∃a. r = state2num a

   [state2num_num2state]  Theorem

      |- ∀r. r < 5 ⇔ (state2num (num2state r) = r)

   [state2num_thm]  Theorem

      |- (state2num MOVE_TO_ORP = 0) ∧ (state2num FORM_RT = 1) ∧
         (state2num RT_MOVE = 2) ∧ (state2num RT_HALT = 3) ∧
         (state2num COMPLETE = 4)

   [state_Axiom]  Theorem

      |- ∀x0 x1 x2 x3 x4.
           ∃f.
             (f MOVE_TO_ORP = x0) ∧ (f FORM_RT = x1) ∧ (f RT_MOVE = x2) ∧
             (f RT_HALT = x3) ∧ (f COMPLETE = x4)

   [state_EQ_state]  Theorem

      |- ∀a a'. (a = a') ⇔ (state2num a = state2num a')

   [state_case_cong]  Theorem

      |- ∀M M' v0 v1 v2 v3 v4.
           (M = M') ∧ ((M' = MOVE_TO_ORP) ⇒ (v0 = v0')) ∧
           ((M' = FORM_RT) ⇒ (v1 = v1')) ∧ ((M' = RT_MOVE) ⇒ (v2 = v2')) ∧
           ((M' = RT_HALT) ⇒ (v3 = v3')) ∧ ((M' = COMPLETE) ⇒ (v4 = v4')) ⇒
           ((case M of
               MOVE_TO_ORP => v0
             | FORM_RT => v1
             | RT_MOVE => v2
             | RT_HALT => v3
             | COMPLETE => v4) =
            case M' of
              MOVE_TO_ORP => v0'
            | FORM_RT => v1'
            | RT_MOVE => v2'
            | RT_HALT => v3'
            | COMPLETE => v4')

   [state_case_def]  Theorem

      |- (∀v0 v1 v2 v3 v4.
            (case MOVE_TO_ORP of
               MOVE_TO_ORP => v0
             | FORM_RT => v1
             | RT_MOVE => v2
             | RT_HALT => v3
             | COMPLETE => v4) =
            v0) ∧
         (∀v0 v1 v2 v3 v4.
            (case FORM_RT of
               MOVE_TO_ORP => v0
             | FORM_RT => v1
             | RT_MOVE => v2
             | RT_HALT => v3
             | COMPLETE => v4) =
            v1) ∧
         (∀v0 v1 v2 v3 v4.
            (case RT_MOVE of
               MOVE_TO_ORP => v0
             | FORM_RT => v1
             | RT_MOVE => v2
             | RT_HALT => v3
             | COMPLETE => v4) =
            v2) ∧
         (∀v0 v1 v2 v3 v4.
            (case RT_HALT of
               MOVE_TO_ORP => v0
             | FORM_RT => v1
             | RT_MOVE => v2
             | RT_HALT => v3
             | COMPLETE => v4) =
            v3) ∧
         ∀v0 v1 v2 v3 v4.
           (case COMPLETE of
              MOVE_TO_ORP => v0
            | FORM_RT => v1
            | RT_MOVE => v2
            | RT_HALT => v3
            | COMPLETE => v4) =
           v4

   [state_distinct]  Theorem

      |- MOVE_TO_ORP ≠ FORM_RT ∧ MOVE_TO_ORP ≠ RT_MOVE ∧
         MOVE_TO_ORP ≠ RT_HALT ∧ MOVE_TO_ORP ≠ COMPLETE ∧
         FORM_RT ≠ RT_MOVE ∧ FORM_RT ≠ RT_HALT ∧ FORM_RT ≠ COMPLETE ∧
         RT_MOVE ≠ RT_HALT ∧ RT_MOVE ≠ COMPLETE ∧ RT_HALT ≠ COMPLETE

   [state_distinct_clauses]  Theorem

      |- MOVE_TO_ORP ≠ FORM_RT ∧ MOVE_TO_ORP ≠ RT_MOVE ∧
         MOVE_TO_ORP ≠ RT_HALT ∧ MOVE_TO_ORP ≠ COMPLETE ∧
         FORM_RT ≠ RT_MOVE ∧ FORM_RT ≠ RT_HALT ∧ FORM_RT ≠ COMPLETE ∧
         RT_MOVE ≠ RT_HALT ∧ RT_MOVE ≠ COMPLETE ∧ RT_HALT ≠ COMPLETE

   [state_induction]  Theorem

      |- ∀P.
           P COMPLETE ∧ P FORM_RT ∧ P MOVE_TO_ORP ∧ P RT_HALT ∧ P RT_MOVE ⇒
           ∀a. P a

   [state_nchotomy]  Theorem

      |- ∀a.
           (a = MOVE_TO_ORP) ∨ (a = FORM_RT) ∨ (a = RT_MOVE) ∨
           (a = RT_HALT) ∨ (a = COMPLETE)


*)
end
