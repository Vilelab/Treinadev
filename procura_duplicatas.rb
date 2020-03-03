#procura e retorna duplicatas existentes em uma array...

class ArrayUtils
  def checar_duplicatas(a)
    resultado = Array[]

    a.each do |e|
      if a.count(e) > 1
        resultado << e
      end
    end

    return resultado.uniq
  end
end
