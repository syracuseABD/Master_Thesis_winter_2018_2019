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
strProjectDescription = "ssmConductPB."

princlist2 :: [(Principal, [Command])]
princlist2 = [("PlatoonLeader", ["secure","withdraw","complete"]),
	      ("PlatoonSergeant",["actionsIn","psgNA"]),
	      ("Omni", ["none","omniNA"])]
             
outputlist = ["Secure","Withdraw","Complete","ActionsIn",
	       "NoActionTaken","UnAuthenticated","UnAuthorized"]

statelist = ["CONDUCT_PB","SECURE","ACTIONS_IN","WITHDRAW","COMPLETE"]

stateVarlist = [] :: [(Variable,VariableValues)]

ssmStates :: [(State,[Transition])]
ssmStates = [("CONDUCT_PB",transitionsCONDUCT_PB),
	     ("SECURE", transitionSECURE),
	     ("ACTIONS_IN", transitionACTIONS_IN),
	     ("WITHDRAW", transitionWITHDRAW)]

transitionsCONDUCT_PB :: [([Request],[StateStatus],NextState,NextOutput)]
transitionsCONDUCT_PB = [
        ([("PlatoonLeader","secure")],
          [],"SECURE","Secure")
        ]

transitionSECURE = [
        ([("PlatoonSergeant","actionsIn")],
          [],"ACTIONS_IN","ActionsIn")
        ]

transitionACTIONS_IN  = [
        ([("PlatoonLeader","withdraw")],
          [],"WITHDRAW","Withdraw")
        ]

transitionWITHDRAW  = [
        ([("PlatoonLeader","complete")],
          [],"COMPLETE","Complete")
        ]

globalAuthlist :: [(Principal,[Command])]
globalAuthlist = []

globalAuthlist2 = take 2 princlist2

------- End: Temporary lists for testing a SMM  ----------