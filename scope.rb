puts "Top Level"
puts "self is #{self}"
puts


def m
  puts "outside method"
  puts
end

class D
  puts "Class definition block: D"
  puts "self is #{self} \n"
  puts
end


module SampleModule
  puts "Module definition block:"
  puts "self is #{self} \n"
  puts

  def modulemethod
    puts "modulemethod"
    puts "self is #{self} \n"
  end
end

class C
  include SampleModule
  puts "Class definition block: C"
  puts "self is #{self} \n"
  puts

  def self.x
    puts "Class method C.x:"
    puts "self is #{self} \n"
    puts
  end

  def m

    puts "Instance method C#m:"
    puts "self is #{self} \n"
    puts

  end

  puts "Class definition block: completed"
  puts "self is #{self} \n"
  puts
end




puts "*****1*****", "\n"

c = C.new

puts "*****2*****", "\n"

c.m
puts "*****3*****", "\n"

C.x


def c.objectmethod
  puts "Singleton object method"
  puts "self is #{self}"
  puts
end


c.objectmethod

c.modulemethod


def C.classmethod
  puts "Class method C.classmethod"
  puts "self is #{self} \n"
  puts
end

class E < C

end

C.classmethod

E.x
E.classmethod1