(******************************************************************************)
(* projectTypesScript.sml                                                     *)
(* Date: 1 August 2018                                                        *)
(* Author: Assured Things by Design: Lori Pickering, Keara Hill, and Keaten   *)
(* Stokke                                                                     *)
(* Description: This file contains the datatype definitions for the project's *)
(* secure state machine: principals, commands, states, and outputs. It also   *)
(* contains the distinctness and one-to-oneness theorems.                     *)
(* Project Description: ssmSecureHalt.                                        *)
(******************************************************************************)
structure projectTypesScript = struct

open  HolKernel Parse boolLib bossLib TypeBase

val _= new_theory "projectTypes";

val _= Datatype `platoonLeaderCom
      = secure
      | orpRecon
      | withdraw
      | complete
`
val _= Datatype `omniCom
      = none
      | omniNA
`
val _= Datatype `principal
      = PlatoonLeader
      | Omni
`
val _= Datatype `commands
      = PlatoonLeaderCOM platoonLeaderCom
      | OmniCOM omniCom
`
val _= Datatype `state
      = SECURE_HALT
      | SECURE
      | ORP_RECON
      | WITHDRAW
      | COMPLETE
`
val _= Datatype `output
      = Secure_halt
      | Secure
      | OrpRecon
      | Withdraw
      | Complete
      | NoActionTaken
      | UnAuthenticated
      | UnAuthorized
`
(******************************************************************************)
(* Theorems to prove distinctness and one-to-one.                             *)
(******************************************************************************)
val principal_distinct_clauses = distinct_of``:principal``
val _= save_thm("principal_distinct_clauses",
                 principal_distinct_clauses)

val platoonLeaderCom_distinct_clauses = distinct_of``:platoonLeaderCom``
val _= save_thm("platoonLeaderCom_distinct_clauses",
                 platoonLeaderCom_distinct_clauses)

val omniCom_distinct_clauses = distinct_of``:omniCom``
val _= save_thm("omniCom_distinct_clauses",
                 omniCom_distinct_clauses)

val commands_distinct_clauses = distinct_of``:commands``
val _= save_thm("commands_distinct_clauses",
                 commands_distinct_clauses)

val state_distinct_clauses = distinct_of``:state``
val _= save_thm("state_distinct_clauses",
                 state_distinct_clauses)

val output_distinct_clauses = distinct_of``:output``
val _= save_thm("output_distinct_clauses",
                 output_distinct_clauses)

val commands_one_one = one_one_of``:commands``
val _= save_thm("commands_one_one",
                 commands_one_one)

val _= export_theory();
end
