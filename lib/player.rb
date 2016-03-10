require_relative "../scrabble"

class Scrabble::Player
  WINNING_SCORE = 100
  attr_accessor :played_words
  attr_reader  :name
  def initialize(name)
    @name = name
    @played_words = []
    #@won = won
  end

  def plays
    return @played_words
  end

  def won?
    return true if total_score > WINNING_SCORE
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

  def highest_scoring_word
    high_score_word = plays.max_by do |word|
     Scrabble::Scoring.score(word)
    end
    return high_score_word
  end

  def highest_word_score
    highest_scored_word = plays.max_by do |word|
      Scrabble::Scoring.score(word)
    end
      return Scrabble::Scoring.score(highest_scored_word)
  end


end
