=begin
Filtra-se os numeros pares/impares de uma lista, e alem
disso os coloca numa nova lista e multiplica por um numero
=end

class Arrays
  def self.converte_impares_por(lista, numero)
    rev2 = []
    odd_numbers = lista.select { |number| number.odd? }
    
    j = 0
    while j < odd_numbers.length do
      rev2[j] = odd_numbers[j] * numero
      j += 1
    end
    
    return odd_numbers, rev2
  end

  def self.converte_pares_por(lista, numero)
    rev2 = []
    even_numbers = lista.select { |number| number.even? }
    
    j = 0
    while j < even_numbers.length do
      rev2[j] = even_numbers[j] * numero
      j += 1
    end
    
    return even_numbers, rev2
  end

end
