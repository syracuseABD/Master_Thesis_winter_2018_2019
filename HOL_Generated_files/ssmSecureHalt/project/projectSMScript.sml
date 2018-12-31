(******************************************************************************)
(* projectSMScript.sml                                                        *)
(* Date: 1 August 2018                                                        *)
(* Author: Assured Things by Design: Lori Pickering, Keara Hill, and Keaten   *)
(* Stokke                                                                     *)
(* Description: This file contains the datatype definitions for the project's *)
(* secure state machine's next-state and next-output functions.               *)
(* Project Description: ssmSecureHalt.                                        *)
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
(NS SECURE_HALT (exec x) =
   if (getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM secure))
   then SECURE
   else SECURE_HALT
)/\ 
(NS SECURE (exec x) =
   if (getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM orpRecon))
   then ORP_RECON
   else SECURE
)/\ 
(NS ORP_RECON (exec x) =
   if (getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM withdraw))
   then WITHDRAW
   else ORP_RECON
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
(NOut SECURE_HALT (exec x) =
   if (getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM secure))
   then Secure
   else NoActionTaken
)/\ 
(NOut SECURE (exec x) =
   if (getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM orpRecon))
   then OrpRecon
   else NoActionTaken
)/\ 
(NOut ORP_RECON (exec x) =
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
