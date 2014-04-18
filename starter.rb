class Pet
  attr_accessor :name, :age, :gender, :color
end

class Cat < Pet
end

class Dog < Pet
end

class Snake < Pet
    attr_accessor :length
end

snake_instance = Snake.new
puts snake_instance.age=9
puts snake_instance.age

puts snake_instance.length=5
puts snake_instance.length




class Dog < Pet
  def bark
    puts "Woof!"
  end
end

dog_instance = Dog.new
puts dog_instance.bark


puts dog_instance.class

puts 2.class


puts "This is a test".length

Kernel.puts "Hello, world!"

Kernel.puts("Hello, world!")
Kernel.puts "Hello, world!"
puts("Hello, world!")
puts "Hello, world!"

def dog_barking
         puts "Woof!"
         puts "sub-routine"
end
    
dog_barking
# Object.dog_barking


x = 10
puts x
puts "abc"


x = 100
y = 10
puts x - y

x = 50
y = x * 100
x += y
puts x



age = 10
puts "You're too young to use this system" if age < 18
puts "You're too young to use this system" if age < 1
puts "You're a teenager" if age > 9 && age < 20
puts "You're NOT a teenager" unless age > 12 && age < 20
puts "You're 24!" if age == 10

puts "You're either very young or very old" if age > 80 || age < 10+1

5.times do 
  puts "Test" 
  puts "" 
  end