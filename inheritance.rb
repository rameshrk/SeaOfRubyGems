class Inheritance
end

class Publication
  attr_accessor :publisher
end

class Magazine < Publication
  attr_accessor :editor
end


mag = Magazine.new
mag.editor = "abc"
puts mag.editor
mag.publisher = "def"
puts mag.publisher


pub = Publication.new
pub.publisher = "ghi"
puts pub.publisher



class Ezine < Magazine

end


ezine = Ezine.new
ezine.editor = "jkl"
puts ezine.editor
ezine.publisher = "mno"
puts ezine.publisher

