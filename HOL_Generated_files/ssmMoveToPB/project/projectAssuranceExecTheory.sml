structure projectAssuranceExecTheory :> projectAssuranceExecTheory =
struct
  val _ = if !Globals.print_thy_loads then TextIO.print "Loading projectAssuranceExecTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (* Parents and ML dependencies *)
  local open projectSecurityTheory
  in end;
  val _ = Theory.link_parents
          ("projectAssuranceExec",
          Arbnum.fromString "1545927490",
          Arbnum.fromString "499230")
          [("projectSecurity",
           Arbnum.fromString "1545927476",
           Arbnum.fromString "703190")];
  val _ = Theory.incorporate_types "projectAssuranceExec" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("aclfoundation", "Kripke"), ID("projectTypes", "principal"),
   ID("option", "option"), ID("projectTypes", "commands"),
   ID("min", "fun"), ID("projectTypes", "state"), ID("ssm", "trType"),
   ID("list", "list"), ID("aclfoundation", "po"),
   ID("aclfoundation", "Form"), ID("bool", "!"), ID("min", "bool"),
   ID("pair", ","), ID("pair", "prod"), ID("bool", "/\\"), ID("min", "="),
   ID("min", "==>"), ID("ssm", "CFG"), ID("ssm", "configuration"),
   ID("ssm", "CFGInterpret"), ID("list", "CONS"),
   ID("projectTypes", "FORM"), ID("projectTypes", "MOVE"),
   ID("projectTypes", "MOVE_TO_PB"), ID("list", "NIL"),
   ID("aclfoundation", "Name"), ID("aclfoundation", "Princ"),
   ID("projectTypes", "PlatoonLeader"),
   ID("projectTypes", "PlatoonLeaderCOM"),
   ID("projectTypes", "platoonLeaderCom"), ID("option", "SOME"),
   ID("ssm", "TR"), ID("projectSecurity", "authentication"),
   ID("ssm", "authenticationTest"), ID("ssm", "exec"),
   ID("projectTypes", "form"), ID("projectSecurity", "globalAuth"),
   ID("ssm", "inputList"), ID("projectTypes", "move"),
   ID("aclfoundation", "prop"), ID("ssm", "propCommandList"),
   ID("satList", "satList"), ID("aclfoundation", "says"),
   ID("projectTypes", "secureHalt"), ID("projectSecurity", "stateAuth")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYV "'e", TYV "'d", TYOP [1], TYV "'b", TYOP [3], TYOP [2, 4],
   TYOP [0, 5, 3, 2, 1, 0], TYOP [5], TYOP [7, 5], TYOP [6, 8],
   TYOP [4, 9, 7], TYOP [4, 7, 10], TYOP [8, 1], TYOP [8, 0],
   TYOP [4, 9, 9], TYOP [4, 7, 14], TYOP [9, 5, 2, 1, 0], TYOP [7, 16],
   TYOP [7, 17], TYOP [7, 9], TYOP [11], TYOP [4, 6, 20], TYOP [4, 21, 20],
   TYOP [4, 11, 20], TYOP [4, 23, 20], TYOP [4, 15, 20], TYOP [4, 25, 20],
   TYOP [4, 12, 20], TYOP [4, 27, 20], TYOP [4, 13, 20], TYOP [4, 29, 20],
   TYOP [13, 12, 13], TYOP [13, 6, 31], TYOP [4, 31, 32], TYOP [4, 6, 33],
   TYOP [4, 13, 31], TYOP [4, 12, 35], TYOP [4, 20, 20], TYOP [4, 20, 37],
   TYOP [18, 4, 1, 0, 9, 2, 7], TYOP [4, 19, 39], TYOP [4, 7, 40],
   TYOP [4, 18, 41], TYOP [4, 17, 17], TYOP [4, 43, 42], TYOP [4, 7, 43],
   TYOP [4, 45, 44], TYOP [4, 16, 20], TYOP [4, 47, 46], TYOP [4, 39, 20],
   TYOP [4, 32, 49], TYOP [4, 16, 43], TYOP [4, 18, 18], TYOP [4, 17, 52],
   TYOP [4, 8, 8], TYOP [4, 5, 54], TYOP [4, 19, 19], TYOP [4, 9, 56],
   TYOP [26, 2], TYOP [4, 2, 58], TYOP [29], TYOP [4, 60, 4],
   TYOP [4, 4, 5], TYOP [4, 39, 49], TYOP [4, 9, 63], TYOP [4, 32, 64],
   TYOP [4, 17, 20], TYOP [4, 47, 66], TYOP [4, 8, 9], TYOP [4, 17, 8],
   TYOP [4, 5, 16], TYOP [4, 32, 66], TYOP [4, 16, 16], TYOP [4, 58, 72]]
  end
  val _ = Theory.incorporate_consts "projectAssuranceExec" tyvector [];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("M", 6), TMV("NS", 11), TMV("Oi", 12), TMV("Os", 13),
   TMV("Out", 15), TMV("ins", 18), TMV("outs", 19), TMC(10, 22),
   TMC(10, 24), TMC(10, 26), TMC(10, 28), TMC(10, 30), TMC(12, 34),
   TMC(12, 36), TMC(14, 38), TMC(15, 38), TMC(16, 38), TMC(17, 48),
   TMC(19, 50), TMC(20, 51), TMC(20, 53), TMC(20, 55), TMC(20, 57),
   TMC(21, 7), TMC(22, 7), TMC(23, 7), TMC(24, 17), TMC(24, 8),
   TMC(25, 59), TMC(27, 2), TMC(28, 61), TMC(30, 62), TMC(31, 65),
   TMC(32, 47), TMC(33, 67), TMC(34, 68), TMC(35, 60), TMC(36, 43),
   TMC(37, 69), TMC(38, 60), TMC(39, 70), TMC(40, 43), TMC(41, 71),
   TMC(42, 73), TMC(43, 60), TMC(44, 45)]
  end
  structure ThmBind = struct
    val DT = Thm.disk_thm
    val read = Term.read_raw tmvector
  end
  fun op MOVE_TO_PB_exec_form_lemma1 x = x
    val op MOVE_TO_PB_exec_form_lemma1 =
    ThmBind.DT(((("projectAssuranceExec",0),
                [("aclDrules",[3]),("aclrules",[23]),
                 ("bool",[25,26,46,47,50,52,53,55,62,63,70,92,93,95]),
                 ("list",[23]),("projectSecurity",[3,4]),
                 ("projectUtilities",[8]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm",[35,43,44])]),["DISK_THM"]),
               [ThmBind.read"%7%0%10%2%11%3%16%18%12$2@%13$1@$0@3%17%33@%45@%37@%20%19%43%28%29@2%40%31%30%36@5%26@2%5@2%25@%6@3%42%12$2@%13$1@$0@3%41%19%43%28%29@2%40%31%30%36@5%26@4|@|@|@"])
  fun op MOVE_TO_PB_exec_form_lemma2 x = x
    val op MOVE_TO_PB_exec_form_lemma2 =
    ThmBind.DT(((("projectAssuranceExec",1),
                [("aclDrules",[3]),("aclrules",[23]),
                 ("bool",
                 [25,26,35,42,46,47,50,52,53,55,57,62,63,70,76,83,92,93,95,
                  145]),("combin",[19]),("list",[23]),
                 ("projectSecurity",[3,4]),("projectUtilities",[8]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm",[35,43,44,58])]),["DISK_THM"]),
               [ThmBind.read"%8%1%9%4%7%0%10%2%11%3%15%32%12$2@%13$1@$0@3%35%38%19%43%28%29@2%40%31%30%36@5%26@4%17%33@%45@%37@%20%19%43%28%29@2%40%31%30%36@5%26@2%5@2%25@%6@2%17%33@%45@%37@%5@$4%25@%35%38%19%43%28%29@2%40%31%30%36@5%26@5%22$3%25@%35%38%19%43%28%29@2%40%31%30%36@5%26@5%6@4%14%34%33@%19%43%28%29@2%40%31%30%36@5%26@3%14%18%12$2@%13$1@$0@3%17%33@%45@%37@%20%19%43%28%29@2%40%31%30%36@5%26@2%5@2%25@%6@3%42%12$2@%13$1@$0@3%41%19%43%28%29@2%40%31%30%36@5%26@6|@|@|@|@|@"])
  fun op MOVE_TO_PB_exec_form_thm x = x
    val op MOVE_TO_PB_exec_form_thm =
    ThmBind.DT(((("projectAssuranceExec",2),
                [("aclDrules",[3]),("aclrules",[23]),
                 ("bool",
                 [25,26,35,42,46,47,50,52,53,55,57,62,63,70,76,83,92,93,95,
                  145]),("combin",[19]),("list",[23]),
                 ("projectSecurity",[3,4]),("projectUtilities",[8]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm",[35,43,44,47,48,58])]),["DISK_THM"]),
               [ThmBind.read"%8%1%9%4%7%0%10%2%11%3%15%32%12$2@%13$1@$0@3%35%21%31%30%36@3%27@3%17%33@%45@%37@%20%19%43%28%29@2%40%31%30%36@5%26@2%5@2%25@%6@2%17%33@%45@%37@%5@$4%25@%35%21%31%30%36@3%27@4%22$3%25@%35%21%31%30%36@3%27@4%6@4%14%34%33@%19%43%28%29@2%40%31%30%36@5%26@3%14%18%12$2@%13$1@$0@3%17%33@%45@%37@%20%19%43%28%29@2%40%31%30%36@5%26@2%5@2%25@%6@3%42%12$2@%13$1@$0@3%19%40%31%30%36@4%26@5|@|@|@|@|@"])
  fun op FORM_exec_move_lemma1 x = x
    val op FORM_exec_move_lemma1 =
    ThmBind.DT(((("projectAssuranceExec",3),
                [("aclDrules",[3]),("aclrules",[23]),
                 ("bool",
                 [25,26,27,46,47,50,52,53,55,57,62,63,70,92,93,95]),
                 ("list",[23]),("option",[10]),("projectSecurity",[3,4]),
                 ("projectTypes",[134,137,139]),("projectUtilities",[8]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm",[35,43,44])]),["DISK_THM"]),
               [ThmBind.read"%7%0%10%2%11%3%16%18%12$2@%13$1@$0@3%17%33@%45@%37@%20%19%43%28%29@2%40%31%30%39@5%26@2%5@2%23@%6@3%42%12$2@%13$1@$0@3%41%19%43%28%29@2%40%31%30%39@5%26@4|@|@|@"])
  fun op FORM_exec_move_lemma2 x = x
    val op FORM_exec_move_lemma2 =
    ThmBind.DT(((("projectAssuranceExec",4),
                [("aclDrules",[3]),("aclrules",[23]),
                 ("bool",
                 [25,26,27,35,42,46,47,50,52,53,55,57,62,63,70,76,83,92,93,
                  95,145]),("combin",[19]),("list",[23]),("option",[10]),
                 ("projectSecurity",[3,4]),("projectTypes",[134,137,139]),
                 ("projectUtilities",[8]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm",[35,43,44,58])]),["DISK_THM"]),
               [ThmBind.read"%8%1%9%4%7%0%10%2%11%3%15%32%12$2@%13$1@$0@3%35%38%19%43%28%29@2%40%31%30%39@5%26@4%17%33@%45@%37@%20%19%43%28%29@2%40%31%30%39@5%26@2%5@2%23@%6@2%17%33@%45@%37@%5@$4%23@%35%38%19%43%28%29@2%40%31%30%39@5%26@5%22$3%23@%35%38%19%43%28%29@2%40%31%30%39@5%26@5%6@4%14%34%33@%19%43%28%29@2%40%31%30%39@5%26@3%14%18%12$2@%13$1@$0@3%17%33@%45@%37@%20%19%43%28%29@2%40%31%30%39@5%26@2%5@2%23@%6@3%42%12$2@%13$1@$0@3%41%19%43%28%29@2%40%31%30%39@5%26@6|@|@|@|@|@"])
  fun op FORM_exec_move_thm x = x
    val op FORM_exec_move_thm =
    ThmBind.DT(((("projectAssuranceExec",5),
                [("aclDrules",[3]),("aclrules",[23]),
                 ("bool",
                 [25,26,27,35,42,46,47,50,52,53,55,57,62,63,70,76,83,92,93,
                  95,145]),("combin",[19]),("list",[23]),("option",[10]),
                 ("projectSecurity",[3,4]),("projectTypes",[134,137,139]),
                 ("projectUtilities",[8]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm",[35,43,44,47,48,58])]),["DISK_THM"]),
               [ThmBind.read"%8%1%9%4%7%0%10%2%11%3%15%32%12$2@%13$1@$0@3%35%21%31%30%39@3%27@3%17%33@%45@%37@%20%19%43%28%29@2%40%31%30%39@5%26@2%5@2%23@%6@2%17%33@%45@%37@%5@$4%23@%35%21%31%30%39@3%27@4%22$3%23@%35%21%31%30%39@3%27@4%6@4%14%34%33@%19%43%28%29@2%40%31%30%39@5%26@3%14%18%12$2@%13$1@$0@3%17%33@%45@%37@%20%19%43%28%29@2%40%31%30%39@5%26@2%5@2%23@%6@3%42%12$2@%13$1@$0@3%19%40%31%30%39@4%26@5|@|@|@|@|@"])
  fun op MOVE_exec_secureHalt_lemma1 x = x
    val op MOVE_exec_secureHalt_lemma1 =
    ThmBind.DT(((("projectAssuranceExec",6),
                [("aclDrules",[3]),("aclrules",[23]),
                 ("bool",
                 [25,26,27,46,47,50,52,53,55,57,62,63,70,92,93,95]),
                 ("list",[23]),("option",[10]),("projectSecurity",[3,4]),
                 ("projectTypes",[134,137,139]),("projectUtilities",[8]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm",[35,43,44])]),["DISK_THM"]),
               [ThmBind.read"%7%0%10%2%11%3%16%18%12$2@%13$1@$0@3%17%33@%45@%37@%20%19%43%28%29@2%40%31%30%44@5%26@2%5@2%24@%6@3%42%12$2@%13$1@$0@3%41%19%43%28%29@2%40%31%30%44@5%26@4|@|@|@"])
  fun op MOVE_exec_secureHalt_lemma2 x = x
    val op MOVE_exec_secureHalt_lemma2 =
    ThmBind.DT(((("projectAssuranceExec",7),
                [("aclDrules",[3]),("aclrules",[23]),
                 ("bool",
                 [25,26,27,35,42,46,47,50,52,53,55,57,62,63,70,76,83,92,93,
                  95,145]),("combin",[19]),("list",[23]),("option",[10]),
                 ("projectSecurity",[3,4]),("projectTypes",[134,137,139]),
                 ("projectUtilities",[8]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm",[35,43,44,58])]),["DISK_THM"]),
               [ThmBind.read"%8%1%9%4%7%0%10%2%11%3%15%32%12$2@%13$1@$0@3%35%38%19%43%28%29@2%40%31%30%44@5%26@4%17%33@%45@%37@%20%19%43%28%29@2%40%31%30%44@5%26@2%5@2%24@%6@2%17%33@%45@%37@%5@$4%24@%35%38%19%43%28%29@2%40%31%30%44@5%26@5%22$3%24@%35%38%19%43%28%29@2%40%31%30%44@5%26@5%6@4%14%34%33@%19%43%28%29@2%40%31%30%44@5%26@3%14%18%12$2@%13$1@$0@3%17%33@%45@%37@%20%19%43%28%29@2%40%31%30%44@5%26@2%5@2%24@%6@3%42%12$2@%13$1@$0@3%41%19%43%28%29@2%40%31%30%44@5%26@6|@|@|@|@|@"])
  fun op MOVE_exec_secureHalt_thm x = x
    val op MOVE_exec_secureHalt_thm =
    ThmBind.DT(((("projectAssuranceExec",8),
                [("aclDrules",[3]),("aclrules",[23]),
                 ("bool",
                 [25,26,27,35,42,46,47,50,52,53,55,57,62,63,70,76,83,92,93,
                  95,145]),("combin",[19]),("list",[23]),("option",[10]),
                 ("projectSecurity",[3,4]),("projectTypes",[134,137,139]),
                 ("projectUtilities",[8]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm",[35,43,44,47,48,58])]),["DISK_THM"]),
               [ThmBind.read"%8%1%9%4%7%0%10%2%11%3%15%32%12$2@%13$1@$0@3%35%21%31%30%44@3%27@3%17%33@%45@%37@%20%19%43%28%29@2%40%31%30%44@5%26@2%5@2%24@%6@2%17%33@%45@%37@%5@$4%24@%35%21%31%30%44@3%27@4%22$3%24@%35%21%31%30%44@3%27@4%6@4%14%34%33@%19%43%28%29@2%40%31%30%44@5%26@3%14%18%12$2@%13$1@$0@3%17%33@%45@%37@%20%19%43%28%29@2%40%31%30%44@5%26@2%5@2%24@%6@3%42%12$2@%13$1@$0@3%19%40%31%30%44@4%26@5|@|@|@|@|@"])

  val _ = DB.bindl "projectAssuranceExec"
  [("MOVE_TO_PB_exec_form_lemma1",MOVE_TO_PB_exec_form_lemma1,DB.Thm),
   ("MOVE_TO_PB_exec_form_lemma2",MOVE_TO_PB_exec_form_lemma2,DB.Thm),
   ("MOVE_TO_PB_exec_form_thm",MOVE_TO_PB_exec_form_thm,DB.Thm),
   ("FORM_exec_move_lemma1",FORM_exec_move_lemma1,DB.Thm),
   ("FORM_exec_move_lemma2",FORM_exec_move_lemma2,DB.Thm),
   ("FORM_exec_move_thm",FORM_exec_move_thm,DB.Thm),
   ("MOVE_exec_secureHalt_lemma1",MOVE_exec_secureHalt_lemma1,DB.Thm),
   ("MOVE_exec_secureHalt_lemma2",MOVE_exec_secureHalt_lemma2,DB.Thm),
   ("MOVE_exec_secureHalt_thm",MOVE_exec_secureHalt_thm,DB.Thm)]

  local open GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val projectAssuranceExec_grammars = merge_grammars ["projectSecurity"]
  local
  val (tyUDs, tmUDs) = GrammarDeltas.thy_deltas{thyname="projectAssuranceExec"}
  val addtmUDs = term_grammar.add_deltas tmUDs
  val addtyUDs = type_grammar.apply_deltas tyUDs
  in
  val projectAssuranceExec_grammars = 
    Portable.## (addtyUDs,addtmUDs) projectAssuranceExec_grammars
  val _ = Parse.grammarDB_insert("projectAssuranceExec",projectAssuranceExec_grammars)
  val _ = Parse.temp_set_grammars (addtyUDs (Parse.type_grammar()), addtmUDs (Parse.term_grammar()))
  end (* addUDs local *)
  end

val _ = if !Globals.print_thy_loads then TextIO.print "done\n" else ()
val _ = Theory.load_complete "projectAssuranceExec"
end
