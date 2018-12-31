(******************************************************************************)
(* projectSecurityScript.sml                                                  *)
(* Date: 1 August 2018                                                        *)
(* Author: Assured Things by Design: Lori Pickering, Keara Hill, and Keaten   *)
(* Stokke                                                                     *)
(* Description: This file contains the security policy (state-dependent       *)
(* authorization, global authorization) and authentication policy.            *)
(* Project Description: ssmFormRT.                                            *)
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
(((Name SquadLeader) says (prop (SOME (SquadLeaderCOM (x:squadLeaderCom)))))
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
if (s = RT_FORM)
then
   if
      (getSquadLeaderCOMx x =  SOME (SquadLeaderCOM rtPosition))
   then
      [(Name SquadLeader) controls (prop (SOME (SquadLeaderCOM rtPosition)))
      :(commands option,principal,'d,'e)Form]
   else
      [prop NONE:(commands option,principal,'d,'e)Form]
else
if (s = RT_POSITION)
then
   if
      (getSquadLeaderCOMx x =  SOME (SquadLeaderCOM rtOrient))
   then
      [(Name SquadLeader) controls (prop (SOME (SquadLeaderCOM rtOrient)))
      :(commands option,principal,'d,'e)Form]
   else
      [prop NONE:(commands option,principal,'d,'e)Form]
else
if (s = RT_ORIENT)
then
   if
      (getSquadLeaderCOMx x =  SOME (SquadLeaderCOM rtAlert))
   then
      [(Name SquadLeader) controls (prop (SOME (SquadLeaderCOM rtAlert)))
      :(commands option,principal,'d,'e)Form]
   else
      [prop NONE:(commands option,principal,'d,'e)Form]
else
if (s = RT_ALERT)
then
   if
      (getSquadLeaderCOMx x =  SOME (SquadLeaderCOM complete))
   then
      [(Name SquadLeader) controls (prop (SOME (SquadLeaderCOM complete)))
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
