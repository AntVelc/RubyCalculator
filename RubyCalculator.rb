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

	    final = nr1.to_f + nr2.to_f
      nr1 = final
      nr2 = ""
      n += 1

    elsif calculus[n-2] == "-"

	    final = nr1.to_f - nr2.to_f
      nr1 = final
      nr2 = ""
      n += 1
      
    elsif calculus[n-2] == "*"

	    final = nr1.to_f * nr2.to_f
      nr1 = final
      nr2 = ""
      n += 1
      
    elsif calculus[n-2] == "/"

	    final = nr1.to_f / nr2.to_f
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
accepted = false

while k < 1
  
  j = 0
  calcString0 = gets.chomp
  calcString = calcString0.delete(' ')
  csn = calcString.length
  
  while j < csn

    duplicatedOperands = true

    if j < csn - 2 and calcString[j].count("+/*-") > 0 && calcString[j+1].count("+/*") > 0
      j = csn
    elsif j < csn - 2 and calcString[j].count("-") > 0 && calcString[j+1].count("-") > 0 && calcString[j+2].count("-") > 0
      j = csn
    elsif j == csn - 1
      duplicatedOperands = false
      j += 1
    else
      j +=1
    end

    
    
    
    if duplicatedOperands == false && (calcString.count("-+/*") + calcString.count("0-9") == csn) && (calcString[0].count("0-9") > 0 || calcString[0].count("-") > 0) && calcString[-1].count("0-9") > 0 

      k += 1
      accepted = true
      
    end
    
  end

  if accepted == false
    puts "please put in only numbers and their operands, as well as to start and finish with numbers" 
  end

end

if accepted == true
  calculator(calcString)
end