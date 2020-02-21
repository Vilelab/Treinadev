class Contents

    def can_make_sentence?(contents)
        contents.map!(&:downcase)
        phrase_split = contents.last.split
        remove_last = contents.pop
        phrase_split.map!(&:downcase)
        result = (phrase_split - contents).empty?
    end
end
