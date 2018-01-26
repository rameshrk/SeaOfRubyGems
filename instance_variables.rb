class InstanceVariables
end

class Person
  def set_name(string)
    puts "Setting person's name"
    @name = string
  end

  def get_name
    puts "Returning person's name"
    @name
  end


  def initialize
    @name="Joe"
  end

  # def initialize(venue, date)
  #
  # end
end

joe = Person.new
joe.set_name("abc")
puts joe.get_name



ticket = Person.new
puts ticket.get_name

