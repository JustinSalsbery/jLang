lim Color = Red, Greed, Blue # an enum

req Animal = # a protocal
   val name: str
   fun greet; # semicolon ends the scope

obj Cat: Animal = # a class implementing a protocol
   val name: str # typing required when not directly initializing
   val cute = true
   fun init: str name = # constructor
      .name = name; # .name refers to name in obj scope
   fun greet =
      terminal.write: ("Meow");; # first semicolon ends fun scope, second obj scope
   
# demonstrate "UFCS"
