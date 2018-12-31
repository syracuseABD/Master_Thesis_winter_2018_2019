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
          Arbnum.fromString "1545933171",
          Arbnum.fromString "185285")
          [("projectSecurity",
           Arbnum.fromString "1545933156",
           Arbnum.fromString "810142")];
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
   ID("ssm", "CFGInterpret"), ID("list", "CONS"), ID("list", "NIL"),
   ID("aclfoundation", "Name"), ID("aclfoundation", "Princ"),
   ID("projectTypes", "RT_ALERT"), ID("projectTypes", "RT_FORM"),
   ID("projectTypes", "RT_ORIENT"), ID("projectTypes", "RT_POSITION"),
   ID("option", "SOME"), ID("projectTypes", "SquadLeader"),
   ID("projectTypes", "SquadLeaderCOM"),
   ID("projectTypes", "squadLeaderCom"), ID("ssm", "TR"),
   ID("projectSecurity", "authentication"),
   ID("ssm", "authenticationTest"), ID("projectTypes", "complete"),
   ID("ssm", "exec"), ID("projectSecurity", "globalAuth"),
   ID("ssm", "inputList"), ID("aclfoundation", "prop"),
   ID("ssm", "propCommandList"), ID("projectTypes", "rtAlert"),
   ID("projectTypes", "rtOrient"), ID("projectTypes", "rtPosition"),
   ID("satList", "satList"), ID("aclfoundation", "says"),
   ID("projectSecurity", "stateAuth")]
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
   TYOP [23, 2], TYOP [4, 2, 58], TYOP [4, 4, 5], TYOP [31],
   TYOP [4, 61, 4], TYOP [4, 39, 49], TYOP [4, 9, 63], TYOP [4, 32, 64],
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
   TMC(21, 17), TMC(21, 8), TMC(22, 59), TMC(24, 7), TMC(25, 7),
   TMC(26, 7), TMC(27, 7), TMC(28, 60), TMC(29, 2), TMC(30, 62),
   TMC(32, 65), TMC(33, 47), TMC(34, 67), TMC(35, 61), TMC(36, 68),
   TMC(37, 43), TMC(38, 69), TMC(39, 70), TMC(40, 43), TMC(41, 61),
   TMC(42, 61), TMC(43, 61), TMC(44, 71), TMC(45, 73), TMC(46, 45)]
  end
  structure ThmBind = struct
    val DT = Thm.disk_thm
    val read = Term.read_raw tmvector
  end
  fun op RT_FORM_exec_rtPosition_lemma1 x = x
    val op RT_FORM_exec_rtPosition_lemma1 =
    ThmBind.DT(((("projectAssuranceExec",0),
                [("aclDrules",[3]),("aclrules",[23]),
                 ("bool",[25,26,46,47,50,52,53,55,62,63,70,92,93,95]),
                 ("list",[23]),("projectSecurity",[3,4]),
                 ("projectUtilities",[8]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm",[35,43,44])]),["DISK_THM"]),
               [ThmBind.read"%7%0%10%2%11%3%16%18%12$2@%13$1@$0@3%17%34@%47@%38@%20%19%46%25%31@2%40%30%32%44@5%23@2%5@2%27@%6@3%45%12$2@%13$1@$0@3%41%19%46%25%31@2%40%30%32%44@5%23@4|@|@|@"])
  fun op RT_FORM_exec_rtPosition_lemma2 x = x
    val op RT_FORM_exec_rtPosition_lemma2 =
    ThmBind.DT(((("projectAssuranceExec",1),
                [("aclDrules",[3]),("aclrules",[23]),
                 ("bool",
                 [25,26,35,42,46,47,50,52,53,55,57,62,63,70,76,83,92,93,95,
                  145]),("combin",[19]),("list",[23]),
                 ("projectSecurity",[3,4]),("projectUtilities",[8]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm",[35,43,44,58])]),["DISK_THM"]),
               [ThmBind.read"%8%1%9%4%7%0%10%2%11%3%15%33%12$2@%13$1@$0@3%37%39%19%46%25%31@2%40%30%32%44@5%23@4%17%34@%47@%38@%20%19%46%25%31@2%40%30%32%44@5%23@2%5@2%27@%6@2%17%34@%47@%38@%5@$4%27@%37%39%19%46%25%31@2%40%30%32%44@5%23@5%22$3%27@%37%39%19%46%25%31@2%40%30%32%44@5%23@5%6@4%14%35%34@%19%46%25%31@2%40%30%32%44@5%23@3%14%18%12$2@%13$1@$0@3%17%34@%47@%38@%20%19%46%25%31@2%40%30%32%44@5%23@2%5@2%27@%6@3%45%12$2@%13$1@$0@3%41%19%46%25%31@2%40%30%32%44@5%23@6|@|@|@|@|@"])
  fun op RT_FORM_exec_rtPosition_thm x = x
    val op RT_FORM_exec_rtPosition_thm =
    ThmBind.DT(((("projectAssuranceExec",2),
                [("aclDrules",[3]),("aclrules",[23]),
                 ("bool",
                 [25,26,35,42,46,47,50,52,53,55,57,62,63,70,76,83,92,93,95,
                  145]),("combin",[19]),("list",[23]),
                 ("projectSecurity",[3,4]),("projectUtilities",[8]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm",[35,43,44,47,48,58])]),["DISK_THM"]),
               [ThmBind.read"%8%1%9%4%7%0%10%2%11%3%15%33%12$2@%13$1@$0@3%37%21%30%32%44@3%24@3%17%34@%47@%38@%20%19%46%25%31@2%40%30%32%44@5%23@2%5@2%27@%6@2%17%34@%47@%38@%5@$4%27@%37%21%30%32%44@3%24@4%22$3%27@%37%21%30%32%44@3%24@4%6@4%14%35%34@%19%46%25%31@2%40%30%32%44@5%23@3%14%18%12$2@%13$1@$0@3%17%34@%47@%38@%20%19%46%25%31@2%40%30%32%44@5%23@2%5@2%27@%6@3%45%12$2@%13$1@$0@3%19%40%30%32%44@4%23@5|@|@|@|@|@"])
  fun op RT_POSITION_exec_rtOrient_lemma1 x = x
    val op RT_POSITION_exec_rtOrient_lemma1 =
    ThmBind.DT(((("projectAssuranceExec",3),
                [("aclDrules",[3]),("aclrules",[23]),
                 ("bool",
                 [25,26,27,46,47,50,52,53,55,57,62,63,70,92,93,95]),
                 ("list",[23]),("option",[10]),("projectSecurity",[3,4]),
                 ("projectTypes",[136,139,141]),("projectUtilities",[8]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm",[35,43,44])]),["DISK_THM"]),
               [ThmBind.read"%7%0%10%2%11%3%16%18%12$2@%13$1@$0@3%17%34@%47@%38@%20%19%46%25%31@2%40%30%32%43@5%23@2%5@2%29@%6@3%45%12$2@%13$1@$0@3%41%19%46%25%31@2%40%30%32%43@5%23@4|@|@|@"])
  fun op RT_POSITION_exec_rtOrient_lemma2 x = x
    val op RT_POSITION_exec_rtOrient_lemma2 =
    ThmBind.DT(((("projectAssuranceExec",4),
                [("aclDrules",[3]),("aclrules",[23]),
                 ("bool",
                 [25,26,27,35,42,46,47,50,52,53,55,57,62,63,70,76,83,92,93,
                  95,145]),("combin",[19]),("list",[23]),("option",[10]),
                 ("projectSecurity",[3,4]),("projectTypes",[136,139,141]),
                 ("projectUtilities",[8]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm",[35,43,44,58])]),["DISK_THM"]),
               [ThmBind.read"%8%1%9%4%7%0%10%2%11%3%15%33%12$2@%13$1@$0@3%37%39%19%46%25%31@2%40%30%32%43@5%23@4%17%34@%47@%38@%20%19%46%25%31@2%40%30%32%43@5%23@2%5@2%29@%6@2%17%34@%47@%38@%5@$4%29@%37%39%19%46%25%31@2%40%30%32%43@5%23@5%22$3%29@%37%39%19%46%25%31@2%40%30%32%43@5%23@5%6@4%14%35%34@%19%46%25%31@2%40%30%32%43@5%23@3%14%18%12$2@%13$1@$0@3%17%34@%47@%38@%20%19%46%25%31@2%40%30%32%43@5%23@2%5@2%29@%6@3%45%12$2@%13$1@$0@3%41%19%46%25%31@2%40%30%32%43@5%23@6|@|@|@|@|@"])
  fun op RT_POSITION_exec_rtOrient_thm x = x
    val op RT_POSITION_exec_rtOrient_thm =
    ThmBind.DT(((("projectAssuranceExec",5),
                [("aclDrules",[3]),("aclrules",[23]),
                 ("bool",
                 [25,26,27,35,42,46,47,50,52,53,55,57,62,63,70,76,83,92,93,
                  95,145]),("combin",[19]),("list",[23]),("option",[10]),
                 ("projectSecurity",[3,4]),("projectTypes",[136,139,141]),
                 ("projectUtilities",[8]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm",[35,43,44,47,48,58])]),["DISK_THM"]),
               [ThmBind.read"%8%1%9%4%7%0%10%2%11%3%15%33%12$2@%13$1@$0@3%37%21%30%32%43@3%24@3%17%34@%47@%38@%20%19%46%25%31@2%40%30%32%43@5%23@2%5@2%29@%6@2%17%34@%47@%38@%5@$4%29@%37%21%30%32%43@3%24@4%22$3%29@%37%21%30%32%43@3%24@4%6@4%14%35%34@%19%46%25%31@2%40%30%32%43@5%23@3%14%18%12$2@%13$1@$0@3%17%34@%47@%38@%20%19%46%25%31@2%40%30%32%43@5%23@2%5@2%29@%6@3%45%12$2@%13$1@$0@3%19%40%30%32%43@4%23@5|@|@|@|@|@"])
  fun op RT_ORIENT_exec_rtAlert_lemma1 x = x
    val op RT_ORIENT_exec_rtAlert_lemma1 =
    ThmBind.DT(((("projectAssuranceExec",6),
                [("aclDrules",[3]),("aclrules",[23]),
                 ("bool",
                 [25,26,27,46,47,50,52,53,55,57,62,63,70,92,93,95]),
                 ("list",[23]),("option",[10]),("projectSecurity",[3,4]),
                 ("projectTypes",[136,139,141]),("projectUtilities",[8]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm",[35,43,44])]),["DISK_THM"]),
               [ThmBind.read"%7%0%10%2%11%3%16%18%12$2@%13$1@$0@3%17%34@%47@%38@%20%19%46%25%31@2%40%30%32%42@5%23@2%5@2%28@%6@3%45%12$2@%13$1@$0@3%41%19%46%25%31@2%40%30%32%42@5%23@4|@|@|@"])
  fun op RT_ORIENT_exec_rtAlert_lemma2 x = x
    val op RT_ORIENT_exec_rtAlert_lemma2 =
    ThmBind.DT(((("projectAssuranceExec",7),
                [("aclDrules",[3]),("aclrules",[23]),
                 ("bool",
                 [25,26,27,35,42,46,47,50,52,53,55,57,62,63,70,76,83,92,93,
                  95,145]),("combin",[19]),("list",[23]),("option",[10]),
                 ("projectSecurity",[3,4]),("projectTypes",[136,139,141]),
                 ("projectUtilities",[8]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm",[35,43,44,58])]),["DISK_THM"]),
               [ThmBind.read"%8%1%9%4%7%0%10%2%11%3%15%33%12$2@%13$1@$0@3%37%39%19%46%25%31@2%40%30%32%42@5%23@4%17%34@%47@%38@%20%19%46%25%31@2%40%30%32%42@5%23@2%5@2%28@%6@2%17%34@%47@%38@%5@$4%28@%37%39%19%46%25%31@2%40%30%32%42@5%23@5%22$3%28@%37%39%19%46%25%31@2%40%30%32%42@5%23@5%6@4%14%35%34@%19%46%25%31@2%40%30%32%42@5%23@3%14%18%12$2@%13$1@$0@3%17%34@%47@%38@%20%19%46%25%31@2%40%30%32%42@5%23@2%5@2%28@%6@3%45%12$2@%13$1@$0@3%41%19%46%25%31@2%40%30%32%42@5%23@6|@|@|@|@|@"])
  fun op RT_ORIENT_exec_rtAlert_thm x = x
    val op RT_ORIENT_exec_rtAlert_thm =
    ThmBind.DT(((("projectAssuranceExec",8),
                [("aclDrules",[3]),("aclrules",[23]),
                 ("bool",
                 [25,26,27,35,42,46,47,50,52,53,55,57,62,63,70,76,83,92,93,
                  95,145]),("combin",[19]),("list",[23]),("option",[10]),
                 ("projectSecurity",[3,4]),("projectTypes",[136,139,141]),
                 ("projectUtilities",[8]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm",[35,43,44,47,48,58])]),["DISK_THM"]),
               [ThmBind.read"%8%1%9%4%7%0%10%2%11%3%15%33%12$2@%13$1@$0@3%37%21%30%32%42@3%24@3%17%34@%47@%38@%20%19%46%25%31@2%40%30%32%42@5%23@2%5@2%28@%6@2%17%34@%47@%38@%5@$4%28@%37%21%30%32%42@3%24@4%22$3%28@%37%21%30%32%42@3%24@4%6@4%14%35%34@%19%46%25%31@2%40%30%32%42@5%23@3%14%18%12$2@%13$1@$0@3%17%34@%47@%38@%20%19%46%25%31@2%40%30%32%42@5%23@2%5@2%28@%6@3%45%12$2@%13$1@$0@3%19%40%30%32%42@4%23@5|@|@|@|@|@"])
  fun op RT_ALERT_exec_complete_lemma1 x = x
    val op RT_ALERT_exec_complete_lemma1 =
    ThmBind.DT(((("projectAssuranceExec",9),
                [("aclDrules",[3]),("aclrules",[23]),
                 ("bool",
                 [25,26,27,46,47,50,52,53,55,57,62,63,70,92,93,95]),
                 ("list",[23]),("option",[10]),("projectSecurity",[3,4]),
                 ("projectTypes",[136,139,141]),("projectUtilities",[8]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm",[35,43,44])]),["DISK_THM"]),
               [ThmBind.read"%7%0%10%2%11%3%16%18%12$2@%13$1@$0@3%17%34@%47@%38@%20%19%46%25%31@2%40%30%32%36@5%23@2%5@2%26@%6@3%45%12$2@%13$1@$0@3%41%19%46%25%31@2%40%30%32%36@5%23@4|@|@|@"])
  fun op RT_ALERT_exec_complete_lemma2 x = x
    val op RT_ALERT_exec_complete_lemma2 =
    ThmBind.DT(((("projectAssuranceExec",10),
                [("aclDrules",[3]),("aclrules",[23]),
                 ("bool",
                 [25,26,27,35,42,46,47,50,52,53,55,57,62,63,70,76,83,92,93,
                  95,145]),("combin",[19]),("list",[23]),("option",[10]),
                 ("projectSecurity",[3,4]),("projectTypes",[136,139,141]),
                 ("projectUtilities",[8]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm",[35,43,44,58])]),["DISK_THM"]),
               [ThmBind.read"%8%1%9%4%7%0%10%2%11%3%15%33%12$2@%13$1@$0@3%37%39%19%46%25%31@2%40%30%32%36@5%23@4%17%34@%47@%38@%20%19%46%25%31@2%40%30%32%36@5%23@2%5@2%26@%6@2%17%34@%47@%38@%5@$4%26@%37%39%19%46%25%31@2%40%30%32%36@5%23@5%22$3%26@%37%39%19%46%25%31@2%40%30%32%36@5%23@5%6@4%14%35%34@%19%46%25%31@2%40%30%32%36@5%23@3%14%18%12$2@%13$1@$0@3%17%34@%47@%38@%20%19%46%25%31@2%40%30%32%36@5%23@2%5@2%26@%6@3%45%12$2@%13$1@$0@3%41%19%46%25%31@2%40%30%32%36@5%23@6|@|@|@|@|@"])
  fun op RT_ALERT_exec_complete_thm x = x
    val op RT_ALERT_exec_complete_thm =
    ThmBind.DT(((("projectAssuranceExec",11),
                [("aclDrules",[3]),("aclrules",[23]),
                 ("bool",
                 [25,26,27,35,42,46,47,50,52,53,55,57,62,63,70,76,83,92,93,
                  95,145]),("combin",[19]),("list",[23]),("option",[10]),
                 ("projectSecurity",[3,4]),("projectTypes",[136,139,141]),
                 ("projectUtilities",[8]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm",[35,43,44,47,48,58])]),["DISK_THM"]),
               [ThmBind.read"%8%1%9%4%7%0%10%2%11%3%15%33%12$2@%13$1@$0@3%37%21%30%32%36@3%24@3%17%34@%47@%38@%20%19%46%25%31@2%40%30%32%36@5%23@2%5@2%26@%6@2%17%34@%47@%38@%5@$4%26@%37%21%30%32%36@3%24@4%22$3%26@%37%21%30%32%36@3%24@4%6@4%14%35%34@%19%46%25%31@2%40%30%32%36@5%23@3%14%18%12$2@%13$1@$0@3%17%34@%47@%38@%20%19%46%25%31@2%40%30%32%36@5%23@2%5@2%26@%6@3%45%12$2@%13$1@$0@3%19%40%30%32%36@4%23@5|@|@|@|@|@"])

  val _ = DB.bindl "projectAssuranceExec"
  [("RT_FORM_exec_rtPosition_lemma1",
    RT_FORM_exec_rtPosition_lemma1,
    DB.Thm),
   ("RT_FORM_exec_rtPosition_lemma2",
    RT_FORM_exec_rtPosition_lemma2,
    DB.Thm),
   ("RT_FORM_exec_rtPosition_thm",RT_FORM_exec_rtPosition_thm,DB.Thm),
   ("RT_POSITION_exec_rtOrient_lemma1",
    RT_POSITION_exec_rtOrient_lemma1,
    DB.Thm),
   ("RT_POSITION_exec_rtOrient_lemma2",
    RT_POSITION_exec_rtOrient_lemma2,
    DB.Thm),
   ("RT_POSITION_exec_rtOrient_thm",RT_POSITION_exec_rtOrient_thm,DB.Thm),
   ("RT_ORIENT_exec_rtAlert_lemma1",RT_ORIENT_exec_rtAlert_lemma1,DB.Thm),
   ("RT_ORIENT_exec_rtAlert_lemma2",RT_ORIENT_exec_rtAlert_lemma2,DB.Thm),
   ("RT_ORIENT_exec_rtAlert_thm",RT_ORIENT_exec_rtAlert_thm,DB.Thm),
   ("RT_ALERT_exec_complete_lemma1",RT_ALERT_exec_complete_lemma1,DB.Thm),
   ("RT_ALERT_exec_complete_lemma2",RT_ALERT_exec_complete_lemma2,DB.Thm),
   ("RT_ALERT_exec_complete_thm",RT_ALERT_exec_complete_thm,DB.Thm)]

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
