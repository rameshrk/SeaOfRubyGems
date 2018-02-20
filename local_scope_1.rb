class C
  a=1
  puts a , "-- "

  def local_a
    a=2
    puts a
  end

  puts a
end

c = C.new
c.local_a

