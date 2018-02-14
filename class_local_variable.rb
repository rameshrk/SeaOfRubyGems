class D
  # One scope
  x = 12

  def x
    puts 'x'
  end


end

class D
  # Another scope
  puts x
end

def foo
  x = :hack if false  # Ensure that x is a local variable
  p x if $set         # Won't be called the first time through
  $set = x = 42       # Set the local variable and a global flag
  p :done
end

foo                   #=> :done

foo
