# require_relative "../scrabble"

class Scrabble::Player
  WINNING_SCORE = 100
  attr_accessor :played_words
  attr_reader  :name, :their_tiles
  def initialize(name, tilebag)
    @name = name
    @played_words = []
    @tilebag = tilebag #starts up a tilebag when the player begins a game
    @their_tiles = @tilebag.draw_tiles(7)   #draws 7 tiles for them
  end

  def plays
    return @played_words #shows which words they have played
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

  def tiles
    return their_tiles
  end
 # checks to see how many tiles they need and fills them up if needed and if tiles are left in bag
  def draw_tiles
    num = 7 - @their_tiles.length
    # fills tiles array until it has 7 letters from the given tile bag
    if num > 0
    new_tiles = @tilebag.draw_tiles(num)
    @their_tiles << new_tiles
    return @their_tiles.flatten!
    end
  end


end
