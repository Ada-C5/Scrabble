#require_relative '../scrabble'  #   allows this class to access scrabble and run through irb

class Scrabble::Player
  include Scrabble
  MAX_TILES_ON_TRAY = 7
  attr_reader :name

  def initialize(player_info)
    @name = player_info[:name]
    @plays = []
    @tiles = [] # these are the tiles that the player has on their little tray
    @tilebag = Scrabble::TileBag.new
    draw_tiles(@tilebag)
  end

  # thought about putting this in attr_accessor, but that would let the player edit it in IRB???
  def plays
    @plays
  end

  def play(word)
    @plays << word
    score = Scrabble::Scoring.score(word)
    won? == true ? false : score
    #return false if the player has already won

  end

  def words_and_matching_scores
    total_score_hash = {}

    plays.each do |word|
      total_score_hash[word] = Scrabble::Scoring.score(word)
    end
    total_score_hash
  end

  def total_score
    # gets value from the scores_for_each_word method
    words_and_matching_scores.values.reduce(:+)
  end

  def won?
    total_score >= 100 ? true : false
  end

  def highest_scoring_word
    highest_score[0]
  end

  def highest_score
    high_score = words_and_matching_scores.max_by do |word, score|
      score
    end
    high_score
  end

  def highest_word_score
    highest_score[1]
  end

  # thought about putting this in attr_accessor, but that would let the player edit it in IRB???
  def tiles
    @tiles
  end

  def draw_tiles(tile_bag)
    num = MAX_TILES_ON_TRAY - tiles.length
    @tiles = tile_bag.draw_tiles(num)
  end

end
