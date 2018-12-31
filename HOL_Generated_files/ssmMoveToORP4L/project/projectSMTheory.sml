structure projectSMTheory :> projectSMTheory =
struct
  val _ = if !Globals.print_thy_loads then TextIO.print "Loading projectSMTheory ... " else ()
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
          ("projectSM",
          Arbnum.fromString "1545932452",
          Arbnum.fromString "550057")
          [("projectUtilities",
           Arbnum.fromString "1545932429",
           Arbnum.fromString "536928"),
           ("ssm",
           Arbnum.fromString "1545329353",
           Arbnum.fromString "965801")];
  val _ = Theory.incorporate_types "projectSM" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("projectTypes", "state"), ID("ssm", "trType"),
   ID("list", "list"), ID("option", "option"),
   ID("projectTypes", "commands"), ID("projectTypes", "output"),
   ID("min", "bool"), ID("bool", "!"), ID("bool", "/\\"), ID("min", "="),
   ID("min", "==>"), ID("projectTypes", "COMPLETE"), ID("bool", "COND"),
   ID("projectTypes", "Complete"), ID("projectTypes", "FORM_RT"),
   ID("projectTypes", "FormRT"), ID("projectTypes", "MOVE_TO_ORP"),
   ID("projectSM", "NOut"), ID("projectSM", "NS"),
   ID("projectTypes", "NoActionTaken"),
   ID("projectTypes", "PlatoonLeaderCOM"),
   ID("projectTypes", "platoonLeaderCom"), ID("projectTypes", "RT_HALT"),
   ID("projectTypes", "RT_MOVE"), ID("projectTypes", "RtHalt"),
   ID("projectTypes", "RtMove"), ID("option", "SOME"),
   ID("projectTypes", "UnAuthenticated"),
   ID("projectTypes", "UnAuthorized"), ID("projectTypes", "complete"),
   ID("ssm", "discard"), ID("ssm", "exec"), ID("projectTypes", "formRT"),
   ID("projectUtilities", "getPlatoonLeaderCOM"),
   ID("projectTypes", "rtHalt"), ID("projectTypes", "rtMove"),
   ID("ssm", "trap")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYOP [5], TYOP [4, 1], TYOP [3, 2], TYOP [2, 3],
   TYOP [0, 4, 0], TYOP [0, 0, 5], TYOP [6], TYOP [0, 4, 7],
   TYOP [0, 0, 8], TYOP [7], TYOP [0, 4, 10], TYOP [0, 0, 11],
   TYOP [0, 12, 10], TYOP [0, 13, 10], TYOP [0, 3, 10], TYOP [0, 15, 10],
   TYOP [0, 0, 10], TYOP [0, 17, 10], TYOP [0, 11, 10], TYOP [0, 10, 10],
   TYOP [0, 10, 20], TYOP [0, 2, 10], TYOP [0, 2, 22], TYOP [0, 7, 10],
   TYOP [0, 7, 24], TYOP [0, 0, 17], TYOP [0, 7, 7], TYOP [0, 7, 27],
   TYOP [0, 10, 28], TYOP [0, 0, 0], TYOP [0, 0, 30], TYOP [0, 10, 31],
   TYOP [22], TYOP [0, 33, 1], TYOP [0, 1, 2], TYOP [0, 3, 4],
   TYOP [0, 3, 2]]
  end
  val _ = Theory.incorporate_consts "projectSM" tyvector
     [("NS", 6), ("NOut", 9)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("P", 12), TMV("s", 0), TMV("v", 0), TMV("v0", 3), TMV("v1", 3),
   TMV("v1", 4), TMV("v6", 3), TMV("x", 3), TMC(8, 14), TMC(8, 16),
   TMC(8, 18), TMC(8, 19), TMC(9, 21), TMC(10, 23), TMC(10, 25),
   TMC(10, 26), TMC(11, 21), TMC(12, 0), TMC(13, 29), TMC(13, 32),
   TMC(14, 7), TMC(15, 0), TMC(16, 7), TMC(17, 0), TMC(18, 9), TMC(19, 6),
   TMC(20, 7), TMC(21, 34), TMC(23, 0), TMC(24, 0), TMC(25, 7), TMC(26, 7),
   TMC(27, 35), TMC(28, 7), TMC(29, 7), TMC(30, 33), TMC(31, 36),
   TMC(32, 36), TMC(33, 33), TMC(34, 37), TMC(35, 33), TMC(36, 33),
   TMC(37, 36)]
  end
  structure ThmBind = struct
    val DT = Thm.disk_thm
    val read = Term.read_raw tmvector
  end
  fun op NS_ind x = x
    val op NS_ind =
    ThmBind.DT(((("projectSM",2),
                [("bool",[25,26,46,47,52,53,57,62,71,75,76,79]),
                 ("pair",[5,16]),("projectTypes",[105]),
                 ("relation",[107,113]),("sat",[1,3,5,6,7,11,12,13,14,15]),
                 ("ssm",[14])]),["DISK_THM"]),
               [ThmBind.read"%8%0%16%12%9%7$1%23@%37$0@2|@2%12%9%7$1%21@%37$0@2|@2%12%9%7$1%29@%37$0@2|@2%12%9%7$1%28@%37$0@2|@2%12%10%1%9%3$2$1@%42$0@2|@|@2%12%10%1%9%4$2$1@%36$0@2|@|@2%9%6$1%17@%37$0@2|@8%10%2%11%5$2$1@$0@|@|@2|@"])
  fun op NS_def x = x
    val op NS_def =
    ThmBind.DT(((("projectSM",3),
                [("bool",[15,57]),("combin",[19]),("pair",[49]),
                 ("projectSM",[0,1]),("projectTypes",[101]),
                 ("relation",[113,132]),("ssm",[8])]),["DISK_THM"]),
               [ThmBind.read"%12%15%25%23@%37%7@3%19%13%39%7@2%32%27%38@4%21@%23@3%12%15%25%21@%37%7@3%19%13%39%7@2%32%27%41@4%29@%21@3%12%15%25%29@%37%7@3%19%13%39%7@2%32%27%40@4%28@%29@3%12%15%25%28@%37%7@3%19%13%39%7@2%32%27%35@4%17@%28@3%12%15%25%1@%42%3@3%1@2%15%25%1@%36%4@3%1@6"])
  fun op NOut_ind x = x
    val op NOut_ind =
    ThmBind.DT(((("projectSM",6),
                [("bool",[25,26,46,47,52,53,57,62,71,75,76,79]),
                 ("pair",[5,16]),("projectTypes",[105]),
                 ("relation",[107,113]),("sat",[1,3,5,6,7,11,12,13,14,15]),
                 ("ssm",[14])]),["DISK_THM"]),
               [ThmBind.read"%8%0%16%12%9%7$1%23@%37$0@2|@2%12%9%7$1%21@%37$0@2|@2%12%9%7$1%29@%37$0@2|@2%12%9%7$1%28@%37$0@2|@2%12%10%1%9%3$2$1@%42$0@2|@|@2%12%10%1%9%4$2$1@%36$0@2|@|@2%9%6$1%17@%37$0@2|@8%10%2%11%5$2$1@$0@|@|@2|@"])
  fun op NOut_def x = x
    val op NOut_def =
    ThmBind.DT(((("projectSM",7),
                [("bool",[15,57]),("combin",[19]),("pair",[49]),
                 ("projectSM",[4,5]),("projectTypes",[101]),
                 ("relation",[113,132]),("ssm",[8])]),["DISK_THM"]),
               [ThmBind.read"%12%14%24%23@%37%7@3%18%13%39%7@2%32%27%38@4%22@%26@3%12%14%24%21@%37%7@3%18%13%39%7@2%32%27%41@4%31@%26@3%12%14%24%29@%37%7@3%18%13%39%7@2%32%27%40@4%30@%26@3%12%14%24%28@%37%7@3%18%13%39%7@2%32%27%35@4%20@%26@3%12%14%24%1@%42%3@3%34@2%14%24%1@%36%4@3%33@6"])

  val _ = DB.bindl "projectSM"
  [("NS_ind",NS_ind,DB.Thm), ("NS_def",NS_def,DB.Thm),
   ("NOut_ind",NOut_ind,DB.Thm), ("NOut_def",NOut_def,DB.Thm)]

  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "projectSM",
    thydataty = "compute",
    read = ThmBind.read,
    data = "projectSM.NS_def projectSM.NOut_def"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "projectSM",
    thydataty = "TermGrammarDeltas",
    read = ThmBind.read,
    data = "OO2.NS3.%25OO4.NOut3.%24"
  }
  local open GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val projectSM_grammars = merge_grammars ["projectUtilities", "ssm"]
  local
  val (tyUDs, tmUDs) = GrammarDeltas.thy_deltas{thyname="projectSM"}
  val addtmUDs = term_grammar.add_deltas tmUDs
  val addtyUDs = type_grammar.apply_deltas tyUDs
  in
  val projectSM_grammars = 
    Portable.## (addtyUDs,addtmUDs) projectSM_grammars
  val _ = Parse.grammarDB_insert("projectSM",projectSM_grammars)
  val _ = Parse.temp_set_grammars (addtyUDs (Parse.type_grammar()), addtmUDs (Parse.term_grammar()))
  end (* addUDs local *)
  end

val _ = if !Globals.print_thy_loads then TextIO.print "done\n" else ()
val _ = Theory.load_complete "projectSM"
end
