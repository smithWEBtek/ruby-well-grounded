require 'pry'

# What is a Lambda?
# A lambda is a way to define a block & its parameters with some special syntax.
# You can save this lambda into a variable for later use.


# say_something = -> { puts "this is a lambda"} # didn't work when I called it in run method
@say_something = -> { "this is a lambda"}
@times_two = -> (x){ "this is times_two lambda #{ x * 2 }"}

#  I had to create a class variable to get this to work in the run method
#  .call the lambda, then pass argument if appropriate

def run
  @say_something.call
  puts @say_something.call
  puts @times_two.call(9)
end

# binding.pry

run
