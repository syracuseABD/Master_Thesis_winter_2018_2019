structure projectAssuranceNoExecTheory :> projectAssuranceNoExecTheory =
struct
  val _ = if !Globals.print_thy_loads then TextIO.print "Loading projectAssuranceNoExecTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (* Parents and ML dependencies *)
  local open projectSMTheory
  in end;
  val _ = Theory.link_parents
          ("projectAssuranceNoExec",
          Arbnum.fromString "1545931699",
          Arbnum.fromString "43033")
          [("projectSM",
           Arbnum.fromString "1545931688",
           Arbnum.fromString "286740")];
  val _ = Theory.incorporate_types "projectAssuranceNoExec" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  []
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  []
  end
  val _ = Theory.incorporate_consts "projectAssuranceNoExec" tyvector [];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  []
  end
  structure ThmBind = struct
    val DT = Thm.disk_thm
    val read = Term.read_raw tmvector
  end


  val _ = DB.bindl "projectAssuranceNoExec" []

  local open GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val projectAssuranceNoExec_grammars = merge_grammars ["projectSM"]
  local
  val (tyUDs, tmUDs) = GrammarDeltas.thy_deltas{thyname="projectAssuranceNoExec"}
  val addtmUDs = term_grammar.add_deltas tmUDs
  val addtyUDs = type_grammar.apply_deltas tyUDs
  in
  val projectAssuranceNoExec_grammars = 
    Portable.## (addtyUDs,addtmUDs) projectAssuranceNoExec_grammars
  val _ = Parse.grammarDB_insert("projectAssuranceNoExec",projectAssuranceNoExec_grammars)
  val _ = Parse.temp_set_grammars (addtyUDs (Parse.type_grammar()), addtmUDs (Parse.term_grammar()))
  end (* addUDs local *)
  end

val _ = if !Globals.print_thy_loads then TextIO.print "done\n" else ()
val _ = Theory.load_complete "projectAssuranceNoExec"
end
