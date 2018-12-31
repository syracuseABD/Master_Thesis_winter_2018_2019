structure projectSecurityTheory :> projectSecurityTheory =
struct
  val _ = if !Globals.print_thy_loads then TextIO.print "Loading projectSecurityTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (* Parents and ML dependencies *)
  local open projectUtilitiesTheory ssmTheory
  in end;
  val _ = Theory.link_parents
          ("projectSecurity",
          Arbnum.fromString "1545934027",
          Arbnum.fromString "591559")
          [("projectUtilities",
           Arbnum.fromString "1545933993",
           Arbnum.fromString "524112"),
           ("ssm",
           Arbnum.fromString "1545329353",
           Arbnum.fromString "965801")];
  val _ = Theory.incorporate_types "projectSecurity" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("list", "list"), ID("aclfoundation", "Form"),
   ID("projectTypes", "principal"), ID("option", "option"),
   ID("projectTypes", "commands"), ID("projectTypes", "state"),
   ID("min", "bool"), ID("aclfoundation", "SecLevel"), ID("num", "num"),
   ID("aclfoundation", "Princ"), ID("aclfoundation", "IntLevel"),
   ID("projectTypes", "platoonLeaderCom"),
   ID("projectTypes", "platoonSergeantCom"), ID("projectTypes", "omniCom"),
   ID("bool", "!"), ID("bool", "/\\"), ID("min", "="), ID("min", "==>"),
   ID("min", "@"), ID("projectTypes", "ACTIONS_IN"), ID("bool", "COND"),
   ID("projectTypes", "CONDUCT_PB"), ID("list", "CONS"), ID("bool", "F"),
   ID("aclfoundation", "FF"), ID("aclfoundation", "Form_CASE"),
   ID("combin", "I"), ID("list", "NIL"), ID("option", "NONE"),
   ID("aclfoundation", "Name"), ID("projectTypes", "Omni"),
   ID("projectTypes", "OmniCOM"), ID("projectTypes", "PlatoonLeader"),
   ID("projectTypes", "PlatoonLeaderCOM"),
   ID("projectTypes", "PlatoonSergeant"),
   ID("projectTypes", "PlatoonSergeantCOM"),
   ID("aclfoundation", "Princ_CASE"), ID("projectTypes", "SECURE"),
   ID("option", "SOME"), ID("bool", "T"), ID("aclfoundation", "TT"),
   ID("relation", "WF"), ID("relation", "WFREC"),
   ID("projectTypes", "WITHDRAW"), ID("projectTypes", "actionsIn"),
   ID("aclfoundation", "andf"), ID("projectSecurity", "authentication"),
   ID("projectTypes", "commands_CASE"), ID("projectTypes", "complete"),
   ID("aclfoundation", "controls"), ID("aclfoundation", "domi"),
   ID("aclfoundation", "doms"), ID("aclfoundation", "eqf"),
   ID("aclfoundation", "eqi"), ID("aclfoundation", "eqn"),
   ID("aclfoundation", "eqs"),
   ID("projectUtilities", "getPlatoonLeaderCOMx"),
   ID("projectUtilities", "getPlatoonSergeantCOMx"),
   ID("projectSecurity", "globalAuth"), ID("aclfoundation", "impf"),
   ID("aclfoundation", "lt"), ID("aclfoundation", "lte"),
   ID("aclfoundation", "meet"), ID("aclfoundation", "notf"),
   ID("option", "option_CASE"), ID("aclfoundation", "orf"),
   ID("projectTypes", "principal_CASE"), ID("aclfoundation", "prop"),
   ID("aclfoundation", "quoting"), ID("aclfoundation", "reps"),
   ID("aclfoundation", "says"), ID("projectTypes", "secure"),
   ID("aclfoundation", "speaks_for"), ID("projectSecurity", "stateAuth"),
   ID("projectTypes", "withdraw")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYV "'e", TYV "'d", TYOP [3], TYOP [5], TYOP [4, 3],
   TYOP [2, 4, 2, 1, 0], TYOP [1, 5], TYOP [0, 6, 6], TYOP [6],
   TYOP [0, 8, 7], TYOP [7], TYOP [0, 5, 10], TYOP [0, 5, 11],
   TYOP [8, 2, 0], TYOP [9], TYOP [10, 2], TYOP [11, 2, 1], TYOP [12],
   TYOP [13], TYOP [14], TYOP [0, 11, 10], TYOP [0, 16, 10],
   TYOP [0, 21, 10], TYOP [0, 15, 10], TYOP [0, 23, 10], TYOP [0, 13, 10],
   TYOP [0, 25, 10], TYOP [0, 20, 10], TYOP [0, 6, 10], TYOP [0, 28, 10],
   TYOP [0, 14, 10], TYOP [0, 30, 10], TYOP [0, 19, 10], TYOP [0, 32, 10],
   TYOP [0, 4, 10], TYOP [0, 34, 10], TYOP [0, 17, 10], TYOP [0, 36, 10],
   TYOP [0, 18, 10], TYOP [0, 38, 10], TYOP [0, 2, 10], TYOP [0, 40, 10],
   TYOP [0, 8, 10], TYOP [0, 42, 10], TYOP [0, 10, 10], TYOP [0, 10, 44],
   TYOP [0, 11, 20], TYOP [0, 6, 28], TYOP [0, 4, 34], TYOP [0, 8, 42],
   TYOP [0, 12, 10], TYOP [0, 50, 12], TYOP [0, 6, 7], TYOP [0, 10, 52],
   TYOP [0, 5, 7], TYOP [0, 14, 30], TYOP [0, 55, 10], TYOP [0, 55, 56],
   TYOP [0, 55, 57], TYOP [0, 13, 25], TYOP [0, 59, 58], TYOP [0, 59, 60],
   TYOP [0, 16, 21], TYOP [0, 62, 61], TYOP [0, 62, 63], TYOP [0, 15, 11],
   TYOP [0, 15, 65], TYOP [0, 66, 64], TYOP [0, 65, 67], TYOP [0, 15, 23],
   TYOP [0, 69, 68], TYOP [0, 65, 70], TYOP [0, 12, 71], TYOP [0, 12, 72],
   TYOP [0, 12, 73], TYOP [0, 12, 74], TYOP [0, 11, 75], TYOP [0, 34, 76],
   TYOP [0, 10, 77], TYOP [0, 10, 78], TYOP [0, 5, 79], TYOP [0, 2, 15],
   TYOP [0, 19, 3], TYOP [0, 17, 3], TYOP [0, 18, 3], TYOP [0, 69, 10],
   TYOP [0, 69, 85], TYOP [0, 40, 86], TYOP [0, 15, 87], TYOP [0, 3, 4],
   TYOP [0, 11, 11], TYOP [0, 90, 11], TYOP [0, 12, 91], TYOP [0, 5, 5],
   TYOP [0, 5, 93], TYOP [0, 38, 33], TYOP [0, 36, 95], TYOP [0, 3, 96],
   TYOP [0, 15, 93], TYOP [0, 16, 5], TYOP [0, 16, 99], TYOP [0, 13, 5],
   TYOP [0, 13, 101], TYOP [0, 14, 5], TYOP [0, 14, 103], TYOP [0, 6, 4],
   TYOP [0, 15, 15], TYOP [0, 15, 106], TYOP [0, 3, 10], TYOP [0, 108, 10],
   TYOP [0, 10, 109], TYOP [0, 4, 110], TYOP [0, 10, 45], TYOP [0, 2, 112],
   TYOP [0, 4, 5], TYOP [0, 15, 98], TYOP [0, 15, 5], TYOP [0, 15, 116]]
  end
  val _ = Theory.incorporate_consts "projectSecurity" tyvector
     [("stateAuth", 9), ("globalAuth", 7), ("authentication", 11)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("P", 11), TMV("R", 12), TMV("a", 5), TMV("authentication", 11),
   TMV("s", 8), TMV("v", 5), TMV("v", 4), TMV("v1", 5), TMV("v100", 13),
   TMV("v101", 13), TMV("v102", 13), TMV("v103", 14), TMV("v104", 14),
   TMV("v105", 14), TMV("v106", 14), TMV("v107", 14), TMV("v108", 14),
   TMV("v109", 4), TMV("v11", 5), TMV("v110", 5), TMV("v111", 5),
   TMV("v112", 5), TMV("v113", 5), TMV("v114", 5), TMV("v115", 5),
   TMV("v116", 5), TMV("v117", 5), TMV("v118", 5), TMV("v119", 15),
   TMV("v12", 15), TMV("v120", 5), TMV("v121", 15), TMV("v122", 15),
   TMV("v123", 15), TMV("v124", 5), TMV("v125", 15), TMV("v126", 15),
   TMV("v127", 5), TMV("v128", 16), TMV("v129", 16), TMV("v13", 15),
   TMV("v130", 16), TMV("v131", 16), TMV("v132", 13), TMV("v133", 13),
   TMV("v134", 13), TMV("v135", 13), TMV("v136", 14), TMV("v137", 14),
   TMV("v138", 14), TMV("v139", 14), TMV("v14", 15), TMV("v140", 14),
   TMV("v141", 14), TMV("v143", 3), TMV("v144", 17), TMV("v145", 18),
   TMV("v146", 19), TMV("v15", 5), TMV("v16", 15), TMV("v17", 15),
   TMV("v18", 5), TMV("v19", 16), TMV("v2", 5), TMV("v20", 16),
   TMV("v21", 16), TMV("v22", 16), TMV("v23", 13), TMV("v24", 13),
   TMV("v25", 13), TMV("v26", 13), TMV("v27", 14), TMV("v28", 14),
   TMV("v29", 14), TMV("v3", 5), TMV("v30", 14), TMV("v31", 14),
   TMV("v32", 14), TMV("v33", 4), TMV("v34", 5), TMV("v35", 5),
   TMV("v36", 5), TMV("v37", 5), TMV("v38", 5), TMV("v39", 5),
   TMV("v4", 5), TMV("v40", 5), TMV("v41", 5), TMV("v42", 5),
   TMV("v43", 15), TMV("v44", 5), TMV("v45", 15), TMV("v46", 15),
   TMV("v47", 15), TMV("v48", 5), TMV("v49", 15), TMV("v5", 5),
   TMV("v50", 15), TMV("v51", 5), TMV("v52", 16), TMV("v53", 16),
   TMV("v54", 16), TMV("v55", 16), TMV("v56", 13), TMV("v57", 13),
   TMV("v58", 13), TMV("v59", 13), TMV("v6", 5), TMV("v60", 14),
   TMV("v61", 14), TMV("v62", 14), TMV("v63", 14), TMV("v64", 14),
   TMV("v65", 14), TMV("v66", 2), TMV("v67", 15), TMV("v68", 15),
   TMV("v69", 15), TMV("v7", 5), TMV("v70", 15), TMV("v71", 2),
   TMV("v72", 15), TMV("v73", 15), TMV("v74", 15), TMV("v75", 15),
   TMV("v77", 5), TMV("v78", 5), TMV("v79", 5), TMV("v8", 5),
   TMV("v80", 5), TMV("v81", 5), TMV("v82", 5), TMV("v83", 5),
   TMV("v84", 5), TMV("v85", 5), TMV("v86", 15), TMV("v87", 5),
   TMV("v88", 15), TMV("v89", 15), TMV("v9", 5), TMV("v90", 15),
   TMV("v91", 5), TMV("v92", 15), TMV("v93", 15), TMV("v94", 5),
   TMV("v95", 16), TMV("v96", 16), TMV("v97", 16), TMV("v98", 16),
   TMV("v99", 13), TMV("x", 6), TMV("x", 19), TMV("x", 17), TMV("x", 18),
   TMV("x'", 18), TMV("x''", 19), TMV("x''", 17), TMC(15, 20), TMC(15, 22),
   TMC(15, 24), TMC(15, 26), TMC(15, 27), TMC(15, 29), TMC(15, 31),
   TMC(15, 33), TMC(15, 35), TMC(15, 37), TMC(15, 39), TMC(15, 41),
   TMC(15, 43), TMC(16, 45), TMC(17, 45), TMC(17, 46), TMC(17, 47),
   TMC(17, 48), TMC(17, 49), TMC(18, 45), TMC(19, 51), TMC(20, 8),
   TMC(21, 53), TMC(22, 8), TMC(23, 54), TMC(24, 10), TMC(25, 5),
   TMC(26, 80), TMC(27, 44), TMC(28, 6), TMC(29, 4), TMC(30, 81),
   TMC(31, 2), TMC(32, 82), TMC(33, 2), TMC(34, 83), TMC(35, 2),
   TMC(36, 84), TMC(37, 88), TMC(38, 8), TMC(39, 89), TMC(40, 10),
   TMC(41, 5), TMC(42, 50), TMC(43, 92), TMC(44, 8), TMC(45, 18),
   TMC(46, 94), TMC(47, 11), TMC(48, 97), TMC(49, 17), TMC(50, 98),
   TMC(51, 100), TMC(52, 102), TMC(53, 94), TMC(54, 100), TMC(55, 104),
   TMC(56, 102), TMC(57, 105), TMC(58, 105), TMC(59, 7), TMC(60, 94),
   TMC(61, 104), TMC(62, 104), TMC(63, 107), TMC(64, 93), TMC(65, 111),
   TMC(66, 94), TMC(67, 113), TMC(68, 114), TMC(69, 107), TMC(70, 115),
   TMC(71, 98), TMC(72, 17), TMC(73, 117), TMC(74, 9), TMC(75, 17)]
  end
  structure ThmBind = struct
    val DT = Thm.disk_thm
    val read = Term.read_raw tmvector
  end
  fun op authentication_primitive_def x = x
    val op authentication_primitive_def =
    ThmBind.DT(((("projectSecurity",0),[]),[]),
               [ThmBind.read"%172%205@%201%177%1%200$0@|@2%3%2%184$0@%185%182@2%185%182@2%78%185%182@|@%79%185%182@|@%80%81%185%182@||@%82%83%185%182@||@%84%86%185%182@||@%87%88%185%182@||@%89%90%195$1@%120%184$1@%185%182@2%185%182@2%17%223$0@%185%182@2%54%206$0@%152%225$3@%185%198@2%185%182@2%185%182@2|@%154%225$3@%185%182@2%185%198@2%185%182@2|@%155%225$3@%185%182@2%185%182@2%185%198@2|@|@|@%19%185%182@|@%20%21%185%182@||@%22%23%185%182@||@%24%25%185%182@||@%26%27%185%182@||@%28%30%185%182@||@%31%32%185%182@||@%33%34%185%182@||@%35%36%37%185%182@|||@%38%39%185%182@||@%41%42%185%182@||@%43%44%185%182@||@%45%46%185%182@||@%47%48%185%182@||@%49%50%185%182@||@%52%53%185%182@||@|@%121%122%185%182@||@%123%124%185%182@||@||@%91%92%185%182@||@%93%94%185%182@||@%95%97%98%185%182@|||@%99%100%185%182@||@%101%102%185%182@||@%103%104%185%182@||@%105%106%185%182@||@%108%109%185%182@||@%110%111%185%182@||@%112%113%185%182@||@||@2"])
  fun op stateAuth_def x = x
    val op stateAuth_def =
    ThmBind.DT(((("projectSecurity",3),[]),[]),
               [ThmBind.read"%169%4%162%150%173%232$1@$0@2%179%175$1@%180@2%179%174%215$0@2%197%192%230@4%181%208%188%191@2%226%197%192%230@5%186@2%181%226%187@2%186@3%179%175$1@%196@2%179%174%216$0@2%197%194%203@4%181%208%188%193@2%226%197%194%203@5%186@2%181%226%187@2%186@3%179%175$1@%178@2%179%174%215$0@2%197%192%233@4%181%208%188%191@2%226%197%192%233@5%186@2%181%226%187@2%186@3%179%175$1@%202@2%179%174%215$0@2%197%192%207@4%181%208%188%191@2%226%197%192%207@5%186@2%181%226%187@2%186@3%181%226%187@2%186@6|@|@"])
  fun op globalAuth_def x = x
    val op globalAuth_def =
    ThmBind.DT(((("projectSecurity",4),[]),[]),
               [ThmBind.read"%162%150%173%217$0@2%181%199@%186@2|@"])
  fun op authentication_ind x = x
    val op authentication_ind =
    ThmBind.DT(((("projectSecurity",1),
                [("aclfoundation",[55,116]),
                 ("bool",[25,26,46,47,52,53,57,62,71,75,76,77,79]),
                 ("option",[6]),("projectTypes",[87,104]),
                 ("relation",[107,113]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
               [ThmBind.read"%161%0%176%170%166%152$1%229%188%191@2%226%197%192$0@5|@2%170%167%153$1%229%188%193@2%226%197%194$0@5|@2%170%164%151$1%229%188%189@2%226%197%190$0@5|@2%170$0%199@2%170$0%183@2%170%165%6$1%226$0@2|@2%170%157%7$1%222$0@2|@2%170%157%63%157%74$2%204$1@$0@2|@|@2%170%157%85%157%96$2%224$1@$0@2|@|@2%170%157%107%157%118$2%218$1@$0@2|@|@2%170%157%128%157%139$2%211$1@$0@2|@|@2%170%168%114$1%229%188$0@2%199@2|@2%170%168%114$1%229%188$0@2%183@2|@2%170%168%114$1%229%188$0@2%226%187@3|@2%170%166%55$1%229%188%193@2%226%197%192$0@5|@2%170%166%55$1%229%188%189@2%226%197%192$0@5|@2%170%167%56$1%229%188%191@2%226%197%194$0@5|@2%170%167%56$1%229%188%189@2%226%197%194$0@5|@2%170%164%57$1%229%188%191@2%226%197%190$0@5|@2%170%164%57$1%229%188%193@2%226%197%190$0@5|@2%170%168%114%157%125$2%229%188$1@2%222$0@3|@|@2%170%168%114%157%126%157%127$3%229%188$2@2%204$1@$0@3|@|@|@2%170%168%114%157%129%157%130$3%229%188$2@2%224$1@$0@3|@|@|@2%170%168%114%157%131%157%132$3%229%188$2@2%218$1@$0@3|@|@|@2%170%168%114%157%133%157%134$3%229%188$2@2%211$1@$0@3|@|@|@2%170%168%114%159%135%157%136$3%229%188$2@2%229$1@$0@3|@|@|@2%170%168%114%159%137%159%138$3%229%188$2@2%231$1@$0@3|@|@|@2%170%168%114%159%140%157%141$3%229%188$2@2%208$1@$0@3|@|@|@2%170%168%114%159%142%159%143%157%144$4%229%188$3@2%228$2@$1@$0@3|@|@|@|@2%170%168%114%158%145%158%146$3%229%188$2@2%209$1@$0@3|@|@|@2%170%168%114%158%147%158%148$3%229%188$2@2%212$1@$0@3|@|@|@2%170%168%114%160%149%160%8$3%229%188$2@2%210$1@$0@3|@|@|@2%170%168%114%160%9%160%10$3%229%188$2@2%214$1@$0@3|@|@|@2%170%168%114%163%11%163%12$3%229%188$2@2%213$1@$0@3|@|@|@2%170%168%114%163%13%163%14$3%229%188$2@2%220$1@$0@3|@|@|@2%170%168%114%163%15%163%16$3%229%188$2@2%219$1@$0@3|@|@|@2%170%159%115%159%116%157%18$3%229%221$2@$1@2$0@2|@|@|@2%170%159%117%159%119%157%18$3%229%227$2@$1@2$0@2|@|@|@2%170%159%29%159%40$2%231$1@$0@2|@|@2%170%159%51%157%58$2%208$1@$0@2|@|@2%170%159%59%159%60%157%61$3%228$2@$1@$0@2|@|@|@2%170%158%62%158%64$2%209$1@$0@2|@|@2%170%158%65%158%66$2%212$1@$0@2|@|@2%170%160%67%160%68$2%210$1@$0@2|@|@2%170%160%69%160%70$2%214$1@$0@2|@|@2%170%163%71%163%72$2%213$1@$0@2|@|@2%170%163%73%163%75$2%220$1@$0@2|@|@2%163%76%163%77$2%219$1@$0@2|@|@49%157%5$1$0@|@2|@"])
  fun op authentication_def x = x
    val op authentication_def =
    ThmBind.DT(((("projectSecurity",2),
                [("aclfoundation",[33,110]),("bool",[15]),("combin",[19]),
                 ("option",[7]),("projectSecurity",[0]),
                 ("projectTypes",[83,98]),
                 ("relation",[113,132])]),["DISK_THM"]),
               [ThmBind.read"%170%171%205%229%188%191@2%226%197%192%156@6%198@2%170%171%205%229%188%193@2%226%197%194%154@6%198@2%170%171%205%229%188%189@2%226%197%190%151@6%198@2%170%171%205%199@2%182@2%170%171%205%183@2%182@2%170%171%205%226%6@3%182@2%170%171%205%222%7@3%182@2%170%171%205%204%63@%74@3%182@2%170%171%205%224%85@%96@3%182@2%170%171%205%218%107@%118@3%182@2%170%171%205%211%128@%139@3%182@2%170%171%205%229%188%114@2%199@3%182@2%170%171%205%229%188%114@2%183@3%182@2%170%171%205%229%188%114@2%226%187@4%182@2%170%171%205%229%188%193@2%226%197%192%55@6%182@2%170%171%205%229%188%189@2%226%197%192%55@6%182@2%170%171%205%229%188%191@2%226%197%194%56@6%182@2%170%171%205%229%188%189@2%226%197%194%56@6%182@2%170%171%205%229%188%191@2%226%197%190%57@6%182@2%170%171%205%229%188%193@2%226%197%190%57@6%182@2%170%171%205%229%188%114@2%222%125@4%182@2%170%171%205%229%188%114@2%204%126@%127@4%182@2%170%171%205%229%188%114@2%224%129@%130@4%182@2%170%171%205%229%188%114@2%218%131@%132@4%182@2%170%171%205%229%188%114@2%211%133@%134@4%182@2%170%171%205%229%188%114@2%229%135@%136@4%182@2%170%171%205%229%188%114@2%231%137@%138@4%182@2%170%171%205%229%188%114@2%208%140@%141@4%182@2%170%171%205%229%188%114@2%228%142@%143@%144@4%182@2%170%171%205%229%188%114@2%209%145@%146@4%182@2%170%171%205%229%188%114@2%212%147@%148@4%182@2%170%171%205%229%188%114@2%210%149@%8@4%182@2%170%171%205%229%188%114@2%214%9@%10@4%182@2%170%171%205%229%188%114@2%213%11@%12@4%182@2%170%171%205%229%188%114@2%220%13@%14@4%182@2%170%171%205%229%188%114@2%219%15@%16@4%182@2%170%171%205%229%221%115@%116@2%18@3%182@2%170%171%205%229%227%117@%119@2%18@3%182@2%170%171%205%231%29@%40@3%182@2%170%171%205%208%51@%58@3%182@2%170%171%205%228%59@%60@%61@3%182@2%170%171%205%209%62@%64@3%182@2%170%171%205%212%65@%66@3%182@2%170%171%205%210%67@%68@3%182@2%170%171%205%214%69@%70@3%182@2%170%171%205%213%71@%72@3%182@2%170%171%205%220%73@%75@3%182@2%171%205%219%76@%77@3%182@48"])

  val _ = DB.bindl "projectSecurity"
  [("authentication_primitive_def",authentication_primitive_def,DB.Def),
   ("stateAuth_def",stateAuth_def,DB.Def),
   ("globalAuth_def",globalAuth_def,DB.Def),
   ("authentication_ind",authentication_ind,DB.Thm),
   ("authentication_def",authentication_def,DB.Thm)]

  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "projectSecurity",
    thydataty = "compute",
    read = ThmBind.read,
    data =
        "projectSecurity.authentication_def projectSecurity.globalAuth_def projectSecurity.stateAuth_def"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "projectSecurity",
    thydataty = "TermGrammarDeltas",
    read = ThmBind.read,
    data =
        "OO14.authentication4.%205OO9.stateAuth4.%232OO10.globalAuth4.%217"
  }
  local open GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val projectSecurity_grammars = merge_grammars ["projectUtilities", "ssm"]
  local
  val (tyUDs, tmUDs) = GrammarDeltas.thy_deltas{thyname="projectSecurity"}
  val addtmUDs = term_grammar.add_deltas tmUDs
  val addtyUDs = type_grammar.apply_deltas tyUDs
  in
  val projectSecurity_grammars = 
    Portable.## (addtyUDs,addtmUDs) projectSecurity_grammars
  val _ = Parse.grammarDB_insert("projectSecurity",projectSecurity_grammars)
  val _ = Parse.temp_set_grammars (addtyUDs (Parse.type_grammar()), addtmUDs (Parse.term_grammar()))
  end (* addUDs local *)
  end

val _ = if !Globals.print_thy_loads then TextIO.print "done\n" else ()
val _ = Theory.load_complete "projectSecurity"
end
