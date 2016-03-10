class Scrabble::Player
  attr_accessor :played_words
  def initialize(name)
    @name = name
    @played_words = []
  end

  def plays
    return @played_words
  end

  def play(word)
    @played_words << word
    return false
  end

end
