class Parent
  @@family_things = [] # Shared between class and subclasses
  @shared_things = [] # Specific to this class

  def self.family_things
    puts "called self.family_things      >>>"
    @@family_things
  end

  def family_things
    puts "called family_things                      ----"
    self.class.family_things
  end


  def self.shared_things
    puts "called self.shared_things      >>>"
    @shared_things
  end

  def shared_things
    puts "called shared_things                      ----"
    self.class.shared_things
  end

  attr_accessor :my_things

  def initialize
    @my_things = [] # Just for me
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


puts "Parent.family_things", Parent.family_things << :house, "*****"
# Parent.family_things

puts "******"
puts

puts "\n","papa.family_things", papa.family_things << :vacuum, "----"
puts "\n","papa.family_things", papa.family_things << :vacuum, "----"
puts "\n","mama.family_things", mama.family_things, "----"
puts "\n","mama.family_things", mama.family_things << :mixer, "----"
puts "\n","Parent.family_things", Parent.family_things << :house, "*****"
puts
puts "\n","******************************* 1 *******************************"
puts "\n","papa.shared_things", papa.shared_things << :blender, "----"
puts "\n","mama.shared_things", mama.shared_things << :car, "----"
puts "\n","papa.shared_things", papa.shared_things, "----"
puts "\n","papa.shared_things", papa.shared_things, "----"
puts "\n", "joey.shared_things", joey.shared_things << :puzzle, "----"
puts "\n", "suzy.shared_things", suzy.shared_things << :blocks, "----"

puts "******************************* 2 *******************************"


puts "\n","papa.my_things", papa.my_things << :quadcopter, "----"
puts "\n","joey.my_things", joey.my_things << :bike, "----"
puts "\n","suzy.my_things", suzy.my_things << :doll, "----"

puts "******************************* 3 *******************************"



puts "******************************* 4 *******************************"

puts "******"
puts

puts "\n","Parent.family_things", Parent.family_things #=> [:house, :vacuum]   , puts "----"
puts "\n","Child.family_things", Child.family_things #=> [:house, :vacuum]    , puts "----"
puts "\n","papa.family_things", papa.family_things #=> [:house, :vacuum]     , puts "----"
puts "\n","mama.family_things", mama.family_things #=> [:house, :vacuum]     , puts "----"
puts "\n","joey.family_things", joey.family_things #=> [:house, :vacuum]     , puts "----"
puts "\n","suzy.family_things", suzy.family_things #=> [:house, :vacuum]     , puts "----"
puts "\n","******************************* 5 *******************************"

puts "******"
puts

puts "\n","Parent.shared_things", Parent.shared_things #=> [:car, :blender]
puts "\n","Child.shared_things", Child.shared_things #=> [:puzzle, :blocks]
puts "\n","papa.shared_things", papa.shared_things #=> [:car, :blender]
puts "\n","mama.shared_things", mama.shared_things #=> [:car, :blender]
puts "\n","joey.shared_things", joey.shared_things #=> [:puzzle, :blocks]
puts "\n","suzy.shared_things", suzy.shared_things #=> [:puzzle, :blocks]
puts "\n", "******************************* 6 *******************************"

puts "******"
puts


p papa.my_things #=> [:quadcopter]
p mama.my_things #=> []
p joey.my_things #=> [:bike]
p suzy.my_things #=> [:doll]


