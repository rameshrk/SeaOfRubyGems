class Parent
  @things = []

  def self.things
    puts "called self.things"
    @things
  end

  def things
    puts "called things"
    self.class.things
  end
end

class Child < Parent
  @things = []
  # error
end

Parent.things << :car
puts "===="
Child.things << :doll
puts "===="

mom = Parent.new
dad = Parent.new
puts "******"
puts
puts
puts
puts Parent.things #=> [:car]
puts
puts Child.things #=> [:doll]
puts
puts "******"
puts mom.things #=> [:car]
puts
puts dad.things #=> [:car]
puts

