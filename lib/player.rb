class Scrabble::Player
  attr_accessor :name, :array_words
  #

  def initialize(name)
    @name = name
    @array_words = []
  end

  def plays
    return @array_words
    # => ["cat","pull","yes"]
  end

  def play(word) # takes word from player
    @array_words << word
    Scrabble::Scoring.score(word)
    # Return to a Numeric
  end

  def total_score
    array_of_scores = []

    @array_words.each do |word|
       array_of_scores << Scrabble::Scoring.score(word)
    end
    # => array_of_scores = [4, 6, 8,]
    # array_of_scores.reduce(:+)
    return array_of_scores
  end
end
