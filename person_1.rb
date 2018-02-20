class Person_1
  attr_accessor :first_name, :middle_name, :last_name

  def whole_name
    n = first_name + " "
    n << "#{middle_name}" if middle_name
    n << last_name
  end




end


dav = Person_1.new
dav.first_name = "First"
dav.last_name = "Last"
puts dav.whole_name

dav.middle_name = "Middle"
puts dav.whole_name
