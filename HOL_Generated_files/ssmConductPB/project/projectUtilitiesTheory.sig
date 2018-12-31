signature projectUtilitiesTheory =
sig
  type thm = Thm.thm

  (*  Definitions  *)
    val getOmniCOM_primitive_def : thm
    val getOmniCOMx_primitive_def : thm
    val getPlatoonLeaderCOM_primitive_def : thm
    val getPlatoonLeaderCOMx_primitive_def : thm
    val getPlatoonSergeantCOM_primitive_def : thm
    val getPlatoonSergeantCOMx_primitive_def : thm

  (*  Theorems  *)
    val getOmniCOM_def : thm
    val getOmniCOM_ind : thm
    val getOmniCOMx_def : thm
    val getOmniCOMx_ind : thm
    val getPlatoonLeaderCOM_def : thm
    val getPlatoonLeaderCOM_ind : thm
    val getPlatoonLeaderCOMx_def : thm
    val getPlatoonLeaderCOMx_ind : thm
    val getPlatoonSergeantCOM_def : thm
    val getPlatoonSergeantCOM_ind : thm
    val getPlatoonSergeantCOMx_def : thm
    val getPlatoonSergeantCOMx_ind : thm

  val projectUtilities_grammars : type_grammar.grammar * term_grammar.grammar
