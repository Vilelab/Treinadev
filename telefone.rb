class Telefone
  def teclar(b)
    def finder(a)
      letras = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", ""]
      codigos = [[2,20], [22,220], [222, 2220], [3, 30], [33, 330], [333,3330], [4, 40], [44, 440], [444, 4440], [5, 50], [55, 550], [555,5550], 
            [6,60], [66,660], [666,6660], [7, 70], [77,770], [777,7770], [7777,77770], [8,80], [88,880], [888,8880], [9,90], [99,990], 		    [999,9990], [9999, 99990], [0]]

      codigos.each_with_index do |filho, index|
        if filho.include?(a)
         return letras[index]
        end
      end

    end # fim de finder

    b = b.chars #transforma input em array de caracteres
    c = b.clone #clona o agora array b (como o metodo each e destrutivo...)
    temp = "" #temp guardara o codigo de cada carectere, ao qual aplicaremos finder e colocaremos na string palavrinha
    palavrinha = "" # palavrinha e a string que armazena nosso resultado
    b.each_with_index do |x, index|
      if x == "0" && b[index-1] != b[index+1] #0 indica espaço caso numeros adjacentes sejam distintos (caso específico
        c.shift
        palavrinha << " "
      else
        if x != b[index+1] || x == 0
          temp << c.shift
          palavrinha << finder(temp.to_i) #finder recebe inteiro, por isso precisamos de conversão
          temp.clear
        else
          temp << c.shift #caso de caractere repetido como 22, 333, 7777, etc.. apenas adicionamos a temp
        end
      end
    end

    return palavrinha.downcase

  end
end

=begin
a - 2   || 20
b - 22  || 220
c - 222 || 2220
d - 3   || 30
e - 33  || 330
f - 333 || 3330
g - 4   || 40
h - 44  || 440
i - 444 || 4440
j - 5   || 50
k - 55  || 550
l - 555 || 5550
m - 6   || 60
n - 66  || 660
o - 666 || 6660
p - 7   || 70
q - 77  || 770
r - 777 || 7770
s - 7777|| 77770
t - 8   || 80
u - 88  || 880
v - 888 || 8880
w - 9   || 90
x - 99  || 990
y - 999 || 9990
z - 9999|| 99990
ONDE 0 PODE INDICAR ESPAÇO OU 2 LETRAS NA MESMA TECLA => EX: 202202 - ABA
=end
