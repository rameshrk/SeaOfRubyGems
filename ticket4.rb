class Ticket4
  attr_reader :venue, :date, :price
  attr_writer :price
  def initialize (venue, date)
    @venue = venue
    @date = date
  end
  attr_accessor :type

  def test=(test)
    puts test

  end
end


tick4 = Ticket4.new("abc", "efg")
tick4.price = "hij"
tick4.type = "klm"
puts tick4.venue, tick4.date, tick4.price
puts tick4.type


tick4.test="testing"