(******************************************************************************)
(* projectAssuranceExecScript.sml                                             *)
(* Date: 1 August 2018                                                        *)
(* Author: Assured Things by Design: Lori Pickering, Keara Hill, and Keaten   *)
(* Stokke                                                                     *)
(* Description: This file contains the proofs for complete mediation. In      *)
(* particular, these proofs prove that a transition is executed if and only   *)
(* if the input is authenticated and authorized.                              *)
(* Project Description: ssmMoveToPB.                                          *)
(******************************************************************************)
structure projectAssuranceExecScript = struct

open  HolKernel Parse boolLib bossLib TypeBase TypeBase listTheory optionTheory
open  acl_infRules aclrulesTheory aclDrulesTheory satListTheory ssmTheory
open  ssminfRules projectTypesTheory projectUtilitiesTheory projectSecurityTheory
open  satListTheory bossLib

val _= new_theory "projectAssuranceExec";

(******************************************************************************)
(* State: MOVE_TO_PB                                                          *)
(******************************************************************************)
(*----------------------------------------------------------------------------*)
(* Execute trasition justified:                                               *)
(* MOVE_TO_PB --> FORM                                                        *)
(*----------------------------------------------------------------------------*)
val helper1 = ISPECL
[
``authentication:(commands option,principal,'d,'e)Form -> bool``,
``globalAuth:(commands option,principal,'d,'e)Form list -> 
(commands option,principal,'d,'e)Form list``,
``stateAuth: state ->
(commands option,principal,'d,'e)Form list -> 
(commands option,principal,'d,'e)Form list``,
``[(Name PlatoonLeader) says (prop (SOME (PlatoonLeaderCOM form)))
:(commands option,principal,'d,'e)Form]``,
``ins:(commands option,principal,'d,'e)Form list list``,
``MOVE_TO_PB``,
``outs:commands option list trType list``
] TR_exec_cmd_rule

val helper2 = fst(dest_imp(concl helper1))

val MOVE_TO_PB_exec_form_lemma1 =
TAC_PROOF(
([],helper2),
REWRITE_TAC[
CFGInterpret_def, globalAuth_def, stateAuth_def, getPlatoonLeaderCOM_def,
getOmniCOM_def, getPlatoonLeaderCOMx_def, getOmniCOMx_def, inputList_def,
extractInput_def, MAP, propCommandList_def, extractPropCommand_def,
satList_CONS, satList_nil,
GSYM satList_conj]
THEN
REWRITE_TAC[
NOT_NONE_SOME, NOT_SOME_NONE, SOME_11, state_distinct_clauses,
output_distinct_clauses, commands_distinct_clauses,
principal_distinct_clauses, platoonLeaderCom_distinct_clauses,
omniCom_distinct_clauses, commands_one_one,
GSYM state_distinct_clauses,
GSYM output_distinct_clauses,
GSYM commands_distinct_clauses,
GSYM principal_distinct_clauses,
GSYM platoonLeaderCom_distinct_clauses,
GSYM omniCom_distinct_clauses]
THEN
REWRITE_TAC[
satList_CONS, satList_nil]
THEN
PROVE_TAC[
Controls, Modus_Ponens]
)

val _= save_thm("MOVE_TO_PB_exec_form_lemma1",
                 MOVE_TO_PB_exec_form_lemma1)


val helper3 = snd(dest_imp(concl helper1))

val MOVE_TO_PB_exec_form_lemma2 =
TAC_PROOF(
([],helper3),
PROVE_TAC[
MOVE_TO_PB_exec_form_lemma1,
TR_exec_cmd_rule]
)

val _= save_thm("MOVE_TO_PB_exec_form_lemma2",
                 MOVE_TO_PB_exec_form_lemma2)


val MOVE_TO_PB_exec_form_thm =
REWRITE_RULE[
propCommandList_def, inputList_def, extractPropCommand_def, extractInput_def,
MAP
] MOVE_TO_PB_exec_form_lemma2

val _= save_thm("MOVE_TO_PB_exec_form_thm",
                 MOVE_TO_PB_exec_form_thm)


(******************************************************************************)
(* State: FORM                                                                *)
(******************************************************************************)
(*----------------------------------------------------------------------------*)
(* Execute trasition justified:                                               *)
(* FORM --> MOVE                                                              *)
(*----------------------------------------------------------------------------*)
val helper1 = ISPECL
[
``authentication:(commands option,principal,'d,'e)Form -> bool``,
``globalAuth:(commands option,principal,'d,'e)Form list -> 
(commands option,principal,'d,'e)Form list``,
``stateAuth: state ->
(commands option,principal,'d,'e)Form list -> 
(commands option,principal,'d,'e)Form list``,
``[(Name PlatoonLeader) says (prop (SOME (PlatoonLeaderCOM move)))
:(commands option,principal,'d,'e)Form]``,
``ins:(commands option,principal,'d,'e)Form list list``,
``FORM``,
``outs:commands option list trType list``
] TR_exec_cmd_rule

val helper2 = fst(dest_imp(concl helper1))

