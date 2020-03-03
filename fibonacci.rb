class Fibonacci

  def element(var)
    a = 0
    b = 1
    temp = 0

    if var == 0 then
      var = 0
    elsif var == 1 then
      var = 1
    else 
      (var - 1).times do |x|
        temp = a + b
        a = b
        b = temp
      end
    end

  
    return temp  
  end

  def elements(var)
    fibonacci = Array[]

    a = 0
    b = 1
    temp = 0

    if var == 0 then
      fibonacci.push(a)
      return fibonacci
    elsif var == 1 then
      fibonacci.push(0)
      fibonacci.push(1)
      return fibonacci
    else 
      fibonacci << 0
      fibonacci << 1
      (var - 1).times do |x|
        temp = a + b
        fibonacci << temp
        a = b
        b = temp
      end
    end

    return fibonacci
  end

end
