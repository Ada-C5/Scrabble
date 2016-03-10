# require_relative "../scrabble"

class Scrabble::Player
  attr_accessor :played_words
  def initialize(name)
    @name = name
    @played_words = []
    #@won = won
  end

  def plays
    return @played_words
  end

  def won?
    return false
  end

  def play(word)
    @played_words << word
    return false if won?
    return Scrabble::Scoring.score(word)
  end

  def total_score
    total_score = []
    @played_words.each do |word|
    total_score  << Scrabble::Scoring.score(word)
    end
    return total_score.reduce(0, :+)
  end

end
