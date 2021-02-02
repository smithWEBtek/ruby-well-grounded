class Customer < Person

  PEOPLE = []
  attr_accessor :name, :town, :products

  def initialize(name, town, products)
    @name = name
    @town = town
    @products = products
  end

  def self.all
    PEOPLE
  end
end