class Searcher
    def self.find_longest_word(dictionary)
        longest = dictionary.inject do |memo, word|
            memo.length > word.length ? memo : word
        end
    end
            
    def self.extract_allowed_words(dictionary, allowed_letters)
        allowed_words = []
        dictionary.each do |word|
            allowed_words << word if self.word_allowed?(word,allowed_letters)
        end
        allowed_words
    end

    private

    def self.word_allowed?(word, allowed_letters)
        word.split(//).each do |letter|
            return false unless allowed_letters.include?(letter)
        end
        true
    end

end
