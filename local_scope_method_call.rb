class C

  def x(value_for_a, recurse=false)
    a = value_for_a
    print "Here's the inspect-string for 'self':"
    p self.object_id
    puts "And here's a:"
    puts a
    puts "Recurse value:" , recurse
    if recurse
      puts "Calling myself (recursion)..."
      x("Second value for a")
      puts "Back after recursion; here's a:"
      p self.object_id
    end
    puts
  end
end
c = C.new
c.x("First value for a", true)

