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
          Arbnum.fromString "1545933156",
          Arbnum.fromString "810142")
          [("projectUtilities",
           Arbnum.fromString "1545933134",
           Arbnum.fromString "145014"),
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
   ID("projectTypes", "squadLeaderCom"), ID("projectTypes", "omniCom"),
   ID("bool", "!"), ID("bool", "/\\"), ID("min", "="), ID("min", "==>"),
   ID("min", "@"), ID("bool", "COND"), ID("list", "CONS"), ID("bool", "F"),
   ID("aclfoundation", "FF"), ID("aclfoundation", "Form_CASE"),
   ID("combin", "I"), ID("list", "NIL"), ID("option", "NONE"),
   ID("aclfoundation", "Name"), ID("projectTypes", "Omni"),
   ID("projectTypes", "OmniCOM"), ID("aclfoundation", "Princ_CASE"),
   ID("projectTypes", "RT_ALERT"), ID("projectTypes", "RT_FORM"),
   ID("projectTypes", "RT_ORIENT"), ID("projectTypes", "RT_POSITION"),
   ID("option", "SOME"), ID("projectTypes", "SquadLeader"),
   ID("projectTypes", "SquadLeaderCOM"), ID("bool", "T"),
   ID("aclfoundation", "TT"), ID("relation", "WF"),
   ID("relation", "WFREC"), ID("aclfoundation", "andf"),
   ID("projectSecurity", "authentication"),
   ID("projectTypes", "commands_CASE"), ID("projectTypes", "complete"),
   ID("aclfoundation", "controls"), ID("aclfoundation", "domi"),
   ID("aclfoundation", "doms"), ID("aclfoundation", "eqf"),
   ID("aclfoundation", "eqi"), ID("aclfoundation", "eqn"),
   ID("aclfoundation", "eqs"),
   ID("projectUtilities", "getSquadLeaderCOMx"),
   ID("projectSecurity", "globalAuth"), ID("aclfoundation", "impf"),
   ID("aclfoundation", "lt"), ID("aclfoundation", "lte"),
   ID("aclfoundation", "meet"), ID("aclfoundation", "notf"),
   ID("option", "option_CASE"), ID("aclfoundation", "orf"),
   ID("projectTypes", "principal_CASE"), ID("aclfoundation", "prop"),
   ID("aclfoundation", "quoting"), ID("aclfoundation", "reps"),
   ID("projectTypes", "rtAlert"), ID("projectTypes", "rtOrient"),
   ID("projectTypes", "rtPosition"), ID("aclfoundation", "says"),
   ID("aclfoundation", "speaks_for"), ID("projectSecurity", "stateAuth")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYV "'e", TYV "'d", TYOP [3], TYOP [5], TYOP [4, 3],
   TYOP [2, 4, 2, 1, 0], TYOP [1, 5], TYOP [0, 6, 6], TYOP [6],
   TYOP [0, 8, 7], TYOP [7], TYOP [0, 5, 10], TYOP [0, 5, 11],
   TYOP [8, 2, 0], TYOP [9], TYOP [10, 2], TYOP [11, 2, 1], TYOP [12],
   TYOP [13], TYOP [0, 11, 10], TYOP [0, 16, 10], TYOP [0, 20, 10],
   TYOP [0, 15, 10], TYOP [0, 22, 10], TYOP [0, 13, 10], TYOP [0, 24, 10],
   TYOP [0, 19, 10], TYOP [0, 6, 10], TYOP [0, 27, 10], TYOP [0, 14, 10],
   TYOP [0, 29, 10], TYOP [0, 18, 10], TYOP [0, 31, 10], TYOP [0, 4, 10],
   TYOP [0, 33, 10], TYOP [0, 2, 10], TYOP [0, 35, 10], TYOP [0, 17, 10],
   TYOP [0, 37, 10], TYOP [0, 8, 10], TYOP [0, 39, 10], TYOP [0, 10, 10],
   TYOP [0, 10, 41], TYOP [0, 11, 19], TYOP [0, 6, 27], TYOP [0, 4, 33],
   TYOP [0, 8, 39], TYOP [0, 12, 10], TYOP [0, 47, 12], TYOP [0, 6, 7],
   TYOP [0, 10, 49], TYOP [0, 5, 7], TYOP [0, 14, 29], TYOP [0, 52, 10],
   TYOP [0, 52, 53], TYOP [0, 52, 54], TYOP [0, 13, 24], TYOP [0, 56, 55],
   TYOP [0, 56, 57], TYOP [0, 16, 20], TYOP [0, 59, 58], TYOP [0, 59, 60],
   TYOP [0, 15, 11], TYOP [0, 15, 62], TYOP [0, 63, 61], TYOP [0, 62, 64],
   TYOP [0, 15, 22], TYOP [0, 66, 65], TYOP [0, 62, 67], TYOP [0, 12, 68],
   TYOP [0, 12, 69], TYOP [0, 12, 70], TYOP [0, 12, 71], TYOP [0, 11, 72],
   TYOP [0, 33, 73], TYOP [0, 10, 74], TYOP [0, 10, 75], TYOP [0, 5, 76],
   TYOP [0, 2, 15], TYOP [0, 18, 3], TYOP [0, 66, 10], TYOP [0, 66, 80],
   TYOP [0, 35, 81], TYOP [0, 15, 82], TYOP [0, 3, 4], TYOP [0, 17, 3],
   TYOP [0, 11, 11], TYOP [0, 86, 11], TYOP [0, 12, 87], TYOP [0, 5, 5],
   TYOP [0, 5, 89], TYOP [0, 37, 32], TYOP [0, 3, 91], TYOP [0, 15, 89],
   TYOP [0, 16, 5], TYOP [0, 16, 94], TYOP [0, 13, 5], TYOP [0, 13, 96],
   TYOP [0, 14, 5], TYOP [0, 14, 98], TYOP [0, 6, 4], TYOP [0, 15, 15],
   TYOP [0, 15, 101], TYOP [0, 3, 10], TYOP [0, 103, 10],
   TYOP [0, 10, 104], TYOP [0, 4, 105], TYOP [0, 2, 42], TYOP [0, 4, 5],
   TYOP [0, 15, 93], TYOP [0, 15, 5], TYOP [0, 15, 110]]
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
   TMV("v15", 5), TMV("v16", 15), TMV("v17", 15), TMV("v18", 5),
   TMV("v19", 16), TMV("v2", 5), TMV("v20", 16), TMV("v21", 16),
   TMV("v22", 16), TMV("v23", 13), TMV("v24", 13), TMV("v25", 13),
   TMV("v26", 13), TMV("v27", 14), TMV("v28", 14), TMV("v29", 14),
   TMV("v3", 5), TMV("v30", 14), TMV("v31", 14), TMV("v32", 14),
   TMV("v33", 4), TMV("v34", 5), TMV("v35", 5), TMV("v36", 5),
   TMV("v37", 5), TMV("v38", 5), TMV("v39", 5), TMV("v4", 5),
   TMV("v40", 5), TMV("v41", 5), TMV("v42", 5), TMV("v43", 15),
   TMV("v44", 5), TMV("v45", 15), TMV("v46", 15), TMV("v47", 15),
   TMV("v48", 5), TMV("v49", 15), TMV("v5", 5), TMV("v50", 15),
   TMV("v51", 5), TMV("v52", 16), TMV("v53", 16), TMV("v54", 16),
   TMV("v55", 16), TMV("v56", 13), TMV("v57", 13), TMV("v58", 13),
   TMV("v59", 13), TMV("v6", 5), TMV("v60", 14), TMV("v61", 14),
   TMV("v62", 14), TMV("v63", 14), TMV("v64", 14), TMV("v65", 14),
   TMV("v66", 2), TMV("v67", 15), TMV("v68", 15), TMV("v69", 15),
   TMV("v7", 5), TMV("v70", 15), TMV("v71", 2), TMV("v72", 15),
   TMV("v73", 15), TMV("v74", 15), TMV("v75", 15), TMV("v77", 5),
   TMV("v78", 5), TMV("v79", 5), TMV("v8", 5), TMV("v80", 5),
   TMV("v81", 5), TMV("v82", 5), TMV("v83", 5), TMV("v84", 5),
   TMV("v85", 5), TMV("v86", 15), TMV("v87", 5), TMV("v88", 15),
   TMV("v89", 15), TMV("v9", 5), TMV("v90", 15), TMV("v91", 5),
   TMV("v92", 15), TMV("v93", 15), TMV("v94", 5), TMV("v95", 16),
   TMV("v96", 16), TMV("v97", 16), TMV("v98", 16), TMV("v99", 13),
   TMV("x", 6), TMV("x", 18), TMV("x", 17), TMV("x'", 18), TMV("x'", 17),
   TMC(14, 19), TMC(14, 21), TMC(14, 23), TMC(14, 25), TMC(14, 26),
   TMC(14, 28), TMC(14, 30), TMC(14, 32), TMC(14, 34), TMC(14, 36),
   TMC(14, 38), TMC(14, 40), TMC(15, 42), TMC(16, 42), TMC(16, 43),
   TMC(16, 44), TMC(16, 45), TMC(16, 46), TMC(17, 42), TMC(18, 48),
   TMC(19, 50), TMC(20, 51), TMC(21, 10), TMC(22, 5), TMC(23, 77),
   TMC(24, 41), TMC(25, 6), TMC(26, 4), TMC(27, 78), TMC(28, 2),
   TMC(29, 79), TMC(30, 83), TMC(31, 8), TMC(32, 8), TMC(33, 8),
   TMC(34, 8), TMC(35, 84), TMC(36, 2), TMC(37, 85), TMC(38, 10),
   TMC(39, 5), TMC(40, 47), TMC(41, 88), TMC(42, 90), TMC(43, 11),
   TMC(44, 92), TMC(45, 17), TMC(46, 93), TMC(47, 95), TMC(48, 97),
   TMC(49, 90), TMC(50, 95), TMC(51, 99), TMC(52, 97), TMC(53, 100),
   TMC(54, 7), TMC(55, 90), TMC(56, 99), TMC(57, 99), TMC(58, 102),
   TMC(59, 89), TMC(60, 106), TMC(61, 90), TMC(62, 107), TMC(63, 108),
   TMC(64, 102), TMC(65, 109), TMC(66, 17), TMC(67, 17), TMC(68, 17),
   TMC(69, 93), TMC(70, 111), TMC(71, 9)]
  end
  structure ThmBind = struct
    val DT = Thm.disk_thm
    val read = Term.read_raw tmvector
  end
  fun op authentication_primitive_def x = x
    val op authentication_primitive_def =
    ThmBind.DT(((("projectSecurity",0),[]),[]),
               [ThmBind.read"%168%198@%196%173%1%195$0@|@2%3%2%178$0@%179%176@2%179%176@2%77%179%176@|@%78%179%176@|@%79%80%179%176@||@%81%82%179%176@||@%83%85%179%176@||@%86%87%179%176@||@%88%89%185$1@%119%178$1@%179%176@2%179%176@2%17%215$0@%179%176@2%54%199$0@%151%217$3@%179%193@2%179%176@2|@%152%217$3@%179%176@2%179%193@2|@|@|@%19%179%176@|@%20%21%179%176@||@%22%23%179%176@||@%24%25%179%176@||@%26%27%179%176@||@%28%30%179%176@||@%31%32%179%176@||@%33%34%179%176@||@%35%36%37%179%176@|||@%38%39%179%176@||@%41%42%179%176@||@%43%44%179%176@||@%45%46%179%176@||@%47%48%179%176@||@%49%50%179%176@||@%52%53%179%176@||@|@%120%121%179%176@||@%122%123%179%176@||@||@%90%91%179%176@||@%92%93%179%176@||@%94%96%97%179%176@|||@%98%99%179%176@||@%100%101%179%176@||@%102%103%179%176@||@%104%105%179%176@||@%107%108%179%176@||@%109%110%179%176@||@%111%112%179%176@||@||@2"])
  fun op stateAuth_def x = x
    val op stateAuth_def =
    ThmBind.DT(((("projectSecurity",3),[]),[]),
               [ThmBind.read"%165%4%159%149%169%226$1@$0@2%174%171$1@%187@2%174%170%208$0@2%190%192%223@4%175%201%182%191@2%218%190%192%223@5%180@2%175%218%181@2%180@3%174%171$1@%189@2%174%170%208$0@2%190%192%222@4%175%201%182%191@2%218%190%192%222@5%180@2%175%218%181@2%180@3%174%171$1@%188@2%174%170%208$0@2%190%192%221@4%175%201%182%191@2%218%190%192%221@5%180@2%175%218%181@2%180@3%174%171$1@%186@2%174%170%208$0@2%190%192%200@4%175%201%182%191@2%218%190%192%200@5%180@2%175%218%181@2%180@3%175%218%181@2%180@6|@|@"])
  fun op globalAuth_def x = x
    val op globalAuth_def =
    ThmBind.DT(((("projectSecurity",4),[]),[]),
               [ThmBind.read"%159%149%169%209$0@2%175%194@%180@2|@"])
  fun op authentication_ind x = x
    val op authentication_ind =
    ThmBind.DT(((("projectSecurity",1),
                [("aclfoundation",[55,116]),
                 ("bool",[25,26,46,47,52,53,57,62,71,75,76,77,79]),
                 ("option",[6]),("projectTypes",[65,80]),
                 ("relation",[107,113]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
               [ThmBind.read"%158%0%172%166%164%151$1%224%182%191@2%218%190%192$0@5|@2%166%161%150$1%224%182%183@2%218%190%184$0@5|@2%166$0%194@2%166$0%177@2%166%162%6$1%218$0@2|@2%166%154%7$1%214$0@2|@2%166%154%62%154%73$2%197$1@$0@2|@|@2%166%154%84%154%95$2%216$1@$0@2|@|@2%166%154%106%154%117$2%210$1@$0@2|@|@2%166%154%127%154%138$2%204$1@$0@2|@|@2%166%163%113$1%224%182$0@2%194@2|@2%166%163%113$1%224%182$0@2%177@2|@2%166%163%113$1%224%182$0@2%218%181@3|@2%166%164%55$1%224%182%183@2%218%190%192$0@5|@2%166%161%56$1%224%182%191@2%218%190%184$0@5|@2%166%163%113%154%124$2%224%182$1@2%214$0@3|@|@2%166%163%113%154%125%154%126$3%224%182$2@2%197$1@$0@3|@|@|@2%166%163%113%154%128%154%129$3%224%182$2@2%216$1@$0@3|@|@|@2%166%163%113%154%130%154%131$3%224%182$2@2%210$1@$0@3|@|@|@2%166%163%113%154%132%154%133$3%224%182$2@2%204$1@$0@3|@|@|@2%166%163%113%156%134%154%135$3%224%182$2@2%224$1@$0@3|@|@|@2%166%163%113%156%136%156%137$3%224%182$2@2%225$1@$0@3|@|@|@2%166%163%113%156%139%154%140$3%224%182$2@2%201$1@$0@3|@|@|@2%166%163%113%156%141%156%142%154%143$4%224%182$3@2%220$2@$1@$0@3|@|@|@|@2%166%163%113%155%144%155%145$3%224%182$2@2%202$1@$0@3|@|@|@2%166%163%113%155%146%155%147$3%224%182$2@2%205$1@$0@3|@|@|@2%166%163%113%157%148%157%8$3%224%182$2@2%203$1@$0@3|@|@|@2%166%163%113%157%9%157%10$3%224%182$2@2%207$1@$0@3|@|@|@2%166%163%113%160%11%160%12$3%224%182$2@2%206$1@$0@3|@|@|@2%166%163%113%160%13%160%14$3%224%182$2@2%212$1@$0@3|@|@|@2%166%163%113%160%15%160%16$3%224%182$2@2%211$1@$0@3|@|@|@2%166%156%114%156%115%154%18$3%224%213$2@$1@2$0@2|@|@|@2%166%156%116%156%118%154%18$3%224%219$2@$1@2$0@2|@|@|@2%166%156%29%156%40$2%225$1@$0@2|@|@2%166%156%51%154%57$2%201$1@$0@2|@|@2%166%156%58%156%59%154%60$3%220$2@$1@$0@2|@|@|@2%166%155%61%155%63$2%202$1@$0@2|@|@2%166%155%64%155%65$2%205$1@$0@2|@|@2%166%157%66%157%67$2%203$1@$0@2|@|@2%166%157%68%157%69$2%207$1@$0@2|@|@2%166%160%70%160%71$2%206$1@$0@2|@|@2%166%160%72%160%74$2%212$1@$0@2|@|@2%160%75%160%76$2%211$1@$0@2|@|@44%154%5$1$0@|@2|@"])
  fun op authentication_def x = x
    val op authentication_def =
    ThmBind.DT(((("projectSecurity",2),
                [("aclfoundation",[33,110]),("bool",[15]),("combin",[19]),
                 ("option",[7]),("projectSecurity",[0]),
                 ("projectTypes",[61,74]),
                 ("relation",[113,132])]),["DISK_THM"]),
               [ThmBind.read"%166%167%198%224%182%191@2%218%190%192%153@6%193@2%166%167%198%224%182%183@2%218%190%184%150@6%193@2%166%167%198%194@2%176@2%166%167%198%177@2%176@2%166%167%198%218%6@3%176@2%166%167%198%214%7@3%176@2%166%167%198%197%62@%73@3%176@2%166%167%198%216%84@%95@3%176@2%166%167%198%210%106@%117@3%176@2%166%167%198%204%127@%138@3%176@2%166%167%198%224%182%113@2%194@3%176@2%166%167%198%224%182%113@2%177@3%176@2%166%167%198%224%182%113@2%218%181@4%176@2%166%167%198%224%182%183@2%218%190%192%55@6%176@2%166%167%198%224%182%191@2%218%190%184%56@6%176@2%166%167%198%224%182%113@2%214%124@4%176@2%166%167%198%224%182%113@2%197%125@%126@4%176@2%166%167%198%224%182%113@2%216%128@%129@4%176@2%166%167%198%224%182%113@2%210%130@%131@4%176@2%166%167%198%224%182%113@2%204%132@%133@4%176@2%166%167%198%224%182%113@2%224%134@%135@4%176@2%166%167%198%224%182%113@2%225%136@%137@4%176@2%166%167%198%224%182%113@2%201%139@%140@4%176@2%166%167%198%224%182%113@2%220%141@%142@%143@4%176@2%166%167%198%224%182%113@2%202%144@%145@4%176@2%166%167%198%224%182%113@2%205%146@%147@4%176@2%166%167%198%224%182%113@2%203%148@%8@4%176@2%166%167%198%224%182%113@2%207%9@%10@4%176@2%166%167%198%224%182%113@2%206%11@%12@4%176@2%166%167%198%224%182%113@2%212%13@%14@4%176@2%166%167%198%224%182%113@2%211%15@%16@4%176@2%166%167%198%224%213%114@%115@2%18@3%176@2%166%167%198%224%219%116@%118@2%18@3%176@2%166%167%198%225%29@%40@3%176@2%166%167%198%201%51@%57@3%176@2%166%167%198%220%58@%59@%60@3%176@2%166%167%198%202%61@%63@3%176@2%166%167%198%205%64@%65@3%176@2%166%167%198%203%66@%67@3%176@2%166%167%198%207%68@%69@3%176@2%166%167%198%206%70@%71@3%176@2%166%167%198%212%72@%74@3%176@2%167%198%211%75@%76@3%176@43"])

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
        "OO14.authentication4.%198OO9.stateAuth4.%226OO10.globalAuth4.%209"
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
