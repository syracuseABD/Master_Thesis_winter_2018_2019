structure ConductORPDefTheory :> ConductORPDefTheory =
struct
  val _ = if !Globals.print_thy_loads then TextIO.print "Loading ConductORPDefTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (* Parents and ML dependencies *)
  local open ConductORPTypeTheory OMNITypeTheory ssmTheory
  in end;
  val _ = Theory.link_parents
          ("ConductORPDef",
          Arbnum.fromString "1528747896",
          Arbnum.fromString "842827")
          [("ConductORPType",
           Arbnum.fromString "1528747892",
           Arbnum.fromString "292364"),
           ("ssm",
           Arbnum.fromString "1528688695",
           Arbnum.fromString "391911"),
           ("OMNIType",
           Arbnum.fromString "1528688707",
           Arbnum.fromString "689204")];
  val _ = Theory.incorporate_types "ConductORPDef" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("list", "list"), ID("aclfoundation", "Form"),
   ID("ConductORPType", "stateRole"), ID("option", "option"),
   ID("OMNIType", "command"), ID("ConductORPType", "slCommand"),
   ID("ConductORPType", "omniCommand"), ID("ConductORPType", "slState"),
   ID("ConductORPType", "psgCommand"), ID("ConductORPType", "plCommand"),
   ID("min", "bool"), ID("num", "num"), ID("aclfoundation", "Princ"),
   ID("aclfoundation", "IntLevel"), ID("aclfoundation", "SecLevel"),
   ID("OMNIType", "escCommand"), ID("bool", "!"), ID("bool", "/\\"),
   ID("min", "="), ID("min", "==>"), ID("min", "@"),
   ID("ConductORPType", "ACTIONS_IN"), ID("bool", "COND"),
   ID("ConductORPType", "CONDUCT_ORP"), ID("list", "CONS"),
   ID("OMNIType", "ESCc"), ID("aclfoundation", "FF"),
   ID("aclfoundation", "Form_CASE"), ID("combin", "I"), ID("list", "NIL"),
   ID("option", "NONE"), ID("aclfoundation", "Name"),
   ID("ConductORPType", "OMNI"), ID("ConductORPType", "Omni"),
   ID("ConductORPType", "PL"), ID("ConductORPType", "PSG"),
   ID("ConductORPType", "PlatoonLeader"),
   ID("ConductORPType", "PlatoonSergeant"),
   ID("aclfoundation", "Princ_CASE"), ID("ConductORPType", "SECURE"),
   ID("OMNIType", "SLc"), ID("option", "SOME"), ID("aclfoundation", "TT"),
   ID("relation", "WF"), ID("relation", "WFREC"),
   ID("ConductORPType", "WITHDRAW"), ID("ConductORPType", "actionsIn"),
   ID("aclfoundation", "andf"), ID("OMNIType", "command_CASE"),
   ID("ConductORPType", "complete"), ID("aclfoundation", "controls"),
   ID("aclfoundation", "domi"), ID("aclfoundation", "doms"),
   ID("aclfoundation", "eqf"), ID("aclfoundation", "eqi"),
   ID("aclfoundation", "eqn"), ID("aclfoundation", "eqs"),
   ID("ConductORPDef", "getOmniCommand"), ID("ConductORPDef", "getPlCom"),
   ID("ConductORPDef", "getPsgCom"), ID("aclfoundation", "impf"),
   ID("ConductORPType", "invalidOmniCommand"), ID("list", "list_CASE"),
   ID("aclfoundation", "lt"), ID("aclfoundation", "lte"),
   ID("aclfoundation", "meet"), ID("aclfoundation", "notf"),
   ID("option", "option_CASE"), ID("aclfoundation", "orf"),
   ID("ConductORPType", "plIncomplete"), ID("aclfoundation", "prop"),
   ID("ConductORPType", "psgIncomplete"), ID("aclfoundation", "quoting"),
   ID("aclfoundation", "reps"), ID("aclfoundation", "says"),
   ID("ConductORPDef", "secAuthorization"),
   ID("ConductORPDef", "secContext"), ID("ConductORPDef", "secHelper"),
   ID("ConductORPType", "secure"), ID("ConductORPType", "slCommand_CASE"),
   ID("aclfoundation", "speaks_for"),
   ID("ConductORPType", "ssmActionsInComplete"),
   ID("ConductORPType", "ssmSecureComplete"),
   ID("ConductORPType", "ssmWithdrawComplete"),
   ID("ConductORPType", "stateRole_CASE"),
   ID("ConductORPType", "withdraw")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYV "'b", TYV "'a", TYOP [3], TYOP [6], TYOP [5, 3], TYOP [4, 4],
   TYOP [2, 5, 2, 1, 0], TYOP [1, 6], TYOP [7], TYOP [0, 8, 7], TYV "'e",
   TYV "'d", TYOP [2, 5, 2, 11, 10], TYOP [1, 12], TYOP [0, 13, 13],
   TYOP [8], TYOP [0, 15, 14], TYOP [0, 13, 7], TYOP [9], TYOP [1, 5],
   TYOP [0, 19, 18], TYOP [10], TYOP [0, 19, 21], TYOP [0, 13, 8],
   TYOP [11], TYOP [0, 13, 24], TYOP [0, 19, 24], TYOP [0, 13, 25],
   TYOP [0, 19, 26], TYOP [12], TYOP [13, 2], TYOP [14, 2, 11],
   TYOP [15, 2, 10], TYOP [16], TYOP [0, 12, 24], TYOP [0, 34, 24],
   TYOP [0, 31, 24], TYOP [0, 36, 24], TYOP [0, 30, 24], TYOP [0, 38, 24],
   TYOP [0, 32, 24], TYOP [0, 40, 24], TYOP [0, 4, 24], TYOP [0, 42, 24],
   TYOP [0, 33, 24], TYOP [0, 44, 24], TYOP [0, 25, 24], TYOP [0, 46, 24],
   TYOP [0, 26, 24], TYOP [0, 48, 24], TYOP [0, 29, 24], TYOP [0, 50, 24],
   TYOP [0, 8, 24], TYOP [0, 52, 24], TYOP [0, 5, 24], TYOP [0, 54, 24],
   TYOP [0, 21, 24], TYOP [0, 56, 24], TYOP [0, 18, 24], TYOP [0, 58, 24],
   TYOP [0, 2, 24], TYOP [0, 60, 24], TYOP [0, 24, 24], TYOP [0, 24, 62],
   TYOP [0, 23, 24], TYOP [0, 23, 64], TYOP [0, 22, 24], TYOP [0, 22, 66],
   TYOP [0, 20, 24], TYOP [0, 20, 68], TYOP [0, 7, 24], TYOP [0, 7, 70],
   TYOP [0, 8, 52], TYOP [0, 21, 56], TYOP [0, 18, 58], TYOP [0, 27, 24],
   TYOP [0, 75, 27], TYOP [0, 28, 24], TYOP [0, 77, 28], TYOP [0, 13, 14],
   TYOP [0, 24, 79], TYOP [0, 7, 7], TYOP [0, 6, 81], TYOP [0, 12, 14],
   TYOP [0, 19, 19], TYOP [0, 5, 84], TYOP [0, 33, 4], TYOP [0, 29, 8],
   TYOP [0, 29, 87], TYOP [0, 88, 8], TYOP [0, 88, 89], TYOP [0, 88, 90],
   TYOP [0, 32, 8], TYOP [0, 32, 92], TYOP [0, 93, 91], TYOP [0, 93, 94],
   TYOP [0, 31, 8], TYOP [0, 31, 96], TYOP [0, 97, 95], TYOP [0, 97, 98],
   TYOP [0, 12, 8], TYOP [0, 30, 100], TYOP [0, 30, 101],
   TYOP [0, 102, 99], TYOP [0, 101, 103], TYOP [0, 30, 8],
   TYOP [0, 30, 105], TYOP [0, 106, 104], TYOP [0, 101, 107],
   TYOP [0, 12, 100], TYOP [0, 109, 108], TYOP [0, 109, 110],
   TYOP [0, 109, 111], TYOP [0, 109, 112], TYOP [0, 100, 113],
   TYOP [0, 5, 8], TYOP [0, 115, 114], TYOP [0, 8, 116], TYOP [0, 8, 117],
   TYOP [0, 12, 118], TYOP [0, 8, 8], TYOP [0, 21, 21], TYOP [0, 18, 18],
   TYOP [0, 2, 30], TYOP [0, 8, 3], TYOP [0, 21, 3], TYOP [0, 18, 3],
   TYOP [0, 106, 8], TYOP [0, 106, 127], TYOP [0, 2, 8],
   TYOP [0, 129, 128], TYOP [0, 30, 130], TYOP [0, 3, 4], TYOP [0, 4, 5],
   TYOP [0, 23, 23], TYOP [0, 134, 23], TYOP [0, 27, 135],
   TYOP [0, 22, 22], TYOP [0, 137, 22], TYOP [0, 28, 138],
   TYOP [0, 20, 20], TYOP [0, 140, 20], TYOP [0, 28, 141],
   TYOP [0, 12, 12], TYOP [0, 12, 143], TYOP [0, 3, 8], TYOP [0, 145, 8],
   TYOP [0, 33, 8], TYOP [0, 147, 146], TYOP [0, 4, 148], TYOP [0, 3, 21],
   TYOP [0, 150, 21], TYOP [0, 33, 21], TYOP [0, 152, 151],
   TYOP [0, 4, 153], TYOP [0, 3, 18], TYOP [0, 155, 18], TYOP [0, 33, 18],
   TYOP [0, 157, 156], TYOP [0, 4, 158], TYOP [0, 6, 6], TYOP [0, 30, 160],
   TYOP [0, 30, 143], TYOP [0, 31, 12], TYOP [0, 31, 163],
   TYOP [0, 32, 12], TYOP [0, 32, 165], TYOP [0, 29, 12],
   TYOP [0, 29, 167], TYOP [0, 12, 23], TYOP [0, 169, 8], TYOP [0, 8, 170],
   TYOP [0, 13, 171], TYOP [0, 5, 22], TYOP [0, 173, 21],
   TYOP [0, 21, 174], TYOP [0, 19, 175], TYOP [0, 5, 20],
   TYOP [0, 177, 18], TYOP [0, 18, 178], TYOP [0, 19, 179],
   TYOP [0, 30, 30], TYOP [0, 30, 181], TYOP [0, 4, 8], TYOP [0, 183, 8],
   TYOP [0, 8, 184], TYOP [0, 5, 185], TYOP [0, 4, 21], TYOP [0, 187, 21],
   TYOP [0, 21, 188], TYOP [0, 5, 189], TYOP [0, 4, 18], TYOP [0, 191, 18],
   TYOP [0, 18, 192], TYOP [0, 5, 193], TYOP [0, 5, 6], TYOP [0, 5, 12],
   TYOP [0, 30, 162], TYOP [0, 120, 8], TYOP [0, 18, 8],
   TYOP [0, 199, 198], TYOP [0, 21, 8], TYOP [0, 201, 200],
   TYOP [0, 3, 202], TYOP [0, 8, 21], TYOP [0, 204, 21], TYOP [0, 18, 21],
   TYOP [0, 206, 205], TYOP [0, 121, 207], TYOP [0, 3, 208],
   TYOP [0, 8, 18], TYOP [0, 210, 18], TYOP [0, 122, 211],
   TYOP [0, 21, 18], TYOP [0, 213, 212], TYOP [0, 3, 214],
   TYOP [0, 30, 12], TYOP [0, 30, 216], TYOP [0, 8, 120], TYOP [0, 8, 218],
   TYOP [0, 2, 219]]
  end
  val _ = Theory.incorporate_consts "ConductORPDef" tyvector
     [("secHelper", 9), ("secContext", 16), ("secAuthorization", 17),
      ("getPsgCom", 20), ("getPlCom", 22), ("getOmniCommand", 23)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("P", 25), TMV("P", 26), TMV("R", 27), TMV("R", 28), TMV("a", 13),
   TMV("a", 19), TMV("cmd", 8), TMV("cmd", 21), TMV("cmd", 18),
   TMV("getOmniCommand", 23), TMV("getPlCom", 22), TMV("getPsgCom", 20),
   TMV("v", 12), TMV("v", 13), TMV("v", 19), TMV("v", 5), TMV("v10", 12),
   TMV("v10", 8), TMV("v100", 29), TMV("v101", 5), TMV("v102", 12),
   TMV("v103", 12), TMV("v104", 12), TMV("v105", 12), TMV("v106", 12),
   TMV("v107", 12), TMV("v108", 12), TMV("v109", 12), TMV("v11", 12),
   TMV("v11", 21), TMV("v110", 12), TMV("v111", 30), TMV("v112", 12),
   TMV("v113", 30), TMV("v114", 30), TMV("v115", 30), TMV("v116", 12),
   TMV("v117", 30), TMV("v118", 30), TMV("v119", 12), TMV("v12", 30),
   TMV("v12", 18), TMV("v120", 31), TMV("v121", 31), TMV("v122", 31),
   TMV("v123", 31), TMV("v124", 32), TMV("v125", 32), TMV("v126", 32),
   TMV("v127", 32), TMV("v128", 29), TMV("v129", 29), TMV("v13", 8),
   TMV("v130", 29), TMV("v131", 29), TMV("v132", 29), TMV("v133", 29),
   TMV("v134", 2), TMV("v135", 30), TMV("v136", 30), TMV("v137", 30),
   TMV("v138", 30), TMV("v139", 2), TMV("v14", 30), TMV("v140", 30),
   TMV("v141", 30), TMV("v142", 30), TMV("v143", 30), TMV("v144", 4),
   TMV("v145", 4), TMV("v146", 33), TMV("v148", 33), TMV("v149", 3),
   TMV("v15", 30), TMV("v150", 21), TMV("v151", 18), TMV("v153", 21),
   TMV("v154", 18), TMV("v16", 30), TMV("v17", 12), TMV("v18", 30),
   TMV("v19", 30), TMV("v2", 5), TMV("v20", 12), TMV("v21", 31),
   TMV("v22", 31), TMV("v23", 31), TMV("v24", 31), TMV("v25", 32),
   TMV("v26", 32), TMV("v27", 32), TMV("v28", 32), TMV("v29", 29),
   TMV("v3", 12), TMV("v3", 4), TMV("v30", 29), TMV("v31", 29),
   TMV("v32", 29), TMV("v33", 29), TMV("v34", 29), TMV("v35", 5),
   TMV("v36", 12), TMV("v37", 12), TMV("v38", 12), TMV("v39", 12),
   TMV("v4", 12), TMV("v4", 33), TMV("v40", 12), TMV("v41", 12),
   TMV("v42", 12), TMV("v43", 12), TMV("v44", 12), TMV("v45", 30),
   TMV("v46", 12), TMV("v47", 30), TMV("v48", 30), TMV("v49", 30),
   TMV("v5", 12), TMV("v50", 12), TMV("v51", 30), TMV("v52", 30),
   TMV("v53", 12), TMV("v54", 31), TMV("v55", 31), TMV("v56", 31),
   TMV("v57", 31), TMV("v58", 32), TMV("v59", 32), TMV("v6", 12),
   TMV("v6", 33), TMV("v60", 32), TMV("v61", 32), TMV("v62", 29),
   TMV("v63", 29), TMV("v64", 29), TMV("v65", 29), TMV("v66", 29),
   TMV("v67", 29), TMV("v68", 5), TMV("v69", 12), TMV("v7", 12),
   TMV("v7", 3), TMV("v70", 12), TMV("v71", 12), TMV("v72", 12),
   TMV("v73", 12), TMV("v74", 12), TMV("v75", 12), TMV("v76", 12),
   TMV("v77", 12), TMV("v78", 30), TMV("v79", 12), TMV("v8", 12),
   TMV("v8", 21), TMV("v80", 30), TMV("v81", 30), TMV("v82", 30),
   TMV("v83", 12), TMV("v84", 30), TMV("v85", 30), TMV("v86", 12),
   TMV("v87", 31), TMV("v88", 31), TMV("v89", 31), TMV("v9", 12),
   TMV("v9", 18), TMV("v90", 31), TMV("v91", 32), TMV("v92", 32),
   TMV("v93", 32), TMV("v94", 32), TMV("v95", 29), TMV("v96", 29),
   TMV("v97", 29), TMV("v98", 29), TMV("v99", 29), TMV("xs", 13),
   TMV("xs", 19), TMC(17, 35), TMC(17, 37), TMC(17, 39), TMC(17, 41),
   TMC(17, 43), TMC(17, 45), TMC(17, 47), TMC(17, 49), TMC(17, 46),
   TMC(17, 48), TMC(17, 51), TMC(17, 53), TMC(17, 55), TMC(17, 57),
   TMC(17, 59), TMC(17, 61), TMC(18, 63), TMC(19, 65), TMC(19, 67),
   TMC(19, 69), TMC(19, 71), TMC(19, 27), TMC(19, 72), TMC(19, 73),
   TMC(19, 74), TMC(20, 63), TMC(21, 76), TMC(21, 78), TMC(22, 15),
   TMC(23, 80), TMC(24, 15), TMC(25, 82), TMC(25, 83), TMC(25, 85),
   TMC(26, 86), TMC(27, 12), TMC(28, 119), TMC(29, 120), TMC(29, 121),
   TMC(29, 122), TMC(30, 7), TMC(30, 13), TMC(30, 19), TMC(31, 5),
   TMC(32, 123), TMC(33, 124), TMC(34, 2), TMC(35, 125), TMC(36, 126),
   TMC(37, 2), TMC(38, 2), TMC(39, 131), TMC(40, 15), TMC(41, 132),
   TMC(42, 133), TMC(43, 12), TMC(44, 75), TMC(44, 77), TMC(45, 136),
   TMC(45, 139), TMC(45, 142), TMC(46, 15), TMC(47, 18), TMC(48, 144),
   TMC(49, 149), TMC(49, 154), TMC(49, 159), TMC(50, 21), TMC(51, 161),
   TMC(51, 162), TMC(52, 164), TMC(53, 166), TMC(54, 144), TMC(55, 164),
   TMC(56, 168), TMC(57, 166), TMC(58, 23), TMC(59, 22), TMC(60, 20),
   TMC(61, 144), TMC(62, 8), TMC(63, 172), TMC(63, 176), TMC(63, 180),
   TMC(64, 168), TMC(65, 168), TMC(66, 182), TMC(67, 143), TMC(68, 186),
   TMC(68, 190), TMC(68, 194), TMC(69, 144), TMC(70, 21), TMC(71, 195),
   TMC(71, 196), TMC(72, 18), TMC(73, 182), TMC(74, 197), TMC(75, 162),
   TMC(76, 17), TMC(77, 16), TMC(78, 9), TMC(79, 21), TMC(80, 203),
   TMC(80, 209), TMC(80, 215), TMC(81, 217), TMC(82, 8), TMC(83, 8),
   TMC(84, 8), TMC(85, 220), TMC(86, 21)]
  end
  structure ThmBind = struct
    val DT = Thm.disk_thm
    val read = Term.read_raw tmvector
  end
  fun op getPlCom_primitive_def x = x
    val op getPlCom_primitive_def =
    ThmBind.DT(((("ConductORPDef",0),[]),[]),
               [ThmBind.read"%196%255@%237%205%3%194%235$0@2%194%187%177$1$0@%211%221@$0@2|@2%194%183%106%187%177$2$0@%211%232%212$1@3$0@2|@|@2%194%192%165%187%177$2$0@%211%232%231%226$1@4$0@2|@|@2%189%17%187%177$2$0@%211%232%231%223$1@4$0@2|@|@5|@2%10%5%260$0@%216%270@2%15%177%267$1@%216$3$0@3%94%243$0@%129%216$5$2@2|@%141%282$0@%7%216$0@|@%41%216$6$3@2|@%52%216$6$3@2|@|@|@||@||@2"])
  fun op getPsgCom_primitive_def x = x
    val op getPsgCom_primitive_def =
    ThmBind.DT(((("ConductORPDef",3),[]),[]),
               [ThmBind.read"%197%256@%238%205%3%194%235$0@2%194%187%177$1$0@%211%221@$0@2|@2%194%183%106%187%177$2$0@%211%232%212$1@3$0@2|@|@2%194%191%153%187%177$2$0@%211%232%231%225$1@4$0@2|@|@2%189%17%187%177$2$0@%211%232%231%223$1@4$0@2|@|@5|@2%11%5%261$0@%217%273@2%15%177%268$1@%217$3$0@3%94%244$0@%129%217$5$2@2|@%141%283$0@%29%217$6$3@2|@%8%217$0@|@%52%217$6$3@2|@|@|@||@||@2"])
  fun op secHelper_def x = x
    val op secHelper_def =
    ThmBind.DT(((("ConductORPDef",6),[]),[]),
               [ThmBind.read"%189%6%198%279$0@2%209%246%222%224@2%271%232%231%223$0@6%218@2|@"])
  fun op getOmniCommand_primitive_def x = x
    val op getOmniCommand_primitive_def =
    ThmBind.DT(((("ConductORPDef",7),[]),[]),
               [ThmBind.read"%195%254@%236%204%2%194%234$0@2%194%186%176$1$0@%210%233@$0@2|@2%194%186%176$1$0@%210%213@$0@2|@2%194%190%82%186%176$2$0@%210%272$1@2$0@2|@|@2%194%178%93%186%176$2$0@%210%265$1@2$0@2|@|@2%194%178%117%178%105%186%176$3$0@%210%241$1@$2@2$0@2|@|@|@2%194%178%140%178%128%186%176$3$0@%210%269$1@$2@2$0@2|@|@|@2%194%178%164%178%152%186%176$3$0@%210%257$1@$2@2$0@2|@|@|@2%194%178%28%178%16%186%176$3$0@%210%250$1@$2@2$0@2|@|@|@2%194%180%40%186%176$2$0@%210%276$1@%233@2$0@2|@|@2%194%180%40%186%176$2$0@%210%276$1@%213@2$0@2|@|@2%194%193%57%186%176$2$0@%210%276%222$1@2%272%221@3$0@2|@|@2%194%182%68%186%176$2$0@%210%276%222%227@2%272%232$1@4$0@2|@|@2%194%182%68%186%176$2$0@%210%276%222%228@2%272%232$1@4$0@2|@|@2%194%183%70%186%176$2$0@%210%276%222%224@2%272%232%212$1@5$0@2|@|@2%194%191%74%186%176$2$0@%210%276%222%224@2%272%232%231%225$1@6$0@2|@|@2%194%192%75%186%176$2$0@%210%276%222%224@2%272%232%231%226$1@6$0@2|@|@2%194%190%138%180%59%180%58%186%176$4$0@%210%276%264$1@$2@2%272$3@3$0@2|@|@|@|@2%194%190%138%180%61%180%60%186%176$4$0@%210%276%274$1@$2@2%272$3@3$0@2|@|@|@|@2%194%178%139%180%40%186%176$3$0@%210%276$1@%265$2@3$0@2|@|@|@2%194%178%143%178%142%180%40%186%176$4$0@%210%276$1@%241$2@$3@3$0@2|@|@|@|@2%194%178%145%178%144%180%40%186%176$4$0@%210%276$1@%269$2@$3@3$0@2|@|@|@|@2%194%178%147%178%146%180%40%186%176$4$0@%210%276$1@%257$2@$3@3$0@2|@|@|@|@2%194%178%149%178%148%180%40%186%176$4$0@%210%276$1@%250$2@$3@3$0@2|@|@|@|@2%194%178%151%180%150%180%40%186%176$4$0@%210%276$1@%276$2@$3@3$0@2|@|@|@|@2%194%180%155%180%154%180%40%186%176$4$0@%210%276$1@%284$2@$3@3$0@2|@|@|@|@2%194%178%157%180%156%180%40%186%176$4$0@%210%276$1@%247$2@$3@3$0@2|@|@|@|@2%194%178%160%180%159%180%158%180%40%186%176$5$0@%210%276$1@%275$2@$3@$4@3$0@2|@|@|@|@|@2%194%179%162%179%161%180%40%186%176$4$0@%210%276$1@%248$2@$3@3$0@2|@|@|@|@2%194%179%166%179%163%180%40%186%176$4$0@%210%276$1@%251$2@$3@3$0@2|@|@|@|@2%194%181%168%181%167%180%40%186%176$4$0@%210%276$1@%249$2@$3@3$0@2|@|@|@|@2%194%181%170%181%169%180%40%186%176$4$0@%210%276$1@%253$2@$3@3$0@2|@|@|@|@2%194%188%172%188%171%180%40%186%176$4$0@%210%276$1@%252$2@$3@3$0@2|@|@|@|@2%194%188%174%188%173%180%40%186%176$4$0@%210%276$1@%263$2@$3@3$0@2|@|@|@|@2%194%188%18%188%175%180%40%186%176$4$0@%210%276$1@%262$2@$3@3$0@2|@|@|@|@2%194%180%73%180%63%186%176$3$0@%210%284$1@$2@2$0@2|@|@|@2%194%178%79%180%78%186%176$3$0@%210%247$1@$2@2$0@2|@|@|@2%194%178%83%180%81%180%80%186%176$4$0@%210%275$1@$2@$3@2$0@2|@|@|@|@2%194%179%85%179%84%186%176$3$0@%210%248$1@$2@2$0@2|@|@|@2%194%179%87%179%86%186%176$3$0@%210%251$1@$2@2$0@2|@|@|@2%194%181%89%181%88%186%176$3$0@%210%249$1@$2@2$0@2|@|@|@2%194%181%91%181%90%186%176$3$0@%210%253$1@$2@2$0@2|@|@|@2%194%188%95%188%92%186%176$3$0@%210%252$1@$2@2$0@2|@|@|@2%194%188%97%188%96%186%176$3$0@%210%263$1@$2@2$0@2|@|@|@2%188%99%188%98%186%176$3$0@%210%262$1@$2@2$0@2|@|@|@45|@2%9%4%259$0@%215%258@2%12%176%214$1@%215$3$0@3%215$3$0@3%100%215$4$1@2|@%101%215$4$1@2|@%102%103%215$5$2@2||@%104%107%215$5$2@2||@%108%109%215$5$2@2||@%110%111%215$5$2@2||@%112%113%214$0@%215$5$2@3%215$5$2@3%19%229$2@%62%266$1@%215$7$4@3%69%288$1@%215$8$5@3%215$8$5@3%242$0@%71%215$9$6@2|@%72%281$0@%76%215$10$7@2|@%77%215$10$7@2|@%6%215$0@|@|@2|@|@%64%65%215$8$5@2||@%66%67%215$8$5@2||@|@%20%215$6$3@2|@%21%22%215$7$4@2||@%23%24%215$7$4@2||@%25%26%215$7$4@2||@%27%30%215$7$4@2||@%31%32%215$7$4@2||@%33%34%215$7$4@2||@%35%36%215$7$4@2||@%37%38%39%215$8$5@2|||@%42%43%215$7$4@2||@%44%45%215$7$4@2||@%46%47%215$7$4@2||@%48%49%215$7$4@2||@%50%51%215$7$4@2||@%53%54%215$7$4@2||@%55%56%215$7$4@2||@||@%114%115%215$5$2@2||@%116%118%215$5$2@2||@%119%120%121%215$6$3@2|||@%122%123%215$5$2@2||@%124%125%215$5$2@2||@%126%127%215$5$2@2||@%130%131%215$5$2@2||@%132%133%215$5$2@2||@%134%135%215$5$2@2||@%136%137%215$5$2@2||@||@||@2"])
  fun op secAuthorization_def x = x
    val op secAuthorization_def =
    ThmBind.DT(((("ConductORPDef",10),[]),[]),
               [ThmBind.read"%186%176%198%277$0@2%279%254$0@3|@"])
  fun op secContext_def x = x
    val op secContext_def =
    ThmBind.DT(((("ConductORPDef",11),
                [("ConductORPType",[115])]),["DISK_THM"]),
               [ThmBind.read"%194%186%176%199%278%208@$0@2%210%247%222%227@2%272%232%231%225%280@6%219@2|@2%194%186%176%199%278%230@$0@2%207%200%254$0@2%286@2%210%257%272%232%231%223%286@5%247%222%228@2%272%232%231%226%240@7%219@2%210%272%221@2%219@3|@2%194%186%176%199%278%206@$0@2%207%200%254$0@2%285@2%210%257%272%232%231%223%285@5%247%222%227@2%272%232%231%225%289@7%219@2%210%272%221@2%219@3|@2%186%176%199%278%239@$0@2%207%200%254$0@2%287@2%210%257%272%232%231%223%287@5%247%222%227@2%272%232%231%225%245@7%219@2%210%272%221@2%219@3|@4"])
  fun op getPlCom_ind x = x
    val op getPlCom_ind =
    ThmBind.DT(((("ConductORPDef",1),
                [("ConductORPType",[38,63,82,87]),("OMNIType",[15,32,37]),
                 ("arithmetic",[22,24,25,26,27,41,46,59,73,95,179,186]),
                 ("basicSize",[4]),
                 ("bool",
                 [25,26,35,46,47,50,51,52,53,57,62,71,76,77,79,92,95,103,
                  104,106]),("list",[7,46]),("numeral",[0,3,5,7,8]),
                 ("option",[6]),("prim_rec",[42]),
                 ("relation",[107,119,121]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
               [ThmBind.read"%185%1%203%194$0%220@2%194%191%7%187%177$2%211%232%231%225$1@4$0@2|@|@2%194%187%177%203$1$0@2$1%211%221@$0@3|@2%194%183%106%187%177%203$2$0@2$2%211%232%212$1@3$0@3|@|@2%194%192%165%187%177%203$2$0@2$2%211%232%231%226$1@4$0@3|@|@2%189%17%187%177%203$2$0@2$2%211%232%231%223$1@4$0@3|@|@7%187%14$1$0@|@2|@"])
  fun op getPlCom_def x = x
    val op getPlCom_def =
    ThmBind.DT(((("ConductORPDef",2),
                [("ConductORPDef",[0]),("ConductORPType",[38,63,81,82]),
                 ("OMNIType",[15,31,32]),
                 ("arithmetic",[22,24,25,26,27,41,46,59,73,95,179,186]),
                 ("basicSize",[4]),
                 ("bool",[15,25,35,50,51,53,62,92,95,103,104,106]),
                 ("combin",[19]),("list",[6,7]),("numeral",[0,3,5,7,8]),
                 ("option",[7]),("prim_rec",[42]),
                 ("relation",[119,121,127,132]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%194%201%255%220@2%270@2%194%187%177%191%7%201%255%211%232%231%225$0@4$1@3$0@|@|@2%194%187%177%201%255%211%221@$0@3%255$0@2|@2%194%187%177%183%106%201%255%211%232%212$0@3$1@3%255$1@2|@|@2%194%187%177%192%165%201%255%211%232%231%226$0@4$1@3%255$1@2|@|@2%187%177%189%17%201%255%211%232%231%223$0@4$1@3%255$1@2|@|@6"])
  fun op getPsgCom_ind x = x
    val op getPsgCom_ind =
    ThmBind.DT(((("ConductORPDef",4),
                [("ConductORPType",[15,63,82,87]),("OMNIType",[15,32,37]),
                 ("arithmetic",[22,24,25,26,27,41,46,59,73,95,179,186]),
                 ("basicSize",[4]),
                 ("bool",
                 [25,26,35,46,47,50,51,52,53,57,62,71,76,77,79,92,95,103,
                  104,106]),("list",[7,46]),("numeral",[0,3,5,7,8]),
                 ("option",[6]),("prim_rec",[42]),
                 ("relation",[107,119,121]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
               [ThmBind.read"%185%1%203%194$0%220@2%194%192%8%187%177$2%211%232%231%226$1@4$0@2|@|@2%194%187%177%203$1$0@2$1%211%221@$0@3|@2%194%183%106%187%177%203$2$0@2$2%211%232%212$1@3$0@3|@|@2%194%191%153%187%177%203$2$0@2$2%211%232%231%225$1@4$0@3|@|@2%189%17%187%177%203$2$0@2$2%211%232%231%223$1@4$0@3|@|@7%187%14$1$0@|@2|@"])
  fun op getPsgCom_def x = x
    val op getPsgCom_def =
    ThmBind.DT(((("ConductORPDef",5),
                [("ConductORPDef",[3]),("ConductORPType",[15,63,81,82]),
                 ("OMNIType",[15,31,32]),
                 ("arithmetic",[22,24,25,26,27,41,46,59,73,95,179,186]),
                 ("basicSize",[4]),
                 ("bool",[15,25,35,50,51,53,62,92,95,103,104,106]),
                 ("combin",[19]),("list",[6,7]),("numeral",[0,3,5,7,8]),
                 ("option",[7]),("prim_rec",[42]),
                 ("relation",[119,121,127,132]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%194%202%256%220@2%273@2%194%187%177%192%8%202%256%211%232%231%226$0@4$1@3$0@|@|@2%194%187%177%202%256%211%221@$0@3%256$0@2|@2%194%187%177%183%106%202%256%211%232%212$0@3$1@3%256$1@2|@|@2%194%187%177%191%153%202%256%211%232%231%225$0@4$1@3%256$1@2|@|@2%187%177%189%17%202%256%211%232%231%223$0@4$1@3%256$1@2|@|@6"])
  fun op getOmniCommand_ind x = x
    val op getOmniCommand_ind =
    ThmBind.DT(((("ConductORPDef",8),
                [("ConductORPType",[15,38,82,87,160,166]),
                 ("OMNIType",[15,32,37]),("aclfoundation",[34,55,111,116]),
                 ("arithmetic",[22,24,25,26,27,41,46,59,73,95,179,186]),
                 ("basicSize",[4]),
                 ("bool",
                 [25,26,35,46,47,50,51,52,53,57,62,71,75,76,77,79,92,95,
                  103,104,106]),("list",[7,46]),("numeral",[0,3,5,7,8]),
                 ("option",[6]),("prim_rec",[42]),
                 ("relation",[107,119,121]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
               [ThmBind.read"%184%0%203%194$0%219@2%194%189%6%186%176$2%210%276%222%224@2%272%232%231%223$1@6$0@2|@|@2%194%186%176%203$1$0@2$1%210%233@$0@3|@2%194%186%176%203$1$0@2$1%210%213@$0@3|@2%194%190%82%186%176%203$2$0@2$2%210%272$1@2$0@3|@|@2%194%178%93%186%176%203$2$0@2$2%210%265$1@2$0@3|@|@2%194%178%105%178%117%186%176%203$3$0@2$3%210%241$2@$1@2$0@3|@|@|@2%194%178%128%178%140%186%176%203$3$0@2$3%210%269$2@$1@2$0@3|@|@|@2%194%178%152%178%164%186%176%203$3$0@2$3%210%257$2@$1@2$0@3|@|@|@2%194%178%16%178%28%186%176%203$3$0@2$3%210%250$2@$1@2$0@3|@|@|@2%194%180%40%186%176%203$2$0@2$2%210%276$1@%233@2$0@3|@|@2%194%180%40%186%176%203$2$0@2$2%210%276$1@%213@2$0@3|@|@2%194%193%57%186%176%203$2$0@2$2%210%276%222$1@2%272%221@3$0@3|@|@2%194%182%68%186%176%203$2$0@2$2%210%276%222%227@2%272%232$1@4$0@3|@|@2%194%182%68%186%176%203$2$0@2$2%210%276%222%228@2%272%232$1@4$0@3|@|@2%194%183%70%186%176%203$2$0@2$2%210%276%222%224@2%272%232%212$1@5$0@3|@|@2%194%191%74%186%176%203$2$0@2$2%210%276%222%224@2%272%232%231%225$1@6$0@3|@|@2%194%192%75%186%176%203$2$0@2$2%210%276%222%224@2%272%232%231%226$1@6$0@3|@|@2%194%180%58%180%59%190%138%186%176%203$4$0@2$4%210%276%264$3@$2@2%272$1@3$0@3|@|@|@|@2%194%180%60%180%61%190%138%186%176%203$4$0@2$4%210%276%274$3@$2@2%272$1@3$0@3|@|@|@|@2%194%180%40%178%139%186%176%203$3$0@2$3%210%276$2@%265$1@3$0@3|@|@|@2%194%180%40%178%142%178%143%186%176%203$4$0@2$4%210%276$3@%241$2@$1@3$0@3|@|@|@|@2%194%180%40%178%144%178%145%186%176%203$4$0@2$4%210%276$3@%269$2@$1@3$0@3|@|@|@|@2%194%180%40%178%146%178%147%186%176%203$4$0@2$4%210%276$3@%257$2@$1@3$0@3|@|@|@|@2%194%180%40%178%148%178%149%186%176%203$4$0@2$4%210%276$3@%250$2@$1@3$0@3|@|@|@|@2%194%180%40%180%150%178%151%186%176%203$4$0@2$4%210%276$3@%276$2@$1@3$0@3|@|@|@|@2%194%180%40%180%154%180%155%186%176%203$4$0@2$4%210%276$3@%284$2@$1@3$0@3|@|@|@|@2%194%180%40%180%156%178%157%186%176%203$4$0@2$4%210%276$3@%247$2@$1@3$0@3|@|@|@|@2%194%180%40%180%158%180%159%178%160%186%176%203$5$0@2$5%210%276$4@%275$3@$2@$1@3$0@3|@|@|@|@|@2%194%180%40%179%161%179%162%186%176%203$4$0@2$4%210%276$3@%248$2@$1@3$0@3|@|@|@|@2%194%180%40%179%163%179%166%186%176%203$4$0@2$4%210%276$3@%251$2@$1@3$0@3|@|@|@|@2%194%180%40%181%167%181%168%186%176%203$4$0@2$4%210%276$3@%249$2@$1@3$0@3|@|@|@|@2%194%180%40%181%169%181%170%186%176%203$4$0@2$4%210%276$3@%253$2@$1@3$0@3|@|@|@|@2%194%180%40%188%171%188%172%186%176%203$4$0@2$4%210%276$3@%252$2@$1@3$0@3|@|@|@|@2%194%180%40%188%173%188%174%186%176%203$4$0@2$4%210%276$3@%263$2@$1@3$0@3|@|@|@|@2%194%180%40%188%175%188%18%186%176%203$4$0@2$4%210%276$3@%262$2@$1@3$0@3|@|@|@|@2%194%180%63%180%73%186%176%203$3$0@2$3%210%284$2@$1@2$0@3|@|@|@2%194%180%78%178%79%186%176%203$3$0@2$3%210%247$2@$1@2$0@3|@|@|@2%194%180%80%180%81%178%83%186%176%203$4$0@2$4%210%275$3@$2@$1@2$0@3|@|@|@|@2%194%179%84%179%85%186%176%203$3$0@2$3%210%248$2@$1@2$0@3|@|@|@2%194%179%86%179%87%186%176%203$3$0@2$3%210%251$2@$1@2$0@3|@|@|@2%194%181%88%181%89%186%176%203$3$0@2$3%210%249$2@$1@2$0@3|@|@|@2%194%181%90%181%91%186%176%203$3$0@2$3%210%253$2@$1@2$0@3|@|@|@2%194%188%92%188%95%186%176%203$3$0@2$3%210%252$2@$1@2$0@3|@|@|@2%194%188%96%188%97%186%176%203$3$0@2$3%210%263$2@$1@2$0@3|@|@|@2%188%98%188%99%186%176%203$3$0@2$3%210%262$2@$1@2$0@3|@|@|@47%186%13$1$0@|@2|@"])
  fun op getOmniCommand_def x = x
    val op getOmniCommand_def =
    ThmBind.DT(((("ConductORPDef",9),
                [("ConductORPDef",[7]),
                 ("ConductORPType",[15,38,81,82,160,162]),
                 ("OMNIType",[15,31,32]),("aclfoundation",[33,34,110,111]),
                 ("arithmetic",[22,24,25,26,27,41,46,59,73,95,179,186]),
                 ("basicSize",[4]),
                 ("bool",[15,25,35,50,51,53,57,62,92,95,103,104,106]),
                 ("combin",[19]),("list",[6,7]),("numeral",[0,3,5,7,8]),
                 ("option",[7]),("prim_rec",[42]),
                 ("relation",[119,121,127,132]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%194%200%254%219@2%258@2%194%186%176%189%6%200%254%210%276%222%224@2%272%232%231%223$0@6$1@3$0@|@|@2%194%186%176%200%254%210%233@$0@3%254$0@2|@2%194%186%176%200%254%210%213@$0@3%254$0@2|@2%194%186%176%190%82%200%254%210%272$0@2$1@3%254$1@2|@|@2%194%186%176%178%93%200%254%210%265$0@2$1@3%254$1@2|@|@2%194%186%176%178%117%178%105%200%254%210%241$0@$1@2$2@3%254$2@2|@|@|@2%194%186%176%178%140%178%128%200%254%210%269$0@$1@2$2@3%254$2@2|@|@|@2%194%186%176%178%164%178%152%200%254%210%257$0@$1@2$2@3%254$2@2|@|@|@2%194%186%176%178%28%178%16%200%254%210%250$0@$1@2$2@3%254$2@2|@|@|@2%194%186%176%180%40%200%254%210%276$0@%233@2$1@3%254$1@2|@|@2%194%186%176%180%40%200%254%210%276$0@%213@2$1@3%254$1@2|@|@2%194%186%176%193%57%200%254%210%276%222$0@2%272%221@3$1@3%254$1@2|@|@2%194%186%176%182%68%200%254%210%276%222%227@2%272%232$0@4$1@3%254$1@2|@|@2%194%186%176%182%68%200%254%210%276%222%228@2%272%232$0@4$1@3%254$1@2|@|@2%194%186%176%183%70%200%254%210%276%222%224@2%272%232%212$0@5$1@3%254$1@2|@|@2%194%186%176%191%74%200%254%210%276%222%224@2%272%232%231%225$0@6$1@3%254$1@2|@|@2%194%186%176%192%75%200%254%210%276%222%224@2%272%232%231%226$0@6$1@3%254$1@2|@|@2%194%186%176%190%138%180%59%180%58%200%254%210%276%264$0@$1@2%272$2@3$3@3%254$3@2|@|@|@|@2%194%186%176%190%138%180%61%180%60%200%254%210%276%274$0@$1@2%272$2@3$3@3%254$3@2|@|@|@|@2%194%186%176%178%139%180%40%200%254%210%276$0@%265$1@3$2@3%254$2@2|@|@|@2%194%186%176%178%143%178%142%180%40%200%254%210%276$0@%241$1@$2@3$3@3%254$3@2|@|@|@|@2%194%186%176%178%145%178%144%180%40%200%254%210%276$0@%269$1@$2@3$3@3%254$3@2|@|@|@|@2%194%186%176%178%147%178%146%180%40%200%254%210%276$0@%257$1@$2@3$3@3%254$3@2|@|@|@|@2%194%186%176%178%149%178%148%180%40%200%254%210%276$0@%250$1@$2@3$3@3%254$3@2|@|@|@|@2%194%186%176%178%151%180%150%180%40%200%254%210%276$0@%276$1@$2@3$3@3%254$3@2|@|@|@|@2%194%186%176%180%155%180%154%180%40%200%254%210%276$0@%284$1@$2@3$3@3%254$3@2|@|@|@|@2%194%186%176%178%157%180%156%180%40%200%254%210%276$0@%247$1@$2@3$3@3%254$3@2|@|@|@|@2%194%186%176%178%160%180%159%180%158%180%40%200%254%210%276$0@%275$1@$2@$3@3$4@3%254$4@2|@|@|@|@|@2%194%186%176%179%162%179%161%180%40%200%254%210%276$0@%248$1@$2@3$3@3%254$3@2|@|@|@|@2%194%186%176%179%166%179%163%180%40%200%254%210%276$0@%251$1@$2@3$3@3%254$3@2|@|@|@|@2%194%186%176%181%168%181%167%180%40%200%254%210%276$0@%249$1@$2@3$3@3%254$3@2|@|@|@|@2%194%186%176%181%170%181%169%180%40%200%254%210%276$0@%253$1@$2@3$3@3%254$3@2|@|@|@|@2%194%186%176%188%172%188%171%180%40%200%254%210%276$0@%252$1@$2@3$3@3%254$3@2|@|@|@|@2%194%186%176%188%174%188%173%180%40%200%254%210%276$0@%263$1@$2@3$3@3%254$3@2|@|@|@|@2%194%186%176%188%175%180%40%188%18%200%254%210%276$1@%262$2@$0@3$3@3%254$3@2|@|@|@|@2%194%186%176%180%73%180%63%200%254%210%284$0@$1@2$2@3%254$2@2|@|@|@2%194%186%176%178%79%180%78%200%254%210%247$0@$1@2$2@3%254$2@2|@|@|@2%194%186%176%178%83%180%81%180%80%200%254%210%275$0@$1@$2@2$3@3%254$3@2|@|@|@|@2%194%186%176%179%85%179%84%200%254%210%248$0@$1@2$2@3%254$2@2|@|@|@2%194%186%176%179%87%179%86%200%254%210%251$0@$1@2$2@3%254$2@2|@|@|@2%194%186%176%181%89%181%88%200%254%210%249$0@$1@2$2@3%254$2@2|@|@|@2%194%186%176%181%91%181%90%200%254%210%253$0@$1@2$2@3%254$2@2|@|@|@2%194%186%176%188%95%188%92%200%254%210%252$0@$1@2$2@3%254$2@2|@|@|@2%194%186%176%188%97%188%96%200%254%210%263$0@$1@2$2@3%254$2@2|@|@|@2%186%176%188%99%188%98%200%254%210%262$0@$1@2$2@3%254$2@2|@|@|@46"])

  val _ = DB.bindl "ConductORPDef"
  [("getPlCom_primitive_def",getPlCom_primitive_def,DB.Def),
   ("getPsgCom_primitive_def",getPsgCom_primitive_def,DB.Def),
   ("secHelper_def",secHelper_def,DB.Def),
   ("getOmniCommand_primitive_def",getOmniCommand_primitive_def,DB.Def),
   ("secAuthorization_def",secAuthorization_def,DB.Def),
   ("secContext_def",secContext_def,DB.Def),
   ("getPlCom_ind",getPlCom_ind,DB.Thm),
   ("getPlCom_def",getPlCom_def,DB.Thm),
   ("getPsgCom_ind",getPsgCom_ind,DB.Thm),
   ("getPsgCom_def",getPsgCom_def,DB.Thm),
   ("getOmniCommand_ind",getOmniCommand_ind,DB.Thm),
   ("getOmniCommand_def",getOmniCommand_def,DB.Thm)]

  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "ConductORPDef",
    thydataty = "compute",
    read = ThmBind.read,
    data =
        "ConductORPDef.getPlCom_def ConductORPDef.secContext_def ConductORPDef.getPsgCom_def ConductORPDef.secAuthorization_def ConductORPDef.getOmniCommand_def ConductORPDef.secHelper_def"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "ConductORPDef",
    thydataty = "TermGrammarDeltas",
    read = ThmBind.read,
    data =
        "OO8.getPlCom4.%255OO9.getPsgCom4.%256OO9.secHelper4.%279OO14.getOmniCommand4.%254OO16.secAuthorization4.%277OO10.secContext4.%278"
  }
  local open GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val ConductORPDef_grammars = merge_grammars ["ConductORPType", "ssm",
                                               "OMNIType"]
  local
  val (tyUDs, tmUDs) = GrammarDeltas.thy_deltas{thyname="ConductORPDef"}
  val addtmUDs = term_grammar.add_deltas tmUDs
  val addtyUDs = type_grammar.apply_deltas tyUDs
  in
  val ConductORPDef_grammars = 
    Portable.## (addtyUDs,addtmUDs) ConductORPDef_grammars
  val _ = Parse.grammarDB_insert("ConductORPDef",ConductORPDef_grammars)
  val _ = Parse.temp_set_grammars (addtyUDs (Parse.type_grammar()), addtmUDs (Parse.term_grammar()))
  end (* addUDs local *)
  end

val _ = if !Globals.print_thy_loads then TextIO.print "done\n" else ()
val _ = Theory.load_complete "ConductORPDef"
end
