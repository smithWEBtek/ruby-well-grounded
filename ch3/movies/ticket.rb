class Ticket

  def initialize(venue, date, price = nil)
    @venue = venue
    @date = date
    @price = price
  end

  # def price=(amount)
  #   @price = amount
  # end

  def price=(amount)
    if(amount * 100).to_i == amount * 100
      @price = amount
    else
      puts "The price seems to be malformed"
    end
  end

  def price
    @price
  end

  def venue
    @venue
  end
  
  def date
    @date
  end

  def discount(percent)
    @price = @price * (100 - percent) / 100.0
  end
end

# t = Ticket.new('Palace Theatre', Time.now)
# puts "Band is playing at #{t.venue} @ #{t.date}"

# th = Ticket.new("Town Hall", "2013-11-12")
# th.set_price("#{%.2f % 44")

# puts "The ticket costs $#{"%.2f" % ticket.price}."

# cc = Ticket.new("Convention Center", "2014-12-13", 22)

# puts "We've created two tickets."
# puts "The first is for a #{th.venue} event on #{th.date}, early ticket discount price is: #{th.discount(10)}"
# puts "The first is for a #{cc.venue} event on #{cc.date}, early ticket discount price is: #{th.discount(5)}"


ticket = Ticket.new("Town Hall", "2013-11-12")
# ticket.price = 63.00
ticket.price = 'asdf'
puts "The ticket costs $#{"%.2f" % ticket.price}."
ticket.price = 72.50
puts "Whoops -- it just went up. It now costs $#{"%.2f" % ticket.price}."