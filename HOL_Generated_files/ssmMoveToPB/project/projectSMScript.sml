(******************************************************************************)
(* projectSMScript.sml                                                        *)
(* Date: 1 August 2018                                                        *)
(* Author: Assured Things by Design: Lori Pickering, Keara Hill, and Keaten   *)
(* Stokke                                                                     *)
(* Description: This file contains the datatype definitions for the project's *)
(* secure state machine's next-state and next-output functions.               *)
(* Project Description: ssmMoveToPB.                                          *)
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
(NS MOVE_TO_PB (exec x) =
   if (getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM form))
   then FORM
   else MOVE_TO_PB
)/\ 
(NS FORM (exec x) =
   if (getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM move))
   then MOVE
   else FORM
)/\ 
(NS MOVE (exec x) =
   if (getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM secureHalt))
   then SECURE_HALT
   else MOVE
)/\ 
(NS (s:state) (trap _)    = s) /\
(NS (s:state) (discard _) = s)`



(******************************************************************************)
(* Next-output function.                                                      *)
(******************************************************************************)
val NS_def = Define`
(NOut MOVE_TO_PB (exec x) =
   if (getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM form))
   then Form
   else NoActionTaken
)/\ 
(NOut FORM (exec x) =
   if (getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM move))
   then Move
   else NoActionTaken
)/\ 
(NOut MOVE (exec x) =
   if (getPlatoonLeaderCOM x = SOME (PlatoonLeaderCOM secureHalt))
   then Secure_halt
   else NoActionTaken
)/\ 
(NOut (s:state) (trap _)    = UnAuthorized) /\
(NOut (s:state) (discard _) = UnAuthenticated)`



val _= export_theory();
end
