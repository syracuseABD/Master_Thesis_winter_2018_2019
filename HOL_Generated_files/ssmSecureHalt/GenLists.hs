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

strProjectDescription = "ssmSecureHalt."

princlist2 :: [(Principal, [Command])]
princlist2 = [("PlatoonLeader", ["secure","orpRecon","withdraw","complete"]),
	      ("Omni", ["none","omniNA"])]
             
outputlist = ["Secure_halt","Secure","OrpRecon","Withdraw","Complete","NoActionTaken",
              "UnAuthenticated","UnAuthorized"]

statelist = ["SECURE_HALT","SECURE","ORP_RECON","WITHDRAW","COMPLETE"]

stateVarlist = [] :: [(Variable,VariableValues)]

-- Keara!
-- The following list wwas used for testing purposes only.
-- You do not need to generate it.
--stateVarlist = [("Visitied", ["trueVistiteed","falseVisited"]),
--                ("Color", ["Blue","red","green"])] 

ssmStates :: [(State,[Transition])]
ssmStates = [("SECURE_HALT",transitionSECURE_HALT),    
             ("SECURE",transitionsSECURE),
             ("ORP_RECON",transitionsORP_RECON),
	     ("WITHDRAW", transitionWITHDRAW)]
             
-- Keara!
-- The following transition lists do not need to be generated
-- separately from their use in ssmStates.  They are generated
-- separately here because it is easier for me to work with.
--transitionsNONE_W = [] :: [Transition]

transitionSECURE_HALT :: [([Request],[StateStatus],NextState,NextOutput)]
transitionSECURE_HALT = [
        ([("PlatoonLeader","secure")],
	   [],"SECURE","Secure")
        ]
        
transitionsSECURE = [
        ([("PlatoonLeader","orpRecon")],
          [],"ORP_RECON","OrpRecon")
        ]

transitionsORP_RECON = [
        ([("PlatoonLeader","withdraw")],
          [],"WITHDRAW","Withdraw")
        ]

transitionWITHDRAW = [
        ([("PlatoonLeader","complete")],
          [],"COMPLETE","Complete")
        ]

globalAuthlist :: [(Principal,[Command])]
globalAuthlist = []

-- Keara!
-- The following list is for testing purposes.  You do not 
-- need to generate this from the JSON because the 
-- globalAuthlist above is sufficient
globalAuthlist2 = take 2 princlist2

------- End: Temporary lists for testing a SMM  ----------