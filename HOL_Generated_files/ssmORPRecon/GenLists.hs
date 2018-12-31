module Project.GenLists where
   


-- Temp ssmDef type for function signature
type SSMDef = String

------------------------------------------------------------
-- type definitions to make reading code easier
------------------------------------------------------------
type Request = (Principal, Command)
type Principal = String
type Command = String
type Acronym = String
type Transition = ([Request],[StateStatus],NextState,NextOutput)
type StateStatus = (CompareOP, Variable, VariableValues)
type NextState = String
type NextOutput = String
type Variable = String
type VariableValues = [String]
type CompareOP = String
type State = String
type Output = String

generatePrinclist     :: SSMDef  -> [(Principal, [Command])]
generatePrinclist _ = []

generateOutputlist    :: SSMDef  -> [Output]
generateOutputlist _ = []

generateStatelist     :: SSMDef  -> [State]
generateStatelist _ = []

generateStateVarlist  :: SSMDef  -> [StateStatus]
generateStateVarlist _ = []

generateSSMStates     :: SSMDef  -> [(State,[Transition])]
generateSSMStates _ = []

generateGlobalAuthDef :: SSMDef  -> [(Principal,[Command])]
generateGlobalAuthDef _ = []

------------------------------------------------------------
------- Start: Temporary lists for testing a SMM  ---------
------------------------------------------------------------
strProjectDescription = "ssmORPRecon."

princlist2 :: [(Principal, [Command])]
princlist2 = [("PlatoonLeader", ["contingencyPlan","moveToORP","conductORP",
	       "formST","returnToUnit","complete"]),
	      ("Omni", ["none","omniNA"])]
             
outputlist = ["ContingencyPlan","MoveToORP","ConductORP",
	       "FormST","ReturnToUnit","Complete","NoActionTaken",
               "UnAuthenticated","UnAuthorized"]

statelist = ["ORP_RECON","CONTINGENCY_PLAN","MOVE_TO_ORP","CONDUCT_ORP",
	     "FORM_ST","RETURN_TO_UNIT","COMPLETE"]

stateVarlist = [] :: [(Variable,VariableValues)]

ssmStates :: [(State,[Transition])]
ssmStates = [("ORP_RECON",transitionORP_RECON),    
             ("CONTINGENCY_PLAN",transitionsCONTINGENCY_PLAN),
             ("MOVE_TO_ORP",transitionsMOVE_TO_ORP),
	     ("CONDUCT_ORP", transitionCONDUCT_ORP),
	     ("FORM_ST", transitionFORM_ST),
	     ("RETURN_TO_UNIT", transitionRETURN_TO_UNIT)]

transitionORP_RECON :: [([Request],[StateStatus],NextState,NextOutput)]
transitionORP_RECON = [
        ([("PlatoonLeader","contingencyPlan")],
	   [],"CONTINGENCY_PLAN","ContingencyPlan")
        ]
        
transitionsCONTINGENCY_PLAN = [
        ([("PlatoonLeader","moveToORP")],
          [],"MOVE_TO_ORP","MoveToORP")
        ]

transitionsMOVE_TO_ORP = [
        ([("PlatoonLeader","conductORP")],
          [],"CONDUCT_ORP","ConductORP")
        ]

transitionCONDUCT_ORP = [
        ([("PlatoonLeader","formST")],
          [],"FORM_ST","FormST")
        ]

transitionFORM_ST  = [
        ([("PlatoonLeader","returnToUnit")],
          [],"RETURN_TO_UNIT","ReturnToUnit")
        ]

transitionRETURN_TO_UNIT  = [
        ([("PlatoonLeader","complete")],
          [],"COMPLETE","Complete")
        ]

globalAuthlist :: [(Principal,[Command])]
globalAuthlist = []

globalAuthlist2 = take 2 princlist2

------- End: Temporary lists for testing a SMM  ----------