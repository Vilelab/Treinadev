#troca as posicoes do array de 2 a 2
#Ex: [1,2,3,4] => [2,1,4,3]

class ArrayUtils
  def troca(a)
    (0...a.length - 1).step(2).each do |index|
      temp = a[index]
      a[index] = a[index + 1]
      a[index + 1] = temp
    end
  a    
  end
end
