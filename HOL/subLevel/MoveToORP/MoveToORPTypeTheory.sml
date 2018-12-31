structure MoveToORPTypeTheory :> MoveToORPTypeTheory =
struct
  val _ = if !Globals.print_thy_loads then TextIO.print "Loading MoveToORPTypeTheory ... " else ()
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
          ("MoveToORPType",
          Arbnum.fromString "1528688758",
          Arbnum.fromString "169023")
          [("indexedLists",
           Arbnum.fromString "1501974078",
           Arbnum.fromString "687272"),
           ("patternMatches",
           Arbnum.fromString "1501974125",
           Arbnum.fromString "747236")];
  val _ = Theory.incorporate_types "MoveToORPType"
       [("stateRole", 0), ("slState", 0), ("slOutput", 0),
        ("slCommand", 0)];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("MoveToORPType", "slOutput"), ID("min", "fun"), ID("num", "num"),
   ID("MoveToORPType", "stateRole"), ID("MoveToORPType", "slState"),
   ID("MoveToORPType", "slCommand"), ID("min", "bool"), ID("bool", "!"),
   ID("bool", "/\\"), ID("num", "0"), ID("prim_rec", "<"), ID("min", "="),
   ID("min", "==>"), ID("bool", "?"), ID("arithmetic", "BIT1"),
   ID("arithmetic", "BIT2"), ID("MoveToORPType", "COMPLETE"),
   ID("bool", "COND"), ID("MoveToORPType", "Complete"),
   ID("bool", "DATATYPE"), ID("MoveToORPType", "MOVE_TO_ORP"),
   ID("MoveToORPType", "MoveToORP"), ID("arithmetic", "NUMERAL"),
   ID("MoveToORPType", "PLTForm"), ID("MoveToORPType", "PLTMove"),
   ID("MoveToORPType", "PLTSecureHalt"), ID("MoveToORPType", "PLT_FORM"),
   ID("MoveToORPType", "PLT_MOVE"), ID("MoveToORPType", "PLT_SECURE_HALT"),
   ID("MoveToORPType", "PlatoonLeader"), ID("bool", "TYPE_DEFINITION"),
   ID("arithmetic", "ZERO"), ID("bool", "\\/"),
   ID("MoveToORPType", "complete"), ID("MoveToORPType", "incomplete"),
   ID("MoveToORPType", "num2slCommand"),
   ID("MoveToORPType", "num2slOutput"), ID("MoveToORPType", "num2slState"),
   ID("MoveToORPType", "num2stateRole"), ID("MoveToORPType", "pltForm"),
   ID("MoveToORPType", "pltMove"), ID("MoveToORPType", "pltSecureHalt"),
   ID("MoveToORPType", "slCommand2num"),
   ID("MoveToORPType", "slCommand_CASE"),
   ID("MoveToORPType", "slCommand_size"),
   ID("MoveToORPType", "slOutput2num"),
   ID("MoveToORPType", "slOutput_CASE"),
   ID("MoveToORPType", "slOutput_size"),
   ID("MoveToORPType", "slState2num"), ID("MoveToORPType", "slState_CASE"),
   ID("MoveToORPType", "slState_size"),
   ID("MoveToORPType", "stateRole2num"),
   ID("MoveToORPType", "stateRole_CASE"),
   ID("MoveToORPType", "stateRole_size"),
   ID("MoveToORPType", "unAuthenticated"),
   ID("MoveToORPType", "unAuthorized"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [0], TYOP [2], TYOP [3], TYOP [1, 2, 1], TYV "'a", TYOP [1, 4, 4],
   TYOP [1, 2, 5], TYOP [4], TYOP [1, 7, 1], TYOP [1, 4, 5],
   TYOP [1, 4, 9], TYOP [1, 4, 10], TYOP [1, 4, 11], TYOP [1, 7, 12],
   TYOP [1, 0, 1], TYOP [1, 4, 12], TYOP [1, 4, 15], TYOP [1, 0, 16],
   TYOP [5], TYOP [1, 18, 1], TYOP [1, 18, 12], TYOP [1, 1, 2],
   TYOP [1, 1, 7], TYOP [1, 1, 0], TYOP [1, 1, 18], TYOP [6],
   TYOP [1, 18, 25], TYOP [1, 0, 25], TYOP [1, 7, 25], TYOP [1, 2, 25],
   TYOP [1, 18, 4], TYOP [1, 0, 4], TYOP [1, 7, 4], TYOP [1, 2, 4],
   TYOP [1, 18, 26], TYOP [1, 18, 34], TYOP [1, 18, 35], TYOP [1, 18, 36],
   TYOP [1, 0, 27], TYOP [1, 0, 38], TYOP [1, 0, 39], TYOP [1, 0, 40],
   TYOP [1, 0, 41], TYOP [1, 0, 42], TYOP [1, 7, 28], TYOP [1, 7, 44],
   TYOP [1, 7, 45], TYOP [1, 7, 46], TYOP [1, 4, 25], TYOP [1, 48, 25],
   TYOP [1, 26, 25], TYOP [1, 50, 25], TYOP [1, 27, 25], TYOP [1, 52, 25],
   TYOP [1, 28, 25], TYOP [1, 54, 25], TYOP [1, 29, 25], TYOP [1, 56, 25],
   TYOP [1, 1, 25], TYOP [1, 58, 25], TYOP [1, 25, 25], TYOP [1, 25, 60],
   TYOP [1, 1, 58], TYOP [1, 4, 48], TYOP [1, 2, 29], TYOP [1, 30, 25],
   TYOP [1, 65, 25], TYOP [1, 19, 25], TYOP [1, 67, 25], TYOP [1, 31, 25],
   TYOP [1, 69, 25], TYOP [1, 14, 25], TYOP [1, 71, 25], TYOP [1, 32, 25],
   TYOP [1, 73, 25], TYOP [1, 8, 25], TYOP [1, 75, 25], TYOP [1, 33, 25],
   TYOP [1, 77, 25], TYOP [1, 3, 25], TYOP [1, 79, 25], TYOP [1, 1, 1],
   TYOP [1, 25, 9], TYOP [1, 58, 67], TYOP [1, 58, 71], TYOP [1, 58, 75],
   TYOP [1, 58, 79]]
  end
  val _ = Theory.incorporate_consts "MoveToORPType" tyvector
     [("unAuthorized", 0), ("unAuthenticated", 0), ("stateRole_size", 3),
      ("stateRole_CASE", 6), ("stateRole2num", 3), ("slState_size", 8),
      ("slState_CASE", 13), ("slState2num", 8), ("slOutput_size", 14),
      ("slOutput_CASE", 17), ("slOutput2num", 14), ("slCommand_size", 19),
      ("slCommand_CASE", 20), ("slCommand2num", 19), ("pltSecureHalt", 18),
      ("pltMove", 18), ("pltForm", 18), ("num2stateRole", 21),
      ("num2slState", 22), ("num2slOutput", 23), ("num2slCommand", 24),
      ("incomplete", 18), ("complete", 18), ("PlatoonLeader", 2),
      ("PLT_SECURE_HALT", 7), ("PLT_MOVE", 7), ("PLT_FORM", 7),
      ("PLTSecureHalt", 0), ("PLTMove", 0), ("PLTForm", 0),
      ("MoveToORP", 0), ("MOVE_TO_ORP", 7), ("Complete", 0),
      ("COMPLETE", 7)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("M", 18), TMV("M", 0), TMV("M", 7), TMV("M", 2), TMV("M'", 18),
   TMV("M'", 0), TMV("M'", 7), TMV("M'", 2), TMV("P", 26), TMV("P", 27),
   TMV("P", 28), TMV("P", 29), TMV("a", 18), TMV("a", 0), TMV("a", 7),
   TMV("a", 2), TMV("a'", 18), TMV("a'", 0), TMV("a'", 7), TMV("a'", 2),
   TMV("f", 30), TMV("f", 31), TMV("f", 32), TMV("f", 33), TMV("m", 1),
   TMV("n", 1), TMV("r", 1), TMV("r'", 1), TMV("rep", 19), TMV("rep", 14),
   TMV("rep", 8), TMV("rep", 3), TMV("slCommand", 37), TMV("slOutput", 43),
   TMV("slState", 47), TMV("stateRole", 29), TMV("v0", 4), TMV("v0'", 4),
   TMV("v1", 4), TMV("v1'", 4), TMV("v2", 4), TMV("v2'", 4), TMV("v3", 4),
   TMV("v3'", 4), TMV("v4", 4), TMV("v4'", 4), TMV("v5", 4), TMV("v5'", 4),
   TMV("v6", 4), TMV("v6'", 4), TMV("x", 18), TMV("x", 0), TMV("x", 7),
   TMV("x", 2), TMV("x0", 4), TMV("x1", 4), TMV("x2", 4), TMV("x3", 4),
   TMV("x4", 4), TMV("x5", 4), TMV("x6", 4), TMC(7, 49), TMC(7, 51),
   TMC(7, 53), TMC(7, 55), TMC(7, 57), TMC(7, 59), TMC(7, 50), TMC(7, 52),
   TMC(7, 54), TMC(7, 56), TMC(8, 61), TMC(9, 1), TMC(10, 62), TMC(11, 63),
   TMC(11, 61), TMC(11, 62), TMC(11, 34), TMC(11, 38), TMC(11, 44),
   TMC(11, 64), TMC(12, 61), TMC(13, 66), TMC(13, 68), TMC(13, 70),
   TMC(13, 72), TMC(13, 74), TMC(13, 76), TMC(13, 78), TMC(13, 80),
   TMC(13, 59), TMC(13, 50), TMC(13, 52), TMC(13, 54), TMC(13, 56),
   TMC(14, 81), TMC(15, 81), TMC(16, 7), TMC(17, 82), TMC(18, 0),
   TMC(19, 60), TMC(20, 7), TMC(21, 0), TMC(22, 81), TMC(23, 0),
   TMC(24, 0), TMC(25, 0), TMC(26, 7), TMC(27, 7), TMC(28, 7), TMC(29, 2),
   TMC(30, 83), TMC(30, 84), TMC(30, 85), TMC(30, 86), TMC(31, 1),
   TMC(32, 61), TMC(33, 18), TMC(34, 18), TMC(35, 24), TMC(36, 23),
   TMC(37, 22), TMC(38, 21), TMC(39, 18), TMC(40, 18), TMC(41, 18),
   TMC(42, 19), TMC(43, 20), TMC(44, 19), TMC(45, 14), TMC(46, 17),
   TMC(47, 14), TMC(48, 8), TMC(49, 13), TMC(50, 8), TMC(51, 3),
   TMC(52, 6), TMC(53, 3), TMC(54, 0), TMC(55, 0), TMC(56, 60)]
  end
  structure ThmBind = struct
    val DT = Thm.disk_thm
    val read = Term.read_raw tmvector
  end
  fun op slCommand_TY_DEF x = x
    val op slCommand_TY_DEF =
    ThmBind.DT(((("MoveToORPType",0),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%83%28%111%25%73$0@%103%95%96%115@4|@$0@|@"])
  fun op slCommand_BIJ x = x
    val op slCommand_BIJ =
    ThmBind.DT(((("MoveToORPType",1),
                [("MoveToORPType",[0]),("bool",[116])]),["DISK_THM"]),
               [ThmBind.read"%71%67%12%77%119%126$0@3$0@|@2%66%26%75%25%73$0@%103%95%96%115@4|$0@2%76%126%119$0@3$0@2|@2"])





  fun op slCommand_size_def x = x
    val op slCommand_size_def =
    ThmBind.DT(((("MoveToORPType",16),[]),[]),
               [ThmBind.read"%67%50%76%128$0@2%72@|@"])
  fun op slCommand_CASE x = x
    val op slCommand_CASE =
    ThmBind.DT(((("MoveToORPType",17),[]),[]),
               [ThmBind.read"%67%50%61%36%61%38%61%40%61%42%61%44%74%127$5@$4@$3@$2@$1@$0@2%24%98%73$0@%103%96%115@4%98%76$0@%72@2$5@$4@2%98%73$0@%103%95%95%115@5$3@%98%76$0@%103%95%95%115@5$2@$1@3|%126$5@3|@|@|@|@|@|@"])
  fun op slState_TY_DEF x = x
    val op slState_TY_DEF =
    ThmBind.DT(((("MoveToORPType",26),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%87%30%113%25%73$0@%103%95%96%115@4|@$0@|@"])
  fun op slState_BIJ x = x
    val op slState_BIJ =
    ThmBind.DT(((("MoveToORPType",27),
                [("MoveToORPType",[26]),("bool",[116])]),["DISK_THM"]),
               [ThmBind.read"%71%69%14%79%121%132$0@3$0@|@2%66%26%75%25%73$0@%103%95%96%115@4|$0@2%76%132%121$0@3$0@2|@2"])





  fun op slState_size_def x = x
    val op slState_size_def =
    ThmBind.DT(((("MoveToORPType",42),[]),[]),
               [ThmBind.read"%69%52%76%134$0@2%72@|@"])
  fun op slState_CASE x = x
    val op slState_CASE =
    ThmBind.DT(((("MoveToORPType",43),[]),[]),
               [ThmBind.read"%69%52%61%36%61%38%61%40%61%42%61%44%74%133$5@$4@$3@$2@$1@$0@2%24%98%73$0@%103%96%115@4%98%76$0@%72@2$5@$4@2%98%73$0@%103%95%95%115@5$3@%98%76$0@%103%95%95%115@5$2@$1@3|%132$5@3|@|@|@|@|@|@"])
  fun op slOutput_TY_DEF x = x
    val op slOutput_TY_DEF =
    ThmBind.DT(((("MoveToORPType",52),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%85%29%112%25%73$0@%103%95%95%95%115@5|@$0@|@"])
  fun op slOutput_BIJ x = x
    val op slOutput_BIJ =
    ThmBind.DT(((("MoveToORPType",53),
                [("MoveToORPType",[52]),("bool",[116])]),["DISK_THM"]),
               [ThmBind.read"%71%68%13%78%120%129$0@3$0@|@2%66%26%75%25%73$0@%103%95%95%95%115@5|$0@2%76%129%120$0@3$0@2|@2"])







  fun op slOutput_size_def x = x
    val op slOutput_size_def =
    ThmBind.DT(((("MoveToORPType",70),[]),[]),
               [ThmBind.read"%68%51%76%131$0@2%72@|@"])
  fun op slOutput_CASE x = x
    val op slOutput_CASE =
    ThmBind.DT(((("MoveToORPType",71),[]),[]),
               [ThmBind.read"%68%51%61%36%61%38%61%40%61%42%61%44%61%46%61%48%74%130$7@$6@$5@$4@$3@$2@$1@$0@2%24%98%73$0@%103%95%95%115@5%98%73$0@%103%95%115@4$7@%98%76$0@%103%95%115@4$6@$5@3%98%73$0@%103%96%95%115@5$4@%98%73$0@%103%95%96%115@5$3@%98%76$0@%103%95%96%115@5$2@$1@4|%129$7@3|@|@|@|@|@|@|@|@"])
  fun op stateRole_TY_DEF x = x
    val op stateRole_TY_DEF =
    ThmBind.DT(((("MoveToORPType",80),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%89%31%114%25%73$0@%103%95%115@3|@$0@|@"])
  fun op stateRole_BIJ x = x
    val op stateRole_BIJ =
    ThmBind.DT(((("MoveToORPType",81),
                [("MoveToORPType",[80]),("bool",[116])]),["DISK_THM"]),
               [ThmBind.read"%71%70%15%80%122%135$0@3$0@|@2%66%26%75%25%73$0@%103%95%115@3|$0@2%76%135%122$0@3$0@2|@2"])

  fun op stateRole_size_def x = x
    val op stateRole_size_def =
    ThmBind.DT(((("MoveToORPType",92),[]),[]),
               [ThmBind.read"%70%53%76%137$0@2%72@|@"])
  fun op stateRole_CASE x = x
    val op stateRole_CASE =
    ThmBind.DT(((("MoveToORPType",93),[]),[]),
               [ThmBind.read"%70%53%61%36%74%136$1@$0@2%24$1|%135$1@3|@|@"])
  fun op num2slCommand_slCommand2num x = x
    val op num2slCommand_slCommand2num =
    ThmBind.DT(((("MoveToORPType",2),
                [("MoveToORPType",[1])]),["DISK_THM"]),
               [ThmBind.read"%67%12%77%119%126$0@3$0@|@"])
  fun op slCommand2num_num2slCommand x = x
    val op slCommand2num_num2slCommand =
    ThmBind.DT(((("MoveToORPType",3),
                [("MoveToORPType",[1])]),["DISK_THM"]),
               [ThmBind.read"%66%26%75%73$0@%103%95%96%115@5%76%126%119$0@3$0@2|@"])
  fun op num2slCommand_11 x = x
    val op num2slCommand_11 =
    ThmBind.DT(((("MoveToORPType",4),
                [("MoveToORPType",[1]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%66%26%66%27%81%73$1@%103%95%96%115@5%81%73$0@%103%95%96%115@5%75%77%119$1@2%119$0@3%76$1@$0@4|@|@"])
  fun op slCommand2num_11 x = x
    val op slCommand2num_11 =
    ThmBind.DT(((("MoveToORPType",5),
                [("MoveToORPType",[1]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%67%12%67%16%75%76%126$1@2%126$0@3%77$1@$0@2|@|@"])
  fun op num2slCommand_ONTO x = x
    val op num2slCommand_ONTO =
    ThmBind.DT(((("MoveToORPType",6),
                [("MoveToORPType",[1]),("bool",[25,62])]),["DISK_THM"]),
               [ThmBind.read"%67%12%90%26%71%77$1@%119$0@3%73$0@%103%95%96%115@5|@|@"])
  fun op slCommand2num_ONTO x = x
    val op slCommand2num_ONTO =
    ThmBind.DT(((("MoveToORPType",7),
                [("MoveToORPType",[1]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%66%26%75%73$0@%103%95%96%115@5%91%12%76$1@%126$0@2|@2|@"])
  fun op num2slCommand_thm x = x
    val op num2slCommand_thm =
    ThmBind.DT(((("MoveToORPType",13),
                [("MoveToORPType",[8,9,10,11,12])]),[]),
               [ThmBind.read"%71%77%119%72@2%123@2%71%77%119%103%95%115@4%124@2%71%77%119%103%96%115@4%125@2%71%77%119%103%95%95%115@5%117@2%77%119%103%96%95%115@5%118@5"])
  fun op slCommand2num_thm x = x
    val op slCommand2num_thm =
    ThmBind.DT(((("MoveToORPType",14),
                [("MoveToORPType",[3,8,9,10,11,12]),("bool",[25,53]),
                 ("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%71%76%126%123@2%72@2%71%76%126%124@2%103%95%115@4%71%76%126%125@2%103%96%115@4%71%76%126%117@2%103%95%95%115@5%76%126%118@2%103%96%95%115@8"])
  fun op slCommand_EQ_slCommand x = x
    val op slCommand_EQ_slCommand =
    ThmBind.DT(((("MoveToORPType",15),
                [("MoveToORPType",[5]),("bool",[57])]),["DISK_THM"]),
               [ThmBind.read"%67%12%67%16%75%77$1@$0@2%76%126$1@2%126$0@3|@|@"])
  fun op slCommand_case_def x = x
    val op slCommand_case_def =
    ThmBind.DT(((("MoveToORPType",18),
                [("MoveToORPType",[14,17]),("bool",[53,55,63]),
                 ("numeral",[3,6,7])]),["DISK_THM"]),
               [ThmBind.read"%71%61%36%61%38%61%40%61%42%61%44%74%127%123@$4@$3@$2@$1@$0@2$4@|@|@|@|@|@2%71%61%36%61%38%61%40%61%42%61%44%74%127%124@$4@$3@$2@$1@$0@2$3@|@|@|@|@|@2%71%61%36%61%38%61%40%61%42%61%44%74%127%125@$4@$3@$2@$1@$0@2$2@|@|@|@|@|@2%71%61%36%61%38%61%40%61%42%61%44%74%127%117@$4@$3@$2@$1@$0@2$1@|@|@|@|@|@2%61%36%61%38%61%40%61%42%61%44%74%127%118@$4@$3@$2@$1@$0@2$0@|@|@|@|@|@5"])
  fun op datatype_slCommand x = x
    val op datatype_slCommand =
    ThmBind.DT(((("MoveToORPType",19),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%100%32%123@%124@%125@%117@%118@2"])
  fun op slCommand_distinct x = x
    val op slCommand_distinct =
    ThmBind.DT(((("MoveToORPType",20),
                [("MoveToORPType",[14,15]),
                 ("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%71%140%77%123@%124@3%71%140%77%123@%125@3%71%140%77%123@%117@3%71%140%77%123@%118@3%71%140%77%124@%125@3%71%140%77%124@%117@3%71%140%77%124@%118@3%71%140%77%125@%117@3%71%140%77%125@%118@3%140%77%117@%118@11"])
  fun op slCommand_case_cong x = x
    val op slCommand_case_cong =
    ThmBind.DT(((("MoveToORPType",21),
                [("MoveToORPType",[6,8,9,10,11,12,18]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%67%0%67%4%61%36%61%38%61%40%61%42%61%44%81%71%77$6@$5@2%71%81%77$5@%123@2%74$4@%37@3%71%81%77$5@%124@2%74$3@%39@3%71%81%77$5@%125@2%74$2@%41@3%71%81%77$5@%117@2%74$1@%43@3%81%77$5@%118@2%74$0@%45@8%74%127$6@$4@$3@$2@$1@$0@2%127$5@%37@%39@%41@%43@%45@3|@|@|@|@|@|@|@"])
  fun op slCommand_nchotomy x = x
    val op slCommand_nchotomy =
    ThmBind.DT(((("MoveToORPType",22),
                [("MoveToORPType",[6,8,9,10,11,12]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%67%12%116%77$0@%123@2%116%77$0@%124@2%116%77$0@%125@2%116%77$0@%117@2%77$0@%118@5|@"])
  fun op slCommand_Axiom x = x
    val op slCommand_Axiom =
    ThmBind.DT(((("MoveToORPType",23),
                [("MoveToORPType",[14]),("bool",[8,14,25,53,55,63]),
                 ("numeral",[3,8])]),["DISK_THM"]),
               [ThmBind.read"%61%54%61%55%61%56%61%57%61%58%82%20%71%74$0%123@2$5@2%71%74$0%124@2$4@2%71%74$0%125@2$3@2%71%74$0%117@2$2@2%74$0%118@2$1@5|@|@|@|@|@|@"])
  fun op slCommand_induction x = x
    val op slCommand_induction =
    ThmBind.DT(((("MoveToORPType",24),
                [("MoveToORPType",[6,8,9,10,11,12]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%62%8%81%71$0%117@2%71$0%118@2%71$0%123@2%71$0%124@2$0%125@6%67%12$1$0@|@2|@"])
  fun op slCommand_distinct_clauses x = x
    val op slCommand_distinct_clauses =
    ThmBind.DT(((("MoveToORPType",25),
                [("MoveToORPType",[14,15]),
                 ("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%71%140%77%123@%124@3%71%140%77%123@%125@3%71%140%77%123@%117@3%71%140%77%123@%118@3%71%140%77%124@%125@3%71%140%77%124@%117@3%71%140%77%124@%118@3%71%140%77%125@%117@3%71%140%77%125@%118@3%140%77%117@%118@11"])
  fun op num2slState_slState2num x = x
    val op num2slState_slState2num =
    ThmBind.DT(((("MoveToORPType",28),
                [("MoveToORPType",[27])]),["DISK_THM"]),
               [ThmBind.read"%69%14%79%121%132$0@3$0@|@"])
  fun op slState2num_num2slState x = x
    val op slState2num_num2slState =
    ThmBind.DT(((("MoveToORPType",29),
                [("MoveToORPType",[27])]),["DISK_THM"]),
               [ThmBind.read"%66%26%75%73$0@%103%95%96%115@5%76%132%121$0@3$0@2|@"])
  fun op num2slState_11 x = x
    val op num2slState_11 =
    ThmBind.DT(((("MoveToORPType",30),
                [("MoveToORPType",[27]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%66%26%66%27%81%73$1@%103%95%96%115@5%81%73$0@%103%95%96%115@5%75%79%121$1@2%121$0@3%76$1@$0@4|@|@"])
  fun op slState2num_11 x = x
    val op slState2num_11 =
    ThmBind.DT(((("MoveToORPType",31),
                [("MoveToORPType",[27]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%69%14%69%18%75%76%132$1@2%132$0@3%79$1@$0@2|@|@"])
  fun op num2slState_ONTO x = x
    val op num2slState_ONTO =
    ThmBind.DT(((("MoveToORPType",32),
                [("MoveToORPType",[27]),("bool",[25,62])]),["DISK_THM"]),
               [ThmBind.read"%69%14%90%26%71%79$1@%121$0@3%73$0@%103%95%96%115@5|@|@"])
  fun op slState2num_ONTO x = x
    val op slState2num_ONTO =
    ThmBind.DT(((("MoveToORPType",33),
                [("MoveToORPType",[27]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%66%26%75%73$0@%103%95%96%115@5%93%14%76$1@%132$0@2|@2|@"])
  fun op num2slState_thm x = x
    val op num2slState_thm =
    ThmBind.DT(((("MoveToORPType",39),
                [("MoveToORPType",[34,35,36,37,38])]),[]),
               [ThmBind.read"%71%79%121%72@2%101@2%71%79%121%103%95%115@4%107@2%71%79%121%103%96%115@4%108@2%71%79%121%103%95%95%115@5%109@2%79%121%103%96%95%115@5%97@5"])
  fun op slState2num_thm x = x
    val op slState2num_thm =
    ThmBind.DT(((("MoveToORPType",40),
                [("MoveToORPType",[29,34,35,36,37,38]),("bool",[25,53]),
                 ("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%71%76%132%101@2%72@2%71%76%132%107@2%103%95%115@4%71%76%132%108@2%103%96%115@4%71%76%132%109@2%103%95%95%115@5%76%132%97@2%103%96%95%115@8"])
  fun op slState_EQ_slState x = x
    val op slState_EQ_slState =
    ThmBind.DT(((("MoveToORPType",41),
                [("MoveToORPType",[31]),("bool",[57])]),["DISK_THM"]),
               [ThmBind.read"%69%14%69%18%75%79$1@$0@2%76%132$1@2%132$0@3|@|@"])
  fun op slState_case_def x = x
    val op slState_case_def =
    ThmBind.DT(((("MoveToORPType",44),
                [("MoveToORPType",[40,43]),("bool",[53,55,63]),
                 ("numeral",[3,6,7])]),["DISK_THM"]),
               [ThmBind.read"%71%61%36%61%38%61%40%61%42%61%44%74%133%101@$4@$3@$2@$1@$0@2$4@|@|@|@|@|@2%71%61%36%61%38%61%40%61%42%61%44%74%133%107@$4@$3@$2@$1@$0@2$3@|@|@|@|@|@2%71%61%36%61%38%61%40%61%42%61%44%74%133%108@$4@$3@$2@$1@$0@2$2@|@|@|@|@|@2%71%61%36%61%38%61%40%61%42%61%44%74%133%109@$4@$3@$2@$1@$0@2$1@|@|@|@|@|@2%61%36%61%38%61%40%61%42%61%44%74%133%97@$4@$3@$2@$1@$0@2$0@|@|@|@|@|@5"])
  fun op datatype_slState x = x
    val op datatype_slState =
    ThmBind.DT(((("MoveToORPType",45),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%100%34%101@%107@%108@%109@%97@2"])
  fun op slState_distinct x = x
    val op slState_distinct =
    ThmBind.DT(((("MoveToORPType",46),
                [("MoveToORPType",[40,41]),
                 ("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%71%140%79%101@%107@3%71%140%79%101@%108@3%71%140%79%101@%109@3%71%140%79%101@%97@3%71%140%79%107@%108@3%71%140%79%107@%109@3%71%140%79%107@%97@3%71%140%79%108@%109@3%71%140%79%108@%97@3%140%79%109@%97@11"])
  fun op slState_case_cong x = x
    val op slState_case_cong =
    ThmBind.DT(((("MoveToORPType",47),
                [("MoveToORPType",[32,34,35,36,37,38,44]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%69%2%69%6%61%36%61%38%61%40%61%42%61%44%81%71%79$6@$5@2%71%81%79$5@%101@2%74$4@%37@3%71%81%79$5@%107@2%74$3@%39@3%71%81%79$5@%108@2%74$2@%41@3%71%81%79$5@%109@2%74$1@%43@3%81%79$5@%97@2%74$0@%45@8%74%133$6@$4@$3@$2@$1@$0@2%133$5@%37@%39@%41@%43@%45@3|@|@|@|@|@|@|@"])
  fun op slState_nchotomy x = x
    val op slState_nchotomy =
    ThmBind.DT(((("MoveToORPType",48),
                [("MoveToORPType",[32,34,35,36,37,38]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%69%14%116%79$0@%101@2%116%79$0@%107@2%116%79$0@%108@2%116%79$0@%109@2%79$0@%97@5|@"])
  fun op slState_Axiom x = x
    val op slState_Axiom =
    ThmBind.DT(((("MoveToORPType",49),
                [("MoveToORPType",[40]),("bool",[8,14,25,53,55,63]),
                 ("numeral",[3,8])]),["DISK_THM"]),
               [ThmBind.read"%61%54%61%55%61%56%61%57%61%58%86%22%71%74$0%101@2$5@2%71%74$0%107@2$4@2%71%74$0%108@2$3@2%71%74$0%109@2$2@2%74$0%97@2$1@5|@|@|@|@|@|@"])
  fun op slState_induction x = x
    val op slState_induction =
    ThmBind.DT(((("MoveToORPType",50),
                [("MoveToORPType",[32,34,35,36,37,38]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%64%10%81%71$0%97@2%71$0%101@2%71$0%107@2%71$0%108@2$0%109@6%69%14$1$0@|@2|@"])
  fun op slState_distinct_clauses x = x
    val op slState_distinct_clauses =
    ThmBind.DT(((("MoveToORPType",51),
                [("MoveToORPType",[40,41]),
                 ("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%71%140%79%101@%107@3%71%140%79%101@%108@3%71%140%79%101@%109@3%71%140%79%101@%97@3%71%140%79%107@%108@3%71%140%79%107@%109@3%71%140%79%107@%97@3%71%140%79%108@%109@3%71%140%79%108@%97@3%140%79%109@%97@11"])
  fun op num2slOutput_slOutput2num x = x
    val op num2slOutput_slOutput2num =
    ThmBind.DT(((("MoveToORPType",54),
                [("MoveToORPType",[53])]),["DISK_THM"]),
               [ThmBind.read"%68%13%78%120%129$0@3$0@|@"])
  fun op slOutput2num_num2slOutput x = x
    val op slOutput2num_num2slOutput =
    ThmBind.DT(((("MoveToORPType",55),
                [("MoveToORPType",[53])]),["DISK_THM"]),
               [ThmBind.read"%66%26%75%73$0@%103%95%95%95%115@6%76%129%120$0@3$0@2|@"])
  fun op num2slOutput_11 x = x
    val op num2slOutput_11 =
    ThmBind.DT(((("MoveToORPType",56),
                [("MoveToORPType",[53]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%66%26%66%27%81%73$1@%103%95%95%95%115@6%81%73$0@%103%95%95%95%115@6%75%78%120$1@2%120$0@3%76$1@$0@4|@|@"])
  fun op slOutput2num_11 x = x
    val op slOutput2num_11 =
    ThmBind.DT(((("MoveToORPType",57),
                [("MoveToORPType",[53]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%68%13%68%17%75%76%129$1@2%129$0@3%78$1@$0@2|@|@"])
  fun op num2slOutput_ONTO x = x
    val op num2slOutput_ONTO =
    ThmBind.DT(((("MoveToORPType",58),
                [("MoveToORPType",[53]),("bool",[25,62])]),["DISK_THM"]),
               [ThmBind.read"%68%13%90%26%71%78$1@%120$0@3%73$0@%103%95%95%95%115@6|@|@"])
  fun op slOutput2num_ONTO x = x
    val op slOutput2num_ONTO =
    ThmBind.DT(((("MoveToORPType",59),
                [("MoveToORPType",[53]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%66%26%75%73$0@%103%95%95%95%115@6%92%13%76$1@%129$0@2|@2|@"])
  fun op num2slOutput_thm x = x
    val op num2slOutput_thm =
    ThmBind.DT(((("MoveToORPType",67),
                [("MoveToORPType",[60,61,62,63,64,65,66])]),[]),
               [ThmBind.read"%71%78%120%72@2%102@2%71%78%120%103%95%115@4%104@2%71%78%120%103%96%115@4%105@2%71%78%120%103%95%95%115@5%106@2%71%78%120%103%96%95%115@5%99@2%71%78%120%103%95%96%115@5%139@2%78%120%103%96%96%115@5%138@7"])
  fun op slOutput2num_thm x = x
    val op slOutput2num_thm =
    ThmBind.DT(((("MoveToORPType",68),
                [("MoveToORPType",[55,60,61,62,63,64,65,66]),("bool",[25]),
                 ("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%71%76%129%102@2%72@2%71%76%129%104@2%103%95%115@4%71%76%129%105@2%103%96%115@4%71%76%129%106@2%103%95%95%115@5%71%76%129%99@2%103%96%95%115@5%71%76%129%139@2%103%95%96%115@5%76%129%138@2%103%96%96%115@10"])
  fun op slOutput_EQ_slOutput x = x
    val op slOutput_EQ_slOutput =
    ThmBind.DT(((("MoveToORPType",69),
                [("MoveToORPType",[57]),("bool",[57])]),["DISK_THM"]),
               [ThmBind.read"%68%13%68%17%75%78$1@$0@2%76%129$1@2%129$0@3|@|@"])
  fun op slOutput_case_def x = x
    val op slOutput_case_def =
    ThmBind.DT(((("MoveToORPType",72),
                [("MoveToORPType",[68,71]),("bool",[53,55,63]),
                 ("numeral",[3,6,7])]),["DISK_THM"]),
               [ThmBind.read"%71%61%36%61%38%61%40%61%42%61%44%61%46%61%48%74%130%102@$6@$5@$4@$3@$2@$1@$0@2$6@|@|@|@|@|@|@|@2%71%61%36%61%38%61%40%61%42%61%44%61%46%61%48%74%130%104@$6@$5@$4@$3@$2@$1@$0@2$5@|@|@|@|@|@|@|@2%71%61%36%61%38%61%40%61%42%61%44%61%46%61%48%74%130%105@$6@$5@$4@$3@$2@$1@$0@2$4@|@|@|@|@|@|@|@2%71%61%36%61%38%61%40%61%42%61%44%61%46%61%48%74%130%106@$6@$5@$4@$3@$2@$1@$0@2$3@|@|@|@|@|@|@|@2%71%61%36%61%38%61%40%61%42%61%44%61%46%61%48%74%130%99@$6@$5@$4@$3@$2@$1@$0@2$2@|@|@|@|@|@|@|@2%71%61%36%61%38%61%40%61%42%61%44%61%46%61%48%74%130%139@$6@$5@$4@$3@$2@$1@$0@2$1@|@|@|@|@|@|@|@2%61%36%61%38%61%40%61%42%61%44%61%46%61%48%74%130%138@$6@$5@$4@$3@$2@$1@$0@2$0@|@|@|@|@|@|@|@7"])
  fun op datatype_slOutput x = x
    val op datatype_slOutput =
    ThmBind.DT(((("MoveToORPType",73),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%100%33%102@%104@%105@%106@%99@%139@%138@2"])
  fun op slOutput_distinct x = x
    val op slOutput_distinct =
    ThmBind.DT(((("MoveToORPType",74),
                [("MoveToORPType",[68,69]),
                 ("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%71%140%78%102@%104@3%71%140%78%102@%105@3%71%140%78%102@%106@3%71%140%78%102@%99@3%71%140%78%102@%139@3%71%140%78%102@%138@3%71%140%78%104@%105@3%71%140%78%104@%106@3%71%140%78%104@%99@3%71%140%78%104@%139@3%71%140%78%104@%138@3%71%140%78%105@%106@3%71%140%78%105@%99@3%71%140%78%105@%139@3%71%140%78%105@%138@3%71%140%78%106@%99@3%71%140%78%106@%139@3%71%140%78%106@%138@3%71%140%78%99@%139@3%71%140%78%99@%138@3%140%78%139@%138@22"])
  fun op slOutput_case_cong x = x
    val op slOutput_case_cong =
    ThmBind.DT(((("MoveToORPType",75),
                [("MoveToORPType",[58,60,61,62,63,64,65,66,72]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%68%1%68%5%61%36%61%38%61%40%61%42%61%44%61%46%61%48%81%71%78$8@$7@2%71%81%78$7@%102@2%74$6@%37@3%71%81%78$7@%104@2%74$5@%39@3%71%81%78$7@%105@2%74$4@%41@3%71%81%78$7@%106@2%74$3@%43@3%71%81%78$7@%99@2%74$2@%45@3%71%81%78$7@%139@2%74$1@%47@3%81%78$7@%138@2%74$0@%49@10%74%130$8@$6@$5@$4@$3@$2@$1@$0@2%130$7@%37@%39@%41@%43@%45@%47@%49@3|@|@|@|@|@|@|@|@|@"])
  fun op slOutput_nchotomy x = x
    val op slOutput_nchotomy =
    ThmBind.DT(((("MoveToORPType",76),
                [("MoveToORPType",[58,60,61,62,63,64,65,66]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%68%13%116%78$0@%102@2%116%78$0@%104@2%116%78$0@%105@2%116%78$0@%106@2%116%78$0@%99@2%116%78$0@%139@2%78$0@%138@7|@"])
  fun op slOutput_Axiom x = x
    val op slOutput_Axiom =
    ThmBind.DT(((("MoveToORPType",77),
                [("MoveToORPType",[68]),("bool",[8,14,25,53,55,63]),
                 ("numeral",[3,8])]),["DISK_THM"]),
               [ThmBind.read"%61%54%61%55%61%56%61%57%61%58%61%59%61%60%84%21%71%74$0%102@2$7@2%71%74$0%104@2$6@2%71%74$0%105@2$5@2%71%74$0%106@2$4@2%71%74$0%99@2$3@2%71%74$0%139@2$2@2%74$0%138@2$1@7|@|@|@|@|@|@|@|@"])
  fun op slOutput_induction x = x
    val op slOutput_induction =
    ThmBind.DT(((("MoveToORPType",78),
                [("MoveToORPType",[58,60,61,62,63,64,65,66]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%63%9%81%71$0%99@2%71$0%102@2%71$0%104@2%71$0%105@2%71$0%106@2%71$0%138@2$0%139@8%68%13$1$0@|@2|@"])
  fun op slOutput_distinct_clauses x = x
    val op slOutput_distinct_clauses =
    ThmBind.DT(((("MoveToORPType",79),
                [("MoveToORPType",[68,69]),
                 ("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%71%140%78%102@%104@3%71%140%78%102@%105@3%71%140%78%102@%106@3%71%140%78%102@%99@3%71%140%78%102@%139@3%71%140%78%102@%138@3%71%140%78%104@%105@3%71%140%78%104@%106@3%71%140%78%104@%99@3%71%140%78%104@%139@3%71%140%78%104@%138@3%71%140%78%105@%106@3%71%140%78%105@%99@3%71%140%78%105@%139@3%71%140%78%105@%138@3%71%140%78%106@%99@3%71%140%78%106@%139@3%71%140%78%106@%138@3%71%140%78%99@%139@3%71%140%78%99@%138@3%140%78%139@%138@22"])
  fun op num2stateRole_stateRole2num x = x
    val op num2stateRole_stateRole2num =
    ThmBind.DT(((("MoveToORPType",82),
                [("MoveToORPType",[81])]),["DISK_THM"]),
               [ThmBind.read"%70%15%80%122%135$0@3$0@|@"])
  fun op stateRole2num_num2stateRole x = x
    val op stateRole2num_num2stateRole =
    ThmBind.DT(((("MoveToORPType",83),
                [("MoveToORPType",[81])]),["DISK_THM"]),
               [ThmBind.read"%66%26%75%73$0@%103%95%115@4%76%135%122$0@3$0@2|@"])
  fun op num2stateRole_11 x = x
    val op num2stateRole_11 =
    ThmBind.DT(((("MoveToORPType",84),
                [("MoveToORPType",[81]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%66%26%66%27%81%73$1@%103%95%115@4%81%73$0@%103%95%115@4%75%80%122$1@2%122$0@3%76$1@$0@4|@|@"])
  fun op stateRole2num_11 x = x
    val op stateRole2num_11 =
    ThmBind.DT(((("MoveToORPType",85),
                [("MoveToORPType",[81]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%70%15%70%19%75%76%135$1@2%135$0@3%80$1@$0@2|@|@"])
  fun op num2stateRole_ONTO x = x
    val op num2stateRole_ONTO =
    ThmBind.DT(((("MoveToORPType",86),
                [("MoveToORPType",[81]),("bool",[25,62])]),["DISK_THM"]),
               [ThmBind.read"%70%15%90%26%71%80$1@%122$0@3%73$0@%103%95%115@4|@|@"])
  fun op stateRole2num_ONTO x = x
    val op stateRole2num_ONTO =
    ThmBind.DT(((("MoveToORPType",87),
                [("MoveToORPType",[81]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%66%26%75%73$0@%103%95%115@4%94%15%76$1@%135$0@2|@2|@"])
  fun op num2stateRole_thm x = x
    val op num2stateRole_thm =
    ThmBind.DT(((("MoveToORPType",89),[("MoveToORPType",[88])]),[]),
               [ThmBind.read"%80%122%72@2%110@"])
  fun op stateRole2num_thm x = x
    val op stateRole2num_thm =
    ThmBind.DT(((("MoveToORPType",90),
                [("MoveToORPType",[83,88]),("bool",[25]),
                 ("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%76%135%110@2%72@"])
  fun op stateRole_EQ_stateRole x = x
    val op stateRole_EQ_stateRole =
    ThmBind.DT(((("MoveToORPType",91),
                [("MoveToORPType",[85]),("bool",[57])]),["DISK_THM"]),
               [ThmBind.read"%70%15%70%19%75%80$1@$0@2%76%135$1@2%135$0@3|@|@"])
  fun op stateRole_case_def x = x
    val op stateRole_case_def =
    ThmBind.DT(((("MoveToORPType",94),
                [("MoveToORPType",[90,93])]),["DISK_THM"]),
               [ThmBind.read"%61%36%74%136%110@$0@2$0@|@"])
  fun op datatype_stateRole x = x
    val op datatype_stateRole =
    ThmBind.DT(((("MoveToORPType",95),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%100%35%110@2"])
  fun op stateRole_case_cong x = x
    val op stateRole_case_cong =
    ThmBind.DT(((("MoveToORPType",96),
                [("MoveToORPType",[86,88,94]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%70%3%70%7%61%36%81%71%80$2@$1@2%81%80$1@%110@2%74$0@%37@4%74%136$2@$0@2%136$1@%37@3|@|@|@"])
  fun op stateRole_nchotomy x = x
    val op stateRole_nchotomy =
    ThmBind.DT(((("MoveToORPType",97),
                [("MoveToORPType",[86,88]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%70%15%80$0@%110@|@"])
  fun op stateRole_Axiom x = x
    val op stateRole_Axiom =
    ThmBind.DT(((("MoveToORPType",98),
                [("MoveToORPType",[90]),("bool",[8,25,55])]),["DISK_THM"]),
               [ThmBind.read"%61%54%88%23%74$0%110@2$1@|@|@"])
  fun op stateRole_induction x = x
    val op stateRole_induction =
    ThmBind.DT(((("MoveToORPType",99),
                [("MoveToORPType",[86,88]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%65%11%81$0%110@2%70%15$1$0@|@2|@"])

  val _ = DB.bindl "MoveToORPType"
  [("slCommand_TY_DEF",slCommand_TY_DEF,DB.Def),
   ("slCommand_BIJ",slCommand_BIJ,DB.Def),
   ("slCommand_size_def",slCommand_size_def,DB.Def),
   ("slCommand_CASE",slCommand_CASE,DB.Def),
   ("slState_TY_DEF",slState_TY_DEF,DB.Def),
   ("slState_BIJ",slState_BIJ,DB.Def),
   ("slState_size_def",slState_size_def,DB.Def),
   ("slState_CASE",slState_CASE,DB.Def),
   ("slOutput_TY_DEF",slOutput_TY_DEF,DB.Def),
   ("slOutput_BIJ",slOutput_BIJ,DB.Def),
   ("slOutput_size_def",slOutput_size_def,DB.Def),
   ("slOutput_CASE",slOutput_CASE,DB.Def),
   ("stateRole_TY_DEF",stateRole_TY_DEF,DB.Def),
   ("stateRole_BIJ",stateRole_BIJ,DB.Def),
   ("stateRole_size_def",stateRole_size_def,DB.Def),
   ("stateRole_CASE",stateRole_CASE,DB.Def),
   ("num2slCommand_slCommand2num",num2slCommand_slCommand2num,DB.Thm),
   ("slCommand2num_num2slCommand",slCommand2num_num2slCommand,DB.Thm),
   ("num2slCommand_11",num2slCommand_11,DB.Thm),
   ("slCommand2num_11",slCommand2num_11,DB.Thm),
   ("num2slCommand_ONTO",num2slCommand_ONTO,DB.Thm),
   ("slCommand2num_ONTO",slCommand2num_ONTO,DB.Thm),
   ("num2slCommand_thm",num2slCommand_thm,DB.Thm),
   ("slCommand2num_thm",slCommand2num_thm,DB.Thm),
   ("slCommand_EQ_slCommand",slCommand_EQ_slCommand,DB.Thm),
   ("slCommand_case_def",slCommand_case_def,DB.Thm),
   ("datatype_slCommand",datatype_slCommand,DB.Thm),
   ("slCommand_distinct",slCommand_distinct,DB.Thm),
   ("slCommand_case_cong",slCommand_case_cong,DB.Thm),
   ("slCommand_nchotomy",slCommand_nchotomy,DB.Thm),
   ("slCommand_Axiom",slCommand_Axiom,DB.Thm),
   ("slCommand_induction",slCommand_induction,DB.Thm),
   ("slCommand_distinct_clauses",slCommand_distinct_clauses,DB.Thm),
   ("num2slState_slState2num",num2slState_slState2num,DB.Thm),
   ("slState2num_num2slState",slState2num_num2slState,DB.Thm),
   ("num2slState_11",num2slState_11,DB.Thm),
   ("slState2num_11",slState2num_11,DB.Thm),
   ("num2slState_ONTO",num2slState_ONTO,DB.Thm),
   ("slState2num_ONTO",slState2num_ONTO,DB.Thm),
   ("num2slState_thm",num2slState_thm,DB.Thm),
   ("slState2num_thm",slState2num_thm,DB.Thm),
   ("slState_EQ_slState",slState_EQ_slState,DB.Thm),
   ("slState_case_def",slState_case_def,DB.Thm),
   ("datatype_slState",datatype_slState,DB.Thm),
   ("slState_distinct",slState_distinct,DB.Thm),
   ("slState_case_cong",slState_case_cong,DB.Thm),
   ("slState_nchotomy",slState_nchotomy,DB.Thm),
   ("slState_Axiom",slState_Axiom,DB.Thm),
   ("slState_induction",slState_induction,DB.Thm),
   ("slState_distinct_clauses",slState_distinct_clauses,DB.Thm),
   ("num2slOutput_slOutput2num",num2slOutput_slOutput2num,DB.Thm),
   ("slOutput2num_num2slOutput",slOutput2num_num2slOutput,DB.Thm),
   ("num2slOutput_11",num2slOutput_11,DB.Thm),
   ("slOutput2num_11",slOutput2num_11,DB.Thm),
   ("num2slOutput_ONTO",num2slOutput_ONTO,DB.Thm),
   ("slOutput2num_ONTO",slOutput2num_ONTO,DB.Thm),
   ("num2slOutput_thm",num2slOutput_thm,DB.Thm),
   ("slOutput2num_thm",slOutput2num_thm,DB.Thm),
   ("slOutput_EQ_slOutput",slOutput_EQ_slOutput,DB.Thm),
   ("slOutput_case_def",slOutput_case_def,DB.Thm),
   ("datatype_slOutput",datatype_slOutput,DB.Thm),
   ("slOutput_distinct",slOutput_distinct,DB.Thm),
   ("slOutput_case_cong",slOutput_case_cong,DB.Thm),
   ("slOutput_nchotomy",slOutput_nchotomy,DB.Thm),
   ("slOutput_Axiom",slOutput_Axiom,DB.Thm),
   ("slOutput_induction",slOutput_induction,DB.Thm),
   ("slOutput_distinct_clauses",slOutput_distinct_clauses,DB.Thm),
   ("num2stateRole_stateRole2num",num2stateRole_stateRole2num,DB.Thm),
   ("stateRole2num_num2stateRole",stateRole2num_num2stateRole,DB.Thm),
   ("num2stateRole_11",num2stateRole_11,DB.Thm),
   ("stateRole2num_11",stateRole2num_11,DB.Thm),
   ("num2stateRole_ONTO",num2stateRole_ONTO,DB.Thm),
   ("stateRole2num_ONTO",stateRole2num_ONTO,DB.Thm),
   ("num2stateRole_thm",num2stateRole_thm,DB.Thm),
   ("stateRole2num_thm",stateRole2num_thm,DB.Thm),
   ("stateRole_EQ_stateRole",stateRole_EQ_stateRole,DB.Thm),
   ("stateRole_case_def",stateRole_case_def,DB.Thm),
   ("datatype_stateRole",datatype_stateRole,DB.Thm),
   ("stateRole_case_cong",stateRole_case_cong,DB.Thm),
   ("stateRole_nchotomy",stateRole_nchotomy,DB.Thm),
   ("stateRole_Axiom",stateRole_Axiom,DB.Thm),
   ("stateRole_induction",stateRole_induction,DB.Thm)]

  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "MoveToORPType",
    thydataty = "TypeGrammarDeltas",
    read = ThmBind.read,
    data =
        "NTY13.MoveToORPType,9.slCommandNTY13.MoveToORPType,7.slStateNTY13.MoveToORPType,8.slOutputNTY13.MoveToORPType,9.stateRole"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "MoveToORPType",
    thydataty = "TermGrammarDeltas",
    read = ThmBind.read,
    data =
        "OO13.slCommand2num4.%126OO13.num2slCommand4.%119OO7.pltForm4.%123OO7.pltMove4.%124OO13.pltSecureHalt4.%125OO8.complete4.%117OO10.incomplete4.%118OO14.slCommand_size4.%128OO14.slCommand_CASE4.%127OO4.case4.%127OO11.slState2num4.%132OO11.num2slState4.%121OO11.MOVE_TO_ORP4.%101OO8.PLT_FORM4.%107OO8.PLT_MOVE4.%108OO15.PLT_SECURE_HALT4.%109OO8.COMPLETE3.%97OO12.slState_size4.%134OO12.slState_CASE4.%133OO4.case4.%133OO12.slOutput2num4.%129OO12.num2slOutput4.%120OO9.MoveToORP4.%102OO7.PLTForm4.%104OO7.PLTMove4.%105OO13.PLTSecureHalt4.%106OO8.Complete3.%99OO12.unAuthorized4.%139OO15.unAuthenticated4.%138OO13.slOutput_size4.%131OO13.slOutput_CASE4.%130OO4.case4.%130OO13.stateRole2num4.%135OO13.num2stateRole4.%122OO13.PlatoonLeader4.%110OO14.stateRole_size4.%137OO14.stateRole_CASE4.%136OO4.case4.%136"
  }
  local open GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val MoveToORPType_grammars = merge_grammars ["indexedLists",
                                               "patternMatches"]
  local
  val (tyUDs, tmUDs) = GrammarDeltas.thy_deltas{thyname="MoveToORPType"}
  val addtmUDs = term_grammar.add_deltas tmUDs
  val addtyUDs = type_grammar.apply_deltas tyUDs
  in
  val MoveToORPType_grammars = 
    Portable.## (addtyUDs,addtmUDs) MoveToORPType_grammars
  val _ = Parse.grammarDB_insert("MoveToORPType",MoveToORPType_grammars)
  val _ = Parse.temp_set_grammars (addtyUDs (Parse.type_grammar()), addtmUDs (Parse.term_grammar()))
  end (* addUDs local *)
  end


  val _ =
    TypeBase.write [
      let
        open TypeBasePure
        val tyinfo0 = mk_datatype_info
          {ax=ORIG slCommand_Axiom,
           case_def=slCommand_case_def,
           case_cong=slCommand_case_cong,
           induction=ORIG slCommand_induction,
           nchotomy=slCommand_nchotomy,
           size=SOME(Parse.Term`(MoveToORPType$slCommand_size) :MoveToORPType$slCommand -> num$num`,
                     ORIG slCommand_size_def),
           encode = NONE,
           lift=NONE,
           one_one=NONE,
           distinct=SOME slCommand_distinct,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = EnumType.update_tyinfo num2slCommand_thm slCommand2num_thm NONE tyinfo0
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
          {ax=ORIG slState_Axiom,
           case_def=slState_case_def,
           case_cong=slState_case_cong,
           induction=ORIG slState_induction,
           nchotomy=slState_nchotomy,
           size=SOME(Parse.Term`(MoveToORPType$slState_size) :MoveToORPType$slState -> num$num`,
                     ORIG slState_size_def),
           encode = NONE,
           lift=NONE,
           one_one=NONE,
           distinct=SOME slState_distinct,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = EnumType.update_tyinfo num2slState_thm slState2num_thm NONE tyinfo0
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
          {ax=ORIG slOutput_Axiom,
           case_def=slOutput_case_def,
           case_cong=slOutput_case_cong,
           induction=ORIG slOutput_induction,
           nchotomy=slOutput_nchotomy,
           size=SOME(Parse.Term`(MoveToORPType$slOutput_size) :MoveToORPType$slOutput -> num$num`,
                     ORIG slOutput_size_def),
           encode = NONE,
           lift=NONE,
           one_one=NONE,
           distinct=SOME slOutput_distinct,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = EnumType.update_tyinfo num2slOutput_thm slOutput2num_thm NONE tyinfo0
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
          {ax=ORIG stateRole_Axiom,
           case_def=stateRole_case_def,
           case_cong=stateRole_case_cong,
           induction=ORIG stateRole_induction,
           nchotomy=stateRole_nchotomy,
           size=SOME(Parse.Term`(MoveToORPType$stateRole_size) :MoveToORPType$stateRole -> num$num`,
                     ORIG stateRole_size_def),
           encode = NONE,
           lift=NONE,
           one_one=NONE,
           distinct=NONE,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = EnumType.update_tyinfo num2stateRole_thm stateRole2num_thm (SOME ("stateRole", stateRole_EQ_stateRole)) tyinfo0
        val () = computeLib.write_datatype_info tyinfo0
      in
        tyinfo0
      end
    ];

val _ = if !Globals.print_thy_loads then TextIO.print "done\n" else ()
val _ = Theory.load_complete "MoveToORPType"
end
