(******************************************************************************)
(* projectAssuranceExecScript.sml                                             *)
(* Date: 1 August 2018                                                        *)
(* Author: Assured Things by Design: Lori Pickering, Keara Hill, and Keaten   *)
(* Stokke                                                                     *)
(* Description: This file contains the proofs for complete mediation. In      *)
(* particular, these proofs prove that a transition is executed if and only   *)
(* if the input is authenticated and authorized.                              *)
(* Project Description: ssmSecureHalt.                                        *)
(******************************************************************************)
structure projectAssuranceExecScript = struct

open  HolKernel Parse boolLib bossLib TypeBase TypeBase listTheory optionTheory
open  acl_infRules aclrulesTheory aclDrulesTheory satListTheory ssmTheory
open  ssminfRules projectTypesTheory projectUtilitiesTheory projectSecurityTheory
open  satListTheory bossLib

val _= new_theory "projectAssuranceExec";

(******************************************************************************)
(* State: SECURE_HALT                                                         *)
(******************************************************************************)
(*----------------------------------------------------------------------------*)
(* Execute trasition justified:                                               *)
(* SECURE_HALT --> SECURE                                                     *)
(*----------------------------------------------------------------------------*)
val helper1 = ISPECL
[
``authentication:(commands option,principal,'d,'e)Form -> bool``,
``globalAuth:(commands option,principal,'d,'e)Form list -> 
(commands option,principal,'d,'e)Form list``,
``stateAuth: state ->
(commands option,principal,'d,'e)Form list -> 
(commands option,principal,'d,'e)Form list``,
``[(Name PlatoonLeader) says (prop (SOME (PlatoonLeaderCOM secure)))
:(commands option,principal,'d,'e)Form]``,
``ins:(commands option,principal,'d,'e)Form list list``,
``SECURE_HALT``,
``outs:commands option list trType list``
] TR_exec_cmd_rule

val helper2 = fst(dest_imp(concl helper1))

val SECURE_HALT_exec_secure_lemma1 =
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

val _= save_thm("SECURE_HALT_exec_secure_lemma1",
                 SECURE_HALT_exec_secure_lemma1)


val helper3 = snd(dest_imp(concl helper1))

val SECURE_HALT_exec_secure_lemma2 =
TAC_PROOF(
([],helper3),
PROVE_TAC[
SECURE_HALT_exec_secure_lemma1,
TR_exec_cmd_rule]
)

val _= save_thm("SECURE_HALT_exec_secure_lemma2",
                 SECURE_HALT_exec_secure_lemma2)


val SECURE_HALT_exec_secure_thm =
REWRITE_RULE[
propCommandList_def, inputList_def, extractPropCommand_def, extractInput_def,
MAP
] SECURE_HALT_exec_secure_lemma2

val _= save_thm("SECURE_HALT_exec_secure_thm",
                 SECURE_HALT_exec_secure_thm)


(******************************************************************************)
(* State: SECURE                                                              *)
(******************************************************************************)
(*----------------------------------------------------------------------------*)
(* Execute trasition justified:                                               *)
(* SECURE --> ORP_RECON                                                       *)
(*----------------------------------------------------------------------------*)
val helper1 = ISPECL
[
``authentication:(commands option,principal,'d,'e)Form -> bool``,
``globalAuth:(commands option,principal,'d,'e)Form list -> 
(commands option,principal,'d,'e)Form list``,
``stateAuth: state ->
(commands option,principal,'d,'e)Form list -> 
(commands option,principal,'d,'e)Form list``,
``[(Name PlatoonLeader) says (prop (SOME (PlatoonLeaderCOM orpRecon)))
:(commands option,principal,'d,'e)Form]``,
``ins:(commands option,principal,'d,'e)Form list list``,
``SECURE``,
``outs:commands option list trType list``
] TR_exec_cmd_rule

val helper2 = fst(dest_imp(concl helper1))

val SECURE_exec_orpRecon_lemma1 =
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

val _= save_thm("SECURE_exec_orpRecon_lemma1",
                 SECURE_exec_orpRecon_lemma1)


