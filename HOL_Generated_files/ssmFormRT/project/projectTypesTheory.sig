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
    val principal_BIJ : thm
    val principal_CASE : thm
    val principal_TY_DEF : thm
    val principal_size_def : thm
    val squadLeaderCom_BIJ : thm
    val squadLeaderCom_CASE : thm
    val squadLeaderCom_TY_DEF : thm
    val squadLeaderCom_size_def : thm
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
    val datatype_principal : thm
    val datatype_squadLeaderCom : thm
    val datatype_state : thm
    val num2omniCom_11 : thm
    val num2omniCom_ONTO : thm
    val num2omniCom_omniCom2num : thm
    val num2omniCom_thm : thm
    val num2output_11 : thm
    val num2output_ONTO : thm
    val num2output_output2num : thm
    val num2output_thm : thm
    val num2principal_11 : thm
    val num2principal_ONTO : thm
    val num2principal_principal2num : thm
    val num2principal_thm : thm
    val num2squadLeaderCom_11 : thm
    val num2squadLeaderCom_ONTO : thm
    val num2squadLeaderCom_squadLeaderCom2num : thm
    val num2squadLeaderCom_thm : thm
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
    val squadLeaderCom2num_11 : thm
    val squadLeaderCom2num_ONTO : thm
    val squadLeaderCom2num_num2squadLeaderCom : thm
    val squadLeaderCom2num_thm : thm
    val squadLeaderCom_Axiom : thm
    val squadLeaderCom_EQ_squadLeaderCom : thm
    val squadLeaderCom_case_cong : thm
    val squadLeaderCom_case_def : thm
    val squadLeaderCom_distinct : thm
    val squadLeaderCom_distinct_clauses : thm
    val squadLeaderCom_induction : thm
    val squadLeaderCom_nchotomy : thm
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

      |- (∀a f f1. commands_CASE (SquadLeaderCOM a) f f1 = f a) ∧
         ∀a f f1. commands_CASE (OmniCOM a) f f1 = f1 a

   [commands_size_def]  Definition

      |- (∀a.
            commands_size (SquadLeaderCOM a) = 1 + squadLeaderCom_size a) ∧
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
              RtPosition => v0
            | RtOrient => v1
            | RtAlert => v2
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

   [principal_BIJ]  Definition

      |- (∀a. num2principal (principal2num a) = a) ∧
         ∀r. (λn. n < 2) r ⇔ (principal2num (num2principal r) = r)

   [principal_CASE]  Definition

      |- ∀x v0 v1.
           (case x of SquadLeader => v0 | Omni => v1) =
           (λm. if m = 0 then v0 else v1) (principal2num x)

   [principal_TY_DEF]  Definition

      |- ∃rep. TYPE_DEFINITION (λn. n < 2) rep

   [principal_size_def]  Definition

      |- ∀x. principal_size x = 0

   [squadLeaderCom_BIJ]  Definition

      |- (∀a. num2squadLeaderCom (squadLeaderCom2num a) = a) ∧
         ∀r.
           (λn. n < 4) r ⇔ (squadLeaderCom2num (num2squadLeaderCom r) = r)

   [squadLeaderCom_CASE]  Definition

      |- ∀x v0 v1 v2 v3.
           (case x of
              rtPosition => v0
            | rtOrient => v1
            | rtAlert => v2
            | complete => v3) =
           (λm.
              if m < 1 then v0
              else if m < 2 then v1
              else if m = 2 then v2
              else v3) (squadLeaderCom2num x)

   [squadLeaderCom_TY_DEF]  Definition

      |- ∃rep. TYPE_DEFINITION (λn. n < 4) rep

   [squadLeaderCom_size_def]  Definition

      |- ∀x. squadLeaderCom_size x = 0

   [state_BIJ]  Definition

      |- (∀a. num2state (state2num a) = a) ∧
         ∀r. (λn. n < 5) r ⇔ (state2num (num2state r) = r)

   [state_CASE]  Definition

      |- ∀x v0 v1 v2 v3 v4.
           (case x of
              RT_FORM => v0
            | RT_POSITION => v1
            | RT_ORIENT => v2
            | RT_ALERT => v3
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

      |- (∀a a'. (SquadLeaderCOM a = SquadLeaderCOM a') ⇔ (a = a')) ∧
         ∀a a'. (OmniCOM a = OmniCOM a') ⇔ (a = a')

   [commands_Axiom]  Theorem

      |- ∀f0 f1.
           ∃fn.
             (∀a. fn (SquadLeaderCOM a) = f0 a) ∧ ∀a. fn (OmniCOM a) = f1 a

   [commands_case_cong]  Theorem

      |- ∀M M' f f1.
           (M = M') ∧ (∀a. (M' = SquadLeaderCOM a) ⇒ (f a = f' a)) ∧
           (∀a. (M' = OmniCOM a) ⇒ (f1 a = f1' a)) ⇒
           (commands_CASE M f f1 = commands_CASE M' f' f1')

   [commands_distinct]  Theorem

      |- ∀a' a. SquadLeaderCOM a ≠ OmniCOM a'

   [commands_distinct_clauses]  Theorem

      |- ∀a' a. SquadLeaderCOM a ≠ OmniCOM a'

   [commands_induction]  Theorem

      |- ∀P. (∀s. P (SquadLeaderCOM s)) ∧ (∀ $o. P (OmniCOM $o)) ⇒ ∀c. P c

   [commands_nchotomy]  Theorem

      |- ∀cc. (∃s. cc = SquadLeaderCOM s) ∨ ∃ $o. cc = OmniCOM $o

   [commands_one_one]  Theorem

      |- (∀a a'. (SquadLeaderCOM a = SquadLeaderCOM a') ⇔ (a = a')) ∧
         ∀a a'. (OmniCOM a = OmniCOM a') ⇔ (a = a')

   [datatype_commands]  Theorem

      |- DATATYPE (commands SquadLeaderCOM OmniCOM)

   [datatype_omniCom]  Theorem

      |- DATATYPE (omniCom none omniNA)

   [datatype_output]  Theorem

      |- DATATYPE
           (output RtPosition RtOrient RtAlert Complete NoActionTaken
              UnAuthenticated UnAuthorized)

   [datatype_principal]  Theorem

      |- DATATYPE (principal SquadLeader Omni)

   [datatype_squadLeaderCom]  Theorem

      |- DATATYPE (squadLeaderCom rtPosition rtOrient rtAlert complete)

   [datatype_state]  Theorem

      |- DATATYPE (state RT_FORM RT_POSITION RT_ORIENT RT_ALERT COMPLETE)

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

      |- (num2output 0 = RtPosition) ∧ (num2output 1 = RtOrient) ∧
         (num2output 2 = RtAlert) ∧ (num2output 3 = Complete) ∧
         (num2output 4 = NoActionTaken) ∧
         (num2output 5 = UnAuthenticated) ∧ (num2output 6 = UnAuthorized)

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

      |- (num2principal 0 = SquadLeader) ∧ (num2principal 1 = Omni)

   [num2squadLeaderCom_11]  Theorem

      |- ∀r r'.
           r < 4 ⇒
           r' < 4 ⇒
           ((num2squadLeaderCom r = num2squadLeaderCom r') ⇔ (r = r'))

   [num2squadLeaderCom_ONTO]  Theorem

      |- ∀a. ∃r. (a = num2squadLeaderCom r) ∧ r < 4

   [num2squadLeaderCom_squadLeaderCom2num]  Theorem

      |- ∀a. num2squadLeaderCom (squadLeaderCom2num a) = a

   [num2squadLeaderCom_thm]  Theorem

      |- (num2squadLeaderCom 0 = rtPosition) ∧
         (num2squadLeaderCom 1 = rtOrient) ∧
         (num2squadLeaderCom 2 = rtAlert) ∧
         (num2squadLeaderCom 3 = complete)

   [num2state_11]  Theorem

      |- ∀r r'. r < 5 ⇒ r' < 5 ⇒ ((num2state r = num2state r') ⇔ (r = r'))

   [num2state_ONTO]  Theorem

      |- ∀a. ∃r. (a = num2state r) ∧ r < 5

   [num2state_state2num]  Theorem

      |- ∀a. num2state (state2num a) = a

   [num2state_thm]  Theorem

      |- (num2state 0 = RT_FORM) ∧ (num2state 1 = RT_POSITION) ∧
         (num2state 2 = RT_ORIENT) ∧ (num2state 3 = RT_ALERT) ∧
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

      |- (output2num RtPosition = 0) ∧ (output2num RtOrient = 1) ∧
         (output2num RtAlert = 2) ∧ (output2num Complete = 3) ∧
         (output2num NoActionTaken = 4) ∧
         (output2num UnAuthenticated = 5) ∧ (output2num UnAuthorized = 6)

   [output_Axiom]  Theorem

      |- ∀x0 x1 x2 x3 x4 x5 x6.
           ∃f.
             (f RtPosition = x0) ∧ (f RtOrient = x1) ∧ (f RtAlert = x2) ∧
             (f Complete = x3) ∧ (f NoActionTaken = x4) ∧
             (f UnAuthenticated = x5) ∧ (f UnAuthorized = x6)

   [output_EQ_output]  Theorem

      |- ∀a a'. (a = a') ⇔ (output2num a = output2num a')

   [output_case_cong]  Theorem

      |- ∀M M' v0 v1 v2 v3 v4 v5 v6.
           (M = M') ∧ ((M' = RtPosition) ⇒ (v0 = v0')) ∧
           ((M' = RtOrient) ⇒ (v1 = v1')) ∧ ((M' = RtAlert) ⇒ (v2 = v2')) ∧
           ((M' = Complete) ⇒ (v3 = v3')) ∧
           ((M' = NoActionTaken) ⇒ (v4 = v4')) ∧
           ((M' = UnAuthenticated) ⇒ (v5 = v5')) ∧
           ((M' = UnAuthorized) ⇒ (v6 = v6')) ⇒
           ((case M of
               RtPosition => v0
             | RtOrient => v1
             | RtAlert => v2
             | Complete => v3
             | NoActionTaken => v4
             | UnAuthenticated => v5
             | UnAuthorized => v6) =
            case M' of
              RtPosition => v0'
            | RtOrient => v1'
            | RtAlert => v2'
            | Complete => v3'
            | NoActionTaken => v4'
            | UnAuthenticated => v5'
            | UnAuthorized => v6')

   [output_case_def]  Theorem

      |- (∀v0 v1 v2 v3 v4 v5 v6.
            (case RtPosition of
               RtPosition => v0
             | RtOrient => v1
             | RtAlert => v2
             | Complete => v3
             | NoActionTaken => v4
             | UnAuthenticated => v5
             | UnAuthorized => v6) =
            v0) ∧
         (∀v0 v1 v2 v3 v4 v5 v6.
            (case RtOrient of
               RtPosition => v0
             | RtOrient => v1
             | RtAlert => v2
             | Complete => v3
             | NoActionTaken => v4
             | UnAuthenticated => v5
             | UnAuthorized => v6) =
            v1) ∧
         (∀v0 v1 v2 v3 v4 v5 v6.
            (case RtAlert of
               RtPosition => v0
             | RtOrient => v1
             | RtAlert => v2
             | Complete => v3
             | NoActionTaken => v4
             | UnAuthenticated => v5
             | UnAuthorized => v6) =
            v2) ∧
         (∀v0 v1 v2 v3 v4 v5 v6.
            (case Complete of
               RtPosition => v0
             | RtOrient => v1
             | RtAlert => v2
             | Complete => v3
             | NoActionTaken => v4
             | UnAuthenticated => v5
             | UnAuthorized => v6) =
            v3) ∧
         (∀v0 v1 v2 v3 v4 v5 v6.
            (case NoActionTaken of
               RtPosition => v0
             | RtOrient => v1
             | RtAlert => v2
             | Complete => v3
             | NoActionTaken => v4
             | UnAuthenticated => v5
             | UnAuthorized => v6) =
            v4) ∧
         (∀v0 v1 v2 v3 v4 v5 v6.
            (case UnAuthenticated of
               RtPosition => v0
             | RtOrient => v1
             | RtAlert => v2
             | Complete => v3
             | NoActionTaken => v4
             | UnAuthenticated => v5
             | UnAuthorized => v6) =
            v5) ∧
         ∀v0 v1 v2 v3 v4 v5 v6.
           (case UnAuthorized of
              RtPosition => v0
            | RtOrient => v1
            | RtAlert => v2
            | Complete => v3
            | NoActionTaken => v4
            | UnAuthenticated => v5
            | UnAuthorized => v6) =
           v6

   [output_distinct]  Theorem

      |- RtPosition ≠ RtOrient ∧ RtPosition ≠ RtAlert ∧
         RtPosition ≠ Complete ∧ RtPosition ≠ NoActionTaken ∧
         RtPosition ≠ UnAuthenticated ∧ RtPosition ≠ UnAuthorized ∧
         RtOrient ≠ RtAlert ∧ RtOrient ≠ Complete ∧
         RtOrient ≠ NoActionTaken ∧ RtOrient ≠ UnAuthenticated ∧
         RtOrient ≠ UnAuthorized ∧ RtAlert ≠ Complete ∧
         RtAlert ≠ NoActionTaken ∧ RtAlert ≠ UnAuthenticated ∧
         RtAlert ≠ UnAuthorized ∧ Complete ≠ NoActionTaken ∧
         Complete ≠ UnAuthenticated ∧ Complete ≠ UnAuthorized ∧
         NoActionTaken ≠ UnAuthenticated ∧ NoActionTaken ≠ UnAuthorized ∧
         UnAuthenticated ≠ UnAuthorized

   [output_distinct_clauses]  Theorem

      |- RtPosition ≠ RtOrient ∧ RtPosition ≠ RtAlert ∧
         RtPosition ≠ Complete ∧ RtPosition ≠ NoActionTaken ∧
         RtPosition ≠ UnAuthenticated ∧ RtPosition ≠ UnAuthorized ∧
         RtOrient ≠ RtAlert ∧ RtOrient ≠ Complete ∧
         RtOrient ≠ NoActionTaken ∧ RtOrient ≠ UnAuthenticated ∧
         RtOrient ≠ UnAuthorized ∧ RtAlert ≠ Complete ∧
         RtAlert ≠ NoActionTaken ∧ RtAlert ≠ UnAuthenticated ∧
         RtAlert ≠ UnAuthorized ∧ Complete ≠ NoActionTaken ∧
         Complete ≠ UnAuthenticated ∧ Complete ≠ UnAuthorized ∧
         NoActionTaken ≠ UnAuthenticated ∧ NoActionTaken ≠ UnAuthorized ∧
         UnAuthenticated ≠ UnAuthorized

   [output_induction]  Theorem

      |- ∀P.
           P Complete ∧ P NoActionTaken ∧ P RtAlert ∧ P RtOrient ∧
           P RtPosition ∧ P UnAuthenticated ∧ P UnAuthorized ⇒
           ∀a. P a

   [output_nchotomy]  Theorem

      |- ∀a.
           (a = RtPosition) ∨ (a = RtOrient) ∨ (a = RtAlert) ∨
           (a = Complete) ∨ (a = NoActionTaken) ∨ (a = UnAuthenticated) ∨
           (a = UnAuthorized)

   [principal2num_11]  Theorem

      |- ∀a a'. (principal2num a = principal2num a') ⇔ (a = a')

   [principal2num_ONTO]  Theorem

      |- ∀r. r < 2 ⇔ ∃a. r = principal2num a

   [principal2num_num2principal]  Theorem

      |- ∀r. r < 2 ⇔ (principal2num (num2principal r) = r)

   [principal2num_thm]  Theorem

      |- (principal2num SquadLeader = 0) ∧ (principal2num Omni = 1)

   [principal_Axiom]  Theorem

      |- ∀x0 x1. ∃f. (f SquadLeader = x0) ∧ (f Omni = x1)

   [principal_EQ_principal]  Theorem

      |- ∀a a'. (a = a') ⇔ (principal2num a = principal2num a')

   [principal_case_cong]  Theorem

      |- ∀M M' v0 v1.
           (M = M') ∧ ((M' = SquadLeader) ⇒ (v0 = v0')) ∧
           ((M' = Omni) ⇒ (v1 = v1')) ⇒
           ((case M of SquadLeader => v0 | Omni => v1) =
            case M' of SquadLeader => v0' | Omni => v1')

   [principal_case_def]  Theorem

      |- (∀v0 v1.
            (case SquadLeader of SquadLeader => v0 | Omni => v1) = v0) ∧
         ∀v0 v1. (case Omni of SquadLeader => v0 | Omni => v1) = v1

   [principal_distinct]  Theorem

      |- SquadLeader ≠ Omni

   [principal_distinct_clauses]  Theorem

      |- SquadLeader ≠ Omni

   [principal_induction]  Theorem

      |- ∀P. P Omni ∧ P SquadLeader ⇒ ∀a. P a

   [principal_nchotomy]  Theorem

      |- ∀a. (a = SquadLeader) ∨ (a = Omni)

   [squadLeaderCom2num_11]  Theorem

      |- ∀a a'. (squadLeaderCom2num a = squadLeaderCom2num a') ⇔ (a = a')

   [squadLeaderCom2num_ONTO]  Theorem

      |- ∀r. r < 4 ⇔ ∃a. r = squadLeaderCom2num a

   [squadLeaderCom2num_num2squadLeaderCom]  Theorem

      |- ∀r. r < 4 ⇔ (squadLeaderCom2num (num2squadLeaderCom r) = r)

   [squadLeaderCom2num_thm]  Theorem

      |- (squadLeaderCom2num rtPosition = 0) ∧
         (squadLeaderCom2num rtOrient = 1) ∧
         (squadLeaderCom2num rtAlert = 2) ∧
         (squadLeaderCom2num complete = 3)

   [squadLeaderCom_Axiom]  Theorem

      |- ∀x0 x1 x2 x3.
           ∃f.
             (f rtPosition = x0) ∧ (f rtOrient = x1) ∧ (f rtAlert = x2) ∧
             (f complete = x3)

   [squadLeaderCom_EQ_squadLeaderCom]  Theorem

      |- ∀a a'. (a = a') ⇔ (squadLeaderCom2num a = squadLeaderCom2num a')

   [squadLeaderCom_case_cong]  Theorem

      |- ∀M M' v0 v1 v2 v3.
           (M = M') ∧ ((M' = rtPosition) ⇒ (v0 = v0')) ∧
           ((M' = rtOrient) ⇒ (v1 = v1')) ∧ ((M' = rtAlert) ⇒ (v2 = v2')) ∧
           ((M' = complete) ⇒ (v3 = v3')) ⇒
           ((case M of
               rtPosition => v0
             | rtOrient => v1
             | rtAlert => v2
             | complete => v3) =
            case M' of
              rtPosition => v0'
            | rtOrient => v1'
            | rtAlert => v2'
            | complete => v3')

   [squadLeaderCom_case_def]  Theorem

      |- (∀v0 v1 v2 v3.
            (case rtPosition of
               rtPosition => v0
             | rtOrient => v1
             | rtAlert => v2
             | complete => v3) =
            v0) ∧
         (∀v0 v1 v2 v3.
            (case rtOrient of
               rtPosition => v0
             | rtOrient => v1
             | rtAlert => v2
             | complete => v3) =
            v1) ∧
         (∀v0 v1 v2 v3.
            (case rtAlert of
               rtPosition => v0
             | rtOrient => v1
             | rtAlert => v2
             | complete => v3) =
            v2) ∧
         ∀v0 v1 v2 v3.
           (case complete of
              rtPosition => v0
            | rtOrient => v1
            | rtAlert => v2
            | complete => v3) =
           v3

   [squadLeaderCom_distinct]  Theorem

      |- rtPosition ≠ rtOrient ∧ rtPosition ≠ rtAlert ∧
         rtPosition ≠ complete ∧ rtOrient ≠ rtAlert ∧ rtOrient ≠ complete ∧
         rtAlert ≠ complete

   [squadLeaderCom_distinct_clauses]  Theorem

      |- rtPosition ≠ rtOrient ∧ rtPosition ≠ rtAlert ∧
         rtPosition ≠ complete ∧ rtOrient ≠ rtAlert ∧ rtOrient ≠ complete ∧
         rtAlert ≠ complete

   [squadLeaderCom_induction]  Theorem

      |- ∀P. P complete ∧ P rtAlert ∧ P rtOrient ∧ P rtPosition ⇒ ∀a. P a

   [squadLeaderCom_nchotomy]  Theorem

      |- ∀a.
           (a = rtPosition) ∨ (a = rtOrient) ∨ (a = rtAlert) ∨
           (a = complete)

   [state2num_11]  Theorem

      |- ∀a a'. (state2num a = state2num a') ⇔ (a = a')

   [state2num_ONTO]  Theorem

      |- ∀r. r < 5 ⇔ ∃a. r = state2num a

   [state2num_num2state]  Theorem

      |- ∀r. r < 5 ⇔ (state2num (num2state r) = r)

   [state2num_thm]  Theorem

      |- (state2num RT_FORM = 0) ∧ (state2num RT_POSITION = 1) ∧
         (state2num RT_ORIENT = 2) ∧ (state2num RT_ALERT = 3) ∧
         (state2num COMPLETE = 4)

   [state_Axiom]  Theorem

      |- ∀x0 x1 x2 x3 x4.
           ∃f.
             (f RT_FORM = x0) ∧ (f RT_POSITION = x1) ∧ (f RT_ORIENT = x2) ∧
             (f RT_ALERT = x3) ∧ (f COMPLETE = x4)

   [state_EQ_state]  Theorem

      |- ∀a a'. (a = a') ⇔ (state2num a = state2num a')

   [state_case_cong]  Theorem

      |- ∀M M' v0 v1 v2 v3 v4.
           (M = M') ∧ ((M' = RT_FORM) ⇒ (v0 = v0')) ∧
           ((M' = RT_POSITION) ⇒ (v1 = v1')) ∧
           ((M' = RT_ORIENT) ⇒ (v2 = v2')) ∧
           ((M' = RT_ALERT) ⇒ (v3 = v3')) ∧
           ((M' = COMPLETE) ⇒ (v4 = v4')) ⇒
           ((case M of
               RT_FORM => v0
             | RT_POSITION => v1
             | RT_ORIENT => v2
             | RT_ALERT => v3
             | COMPLETE => v4) =
            case M' of
              RT_FORM => v0'
            | RT_POSITION => v1'
            | RT_ORIENT => v2'
            | RT_ALERT => v3'
            | COMPLETE => v4')

   [state_case_def]  Theorem

      |- (∀v0 v1 v2 v3 v4.
            (case RT_FORM of
               RT_FORM => v0
             | RT_POSITION => v1
             | RT_ORIENT => v2
             | RT_ALERT => v3
             | COMPLETE => v4) =
            v0) ∧
         (∀v0 v1 v2 v3 v4.
            (case RT_POSITION of
               RT_FORM => v0
             | RT_POSITION => v1
             | RT_ORIENT => v2
             | RT_ALERT => v3
             | COMPLETE => v4) =
            v1) ∧
         (∀v0 v1 v2 v3 v4.
            (case RT_ORIENT of
               RT_FORM => v0
             | RT_POSITION => v1
             | RT_ORIENT => v2
             | RT_ALERT => v3
             | COMPLETE => v4) =
            v2) ∧
         (∀v0 v1 v2 v3 v4.
            (case RT_ALERT of
               RT_FORM => v0
             | RT_POSITION => v1
             | RT_ORIENT => v2
             | RT_ALERT => v3
             | COMPLETE => v4) =
            v3) ∧
         ∀v0 v1 v2 v3 v4.
           (case COMPLETE of
              RT_FORM => v0
            | RT_POSITION => v1
            | RT_ORIENT => v2
            | RT_ALERT => v3
            | COMPLETE => v4) =
           v4

   [state_distinct]  Theorem

      |- RT_FORM ≠ RT_POSITION ∧ RT_FORM ≠ RT_ORIENT ∧ RT_FORM ≠ RT_ALERT ∧
         RT_FORM ≠ COMPLETE ∧ RT_POSITION ≠ RT_ORIENT ∧
         RT_POSITION ≠ RT_ALERT ∧ RT_POSITION ≠ COMPLETE ∧
         RT_ORIENT ≠ RT_ALERT ∧ RT_ORIENT ≠ COMPLETE ∧ RT_ALERT ≠ COMPLETE

   [state_distinct_clauses]  Theorem

      |- RT_FORM ≠ RT_POSITION ∧ RT_FORM ≠ RT_ORIENT ∧ RT_FORM ≠ RT_ALERT ∧
         RT_FORM ≠ COMPLETE ∧ RT_POSITION ≠ RT_ORIENT ∧
         RT_POSITION ≠ RT_ALERT ∧ RT_POSITION ≠ COMPLETE ∧
         RT_ORIENT ≠ RT_ALERT ∧ RT_ORIENT ≠ COMPLETE ∧ RT_ALERT ≠ COMPLETE

   [state_induction]  Theorem

      |- ∀P.
           P COMPLETE ∧ P RT_ALERT ∧ P RT_FORM ∧ P RT_ORIENT ∧
           P RT_POSITION ⇒
           ∀a. P a

   [state_nchotomy]  Theorem

      |- ∀a.
           (a = RT_FORM) ∨ (a = RT_POSITION) ∨ (a = RT_ORIENT) ∨
           (a = RT_ALERT) ∨ (a = COMPLETE)


*)
end
