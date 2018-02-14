class Parent
  @@things = []
  @items = []


  def self.items
    puts "called self.items"
    @items
  end

  def items
    puts "called items"
    @items
  end


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

Parent.items << :trimmer
Child.items << :catapult


puts "-------"
puts "-------"

puts Parent.things #=> [:car,:doll]
puts
puts Child.things #=> [:car,:doll]
puts

mom = Parent.new
dad = Parent.new
son1 = Child.new
son2 = Child.new
daughter = Child.new


puts mom.things #=> [:car]
puts
puts dad.things #=> [:car]
puts
