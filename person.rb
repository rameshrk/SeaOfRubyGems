module MeFirst
  def report
    puts "Hello from module!"
  end
end

class Person
  # prepend MeFirst
  include MeFirst

  def report
    puts "Hello from class!"
  end
end

p=Person.new
p.report
puts
puts Person.ancestors
