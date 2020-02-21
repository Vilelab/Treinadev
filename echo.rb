=begin
Programa simples que retorna determinadas mensagens
caso identifique determinados padrões: uma pergunta 
por exempl, ou um ponto final, e por ai vai...
=end

class Echo
  def message(string)
   if string[-1] == "?"
     return "Só faço echo, não respondo perguntas."
   elsif string[-1] == "." 
     return string
   elsif string == string.upcase && string != "" && string[-1] != " "
     return "Não faço echo de gritos."
   elsif (string == "") || (string[-1] == " " && string[1] == " ")
     return "Nada?"
   else 
     return string
   end
  end
end
