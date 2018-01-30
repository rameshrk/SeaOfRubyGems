require_relative "StackModule"
class CargoHold
  include StackModule
  # def cargostack
  #   @cargostack ||= []
  # end

  def load_and_report(obj)
    # cargostack.push(obj)
    add_to_stack(obj)

  end

  def unload
    # cargostack.pop()
    take_from_stack
  end

  def print_cargo
    print_stack
  end
end