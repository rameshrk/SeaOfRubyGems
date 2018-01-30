module MyFirstModule
  def say_hello
    puts "hello"
  end
end

class ModuleExample
  include MyFirstModule
end

mt = ModuleExample.new
mt.say_hello


module MyNextModule
  def say_hello
    puts "next"
  end
end

class ModuleExample
  include MyNextModule
end

mt= ModuleExample.new
mt.say_hello

