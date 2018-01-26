class Program
  celsius = 100
  # celsius = gets.to_s.to_i
  celsius = File.read("temp.txt").to_i
  fahrenheit = (celsius*9/5)+32
  print "Result"
  puts fahrenheit
  puts "."
  file = File.new("temp.out","w")
  file.write fahrenheit
  file.puts fahrenheit
  file.close


end