class A
  @@var = 12
  constant = 20
  @var = 30
end

class B < A
  def self.classvariable
    @@var
  end

  def self.instancevariable
    @var
  end

end

puts B.classvariable

puts B.instancevariable

# puts A::constant


class MyClass
  @one = 1
  @@value = 12

  attr_accessor  :value, :one

  def self.value
    @@value
  end

  def initialize()
    @two = 2
  end
end

myclass= MyClass.new
puts myclass.value

puts myclass.one

puts MyClass.value
