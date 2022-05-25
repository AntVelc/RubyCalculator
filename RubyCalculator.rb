def calculator(numberCalc)
  numberCalc += "s"
  n = 0
  final = 0
  numberArray = Array.new
  m = 0
  calculus = []


  numberArray = numberCalc.split(/(\d+)/)

  if numberArray[0] != "-"
    calculusPre = numberArray.drop(1)
  elsif
    calculusPre = numberArray
  end

  
  cm = calculusPre.length

  while m < cm

    if m == 0 && calculusPre[m].start_with?("-")
      
      calculusPre[m+1] = "-" + calculusPre[m+1]
      calculus.drop(1)
      
    elsif m > 0 && (calculusPre[m] == "+-" || calculusPre[m] == "--" || calculusPre[m] == "*-"  || calculusPre[m] == "/-")
      
      calculusPre[m+1] = "-" + calculusPre[m+1]
      calculus.append(calculusPre[m].chomp("-"))
      
    elsif
      calculus.append(calculusPre[m])
    end
    
    m += 1

  end

  cn = calculus.length
  calculus

  while n < cn 


    if calculus[n].count("0-9") > 0 

      if  calculus[n-1] == "+" || calculus[n-1] == "-" || calculus[n-1] == "*"  || calculus[n-1] == "/" 
	      nr2 = calculus[n]
	      n += 1
      else
	      nr1 = calculus[n]
	      n += 2
      end

    elsif calculus[n-2] == "+"

	    final = nr1.to_i + nr2.to_i
      nr1 = final
      nr2 = ""
      n += 1

    elsif calculus[n-2] == "-"

	    final = nr1.to_i - nr2.to_i
      nr1 = final
      nr2 = ""
      n += 1
      
    elsif calculus[n-2] == "*"

	    final = nr1.to_i * nr2.to_i
      nr1 = final
      nr2 = ""
      n += 1
      
    elsif calculus[n-2] == "/"

	    final = nr1.to_i / nr2.to_i
      nr1 = final
      nr2 = ""
      n += 1

    end
	end

  puts final

  ready = gets.chomp
  
end

puts "please write numbers to be calculated along with operands"

k = 0

while k < 1
  calculation_string = gets.chomp
  if calculation_string.count("+-/*") > 0 && (calculation_string[0].count("0-9") > 0 || calculation_string[0].count("-") > 0) && calculation_string[-1].count("0-9") > 0
    k +=1
    calcReady = calculation_string.delete(' ')
    calculator(calcReady)
else
    puts "please put in only numbers and operands, as well as to start and finish with numbers"
  end
end