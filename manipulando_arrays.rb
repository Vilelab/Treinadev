class ArrayUtils
  def self.compara(lista1, lista2)
  #verifica se as arrays sao iguais
    if lista1.sort == lista2.sort
      return true
    else
      return false
    end
  end

  def self.divisiveis(num1, num2)
  #armazena valores divisiveis em arrays especificas
    numeros = Array.new(51)
    divlista = []
    divnum1 = []
    divnum2 = []
    j = 1

    while j < 51 do
      numeros[j] = j

      if numeros[j] % num1 == 0 && numeros[j] % num2 == 0
        divlista << numeros[j]
      end
      if numeros[j] % num1 == 0 && numeros[j] % num2 != 0
        divnum1 << numeros[j]
      end
      if numeros[j] % num2 == 0 && numeros[j] % num1 != 0
        divnum2 << numeros[j]
      end

      j += 1
    end

    return divlista, divnum1, divnum2

  end

  def self.soma(list)
  #soma os valores armazenados no array
    soma = 0
    list.each do |item|
      soma += item
    end
  
    return soma
  end

  def self.combinar(numeros, letras)
  #combina as duas arrays e retorna a array combinada...
    lista = []
    # Array.new(numeros.length) {Array.new(letras.length)}
    i = 0
    j = 0

    numeros.each do |item|
      letras.each do |item2|
        lista.push(item).push(item2).push(" ")
      end
    end
    lista.pop
    return lista.split(" ")
  end
end
