class Abc
  puts "First line"
  load "load.rb"
  require './require.rb'
  require '/Users/rameshnair/work/rubyspace/work/require.rb'
  # require 'require_relative.rb'
  puts "After loading"
end

obj = Object.new

def obj.talk
  puts "I am an object."
  puts "(Do you object?)"
end

obj.talk
obj.talk


def obj.c2f(c)
  c*9.0/5 + 32
end
def c2f(c)
  c*9.0/5 + 32 +10
end
def self.c2f(c)
  c*9.0/5 + 32 +10
end

def self.c2f1 c
  c*9.0/5 + 32 +10
end


puts obj.c2f 10
puts c2f 10
puts self.c2f 10
puts self.c2f1 10



ticket = Object.new
def ticket.date
  "01/03/1983"
end

def ticket.venue
  "Town"
end


def ticket.price
  7.7
end

puts ticket.date
puts ticket.venue
puts ticket.price

puts "abc" + ticket.date
puts "ticket price + $#{"%.2f." % ticket.price}"
puts "ticket price + ticket.price"


obj = Object.new
def obj.one(x)
  puts x
end

obj.one(90)

def obj.one(*x)
  puts x
  end



obj.one(900, 1000,1200)


def obj.three(a,b,*x)
  puts a,b, x
end


puts obj.three 1,2,3,4

def obj.three_initialize(a,b=1,*x)
  puts a,b, x
end



puts obj.three_initialize 1


def obj.sponge(a,b,*x, d)
  p a,b, x, d
end


obj.sponge 1,2,3,4,5,6


obj.sponge 1,2,3


def args_unleashed(a,b=1,*c,d,e)
  puts "Arguments:"
  p a,b,c,d,e
end


args_unleashed(1,2,3)

args_unleashed(1,2,3)
