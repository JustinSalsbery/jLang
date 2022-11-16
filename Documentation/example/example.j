# j does not require obj name to match file name
# multiple obj may be declared in the same file

lim Color = Red, Greed, Blue                # enum

req Animal: Ord =                           # protocol
   val name: Str
   val fur = true                           # protocols may provide default implentations
   fun greet;                               # semicolon ends the scope

use IO.Terminal = terminal
obj Cat: Animal =                           # class implementing a protocol
   val name: Str                            # typing required when not directly initializing
   val isCute = true
   fun init: Str name =                     # constructor with name argument
      .name = name;                         # .name refers to name in obj scope
   fun greet =
      terminal.write("Meow");
   fun checkCuteness > Str =                # return type is Str
      if isCute =
         ret "\(name) is very cute";        # add name to the string. other expressions \(2 + 9) also legal
      else =                                # all remaining cases
         ret "\(name) is not cute";;        # first semicolon ends else scope, second function scope

   # objects may omit ending ;

obj AnimalShelter =
   val animals: Array[Animal] = [Cat("Peanuts")] # (resizeable) array of Animals, initialized with 1 cat
   val employeeID = Dict{1: "John", 2: "Lucy"}   # dictionary
   fun +: Animal animal =                   # +, -, *, /, %, ^, >, ?, & can all be defined for user types
      animals += animal;                  
   fun pet(animal: Animal) =
      ret;
   fun petAll =
      animals > pet(_);                     # a forEach loop

# Generics are supported. (They bind to provided type.)
# Note: The first generic type always binds to the implementing object.
req Collection (Implementing, Generic) =    # Arrays, Lists are examples of collections
   fun get(index: Num) > Generic            # [] maps to this
   fun size > Num
   fun +(Generic)
   fun +(Implementing[Generic]);            # method overloading supported

# objects default to @All, values to @None, functions to @All
# Note: values may not be marked @All
@Library obj Book =                         # Library may modify/access all values/functions
   val title: Str
   val author: Str
   fun getTitle > Str =
      ret $title;                           # return a copy of title
                                            # $ is the copy operator

obj Library =
   val books: List[Book]
   fun getBook(title: Str) > Book =
      books > if _.title == title > ret _;  # forEach book if the book title matches return book
   fun bookInfoAt(index: Num) > Str, Str =  # multiple returns allowed
      val book = books[index]
      ret book.title, book.author;

use IO.File > File
obj Printer =
   val file: File
   fun init(path: Str) > Printer? =         # optionals indicate value may or may not exist (null is not supported)
      val file = File(path)
      if file =                             # optionals may only be used after checking for existence
         .file = file
         ret .;
      else =
         ret;                               # constructor failed
   fun write(text: Str, overwrite: Bool) =
      file.write(text, overwrite);
   fun read > Str =
      ret file.read();
   fun read(lines: Num) > Str =
      ret file.read(lines);

obj PalindromeChecker =
   fun check(string: Str) > Bool =
      ret checkHelper(string, 0);
   @None fun checkHelper(string: Str, index: Num) > Bool =
      if index ? string.size() / 2 =        # equality check
         ret true;
      else if string[index] ? string[-index] =   # array[-1] returns last index
         ret checkHelper(string, index += 1);
      else =
         ret false;

obj Calculator =
   fun divide(a: Num, b: Num) > Num =
      if b ! 0 =                            # b is not 0
         ret a / b;
      Program.raiseFlag("Divide by 0")      # functions may raise an error flag
                                            # caller function may address the error flag or ignore it 
                                            # Program will lower flag after caller scope closes (will print on termination)
      Program.exit();                       # functions may choose to terminate the program

obj Salon =
   val waitList = List[Str]
   val presentList = List[Num]
   fun haircutCost(age: Num) > Num =
      if 12 < age < 65 =                    # extended expressions allowed for <, >, <=, >=
         ret 20;
      else =
         ret 16;
   fun nextCustomer =
      
   @None fun nextCustomer(index: Num) > Str? =
      if index < waitList.size() and presentList[index] ? true =
         ret waitList[index];
      ret _;                                # return nothing

obj BinarySearchTree(_, Element: [Ord, Eq]) =    # multiple requirements require braces
   ... ;                                    # this is true for value type declarations and function argument type declarations
