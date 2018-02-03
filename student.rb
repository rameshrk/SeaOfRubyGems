class Student
  def method_missing(m, *args)
    if m.to_s.start_with?("grade_for")
      puts "good grade " , args
    else
      super
    end
  end
end

s  = Student.new
s.grade_for(68)
s.grade_for_(68)
# s.grade_fo(68)
puts

class SmallStudent < Student
  def method_missing(m, *args)
    if m.to_s.start_with?("grade_for_small_student")
      puts "grade_for_small_student " , args
    else
      super
    end
  end
end


puts

s = SmallStudent.new
s.grade_for_small_student(68)
s.grade_for_small_student_(68)

s.grade_for(68)
s.grade_for_(68)