val helper3 = snd(dest_imp(concl helper1))

val SECURE_exec_orpRecon_lemma2 =
TAC_PROOF(
([],helper3),
PROVE_TAC[
SECURE_exec_orpRecon_lemma1,
TR_exec_cmd_rule]
)

val _= save_thm("SECURE_exec_orpRecon_lemma2",
                 SECURE_exec_orpRecon_lemma2)


val SECURE_exec_orpRecon_thm =
REWRITE_RULE[
propCommandList_def, inputList_def, extractPropCommand_def, extractInput_def,
MAP
] SECURE_exec_orpRecon_lemma2

val _= save_thm("SECURE_exec_orpRecon_thm",
                 SECURE_exec_orpRecon_thm)


(******************************************************************************)
(* State: ORP_RECON                                                           *)
(******************************************************************************)
(*----------------------------------------------------------------------------*)
(* Execute trasition justified:                                               *)
(* ORP_RECON --> WITHDRAW                                                     *)
(*----------------------------------------------------------------------------*)
val helper1 = ISPECL
[
``authentication:(commands option,principal,'d,'e)Form -> bool``,
``globalAuth:(commands option,principal,'d,'e)Form list -> 
(commands option,principal,'d,'e)Form list``,
``stateAuth: state ->
(commands option,principal,'d,'e)Form list -> 
(commands option,principal,'d,'e)Form list``,
``[(Name PlatoonLeader) says (prop (SOME (PlatoonLeaderCOM withdraw)))
:(commands option,principal,'d,'e)Form]``,
``ins:(commands option,principal,'d,'e)Form list list``,
``ORP_RECON``,
``outs:commands option list trType list``
] TR_exec_cmd_rule

val helper2 = fst(dest_imp(concl helper1))

val ORP_RECON_exec_withdraw_lemma1 =
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

val _= save_thm("ORP_RECON_exec_withdraw_lemma1",
                 ORP_RECON_exec_withdraw_lemma1)


val helper3 = snd(dest_imp(concl helper1))

val ORP_RECON_exec_withdraw_lemma2 =
TAC_PROOF(
([],helper3),
PROVE_TAC[
ORP_RECON_exec_withdraw_lemma1,
TR_exec_cmd_rule]
)

val _= save_thm("ORP_RECON_exec_withdraw_lemma2",
                 ORP_RECON_exec_withdraw_lemma2)


val ORP_RECON_exec_withdraw_thm =
REWRITE_RULE[
propCommandList_def, inputList_def, extractPropCommand_def, extractInput_def,
MAP
] ORP_RECON_exec_withdraw_lemma2

val _= save_thm("ORP_RECON_exec_withdraw_thm",
                 ORP_RECON_exec_withdraw_thm)


(******************************************************************************)
(* State: WITHDRAW                                                            *)
(******************************************************************************)
(*----------------------------------------------------------------------------*)
(* Execute trasition justified:                                               *)
(* WITHDRAW --> COMPLETE                                                      *)
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
``WITHDRAW``,
``outs:commands option list trType list``
] TR_exec_cmd_rule

val helper2 = fst(dest_imp(concl helper1))

val WITHDRAW_exec_complete_lemma1 =
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

val _= save_thm("WITHDRAW_exec_complete_lemma1",
                 WITHDRAW_exec_complete_lemma1)


val helper3 = snd(dest_imp(concl helper1))

val WITHDRAW_exec_complete_lemma2 =
TAC_PROOF(
([],helper3),
PROVE_TAC[
WITHDRAW_exec_complete_lemma1,
TR_exec_cmd_rule]
)

val _= save_thm("WITHDRAW_exec_complete_lemma2",
                 WITHDRAW_exec_complete_lemma2)


val WITHDRAW_exec_complete_thm =
REWRITE_RULE[
propCommandList_def, inputList_def, extractPropCommand_def, extractInput_def,
MAP
] WITHDRAW_exec_complete_lemma2

val _= save_thm("WITHDRAW_exec_complete_thm",
                 WITHDRAW_exec_complete_thm)


val _= export_theory();
end
