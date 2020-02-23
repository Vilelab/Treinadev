#EDIT: temos de converter maiusculas para minisculas antes de comparar
class Word
  def anagrama?(a, b)
    a2 = Array[]
    b2 = Array[]
    a2 = a.downcase.chars #converte string em uma array de letras
    b2 = b.downcase.chars 

    if a2.sort == b2.sort && a.length == b.length
      return true
    else
      return false
    end
  end
end
