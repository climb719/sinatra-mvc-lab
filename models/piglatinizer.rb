class PigLatinizer

    attr_reader :words

    def piglatinize(words)
        if words.split(" ").count == 1
            pig_latinize(words)
        else  
            pig_latinize(words)
            end
        end
    end
           
    def pig_latinize(words)
        words.split(" ").map do |word|
            vowel_start = word.match(/\b[aAeEiIoOuU]/)
       if vowel_start
            "#{word}way"
       else
        first_vowel = word.index(/[aAeEiIoOuU]/)
        consonants = word.slice(0..first_vowel-1)
        rest = word.slice(first_vowel..word.length)
            "#{rest}#{consonants}ay"
        end 
    end.join(" ")
    
  
end



