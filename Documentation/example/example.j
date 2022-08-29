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
   fun +: Animal animal =                 # +, -, *, /, %, ^, &, |, {}, [], <>, ?, !, $ can all be defined for user types
      animals += [animal];;               # add to array







# demonstrate "UFCS"
# does foo: (), "item" > bar: () work?
# or just foo: (), bar: ("item")

How do you “stack” protocols/traits. A cat has the traits of a mammal but also the traits of… a living entity or some better example.
obj Cat: Animal, Living
or req Animal: Living
or req Animal = val Living

Updating set, dictionary... Searching for element? Dictionary.contains; set.contains

String.contains: ("ab")

<< doesn't this break? binary shift operator. It would be two LANG tokens and couldn't be modified/overriden in user objects

So <> custom defines a "tuple" like wrapper, but < custom defines less than... That's confusing.



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

Array, Tree, Set, Dictionary, Tuple

Multiple returns

AnimalCarrier
if: 6 < x < 9 # continued expression disallowed
# extended expressions allowed for <, >, <=, >=

if: x > 4 = # continued expressions allowed for all except for !=
else > 7 =
