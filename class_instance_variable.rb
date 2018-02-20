class Class_Instance_Variable

  puts "Just inside class definition block. Here's self:"
  puts self
  @v = "I am an instance variable at the top level of a class body."



  def show_var
    @v = "I am an instance variable"
    puts self
    @v
  end

  @v = "class variable"

end


puts Class_Instance_Variable.new.show_var