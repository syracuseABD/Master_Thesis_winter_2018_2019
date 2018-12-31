(******************************************************************************)
(* projectUtilitiesScript.sml                                                 *)
(* Date: 1 August 2018                                                        *)
(* Author: Assured Things by Design: Lori Pickering, Keara Hill, and Keaten   *)
(* Stokke                                                                     *)
(* Description: This file contains the datatype definitions for the project's *)
(* secure state machine: principals, commands, states, and outputs. It also   *)
(* contains the distinctness and one-to-oneness theorems.                     *)
(* Project Description: ssmSecureHalt.                                        *)
(******************************************************************************)
structure projectUtilitiesScript = struct

open  HolKernel Parse boolLib bossLib TypeBase TypeBase listTheory optionTheory
open  acl_infRules aclrulesTheory aclDrulesTheory satListTheory
open  projectTypesTheory

val _= new_theory "projectUtilities";

(******************************************************************************)
(* Functions for extracting commands from input stream.                       *)
(******************************************************************************)
val getPlatoonLeaderCOM_def = Define `
(getPlatoonLeaderCOM ([]:commands option list) = (NONE:commands option))
 /\
(getPlatoonLeaderCOM (( SOME (PlatoonLeaderCOM cmd))::xs) = 
   ( SOME (PlatoonLeaderCOM cmd)))
 /\
(getPlatoonLeaderCOM (_::xs) = getPlatoonLeaderCOM xs)`

val getOmniCOM_def = Define `
(getOmniCOM ([]:commands option list) = (NONE:commands option))
 /\
(getOmniCOM (( SOME (OmniCOM cmd))::xs) = 
   ( SOME (OmniCOM cmd)))
 /\
(getOmniCOM (_::xs) = getOmniCOM xs)`


(******************************************************************************)
(* Functions for extracting commands from input list.                         *)
(******************************************************************************)
val getPlatoonLeaderCOMx_def = Define `
(getPlatoonLeaderCOMx ([]:(commands option,principal,'d,'e)Form list) = NONE)
 /\
(getPlatoonLeaderCOMx (((Name PlatoonLeader) says (prop (SOME (PlatoonLeaderCOM cmd))))::xs) = 
   (SOME (PlatoonLeaderCOM cmd:commands)))
 /\
(getPlatoonLeaderCOMx (_::xs) = getPlatoonLeaderCOMx xs)`

val getOmniCOMx_def = Define `
(getOmniCOMx ([]:(commands option,principal,'d,'e)Form list) = NONE)
 /\
(getOmniCOMx (((Name Omni) says (prop (SOME (OmniCOM cmd))))::xs) = 
   (SOME (OmniCOM cmd:commands)))
 /\
(getOmniCOMx (_::xs) = getOmniCOMx xs)`


val _= export_theory();
end
