(******************************************************************************)
(* projectAssuranceExecScript.sml                                             *)
(* Date: 1 August 2018                                                        *)
(* Author: Assured Things by Design: Lori Pickering, Keara Hill, and Keaten   *)
(* Stokke                                                                     *)
(* Description: This file contains the proofs for complete mediation. In      *)
(* particular, these proofs prove that a transition is executed if and only   *)
(* if the input is authenticated and authorized.                              *)
(* Project Description: ssmFormRT.                                            *)
(******************************************************************************)
structure projectAssuranceExecScript = struct

open  HolKernel Parse boolLib bossLib TypeBase TypeBase listTheory optionTheory
open  acl_infRules aclrulesTheory aclDrulesTheory satListTheory ssmTheory
open  ssminfRules projectTypesTheory projectUtilitiesTheory projectSecurityTheory
open  satListTheory bossLib

val _= new_theory "projectAssuranceExec";

(******************************************************************************)
(* State: RT_FORM                                                             *)
(******************************************************************************)
(*----------------------------------------------------------------------------*)
(* Execute trasition justified:                                               *)
(* RT_FORM --> RT_POSITION                                                    *)
(*----------------------------------------------------------------------------*)
val helper1 = ISPECL
[
``authentication:(commands option,principal,'d,'e)Form -> bool``,
``globalAuth:(commands option,principal,'d,'e)Form list -> 
(commands option,principal,'d,'e)Form list``,
``stateAuth: state ->
(commands option,principal,'d,'e)Form list -> 
(commands option,principal,'d,'e)Form list``,
``[(Name SquadLeader) says (prop (SOME (SquadLeaderCOM rtPosition)))
:(commands option,principal,'d,'e)Form]``,
``ins:(commands option,principal,'d,'e)Form list list``,
``RT_FORM``,
``outs:commands option list trType list``
] TR_exec_cmd_rule

val helper2 = fst(dest_imp(concl helper1))

val RT_FORM_exec_rtPosition_lemma1 =
TAC_PROOF(
([],helper2),
REWRITE_TAC[
CFGInterpret_def, globalAuth_def, stateAuth_def, getSquadLeaderCOM_def,
getOmniCOM_def, getSquadLeaderCOMx_def, getOmniCOMx_def, inputList_def,
extractInput_def, MAP, propCommandList_def, extractPropCommand_def,
satList_CONS, satList_nil,
GSYM satList_conj]
THEN
REWRITE_TAC[
NOT_NONE_SOME, NOT_SOME_NONE, SOME_11, state_distinct_clauses,
output_distinct_clauses, commands_distinct_clauses,
principal_distinct_clauses, squadLeaderCom_distinct_clauses,
omniCom_distinct_clauses, commands_one_one,
GSYM state_distinct_clauses,
GSYM output_distinct_clauses,
GSYM commands_distinct_clauses,
GSYM principal_distinct_clauses,
GSYM squadLeaderCom_distinct_clauses,
GSYM omniCom_distinct_clauses]
THEN
REWRITE_TAC[
satList_CONS, satList_nil]
THEN
PROVE_TAC[
Controls, Modus_Ponens]
)

val _= save_thm("RT_FORM_exec_rtPosition_lemma1",
                 RT_FORM_exec_rtPosition_lemma1)


val helper3 = snd(dest_imp(concl helper1))

val RT_FORM_exec_rtPosition_lemma2 =
TAC_PROOF(
([],helper3),
PROVE_TAC[
RT_FORM_exec_rtPosition_lemma1,
TR_exec_cmd_rule]
)

val _= save_thm("RT_FORM_exec_rtPosition_lemma2",
                 RT_FORM_exec_rtPosition_lemma2)


val RT_FORM_exec_rtPosition_thm =
REWRITE_RULE[
propCommandList_def, inputList_def, extractPropCommand_def, extractInput_def,
MAP
] RT_FORM_exec_rtPosition_lemma2

val _= save_thm("RT_FORM_exec_rtPosition_thm",
                 RT_FORM_exec_rtPosition_thm)


