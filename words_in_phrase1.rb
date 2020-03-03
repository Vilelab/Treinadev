class Contents
  attr_accessor :A, :B, :C, :A_downcase
  attr_reader :contents
  def can_make_sentence?(contents)
    #B armazena a frase que esta armazenada no ultimo indice de contents...
    a = Array[]
    b = Array[]
    a_downcase = Array[]
    c = Array[]
    b = contents[-1]
    b = b.to_s
    b = b.downcase
    b = b.split(/ /)

    #A armazena contents (exceto pelo ultimo indice, que é retirado por pop)
    a = contents
    a.pop()

    #map e utilizado para criarmos um novo array
    a_downcase = a.map{|string| string.downcase}    
    c = Array[]

    #as strings de A serao comparadas com as da frase, devidamente quebrada
    #em palavras distintas e armazenada em B, que é convertido em Array por split
    b.each do |stringB|
      c << a_downcase.find{|stringA| stringA == stringB}
    end

    c = c.compact #retira nils de c: em caso de false teremos valores nulos no vetor c,
#e o tamanho de c sera o mesmo do vetor com o qual foi comparado, dando falso positivo
    if b.length() == c.length()
      return true
    else
      return false
    end

  end
end

