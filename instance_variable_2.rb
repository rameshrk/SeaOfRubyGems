class Parent
  @things = []

  def self.things
    puts "self.things"
    puts @things
    @things

  end

  def things
    puts "In things             ***"
    puts "In self.class.things  ***"
    @things
  end
end

class Child < Parent
  @things = []

  def initialize
    @things = []
  end

  def things
    @things
  end
end

Parent.things << :car
puts
Child.things << :doll
puts
mom = Parent.new
puts
dad = Parent.new
puts

kid1 = Child.new
kid1.things << :train
puts

kid2 = Child.new
kid2.things << :ball
puts

puts "+++++"
puts "Parent.things", Parent.things, "\n" #=> [:car]
puts "Child.things", Child.things, "\n" #=> [:doll]
puts "======"
puts "mom.things", mom.things, "\n" #=> [:car]
puts "dad.things", dad.things, "\n" #=> [:car]
puts "kid1.things", kid1.things, "\n" #=> [:car]
puts "kid2.things", kid2.things, "\n" #=> [:car]
puts "dad.things", dad.things, "\n" #=> [:car]
puts "Child.things", Child.things, "\n" #=> [:doll]



kid2.things.pop
puts "------- Repeat --------"
puts "Child.things", Child.things, "\n" #=> [:doll]
puts "kid1.things", kid1.things, "\n" #=> [:car]
puts "kid2.things", kid2.things, "\n" #=> [:car]
