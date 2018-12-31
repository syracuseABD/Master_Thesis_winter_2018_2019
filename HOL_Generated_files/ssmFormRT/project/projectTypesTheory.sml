structure projectTypesTheory :> projectTypesTheory =
struct
  val _ = if !Globals.print_thy_loads then TextIO.print "Loading projectTypesTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (* Parents and ML dependencies *)
  local open indexedListsTheory patternMatchesTheory
  in end;
  val _ = Theory.link_parents
          ("projectTypes",
          Arbnum.fromString "1545933129",
          Arbnum.fromString "426677")
          [("indexedLists",
           Arbnum.fromString "1501974078",
           Arbnum.fromString "687272"),
           ("patternMatches",
           Arbnum.fromString "1501974125",
           Arbnum.fromString "747236")];
  val _ = Theory.incorporate_types "projectTypes"
       [("state", 0), ("squadLeaderCom", 0), ("principal", 0),
        ("output", 0), ("omniCom", 0), ("commands", 0)];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("num", "num"), ID("projectTypes", "state"),
   ID("projectTypes", "squadLeaderCom"), ID("projectTypes", "principal"),
   ID("projectTypes", "output"), ID("projectTypes", "omniCom"),
   ID("projectTypes", "commands"), ID("min", "bool"),
   ID("ind_type", "recspace"), ID("pair", "prod"), ID("bool", "!"),
   ID("arithmetic", "+"), ID("pair", ","), ID("bool", "/\\"),
   ID("num", "0"), ID("prim_rec", "<"), ID("min", "="), ID("min", "==>"),
   ID("bool", "?"), ID("bool", "ARB"), ID("arithmetic", "BIT1"),
   ID("arithmetic", "BIT2"), ID("ind_type", "BOTTOM"),
   ID("projectTypes", "COMPLETE"), ID("bool", "COND"),
   ID("ind_type", "CONSTR"), ID("projectTypes", "Complete"),
   ID("bool", "DATATYPE"), ID("arithmetic", "NUMERAL"),
   ID("projectTypes", "NoActionTaken"), ID("projectTypes", "Omni"),
   ID("projectTypes", "OmniCOM"), ID("projectTypes", "RT_ALERT"),
   ID("projectTypes", "RT_FORM"), ID("projectTypes", "RT_ORIENT"),
   ID("projectTypes", "RT_POSITION"), ID("projectTypes", "RtAlert"),
   ID("projectTypes", "RtOrient"), ID("projectTypes", "RtPosition"),
   ID("num", "SUC"), ID("projectTypes", "SquadLeader"),
   ID("projectTypes", "SquadLeaderCOM"), ID("bool", "TYPE_DEFINITION"),
   ID("projectTypes", "UnAuthenticated"),
   ID("projectTypes", "UnAuthorized"), ID("arithmetic", "ZERO"),
   ID("bool", "\\/"), ID("projectTypes", "commands_CASE"),
   ID("projectTypes", "commands_size"), ID("projectTypes", "complete"),
   ID("projectTypes", "none"), ID("projectTypes", "num2omniCom"),
   ID("projectTypes", "num2output"), ID("projectTypes", "num2principal"),
   ID("projectTypes", "num2squadLeaderCom"),
   ID("projectTypes", "num2state"), ID("projectTypes", "omniCom2num"),
   ID("projectTypes", "omniCom_CASE"), ID("projectTypes", "omniCom_size"),
   ID("projectTypes", "omniNA"), ID("projectTypes", "output2num"),
   ID("projectTypes", "output_CASE"), ID("projectTypes", "output_size"),
   ID("projectTypes", "principal2num"),
   ID("projectTypes", "principal_CASE"),
   ID("projectTypes", "principal_size"), ID("projectTypes", "rtAlert"),
   ID("projectTypes", "rtOrient"), ID("projectTypes", "rtPosition"),
   ID("projectTypes", "squadLeaderCom2num"),
   ID("projectTypes", "squadLeaderCom_CASE"),
   ID("projectTypes", "squadLeaderCom_size"),
   ID("projectTypes", "state2num"), ID("projectTypes", "state_CASE"),
   ID("projectTypes", "state_size"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYOP [2], TYOP [0, 1, 0], TYV "'a", TYOP [0, 3, 3],
   TYOP [0, 3, 4], TYOP [0, 3, 5], TYOP [0, 3, 6], TYOP [0, 3, 7],
   TYOP [0, 1, 8], TYOP [3], TYOP [0, 10, 0], TYOP [0, 10, 7], TYOP [4],
   TYOP [0, 13, 0], TYOP [0, 13, 5], TYOP [5], TYOP [0, 16, 0],
   TYOP [0, 3, 8], TYOP [0, 3, 18], TYOP [0, 16, 19], TYOP [6],
   TYOP [0, 21, 0], TYOP [0, 21, 5], TYOP [0, 0, 1], TYOP [0, 0, 10],
   TYOP [0, 0, 13], TYOP [0, 0, 16], TYOP [0, 0, 21], TYOP [7],
   TYOP [0, 29, 0], TYOP [0, 21, 3], TYOP [0, 31, 3], TYOP [0, 10, 3],
   TYOP [0, 33, 32], TYOP [0, 29, 34], TYOP [0, 10, 29], TYOP [0, 21, 29],
   TYOP [8], TYOP [10, 10, 21], TYOP [9, 39], TYOP [0, 40, 38],
   TYOP [0, 29, 38], TYOP [0, 21, 38], TYOP [0, 16, 38], TYOP [0, 13, 38],
   TYOP [0, 10, 38], TYOP [0, 1, 38], TYOP [0, 37, 38], TYOP [0, 36, 48],
   TYOP [0, 16, 3], TYOP [0, 13, 3], TYOP [0, 1, 3], TYOP [0, 29, 3],
   TYOP [0, 21, 43], TYOP [0, 16, 44], TYOP [0, 16, 55], TYOP [0, 16, 56],
   TYOP [0, 16, 57], TYOP [0, 16, 58], TYOP [0, 16, 59], TYOP [0, 13, 45],
   TYOP [0, 29, 40], TYOP [0, 10, 46], TYOP [0, 10, 63], TYOP [0, 10, 64],
   TYOP [0, 1, 47], TYOP [0, 1, 66], TYOP [0, 1, 67], TYOP [0, 1, 68],
   TYOP [0, 3, 38], TYOP [0, 70, 38], TYOP [0, 42, 38], TYOP [0, 72, 38],
   TYOP [0, 31, 38], TYOP [0, 74, 38], TYOP [0, 43, 38], TYOP [0, 76, 38],
   TYOP [0, 44, 38], TYOP [0, 78, 38], TYOP [0, 45, 38], TYOP [0, 80, 38],
   TYOP [0, 41, 38], TYOP [0, 82, 38], TYOP [0, 33, 38], TYOP [0, 84, 38],
   TYOP [0, 46, 38], TYOP [0, 86, 38], TYOP [0, 47, 38], TYOP [0, 88, 38],
   TYOP [0, 0, 38], TYOP [0, 90, 38], TYOP [0, 0, 0], TYOP [0, 0, 92],
   TYOP [0, 21, 39], TYOP [0, 10, 94], TYOP [0, 38, 38], TYOP [0, 38, 96],
   TYOP [0, 0, 90], TYOP [0, 3, 70], TYOP [0, 29, 42], TYOP [0, 40, 41],
   TYOP [0, 53, 38], TYOP [0, 102, 38], TYOP [0, 62, 38],
   TYOP [0, 104, 38], TYOP [0, 22, 38], TYOP [0, 106, 38],
   TYOP [0, 50, 38], TYOP [0, 108, 38], TYOP [0, 17, 38],
   TYOP [0, 110, 38], TYOP [0, 51, 38], TYOP [0, 112, 38],
   TYOP [0, 14, 38], TYOP [0, 114, 38], TYOP [0, 11, 38],
   TYOP [0, 116, 38], TYOP [0, 52, 38], TYOP [0, 118, 38], TYOP [0, 2, 38],
   TYOP [0, 120, 38], TYOP [0, 38, 5], TYOP [0, 0, 40], TYOP [0, 123, 40],
   TYOP [0, 39, 124], TYOP [0, 0, 125], TYOP [0, 90, 106],
   TYOP [0, 90, 110], TYOP [0, 90, 114], TYOP [0, 90, 116],
   TYOP [0, 90, 120], TYOP [0, 41, 104]]
  end
  val _ = Theory.incorporate_consts "projectTypes" tyvector
     [("state_size", 2), ("state_CASE", 9), ("state2num", 2),
      ("squadLeaderCom_size", 11), ("squadLeaderCom_CASE", 12),
      ("squadLeaderCom2num", 11), ("rtPosition", 10), ("rtOrient", 10),
      ("rtAlert", 10), ("principal_size", 14), ("principal_CASE", 15),
      ("principal2num", 14), ("output_size", 17), ("output_CASE", 20),
      ("output2num", 17), ("omniNA", 21), ("omniCom_size", 22),
      ("omniCom_CASE", 23), ("omniCom2num", 22), ("num2state", 24),
      ("num2squadLeaderCom", 25), ("num2principal", 26),
      ("num2output", 27), ("num2omniCom", 28), ("none", 21),
      ("complete", 10), ("commands_size", 30), ("commands_CASE", 35),
      ("UnAuthorized", 16), ("UnAuthenticated", 16),
      ("SquadLeaderCOM", 36), ("SquadLeader", 13), ("RtPosition", 16),
      ("RtOrient", 16), ("RtAlert", 16), ("RT_POSITION", 1),
      ("RT_ORIENT", 1), ("RT_FORM", 1), ("RT_ALERT", 1), ("OmniCOM", 37),
      ("Omni", 13), ("NoActionTaken", 16), ("Complete", 16),
      ("COMPLETE", 1)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("'commands'", 41), TMV("M", 29), TMV("M", 21), TMV("M", 16),
   TMV("M", 13), TMV("M", 10), TMV("M", 1), TMV("M'", 29), TMV("M'", 21),
   TMV("M'", 16), TMV("M'", 13), TMV("M'", 10), TMV("M'", 1), TMV("P", 42),
   TMV("P", 43), TMV("P", 44), TMV("P", 45), TMV("P", 46), TMV("P", 47),
   TMV("a", 21), TMV("a", 16), TMV("a", 13), TMV("a", 10), TMV("a", 1),
   TMV("a'", 21), TMV("a'", 16), TMV("a'", 13), TMV("a'", 10),
   TMV("a'", 1), TMV("a0", 40), TMV("c", 29), TMV("cc", 29),
   TMV("commands", 49), TMV("f", 31), TMV("f", 50), TMV("f", 51),
   TMV("f", 33), TMV("f", 52), TMV("f'", 33), TMV("f0", 33), TMV("f1", 31),
   TMV("f1'", 31), TMV("fn", 53), TMV("m", 0), TMV("n", 0), TMV("o", 21),
   TMV("omniCom", 54), TMV("output", 60), TMV("principal", 61),
   TMV("r", 0), TMV("r'", 0), TMV("rep", 62), TMV("rep", 22),
   TMV("rep", 17), TMV("rep", 14), TMV("rep", 11), TMV("rep", 2),
   TMV("s", 10), TMV("squadLeaderCom", 65), TMV("state", 69), TMV("v0", 3),
   TMV("v0'", 3), TMV("v1", 3), TMV("v1'", 3), TMV("v2", 3), TMV("v2'", 3),
   TMV("v3", 3), TMV("v3'", 3), TMV("v4", 3), TMV("v4'", 3), TMV("v5", 3),
   TMV("v5'", 3), TMV("v6", 3), TMV("v6'", 3), TMV("x", 21), TMV("x", 16),
   TMV("x", 13), TMV("x", 10), TMV("x", 1), TMV("x0", 3), TMV("x1", 3),
   TMV("x2", 3), TMV("x3", 3), TMV("x4", 3), TMV("x5", 3), TMV("x6", 3),
   TMC(11, 71), TMC(11, 72), TMC(11, 73), TMC(11, 75), TMC(11, 77),
   TMC(11, 79), TMC(11, 81), TMC(11, 83), TMC(11, 85), TMC(11, 87),
   TMC(11, 89), TMC(11, 91), TMC(11, 76), TMC(11, 78), TMC(11, 80),
   TMC(11, 82), TMC(11, 86), TMC(11, 88), TMC(12, 93), TMC(13, 95),
   TMC(14, 97), TMC(15, 0), TMC(16, 98), TMC(17, 99), TMC(17, 97),
   TMC(17, 100), TMC(17, 98), TMC(17, 54), TMC(17, 55), TMC(17, 61),
   TMC(17, 101), TMC(17, 63), TMC(17, 66), TMC(18, 97), TMC(19, 103),
   TMC(19, 105), TMC(19, 75), TMC(19, 107), TMC(19, 109), TMC(19, 111),
   TMC(19, 113), TMC(19, 115), TMC(19, 85), TMC(19, 117), TMC(19, 119),
   TMC(19, 121), TMC(19, 91), TMC(19, 76), TMC(19, 78), TMC(19, 80),
   TMC(19, 86), TMC(19, 88), TMC(20, 21), TMC(20, 10), TMC(21, 92),
   TMC(22, 92), TMC(23, 40), TMC(24, 1), TMC(25, 122), TMC(26, 126),
   TMC(27, 16), TMC(28, 96), TMC(29, 92), TMC(30, 16), TMC(31, 13),
   TMC(32, 37), TMC(33, 1), TMC(34, 1), TMC(35, 1), TMC(36, 1),
   TMC(37, 16), TMC(38, 16), TMC(39, 16), TMC(40, 92), TMC(41, 13),
   TMC(42, 36), TMC(43, 127), TMC(43, 128), TMC(43, 129), TMC(43, 130),
   TMC(43, 131), TMC(43, 132), TMC(44, 16), TMC(45, 16), TMC(46, 0),
   TMC(47, 97), TMC(48, 35), TMC(49, 30), TMC(50, 10), TMC(51, 21),
   TMC(52, 28), TMC(53, 27), TMC(54, 26), TMC(55, 25), TMC(56, 24),
   TMC(57, 22), TMC(58, 23), TMC(59, 22), TMC(60, 21), TMC(61, 17),
   TMC(62, 20), TMC(63, 17), TMC(64, 14), TMC(65, 15), TMC(66, 14),
   TMC(67, 10), TMC(68, 10), TMC(69, 10), TMC(70, 11), TMC(71, 12),
   TMC(72, 11), TMC(73, 2), TMC(74, 9), TMC(75, 2), TMC(76, 96)]
  end
  structure ThmBind = struct
    val DT = Thm.disk_thm
    val read = Term.read_raw tmvector
  end
  fun op squadLeaderCom_TY_DEF x = x
    val op squadLeaderCom_TY_DEF =
    ThmBind.DT(((("projectTypes",0),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%129%55%165%44%108$0@%148%141%140%170@4|@$0@|@"])
  fun op squadLeaderCom_BIJ x = x
    val op squadLeaderCom_BIJ =
    ThmBind.DT(((("projectTypes",1),
                [("bool",[116]),("projectTypes",[0])]),["DISK_THM"]),
               [ThmBind.read"%106%102%22%117%179%194$0@3$0@|@2%97%49%110%44%108$0@%148%141%140%170@4|$0@2%112%194%179$0@3$0@2|@2"])




  fun op squadLeaderCom_size_def x = x
    val op squadLeaderCom_size_def =
    ThmBind.DT(((("projectTypes",15),[]),[]),
               [ThmBind.read"%102%77%112%196$0@2%107@|@"])
  fun op squadLeaderCom_CASE x = x
    val op squadLeaderCom_CASE =
    ThmBind.DT(((("projectTypes",16),[]),[]),
               [ThmBind.read"%102%77%86%60%86%62%86%64%86%66%109%195$4@$3@$2@$1@$0@2%43%144%108$0@%148%140%170@4$4@%144%108$0@%148%141%170@4$3@%144%112$0@%148%141%170@4$2@$1@3|%194$4@3|@|@|@|@|@"])
  fun op omniCom_TY_DEF x = x
    val op omniCom_TY_DEF =
    ThmBind.DT(((("projectTypes",24),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%123%52%162%44%108$0@%148%141%170@3|@$0@|@"])
  fun op omniCom_BIJ x = x
    val op omniCom_BIJ =
    ThmBind.DT(((("projectTypes",25),
                [("bool",[116]),("projectTypes",[24])]),["DISK_THM"]),
               [ThmBind.read"%106%98%19%113%176%181$0@3$0@|@2%97%49%110%44%108$0@%148%141%170@3|$0@2%112%181%176$0@3$0@2|@2"])


  fun op omniCom_size_def x = x
    val op omniCom_size_def =
    ThmBind.DT(((("projectTypes",37),[]),[]),
               [ThmBind.read"%98%74%112%183$0@2%107@|@"])
  fun op omniCom_CASE x = x
    val op omniCom_CASE =
    ThmBind.DT(((("projectTypes",38),[]),[]),
               [ThmBind.read"%98%74%86%60%86%62%109%182$2@$1@$0@2%43%144%112$0@%107@2$2@$1@|%181$2@3|@|@|@"])
  fun op principal_TY_DEF x = x
    val op principal_TY_DEF =
    ThmBind.DT(((("projectTypes",46),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%127%54%164%44%108$0@%148%141%170@3|@$0@|@"])
  fun op principal_BIJ x = x
    val op principal_BIJ =
    ThmBind.DT(((("projectTypes",47),
                [("bool",[116]),("projectTypes",[46])]),["DISK_THM"]),
               [ThmBind.read"%106%100%21%115%178%188$0@3$0@|@2%97%49%110%44%108$0@%148%141%170@3|$0@2%112%188%178$0@3$0@2|@2"])


  fun op principal_size_def x = x
    val op principal_size_def =
    ThmBind.DT(((("projectTypes",59),[]),[]),
               [ThmBind.read"%100%76%112%190$0@2%107@|@"])
  fun op principal_CASE x = x
    val op principal_CASE =
    ThmBind.DT(((("projectTypes",60),[]),[]),
               [ThmBind.read"%100%76%86%60%86%62%109%189$2@$1@$0@2%43%144%112$0@%107@2$2@$1@|%188$2@3|@|@|@"])
  fun op commands_TY_DEF x = x
    val op commands_TY_DEF =
    ThmBind.DT(((("projectTypes",68),[("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%121%51%167%29%93%0%119%101%29%119%171%136%22%116$1@%22%145%107@%105$0@%138@2%44%142|@|$0@2|@2%133%19%116$1@%19%145%159%107@2%105%139@$0@2%44%142|@|$0@2|@3$1$0@2|@2$0$1@2|@|@$0@|@"])
  fun op commands_case_def x = x
    val op commands_case_def =
    ThmBind.DT(((("projectTypes",74),
                [("bool",[26,180]),("ind_type",[33,34]),("pair",[8,9]),
                 ("projectTypes",[69,70,71,72,73])]),["DISK_THM"]),
               [ThmBind.read"%106%102%22%94%36%89%40%109%172%161$2@2$1@$0@2$1$2@2|@|@|@2%98%19%94%36%89%40%109%172%151$2@2$1@$0@2$0$2@2|@|@|@2"])
  fun op commands_size_def x = x
    val op commands_size_def =
    ThmBind.DT(((("projectTypes",75),
                [("bool",[26,180]),("ind_type",[33,34]),("pair",[8,9]),
                 ("projectTypes",[69,70,71,72,73])]),["DISK_THM"]),
               [ThmBind.read"%106%102%22%112%173%161$0@3%104%148%140%170@3%196$0@3|@2%98%19%112%173%151$0@3%104%148%140%170@3%183$0@3|@2"])
  fun op state_TY_DEF x = x
    val op state_TY_DEF =
    ThmBind.DT(((("projectTypes",83),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%131%56%166%44%108$0@%148%140%141%170@4|@$0@|@"])
  fun op state_BIJ x = x
    val op state_BIJ =
    ThmBind.DT(((("projectTypes",84),
                [("bool",[116]),("projectTypes",[83])]),["DISK_THM"]),
               [ThmBind.read"%106%103%23%118%180%197$0@3$0@|@2%97%49%110%44%108$0@%148%140%141%170@4|$0@2%112%197%180$0@3$0@2|@2"])





  fun op state_size_def x = x
    val op state_size_def =
    ThmBind.DT(((("projectTypes",99),[]),[]),
               [ThmBind.read"%103%78%112%199$0@2%107@|@"])
  fun op state_CASE x = x
    val op state_CASE =
    ThmBind.DT(((("projectTypes",100),[]),[]),
               [ThmBind.read"%103%78%86%60%86%62%86%64%86%66%86%68%109%198$5@$4@$3@$2@$1@$0@2%43%144%108$0@%148%141%170@4%144%112$0@%107@2$5@$4@2%144%108$0@%148%140%140%170@5$3@%144%112$0@%148%140%140%170@5$2@$1@3|%197$5@3|@|@|@|@|@|@"])
  fun op output_TY_DEF x = x
    val op output_TY_DEF =
    ThmBind.DT(((("projectTypes",108),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%125%53%163%44%108$0@%148%140%140%140%170@5|@$0@|@"])
  fun op output_BIJ x = x
    val op output_BIJ =
    ThmBind.DT(((("projectTypes",109),
                [("bool",[116]),("projectTypes",[108])]),["DISK_THM"]),
               [ThmBind.read"%106%99%20%114%177%185$0@3$0@|@2%97%49%110%44%108$0@%148%140%140%140%170@5|$0@2%112%185%177$0@3$0@2|@2"])







  fun op output_size_def x = x
    val op output_size_def =
    ThmBind.DT(((("projectTypes",126),[]),[]),
               [ThmBind.read"%99%75%112%187$0@2%107@|@"])
  fun op output_CASE x = x
    val op output_CASE =
    ThmBind.DT(((("projectTypes",127),[]),[]),
               [ThmBind.read"%99%75%86%60%86%62%86%64%86%66%86%68%86%70%86%72%109%186$7@$6@$5@$4@$3@$2@$1@$0@2%43%144%108$0@%148%140%140%170@5%144%108$0@%148%140%170@4$7@%144%112$0@%148%140%170@4$6@$5@3%144%108$0@%148%141%140%170@5$4@%144%108$0@%148%140%141%170@5$3@%144%112$0@%148%140%141%170@5$2@$1@4|%185$7@3|@|@|@|@|@|@|@|@"])
  fun op num2squadLeaderCom_squadLeaderCom2num x = x
    val op num2squadLeaderCom_squadLeaderCom2num =
    ThmBind.DT(((("projectTypes",2),[("projectTypes",[1])]),["DISK_THM"]),
               [ThmBind.read"%102%22%117%179%194$0@3$0@|@"])
  fun op squadLeaderCom2num_num2squadLeaderCom x = x
    val op squadLeaderCom2num_num2squadLeaderCom =
    ThmBind.DT(((("projectTypes",3),[("projectTypes",[1])]),["DISK_THM"]),
               [ThmBind.read"%97%49%110%108$0@%148%141%140%170@5%112%194%179$0@3$0@2|@"])
  fun op num2squadLeaderCom_11 x = x
    val op num2squadLeaderCom_11 =
    ThmBind.DT(((("projectTypes",4),
                [("bool",[26]),("projectTypes",[1])]),["DISK_THM"]),
               [ThmBind.read"%97%49%97%50%119%108$1@%148%141%140%170@5%119%108$0@%148%141%140%170@5%110%117%179$1@2%179$0@3%112$1@$0@4|@|@"])
  fun op squadLeaderCom2num_11 x = x
    val op squadLeaderCom2num_11 =
    ThmBind.DT(((("projectTypes",5),
                [("bool",[26]),("projectTypes",[1])]),["DISK_THM"]),
               [ThmBind.read"%102%22%102%27%110%112%194$1@2%194$0@3%117$1@$0@2|@|@"])
  fun op num2squadLeaderCom_ONTO x = x
    val op num2squadLeaderCom_ONTO =
    ThmBind.DT(((("projectTypes",6),
                [("bool",[25,62]),("projectTypes",[1])]),["DISK_THM"]),
               [ThmBind.read"%102%22%132%49%106%117$1@%179$0@3%108$0@%148%141%140%170@5|@|@"])
  fun op squadLeaderCom2num_ONTO x = x
    val op squadLeaderCom2num_ONTO =
    ThmBind.DT(((("projectTypes",7),
                [("bool",[26]),("projectTypes",[1])]),["DISK_THM"]),
               [ThmBind.read"%97%49%110%108$0@%148%141%140%170@5%136%22%112$1@%194$0@2|@2|@"])
  fun op num2squadLeaderCom_thm x = x
    val op num2squadLeaderCom_thm =
    ThmBind.DT(((("projectTypes",12),[("projectTypes",[8,9,10,11])]),[]),
               [ThmBind.read"%106%117%179%107@2%193@2%106%117%179%148%140%170@4%192@2%106%117%179%148%141%170@4%191@2%117%179%148%140%140%170@5%174@4"])
  fun op squadLeaderCom2num_thm x = x
    val op squadLeaderCom2num_thm =
    ThmBind.DT(((("projectTypes",13),
                [("bool",[25,53]),("numeral",[3,7]),
                 ("projectTypes",[3,8,9,10,11])]),["DISK_THM"]),
               [ThmBind.read"%106%112%194%193@2%107@2%106%112%194%192@2%148%140%170@4%106%112%194%191@2%148%141%170@4%112%194%174@2%148%140%140%170@7"])
  fun op squadLeaderCom_EQ_squadLeaderCom x = x
    val op squadLeaderCom_EQ_squadLeaderCom =
    ThmBind.DT(((("projectTypes",14),
                [("bool",[57]),("projectTypes",[5])]),["DISK_THM"]),
               [ThmBind.read"%102%22%102%27%110%117$1@$0@2%112%194$1@2%194$0@3|@|@"])
  fun op squadLeaderCom_case_def x = x
    val op squadLeaderCom_case_def =
    ThmBind.DT(((("projectTypes",17),
                [("bool",[53,55,63]),("numeral",[3,6,7]),
                 ("projectTypes",[13,16])]),["DISK_THM"]),
               [ThmBind.read"%106%86%60%86%62%86%64%86%66%109%195%193@$3@$2@$1@$0@2$3@|@|@|@|@2%106%86%60%86%62%86%64%86%66%109%195%192@$3@$2@$1@$0@2$2@|@|@|@|@2%106%86%60%86%62%86%64%86%66%109%195%191@$3@$2@$1@$0@2$1@|@|@|@|@2%86%60%86%62%86%64%86%66%109%195%174@$3@$2@$1@$0@2$0@|@|@|@|@4"])
  fun op datatype_squadLeaderCom x = x
    val op datatype_squadLeaderCom =
    ThmBind.DT(((("projectTypes",18),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%147%58%193@%192@%191@%174@2"])
  fun op squadLeaderCom_distinct x = x
    val op squadLeaderCom_distinct =
    ThmBind.DT(((("projectTypes",19),
                [("numeral",[3,6]),
                 ("projectTypes",[13,14])]),["DISK_THM"]),
               [ThmBind.read"%106%200%117%193@%192@3%106%200%117%193@%191@3%106%200%117%193@%174@3%106%200%117%192@%191@3%106%200%117%192@%174@3%200%117%191@%174@7"])
  fun op squadLeaderCom_case_cong x = x
    val op squadLeaderCom_case_cong =
    ThmBind.DT(((("projectTypes",20),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("projectTypes",[6,8,9,10,11,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%102%5%102%11%86%60%86%62%86%64%86%66%119%106%117$5@$4@2%106%119%117$4@%193@2%109$3@%61@3%106%119%117$4@%192@2%109$2@%63@3%106%119%117$4@%191@2%109$1@%65@3%119%117$4@%174@2%109$0@%67@7%109%195$5@$3@$2@$1@$0@2%195$4@%61@%63@%65@%67@3|@|@|@|@|@|@"])
  fun op squadLeaderCom_nchotomy x = x
    val op squadLeaderCom_nchotomy =
    ThmBind.DT(((("projectTypes",21),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("projectTypes",[6,8,9,10,11]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%102%22%171%117$0@%193@2%171%117$0@%192@2%171%117$0@%191@2%117$0@%174@4|@"])
  fun op squadLeaderCom_Axiom x = x
    val op squadLeaderCom_Axiom =
    ThmBind.DT(((("projectTypes",22),
                [("bool",[8,14,25,53,55,63]),("numeral",[3,8]),
                 ("projectTypes",[13])]),["DISK_THM"]),
               [ThmBind.read"%86%79%86%80%86%81%86%82%128%36%106%109$0%193@2$4@2%106%109$0%192@2$3@2%106%109$0%191@2$2@2%109$0%174@2$1@4|@|@|@|@|@"])
  fun op squadLeaderCom_induction x = x
    val op squadLeaderCom_induction =
    ThmBind.DT(((("projectTypes",23),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("projectTypes",[6,8,9,10,11]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%95%17%119%106$0%174@2%106$0%191@2%106$0%192@2$0%193@5%102%22$1$0@|@2|@"])
  fun op num2omniCom_omniCom2num x = x
    val op num2omniCom_omniCom2num =
    ThmBind.DT(((("projectTypes",26),
                [("projectTypes",[25])]),["DISK_THM"]),
               [ThmBind.read"%98%19%113%176%181$0@3$0@|@"])
  fun op omniCom2num_num2omniCom x = x
    val op omniCom2num_num2omniCom =
    ThmBind.DT(((("projectTypes",27),
                [("projectTypes",[25])]),["DISK_THM"]),
               [ThmBind.read"%97%49%110%108$0@%148%141%170@4%112%181%176$0@3$0@2|@"])
  fun op num2omniCom_11 x = x
    val op num2omniCom_11 =
    ThmBind.DT(((("projectTypes",28),
                [("bool",[26]),("projectTypes",[25])]),["DISK_THM"]),
               [ThmBind.read"%97%49%97%50%119%108$1@%148%141%170@4%119%108$0@%148%141%170@4%110%113%176$1@2%176$0@3%112$1@$0@4|@|@"])
  fun op omniCom2num_11 x = x
    val op omniCom2num_11 =
    ThmBind.DT(((("projectTypes",29),
                [("bool",[26]),("projectTypes",[25])]),["DISK_THM"]),
               [ThmBind.read"%98%19%98%24%110%112%181$1@2%181$0@3%113$1@$0@2|@|@"])
  fun op num2omniCom_ONTO x = x
    val op num2omniCom_ONTO =
    ThmBind.DT(((("projectTypes",30),
                [("bool",[25,62]),("projectTypes",[25])]),["DISK_THM"]),
               [ThmBind.read"%98%19%132%49%106%113$1@%176$0@3%108$0@%148%141%170@4|@|@"])
  fun op omniCom2num_ONTO x = x
    val op omniCom2num_ONTO =
    ThmBind.DT(((("projectTypes",31),
                [("bool",[26]),("projectTypes",[25])]),["DISK_THM"]),
               [ThmBind.read"%97%49%110%108$0@%148%141%170@4%133%19%112$1@%181$0@2|@2|@"])
  fun op num2omniCom_thm x = x
    val op num2omniCom_thm =
    ThmBind.DT(((("projectTypes",34),[("projectTypes",[32,33])]),[]),
               [ThmBind.read"%106%113%176%107@2%175@2%113%176%148%140%170@4%184@2"])
  fun op omniCom2num_thm x = x
    val op omniCom2num_thm =
    ThmBind.DT(((("projectTypes",35),
                [("bool",[25,53]),("numeral",[3,7]),
                 ("projectTypes",[27,32,33])]),["DISK_THM"]),
               [ThmBind.read"%106%112%181%175@2%107@2%112%181%184@2%148%140%170@4"])
  fun op omniCom_EQ_omniCom x = x
    val op omniCom_EQ_omniCom =
    ThmBind.DT(((("projectTypes",36),
                [("bool",[57]),("projectTypes",[29])]),["DISK_THM"]),
               [ThmBind.read"%98%19%98%24%110%113$1@$0@2%112%181$1@2%181$0@3|@|@"])
  fun op omniCom_case_def x = x
    val op omniCom_case_def =
    ThmBind.DT(((("projectTypes",39),
                [("bool",[55,63]),("numeral",[3,6]),
                 ("projectTypes",[35,38])]),["DISK_THM"]),
               [ThmBind.read"%106%86%60%86%62%109%182%175@$1@$0@2$1@|@|@2%86%60%86%62%109%182%184@$1@$0@2$0@|@|@2"])
  fun op datatype_omniCom x = x
    val op datatype_omniCom =
    ThmBind.DT(((("projectTypes",40),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%147%46%175@%184@2"])
  fun op omniCom_distinct x = x
    val op omniCom_distinct =
    ThmBind.DT(((("projectTypes",41),
                [("numeral",[3,6]),
                 ("projectTypes",[35,36])]),["DISK_THM"]),
               [ThmBind.read"%200%113%175@%184@2"])
  fun op omniCom_case_cong x = x
    val op omniCom_case_cong =
    ThmBind.DT(((("projectTypes",42),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16]),
                 ("projectTypes",[30,32,33,39]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%98%2%98%8%86%60%86%62%119%106%113$3@$2@2%106%119%113$2@%175@2%109$1@%61@3%119%113$2@%184@2%109$0@%63@5%109%182$3@$1@$0@2%182$2@%61@%63@3|@|@|@|@"])
  fun op omniCom_nchotomy x = x
    val op omniCom_nchotomy =
    ThmBind.DT(((("projectTypes",43),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16]),
                 ("projectTypes",[30,32,33]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%98%19%171%113$0@%175@2%113$0@%184@2|@"])
  fun op omniCom_Axiom x = x
    val op omniCom_Axiom =
    ThmBind.DT(((("projectTypes",44),
                [("bool",[8,14,25,55,63]),("numeral",[3,8]),
                 ("projectTypes",[35])]),["DISK_THM"]),
               [ThmBind.read"%86%79%86%80%122%33%106%109$0%175@2$2@2%109$0%184@2$1@2|@|@|@"])
  fun op omniCom_induction x = x
    val op omniCom_induction =
    ThmBind.DT(((("projectTypes",45),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16]),
                 ("projectTypes",[30,32,33]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%90%14%119%106$0%175@2$0%184@3%98%19$1$0@|@2|@"])
  fun op num2principal_principal2num x = x
    val op num2principal_principal2num =
    ThmBind.DT(((("projectTypes",48),
                [("projectTypes",[47])]),["DISK_THM"]),
               [ThmBind.read"%100%21%115%178%188$0@3$0@|@"])
  fun op principal2num_num2principal x = x
    val op principal2num_num2principal =
    ThmBind.DT(((("projectTypes",49),
                [("projectTypes",[47])]),["DISK_THM"]),
               [ThmBind.read"%97%49%110%108$0@%148%141%170@4%112%188%178$0@3$0@2|@"])
  fun op num2principal_11 x = x
    val op num2principal_11 =
    ThmBind.DT(((("projectTypes",50),
                [("bool",[26]),("projectTypes",[47])]),["DISK_THM"]),
               [ThmBind.read"%97%49%97%50%119%108$1@%148%141%170@4%119%108$0@%148%141%170@4%110%115%178$1@2%178$0@3%112$1@$0@4|@|@"])
  fun op principal2num_11 x = x
    val op principal2num_11 =
    ThmBind.DT(((("projectTypes",51),
                [("bool",[26]),("projectTypes",[47])]),["DISK_THM"]),
               [ThmBind.read"%100%21%100%26%110%112%188$1@2%188$0@3%115$1@$0@2|@|@"])
  fun op num2principal_ONTO x = x
    val op num2principal_ONTO =
    ThmBind.DT(((("projectTypes",52),
                [("bool",[25,62]),("projectTypes",[47])]),["DISK_THM"]),
               [ThmBind.read"%100%21%132%49%106%115$1@%178$0@3%108$0@%148%141%170@4|@|@"])
  fun op principal2num_ONTO x = x
    val op principal2num_ONTO =
    ThmBind.DT(((("projectTypes",53),
                [("bool",[26]),("projectTypes",[47])]),["DISK_THM"]),
               [ThmBind.read"%97%49%110%108$0@%148%141%170@4%135%21%112$1@%188$0@2|@2|@"])
  fun op num2principal_thm x = x
    val op num2principal_thm =
    ThmBind.DT(((("projectTypes",56),[("projectTypes",[54,55])]),[]),
               [ThmBind.read"%106%115%178%107@2%160@2%115%178%148%140%170@4%150@2"])
  fun op principal2num_thm x = x
    val op principal2num_thm =
    ThmBind.DT(((("projectTypes",57),
                [("bool",[25,53]),("numeral",[3,7]),
                 ("projectTypes",[49,54,55])]),["DISK_THM"]),
               [ThmBind.read"%106%112%188%160@2%107@2%112%188%150@2%148%140%170@4"])
  fun op principal_EQ_principal x = x
    val op principal_EQ_principal =
    ThmBind.DT(((("projectTypes",58),
                [("bool",[57]),("projectTypes",[51])]),["DISK_THM"]),
               [ThmBind.read"%100%21%100%26%110%115$1@$0@2%112%188$1@2%188$0@3|@|@"])
  fun op principal_case_def x = x
    val op principal_case_def =
    ThmBind.DT(((("projectTypes",61),
                [("bool",[55,63]),("numeral",[3,6]),
                 ("projectTypes",[57,60])]),["DISK_THM"]),
               [ThmBind.read"%106%86%60%86%62%109%189%160@$1@$0@2$1@|@|@2%86%60%86%62%109%189%150@$1@$0@2$0@|@|@2"])
  fun op datatype_principal x = x
    val op datatype_principal =
    ThmBind.DT(((("projectTypes",62),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%147%48%160@%150@2"])
  fun op principal_distinct x = x
    val op principal_distinct =
    ThmBind.DT(((("projectTypes",63),
                [("numeral",[3,6]),
                 ("projectTypes",[57,58])]),["DISK_THM"]),
               [ThmBind.read"%200%115%160@%150@2"])
  fun op principal_case_cong x = x
    val op principal_case_cong =
    ThmBind.DT(((("projectTypes",64),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16]),
                 ("projectTypes",[52,54,55,61]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%100%4%100%10%86%60%86%62%119%106%115$3@$2@2%106%119%115$2@%160@2%109$1@%61@3%119%115$2@%150@2%109$0@%63@5%109%189$3@$1@$0@2%189$2@%61@%63@3|@|@|@|@"])
  fun op principal_nchotomy x = x
    val op principal_nchotomy =
    ThmBind.DT(((("projectTypes",65),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16]),
                 ("projectTypes",[52,54,55]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%100%21%171%115$0@%160@2%115$0@%150@2|@"])
  fun op principal_Axiom x = x
    val op principal_Axiom =
    ThmBind.DT(((("projectTypes",66),
                [("bool",[8,14,25,55,63]),("numeral",[3,8]),
                 ("projectTypes",[57])]),["DISK_THM"]),
               [ThmBind.read"%86%79%86%80%126%35%106%109$0%160@2$2@2%109$0%150@2$1@2|@|@|@"])
  fun op principal_induction x = x
    val op principal_induction =
    ThmBind.DT(((("projectTypes",67),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16]),
                 ("projectTypes",[52,54,55]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%92%16%119%106$0%150@2$0%160@3%100%21$1$0@|@2|@"])
  fun op datatype_commands x = x
    val op datatype_commands =
    ThmBind.DT(((("projectTypes",76),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%147%32%161@%151@2"])
  fun op commands_11 x = x
    val op commands_11 =
    ThmBind.DT(((("projectTypes",77),
                [("bool",[26,55,62,180]),("ind_type",[33,34]),
                 ("pair",[8,9]),
                 ("projectTypes",[69,70,71,72,73])]),["DISK_THM"]),
               [ThmBind.read"%106%102%22%102%27%110%111%161$1@2%161$0@3%117$1@$0@2|@|@2%98%19%98%24%110%111%151$1@2%151$0@3%113$1@$0@2|@|@2"])
  fun op commands_distinct x = x
    val op commands_distinct =
    ThmBind.DT(((("projectTypes",78),
                [("bool",[25,26,46,53,62,180]),("ind_type",[33,34]),
                 ("pair",[8,9]),
                 ("projectTypes",[69,70,71,72,73])]),["DISK_THM"]),
               [ThmBind.read"%98%24%102%22%200%111%161$0@2%151$1@3|@|@"])
  fun op commands_case_cong x = x
    val op commands_case_cong =
    ThmBind.DT(((("projectTypes",79),
                [("bool",[26,180]),
                 ("projectTypes",[69,70,71,72,73,74])]),["DISK_THM"]),
               [ThmBind.read"%87%1%87%7%94%36%89%40%119%106%111$3@$2@2%106%102%22%119%111$3@%161$0@3%109$2$0@2%38$0@3|@2%98%19%119%111$3@%151$0@3%109$1$0@2%41$0@3|@4%109%172$3@$1@$0@2%172$2@%38@%41@3|@|@|@|@"])
  fun op commands_nchotomy x = x
    val op commands_nchotomy =
    ThmBind.DT(((("projectTypes",80),
                [("bool",[26,180]),
                 ("projectTypes",[69,70,71,72,73])]),["DISK_THM"]),
               [ThmBind.read"%87%31%171%136%57%111$1@%161$0@2|@2%133%45%111$1@%151$0@2|@2|@"])
  fun op commands_Axiom x = x
    val op commands_Axiom =
    ThmBind.DT(((("projectTypes",81),
                [("bool",[26,180]),("ind_type",[33,34]),("pair",[8,9]),
                 ("projectTypes",[69,70,71,72,73])]),["DISK_THM"]),
               [ThmBind.read"%94%39%89%40%120%42%106%102%22%109$1%161$0@3$3$0@2|@2%98%19%109$1%151$0@3$2$0@2|@2|@|@|@"])
  fun op commands_induction x = x
    val op commands_induction =
    ThmBind.DT(((("projectTypes",82),
                [("bool",[26]),
                 ("projectTypes",[69,70,71,72,73])]),["DISK_THM"]),
               [ThmBind.read"%88%13%119%106%102%57$1%161$0@2|@2%98%45$1%151$0@2|@3%87%30$1$0@|@2|@"])
  fun op num2state_state2num x = x
    val op num2state_state2num =
    ThmBind.DT(((("projectTypes",85),
                [("projectTypes",[84])]),["DISK_THM"]),
               [ThmBind.read"%103%23%118%180%197$0@3$0@|@"])
  fun op state2num_num2state x = x
    val op state2num_num2state =
    ThmBind.DT(((("projectTypes",86),
                [("projectTypes",[84])]),["DISK_THM"]),
               [ThmBind.read"%97%49%110%108$0@%148%140%141%170@5%112%197%180$0@3$0@2|@"])
  fun op num2state_11 x = x
    val op num2state_11 =
    ThmBind.DT(((("projectTypes",87),
                [("bool",[26]),("projectTypes",[84])]),["DISK_THM"]),
               [ThmBind.read"%97%49%97%50%119%108$1@%148%140%141%170@5%119%108$0@%148%140%141%170@5%110%118%180$1@2%180$0@3%112$1@$0@4|@|@"])
  fun op state2num_11 x = x
    val op state2num_11 =
    ThmBind.DT(((("projectTypes",88),
                [("bool",[26]),("projectTypes",[84])]),["DISK_THM"]),
               [ThmBind.read"%103%23%103%28%110%112%197$1@2%197$0@3%118$1@$0@2|@|@"])
  fun op num2state_ONTO x = x
    val op num2state_ONTO =
    ThmBind.DT(((("projectTypes",89),
                [("bool",[25,62]),("projectTypes",[84])]),["DISK_THM"]),
               [ThmBind.read"%103%23%132%49%106%118$1@%180$0@3%108$0@%148%140%141%170@5|@|@"])
  fun op state2num_ONTO x = x
    val op state2num_ONTO =
    ThmBind.DT(((("projectTypes",90),
                [("bool",[26]),("projectTypes",[84])]),["DISK_THM"]),
               [ThmBind.read"%97%49%110%108$0@%148%140%141%170@5%137%23%112$1@%197$0@2|@2|@"])
  fun op num2state_thm x = x
    val op num2state_thm =
    ThmBind.DT(((("projectTypes",96),
                [("projectTypes",[91,92,93,94,95])]),[]),
               [ThmBind.read"%106%118%180%107@2%153@2%106%118%180%148%140%170@4%155@2%106%118%180%148%141%170@4%154@2%106%118%180%148%140%140%170@5%152@2%118%180%148%141%140%170@5%143@5"])
  fun op state2num_thm x = x
    val op state2num_thm =
    ThmBind.DT(((("projectTypes",97),
                [("bool",[25,53]),("numeral",[3,7]),
                 ("projectTypes",[86,91,92,93,94,95])]),["DISK_THM"]),
               [ThmBind.read"%106%112%197%153@2%107@2%106%112%197%155@2%148%140%170@4%106%112%197%154@2%148%141%170@4%106%112%197%152@2%148%140%140%170@5%112%197%143@2%148%141%140%170@8"])
  fun op state_EQ_state x = x
    val op state_EQ_state =
    ThmBind.DT(((("projectTypes",98),
                [("bool",[57]),("projectTypes",[88])]),["DISK_THM"]),
               [ThmBind.read"%103%23%103%28%110%118$1@$0@2%112%197$1@2%197$0@3|@|@"])
  fun op state_case_def x = x
    val op state_case_def =
    ThmBind.DT(((("projectTypes",101),
                [("bool",[53,55,63]),("numeral",[3,6,7]),
                 ("projectTypes",[97,100])]),["DISK_THM"]),
               [ThmBind.read"%106%86%60%86%62%86%64%86%66%86%68%109%198%153@$4@$3@$2@$1@$0@2$4@|@|@|@|@|@2%106%86%60%86%62%86%64%86%66%86%68%109%198%155@$4@$3@$2@$1@$0@2$3@|@|@|@|@|@2%106%86%60%86%62%86%64%86%66%86%68%109%198%154@$4@$3@$2@$1@$0@2$2@|@|@|@|@|@2%106%86%60%86%62%86%64%86%66%86%68%109%198%152@$4@$3@$2@$1@$0@2$1@|@|@|@|@|@2%86%60%86%62%86%64%86%66%86%68%109%198%143@$4@$3@$2@$1@$0@2$0@|@|@|@|@|@5"])
  fun op datatype_state x = x
    val op datatype_state =
    ThmBind.DT(((("projectTypes",102),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%147%59%153@%155@%154@%152@%143@2"])
  fun op state_distinct x = x
    val op state_distinct =
    ThmBind.DT(((("projectTypes",103),
                [("numeral",[3,6]),
                 ("projectTypes",[97,98])]),["DISK_THM"]),
               [ThmBind.read"%106%200%118%153@%155@3%106%200%118%153@%154@3%106%200%118%153@%152@3%106%200%118%153@%143@3%106%200%118%155@%154@3%106%200%118%155@%152@3%106%200%118%155@%143@3%106%200%118%154@%152@3%106%200%118%154@%143@3%200%118%152@%143@11"])
  fun op state_case_cong x = x
    val op state_case_cong =
    ThmBind.DT(((("projectTypes",104),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("projectTypes",[89,91,92,93,94,95,101]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%103%6%103%12%86%60%86%62%86%64%86%66%86%68%119%106%118$6@$5@2%106%119%118$5@%153@2%109$4@%61@3%106%119%118$5@%155@2%109$3@%63@3%106%119%118$5@%154@2%109$2@%65@3%106%119%118$5@%152@2%109$1@%67@3%119%118$5@%143@2%109$0@%69@8%109%198$6@$4@$3@$2@$1@$0@2%198$5@%61@%63@%65@%67@%69@3|@|@|@|@|@|@|@"])
  fun op state_nchotomy x = x
    val op state_nchotomy =
    ThmBind.DT(((("projectTypes",105),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("projectTypes",[89,91,92,93,94,95]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%103%23%171%118$0@%153@2%171%118$0@%155@2%171%118$0@%154@2%171%118$0@%152@2%118$0@%143@5|@"])
  fun op state_Axiom x = x
    val op state_Axiom =
    ThmBind.DT(((("projectTypes",106),
                [("bool",[8,14,25,53,55,63]),("numeral",[3,8]),
                 ("projectTypes",[97])]),["DISK_THM"]),
               [ThmBind.read"%86%79%86%80%86%81%86%82%86%83%130%37%106%109$0%153@2$5@2%106%109$0%155@2$4@2%106%109$0%154@2$3@2%106%109$0%152@2$2@2%109$0%143@2$1@5|@|@|@|@|@|@"])
  fun op state_induction x = x
    val op state_induction =
    ThmBind.DT(((("projectTypes",107),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("projectTypes",[89,91,92,93,94,95]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%96%18%119%106$0%143@2%106$0%152@2%106$0%153@2%106$0%154@2$0%155@6%103%23$1$0@|@2|@"])
  fun op num2output_output2num x = x
    val op num2output_output2num =
    ThmBind.DT(((("projectTypes",110),
                [("projectTypes",[109])]),["DISK_THM"]),
               [ThmBind.read"%99%20%114%177%185$0@3$0@|@"])
  fun op output2num_num2output x = x
    val op output2num_num2output =
    ThmBind.DT(((("projectTypes",111),
                [("projectTypes",[109])]),["DISK_THM"]),
               [ThmBind.read"%97%49%110%108$0@%148%140%140%140%170@6%112%185%177$0@3$0@2|@"])
  fun op num2output_11 x = x
    val op num2output_11 =
    ThmBind.DT(((("projectTypes",112),
                [("bool",[26]),("projectTypes",[109])]),["DISK_THM"]),
               [ThmBind.read"%97%49%97%50%119%108$1@%148%140%140%140%170@6%119%108$0@%148%140%140%140%170@6%110%114%177$1@2%177$0@3%112$1@$0@4|@|@"])
  fun op output2num_11 x = x
    val op output2num_11 =
    ThmBind.DT(((("projectTypes",113),
                [("bool",[26]),("projectTypes",[109])]),["DISK_THM"]),
               [ThmBind.read"%99%20%99%25%110%112%185$1@2%185$0@3%114$1@$0@2|@|@"])
  fun op num2output_ONTO x = x
    val op num2output_ONTO =
    ThmBind.DT(((("projectTypes",114),
                [("bool",[25,62]),("projectTypes",[109])]),["DISK_THM"]),
               [ThmBind.read"%99%20%132%49%106%114$1@%177$0@3%108$0@%148%140%140%140%170@6|@|@"])
  fun op output2num_ONTO x = x
    val op output2num_ONTO =
    ThmBind.DT(((("projectTypes",115),
                [("bool",[26]),("projectTypes",[109])]),["DISK_THM"]),
               [ThmBind.read"%97%49%110%108$0@%148%140%140%140%170@6%134%20%112$1@%185$0@2|@2|@"])
  fun op num2output_thm x = x
    val op num2output_thm =
    ThmBind.DT(((("projectTypes",123),
                [("projectTypes",[116,117,118,119,120,121,122])]),[]),
               [ThmBind.read"%106%114%177%107@2%158@2%106%114%177%148%140%170@4%157@2%106%114%177%148%141%170@4%156@2%106%114%177%148%140%140%170@5%146@2%106%114%177%148%141%140%170@5%149@2%106%114%177%148%140%141%170@5%168@2%114%177%148%141%141%170@5%169@7"])
  fun op output2num_thm x = x
    val op output2num_thm =
    ThmBind.DT(((("projectTypes",124),
                [("bool",[25]),("numeral",[3,7]),
                 ("projectTypes",
                 [111,116,117,118,119,120,121,122])]),["DISK_THM"]),
               [ThmBind.read"%106%112%185%158@2%107@2%106%112%185%157@2%148%140%170@4%106%112%185%156@2%148%141%170@4%106%112%185%146@2%148%140%140%170@5%106%112%185%149@2%148%141%140%170@5%106%112%185%168@2%148%140%141%170@5%112%185%169@2%148%141%141%170@10"])
  fun op output_EQ_output x = x
    val op output_EQ_output =
    ThmBind.DT(((("projectTypes",125),
                [("bool",[57]),("projectTypes",[113])]),["DISK_THM"]),
               [ThmBind.read"%99%20%99%25%110%114$1@$0@2%112%185$1@2%185$0@3|@|@"])
  fun op output_case_def x = x
    val op output_case_def =
    ThmBind.DT(((("projectTypes",128),
                [("bool",[53,55,63]),("numeral",[3,6,7]),
                 ("projectTypes",[124,127])]),["DISK_THM"]),
               [ThmBind.read"%106%86%60%86%62%86%64%86%66%86%68%86%70%86%72%109%186%158@$6@$5@$4@$3@$2@$1@$0@2$6@|@|@|@|@|@|@|@2%106%86%60%86%62%86%64%86%66%86%68%86%70%86%72%109%186%157@$6@$5@$4@$3@$2@$1@$0@2$5@|@|@|@|@|@|@|@2%106%86%60%86%62%86%64%86%66%86%68%86%70%86%72%109%186%156@$6@$5@$4@$3@$2@$1@$0@2$4@|@|@|@|@|@|@|@2%106%86%60%86%62%86%64%86%66%86%68%86%70%86%72%109%186%146@$6@$5@$4@$3@$2@$1@$0@2$3@|@|@|@|@|@|@|@2%106%86%60%86%62%86%64%86%66%86%68%86%70%86%72%109%186%149@$6@$5@$4@$3@$2@$1@$0@2$2@|@|@|@|@|@|@|@2%106%86%60%86%62%86%64%86%66%86%68%86%70%86%72%109%186%168@$6@$5@$4@$3@$2@$1@$0@2$1@|@|@|@|@|@|@|@2%86%60%86%62%86%64%86%66%86%68%86%70%86%72%109%186%169@$6@$5@$4@$3@$2@$1@$0@2$0@|@|@|@|@|@|@|@7"])
  fun op datatype_output x = x
    val op datatype_output =
    ThmBind.DT(((("projectTypes",129),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%147%47%158@%157@%156@%146@%149@%168@%169@2"])
  fun op output_distinct x = x
    val op output_distinct =
    ThmBind.DT(((("projectTypes",130),
                [("numeral",[3,6]),
                 ("projectTypes",[124,125])]),["DISK_THM"]),
               [ThmBind.read"%106%200%114%158@%157@3%106%200%114%158@%156@3%106%200%114%158@%146@3%106%200%114%158@%149@3%106%200%114%158@%168@3%106%200%114%158@%169@3%106%200%114%157@%156@3%106%200%114%157@%146@3%106%200%114%157@%149@3%106%200%114%157@%168@3%106%200%114%157@%169@3%106%200%114%156@%146@3%106%200%114%156@%149@3%106%200%114%156@%168@3%106%200%114%156@%169@3%106%200%114%146@%149@3%106%200%114%146@%168@3%106%200%114%146@%169@3%106%200%114%149@%168@3%106%200%114%149@%169@3%200%114%168@%169@22"])
  fun op output_case_cong x = x
    val op output_case_cong =
    ThmBind.DT(((("projectTypes",131),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("projectTypes",[114,116,117,118,119,120,121,122,128]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%99%3%99%9%86%60%86%62%86%64%86%66%86%68%86%70%86%72%119%106%114$8@$7@2%106%119%114$7@%158@2%109$6@%61@3%106%119%114$7@%157@2%109$5@%63@3%106%119%114$7@%156@2%109$4@%65@3%106%119%114$7@%146@2%109$3@%67@3%106%119%114$7@%149@2%109$2@%69@3%106%119%114$7@%168@2%109$1@%71@3%119%114$7@%169@2%109$0@%73@10%109%186$8@$6@$5@$4@$3@$2@$1@$0@2%186$7@%61@%63@%65@%67@%69@%71@%73@3|@|@|@|@|@|@|@|@|@"])
  fun op output_nchotomy x = x
    val op output_nchotomy =
    ThmBind.DT(((("projectTypes",132),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("projectTypes",[114,116,117,118,119,120,121,122]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%99%20%171%114$0@%158@2%171%114$0@%157@2%171%114$0@%156@2%171%114$0@%146@2%171%114$0@%149@2%171%114$0@%168@2%114$0@%169@7|@"])
  fun op output_Axiom x = x
    val op output_Axiom =
    ThmBind.DT(((("projectTypes",133),
                [("bool",[8,14,25,53,55,63]),("numeral",[3,8]),
                 ("projectTypes",[124])]),["DISK_THM"]),
               [ThmBind.read"%86%79%86%80%86%81%86%82%86%83%86%84%86%85%124%34%106%109$0%158@2$7@2%106%109$0%157@2$6@2%106%109$0%156@2$5@2%106%109$0%146@2$4@2%106%109$0%149@2$3@2%106%109$0%168@2$2@2%109$0%169@2$1@7|@|@|@|@|@|@|@|@"])
  fun op output_induction x = x
    val op output_induction =
    ThmBind.DT(((("projectTypes",134),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("projectTypes",[114,116,117,118,119,120,121,122]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%91%15%119%106$0%146@2%106$0%149@2%106$0%156@2%106$0%157@2%106$0%158@2%106$0%168@2$0%169@8%99%20$1$0@|@2|@"])
  fun op principal_distinct_clauses x = x
    val op principal_distinct_clauses =
    ThmBind.DT(((("projectTypes",135),
                [("numeral",[3,6]),
                 ("projectTypes",[57,58])]),["DISK_THM"]),
               [ThmBind.read"%200%115%160@%150@2"])
  fun op squadLeaderCom_distinct_clauses x = x
    val op squadLeaderCom_distinct_clauses =
    ThmBind.DT(((("projectTypes",136),
                [("numeral",[3,6]),
                 ("projectTypes",[13,14])]),["DISK_THM"]),
               [ThmBind.read"%106%200%117%193@%192@3%106%200%117%193@%191@3%106%200%117%193@%174@3%106%200%117%192@%191@3%106%200%117%192@%174@3%200%117%191@%174@7"])
  fun op omniCom_distinct_clauses x = x
    val op omniCom_distinct_clauses =
    ThmBind.DT(((("projectTypes",137),
                [("numeral",[3,6]),
                 ("projectTypes",[35,36])]),["DISK_THM"]),
               [ThmBind.read"%200%113%175@%184@2"])
  fun op commands_distinct_clauses x = x
    val op commands_distinct_clauses =
    ThmBind.DT(((("projectTypes",138),
                [("bool",[25,26,46,53,62,180]),("ind_type",[33,34]),
                 ("pair",[8,9]),
                 ("projectTypes",[69,70,71,72,73])]),["DISK_THM"]),
               [ThmBind.read"%98%24%102%22%200%111%161$0@2%151$1@3|@|@"])
  fun op state_distinct_clauses x = x
    val op state_distinct_clauses =
    ThmBind.DT(((("projectTypes",139),
                [("numeral",[3,6]),
                 ("projectTypes",[97,98])]),["DISK_THM"]),
               [ThmBind.read"%106%200%118%153@%155@3%106%200%118%153@%154@3%106%200%118%153@%152@3%106%200%118%153@%143@3%106%200%118%155@%154@3%106%200%118%155@%152@3%106%200%118%155@%143@3%106%200%118%154@%152@3%106%200%118%154@%143@3%200%118%152@%143@11"])
  fun op output_distinct_clauses x = x
    val op output_distinct_clauses =
    ThmBind.DT(((("projectTypes",140),
                [("numeral",[3,6]),
                 ("projectTypes",[124,125])]),["DISK_THM"]),
               [ThmBind.read"%106%200%114%158@%157@3%106%200%114%158@%156@3%106%200%114%158@%146@3%106%200%114%158@%149@3%106%200%114%158@%168@3%106%200%114%158@%169@3%106%200%114%157@%156@3%106%200%114%157@%146@3%106%200%114%157@%149@3%106%200%114%157@%168@3%106%200%114%157@%169@3%106%200%114%156@%146@3%106%200%114%156@%149@3%106%200%114%156@%168@3%106%200%114%156@%169@3%106%200%114%146@%149@3%106%200%114%146@%168@3%106%200%114%146@%169@3%106%200%114%149@%168@3%106%200%114%149@%169@3%200%114%168@%169@22"])
  fun op commands_one_one x = x
    val op commands_one_one =
    ThmBind.DT(((("projectTypes",141),
                [("bool",[26,55,62,180]),("ind_type",[33,34]),
                 ("pair",[8,9]),
                 ("projectTypes",[69,70,71,72,73])]),["DISK_THM"]),
               [ThmBind.read"%106%102%22%102%27%110%111%161$1@2%161$0@3%117$1@$0@2|@|@2%98%19%98%24%110%111%151$1@2%151$0@3%113$1@$0@2|@|@2"])

  val _ = DB.bindl "projectTypes"
  [("squadLeaderCom_TY_DEF",squadLeaderCom_TY_DEF,DB.Def),
   ("squadLeaderCom_BIJ",squadLeaderCom_BIJ,DB.Def),
   ("squadLeaderCom_size_def",squadLeaderCom_size_def,DB.Def),
   ("squadLeaderCom_CASE",squadLeaderCom_CASE,DB.Def),
   ("omniCom_TY_DEF",omniCom_TY_DEF,DB.Def),
   ("omniCom_BIJ",omniCom_BIJ,DB.Def),
   ("omniCom_size_def",omniCom_size_def,DB.Def),
   ("omniCom_CASE",omniCom_CASE,DB.Def),
   ("principal_TY_DEF",principal_TY_DEF,DB.Def),
   ("principal_BIJ",principal_BIJ,DB.Def),
   ("principal_size_def",principal_size_def,DB.Def),
   ("principal_CASE",principal_CASE,DB.Def),
   ("commands_TY_DEF",commands_TY_DEF,DB.Def),
   ("commands_case_def",commands_case_def,DB.Def),
   ("commands_size_def",commands_size_def,DB.Def),
   ("state_TY_DEF",state_TY_DEF,DB.Def), ("state_BIJ",state_BIJ,DB.Def),
   ("state_size_def",state_size_def,DB.Def),
   ("state_CASE",state_CASE,DB.Def),
   ("output_TY_DEF",output_TY_DEF,DB.Def),
   ("output_BIJ",output_BIJ,DB.Def),
   ("output_size_def",output_size_def,DB.Def),
   ("output_CASE",output_CASE,DB.Def),
   ("num2squadLeaderCom_squadLeaderCom2num",
    num2squadLeaderCom_squadLeaderCom2num,
    DB.Thm),
   ("squadLeaderCom2num_num2squadLeaderCom",
    squadLeaderCom2num_num2squadLeaderCom,
    DB.Thm), ("num2squadLeaderCom_11",num2squadLeaderCom_11,DB.Thm),
   ("squadLeaderCom2num_11",squadLeaderCom2num_11,DB.Thm),
   ("num2squadLeaderCom_ONTO",num2squadLeaderCom_ONTO,DB.Thm),
   ("squadLeaderCom2num_ONTO",squadLeaderCom2num_ONTO,DB.Thm),
   ("num2squadLeaderCom_thm",num2squadLeaderCom_thm,DB.Thm),
   ("squadLeaderCom2num_thm",squadLeaderCom2num_thm,DB.Thm),
   ("squadLeaderCom_EQ_squadLeaderCom",
    squadLeaderCom_EQ_squadLeaderCom,
    DB.Thm), ("squadLeaderCom_case_def",squadLeaderCom_case_def,DB.Thm),
   ("datatype_squadLeaderCom",datatype_squadLeaderCom,DB.Thm),
   ("squadLeaderCom_distinct",squadLeaderCom_distinct,DB.Thm),
   ("squadLeaderCom_case_cong",squadLeaderCom_case_cong,DB.Thm),
   ("squadLeaderCom_nchotomy",squadLeaderCom_nchotomy,DB.Thm),
   ("squadLeaderCom_Axiom",squadLeaderCom_Axiom,DB.Thm),
   ("squadLeaderCom_induction",squadLeaderCom_induction,DB.Thm),
   ("num2omniCom_omniCom2num",num2omniCom_omniCom2num,DB.Thm),
   ("omniCom2num_num2omniCom",omniCom2num_num2omniCom,DB.Thm),
   ("num2omniCom_11",num2omniCom_11,DB.Thm),
   ("omniCom2num_11",omniCom2num_11,DB.Thm),
   ("num2omniCom_ONTO",num2omniCom_ONTO,DB.Thm),
   ("omniCom2num_ONTO",omniCom2num_ONTO,DB.Thm),
   ("num2omniCom_thm",num2omniCom_thm,DB.Thm),
   ("omniCom2num_thm",omniCom2num_thm,DB.Thm),
   ("omniCom_EQ_omniCom",omniCom_EQ_omniCom,DB.Thm),
   ("omniCom_case_def",omniCom_case_def,DB.Thm),
   ("datatype_omniCom",datatype_omniCom,DB.Thm),
   ("omniCom_distinct",omniCom_distinct,DB.Thm),
   ("omniCom_case_cong",omniCom_case_cong,DB.Thm),
   ("omniCom_nchotomy",omniCom_nchotomy,DB.Thm),
   ("omniCom_Axiom",omniCom_Axiom,DB.Thm),
   ("omniCom_induction",omniCom_induction,DB.Thm),
   ("num2principal_principal2num",num2principal_principal2num,DB.Thm),
   ("principal2num_num2principal",principal2num_num2principal,DB.Thm),
   ("num2principal_11",num2principal_11,DB.Thm),
   ("principal2num_11",principal2num_11,DB.Thm),
   ("num2principal_ONTO",num2principal_ONTO,DB.Thm),
   ("principal2num_ONTO",principal2num_ONTO,DB.Thm),
   ("num2principal_thm",num2principal_thm,DB.Thm),
   ("principal2num_thm",principal2num_thm,DB.Thm),
   ("principal_EQ_principal",principal_EQ_principal,DB.Thm),
   ("principal_case_def",principal_case_def,DB.Thm),
   ("datatype_principal",datatype_principal,DB.Thm),
   ("principal_distinct",principal_distinct,DB.Thm),
   ("principal_case_cong",principal_case_cong,DB.Thm),
   ("principal_nchotomy",principal_nchotomy,DB.Thm),
   ("principal_Axiom",principal_Axiom,DB.Thm),
   ("principal_induction",principal_induction,DB.Thm),
   ("datatype_commands",datatype_commands,DB.Thm),
   ("commands_11",commands_11,DB.Thm),
   ("commands_distinct",commands_distinct,DB.Thm),
   ("commands_case_cong",commands_case_cong,DB.Thm),
   ("commands_nchotomy",commands_nchotomy,DB.Thm),
   ("commands_Axiom",commands_Axiom,DB.Thm),
   ("commands_induction",commands_induction,DB.Thm),
   ("num2state_state2num",num2state_state2num,DB.Thm),
   ("state2num_num2state",state2num_num2state,DB.Thm),
   ("num2state_11",num2state_11,DB.Thm),
   ("state2num_11",state2num_11,DB.Thm),
   ("num2state_ONTO",num2state_ONTO,DB.Thm),
   ("state2num_ONTO",state2num_ONTO,DB.Thm),
   ("num2state_thm",num2state_thm,DB.Thm),
   ("state2num_thm",state2num_thm,DB.Thm),
   ("state_EQ_state",state_EQ_state,DB.Thm),
   ("state_case_def",state_case_def,DB.Thm),
   ("datatype_state",datatype_state,DB.Thm),
   ("state_distinct",state_distinct,DB.Thm),
   ("state_case_cong",state_case_cong,DB.Thm),
   ("state_nchotomy",state_nchotomy,DB.Thm),
   ("state_Axiom",state_Axiom,DB.Thm),
   ("state_induction",state_induction,DB.Thm),
   ("num2output_output2num",num2output_output2num,DB.Thm),
   ("output2num_num2output",output2num_num2output,DB.Thm),
   ("num2output_11",num2output_11,DB.Thm),
   ("output2num_11",output2num_11,DB.Thm),
   ("num2output_ONTO",num2output_ONTO,DB.Thm),
   ("output2num_ONTO",output2num_ONTO,DB.Thm),
   ("num2output_thm",num2output_thm,DB.Thm),
   ("output2num_thm",output2num_thm,DB.Thm),
   ("output_EQ_output",output_EQ_output,DB.Thm),
   ("output_case_def",output_case_def,DB.Thm),
   ("datatype_output",datatype_output,DB.Thm),
   ("output_distinct",output_distinct,DB.Thm),
   ("output_case_cong",output_case_cong,DB.Thm),
   ("output_nchotomy",output_nchotomy,DB.Thm),
   ("output_Axiom",output_Axiom,DB.Thm),
   ("output_induction",output_induction,DB.Thm),
   ("principal_distinct_clauses",principal_distinct_clauses,DB.Thm),
   ("squadLeaderCom_distinct_clauses",
    squadLeaderCom_distinct_clauses,
    DB.Thm), ("omniCom_distinct_clauses",omniCom_distinct_clauses,DB.Thm),
   ("commands_distinct_clauses",commands_distinct_clauses,DB.Thm),
   ("state_distinct_clauses",state_distinct_clauses,DB.Thm),
   ("output_distinct_clauses",output_distinct_clauses,DB.Thm),
   ("commands_one_one",commands_one_one,DB.Thm)]

  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "projectTypes",
    thydataty = "TypeGrammarDeltas",
    read = ThmBind.read,
    data =
        "NTY12.projectTypes,14.squadLeaderComNTY12.projectTypes,7.omniComNTY12.projectTypes,9.principalNTY12.projectTypes,8.commandsNTY12.projectTypes,5.stateNTY12.projectTypes,6.output"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "projectTypes",
    thydataty = "TermGrammarDeltas",
    read = ThmBind.read,
    data =
        "OO18.squadLeaderCom2num4.%194OO18.num2squadLeaderCom4.%179OO10.rtPosition4.%193OO8.rtOrient4.%192OO7.rtAlert4.%191OO8.complete4.%174OO19.squadLeaderCom_size4.%196OO19.squadLeaderCom_CASE4.%195OO4.case4.%195OO11.omniCom2num4.%181OO11.num2omniCom4.%176OO4.none4.%175OO6.omniNA4.%184OO12.omniCom_size4.%183OO12.omniCom_CASE4.%182OO4.case4.%182OO13.principal2num4.%188OO13.num2principal4.%178OO11.SquadLeader4.%160OO4.Omni4.%150OO14.principal_size4.%190OO14.principal_CASE4.%189OO4.case4.%189OO14.SquadLeaderCOM4.%161OO7.OmniCOM4.%151OO13.commands_CASE4.%172OO13.commands_size4.%173OO4.case4.%172OO9.state2num4.%197OO9.num2state4.%180OO7.RT_FORM4.%153OO11.RT_POSITION4.%155OO9.RT_ORIENT4.%154OO8.RT_ALERT4.%152OO8.COMPLETE4.%143OO10.state_size4.%199OO10.state_CASE4.%198OO4.case4.%198OO10.output2num4.%185OO10.num2output4.%177OO10.RtPosition4.%158OO8.RtOrient4.%157OO7.RtAlert4.%156OO8.Complete4.%146OO13.NoActionTaken4.%149OO15.UnAuthenticated4.%168OO12.UnAuthorized4.%169OO11.output_size4.%187OO11.output_CASE4.%186OO4.case4.%186"
  }
  local open GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val projectTypes_grammars = merge_grammars ["indexedLists",
                                              "patternMatches"]
  local
  val (tyUDs, tmUDs) = GrammarDeltas.thy_deltas{thyname="projectTypes"}
  val addtmUDs = term_grammar.add_deltas tmUDs
  val addtyUDs = type_grammar.apply_deltas tyUDs
  in
  val projectTypes_grammars = 
    Portable.## (addtyUDs,addtmUDs) projectTypes_grammars
  val _ = Parse.grammarDB_insert("projectTypes",projectTypes_grammars)
  val _ = Parse.temp_set_grammars (addtyUDs (Parse.type_grammar()), addtmUDs (Parse.term_grammar()))
  end (* addUDs local *)
  end


  val _ =
    TypeBase.write [
      let
        open TypeBasePure
        val tyinfo0 = mk_datatype_info
          {ax=ORIG squadLeaderCom_Axiom,
           case_def=squadLeaderCom_case_def,
           case_cong=squadLeaderCom_case_cong,
           induction=ORIG squadLeaderCom_induction,
           nchotomy=squadLeaderCom_nchotomy,
           size=SOME(Parse.Term`(projectTypes$squadLeaderCom_size) :projectTypes$squadLeaderCom -> num$num`,
                     ORIG squadLeaderCom_size_def),
           encode = NONE,
           lift=NONE,
           one_one=NONE,
           distinct=SOME squadLeaderCom_distinct,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = EnumType.update_tyinfo num2squadLeaderCom_thm squadLeaderCom2num_thm NONE tyinfo0
        val () = computeLib.write_datatype_info tyinfo0
      in
        tyinfo0
      end
    ];


  val _ =
    TypeBase.write [
      let
        open TypeBasePure
        val tyinfo0 = mk_datatype_info
          {ax=ORIG omniCom_Axiom,
           case_def=omniCom_case_def,
           case_cong=omniCom_case_cong,
           induction=ORIG omniCom_induction,
           nchotomy=omniCom_nchotomy,
           size=SOME(Parse.Term`(projectTypes$omniCom_size) :projectTypes$omniCom -> num$num`,
                     ORIG omniCom_size_def),
           encode = NONE,
           lift=NONE,
           one_one=NONE,
           distinct=SOME omniCom_distinct,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = EnumType.update_tyinfo num2omniCom_thm omniCom2num_thm NONE tyinfo0
        val () = computeLib.write_datatype_info tyinfo0
      in
        tyinfo0
      end
    ];


  val _ =
    TypeBase.write [
      let
        open TypeBasePure
        val tyinfo0 = mk_datatype_info
          {ax=ORIG principal_Axiom,
           case_def=principal_case_def,
           case_cong=principal_case_cong,
           induction=ORIG principal_induction,
           nchotomy=principal_nchotomy,
           size=SOME(Parse.Term`(projectTypes$principal_size) :projectTypes$principal -> num$num`,
                     ORIG principal_size_def),
           encode = NONE,
           lift=NONE,
           one_one=NONE,
           distinct=SOME principal_distinct,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = EnumType.update_tyinfo num2principal_thm principal2num_thm NONE tyinfo0
        val () = computeLib.write_datatype_info tyinfo0
      in
        tyinfo0
      end
    ];


  val _ =
    TypeBase.write [
      let
        open TypeBasePure
        val tyinfo0 = mk_datatype_info
          {ax=ORIG commands_Axiom,
           case_def=commands_case_def,
           case_cong=commands_case_cong,
           induction=ORIG commands_induction,
           nchotomy=commands_nchotomy,
           size=SOME(Parse.Term`(projectTypes$commands_size) :projectTypes$commands -> num$num`,
                     ORIG commands_size_def),
           encode = NONE,
           lift=NONE,
           one_one=SOME commands_11,
           distinct=SOME commands_distinct,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = tyinfo0
        val () = computeLib.write_datatype_info tyinfo0
      in
        tyinfo0
      end
    ];


  val _ =
    TypeBase.write [
      let
        open TypeBasePure
        val tyinfo0 = mk_datatype_info
          {ax=ORIG state_Axiom,
           case_def=state_case_def,
           case_cong=state_case_cong,
           induction=ORIG state_induction,
           nchotomy=state_nchotomy,
           size=SOME(Parse.Term`(projectTypes$state_size) :projectTypes$state -> num$num`,
                     ORIG state_size_def),
           encode = NONE,
           lift=NONE,
           one_one=NONE,
           distinct=SOME state_distinct,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = EnumType.update_tyinfo num2state_thm state2num_thm NONE tyinfo0
        val () = computeLib.write_datatype_info tyinfo0
      in
        tyinfo0
      end
    ];


  val _ =
    TypeBase.write [
      let
        open TypeBasePure
        val tyinfo0 = mk_datatype_info
          {ax=ORIG output_Axiom,
           case_def=output_case_def,
           case_cong=output_case_cong,
           induction=ORIG output_induction,
           nchotomy=output_nchotomy,
           size=SOME(Parse.Term`(projectTypes$output_size) :projectTypes$output -> num$num`,
                     ORIG output_size_def),
           encode = NONE,
           lift=NONE,
           one_one=NONE,
           distinct=SOME output_distinct,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = EnumType.update_tyinfo num2output_thm output2num_thm NONE tyinfo0
        val () = computeLib.write_datatype_info tyinfo0
      in
        tyinfo0
      end
    ];

val _ = if !Globals.print_thy_loads then TextIO.print "done\n" else ()
val _ = Theory.load_complete "projectTypes"
end
