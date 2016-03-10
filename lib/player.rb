class Scrabble::Player
  PLAYED_WORDS = []
  def initialize(name)
    @name = name
  end

  def plays
    return PLAYED_WORDS
  end
end
