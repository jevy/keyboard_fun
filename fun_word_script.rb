require 'searcher'

class Task 
    All_alphabet = ('a'..'z').to_a
    Right_Hand_Alphabet = %w[y u m n j i k o l p]
    Left_Hand_Alphabet = %w[q a z w s x e d c r t f v b]

    def self.find_longest_word(allowed_letters)
        dictionary = Searcher.extract_allowed_words(self.generate_dictionary, allowed_letters)
        Searcher.find_longest_word(dictionary)
    end

    private

    def self.generate_dictionary
        dic_file = File.open('enwiktionary-latest-all-titles-in-ns0.txt' , 'r')
        dictionary = []
        dic_file.each { |line| dictionary << line.chomp }
        dictionary
    end

end

puts Task.find_longest_word(Task::Left_Hand_Alphabet)