(*
   [projectTypes] Parent theory of "projectUtilities"

   [satList] Parent theory of "projectUtilities"

   [getOmniCOM_primitive_def]  Definition

      |- getOmniCOM =
         WFREC
           (@R.
              WF R ∧ (∀xs. R xs (NONE::xs)) ∧
              (∀v4 xs. R xs (SOME (PlatoonLeaderCOM v4)::xs)) ∧
              ∀v5 xs. R xs (SOME (PlatoonSergeantCOM v5)::xs))
           (λgetOmniCOM a.
              case a of
                [] => I NONE
              | NONE::xs => I (getOmniCOM xs)
              | SOME (PlatoonLeaderCOM v7)::xs => I (getOmniCOM xs)
              | SOME (PlatoonSergeantCOM v8)::xs => I (getOmniCOM xs)
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
                 R xs (Name PlatoonLeader says prop (SOME v144)::xs)) ∧
              (∀v144 xs.
                 R xs (Name PlatoonSergeant says prop (SOME v144)::xs)) ∧
              (∀v146 xs.
                 R xs
                   (Name Omni says prop (SOME (PlatoonLeaderCOM v146))::
                        xs)) ∧
              (∀v147 xs.
                 R xs
                   (Name Omni says prop (SOME (PlatoonSergeantCOM v147))::
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
              | Name PlatoonLeader says prop (SOME v145)::xs =>
                  I (getOmniCOMx xs)
              | Name PlatoonSergeant says prop (SOME v145)::xs =>
                  I (getOmniCOMx xs)
              | Name Omni says prop (SOME (PlatoonLeaderCOM v149))::xs =>
                  I (getOmniCOMx xs)
              | Name Omni says prop (SOME (PlatoonSergeantCOM v150))::xs =>
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

   [getPlatoonLeaderCOM_primitive_def]  Definition

      |- getPlatoonLeaderCOM =
         WFREC
           (@R.
              WF R ∧ (∀xs. R xs (NONE::xs)) ∧
              (∀v5 xs. R xs (SOME (PlatoonSergeantCOM v5)::xs)) ∧
              ∀v6 xs. R xs (SOME (OmniCOM v6)::xs))
           (λgetPlatoonLeaderCOM a.
              case a of
                [] => I NONE
              | NONE::xs => I (getPlatoonLeaderCOM xs)
              | SOME (PlatoonLeaderCOM cmd)::xs =>
                  I (SOME (PlatoonLeaderCOM cmd))
              | SOME (PlatoonSergeantCOM v8)::xs =>
                  I (getPlatoonLeaderCOM xs)
              | SOME (OmniCOM v9)::xs => I (getPlatoonLeaderCOM xs))

   [getPlatoonLeaderCOMx_primitive_def]  Definition

      |- getPlatoonLeaderCOMx =
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
                   (Name PlatoonLeader says
                    prop (SOME (PlatoonSergeantCOM v147))::xs)) ∧
              (∀v148 xs.
                 R xs
                   (Name PlatoonLeader says prop (SOME (OmniCOM v148))::
                        xs)) ∧
              (∀v144 xs.
                 R xs (Name PlatoonSergeant says prop (SOME v144)::xs)) ∧
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
           (λgetPlatoonLeaderCOMx a.
              case a of
                [] => I NONE
              | TT::xs => I (getPlatoonLeaderCOMx xs)
              | FF::xs => I (getPlatoonLeaderCOMx xs)
              | prop v35::xs => I (getPlatoonLeaderCOMx xs)
              | notf v36::xs => I (getPlatoonLeaderCOMx xs)
              | v37 andf v38::xs => I (getPlatoonLeaderCOMx xs)
              | v39 orf v40::xs => I (getPlatoonLeaderCOMx xs)
              | v41 impf v42::xs => I (getPlatoonLeaderCOMx xs)
              | v43 eqf v44::xs => I (getPlatoonLeaderCOMx xs)
              | v45 says TT::xs => I (getPlatoonLeaderCOMx xs)
              | v45 says FF::xs => I (getPlatoonLeaderCOMx xs)
              | Name v139 says prop NONE::xs => I (getPlatoonLeaderCOMx xs)
              | Name PlatoonLeader says
                prop (SOME (PlatoonLeaderCOM cmd))::xs =>
                  I (SOME (PlatoonLeaderCOM cmd))
              | Name PlatoonLeader says
                prop (SOME (PlatoonSergeantCOM v150))::xs =>
                  I (getPlatoonLeaderCOMx xs)
              | Name PlatoonLeader says prop (SOME (OmniCOM v151))::xs =>
                  I (getPlatoonLeaderCOMx xs)
              | Name PlatoonSergeant says prop (SOME v145)::xs =>
                  I (getPlatoonLeaderCOMx xs)
              | Name Omni says prop (SOME v145)::xs =>
                  I (getPlatoonLeaderCOMx xs)
              | v140 meet v141 says prop v101::xs =>
                  I (getPlatoonLeaderCOMx xs)
              | v142 quoting v143 says prop v101::xs =>
                  I (getPlatoonLeaderCOMx xs)
              | v45 says notf v102::xs => I (getPlatoonLeaderCOMx xs)
              | v45 says (v103 andf v104)::xs =>
                  I (getPlatoonLeaderCOMx xs)
              | v45 says (v105 orf v106)::xs => I (getPlatoonLeaderCOMx xs)
              | v45 says (v107 impf v108)::xs =>
                  I (getPlatoonLeaderCOMx xs)
              | v45 says (v109 eqf v110)::xs => I (getPlatoonLeaderCOMx xs)
              | v45 says v111 says v112::xs => I (getPlatoonLeaderCOMx xs)
              | v45 says v113 speaks_for v114::xs =>
                  I (getPlatoonLeaderCOMx xs)
              | v45 says v115 controls v116::xs =>
                  I (getPlatoonLeaderCOMx xs)
              | v45 says reps v117 v118 v119::xs =>
                  I (getPlatoonLeaderCOMx xs)
              | v45 says v120 domi v121::xs => I (getPlatoonLeaderCOMx xs)
              | v45 says v122 eqi v123::xs => I (getPlatoonLeaderCOMx xs)
              | v45 says v124 doms v125::xs => I (getPlatoonLeaderCOMx xs)
              | v45 says v126 eqs v127::xs => I (getPlatoonLeaderCOMx xs)
              | v45 says v128 eqn v129::xs => I (getPlatoonLeaderCOMx xs)
              | v45 says v130 lte v131::xs => I (getPlatoonLeaderCOMx xs)
              | v45 says v132 lt v133::xs => I (getPlatoonLeaderCOMx xs)
              | v47 speaks_for v48::xs => I (getPlatoonLeaderCOMx xs)
              | v49 controls v50::xs => I (getPlatoonLeaderCOMx xs)
              | reps v51 v52 v53::xs => I (getPlatoonLeaderCOMx xs)
              | v54 domi v55::xs => I (getPlatoonLeaderCOMx xs)
              | v56 eqi v57::xs => I (getPlatoonLeaderCOMx xs)
              | v58 doms v59::xs => I (getPlatoonLeaderCOMx xs)
              | v60 eqs v61::xs => I (getPlatoonLeaderCOMx xs)
              | v62 eqn v63::xs => I (getPlatoonLeaderCOMx xs)
              | v64 lte v65::xs => I (getPlatoonLeaderCOMx xs)
              | v66 lt v67::xs => I (getPlatoonLeaderCOMx xs))

   [getPlatoonSergeantCOM_primitive_def]  Definition

      |- getPlatoonSergeantCOM =
         WFREC
           (@R.
              WF R ∧ (∀xs. R xs (NONE::xs)) ∧
              (∀v4 xs. R xs (SOME (PlatoonLeaderCOM v4)::xs)) ∧
              ∀v6 xs. R xs (SOME (OmniCOM v6)::xs))
           (λgetPlatoonSergeantCOM a.
              case a of
                [] => I NONE
              | NONE::xs => I (getPlatoonSergeantCOM xs)
              | SOME (PlatoonLeaderCOM v7)::xs =>
                  I (getPlatoonSergeantCOM xs)
              | SOME (PlatoonSergeantCOM cmd)::xs =>
                  I (SOME (PlatoonSergeantCOM cmd))
              | SOME (OmniCOM v9)::xs => I (getPlatoonSergeantCOM xs))

   [getPlatoonSergeantCOMx_primitive_def]  Definition

      |- getPlatoonSergeantCOMx =
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
                 R xs (Name PlatoonLeader says prop (SOME v144)::xs)) ∧
              (∀v146 xs.
                 R xs
                   (Name PlatoonSergeant says
                    prop (SOME (PlatoonLeaderCOM v146))::xs)) ∧
              (∀v148 xs.
                 R xs
                   (Name PlatoonSergeant says prop (SOME (OmniCOM v148))::
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
           (λgetPlatoonSergeantCOMx a.
              case a of
                [] => I NONE
              | TT::xs => I (getPlatoonSergeantCOMx xs)
              | FF::xs => I (getPlatoonSergeantCOMx xs)
              | prop v35::xs => I (getPlatoonSergeantCOMx xs)
              | notf v36::xs => I (getPlatoonSergeantCOMx xs)
              | v37 andf v38::xs => I (getPlatoonSergeantCOMx xs)
              | v39 orf v40::xs => I (getPlatoonSergeantCOMx xs)
              | v41 impf v42::xs => I (getPlatoonSergeantCOMx xs)
              | v43 eqf v44::xs => I (getPlatoonSergeantCOMx xs)
              | v45 says TT::xs => I (getPlatoonSergeantCOMx xs)
              | v45 says FF::xs => I (getPlatoonSergeantCOMx xs)
              | Name v139 says prop NONE::xs =>
                  I (getPlatoonSergeantCOMx xs)
              | Name PlatoonLeader says prop (SOME v145)::xs =>
                  I (getPlatoonSergeantCOMx xs)
              | Name PlatoonSergeant says
                prop (SOME (PlatoonLeaderCOM v149))::xs =>
                  I (getPlatoonSergeantCOMx xs)
              | Name PlatoonSergeant says
                prop (SOME (PlatoonSergeantCOM cmd))::xs =>
                  I (SOME (PlatoonSergeantCOM cmd))
              | Name PlatoonSergeant says prop (SOME (OmniCOM v151))::xs =>
                  I (getPlatoonSergeantCOMx xs)
              | Name Omni says prop (SOME v145)::xs =>
                  I (getPlatoonSergeantCOMx xs)
              | v140 meet v141 says prop v101::xs =>
                  I (getPlatoonSergeantCOMx xs)
              | v142 quoting v143 says prop v101::xs =>
                  I (getPlatoonSergeantCOMx xs)
              | v45 says notf v102::xs => I (getPlatoonSergeantCOMx xs)
              | v45 says (v103 andf v104)::xs =>
                  I (getPlatoonSergeantCOMx xs)
              | v45 says (v105 orf v106)::xs =>
                  I (getPlatoonSergeantCOMx xs)
              | v45 says (v107 impf v108)::xs =>
                  I (getPlatoonSergeantCOMx xs)
              | v45 says (v109 eqf v110)::xs =>
                  I (getPlatoonSergeantCOMx xs)
              | v45 says v111 says v112::xs =>
                  I (getPlatoonSergeantCOMx xs)
              | v45 says v113 speaks_for v114::xs =>
                  I (getPlatoonSergeantCOMx xs)
              | v45 says v115 controls v116::xs =>
                  I (getPlatoonSergeantCOMx xs)
              | v45 says reps v117 v118 v119::xs =>
                  I (getPlatoonSergeantCOMx xs)
              | v45 says v120 domi v121::xs =>
                  I (getPlatoonSergeantCOMx xs)
              | v45 says v122 eqi v123::xs => I (getPlatoonSergeantCOMx xs)
              | v45 says v124 doms v125::xs =>
                  I (getPlatoonSergeantCOMx xs)
              | v45 says v126 eqs v127::xs => I (getPlatoonSergeantCOMx xs)
              | v45 says v128 eqn v129::xs => I (getPlatoonSergeantCOMx xs)
              | v45 says v130 lte v131::xs => I (getPlatoonSergeantCOMx xs)
              | v45 says v132 lt v133::xs => I (getPlatoonSergeantCOMx xs)
              | v47 speaks_for v48::xs => I (getPlatoonSergeantCOMx xs)
              | v49 controls v50::xs => I (getPlatoonSergeantCOMx xs)
              | reps v51 v52 v53::xs => I (getPlatoonSergeantCOMx xs)
              | v54 domi v55::xs => I (getPlatoonSergeantCOMx xs)
              | v56 eqi v57::xs => I (getPlatoonSergeantCOMx xs)
              | v58 doms v59::xs => I (getPlatoonSergeantCOMx xs)
              | v60 eqs v61::xs => I (getPlatoonSergeantCOMx xs)
              | v62 eqn v63::xs => I (getPlatoonSergeantCOMx xs)
              | v64 lte v65::xs => I (getPlatoonSergeantCOMx xs)
              | v66 lt v67::xs => I (getPlatoonSergeantCOMx xs))

   [getOmniCOM_def]  Theorem

      |- (getOmniCOM [] = NONE) ∧
         (∀xs cmd.
            getOmniCOM (SOME (OmniCOM cmd)::xs) = SOME (OmniCOM cmd)) ∧
         (∀xs. getOmniCOM (NONE::xs) = getOmniCOM xs) ∧
         (∀xs v4.
            getOmniCOM (SOME (PlatoonLeaderCOM v4)::xs) = getOmniCOM xs) ∧
         ∀xs v5.
           getOmniCOM (SOME (PlatoonSergeantCOM v5)::xs) = getOmniCOM xs

   [getOmniCOM_ind]  Theorem

      |- ∀P.
           P [] ∧ (∀cmd xs. P (SOME (OmniCOM cmd)::xs)) ∧
           (∀xs. P xs ⇒ P (NONE::xs)) ∧
           (∀v4 xs. P xs ⇒ P (SOME (PlatoonLeaderCOM v4)::xs)) ∧
           (∀v5 xs. P xs ⇒ P (SOME (PlatoonSergeantCOM v5)::xs)) ⇒
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
            getOmniCOMx (Name PlatoonLeader says prop (SOME v144)::xs) =
            getOmniCOMx xs) ∧
         (∀xs v144.
            getOmniCOMx (Name PlatoonSergeant says prop (SOME v144)::xs) =
            getOmniCOMx xs) ∧
         (∀xs v146.
            getOmniCOMx
              (Name Omni says prop (SOME (PlatoonLeaderCOM v146))::xs) =
            getOmniCOMx xs) ∧
         (∀xs v147.
            getOmniCOMx
              (Name Omni says prop (SOME (PlatoonSergeantCOM v147))::xs) =
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
              P xs ⇒ P (Name PlatoonLeader says prop (SOME v144)::xs)) ∧
           (∀v144 xs.
              P xs ⇒ P (Name PlatoonSergeant says prop (SOME v144)::xs)) ∧
           (∀v146 xs.
              P xs ⇒
              P (Name Omni says prop (SOME (PlatoonLeaderCOM v146))::xs)) ∧
           (∀v147 xs.
              P xs ⇒
              P
                (Name Omni says prop (SOME (PlatoonSergeantCOM v147))::
                     xs)) ∧
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

   [getPlatoonLeaderCOM_def]  Theorem

      |- (getPlatoonLeaderCOM [] = NONE) ∧
         (∀xs cmd.
            getPlatoonLeaderCOM (SOME (PlatoonLeaderCOM cmd)::xs) =
            SOME (PlatoonLeaderCOM cmd)) ∧
         (∀xs. getPlatoonLeaderCOM (NONE::xs) = getPlatoonLeaderCOM xs) ∧
         (∀xs v5.
            getPlatoonLeaderCOM (SOME (PlatoonSergeantCOM v5)::xs) =
            getPlatoonLeaderCOM xs) ∧
         ∀xs v6.
           getPlatoonLeaderCOM (SOME (OmniCOM v6)::xs) =
           getPlatoonLeaderCOM xs

   [getPlatoonLeaderCOM_ind]  Theorem

      |- ∀P.
           P [] ∧ (∀cmd xs. P (SOME (PlatoonLeaderCOM cmd)::xs)) ∧
           (∀xs. P xs ⇒ P (NONE::xs)) ∧
           (∀v5 xs. P xs ⇒ P (SOME (PlatoonSergeantCOM v5)::xs)) ∧
           (∀v6 xs. P xs ⇒ P (SOME (OmniCOM v6)::xs)) ⇒
           ∀v. P v

   [getPlatoonLeaderCOMx_def]  Theorem

      |- (getPlatoonLeaderCOMx [] = NONE) ∧
         (∀xs cmd.
            getPlatoonLeaderCOMx
              (Name PlatoonLeader says prop (SOME (PlatoonLeaderCOM cmd))::
                   xs) =
            SOME (PlatoonLeaderCOM cmd)) ∧
         (∀xs. getPlatoonLeaderCOMx (TT::xs) = getPlatoonLeaderCOMx xs) ∧
         (∀xs. getPlatoonLeaderCOMx (FF::xs) = getPlatoonLeaderCOMx xs) ∧
         (∀xs v2.
            getPlatoonLeaderCOMx (prop v2::xs) = getPlatoonLeaderCOMx xs) ∧
         (∀xs v3.
            getPlatoonLeaderCOMx (notf v3::xs) = getPlatoonLeaderCOMx xs) ∧
         (∀xs v5 v4.
            getPlatoonLeaderCOMx (v4 andf v5::xs) =
            getPlatoonLeaderCOMx xs) ∧
         (∀xs v7 v6.
            getPlatoonLeaderCOMx (v6 orf v7::xs) =
            getPlatoonLeaderCOMx xs) ∧
         (∀xs v9 v8.
            getPlatoonLeaderCOMx (v8 impf v9::xs) =
            getPlatoonLeaderCOMx xs) ∧
         (∀xs v11 v10.
            getPlatoonLeaderCOMx (v10 eqf v11::xs) =
            getPlatoonLeaderCOMx xs) ∧
         (∀xs v12.
            getPlatoonLeaderCOMx (v12 says TT::xs) =
            getPlatoonLeaderCOMx xs) ∧
         (∀xs v12.
            getPlatoonLeaderCOMx (v12 says FF::xs) =
            getPlatoonLeaderCOMx xs) ∧
         (∀xs v134.
            getPlatoonLeaderCOMx (Name v134 says prop NONE::xs) =
            getPlatoonLeaderCOMx xs) ∧
         (∀xs v147.
            getPlatoonLeaderCOMx
              (Name PlatoonLeader says
               prop (SOME (PlatoonSergeantCOM v147))::xs) =
            getPlatoonLeaderCOMx xs) ∧
         (∀xs v148.
            getPlatoonLeaderCOMx
              (Name PlatoonLeader says prop (SOME (OmniCOM v148))::xs) =
            getPlatoonLeaderCOMx xs) ∧
         (∀xs v144.
            getPlatoonLeaderCOMx
              (Name PlatoonSergeant says prop (SOME v144)::xs) =
            getPlatoonLeaderCOMx xs) ∧
         (∀xs v144.
            getPlatoonLeaderCOMx (Name Omni says prop (SOME v144)::xs) =
            getPlatoonLeaderCOMx xs) ∧
         (∀xs v68 v136 v135.
            getPlatoonLeaderCOMx (v135 meet v136 says prop v68::xs) =
            getPlatoonLeaderCOMx xs) ∧
         (∀xs v68 v138 v137.
            getPlatoonLeaderCOMx (v137 quoting v138 says prop v68::xs) =
            getPlatoonLeaderCOMx xs) ∧
         (∀xs v69 v12.
            getPlatoonLeaderCOMx (v12 says notf v69::xs) =
            getPlatoonLeaderCOMx xs) ∧
         (∀xs v71 v70 v12.
            getPlatoonLeaderCOMx (v12 says (v70 andf v71)::xs) =
            getPlatoonLeaderCOMx xs) ∧
         (∀xs v73 v72 v12.
            getPlatoonLeaderCOMx (v12 says (v72 orf v73)::xs) =
            getPlatoonLeaderCOMx xs) ∧
         (∀xs v75 v74 v12.
            getPlatoonLeaderCOMx (v12 says (v74 impf v75)::xs) =
            getPlatoonLeaderCOMx xs) ∧
         (∀xs v77 v76 v12.
            getPlatoonLeaderCOMx (v12 says (v76 eqf v77)::xs) =
            getPlatoonLeaderCOMx xs) ∧
         (∀xs v79 v78 v12.
            getPlatoonLeaderCOMx (v12 says v78 says v79::xs) =
            getPlatoonLeaderCOMx xs) ∧
         (∀xs v81 v80 v12.
            getPlatoonLeaderCOMx (v12 says v80 speaks_for v81::xs) =
            getPlatoonLeaderCOMx xs) ∧
         (∀xs v83 v82 v12.
            getPlatoonLeaderCOMx (v12 says v82 controls v83::xs) =
            getPlatoonLeaderCOMx xs) ∧
         (∀xs v86 v85 v84 v12.
            getPlatoonLeaderCOMx (v12 says reps v84 v85 v86::xs) =
            getPlatoonLeaderCOMx xs) ∧
         (∀xs v88 v87 v12.
            getPlatoonLeaderCOMx (v12 says v87 domi v88::xs) =
            getPlatoonLeaderCOMx xs) ∧
         (∀xs v90 v89 v12.
            getPlatoonLeaderCOMx (v12 says v89 eqi v90::xs) =
            getPlatoonLeaderCOMx xs) ∧
         (∀xs v92 v91 v12.
            getPlatoonLeaderCOMx (v12 says v91 doms v92::xs) =
            getPlatoonLeaderCOMx xs) ∧
         (∀xs v94 v93 v12.
            getPlatoonLeaderCOMx (v12 says v93 eqs v94::xs) =
            getPlatoonLeaderCOMx xs) ∧
         (∀xs v96 v95 v12.
            getPlatoonLeaderCOMx (v12 says v95 eqn v96::xs) =
            getPlatoonLeaderCOMx xs) ∧
         (∀xs v98 v97 v12.
            getPlatoonLeaderCOMx (v12 says v97 lte v98::xs) =
            getPlatoonLeaderCOMx xs) ∧
         (∀xs v99 v12 v100.
            getPlatoonLeaderCOMx (v12 says v99 lt v100::xs) =
            getPlatoonLeaderCOMx xs) ∧
         (∀xs v15 v14.
            getPlatoonLeaderCOMx (v14 speaks_for v15::xs) =
            getPlatoonLeaderCOMx xs) ∧
         (∀xs v17 v16.
            getPlatoonLeaderCOMx (v16 controls v17::xs) =
            getPlatoonLeaderCOMx xs) ∧
         (∀xs v20 v19 v18.
            getPlatoonLeaderCOMx (reps v18 v19 v20::xs) =
            getPlatoonLeaderCOMx xs) ∧
         (∀xs v22 v21.
            getPlatoonLeaderCOMx (v21 domi v22::xs) =
            getPlatoonLeaderCOMx xs) ∧
         (∀xs v24 v23.
            getPlatoonLeaderCOMx (v23 eqi v24::xs) =
            getPlatoonLeaderCOMx xs) ∧
         (∀xs v26 v25.
            getPlatoonLeaderCOMx (v25 doms v26::xs) =
            getPlatoonLeaderCOMx xs) ∧
         (∀xs v28 v27.
            getPlatoonLeaderCOMx (v27 eqs v28::xs) =
            getPlatoonLeaderCOMx xs) ∧
         (∀xs v30 v29.
            getPlatoonLeaderCOMx (v29 eqn v30::xs) =
            getPlatoonLeaderCOMx xs) ∧
         (∀xs v32 v31.
            getPlatoonLeaderCOMx (v31 lte v32::xs) =
            getPlatoonLeaderCOMx xs) ∧
         ∀xs v34 v33.
           getPlatoonLeaderCOMx (v33 lt v34::xs) = getPlatoonLeaderCOMx xs

   [getPlatoonLeaderCOMx_ind]  Theorem

      |- ∀P.
           P [] ∧
           (∀cmd xs.
              P
                (Name PlatoonLeader says
                 prop (SOME (PlatoonLeaderCOM cmd))::xs)) ∧
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
           (∀v147 xs.
              P xs ⇒
              P
                (Name PlatoonLeader says
                 prop (SOME (PlatoonSergeantCOM v147))::xs)) ∧
           (∀v148 xs.
              P xs ⇒
              P (Name PlatoonLeader says prop (SOME (OmniCOM v148))::xs)) ∧
           (∀v144 xs.
              P xs ⇒ P (Name PlatoonSergeant says prop (SOME v144)::xs)) ∧
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

   [getPlatoonSergeantCOM_def]  Theorem

      |- (getPlatoonSergeantCOM [] = NONE) ∧
         (∀xs cmd.
            getPlatoonSergeantCOM (SOME (PlatoonSergeantCOM cmd)::xs) =
            SOME (PlatoonSergeantCOM cmd)) ∧
         (∀xs.
            getPlatoonSergeantCOM (NONE::xs) = getPlatoonSergeantCOM xs) ∧
         (∀xs v4.
            getPlatoonSergeantCOM (SOME (PlatoonLeaderCOM v4)::xs) =
            getPlatoonSergeantCOM xs) ∧
         ∀xs v6.
           getPlatoonSergeantCOM (SOME (OmniCOM v6)::xs) =
           getPlatoonSergeantCOM xs

   [getPlatoonSergeantCOM_ind]  Theorem

      |- ∀P.
           P [] ∧ (∀cmd xs. P (SOME (PlatoonSergeantCOM cmd)::xs)) ∧
           (∀xs. P xs ⇒ P (NONE::xs)) ∧
           (∀v4 xs. P xs ⇒ P (SOME (PlatoonLeaderCOM v4)::xs)) ∧
           (∀v6 xs. P xs ⇒ P (SOME (OmniCOM v6)::xs)) ⇒
           ∀v. P v

   [getPlatoonSergeantCOMx_def]  Theorem

      |- (getPlatoonSergeantCOMx [] = NONE) ∧
         (∀xs cmd.
            getPlatoonSergeantCOMx
              (Name PlatoonSergeant says
               prop (SOME (PlatoonSergeantCOM cmd))::xs) =
            SOME (PlatoonSergeantCOM cmd)) ∧
         (∀xs.
            getPlatoonSergeantCOMx (TT::xs) = getPlatoonSergeantCOMx xs) ∧
         (∀xs.
            getPlatoonSergeantCOMx (FF::xs) = getPlatoonSergeantCOMx xs) ∧
         (∀xs v2.
            getPlatoonSergeantCOMx (prop v2::xs) =
            getPlatoonSergeantCOMx xs) ∧
         (∀xs v3.
            getPlatoonSergeantCOMx (notf v3::xs) =
            getPlatoonSergeantCOMx xs) ∧
         (∀xs v5 v4.
            getPlatoonSergeantCOMx (v4 andf v5::xs) =
            getPlatoonSergeantCOMx xs) ∧
         (∀xs v7 v6.
            getPlatoonSergeantCOMx (v6 orf v7::xs) =
            getPlatoonSergeantCOMx xs) ∧
         (∀xs v9 v8.
            getPlatoonSergeantCOMx (v8 impf v9::xs) =
            getPlatoonSergeantCOMx xs) ∧
         (∀xs v11 v10.
            getPlatoonSergeantCOMx (v10 eqf v11::xs) =
            getPlatoonSergeantCOMx xs) ∧
         (∀xs v12.
            getPlatoonSergeantCOMx (v12 says TT::xs) =
            getPlatoonSergeantCOMx xs) ∧
         (∀xs v12.
            getPlatoonSergeantCOMx (v12 says FF::xs) =
            getPlatoonSergeantCOMx xs) ∧
         (∀xs v134.
            getPlatoonSergeantCOMx (Name v134 says prop NONE::xs) =
            getPlatoonSergeantCOMx xs) ∧
         (∀xs v144.
            getPlatoonSergeantCOMx
              (Name PlatoonLeader says prop (SOME v144)::xs) =
            getPlatoonSergeantCOMx xs) ∧
         (∀xs v146.
            getPlatoonSergeantCOMx
              (Name PlatoonSergeant says
               prop (SOME (PlatoonLeaderCOM v146))::xs) =
            getPlatoonSergeantCOMx xs) ∧
         (∀xs v148.
            getPlatoonSergeantCOMx
              (Name PlatoonSergeant says prop (SOME (OmniCOM v148))::xs) =
            getPlatoonSergeantCOMx xs) ∧
         (∀xs v144.
            getPlatoonSergeantCOMx (Name Omni says prop (SOME v144)::xs) =
            getPlatoonSergeantCOMx xs) ∧
         (∀xs v68 v136 v135.
            getPlatoonSergeantCOMx (v135 meet v136 says prop v68::xs) =
            getPlatoonSergeantCOMx xs) ∧
         (∀xs v68 v138 v137.
            getPlatoonSergeantCOMx (v137 quoting v138 says prop v68::xs) =
            getPlatoonSergeantCOMx xs) ∧
         (∀xs v69 v12.
            getPlatoonSergeantCOMx (v12 says notf v69::xs) =
            getPlatoonSergeantCOMx xs) ∧
         (∀xs v71 v70 v12.
            getPlatoonSergeantCOMx (v12 says (v70 andf v71)::xs) =
            getPlatoonSergeantCOMx xs) ∧
         (∀xs v73 v72 v12.
            getPlatoonSergeantCOMx (v12 says (v72 orf v73)::xs) =
            getPlatoonSergeantCOMx xs) ∧
         (∀xs v75 v74 v12.
            getPlatoonSergeantCOMx (v12 says (v74 impf v75)::xs) =
            getPlatoonSergeantCOMx xs) ∧
         (∀xs v77 v76 v12.
            getPlatoonSergeantCOMx (v12 says (v76 eqf v77)::xs) =
            getPlatoonSergeantCOMx xs) ∧
         (∀xs v79 v78 v12.
            getPlatoonSergeantCOMx (v12 says v78 says v79::xs) =
            getPlatoonSergeantCOMx xs) ∧
         (∀xs v81 v80 v12.
            getPlatoonSergeantCOMx (v12 says v80 speaks_for v81::xs) =
            getPlatoonSergeantCOMx xs) ∧
         (∀xs v83 v82 v12.
            getPlatoonSergeantCOMx (v12 says v82 controls v83::xs) =
            getPlatoonSergeantCOMx xs) ∧
         (∀xs v86 v85 v84 v12.
            getPlatoonSergeantCOMx (v12 says reps v84 v85 v86::xs) =
            getPlatoonSergeantCOMx xs) ∧
         (∀xs v88 v87 v12.
            getPlatoonSergeantCOMx (v12 says v87 domi v88::xs) =
            getPlatoonSergeantCOMx xs) ∧
         (∀xs v90 v89 v12.
            getPlatoonSergeantCOMx (v12 says v89 eqi v90::xs) =
            getPlatoonSergeantCOMx xs) ∧
         (∀xs v92 v91 v12.
            getPlatoonSergeantCOMx (v12 says v91 doms v92::xs) =
            getPlatoonSergeantCOMx xs) ∧
         (∀xs v94 v93 v12.
            getPlatoonSergeantCOMx (v12 says v93 eqs v94::xs) =
            getPlatoonSergeantCOMx xs) ∧
         (∀xs v96 v95 v12.
            getPlatoonSergeantCOMx (v12 says v95 eqn v96::xs) =
            getPlatoonSergeantCOMx xs) ∧
         (∀xs v98 v97 v12.
            getPlatoonSergeantCOMx (v12 says v97 lte v98::xs) =
            getPlatoonSergeantCOMx xs) ∧
         (∀xs v99 v12 v100.
            getPlatoonSergeantCOMx (v12 says v99 lt v100::xs) =
            getPlatoonSergeantCOMx xs) ∧
         (∀xs v15 v14.
            getPlatoonSergeantCOMx (v14 speaks_for v15::xs) =
            getPlatoonSergeantCOMx xs) ∧
         (∀xs v17 v16.
            getPlatoonSergeantCOMx (v16 controls v17::xs) =
            getPlatoonSergeantCOMx xs) ∧
         (∀xs v20 v19 v18.
            getPlatoonSergeantCOMx (reps v18 v19 v20::xs) =
            getPlatoonSergeantCOMx xs) ∧
         (∀xs v22 v21.
            getPlatoonSergeantCOMx (v21 domi v22::xs) =
            getPlatoonSergeantCOMx xs) ∧
         (∀xs v24 v23.
            getPlatoonSergeantCOMx (v23 eqi v24::xs) =
            getPlatoonSergeantCOMx xs) ∧
         (∀xs v26 v25.
            getPlatoonSergeantCOMx (v25 doms v26::xs) =
            getPlatoonSergeantCOMx xs) ∧
         (∀xs v28 v27.
            getPlatoonSergeantCOMx (v27 eqs v28::xs) =
            getPlatoonSergeantCOMx xs) ∧
         (∀xs v30 v29.
            getPlatoonSergeantCOMx (v29 eqn v30::xs) =
            getPlatoonSergeantCOMx xs) ∧
         (∀xs v32 v31.
            getPlatoonSergeantCOMx (v31 lte v32::xs) =
            getPlatoonSergeantCOMx xs) ∧
         ∀xs v34 v33.
           getPlatoonSergeantCOMx (v33 lt v34::xs) =
           getPlatoonSergeantCOMx xs

   [getPlatoonSergeantCOMx_ind]  Theorem

      |- ∀P.
           P [] ∧
           (∀cmd xs.
              P
                (Name PlatoonSergeant says
                 prop (SOME (PlatoonSergeantCOM cmd))::xs)) ∧
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
              P xs ⇒ P (Name PlatoonLeader says prop (SOME v144)::xs)) ∧
           (∀v146 xs.
              P xs ⇒
              P
                (Name PlatoonSergeant says
                 prop (SOME (PlatoonLeaderCOM v146))::xs)) ∧
           (∀v148 xs.
              P xs ⇒
              P
                (Name PlatoonSergeant says prop (SOME (OmniCOM v148))::
                     xs)) ∧
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
