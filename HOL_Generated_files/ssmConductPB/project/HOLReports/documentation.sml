app load [ "projectTypesTheory",
    	   "projectUtilitiesTheory",
	   "projectSMTheory",
	   "projectSecurityTheory",
	   "projectAssuranceExecTheory",
           "EmitTeX"];

open EmitTeX;

print_theories_as_tex_doc
["projectTypes",
 "projectUtilities",
 "projectSM",
 "projectSecurity",
 "projectAssuranceExec"] "Report";
