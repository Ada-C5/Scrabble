class Scrabble::Player
  attr_reader :name
   def initialize(name)
     @name = name
   end

   def self.plays
     played_words = []
   end

   def self.play(word)
     played_words << word
   end

   def self.total_score
   end

   def self.won?
   end

   def self.highest_scoring_word
   end

   # Returns the highest_scoring_word score
   def self.highest_word_score
   end

end
