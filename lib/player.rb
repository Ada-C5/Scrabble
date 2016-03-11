class Scrabble::Player
  attr_accessor :name, :array_words
  #

  def initialize(name)
    @name = name
    @array_words = []
    @array_of_scores = []
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
    @array_words.each do |word|
      @array_of_scores << Scrabble::Scoring.score(word)
    end
    # => array_of_scores = [4, 6, 8,]
    return @array_of_scores.reduce(:+)
  end

  def won?
    total_score
    if total_score >= 100
      return true
    else
      return false
    end
  end

  def highest_scoring_word
    Scrabble::Scoring.highest_score_from(@array_words)
  end

  def highest_word_score
    total_score
    pairs = @array_of_scores.zip(@array_words)
    pairs.max[0]
  end

end
