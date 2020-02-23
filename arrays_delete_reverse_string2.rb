#programa que deleta arrays que possuam ocorrencias invertidas de uma string

class Arrays
  def inverse_strings(array)
    @phrase = array
    inversed
  end
  
  def inversed
    resultado = []
    @phrase.each do |ph|
      p = ph.reverse
      unless @phrase.include?(p)
        resultado << p.reverse
      end
    end
    return resultado
  end
end
