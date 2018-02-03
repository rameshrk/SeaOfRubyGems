class Bicycle
  attr_reader :gears, :wheels, :seats

  def initialize(gears = 1)
    @wheels = 2
    @seats = 1
    @gears = gears
  end


end

class Tandem < Bicycle
  def initialize(gears)
    super
    @seats = 2
  end
end


class TrikeWithNoArgument < Bicycle
  def initialize()
    super
  end
end

class TrikeWithEmptyArgument < Bicycle
  def initialize(gear)
    super()
  end
end

class TrikeWithArgument < Bicycle
  def initialize(gear)
    super
  end
end

t =Tandem.new(10)
puts t.wheels
puts t.seats
puts t.gears

puts

t = TrikeWithNoArgument.new
puts t.wheels
puts t.seats
puts t.gears

puts
t = TrikeWithEmptyArgument.new(30)
puts t.wheels
puts t.seats
puts t.gears

puts
t = TrikeWithArgument.new(30)
puts t.wheels
puts t.seats
puts t.gears

puts


o = Object.new

def o.method_missing(m, *args)
  puts "In method missing"
  puts "#{m}"
  puts args
    # super
end

o.method1(1, 2, 3)

