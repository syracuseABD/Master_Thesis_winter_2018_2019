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
strProjectDescription = "ssmFormRT."

princlist2 :: [(Principal, [Command])]
princlist2 = [("SquadLeader", ["rtPosition","rtOrient","rtAlert","complete"]),
	      ("Omni", ["none","omniNA"])]
             
outputlist = ["RtPosition","RtOrient","RtAlert","Complete",
	       "NoActionTaken","UnAuthenticated","UnAuthorized"]

statelist = ["RT_FORM","RT_POSITION","RT_ORIENT","RT_ALERT","COMPLETE"]

stateVarlist = [] :: [(Variable,VariableValues)]

ssmStates :: [(State,[Transition])]
ssmStates = [("RT_FORM",transitionsRT_FORM),
	     ("RT_POSITION", transitionRT_POSITION),
	     ("RT_ORIENT", transitionRT_ORIENT),
	     ("RT_ALERT", transitionRT_ALERT)]

transitionsRT_FORM :: [([Request],[StateStatus],NextState,NextOutput)]
transitionsRT_FORM = [
        ([("SquadLeader","rtPosition")],
          [],"RT_POSITION","RtPosition")
        ]

transitionRT_POSITION = [
        ([("SquadLeader","rtOrient")],
          [],"RT_ORIENT","RtOrient")
        ]

transitionRT_ORIENT  = [
        ([("SquadLeader","rtAlert")],
          [],"RT_ALERT","RtAlert")
        ]

transitionRT_ALERT  = [
        ([("SquadLeader","complete")],
          [],"COMPLETE","Complete")
        ]

globalAuthlist :: [(Principal,[Command])]
globalAuthlist = []

globalAuthlist2 = take 2 princlist2

------- End: Temporary lists for testing a SMM  ----------