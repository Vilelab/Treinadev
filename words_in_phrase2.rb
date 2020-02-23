#programa que lê um array (contents) e retorna true se as a string armazenadas
#no mesmo são o suficiente para montar a frase armazenada em seu ultimo indice...

class Contents

    def can_make_sentence?(contents)
        # o &, explicando de modo crasso, serve pra aplicar o metodo... ja map geraria um novo array segundo essa regra (! impede isso)
	# neste caso usamos ! antes do metodo pra indicar que ele deve alterar contents... map por si só n altera nada...
        # diferença entre map e each: o each (que usamos como loop, por exemplo), itera no array mas nao retorna nada
        contents.map!(&:downcase)
        phrase_split = contents.last.split #armazenamos a frase, que encontra-se no ultimo indice do array contents, nessa variavel
        remove_last = contents.pop #tiramos o ultimo indice do array contents (que eh a frase). Nao faz sentido atribuir a uma var alias...
        phrase_split.map!(&:downcase)
        result = (phrase_split - contents).empty? #Arrays iguais? TRUE // Diferentes? FALSE
    end
end

=begin
Veja: https://www.brianstorti.com/understanding-ruby-idiom-map-with-symbol/
RESUMINDO: O & basicamente cria um objeto, que espera um parâmetro (no caso acima um array de strings)
e chama um método pra operar sobre ele (no caso acima, o metodo downcase).

ALERTA: ESSA IMPLEMENTAÇÃO NÂO ESTÁ 100% CERTA... NOTE QUE, SE FORNECERMOS O ARRAY DE STRINGS
TIVER UM NUMERO MAIOR DE INDICES DO QUE A FRASE, SEMPRE TEREMOS UM ARRAY RESUTANTE
=end
