#primo
#soma_dos_quadrados
#quadrado_da_soma
#diferenca 
class Quadrados

  attr_accessor :number

  def initialize(number)
   @number = number
  end

  def primo(x)
    for d in 2..(x - 1)
      if (x % d) == 0
        return false
      end
    end
  end

  def soma_dos_quadrados
    num = 2
    primos = 0
    soma = 0
    while primos < @number
      if primo(num)
        primos += 1
        soma   += num * num
      end
      num += 1
    end
    return soma
  end

  def quadrado_da_soma
    num = 2
    primos = 0
    soma = 0
    while primos < @number
      if primo(num)
        primos += 1
        soma   += num
      end
      num += 1
    end
    return soma*soma
  end

  def diferenca
    return quadrado_da_soma - soma_dos_quadrados
  end
end