(******************************************************************************)
(* State: RT_POSITION                                                         *)
(******************************************************************************)
(*----------------------------------------------------------------------------*)
(* Execute trasition justified:                                               *)
(* RT_POSITION --> RT_ORIENT                                                  *)
(*----------------------------------------------------------------------------*)
val helper1 = ISPECL
[
``authentication:(commands option,principal,'d,'e)Form -> bool``,
``globalAuth:(commands option,principal,'d,'e)Form list -> 
(commands option,principal,'d,'e)Form list``,
``stateAuth: state ->
(commands option,principal,'d,'e)Form list -> 
(commands option,principal,'d,'e)Form list``,
``[(Name SquadLeader) says (prop (SOME (SquadLeaderCOM rtOrient)))
:(commands option,principal,'d,'e)Form]``,
``ins:(commands option,principal,'d,'e)Form list list``,
``RT_POSITION``,
``outs:commands option list trType list``
] TR_exec_cmd_rule

val helper2 = fst(dest_imp(concl helper1))

val RT_POSITION_exec_rtOrient_lemma1 =
TAC_PROOF(
([],helper2),
REWRITE_TAC[
CFGInterpret_def, globalAuth_def, stateAuth_def, getSquadLeaderCOM_def,
getOmniCOM_def, getSquadLeaderCOMx_def, getOmniCOMx_def, inputList_def,
extractInput_def, MAP, propCommandList_def, extractPropCommand_def,
satList_CONS, satList_nil,
GSYM satList_conj]
THEN
REWRITE_TAC[
NOT_NONE_SOME, NOT_SOME_NONE, SOME_11, state_distinct_clauses,
output_distinct_clauses, commands_distinct_clauses,
principal_distinct_clauses, squadLeaderCom_distinct_clauses,
omniCom_distinct_clauses, commands_one_one,
GSYM state_distinct_clauses,
GSYM output_distinct_clauses,
GSYM commands_distinct_clauses,
GSYM principal_distinct_clauses,
GSYM squadLeaderCom_distinct_clauses,
GSYM omniCom_distinct_clauses]
THEN
REWRITE_TAC[
satList_CONS, satList_nil]
THEN
PROVE_TAC[
Controls, Modus_Ponens]
)

val _= save_thm("RT_POSITION_exec_rtOrient_lemma1",
                 RT_POSITION_exec_rtOrient_lemma1)


val helper3 = snd(dest_imp(concl helper1))

val RT_POSITION_exec_rtOrient_lemma2 =
TAC_PROOF(
([],helper3),
PROVE_TAC[
RT_POSITION_exec_rtOrient_lemma1,
TR_exec_cmd_rule]
)

val _= save_thm("RT_POSITION_exec_rtOrient_lemma2",
                 RT_POSITION_exec_rtOrient_lemma2)


val RT_POSITION_exec_rtOrient_thm =
REWRITE_RULE[
propCommandList_def, inputList_def, extractPropCommand_def, extractInput_def,
MAP
] RT_POSITION_exec_rtOrient_lemma2

val _= save_thm("RT_POSITION_exec_rtOrient_thm",
                 RT_POSITION_exec_rtOrient_thm)


(******************************************************************************)
(* State: RT_ORIENT                                                           *)
(******************************************************************************)
(*----------------------------------------------------------------------------*)
(* Execute trasition justified:                                               *)
(* RT_ORIENT --> RT_ALERT                                                     *)
(*----------------------------------------------------------------------------*)
val helper1 = ISPECL
[
``authentication:(commands option,principal,'d,'e)Form -> bool``,
``globalAuth:(commands option,principal,'d,'e)Form list -> 
(commands option,principal,'d,'e)Form list``,
``stateAuth: state ->
(commands option,principal,'d,'e)Form list -> 
(commands option,principal,'d,'e)Form list``,
``[(Name SquadLeader) says (prop (SOME (SquadLeaderCOM rtAlert)))
:(commands option,principal,'d,'e)Form]``,
``ins:(commands option,principal,'d,'e)Form list list``,
``RT_ORIENT``,
``outs:commands option list trType list``
] TR_exec_cmd_rule

val helper2 = fst(dest_imp(concl helper1))

val RT_ORIENT_exec_rtAlert_lemma1 =
TAC_PROOF(
([],helper2),
REWRITE_TAC[
CFGInterpret_def, globalAuth_def, stateAuth_def, getSquadLeaderCOM_def,
getOmniCOM_def, getSquadLeaderCOMx_def, getOmniCOMx_def, inputList_def,
extractInput_def, MAP, propCommandList_def, extractPropCommand_def,
satList_CONS, satList_nil,
GSYM satList_conj]
THEN
REWRITE_TAC[
NOT_NONE_SOME, NOT_SOME_NONE, SOME_11, state_distinct_clauses,
output_distinct_clauses, commands_distinct_clauses,
principal_distinct_clauses, squadLeaderCom_distinct_clauses,
omniCom_distinct_clauses, commands_one_one,
GSYM state_distinct_clauses,
GSYM output_distinct_clauses,
GSYM commands_distinct_clauses,
GSYM principal_distinct_clauses,
GSYM squadLeaderCom_distinct_clauses,
GSYM omniCom_distinct_clauses]
THEN
REWRITE_TAC[
satList_CONS, satList_nil]
THEN
PROVE_TAC[
Controls, Modus_Ponens]
)

