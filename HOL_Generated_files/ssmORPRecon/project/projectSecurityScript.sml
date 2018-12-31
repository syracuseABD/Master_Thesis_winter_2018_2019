(******************************************************************************)
(* projectSecurityScript.sml                                                  *)
(* Date: 1 August 2018                                                        *)
(* Author: Assured Things by Design: Lori Pickering, Keara Hill, and Keaten   *)
(* Stokke                                                                     *)
(* Description: This file contains the security policy (state-dependent       *)
(* authorization, global authorization) and authentication policy.            *)
(* Project Description: ssmORPRecon.                                          *)
(******************************************************************************)
structure projectSecurityScript = struct

open  HolKernel Parse boolLib bossLib TypeBase TypeBase listTheory optionTheory
open  acl_infRules aclrulesTheory aclDrulesTheory satListTheory ssmTheory
open  ssminfRules projectTypesTheory projectUtilitiesTheory

val _= new_theory "projectSecurity";

(******************************************************************************)
(* Authentication definitions.                                                *)
(******************************************************************************)
val authentication_def = Define `
(authentication
(((Name PlatoonLeader) says (prop (SOME (PlatoonLeaderCOM (x:platoonLeaderCom)))))
:(commands option,principal,'d,'e)Form) = T) /\ 
(authentication
(((Name Omni) says (prop (SOME (OmniCOM (x:omniCom)))))
:(commands option,principal,'d,'e)Form) = T) /\ 
(authentication _ = F)`

(******************************************************************************)
(* stateAuth definitions.                                                     *)
(* A state-dependent security context.                                        *)
(******************************************************************************)
val stateAuth_def = Define`
stateAuth (s:state) (x:(commands option,principal,'d,'e)Form list) =
if (s = ORP_RECON)
then
   if
      (getPlatoonLeaderCOMx x =  SOME (PlatoonLeaderCOM contingencyPlan))
   then
      [(Name PlatoonLeader) controls (prop (SOME (PlatoonLeaderCOM contingencyPlan)))
      :(commands option,principal,'d,'e)Form]
   else
      [prop NONE:(commands option,principal,'d,'e)Form]
else
if (s = CONTINGENCY_PLAN)
then
   if
      (getPlatoonLeaderCOMx x =  SOME (PlatoonLeaderCOM moveToORP))
   then
      [(Name PlatoonLeader) controls (prop (SOME (PlatoonLeaderCOM moveToORP)))
      :(commands option,principal,'d,'e)Form]
   else
      [prop NONE:(commands option,principal,'d,'e)Form]
else
if (s = MOVE_TO_ORP)
then
   if
      (getPlatoonLeaderCOMx x =  SOME (PlatoonLeaderCOM conductORP))
   then
      [(Name PlatoonLeader) controls (prop (SOME (PlatoonLeaderCOM conductORP)))
      :(commands option,principal,'d,'e)Form]
   else
      [prop NONE:(commands option,principal,'d,'e)Form]
else
if (s = CONDUCT_ORP)
then
   if
      (getPlatoonLeaderCOMx x =  SOME (PlatoonLeaderCOM formST))
   then
      [(Name PlatoonLeader) controls (prop (SOME (PlatoonLeaderCOM formST)))
      :(commands option,principal,'d,'e)Form]
   else
      [prop NONE:(commands option,principal,'d,'e)Form]
else
if (s = FORM_ST)
then
   if
      (getPlatoonLeaderCOMx x =  SOME (PlatoonLeaderCOM returnToUnit))
   then
      [(Name PlatoonLeader) controls (prop (SOME (PlatoonLeaderCOM returnToUnit)))
      :(commands option,principal,'d,'e)Form]
   else
      [prop NONE:(commands option,principal,'d,'e)Form]
else
if (s = RETURN_TO_UNIT)
then
   if
      (getPlatoonLeaderCOMx x =  SOME (PlatoonLeaderCOM complete))
   then
      [(Name PlatoonLeader) controls (prop (SOME (PlatoonLeaderCOM complete)))
      :(commands option,principal,'d,'e)Form]
   else
      [prop NONE:(commands option,principal,'d,'e)Form]

   else 
 [prop NONE:(commands option,principal,'d,'e)Form]`
(******************************************************************************)
(* globalAuth definitions.                                                    *)
(* A global security context.                                                 *)
(******************************************************************************)
val globalAuth_def = Define `
globalAuth (x:(commands option,principal,'d,'e)Form list) =
[TT:(commands option,principal,'d,'e)Form]
`
val _= export_theory();
end
