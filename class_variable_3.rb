class Parent
  @@family_things = [] # Shared between class and subclasses
  @shared_things = [] # Specific to this class

  def self.family_things
    puts "called self.family_things      >>>"
    @@family_things
  end

  def self.shared_things
    puts "called self.shared_things      >>>"
    @shared_things
  end

  attr_accessor :my_things

  def initialize
    @my_things = [] # Just for me
  end

  def family_things
    puts "called family_things"
    self.class.family_things
  end

  def shared_things
    puts "called shared_things"
    self.class.shared_things
  end
end

class Child < Parent
  @shared_things = []
end

puts "******"
puts

mama = Parent.new
papa = Parent.new
joey = Child.new
suzy = Child.new

puts "******"
puts


Parent.family_things << :house

puts "******"
puts

papa.family_things << :vacuum
mama.shared_things << :car
papa.shared_things << :blender
papa.my_things << :quadcopter
joey.my_things << :bike
suzy.my_things << :doll
joey.shared_things << :puzzle
suzy.shared_things << :blocks

puts "******"
puts

p Parent.family_things #=> [:house, :vacuum]
p Child.family_things #=> [:house, :vacuum]
p papa.family_things #=> [:house, :vacuum]
p mama.family_things #=> [:house, :vacuum]
p joey.family_things #=> [:house, :vacuum]
p suzy.family_things #=> [:house, :vacuum]

p Parent.shared_things #=> [:car, :blender]
p papa.shared_things #=> [:car, :blender]
p mama.shared_things #=> [:car, :blender]
p Child.shared_things #=> [:puzzle, :blocks]
p joey.shared_things #=> [:puzzle, :blocks]
p suzy.shared_things #=> [:puzzle, :blocks]

p papa.my_things #=> [:quadcopter]
p mama.my_things #=> []
p joey.my_things #=> [:bike]
p suzy.my_things #=> [:doll]


