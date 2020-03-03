class CodeSaga
  def code_or_saga(var)
    temp = 1
    array = Array[]

    (0...var).each_with_index do |x, index|
      if temp%3 == 0 && temp%5 == 0
        array[index] = 'CodeSaga'	
      elsif temp%3 == 0
        array[index] = 'Code'
      elsif temp%5 == 0
        array[index] = 'Saga'
      else
        array[index] = temp
      end
      temp += 1
    end

    return array
  end  
end
