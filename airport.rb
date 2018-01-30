require_relative "cargo_hold"
require_relative "Suitcase"

class Airport
  ch= CargoHold.new
  suitcase1 = Suitcase.new
  suitcase2 = Suitcase.new
  suitcase3 = Suitcase.new
  ch.load_and_report(suitcase1)
  ch.load_and_report(suitcase2)
  ch.load_and_report(suitcase3)
  ch.print_cargo
  ch.unload
  ch.print_cargo
  ch.unload
  ch.print_cargo
  ch.unload
  ch.unload
  ch.unload


end