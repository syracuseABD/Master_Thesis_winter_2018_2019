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
          Arbnum.fromString "1545933987",
          Arbnum.fromString "733909")
          [("indexedLists",
           Arbnum.fromString "1501974078",
           Arbnum.fromString "687272"),
           ("patternMatches",
           Arbnum.fromString "1501974125",
           Arbnum.fromString "747236")];
  val _ = Theory.incorporate_types "projectTypes"
       [("state", 0), ("principal", 0), ("platoonSergeantCom", 0),
        ("platoonLeaderCom", 0), ("output", 0), ("omniCom", 0),
        ("commands", 0)];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("projectTypes", "platoonLeaderCom"), ID("min", "fun"),
   ID("num", "num"), ID("projectTypes", "state"),
   ID("projectTypes", "platoonSergeantCom"),
   ID("projectTypes", "principal"), ID("projectTypes", "output"),
   ID("projectTypes", "omniCom"), ID("projectTypes", "commands"),
   ID("min", "bool"), ID("ind_type", "recspace"), ID("pair", "prod"),
   ID("bool", "!"), ID("arithmetic", "+"), ID("pair", ","),
   ID("bool", "/\\"), ID("num", "0"), ID("prim_rec", "<"), ID("min", "="),
   ID("min", "==>"), ID("bool", "?"), ID("projectTypes", "ACTIONS_IN"),
   ID("bool", "ARB"), ID("projectTypes", "ActionsIn"),
   ID("arithmetic", "BIT1"), ID("arithmetic", "BIT2"),
   ID("ind_type", "BOTTOM"), ID("projectTypes", "COMPLETE"),
   ID("bool", "COND"), ID("projectTypes", "CONDUCT_PB"),
   ID("ind_type", "CONSTR"), ID("projectTypes", "Complete"),
   ID("bool", "DATATYPE"), ID("arithmetic", "NUMERAL"),
   ID("projectTypes", "NoActionTaken"), ID("projectTypes", "Omni"),
   ID("projectTypes", "OmniCOM"), ID("projectTypes", "PlatoonLeader"),
   ID("projectTypes", "PlatoonLeaderCOM"),
   ID("projectTypes", "PlatoonSergeant"),
   ID("projectTypes", "PlatoonSergeantCOM"), ID("projectTypes", "SECURE"),
   ID("num", "SUC"), ID("projectTypes", "Secure"),
   ID("bool", "TYPE_DEFINITION"), ID("projectTypes", "UnAuthenticated"),
   ID("projectTypes", "UnAuthorized"), ID("projectTypes", "WITHDRAW"),
   ID("projectTypes", "Withdraw"), ID("arithmetic", "ZERO"),
   ID("bool", "\\/"), ID("projectTypes", "actionsIn"),
   ID("projectTypes", "commands_CASE"),
   ID("projectTypes", "commands_size"), ID("projectTypes", "complete"),
   ID("projectTypes", "none"), ID("projectTypes", "num2omniCom"),
   ID("projectTypes", "num2output"),
   ID("projectTypes", "num2platoonLeaderCom"),
   ID("projectTypes", "num2platoonSergeantCom"),
   ID("projectTypes", "num2principal"), ID("projectTypes", "num2state"),
   ID("projectTypes", "omniCom2num"), ID("projectTypes", "omniCom_CASE"),
   ID("projectTypes", "omniCom_size"), ID("projectTypes", "omniNA"),
   ID("projectTypes", "output2num"), ID("projectTypes", "output_CASE"),
   ID("projectTypes", "output_size"),
   ID("projectTypes", "platoonLeaderCom2num"),
   ID("projectTypes", "platoonLeaderCom_CASE"),
   ID("projectTypes", "platoonLeaderCom_size"),
   ID("projectTypes", "platoonSergeantCom2num"),
   ID("projectTypes", "platoonSergeantCom_CASE"),
   ID("projectTypes", "platoonSergeantCom_size"),
   ID("projectTypes", "principal2num"),
   ID("projectTypes", "principal_CASE"),
   ID("projectTypes", "principal_size"), ID("projectTypes", "psgNA"),
   ID("projectTypes", "secure"), ID("projectTypes", "state2num"),
   ID("projectTypes", "state_CASE"), ID("projectTypes", "state_size"),
   ID("projectTypes", "withdraw"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [0], TYOP [2], TYOP [3], TYOP [1, 2, 1], TYV "'a", TYOP [1, 4, 4],
   TYOP [1, 4, 5], TYOP [1, 4, 6], TYOP [1, 4, 7], TYOP [1, 4, 8],
   TYOP [1, 2, 9], TYOP [4], TYOP [5], TYOP [1, 12, 1], TYOP [1, 12, 7],
   TYOP [1, 11, 1], TYOP [1, 11, 6], TYOP [1, 0, 1], TYOP [1, 0, 7],
   TYOP [6], TYOP [1, 19, 1], TYOP [1, 4, 9], TYOP [1, 4, 21],
   TYOP [1, 19, 22], TYOP [7], TYOP [1, 24, 1], TYOP [1, 24, 6],
   TYOP [1, 1, 2], TYOP [1, 1, 12], TYOP [1, 1, 11], TYOP [1, 1, 0],
   TYOP [1, 1, 19], TYOP [1, 1, 24], TYOP [8], TYOP [1, 33, 1],
   TYOP [1, 24, 4], TYOP [1, 35, 4], TYOP [1, 11, 4], TYOP [1, 37, 36],
   TYOP [1, 0, 4], TYOP [1, 39, 38], TYOP [1, 33, 40], TYOP [1, 11, 33],
   TYOP [1, 0, 33], TYOP [1, 24, 33], TYOP [9], TYOP [11, 11, 24],
   TYOP [11, 0, 46], TYOP [10, 47], TYOP [1, 48, 45], TYOP [1, 33, 45],
   TYOP [1, 24, 45], TYOP [1, 19, 45], TYOP [1, 0, 45], TYOP [1, 11, 45],
   TYOP [1, 12, 45], TYOP [1, 2, 45], TYOP [1, 44, 45], TYOP [1, 42, 57],
   TYOP [1, 43, 58], TYOP [1, 19, 4], TYOP [1, 12, 4], TYOP [1, 2, 4],
   TYOP [1, 33, 4], TYOP [1, 24, 51], TYOP [1, 19, 52], TYOP [1, 19, 65],
   TYOP [1, 19, 66], TYOP [1, 19, 67], TYOP [1, 19, 68], TYOP [1, 19, 69],
   TYOP [1, 0, 53], TYOP [1, 0, 71], TYOP [1, 11, 54], TYOP [1, 12, 55],
   TYOP [1, 12, 74], TYOP [1, 33, 48], TYOP [1, 2, 56], TYOP [1, 2, 77],
   TYOP [1, 2, 78], TYOP [1, 2, 79], TYOP [1, 4, 45], TYOP [1, 81, 45],
   TYOP [1, 50, 45], TYOP [1, 83, 45], TYOP [1, 35, 45], TYOP [1, 85, 45],
   TYOP [1, 51, 45], TYOP [1, 87, 45], TYOP [1, 52, 45], TYOP [1, 89, 45],
   TYOP [1, 39, 45], TYOP [1, 91, 45], TYOP [1, 53, 45], TYOP [1, 93, 45],
   TYOP [1, 37, 45], TYOP [1, 95, 45], TYOP [1, 54, 45], TYOP [1, 97, 45],
   TYOP [1, 55, 45], TYOP [1, 99, 45], TYOP [1, 49, 45], TYOP [1, 101, 45],
   TYOP [1, 56, 45], TYOP [1, 103, 45], TYOP [1, 1, 45], TYOP [1, 105, 45],
   TYOP [1, 1, 1], TYOP [1, 1, 107], TYOP [1, 46, 47], TYOP [1, 0, 109],
   TYOP [1, 24, 46], TYOP [1, 11, 111], TYOP [1, 45, 45],
   TYOP [1, 45, 113], TYOP [1, 1, 105], TYOP [1, 4, 81], TYOP [1, 33, 50],
   TYOP [1, 48, 49], TYOP [1, 63, 45], TYOP [1, 119, 45], TYOP [1, 76, 45],
   TYOP [1, 121, 45], TYOP [1, 25, 45], TYOP [1, 123, 45],
   TYOP [1, 60, 45], TYOP [1, 125, 45], TYOP [1, 20, 45],
   TYOP [1, 127, 45], TYOP [1, 17, 45], TYOP [1, 129, 45],
   TYOP [1, 15, 45], TYOP [1, 131, 45], TYOP [1, 61, 45],
   TYOP [1, 133, 45], TYOP [1, 13, 45], TYOP [1, 135, 45],
   TYOP [1, 62, 45], TYOP [1, 137, 45], TYOP [1, 3, 45], TYOP [1, 139, 45],
   TYOP [1, 45, 6], TYOP [1, 1, 48], TYOP [1, 142, 48], TYOP [1, 47, 143],
   TYOP [1, 1, 144], TYOP [1, 105, 123], TYOP [1, 105, 127],
   TYOP [1, 105, 129], TYOP [1, 105, 131], TYOP [1, 105, 135],
   TYOP [1, 105, 139], TYOP [1, 49, 121]]
  end
  val _ = Theory.incorporate_consts "projectTypes" tyvector
     [("withdraw", 0), ("state_size", 3), ("state_CASE", 10),
      ("state2num", 3), ("secure", 0), ("psgNA", 11),
      ("principal_size", 13), ("principal_CASE", 14),
      ("principal2num", 13), ("platoonSergeantCom_size", 15),
      ("platoonSergeantCom_CASE", 16), ("platoonSergeantCom2num", 15),
      ("platoonLeaderCom_size", 17), ("platoonLeaderCom_CASE", 18),
      ("platoonLeaderCom2num", 17), ("output_size", 20),
      ("output_CASE", 23), ("output2num", 20), ("omniNA", 24),
      ("omniCom_size", 25), ("omniCom_CASE", 26), ("omniCom2num", 25),
      ("num2state", 27), ("num2principal", 28),
      ("num2platoonSergeantCom", 29), ("num2platoonLeaderCom", 30),
      ("num2output", 31), ("num2omniCom", 32), ("none", 24),
      ("complete", 0), ("commands_size", 34), ("commands_CASE", 41),
      ("actionsIn", 11), ("Withdraw", 19), ("WITHDRAW", 2),
      ("UnAuthorized", 19), ("UnAuthenticated", 19), ("Secure", 19),
      ("SECURE", 2), ("PlatoonSergeantCOM", 42), ("PlatoonSergeant", 12),
      ("PlatoonLeaderCOM", 43), ("PlatoonLeader", 12), ("OmniCOM", 44),
      ("Omni", 12), ("NoActionTaken", 19), ("Complete", 19),
      ("CONDUCT_PB", 2), ("COMPLETE", 2), ("ActionsIn", 19),
      ("ACTIONS_IN", 2)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("'commands'", 49), TMV("M", 33), TMV("M", 24), TMV("M", 19),
   TMV("M", 0), TMV("M", 11), TMV("M", 12), TMV("M", 2), TMV("M'", 33),
   TMV("M'", 24), TMV("M'", 19), TMV("M'", 0), TMV("M'", 11),
   TMV("M'", 12), TMV("M'", 2), TMV("P", 50), TMV("P", 51), TMV("P", 52),
   TMV("P", 53), TMV("P", 54), TMV("P", 55), TMV("P", 56), TMV("a", 24),
   TMV("a", 19), TMV("a", 0), TMV("a", 11), TMV("a", 12), TMV("a", 2),
   TMV("a'", 24), TMV("a'", 19), TMV("a'", 0), TMV("a'", 11),
   TMV("a'", 12), TMV("a'", 2), TMV("a0", 48), TMV("c", 33), TMV("cc", 33),
   TMV("commands", 59), TMV("f", 35), TMV("f", 60), TMV("f", 39),
   TMV("f", 37), TMV("f", 61), TMV("f", 62), TMV("f'", 39), TMV("f0", 39),
   TMV("f1", 37), TMV("f1'", 37), TMV("f2", 35), TMV("f2'", 35),
   TMV("fn", 63), TMV("m", 1), TMV("n", 1), TMV("o", 24),
   TMV("omniCom", 64), TMV("output", 70), TMV("p", 0), TMV("p", 11),
   TMV("platoonLeaderCom", 72), TMV("platoonSergeantCom", 73),
   TMV("principal", 75), TMV("r", 1), TMV("r'", 1), TMV("rep", 76),
   TMV("rep", 25), TMV("rep", 20), TMV("rep", 17), TMV("rep", 15),
   TMV("rep", 13), TMV("rep", 3), TMV("state", 80), TMV("v0", 4),
   TMV("v0'", 4), TMV("v1", 4), TMV("v1'", 4), TMV("v2", 4), TMV("v2'", 4),
   TMV("v3", 4), TMV("v3'", 4), TMV("v4", 4), TMV("v4'", 4), TMV("v5", 4),
   TMV("v5'", 4), TMV("v6", 4), TMV("v6'", 4), TMV("x", 24), TMV("x", 19),
   TMV("x", 0), TMV("x", 11), TMV("x", 12), TMV("x", 2), TMV("x0", 4),
   TMV("x1", 4), TMV("x2", 4), TMV("x3", 4), TMV("x4", 4), TMV("x5", 4),
   TMV("x6", 4), TMC(12, 82), TMC(12, 83), TMC(12, 84), TMC(12, 86),
   TMC(12, 88), TMC(12, 90), TMC(12, 92), TMC(12, 94), TMC(12, 96),
   TMC(12, 98), TMC(12, 100), TMC(12, 102), TMC(12, 104), TMC(12, 106),
   TMC(12, 87), TMC(12, 89), TMC(12, 93), TMC(12, 97), TMC(12, 99),
   TMC(12, 101), TMC(12, 103), TMC(13, 108), TMC(14, 110), TMC(14, 112),
   TMC(15, 114), TMC(16, 1), TMC(17, 115), TMC(18, 116), TMC(18, 114),
   TMC(18, 117), TMC(18, 115), TMC(18, 64), TMC(18, 65), TMC(18, 71),
   TMC(18, 73), TMC(18, 74), TMC(18, 118), TMC(18, 77), TMC(19, 114),
   TMC(20, 120), TMC(20, 122), TMC(20, 86), TMC(20, 124), TMC(20, 126),
   TMC(20, 128), TMC(20, 92), TMC(20, 130), TMC(20, 96), TMC(20, 132),
   TMC(20, 134), TMC(20, 136), TMC(20, 138), TMC(20, 140), TMC(20, 106),
   TMC(20, 87), TMC(20, 89), TMC(20, 93), TMC(20, 97), TMC(20, 99),
   TMC(20, 103), TMC(21, 2), TMC(22, 24), TMC(22, 0), TMC(22, 11),
   TMC(23, 19), TMC(24, 107), TMC(25, 107), TMC(26, 48), TMC(27, 2),
   TMC(28, 141), TMC(29, 2), TMC(30, 145), TMC(31, 19), TMC(32, 113),
   TMC(33, 107), TMC(34, 19), TMC(35, 12), TMC(36, 44), TMC(37, 12),
   TMC(38, 43), TMC(39, 12), TMC(40, 42), TMC(41, 2), TMC(42, 107),
   TMC(43, 19), TMC(44, 146), TMC(44, 147), TMC(44, 148), TMC(44, 149),
   TMC(44, 150), TMC(44, 151), TMC(44, 152), TMC(45, 19), TMC(46, 19),
   TMC(47, 2), TMC(48, 19), TMC(49, 1), TMC(50, 114), TMC(51, 11),
   TMC(52, 41), TMC(53, 34), TMC(54, 0), TMC(55, 24), TMC(56, 32),
   TMC(57, 31), TMC(58, 30), TMC(59, 29), TMC(60, 28), TMC(61, 27),
   TMC(62, 25), TMC(63, 26), TMC(64, 25), TMC(65, 24), TMC(66, 20),
   TMC(67, 23), TMC(68, 20), TMC(69, 17), TMC(70, 18), TMC(71, 17),
   TMC(72, 15), TMC(73, 16), TMC(74, 15), TMC(75, 13), TMC(76, 14),
   TMC(77, 13), TMC(78, 11), TMC(79, 0), TMC(80, 3), TMC(81, 10),
   TMC(82, 3), TMC(83, 0), TMC(84, 113)]
  end
  structure ThmBind = struct
    val DT = Thm.disk_thm
    val read = Term.read_raw tmvector
  end
  fun op platoonLeaderCom_TY_DEF x = x
    val op platoonLeaderCom_TY_DEF =
    ThmBind.DT(((("projectTypes",0),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%144%66%185%52%124$0@%172%163%163%194@4|@$0@|@"])
  fun op platoonLeaderCom_BIJ x = x
    val op platoonLeaderCom_BIJ =
    ThmBind.DT(((("projectTypes",1),
                [("bool",[116]),("projectTypes",[0])]),["DISK_THM"]),
               [ThmBind.read"%122%114%24%131%203%214$0@3$0@|@2%111%61%126%52%124$0@%172%163%163%194@4|$0@2%128%214%203$0@3$0@2|@2"])



  fun op platoonLeaderCom_size_def x = x
    val op platoonLeaderCom_size_def =
    ThmBind.DT(((("projectTypes",14),[]),[]),
               [ThmBind.read"%114%87%128%216$0@2%123@|@"])
  fun op platoonLeaderCom_CASE x = x
    val op platoonLeaderCom_CASE =
    ThmBind.DT(((("projectTypes",15),[]),[]),
               [ThmBind.read"%114%87%98%71%98%73%98%75%125%215$3@$2@$1@$0@2%51%167%124$0@%172%163%194@4$3@%167%128$0@%172%163%194@4$2@$1@2|%214$3@3|@|@|@|@"])
  fun op platoonSergeantCom_TY_DEF x = x
    val op platoonSergeantCom_TY_DEF =
    ThmBind.DT(((("projectTypes",23),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%146%67%186%52%124$0@%172%164%194@3|@$0@|@"])
  fun op platoonSergeantCom_BIJ x = x
    val op platoonSergeantCom_BIJ =
    ThmBind.DT(((("projectTypes",24),
                [("bool",[116]),("projectTypes",[23])]),["DISK_THM"]),
               [ThmBind.read"%122%115%25%132%204%217$0@3$0@|@2%111%61%126%52%124$0@%172%164%194@3|$0@2%128%217%204$0@3$0@2|@2"])


  fun op platoonSergeantCom_size_def x = x
    val op platoonSergeantCom_size_def =
    ThmBind.DT(((("projectTypes",36),[]),[]),
               [ThmBind.read"%115%88%128%219$0@2%123@|@"])
  fun op platoonSergeantCom_CASE x = x
    val op platoonSergeantCom_CASE =
    ThmBind.DT(((("projectTypes",37),[]),[]),
               [ThmBind.read"%115%88%98%71%98%73%125%218$2@$1@$0@2%51%167%128$0@%123@2$2@$1@|%217$2@3|@|@|@"])
  fun op omniCom_TY_DEF x = x
    val op omniCom_TY_DEF =
    ThmBind.DT(((("projectTypes",45),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%140%64%183%52%124$0@%172%164%194@3|@$0@|@"])
  fun op omniCom_BIJ x = x
    val op omniCom_BIJ =
    ThmBind.DT(((("projectTypes",46),
                [("bool",[116]),("projectTypes",[45])]),["DISK_THM"]),
               [ThmBind.read"%122%112%22%129%201%207$0@3$0@|@2%111%61%126%52%124$0@%172%164%194@3|$0@2%128%207%201$0@3$0@2|@2"])


  fun op omniCom_size_def x = x
    val op omniCom_size_def =
    ThmBind.DT(((("projectTypes",58),[]),[]),
               [ThmBind.read"%112%85%128%209$0@2%123@|@"])
  fun op omniCom_CASE x = x
    val op omniCom_CASE =
    ThmBind.DT(((("projectTypes",59),[]),[]),
               [ThmBind.read"%112%85%98%71%98%73%125%208$2@$1@$0@2%51%167%128$0@%123@2$2@$1@|%207$2@3|@|@|@"])
  fun op principal_TY_DEF x = x
    val op principal_TY_DEF =
    ThmBind.DT(((("projectTypes",67),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%148%68%187%52%124$0@%172%163%163%194@4|@$0@|@"])
  fun op principal_BIJ x = x
    val op principal_BIJ =
    ThmBind.DT(((("projectTypes",68),
                [("bool",[116]),("projectTypes",[67])]),["DISK_THM"]),
               [ThmBind.read"%122%116%26%133%205%220$0@3$0@|@2%111%61%126%52%124$0@%172%163%163%194@4|$0@2%128%220%205$0@3$0@2|@2"])



  fun op principal_size_def x = x
    val op principal_size_def =
    ThmBind.DT(((("projectTypes",81),[]),[]),
               [ThmBind.read"%116%89%128%222$0@2%123@|@"])
  fun op principal_CASE x = x
    val op principal_CASE =
    ThmBind.DT(((("projectTypes",82),[]),[]),
               [ThmBind.read"%116%89%98%71%98%73%98%75%125%221$3@$2@$1@$0@2%51%167%124$0@%172%163%194@4$3@%167%128$0@%172%163%194@4$2@$1@2|%220$3@3|@|@|@|@"])
  fun op commands_TY_DEF x = x
    val op commands_TY_DEF =
    ThmBind.DT(((("projectTypes",90),[("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%138%63%189%34%109%0%136%117%34%136%195%154%24%134$1@%24%169%123@%120$0@%121%161@%159@3%52%165|@|$0@2|@2%195%155%25%134$1@%25%169%181%123@2%120%160@%121$0@%159@3%52%165|@|$0@2|@2%152%22%134$1@%22%169%181%181%123@3%120%160@%121%161@$0@3%52%165|@|$0@2|@4$1$0@2|@2$0$1@2|@|@$0@|@"])
  fun op commands_case_def x = x
    val op commands_case_def =
    ThmBind.DT(((("projectTypes",98),
                [("bool",[26,180]),("ind_type",[33,34]),("pair",[8,9]),
                 ("projectTypes",[91,92,93,94,95,96,97])]),["DISK_THM"]),
               [ThmBind.read"%122%114%24%104%40%106%46%101%48%125%197%177$3@2$2@$1@$0@2$2$3@2|@|@|@|@2%122%115%25%104%40%106%46%101%48%125%197%179$3@2$2@$1@$0@2$1$3@2|@|@|@|@2%112%22%104%40%106%46%101%48%125%197%175$3@2$2@$1@$0@2$0$3@2|@|@|@|@3"])
  fun op commands_size_def x = x
    val op commands_size_def =
    ThmBind.DT(((("projectTypes",99),
                [("bool",[26,180]),("ind_type",[33,34]),("pair",[8,9]),
                 ("projectTypes",[91,92,93,94,95,96,97])]),["DISK_THM"]),
               [ThmBind.read"%122%114%24%128%198%177$0@3%119%172%163%194@3%216$0@3|@2%122%115%25%128%198%179$0@3%119%172%163%194@3%219$0@3|@2%112%22%128%198%175$0@3%119%172%163%194@3%209$0@3|@3"])
  fun op state_TY_DEF x = x
    val op state_TY_DEF =
    ThmBind.DT(((("projectTypes",107),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%150%69%188%52%124$0@%172%163%164%194@4|@$0@|@"])
  fun op state_BIJ x = x
    val op state_BIJ =
    ThmBind.DT(((("projectTypes",108),
                [("bool",[116]),("projectTypes",[107])]),["DISK_THM"]),
               [ThmBind.read"%122%118%27%135%206%225$0@3$0@|@2%111%61%126%52%124$0@%172%163%164%194@4|$0@2%128%225%206$0@3$0@2|@2"])





  fun op state_size_def x = x
    val op state_size_def =
    ThmBind.DT(((("projectTypes",123),[]),[]),
               [ThmBind.read"%118%90%128%227$0@2%123@|@"])
  fun op state_CASE x = x
    val op state_CASE =
    ThmBind.DT(((("projectTypes",124),[]),[]),
               [ThmBind.read"%118%90%98%71%98%73%98%75%98%77%98%79%125%226$5@$4@$3@$2@$1@$0@2%51%167%124$0@%172%164%194@4%167%128$0@%123@2$5@$4@2%167%124$0@%172%163%163%194@5$3@%167%128$0@%172%163%163%194@5$2@$1@3|%225$5@3|@|@|@|@|@|@"])
  fun op output_TY_DEF x = x
    val op output_TY_DEF =
    ThmBind.DT(((("projectTypes",132),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%142%65%184%52%124$0@%172%163%163%163%194@5|@$0@|@"])
  fun op output_BIJ x = x
    val op output_BIJ =
    ThmBind.DT(((("projectTypes",133),
                [("bool",[116]),("projectTypes",[132])]),["DISK_THM"]),
               [ThmBind.read"%122%113%23%130%202%211$0@3$0@|@2%111%61%126%52%124$0@%172%163%163%163%194@5|$0@2%128%211%202$0@3$0@2|@2"])







  fun op output_size_def x = x
    val op output_size_def =
    ThmBind.DT(((("projectTypes",150),[]),[]),
               [ThmBind.read"%113%86%128%213$0@2%123@|@"])
  fun op output_CASE x = x
    val op output_CASE =
    ThmBind.DT(((("projectTypes",151),[]),[]),
               [ThmBind.read"%113%86%98%71%98%73%98%75%98%77%98%79%98%81%98%83%125%212$7@$6@$5@$4@$3@$2@$1@$0@2%51%167%124$0@%172%163%163%194@5%167%124$0@%172%163%194@4$7@%167%128$0@%172%163%194@4$6@$5@3%167%124$0@%172%164%163%194@5$4@%167%124$0@%172%163%164%194@5$3@%167%128$0@%172%163%164%194@5$2@$1@4|%211$7@3|@|@|@|@|@|@|@|@"])
  fun op num2platoonLeaderCom_platoonLeaderCom2num x = x
    val op num2platoonLeaderCom_platoonLeaderCom2num =
    ThmBind.DT(((("projectTypes",2),[("projectTypes",[1])]),["DISK_THM"]),
               [ThmBind.read"%114%24%131%203%214$0@3$0@|@"])
  fun op platoonLeaderCom2num_num2platoonLeaderCom x = x
    val op platoonLeaderCom2num_num2platoonLeaderCom =
    ThmBind.DT(((("projectTypes",3),[("projectTypes",[1])]),["DISK_THM"]),
               [ThmBind.read"%111%61%126%124$0@%172%163%163%194@5%128%214%203$0@3$0@2|@"])
  fun op num2platoonLeaderCom_11 x = x
    val op num2platoonLeaderCom_11 =
    ThmBind.DT(((("projectTypes",4),
                [("bool",[26]),("projectTypes",[1])]),["DISK_THM"]),
               [ThmBind.read"%111%61%111%62%136%124$1@%172%163%163%194@5%136%124$0@%172%163%163%194@5%126%131%203$1@2%203$0@3%128$1@$0@4|@|@"])
  fun op platoonLeaderCom2num_11 x = x
    val op platoonLeaderCom2num_11 =
    ThmBind.DT(((("projectTypes",5),
                [("bool",[26]),("projectTypes",[1])]),["DISK_THM"]),
               [ThmBind.read"%114%24%114%30%126%128%214$1@2%214$0@3%131$1@$0@2|@|@"])
  fun op num2platoonLeaderCom_ONTO x = x
    val op num2platoonLeaderCom_ONTO =
    ThmBind.DT(((("projectTypes",6),
                [("bool",[25,62]),("projectTypes",[1])]),["DISK_THM"]),
               [ThmBind.read"%114%24%151%61%122%131$1@%203$0@3%124$0@%172%163%163%194@5|@|@"])
  fun op platoonLeaderCom2num_ONTO x = x
    val op platoonLeaderCom2num_ONTO =
    ThmBind.DT(((("projectTypes",7),
                [("bool",[26]),("projectTypes",[1])]),["DISK_THM"]),
               [ThmBind.read"%111%61%126%124$0@%172%163%163%194@5%154%24%128$1@%214$0@2|@2|@"])
  fun op num2platoonLeaderCom_thm x = x
    val op num2platoonLeaderCom_thm =
    ThmBind.DT(((("projectTypes",11),[("projectTypes",[8,9,10])]),[]),
               [ThmBind.read"%122%131%203%123@2%224@2%122%131%203%172%163%194@4%228@2%131%203%172%164%194@4%199@3"])
  fun op platoonLeaderCom2num_thm x = x
    val op platoonLeaderCom2num_thm =
    ThmBind.DT(((("projectTypes",12),
                [("bool",[25]),("numeral",[3,7]),
                 ("projectTypes",[3,8,9,10])]),["DISK_THM"]),
               [ThmBind.read"%122%128%214%224@2%123@2%122%128%214%228@2%172%163%194@4%128%214%199@2%172%164%194@5"])
  fun op platoonLeaderCom_EQ_platoonLeaderCom x = x
    val op platoonLeaderCom_EQ_platoonLeaderCom =
    ThmBind.DT(((("projectTypes",13),
                [("bool",[57]),("projectTypes",[5])]),["DISK_THM"]),
               [ThmBind.read"%114%24%114%30%126%131$1@$0@2%128%214$1@2%214$0@3|@|@"])
  fun op platoonLeaderCom_case_def x = x
    val op platoonLeaderCom_case_def =
    ThmBind.DT(((("projectTypes",16),
                [("bool",[55,63]),("numeral",[3,6,7]),
                 ("projectTypes",[12,15])]),["DISK_THM"]),
               [ThmBind.read"%122%98%71%98%73%98%75%125%215%224@$2@$1@$0@2$2@|@|@|@2%122%98%71%98%73%98%75%125%215%228@$2@$1@$0@2$1@|@|@|@2%98%71%98%73%98%75%125%215%199@$2@$1@$0@2$0@|@|@|@3"])
  fun op datatype_platoonLeaderCom x = x
    val op datatype_platoonLeaderCom =
    ThmBind.DT(((("projectTypes",17),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%171%58%224@%228@%199@2"])
  fun op platoonLeaderCom_distinct x = x
    val op platoonLeaderCom_distinct =
    ThmBind.DT(((("projectTypes",18),
                [("numeral",[3,6]),
                 ("projectTypes",[12,13])]),["DISK_THM"]),
               [ThmBind.read"%122%229%131%224@%228@3%122%229%131%224@%199@3%229%131%228@%199@4"])
  fun op platoonLeaderCom_case_cong x = x
    val op platoonLeaderCom_case_cong =
    ThmBind.DT(((("projectTypes",19),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("projectTypes",[6,8,9,10,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%114%4%114%11%98%71%98%73%98%75%136%122%131$4@$3@2%122%136%131$3@%224@2%125$2@%72@3%122%136%131$3@%228@2%125$1@%74@3%136%131$3@%199@2%125$0@%76@6%125%215$4@$2@$1@$0@2%215$3@%72@%74@%76@3|@|@|@|@|@"])
  fun op platoonLeaderCom_nchotomy x = x
    val op platoonLeaderCom_nchotomy =
    ThmBind.DT(((("projectTypes",20),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("projectTypes",[6,8,9,10]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%114%24%195%131$0@%224@2%195%131$0@%228@2%131$0@%199@3|@"])
  fun op platoonLeaderCom_Axiom x = x
    val op platoonLeaderCom_Axiom =
    ThmBind.DT(((("projectTypes",21),
                [("bool",[8,14,25,53,55,63]),("numeral",[3,8]),
                 ("projectTypes",[12])]),["DISK_THM"]),
               [ThmBind.read"%98%91%98%92%98%93%143%40%122%125$0%224@2$3@2%122%125$0%228@2$2@2%125$0%199@2$1@3|@|@|@|@"])
  fun op platoonLeaderCom_induction x = x
    val op platoonLeaderCom_induction =
    ThmBind.DT(((("projectTypes",22),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("projectTypes",[6,8,9,10]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%105%18%136%122$0%199@2%122$0%224@2$0%228@4%114%24$1$0@|@2|@"])
  fun op num2platoonSergeantCom_platoonSergeantCom2num x = x
    val op num2platoonSergeantCom_platoonSergeantCom2num =
    ThmBind.DT(((("projectTypes",25),
                [("projectTypes",[24])]),["DISK_THM"]),
               [ThmBind.read"%115%25%132%204%217$0@3$0@|@"])
  fun op platoonSergeantCom2num_num2platoonSergeantCom x = x
    val op platoonSergeantCom2num_num2platoonSergeantCom =
    ThmBind.DT(((("projectTypes",26),
                [("projectTypes",[24])]),["DISK_THM"]),
               [ThmBind.read"%111%61%126%124$0@%172%164%194@4%128%217%204$0@3$0@2|@"])
  fun op num2platoonSergeantCom_11 x = x
    val op num2platoonSergeantCom_11 =
    ThmBind.DT(((("projectTypes",27),
                [("bool",[26]),("projectTypes",[24])]),["DISK_THM"]),
               [ThmBind.read"%111%61%111%62%136%124$1@%172%164%194@4%136%124$0@%172%164%194@4%126%132%204$1@2%204$0@3%128$1@$0@4|@|@"])
  fun op platoonSergeantCom2num_11 x = x
    val op platoonSergeantCom2num_11 =
    ThmBind.DT(((("projectTypes",28),
                [("bool",[26]),("projectTypes",[24])]),["DISK_THM"]),
               [ThmBind.read"%115%25%115%31%126%128%217$1@2%217$0@3%132$1@$0@2|@|@"])
  fun op num2platoonSergeantCom_ONTO x = x
    val op num2platoonSergeantCom_ONTO =
    ThmBind.DT(((("projectTypes",29),
                [("bool",[25,62]),("projectTypes",[24])]),["DISK_THM"]),
               [ThmBind.read"%115%25%151%61%122%132$1@%204$0@3%124$0@%172%164%194@4|@|@"])
  fun op platoonSergeantCom2num_ONTO x = x
    val op platoonSergeantCom2num_ONTO =
    ThmBind.DT(((("projectTypes",30),
                [("bool",[26]),("projectTypes",[24])]),["DISK_THM"]),
               [ThmBind.read"%111%61%126%124$0@%172%164%194@4%155%25%128$1@%217$0@2|@2|@"])
  fun op num2platoonSergeantCom_thm x = x
    val op num2platoonSergeantCom_thm =
    ThmBind.DT(((("projectTypes",33),[("projectTypes",[31,32])]),[]),
               [ThmBind.read"%122%132%204%123@2%196@2%132%204%172%163%194@4%223@2"])
  fun op platoonSergeantCom2num_thm x = x
    val op platoonSergeantCom2num_thm =
    ThmBind.DT(((("projectTypes",34),
                [("bool",[25,53]),("numeral",[3,7]),
                 ("projectTypes",[26,31,32])]),["DISK_THM"]),
               [ThmBind.read"%122%128%217%196@2%123@2%128%217%223@2%172%163%194@4"])
  fun op platoonSergeantCom_EQ_platoonSergeantCom x = x
    val op platoonSergeantCom_EQ_platoonSergeantCom =
    ThmBind.DT(((("projectTypes",35),
                [("bool",[57]),("projectTypes",[28])]),["DISK_THM"]),
               [ThmBind.read"%115%25%115%31%126%132$1@$0@2%128%217$1@2%217$0@3|@|@"])
  fun op platoonSergeantCom_case_def x = x
    val op platoonSergeantCom_case_def =
    ThmBind.DT(((("projectTypes",38),
                [("bool",[55,63]),("numeral",[3,6]),
                 ("projectTypes",[34,37])]),["DISK_THM"]),
               [ThmBind.read"%122%98%71%98%73%125%218%196@$1@$0@2$1@|@|@2%98%71%98%73%125%218%223@$1@$0@2$0@|@|@2"])
  fun op datatype_platoonSergeantCom x = x
    val op datatype_platoonSergeantCom =
    ThmBind.DT(((("projectTypes",39),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%171%59%196@%223@2"])
  fun op platoonSergeantCom_distinct x = x
    val op platoonSergeantCom_distinct =
    ThmBind.DT(((("projectTypes",40),
                [("numeral",[3,6]),
                 ("projectTypes",[34,35])]),["DISK_THM"]),
               [ThmBind.read"%229%132%196@%223@2"])
  fun op platoonSergeantCom_case_cong x = x
    val op platoonSergeantCom_case_cong =
    ThmBind.DT(((("projectTypes",41),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16]),
                 ("projectTypes",[29,31,32,38]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%115%5%115%12%98%71%98%73%136%122%132$3@$2@2%122%136%132$2@%196@2%125$1@%72@3%136%132$2@%223@2%125$0@%74@5%125%218$3@$1@$0@2%218$2@%72@%74@3|@|@|@|@"])
  fun op platoonSergeantCom_nchotomy x = x
    val op platoonSergeantCom_nchotomy =
    ThmBind.DT(((("projectTypes",42),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16]),
                 ("projectTypes",[29,31,32]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%115%25%195%132$0@%196@2%132$0@%223@2|@"])
  fun op platoonSergeantCom_Axiom x = x
    val op platoonSergeantCom_Axiom =
    ThmBind.DT(((("projectTypes",43),
                [("bool",[8,14,25,55,63]),("numeral",[3,8]),
                 ("projectTypes",[34])]),["DISK_THM"]),
               [ThmBind.read"%98%91%98%92%145%41%122%125$0%196@2$2@2%125$0%223@2$1@2|@|@|@"])
  fun op platoonSergeantCom_induction x = x
    val op platoonSergeantCom_induction =
    ThmBind.DT(((("projectTypes",44),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16]),
                 ("projectTypes",[29,31,32]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%107%19%136%122$0%196@2$0%223@3%115%25$1$0@|@2|@"])
  fun op num2omniCom_omniCom2num x = x
    val op num2omniCom_omniCom2num =
    ThmBind.DT(((("projectTypes",47),
                [("projectTypes",[46])]),["DISK_THM"]),
               [ThmBind.read"%112%22%129%201%207$0@3$0@|@"])
  fun op omniCom2num_num2omniCom x = x
    val op omniCom2num_num2omniCom =
    ThmBind.DT(((("projectTypes",48),
                [("projectTypes",[46])]),["DISK_THM"]),
               [ThmBind.read"%111%61%126%124$0@%172%164%194@4%128%207%201$0@3$0@2|@"])
  fun op num2omniCom_11 x = x
    val op num2omniCom_11 =
    ThmBind.DT(((("projectTypes",49),
                [("bool",[26]),("projectTypes",[46])]),["DISK_THM"]),
               [ThmBind.read"%111%61%111%62%136%124$1@%172%164%194@4%136%124$0@%172%164%194@4%126%129%201$1@2%201$0@3%128$1@$0@4|@|@"])
  fun op omniCom2num_11 x = x
    val op omniCom2num_11 =
    ThmBind.DT(((("projectTypes",50),
                [("bool",[26]),("projectTypes",[46])]),["DISK_THM"]),
               [ThmBind.read"%112%22%112%28%126%128%207$1@2%207$0@3%129$1@$0@2|@|@"])
  fun op num2omniCom_ONTO x = x
    val op num2omniCom_ONTO =
    ThmBind.DT(((("projectTypes",51),
                [("bool",[25,62]),("projectTypes",[46])]),["DISK_THM"]),
               [ThmBind.read"%112%22%151%61%122%129$1@%201$0@3%124$0@%172%164%194@4|@|@"])
  fun op omniCom2num_ONTO x = x
    val op omniCom2num_ONTO =
    ThmBind.DT(((("projectTypes",52),
                [("bool",[26]),("projectTypes",[46])]),["DISK_THM"]),
               [ThmBind.read"%111%61%126%124$0@%172%164%194@4%152%22%128$1@%207$0@2|@2|@"])
  fun op num2omniCom_thm x = x
    val op num2omniCom_thm =
    ThmBind.DT(((("projectTypes",55),[("projectTypes",[53,54])]),[]),
               [ThmBind.read"%122%129%201%123@2%200@2%129%201%172%163%194@4%210@2"])
  fun op omniCom2num_thm x = x
    val op omniCom2num_thm =
    ThmBind.DT(((("projectTypes",56),
                [("bool",[25,53]),("numeral",[3,7]),
                 ("projectTypes",[48,53,54])]),["DISK_THM"]),
               [ThmBind.read"%122%128%207%200@2%123@2%128%207%210@2%172%163%194@4"])
  fun op omniCom_EQ_omniCom x = x
    val op omniCom_EQ_omniCom =
    ThmBind.DT(((("projectTypes",57),
                [("bool",[57]),("projectTypes",[50])]),["DISK_THM"]),
               [ThmBind.read"%112%22%112%28%126%129$1@$0@2%128%207$1@2%207$0@3|@|@"])
  fun op omniCom_case_def x = x
    val op omniCom_case_def =
    ThmBind.DT(((("projectTypes",60),
                [("bool",[55,63]),("numeral",[3,6]),
                 ("projectTypes",[56,59])]),["DISK_THM"]),
               [ThmBind.read"%122%98%71%98%73%125%208%200@$1@$0@2$1@|@|@2%98%71%98%73%125%208%210@$1@$0@2$0@|@|@2"])
  fun op datatype_omniCom x = x
    val op datatype_omniCom =
    ThmBind.DT(((("projectTypes",61),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%171%54%200@%210@2"])
  fun op omniCom_distinct x = x
    val op omniCom_distinct =
    ThmBind.DT(((("projectTypes",62),
                [("numeral",[3,6]),
                 ("projectTypes",[56,57])]),["DISK_THM"]),
               [ThmBind.read"%229%129%200@%210@2"])
  fun op omniCom_case_cong x = x
    val op omniCom_case_cong =
    ThmBind.DT(((("projectTypes",63),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16]),
                 ("projectTypes",[51,53,54,60]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%112%2%112%9%98%71%98%73%136%122%129$3@$2@2%122%136%129$2@%200@2%125$1@%72@3%136%129$2@%210@2%125$0@%74@5%125%208$3@$1@$0@2%208$2@%72@%74@3|@|@|@|@"])
  fun op omniCom_nchotomy x = x
    val op omniCom_nchotomy =
    ThmBind.DT(((("projectTypes",64),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16]),
                 ("projectTypes",[51,53,54]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%112%22%195%129$0@%200@2%129$0@%210@2|@"])
  fun op omniCom_Axiom x = x
    val op omniCom_Axiom =
    ThmBind.DT(((("projectTypes",65),
                [("bool",[8,14,25,55,63]),("numeral",[3,8]),
                 ("projectTypes",[56])]),["DISK_THM"]),
               [ThmBind.read"%98%91%98%92%139%38%122%125$0%200@2$2@2%125$0%210@2$1@2|@|@|@"])
  fun op omniCom_induction x = x
    val op omniCom_induction =
    ThmBind.DT(((("projectTypes",66),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16]),
                 ("projectTypes",[51,53,54]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%102%16%136%122$0%200@2$0%210@3%112%22$1$0@|@2|@"])
  fun op num2principal_principal2num x = x
    val op num2principal_principal2num =
    ThmBind.DT(((("projectTypes",69),
                [("projectTypes",[68])]),["DISK_THM"]),
               [ThmBind.read"%116%26%133%205%220$0@3$0@|@"])
  fun op principal2num_num2principal x = x
    val op principal2num_num2principal =
    ThmBind.DT(((("projectTypes",70),
                [("projectTypes",[68])]),["DISK_THM"]),
               [ThmBind.read"%111%61%126%124$0@%172%163%163%194@5%128%220%205$0@3$0@2|@"])
  fun op num2principal_11 x = x
    val op num2principal_11 =
    ThmBind.DT(((("projectTypes",71),
                [("bool",[26]),("projectTypes",[68])]),["DISK_THM"]),
               [ThmBind.read"%111%61%111%62%136%124$1@%172%163%163%194@5%136%124$0@%172%163%163%194@5%126%133%205$1@2%205$0@3%128$1@$0@4|@|@"])
  fun op principal2num_11 x = x
    val op principal2num_11 =
    ThmBind.DT(((("projectTypes",72),
                [("bool",[26]),("projectTypes",[68])]),["DISK_THM"]),
               [ThmBind.read"%116%26%116%32%126%128%220$1@2%220$0@3%133$1@$0@2|@|@"])
  fun op num2principal_ONTO x = x
    val op num2principal_ONTO =
    ThmBind.DT(((("projectTypes",73),
                [("bool",[25,62]),("projectTypes",[68])]),["DISK_THM"]),
               [ThmBind.read"%116%26%151%61%122%133$1@%205$0@3%124$0@%172%163%163%194@5|@|@"])
  fun op principal2num_ONTO x = x
    val op principal2num_ONTO =
    ThmBind.DT(((("projectTypes",74),
                [("bool",[26]),("projectTypes",[68])]),["DISK_THM"]),
               [ThmBind.read"%111%61%126%124$0@%172%163%163%194@5%156%26%128$1@%220$0@2|@2|@"])
  fun op num2principal_thm x = x
    val op num2principal_thm =
    ThmBind.DT(((("projectTypes",78),[("projectTypes",[75,76,77])]),[]),
               [ThmBind.read"%122%133%205%123@2%176@2%122%133%205%172%163%194@4%178@2%133%205%172%164%194@4%174@3"])
  fun op principal2num_thm x = x
    val op principal2num_thm =
    ThmBind.DT(((("projectTypes",79),
                [("bool",[25]),("numeral",[3,7]),
                 ("projectTypes",[70,75,76,77])]),["DISK_THM"]),
               [ThmBind.read"%122%128%220%176@2%123@2%122%128%220%178@2%172%163%194@4%128%220%174@2%172%164%194@5"])
  fun op principal_EQ_principal x = x
    val op principal_EQ_principal =
    ThmBind.DT(((("projectTypes",80),
                [("bool",[57]),("projectTypes",[72])]),["DISK_THM"]),
               [ThmBind.read"%116%26%116%32%126%133$1@$0@2%128%220$1@2%220$0@3|@|@"])
  fun op principal_case_def x = x
    val op principal_case_def =
    ThmBind.DT(((("projectTypes",83),
                [("bool",[55,63]),("numeral",[3,6,7]),
                 ("projectTypes",[79,82])]),["DISK_THM"]),
               [ThmBind.read"%122%98%71%98%73%98%75%125%221%176@$2@$1@$0@2$2@|@|@|@2%122%98%71%98%73%98%75%125%221%178@$2@$1@$0@2$1@|@|@|@2%98%71%98%73%98%75%125%221%174@$2@$1@$0@2$0@|@|@|@3"])
  fun op datatype_principal x = x
    val op datatype_principal =
    ThmBind.DT(((("projectTypes",84),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%171%60%176@%178@%174@2"])
  fun op principal_distinct x = x
    val op principal_distinct =
    ThmBind.DT(((("projectTypes",85),
                [("numeral",[3,6]),
                 ("projectTypes",[79,80])]),["DISK_THM"]),
               [ThmBind.read"%122%229%133%176@%178@3%122%229%133%176@%174@3%229%133%178@%174@4"])
  fun op principal_case_cong x = x
    val op principal_case_cong =
    ThmBind.DT(((("projectTypes",86),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("projectTypes",[73,75,76,77,83]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%116%6%116%13%98%71%98%73%98%75%136%122%133$4@$3@2%122%136%133$3@%176@2%125$2@%72@3%122%136%133$3@%178@2%125$1@%74@3%136%133$3@%174@2%125$0@%76@6%125%221$4@$2@$1@$0@2%221$3@%72@%74@%76@3|@|@|@|@|@"])
  fun op principal_nchotomy x = x
    val op principal_nchotomy =
    ThmBind.DT(((("projectTypes",87),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("projectTypes",[73,75,76,77]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%116%26%195%133$0@%176@2%195%133$0@%178@2%133$0@%174@3|@"])
  fun op principal_Axiom x = x
    val op principal_Axiom =
    ThmBind.DT(((("projectTypes",88),
                [("bool",[8,14,25,53,55,63]),("numeral",[3,8]),
                 ("projectTypes",[79])]),["DISK_THM"]),
               [ThmBind.read"%98%91%98%92%98%93%147%42%122%125$0%176@2$3@2%122%125$0%178@2$2@2%125$0%174@2$1@3|@|@|@|@"])
  fun op principal_induction x = x
    val op principal_induction =
    ThmBind.DT(((("projectTypes",89),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("projectTypes",[73,75,76,77]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%108%20%136%122$0%174@2%122$0%176@2$0%178@4%116%26$1$0@|@2|@"])
  fun op datatype_commands x = x
    val op datatype_commands =
    ThmBind.DT(((("projectTypes",100),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%171%37%177@%179@%175@2"])
  fun op commands_11 x = x
    val op commands_11 =
    ThmBind.DT(((("projectTypes",101),
                [("bool",[26,55,62,180]),("ind_type",[33,34]),
                 ("pair",[8,9]),
                 ("projectTypes",[91,92,93,94,95,96,97])]),["DISK_THM"]),
               [ThmBind.read"%122%114%24%114%30%126%127%177$1@2%177$0@3%131$1@$0@2|@|@2%122%115%25%115%31%126%127%179$1@2%179$0@3%132$1@$0@2|@|@2%112%22%112%28%126%127%175$1@2%175$0@3%129$1@$0@2|@|@3"])
  fun op commands_distinct x = x
    val op commands_distinct =
    ThmBind.DT(((("projectTypes",102),
                [("bool",[25,26,35,46,50,53,55,62,180]),
                 ("ind_type",[33,34]),("pair",[8,9]),
                 ("projectTypes",[91,92,93,94,95,96,97])]),["DISK_THM"]),
               [ThmBind.read"%122%115%31%114%24%229%127%177$0@2%179$1@3|@|@2%122%112%28%114%24%229%127%177$0@2%175$1@3|@|@2%112%28%115%25%229%127%179$0@2%175$1@3|@|@3"])
  fun op commands_case_cong x = x
    val op commands_case_cong =
    ThmBind.DT(((("projectTypes",103),
                [("bool",[26,180]),
                 ("projectTypes",
                 [91,92,93,94,95,96,97,98])]),["DISK_THM"]),
               [ThmBind.read"%99%1%99%8%104%40%106%46%101%48%136%122%127$4@$3@2%122%114%24%136%127$4@%177$0@3%125$3$0@2%44$0@3|@2%122%115%25%136%127$4@%179$0@3%125$2$0@2%47$0@3|@2%112%22%136%127$4@%175$0@3%125$1$0@2%49$0@3|@5%125%197$4@$2@$1@$0@2%197$3@%44@%47@%49@3|@|@|@|@|@"])
  fun op commands_nchotomy x = x
    val op commands_nchotomy =
    ThmBind.DT(((("projectTypes",104),
                [("bool",[26,180]),
                 ("projectTypes",[91,92,93,94,95,96,97])]),["DISK_THM"]),
               [ThmBind.read"%99%36%195%154%56%127$1@%177$0@2|@2%195%155%57%127$1@%179$0@2|@2%152%53%127$1@%175$0@2|@3|@"])
  fun op commands_Axiom x = x
    val op commands_Axiom =
    ThmBind.DT(((("projectTypes",105),
                [("bool",[26,180]),("ind_type",[33,34]),("pair",[8,9]),
                 ("projectTypes",[91,92,93,94,95,96,97])]),["DISK_THM"]),
               [ThmBind.read"%104%45%106%46%101%48%137%50%122%114%24%125$1%177$0@3$4$0@2|@2%122%115%25%125$1%179$0@3$3$0@2|@2%112%22%125$1%175$0@3$2$0@2|@3|@|@|@|@"])
  fun op commands_induction x = x
    val op commands_induction =
    ThmBind.DT(((("projectTypes",106),
                [("bool",[26]),
                 ("projectTypes",[91,92,93,94,95,96,97])]),["DISK_THM"]),
               [ThmBind.read"%100%15%136%122%114%56$1%177$0@2|@2%122%115%57$1%179$0@2|@2%112%53$1%175$0@2|@4%99%35$1$0@|@2|@"])
  fun op num2state_state2num x = x
    val op num2state_state2num =
    ThmBind.DT(((("projectTypes",109),
                [("projectTypes",[108])]),["DISK_THM"]),
               [ThmBind.read"%118%27%135%206%225$0@3$0@|@"])
  fun op state2num_num2state x = x
    val op state2num_num2state =
    ThmBind.DT(((("projectTypes",110),
                [("projectTypes",[108])]),["DISK_THM"]),
               [ThmBind.read"%111%61%126%124$0@%172%163%164%194@5%128%225%206$0@3$0@2|@"])
  fun op num2state_11 x = x
    val op num2state_11 =
    ThmBind.DT(((("projectTypes",111),
                [("bool",[26]),("projectTypes",[108])]),["DISK_THM"]),
               [ThmBind.read"%111%61%111%62%136%124$1@%172%163%164%194@5%136%124$0@%172%163%164%194@5%126%135%206$1@2%206$0@3%128$1@$0@4|@|@"])
  fun op state2num_11 x = x
    val op state2num_11 =
    ThmBind.DT(((("projectTypes",112),
                [("bool",[26]),("projectTypes",[108])]),["DISK_THM"]),
               [ThmBind.read"%118%27%118%33%126%128%225$1@2%225$0@3%135$1@$0@2|@|@"])
  fun op num2state_ONTO x = x
    val op num2state_ONTO =
    ThmBind.DT(((("projectTypes",113),
                [("bool",[25,62]),("projectTypes",[108])]),["DISK_THM"]),
               [ThmBind.read"%118%27%151%61%122%135$1@%206$0@3%124$0@%172%163%164%194@5|@|@"])
  fun op state2num_ONTO x = x
    val op state2num_ONTO =
    ThmBind.DT(((("projectTypes",114),
                [("bool",[26]),("projectTypes",[108])]),["DISK_THM"]),
               [ThmBind.read"%111%61%126%124$0@%172%163%164%194@5%157%27%128$1@%225$0@2|@2|@"])
  fun op num2state_thm x = x
    val op num2state_thm =
    ThmBind.DT(((("projectTypes",120),
                [("projectTypes",[115,116,117,118,119])]),[]),
               [ThmBind.read"%122%135%206%123@2%168@2%122%135%206%172%163%194@4%180@2%122%135%206%172%164%194@4%158@2%122%135%206%172%163%163%194@5%192@2%135%206%172%164%163%194@5%166@5"])
  fun op state2num_thm x = x
    val op state2num_thm =
    ThmBind.DT(((("projectTypes",121),
                [("bool",[25,53]),("numeral",[3,7]),
                 ("projectTypes",
                 [110,115,116,117,118,119])]),["DISK_THM"]),
               [ThmBind.read"%122%128%225%168@2%123@2%122%128%225%180@2%172%163%194@4%122%128%225%158@2%172%164%194@4%122%128%225%192@2%172%163%163%194@5%128%225%166@2%172%164%163%194@8"])
  fun op state_EQ_state x = x
    val op state_EQ_state =
    ThmBind.DT(((("projectTypes",122),
                [("bool",[57]),("projectTypes",[112])]),["DISK_THM"]),
               [ThmBind.read"%118%27%118%33%126%135$1@$0@2%128%225$1@2%225$0@3|@|@"])
  fun op state_case_def x = x
    val op state_case_def =
    ThmBind.DT(((("projectTypes",125),
                [("bool",[53,55,63]),("numeral",[3,6,7]),
                 ("projectTypes",[121,124])]),["DISK_THM"]),
               [ThmBind.read"%122%98%71%98%73%98%75%98%77%98%79%125%226%168@$4@$3@$2@$1@$0@2$4@|@|@|@|@|@2%122%98%71%98%73%98%75%98%77%98%79%125%226%180@$4@$3@$2@$1@$0@2$3@|@|@|@|@|@2%122%98%71%98%73%98%75%98%77%98%79%125%226%158@$4@$3@$2@$1@$0@2$2@|@|@|@|@|@2%122%98%71%98%73%98%75%98%77%98%79%125%226%192@$4@$3@$2@$1@$0@2$1@|@|@|@|@|@2%98%71%98%73%98%75%98%77%98%79%125%226%166@$4@$3@$2@$1@$0@2$0@|@|@|@|@|@5"])
  fun op datatype_state x = x
    val op datatype_state =
    ThmBind.DT(((("projectTypes",126),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%171%70%168@%180@%158@%192@%166@2"])
  fun op state_distinct x = x
    val op state_distinct =
    ThmBind.DT(((("projectTypes",127),
                [("numeral",[3,6]),
                 ("projectTypes",[121,122])]),["DISK_THM"]),
               [ThmBind.read"%122%229%135%168@%180@3%122%229%135%168@%158@3%122%229%135%168@%192@3%122%229%135%168@%166@3%122%229%135%180@%158@3%122%229%135%180@%192@3%122%229%135%180@%166@3%122%229%135%158@%192@3%122%229%135%158@%166@3%229%135%192@%166@11"])
  fun op state_case_cong x = x
    val op state_case_cong =
    ThmBind.DT(((("projectTypes",128),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("projectTypes",[113,115,116,117,118,119,125]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%118%7%118%14%98%71%98%73%98%75%98%77%98%79%136%122%135$6@$5@2%122%136%135$5@%168@2%125$4@%72@3%122%136%135$5@%180@2%125$3@%74@3%122%136%135$5@%158@2%125$2@%76@3%122%136%135$5@%192@2%125$1@%78@3%136%135$5@%166@2%125$0@%80@8%125%226$6@$4@$3@$2@$1@$0@2%226$5@%72@%74@%76@%78@%80@3|@|@|@|@|@|@|@"])
  fun op state_nchotomy x = x
    val op state_nchotomy =
    ThmBind.DT(((("projectTypes",129),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("projectTypes",[113,115,116,117,118,119]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%118%27%195%135$0@%168@2%195%135$0@%180@2%195%135$0@%158@2%195%135$0@%192@2%135$0@%166@5|@"])
  fun op state_Axiom x = x
    val op state_Axiom =
    ThmBind.DT(((("projectTypes",130),
                [("bool",[8,14,25,53,55,63]),("numeral",[3,8]),
                 ("projectTypes",[121])]),["DISK_THM"]),
               [ThmBind.read"%98%91%98%92%98%93%98%94%98%95%149%43%122%125$0%168@2$5@2%122%125$0%180@2$4@2%122%125$0%158@2$3@2%122%125$0%192@2$2@2%125$0%166@2$1@5|@|@|@|@|@|@"])
  fun op state_induction x = x
    val op state_induction =
    ThmBind.DT(((("projectTypes",131),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("projectTypes",[113,115,116,117,118,119]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%110%21%136%122$0%158@2%122$0%166@2%122$0%168@2%122$0%180@2$0%192@6%118%27$1$0@|@2|@"])
  fun op num2output_output2num x = x
    val op num2output_output2num =
    ThmBind.DT(((("projectTypes",134),
                [("projectTypes",[133])]),["DISK_THM"]),
               [ThmBind.read"%113%23%130%202%211$0@3$0@|@"])
  fun op output2num_num2output x = x
    val op output2num_num2output =
    ThmBind.DT(((("projectTypes",135),
                [("projectTypes",[133])]),["DISK_THM"]),
               [ThmBind.read"%111%61%126%124$0@%172%163%163%163%194@6%128%211%202$0@3$0@2|@"])
  fun op num2output_11 x = x
    val op num2output_11 =
    ThmBind.DT(((("projectTypes",136),
                [("bool",[26]),("projectTypes",[133])]),["DISK_THM"]),
               [ThmBind.read"%111%61%111%62%136%124$1@%172%163%163%163%194@6%136%124$0@%172%163%163%163%194@6%126%130%202$1@2%202$0@3%128$1@$0@4|@|@"])
  fun op output2num_11 x = x
    val op output2num_11 =
    ThmBind.DT(((("projectTypes",137),
                [("bool",[26]),("projectTypes",[133])]),["DISK_THM"]),
               [ThmBind.read"%113%23%113%29%126%128%211$1@2%211$0@3%130$1@$0@2|@|@"])
  fun op num2output_ONTO x = x
    val op num2output_ONTO =
    ThmBind.DT(((("projectTypes",138),
                [("bool",[25,62]),("projectTypes",[133])]),["DISK_THM"]),
               [ThmBind.read"%113%23%151%61%122%130$1@%202$0@3%124$0@%172%163%163%163%194@6|@|@"])
  fun op output2num_ONTO x = x
    val op output2num_ONTO =
    ThmBind.DT(((("projectTypes",139),
                [("bool",[26]),("projectTypes",[133])]),["DISK_THM"]),
               [ThmBind.read"%111%61%126%124$0@%172%163%163%163%194@6%153%23%128$1@%211$0@2|@2|@"])
  fun op num2output_thm x = x
    val op num2output_thm =
    ThmBind.DT(((("projectTypes",147),
                [("projectTypes",[140,141,142,143,144,145,146])]),[]),
               [ThmBind.read"%122%130%202%123@2%182@2%122%130%202%172%163%194@4%193@2%122%130%202%172%164%194@4%170@2%122%130%202%172%163%163%194@5%162@2%122%130%202%172%164%163%194@5%173@2%122%130%202%172%163%164%194@5%190@2%130%202%172%164%164%194@5%191@7"])
  fun op output2num_thm x = x
    val op output2num_thm =
    ThmBind.DT(((("projectTypes",148),
                [("bool",[25]),("numeral",[3,7]),
                 ("projectTypes",
                 [135,140,141,142,143,144,145,146])]),["DISK_THM"]),
               [ThmBind.read"%122%128%211%182@2%123@2%122%128%211%193@2%172%163%194@4%122%128%211%170@2%172%164%194@4%122%128%211%162@2%172%163%163%194@5%122%128%211%173@2%172%164%163%194@5%122%128%211%190@2%172%163%164%194@5%128%211%191@2%172%164%164%194@10"])
  fun op output_EQ_output x = x
    val op output_EQ_output =
    ThmBind.DT(((("projectTypes",149),
                [("bool",[57]),("projectTypes",[137])]),["DISK_THM"]),
               [ThmBind.read"%113%23%113%29%126%130$1@$0@2%128%211$1@2%211$0@3|@|@"])
  fun op output_case_def x = x
    val op output_case_def =
    ThmBind.DT(((("projectTypes",152),
                [("bool",[53,55,63]),("numeral",[3,6,7]),
                 ("projectTypes",[148,151])]),["DISK_THM"]),
               [ThmBind.read"%122%98%71%98%73%98%75%98%77%98%79%98%81%98%83%125%212%182@$6@$5@$4@$3@$2@$1@$0@2$6@|@|@|@|@|@|@|@2%122%98%71%98%73%98%75%98%77%98%79%98%81%98%83%125%212%193@$6@$5@$4@$3@$2@$1@$0@2$5@|@|@|@|@|@|@|@2%122%98%71%98%73%98%75%98%77%98%79%98%81%98%83%125%212%170@$6@$5@$4@$3@$2@$1@$0@2$4@|@|@|@|@|@|@|@2%122%98%71%98%73%98%75%98%77%98%79%98%81%98%83%125%212%162@$6@$5@$4@$3@$2@$1@$0@2$3@|@|@|@|@|@|@|@2%122%98%71%98%73%98%75%98%77%98%79%98%81%98%83%125%212%173@$6@$5@$4@$3@$2@$1@$0@2$2@|@|@|@|@|@|@|@2%122%98%71%98%73%98%75%98%77%98%79%98%81%98%83%125%212%190@$6@$5@$4@$3@$2@$1@$0@2$1@|@|@|@|@|@|@|@2%98%71%98%73%98%75%98%77%98%79%98%81%98%83%125%212%191@$6@$5@$4@$3@$2@$1@$0@2$0@|@|@|@|@|@|@|@7"])
  fun op datatype_output x = x
    val op datatype_output =
    ThmBind.DT(((("projectTypes",153),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%171%55%182@%193@%170@%162@%173@%190@%191@2"])
  fun op output_distinct x = x
    val op output_distinct =
    ThmBind.DT(((("projectTypes",154),
                [("numeral",[3,6]),
                 ("projectTypes",[148,149])]),["DISK_THM"]),
               [ThmBind.read"%122%229%130%182@%193@3%122%229%130%182@%170@3%122%229%130%182@%162@3%122%229%130%182@%173@3%122%229%130%182@%190@3%122%229%130%182@%191@3%122%229%130%193@%170@3%122%229%130%193@%162@3%122%229%130%193@%173@3%122%229%130%193@%190@3%122%229%130%193@%191@3%122%229%130%170@%162@3%122%229%130%170@%173@3%122%229%130%170@%190@3%122%229%130%170@%191@3%122%229%130%162@%173@3%122%229%130%162@%190@3%122%229%130%162@%191@3%122%229%130%173@%190@3%122%229%130%173@%191@3%229%130%190@%191@22"])
  fun op output_case_cong x = x
    val op output_case_cong =
    ThmBind.DT(((("projectTypes",155),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("projectTypes",[138,140,141,142,143,144,145,146,152]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%113%3%113%10%98%71%98%73%98%75%98%77%98%79%98%81%98%83%136%122%130$8@$7@2%122%136%130$7@%182@2%125$6@%72@3%122%136%130$7@%193@2%125$5@%74@3%122%136%130$7@%170@2%125$4@%76@3%122%136%130$7@%162@2%125$3@%78@3%122%136%130$7@%173@2%125$2@%80@3%122%136%130$7@%190@2%125$1@%82@3%136%130$7@%191@2%125$0@%84@10%125%212$8@$6@$5@$4@$3@$2@$1@$0@2%212$7@%72@%74@%76@%78@%80@%82@%84@3|@|@|@|@|@|@|@|@|@"])
  fun op output_nchotomy x = x
    val op output_nchotomy =
    ThmBind.DT(((("projectTypes",156),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("projectTypes",[138,140,141,142,143,144,145,146]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%113%23%195%130$0@%182@2%195%130$0@%193@2%195%130$0@%170@2%195%130$0@%162@2%195%130$0@%173@2%195%130$0@%190@2%130$0@%191@7|@"])
  fun op output_Axiom x = x
    val op output_Axiom =
    ThmBind.DT(((("projectTypes",157),
                [("bool",[8,14,25,53,55,63]),("numeral",[3,8]),
                 ("projectTypes",[148])]),["DISK_THM"]),
               [ThmBind.read"%98%91%98%92%98%93%98%94%98%95%98%96%98%97%141%39%122%125$0%182@2$7@2%122%125$0%193@2$6@2%122%125$0%170@2$5@2%122%125$0%162@2$4@2%122%125$0%173@2$3@2%122%125$0%190@2$2@2%125$0%191@2$1@7|@|@|@|@|@|@|@|@"])
  fun op output_induction x = x
    val op output_induction =
    ThmBind.DT(((("projectTypes",158),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("projectTypes",[138,140,141,142,143,144,145,146]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%103%17%136%122$0%162@2%122$0%170@2%122$0%173@2%122$0%182@2%122$0%190@2%122$0%191@2$0%193@8%113%23$1$0@|@2|@"])
  fun op principal_distinct_clauses x = x
    val op principal_distinct_clauses =
    ThmBind.DT(((("projectTypes",159),
                [("numeral",[3,6]),
                 ("projectTypes",[79,80])]),["DISK_THM"]),
               [ThmBind.read"%122%229%133%176@%178@3%122%229%133%176@%174@3%229%133%178@%174@4"])
  fun op platoonLeaderCom_distinct_clauses x = x
    val op platoonLeaderCom_distinct_clauses =
    ThmBind.DT(((("projectTypes",160),
                [("numeral",[3,6]),
                 ("projectTypes",[12,13])]),["DISK_THM"]),
               [ThmBind.read"%122%229%131%224@%228@3%122%229%131%224@%199@3%229%131%228@%199@4"])
  fun op platoonSergeantCom_distinct_clauses x = x
    val op platoonSergeantCom_distinct_clauses =
    ThmBind.DT(((("projectTypes",161),
                [("numeral",[3,6]),
                 ("projectTypes",[34,35])]),["DISK_THM"]),
               [ThmBind.read"%229%132%196@%223@2"])
  fun op omniCom_distinct_clauses x = x
    val op omniCom_distinct_clauses =
    ThmBind.DT(((("projectTypes",162),
                [("numeral",[3,6]),
                 ("projectTypes",[56,57])]),["DISK_THM"]),
               [ThmBind.read"%229%129%200@%210@2"])
  fun op commands_distinct_clauses x = x
    val op commands_distinct_clauses =
    ThmBind.DT(((("projectTypes",163),
                [("bool",[25,26,35,46,50,53,55,62,180]),
                 ("ind_type",[33,34]),("pair",[8,9]),
                 ("projectTypes",[91,92,93,94,95,96,97])]),["DISK_THM"]),
               [ThmBind.read"%122%115%31%114%24%229%127%177$0@2%179$1@3|@|@2%122%112%28%114%24%229%127%177$0@2%175$1@3|@|@2%112%28%115%25%229%127%179$0@2%175$1@3|@|@3"])
  fun op state_distinct_clauses x = x
    val op state_distinct_clauses =
    ThmBind.DT(((("projectTypes",164),
                [("numeral",[3,6]),
                 ("projectTypes",[121,122])]),["DISK_THM"]),
               [ThmBind.read"%122%229%135%168@%180@3%122%229%135%168@%158@3%122%229%135%168@%192@3%122%229%135%168@%166@3%122%229%135%180@%158@3%122%229%135%180@%192@3%122%229%135%180@%166@3%122%229%135%158@%192@3%122%229%135%158@%166@3%229%135%192@%166@11"])
  fun op output_distinct_clauses x = x
    val op output_distinct_clauses =
    ThmBind.DT(((("projectTypes",165),
                [("numeral",[3,6]),
                 ("projectTypes",[148,149])]),["DISK_THM"]),
               [ThmBind.read"%122%229%130%182@%193@3%122%229%130%182@%170@3%122%229%130%182@%162@3%122%229%130%182@%173@3%122%229%130%182@%190@3%122%229%130%182@%191@3%122%229%130%193@%170@3%122%229%130%193@%162@3%122%229%130%193@%173@3%122%229%130%193@%190@3%122%229%130%193@%191@3%122%229%130%170@%162@3%122%229%130%170@%173@3%122%229%130%170@%190@3%122%229%130%170@%191@3%122%229%130%162@%173@3%122%229%130%162@%190@3%122%229%130%162@%191@3%122%229%130%173@%190@3%122%229%130%173@%191@3%229%130%190@%191@22"])
  fun op commands_one_one x = x
    val op commands_one_one =
    ThmBind.DT(((("projectTypes",166),
                [("bool",[26,55,62,180]),("ind_type",[33,34]),
                 ("pair",[8,9]),
                 ("projectTypes",[91,92,93,94,95,96,97])]),["DISK_THM"]),
               [ThmBind.read"%122%114%24%114%30%126%127%177$1@2%177$0@3%131$1@$0@2|@|@2%122%115%25%115%31%126%127%179$1@2%179$0@3%132$1@$0@2|@|@2%112%22%112%28%126%127%175$1@2%175$0@3%129$1@$0@2|@|@3"])

  val _ = DB.bindl "projectTypes"
  [("platoonLeaderCom_TY_DEF",platoonLeaderCom_TY_DEF,DB.Def),
   ("platoonLeaderCom_BIJ",platoonLeaderCom_BIJ,DB.Def),
   ("platoonLeaderCom_size_def",platoonLeaderCom_size_def,DB.Def),
   ("platoonLeaderCom_CASE",platoonLeaderCom_CASE,DB.Def),
   ("platoonSergeantCom_TY_DEF",platoonSergeantCom_TY_DEF,DB.Def),
   ("platoonSergeantCom_BIJ",platoonSergeantCom_BIJ,DB.Def),
   ("platoonSergeantCom_size_def",platoonSergeantCom_size_def,DB.Def),
   ("platoonSergeantCom_CASE",platoonSergeantCom_CASE,DB.Def),
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
   ("num2platoonSergeantCom_platoonSergeantCom2num",
    num2platoonSergeantCom_platoonSergeantCom2num,
    DB.Thm),
   ("platoonSergeantCom2num_num2platoonSergeantCom",
    platoonSergeantCom2num_num2platoonSergeantCom,
    DB.Thm),
   ("num2platoonSergeantCom_11",num2platoonSergeantCom_11,DB.Thm),
   ("platoonSergeantCom2num_11",platoonSergeantCom2num_11,DB.Thm),
   ("num2platoonSergeantCom_ONTO",num2platoonSergeantCom_ONTO,DB.Thm),
   ("platoonSergeantCom2num_ONTO",platoonSergeantCom2num_ONTO,DB.Thm),
   ("num2platoonSergeantCom_thm",num2platoonSergeantCom_thm,DB.Thm),
   ("platoonSergeantCom2num_thm",platoonSergeantCom2num_thm,DB.Thm),
   ("platoonSergeantCom_EQ_platoonSergeantCom",
    platoonSergeantCom_EQ_platoonSergeantCom,
    DB.Thm),
   ("platoonSergeantCom_case_def",platoonSergeantCom_case_def,DB.Thm),
   ("datatype_platoonSergeantCom",datatype_platoonSergeantCom,DB.Thm),
   ("platoonSergeantCom_distinct",platoonSergeantCom_distinct,DB.Thm),
   ("platoonSergeantCom_case_cong",platoonSergeantCom_case_cong,DB.Thm),
   ("platoonSergeantCom_nchotomy",platoonSergeantCom_nchotomy,DB.Thm),
   ("platoonSergeantCom_Axiom",platoonSergeantCom_Axiom,DB.Thm),
   ("platoonSergeantCom_induction",platoonSergeantCom_induction,DB.Thm),
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
    DB.Thm),
   ("platoonSergeantCom_distinct_clauses",
    platoonSergeantCom_distinct_clauses,
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
        "NTY12.projectTypes,16.platoonLeaderComNTY12.projectTypes,18.platoonSergeantComNTY12.projectTypes,7.omniComNTY12.projectTypes,9.principalNTY12.projectTypes,8.commandsNTY12.projectTypes,5.stateNTY12.projectTypes,6.output"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "projectTypes",
    thydataty = "TermGrammarDeltas",
    read = ThmBind.read,
    data =
        "OO20.platoonLeaderCom2num4.%214OO20.num2platoonLeaderCom4.%203OO6.secure4.%224OO8.withdraw4.%228OO8.complete4.%199OO21.platoonLeaderCom_size4.%216OO21.platoonLeaderCom_CASE4.%215OO4.case4.%215OO22.platoonSergeantCom2num4.%217OO22.num2platoonSergeantCom4.%204OO9.actionsIn4.%196OO5.psgNA4.%223OO23.platoonSergeantCom_size4.%219OO23.platoonSergeantCom_CASE4.%218OO4.case4.%218OO11.omniCom2num4.%207OO11.num2omniCom4.%201OO4.none4.%200OO6.omniNA4.%210OO12.omniCom_size4.%209OO12.omniCom_CASE4.%208OO4.case4.%208OO13.principal2num4.%220OO13.num2principal4.%205OO13.PlatoonLeader4.%176OO15.PlatoonSergeant4.%178OO4.Omni4.%174OO14.principal_size4.%222OO14.principal_CASE4.%221OO4.case4.%221OO16.PlatoonLeaderCOM4.%177OO18.PlatoonSergeantCOM4.%179OO7.OmniCOM4.%175OO13.commands_CASE4.%197OO13.commands_size4.%198OO4.case4.%197OO9.state2num4.%225OO9.num2state4.%206OO10.CONDUCT_PB4.%168OO6.SECURE4.%180OO10.ACTIONS_IN4.%158OO8.WITHDRAW4.%192OO8.COMPLETE4.%166OO10.state_size4.%227OO10.state_CASE4.%226OO4.case4.%226OO10.output2num4.%211OO10.num2output4.%202OO6.Secure4.%182OO8.Withdraw4.%193OO8.Complete4.%170OO9.ActionsIn4.%162OO13.NoActionTaken4.%173OO15.UnAuthenticated4.%190OO12.UnAuthorized4.%191OO11.output_size4.%213OO11.output_CASE4.%212OO4.case4.%212"
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
          {ax=ORIG platoonSergeantCom_Axiom,
           case_def=platoonSergeantCom_case_def,
           case_cong=platoonSergeantCom_case_cong,
           induction=ORIG platoonSergeantCom_induction,
           nchotomy=platoonSergeantCom_nchotomy,
           size=SOME(Parse.Term`(projectTypes$platoonSergeantCom_size) :projectTypes$platoonSergeantCom -> num$num`,
                     ORIG platoonSergeantCom_size_def),
           encode = NONE,
           lift=NONE,
           one_one=NONE,
           distinct=SOME platoonSergeantCom_distinct,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = EnumType.update_tyinfo num2platoonSergeantCom_thm platoonSergeantCom2num_thm NONE tyinfo0
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
