# Lambdas vs Procs
# Procs are a very similar concept…

# One of the differences is how you create them.

# Example:

# my_proc = Proc.new { |x| puts x }
# There is no dedicated Lambda class. A lambda is just a special Proc object. If you take a look at the instance methods from Proc, you will notice there is a lambda? method.

# Should work
# my_lambda = -> { return 1 }
# puts "Lambda result: #{my_lambda.call}"

# Should raise exception
# my_proc = Proc.new { return 1 }
# didn't raise exception, just blank

# my_proc = Proc.new { 'asdf' }
# puts "Proc result: #{my_proc.call}"


def call_proc
  puts "Before proc"
  my_proc = Proc.new { return 2 }
  my_proc.call
  puts "After proc"
end
# p call_proc
# Prints "Before proc" but not "After proc"


# Here is a summary of how procs and lambdas are different:

# Lambdas are defined with -> {} and procs with Proc.new {}.
# Procs return from the current method, while lambdas return from the lambda itself.
# Procs don’t care about the correct number of arguments, while lambdas will raise an exception.


def call_proc2(proc)
  count = 500
  proc.call
end

count = 1
my_proc2 = Proc.new { puts 'ASDF' }
my_proc3 = Proc.new { puts count }

# p call_proc2(my_proc2)
p call_proc2(my_proc3)