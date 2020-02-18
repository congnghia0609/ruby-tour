## Init project
# mkdir ruby-tour
# cd ruby-tour
# touch main.rb

## Run
# ruby main.rb

# https://www.vikingcodeschool.com/professional-development-with-ruby/ruby-cheat-sheet


# This is a comment
=begin
This is a multiline comment
No-one uses them
You shouldn't either
=end

# print to the output
puts "print string"

# First and foremost: Everything is an object.

# Numbers are objects
3.class #=> Fixnum
3.to_s #=> "3"

# Some basic arithmetic
1 + 1 #=> 2
8 - 1 #=> 7
10 * 2 #=> 20
35 / 5 #=> 7
2 ** 5 #=> 32

# Arithmetic is just syntactic sugar for calling a method on an object
1.+(3) #=> 4
10.* 5 #=> 50

# Special values are objects
nil # Nothing to see here
true # truth
false # falsehood

nil.class #=> NilClass
true.class #=> TrueClass
false.class #=> FalseClass

# Equality
1 == 1 #=> true
2 == 1 #=> false

# Inequality
1 != 1 #=> false
2 != 1 #=> true
!true  #=> false
!false #=> true

# apart from false itself, nil is the only other 'falsy' value
!nil   #=> true
!false #=> true
!0     #=> false

# More comparisons
1 < 10 #=> true
1 > 10 #=> false
2 <= 2 #=> true
2 >= 2 #=> true

