#programa que substitui um elem. do array pelo produto dos elem. adjacentes
class Arrays

  def self.multiplica_antecessor_predecessor(array)
    temp = array.clone
=begin 
      quando eu igualava temp a array, as duas eram alteradas! 
      se tornavam uma mesma array... dai tive de clonar.
      edit(14-02): rolou passagem por referência... eu precisava de uma
      passagem por valor... foi isso que deu ruim haha!
=end
    #laço especifico para arrays... bem útil
    array.each_with_index do |number, index|
    #primeiro caso: indice 0
      if (index-1) < 0 
        a = number
        x = array[index + 1]
        produto = a * x
        temp[index] = produto
      #segundo caso: ultimo indice
      elsif array[index+1] == nil
        a = number
        x = array[index -1]
        produto = a * x
        temp[index] = produto
      #terceiro caso: indice genérico
      elsif array[index-1] && array[index+1]
        a = array[index + 1]
        x = array[index - 1]
        produto = a * x
        temp[index] = produto
      end
    end
    return temp
  end

end
