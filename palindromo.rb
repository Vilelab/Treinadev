#programa que verifica se a palavra e um palindromo
class StringUtils
  def palindromo?(a)
    a.downcase!
    a = a.split(//)
    a.delete(" ") #pode ser que o palindromo tenha espaços...
    contador = 0
    palindromo = true

    while contador < a.length / 2
      if a[contador] != a[-1 - contador]
        palindromo = false
      end
      contador = contador + 1
    end

    return palindromo
  end
end
