module M
  class C
    X=2
    class D
      module N
        X=1
        $X = 10
        $Y = 10
      end
    end
    puts D::N::X
  end
end
$X = 20

puts M::C::D::N::X
# puts D::N::X
# puts M::C::X
puts $X
puts $Y

