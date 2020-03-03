#conversor de numeros decimais para algarismo romano...

class RomanNumerals
  def from_decimal(num)

    algarismos = ["M", "D", "C", "L", "X", "V",  "I"]
    numeros    = [1  ,  5 ,  10,  50, 100, 500, 1000]
    algarismo = ""
    resto = 0

    numeros.reverse_each.with_index do |divisor, index_numeros|
      div =   num/divisor
      resto = num%divisor
   
      if div != 0  
        algarismo << algarismos[index_numeros]*div
      end

      num = resto
    end
    
    #Exceções: note que multiplos de 9 vem antes de 4...

    algarismo.sub! 'VIIII', 'IX' #9
    algarismo.sub! 'IIII',  'IV' #4
    algarismo.sub! 'LXXXX', 'XC' #90
    algarismo.sub! 'XXXX',  'XL' #40
    algarismo.sub! 'DCCCC', 'CM' #900
    algarismo.sub! 'CCCC',  'CD' #400
    
    return algarismo
  end

end
