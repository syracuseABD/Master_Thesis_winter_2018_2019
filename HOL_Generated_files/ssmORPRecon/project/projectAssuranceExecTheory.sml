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
          Arbnum.fromString "1545931701",
          Arbnum.fromString "585185")
          [("projectSecurity",
           Arbnum.fromString "1545931686",
           Arbnum.fromString "832758")];
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
   ID("ssm", "CFGInterpret"), ID("projectTypes", "CONDUCT_ORP"),
   ID("list", "CONS"), ID("projectTypes", "CONTINGENCY_PLAN"),
   ID("projectTypes", "FORM_ST"), ID("projectTypes", "MOVE_TO_ORP"),
   ID("list", "NIL"), ID("aclfoundation", "Name"),
   ID("aclfoundation", "Princ"), ID("projectTypes", "ORP_RECON"),
   ID("projectTypes", "PlatoonLeader"),
   ID("projectTypes", "PlatoonLeaderCOM"),
   ID("projectTypes", "platoonLeaderCom"),
   ID("projectTypes", "RETURN_TO_UNIT"), ID("option", "SOME"),
   ID("ssm", "TR"), ID("projectSecurity", "authentication"),
   ID("ssm", "authenticationTest"), ID("projectTypes", "complete"),
   ID("projectTypes", "conductORP"), ID("projectTypes", "contingencyPlan"),
   ID("ssm", "exec"), ID("projectTypes", "formST"),
   ID("projectSecurity", "globalAuth"), ID("ssm", "inputList"),
   ID("projectTypes", "moveToORP"), ID("aclfoundation", "prop"),
   ID("ssm", "propCommandList"), ID("projectTypes", "returnToUnit"),
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
   TYOP [27, 2], TYOP [4, 2, 58], TYOP [31], TYOP [4, 60, 4],
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
   TMC(19, 50), TMC(20, 7), TMC(21, 51), TMC(21, 53), TMC(21, 55),
   TMC(21, 57), TMC(22, 7), TMC(23, 7), TMC(24, 7), TMC(25, 17),
   TMC(25, 8), TMC(26, 59), TMC(28, 7), TMC(29, 2), TMC(30, 61),
   TMC(32, 7), TMC(33, 62), TMC(34, 65), TMC(35, 47), TMC(36, 67),
   TMC(37, 60), TMC(38, 60), TMC(39, 60), TMC(40, 68), TMC(41, 60),
   TMC(42, 43), TMC(43, 69), TMC(44, 60), TMC(45, 70), TMC(46, 43),
   TMC(47, 60), TMC(48, 71), TMC(49, 73), TMC(50, 45)]
  end
  structure ThmBind = struct
    val DT = Thm.disk_thm
    val read = Term.read_raw tmvector
  end
  fun op ORP_RECON_exec_contingencyPlan_lemma1 x = x
    val op ORP_RECON_exec_contingencyPlan_lemma1 =
    ThmBind.DT(((("projectAssuranceExec",0),
                [("aclDrules",[3]),("aclrules",[23]),
                 ("bool",[25,26,46,47,50,52,53,55,62,63,70,92,93,95]),
                 ("list",[23]),("projectSecurity",[3,4]),
                 ("projectUtilities",[8]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm",[35,43,44])]),["DISK_THM"]),
               [ThmBind.read"%7%0%10%2%11%3%16%18%12$2@%13$1@$0@3%17%36@%51@%43@%21%20%50%29%31@2%46%34%32%40@5%27@2%5@2%30@%6@3%49%12$2@%13$1@$0@3%47%20%50%29%31@2%46%34%32%40@5%27@4|@|@|@"])
  fun op ORP_RECON_exec_contingencyPlan_lemma2 x = x
    val op ORP_RECON_exec_contingencyPlan_lemma2 =
    ThmBind.DT(((("projectAssuranceExec",1),
                [("aclDrules",[3]),("aclrules",[23]),
                 ("bool",
                 [25,26,35,42,46,47,50,52,53,55,57,62,63,70,76,83,92,93,95,
                  145]),("combin",[19]),("list",[23]),
                 ("projectSecurity",[3,4]),("projectUtilities",[8]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm",[35,43,44,58])]),["DISK_THM"]),
               [ThmBind.read"%8%1%9%4%7%0%10%2%11%3%15%35%12$2@%13$1@$0@3%41%44%20%50%29%31@2%46%34%32%40@5%27@4%17%36@%51@%43@%21%20%50%29%31@2%46%34%32%40@5%27@2%5@2%30@%6@2%17%36@%51@%43@%5@$4%30@%41%44%20%50%29%31@2%46%34%32%40@5%27@5%23$3%30@%41%44%20%50%29%31@2%46%34%32%40@5%27@5%6@4%14%37%36@%20%50%29%31@2%46%34%32%40@5%27@3%14%18%12$2@%13$1@$0@3%17%36@%51@%43@%21%20%50%29%31@2%46%34%32%40@5%27@2%5@2%30@%6@3%49%12$2@%13$1@$0@3%47%20%50%29%31@2%46%34%32%40@5%27@6|@|@|@|@|@"])
  fun op ORP_RECON_exec_contingencyPlan_thm x = x
    val op ORP_RECON_exec_contingencyPlan_thm =
    ThmBind.DT(((("projectAssuranceExec",2),
                [("aclDrules",[3]),("aclrules",[23]),
                 ("bool",
                 [25,26,35,42,46,47,50,52,53,55,57,62,63,70,76,83,92,93,95,
                  145]),("combin",[19]),("list",[23]),
                 ("projectSecurity",[3,4]),("projectUtilities",[8]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm",[35,43,44,47,48,58])]),["DISK_THM"]),
               [ThmBind.read"%8%1%9%4%7%0%10%2%11%3%15%35%12$2@%13$1@$0@3%41%22%34%32%40@3%28@3%17%36@%51@%43@%21%20%50%29%31@2%46%34%32%40@5%27@2%5@2%30@%6@2%17%36@%51@%43@%5@$4%30@%41%22%34%32%40@3%28@4%23$3%30@%41%22%34%32%40@3%28@4%6@4%14%37%36@%20%50%29%31@2%46%34%32%40@5%27@3%14%18%12$2@%13$1@$0@3%17%36@%51@%43@%21%20%50%29%31@2%46%34%32%40@5%27@2%5@2%30@%6@3%49%12$2@%13$1@$0@3%20%46%34%32%40@4%27@5|@|@|@|@|@"])
  fun op CONTINGENCY_PLAN_exec_moveToORP_lemma1 x = x
    val op CONTINGENCY_PLAN_exec_moveToORP_lemma1 =
    ThmBind.DT(((("projectAssuranceExec",3),
                [("aclDrules",[3]),("aclrules",[23]),
                 ("bool",
                 [25,26,27,46,47,50,52,53,55,57,62,63,70,92,93,95]),
                 ("list",[23]),("option",[10]),("projectSecurity",[3,4]),
                 ("projectTypes",[142,145,147]),("projectUtilities",[8]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm",[35,43,44])]),["DISK_THM"]),
               [ThmBind.read"%7%0%10%2%11%3%16%18%12$2@%13$1@$0@3%17%36@%51@%43@%21%20%50%29%31@2%46%34%32%45@5%27@2%5@2%24@%6@3%49%12$2@%13$1@$0@3%47%20%50%29%31@2%46%34%32%45@5%27@4|@|@|@"])
  fun op CONTINGENCY_PLAN_exec_moveToORP_lemma2 x = x
    val op CONTINGENCY_PLAN_exec_moveToORP_lemma2 =
    ThmBind.DT(((("projectAssuranceExec",4),
                [("aclDrules",[3]),("aclrules",[23]),
                 ("bool",
                 [25,26,27,35,42,46,47,50,52,53,55,57,62,63,70,76,83,92,93,
                  95,145]),("combin",[19]),("list",[23]),("option",[10]),
                 ("projectSecurity",[3,4]),("projectTypes",[142,145,147]),
                 ("projectUtilities",[8]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm",[35,43,44,58])]),["DISK_THM"]),
               [ThmBind.read"%8%1%9%4%7%0%10%2%11%3%15%35%12$2@%13$1@$0@3%41%44%20%50%29%31@2%46%34%32%45@5%27@4%17%36@%51@%43@%21%20%50%29%31@2%46%34%32%45@5%27@2%5@2%24@%6@2%17%36@%51@%43@%5@$4%24@%41%44%20%50%29%31@2%46%34%32%45@5%27@5%23$3%24@%41%44%20%50%29%31@2%46%34%32%45@5%27@5%6@4%14%37%36@%20%50%29%31@2%46%34%32%45@5%27@3%14%18%12$2@%13$1@$0@3%17%36@%51@%43@%21%20%50%29%31@2%46%34%32%45@5%27@2%5@2%24@%6@3%49%12$2@%13$1@$0@3%47%20%50%29%31@2%46%34%32%45@5%27@6|@|@|@|@|@"])
  fun op CONTINGENCY_PLAN_exec_moveToORP_thm x = x
    val op CONTINGENCY_PLAN_exec_moveToORP_thm =
    ThmBind.DT(((("projectAssuranceExec",5),
                [("aclDrules",[3]),("aclrules",[23]),
                 ("bool",
                 [25,26,27,35,42,46,47,50,52,53,55,57,62,63,70,76,83,92,93,
                  95,145]),("combin",[19]),("list",[23]),("option",[10]),
                 ("projectSecurity",[3,4]),("projectTypes",[142,145,147]),
                 ("projectUtilities",[8]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm",[35,43,44,47,48,58])]),["DISK_THM"]),
               [ThmBind.read"%8%1%9%4%7%0%10%2%11%3%15%35%12$2@%13$1@$0@3%41%22%34%32%45@3%28@3%17%36@%51@%43@%21%20%50%29%31@2%46%34%32%45@5%27@2%5@2%24@%6@2%17%36@%51@%43@%5@$4%24@%41%22%34%32%45@3%28@4%23$3%24@%41%22%34%32%45@3%28@4%6@4%14%37%36@%20%50%29%31@2%46%34%32%45@5%27@3%14%18%12$2@%13$1@$0@3%17%36@%51@%43@%21%20%50%29%31@2%46%34%32%45@5%27@2%5@2%24@%6@3%49%12$2@%13$1@$0@3%20%46%34%32%45@4%27@5|@|@|@|@|@"])
  fun op MOVE_TO_ORP_exec_conductORP_lemma1 x = x
    val op MOVE_TO_ORP_exec_conductORP_lemma1 =
    ThmBind.DT(((("projectAssuranceExec",6),
                [("aclDrules",[3]),("aclrules",[23]),
                 ("bool",
                 [25,26,27,46,47,50,52,53,55,57,62,63,70,92,93,95]),
                 ("list",[23]),("option",[10]),("projectSecurity",[3,4]),
                 ("projectTypes",[142,145,147]),("projectUtilities",[8]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm",[35,43,44])]),["DISK_THM"]),
               [ThmBind.read"%7%0%10%2%11%3%16%18%12$2@%13$1@$0@3%17%36@%51@%43@%21%20%50%29%31@2%46%34%32%39@5%27@2%5@2%26@%6@3%49%12$2@%13$1@$0@3%47%20%50%29%31@2%46%34%32%39@5%27@4|@|@|@"])
  fun op MOVE_TO_ORP_exec_conductORP_lemma2 x = x
    val op MOVE_TO_ORP_exec_conductORP_lemma2 =
    ThmBind.DT(((("projectAssuranceExec",7),
                [("aclDrules",[3]),("aclrules",[23]),
                 ("bool",
                 [25,26,27,35,42,46,47,50,52,53,55,57,62,63,70,76,83,92,93,
                  95,145]),("combin",[19]),("list",[23]),("option",[10]),
                 ("projectSecurity",[3,4]),("projectTypes",[142,145,147]),
                 ("projectUtilities",[8]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm",[35,43,44,58])]),["DISK_THM"]),
               [ThmBind.read"%8%1%9%4%7%0%10%2%11%3%15%35%12$2@%13$1@$0@3%41%44%20%50%29%31@2%46%34%32%39@5%27@4%17%36@%51@%43@%21%20%50%29%31@2%46%34%32%39@5%27@2%5@2%26@%6@2%17%36@%51@%43@%5@$4%26@%41%44%20%50%29%31@2%46%34%32%39@5%27@5%23$3%26@%41%44%20%50%29%31@2%46%34%32%39@5%27@5%6@4%14%37%36@%20%50%29%31@2%46%34%32%39@5%27@3%14%18%12$2@%13$1@$0@3%17%36@%51@%43@%21%20%50%29%31@2%46%34%32%39@5%27@2%5@2%26@%6@3%49%12$2@%13$1@$0@3%47%20%50%29%31@2%46%34%32%39@5%27@6|@|@|@|@|@"])
  fun op MOVE_TO_ORP_exec_conductORP_thm x = x
    val op MOVE_TO_ORP_exec_conductORP_thm =
    ThmBind.DT(((("projectAssuranceExec",8),
                [("aclDrules",[3]),("aclrules",[23]),
                 ("bool",
                 [25,26,27,35,42,46,47,50,52,53,55,57,62,63,70,76,83,92,93,
                  95,145]),("combin",[19]),("list",[23]),("option",[10]),
                 ("projectSecurity",[3,4]),("projectTypes",[142,145,147]),
                 ("projectUtilities",[8]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm",[35,43,44,47,48,58])]),["DISK_THM"]),
               [ThmBind.read"%8%1%9%4%7%0%10%2%11%3%15%35%12$2@%13$1@$0@3%41%22%34%32%39@3%28@3%17%36@%51@%43@%21%20%50%29%31@2%46%34%32%39@5%27@2%5@2%26@%6@2%17%36@%51@%43@%5@$4%26@%41%22%34%32%39@3%28@4%23$3%26@%41%22%34%32%39@3%28@4%6@4%14%37%36@%20%50%29%31@2%46%34%32%39@5%27@3%14%18%12$2@%13$1@$0@3%17%36@%51@%43@%21%20%50%29%31@2%46%34%32%39@5%27@2%5@2%26@%6@3%49%12$2@%13$1@$0@3%20%46%34%32%39@4%27@5|@|@|@|@|@"])
  fun op CONDUCT_ORP_exec_formST_lemma1 x = x
    val op CONDUCT_ORP_exec_formST_lemma1 =
    ThmBind.DT(((("projectAssuranceExec",9),
                [("aclDrules",[3]),("aclrules",[23]),
                 ("bool",
                 [25,26,27,46,47,50,52,53,55,57,62,63,70,92,93,95]),
                 ("list",[23]),("option",[10]),("projectSecurity",[3,4]),
                 ("projectTypes",[142,145,147]),("projectUtilities",[8]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm",[35,43,44])]),["DISK_THM"]),
               [ThmBind.read"%7%0%10%2%11%3%16%18%12$2@%13$1@$0@3%17%36@%51@%43@%21%20%50%29%31@2%46%34%32%42@5%27@2%5@2%19@%6@3%49%12$2@%13$1@$0@3%47%20%50%29%31@2%46%34%32%42@5%27@4|@|@|@"])
  fun op CONDUCT_ORP_exec_formST_lemma2 x = x
    val op CONDUCT_ORP_exec_formST_lemma2 =
    ThmBind.DT(((("projectAssuranceExec",10),
                [("aclDrules",[3]),("aclrules",[23]),
                 ("bool",
                 [25,26,27,35,42,46,47,50,52,53,55,57,62,63,70,76,83,92,93,
                  95,145]),("combin",[19]),("list",[23]),("option",[10]),
                 ("projectSecurity",[3,4]),("projectTypes",[142,145,147]),
                 ("projectUtilities",[8]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm",[35,43,44,58])]),["DISK_THM"]),
               [ThmBind.read"%8%1%9%4%7%0%10%2%11%3%15%35%12$2@%13$1@$0@3%41%44%20%50%29%31@2%46%34%32%42@5%27@4%17%36@%51@%43@%21%20%50%29%31@2%46%34%32%42@5%27@2%5@2%19@%6@2%17%36@%51@%43@%5@$4%19@%41%44%20%50%29%31@2%46%34%32%42@5%27@5%23$3%19@%41%44%20%50%29%31@2%46%34%32%42@5%27@5%6@4%14%37%36@%20%50%29%31@2%46%34%32%42@5%27@3%14%18%12$2@%13$1@$0@3%17%36@%51@%43@%21%20%50%29%31@2%46%34%32%42@5%27@2%5@2%19@%6@3%49%12$2@%13$1@$0@3%47%20%50%29%31@2%46%34%32%42@5%27@6|@|@|@|@|@"])
  fun op CONDUCT_ORP_exec_formST_thm x = x
    val op CONDUCT_ORP_exec_formST_thm =
    ThmBind.DT(((("projectAssuranceExec",11),
                [("aclDrules",[3]),("aclrules",[23]),
                 ("bool",
                 [25,26,27,35,42,46,47,50,52,53,55,57,62,63,70,76,83,92,93,
                  95,145]),("combin",[19]),("list",[23]),("option",[10]),
                 ("projectSecurity",[3,4]),("projectTypes",[142,145,147]),
                 ("projectUtilities",[8]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm",[35,43,44,47,48,58])]),["DISK_THM"]),
               [ThmBind.read"%8%1%9%4%7%0%10%2%11%3%15%35%12$2@%13$1@$0@3%41%22%34%32%42@3%28@3%17%36@%51@%43@%21%20%50%29%31@2%46%34%32%42@5%27@2%5@2%19@%6@2%17%36@%51@%43@%5@$4%19@%41%22%34%32%42@3%28@4%23$3%19@%41%22%34%32%42@3%28@4%6@4%14%37%36@%20%50%29%31@2%46%34%32%42@5%27@3%14%18%12$2@%13$1@$0@3%17%36@%51@%43@%21%20%50%29%31@2%46%34%32%42@5%27@2%5@2%19@%6@3%49%12$2@%13$1@$0@3%20%46%34%32%42@4%27@5|@|@|@|@|@"])
  fun op FORM_ST_exec_returnToUnit_lemma1 x = x
    val op FORM_ST_exec_returnToUnit_lemma1 =
    ThmBind.DT(((("projectAssuranceExec",12),
                [("aclDrules",[3]),("aclrules",[23]),
                 ("bool",
                 [25,26,27,46,47,50,52,53,55,57,62,63,70,92,93,95]),
                 ("list",[23]),("option",[10]),("projectSecurity",[3,4]),
                 ("projectTypes",[142,145,147]),("projectUtilities",[8]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm",[35,43,44])]),["DISK_THM"]),
               [ThmBind.read"%7%0%10%2%11%3%16%18%12$2@%13$1@$0@3%17%36@%51@%43@%21%20%50%29%31@2%46%34%32%48@5%27@2%5@2%25@%6@3%49%12$2@%13$1@$0@3%47%20%50%29%31@2%46%34%32%48@5%27@4|@|@|@"])
  fun op FORM_ST_exec_returnToUnit_lemma2 x = x
    val op FORM_ST_exec_returnToUnit_lemma2 =
    ThmBind.DT(((("projectAssuranceExec",13),
                [("aclDrules",[3]),("aclrules",[23]),
                 ("bool",
                 [25,26,27,35,42,46,47,50,52,53,55,57,62,63,70,76,83,92,93,
                  95,145]),("combin",[19]),("list",[23]),("option",[10]),
                 ("projectSecurity",[3,4]),("projectTypes",[142,145,147]),
                 ("projectUtilities",[8]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm",[35,43,44,58])]),["DISK_THM"]),
               [ThmBind.read"%8%1%9%4%7%0%10%2%11%3%15%35%12$2@%13$1@$0@3%41%44%20%50%29%31@2%46%34%32%48@5%27@4%17%36@%51@%43@%21%20%50%29%31@2%46%34%32%48@5%27@2%5@2%25@%6@2%17%36@%51@%43@%5@$4%25@%41%44%20%50%29%31@2%46%34%32%48@5%27@5%23$3%25@%41%44%20%50%29%31@2%46%34%32%48@5%27@5%6@4%14%37%36@%20%50%29%31@2%46%34%32%48@5%27@3%14%18%12$2@%13$1@$0@3%17%36@%51@%43@%21%20%50%29%31@2%46%34%32%48@5%27@2%5@2%25@%6@3%49%12$2@%13$1@$0@3%47%20%50%29%31@2%46%34%32%48@5%27@6|@|@|@|@|@"])
  fun op FORM_ST_exec_returnToUnit_thm x = x
    val op FORM_ST_exec_returnToUnit_thm =
    ThmBind.DT(((("projectAssuranceExec",14),
                [("aclDrules",[3]),("aclrules",[23]),
                 ("bool",
                 [25,26,27,35,42,46,47,50,52,53,55,57,62,63,70,76,83,92,93,
                  95,145]),("combin",[19]),("list",[23]),("option",[10]),
                 ("projectSecurity",[3,4]),("projectTypes",[142,145,147]),
                 ("projectUtilities",[8]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm",[35,43,44,47,48,58])]),["DISK_THM"]),
               [ThmBind.read"%8%1%9%4%7%0%10%2%11%3%15%35%12$2@%13$1@$0@3%41%22%34%32%48@3%28@3%17%36@%51@%43@%21%20%50%29%31@2%46%34%32%48@5%27@2%5@2%25@%6@2%17%36@%51@%43@%5@$4%25@%41%22%34%32%48@3%28@4%23$3%25@%41%22%34%32%48@3%28@4%6@4%14%37%36@%20%50%29%31@2%46%34%32%48@5%27@3%14%18%12$2@%13$1@$0@3%17%36@%51@%43@%21%20%50%29%31@2%46%34%32%48@5%27@2%5@2%25@%6@3%49%12$2@%13$1@$0@3%20%46%34%32%48@4%27@5|@|@|@|@|@"])
  fun op RETURN_TO_UNIT_exec_complete_lemma1 x = x
    val op RETURN_TO_UNIT_exec_complete_lemma1 =
    ThmBind.DT(((("projectAssuranceExec",15),
                [("aclDrules",[3]),("aclrules",[23]),
                 ("bool",
                 [25,26,27,46,47,50,52,53,55,57,62,63,70,92,93,95]),
                 ("list",[23]),("option",[10]),("projectSecurity",[3,4]),
                 ("projectTypes",[142,145,147]),("projectUtilities",[8]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm",[35,43,44])]),["DISK_THM"]),
               [ThmBind.read"%7%0%10%2%11%3%16%18%12$2@%13$1@$0@3%17%36@%51@%43@%21%20%50%29%31@2%46%34%32%38@5%27@2%5@2%33@%6@3%49%12$2@%13$1@$0@3%47%20%50%29%31@2%46%34%32%38@5%27@4|@|@|@"])
  fun op RETURN_TO_UNIT_exec_complete_lemma2 x = x
    val op RETURN_TO_UNIT_exec_complete_lemma2 =
    ThmBind.DT(((("projectAssuranceExec",16),
                [("aclDrules",[3]),("aclrules",[23]),
                 ("bool",
                 [25,26,27,35,42,46,47,50,52,53,55,57,62,63,70,76,83,92,93,
                  95,145]),("combin",[19]),("list",[23]),("option",[10]),
                 ("projectSecurity",[3,4]),("projectTypes",[142,145,147]),
                 ("projectUtilities",[8]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm",[35,43,44,58])]),["DISK_THM"]),
               [ThmBind.read"%8%1%9%4%7%0%10%2%11%3%15%35%12$2@%13$1@$0@3%41%44%20%50%29%31@2%46%34%32%38@5%27@4%17%36@%51@%43@%21%20%50%29%31@2%46%34%32%38@5%27@2%5@2%33@%6@2%17%36@%51@%43@%5@$4%33@%41%44%20%50%29%31@2%46%34%32%38@5%27@5%23$3%33@%41%44%20%50%29%31@2%46%34%32%38@5%27@5%6@4%14%37%36@%20%50%29%31@2%46%34%32%38@5%27@3%14%18%12$2@%13$1@$0@3%17%36@%51@%43@%21%20%50%29%31@2%46%34%32%38@5%27@2%5@2%33@%6@3%49%12$2@%13$1@$0@3%47%20%50%29%31@2%46%34%32%38@5%27@6|@|@|@|@|@"])
  fun op RETURN_TO_UNIT_exec_complete_thm x = x
    val op RETURN_TO_UNIT_exec_complete_thm =
    ThmBind.DT(((("projectAssuranceExec",17),
                [("aclDrules",[3]),("aclrules",[23]),
                 ("bool",
                 [25,26,27,35,42,46,47,50,52,53,55,57,62,63,70,76,83,92,93,
                  95,145]),("combin",[19]),("list",[23]),("option",[10]),
                 ("projectSecurity",[3,4]),("projectTypes",[142,145,147]),
                 ("projectUtilities",[8]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm",[35,43,44,47,48,58])]),["DISK_THM"]),
               [ThmBind.read"%8%1%9%4%7%0%10%2%11%3%15%35%12$2@%13$1@$0@3%41%22%34%32%38@3%28@3%17%36@%51@%43@%21%20%50%29%31@2%46%34%32%38@5%27@2%5@2%33@%6@2%17%36@%51@%43@%5@$4%33@%41%22%34%32%38@3%28@4%23$3%33@%41%22%34%32%38@3%28@4%6@4%14%37%36@%20%50%29%31@2%46%34%32%38@5%27@3%14%18%12$2@%13$1@$0@3%17%36@%51@%43@%21%20%50%29%31@2%46%34%32%38@5%27@2%5@2%33@%6@3%49%12$2@%13$1@$0@3%20%46%34%32%38@4%27@5|@|@|@|@|@"])

  val _ = DB.bindl "projectAssuranceExec"
  [("ORP_RECON_exec_contingencyPlan_lemma1",
    ORP_RECON_exec_contingencyPlan_lemma1,
    DB.Thm),
   ("ORP_RECON_exec_contingencyPlan_lemma2",
    ORP_RECON_exec_contingencyPlan_lemma2,
    DB.Thm),
   ("ORP_RECON_exec_contingencyPlan_thm",
    ORP_RECON_exec_contingencyPlan_thm,
    DB.Thm),
   ("CONTINGENCY_PLAN_exec_moveToORP_lemma1",
    CONTINGENCY_PLAN_exec_moveToORP_lemma1,
    DB.Thm),
   ("CONTINGENCY_PLAN_exec_moveToORP_lemma2",
    CONTINGENCY_PLAN_exec_moveToORP_lemma2,
    DB.Thm),
   ("CONTINGENCY_PLAN_exec_moveToORP_thm",
    CONTINGENCY_PLAN_exec_moveToORP_thm,
    DB.Thm),
   ("MOVE_TO_ORP_exec_conductORP_lemma1",
    MOVE_TO_ORP_exec_conductORP_lemma1,
    DB.Thm),
   ("MOVE_TO_ORP_exec_conductORP_lemma2",
    MOVE_TO_ORP_exec_conductORP_lemma2,
    DB.Thm),
   ("MOVE_TO_ORP_exec_conductORP_thm",
    MOVE_TO_ORP_exec_conductORP_thm,
    DB.Thm),
   ("CONDUCT_ORP_exec_formST_lemma1",
    CONDUCT_ORP_exec_formST_lemma1,
    DB.Thm),
   ("CONDUCT_ORP_exec_formST_lemma2",
    CONDUCT_ORP_exec_formST_lemma2,
    DB.Thm),
   ("CONDUCT_ORP_exec_formST_thm",CONDUCT_ORP_exec_formST_thm,DB.Thm),
   ("FORM_ST_exec_returnToUnit_lemma1",
    FORM_ST_exec_returnToUnit_lemma1,
    DB.Thm),
   ("FORM_ST_exec_returnToUnit_lemma2",
    FORM_ST_exec_returnToUnit_lemma2,
    DB.Thm),
   ("FORM_ST_exec_returnToUnit_thm",FORM_ST_exec_returnToUnit_thm,DB.Thm),
   ("RETURN_TO_UNIT_exec_complete_lemma1",
    RETURN_TO_UNIT_exec_complete_lemma1,
    DB.Thm),
   ("RETURN_TO_UNIT_exec_complete_lemma2",
    RETURN_TO_UNIT_exec_complete_lemma2,
    DB.Thm),
   ("RETURN_TO_UNIT_exec_complete_thm",
    RETURN_TO_UNIT_exec_complete_thm,
    DB.Thm)]

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
