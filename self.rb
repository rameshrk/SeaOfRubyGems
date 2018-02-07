class Self
end


class C
  puts "Just started class C:"
  puts self
  module M
    puts "Nested module C::M:"
    puts self
  end
  puts "Back in the outer level of C:"
  puts self


    def C.x
      puts "Class method of class C"
      puts "self: #{self}"
    end
end