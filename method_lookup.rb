module ModuleOne
  def report
    puts "report method in Module ModuleOne"
  end

  def method1
    puts "method1 in module ModuleOne"
  end

  def methodModule
    puts "methodModule in module ModuleOne only"
  end

  def methodModule
    puts "methodModule in module ModuleOne only"
  end

end


module ModuleTwo
  def report
    puts "report method in Module ModuleTwo"
  end

  def method1
    puts "method1 in module ModuleTwo"
  end

  def methodModule
    puts "methodModule in module ModuleTwo only"
  end

  def methodModule
    puts "methodModule in module ModuleTwo only"
  end

end

module ModuleTwo
  def report
    puts "report method in Module ModuleTwo - secondtime"
  end

  def method1
    puts "method1 in module ModuleTwo - secondtime"
  end

  def method2
    puts "method2 in module ModuleTwo - secondtime"
  end

  def methodModule
    puts "methodModule in module ModuleTwo only - secondtime"
  end

  def methodModule
    puts "methodModule in module ModuleTwo only - secondtime"
  end

end

module ModuleThree


  def method3
    puts "method3 in module ModuleThree"
  end


end


class MethodLookup
  include ModuleOne
  include ModuleTwo
  include ModuleOne
  prepend ModuleTwo
  prepend ModuleThree

  def method1
    puts "method1 in class only"
  end

  def method1
    puts "method1 in class only - second time"
  end

  def method2
    puts "method2 in class only"
  end

  def method2
    puts "method2 in class only - second time"
  end

  def method3
    puts "method3 in class only"
  end

end


class D < MethodLookup

end

obj = D.new
# obj.report
obj.method1
obj.methodModule
obj.method2
obj.method3
