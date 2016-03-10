# require_relative '../scrabble.rb'
# require_relative './scoring.rb'
# require_relative './tilebag.rb'

class Player
  attr_reader :name
  attr_accessor :plays, :tiles, :tile_bag
  def initialize(name)
    @name = name
    @plays = []
    @tile_bag = TileBag.new()
    @tiles = @tile_bag.draw_tiles(Scrabble::WORD_LENGTH_MAXIMUM)
  end


  def draw_tiles(tile_bag = @tile_bag)
    tiles_drawn = tile_bag.draw_tiles(Scrabble::WORD_LENGTH_MAXIMUM - tiles.length)
    tiles << tiles_drawn
  end

  def play(word)
    if won?
      return false
    else
      plays << word
      this = Scoring.score(word)
      return this
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
