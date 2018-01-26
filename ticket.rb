class Ticket
  def event
    "Can't really be specified yet..."
  end

  def initialize(venue, date)
    @venue = venue
    @date_ = date
  end

  def venue
    @venue
  end
  def date_
    @date_
  end

  def price
    @price
  end

  def set_venue(venue)
    @venue = venue
    end

  def set_date_(date)
    @date_ = date
  end

  def price=(price)
    if price.to_i == price
      @price = price
    end
  end

  def set_price(price)
    @price=price
  end

end





# ticket = Ticket.new
# puts ticket.event

ticket1 = Ticket.new("abc", "90")
puts ticket1.venue
puts ticket1.date_


th = Ticket.new("Town Hall", "11/23/13")
puts "#{th.venue}"
puts th.venue

th.set_date_("1/1/1")
th.set_venue("7")

puts th.venue, th.date_

puts "The ticket costs $#{"%.2f" % th.venue}."
puts ; puts

tick2 = Ticket.new("abc","789")
puts tick2.venue, tick2.date_
tick2.set_venue("efg")
tick2.set_date_("101112")
puts tick2.venue, tick2.date_

tick2.price =(67)
puts tick2.venue, tick2.date_, tick2.price

tick2.price =79
puts tick2.venue, tick2.date_, tick2.price

tick2.price =89.90
puts tick2.venue, tick2.date_, tick2.price

