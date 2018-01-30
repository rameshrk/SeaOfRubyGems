require_relative "StackModule"
class Stack
  include StackModule
end

stacklike = Stack.new
stacklike.add_to_stack(3)
stacklike.add_to_stack(4)
stacklike.add_to_stack(5)
stacklike.add_to_stack(6)
stacklike.take_from_stack

puts stacklike.stack

stacklike.take_from_stack
puts stacklike.stack