# j does not require obj name to match file name
# multiple obj may be declared in the same file

lim Color = Red, Greed, Blue              # enum

req Animal =                              # protocol
   val name: Str
   fun greet;                             # semicolon ends the scope

obj Cat: Animal =                         # class implementing a protocol
   val name: Str                          # typing required when not directly initializing
   val isCute = true
   fun init: Str name =                   # constructor with name argument
      .name = name;                       # .name refers to name in obj scope
   fun greet =
      terminal.write: ("Meow");
   fun checkCuteness > Str =              # return type is str
      if: isCute =
         ret "\(name) is very cute";      # add name to the string. other expressions \(2 + 9) also legal
      else =                              # all remaining cases
         ret "\(name) is not cute";;      # first semicolon ends fun scope, second obj scope

obj AnimalShelter =
   val animals: [Animal] = [Cat: ("Peanuts")] # array of Animals, initialized with 1 cat
   val employeeID = {1: "John", 2: "Lucy"}    # dictionary
   fun +: Animal animal =                 # +, -, *, /, %, ^, &, |, {}, [], <>, <, >, <<, >>, ?, !, $ can all be defined for user types
      animals += [animal];;               # add to array







# demonstrate "UFCS"
# does foo: (), "item" > bar: () work?
# or just foo: (), bar: ("item")

How do you “stack” protocols/traits. A cat has the traits of a mammal but also the traits of… a living entity or some better example.
obj Cat: Animal, Living
or req Animal: Living
or req Animal = val Living

Set: Subset, Union, Conjunction, ..., Contains, Add, Remove, Size, Iterate
Dictionary: Contains, Add, Remove, Update, Size, Iterate
Array: Add +, Remove[] -, Update[] =, Contains, Index[], Iterate, Size
Tuple: Update<> =, Index<>, Size
String: Append +, Update =, Index[], Subset/Contains <, Iterate, Size

Size, Count, Length: What vocab?

Generic Type: A, B, C < No single letter Obj? Or a keyword for generics?

fun forEach: [a] elements, (a) toDo = ... ; # The return would be ignored... Should there be an option
                                   # to pass in functions with a return type if no return is expected?

Tree[1, 2, 3] or [1, 2, 3]: (sorted: true) < So obj declaration, or constructor... 
Do any of the other collections have constructors? (Array: Size)

Passing in argument from terminal? (Use case: making a compiler and passing a file in...)





File: Read, Write
Terminal: Read, Write

Multiple return

Fun with _ parameter 
Array of array, etc

# and, or
# else >

Demonstrate @ access modifiers

Function as a parameter

Using $= and as a parameter

Overriding

Using optionals

AnimalCarrier
if: 6 < x < 9 # continued expression disallowed
# extended expressions allowed for <, >, <=, >=

if: x > 4 = # continued expressions allowed for all except for !=
else > 7 =
