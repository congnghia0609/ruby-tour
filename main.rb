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

# Strings are objects
'I am a string'.class #=> String
"I am a string too".class #=> String

placeholder = "use string interpolation"
"I can #{placeholder} when using double quoted strings"
#=> "I can use string interpolation when using double quoted strings"

# Combine strings, but not with numbers
"hello " + "world"  #=> "hello world"
# "hello " + 3 #=> TypeError: can't convert Fixnum into String
"hello " + 3.to_s #=> "hello 3"

# Variables
x = 25 #=> 25

# Note that assignment returns the value assigned
# This means you can do multiple assignment:
x = y = 10
x #=> 10
y #=> 10
y = 20
x #=> 10
y #=> 20

# By convention, use snake_case for variable names
snake_case = true

# Use descriptive variable names
path_to_project_root = '/good/name/'
path = '/bad/name/'

# Symbols (are objects)
# Symbols are immutable, reusable constants represented internally by an integer value.
# They're often used instead of strings to efficiently convey specific, meaningful values.
:pending.class #=> Symbol are immutable, reusable constants
status = :pending
status == :pending #=> true
status == 'pending' #=> false
status == :approved #=> false


# Arrays
# This is an array
array = [1, 2, 3, 4, 5]
#puts array
#=> [1, 2, 3, 4, 5]

# Arrays can contain different types of items
items = [1, "hello", false]
#puts items
#=> [1, "hello", false]

# Arrays can be indexed
# From the front
array[0] #=> 1
array[12] #=> nil

# Like arithmetic, [var] access is just syntactic sugar
# for calling a method [] on an object
array.[] 0 #=> 1
array.[] 12 #=> nil

# From the end
array[-1] #=> 5

# With a start index and length
array[2, 3] #=> [3, 4, 5]

# Or with a range
array[1..3] #=> [2, 3, 4]

# Add to an array like this
array << 6 #=> [1, 2, 3, 4, 5, 6]


# Hashes are Ruby's primary dictionary with keys/value pairs.
# Hashes are denoted with curly braces:
hash = {'color' => 'green', 'number' => 5}
hash.keys #=> ['color', 'number']
# puts hash.to_s
#=> {"color"=>"green", "number"=>5}
# Hashes can be quickly looked up by key:
hash['color'] #=> 'green'
hash['number'] #=> 5
# Asking a hash for a key that doesn't exist returns nil:
hash['nothing here'] #=> nil

# Since Ruby 1.9, there's a special syntax when using symbols as keys:
new_hash = { defcon: 3, action: true}
new_hash.keys #=> [:defcon, :action]

# Tip: Both Arrays and Hashes use Enumerable
# They share a lot of useful methods such as: each, map, count, and more...



# Control structures
## IF-ELSE
if true
  "if statement"
elsif false
  "else if, optional"
else
  "else, also optional"
end

## FOR
for counter in 1..5
  puts "iteration #{counter}"
end
#=> iteration 1
#=> iteration 2
#=> iteration 3
#=> iteration 4
#=> iteration 5

# HOWEVER, No-one uses for loops.
# Instead you should use the "each" method and pass it a block.
# A block is a bunch of code that you can pass to a method like "each".
# It is analogous to lambdas, anonymous functions or closures in other programming languages.
#
# The "each" method of a range runs the block once for each element of the range.
# The block is passed a counter as a parameter.
# Calling the "each" method with a block looks like this:

(1..5).each do |counter|
  puts "iteration #{counter}"
end
#=> iteration 1
#=> iteration 2
#=> iteration 3
#=> iteration 4
#=> iteration 5

# You can also surround blocks in curly brackets:
(1..5).each {|counter| puts "iteration #{counter}"}

# The contents of data structures can also be iterated using each.
array.each do |element|
  puts "#{element} is part of the array"
end
hash.each do |key, value|
  puts "#{key} is #{value}"
end

## WHILE
counter = 1
while counter <= 5 do
  puts "iteration #{counter}"
  counter += 1
end

## SWITCH-CASE
grade = 'x'
case grade
when 'A'
  puts "Way to go kiddo"
when 'B'
  puts "Better luck next time"
when 'C'
  puts "You can do better"
when 'D'
  puts "Scraping through"
when 'F'
  puts "You failed!"
else # default
  puts "Alternative grading system, eh?"
end
#=> "Alternative grading system, eh?"

# cases can also use ranges
grade = 82
case grade
when 90..100
  puts "Hooray!"
when 80...90
  puts "OK job"
else
  puts "You failed!"
end
#=> "OK job"