val _= save_thm("RT_ORIENT_exec_rtAlert_lemma1",
                 RT_ORIENT_exec_rtAlert_lemma1)


val helper3 = snd(dest_imp(concl helper1))

val RT_ORIENT_exec_rtAlert_lemma2 =
TAC_PROOF(
([],helper3),
PROVE_TAC[
RT_ORIENT_exec_rtAlert_lemma1,
TR_exec_cmd_rule]
)

val _= save_thm("RT_ORIENT_exec_rtAlert_lemma2",
                 RT_ORIENT_exec_rtAlert_lemma2)


val RT_ORIENT_exec_rtAlert_thm =
REWRITE_RULE[
propCommandList_def, inputList_def, extractPropCommand_def, extractInput_def,
MAP
] RT_ORIENT_exec_rtAlert_lemma2

val _= save_thm("RT_ORIENT_exec_rtAlert_thm",
                 RT_ORIENT_exec_rtAlert_thm)


(******************************************************************************)
(* State: RT_ALERT                                                            *)
(******************************************************************************)
(*----------------------------------------------------------------------------*)
(* Execute trasition justified:                                               *)
(* RT_ALERT --> COMPLETE                                                      *)
(*----------------------------------------------------------------------------*)
val helper1 = ISPECL
[
``authentication:(commands option,principal,'d,'e)Form -> bool``,
``globalAuth:(commands option,principal,'d,'e)Form list -> 
(commands option,principal,'d,'e)Form list``,
``stateAuth: state ->
(commands option,principal,'d,'e)Form list -> 
(commands option,principal,'d,'e)Form list``,
``[(Name SquadLeader) says (prop (SOME (SquadLeaderCOM complete)))
:(commands option,principal,'d,'e)Form]``,
``ins:(commands option,principal,'d,'e)Form list list``,
``RT_ALERT``,
``outs:commands option list trType list``
] TR_exec_cmd_rule

val helper2 = fst(dest_imp(concl helper1))

val RT_ALERT_exec_complete_lemma1 =
TAC_PROOF(
([],helper2),
REWRITE_TAC[
CFGInterpret_def, globalAuth_def, stateAuth_def, getSquadLeaderCOM_def,
getOmniCOM_def, getSquadLeaderCOMx_def, getOmniCOMx_def, inputList_def,
extractInput_def, MAP, propCommandList_def, extractPropCommand_def,
satList_CONS, satList_nil,
GSYM satList_conj]
THEN
REWRITE_TAC[
NOT_NONE_SOME, NOT_SOME_NONE, SOME_11, state_distinct_clauses,
output_distinct_clauses, commands_distinct_clauses,
principal_distinct_clauses, squadLeaderCom_distinct_clauses,
omniCom_distinct_clauses, commands_one_one,
GSYM state_distinct_clauses,
GSYM output_distinct_clauses,
GSYM commands_distinct_clauses,
GSYM principal_distinct_clauses,
GSYM squadLeaderCom_distinct_clauses,
GSYM omniCom_distinct_clauses]
THEN
REWRITE_TAC[
satList_CONS, satList_nil]
THEN
PROVE_TAC[
Controls, Modus_Ponens]
)

val _= save_thm("RT_ALERT_exec_complete_lemma1",
                 RT_ALERT_exec_complete_lemma1)


val helper3 = snd(dest_imp(concl helper1))

val RT_ALERT_exec_complete_lemma2 =
TAC_PROOF(
([],helper3),
PROVE_TAC[
RT_ALERT_exec_complete_lemma1,
TR_exec_cmd_rule]
)

val _= save_thm("RT_ALERT_exec_complete_lemma2",
                 RT_ALERT_exec_complete_lemma2)


val RT_ALERT_exec_complete_thm =
REWRITE_RULE[
propCommandList_def, inputList_def, extractPropCommand_def, extractInput_def,
MAP
] RT_ALERT_exec_complete_lemma2

val _= save_thm("RT_ALERT_exec_complete_thm",
                 RT_ALERT_exec_complete_thm)


val _= export_theory();
end