val FORM_exec_move_lemma1 =
TAC_PROOF(
([],helper2),
REWRITE_TAC[
CFGInterpret_def, globalAuth_def, stateAuth_def, getPlatoonLeaderCOM_def,
getOmniCOM_def, getPlatoonLeaderCOMx_def, getOmniCOMx_def, inputList_def,
extractInput_def, MAP, propCommandList_def, extractPropCommand_def,
satList_CONS, satList_nil,
GSYM satList_conj]
THEN
REWRITE_TAC[
NOT_NONE_SOME, NOT_SOME_NONE, SOME_11, state_distinct_clauses,
output_distinct_clauses, commands_distinct_clauses,
principal_distinct_clauses, platoonLeaderCom_distinct_clauses,
omniCom_distinct_clauses, commands_one_one,
GSYM state_distinct_clauses,
GSYM output_distinct_clauses,
GSYM commands_distinct_clauses,
GSYM principal_distinct_clauses,
GSYM platoonLeaderCom_distinct_clauses,
GSYM omniCom_distinct_clauses]
THEN
REWRITE_TAC[
satList_CONS, satList_nil]
THEN
PROVE_TAC[
Controls, Modus_Ponens]
)

val _= save_thm("FORM_exec_move_lemma1",
                 FORM_exec_move_lemma1)


val helper3 = snd(dest_imp(concl helper1))

val FORM_exec_move_lemma2 =
TAC_PROOF(
([],helper3),
PROVE_TAC[
FORM_exec_move_lemma1,
TR_exec_cmd_rule]
)

val _= save_thm("FORM_exec_move_lemma2",
                 FORM_exec_move_lemma2)


val FORM_exec_move_thm =
REWRITE_RULE[
propCommandList_def, inputList_def, extractPropCommand_def, extractInput_def,
MAP
] FORM_exec_move_lemma2

val _= save_thm("FORM_exec_move_thm",
                 FORM_exec_move_thm)


(******************************************************************************)
(* State: MOVE                                                                *)
(******************************************************************************)
(*----------------------------------------------------------------------------*)
(* Execute trasition justified:                                               *)
(* MOVE --> SECURE_HALT                                                       *)
(*----------------------------------------------------------------------------*)
val helper1 = ISPECL
[
``authentication:(commands option,principal,'d,'e)Form -> bool``,
``globalAuth:(commands option,principal,'d,'e)Form list -> 
(commands option,principal,'d,'e)Form list``,
``stateAuth: state ->
(commands option,principal,'d,'e)Form list -> 
(commands option,principal,'d,'e)Form list``,
``[(Name PlatoonLeader) says (prop (SOME (PlatoonLeaderCOM secureHalt)))
:(commands option,principal,'d,'e)Form]``,
``ins:(commands option,principal,'d,'e)Form list list``,
``MOVE``,
``outs:commands option list trType list``
] TR_exec_cmd_rule

val helper2 = fst(dest_imp(concl helper1))

val MOVE_exec_secureHalt_lemma1 =
TAC_PROOF(
([],helper2),
REWRITE_TAC[
CFGInterpret_def, globalAuth_def, stateAuth_def, getPlatoonLeaderCOM_def,
getOmniCOM_def, getPlatoonLeaderCOMx_def, getOmniCOMx_def, inputList_def,
extractInput_def, MAP, propCommandList_def, extractPropCommand_def,
satList_CONS, satList_nil,
GSYM satList_conj]
THEN
REWRITE_TAC[
NOT_NONE_SOME, NOT_SOME_NONE, SOME_11, state_distinct_clauses,
output_distinct_clauses, commands_distinct_clauses,
principal_distinct_clauses, platoonLeaderCom_distinct_clauses,
omniCom_distinct_clauses, commands_one_one,
GSYM state_distinct_clauses,
GSYM output_distinct_clauses,
GSYM commands_distinct_clauses,
GSYM principal_distinct_clauses,
GSYM platoonLeaderCom_distinct_clauses,
GSYM omniCom_distinct_clauses]
THEN
REWRITE_TAC[
satList_CONS, satList_nil]
THEN
PROVE_TAC[
Controls, Modus_Ponens]
)

val _= save_thm("MOVE_exec_secureHalt_lemma1",
                 MOVE_exec_secureHalt_lemma1)


val helper3 = snd(dest_imp(concl helper1))

val MOVE_exec_secureHalt_lemma2 =
TAC_PROOF(
([],helper3),
PROVE_TAC[
MOVE_exec_secureHalt_lemma1,
TR_exec_cmd_rule]
)

val _= save_thm("MOVE_exec_secureHalt_lemma2",
                 MOVE_exec_secureHalt_lemma2)


val MOVE_exec_secureHalt_thm =
REWRITE_RULE[
propCommandList_def, inputList_def, extractPropCommand_def, extractInput_def,
MAP
] MOVE_exec_secureHalt_lemma2

val _= save_thm("MOVE_exec_secureHalt_thm",
                 MOVE_exec_secureHalt_thm)


val _= export_theory();
end
