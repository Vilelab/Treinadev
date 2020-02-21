#cada elem. do array e substituido pela multiplicação dele
# mesmo por seu indice
class Arrays
  def self.multiplica_indices(array)
    j = 0
    while j < array.length do
      array[j] = array[j] * j
      j += 1
    end
    return array

  end
end
