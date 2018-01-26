class Silly
  def price=(x)
    @price = x
  end

  def price
    @price
  end

end

silly = Silly.new
silly.price = 90
puts silly.price

