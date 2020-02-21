=begin
Programa que retorna a maior e a menor palavra
de uma determinada frase fornecida pelo usuário

=end

class Word
  def longest(phrase)
    maior = phrase.split(" ")
    # metodo split divide uma string arrays de sub strings 

    maior.sort_by!(&:length).reverse!
    # sort ordenará as substrings armazenadas no array em ordem cresente
    # e reverse inverterá essa ordem

    return maior[0]
    # isto posto, a maior palavra está armazenada no indice ZERO
  end

  def shortest(phrase)
    menor = phrase.split(" ")
    menor.sort_by!(&:length)
    return menor[0]
  end
end
