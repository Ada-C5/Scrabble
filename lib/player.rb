class Player
  require_relative './scoring'
  attr_reader :name, :plays ,:total_score
  def initialize(name)
    @name = name
    @plays = []
    @total_score = 0
  end


  def play(word)
    @plays << word
    score = Scoring.score(word)
    @total_score += score
    score
  end


end
