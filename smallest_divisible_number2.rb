class Number
  def smallest_divisible(min, max)
  #cria um array 
  array_numbers = (min..max).to_a
  
  #reduce aplica a operação definida entre parenteses sobre o array cumulativamente
  #lcm encontra o menor multiplo comum entre dois numeros inteiros
  #não entendi o porque do 1...
  result = array_numbers.reduce(1, :lcm)
  
return result
end
end
