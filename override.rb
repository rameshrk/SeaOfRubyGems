class Override
  def m
    puts "first definition"
  end

  def m
    puts "second definition"
  end
end


Override.new.m