class Ticket2
  def initialize(venue, date, type)
    @venue = venue
    @date = date
    @type = type
  end

  def price=(price)
    @price = price
  end

  def venue
    @venue
  end

  def date
    @date
  end

  def price
    @price
  end

  attr_reader :type
  attr_writer         :type
end

tick4 = Ticket2.new("123", "345", "678")

puts tick4.venue, tick4.date, tick4.type
tick4.type = 91011
puts tick4.venue, tick4.date, tick4.type
