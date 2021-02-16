require 'pry'

class Ticket

  def initialize(venue)
    @venue = venue
    @price = 100
  end

  def venue
    @venue
  end

  def price
    @price
  end

  def discount(pct)
    discount_price = (@price * (100 - pct) * 0.01).to_f
    discount_price.to_s
  end

  def ticket_text
    puts "The event is at #{@venue} and the discounted price is #{discount(16)}"
  end

ticket = Ticket.new('Cobo Hall')
# binding.pry
ticket.ticket_text

end