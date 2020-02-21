class ArrayUtils
  def self.multiplos(qtd, multiplo)
  #funcao que retorna um array multiplicado por um numero fornecido
  #qtd consiste no numero de elementos, multiplo no multiplicando
    j = 0 
    lista = []
    while j < qtd do
      lista << (j + 1) * multiplo
      j += 1
    end

    return lista  
  end

  def self.tabuada(num)
  #retorna uma lista encadeada, com todas as tabuadas ate o num dado
    lista = []
    j = 1
    while j <= num do
      lista.push multiplos(10, j)
      j += 1
    end
    
    return lista
  end

  def self.ultimo(lista)
    return lista.pop
  end
end
