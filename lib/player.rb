class Scrabble::Player
  attr_reader :name, :played_words
   def initialize(hash)
     @name = hash[:name]
     @played_words = hash[:words]
   end

   def play(word)
    # returns false if already won
    if won?
      return false
    else
      @played_words << word
      Scrabble::Scoring.score(word)
    end
   end

   def total_score
    points = 0
    played_words.each do |word|
      points += Scrabble::Scoring.score(word)
    end
    return points
   end

   def won?
    total_score >= 100 ? true : false
   end

   # Returns the highest scoring played word
   def highest_scoring_word
      played_words.max_by {|word| Scrabble::Scoring.score(word)}
   end

   # Returns the highest_scoring_word score
   def highest_word_score
      highest_word = played_words.max_by {|word| Scrabble::Scoring.score(word)}
      Scrabble::Scoring.score(highest_word)
   end

end
