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


end
