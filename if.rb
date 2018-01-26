class If
  if "abc"
    puts "Strings are 'true' in Ruby!"
  end
  if 123
    puts "So are numbers!"
  end
  if 0
    puts "Even 0 is true, which it isn't in some languages."
  end
  if 1 == 2
    puts "One doesn't equal two, so this won't appear."
  end
end

p Object.new.methods.sort
puts Object.new.methods.size
puts BasicObject

a = Object.new
b=a
puts "a's id is #{a.object_id} and \n b's id is #{b.object_id}."

string_1 = "Hello"
string_2 = "Hello"
puts "string_1's id is #{string_1.object_id}."
puts "string_2's id is #{string_2.object_id}."


obj = Object.new

require_relative "abc.rb"

if obj.respond_to?("talk")
  obj.talk
else
  puts "Sorry, the object doesn't understand the 'talk' message."
end


print "Information desired: "
request = gets.chomp
if request == "venue"
  puts "********"
  puts ticket.venue
end