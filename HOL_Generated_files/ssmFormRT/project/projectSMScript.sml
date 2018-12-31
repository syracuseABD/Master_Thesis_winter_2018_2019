(******************************************************************************)
(* projectSMScript.sml                                                        *)
(* Date: 1 August 2018                                                        *)
(* Author: Assured Things by Design: Lori Pickering, Keara Hill, and Keaten   *)
(* Stokke                                                                     *)
(* Description: This file contains the datatype definitions for the project's *)
(* secure state machine's next-state and next-output functions.               *)
(* Project Description: ssmFormRT.                                            *)
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
(NS RT_FORM (exec x) =
   if (getSquadLeaderCOM x = SOME (SquadLeaderCOM rtPosition))
   then RT_POSITION
   else RT_FORM
)/\ 
(NS RT_POSITION (exec x) =
   if (getSquadLeaderCOM x = SOME (SquadLeaderCOM rtOrient))
   then RT_ORIENT
   else RT_POSITION
)/\ 
(NS RT_ORIENT (exec x) =
   if (getSquadLeaderCOM x = SOME (SquadLeaderCOM rtAlert))
   then RT_ALERT
   else RT_ORIENT
)/\ 
(NS RT_ALERT (exec x) =
   if (getSquadLeaderCOM x = SOME (SquadLeaderCOM complete))
   then COMPLETE
   else RT_ALERT
)/\ 
(NS (s:state) (trap _)    = s) /\
(NS (s:state) (discard _) = s)`



(******************************************************************************)
(* Next-output function.                                                      *)
(******************************************************************************)
val NS_def = Define`
(NOut RT_FORM (exec x) =
   if (getSquadLeaderCOM x = SOME (SquadLeaderCOM rtPosition))
   then RtPosition
   else NoActionTaken
)/\ 
(NOut RT_POSITION (exec x) =
   if (getSquadLeaderCOM x = SOME (SquadLeaderCOM rtOrient))
   then RtOrient
   else NoActionTaken
)/\ 
(NOut RT_ORIENT (exec x) =
   if (getSquadLeaderCOM x = SOME (SquadLeaderCOM rtAlert))
   then RtAlert
   else NoActionTaken
)/\ 
(NOut RT_ALERT (exec x) =
   if (getSquadLeaderCOM x = SOME (SquadLeaderCOM complete))
   then Complete
   else NoActionTaken
)/\ 
(NOut (s:state) (trap _)    = UnAuthorized) /\
(NOut (s:state) (discard _) = UnAuthenticated)`



val _= export_theory();
end
