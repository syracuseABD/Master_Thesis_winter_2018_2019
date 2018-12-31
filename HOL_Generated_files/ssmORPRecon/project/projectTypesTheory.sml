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
          Arbnum.fromString "1545931660",
          Arbnum.fromString "887657")
          [("indexedLists",
           Arbnum.fromString "1501974078",
           Arbnum.fromString "687272"),
           ("patternMatches",
           Arbnum.fromString "1501974125",
           Arbnum.fromString "747236")];
  val _ = Theory.incorporate_types "projectTypes"
       [("state", 0), ("principal", 0), ("platoonLeaderCom", 0),
        ("output", 0), ("omniCom", 0), ("commands", 0)];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("num", "num"), ID("projectTypes", "state"),
   ID("projectTypes", "platoonLeaderCom"), ID("projectTypes", "principal"),
   ID("projectTypes", "output"), ID("projectTypes", "omniCom"),
   ID("projectTypes", "commands"), ID("min", "bool"),
   ID("ind_type", "recspace"), ID("pair", "prod"), ID("bool", "!"),
   ID("arithmetic", "+"), ID("pair", ","), ID("bool", "/\\"),
   ID("num", "0"), ID("prim_rec", "<"), ID("min", "="), ID("min", "==>"),
   ID("bool", "?"), ID("bool", "ARB"), ID("arithmetic", "BIT1"),
   ID("arithmetic", "BIT2"), ID("ind_type", "BOTTOM"),
   ID("projectTypes", "COMPLETE"), ID("bool", "COND"),
   ID("projectTypes", "CONDUCT_ORP"), ID("ind_type", "CONSTR"),
   ID("projectTypes", "CONTINGENCY_PLAN"), ID("projectTypes", "Complete"),
   ID("projectTypes", "ConductORP"), ID("projectTypes", "ContingencyPlan"),
   ID("bool", "DATATYPE"), ID("projectTypes", "FORM_ST"),
   ID("projectTypes", "FormST"), ID("projectTypes", "MOVE_TO_ORP"),
   ID("projectTypes", "MoveToORP"), ID("arithmetic", "NUMERAL"),
   ID("projectTypes", "NoActionTaken"), ID("projectTypes", "ORP_RECON"),
   ID("projectTypes", "Omni"), ID("projectTypes", "OmniCOM"),
   ID("projectTypes", "PlatoonLeader"),
   ID("projectTypes", "PlatoonLeaderCOM"),
   ID("projectTypes", "RETURN_TO_UNIT"),
   ID("projectTypes", "ReturnToUnit"), ID("num", "SUC"),
   ID("bool", "TYPE_DEFINITION"), ID("projectTypes", "UnAuthenticated"),
   ID("projectTypes", "UnAuthorized"), ID("arithmetic", "ZERO"),
   ID("bool", "\\/"), ID("projectTypes", "commands_CASE"),
   ID("projectTypes", "commands_size"), ID("projectTypes", "complete"),
   ID("projectTypes", "conductORP"), ID("projectTypes", "contingencyPlan"),
   ID("projectTypes", "formST"), ID("projectTypes", "moveToORP"),
   ID("projectTypes", "none"), ID("projectTypes", "num2omniCom"),
   ID("projectTypes", "num2output"),
   ID("projectTypes", "num2platoonLeaderCom"),
   ID("projectTypes", "num2principal"), ID("projectTypes", "num2state"),
   ID("projectTypes", "omniCom2num"), ID("projectTypes", "omniCom_CASE"),
   ID("projectTypes", "omniCom_size"), ID("projectTypes", "omniNA"),
   ID("projectTypes", "output2num"), ID("projectTypes", "output_CASE"),
   ID("projectTypes", "output_size"),
   ID("projectTypes", "platoonLeaderCom2num"),
   ID("projectTypes", "platoonLeaderCom_CASE"),
   ID("projectTypes", "platoonLeaderCom_size"),
   ID("projectTypes", "principal2num"),
   ID("projectTypes", "principal_CASE"),
   ID("projectTypes", "principal_size"),
   ID("projectTypes", "returnToUnit"), ID("projectTypes", "state2num"),
   ID("projectTypes", "state_CASE"), ID("projectTypes", "state_size"),
   ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYOP [2], TYOP [0, 1, 0], TYV "'a", TYOP [0, 3, 3],
   TYOP [0, 3, 4], TYOP [0, 3, 5], TYOP [0, 3, 6], TYOP [0, 3, 7],
   TYOP [0, 3, 8], TYOP [0, 3, 9], TYOP [0, 1, 10], TYOP [3], TYOP [4],
   TYOP [0, 13, 0], TYOP [0, 13, 5], TYOP [0, 12, 0], TYOP [0, 12, 9],
   TYOP [5], TYOP [0, 18, 0], TYOP [0, 3, 10], TYOP [0, 3, 20],
   TYOP [0, 18, 21], TYOP [6], TYOP [0, 23, 0], TYOP [0, 23, 5],
   TYOP [0, 0, 1], TYOP [0, 0, 13], TYOP [0, 0, 12], TYOP [0, 0, 18],
   TYOP [0, 0, 23], TYOP [7], TYOP [0, 31, 0], TYOP [0, 23, 3],
   TYOP [0, 33, 3], TYOP [0, 12, 3], TYOP [0, 35, 34], TYOP [0, 31, 36],
   TYOP [0, 12, 31], TYOP [0, 23, 31], TYOP [8], TYOP [10, 12, 23],
   TYOP [9, 41], TYOP [0, 42, 40], TYOP [0, 31, 40], TYOP [0, 23, 40],
   TYOP [0, 18, 40], TYOP [0, 12, 40], TYOP [0, 13, 40], TYOP [0, 1, 40],
   TYOP [0, 39, 40], TYOP [0, 38, 50], TYOP [0, 18, 3], TYOP [0, 13, 3],
   TYOP [0, 1, 3], TYOP [0, 31, 3], TYOP [0, 23, 45], TYOP [0, 18, 46],
   TYOP [0, 18, 57], TYOP [0, 18, 58], TYOP [0, 18, 59], TYOP [0, 18, 60],
   TYOP [0, 18, 61], TYOP [0, 18, 62], TYOP [0, 18, 63], TYOP [0, 12, 47],
   TYOP [0, 12, 65], TYOP [0, 12, 66], TYOP [0, 12, 67], TYOP [0, 12, 68],
   TYOP [0, 13, 48], TYOP [0, 31, 42], TYOP [0, 1, 49], TYOP [0, 1, 72],
   TYOP [0, 1, 73], TYOP [0, 1, 74], TYOP [0, 1, 75], TYOP [0, 1, 76],
   TYOP [0, 3, 40], TYOP [0, 78, 40], TYOP [0, 44, 40], TYOP [0, 80, 40],
   TYOP [0, 33, 40], TYOP [0, 82, 40], TYOP [0, 45, 40], TYOP [0, 84, 40],
   TYOP [0, 46, 40], TYOP [0, 86, 40], TYOP [0, 35, 40], TYOP [0, 88, 40],
   TYOP [0, 47, 40], TYOP [0, 90, 40], TYOP [0, 48, 40], TYOP [0, 92, 40],
   TYOP [0, 43, 40], TYOP [0, 94, 40], TYOP [0, 49, 40], TYOP [0, 96, 40],
   TYOP [0, 0, 40], TYOP [0, 98, 40], TYOP [0, 0, 0], TYOP [0, 0, 100],
   TYOP [0, 23, 41], TYOP [0, 12, 102], TYOP [0, 40, 40],
   TYOP [0, 40, 104], TYOP [0, 0, 98], TYOP [0, 3, 78], TYOP [0, 31, 44],
   TYOP [0, 42, 43], TYOP [0, 55, 40], TYOP [0, 110, 40], TYOP [0, 71, 40],
   TYOP [0, 112, 40], TYOP [0, 24, 40], TYOP [0, 114, 40],
   TYOP [0, 52, 40], TYOP [0, 116, 40], TYOP [0, 19, 40],
   TYOP [0, 118, 40], TYOP [0, 16, 40], TYOP [0, 120, 40],
   TYOP [0, 53, 40], TYOP [0, 122, 40], TYOP [0, 14, 40],
   TYOP [0, 124, 40], TYOP [0, 54, 40], TYOP [0, 126, 40], TYOP [0, 2, 40],
   TYOP [0, 128, 40], TYOP [0, 40, 5], TYOP [0, 0, 42], TYOP [0, 131, 42],
   TYOP [0, 41, 132], TYOP [0, 0, 133], TYOP [0, 98, 114],
   TYOP [0, 98, 118], TYOP [0, 98, 120], TYOP [0, 98, 124],
   TYOP [0, 98, 128], TYOP [0, 43, 112]]
  end
  val _ = Theory.incorporate_consts "projectTypes" tyvector
     [("state_size", 2), ("state_CASE", 11), ("state2num", 2),
      ("returnToUnit", 12), ("principal_size", 14), ("principal_CASE", 15),
      ("principal2num", 14), ("platoonLeaderCom_size", 16),
      ("platoonLeaderCom_CASE", 17), ("platoonLeaderCom2num", 16),
      ("output_size", 19), ("output_CASE", 22), ("output2num", 19),
      ("omniNA", 23), ("omniCom_size", 24), ("omniCom_CASE", 25),
      ("omniCom2num", 24), ("num2state", 26), ("num2principal", 27),
      ("num2platoonLeaderCom", 28), ("num2output", 29),
      ("num2omniCom", 30), ("none", 23), ("moveToORP", 12), ("formST", 12),
      ("contingencyPlan", 12), ("conductORP", 12), ("complete", 12),
      ("commands_size", 32), ("commands_CASE", 37), ("UnAuthorized", 18),
      ("UnAuthenticated", 18), ("ReturnToUnit", 18), ("RETURN_TO_UNIT", 1),
      ("PlatoonLeaderCOM", 38), ("PlatoonLeader", 13), ("OmniCOM", 39),
      ("Omni", 13), ("ORP_RECON", 1), ("NoActionTaken", 18),
      ("MoveToORP", 18), ("MOVE_TO_ORP", 1), ("FormST", 18),
      ("FORM_ST", 1), ("ContingencyPlan", 18), ("ConductORP", 18),
      ("Complete", 18), ("CONTINGENCY_PLAN", 1), ("CONDUCT_ORP", 1),
      ("COMPLETE", 1)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("'commands'", 43), TMV("M", 31), TMV("M", 23), TMV("M", 18),
   TMV("M", 12), TMV("M", 13), TMV("M", 1), TMV("M'", 31), TMV("M'", 23),
   TMV("M'", 18), TMV("M'", 12), TMV("M'", 13), TMV("M'", 1), TMV("P", 44),
   TMV("P", 45), TMV("P", 46), TMV("P", 47), TMV("P", 48), TMV("P", 49),
   TMV("a", 23), TMV("a", 18), TMV("a", 12), TMV("a", 13), TMV("a", 1),
   TMV("a'", 23), TMV("a'", 18), TMV("a'", 12), TMV("a'", 13),
   TMV("a'", 1), TMV("a0", 42), TMV("c", 31), TMV("cc", 31),
   TMV("commands", 51), TMV("f", 33), TMV("f", 52), TMV("f", 35),
   TMV("f", 53), TMV("f", 54), TMV("f'", 35), TMV("f0", 35), TMV("f1", 33),
   TMV("f1'", 33), TMV("fn", 55), TMV("m", 0), TMV("n", 0), TMV("o", 23),
   TMV("omniCom", 56), TMV("output", 64), TMV("p", 12),
   TMV("platoonLeaderCom", 69), TMV("principal", 70), TMV("r", 0),
   TMV("r'", 0), TMV("rep", 71), TMV("rep", 24), TMV("rep", 19),
   TMV("rep", 16), TMV("rep", 14), TMV("rep", 2), TMV("state", 77),
   TMV("v0", 3), TMV("v0'", 3), TMV("v1", 3), TMV("v1'", 3), TMV("v2", 3),
   TMV("v2'", 3), TMV("v3", 3), TMV("v3'", 3), TMV("v4", 3), TMV("v4'", 3),
   TMV("v5", 3), TMV("v5'", 3), TMV("v6", 3), TMV("v6'", 3), TMV("v7", 3),
   TMV("v7'", 3), TMV("v8", 3), TMV("v8'", 3), TMV("x", 23), TMV("x", 18),
   TMV("x", 12), TMV("x", 13), TMV("x", 1), TMV("x0", 3), TMV("x1", 3),
   TMV("x2", 3), TMV("x3", 3), TMV("x4", 3), TMV("x5", 3), TMV("x6", 3),
   TMV("x7", 3), TMV("x8", 3), TMC(11, 79), TMC(11, 80), TMC(11, 81),
   TMC(11, 83), TMC(11, 85), TMC(11, 87), TMC(11, 89), TMC(11, 91),
   TMC(11, 93), TMC(11, 95), TMC(11, 97), TMC(11, 99), TMC(11, 84),
   TMC(11, 86), TMC(11, 90), TMC(11, 92), TMC(11, 94), TMC(11, 96),
   TMC(12, 101), TMC(13, 103), TMC(14, 105), TMC(15, 0), TMC(16, 106),
   TMC(17, 107), TMC(17, 105), TMC(17, 108), TMC(17, 106), TMC(17, 56),
   TMC(17, 57), TMC(17, 65), TMC(17, 70), TMC(17, 109), TMC(17, 72),
   TMC(18, 105), TMC(19, 111), TMC(19, 113), TMC(19, 83), TMC(19, 115),
   TMC(19, 117), TMC(19, 119), TMC(19, 89), TMC(19, 121), TMC(19, 123),
   TMC(19, 125), TMC(19, 127), TMC(19, 129), TMC(19, 99), TMC(19, 84),
   TMC(19, 86), TMC(19, 90), TMC(19, 92), TMC(19, 96), TMC(20, 23),
   TMC(20, 12), TMC(21, 100), TMC(22, 100), TMC(23, 42), TMC(24, 1),
   TMC(25, 130), TMC(26, 1), TMC(27, 134), TMC(28, 1), TMC(29, 18),
   TMC(30, 18), TMC(31, 18), TMC(32, 104), TMC(33, 1), TMC(34, 18),
   TMC(35, 1), TMC(36, 18), TMC(37, 100), TMC(38, 18), TMC(39, 1),
   TMC(40, 13), TMC(41, 39), TMC(42, 13), TMC(43, 38), TMC(44, 1),
   TMC(45, 18), TMC(46, 100), TMC(47, 135), TMC(47, 136), TMC(47, 137),
   TMC(47, 138), TMC(47, 139), TMC(47, 140), TMC(48, 18), TMC(49, 18),
   TMC(50, 0), TMC(51, 105), TMC(52, 37), TMC(53, 32), TMC(54, 12),
   TMC(55, 12), TMC(56, 12), TMC(57, 12), TMC(58, 12), TMC(59, 23),
   TMC(60, 30), TMC(61, 29), TMC(62, 28), TMC(63, 27), TMC(64, 26),
   TMC(65, 24), TMC(66, 25), TMC(67, 24), TMC(68, 23), TMC(69, 19),
   TMC(70, 22), TMC(71, 19), TMC(72, 16), TMC(73, 17), TMC(74, 16),
   TMC(75, 14), TMC(76, 15), TMC(77, 14), TMC(78, 12), TMC(79, 2),
   TMC(80, 11), TMC(81, 2), TMC(82, 104)]
  end
  structure ThmBind = struct
    val DT = Thm.disk_thm
    val read = Term.read_raw tmvector
  end
  fun op platoonLeaderCom_TY_DEF x = x
    val op platoonLeaderCom_TY_DEF =
    ThmBind.DT(((("projectTypes",0),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%133%56%174%44%114$0@%162%147%147%180@4|@$0@|@"])
  fun op platoonLeaderCom_BIJ x = x
    val op platoonLeaderCom_BIJ =
    ThmBind.DT(((("projectTypes",1),
                [("bool",[116]),("projectTypes",[0])]),["DISK_THM"]),
               [ThmBind.read"%112%106%21%121%192%202$0@3$0@|@2%103%51%116%44%114$0@%162%147%147%180@4|$0@2%118%202%192$0@3$0@2|@2"])






  fun op platoonLeaderCom_size_def x = x
    val op platoonLeaderCom_size_def =
    ThmBind.DT(((("projectTypes",17),[]),[]),
               [ThmBind.read"%106%80%118%204$0@2%113@|@"])
  fun op platoonLeaderCom_CASE x = x
    val op platoonLeaderCom_CASE =
    ThmBind.DT(((("projectTypes",18),[]),[]),
               [ThmBind.read"%106%80%92%60%92%62%92%64%92%66%92%68%92%70%115%203$6@$5@$4@$3@$2@$1@$0@2%43%150%114$0@%162%147%180@4%150%118$0@%113@2$6@$5@2%150%114$0@%162%146%146%180@5$4@%150%114$0@%162%147%146%180@5$3@%150%118$0@%162%147%146%180@5$2@$1@4|%202$6@3|@|@|@|@|@|@|@"])
  fun op omniCom_TY_DEF x = x
    val op omniCom_TY_DEF =
    ThmBind.DT(((("projectTypes",26),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%129%54%172%44%114$0@%162%147%180@3|@$0@|@"])
  fun op omniCom_BIJ x = x
    val op omniCom_BIJ =
    ThmBind.DT(((("projectTypes",27),
                [("bool",[116]),("projectTypes",[26])]),["DISK_THM"]),
               [ThmBind.read"%112%104%19%119%190%195$0@3$0@|@2%103%51%116%44%114$0@%162%147%180@3|$0@2%118%195%190$0@3$0@2|@2"])


  fun op omniCom_size_def x = x
    val op omniCom_size_def =
    ThmBind.DT(((("projectTypes",39),[]),[]),
               [ThmBind.read"%104%78%118%197$0@2%113@|@"])
  fun op omniCom_CASE x = x
    val op omniCom_CASE =
    ThmBind.DT(((("projectTypes",40),[]),[]),
               [ThmBind.read"%104%78%92%60%92%62%115%196$2@$1@$0@2%43%150%118$0@%113@2$2@$1@|%195$2@3|@|@|@"])
  fun op principal_TY_DEF x = x
    val op principal_TY_DEF =
    ThmBind.DT(((("projectTypes",48),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%135%57%175%44%114$0@%162%147%180@3|@$0@|@"])
  fun op principal_BIJ x = x
    val op principal_BIJ =
    ThmBind.DT(((("projectTypes",49),
                [("bool",[116]),("projectTypes",[48])]),["DISK_THM"]),
               [ThmBind.read"%112%107%22%122%193%205$0@3$0@|@2%103%51%116%44%114$0@%162%147%180@3|$0@2%118%205%193$0@3$0@2|@2"])


  fun op principal_size_def x = x
    val op principal_size_def =
    ThmBind.DT(((("projectTypes",61),[]),[]),
               [ThmBind.read"%107%81%118%207$0@2%113@|@"])
  fun op principal_CASE x = x
    val op principal_CASE =
    ThmBind.DT(((("projectTypes",62),[]),[]),
               [ThmBind.read"%107%81%92%60%92%62%115%206$2@$1@$0@2%43%150%118$0@%113@2$2@$1@|%205$2@3|@|@|@"])
  fun op commands_TY_DEF x = x
    val op commands_TY_DEF =
    ThmBind.DT(((("projectTypes",70),[("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%127%53%177%29%101%0%125%108%29%125%181%141%21%123$1@%21%152%113@%111$0@%144@2%44%148|@|$0@2|@2%139%19%123$1@%19%152%171%113@2%111%145@$0@2%44%148|@|$0@2|@3$1$0@2|@2$0$1@2|@|@$0@|@"])
  fun op commands_case_def x = x
    val op commands_case_def =
    ThmBind.DT(((("projectTypes",76),
                [("bool",[26,180]),("ind_type",[33,34]),("pair",[8,9]),
                 ("projectTypes",[71,72,73,74,75])]),["DISK_THM"]),
               [ThmBind.read"%112%106%21%98%35%95%40%115%182%168$2@2$1@$0@2$1$2@2|@|@|@2%104%19%98%35%95%40%115%182%166$2@2$1@$0@2$0$2@2|@|@|@2"])
  fun op commands_size_def x = x
    val op commands_size_def =
    ThmBind.DT(((("projectTypes",77),
                [("bool",[26,180]),("ind_type",[33,34]),("pair",[8,9]),
                 ("projectTypes",[71,72,73,74,75])]),["DISK_THM"]),
               [ThmBind.read"%112%106%21%118%183%168$0@3%110%162%146%180@3%204$0@3|@2%104%19%118%183%166$0@3%110%162%146%180@3%197$0@3|@2"])
  fun op state_TY_DEF x = x
    val op state_TY_DEF =
    ThmBind.DT(((("projectTypes",85),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%137%58%176%44%114$0@%162%146%146%146%180@5|@$0@|@"])
  fun op state_BIJ x = x
    val op state_BIJ =
    ThmBind.DT(((("projectTypes",86),
                [("bool",[116]),("projectTypes",[85])]),["DISK_THM"]),
               [ThmBind.read"%112%109%23%124%194%209$0@3$0@|@2%103%51%116%44%114$0@%162%146%146%146%180@5|$0@2%118%209%194$0@3$0@2|@2"])







  fun op state_size_def x = x
    val op state_size_def =
    ThmBind.DT(((("projectTypes",103),[]),[]),
               [ThmBind.read"%109%82%118%211$0@2%113@|@"])
  fun op state_CASE x = x
    val op state_CASE =
    ThmBind.DT(((("projectTypes",104),[]),[]),
               [ThmBind.read"%109%82%92%60%92%62%92%64%92%66%92%68%92%70%92%72%115%210$7@$6@$5@$4@$3@$2@$1@$0@2%43%150%114$0@%162%146%146%180@5%150%114$0@%162%146%180@4$7@%150%118$0@%162%146%180@4$6@$5@3%150%114$0@%162%147%146%180@5$4@%150%114$0@%162%146%147%180@5$3@%150%118$0@%162%146%147%180@5$2@$1@4|%209$7@3|@|@|@|@|@|@|@|@"])
  fun op output_TY_DEF x = x
    val op output_TY_DEF =
    ThmBind.DT(((("projectTypes",112),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%131%55%173%44%114$0@%162%146%147%146%180@5|@$0@|@"])
  fun op output_BIJ x = x
    val op output_BIJ =
    ThmBind.DT(((("projectTypes",113),
                [("bool",[116]),("projectTypes",[112])]),["DISK_THM"]),
               [ThmBind.read"%112%105%20%120%191%199$0@3$0@|@2%103%51%116%44%114$0@%162%146%147%146%180@5|$0@2%118%199%191$0@3$0@2|@2"])









  fun op output_size_def x = x
    val op output_size_def =
    ThmBind.DT(((("projectTypes",132),[]),[]),
               [ThmBind.read"%105%79%118%201$0@2%113@|@"])
  fun op output_CASE x = x
    val op output_CASE =
    ThmBind.DT(((("projectTypes",133),[]),[]),
               [ThmBind.read"%105%79%92%60%92%62%92%64%92%66%92%68%92%70%92%72%92%74%92%76%115%200$9@$8@$7@$6@$5@$4@$3@$2@$1@$0@2%43%150%114$0@%162%147%146%180@5%150%114$0@%162%146%180@4$9@%150%114$0@%162%147%180@4$8@%150%118$0@%162%147%180@4$7@$6@4%150%114$0@%162%147%147%180@5%150%118$0@%162%147%146%180@5$5@$4@2%150%114$0@%162%146%146%146%180@6$3@%150%118$0@%162%146%146%146%180@6$2@$1@4|%199$9@3|@|@|@|@|@|@|@|@|@|@"])
  fun op num2platoonLeaderCom_platoonLeaderCom2num x = x
    val op num2platoonLeaderCom_platoonLeaderCom2num =
    ThmBind.DT(((("projectTypes",2),[("projectTypes",[1])]),["DISK_THM"]),
               [ThmBind.read"%106%21%121%192%202$0@3$0@|@"])
  fun op platoonLeaderCom2num_num2platoonLeaderCom x = x
    val op platoonLeaderCom2num_num2platoonLeaderCom =
    ThmBind.DT(((("projectTypes",3),[("projectTypes",[1])]),["DISK_THM"]),
               [ThmBind.read"%103%51%116%114$0@%162%147%147%180@5%118%202%192$0@3$0@2|@"])
  fun op num2platoonLeaderCom_11 x = x
    val op num2platoonLeaderCom_11 =
    ThmBind.DT(((("projectTypes",4),
                [("bool",[26]),("projectTypes",[1])]),["DISK_THM"]),
               [ThmBind.read"%103%51%103%52%125%114$1@%162%147%147%180@5%125%114$0@%162%147%147%180@5%116%121%192$1@2%192$0@3%118$1@$0@4|@|@"])
  fun op platoonLeaderCom2num_11 x = x
    val op platoonLeaderCom2num_11 =
    ThmBind.DT(((("projectTypes",5),
                [("bool",[26]),("projectTypes",[1])]),["DISK_THM"]),
               [ThmBind.read"%106%21%106%26%116%118%202$1@2%202$0@3%121$1@$0@2|@|@"])
  fun op num2platoonLeaderCom_ONTO x = x
    val op num2platoonLeaderCom_ONTO =
    ThmBind.DT(((("projectTypes",6),
                [("bool",[25,62]),("projectTypes",[1])]),["DISK_THM"]),
               [ThmBind.read"%106%21%138%51%112%121$1@%192$0@3%114$0@%162%147%147%180@5|@|@"])
  fun op platoonLeaderCom2num_ONTO x = x
    val op platoonLeaderCom2num_ONTO =
    ThmBind.DT(((("projectTypes",7),
                [("bool",[26]),("projectTypes",[1])]),["DISK_THM"]),
               [ThmBind.read"%103%51%116%114$0@%162%147%147%180@5%141%21%118$1@%202$0@2|@2|@"])
  fun op num2platoonLeaderCom_thm x = x
    val op num2platoonLeaderCom_thm =
    ThmBind.DT(((("projectTypes",14),
                [("projectTypes",[8,9,10,11,12,13])]),[]),
               [ThmBind.read"%112%121%192%113@2%186@2%112%121%192%162%146%180@4%188@2%112%121%192%162%147%180@4%185@2%112%121%192%162%146%146%180@5%187@2%112%121%192%162%147%146%180@5%208@2%121%192%162%146%147%180@5%184@6"])
  fun op platoonLeaderCom2num_thm x = x
    val op platoonLeaderCom2num_thm =
    ThmBind.DT(((("projectTypes",15),
                [("bool",[25,53]),("numeral",[3,7]),
                 ("projectTypes",[3,8,9,10,11,12,13])]),["DISK_THM"]),
               [ThmBind.read"%112%118%202%186@2%113@2%112%118%202%188@2%162%146%180@4%112%118%202%185@2%162%147%180@4%112%118%202%187@2%162%146%146%180@5%112%118%202%208@2%162%147%146%180@5%118%202%184@2%162%146%147%180@9"])
  fun op platoonLeaderCom_EQ_platoonLeaderCom x = x
    val op platoonLeaderCom_EQ_platoonLeaderCom =
    ThmBind.DT(((("projectTypes",16),
                [("bool",[57]),("projectTypes",[5])]),["DISK_THM"]),
               [ThmBind.read"%106%21%106%26%116%121$1@$0@2%118%202$1@2%202$0@3|@|@"])
  fun op platoonLeaderCom_case_def x = x
    val op platoonLeaderCom_case_def =
    ThmBind.DT(((("projectTypes",19),
                [("bool",[53,55,63]),("numeral",[3,6,7]),
                 ("projectTypes",[15,18])]),["DISK_THM"]),
               [ThmBind.read"%112%92%60%92%62%92%64%92%66%92%68%92%70%115%203%186@$5@$4@$3@$2@$1@$0@2$5@|@|@|@|@|@|@2%112%92%60%92%62%92%64%92%66%92%68%92%70%115%203%188@$5@$4@$3@$2@$1@$0@2$4@|@|@|@|@|@|@2%112%92%60%92%62%92%64%92%66%92%68%92%70%115%203%185@$5@$4@$3@$2@$1@$0@2$3@|@|@|@|@|@|@2%112%92%60%92%62%92%64%92%66%92%68%92%70%115%203%187@$5@$4@$3@$2@$1@$0@2$2@|@|@|@|@|@|@2%112%92%60%92%62%92%64%92%66%92%68%92%70%115%203%208@$5@$4@$3@$2@$1@$0@2$1@|@|@|@|@|@|@2%92%60%92%62%92%64%92%66%92%68%92%70%115%203%184@$5@$4@$3@$2@$1@$0@2$0@|@|@|@|@|@|@6"])
  fun op datatype_platoonLeaderCom x = x
    val op datatype_platoonLeaderCom =
    ThmBind.DT(((("projectTypes",20),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%157%49%186@%188@%185@%187@%208@%184@2"])
  fun op platoonLeaderCom_distinct x = x
    val op platoonLeaderCom_distinct =
    ThmBind.DT(((("projectTypes",21),
                [("numeral",[3,6]),
                 ("projectTypes",[15,16])]),["DISK_THM"]),
               [ThmBind.read"%112%212%121%186@%188@3%112%212%121%186@%185@3%112%212%121%186@%187@3%112%212%121%186@%208@3%112%212%121%186@%184@3%112%212%121%188@%185@3%112%212%121%188@%187@3%112%212%121%188@%208@3%112%212%121%188@%184@3%112%212%121%185@%187@3%112%212%121%185@%208@3%112%212%121%185@%184@3%112%212%121%187@%208@3%112%212%121%187@%184@3%212%121%208@%184@16"])
  fun op platoonLeaderCom_case_cong x = x
    val op platoonLeaderCom_case_cong =
    ThmBind.DT(((("projectTypes",22),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("projectTypes",[6,8,9,10,11,12,13,19]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%106%4%106%10%92%60%92%62%92%64%92%66%92%68%92%70%125%112%121$7@$6@2%112%125%121$6@%186@2%115$5@%61@3%112%125%121$6@%188@2%115$4@%63@3%112%125%121$6@%185@2%115$3@%65@3%112%125%121$6@%187@2%115$2@%67@3%112%125%121$6@%208@2%115$1@%69@3%125%121$6@%184@2%115$0@%71@9%115%203$7@$5@$4@$3@$2@$1@$0@2%203$6@%61@%63@%65@%67@%69@%71@3|@|@|@|@|@|@|@|@"])
  fun op platoonLeaderCom_nchotomy x = x
    val op platoonLeaderCom_nchotomy =
    ThmBind.DT(((("projectTypes",23),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("projectTypes",[6,8,9,10,11,12,13]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%106%21%181%121$0@%186@2%181%121$0@%188@2%181%121$0@%185@2%181%121$0@%187@2%181%121$0@%208@2%121$0@%184@6|@"])
  fun op platoonLeaderCom_Axiom x = x
    val op platoonLeaderCom_Axiom =
    ThmBind.DT(((("projectTypes",24),
                [("bool",[8,14,25,53,55,63]),("numeral",[3,8]),
                 ("projectTypes",[15])]),["DISK_THM"]),
               [ThmBind.read"%92%83%92%84%92%85%92%86%92%87%92%88%132%35%112%115$0%186@2$6@2%112%115$0%188@2$5@2%112%115$0%185@2$4@2%112%115$0%187@2$3@2%112%115$0%208@2$2@2%115$0%184@2$1@6|@|@|@|@|@|@|@"])
  fun op platoonLeaderCom_induction x = x
    val op platoonLeaderCom_induction =
    ThmBind.DT(((("projectTypes",25),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("projectTypes",[6,8,9,10,11,12,13]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%99%16%125%112$0%184@2%112$0%185@2%112$0%186@2%112$0%187@2%112$0%188@2$0%208@7%106%21$1$0@|@2|@"])
  fun op num2omniCom_omniCom2num x = x
    val op num2omniCom_omniCom2num =
    ThmBind.DT(((("projectTypes",28),
                [("projectTypes",[27])]),["DISK_THM"]),
               [ThmBind.read"%104%19%119%190%195$0@3$0@|@"])
  fun op omniCom2num_num2omniCom x = x
    val op omniCom2num_num2omniCom =
    ThmBind.DT(((("projectTypes",29),
                [("projectTypes",[27])]),["DISK_THM"]),
               [ThmBind.read"%103%51%116%114$0@%162%147%180@4%118%195%190$0@3$0@2|@"])
  fun op num2omniCom_11 x = x
    val op num2omniCom_11 =
    ThmBind.DT(((("projectTypes",30),
                [("bool",[26]),("projectTypes",[27])]),["DISK_THM"]),
               [ThmBind.read"%103%51%103%52%125%114$1@%162%147%180@4%125%114$0@%162%147%180@4%116%119%190$1@2%190$0@3%118$1@$0@4|@|@"])
  fun op omniCom2num_11 x = x
    val op omniCom2num_11 =
    ThmBind.DT(((("projectTypes",31),
                [("bool",[26]),("projectTypes",[27])]),["DISK_THM"]),
               [ThmBind.read"%104%19%104%24%116%118%195$1@2%195$0@3%119$1@$0@2|@|@"])
  fun op num2omniCom_ONTO x = x
    val op num2omniCom_ONTO =
    ThmBind.DT(((("projectTypes",32),
                [("bool",[25,62]),("projectTypes",[27])]),["DISK_THM"]),
               [ThmBind.read"%104%19%138%51%112%119$1@%190$0@3%114$0@%162%147%180@4|@|@"])
  fun op omniCom2num_ONTO x = x
    val op omniCom2num_ONTO =
    ThmBind.DT(((("projectTypes",33),
                [("bool",[26]),("projectTypes",[27])]),["DISK_THM"]),
               [ThmBind.read"%103%51%116%114$0@%162%147%180@4%139%19%118$1@%195$0@2|@2|@"])
  fun op num2omniCom_thm x = x
    val op num2omniCom_thm =
    ThmBind.DT(((("projectTypes",36),[("projectTypes",[34,35])]),[]),
               [ThmBind.read"%112%119%190%113@2%189@2%119%190%162%146%180@4%198@2"])
  fun op omniCom2num_thm x = x
    val op omniCom2num_thm =
    ThmBind.DT(((("projectTypes",37),
                [("bool",[25,53]),("numeral",[3,7]),
                 ("projectTypes",[29,34,35])]),["DISK_THM"]),
               [ThmBind.read"%112%118%195%189@2%113@2%118%195%198@2%162%146%180@4"])
  fun op omniCom_EQ_omniCom x = x
    val op omniCom_EQ_omniCom =
    ThmBind.DT(((("projectTypes",38),
                [("bool",[57]),("projectTypes",[31])]),["DISK_THM"]),
               [ThmBind.read"%104%19%104%24%116%119$1@$0@2%118%195$1@2%195$0@3|@|@"])
  fun op omniCom_case_def x = x
    val op omniCom_case_def =
    ThmBind.DT(((("projectTypes",41),
                [("bool",[55,63]),("numeral",[3,6]),
                 ("projectTypes",[37,40])]),["DISK_THM"]),
               [ThmBind.read"%112%92%60%92%62%115%196%189@$1@$0@2$1@|@|@2%92%60%92%62%115%196%198@$1@$0@2$0@|@|@2"])
  fun op datatype_omniCom x = x
    val op datatype_omniCom =
    ThmBind.DT(((("projectTypes",42),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%157%46%189@%198@2"])
  fun op omniCom_distinct x = x
    val op omniCom_distinct =
    ThmBind.DT(((("projectTypes",43),
                [("numeral",[3,6]),
                 ("projectTypes",[37,38])]),["DISK_THM"]),
               [ThmBind.read"%212%119%189@%198@2"])
  fun op omniCom_case_cong x = x
    val op omniCom_case_cong =
    ThmBind.DT(((("projectTypes",44),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16]),
                 ("projectTypes",[32,34,35,41]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%104%2%104%8%92%60%92%62%125%112%119$3@$2@2%112%125%119$2@%189@2%115$1@%61@3%125%119$2@%198@2%115$0@%63@5%115%196$3@$1@$0@2%196$2@%61@%63@3|@|@|@|@"])
  fun op omniCom_nchotomy x = x
    val op omniCom_nchotomy =
    ThmBind.DT(((("projectTypes",45),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16]),
                 ("projectTypes",[32,34,35]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%104%19%181%119$0@%189@2%119$0@%198@2|@"])
  fun op omniCom_Axiom x = x
    val op omniCom_Axiom =
    ThmBind.DT(((("projectTypes",46),
                [("bool",[8,14,25,55,63]),("numeral",[3,8]),
                 ("projectTypes",[37])]),["DISK_THM"]),
               [ThmBind.read"%92%83%92%84%128%33%112%115$0%189@2$2@2%115$0%198@2$1@2|@|@|@"])
  fun op omniCom_induction x = x
    val op omniCom_induction =
    ThmBind.DT(((("projectTypes",47),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16]),
                 ("projectTypes",[32,34,35]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%96%14%125%112$0%189@2$0%198@3%104%19$1$0@|@2|@"])
  fun op num2principal_principal2num x = x
    val op num2principal_principal2num =
    ThmBind.DT(((("projectTypes",50),
                [("projectTypes",[49])]),["DISK_THM"]),
               [ThmBind.read"%107%22%122%193%205$0@3$0@|@"])
  fun op principal2num_num2principal x = x
    val op principal2num_num2principal =
    ThmBind.DT(((("projectTypes",51),
                [("projectTypes",[49])]),["DISK_THM"]),
               [ThmBind.read"%103%51%116%114$0@%162%147%180@4%118%205%193$0@3$0@2|@"])
  fun op num2principal_11 x = x
    val op num2principal_11 =
    ThmBind.DT(((("projectTypes",52),
                [("bool",[26]),("projectTypes",[49])]),["DISK_THM"]),
               [ThmBind.read"%103%51%103%52%125%114$1@%162%147%180@4%125%114$0@%162%147%180@4%116%122%193$1@2%193$0@3%118$1@$0@4|@|@"])
  fun op principal2num_11 x = x
    val op principal2num_11 =
    ThmBind.DT(((("projectTypes",53),
                [("bool",[26]),("projectTypes",[49])]),["DISK_THM"]),
               [ThmBind.read"%107%22%107%27%116%118%205$1@2%205$0@3%122$1@$0@2|@|@"])
  fun op num2principal_ONTO x = x
    val op num2principal_ONTO =
    ThmBind.DT(((("projectTypes",54),
                [("bool",[25,62]),("projectTypes",[49])]),["DISK_THM"]),
               [ThmBind.read"%107%22%138%51%112%122$1@%193$0@3%114$0@%162%147%180@4|@|@"])
  fun op principal2num_ONTO x = x
    val op principal2num_ONTO =
    ThmBind.DT(((("projectTypes",55),
                [("bool",[26]),("projectTypes",[49])]),["DISK_THM"]),
               [ThmBind.read"%103%51%116%114$0@%162%147%180@4%142%22%118$1@%205$0@2|@2|@"])
  fun op num2principal_thm x = x
    val op num2principal_thm =
    ThmBind.DT(((("projectTypes",58),[("projectTypes",[56,57])]),[]),
               [ThmBind.read"%112%122%193%113@2%167@2%122%193%162%146%180@4%165@2"])
  fun op principal2num_thm x = x
    val op principal2num_thm =
    ThmBind.DT(((("projectTypes",59),
                [("bool",[25,53]),("numeral",[3,7]),
                 ("projectTypes",[51,56,57])]),["DISK_THM"]),
               [ThmBind.read"%112%118%205%167@2%113@2%118%205%165@2%162%146%180@4"])
  fun op principal_EQ_principal x = x
    val op principal_EQ_principal =
    ThmBind.DT(((("projectTypes",60),
                [("bool",[57]),("projectTypes",[53])]),["DISK_THM"]),
               [ThmBind.read"%107%22%107%27%116%122$1@$0@2%118%205$1@2%205$0@3|@|@"])
  fun op principal_case_def x = x
    val op principal_case_def =
    ThmBind.DT(((("projectTypes",63),
                [("bool",[55,63]),("numeral",[3,6]),
                 ("projectTypes",[59,62])]),["DISK_THM"]),
               [ThmBind.read"%112%92%60%92%62%115%206%167@$1@$0@2$1@|@|@2%92%60%92%62%115%206%165@$1@$0@2$0@|@|@2"])
  fun op datatype_principal x = x
    val op datatype_principal =
    ThmBind.DT(((("projectTypes",64),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%157%50%167@%165@2"])
  fun op principal_distinct x = x
    val op principal_distinct =
    ThmBind.DT(((("projectTypes",65),
                [("numeral",[3,6]),
                 ("projectTypes",[59,60])]),["DISK_THM"]),
               [ThmBind.read"%212%122%167@%165@2"])
  fun op principal_case_cong x = x
    val op principal_case_cong =
    ThmBind.DT(((("projectTypes",66),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16]),
                 ("projectTypes",[54,56,57,63]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%107%5%107%11%92%60%92%62%125%112%122$3@$2@2%112%125%122$2@%167@2%115$1@%61@3%125%122$2@%165@2%115$0@%63@5%115%206$3@$1@$0@2%206$2@%61@%63@3|@|@|@|@"])
  fun op principal_nchotomy x = x
    val op principal_nchotomy =
    ThmBind.DT(((("projectTypes",67),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16]),
                 ("projectTypes",[54,56,57]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%107%22%181%122$0@%167@2%122$0@%165@2|@"])
  fun op principal_Axiom x = x
    val op principal_Axiom =
    ThmBind.DT(((("projectTypes",68),
                [("bool",[8,14,25,55,63]),("numeral",[3,8]),
                 ("projectTypes",[59])]),["DISK_THM"]),
               [ThmBind.read"%92%83%92%84%134%36%112%115$0%167@2$2@2%115$0%165@2$1@2|@|@|@"])
  fun op principal_induction x = x
    val op principal_induction =
    ThmBind.DT(((("projectTypes",69),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16]),
                 ("projectTypes",[54,56,57]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%100%17%125%112$0%165@2$0%167@3%107%22$1$0@|@2|@"])
  fun op datatype_commands x = x
    val op datatype_commands =
    ThmBind.DT(((("projectTypes",78),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%157%32%168@%166@2"])
  fun op commands_11 x = x
    val op commands_11 =
    ThmBind.DT(((("projectTypes",79),
                [("bool",[26,55,62,180]),("ind_type",[33,34]),
                 ("pair",[8,9]),
                 ("projectTypes",[71,72,73,74,75])]),["DISK_THM"]),
               [ThmBind.read"%112%106%21%106%26%116%117%168$1@2%168$0@3%121$1@$0@2|@|@2%104%19%104%24%116%117%166$1@2%166$0@3%119$1@$0@2|@|@2"])
  fun op commands_distinct x = x
    val op commands_distinct =
    ThmBind.DT(((("projectTypes",80),
                [("bool",[25,26,46,53,62,180]),("ind_type",[33,34]),
                 ("pair",[8,9]),
                 ("projectTypes",[71,72,73,74,75])]),["DISK_THM"]),
               [ThmBind.read"%104%24%106%21%212%117%168$0@2%166$1@3|@|@"])
  fun op commands_case_cong x = x
    val op commands_case_cong =
    ThmBind.DT(((("projectTypes",81),
                [("bool",[26,180]),
                 ("projectTypes",[71,72,73,74,75,76])]),["DISK_THM"]),
               [ThmBind.read"%93%1%93%7%98%35%95%40%125%112%117$3@$2@2%112%106%21%125%117$3@%168$0@3%115$2$0@2%38$0@3|@2%104%19%125%117$3@%166$0@3%115$1$0@2%41$0@3|@4%115%182$3@$1@$0@2%182$2@%38@%41@3|@|@|@|@"])
  fun op commands_nchotomy x = x
    val op commands_nchotomy =
    ThmBind.DT(((("projectTypes",82),
                [("bool",[26,180]),
                 ("projectTypes",[71,72,73,74,75])]),["DISK_THM"]),
               [ThmBind.read"%93%31%181%141%48%117$1@%168$0@2|@2%139%45%117$1@%166$0@2|@2|@"])
  fun op commands_Axiom x = x
    val op commands_Axiom =
    ThmBind.DT(((("projectTypes",83),
                [("bool",[26,180]),("ind_type",[33,34]),("pair",[8,9]),
                 ("projectTypes",[71,72,73,74,75])]),["DISK_THM"]),
               [ThmBind.read"%98%39%95%40%126%42%112%106%21%115$1%168$0@3$3$0@2|@2%104%19%115$1%166$0@3$2$0@2|@2|@|@|@"])
  fun op commands_induction x = x
    val op commands_induction =
    ThmBind.DT(((("projectTypes",84),
                [("bool",[26]),
                 ("projectTypes",[71,72,73,74,75])]),["DISK_THM"]),
               [ThmBind.read"%94%13%125%112%106%48$1%168$0@2|@2%104%45$1%166$0@2|@3%93%30$1$0@|@2|@"])
  fun op num2state_state2num x = x
    val op num2state_state2num =
    ThmBind.DT(((("projectTypes",87),
                [("projectTypes",[86])]),["DISK_THM"]),
               [ThmBind.read"%109%23%124%194%209$0@3$0@|@"])
  fun op state2num_num2state x = x
    val op state2num_num2state =
    ThmBind.DT(((("projectTypes",88),
                [("projectTypes",[86])]),["DISK_THM"]),
               [ThmBind.read"%103%51%116%114$0@%162%146%146%146%180@6%118%209%194$0@3$0@2|@"])
  fun op num2state_11 x = x
    val op num2state_11 =
    ThmBind.DT(((("projectTypes",89),
                [("bool",[26]),("projectTypes",[86])]),["DISK_THM"]),
               [ThmBind.read"%103%51%103%52%125%114$1@%162%146%146%146%180@6%125%114$0@%162%146%146%146%180@6%116%124%194$1@2%194$0@3%118$1@$0@4|@|@"])
  fun op state2num_11 x = x
    val op state2num_11 =
    ThmBind.DT(((("projectTypes",90),
                [("bool",[26]),("projectTypes",[86])]),["DISK_THM"]),
               [ThmBind.read"%109%23%109%28%116%118%209$1@2%209$0@3%124$1@$0@2|@|@"])
  fun op num2state_ONTO x = x
    val op num2state_ONTO =
    ThmBind.DT(((("projectTypes",91),
                [("bool",[25,62]),("projectTypes",[86])]),["DISK_THM"]),
               [ThmBind.read"%109%23%138%51%112%124$1@%194$0@3%114$0@%162%146%146%146%180@6|@|@"])
  fun op state2num_ONTO x = x
    val op state2num_ONTO =
    ThmBind.DT(((("projectTypes",92),
                [("bool",[26]),("projectTypes",[86])]),["DISK_THM"]),
               [ThmBind.read"%103%51%116%114$0@%162%146%146%146%180@6%143%23%118$1@%209$0@2|@2|@"])
  fun op num2state_thm x = x
    val op num2state_thm =
    ThmBind.DT(((("projectTypes",100),
                [("projectTypes",[93,94,95,96,97,98,99])]),[]),
               [ThmBind.read"%112%124%194%113@2%164@2%112%124%194%162%146%180@4%153@2%112%124%194%162%147%180@4%160@2%112%124%194%162%146%146%180@5%151@2%112%124%194%162%147%146%180@5%158@2%112%124%194%162%146%147%180@5%169@2%124%194%162%147%147%180@5%149@7"])
  fun op state2num_thm x = x
    val op state2num_thm =
    ThmBind.DT(((("projectTypes",101),
                [("bool",[25]),("numeral",[3,7]),
                 ("projectTypes",
                 [88,93,94,95,96,97,98,99])]),["DISK_THM"]),
               [ThmBind.read"%112%118%209%164@2%113@2%112%118%209%153@2%162%146%180@4%112%118%209%160@2%162%147%180@4%112%118%209%151@2%162%146%146%180@5%112%118%209%158@2%162%147%146%180@5%112%118%209%169@2%162%146%147%180@5%118%209%149@2%162%147%147%180@10"])
  fun op state_EQ_state x = x
    val op state_EQ_state =
    ThmBind.DT(((("projectTypes",102),
                [("bool",[57]),("projectTypes",[90])]),["DISK_THM"]),
               [ThmBind.read"%109%23%109%28%116%124$1@$0@2%118%209$1@2%209$0@3|@|@"])
  fun op state_case_def x = x
    val op state_case_def =
    ThmBind.DT(((("projectTypes",105),
                [("bool",[53,55,63]),("numeral",[3,6,7]),
                 ("projectTypes",[101,104])]),["DISK_THM"]),
               [ThmBind.read"%112%92%60%92%62%92%64%92%66%92%68%92%70%92%72%115%210%164@$6@$5@$4@$3@$2@$1@$0@2$6@|@|@|@|@|@|@|@2%112%92%60%92%62%92%64%92%66%92%68%92%70%92%72%115%210%153@$6@$5@$4@$3@$2@$1@$0@2$5@|@|@|@|@|@|@|@2%112%92%60%92%62%92%64%92%66%92%68%92%70%92%72%115%210%160@$6@$5@$4@$3@$2@$1@$0@2$4@|@|@|@|@|@|@|@2%112%92%60%92%62%92%64%92%66%92%68%92%70%92%72%115%210%151@$6@$5@$4@$3@$2@$1@$0@2$3@|@|@|@|@|@|@|@2%112%92%60%92%62%92%64%92%66%92%68%92%70%92%72%115%210%158@$6@$5@$4@$3@$2@$1@$0@2$2@|@|@|@|@|@|@|@2%112%92%60%92%62%92%64%92%66%92%68%92%70%92%72%115%210%169@$6@$5@$4@$3@$2@$1@$0@2$1@|@|@|@|@|@|@|@2%92%60%92%62%92%64%92%66%92%68%92%70%92%72%115%210%149@$6@$5@$4@$3@$2@$1@$0@2$0@|@|@|@|@|@|@|@7"])
  fun op datatype_state x = x
    val op datatype_state =
    ThmBind.DT(((("projectTypes",106),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%157%59%164@%153@%160@%151@%158@%169@%149@2"])
  fun op state_distinct x = x
    val op state_distinct =
    ThmBind.DT(((("projectTypes",107),
                [("numeral",[3,6]),
                 ("projectTypes",[101,102])]),["DISK_THM"]),
               [ThmBind.read"%112%212%124%164@%153@3%112%212%124%164@%160@3%112%212%124%164@%151@3%112%212%124%164@%158@3%112%212%124%164@%169@3%112%212%124%164@%149@3%112%212%124%153@%160@3%112%212%124%153@%151@3%112%212%124%153@%158@3%112%212%124%153@%169@3%112%212%124%153@%149@3%112%212%124%160@%151@3%112%212%124%160@%158@3%112%212%124%160@%169@3%112%212%124%160@%149@3%112%212%124%151@%158@3%112%212%124%151@%169@3%112%212%124%151@%149@3%112%212%124%158@%169@3%112%212%124%158@%149@3%212%124%169@%149@22"])
  fun op state_case_cong x = x
    val op state_case_cong =
    ThmBind.DT(((("projectTypes",108),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("projectTypes",[91,93,94,95,96,97,98,99,105]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%109%6%109%12%92%60%92%62%92%64%92%66%92%68%92%70%92%72%125%112%124$8@$7@2%112%125%124$7@%164@2%115$6@%61@3%112%125%124$7@%153@2%115$5@%63@3%112%125%124$7@%160@2%115$4@%65@3%112%125%124$7@%151@2%115$3@%67@3%112%125%124$7@%158@2%115$2@%69@3%112%125%124$7@%169@2%115$1@%71@3%125%124$7@%149@2%115$0@%73@10%115%210$8@$6@$5@$4@$3@$2@$1@$0@2%210$7@%61@%63@%65@%67@%69@%71@%73@3|@|@|@|@|@|@|@|@|@"])
  fun op state_nchotomy x = x
    val op state_nchotomy =
    ThmBind.DT(((("projectTypes",109),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("projectTypes",[91,93,94,95,96,97,98,99]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%109%23%181%124$0@%164@2%181%124$0@%153@2%181%124$0@%160@2%181%124$0@%151@2%181%124$0@%158@2%181%124$0@%169@2%124$0@%149@7|@"])
  fun op state_Axiom x = x
    val op state_Axiom =
    ThmBind.DT(((("projectTypes",110),
                [("bool",[8,14,25,53,55,63]),("numeral",[3,8]),
                 ("projectTypes",[101])]),["DISK_THM"]),
               [ThmBind.read"%92%83%92%84%92%85%92%86%92%87%92%88%92%89%136%37%112%115$0%164@2$7@2%112%115$0%153@2$6@2%112%115$0%160@2$5@2%112%115$0%151@2$4@2%112%115$0%158@2$3@2%112%115$0%169@2$2@2%115$0%149@2$1@7|@|@|@|@|@|@|@|@"])
  fun op state_induction x = x
    val op state_induction =
    ThmBind.DT(((("projectTypes",111),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("projectTypes",[91,93,94,95,96,97,98,99]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%102%18%125%112$0%149@2%112$0%151@2%112$0%153@2%112$0%158@2%112$0%160@2%112$0%164@2$0%169@8%109%23$1$0@|@2|@"])
  fun op num2output_output2num x = x
    val op num2output_output2num =
    ThmBind.DT(((("projectTypes",114),
                [("projectTypes",[113])]),["DISK_THM"]),
               [ThmBind.read"%105%20%120%191%199$0@3$0@|@"])
  fun op output2num_num2output x = x
    val op output2num_num2output =
    ThmBind.DT(((("projectTypes",115),
                [("projectTypes",[113])]),["DISK_THM"]),
               [ThmBind.read"%103%51%116%114$0@%162%146%147%146%180@6%118%199%191$0@3$0@2|@"])
  fun op num2output_11 x = x
    val op num2output_11 =
    ThmBind.DT(((("projectTypes",116),
                [("bool",[26]),("projectTypes",[113])]),["DISK_THM"]),
               [ThmBind.read"%103%51%103%52%125%114$1@%162%146%147%146%180@6%125%114$0@%162%146%147%146%180@6%116%120%191$1@2%191$0@3%118$1@$0@4|@|@"])
  fun op output2num_11 x = x
    val op output2num_11 =
    ThmBind.DT(((("projectTypes",117),
                [("bool",[26]),("projectTypes",[113])]),["DISK_THM"]),
               [ThmBind.read"%105%20%105%25%116%118%199$1@2%199$0@3%120$1@$0@2|@|@"])
  fun op num2output_ONTO x = x
    val op num2output_ONTO =
    ThmBind.DT(((("projectTypes",118),
                [("bool",[25,62]),("projectTypes",[113])]),["DISK_THM"]),
               [ThmBind.read"%105%20%138%51%112%120$1@%191$0@3%114$0@%162%146%147%146%180@6|@|@"])
  fun op output2num_ONTO x = x
    val op output2num_ONTO =
    ThmBind.DT(((("projectTypes",119),
                [("bool",[26]),("projectTypes",[113])]),["DISK_THM"]),
               [ThmBind.read"%103%51%116%114$0@%162%146%147%146%180@6%140%20%118$1@%199$0@2|@2|@"])
  fun op num2output_thm x = x
    val op num2output_thm =
    ThmBind.DT(((("projectTypes",129),
                [("projectTypes",
                 [120,121,122,123,124,125,126,127,128])]),[]),
               [ThmBind.read"%112%120%191%113@2%156@2%112%120%191%162%146%180@4%161@2%112%120%191%162%147%180@4%155@2%112%120%191%162%146%146%180@5%159@2%112%120%191%162%147%146%180@5%170@2%112%120%191%162%146%147%180@5%154@2%112%120%191%162%147%147%180@5%163@2%112%120%191%162%146%146%146%180@6%178@2%120%191%162%147%146%146%180@6%179@9"])
  fun op output2num_thm x = x
    val op output2num_thm =
    ThmBind.DT(((("projectTypes",130),
                [("bool",[25,53]),("numeral",[3,7]),
                 ("projectTypes",
                 [115,120,121,122,123,124,125,126,127,
                  128])]),["DISK_THM"]),
               [ThmBind.read"%112%118%199%156@2%113@2%112%118%199%161@2%162%146%180@4%112%118%199%155@2%162%147%180@4%112%118%199%159@2%162%146%146%180@5%112%118%199%170@2%162%147%146%180@5%112%118%199%154@2%162%146%147%180@5%112%118%199%163@2%162%147%147%180@5%112%118%199%178@2%162%146%146%146%180@6%118%199%179@2%162%147%146%146%180@13"])
  fun op output_EQ_output x = x
    val op output_EQ_output =
    ThmBind.DT(((("projectTypes",131),
                [("bool",[57]),("projectTypes",[117])]),["DISK_THM"]),
               [ThmBind.read"%105%20%105%25%116%120$1@$0@2%118%199$1@2%199$0@3|@|@"])
  fun op output_case_def x = x
    val op output_case_def =
    ThmBind.DT(((("projectTypes",134),
                [("bool",[53,55,63]),("numeral",[3,6,7]),
                 ("projectTypes",[130,133])]),["DISK_THM"]),
               [ThmBind.read"%112%92%60%92%62%92%64%92%66%92%68%92%70%92%72%92%74%92%76%115%200%156@$8@$7@$6@$5@$4@$3@$2@$1@$0@2$8@|@|@|@|@|@|@|@|@|@2%112%92%60%92%62%92%64%92%66%92%68%92%70%92%72%92%74%92%76%115%200%161@$8@$7@$6@$5@$4@$3@$2@$1@$0@2$7@|@|@|@|@|@|@|@|@|@2%112%92%60%92%62%92%64%92%66%92%68%92%70%92%72%92%74%92%76%115%200%155@$8@$7@$6@$5@$4@$3@$2@$1@$0@2$6@|@|@|@|@|@|@|@|@|@2%112%92%60%92%62%92%64%92%66%92%68%92%70%92%72%92%74%92%76%115%200%159@$8@$7@$6@$5@$4@$3@$2@$1@$0@2$5@|@|@|@|@|@|@|@|@|@2%112%92%60%92%62%92%64%92%66%92%68%92%70%92%72%92%74%92%76%115%200%170@$8@$7@$6@$5@$4@$3@$2@$1@$0@2$4@|@|@|@|@|@|@|@|@|@2%112%92%60%92%62%92%64%92%66%92%68%92%70%92%72%92%74%92%76%115%200%154@$8@$7@$6@$5@$4@$3@$2@$1@$0@2$3@|@|@|@|@|@|@|@|@|@2%112%92%60%92%62%92%64%92%66%92%68%92%70%92%72%92%74%92%76%115%200%163@$8@$7@$6@$5@$4@$3@$2@$1@$0@2$2@|@|@|@|@|@|@|@|@|@2%112%92%60%92%62%92%64%92%66%92%68%92%70%92%72%92%74%92%76%115%200%178@$8@$7@$6@$5@$4@$3@$2@$1@$0@2$1@|@|@|@|@|@|@|@|@|@2%92%60%92%62%92%64%92%66%92%68%92%70%92%72%92%74%92%76%115%200%179@$8@$7@$6@$5@$4@$3@$2@$1@$0@2$0@|@|@|@|@|@|@|@|@|@9"])
  fun op datatype_output x = x
    val op datatype_output =
    ThmBind.DT(((("projectTypes",135),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%157%47%156@%161@%155@%159@%170@%154@%163@%178@%179@2"])
  fun op output_distinct x = x
    val op output_distinct =
    ThmBind.DT(((("projectTypes",136),
                [("numeral",[3,6]),
                 ("projectTypes",[130,131])]),["DISK_THM"]),
               [ThmBind.read"%112%212%120%156@%161@3%112%212%120%156@%155@3%112%212%120%156@%159@3%112%212%120%156@%170@3%112%212%120%156@%154@3%112%212%120%156@%163@3%112%212%120%156@%178@3%112%212%120%156@%179@3%112%212%120%161@%155@3%112%212%120%161@%159@3%112%212%120%161@%170@3%112%212%120%161@%154@3%112%212%120%161@%163@3%112%212%120%161@%178@3%112%212%120%161@%179@3%112%212%120%155@%159@3%112%212%120%155@%170@3%112%212%120%155@%154@3%112%212%120%155@%163@3%112%212%120%155@%178@3%112%212%120%155@%179@3%112%212%120%159@%170@3%112%212%120%159@%154@3%112%212%120%159@%163@3%112%212%120%159@%178@3%112%212%120%159@%179@3%112%212%120%170@%154@3%112%212%120%170@%163@3%112%212%120%170@%178@3%112%212%120%170@%179@3%112%212%120%154@%163@3%112%212%120%154@%178@3%112%212%120%154@%179@3%112%212%120%163@%178@3%112%212%120%163@%179@3%212%120%178@%179@37"])
  fun op output_case_cong x = x
    val op output_case_cong =
    ThmBind.DT(((("projectTypes",137),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("projectTypes",
                 [118,120,121,122,123,124,125,126,127,128,134]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%105%3%105%9%92%60%92%62%92%64%92%66%92%68%92%70%92%72%92%74%92%76%125%112%120$10@$9@2%112%125%120$9@%156@2%115$8@%61@3%112%125%120$9@%161@2%115$7@%63@3%112%125%120$9@%155@2%115$6@%65@3%112%125%120$9@%159@2%115$5@%67@3%112%125%120$9@%170@2%115$4@%69@3%112%125%120$9@%154@2%115$3@%71@3%112%125%120$9@%163@2%115$2@%73@3%112%125%120$9@%178@2%115$1@%75@3%125%120$9@%179@2%115$0@%77@12%115%200$10@$8@$7@$6@$5@$4@$3@$2@$1@$0@2%200$9@%61@%63@%65@%67@%69@%71@%73@%75@%77@3|@|@|@|@|@|@|@|@|@|@|@"])
  fun op output_nchotomy x = x
    val op output_nchotomy =
    ThmBind.DT(((("projectTypes",138),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("projectTypes",
                 [118,120,121,122,123,124,125,126,127,128]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%105%20%181%120$0@%156@2%181%120$0@%161@2%181%120$0@%155@2%181%120$0@%159@2%181%120$0@%170@2%181%120$0@%154@2%181%120$0@%163@2%181%120$0@%178@2%120$0@%179@9|@"])
  fun op output_Axiom x = x
    val op output_Axiom =
    ThmBind.DT(((("projectTypes",139),
                [("bool",[8,14,25,53,55,63]),("numeral",[3,8]),
                 ("projectTypes",[130])]),["DISK_THM"]),
               [ThmBind.read"%92%83%92%84%92%85%92%86%92%87%92%88%92%89%92%90%92%91%130%34%112%115$0%156@2$9@2%112%115$0%161@2$8@2%112%115$0%155@2$7@2%112%115$0%159@2$6@2%112%115$0%170@2$5@2%112%115$0%154@2$4@2%112%115$0%163@2$3@2%112%115$0%178@2$2@2%115$0%179@2$1@9|@|@|@|@|@|@|@|@|@|@"])
  fun op output_induction x = x
    val op output_induction =
    ThmBind.DT(((("projectTypes",140),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("projectTypes",
                 [118,120,121,122,123,124,125,126,127,128]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%97%15%125%112$0%154@2%112$0%155@2%112$0%156@2%112$0%159@2%112$0%161@2%112$0%163@2%112$0%170@2%112$0%178@2$0%179@10%105%20$1$0@|@2|@"])
  fun op principal_distinct_clauses x = x
    val op principal_distinct_clauses =
    ThmBind.DT(((("projectTypes",141),
                [("numeral",[3,6]),
                 ("projectTypes",[59,60])]),["DISK_THM"]),
               [ThmBind.read"%212%122%167@%165@2"])
  fun op platoonLeaderCom_distinct_clauses x = x
    val op platoonLeaderCom_distinct_clauses =
    ThmBind.DT(((("projectTypes",142),
                [("numeral",[3,6]),
                 ("projectTypes",[15,16])]),["DISK_THM"]),
               [ThmBind.read"%112%212%121%186@%188@3%112%212%121%186@%185@3%112%212%121%186@%187@3%112%212%121%186@%208@3%112%212%121%186@%184@3%112%212%121%188@%185@3%112%212%121%188@%187@3%112%212%121%188@%208@3%112%212%121%188@%184@3%112%212%121%185@%187@3%112%212%121%185@%208@3%112%212%121%185@%184@3%112%212%121%187@%208@3%112%212%121%187@%184@3%212%121%208@%184@16"])
  fun op omniCom_distinct_clauses x = x
    val op omniCom_distinct_clauses =
    ThmBind.DT(((("projectTypes",143),
                [("numeral",[3,6]),
                 ("projectTypes",[37,38])]),["DISK_THM"]),
               [ThmBind.read"%212%119%189@%198@2"])
  fun op commands_distinct_clauses x = x
    val op commands_distinct_clauses =
    ThmBind.DT(((("projectTypes",144),
                [("bool",[25,26,46,53,62,180]),("ind_type",[33,34]),
                 ("pair",[8,9]),
                 ("projectTypes",[71,72,73,74,75])]),["DISK_THM"]),
               [ThmBind.read"%104%24%106%21%212%117%168$0@2%166$1@3|@|@"])
  fun op state_distinct_clauses x = x
    val op state_distinct_clauses =
    ThmBind.DT(((("projectTypes",145),
                [("numeral",[3,6]),
                 ("projectTypes",[101,102])]),["DISK_THM"]),
               [ThmBind.read"%112%212%124%164@%153@3%112%212%124%164@%160@3%112%212%124%164@%151@3%112%212%124%164@%158@3%112%212%124%164@%169@3%112%212%124%164@%149@3%112%212%124%153@%160@3%112%212%124%153@%151@3%112%212%124%153@%158@3%112%212%124%153@%169@3%112%212%124%153@%149@3%112%212%124%160@%151@3%112%212%124%160@%158@3%112%212%124%160@%169@3%112%212%124%160@%149@3%112%212%124%151@%158@3%112%212%124%151@%169@3%112%212%124%151@%149@3%112%212%124%158@%169@3%112%212%124%158@%149@3%212%124%169@%149@22"])
  fun op output_distinct_clauses x = x
    val op output_distinct_clauses =
    ThmBind.DT(((("projectTypes",146),
                [("numeral",[3,6]),
                 ("projectTypes",[130,131])]),["DISK_THM"]),
               [ThmBind.read"%112%212%120%156@%161@3%112%212%120%156@%155@3%112%212%120%156@%159@3%112%212%120%156@%170@3%112%212%120%156@%154@3%112%212%120%156@%163@3%112%212%120%156@%178@3%112%212%120%156@%179@3%112%212%120%161@%155@3%112%212%120%161@%159@3%112%212%120%161@%170@3%112%212%120%161@%154@3%112%212%120%161@%163@3%112%212%120%161@%178@3%112%212%120%161@%179@3%112%212%120%155@%159@3%112%212%120%155@%170@3%112%212%120%155@%154@3%112%212%120%155@%163@3%112%212%120%155@%178@3%112%212%120%155@%179@3%112%212%120%159@%170@3%112%212%120%159@%154@3%112%212%120%159@%163@3%112%212%120%159@%178@3%112%212%120%159@%179@3%112%212%120%170@%154@3%112%212%120%170@%163@3%112%212%120%170@%178@3%112%212%120%170@%179@3%112%212%120%154@%163@3%112%212%120%154@%178@3%112%212%120%154@%179@3%112%212%120%163@%178@3%112%212%120%163@%179@3%212%120%178@%179@37"])
  fun op commands_one_one x = x
    val op commands_one_one =
    ThmBind.DT(((("projectTypes",147),
                [("bool",[26,55,62,180]),("ind_type",[33,34]),
                 ("pair",[8,9]),
                 ("projectTypes",[71,72,73,74,75])]),["DISK_THM"]),
               [ThmBind.read"%112%106%21%106%26%116%117%168$1@2%168$0@3%121$1@$0@2|@|@2%104%19%104%24%116%117%166$1@2%166$0@3%119$1@$0@2|@|@2"])

  val _ = DB.bindl "projectTypes"
  [("platoonLeaderCom_TY_DEF",platoonLeaderCom_TY_DEF,DB.Def),
   ("platoonLeaderCom_BIJ",platoonLeaderCom_BIJ,DB.Def),
   ("platoonLeaderCom_size_def",platoonLeaderCom_size_def,DB.Def),
   ("platoonLeaderCom_CASE",platoonLeaderCom_CASE,DB.Def),
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
   ("num2platoonLeaderCom_platoonLeaderCom2num",
    num2platoonLeaderCom_platoonLeaderCom2num,
    DB.Thm),
   ("platoonLeaderCom2num_num2platoonLeaderCom",
    platoonLeaderCom2num_num2platoonLeaderCom,
    DB.Thm), ("num2platoonLeaderCom_11",num2platoonLeaderCom_11,DB.Thm),
   ("platoonLeaderCom2num_11",platoonLeaderCom2num_11,DB.Thm),
   ("num2platoonLeaderCom_ONTO",num2platoonLeaderCom_ONTO,DB.Thm),
   ("platoonLeaderCom2num_ONTO",platoonLeaderCom2num_ONTO,DB.Thm),
   ("num2platoonLeaderCom_thm",num2platoonLeaderCom_thm,DB.Thm),
   ("platoonLeaderCom2num_thm",platoonLeaderCom2num_thm,DB.Thm),
   ("platoonLeaderCom_EQ_platoonLeaderCom",
    platoonLeaderCom_EQ_platoonLeaderCom,
    DB.Thm),
   ("platoonLeaderCom_case_def",platoonLeaderCom_case_def,DB.Thm),
   ("datatype_platoonLeaderCom",datatype_platoonLeaderCom,DB.Thm),
   ("platoonLeaderCom_distinct",platoonLeaderCom_distinct,DB.Thm),
   ("platoonLeaderCom_case_cong",platoonLeaderCom_case_cong,DB.Thm),
   ("platoonLeaderCom_nchotomy",platoonLeaderCom_nchotomy,DB.Thm),
   ("platoonLeaderCom_Axiom",platoonLeaderCom_Axiom,DB.Thm),
   ("platoonLeaderCom_induction",platoonLeaderCom_induction,DB.Thm),
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
   ("platoonLeaderCom_distinct_clauses",
    platoonLeaderCom_distinct_clauses,
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
        "NTY12.projectTypes,16.platoonLeaderComNTY12.projectTypes,7.omniComNTY12.projectTypes,9.principalNTY12.projectTypes,8.commandsNTY12.projectTypes,5.stateNTY12.projectTypes,6.output"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "projectTypes",
    thydataty = "TermGrammarDeltas",
    read = ThmBind.read,
    data =
        "OO20.platoonLeaderCom2num4.%202OO20.num2platoonLeaderCom4.%192OO15.contingencyPlan4.%186OO9.moveToORP4.%188OO10.conductORP4.%185OO6.formST4.%187OO12.returnToUnit4.%208OO8.complete4.%184OO21.platoonLeaderCom_size4.%204OO21.platoonLeaderCom_CASE4.%203OO4.case4.%203OO11.omniCom2num4.%195OO11.num2omniCom4.%190OO4.none4.%189OO6.omniNA4.%198OO12.omniCom_size4.%197OO12.omniCom_CASE4.%196OO4.case4.%196OO13.principal2num4.%205OO13.num2principal4.%193OO13.PlatoonLeader4.%167OO4.Omni4.%165OO14.principal_size4.%207OO14.principal_CASE4.%206OO4.case4.%206OO16.PlatoonLeaderCOM4.%168OO7.OmniCOM4.%166OO13.commands_CASE4.%182OO13.commands_size4.%183OO4.case4.%182OO9.state2num4.%209OO9.num2state4.%194OO9.ORP_RECON4.%164OO16.CONTINGENCY_PLAN4.%153OO11.MOVE_TO_ORP4.%160OO11.CONDUCT_ORP4.%151OO7.FORM_ST4.%158OO14.RETURN_TO_UNIT4.%169OO8.COMPLETE4.%149OO10.state_size4.%211OO10.state_CASE4.%210OO4.case4.%210OO10.output2num4.%199OO10.num2output4.%191OO15.ContingencyPlan4.%156OO9.MoveToORP4.%161OO10.ConductORP4.%155OO6.FormST4.%159OO12.ReturnToUnit4.%170OO8.Complete4.%154OO13.NoActionTaken4.%163OO15.UnAuthenticated4.%178OO12.UnAuthorized4.%179OO11.output_size4.%201OO11.output_CASE4.%200OO4.case4.%200"
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
          {ax=ORIG platoonLeaderCom_Axiom,
           case_def=platoonLeaderCom_case_def,
           case_cong=platoonLeaderCom_case_cong,
           induction=ORIG platoonLeaderCom_induction,
           nchotomy=platoonLeaderCom_nchotomy,
           size=SOME(Parse.Term`(projectTypes$platoonLeaderCom_size) :projectTypes$platoonLeaderCom -> num$num`,
                     ORIG platoonLeaderCom_size_def),
           encode = NONE,
           lift=NONE,
           one_one=NONE,
           distinct=SOME platoonLeaderCom_distinct,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = EnumType.update_tyinfo num2platoonLeaderCom_thm platoonLeaderCom2num_thm NONE tyinfo0
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
