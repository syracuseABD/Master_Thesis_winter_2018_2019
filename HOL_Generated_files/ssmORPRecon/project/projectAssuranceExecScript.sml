(******************************************************************************)
(* projectAssuranceExecScript.sml                                             *)
(* Date: 1 August 2018                                                        *)
(* Author: Assured Things by Design: Lori Pickering, Keara Hill, and Keaten   *)
(* Stokke                                                                     *)
(* Description: This file contains the proofs for complete mediation. In      *)
(* particular, these proofs prove that a transition is executed if and only   *)
(* if the input is authenticated and authorized.                              *)
(* Project Description: ssmORPRecon.                                          *)
(******************************************************************************)
structure projectAssuranceExecScript = struct

open  HolKernel Parse boolLib bossLib TypeBase TypeBase listTheory optionTheory
open  acl_infRules aclrulesTheory aclDrulesTheory satListTheory ssmTheory
open  ssminfRules projectTypesTheory projectUtilitiesTheory projectSecurityTheory
open  satListTheory bossLib

val _= new_theory "projectAssuranceExec";

(******************************************************************************)
(* State: ORP_RECON                                                           *)
(******************************************************************************)
(*----------------------------------------------------------------------------*)
(* Execute trasition justified:                                               *)
(* ORP_RECON --> CONTINGENCY_PLAN                                             *)
(*----------------------------------------------------------------------------*)
val helper1 = ISPECL
[
``authentication:(commands option,principal,'d,'e)Form -> bool``,
``globalAuth:(commands option,principal,'d,'e)Form list -> 
(commands option,principal,'d,'e)Form list``,
``stateAuth: state ->
(commands option,principal,'d,'e)Form list -> 
(commands option,principal,'d,'e)Form list``,
``[(Name PlatoonLeader) says (prop (SOME (PlatoonLeaderCOM contingencyPlan)))
:(commands option,principal,'d,'e)Form]``,
``ins:(commands option,principal,'d,'e)Form list list``,
``ORP_RECON``,
``outs:commands option list trType list``
] TR_exec_cmd_rule

val helper2 = fst(dest_imp(concl helper1))

val ORP_RECON_exec_contingencyPlan_lemma1 =
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

val _= save_thm("ORP_RECON_exec_contingencyPlan_lemma1",
                 ORP_RECON_exec_contingencyPlan_lemma1)


val helper3 = snd(dest_imp(concl helper1))

val ORP_RECON_exec_contingencyPlan_lemma2 =
TAC_PROOF(
([],helper3),
PROVE_TAC[
ORP_RECON_exec_contingencyPlan_lemma1,
TR_exec_cmd_rule]
)

val _= save_thm("ORP_RECON_exec_contingencyPlan_lemma2",
                 ORP_RECON_exec_contingencyPlan_lemma2)


val ORP_RECON_exec_contingencyPlan_thm =
REWRITE_RULE[
propCommandList_def, inputList_def, extractPropCommand_def, extractInput_def,
MAP
] ORP_RECON_exec_contingencyPlan_lemma2

val _= save_thm("ORP_RECON_exec_contingencyPlan_thm",
                 ORP_RECON_exec_contingencyPlan_thm)


(******************************************************************************)
(* State: CONTINGENCY_PLAN                                                    *)
(******************************************************************************)
(*----------------------------------------------------------------------------*)
(* Execute trasition justified:                                               *)
(* CONTINGENCY_PLAN --> MOVE_TO_ORP                                           *)
(*----------------------------------------------------------------------------*)
val helper1 = ISPECL
[
``authentication:(commands option,principal,'d,'e)Form -> bool``,
``globalAuth:(commands option,principal,'d,'e)Form list -> 
(commands option,principal,'d,'e)Form list``,
``stateAuth: state ->
(commands option,principal,'d,'e)Form list -> 
(commands option,principal,'d,'e)Form list``,
``[(Name PlatoonLeader) says (prop (SOME (PlatoonLeaderCOM moveToORP)))
:(commands option,principal,'d,'e)Form]``,
``ins:(commands option,principal,'d,'e)Form list list``,
``CONTINGENCY_PLAN``,
``outs:commands option list trType list``
] TR_exec_cmd_rule

val helper2 = fst(dest_imp(concl helper1))

val CONTINGENCY_PLAN_exec_moveToORP_lemma1 =
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

val _= save_thm("CONTINGENCY_PLAN_exec_moveToORP_lemma1",
                 CONTINGENCY_PLAN_exec_moveToORP_lemma1)


val helper3 = snd(dest_imp(concl helper1))

