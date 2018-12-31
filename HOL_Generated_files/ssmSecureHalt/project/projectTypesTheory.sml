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
          Arbnum.fromString "1545930234",
          Arbnum.fromString "120404")
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
  [ID("projectTypes", "platoonLeaderCom"), ID("min", "fun"),
   ID("num", "num"), ID("projectTypes", "state"),
   ID("projectTypes", "principal"), ID("projectTypes", "output"),
   ID("projectTypes", "omniCom"), ID("projectTypes", "commands"),
   ID("min", "bool"), ID("ind_type", "recspace"), ID("pair", "prod"),
   ID("bool", "!"), ID("arithmetic", "+"), ID("pair", ","),
   ID("bool", "/\\"), ID("num", "0"), ID("prim_rec", "<"), ID("min", "="),
   ID("min", "==>"), ID("bool", "?"), ID("bool", "ARB"),
   ID("arithmetic", "BIT1"), ID("arithmetic", "BIT2"),
   ID("ind_type", "BOTTOM"), ID("projectTypes", "COMPLETE"),
   ID("bool", "COND"), ID("ind_type", "CONSTR"),
   ID("projectTypes", "Complete"), ID("bool", "DATATYPE"),
   ID("arithmetic", "NUMERAL"), ID("projectTypes", "NoActionTaken"),
   ID("projectTypes", "ORP_RECON"), ID("projectTypes", "Omni"),
   ID("projectTypes", "OmniCOM"), ID("projectTypes", "OrpRecon"),
   ID("projectTypes", "PlatoonLeader"),
   ID("projectTypes", "PlatoonLeaderCOM"), ID("projectTypes", "SECURE"),
   ID("projectTypes", "SECURE_HALT"), ID("num", "SUC"),
   ID("projectTypes", "Secure"), ID("projectTypes", "Secure_halt"),
   ID("bool", "TYPE_DEFINITION"), ID("projectTypes", "UnAuthenticated"),
   ID("projectTypes", "UnAuthorized"), ID("projectTypes", "WITHDRAW"),
   ID("projectTypes", "Withdraw"), ID("arithmetic", "ZERO"),
   ID("bool", "\\/"), ID("projectTypes", "commands_CASE"),
   ID("projectTypes", "commands_size"), ID("projectTypes", "complete"),
   ID("projectTypes", "none"), ID("projectTypes", "num2omniCom"),
   ID("projectTypes", "num2output"),
   ID("projectTypes", "num2platoonLeaderCom"),
   ID("projectTypes", "num2principal"), ID("projectTypes", "num2state"),
   ID("projectTypes", "omniCom2num"), ID("projectTypes", "omniCom_CASE"),
   ID("projectTypes", "omniCom_size"), ID("projectTypes", "omniNA"),
   ID("projectTypes", "orpRecon"), ID("projectTypes", "output2num"),
   ID("projectTypes", "output_CASE"), ID("projectTypes", "output_size"),
   ID("projectTypes", "platoonLeaderCom2num"),
   ID("projectTypes", "platoonLeaderCom_CASE"),
   ID("projectTypes", "platoonLeaderCom_size"),
   ID("projectTypes", "principal2num"),
   ID("projectTypes", "principal_CASE"),
   ID("projectTypes", "principal_size"), ID("projectTypes", "secure"),
   ID("projectTypes", "state2num"), ID("projectTypes", "state_CASE"),
   ID("projectTypes", "state_size"), ID("projectTypes", "withdraw"),
   ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [0], TYOP [2], TYOP [3], TYOP [1, 2, 1], TYV "'a", TYOP [1, 4, 4],
   TYOP [1, 4, 5], TYOP [1, 4, 6], TYOP [1, 4, 7], TYOP [1, 4, 8],
   TYOP [1, 2, 9], TYOP [4], TYOP [1, 11, 1], TYOP [1, 11, 6],
   TYOP [1, 0, 1], TYOP [1, 0, 8], TYOP [5], TYOP [1, 16, 1],
   TYOP [1, 4, 9], TYOP [1, 4, 18], TYOP [1, 4, 19], TYOP [1, 16, 20],
   TYOP [6], TYOP [1, 22, 1], TYOP [1, 22, 6], TYOP [1, 1, 2],
   TYOP [1, 1, 11], TYOP [1, 1, 0], TYOP [1, 1, 16], TYOP [1, 1, 22],
   TYOP [7], TYOP [1, 30, 1], TYOP [1, 22, 4], TYOP [1, 32, 4],
   TYOP [1, 0, 4], TYOP [1, 34, 33], TYOP [1, 30, 35], TYOP [1, 0, 30],
   TYOP [1, 22, 30], TYOP [8], TYOP [10, 0, 22], TYOP [9, 40],
   TYOP [1, 41, 39], TYOP [1, 30, 39], TYOP [1, 22, 39], TYOP [1, 16, 39],
   TYOP [1, 0, 39], TYOP [1, 11, 39], TYOP [1, 2, 39], TYOP [1, 38, 39],
   TYOP [1, 37, 49], TYOP [1, 16, 4], TYOP [1, 11, 4], TYOP [1, 2, 4],
   TYOP [1, 30, 4], TYOP [1, 22, 44], TYOP [1, 16, 45], TYOP [1, 16, 56],
   TYOP [1, 16, 57], TYOP [1, 16, 58], TYOP [1, 16, 59], TYOP [1, 16, 60],
   TYOP [1, 16, 61], TYOP [1, 0, 46], TYOP [1, 0, 63], TYOP [1, 0, 64],
   TYOP [1, 11, 47], TYOP [1, 30, 41], TYOP [1, 2, 48], TYOP [1, 2, 68],
   TYOP [1, 2, 69], TYOP [1, 2, 70], TYOP [1, 4, 39], TYOP [1, 72, 39],
   TYOP [1, 43, 39], TYOP [1, 74, 39], TYOP [1, 32, 39], TYOP [1, 76, 39],
   TYOP [1, 44, 39], TYOP [1, 78, 39], TYOP [1, 45, 39], TYOP [1, 80, 39],
   TYOP [1, 34, 39], TYOP [1, 82, 39], TYOP [1, 46, 39], TYOP [1, 84, 39],
   TYOP [1, 47, 39], TYOP [1, 86, 39], TYOP [1, 42, 39], TYOP [1, 88, 39],
   TYOP [1, 48, 39], TYOP [1, 90, 39], TYOP [1, 1, 39], TYOP [1, 92, 39],
   TYOP [1, 1, 1], TYOP [1, 1, 94], TYOP [1, 22, 40], TYOP [1, 0, 96],
   TYOP [1, 39, 39], TYOP [1, 39, 98], TYOP [1, 1, 92], TYOP [1, 4, 72],
   TYOP [1, 30, 43], TYOP [1, 41, 42], TYOP [1, 54, 39], TYOP [1, 104, 39],
   TYOP [1, 67, 39], TYOP [1, 106, 39], TYOP [1, 23, 39],
   TYOP [1, 108, 39], TYOP [1, 51, 39], TYOP [1, 110, 39],
   TYOP [1, 17, 39], TYOP [1, 112, 39], TYOP [1, 14, 39],
   TYOP [1, 114, 39], TYOP [1, 52, 39], TYOP [1, 116, 39],
   TYOP [1, 12, 39], TYOP [1, 118, 39], TYOP [1, 53, 39],
   TYOP [1, 120, 39], TYOP [1, 3, 39], TYOP [1, 122, 39], TYOP [1, 39, 6],
   TYOP [1, 1, 41], TYOP [1, 125, 41], TYOP [1, 40, 126], TYOP [1, 1, 127],
   TYOP [1, 92, 108], TYOP [1, 92, 112], TYOP [1, 92, 114],
   TYOP [1, 92, 118], TYOP [1, 92, 122], TYOP [1, 42, 106]]
  end
  val _ = Theory.incorporate_consts "projectTypes" tyvector
     [("withdraw", 0), ("state_size", 3), ("state_CASE", 10),
      ("state2num", 3), ("secure", 0), ("principal_size", 12),
      ("principal_CASE", 13), ("principal2num", 12),
      ("platoonLeaderCom_size", 14), ("platoonLeaderCom_CASE", 15),
      ("platoonLeaderCom2num", 14), ("output_size", 17),
      ("output_CASE", 21), ("output2num", 17), ("orpRecon", 0),
      ("omniNA", 22), ("omniCom_size", 23), ("omniCom_CASE", 24),
      ("omniCom2num", 23), ("num2state", 25), ("num2principal", 26),
      ("num2platoonLeaderCom", 27), ("num2output", 28),
      ("num2omniCom", 29), ("none", 22), ("complete", 0),
      ("commands_size", 31), ("commands_CASE", 36), ("Withdraw", 16),
      ("WITHDRAW", 2), ("UnAuthorized", 16), ("UnAuthenticated", 16),
      ("Secure_halt", 16), ("Secure", 16), ("SECURE_HALT", 2),
      ("SECURE", 2), ("PlatoonLeaderCOM", 37), ("PlatoonLeader", 11),
      ("OrpRecon", 16), ("OmniCOM", 38), ("Omni", 11), ("ORP_RECON", 2),
      ("NoActionTaken", 16), ("Complete", 16), ("COMPLETE", 2)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("'commands'", 42), TMV("M", 30), TMV("M", 22), TMV("M", 16),
   TMV("M", 0), TMV("M", 11), TMV("M", 2), TMV("M'", 30), TMV("M'", 22),
   TMV("M'", 16), TMV("M'", 0), TMV("M'", 11), TMV("M'", 2), TMV("P", 43),
   TMV("P", 44), TMV("P", 45), TMV("P", 46), TMV("P", 47), TMV("P", 48),
   TMV("a", 22), TMV("a", 16), TMV("a", 0), TMV("a", 11), TMV("a", 2),
   TMV("a'", 22), TMV("a'", 16), TMV("a'", 0), TMV("a'", 11), TMV("a'", 2),
   TMV("a0", 41), TMV("c", 30), TMV("cc", 30), TMV("commands", 50),
   TMV("f", 32), TMV("f", 51), TMV("f", 34), TMV("f", 52), TMV("f", 53),
   TMV("f'", 34), TMV("f0", 34), TMV("f1", 32), TMV("f1'", 32),
   TMV("fn", 54), TMV("m", 1), TMV("n", 1), TMV("o", 22),
   TMV("omniCom", 55), TMV("output", 62), TMV("p", 0),
   TMV("platoonLeaderCom", 65), TMV("principal", 66), TMV("r", 1),
   TMV("r'", 1), TMV("rep", 67), TMV("rep", 23), TMV("rep", 17),
   TMV("rep", 14), TMV("rep", 12), TMV("rep", 3), TMV("state", 71),
   TMV("v0", 4), TMV("v0'", 4), TMV("v1", 4), TMV("v1'", 4), TMV("v2", 4),
   TMV("v2'", 4), TMV("v3", 4), TMV("v3'", 4), TMV("v4", 4), TMV("v4'", 4),
   TMV("v5", 4), TMV("v5'", 4), TMV("v6", 4), TMV("v6'", 4), TMV("v7", 4),
   TMV("v7'", 4), TMV("x", 22), TMV("x", 16), TMV("x", 0), TMV("x", 11),
   TMV("x", 2), TMV("x0", 4), TMV("x1", 4), TMV("x2", 4), TMV("x3", 4),
   TMV("x4", 4), TMV("x5", 4), TMV("x6", 4), TMV("x7", 4), TMC(11, 73),
   TMC(11, 74), TMC(11, 75), TMC(11, 77), TMC(11, 79), TMC(11, 81),
   TMC(11, 83), TMC(11, 85), TMC(11, 87), TMC(11, 89), TMC(11, 91),
   TMC(11, 93), TMC(11, 78), TMC(11, 80), TMC(11, 84), TMC(11, 86),
   TMC(11, 88), TMC(11, 90), TMC(12, 95), TMC(13, 97), TMC(14, 99),
   TMC(15, 1), TMC(16, 100), TMC(17, 101), TMC(17, 99), TMC(17, 102),
   TMC(17, 100), TMC(17, 55), TMC(17, 56), TMC(17, 63), TMC(17, 66),
   TMC(17, 103), TMC(17, 68), TMC(18, 99), TMC(19, 105), TMC(19, 107),
   TMC(19, 77), TMC(19, 109), TMC(19, 111), TMC(19, 113), TMC(19, 83),
   TMC(19, 115), TMC(19, 117), TMC(19, 119), TMC(19, 121), TMC(19, 123),
   TMC(19, 93), TMC(19, 78), TMC(19, 80), TMC(19, 84), TMC(19, 86),
   TMC(19, 90), TMC(20, 22), TMC(20, 0), TMC(21, 94), TMC(22, 94),
   TMC(23, 41), TMC(24, 2), TMC(25, 124), TMC(26, 128), TMC(27, 16),
   TMC(28, 98), TMC(29, 94), TMC(30, 16), TMC(31, 2), TMC(32, 11),
   TMC(33, 38), TMC(34, 16), TMC(35, 11), TMC(36, 37), TMC(37, 2),
   TMC(38, 2), TMC(39, 94), TMC(40, 16), TMC(41, 16), TMC(42, 129),
   TMC(42, 130), TMC(42, 131), TMC(42, 132), TMC(42, 133), TMC(42, 134),
   TMC(43, 16), TMC(44, 16), TMC(45, 2), TMC(46, 16), TMC(47, 1),
   TMC(48, 99), TMC(49, 36), TMC(50, 31), TMC(51, 0), TMC(52, 22),
   TMC(53, 29), TMC(54, 28), TMC(55, 27), TMC(56, 26), TMC(57, 25),
   TMC(58, 23), TMC(59, 24), TMC(60, 23), TMC(61, 22), TMC(62, 0),
   TMC(63, 17), TMC(64, 21), TMC(65, 17), TMC(66, 14), TMC(67, 15),
   TMC(68, 14), TMC(69, 12), TMC(70, 13), TMC(71, 12), TMC(72, 0),
   TMC(73, 3), TMC(74, 10), TMC(75, 3), TMC(76, 0), TMC(77, 98)]
  end
  structure ThmBind = struct
    val DT = Thm.disk_thm
    val read = Term.read_raw tmvector
  end
  fun op platoonLeaderCom_TY_DEF x = x
    val op platoonLeaderCom_TY_DEF =
    ThmBind.DT(((("projectTypes",0),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%130%56%166%44%111$0@%151%144%143%174@4|@$0@|@"])
  fun op platoonLeaderCom_BIJ x = x
    val op platoonLeaderCom_BIJ =
    ThmBind.DT(((("projectTypes",1),
                [("bool",[116]),("projectTypes",[0])]),["DISK_THM"]),
               [ThmBind.read"%109%103%21%118%182%193$0@3$0@|@2%100%51%113%44%111$0@%151%144%143%174@4|$0@2%115%193%182$0@3$0@2|@2"])




  fun op platoonLeaderCom_size_def x = x
    val op platoonLeaderCom_size_def =
    ThmBind.DT(((("projectTypes",15),[]),[]),
               [ThmBind.read"%103%78%115%195$0@2%110@|@"])
  fun op platoonLeaderCom_CASE x = x
    val op platoonLeaderCom_CASE =
    ThmBind.DT(((("projectTypes",16),[]),[]),
               [ThmBind.read"%103%78%89%60%89%62%89%64%89%66%112%194$4@$3@$2@$1@$0@2%43%147%111$0@%151%143%174@4$4@%147%111$0@%151%144%174@4$3@%147%115$0@%151%144%174@4$2@$1@3|%193$4@3|@|@|@|@|@"])
  fun op omniCom_TY_DEF x = x
    val op omniCom_TY_DEF =
    ThmBind.DT(((("projectTypes",24),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%126%54%164%44%111$0@%151%144%174@3|@$0@|@"])
  fun op omniCom_BIJ x = x
    val op omniCom_BIJ =
    ThmBind.DT(((("projectTypes",25),
                [("bool",[116]),("projectTypes",[24])]),["DISK_THM"]),
               [ThmBind.read"%109%101%19%116%180%185$0@3$0@|@2%100%51%113%44%111$0@%151%144%174@3|$0@2%115%185%180$0@3$0@2|@2"])


  fun op omniCom_size_def x = x
    val op omniCom_size_def =
    ThmBind.DT(((("projectTypes",37),[]),[]),
               [ThmBind.read"%101%76%115%187$0@2%110@|@"])
  fun op omniCom_CASE x = x
    val op omniCom_CASE =
    ThmBind.DT(((("projectTypes",38),[]),[]),
               [ThmBind.read"%101%76%89%60%89%62%112%186$2@$1@$0@2%43%147%115$0@%110@2$2@$1@|%185$2@3|@|@|@"])
  fun op principal_TY_DEF x = x
    val op principal_TY_DEF =
    ThmBind.DT(((("projectTypes",46),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%132%57%167%44%111$0@%151%144%174@3|@$0@|@"])
  fun op principal_BIJ x = x
    val op principal_BIJ =
    ThmBind.DT(((("projectTypes",47),
                [("bool",[116]),("projectTypes",[46])]),["DISK_THM"]),
               [ThmBind.read"%109%104%22%119%183%196$0@3$0@|@2%100%51%113%44%111$0@%151%144%174@3|$0@2%115%196%183$0@3$0@2|@2"])


  fun op principal_size_def x = x
    val op principal_size_def =
    ThmBind.DT(((("projectTypes",59),[]),[]),
               [ThmBind.read"%104%79%115%198$0@2%110@|@"])
  fun op principal_CASE x = x
    val op principal_CASE =
    ThmBind.DT(((("projectTypes",60),[]),[]),
               [ThmBind.read"%104%79%89%60%89%62%112%197$2@$1@$0@2%43%147%115$0@%110@2$2@$1@|%196$2@3|@|@|@"])
  fun op commands_TY_DEF x = x
    val op commands_TY_DEF =
    ThmBind.DT(((("projectTypes",68),[("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%124%53%169%29%98%0%122%105%29%122%175%138%21%120$1@%21%148%110@%108$0@%141@2%44%145|@|$0@2|@2%136%19%120$1@%19%148%161%110@2%108%142@$0@2%44%145|@|$0@2|@3$1$0@2|@2$0$1@2|@|@$0@|@"])
  fun op commands_case_def x = x
    val op commands_case_def =
    ThmBind.DT(((("projectTypes",74),
                [("bool",[26,180]),("ind_type",[33,34]),("pair",[8,9]),
                 ("projectTypes",[69,70,71,72,73])]),["DISK_THM"]),
               [ThmBind.read"%109%103%21%95%35%92%40%112%176%158$2@2$1@$0@2$1$2@2|@|@|@2%101%19%95%35%92%40%112%176%155$2@2$1@$0@2$0$2@2|@|@|@2"])
  fun op commands_size_def x = x
    val op commands_size_def =
    ThmBind.DT(((("projectTypes",75),
                [("bool",[26,180]),("ind_type",[33,34]),("pair",[8,9]),
                 ("projectTypes",[69,70,71,72,73])]),["DISK_THM"]),
               [ThmBind.read"%109%103%21%115%177%158$0@3%107%151%143%174@3%195$0@3|@2%101%19%115%177%155$0@3%107%151%143%174@3%187$0@3|@2"])
  fun op state_TY_DEF x = x
    val op state_TY_DEF =
    ThmBind.DT(((("projectTypes",83),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%134%58%168%44%111$0@%151%143%144%174@4|@$0@|@"])
  fun op state_BIJ x = x
    val op state_BIJ =
    ThmBind.DT(((("projectTypes",84),
                [("bool",[116]),("projectTypes",[83])]),["DISK_THM"]),
               [ThmBind.read"%109%106%23%121%184%200$0@3$0@|@2%100%51%113%44%111$0@%151%143%144%174@4|$0@2%115%200%184$0@3$0@2|@2"])





  fun op state_size_def x = x
    val op state_size_def =
    ThmBind.DT(((("projectTypes",99),[]),[]),
               [ThmBind.read"%106%80%115%202$0@2%110@|@"])
  fun op state_CASE x = x
    val op state_CASE =
    ThmBind.DT(((("projectTypes",100),[]),[]),
               [ThmBind.read"%106%80%89%60%89%62%89%64%89%66%89%68%112%201$5@$4@$3@$2@$1@$0@2%43%147%111$0@%151%144%174@4%147%115$0@%110@2$5@$4@2%147%111$0@%151%143%143%174@5$3@%147%115$0@%151%143%143%174@5$2@$1@3|%200$5@3|@|@|@|@|@|@"])
  fun op output_TY_DEF x = x
    val op output_TY_DEF =
    ThmBind.DT(((("projectTypes",108),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%128%55%165%44%111$0@%151%144%143%143%174@5|@$0@|@"])
  fun op output_BIJ x = x
    val op output_BIJ =
    ThmBind.DT(((("projectTypes",109),
                [("bool",[116]),("projectTypes",[108])]),["DISK_THM"]),
               [ThmBind.read"%109%102%20%117%181%190$0@3$0@|@2%100%51%113%44%111$0@%151%144%143%143%174@5|$0@2%115%190%181$0@3$0@2|@2"])








  fun op output_size_def x = x
    val op output_size_def =
    ThmBind.DT(((("projectTypes",127),[]),[]),
               [ThmBind.read"%102%77%115%192$0@2%110@|@"])
  fun op output_CASE x = x
    val op output_CASE =
    ThmBind.DT(((("projectTypes",128),[]),[]),
               [ThmBind.read"%102%77%89%60%89%62%89%64%89%66%89%68%89%70%89%72%89%74%112%191$8@$7@$6@$5@$4@$3@$2@$1@$0@2%43%147%111$0@%151%143%143%174@5%147%111$0@%151%143%174@4$8@%147%115$0@%151%143%174@4$7@$6@3%147%111$0@%151%143%144%174@5%147%115$0@%151%143%143%174@5$5@$4@2%147%111$0@%151%144%144%174@5$3@%147%115$0@%151%144%144%174@5$2@$1@4|%190$8@3|@|@|@|@|@|@|@|@|@"])
  fun op num2platoonLeaderCom_platoonLeaderCom2num x = x
    val op num2platoonLeaderCom_platoonLeaderCom2num =
    ThmBind.DT(((("projectTypes",2),[("projectTypes",[1])]),["DISK_THM"]),
               [ThmBind.read"%103%21%118%182%193$0@3$0@|@"])
  fun op platoonLeaderCom2num_num2platoonLeaderCom x = x
    val op platoonLeaderCom2num_num2platoonLeaderCom =
    ThmBind.DT(((("projectTypes",3),[("projectTypes",[1])]),["DISK_THM"]),
               [ThmBind.read"%100%51%113%111$0@%151%144%143%174@5%115%193%182$0@3$0@2|@"])
  fun op num2platoonLeaderCom_11 x = x
    val op num2platoonLeaderCom_11 =
    ThmBind.DT(((("projectTypes",4),
                [("bool",[26]),("projectTypes",[1])]),["DISK_THM"]),
               [ThmBind.read"%100%51%100%52%122%111$1@%151%144%143%174@5%122%111$0@%151%144%143%174@5%113%118%182$1@2%182$0@3%115$1@$0@4|@|@"])
  fun op platoonLeaderCom2num_11 x = x
    val op platoonLeaderCom2num_11 =
    ThmBind.DT(((("projectTypes",5),
                [("bool",[26]),("projectTypes",[1])]),["DISK_THM"]),
               [ThmBind.read"%103%21%103%26%113%115%193$1@2%193$0@3%118$1@$0@2|@|@"])
  fun op num2platoonLeaderCom_ONTO x = x
    val op num2platoonLeaderCom_ONTO =
    ThmBind.DT(((("projectTypes",6),
                [("bool",[25,62]),("projectTypes",[1])]),["DISK_THM"]),
               [ThmBind.read"%103%21%135%51%109%118$1@%182$0@3%111$0@%151%144%143%174@5|@|@"])
  fun op platoonLeaderCom2num_ONTO x = x
    val op platoonLeaderCom2num_ONTO =
    ThmBind.DT(((("projectTypes",7),
                [("bool",[26]),("projectTypes",[1])]),["DISK_THM"]),
               [ThmBind.read"%100%51%113%111$0@%151%144%143%174@5%138%21%115$1@%193$0@2|@2|@"])
  fun op num2platoonLeaderCom_thm x = x
    val op num2platoonLeaderCom_thm =
    ThmBind.DT(((("projectTypes",12),[("projectTypes",[8,9,10,11])]),[]),
               [ThmBind.read"%109%118%182%110@2%199@2%109%118%182%151%143%174@4%189@2%109%118%182%151%144%174@4%203@2%118%182%151%143%143%174@5%178@4"])
  fun op platoonLeaderCom2num_thm x = x
    val op platoonLeaderCom2num_thm =
    ThmBind.DT(((("projectTypes",13),
                [("bool",[25,53]),("numeral",[3,7]),
                 ("projectTypes",[3,8,9,10,11])]),["DISK_THM"]),
               [ThmBind.read"%109%115%193%199@2%110@2%109%115%193%189@2%151%143%174@4%109%115%193%203@2%151%144%174@4%115%193%178@2%151%143%143%174@7"])
  fun op platoonLeaderCom_EQ_platoonLeaderCom x = x
    val op platoonLeaderCom_EQ_platoonLeaderCom =
    ThmBind.DT(((("projectTypes",14),
                [("bool",[57]),("projectTypes",[5])]),["DISK_THM"]),
               [ThmBind.read"%103%21%103%26%113%118$1@$0@2%115%193$1@2%193$0@3|@|@"])
  fun op platoonLeaderCom_case_def x = x
    val op platoonLeaderCom_case_def =
    ThmBind.DT(((("projectTypes",17),
                [("bool",[53,55,63]),("numeral",[3,6,7]),
                 ("projectTypes",[13,16])]),["DISK_THM"]),
               [ThmBind.read"%109%89%60%89%62%89%64%89%66%112%194%199@$3@$2@$1@$0@2$3@|@|@|@|@2%109%89%60%89%62%89%64%89%66%112%194%189@$3@$2@$1@$0@2$2@|@|@|@|@2%109%89%60%89%62%89%64%89%66%112%194%203@$3@$2@$1@$0@2$1@|@|@|@|@2%89%60%89%62%89%64%89%66%112%194%178@$3@$2@$1@$0@2$0@|@|@|@|@4"])
  fun op datatype_platoonLeaderCom x = x
    val op datatype_platoonLeaderCom =
    ThmBind.DT(((("projectTypes",18),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%150%49%199@%189@%203@%178@2"])
  fun op platoonLeaderCom_distinct x = x
    val op platoonLeaderCom_distinct =
    ThmBind.DT(((("projectTypes",19),
                [("numeral",[3,6]),
                 ("projectTypes",[13,14])]),["DISK_THM"]),
               [ThmBind.read"%109%204%118%199@%189@3%109%204%118%199@%203@3%109%204%118%199@%178@3%109%204%118%189@%203@3%109%204%118%189@%178@3%204%118%203@%178@7"])
  fun op platoonLeaderCom_case_cong x = x
    val op platoonLeaderCom_case_cong =
    ThmBind.DT(((("projectTypes",20),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("projectTypes",[6,8,9,10,11,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%103%4%103%10%89%60%89%62%89%64%89%66%122%109%118$5@$4@2%109%122%118$4@%199@2%112$3@%61@3%109%122%118$4@%189@2%112$2@%63@3%109%122%118$4@%203@2%112$1@%65@3%122%118$4@%178@2%112$0@%67@7%112%194$5@$3@$2@$1@$0@2%194$4@%61@%63@%65@%67@3|@|@|@|@|@|@"])
  fun op platoonLeaderCom_nchotomy x = x
    val op platoonLeaderCom_nchotomy =
    ThmBind.DT(((("projectTypes",21),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("projectTypes",[6,8,9,10,11]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%103%21%175%118$0@%199@2%175%118$0@%189@2%175%118$0@%203@2%118$0@%178@4|@"])
  fun op platoonLeaderCom_Axiom x = x
    val op platoonLeaderCom_Axiom =
    ThmBind.DT(((("projectTypes",22),
                [("bool",[8,14,25,53,55,63]),("numeral",[3,8]),
                 ("projectTypes",[13])]),["DISK_THM"]),
               [ThmBind.read"%89%81%89%82%89%83%89%84%129%35%109%112$0%199@2$4@2%109%112$0%189@2$3@2%109%112$0%203@2$2@2%112$0%178@2$1@4|@|@|@|@|@"])
  fun op platoonLeaderCom_induction x = x
    val op platoonLeaderCom_induction =
    ThmBind.DT(((("projectTypes",23),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("projectTypes",[6,8,9,10,11]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%96%16%122%109$0%178@2%109$0%189@2%109$0%199@2$0%203@5%103%21$1$0@|@2|@"])
  fun op num2omniCom_omniCom2num x = x
    val op num2omniCom_omniCom2num =
    ThmBind.DT(((("projectTypes",26),
                [("projectTypes",[25])]),["DISK_THM"]),
               [ThmBind.read"%101%19%116%180%185$0@3$0@|@"])
  fun op omniCom2num_num2omniCom x = x
    val op omniCom2num_num2omniCom =
    ThmBind.DT(((("projectTypes",27),
                [("projectTypes",[25])]),["DISK_THM"]),
               [ThmBind.read"%100%51%113%111$0@%151%144%174@4%115%185%180$0@3$0@2|@"])
  fun op num2omniCom_11 x = x
    val op num2omniCom_11 =
    ThmBind.DT(((("projectTypes",28),
                [("bool",[26]),("projectTypes",[25])]),["DISK_THM"]),
               [ThmBind.read"%100%51%100%52%122%111$1@%151%144%174@4%122%111$0@%151%144%174@4%113%116%180$1@2%180$0@3%115$1@$0@4|@|@"])
  fun op omniCom2num_11 x = x
    val op omniCom2num_11 =
    ThmBind.DT(((("projectTypes",29),
                [("bool",[26]),("projectTypes",[25])]),["DISK_THM"]),
               [ThmBind.read"%101%19%101%24%113%115%185$1@2%185$0@3%116$1@$0@2|@|@"])
  fun op num2omniCom_ONTO x = x
    val op num2omniCom_ONTO =
    ThmBind.DT(((("projectTypes",30),
                [("bool",[25,62]),("projectTypes",[25])]),["DISK_THM"]),
               [ThmBind.read"%101%19%135%51%109%116$1@%180$0@3%111$0@%151%144%174@4|@|@"])
  fun op omniCom2num_ONTO x = x
    val op omniCom2num_ONTO =
    ThmBind.DT(((("projectTypes",31),
                [("bool",[26]),("projectTypes",[25])]),["DISK_THM"]),
               [ThmBind.read"%100%51%113%111$0@%151%144%174@4%136%19%115$1@%185$0@2|@2|@"])
  fun op num2omniCom_thm x = x
    val op num2omniCom_thm =
    ThmBind.DT(((("projectTypes",34),[("projectTypes",[32,33])]),[]),
               [ThmBind.read"%109%116%180%110@2%179@2%116%180%151%143%174@4%188@2"])
  fun op omniCom2num_thm x = x
    val op omniCom2num_thm =
    ThmBind.DT(((("projectTypes",35),
                [("bool",[25,53]),("numeral",[3,7]),
                 ("projectTypes",[27,32,33])]),["DISK_THM"]),
               [ThmBind.read"%109%115%185%179@2%110@2%115%185%188@2%151%143%174@4"])
  fun op omniCom_EQ_omniCom x = x
    val op omniCom_EQ_omniCom =
    ThmBind.DT(((("projectTypes",36),
                [("bool",[57]),("projectTypes",[29])]),["DISK_THM"]),
               [ThmBind.read"%101%19%101%24%113%116$1@$0@2%115%185$1@2%185$0@3|@|@"])
  fun op omniCom_case_def x = x
    val op omniCom_case_def =
    ThmBind.DT(((("projectTypes",39),
                [("bool",[55,63]),("numeral",[3,6]),
                 ("projectTypes",[35,38])]),["DISK_THM"]),
               [ThmBind.read"%109%89%60%89%62%112%186%179@$1@$0@2$1@|@|@2%89%60%89%62%112%186%188@$1@$0@2$0@|@|@2"])
  fun op datatype_omniCom x = x
    val op datatype_omniCom =
    ThmBind.DT(((("projectTypes",40),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%150%46%179@%188@2"])
  fun op omniCom_distinct x = x
    val op omniCom_distinct =
    ThmBind.DT(((("projectTypes",41),
                [("numeral",[3,6]),
                 ("projectTypes",[35,36])]),["DISK_THM"]),
               [ThmBind.read"%204%116%179@%188@2"])
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
               [ThmBind.read"%101%2%101%8%89%60%89%62%122%109%116$3@$2@2%109%122%116$2@%179@2%112$1@%61@3%122%116$2@%188@2%112$0@%63@5%112%186$3@$1@$0@2%186$2@%61@%63@3|@|@|@|@"])
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
               [ThmBind.read"%101%19%175%116$0@%179@2%116$0@%188@2|@"])
  fun op omniCom_Axiom x = x
    val op omniCom_Axiom =
    ThmBind.DT(((("projectTypes",44),
                [("bool",[8,14,25,55,63]),("numeral",[3,8]),
                 ("projectTypes",[35])]),["DISK_THM"]),
               [ThmBind.read"%89%81%89%82%125%33%109%112$0%179@2$2@2%112$0%188@2$1@2|@|@|@"])
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
               [ThmBind.read"%93%14%122%109$0%179@2$0%188@3%101%19$1$0@|@2|@"])
  fun op num2principal_principal2num x = x
    val op num2principal_principal2num =
    ThmBind.DT(((("projectTypes",48),
                [("projectTypes",[47])]),["DISK_THM"]),
               [ThmBind.read"%104%22%119%183%196$0@3$0@|@"])
  fun op principal2num_num2principal x = x
    val op principal2num_num2principal =
    ThmBind.DT(((("projectTypes",49),
                [("projectTypes",[47])]),["DISK_THM"]),
               [ThmBind.read"%100%51%113%111$0@%151%144%174@4%115%196%183$0@3$0@2|@"])
  fun op num2principal_11 x = x
    val op num2principal_11 =
    ThmBind.DT(((("projectTypes",50),
                [("bool",[26]),("projectTypes",[47])]),["DISK_THM"]),
               [ThmBind.read"%100%51%100%52%122%111$1@%151%144%174@4%122%111$0@%151%144%174@4%113%119%183$1@2%183$0@3%115$1@$0@4|@|@"])
  fun op principal2num_11 x = x
    val op principal2num_11 =
    ThmBind.DT(((("projectTypes",51),
                [("bool",[26]),("projectTypes",[47])]),["DISK_THM"]),
               [ThmBind.read"%104%22%104%27%113%115%196$1@2%196$0@3%119$1@$0@2|@|@"])
  fun op num2principal_ONTO x = x
    val op num2principal_ONTO =
    ThmBind.DT(((("projectTypes",52),
                [("bool",[25,62]),("projectTypes",[47])]),["DISK_THM"]),
               [ThmBind.read"%104%22%135%51%109%119$1@%183$0@3%111$0@%151%144%174@4|@|@"])
  fun op principal2num_ONTO x = x
    val op principal2num_ONTO =
    ThmBind.DT(((("projectTypes",53),
                [("bool",[26]),("projectTypes",[47])]),["DISK_THM"]),
               [ThmBind.read"%100%51%113%111$0@%151%144%174@4%139%22%115$1@%196$0@2|@2|@"])
  fun op num2principal_thm x = x
    val op num2principal_thm =
    ThmBind.DT(((("projectTypes",56),[("projectTypes",[54,55])]),[]),
               [ThmBind.read"%109%119%183%110@2%157@2%119%183%151%143%174@4%154@2"])
  fun op principal2num_thm x = x
    val op principal2num_thm =
    ThmBind.DT(((("projectTypes",57),
                [("bool",[25,53]),("numeral",[3,7]),
                 ("projectTypes",[49,54,55])]),["DISK_THM"]),
               [ThmBind.read"%109%115%196%157@2%110@2%115%196%154@2%151%143%174@4"])
  fun op principal_EQ_principal x = x
    val op principal_EQ_principal =
    ThmBind.DT(((("projectTypes",58),
                [("bool",[57]),("projectTypes",[51])]),["DISK_THM"]),
               [ThmBind.read"%104%22%104%27%113%119$1@$0@2%115%196$1@2%196$0@3|@|@"])
  fun op principal_case_def x = x
    val op principal_case_def =
    ThmBind.DT(((("projectTypes",61),
                [("bool",[55,63]),("numeral",[3,6]),
                 ("projectTypes",[57,60])]),["DISK_THM"]),
               [ThmBind.read"%109%89%60%89%62%112%197%157@$1@$0@2$1@|@|@2%89%60%89%62%112%197%154@$1@$0@2$0@|@|@2"])
  fun op datatype_principal x = x
    val op datatype_principal =
    ThmBind.DT(((("projectTypes",62),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%150%50%157@%154@2"])
  fun op principal_distinct x = x
    val op principal_distinct =
    ThmBind.DT(((("projectTypes",63),
                [("numeral",[3,6]),
                 ("projectTypes",[57,58])]),["DISK_THM"]),
               [ThmBind.read"%204%119%157@%154@2"])
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
               [ThmBind.read"%104%5%104%11%89%60%89%62%122%109%119$3@$2@2%109%122%119$2@%157@2%112$1@%61@3%122%119$2@%154@2%112$0@%63@5%112%197$3@$1@$0@2%197$2@%61@%63@3|@|@|@|@"])
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
               [ThmBind.read"%104%22%175%119$0@%157@2%119$0@%154@2|@"])
  fun op principal_Axiom x = x
    val op principal_Axiom =
    ThmBind.DT(((("projectTypes",66),
                [("bool",[8,14,25,55,63]),("numeral",[3,8]),
                 ("projectTypes",[57])]),["DISK_THM"]),
               [ThmBind.read"%89%81%89%82%131%36%109%112$0%157@2$2@2%112$0%154@2$1@2|@|@|@"])
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
               [ThmBind.read"%97%17%122%109$0%154@2$0%157@3%104%22$1$0@|@2|@"])
  fun op datatype_commands x = x
    val op datatype_commands =
    ThmBind.DT(((("projectTypes",76),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%150%32%158@%155@2"])
  fun op commands_11 x = x
    val op commands_11 =
    ThmBind.DT(((("projectTypes",77),
                [("bool",[26,55,62,180]),("ind_type",[33,34]),
                 ("pair",[8,9]),
                 ("projectTypes",[69,70,71,72,73])]),["DISK_THM"]),
               [ThmBind.read"%109%103%21%103%26%113%114%158$1@2%158$0@3%118$1@$0@2|@|@2%101%19%101%24%113%114%155$1@2%155$0@3%116$1@$0@2|@|@2"])
  fun op commands_distinct x = x
    val op commands_distinct =
    ThmBind.DT(((("projectTypes",78),
                [("bool",[25,26,46,53,62,180]),("ind_type",[33,34]),
                 ("pair",[8,9]),
                 ("projectTypes",[69,70,71,72,73])]),["DISK_THM"]),
               [ThmBind.read"%101%24%103%21%204%114%158$0@2%155$1@3|@|@"])
  fun op commands_case_cong x = x
    val op commands_case_cong =
    ThmBind.DT(((("projectTypes",79),
                [("bool",[26,180]),
                 ("projectTypes",[69,70,71,72,73,74])]),["DISK_THM"]),
               [ThmBind.read"%90%1%90%7%95%35%92%40%122%109%114$3@$2@2%109%103%21%122%114$3@%158$0@3%112$2$0@2%38$0@3|@2%101%19%122%114$3@%155$0@3%112$1$0@2%41$0@3|@4%112%176$3@$1@$0@2%176$2@%38@%41@3|@|@|@|@"])
  fun op commands_nchotomy x = x
    val op commands_nchotomy =
    ThmBind.DT(((("projectTypes",80),
                [("bool",[26,180]),
                 ("projectTypes",[69,70,71,72,73])]),["DISK_THM"]),
               [ThmBind.read"%90%31%175%138%48%114$1@%158$0@2|@2%136%45%114$1@%155$0@2|@2|@"])
  fun op commands_Axiom x = x
    val op commands_Axiom =
    ThmBind.DT(((("projectTypes",81),
                [("bool",[26,180]),("ind_type",[33,34]),("pair",[8,9]),
                 ("projectTypes",[69,70,71,72,73])]),["DISK_THM"]),
               [ThmBind.read"%95%39%92%40%123%42%109%103%21%112$1%158$0@3$3$0@2|@2%101%19%112$1%155$0@3$2$0@2|@2|@|@|@"])
  fun op commands_induction x = x
    val op commands_induction =
    ThmBind.DT(((("projectTypes",82),
                [("bool",[26]),
                 ("projectTypes",[69,70,71,72,73])]),["DISK_THM"]),
               [ThmBind.read"%91%13%122%109%103%48$1%158$0@2|@2%101%45$1%155$0@2|@3%90%30$1$0@|@2|@"])
  fun op num2state_state2num x = x
    val op num2state_state2num =
    ThmBind.DT(((("projectTypes",85),
                [("projectTypes",[84])]),["DISK_THM"]),
               [ThmBind.read"%106%23%121%184%200$0@3$0@|@"])
  fun op state2num_num2state x = x
    val op state2num_num2state =
    ThmBind.DT(((("projectTypes",86),
                [("projectTypes",[84])]),["DISK_THM"]),
               [ThmBind.read"%100%51%113%111$0@%151%143%144%174@5%115%200%184$0@3$0@2|@"])
  fun op num2state_11 x = x
    val op num2state_11 =
    ThmBind.DT(((("projectTypes",87),
                [("bool",[26]),("projectTypes",[84])]),["DISK_THM"]),
               [ThmBind.read"%100%51%100%52%122%111$1@%151%143%144%174@5%122%111$0@%151%143%144%174@5%113%121%184$1@2%184$0@3%115$1@$0@4|@|@"])
  fun op state2num_11 x = x
    val op state2num_11 =
    ThmBind.DT(((("projectTypes",88),
                [("bool",[26]),("projectTypes",[84])]),["DISK_THM"]),
               [ThmBind.read"%106%23%106%28%113%115%200$1@2%200$0@3%121$1@$0@2|@|@"])
  fun op num2state_ONTO x = x
    val op num2state_ONTO =
    ThmBind.DT(((("projectTypes",89),
                [("bool",[25,62]),("projectTypes",[84])]),["DISK_THM"]),
               [ThmBind.read"%106%23%135%51%109%121$1@%184$0@3%111$0@%151%143%144%174@5|@|@"])
  fun op state2num_ONTO x = x
    val op state2num_ONTO =
    ThmBind.DT(((("projectTypes",90),
                [("bool",[26]),("projectTypes",[84])]),["DISK_THM"]),
               [ThmBind.read"%100%51%113%111$0@%151%143%144%174@5%140%23%115$1@%200$0@2|@2|@"])
  fun op num2state_thm x = x
    val op num2state_thm =
    ThmBind.DT(((("projectTypes",96),
                [("projectTypes",[91,92,93,94,95])]),[]),
               [ThmBind.read"%109%121%184%110@2%160@2%109%121%184%151%143%174@4%159@2%109%121%184%151%144%174@4%153@2%109%121%184%151%143%143%174@5%172@2%121%184%151%144%143%174@5%146@5"])
  fun op state2num_thm x = x
    val op state2num_thm =
    ThmBind.DT(((("projectTypes",97),
                [("bool",[25,53]),("numeral",[3,7]),
                 ("projectTypes",[86,91,92,93,94,95])]),["DISK_THM"]),
               [ThmBind.read"%109%115%200%160@2%110@2%109%115%200%159@2%151%143%174@4%109%115%200%153@2%151%144%174@4%109%115%200%172@2%151%143%143%174@5%115%200%146@2%151%144%143%174@8"])
  fun op state_EQ_state x = x
    val op state_EQ_state =
    ThmBind.DT(((("projectTypes",98),
                [("bool",[57]),("projectTypes",[88])]),["DISK_THM"]),
               [ThmBind.read"%106%23%106%28%113%121$1@$0@2%115%200$1@2%200$0@3|@|@"])
  fun op state_case_def x = x
    val op state_case_def =
    ThmBind.DT(((("projectTypes",101),
                [("bool",[53,55,63]),("numeral",[3,6,7]),
                 ("projectTypes",[97,100])]),["DISK_THM"]),
               [ThmBind.read"%109%89%60%89%62%89%64%89%66%89%68%112%201%160@$4@$3@$2@$1@$0@2$4@|@|@|@|@|@2%109%89%60%89%62%89%64%89%66%89%68%112%201%159@$4@$3@$2@$1@$0@2$3@|@|@|@|@|@2%109%89%60%89%62%89%64%89%66%89%68%112%201%153@$4@$3@$2@$1@$0@2$2@|@|@|@|@|@2%109%89%60%89%62%89%64%89%66%89%68%112%201%172@$4@$3@$2@$1@$0@2$1@|@|@|@|@|@2%89%60%89%62%89%64%89%66%89%68%112%201%146@$4@$3@$2@$1@$0@2$0@|@|@|@|@|@5"])
  fun op datatype_state x = x
    val op datatype_state =
    ThmBind.DT(((("projectTypes",102),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%150%59%160@%159@%153@%172@%146@2"])
  fun op state_distinct x = x
    val op state_distinct =
    ThmBind.DT(((("projectTypes",103),
                [("numeral",[3,6]),
                 ("projectTypes",[97,98])]),["DISK_THM"]),
               [ThmBind.read"%109%204%121%160@%159@3%109%204%121%160@%153@3%109%204%121%160@%172@3%109%204%121%160@%146@3%109%204%121%159@%153@3%109%204%121%159@%172@3%109%204%121%159@%146@3%109%204%121%153@%172@3%109%204%121%153@%146@3%204%121%172@%146@11"])
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
               [ThmBind.read"%106%6%106%12%89%60%89%62%89%64%89%66%89%68%122%109%121$6@$5@2%109%122%121$5@%160@2%112$4@%61@3%109%122%121$5@%159@2%112$3@%63@3%109%122%121$5@%153@2%112$2@%65@3%109%122%121$5@%172@2%112$1@%67@3%122%121$5@%146@2%112$0@%69@8%112%201$6@$4@$3@$2@$1@$0@2%201$5@%61@%63@%65@%67@%69@3|@|@|@|@|@|@|@"])
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
               [ThmBind.read"%106%23%175%121$0@%160@2%175%121$0@%159@2%175%121$0@%153@2%175%121$0@%172@2%121$0@%146@5|@"])
  fun op state_Axiom x = x
    val op state_Axiom =
    ThmBind.DT(((("projectTypes",106),
                [("bool",[8,14,25,53,55,63]),("numeral",[3,8]),
                 ("projectTypes",[97])]),["DISK_THM"]),
               [ThmBind.read"%89%81%89%82%89%83%89%84%89%85%133%37%109%112$0%160@2$5@2%109%112$0%159@2$4@2%109%112$0%153@2$3@2%109%112$0%172@2$2@2%112$0%146@2$1@5|@|@|@|@|@|@"])
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
               [ThmBind.read"%99%18%122%109$0%146@2%109$0%153@2%109$0%159@2%109$0%160@2$0%172@6%106%23$1$0@|@2|@"])
  fun op num2output_output2num x = x
    val op num2output_output2num =
    ThmBind.DT(((("projectTypes",110),
                [("projectTypes",[109])]),["DISK_THM"]),
               [ThmBind.read"%102%20%117%181%190$0@3$0@|@"])
  fun op output2num_num2output x = x
    val op output2num_num2output =
    ThmBind.DT(((("projectTypes",111),
                [("projectTypes",[109])]),["DISK_THM"]),
               [ThmBind.read"%100%51%113%111$0@%151%144%143%143%174@6%115%190%181$0@3$0@2|@"])
  fun op num2output_11 x = x
    val op num2output_11 =
    ThmBind.DT(((("projectTypes",112),
                [("bool",[26]),("projectTypes",[109])]),["DISK_THM"]),
               [ThmBind.read"%100%51%100%52%122%111$1@%151%144%143%143%174@6%122%111$0@%151%144%143%143%174@6%113%117%181$1@2%181$0@3%115$1@$0@4|@|@"])
  fun op output2num_11 x = x
    val op output2num_11 =
    ThmBind.DT(((("projectTypes",113),
                [("bool",[26]),("projectTypes",[109])]),["DISK_THM"]),
               [ThmBind.read"%102%20%102%25%113%115%190$1@2%190$0@3%117$1@$0@2|@|@"])
  fun op num2output_ONTO x = x
    val op num2output_ONTO =
    ThmBind.DT(((("projectTypes",114),
                [("bool",[25,62]),("projectTypes",[109])]),["DISK_THM"]),
               [ThmBind.read"%102%20%135%51%109%117$1@%181$0@3%111$0@%151%144%143%143%174@6|@|@"])
  fun op output2num_ONTO x = x
    val op output2num_ONTO =
    ThmBind.DT(((("projectTypes",115),
                [("bool",[26]),("projectTypes",[109])]),["DISK_THM"]),
               [ThmBind.read"%100%51%113%111$0@%151%144%143%143%174@6%137%20%115$1@%190$0@2|@2|@"])
  fun op num2output_thm x = x
    val op num2output_thm =
    ThmBind.DT(((("projectTypes",124),
                [("projectTypes",[116,117,118,119,120,121,122,123])]),[]),
               [ThmBind.read"%109%117%181%110@2%163@2%109%117%181%151%143%174@4%162@2%109%117%181%151%144%174@4%156@2%109%117%181%151%143%143%174@5%173@2%109%117%181%151%144%143%174@5%149@2%109%117%181%151%143%144%174@5%152@2%109%117%181%151%144%144%174@5%170@2%117%181%151%143%143%143%174@6%171@8"])
  fun op output2num_thm x = x
    val op output2num_thm =
    ThmBind.DT(((("projectTypes",125),
                [("bool",[25,53]),("numeral",[3,7]),
                 ("projectTypes",
                 [111,116,117,118,119,120,121,122,123])]),["DISK_THM"]),
               [ThmBind.read"%109%115%190%163@2%110@2%109%115%190%162@2%151%143%174@4%109%115%190%156@2%151%144%174@4%109%115%190%173@2%151%143%143%174@5%109%115%190%149@2%151%144%143%174@5%109%115%190%152@2%151%143%144%174@5%109%115%190%170@2%151%144%144%174@5%115%190%171@2%151%143%143%143%174@12"])
  fun op output_EQ_output x = x
    val op output_EQ_output =
    ThmBind.DT(((("projectTypes",126),
                [("bool",[57]),("projectTypes",[113])]),["DISK_THM"]),
               [ThmBind.read"%102%20%102%25%113%117$1@$0@2%115%190$1@2%190$0@3|@|@"])
  fun op output_case_def x = x
    val op output_case_def =
    ThmBind.DT(((("projectTypes",129),
                [("bool",[53,55,63]),("numeral",[3,6,7]),
                 ("projectTypes",[125,128])]),["DISK_THM"]),
               [ThmBind.read"%109%89%60%89%62%89%64%89%66%89%68%89%70%89%72%89%74%112%191%163@$7@$6@$5@$4@$3@$2@$1@$0@2$7@|@|@|@|@|@|@|@|@2%109%89%60%89%62%89%64%89%66%89%68%89%70%89%72%89%74%112%191%162@$7@$6@$5@$4@$3@$2@$1@$0@2$6@|@|@|@|@|@|@|@|@2%109%89%60%89%62%89%64%89%66%89%68%89%70%89%72%89%74%112%191%156@$7@$6@$5@$4@$3@$2@$1@$0@2$5@|@|@|@|@|@|@|@|@2%109%89%60%89%62%89%64%89%66%89%68%89%70%89%72%89%74%112%191%173@$7@$6@$5@$4@$3@$2@$1@$0@2$4@|@|@|@|@|@|@|@|@2%109%89%60%89%62%89%64%89%66%89%68%89%70%89%72%89%74%112%191%149@$7@$6@$5@$4@$3@$2@$1@$0@2$3@|@|@|@|@|@|@|@|@2%109%89%60%89%62%89%64%89%66%89%68%89%70%89%72%89%74%112%191%152@$7@$6@$5@$4@$3@$2@$1@$0@2$2@|@|@|@|@|@|@|@|@2%109%89%60%89%62%89%64%89%66%89%68%89%70%89%72%89%74%112%191%170@$7@$6@$5@$4@$3@$2@$1@$0@2$1@|@|@|@|@|@|@|@|@2%89%60%89%62%89%64%89%66%89%68%89%70%89%72%89%74%112%191%171@$7@$6@$5@$4@$3@$2@$1@$0@2$0@|@|@|@|@|@|@|@|@8"])
  fun op datatype_output x = x
    val op datatype_output =
    ThmBind.DT(((("projectTypes",130),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%150%47%163@%162@%156@%173@%149@%152@%170@%171@2"])
  fun op output_distinct x = x
    val op output_distinct =
    ThmBind.DT(((("projectTypes",131),
                [("numeral",[3,6]),
                 ("projectTypes",[125,126])]),["DISK_THM"]),
               [ThmBind.read"%109%204%117%163@%162@3%109%204%117%163@%156@3%109%204%117%163@%173@3%109%204%117%163@%149@3%109%204%117%163@%152@3%109%204%117%163@%170@3%109%204%117%163@%171@3%109%204%117%162@%156@3%109%204%117%162@%173@3%109%204%117%162@%149@3%109%204%117%162@%152@3%109%204%117%162@%170@3%109%204%117%162@%171@3%109%204%117%156@%173@3%109%204%117%156@%149@3%109%204%117%156@%152@3%109%204%117%156@%170@3%109%204%117%156@%171@3%109%204%117%173@%149@3%109%204%117%173@%152@3%109%204%117%173@%170@3%109%204%117%173@%171@3%109%204%117%149@%152@3%109%204%117%149@%170@3%109%204%117%149@%171@3%109%204%117%152@%170@3%109%204%117%152@%171@3%204%117%170@%171@29"])
  fun op output_case_cong x = x
    val op output_case_cong =
    ThmBind.DT(((("projectTypes",132),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("projectTypes",
                 [114,116,117,118,119,120,121,122,123,129]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%102%3%102%9%89%60%89%62%89%64%89%66%89%68%89%70%89%72%89%74%122%109%117$9@$8@2%109%122%117$8@%163@2%112$7@%61@3%109%122%117$8@%162@2%112$6@%63@3%109%122%117$8@%156@2%112$5@%65@3%109%122%117$8@%173@2%112$4@%67@3%109%122%117$8@%149@2%112$3@%69@3%109%122%117$8@%152@2%112$2@%71@3%109%122%117$8@%170@2%112$1@%73@3%122%117$8@%171@2%112$0@%75@11%112%191$9@$7@$6@$5@$4@$3@$2@$1@$0@2%191$8@%61@%63@%65@%67@%69@%71@%73@%75@3|@|@|@|@|@|@|@|@|@|@"])
  fun op output_nchotomy x = x
    val op output_nchotomy =
    ThmBind.DT(((("projectTypes",133),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("projectTypes",[114,116,117,118,119,120,121,122,123]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%102%20%175%117$0@%163@2%175%117$0@%162@2%175%117$0@%156@2%175%117$0@%173@2%175%117$0@%149@2%175%117$0@%152@2%175%117$0@%170@2%117$0@%171@8|@"])
  fun op output_Axiom x = x
    val op output_Axiom =
    ThmBind.DT(((("projectTypes",134),
                [("bool",[8,14,25,53,55,63]),("numeral",[3,8]),
                 ("projectTypes",[125])]),["DISK_THM"]),
               [ThmBind.read"%89%81%89%82%89%83%89%84%89%85%89%86%89%87%89%88%127%34%109%112$0%163@2$8@2%109%112$0%162@2$7@2%109%112$0%156@2$6@2%109%112$0%173@2$5@2%109%112$0%149@2$4@2%109%112$0%152@2$3@2%109%112$0%170@2$2@2%112$0%171@2$1@8|@|@|@|@|@|@|@|@|@"])
  fun op output_induction x = x
    val op output_induction =
    ThmBind.DT(((("projectTypes",135),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("projectTypes",[114,116,117,118,119,120,121,122,123]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%94%15%122%109$0%149@2%109$0%152@2%109$0%156@2%109$0%162@2%109$0%163@2%109$0%170@2%109$0%171@2$0%173@9%102%20$1$0@|@2|@"])
  fun op principal_distinct_clauses x = x
    val op principal_distinct_clauses =
    ThmBind.DT(((("projectTypes",136),
                [("numeral",[3,6]),
                 ("projectTypes",[57,58])]),["DISK_THM"]),
               [ThmBind.read"%204%119%157@%154@2"])
  fun op platoonLeaderCom_distinct_clauses x = x
    val op platoonLeaderCom_distinct_clauses =
    ThmBind.DT(((("projectTypes",137),
                [("numeral",[3,6]),
                 ("projectTypes",[13,14])]),["DISK_THM"]),
               [ThmBind.read"%109%204%118%199@%189@3%109%204%118%199@%203@3%109%204%118%199@%178@3%109%204%118%189@%203@3%109%204%118%189@%178@3%204%118%203@%178@7"])
  fun op omniCom_distinct_clauses x = x
    val op omniCom_distinct_clauses =
    ThmBind.DT(((("projectTypes",138),
                [("numeral",[3,6]),
                 ("projectTypes",[35,36])]),["DISK_THM"]),
               [ThmBind.read"%204%116%179@%188@2"])
  fun op commands_distinct_clauses x = x
    val op commands_distinct_clauses =
    ThmBind.DT(((("projectTypes",139),
                [("bool",[25,26,46,53,62,180]),("ind_type",[33,34]),
                 ("pair",[8,9]),
                 ("projectTypes",[69,70,71,72,73])]),["DISK_THM"]),
               [ThmBind.read"%101%24%103%21%204%114%158$0@2%155$1@3|@|@"])
  fun op state_distinct_clauses x = x
    val op state_distinct_clauses =
    ThmBind.DT(((("projectTypes",140),
                [("numeral",[3,6]),
                 ("projectTypes",[97,98])]),["DISK_THM"]),
               [ThmBind.read"%109%204%121%160@%159@3%109%204%121%160@%153@3%109%204%121%160@%172@3%109%204%121%160@%146@3%109%204%121%159@%153@3%109%204%121%159@%172@3%109%204%121%159@%146@3%109%204%121%153@%172@3%109%204%121%153@%146@3%204%121%172@%146@11"])
  fun op output_distinct_clauses x = x
    val op output_distinct_clauses =
    ThmBind.DT(((("projectTypes",141),
                [("numeral",[3,6]),
                 ("projectTypes",[125,126])]),["DISK_THM"]),
               [ThmBind.read"%109%204%117%163@%162@3%109%204%117%163@%156@3%109%204%117%163@%173@3%109%204%117%163@%149@3%109%204%117%163@%152@3%109%204%117%163@%170@3%109%204%117%163@%171@3%109%204%117%162@%156@3%109%204%117%162@%173@3%109%204%117%162@%149@3%109%204%117%162@%152@3%109%204%117%162@%170@3%109%204%117%162@%171@3%109%204%117%156@%173@3%109%204%117%156@%149@3%109%204%117%156@%152@3%109%204%117%156@%170@3%109%204%117%156@%171@3%109%204%117%173@%149@3%109%204%117%173@%152@3%109%204%117%173@%170@3%109%204%117%173@%171@3%109%204%117%149@%152@3%109%204%117%149@%170@3%109%204%117%149@%171@3%109%204%117%152@%170@3%109%204%117%152@%171@3%204%117%170@%171@29"])
  fun op commands_one_one x = x
    val op commands_one_one =
    ThmBind.DT(((("projectTypes",142),
                [("bool",[26,55,62,180]),("ind_type",[33,34]),
                 ("pair",[8,9]),
                 ("projectTypes",[69,70,71,72,73])]),["DISK_THM"]),
               [ThmBind.read"%109%103%21%103%26%113%114%158$1@2%158$0@3%118$1@$0@2|@|@2%101%19%101%24%113%114%155$1@2%155$0@3%116$1@$0@2|@|@2"])

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
        "OO20.platoonLeaderCom2num4.%193OO20.num2platoonLeaderCom4.%182OO6.secure4.%199OO8.orpRecon4.%189OO8.withdraw4.%203OO8.complete4.%178OO21.platoonLeaderCom_size4.%195OO21.platoonLeaderCom_CASE4.%194OO4.case4.%194OO11.omniCom2num4.%185OO11.num2omniCom4.%180OO4.none4.%179OO6.omniNA4.%188OO12.omniCom_size4.%187OO12.omniCom_CASE4.%186OO4.case4.%186OO13.principal2num4.%196OO13.num2principal4.%183OO13.PlatoonLeader4.%157OO4.Omni4.%154OO14.principal_size4.%198OO14.principal_CASE4.%197OO4.case4.%197OO16.PlatoonLeaderCOM4.%158OO7.OmniCOM4.%155OO13.commands_CASE4.%176OO13.commands_size4.%177OO4.case4.%176OO9.state2num4.%200OO9.num2state4.%184OO11.SECURE_HALT4.%160OO6.SECURE4.%159OO9.ORP_RECON4.%153OO8.WITHDRAW4.%172OO8.COMPLETE4.%146OO10.state_size4.%202OO10.state_CASE4.%201OO4.case4.%201OO10.output2num4.%190OO10.num2output4.%181OO11.Secure_halt4.%163OO6.Secure4.%162OO8.OrpRecon4.%156OO8.Withdraw4.%173OO8.Complete4.%149OO13.NoActionTaken4.%152OO15.UnAuthenticated4.%170OO12.UnAuthorized4.%171OO11.output_size4.%192OO11.output_CASE4.%191OO4.case4.%191"
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
