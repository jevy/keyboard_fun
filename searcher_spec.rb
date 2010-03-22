require 'searcher'

describe Searcher do
    it "should find the longest word" do
        dictionary = %w[small biggest bigger]
        word = Searcher.find_longest_word(dictionary)
        word.should eql 'biggest'
    end

    it "should find words only containing specified letters" do
        dictionary = %w[small biggest bigger]
        allowed_letters = %w[s m a l b i g e r]
        dictionary = Searcher.extract_allowed_words(dictionary, allowed_letters)
        word = Searcher.find_longest_word(dictionary)
        word.should eql 'bigger'
    end

    it "should be true when a word is allowed" do 
        dictionary = %w[small biggest bigger]
        allowed_letters = %w[s m a l b i g e r]
        Searcher.word_allowed?('small', allowed_letters).should be true
    end

    it "should be false when a word is not allowed" do 
        dictionary = %w[small biggest bigger]
        allowed_letters = %w[s m a l b i g e r]
        Searcher.word_allowed?('biggest', allowed_letters).should be false
    end

end
        
