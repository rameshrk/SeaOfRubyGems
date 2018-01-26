class Reference_string
end

def change_string(str)
  puts str.object_id
  str.replace "new string"
  puts "Inside"
  puts str.object_id
  puts str.inspect
end

abc = "old string"
puts abc
puts abc.object_id
puts abc.inspect

change_string(abc)
puts abc
puts
puts


s = "Original string content!"
puts s
change_string(s.dup)
puts s

puts
puts "Duplicating after freeze"
s = "Original string content!"
s.freeze
# change_string(s)
change_string(s.dup)
# change_string(s.clone)

numbers = ["one", "two", "three"]
numbers.freeze
# numbers[2] = "four"
numbers[2].replace("four")
p numbers
