#programa que deleta arrays que possuam ocorrencias invertidas de uma string
#eu basicamente transformei os encontrados em uma sting especifica e a deletei...

class Arrays
  def inverse_strings(a)
    a.each_with_index do |x, index1|
      a.each_with_index do |y, index2|
        if x == y.reverse 
          a[index2] = "favordeletar"
          a[index1] = "favordeletar"
        end
      end
    end

    a.delete("favordeletar")
    return a    
  end
end

