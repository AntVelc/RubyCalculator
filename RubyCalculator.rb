def calculator(calculus)
  
  puts calculus

  ready = gets.chomp
end

puts "please write numbers to be calculated along operations"

calculation_string = gets.chomp

calcReady = calculation_string.delete(' ')

if calcReady.count("+-/*") > 0 && calcReady[0].count("0-9") > 0 && calcReady[-1].count("0-9") > 0
  calculator(calcReady)
else
  puts "please put in at least a few numbers and operations"
end
