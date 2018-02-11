class C
  def C.no_dot
    puts "As long as self is C, you can call this method with no dot"
  end

  no_dot = 10
  puts no_dot


   def C.variable
     puts "variable class method"
   end

  #

  attr_accessor :no_dot, :variable
  def initial()
    @variable = 50
  end

end
puts "\n Starts"
puts C.no_dot
puts C.no_dot()


puts "\n Starts"
c = C.new
puts c.no_dot
puts c.no_dot()

puts "\n Starts"
 puts C.variable
puts c.variable
puts c.initial
puts c.variable()

puts "\n Starts"
c.no_dot =20
puts c.no_dot
