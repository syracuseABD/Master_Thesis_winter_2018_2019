(******************************************************************************)
(* projectSMScript.sml                                                        *)
(* Date: 1 August 2018                                                        *)
(* Author: Assured Things by Design: Lori Pickering, Keara Hill, and Keaten   *)
(* Stokke                                                                     *)
(* Description: This file contains the datatype definitions for the project's *)
(* secure state machine's next-state and next-output functions.               *)
(* Project Description: ssmConductPB.                                         *)
(******************************************************************************)
structure projectSMScript = struct

open  HolKernel Parse boolLib bossLib TypeBase TypeBase listTheory optionTheory
open  acl_infRules aclrulesTheory aclDrulesTheory satListTheory ssmTheory
open  ssminfRules projectTypesTheory projectUtilitiesTheory

val _= new_theory "projectSM";

(******************************************************************************)
(* Next-state function.                                                       *)
(******************************************************************************)
val NS_def = Define`
(NS CONDUCT_PB (exec x) =
   if (getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM secure))
   then SECURE
   else CONDUCT_PB
)/\ 
(NS SECURE (exec x) =
   if (getPlatoonSergeantCOM x = SOME (PlatoonSergeantCOM actionsIn))
   then ACTIONS_IN
   else SECURE
)/\ 
(NS ACTIONS_IN (exec x) =
   if (getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM withdraw))
   then WITHDRAW
   else ACTIONS_IN
)/\ 
(NS WITHDRAW (exec x) =
   if (getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM complete))
   then COMPLETE
   else WITHDRAW
)/\ 
(NS (s:state) (trap _)    = s) /\
(NS (s:state) (discard _) = s)`



(******************************************************************************)
(* Next-output function.                                                      *)
(******************************************************************************)
val NS_def = Define`
(NOut CONDUCT_PB (exec x) =
   if (getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM secure))
   then Secure
   else NoActionTaken
)/\ 
(NOut SECURE (exec x) =
   if (getPlatoonSergeantCOM x = SOME (PlatoonSergeantCOM actionsIn))
   then ActionsIn
   else NoActionTaken
)/\ 
(NOut ACTIONS_IN (exec x) =
   if (getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM withdraw))
   then Withdraw
   else NoActionTaken
)/\ 
(NOut WITHDRAW (exec x) =
   if (getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM complete))
   then Complete
   else NoActionTaken
)/\ 
(NOut (s:state) (trap _)    = UnAuthorized) /\
(NOut (s:state) (discard _) = UnAuthenticated)`



val _= export_theory();
end
