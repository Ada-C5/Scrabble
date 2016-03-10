class Scrabble::Player
  attr_accessor :name

  def initialize(name)
    @name = name
    @array_of_words = []
  end

  def play(word) # takes word from player
    @array_of_words << word
  end

  def plays # array
    return @array_of_words
  end
end
