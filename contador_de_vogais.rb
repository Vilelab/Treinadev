=begin
O programa é bem deselegante... mas cumpre o trabalho
Uma boa ideia de melhoria seria utilizar a negação do metodo
contador de vogais para validar uma consoante...

13-02: Existe um metodo count que calcula caracteres definidos

=end

class Word
  def vowels_count(frase)
    vogais = 0
    contador = 0
    while contador < frase.length do
      if frase[contador] == "a" || frase[contador] == "e" || frase[contador] == "i" || frase[contador] == "o" || frase[contador] == "u" || frase[contador] == "ã" || frase[contador] == "E" 
        vogais += 1 
      end
      contador += 1
    end

  return vogais
  end

  def consonants_count(frase)
    consoantes = 0
    contador = 0
    while contador < frase.length do # cuidado! nao esqueca de excluir os espacos vazios do contador de consoantes...
      if frase[contador] != "a" && frase[contador] != "e" && frase[contador] != "i" && frase[contador] != "o" && frase[contador] != "u" && frase[contador] != " " && frase[contador] != "ã" && frase[contador] != "E" && frase[contador] != "U"
        consoantes += 1 
      end
      contador += 1
    end

  return consoantes
  end
    

end
