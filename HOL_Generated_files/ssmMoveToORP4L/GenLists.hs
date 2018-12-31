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
strProjectDescription = "ssmMoveToORP4L."

princlist2 :: [(Principal, [Command])]
princlist2 = [("PlatoonLeader", ["formRT","rtMove","rtHalt","complete"]),
	      ("Omni", ["none","omniNA"])]
             
outputlist = ["FormRT","RtMove","RtHalt","Complete",
	       "NoActionTaken","UnAuthenticated","UnAuthorized"]

statelist = ["MOVE_TO_ORP","FORM_RT","RT_MOVE","RT_HALT","COMPLETE"]

stateVarlist = [] :: [(Variable,VariableValues)]

ssmStates :: [(State,[Transition])]
ssmStates = [("MOVE_TO_ORP",transitionsMOVE_TO_ORP),
	     ("FORM_RT", transitionFORM_RT),
	     ("RT_MOVE", transitionRT_MOVE),
	     ("RT_HALT", transitionRT_HALT)]

transitionsMOVE_TO_ORP :: [([Request],[StateStatus],NextState,NextOutput)]
transitionsMOVE_TO_ORP = [
        ([("PlatoonLeader","formRT")],
          [],"FORM_RT","FormRT")
        ]

transitionFORM_RT = [
        ([("PlatoonLeader","rtMove")],
          [],"RT_MOVE","RtMove")
        ]

transitionRT_MOVE  = [
        ([("PlatoonLeader","rtHalt")],
          [],"RT_HALT","RtHalt")
        ]

transitionRT_HALT  = [
        ([("PlatoonLeader","complete")],
          [],"COMPLETE","Complete")
        ]

globalAuthlist :: [(Principal,[Command])]
globalAuthlist = []

globalAuthlist2 = take 2 princlist2

------- End: Temporary lists for testing a SMM  ----------