val CONTINGENCY_PLAN_exec_moveToORP_lemma2 =
TAC_PROOF(
([],helper3),
PROVE_TAC[
CONTINGENCY_PLAN_exec_moveToORP_lemma1,
TR_exec_cmd_rule]
)

val _= save_thm("CONTINGENCY_PLAN_exec_moveToORP_lemma2",
                 CONTINGENCY_PLAN_exec_moveToORP_lemma2)


val CONTINGENCY_PLAN_exec_moveToORP_thm =
REWRITE_RULE[
propCommandList_def, inputList_def, extractPropCommand_def, extractInput_def,
MAP
] CONTINGENCY_PLAN_exec_moveToORP_lemma2

val _= save_thm("CONTINGENCY_PLAN_exec_moveToORP_thm",
                 CONTINGENCY_PLAN_exec_moveToORP_thm)


(******************************************************************************)
(* State: MOVE_TO_ORP                                                         *)
(******************************************************************************)
(*----------------------------------------------------------------------------*)
(* Execute trasition justified:                                               *)
(* MOVE_TO_ORP --> CONDUCT_ORP                                                *)
(*----------------------------------------------------------------------------*)
val helper1 = ISPECL
[
``authentication:(commands option,principal,'d,'e)Form -> bool``,
``globalAuth:(commands option,principal,'d,'e)Form list -> 
(commands option,principal,'d,'e)Form list``,
``stateAuth: state ->
(commands option,principal,'d,'e)Form list -> 
(commands option,principal,'d,'e)Form list``,
``[(Name PlatoonLeader) says (prop (SOME (PlatoonLeaderCOM conductORP)))
:(commands option,principal,'d,'e)Form]``,
``ins:(commands option,principal,'d,'e)Form list list``,
``MOVE_TO_ORP``,
``outs:commands option list trType list``
] TR_exec_cmd_rule

val helper2 = fst(dest_imp(concl helper1))

val MOVE_TO_ORP_exec_conductORP_lemma1 =
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

val _= save_thm("MOVE_TO_ORP_exec_conductORP_lemma1",
                 MOVE_TO_ORP_exec_conductORP_lemma1)


val helper3 = snd(dest_imp(concl helper1))

val MOVE_TO_ORP_exec_conductORP_lemma2 =
TAC_PROOF(
([],helper3),
PROVE_TAC[
MOVE_TO_ORP_exec_conductORP_lemma1,
TR_exec_cmd_rule]
)

val _= save_thm("MOVE_TO_ORP_exec_conductORP_lemma2",
                 MOVE_TO_ORP_exec_conductORP_lemma2)


val MOVE_TO_ORP_exec_conductORP_thm =
REWRITE_RULE[
propCommandList_def, inputList_def, extractPropCommand_def, extractInput_def,
MAP
] MOVE_TO_ORP_exec_conductORP_lemma2

val _= save_thm("MOVE_TO_ORP_exec_conductORP_thm",
                 MOVE_TO_ORP_exec_conductORP_thm)


(******************************************************************************)
(* State: CONDUCT_ORP                                                         *)
(******************************************************************************)
(*----------------------------------------------------------------------------*)
(* Execute trasition justified:                                               *)
(* CONDUCT_ORP --> FORM_ST                                                    *)
(*----------------------------------------------------------------------------*)
val helper1 = ISPECL
[
``authentication:(commands option,principal,'d,'e)Form -> bool``,
``globalAuth:(commands option,principal,'d,'e)Form list -> 
(commands option,principal,'d,'e)Form list``,
``stateAuth: state ->
(commands option,principal,'d,'e)Form list -> 
(commands option,principal,'d,'e)Form list``,
``[(Name PlatoonLeader) says (prop (SOME (PlatoonLeaderCOM formST)))
:(commands option,principal,'d,'e)Form]``,
``ins:(commands option,principal,'d,'e)Form list list``,
``CONDUCT_ORP``,
``outs:commands option list trType list``
] TR_exec_cmd_rule

val helper2 = fst(dest_imp(concl helper1))

val CONDUCT_ORP_exec_formST_lemma1 =
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

val _= save_thm("CONDUCT_ORP_exec_formST_lemma1",
                 CONDUCT_ORP_exec_formST_lemma1)


val helper3 = snd(dest_imp(concl helper1))

val CONDUCT_ORP_exec_formST_lemma2 =
TAC_PROOF(
([],helper3),
PROVE_TAC[
CONDUCT_ORP_exec_formST_lemma1,
TR_exec_cmd_rule]
)

val _= save_thm("CONDUCT_ORP_exec_formST_lemma2",
                 CONDUCT_ORP_exec_formST_lemma2)


