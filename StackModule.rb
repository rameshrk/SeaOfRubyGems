module StackModule
  def stack
    @stack ||= []
  end

  def add_to_stack(obj)
    stack.push(obj)

  end

  def take_from_stack
    stack.pop
  end

  def queue
    @queue ||= []
  end

  def print_stack
    puts stack
  end


end