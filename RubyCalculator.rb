def calculator(calculus)
  calculus += "s"
  cn = calculus.length
  n = 0
  numberCounter = 0
  nr1 = ""
  nr2 = ""
  final = 0
  operand = ""

  
  while n < cn
    if calculus[n].count("0-9") > 0 

      if operand == "" 
	      nr1 = nr1 + calculus[n]
	      n += 1
	      numberCounter += 1
      end
      
      if operand == "+" || operand == "-" || operand == "*"|| operand == "/"
	      nr2 = nr2 + calculus[n]
	      n += 1
	      numberCounter += 1
      end
      
    elsif (operand == "+" && calculus[n] = "s") || calculus[n] == "+"
      if operand == ""
        operand = operand + "+"
        n += 1
      elsif operand == "+" 
	      final = nr1.to_i + nr2.to_i
	      numberCounter = 0
        nr = ""
        nr2 = ""
        operand = ""
        n += 1
      end
	  elsif (operand == "-" && calculus[n] = "s") || calculus[n] == "-"
      if operand == ""
        operand += "-"
        n += 1
      elsif operand == "-"
	      final = nr1.to_i - nr2.to_i
	      n += 1
	      numberCounter = 0
        nr1 = ""
        nr2 = ""
        operand = ""
      end
      
	  elsif (operand == "*" && calculus[n] = "s") || calculus[n] == "*"
      
      if operand == ""
        operand += "*"
        n += 1
      elsif operand == "*"
	      final = nr1.to_i * nr2.to_i
	      n += 1
	      numberCounter = 0
        nr = ""
        nr2 = ""
        operand = ""
      end
      
    elsif (operand == "/" && calculus[n] = "s") || calculus[n] == "/"
      if operand == ""
        operand += "/"
        n += 1
      elsif operand == "/"	    
        final = nr1.to_i / nr2.to_i
	      n += 1
	      numberCounter = 0
        nr = ""
        nr2 = ""
        operand = ""
      end
    end
	end

  puts final

  ready = gets.chomp
end

puts "please write numbers to be calculated along with operands"

m = 0

while m < 1
  calculation_string = gets.chomp
  if calculation_string.count("+-/*") > 0 && calculation_string[0].count("0-9") > 0 && calculation_string[-1].count("0-9") > 0
    m +=1
    calcReady = calculation_string.delete(' ')
    calculator(calcReady)
else
    puts "please put in only numbers and operands, as well as to start and finish with numbers"
  end
end