val CONDUCT_ORP_exec_formST_thm =
REWRITE_RULE[
propCommandList_def, inputList_def, extractPropCommand_def, extractInput_def,
MAP
] CONDUCT_ORP_exec_formST_lemma2

val _= save_thm("CONDUCT_ORP_exec_formST_thm",
                 CONDUCT_ORP_exec_formST_thm)


(******************************************************************************)
(* State: FORM_ST                                                             *)
(******************************************************************************)
(*----------------------------------------------------------------------------*)
(* Execute trasition justified:                                               *)
(* FORM_ST --> RETURN_TO_UNIT                                                 *)
(*----------------------------------------------------------------------------*)
val helper1 = ISPECL
[
``authentication:(commands option,principal,'d,'e)Form -> bool``,
``globalAuth:(commands option,principal,'d,'e)Form list -> 
(commands option,principal,'d,'e)Form list``,
``stateAuth: state ->
(commands option,principal,'d,'e)Form list -> 
(commands option,principal,'d,'e)Form list``,
``[(Name PlatoonLeader) says (prop (SOME (PlatoonLeaderCOM returnToUnit)))
:(commands option,principal,'d,'e)Form]``,
``ins:(commands option,principal,'d,'e)Form list list``,
``FORM_ST``,
``outs:commands option list trType list``
] TR_exec_cmd_rule

val helper2 = fst(dest_imp(concl helper1))

val FORM_ST_exec_returnToUnit_lemma1 =
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

val _= save_thm("FORM_ST_exec_returnToUnit_lemma1",
                 FORM_ST_exec_returnToUnit_lemma1)


val helper3 = snd(dest_imp(concl helper1))

val FORM_ST_exec_returnToUnit_lemma2 =
TAC_PROOF(
([],helper3),
PROVE_TAC[
FORM_ST_exec_returnToUnit_lemma1,
TR_exec_cmd_rule]
)

val _= save_thm("FORM_ST_exec_returnToUnit_lemma2",
                 FORM_ST_exec_returnToUnit_lemma2)


val FORM_ST_exec_returnToUnit_thm =
REWRITE_RULE[
propCommandList_def, inputList_def, extractPropCommand_def, extractInput_def,
MAP
] FORM_ST_exec_returnToUnit_lemma2

val _= save_thm("FORM_ST_exec_returnToUnit_thm",
                 FORM_ST_exec_returnToUnit_thm)


(******************************************************************************)
(* State: RETURN_TO_UNIT                                                      *)
(******************************************************************************)
(*----------------------------------------------------------------------------*)
(* Execute trasition justified:                                               *)
(* RETURN_TO_UNIT --> COMPLETE                                                *)
(*----------------------------------------------------------------------------*)
val helper1 = ISPECL
[
``authentication:(commands option,principal,'d,'e)Form -> bool``,
``globalAuth:(commands option,principal,'d,'e)Form list -> 
(commands option,principal,'d,'e)Form list``,
``stateAuth: state ->
(commands option,principal,'d,'e)Form list -> 
(commands option,principal,'d,'e)Form list``,
``[(Name PlatoonLeader) says (prop (SOME (PlatoonLeaderCOM complete)))
:(commands option,principal,'d,'e)Form]``,
``ins:(commands option,principal,'d,'e)Form list list``,
``RETURN_TO_UNIT``,
``outs:commands option list trType list``
] TR_exec_cmd_rule

val helper2 = fst(dest_imp(concl helper1))

val RETURN_TO_UNIT_exec_complete_lemma1 =
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

val _= save_thm("RETURN_TO_UNIT_exec_complete_lemma1",
                 RETURN_TO_UNIT_exec_complete_lemma1)


val helper3 = snd(dest_imp(concl helper1))

val RETURN_TO_UNIT_exec_complete_lemma2 =
TAC_PROOF(
([],helper3),
PROVE_TAC[
RETURN_TO_UNIT_exec_complete_lemma1,
TR_exec_cmd_rule]
)

val _= save_thm("RETURN_TO_UNIT_exec_complete_lemma2",
                 RETURN_TO_UNIT_exec_complete_lemma2)


val RETURN_TO_UNIT_exec_complete_thm =
REWRITE_RULE[
propCommandList_def, inputList_def, extractPropCommand_def, extractInput_def,
MAP
] RETURN_TO_UNIT_exec_complete_lemma2

val _= save_thm("RETURN_TO_UNIT_exec_complete_thm",
                 RETURN_TO_UNIT_exec_complete_thm)


val _= export_theory();
end
