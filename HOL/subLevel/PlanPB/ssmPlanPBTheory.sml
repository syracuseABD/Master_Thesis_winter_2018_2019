structure ssmPlanPBTheory :> ssmPlanPBTheory =
struct
  val _ = if !Globals.print_thy_loads then TextIO.print "Loading ssmPlanPBTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (* Parents and ML dependencies *)
  local open PlanPBDefTheory ssmTheory
  in end;
  val _ = Theory.link_parents
          ("ssmPlanPB",
          Arbnum.fromString "1528688805",
          Arbnum.fromString "619005")
          [("PlanPBDef",
           Arbnum.fromString "1528688782",
           Arbnum.fromString "233718"),
           ("ssm",
           Arbnum.fromString "1528688695",
           Arbnum.fromString "391911")];
  val _ = Theory.incorporate_types "ssmPlanPB" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("PlanPBType", "slOutput"), ID("ssm", "trType"),
   ID("list", "list"), ID("aclfoundation", "Form"),
   ID("PlanPBType", "stateRole"), ID("option", "option"),
   ID("OMNIType", "command"), ID("PlanPBType", "slCommand"),
   ID("PlanPBType", "slState"), ID("min", "bool"),
   ID("aclfoundation", "Kripke"), ID("aclfoundation", "po"),
   ID("OMNIType", "output"), ID("PlanPBType", "plCommand"),
   ID("PlanPBType", "psgCommand"), ID("aclfoundation", "Princ"),
   ID("aclfoundation", "IntLevel"), ID("aclfoundation", "SecLevel"),
   ID("num", "num"), ID("bool", "!"), ID("pair", ","), ID("pair", "prod"),
   ID("bool", "/\\"), ID("min", "="), ID("min", "==>"), ID("min", "@"),
   ID("ssm", "CFG"), ID("ssm", "configuration"), ID("ssm", "CFGInterpret"),
   ID("PlanPBType", "COMPLETE"), ID("PlanPBType", "COMPLETE_PLAN"),
   ID("bool", "COND"), ID("list", "CONS"), ID("PlanPBType", "Complete"),
   ID("PlanPBType", "CompletePlan"), ID("bool", "F"),
   ID("aclfoundation", "FF"), ID("aclfoundation", "Form_CASE"),
   ID("combin", "I"), ID("PlanPBType", "INITIATE_MOVEMENT"),
   ID("list", "NIL"), ID("option", "NONE"), ID("aclfoundation", "Name"),
   ID("PlanPBType", "OPOID"), ID("PlanPBType", "Opoid"),
   ID("PlanPBType", "PL"), ID("PlanPBType", "PLAN_PB"),
   ID("PlanPBType", "PSG"), ID("PlanPBType", "PlatoonLeader"),
   ID("PlanPBType", "PlatoonSergeant"), ID("aclfoundation", "Princ_CASE"),
   ID("PlanPBType", "RECEIVE_MISSION"), ID("PlanPBType", "RECON"),
   ID("PlanPBType", "REPORT1"), ID("PlanPBType", "REPORT2"),
   ID("PlanPBType", "ReceiveMission"), ID("PlanPBType", "Report1"),
   ID("PlanPBType", "Report2"), ID("OMNIType", "SLc"),
   ID("option", "SOME"), ID("PlanPBType", "SUPERVISE"),
   ID("PlanPBType", "Supervise"), ID("bool", "T"),
   ID("PlanPBType", "TENTATIVE_PLAN"), ID("ssm", "TR"),
   ID("aclfoundation", "TT"), ID("PlanPBType", "WARNO"),
   ID("relation", "WF"), ID("relation", "WFREC"),
   ID("PlanPBType", "Warno"), ID("aclfoundation", "andf"),
   ID("ssm", "authenticationTest"), ID("PlanPBType", "complete"),
   ID("PlanPBType", "completePlan"), ID("aclfoundation", "controls"),
   ID("ssm", "discard"), ID("aclfoundation", "domi"),
   ID("aclfoundation", "doms"), ID("aclfoundation", "eqf"),
   ID("aclfoundation", "eqi"), ID("aclfoundation", "eqn"),
   ID("aclfoundation", "eqs"), ID("ssm", "exec"),
   ID("PlanPBDef", "getInitMove"), ID("PlanPBDef", "getPlCom"),
   ID("PlanPBDef", "getRecon"), ID("PlanPBDef", "getReport"),
   ID("PlanPBDef", "getTenativePlan"), ID("aclfoundation", "impf"),
   ID("PlanPBType", "initiateMovement"), ID("ssm", "inputList"),
   ID("ssmPlanPB", "inputOK"), ID("PlanPBType", "invalidPlCommand"),
   ID("aclfoundation", "lt"), ID("aclfoundation", "lte"),
   ID("aclfoundation", "meet"), ID("aclfoundation", "notf"),
   ID("PlanPBType", "opoid"), ID("aclfoundation", "orf"),
   ID("ssmPlanPB", "planPBNS"), ID("ssmPlanPB", "planPBOut"),
   ID("aclfoundation", "prop"), ID("ssm", "propCommandList"),
   ID("aclfoundation", "quoting"), ID("PlanPBType", "receiveMission"),
   ID("PlanPBType", "recon"), ID("PlanPBType", "report1"),
   ID("PlanPBType", "report2"), ID("aclfoundation", "reps"),
   ID("aclrules", "sat"), ID("satList", "satList"),
   ID("aclfoundation", "says"), ID("PlanPBDef", "secContext"),
   ID("PlanPBDef", "secContextNull"), ID("aclfoundation", "speaks_for"),
   ID("PlanPBType", "supervise"), ID("PlanPBType", "tentativePlan"),
   ID("ssm", "trap"), ID("PlanPBType", "unAuthenticated"),
   ID("PlanPBType", "unAuthorized"), ID("PlanPBType", "warno"),
   ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYV "'b", TYV "'a", TYOP [5], TYOP [8], TYOP [7, 4],
   TYOP [6, 5], TYOP [4, 6, 3, 2, 1], TYOP [3, 7], TYOP [2, 8],
   TYOP [0, 9, 0], TYOP [9], TYOP [0, 11, 10], TYOP [0, 9, 11],
   TYOP [0, 11, 13], TYOP [10], TYV "'e", TYV "'d", TYOP [4, 6, 3, 17, 16],
   TYOP [0, 18, 15], TYOP [11, 6, 1, 3, 17, 16], TYOP [3, 6], TYOP [2, 21],
   TYOP [0, 22, 11], TYOP [0, 11, 23], TYOP [12, 17], TYOP [12, 16],
   TYOP [13, 0], TYOP [3, 27], TYOP [2, 28], TYOP [0, 22, 29],
   TYOP [0, 11, 30], TYOP [0, 9, 15], TYOP [0, 11, 32], TYOP [0, 18, 19],
   TYOP [3, 18], TYOP [3, 35], TYOP [3, 29], TYOP [14], TYOP [15],
   TYOP [16, 3], TYOP [17, 3, 17], TYOP [18, 3, 16], TYOP [19],
   TYOP [0, 19, 15], TYOP [0, 41, 15], TYOP [0, 45, 15], TYOP [0, 20, 15],
   TYOP [0, 47, 15], TYOP [0, 40, 15], TYOP [0, 49, 15], TYOP [0, 42, 15],
   TYOP [0, 51, 15], TYOP [0, 44, 15], TYOP [0, 33, 15], TYOP [0, 54, 15],
   TYOP [0, 24, 15], TYOP [0, 56, 15], TYOP [0, 31, 15], TYOP [0, 58, 15],
   TYOP [0, 8, 15], TYOP [0, 60, 15], TYOP [0, 43, 15], TYOP [0, 62, 15],
   TYOP [0, 6, 15], TYOP [0, 64, 15], TYOP [0, 25, 15], TYOP [0, 66, 15],
   TYOP [0, 26, 15], TYOP [0, 68, 15], TYOP [0, 11, 15], TYOP [0, 70, 15],
   TYOP [0, 32, 15], TYOP [22, 25, 26], TYOP [22, 20, 73],
   TYOP [0, 73, 74], TYOP [0, 20, 75], TYOP [0, 26, 73], TYOP [0, 25, 77],
   TYOP [0, 15, 15], TYOP [0, 15, 79], TYOP [0, 19, 44], TYOP [0, 21, 15],
   TYOP [0, 21, 82], TYOP [0, 38, 15], TYOP [0, 38, 84], TYOP [0, 0, 15],
   TYOP [0, 0, 86], TYOP [0, 11, 70], TYOP [0, 34, 15], TYOP [0, 89, 34],
   TYOP [28, 5, 17, 16, 29, 3, 11], TYOP [0, 37, 91], TYOP [0, 11, 92],
   TYOP [0, 36, 93], TYOP [0, 35, 35], TYOP [0, 95, 94], TYOP [0, 11, 95],
   TYOP [0, 97, 96], TYOP [0, 19, 98], TYOP [0, 91, 15], TYOP [0, 74, 100],
   TYOP [0, 0, 0], TYOP [0, 0, 102], TYOP [0, 15, 103], TYOP [0, 11, 11],
   TYOP [0, 11, 105], TYOP [0, 15, 106], TYOP [0, 18, 95],
   TYOP [0, 36, 36], TYOP [0, 35, 109], TYOP [0, 21, 21], TYOP [0, 6, 111],
   TYOP [0, 37, 37], TYOP [0, 29, 113], TYOP [0, 43, 62],
   TYOP [0, 115, 15], TYOP [0, 115, 116], TYOP [0, 115, 117],
   TYOP [0, 42, 51], TYOP [0, 119, 118], TYOP [0, 119, 120],
   TYOP [0, 41, 45], TYOP [0, 122, 121], TYOP [0, 122, 123],
   TYOP [0, 40, 19], TYOP [0, 40, 125], TYOP [0, 126, 124],
   TYOP [0, 125, 127], TYOP [0, 40, 49], TYOP [0, 129, 128],
   TYOP [0, 125, 130], TYOP [0, 34, 131], TYOP [0, 34, 132],
   TYOP [0, 34, 133], TYOP [0, 34, 134], TYOP [0, 19, 135],
   TYOP [0, 64, 136], TYOP [0, 15, 137], TYOP [0, 15, 138],
   TYOP [0, 18, 139], TYOP [0, 3, 40], TYOP [0, 38, 4], TYOP [0, 39, 4],
   TYOP [0, 129, 15], TYOP [0, 129, 144], TYOP [0, 3, 15],
   TYOP [0, 146, 145], TYOP [0, 40, 147], TYOP [0, 4, 5], TYOP [0, 5, 6],
   TYOP [0, 91, 100], TYOP [0, 22, 151], TYOP [0, 74, 152],
   TYOP [0, 19, 19], TYOP [0, 154, 19], TYOP [0, 34, 155],
   TYOP [0, 18, 18], TYOP [0, 18, 157], TYOP [0, 35, 15],
   TYOP [0, 19, 159], TYOP [0, 40, 157], TYOP [0, 8, 9], TYOP [0, 21, 22],
   TYOP [0, 41, 18], TYOP [0, 41, 164], TYOP [0, 42, 18],
   TYOP [0, 42, 166], TYOP [0, 43, 18], TYOP [0, 43, 168], TYOP [0, 8, 21],
   TYOP [0, 8, 38], TYOP [0, 35, 21], TYOP [0, 40, 40], TYOP [0, 40, 173],
   TYOP [0, 6, 18], TYOP [0, 40, 161], TYOP [0, 74, 19], TYOP [0, 74, 159],
   TYOP [0, 40, 18], TYOP [0, 40, 179]]
  end
  val _ = Theory.incorporate_consts "ssmPlanPB" tyvector
     [("planPBOut", 12), ("planPBNS", 14), ("inputOK", 19)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("M", 20), TMV("NS", 24), TMV("Oi", 25), TMV("Os", 26),
   TMV("Out", 31), TMV("P", 19), TMV("P", 33), TMV("R", 34), TMV("a", 18),
   TMV("cmd", 6), TMV("inputOK", 19), TMV("ins", 36), TMV("outs", 37),
   TMV("plCommand", 38), TMV("psgCommand", 39), TMV("s", 11), TMV("v", 18),
   TMV("v", 6), TMV("v", 11), TMV("v0", 8), TMV("v1", 18), TMV("v1", 8),
   TMV("v1", 9), TMV("v10", 40), TMV("v100", 18), TMV("v101", 18),
   TMV("v102", 18), TMV("v103", 18), TMV("v104", 18), TMV("v105", 18),
   TMV("v106", 18), TMV("v107", 18), TMV("v108", 18), TMV("v109", 40),
   TMV("v110", 18), TMV("v111", 40), TMV("v112", 40), TMV("v113", 40),
   TMV("v114", 18), TMV("v115", 40), TMV("v116", 40), TMV("v117", 18),
   TMV("v118", 41), TMV("v119", 41), TMV("v12", 40), TMV("v120", 41),
   TMV("v121", 41), TMV("v122", 42), TMV("v123", 42), TMV("v124", 42),
   TMV("v125", 42), TMV("v126", 43), TMV("v127", 43), TMV("v128", 43),
   TMV("v129", 43), TMV("v13", 40), TMV("v130", 43), TMV("v131", 43),
   TMV("v133", 40), TMV("v134", 40), TMV("v135", 40), TMV("v136", 40),
   TMV("v137", 3), TMV("v138", 40), TMV("v139", 40), TMV("v14", 40),
   TMV("v140", 40), TMV("v141", 40), TMV("v15", 18), TMV("v16", 40),
   TMV("v17", 40), TMV("v18", 18), TMV("v19", 41), TMV("v2", 18),
   TMV("v20", 41), TMV("v21", 41), TMV("v22", 41), TMV("v23", 42),
   TMV("v24", 42), TMV("v25", 42), TMV("v26", 42), TMV("v27", 43),
   TMV("v28", 43), TMV("v29", 43), TMV("v3", 18), TMV("v30", 43),
   TMV("v31", 43), TMV("v32", 43), TMV("v33", 6), TMV("v34", 18),
   TMV("v35", 18), TMV("v36", 18), TMV("v37", 18), TMV("v38", 18),
   TMV("v39", 18), TMV("v4", 18), TMV("v40", 18), TMV("v41", 18),
   TMV("v42", 18), TMV("v43", 40), TMV("v44", 18), TMV("v45", 40),
   TMV("v46", 40), TMV("v47", 40), TMV("v48", 18), TMV("v49", 40),
   TMV("v5", 18), TMV("v50", 40), TMV("v51", 18), TMV("v52", 41),
   TMV("v53", 41), TMV("v54", 41), TMV("v55", 41), TMV("v56", 42),
   TMV("v57", 42), TMV("v58", 42), TMV("v59", 42), TMV("v6", 18),
   TMV("v6", 8), TMV("v60", 43), TMV("v61", 43), TMV("v62", 43),
   TMV("v63", 43), TMV("v64", 43), TMV("v65", 43), TMV("v66", 6),
   TMV("v67", 18), TMV("v68", 18), TMV("v69", 18), TMV("v7", 18),
   TMV("v7", 8), TMV("v70", 18), TMV("v71", 18), TMV("v72", 18),
   TMV("v73", 18), TMV("v74", 18), TMV("v75", 18), TMV("v76", 40),
   TMV("v77", 18), TMV("v78", 40), TMV("v79", 40), TMV("v8", 18),
   TMV("v8", 8), TMV("v80", 40), TMV("v81", 18), TMV("v82", 40),
   TMV("v83", 40), TMV("v84", 18), TMV("v85", 41), TMV("v86", 41),
   TMV("v87", 41), TMV("v88", 41), TMV("v89", 42), TMV("v9", 18),
   TMV("v9", 8), TMV("v90", 42), TMV("v91", 42), TMV("v92", 42),
   TMV("v93", 43), TMV("v94", 43), TMV("v95", 43), TMV("v96", 43),
   TMV("v97", 43), TMV("v98", 43), TMV("v99", 6), TMV("x", 8), TMC(20, 44),
   TMC(20, 46), TMC(20, 48), TMC(20, 50), TMC(20, 52), TMC(20, 53),
   TMC(20, 55), TMC(20, 57), TMC(20, 59), TMC(20, 61), TMC(20, 63),
   TMC(20, 65), TMC(20, 67), TMC(20, 69), TMC(20, 71), TMC(20, 72),
   TMC(21, 76), TMC(21, 78), TMC(23, 80), TMC(24, 80), TMC(24, 81),
   TMC(24, 83), TMC(24, 85), TMC(24, 87), TMC(24, 88), TMC(25, 80),
   TMC(26, 90), TMC(27, 99), TMC(29, 101), TMC(30, 11), TMC(31, 11),
   TMC(32, 104), TMC(32, 107), TMC(33, 108), TMC(33, 110), TMC(33, 112),
   TMC(33, 114), TMC(34, 0), TMC(35, 0), TMC(36, 15), TMC(37, 18),
   TMC(38, 140), TMC(39, 79), TMC(40, 11), TMC(41, 35), TMC(41, 21),
   TMC(42, 6), TMC(43, 141), TMC(44, 11), TMC(45, 0), TMC(46, 142),
   TMC(47, 11), TMC(48, 143), TMC(49, 3), TMC(50, 3), TMC(51, 148),
   TMC(52, 11), TMC(53, 11), TMC(54, 11), TMC(55, 11), TMC(56, 0),
   TMC(57, 0), TMC(58, 0), TMC(59, 149), TMC(60, 150), TMC(61, 11),
   TMC(62, 0), TMC(63, 15), TMC(64, 11), TMC(65, 153), TMC(66, 18),
   TMC(67, 11), TMC(68, 89), TMC(69, 156), TMC(70, 0), TMC(71, 158),
   TMC(72, 160), TMC(73, 38), TMC(74, 38), TMC(75, 161), TMC(76, 162),
   TMC(76, 163), TMC(77, 165), TMC(78, 167), TMC(79, 158), TMC(80, 165),
   TMC(81, 169), TMC(82, 167), TMC(83, 162), TMC(83, 163), TMC(84, 170),
   TMC(85, 171), TMC(86, 170), TMC(87, 170), TMC(88, 170), TMC(89, 158),
   TMC(90, 39), TMC(91, 172), TMC(92, 19), TMC(93, 38), TMC(94, 169),
   TMC(95, 169), TMC(96, 174), TMC(97, 157), TMC(98, 38), TMC(99, 158),
   TMC(100, 14), TMC(101, 12), TMC(102, 175), TMC(103, 95), TMC(104, 174),
   TMC(105, 38), TMC(106, 38), TMC(107, 38), TMC(108, 38), TMC(109, 176),
   TMC(110, 177), TMC(111, 178), TMC(112, 161), TMC(113, 97), TMC(114, 95),
   TMC(115, 180), TMC(116, 38), TMC(117, 38), TMC(118, 162), TMC(118, 163),
   TMC(119, 0), TMC(120, 0), TMC(121, 38), TMC(122, 79)]
  end
  structure ThmBind = struct
    val DT = Thm.disk_thm
    val read = Term.read_raw tmvector
  end
  fun op inputOK_primitive_def x = x
    val op inputOK_primitive_def =
    ThmBind.DT(((("ssmPlanPB",8),[]),[]),
               [ThmBind.read"%186%264@%239%192%7%238$0@|@2%10%8%207$0@%208%205@2%208%205@2%88%208%205@|@%89%208%205@|@%90%91%208%205@||@%92%93%208%205@||@%94%96%208%205@||@%97%98%208%205@||@%99%100%207$0@%208%205@2%208%205@2%164%221$2@%62%208%233@|@%63%64%208%205@||@%66%67%208%205@||@|@%24%208%205@|@%25%26%208%205@||@%27%28%208%205@||@%29%30%208%205@||@%31%32%208%205@||@%33%34%208%205@||@%35%36%208%205@||@%37%38%208%205@||@%39%40%41%208%205@|||@%42%43%208%205@||@%45%46%208%205@||@%47%48%208%205@||@%49%50%208%205@||@%51%52%208%205@||@%53%54%208%205@||@%56%57%208%205@||@||@%101%102%208%205@||@%103%104%208%205@||@%105%107%108%208%205@|||@%109%110%208%205@||@%111%112%208%205@||@%113%114%208%205@||@%115%116%208%205@||@%119%120%208%205@||@%121%122%208%205@||@%123%124%208%205@||@||@2"])
  fun op planPBNS_ind x = x
    val op planPBNS_ind =
    ThmBind.DT(((("ssmPlanPB",2),
                [("PlanPBType",[103]),
                 ("bool",[25,26,46,47,52,53,57,62,71,75,76,79]),
                 ("pair",[5,16]),("relation",[107,113]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),
                 ("ssm",[14])]),["DISK_THM"]),
               [ThmBind.read"%172%6%191%184%175%165$1%237@%254$0@2|@2%184%175%165$1%217@%254$0@2|@2%184%175%165$1%222@%254$0@2|@2%184%175%165$1%224@%254$0@2|@2%184%175%165$1%196@%254$0@2|@2%184%175%165$1%214@%254$0@2|@2%184%175%165$1%231@%254$0@2|@2%184%175%165$1%225@%254$0@2|@2%184%180%15%175%19$2$1@%290$0@2|@|@2%184%180%15%175%21$2$1@%246$0@2|@|@2%184%175%118$1%234@%254$0@2|@2%184%175%130$1%209@%254$0@2|@2%184%175%142$1%223@%254$0@2|@2%175%154$1%195@%254$0@2|@15%180%18%181%22$2$1@$0@|@|@2|@"])
  fun op planPBNS_def x = x
    val op planPBNS_def =
    ThmBind.DT(((("ssmPlanPB",3),
                [("PlanPBType",[99]),("bool",[15,57]),("combin",[19]),
                 ("pair",[49]),("relation",[113,132]),("ssm",[8]),
                 ("ssmPlanPB",[0,1])]),["DISK_THM"]),
               [ThmBind.read"%184%190%272%237@%254%165@3%198%184%187%258%165@2%201%230%229%216%278@4%211@3%184%187%260%165@2%201%230%229%216%289@4%211@3%184%187%259%165@2%201%230%229%216%279@4%211@3%187%256%165@2%201%230%229%218%262@4%211@6%224@%237@3%184%190%272%217@%254%165@3%198%188%257%165@2%277@2%222@%217@3%184%190%272%222@%254%165@3%198%188%257%165@2%294@2%237@%222@3%184%190%272%224@%254%165@3%198%188%257%165@2%244@2%196@%224@3%184%190%272%196@%254%165@3%198%188%257%165@2%270@2%214@%196@3%184%190%272%214@%254%165@3%198%188%257%165@2%288@2%231@%214@3%184%190%272%231@%254%165@3%198%188%257%165@2%280@2%225@%231@3%184%190%272%225@%254%165@3%198%188%257%165@2%243@2%195@%225@3%184%190%272%15@%290%19@3%15@2%190%272%15@%246%21@3%15@10"])
  fun op planPBOut_ind x = x
    val op planPBOut_ind =
    ThmBind.DT(((("ssmPlanPB",6),
                [("PlanPBType",[103]),
                 ("bool",[25,26,46,47,52,53,57,62,71,75,76,79]),
                 ("pair",[5,16]),("relation",[107,113]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),
                 ("ssm",[14])]),["DISK_THM"]),
               [ThmBind.read"%172%6%191%184%175%165$1%237@%254$0@2|@2%184%175%165$1%217@%254$0@2|@2%184%175%165$1%222@%254$0@2|@2%184%175%165$1%224@%254$0@2|@2%184%175%165$1%196@%254$0@2|@2%184%175%165$1%214@%254$0@2|@2%184%175%165$1%231@%254$0@2|@2%184%175%165$1%225@%254$0@2|@2%184%180%15%175%19$2$1@%290$0@2|@|@2%184%180%15%175%21$2$1@%246$0@2|@|@2%184%175%118$1%234@%254$0@2|@2%184%175%130$1%209@%254$0@2|@2%184%175%142$1%223@%254$0@2|@2%175%154$1%195@%254$0@2|@15%180%18%181%22$2$1@$0@|@|@2|@"])
  fun op planPBOut_def x = x
    val op planPBOut_def =
    ThmBind.DT(((("ssmPlanPB",7),
                [("PlanPBType",[99]),("bool",[15,57]),("combin",[19]),
                 ("pair",[49]),("relation",[113,132]),("ssm",[8]),
                 ("ssmPlanPB",[4,5])]),["DISK_THM"]),
               [ThmBind.read"%184%189%273%237@%254%165@3%197%184%187%258%165@2%201%230%229%216%278@4%211@3%184%187%260%165@2%201%230%229%216%289@4%211@3%184%187%259%165@2%201%230%229%216%279@4%211@3%187%256%165@2%201%230%229%218%262@4%211@6%227@%293@3%184%189%273%217@%254%165@3%197%188%257%165@2%277@2%226@%293@3%184%189%273%222@%254%165@3%197%188%257%165@2%294@2%240@%293@3%184%189%273%224@%254%165@3%197%188%257%165@2%244@2%204@%293@3%184%189%273%196@%254%165@3%197%188%257%165@2%270@2%215@%293@3%184%189%273%214@%254%165@3%197%188%257%165@2%288@2%232@%293@3%184%189%273%231@%254%165@3%197%188%257%165@2%280@2%228@%293@3%184%189%273%225@%254%165@3%197%188%257%165@2%243@2%203@%293@3%184%189%273%15@%290%19@3%293@2%189%273%15@%246%21@3%292@10"])
  fun op inputOK_ind x = x
    val op inputOK_ind =
    ThmBind.DT(((("ssmPlanPB",9),
                [("PlanPBType",[161]),("aclfoundation",[55,116]),
                 ("bool",[25,26,46,47,52,53,57,62,71,75,76,77,79]),
                 ("relation",[107,113]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
               [ThmBind.read"%171%5%191%184%177%9$1%284%213%219@2%274$0@3|@2%184%177%9$1%284%213%220@2%274$0@3|@2%184$0%236@2%184$0%206@2%184%177%17$1%274$0@2|@2%184%166%20$1%269$0@2|@2%184%166%73%166%84$2%241$1@$0@2|@|@2%184%166%95%166%106$2%271$1@$0@2|@|@2%184%166%117%166%129$2%261$1@$0@2|@|@2%184%166%141%166%153$2%250$1@$0@2|@|@2%184%169%23$1%284$0@%236@2|@2%184%169%23$1%284$0@%206@2|@2%184%169%58%169%59%177%125$3%284%268$2@$1@2%274$0@3|@|@|@2%184%169%60%169%61%177%125$3%284%276$2@$1@2%274$0@3|@|@|@2%184%169%23%166%126$2%284$1@%269$0@3|@|@2%184%169%23%166%127%166%128$3%284$2@%241$1@$0@3|@|@|@2%184%169%23%166%131%166%132$3%284$2@%271$1@$0@3|@|@|@2%184%169%23%166%133%166%134$3%284$2@%261$1@$0@3|@|@|@2%184%169%23%166%135%166%136$3%284$2@%250$1@$0@3|@|@|@2%184%169%23%169%137%166%138$3%284$2@%284$1@$0@3|@|@|@2%184%169%23%169%139%169%140$3%284$2@%287$1@$0@3|@|@|@2%184%169%23%169%143%166%144$3%284$2@%245$1@$0@3|@|@|@2%184%169%23%169%145%169%146%166%147$4%284$3@%281$2@$1@$0@3|@|@|@|@2%184%169%23%167%148%167%149$3%284$2@%248$1@$0@3|@|@|@2%184%169%23%167%150%167%151$3%284$2@%251$1@$0@3|@|@|@2%184%169%23%170%152%170%155$3%284$2@%249$1@$0@3|@|@|@2%184%169%23%170%156%170%157$3%284$2@%253$1@$0@3|@|@|@2%184%169%23%176%158%176%159$3%284$2@%252$1@$0@3|@|@|@2%184%169%23%176%160%176%161$3%284$2@%267$1@$0@3|@|@|@2%184%169%23%176%162%176%163$3%284$2@%266$1@$0@3|@|@|@2%184%169%44%169%55$2%287$1@$0@2|@|@2%184%169%65%166%68$2%245$1@$0@2|@|@2%184%169%69%169%70%166%71$3%281$2@$1@$0@2|@|@|@2%184%167%72%167%74$2%248$1@$0@2|@|@2%184%167%75%167%76$2%251$1@$0@2|@|@2%184%170%77%170%78$2%249$1@$0@2|@|@2%184%170%79%170%80$2%253$1@$0@2|@|@2%184%176%81%176%82$2%252$1@$0@2|@|@2%184%176%83%176%85$2%267$1@$0@2|@|@2%176%86%176%87$2%266$1@$0@2|@|@41%166%16$1$0@|@2|@"])
  fun op inputOK_def x = x
    val op inputOK_def =
    ThmBind.DT(((("ssmPlanPB",10),
                [("aclfoundation",[33,110]),("bool",[15]),("combin",[19]),
                 ("relation",[113,132]),("ssmPlanPB",[8])]),["DISK_THM"]),
               [ThmBind.read"%184%185%264%284%213%219@2%274%9@4%233@2%184%185%264%284%213%220@2%274%9@4%233@2%184%185%264%236@2%205@2%184%185%264%206@2%205@2%184%185%264%274%17@3%205@2%184%185%264%269%20@3%205@2%184%185%264%241%73@%84@3%205@2%184%185%264%271%95@%106@3%205@2%184%185%264%261%117@%129@3%205@2%184%185%264%250%141@%153@3%205@2%184%185%264%284%23@%236@3%205@2%184%185%264%284%23@%206@3%205@2%184%185%264%284%268%58@%59@2%274%125@4%205@2%184%185%264%284%276%60@%61@2%274%125@4%205@2%184%185%264%284%23@%269%126@4%205@2%184%185%264%284%23@%241%127@%128@4%205@2%184%185%264%284%23@%271%131@%132@4%205@2%184%185%264%284%23@%261%133@%134@4%205@2%184%185%264%284%23@%250%135@%136@4%205@2%184%185%264%284%23@%284%137@%138@4%205@2%184%185%264%284%23@%287%139@%140@4%205@2%184%185%264%284%23@%245%143@%144@4%205@2%184%185%264%284%23@%281%145@%146@%147@4%205@2%184%185%264%284%23@%248%148@%149@4%205@2%184%185%264%284%23@%251%150@%151@4%205@2%184%185%264%284%23@%249%152@%155@4%205@2%184%185%264%284%23@%253%156@%157@4%205@2%184%185%264%284%23@%252%158@%159@4%205@2%184%185%264%284%23@%267%160@%161@4%205@2%184%185%264%284%23@%266%162@%163@4%205@2%184%185%264%287%44@%55@3%205@2%184%185%264%245%65@%68@3%205@2%184%185%264%281%69@%70@%71@3%205@2%184%185%264%248%72@%74@3%205@2%184%185%264%251%75@%76@3%205@2%184%185%264%249%77@%78@3%205@2%184%185%264%253%79@%80@3%205@2%184%185%264%252%81@%82@3%205@2%184%185%264%267%83@%85@3%205@2%185%264%266%86@%87@3%205@40"])
  fun op PlatoonLeader_notWARNO_notreport1_exec_plCommand_lemma x = x
    val op PlatoonLeader_notWARNO_notreport1_exec_plCommand_lemma =
    ThmBind.DT(((("ssmPlanPB",11),
                [("PlanPBDef",[0,2,14,17,21]),("aclDrules",[3]),
                 ("aclrules",[23]),
                 ("bool",[25,26,27,46,47,50,52,53,62,63,70,92,93,95]),
                 ("list",[23]),("sat",[1,3,5,6,7,11,12,13,14,15]),
                 ("satList",[1,3]),("ssm",[35,43,44])]),["DISK_THM"]),
               [ThmBind.read"%191%295%190%15@%237@3%191%295%188%13@%265@3%191%295%188%13@%279@3%168%0%178%2%179%3%191%194%182$2@%183$1@$0@3%193%264@%285@%286@%200%199%284%213%219@2%274%230%229%216%13@6%210@2%11@2%15@%12@3%283%182$2@%183$1@$0@3%275%199%284%213%219@2%274%230%229%216%13@6%210@4|@|@|@4"])
  fun op PlatoonLeader_notWARNO_notreport1_exec_plCommand_justified_lemma
    x = x
    val op PlatoonLeader_notWARNO_notreport1_exec_plCommand_justified_lemma
    =
    ThmBind.DT(((("ssmPlanPB",12),
                [("PlanPBDef",[0,2,14,17,21]),("aclDrules",[3]),
                 ("aclrules",[23]),
                 ("bool",
                 [25,26,27,35,42,46,47,50,52,53,55,57,62,63,70,76,83,92,93,
                  95,145]),("combin",[19]),("list",[23]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm",[35,43,44,58])]),["DISK_THM"]),
               [ThmBind.read"%191%295%190%15@%237@3%191%295%188%13@%265@3%191%295%188%13@%279@3%173%1%174%4%168%0%178%2%179%3%185%235%182$2@%183$1@$0@3%255%263%199%284%213%219@2%274%230%229%216%13@6%210@4%193%264@%285@%286@%200%199%284%213%219@2%274%230%229%216%13@6%210@2%11@2%15@%12@2%193%264@%285@%286@%11@$4%15@%255%263%199%284%213%219@2%274%230%229%216%13@6%210@5%202$3%15@%255%263%199%284%213%219@2%274%230%229%216%13@6%210@5%12@4%184%242%264@%199%284%213%219@2%274%230%229%216%13@6%210@3%184%194%182$2@%183$1@$0@3%193%264@%285@%286@%200%199%284%213%219@2%274%230%229%216%13@6%210@2%11@2%15@%12@3%283%182$2@%183$1@$0@3%275%199%284%213%219@2%274%230%229%216%13@6%210@6|@|@|@|@|@4"])
  fun op PlatoonLeader_notWARNO_notreport1_exec_plCommand_justified_thm
    x = x
    val op PlatoonLeader_notWARNO_notreport1_exec_plCommand_justified_thm =
    ThmBind.DT(((("ssmPlanPB",13),
                [("PlanPBDef",[0,2,14,17,21]),("aclDrules",[3]),
                 ("aclrules",[23]),
                 ("bool",
                 [25,26,27,35,42,46,47,50,52,53,55,57,62,63,70,76,83,92,93,
                  95,145]),("combin",[19]),("list",[23]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm",[35,43,44,47,48,58])]),["DISK_THM"]),
               [ThmBind.read"%191%295%190%15@%237@3%191%295%188%13@%265@3%191%295%188%13@%279@3%173%1%174%4%168%0%178%2%179%3%185%235%182$2@%183$1@$0@3%255%201%230%229%216%13@4%211@3%193%264@%285@%286@%200%199%284%213%219@2%274%230%229%216%13@6%210@2%11@2%15@%12@2%193%264@%285@%286@%11@$4%15@%255%201%230%229%216%13@4%211@4%202$3%15@%255%201%230%229%216%13@4%211@4%12@4%184%242%264@%199%284%213%219@2%274%230%229%216%13@6%210@3%184%194%182$2@%183$1@$0@3%193%264@%285@%286@%200%199%284%213%219@2%274%230%229%216%13@6%210@2%11@2%15@%12@3%283%182$2@%183$1@$0@3%199%274%230%229%216%13@5%210@5|@|@|@|@|@4"])
  fun op PlatoonLeader_WARNO_exec_report1_lemma x = x
    val op PlatoonLeader_WARNO_exec_report1_lemma =
    ThmBind.DT(((("ssmPlanPB",14),
                [("PlanPBDef",[0,1,5,8,11,14,17,21]),("aclDrules",[3]),
                 ("aclrules",[23]),
                 ("bool",[25,26,46,47,50,52,53,55,62,63,70,92,93,95]),
                 ("list",[23]),("sat",[1,3,5,6,7,11,12,13,14,15]),
                 ("satList",[1,3]),("ssm",[35,43,44])]),["DISK_THM"]),
               [ThmBind.read"%168%0%178%2%179%3%191%194%182$2@%183$1@$0@3%193%264@%285@%286@%200%199%284%213%219@2%274%230%229%216%278@6%199%284%213%219@2%274%230%229%216%289@6%199%284%213%220@2%274%230%229%218%262@6%199%284%213%219@2%274%230%229%216%279@6%210@5%11@2%237@%12@3%283%182$2@%183$1@$0@3%275%199%284%213%219@2%274%230%229%216%278@6%199%284%213%219@2%274%230%229%216%289@6%199%284%213%220@2%274%230%229%218%262@6%199%284%213%219@2%274%230%229%216%279@6%210@7|@|@|@"])
  fun op PlatoonLeader_WARNO_exec_report1_justified_lemma x = x
    val op PlatoonLeader_WARNO_exec_report1_justified_lemma =
    ThmBind.DT(((("ssmPlanPB",15),
                [("PlanPBDef",[0,1,5,8,11,14,17,21]),("aclDrules",[3]),
                 ("aclrules",[23]),
                 ("bool",
                 [25,26,35,42,46,47,50,52,53,55,57,62,63,70,76,83,92,93,95,
                  145]),("combin",[19]),("list",[23]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm",[35,43,44,58])]),["DISK_THM"]),
               [ThmBind.read"%173%1%174%4%168%0%178%2%179%3%185%235%182$2@%183$1@$0@3%255%263%199%284%213%219@2%274%230%229%216%278@6%199%284%213%219@2%274%230%229%216%289@6%199%284%213%220@2%274%230%229%218%262@6%199%284%213%219@2%274%230%229%216%279@6%210@7%193%264@%285@%286@%200%199%284%213%219@2%274%230%229%216%278@6%199%284%213%219@2%274%230%229%216%289@6%199%284%213%220@2%274%230%229%218%262@6%199%284%213%219@2%274%230%229%216%279@6%210@5%11@2%237@%12@2%193%264@%285@%286@%11@$4%237@%255%263%199%284%213%219@2%274%230%229%216%278@6%199%284%213%219@2%274%230%229%216%289@6%199%284%213%220@2%274%230%229%218%262@6%199%284%213%219@2%274%230%229%216%279@6%210@8%202$3%237@%255%263%199%284%213%219@2%274%230%229%216%278@6%199%284%213%219@2%274%230%229%216%289@6%199%284%213%220@2%274%230%229%218%262@6%199%284%213%219@2%274%230%229%216%279@6%210@8%12@4%184%242%264@%199%284%213%219@2%274%230%229%216%278@6%199%284%213%219@2%274%230%229%216%289@6%199%284%213%220@2%274%230%229%218%262@6%199%284%213%219@2%274%230%229%216%279@6%210@6%184%194%182$2@%183$1@$0@3%193%264@%285@%286@%200%199%284%213%219@2%274%230%229%216%278@6%199%284%213%219@2%274%230%229%216%289@6%199%284%213%220@2%274%230%229%218%262@6%199%284%213%219@2%274%230%229%216%279@6%210@5%11@2%237@%12@3%283%182$2@%183$1@$0@3%275%199%284%213%219@2%274%230%229%216%278@6%199%284%213%219@2%274%230%229%216%289@6%199%284%213%220@2%274%230%229%218%262@6%199%284%213%219@2%274%230%229%216%279@6%210@9|@|@|@|@|@"])
  fun op PlatoonLeader_WARNO_exec_report1_justified_thm x = x
    val op PlatoonLeader_WARNO_exec_report1_justified_thm =
    ThmBind.DT(((("ssmPlanPB",16),
                [("PlanPBDef",[0,1,5,8,11,14,17,21]),("aclDrules",[3]),
                 ("aclrules",[23]),
                 ("bool",
                 [25,26,35,42,46,47,50,52,53,55,57,62,63,70,76,83,92,93,95,
                  145]),("combin",[19]),("list",[23]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm",[35,43,44,47,48,58])]),["DISK_THM"]),
               [ThmBind.read"%173%1%174%4%168%0%178%2%179%3%185%235%182$2@%183$1@$0@3%255%201%230%229%216%278@4%201%230%229%216%289@4%201%230%229%218%262@4%201%230%229%216%279@4%211@6%193%264@%285@%286@%200%199%284%213%219@2%274%230%229%216%278@6%199%284%213%219@2%274%230%229%216%289@6%199%284%213%220@2%274%230%229%218%262@6%199%284%213%219@2%274%230%229%216%279@6%210@5%11@2%237@%12@2%193%264@%285@%286@%11@$4%237@%255%201%230%229%216%278@4%201%230%229%216%289@4%201%230%229%218%262@4%201%230%229%216%279@4%211@7%202$3%237@%255%201%230%229%216%278@4%201%230%229%216%289@4%201%230%229%218%262@4%201%230%229%216%279@4%211@7%12@4%184%242%264@%199%284%213%219@2%274%230%229%216%278@6%199%284%213%219@2%274%230%229%216%289@6%199%284%213%220@2%274%230%229%218%262@6%199%284%213%219@2%274%230%229%216%279@6%210@6%184%194%182$2@%183$1@$0@3%193%264@%285@%286@%200%199%284%213%219@2%274%230%229%216%278@6%199%284%213%219@2%274%230%229%216%289@6%199%284%213%220@2%274%230%229%218%262@6%199%284%213%219@2%274%230%229%216%279@6%210@5%11@2%237@%12@3%283%182$2@%183$1@$0@3%199%274%230%229%216%278@5%199%274%230%229%216%289@5%199%274%230%229%218%262@5%199%274%230%229%216%279@5%210@8|@|@|@|@|@"])
  fun op PlatoonLeader_psgCommand_notDiscard_thm x = x
    val op PlatoonLeader_psgCommand_notDiscard_thm =
    ThmBind.DT(((("ssmPlanPB",17),
                [("aclfoundation",[33,110]),("bool",[15,50,53,62]),
                 ("combin",[19]),("list",[23,27]),("relation",[113,132]),
                 ("ssm",[36,47,48,57]),("ssmPlanPB",[8])]),["DISK_THM"]),
               [ThmBind.read"%173%1%174%4%168%0%178%2%179%3%295%235%182$2@%183$1@$0@3%247%201%230%229%218%14@4%211@3%193%264@%285@%286@%200%199%284%213%219@2%274%230%229%218%14@6%210@2%11@2%15@%12@2%193%264@%285@%286@%11@$4%15@%247%201%230%229%218%14@4%211@4%202$3%15@%247%201%230%229%218%14@4%211@4%12@4|@|@|@|@|@"])
  fun op PlatoonLeader_trap_psgCommand_lemma x = x
    val op PlatoonLeader_trap_psgCommand_lemma =
    ThmBind.DT(((("ssmPlanPB",18),
                [("PlanPBDef",[0,5,8,11,14,17,21]),
                 ("bool",[25,26,27,46,47,50,52,53,55,62,63,70,93,108,110]),
                 ("list",[9]),("option",[11]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm",[35])]),["DISK_THM"]),
               [ThmBind.read"%168%0%178%2%179%3%191%194%182$2@%183$1@$0@3%193%264@%285@%286@%200%199%284%213%219@2%274%230%229%218%14@6%210@2%11@2%15@%12@3%282%182$2@%183$1@$0@3%274%212@3|@|@|@"])
  fun op PlatoonLeader_trap_psgCommand_justified_lemma x = x
    val op PlatoonLeader_trap_psgCommand_justified_lemma =
    ThmBind.DT(((("ssmPlanPB",20),
                [("PlanPBDef",[0,5,8,11,14,17,21]),
                 ("bool",
                 [25,26,27,35,42,46,47,50,52,53,55,57,62,63,70,76,83,92,93,
                  95,108,110,145]),("combin",[19]),("list",[9]),
                 ("option",[11]),("sat",[1,3,5,6,7,11,12,13,14,15]),
                 ("satList",[1,3]),("ssm",[35,59])]),["DISK_THM"]),
               [ThmBind.read"%173%1%174%4%168%0%178%2%179%3%185%235%182$2@%183$1@$0@3%291%263%199%284%213%219@2%274%230%229%218%14@6%210@4%193%264@%285@%286@%200%199%284%213%219@2%274%230%229%218%14@6%210@2%11@2%15@%12@2%193%264@%285@%286@%11@$4%15@%291%263%199%284%213%219@2%274%230%229%218%14@6%210@5%202$3%15@%291%263%199%284%213%219@2%274%230%229%218%14@6%210@5%12@4%184%242%264@%199%284%213%219@2%274%230%229%218%14@6%210@3%184%194%182$2@%183$1@$0@3%193%264@%285@%286@%200%199%284%213%219@2%274%230%229%218%14@6%210@2%11@2%15@%12@3%282%182$2@%183$1@$0@3%274%212@5|@|@|@|@|@"])
  fun op PlatoonSergeant_trap_plCommand_lemma x = x
    val op PlatoonSergeant_trap_plCommand_lemma =
    ThmBind.DT(((("ssmPlanPB",21),
                [("PlanPBDef",[0,5,8,11,14,17,21]),
                 ("bool",[25,26,27,46,47,50,52,53,55,62,63,70,93,108,110]),
                 ("list",[9]),("option",[11]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm",[35])]),["DISK_THM"]),
               [ThmBind.read"%168%0%178%2%179%3%191%194%182$2@%183$1@$0@3%193%264@%285@%286@%200%199%284%213%220@2%274%230%229%216%13@6%210@2%11@2%15@%12@3%282%182$2@%183$1@$0@3%274%212@3|@|@|@"])
  fun op PlatoonSergeant_trap_plCommand_justified_lemma x = x
    val op PlatoonSergeant_trap_plCommand_justified_lemma =
    ThmBind.DT(((("ssmPlanPB",22),
                [("PlanPBDef",[0,5,8,11,14,17,21]),
                 ("bool",
                 [25,26,27,35,42,46,47,50,52,53,55,57,62,63,70,76,83,92,93,
                  95,108,110,145]),("combin",[19]),("list",[9]),
                 ("option",[11]),("sat",[1,3,5,6,7,11,12,13,14,15]),
                 ("satList",[1,3]),("ssm",[35,59])]),["DISK_THM"]),
               [ThmBind.read"%173%1%174%4%168%0%178%2%179%3%185%235%182$2@%183$1@$0@3%291%263%199%284%213%220@2%274%230%229%216%13@6%210@4%193%264@%285@%286@%200%199%284%213%220@2%274%230%229%216%13@6%210@2%11@2%15@%12@2%193%264@%285@%286@%11@$4%15@%291%263%199%284%213%220@2%274%230%229%216%13@6%210@5%202$3%15@%291%263%199%284%213%220@2%274%230%229%216%13@6%210@5%12@4%184%242%264@%199%284%213%220@2%274%230%229%216%13@6%210@3%184%194%182$2@%183$1@$0@3%193%264@%285@%286@%200%199%284%213%220@2%274%230%229%216%13@6%210@2%11@2%15@%12@3%282%182$2@%183$1@$0@3%274%212@5|@|@|@|@|@"])
  fun op PlatoonSergeant_trap_plCommand_justified_thm x = x
    val op PlatoonSergeant_trap_plCommand_justified_thm =
    ThmBind.DT(((("ssmPlanPB",23),
                [("PlanPBDef",[0,5,8,11,14,17,21]),
                 ("bool",
                 [25,26,27,35,42,46,47,50,52,53,55,57,62,63,70,76,83,92,93,
                  95,108,110,145]),("combin",[19]),("list",[9,23]),
                 ("option",[11]),("sat",[1,3,5,6,7,11,12,13,14,15]),
                 ("satList",[1,3]),("ssm",[35,47,48,59])]),["DISK_THM"]),
               [ThmBind.read"%173%1%174%4%168%0%178%2%179%3%185%235%182$2@%183$1@$0@3%291%201%230%229%216%13@4%211@3%193%264@%285@%286@%200%199%284%213%220@2%274%230%229%216%13@6%210@2%11@2%15@%12@2%193%264@%285@%286@%11@$4%15@%291%201%230%229%216%13@4%211@4%202$3%15@%291%201%230%229%216%13@4%211@4%12@4%184%242%264@%199%284%213%220@2%274%230%229%216%13@6%210@3%184%194%182$2@%183$1@$0@3%193%264@%285@%286@%200%199%284%213%220@2%274%230%229%216%13@6%210@2%11@2%15@%12@3%282%182$2@%183$1@$0@3%274%212@5|@|@|@|@|@"])

  val _ = DB.bindl "ssmPlanPB"
  [("inputOK_primitive_def",inputOK_primitive_def,DB.Def),
   ("planPBNS_ind",planPBNS_ind,DB.Thm),
   ("planPBNS_def",planPBNS_def,DB.Thm),
   ("planPBOut_ind",planPBOut_ind,DB.Thm),
   ("planPBOut_def",planPBOut_def,DB.Thm),
   ("inputOK_ind",inputOK_ind,DB.Thm), ("inputOK_def",inputOK_def,DB.Thm),
   ("PlatoonLeader_notWARNO_notreport1_exec_plCommand_lemma",
    PlatoonLeader_notWARNO_notreport1_exec_plCommand_lemma,
    DB.Thm),
   ("PlatoonLeader_notWARNO_notreport1_exec_plCommand_justified_lemma",
    PlatoonLeader_notWARNO_notreport1_exec_plCommand_justified_lemma,
    DB.Thm),
   ("PlatoonLeader_notWARNO_notreport1_exec_plCommand_justified_thm",
    PlatoonLeader_notWARNO_notreport1_exec_plCommand_justified_thm,
    DB.Thm),
   ("PlatoonLeader_WARNO_exec_report1_lemma",
    PlatoonLeader_WARNO_exec_report1_lemma,
    DB.Thm),
   ("PlatoonLeader_WARNO_exec_report1_justified_lemma",
    PlatoonLeader_WARNO_exec_report1_justified_lemma,
    DB.Thm),
   ("PlatoonLeader_WARNO_exec_report1_justified_thm",
    PlatoonLeader_WARNO_exec_report1_justified_thm,
    DB.Thm),
   ("PlatoonLeader_psgCommand_notDiscard_thm",
    PlatoonLeader_psgCommand_notDiscard_thm,
    DB.Thm),
   ("PlatoonLeader_trap_psgCommand_lemma",
    PlatoonLeader_trap_psgCommand_lemma,
    DB.Thm),
   ("PlatoonLeader_trap_psgCommand_justified_lemma",
    PlatoonLeader_trap_psgCommand_justified_lemma,
    DB.Thm),
   ("PlatoonSergeant_trap_plCommand_lemma",
    PlatoonSergeant_trap_plCommand_lemma,
    DB.Thm),
   ("PlatoonSergeant_trap_plCommand_justified_lemma",
    PlatoonSergeant_trap_plCommand_justified_lemma,
    DB.Thm),
   ("PlatoonSergeant_trap_plCommand_justified_thm",
    PlatoonSergeant_trap_plCommand_justified_thm,
    DB.Thm)]

  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "ssmPlanPB",
    thydataty = "compute",
    read = ThmBind.read,
    data =
        "ssmPlanPB.planPBNS_def ssmPlanPB.planPBOut_def ssmPlanPB.inputOK_def"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "ssmPlanPB",
    thydataty = "TermGrammarDeltas",
    read = ThmBind.read,
    data = "OO8.planPBNS4.%272OO9.planPBOut4.%273OO7.inputOK4.%264"
  }
  local open GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val ssmPlanPB_grammars = merge_grammars ["PlanPBDef", "ssm"]
  local
  val (tyUDs, tmUDs) = GrammarDeltas.thy_deltas{thyname="ssmPlanPB"}
  val addtmUDs = term_grammar.add_deltas tmUDs
  val addtyUDs = type_grammar.apply_deltas tyUDs
  in
  val ssmPlanPB_grammars = 
    Portable.## (addtyUDs,addtmUDs) ssmPlanPB_grammars
  val _ = Parse.grammarDB_insert("ssmPlanPB",ssmPlanPB_grammars)
  val _ = Parse.temp_set_grammars (addtyUDs (Parse.type_grammar()), addtmUDs (Parse.term_grammar()))
  end (* addUDs local *)
  end

val _ = if !Globals.print_thy_loads then TextIO.print "done\n" else ()
val _ = Theory.load_complete "ssmPlanPB"
end
