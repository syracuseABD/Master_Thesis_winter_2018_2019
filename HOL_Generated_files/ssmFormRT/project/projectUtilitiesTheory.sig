signature projectUtilitiesTheory =
sig
  type thm = Thm.thm

  (*  Definitions  *)
    val getOmniCOM_primitive_def : thm
    val getOmniCOMx_primitive_def : thm
    val getSquadLeaderCOM_primitive_def : thm
    val getSquadLeaderCOMx_primitive_def : thm

  (*  Theorems  *)
    val getOmniCOM_def : thm
    val getOmniCOM_ind : thm
    val getOmniCOMx_def : thm
    val getOmniCOMx_ind : thm
    val getSquadLeaderCOM_def : thm
    val getSquadLeaderCOM_ind : thm
    val getSquadLeaderCOMx_def : thm
    val getSquadLeaderCOMx_ind : thm

  val projectUtilities_grammars : type_grammar.grammar * term_grammar.grammar
(*
   [projectTypes] Parent theory of "projectUtilities"

   [satList] Parent theory of "projectUtilities"

   [getOmniCOM_primitive_def]  Definition

      |- getOmniCOM =
         WFREC
           (@R.
              WF R ∧ (∀xs. R xs (NONE::xs)) ∧
              ∀v4 xs. R xs (SOME (SquadLeaderCOM v4)::xs))
           (λgetOmniCOM a.
              case a of
                [] => I NONE
              | NONE::xs => I (getOmniCOM xs)
              | SOME (SquadLeaderCOM v6)::xs => I (getOmniCOM xs)
              | SOME (OmniCOM cmd)::xs => I (SOME (OmniCOM cmd)))

   [getOmniCOMx_primitive_def]  Definition

      |- getOmniCOMx =
         WFREC
           (@R.
              WF R ∧ (∀xs. R xs (TT::xs)) ∧ (∀xs. R xs (FF::xs)) ∧
              (∀v2 xs. R xs (prop v2::xs)) ∧ (∀v3 xs. R xs (notf v3::xs)) ∧
              (∀v5 v4 xs. R xs (v4 andf v5::xs)) ∧
              (∀v7 v6 xs. R xs (v6 orf v7::xs)) ∧
              (∀v9 v8 xs. R xs (v8 impf v9::xs)) ∧
              (∀v11 v10 xs. R xs (v10 eqf v11::xs)) ∧
              (∀v12 xs. R xs (v12 says TT::xs)) ∧
              (∀v12 xs. R xs (v12 says FF::xs)) ∧
              (∀v134 xs. R xs (Name v134 says prop NONE::xs)) ∧
              (∀v144 xs.
                 R xs (Name SquadLeader says prop (SOME v144)::xs)) ∧
              (∀v146 xs.
                 R xs
                   (Name Omni says prop (SOME (SquadLeaderCOM v146))::
                        xs)) ∧
              (∀v68 v136 v135 xs.
                 R xs (v135 meet v136 says prop v68::xs)) ∧
              (∀v68 v138 v137 xs.
                 R xs (v137 quoting v138 says prop v68::xs)) ∧
              (∀v69 v12 xs. R xs (v12 says notf v69::xs)) ∧
              (∀v71 v70 v12 xs. R xs (v12 says (v70 andf v71)::xs)) ∧
              (∀v73 v72 v12 xs. R xs (v12 says (v72 orf v73)::xs)) ∧
              (∀v75 v74 v12 xs. R xs (v12 says (v74 impf v75)::xs)) ∧
              (∀v77 v76 v12 xs. R xs (v12 says (v76 eqf v77)::xs)) ∧
              (∀v79 v78 v12 xs. R xs (v12 says v78 says v79::xs)) ∧
              (∀v81 v80 v12 xs. R xs (v12 says v80 speaks_for v81::xs)) ∧
              (∀v83 v82 v12 xs. R xs (v12 says v82 controls v83::xs)) ∧
              (∀v86 v85 v84 v12 xs. R xs (v12 says reps v84 v85 v86::xs)) ∧
              (∀v88 v87 v12 xs. R xs (v12 says v87 domi v88::xs)) ∧
              (∀v90 v89 v12 xs. R xs (v12 says v89 eqi v90::xs)) ∧
              (∀v92 v91 v12 xs. R xs (v12 says v91 doms v92::xs)) ∧
              (∀v94 v93 v12 xs. R xs (v12 says v93 eqs v94::xs)) ∧
              (∀v96 v95 v12 xs. R xs (v12 says v95 eqn v96::xs)) ∧
              (∀v98 v97 v12 xs. R xs (v12 says v97 lte v98::xs)) ∧
              (∀v100 v99 v12 xs. R xs (v12 says v99 lt v100::xs)) ∧
              (∀v15 v14 xs. R xs (v14 speaks_for v15::xs)) ∧
              (∀v17 v16 xs. R xs (v16 controls v17::xs)) ∧
              (∀v20 v19 v18 xs. R xs (reps v18 v19 v20::xs)) ∧
              (∀v22 v21 xs. R xs (v21 domi v22::xs)) ∧
              (∀v24 v23 xs. R xs (v23 eqi v24::xs)) ∧
              (∀v26 v25 xs. R xs (v25 doms v26::xs)) ∧
              (∀v28 v27 xs. R xs (v27 eqs v28::xs)) ∧
              (∀v30 v29 xs. R xs (v29 eqn v30::xs)) ∧
              (∀v32 v31 xs. R xs (v31 lte v32::xs)) ∧
              ∀v34 v33 xs. R xs (v33 lt v34::xs))
           (λgetOmniCOMx a.
              case a of
                [] => I NONE
              | TT::xs => I (getOmniCOMx xs)
              | FF::xs => I (getOmniCOMx xs)
              | prop v35::xs => I (getOmniCOMx xs)
              | notf v36::xs => I (getOmniCOMx xs)
              | v37 andf v38::xs => I (getOmniCOMx xs)
              | v39 orf v40::xs => I (getOmniCOMx xs)
              | v41 impf v42::xs => I (getOmniCOMx xs)
              | v43 eqf v44::xs => I (getOmniCOMx xs)
              | v45 says TT::xs => I (getOmniCOMx xs)
              | v45 says FF::xs => I (getOmniCOMx xs)
              | Name v139 says prop NONE::xs => I (getOmniCOMx xs)
              | Name SquadLeader says prop (SOME v145)::xs =>
                  I (getOmniCOMx xs)
              | Name Omni says prop (SOME (SquadLeaderCOM v148))::xs =>
                  I (getOmniCOMx xs)
              | Name Omni says prop (SOME (OmniCOM cmd))::xs =>
                  I (SOME (OmniCOM cmd))
              | v140 meet v141 says prop v101::xs => I (getOmniCOMx xs)
              | v142 quoting v143 says prop v101::xs => I (getOmniCOMx xs)
              | v45 says notf v102::xs => I (getOmniCOMx xs)
              | v45 says (v103 andf v104)::xs => I (getOmniCOMx xs)
              | v45 says (v105 orf v106)::xs => I (getOmniCOMx xs)
              | v45 says (v107 impf v108)::xs => I (getOmniCOMx xs)
              | v45 says (v109 eqf v110)::xs => I (getOmniCOMx xs)
              | v45 says v111 says v112::xs => I (getOmniCOMx xs)
              | v45 says v113 speaks_for v114::xs => I (getOmniCOMx xs)
              | v45 says v115 controls v116::xs => I (getOmniCOMx xs)
              | v45 says reps v117 v118 v119::xs => I (getOmniCOMx xs)
              | v45 says v120 domi v121::xs => I (getOmniCOMx xs)
              | v45 says v122 eqi v123::xs => I (getOmniCOMx xs)
              | v45 says v124 doms v125::xs => I (getOmniCOMx xs)
              | v45 says v126 eqs v127::xs => I (getOmniCOMx xs)
              | v45 says v128 eqn v129::xs => I (getOmniCOMx xs)
              | v45 says v130 lte v131::xs => I (getOmniCOMx xs)
              | v45 says v132 lt v133::xs => I (getOmniCOMx xs)
              | v47 speaks_for v48::xs => I (getOmniCOMx xs)
              | v49 controls v50::xs => I (getOmniCOMx xs)
              | reps v51 v52 v53::xs => I (getOmniCOMx xs)
              | v54 domi v55::xs => I (getOmniCOMx xs)
              | v56 eqi v57::xs => I (getOmniCOMx xs)
              | v58 doms v59::xs => I (getOmniCOMx xs)
              | v60 eqs v61::xs => I (getOmniCOMx xs)
              | v62 eqn v63::xs => I (getOmniCOMx xs)
              | v64 lte v65::xs => I (getOmniCOMx xs)
              | v66 lt v67::xs => I (getOmniCOMx xs))

   [getSquadLeaderCOM_primitive_def]  Definition

      |- getSquadLeaderCOM =
         WFREC
           (@R.
              WF R ∧ (∀xs. R xs (NONE::xs)) ∧
              ∀v5 xs. R xs (SOME (OmniCOM v5)::xs))
           (λgetSquadLeaderCOM a.
              case a of
                [] => I NONE
              | NONE::xs => I (getSquadLeaderCOM xs)
              | SOME (SquadLeaderCOM cmd)::xs =>
                  I (SOME (SquadLeaderCOM cmd))
              | SOME (OmniCOM v7)::xs => I (getSquadLeaderCOM xs))

   [getSquadLeaderCOMx_primitive_def]  Definition

      |- getSquadLeaderCOMx =
         WFREC
           (@R.
              WF R ∧ (∀xs. R xs (TT::xs)) ∧ (∀xs. R xs (FF::xs)) ∧
              (∀v2 xs. R xs (prop v2::xs)) ∧ (∀v3 xs. R xs (notf v3::xs)) ∧
              (∀v5 v4 xs. R xs (v4 andf v5::xs)) ∧
              (∀v7 v6 xs. R xs (v6 orf v7::xs)) ∧
              (∀v9 v8 xs. R xs (v8 impf v9::xs)) ∧
              (∀v11 v10 xs. R xs (v10 eqf v11::xs)) ∧
              (∀v12 xs. R xs (v12 says TT::xs)) ∧
              (∀v12 xs. R xs (v12 says FF::xs)) ∧
              (∀v134 xs. R xs (Name v134 says prop NONE::xs)) ∧
              (∀v147 xs.
                 R xs
                   (Name SquadLeader says prop (SOME (OmniCOM v147))::
                        xs)) ∧
              (∀v144 xs. R xs (Name Omni says prop (SOME v144)::xs)) ∧
              (∀v68 v136 v135 xs.
                 R xs (v135 meet v136 says prop v68::xs)) ∧
              (∀v68 v138 v137 xs.
                 R xs (v137 quoting v138 says prop v68::xs)) ∧
              (∀v69 v12 xs. R xs (v12 says notf v69::xs)) ∧
              (∀v71 v70 v12 xs. R xs (v12 says (v70 andf v71)::xs)) ∧
              (∀v73 v72 v12 xs. R xs (v12 says (v72 orf v73)::xs)) ∧
              (∀v75 v74 v12 xs. R xs (v12 says (v74 impf v75)::xs)) ∧
              (∀v77 v76 v12 xs. R xs (v12 says (v76 eqf v77)::xs)) ∧
              (∀v79 v78 v12 xs. R xs (v12 says v78 says v79::xs)) ∧
              (∀v81 v80 v12 xs. R xs (v12 says v80 speaks_for v81::xs)) ∧
              (∀v83 v82 v12 xs. R xs (v12 says v82 controls v83::xs)) ∧
              (∀v86 v85 v84 v12 xs. R xs (v12 says reps v84 v85 v86::xs)) ∧
              (∀v88 v87 v12 xs. R xs (v12 says v87 domi v88::xs)) ∧
              (∀v90 v89 v12 xs. R xs (v12 says v89 eqi v90::xs)) ∧
              (∀v92 v91 v12 xs. R xs (v12 says v91 doms v92::xs)) ∧
              (∀v94 v93 v12 xs. R xs (v12 says v93 eqs v94::xs)) ∧
              (∀v96 v95 v12 xs. R xs (v12 says v95 eqn v96::xs)) ∧
              (∀v98 v97 v12 xs. R xs (v12 says v97 lte v98::xs)) ∧
              (∀v100 v99 v12 xs. R xs (v12 says v99 lt v100::xs)) ∧
              (∀v15 v14 xs. R xs (v14 speaks_for v15::xs)) ∧
              (∀v17 v16 xs. R xs (v16 controls v17::xs)) ∧
              (∀v20 v19 v18 xs. R xs (reps v18 v19 v20::xs)) ∧
              (∀v22 v21 xs. R xs (v21 domi v22::xs)) ∧
              (∀v24 v23 xs. R xs (v23 eqi v24::xs)) ∧
              (∀v26 v25 xs. R xs (v25 doms v26::xs)) ∧
              (∀v28 v27 xs. R xs (v27 eqs v28::xs)) ∧
              (∀v30 v29 xs. R xs (v29 eqn v30::xs)) ∧
              (∀v32 v31 xs. R xs (v31 lte v32::xs)) ∧
              ∀v34 v33 xs. R xs (v33 lt v34::xs))
           (λgetSquadLeaderCOMx a.
              case a of
                [] => I NONE
              | TT::xs => I (getSquadLeaderCOMx xs)
              | FF::xs => I (getSquadLeaderCOMx xs)
              | prop v35::xs => I (getSquadLeaderCOMx xs)
              | notf v36::xs => I (getSquadLeaderCOMx xs)
              | v37 andf v38::xs => I (getSquadLeaderCOMx xs)
              | v39 orf v40::xs => I (getSquadLeaderCOMx xs)
              | v41 impf v42::xs => I (getSquadLeaderCOMx xs)
              | v43 eqf v44::xs => I (getSquadLeaderCOMx xs)
              | v45 says TT::xs => I (getSquadLeaderCOMx xs)
              | v45 says FF::xs => I (getSquadLeaderCOMx xs)
              | Name v139 says prop NONE::xs => I (getSquadLeaderCOMx xs)
              | Name SquadLeader says prop (SOME (SquadLeaderCOM cmd))::
                    xs =>
                  I (SOME (SquadLeaderCOM cmd))
              | Name SquadLeader says prop (SOME (OmniCOM v149))::xs =>
                  I (getSquadLeaderCOMx xs)
              | Name Omni says prop (SOME v145)::xs =>
                  I (getSquadLeaderCOMx xs)
              | v140 meet v141 says prop v101::xs =>
                  I (getSquadLeaderCOMx xs)
              | v142 quoting v143 says prop v101::xs =>
                  I (getSquadLeaderCOMx xs)
              | v45 says notf v102::xs => I (getSquadLeaderCOMx xs)
              | v45 says (v103 andf v104)::xs => I (getSquadLeaderCOMx xs)
              | v45 says (v105 orf v106)::xs => I (getSquadLeaderCOMx xs)
              | v45 says (v107 impf v108)::xs => I (getSquadLeaderCOMx xs)
              | v45 says (v109 eqf v110)::xs => I (getSquadLeaderCOMx xs)
              | v45 says v111 says v112::xs => I (getSquadLeaderCOMx xs)
              | v45 says v113 speaks_for v114::xs =>
                  I (getSquadLeaderCOMx xs)
              | v45 says v115 controls v116::xs =>
                  I (getSquadLeaderCOMx xs)
              | v45 says reps v117 v118 v119::xs =>
                  I (getSquadLeaderCOMx xs)
              | v45 says v120 domi v121::xs => I (getSquadLeaderCOMx xs)
              | v45 says v122 eqi v123::xs => I (getSquadLeaderCOMx xs)
              | v45 says v124 doms v125::xs => I (getSquadLeaderCOMx xs)
              | v45 says v126 eqs v127::xs => I (getSquadLeaderCOMx xs)
              | v45 says v128 eqn v129::xs => I (getSquadLeaderCOMx xs)
              | v45 says v130 lte v131::xs => I (getSquadLeaderCOMx xs)
              | v45 says v132 lt v133::xs => I (getSquadLeaderCOMx xs)
              | v47 speaks_for v48::xs => I (getSquadLeaderCOMx xs)
              | v49 controls v50::xs => I (getSquadLeaderCOMx xs)
              | reps v51 v52 v53::xs => I (getSquadLeaderCOMx xs)
              | v54 domi v55::xs => I (getSquadLeaderCOMx xs)
              | v56 eqi v57::xs => I (getSquadLeaderCOMx xs)
              | v58 doms v59::xs => I (getSquadLeaderCOMx xs)
              | v60 eqs v61::xs => I (getSquadLeaderCOMx xs)
              | v62 eqn v63::xs => I (getSquadLeaderCOMx xs)
              | v64 lte v65::xs => I (getSquadLeaderCOMx xs)
              | v66 lt v67::xs => I (getSquadLeaderCOMx xs))

   [getOmniCOM_def]  Theorem

      |- (getOmniCOM [] = NONE) ∧
         (∀xs cmd.
            getOmniCOM (SOME (OmniCOM cmd)::xs) = SOME (OmniCOM cmd)) ∧
         (∀xs. getOmniCOM (NONE::xs) = getOmniCOM xs) ∧
         ∀xs v4. getOmniCOM (SOME (SquadLeaderCOM v4)::xs) = getOmniCOM xs

   [getOmniCOM_ind]  Theorem

      |- ∀P.
           P [] ∧ (∀cmd xs. P (SOME (OmniCOM cmd)::xs)) ∧
           (∀xs. P xs ⇒ P (NONE::xs)) ∧
           (∀v4 xs. P xs ⇒ P (SOME (SquadLeaderCOM v4)::xs)) ⇒
           ∀v. P v

   [getOmniCOMx_def]  Theorem

      |- (getOmniCOMx [] = NONE) ∧
         (∀xs cmd.
            getOmniCOMx (Name Omni says prop (SOME (OmniCOM cmd))::xs) =
            SOME (OmniCOM cmd)) ∧
         (∀xs. getOmniCOMx (TT::xs) = getOmniCOMx xs) ∧
         (∀xs. getOmniCOMx (FF::xs) = getOmniCOMx xs) ∧
         (∀xs v2. getOmniCOMx (prop v2::xs) = getOmniCOMx xs) ∧
         (∀xs v3. getOmniCOMx (notf v3::xs) = getOmniCOMx xs) ∧
         (∀xs v5 v4. getOmniCOMx (v4 andf v5::xs) = getOmniCOMx xs) ∧
         (∀xs v7 v6. getOmniCOMx (v6 orf v7::xs) = getOmniCOMx xs) ∧
         (∀xs v9 v8. getOmniCOMx (v8 impf v9::xs) = getOmniCOMx xs) ∧
         (∀xs v11 v10. getOmniCOMx (v10 eqf v11::xs) = getOmniCOMx xs) ∧
         (∀xs v12. getOmniCOMx (v12 says TT::xs) = getOmniCOMx xs) ∧
         (∀xs v12. getOmniCOMx (v12 says FF::xs) = getOmniCOMx xs) ∧
         (∀xs v134.
            getOmniCOMx (Name v134 says prop NONE::xs) = getOmniCOMx xs) ∧
         (∀xs v144.
            getOmniCOMx (Name SquadLeader says prop (SOME v144)::xs) =
            getOmniCOMx xs) ∧
         (∀xs v146.
            getOmniCOMx
              (Name Omni says prop (SOME (SquadLeaderCOM v146))::xs) =
            getOmniCOMx xs) ∧
         (∀xs v68 v136 v135.
            getOmniCOMx (v135 meet v136 says prop v68::xs) =
            getOmniCOMx xs) ∧
         (∀xs v68 v138 v137.
            getOmniCOMx (v137 quoting v138 says prop v68::xs) =
            getOmniCOMx xs) ∧
         (∀xs v69 v12.
            getOmniCOMx (v12 says notf v69::xs) = getOmniCOMx xs) ∧
         (∀xs v71 v70 v12.
            getOmniCOMx (v12 says (v70 andf v71)::xs) = getOmniCOMx xs) ∧
         (∀xs v73 v72 v12.
            getOmniCOMx (v12 says (v72 orf v73)::xs) = getOmniCOMx xs) ∧
         (∀xs v75 v74 v12.
            getOmniCOMx (v12 says (v74 impf v75)::xs) = getOmniCOMx xs) ∧
         (∀xs v77 v76 v12.
            getOmniCOMx (v12 says (v76 eqf v77)::xs) = getOmniCOMx xs) ∧
         (∀xs v79 v78 v12.
            getOmniCOMx (v12 says v78 says v79::xs) = getOmniCOMx xs) ∧
         (∀xs v81 v80 v12.
            getOmniCOMx (v12 says v80 speaks_for v81::xs) =
            getOmniCOMx xs) ∧
         (∀xs v83 v82 v12.
            getOmniCOMx (v12 says v82 controls v83::xs) = getOmniCOMx xs) ∧
         (∀xs v86 v85 v84 v12.
            getOmniCOMx (v12 says reps v84 v85 v86::xs) = getOmniCOMx xs) ∧
         (∀xs v88 v87 v12.
            getOmniCOMx (v12 says v87 domi v88::xs) = getOmniCOMx xs) ∧
         (∀xs v90 v89 v12.
            getOmniCOMx (v12 says v89 eqi v90::xs) = getOmniCOMx xs) ∧
         (∀xs v92 v91 v12.
            getOmniCOMx (v12 says v91 doms v92::xs) = getOmniCOMx xs) ∧
         (∀xs v94 v93 v12.
            getOmniCOMx (v12 says v93 eqs v94::xs) = getOmniCOMx xs) ∧
         (∀xs v96 v95 v12.
            getOmniCOMx (v12 says v95 eqn v96::xs) = getOmniCOMx xs) ∧
         (∀xs v98 v97 v12.
            getOmniCOMx (v12 says v97 lte v98::xs) = getOmniCOMx xs) ∧
         (∀xs v99 v12 v100.
            getOmniCOMx (v12 says v99 lt v100::xs) = getOmniCOMx xs) ∧
         (∀xs v15 v14.
            getOmniCOMx (v14 speaks_for v15::xs) = getOmniCOMx xs) ∧
         (∀xs v17 v16.
            getOmniCOMx (v16 controls v17::xs) = getOmniCOMx xs) ∧
         (∀xs v20 v19 v18.
            getOmniCOMx (reps v18 v19 v20::xs) = getOmniCOMx xs) ∧
         (∀xs v22 v21. getOmniCOMx (v21 domi v22::xs) = getOmniCOMx xs) ∧
         (∀xs v24 v23. getOmniCOMx (v23 eqi v24::xs) = getOmniCOMx xs) ∧
         (∀xs v26 v25. getOmniCOMx (v25 doms v26::xs) = getOmniCOMx xs) ∧
         (∀xs v28 v27. getOmniCOMx (v27 eqs v28::xs) = getOmniCOMx xs) ∧
         (∀xs v30 v29. getOmniCOMx (v29 eqn v30::xs) = getOmniCOMx xs) ∧
         (∀xs v32 v31. getOmniCOMx (v31 lte v32::xs) = getOmniCOMx xs) ∧
         ∀xs v34 v33. getOmniCOMx (v33 lt v34::xs) = getOmniCOMx xs

   [getOmniCOMx_ind]  Theorem

      |- ∀P.
           P [] ∧
           (∀cmd xs. P (Name Omni says prop (SOME (OmniCOM cmd))::xs)) ∧
           (∀xs. P xs ⇒ P (TT::xs)) ∧ (∀xs. P xs ⇒ P (FF::xs)) ∧
           (∀v2 xs. P xs ⇒ P (prop v2::xs)) ∧
           (∀v3 xs. P xs ⇒ P (notf v3::xs)) ∧
           (∀v4 v5 xs. P xs ⇒ P (v4 andf v5::xs)) ∧
           (∀v6 v7 xs. P xs ⇒ P (v6 orf v7::xs)) ∧
           (∀v8 v9 xs. P xs ⇒ P (v8 impf v9::xs)) ∧
           (∀v10 v11 xs. P xs ⇒ P (v10 eqf v11::xs)) ∧
           (∀v12 xs. P xs ⇒ P (v12 says TT::xs)) ∧
           (∀v12 xs. P xs ⇒ P (v12 says FF::xs)) ∧
           (∀v134 xs. P xs ⇒ P (Name v134 says prop NONE::xs)) ∧
           (∀v144 xs.
              P xs ⇒ P (Name SquadLeader says prop (SOME v144)::xs)) ∧
           (∀v146 xs.
              P xs ⇒
              P (Name Omni says prop (SOME (SquadLeaderCOM v146))::xs)) ∧
           (∀v135 v136 v68 xs.
              P xs ⇒ P (v135 meet v136 says prop v68::xs)) ∧
           (∀v137 v138 v68 xs.
              P xs ⇒ P (v137 quoting v138 says prop v68::xs)) ∧
           (∀v12 v69 xs. P xs ⇒ P (v12 says notf v69::xs)) ∧
           (∀v12 v70 v71 xs. P xs ⇒ P (v12 says (v70 andf v71)::xs)) ∧
           (∀v12 v72 v73 xs. P xs ⇒ P (v12 says (v72 orf v73)::xs)) ∧
           (∀v12 v74 v75 xs. P xs ⇒ P (v12 says (v74 impf v75)::xs)) ∧
           (∀v12 v76 v77 xs. P xs ⇒ P (v12 says (v76 eqf v77)::xs)) ∧
           (∀v12 v78 v79 xs. P xs ⇒ P (v12 says v78 says v79::xs)) ∧
           (∀v12 v80 v81 xs. P xs ⇒ P (v12 says v80 speaks_for v81::xs)) ∧
           (∀v12 v82 v83 xs. P xs ⇒ P (v12 says v82 controls v83::xs)) ∧
           (∀v12 v84 v85 v86 xs.
              P xs ⇒ P (v12 says reps v84 v85 v86::xs)) ∧
           (∀v12 v87 v88 xs. P xs ⇒ P (v12 says v87 domi v88::xs)) ∧
           (∀v12 v89 v90 xs. P xs ⇒ P (v12 says v89 eqi v90::xs)) ∧
           (∀v12 v91 v92 xs. P xs ⇒ P (v12 says v91 doms v92::xs)) ∧
           (∀v12 v93 v94 xs. P xs ⇒ P (v12 says v93 eqs v94::xs)) ∧
           (∀v12 v95 v96 xs. P xs ⇒ P (v12 says v95 eqn v96::xs)) ∧
           (∀v12 v97 v98 xs. P xs ⇒ P (v12 says v97 lte v98::xs)) ∧
           (∀v12 v99 v100 xs. P xs ⇒ P (v12 says v99 lt v100::xs)) ∧
           (∀v14 v15 xs. P xs ⇒ P (v14 speaks_for v15::xs)) ∧
           (∀v16 v17 xs. P xs ⇒ P (v16 controls v17::xs)) ∧
           (∀v18 v19 v20 xs. P xs ⇒ P (reps v18 v19 v20::xs)) ∧
           (∀v21 v22 xs. P xs ⇒ P (v21 domi v22::xs)) ∧
           (∀v23 v24 xs. P xs ⇒ P (v23 eqi v24::xs)) ∧
           (∀v25 v26 xs. P xs ⇒ P (v25 doms v26::xs)) ∧
           (∀v27 v28 xs. P xs ⇒ P (v27 eqs v28::xs)) ∧
           (∀v29 v30 xs. P xs ⇒ P (v29 eqn v30::xs)) ∧
           (∀v31 v32 xs. P xs ⇒ P (v31 lte v32::xs)) ∧
           (∀v33 v34 xs. P xs ⇒ P (v33 lt v34::xs)) ⇒
           ∀v. P v

   [getSquadLeaderCOM_def]  Theorem

      |- (getSquadLeaderCOM [] = NONE) ∧
         (∀xs cmd.
            getSquadLeaderCOM (SOME (SquadLeaderCOM cmd)::xs) =
            SOME (SquadLeaderCOM cmd)) ∧
         (∀xs. getSquadLeaderCOM (NONE::xs) = getSquadLeaderCOM xs) ∧
         ∀xs v5.
           getSquadLeaderCOM (SOME (OmniCOM v5)::xs) = getSquadLeaderCOM xs

   [getSquadLeaderCOM_ind]  Theorem

      |- ∀P.
           P [] ∧ (∀cmd xs. P (SOME (SquadLeaderCOM cmd)::xs)) ∧
           (∀xs. P xs ⇒ P (NONE::xs)) ∧
           (∀v5 xs. P xs ⇒ P (SOME (OmniCOM v5)::xs)) ⇒
           ∀v. P v

   [getSquadLeaderCOMx_def]  Theorem

      |- (getSquadLeaderCOMx [] = NONE) ∧
         (∀xs cmd.
            getSquadLeaderCOMx
              (Name SquadLeader says prop (SOME (SquadLeaderCOM cmd))::
                   xs) =
            SOME (SquadLeaderCOM cmd)) ∧
         (∀xs. getSquadLeaderCOMx (TT::xs) = getSquadLeaderCOMx xs) ∧
         (∀xs. getSquadLeaderCOMx (FF::xs) = getSquadLeaderCOMx xs) ∧
         (∀xs v2.
            getSquadLeaderCOMx (prop v2::xs) = getSquadLeaderCOMx xs) ∧
         (∀xs v3.
            getSquadLeaderCOMx (notf v3::xs) = getSquadLeaderCOMx xs) ∧
         (∀xs v5 v4.
            getSquadLeaderCOMx (v4 andf v5::xs) = getSquadLeaderCOMx xs) ∧
         (∀xs v7 v6.
            getSquadLeaderCOMx (v6 orf v7::xs) = getSquadLeaderCOMx xs) ∧
         (∀xs v9 v8.
            getSquadLeaderCOMx (v8 impf v9::xs) = getSquadLeaderCOMx xs) ∧
         (∀xs v11 v10.
            getSquadLeaderCOMx (v10 eqf v11::xs) = getSquadLeaderCOMx xs) ∧
         (∀xs v12.
            getSquadLeaderCOMx (v12 says TT::xs) = getSquadLeaderCOMx xs) ∧
         (∀xs v12.
            getSquadLeaderCOMx (v12 says FF::xs) = getSquadLeaderCOMx xs) ∧
         (∀xs v134.
            getSquadLeaderCOMx (Name v134 says prop NONE::xs) =
            getSquadLeaderCOMx xs) ∧
         (∀xs v147.
            getSquadLeaderCOMx
              (Name SquadLeader says prop (SOME (OmniCOM v147))::xs) =
            getSquadLeaderCOMx xs) ∧
         (∀xs v144.
            getSquadLeaderCOMx (Name Omni says prop (SOME v144)::xs) =
            getSquadLeaderCOMx xs) ∧
         (∀xs v68 v136 v135.
            getSquadLeaderCOMx (v135 meet v136 says prop v68::xs) =
            getSquadLeaderCOMx xs) ∧
         (∀xs v68 v138 v137.
            getSquadLeaderCOMx (v137 quoting v138 says prop v68::xs) =
            getSquadLeaderCOMx xs) ∧
         (∀xs v69 v12.
            getSquadLeaderCOMx (v12 says notf v69::xs) =
            getSquadLeaderCOMx xs) ∧
         (∀xs v71 v70 v12.
            getSquadLeaderCOMx (v12 says (v70 andf v71)::xs) =
            getSquadLeaderCOMx xs) ∧
         (∀xs v73 v72 v12.
            getSquadLeaderCOMx (v12 says (v72 orf v73)::xs) =
            getSquadLeaderCOMx xs) ∧
         (∀xs v75 v74 v12.
            getSquadLeaderCOMx (v12 says (v74 impf v75)::xs) =
            getSquadLeaderCOMx xs) ∧
         (∀xs v77 v76 v12.
            getSquadLeaderCOMx (v12 says (v76 eqf v77)::xs) =
            getSquadLeaderCOMx xs) ∧
         (∀xs v79 v78 v12.
            getSquadLeaderCOMx (v12 says v78 says v79::xs) =
            getSquadLeaderCOMx xs) ∧
         (∀xs v81 v80 v12.
            getSquadLeaderCOMx (v12 says v80 speaks_for v81::xs) =
            getSquadLeaderCOMx xs) ∧
         (∀xs v83 v82 v12.
            getSquadLeaderCOMx (v12 says v82 controls v83::xs) =
            getSquadLeaderCOMx xs) ∧
         (∀xs v86 v85 v84 v12.
            getSquadLeaderCOMx (v12 says reps v84 v85 v86::xs) =
            getSquadLeaderCOMx xs) ∧
         (∀xs v88 v87 v12.
            getSquadLeaderCOMx (v12 says v87 domi v88::xs) =
            getSquadLeaderCOMx xs) ∧
         (∀xs v90 v89 v12.
            getSquadLeaderCOMx (v12 says v89 eqi v90::xs) =
            getSquadLeaderCOMx xs) ∧
         (∀xs v92 v91 v12.
            getSquadLeaderCOMx (v12 says v91 doms v92::xs) =
            getSquadLeaderCOMx xs) ∧
         (∀xs v94 v93 v12.
            getSquadLeaderCOMx (v12 says v93 eqs v94::xs) =
            getSquadLeaderCOMx xs) ∧
         (∀xs v96 v95 v12.
            getSquadLeaderCOMx (v12 says v95 eqn v96::xs) =
            getSquadLeaderCOMx xs) ∧
         (∀xs v98 v97 v12.
            getSquadLeaderCOMx (v12 says v97 lte v98::xs) =
            getSquadLeaderCOMx xs) ∧
         (∀xs v99 v12 v100.
            getSquadLeaderCOMx (v12 says v99 lt v100::xs) =
            getSquadLeaderCOMx xs) ∧
         (∀xs v15 v14.
            getSquadLeaderCOMx (v14 speaks_for v15::xs) =
            getSquadLeaderCOMx xs) ∧
         (∀xs v17 v16.
            getSquadLeaderCOMx (v16 controls v17::xs) =
            getSquadLeaderCOMx xs) ∧
         (∀xs v20 v19 v18.
            getSquadLeaderCOMx (reps v18 v19 v20::xs) =
            getSquadLeaderCOMx xs) ∧
         (∀xs v22 v21.
            getSquadLeaderCOMx (v21 domi v22::xs) =
            getSquadLeaderCOMx xs) ∧
         (∀xs v24 v23.
            getSquadLeaderCOMx (v23 eqi v24::xs) = getSquadLeaderCOMx xs) ∧
         (∀xs v26 v25.
            getSquadLeaderCOMx (v25 doms v26::xs) =
            getSquadLeaderCOMx xs) ∧
         (∀xs v28 v27.
            getSquadLeaderCOMx (v27 eqs v28::xs) = getSquadLeaderCOMx xs) ∧
         (∀xs v30 v29.
            getSquadLeaderCOMx (v29 eqn v30::xs) = getSquadLeaderCOMx xs) ∧
         (∀xs v32 v31.
            getSquadLeaderCOMx (v31 lte v32::xs) = getSquadLeaderCOMx xs) ∧
         ∀xs v34 v33.
           getSquadLeaderCOMx (v33 lt v34::xs) = getSquadLeaderCOMx xs

   [getSquadLeaderCOMx_ind]  Theorem

      |- ∀P.
           P [] ∧
           (∀cmd xs.
              P
                (Name SquadLeader says prop (SOME (SquadLeaderCOM cmd))::
                     xs)) ∧ (∀xs. P xs ⇒ P (TT::xs)) ∧
           (∀xs. P xs ⇒ P (FF::xs)) ∧ (∀v2 xs. P xs ⇒ P (prop v2::xs)) ∧
           (∀v3 xs. P xs ⇒ P (notf v3::xs)) ∧
           (∀v4 v5 xs. P xs ⇒ P (v4 andf v5::xs)) ∧
           (∀v6 v7 xs. P xs ⇒ P (v6 orf v7::xs)) ∧
           (∀v8 v9 xs. P xs ⇒ P (v8 impf v9::xs)) ∧
           (∀v10 v11 xs. P xs ⇒ P (v10 eqf v11::xs)) ∧
           (∀v12 xs. P xs ⇒ P (v12 says TT::xs)) ∧
           (∀v12 xs. P xs ⇒ P (v12 says FF::xs)) ∧
           (∀v134 xs. P xs ⇒ P (Name v134 says prop NONE::xs)) ∧
           (∀v147 xs.
              P xs ⇒
              P (Name SquadLeader says prop (SOME (OmniCOM v147))::xs)) ∧
           (∀v144 xs. P xs ⇒ P (Name Omni says prop (SOME v144)::xs)) ∧
           (∀v135 v136 v68 xs.
              P xs ⇒ P (v135 meet v136 says prop v68::xs)) ∧
           (∀v137 v138 v68 xs.
              P xs ⇒ P (v137 quoting v138 says prop v68::xs)) ∧
           (∀v12 v69 xs. P xs ⇒ P (v12 says notf v69::xs)) ∧
           (∀v12 v70 v71 xs. P xs ⇒ P (v12 says (v70 andf v71)::xs)) ∧
           (∀v12 v72 v73 xs. P xs ⇒ P (v12 says (v72 orf v73)::xs)) ∧
           (∀v12 v74 v75 xs. P xs ⇒ P (v12 says (v74 impf v75)::xs)) ∧
           (∀v12 v76 v77 xs. P xs ⇒ P (v12 says (v76 eqf v77)::xs)) ∧
           (∀v12 v78 v79 xs. P xs ⇒ P (v12 says v78 says v79::xs)) ∧
           (∀v12 v80 v81 xs. P xs ⇒ P (v12 says v80 speaks_for v81::xs)) ∧
           (∀v12 v82 v83 xs. P xs ⇒ P (v12 says v82 controls v83::xs)) ∧
           (∀v12 v84 v85 v86 xs.
              P xs ⇒ P (v12 says reps v84 v85 v86::xs)) ∧
           (∀v12 v87 v88 xs. P xs ⇒ P (v12 says v87 domi v88::xs)) ∧
           (∀v12 v89 v90 xs. P xs ⇒ P (v12 says v89 eqi v90::xs)) ∧
           (∀v12 v91 v92 xs. P xs ⇒ P (v12 says v91 doms v92::xs)) ∧
           (∀v12 v93 v94 xs. P xs ⇒ P (v12 says v93 eqs v94::xs)) ∧
           (∀v12 v95 v96 xs. P xs ⇒ P (v12 says v95 eqn v96::xs)) ∧
           (∀v12 v97 v98 xs. P xs ⇒ P (v12 says v97 lte v98::xs)) ∧
           (∀v12 v99 v100 xs. P xs ⇒ P (v12 says v99 lt v100::xs)) ∧
           (∀v14 v15 xs. P xs ⇒ P (v14 speaks_for v15::xs)) ∧
           (∀v16 v17 xs. P xs ⇒ P (v16 controls v17::xs)) ∧
           (∀v18 v19 v20 xs. P xs ⇒ P (reps v18 v19 v20::xs)) ∧
           (∀v21 v22 xs. P xs ⇒ P (v21 domi v22::xs)) ∧
           (∀v23 v24 xs. P xs ⇒ P (v23 eqi v24::xs)) ∧
           (∀v25 v26 xs. P xs ⇒ P (v25 doms v26::xs)) ∧
           (∀v27 v28 xs. P xs ⇒ P (v27 eqs v28::xs)) ∧
           (∀v29 v30 xs. P xs ⇒ P (v29 eqn v30::xs)) ∧
           (∀v31 v32 xs. P xs ⇒ P (v31 lte v32::xs)) ∧
           (∀v33 v34 xs. P xs ⇒ P (v33 lt v34::xs)) ⇒
           ∀v. P v


*)
end
