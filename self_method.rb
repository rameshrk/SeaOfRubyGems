class SelfMethod

  puts "Class definition block: C"
  puts "self is #{self} \n"
  puts

   x =1
  @x =2
  attr_accessor x

  def self.x
    puts "Class method C.x:"
    puts "self is #{self} \n"
    puts
  end

  def SelfMethod.y
    puts "Class method C.y:"
    puts "self is #{self} \n"
    puts
  end

  def m
    puts "Instance method C#m:"
    puts "self is #{self} \n"
    puts
  end

  x
  y
  # m

  puts "Class definition block: completed"
  puts "self is #{self} \n"
  puts
end


puts SelfMethod.x
s =SelfMethod.new
puts s.x