class Reference


end

str = "Hello"
abc = str
puts str.object_id
puts str
puts abc.object_id
puts abc

str.replace("Goodbye")
puts
puts str.object_id
puts str
puts abc.object_id
puts abc

puts
puts
puts


def changer_back()
  str="Hello"
  puts "In changer"
  puts str.object_id
end

changer_back
puts
puts
puts


puts "Outside"

puts str.object_id
puts str
puts abc.object_id
puts abc

puts "************"

str="Hello"
puts str.object_id
puts str
puts abc.object_id
puts abc

puts
puts
puts


# abc=str
abc.replace(str)

puts str.object_id
puts str
puts abc.object_id
puts abc
