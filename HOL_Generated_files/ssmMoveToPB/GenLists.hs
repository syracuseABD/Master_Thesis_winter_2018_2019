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

strProjectDescription = "ssmMoveToPB."

princlist2 :: [(Principal, [Command])]
princlist2 = [("PlatoonLeader", ["form","move","secureHalt"]),
	      ("Omni", ["none","omniNA"])]
             
outputlist = ["Move_to_ORP","Form","Move","Secure_halt","NoActionTaken",
              "UnAuthenticated","UnAuthorized"]

statelist = ["MOVE_TO_PB","FORM","MOVE","SECURE_HALT"]

stateVarlist = [] :: [(Variable,VariableValues)]

-- Keara!
-- The following list wwas used for testing purposes only.
-- You do not need to generate it.
--stateVarlist = [("Visitied", ["trueVistiteed","falseVisited"]),
--                ("Color", ["Blue","red","green"])] 

ssmStates :: [(State,[Transition])]
ssmStates = [("MOVE_TO_PB",transitionsMOVE_TO_PB),    
             ("FORM",transitionsFORM),
             ("MOVE",transitionsMOVE)]
             
-- Keara!
-- The following transition lists do not need to be generated
-- separately from their use in ssmStates.  They are generated
-- separately here because it is easier for me to work with.
--transitionsNONE_W = [] :: [Transition]

transitionsMOVE_TO_PB :: [([Request],[StateStatus],NextState,NextOutput)]
transitionsMOVE_TO_PB = [
        ([("PlatoonLeader","form")],[],"FORM","Form")
        ]
        
transitionsFORM = [
        ([("PlatoonLeader","move")],
          [],"MOVE","Move")
        ]

transitionsMOVE = [
        ([("PlatoonLeader","secureHalt")],
          [],"SECURE_HALT","Secure_halt")
        ]

globalAuthlist :: [(Principal,[Command])]
globalAuthlist = []

-- Keara!
-- The following list is for testing purposes.  You do not 
-- need to generate this from the JSON because the 
-- globalAuthlist above is sufficient
globalAuthlist2 = take 2 princlist2

------- End: Temporary lists for testing a SMM  ----------