class Reopen
  def x
    puts "abc"
  end
end

class Reopen
  def x
    puts "defa"
  end

end


class Reopen
  def y
    puts "hjk"
  end
end


Reopen.new.x
Reopen.new.y

puts Time.new.strftime("%m-%d-%y")


ticket = Object.new
def ticket.price
  117.50
end

