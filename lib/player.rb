class Scrabble::Player
  attr_reader :name, :played_words
   def initialize(hash)
     @name = hash[:name]
     @played_words = hash[:words]
   end

   def play(word)
    # returns false if already won
    @played_words << word
    Scrabble::Scoring.score(word)
   end

   def total_score
   end

   def won?
   end

   def highest_scoring_word
   end

   # Returns the highest_scoring_word score
   def highest_word_score
   end

end
