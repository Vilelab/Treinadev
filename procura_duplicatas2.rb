a = [40, 21, 54, 12, 4, 8, 36, 47, 85, 5, 2, 21]
resultado = Array[]
a = a.sort
(0...a.length).each do |index|
  if a[index] == a[index + 1] && a[index] != a[index - 1]
    resultado << a[index]
  end
end

return resultado

