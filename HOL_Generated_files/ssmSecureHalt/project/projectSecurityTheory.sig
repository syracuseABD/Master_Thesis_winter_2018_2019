signature projectSecurityTheory =
sig
  type thm = Thm.thm

  (*  Definitions  *)
    val authentication_primitive_def : thm
    val globalAuth_def : thm
    val stateAuth_def : thm

  (*  Theorems  *)
    val authentication_def : thm
    val authentication_ind : thm

  val projectSecurity_grammars : type_grammar.grammar * term_grammar.grammar
(*
   [projectUtilities] Parent theory of "projectSecurity"

   [ssm] Parent theory of "projectSecurity"

   [authentication_primitive_def]  Definition

      |- authentication =
         WFREC (@R. WF R)
           (λauthentication a.
              case a of
                TT => I F
              | FF => I F
              | prop v33 => I F
              | notf v34 => I F
              | v35 andf v36 => I F
              | v37 orf v38 => I F
              | v39 impf v40 => I F
              | v41 eqf v42 => I F
              | Name v71 says TT => I F
              | Name v71 says FF => I F
              | Name v71 says prop NONE => I F
              | Name PlatoonLeader says prop (SOME (PlatoonLeaderCOM x)) =>
                  I T
              | Name Omni says prop (SOME (PlatoonLeaderCOM x)) => I F
              | Name PlatoonLeader says prop (SOME (OmniCOM x')) => I F
              | Name Omni says prop (SOME (OmniCOM x')) => I T
              | Name v71 says notf v110 => I F
              | Name v71 says (v111 andf v112) => I F
              | Name v71 says (v113 orf v114) => I F
              | Name v71 says (v115 impf v116) => I F
              | Name v71 says (v117 eqf v118) => I F
              | Name v71 says v119 says v120 => I F
              | Name v71 says v121 speaks_for v122 => I F
              | Name v71 says v123 controls v124 => I F
              | Name v71 says reps v125 v126 v127 => I F
              | Name v71 says v128 domi v129 => I F
              | Name v71 says v130 eqi v131 => I F
              | Name v71 says v132 doms v133 => I F
              | Name v71 says v134 eqs v135 => I F
              | Name v71 says v136 eqn v137 => I F
              | Name v71 says v138 lte v139 => I F
              | Name v71 says v140 lt v141 => I F
              | v72 meet v73 says v44 => I F
              | v74 quoting v75 says v44 => I F
              | v45 speaks_for v46 => I F
              | v47 controls v48 => I F
              | reps v49 v50 v51 => I F
              | v52 domi v53 => I F
              | v54 eqi v55 => I F
              | v56 doms v57 => I F
              | v58 eqs v59 => I F
              | v60 eqn v61 => I F
              | v62 lte v63 => I F
              | v64 lt v65 => I F)

   [globalAuth_def]  Definition

      |- ∀x. globalAuth x = [TT]

   [stateAuth_def]  Definition

      |- ∀s x.
           stateAuth s x =
           if s = SECURE_HALT then
             if
               getPlatoonLeaderCOMx x = SOME (PlatoonLeaderCOM secure)
             then
               [Name PlatoonLeader controls
                prop (SOME (PlatoonLeaderCOM secure))]
             else [prop NONE]
           else if s = SECURE then
             if
               getPlatoonLeaderCOMx x = SOME (PlatoonLeaderCOM orpRecon)
             then
               [Name PlatoonLeader controls
                prop (SOME (PlatoonLeaderCOM orpRecon))]
             else [prop NONE]
           else if s = ORP_RECON then
             if
               getPlatoonLeaderCOMx x = SOME (PlatoonLeaderCOM withdraw)
             then
               [Name PlatoonLeader controls
                prop (SOME (PlatoonLeaderCOM withdraw))]
             else [prop NONE]
           else if s = WITHDRAW then
             if
               getPlatoonLeaderCOMx x = SOME (PlatoonLeaderCOM complete)
             then
               [Name PlatoonLeader controls
                prop (SOME (PlatoonLeaderCOM complete))]
             else [prop NONE]
           else [prop NONE]

   [authentication_def]  Theorem

      |- (authentication
            (Name PlatoonLeader says prop (SOME (PlatoonLeaderCOM x'))) ⇔
          T) ∧
         (authentication (Name Omni says prop (SOME (OmniCOM x))) ⇔ T) ∧
         (authentication TT ⇔ F) ∧ (authentication FF ⇔ F) ∧
         (authentication (prop v) ⇔ F) ∧ (authentication (notf v1) ⇔ F) ∧
         (authentication (v2 andf v3) ⇔ F) ∧
         (authentication (v4 orf v5) ⇔ F) ∧
         (authentication (v6 impf v7) ⇔ F) ∧
         (authentication (v8 eqf v9) ⇔ F) ∧
         (authentication (Name v66 says TT) ⇔ F) ∧
         (authentication (Name v66 says FF) ⇔ F) ∧
         (authentication (Name v66 says prop NONE) ⇔ F) ∧
         (authentication
            (Name Omni says prop (SOME (PlatoonLeaderCOM v144))) ⇔ F) ∧
         (authentication
            (Name PlatoonLeader says prop (SOME (OmniCOM v145))) ⇔ F) ∧
         (authentication (Name v66 says notf v77) ⇔ F) ∧
         (authentication (Name v66 says (v78 andf v79)) ⇔ F) ∧
         (authentication (Name v66 says (v80 orf v81)) ⇔ F) ∧
         (authentication (Name v66 says (v82 impf v83)) ⇔ F) ∧
         (authentication (Name v66 says (v84 eqf v85)) ⇔ F) ∧
         (authentication (Name v66 says v86 says v87) ⇔ F) ∧
         (authentication (Name v66 says v88 speaks_for v89) ⇔ F) ∧
         (authentication (Name v66 says v90 controls v91) ⇔ F) ∧
         (authentication (Name v66 says reps v92 v93 v94) ⇔ F) ∧
         (authentication (Name v66 says v95 domi v96) ⇔ F) ∧
         (authentication (Name v66 says v97 eqi v98) ⇔ F) ∧
         (authentication (Name v66 says v99 doms v100) ⇔ F) ∧
         (authentication (Name v66 says v101 eqs v102) ⇔ F) ∧
         (authentication (Name v66 says v103 eqn v104) ⇔ F) ∧
         (authentication (Name v66 says v105 lte v106) ⇔ F) ∧
         (authentication (Name v66 says v107 lt v108) ⇔ F) ∧
         (authentication (v67 meet v68 says v11) ⇔ F) ∧
         (authentication (v69 quoting v70 says v11) ⇔ F) ∧
         (authentication (v12 speaks_for v13) ⇔ F) ∧
         (authentication (v14 controls v15) ⇔ F) ∧
         (authentication (reps v16 v17 v18) ⇔ F) ∧
         (authentication (v19 domi v20) ⇔ F) ∧
         (authentication (v21 eqi v22) ⇔ F) ∧
         (authentication (v23 doms v24) ⇔ F) ∧
         (authentication (v25 eqs v26) ⇔ F) ∧
         (authentication (v27 eqn v28) ⇔ F) ∧
         (authentication (v29 lte v30) ⇔ F) ∧
         (authentication (v31 lt v32) ⇔ F)

   [authentication_ind]  Theorem

      |- ∀P.
           (∀x.
              P
                (Name PlatoonLeader says
                 prop (SOME (PlatoonLeaderCOM x)))) ∧
           (∀x. P (Name Omni says prop (SOME (OmniCOM x)))) ∧ P TT ∧ P FF ∧
           (∀v. P (prop v)) ∧ (∀v1. P (notf v1)) ∧
           (∀v2 v3. P (v2 andf v3)) ∧ (∀v4 v5. P (v4 orf v5)) ∧
           (∀v6 v7. P (v6 impf v7)) ∧ (∀v8 v9. P (v8 eqf v9)) ∧
           (∀v66. P (Name v66 says TT)) ∧ (∀v66. P (Name v66 says FF)) ∧
           (∀v66. P (Name v66 says prop NONE)) ∧
           (∀v144.
              P (Name Omni says prop (SOME (PlatoonLeaderCOM v144)))) ∧
           (∀v145.
              P (Name PlatoonLeader says prop (SOME (OmniCOM v145)))) ∧
           (∀v66 v77. P (Name v66 says notf v77)) ∧
           (∀v66 v78 v79. P (Name v66 says (v78 andf v79))) ∧
           (∀v66 v80 v81. P (Name v66 says (v80 orf v81))) ∧
           (∀v66 v82 v83. P (Name v66 says (v82 impf v83))) ∧
           (∀v66 v84 v85. P (Name v66 says (v84 eqf v85))) ∧
           (∀v66 v86 v87. P (Name v66 says v86 says v87)) ∧
           (∀v66 v88 v89. P (Name v66 says v88 speaks_for v89)) ∧
           (∀v66 v90 v91. P (Name v66 says v90 controls v91)) ∧
           (∀v66 v92 v93 v94. P (Name v66 says reps v92 v93 v94)) ∧
           (∀v66 v95 v96. P (Name v66 says v95 domi v96)) ∧
           (∀v66 v97 v98. P (Name v66 says v97 eqi v98)) ∧
           (∀v66 v99 v100. P (Name v66 says v99 doms v100)) ∧
           (∀v66 v101 v102. P (Name v66 says v101 eqs v102)) ∧
           (∀v66 v103 v104. P (Name v66 says v103 eqn v104)) ∧
           (∀v66 v105 v106. P (Name v66 says v105 lte v106)) ∧
           (∀v66 v107 v108. P (Name v66 says v107 lt v108)) ∧
           (∀v67 v68 v11. P (v67 meet v68 says v11)) ∧
           (∀v69 v70 v11. P (v69 quoting v70 says v11)) ∧
           (∀v12 v13. P (v12 speaks_for v13)) ∧
           (∀v14 v15. P (v14 controls v15)) ∧
           (∀v16 v17 v18. P (reps v16 v17 v18)) ∧
           (∀v19 v20. P (v19 domi v20)) ∧ (∀v21 v22. P (v21 eqi v22)) ∧
           (∀v23 v24. P (v23 doms v24)) ∧ (∀v25 v26. P (v25 eqs v26)) ∧
           (∀v27 v28. P (v27 eqn v28)) ∧ (∀v29 v30. P (v29 lte v30)) ∧
           (∀v31 v32. P (v31 lt v32)) ⇒
           ∀v. P v


*)
end
