require_relative './scoring.rb'

class Player
  attr_reader :name
  attr_accessor :plays
  def initialize(name)
    @name = name
    @plays = []
  end

  def play(word)
    if won?
      return false
    else
      plays << word
      return Scoring.score(word)
    end
  end

  def total_score
    return 0 if plays.empty?
    score_array = plays.collect { |word| Scoring.score(word) }
    score_array.reduce(:+)
  end

  def won?
    total_score > 100 ? true : false
  end

  def highest_scoring_word
    Scoring.highest_score_from(plays)
  end

  def highest_word_score
    Scoring.score(highest_scoring_word)
  end
end
