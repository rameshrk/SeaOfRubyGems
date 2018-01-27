class Ticket6

  # def initialize(value, price)
  #   @value = value
  #   @price = price
  # end

 attr_accessor :value, :price

end

tick = Ticket6.new
def tick.singleton
  puts "tick6"
end

puts tick.singleton

tick1 = Ticket6.new
# puts tick1.singleton


def Ticket6.method1
  puts "Ticket6.method1"
end

# tick = Ticket6.new
# puts tick.method1

puts Ticket6.method1



def Ticket6.most_expensive(*tickets)
  tickets.max_by(&:price)
end

def Ticket6.most_value(*tickets)
  tickets.max_by(&:value)
end

t1 = Ticket6.new
t1.value = 1
t1.price = 3
t2 = Ticket6.new
t2.value = 2
t2.price = 2
t3 = Ticket6.new
t3.value = 3
t3.price = 1

highest = Ticket6.most_expensive(t1,t2,t3)
puts highest.price
puts highest.value

most_value = Ticket6.most_value(t1,t2,t3)
puts most_value.price
puts most_value.value



