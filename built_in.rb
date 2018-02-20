class Violin
  class String
    attr_accessor :pitch

    def initialize(pitch)
      @pitch = pitch
    end

    def to_s
      puts pitch
    end
  end


  attr_accessor :e, :a, :j

  def initialize
    @e = String.new("E")
    @a = String.new("A")
    @j = ::String.new("EA")
  end


end


v = Violin.new
puts v.e
puts v.a
puts v.j

