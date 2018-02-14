class Parent
  @@things = []

  def self.things
    puts "called self.things"
    @@things
  end

  def things
    puts "called things"
    @@things
  end
end

class Child < Parent
end

Parent.things << :car
Child.things << :doll
puts "===="
puts
p Parent.things #=> [:car,:doll]
p Child.things #=> [:car,:doll]
puts "******"
puts

mom = Parent.new
dad = Parent.new
son1 = Child.new
son2 = Child.new
daughter = Child.new

[mom, dad, son1, son2, daughter].each {|person| p person.things}
