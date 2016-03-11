class Player
  attr_reader :name, :word
  WIN_CONDITION = 100

  def initialize(name)
  @name = name
  @words = []
  @word_score = 0

  end

  def plays
    return @words
  end

  def play(word)
    if self.won? == true
      return false
    end
      @word_score = Scoring.score(word)
      @words << word
    return @word_score
  end

  def total_score
    tally = 0
    @words.each do |word|
    tally += Scoring.score(word)
    end
   return tally
  end

  def won?
    if total_score > WIN_CONDITION
      return true
    end
    return false
  end
end
