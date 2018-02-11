class Parent
  @@things = []

  def self.things
    @@things
  end

  def things
    @@things
  end
end

class Child < Parent
end

Parent.things << :car
Child.things << :doll

p Parent.things #=> [:car,:doll]
p Child.things #=> [:car,:doll]

mom = Parent.new
dad = Parent.new
son1 = Child.new
son2 = Child.new
daughter = Child.new

puts mom.things, puts
puts dad.things, puts
puts son1.things, puts
puts son2.things, puts
puts daughter.things, puts