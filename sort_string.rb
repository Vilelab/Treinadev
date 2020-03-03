#aplicação do bubble sort em uma string :)

class SortString

  def self.by_word_size(a)
    a = a.split(/ /)
    temp = ""
    (0...a.length - 1).each do |j|
      (0...a.length - 1).each do |index|
        if a[index].length > a[index + 1].length then
          temp = a[index]
          a[index] = a[index + 1]
          a[index + 1] = temp
        end 
      end
    end

    return a.join(" ")

  end
end
