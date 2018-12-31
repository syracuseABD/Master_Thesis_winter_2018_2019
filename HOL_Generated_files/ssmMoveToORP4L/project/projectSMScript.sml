(******************************************************************************)
(* projectSMScript.sml                                                        *)
(* Date: 1 August 2018                                                        *)
(* Author: Assured Things by Design: Lori Pickering, Keara Hill, and Keaten   *)
(* Stokke                                                                     *)
(* Description: This file contains the datatype definitions for the project's *)
(* secure state machine's next-state and next-output functions.               *)
(* Project Description: ssmMoveToORP4L.                                       *)
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
(NS MOVE_TO_ORP (exec x) =
   if (getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM formRT))
   then FORM_RT
   else MOVE_TO_ORP
)/\ 
(NS FORM_RT (exec x) =
   if (getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM rtMove))
   then RT_MOVE
   else FORM_RT
)/\ 
(NS RT_MOVE (exec x) =
   if (getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM rtHalt))
   then RT_HALT
   else RT_MOVE
)/\ 
(NS RT_HALT (exec x) =
   if (getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM complete))
   then COMPLETE
   else RT_HALT
)/\ 
(NS (s:state) (trap _)    = s) /\
(NS (s:state) (discard _) = s)`



(******************************************************************************)
(* Next-output function.                                                      *)
(******************************************************************************)
val NS_def = Define`
(NOut MOVE_TO_ORP (exec x) =
   if (getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM formRT))
   then FormRT
   else NoActionTaken
)/\ 
(NOut FORM_RT (exec x) =
   if (getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM rtMove))
   then RtMove
   else NoActionTaken
)/\ 
(NOut RT_MOVE (exec x) =
   if (getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM rtHalt))
   then RtHalt
   else NoActionTaken
)/\ 
(NOut RT_HALT (exec x) =
   if (getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM complete))
   then Complete
   else NoActionTaken
)/\ 
(NOut (s:state) (trap _)    = UnAuthorized) /\
(NOut (s:state) (discard _) = UnAuthenticated)`



val _= export_theory();
end
