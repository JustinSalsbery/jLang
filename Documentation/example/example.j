# j does not require obj name to match file name
# multiple obj may be declared in the same file

lim Color = Red, Greed, Blue              # enum

req Animal: Ord =                         # protocol
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
         ret "\(name) is not cute";;       # first semicolon ends fun scope, second obj scope 

obj AnimalShelter =
   val animals: [Animal] = [Cat: ("Peanuts")] # array of Animals, initialized with 1 cat
   val employeeID = {1: "John", 2: "Lucy"}    # dictionary
   fun +: Animal animal =                 # +, -, *, /, %, ^, {}, [], <>, >, ?, $, & can all be defined for user types
      animals += [animal];                # add to array

   # last object in file may omit ending ;





# demonstrate "UFCS"
# does foo: (), "item" > bar: () work?
# or just foo: (), bar: ("item")

How do you “stack” protocols/traits. A cat has the traits of a mammal but also the traits of… a living entity or some better example.
obj Cat: Animal, Living
or req Animal: Living
or req Animal = val Living

Beware too many symbols:
Set: Subset, Union, Conjunction, ..., Contains, Add, Remove, Size, Iterate, Range?
Dictionary: Contains, Add, Remove, Update, Size, Iterate, Range?
Array: Add +, Remove[] -, Update[] =, Contains, Index[], Iterate, Size, Range
Tuple: Update<> =, Index<>, Size, Range
String: Append +, Update =, Index[], Subset/Contains <, Iterate, Size, Range

Conversions! Int to Str… Str to Int. Etc.

Size, Count, Length: What vocab?

Generic Type: A, B, C < No single letter Obj? Or a keyword for generics?

fun forEach: [a] elements, (a) toDo = ... ; # The return would be ignored... Should there be an option
                                   # to pass in functions with a return type if no return is expected?

Tree[1, 2, 3] or [1, 2, 3]: (sorted: true) < So obj declaration, or constructor... 
Do any of the other collections have constructors? (Array: Size), (Dictionary: Size), (Set: Size), 
(String: Size)

Passing in argument from terminal? (Use case: making a compiler and passing a file in...)





No variable redeclaration. Good in most cases. (But I do like parameters doing so...) In separate 
functions is fine. Just not the same value names in the parent scopes.

Self keyword needed after all








File:
   init: Str # equivalent to Java open
   read: Int # read line
   read # read all
   write: Str, Bool # overwrite?
   # Java close called automatically

Terminal: Read, Write

Multiple return

Demonstrate Array[-1] for indexes. And [0, 1] for multiple indexes. 

Fun with _ parameter 
Array of array, etc

# and, or
# else >

Demonstrate @ access modifiers

Function as a parameter

Using $= and with a parameter

Overriding

Using optionals

AnimalCarrier
if: 6 < x < 9 # continued expression disallowed
# extended expressions allowed for <, >, <=, >=

if: x > 4 = # continued expressions allowed for all except for !=
else > 7 =

Function as a parameter: the return doesn’t have to match exactly, as long as specified type is present.
Compiler uses _ to say it doesn’t care about that return.




"Immutability makes it easier to write, use and reason about the code"
Require going through a setter, even if in the same object?
Is copying, like this, really more syntax and more complex logic?




fun isEven: Int num > Bool =
   if: (num % 2) ?= 0 = # are the paranthesis necessary? or optional?
      ret true;
   ret false;

fun sort: [Int] nums, (Int > Bool) sortBy > [Int] = # function as parameter
  # what is an efficient/clean/easy way to right this?
  # should arrays have a .hasNext: () function?

fun sort': Int index, [Int] nums > [Int] =
   
   if: index < nums.size = # function call syntax optional for getters << is the calling syntax optional for all no argument functions?
      ret ___ += sort': (index += 1, nums);
   ret ___; # surely there's a better way to write this recursion? 
            # so many of the variables are carried between calls...



How do I express this? (Haskell :: a -> a -> Bool) Issue: I need to define this/self... 
req Ord: Eq =
   fun >: 

obj Foo: Ord =
   fun ?: Foo a > Bool =
      ... ;
   fun >: Foo a > Bool =
      ... ;





UFCS: Use _ , multiple args pass in, fill in _

File initialization returns optional depending on successful opening — error prevention — what went wrong specifically?

obj x =
      val a = 3
      fun b =
            ret a + 1;
      fun c > () =
            ret b;; # what value is a?
# store the current value? 
# store a reference? the most j like thing, though a copy constructor could change that (this is another thing to keep in mind for in scope/out of scope memory — though it shouldn’t be a problem)

How does the getter work? Pass back a copy automatically? Or just say you don’t have permission to change?

Constants and variable… part 2

TypeName = self/this
Use Global. syntax to access Global object values.

