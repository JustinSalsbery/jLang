# this is a comment

# global statements are only allowed here
# main.j may also be called global.j

val a, b, c = 1, 3.14, "Hello"            # multiple declarations allowed
val x, y: Int = " World!", 1              # y is specified to be an Int
val j, h > Dec = 1.0, 2.3                 # j and h are specified to be a Dec

a, j = 2, 4.14





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

j, h = 1.111 # is this legal?

