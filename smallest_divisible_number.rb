#output: um numero inteiro (numero) que deve ser o menor divisivel da seq. passada Ex 1 .. 3 - 6
#input: dois numeros inteiros (min e max), representando inicio e
#fim de uma sequencia de inteiros incrementando um a um
class Number
  def smallest_divisible(min, max)
    divisoresArray   = Array.new(max - min + 1){|i| i + min}
    dividendosArray  = Array.new(400000){|i| i + max}
    resultado = Array[]

    #os dois eachs equivalem a um laço for aninhado
    dividendosArray.each {|x|  #x = max, max+1, max+2...
      divisoresArray.each {|y| #y = 1, 2, 3
        resultado << x%y}        #resultado equivale a um array de restos de divisao
      if !(resultado.include?(1)) && !(resultado.include?(2)) && !(resultado.include?(3)) && !(resultado.include?(4)) && !(resultado.include?(5)) && !(resultado.include?(6)) && !(resultado.include?(7)) && !(resultado.include?(8)) && !(resultado.include?(9)) && !(resultado.include?(10)) && !(resultado.include?(11)) && !(resultado.include?(12)) && !(resultado.include?(13)) && !(resultado.include?(14)) && !(resultado.include?(15)) && !(resultado.include?(16)) && !(resultado.include?(17)) && !(resultado.include?(18)) && !(resultado.include?(19)) && !(resultado.include?(20)) && !(resultado.include?(21)) && !(resultado.include?(22)) && !(resultado.include?(23)) && !(resultado.include?(24)) && !(resultado.include?(25)) && !(resultado.include?(26))
 
        return x
      else
        resultado.clear
      end
    }
  end
end
