class Object
  def abc
    puts "abc"
  end
end


obj= Object.new
obj.abc
puts Object.superclass

puts "*****************"


class C
end
class D < C
end
puts D.superclass
puts D.superclass.superclass


BasicObject.new

puts "*****************"
my_class = Class.new
puts my_class.inspect
puts my_class.methods.size
puts my_class.superclass
puts

obj= Object.new
puts obj.inspect
puts obj.methods.size
# puts obj.superclass

puts
my_new_class = my_class.new
puts my_new_class.inspect
puts my_new_class.methods.size
# puts my_new_class.superclass
