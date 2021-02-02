def showme
  puts '*** before the yield ***'
  yield
  yield
  yield
  puts '*** after the yield ***'
end

# looks like you have to pass at least an empty block to a method that has a yield in it
# showme { puts ' this is the yield block running ...'}
# showme { }   # empty block works
# showme []    # not a block
# showme { pets = %w( cat dog rat turtle fish snake) 
#   pets.each { |p| puts p }}
# showme { 5.times { sleep 1; puts Time.new; }}

# https://www.rubyguides.com/2016/02/ruby-procs-and-lambdas/


def players1
  yield ['john', 1]
  yield ['joe', 3]
  yield ['jim', 2]
end

def players2
  team = [
    { name: 'john', sport: 1, hometown: 'Boston'},
    { name: 'joe', sport: 4, hometown: 'Chicago'}, 
    { name: 'jim', sport: 3, hometown: 'LA'}
  ]
  
  yield team[0]
  yield team[1]
  yield team[2]
end

def players
  sports = %w( baseball, football, hockey, basketball, tennis, boxing )
  players1  { |player| puts "#{player[0].capitalize} loves the sport of #{sports[player[1]]}." }
  players2 { |player| puts "#{player[:name].capitalize} is from #{player[:hometown]} and loves the sport of #{sports[player[:sport]]}." }
end

players
