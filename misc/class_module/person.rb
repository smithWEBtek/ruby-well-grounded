require 'pry'

class Person 
  def initialize(name, town)
    @name = name
    @town = town
  end

  def self.index(arr)
    arr.each do |person|
    puts '**********************************'
    puts "#{ person[:name] } is from #{ person[:town] }"
    end
  end

  @people = [
    {name: 'Jane', town: 'Boston'},
    {name: 'John', town: 'NY'},
    {name: 'Jim', town: 'LA'},
    {name: 'Frank', town: 'Buffalo'},
    {name: 'Tom', town: 'Boston'},
    {name: 'Tammy', town: 'Boston'},
  ]

  def Person.create_people
    @people.each do |person|
      Person.new(person[:name], person[:town])
    end

    binding.pry
  end

  create_people
  self.index(@people)

end