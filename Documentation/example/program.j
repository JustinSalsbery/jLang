# this is a comment
# program.j is required to run the module. Program must be defined within program.j.

use IO.Terminal = terminal                   # import Terminal object from IO module as terminal

# Program is the start point for the program
# Program is not included when packaging module as a library
obj Program =
   val a, b, c = 1, 3.14, "Hello"            # multiple declarations allowed
   val x: Str, y: Num = " World!", 1
   val j, h > Num = 1.0, 2.3                 # j and h are specified to be a Num

   # Num replaces both Int and Dec. 24 bits of value and 8 bits of exponents (signed - base 10).

   a, j = 2, 4.14
   j, h = 1.111                              # j and h equal 1.111

   fun init(args: Array[Str]) =              # constructor with args argument (in this case, a compiler argument)
      terminal.write(args[0]);               # print first index of args

   # object scope runs before the constructor

# @ marks access modifiers (in this case, only @Program may instantiate Tester)
# Note: if an object is only accessible to Program, the object will be omitted if compiled as a library
@Program obj Tester =
   fun init =
      terminal.write("Hello, World?");
      