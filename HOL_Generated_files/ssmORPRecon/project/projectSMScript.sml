(******************************************************************************)
(* projectSMScript.sml                                                        *)
(* Date: 1 August 2018                                                        *)
(* Author: Assured Things by Design: Lori Pickering, Keara Hill, and Keaten   *)
(* Stokke                                                                     *)
(* Description: This file contains the datatype definitions for the project's *)
(* secure state machine's next-state and next-output functions.               *)
(* Project Description: ssmORPRecon.                                          *)
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
(NS ORP_RECON (exec x) =
   if (getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM contingencyPlan))
   then CONTINGENCY_PLAN
   else ORP_RECON
)/\ 
(NS CONTINGENCY_PLAN (exec x) =
   if (getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM moveToORP))
   then MOVE_TO_ORP
   else CONTINGENCY_PLAN
)/\ 
(NS MOVE_TO_ORP (exec x) =
   if (getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM conductORP))
   then CONDUCT_ORP
   else MOVE_TO_ORP
)/\ 
(NS CONDUCT_ORP (exec x) =
   if (getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM formST))
   then FORM_ST
   else CONDUCT_ORP
)/\ 
(NS FORM_ST (exec x) =
   if (getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM returnToUnit))
   then RETURN_TO_UNIT
   else FORM_ST
)/\ 
(NS RETURN_TO_UNIT (exec x) =
   if (getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM complete))
   then COMPLETE
   else RETURN_TO_UNIT
)/\ 
(NS (s:state) (trap _)    = s) /\
(NS (s:state) (discard _) = s)`



(******************************************************************************)
(* Next-output function.                                                      *)
(******************************************************************************)
val NS_def = Define`
(NOut ORP_RECON (exec x) =
   if (getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM contingencyPlan))
   then ContingencyPlan
   else NoActionTaken
)/\ 
(NOut CONTINGENCY_PLAN (exec x) =
   if (getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM moveToORP))
   then MoveToORP
   else NoActionTaken
)/\ 
(NOut MOVE_TO_ORP (exec x) =
   if (getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM conductORP))
   then ConductORP
   else NoActionTaken
)/\ 
(NOut CONDUCT_ORP (exec x) =
   if (getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM formST))
   then FormST
   else NoActionTaken
)/\ 
(NOut FORM_ST (exec x) =
   if (getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM returnToUnit))
   then ReturnToUnit
   else NoActionTaken
)/\ 
(NOut RETURN_TO_UNIT (exec x) =
   if (getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM complete))
   then Complete
   else NoActionTaken
)/\ 
(NOut (s:state) (trap _)    = UnAuthorized) /\
(NOut (s:state) (discard _) = UnAuthenticated)`



val _= export_theory();
end
