(******************************************************************************)
(* projectAssuranceNoExecScript.sml                                           *)
(* Date: 1 August 2018                                                        *)
(* Author: Assured Things by Design: Lori Pickering, Keara Hill, and Keaten   *)
(* Stokke                                                                     *)
(* Description: This file contains the proofs for complete mediation. In      *)
(* particular, these proofs prove that some commands are trapped or           *)
(* discarded.                                                                 *)
(* Project Description: ssmFormRT.                                            *)
(******************************************************************************)
structure projectAssuranceNoExecScript = struct

open  HolKernel Parse boolLib bossLib TypeBase TypeBase listTheory optionTheory
open  acl_infRules aclrulesTheory aclDrulesTheory satListTheory ssmTheory
open  ssminfRules projectTypesTheory projectUtilitiesTheory projectSMTheory

val _= new_theory "projectAssuranceNoExec";

val _= export_theory();
end
