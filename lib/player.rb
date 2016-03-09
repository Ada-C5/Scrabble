class Player
  require_relative './scoring'
  attr_reader :name, :plays ,:total_score
  def initialize(name)
    @name = name
    @plays = []
    @total_score = 0
    @already_won = false
  end


  def play(word)
    return false if @already_won == true
    @plays << word
    score = Scoring.score(word)
    @total_score += score
    won?
    score
  end


  def won?
    return false unless total_score > 100
    @already_won = true
  end

  def highest_scoring_word
    Scoring.highest_score_from(@plays)
  end

  def highest_word_score
    highest_word = Scoring.highest_score_from(@plays)
    Scoring.score(highest_word)
  end

end
