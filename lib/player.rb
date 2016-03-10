require_relative './tilebag'
require_relative './scoring'
class Player
  attr_reader :name, :plays ,:total_score, :tiles

  def initialize(name)
    @name = name
    @plays = []
    @total_score = 0
    @already_won = false
    @tiles = []
  end

  def play(word)
    return false if @already_won == true # can't play more words if already won
    @plays << word # adds word to list of words played
    score = Scoring.score(word)
    @total_score += score
    won? # check to see if the game is won before giving back score
    score
  end

  def won?
    return false unless total_score > 100
    puts "You win!"
    @already_won = true # changes to true when score > 100
  end

  def highest_scoring_word
    Scoring.highest_score_from(@plays)
  end

  def highest_word_score
    highest_word = Scoring.highest_score_from(@plays)
    Scoring.score(highest_word)
  end

  def draw_tiles(tile_bag)
    @tiles.push *tile_bag.draw_tiles(7 - @tiles.length)
    @tiles

  end
end
