require_relative '../lib/scoring'
require_relative '../lib/tilebag'

class Player
  STARTING_TILE_SET = {
    "A" => 9,
    "B" => 2,
    "C" => 2,
    "D" => 4,
    "E" => 12,
    "F" => 2,
    "G" => 3,
    "H" => 2,
    "I" => 9,
    "J" => 1,
    "K" => 1,
    "L" => 4,
    "M" => 2,
    "N" => 6,
    "O" => 8,
    "P" => 2,
    "Q" => 1,
    "R" => 6,
    "S" => 4,
    "T" => 6,
    "U" => 4,
    "V" => 2,
    "W" => 2,
    "X" => 1,
    "Y" => 2,
    "Z" => 1,
  }
	WINNING_SCORE = 100 

  def initialize(name, scores_array=[], words_played=[])
    @name = name
    @scores_array = scores_array
    @words_played = words_played
    return @name
  end

  def name_return
    @name
  end

  def total_score #returns sum of scores of played words
  		@scores_array.reduce(0, :+) 
	end

  def plays   #returns an array of all the words played by Player
    return @words_played
  end

  def play(word)  #adds word to the words_played array
  	# test to see if score is over 100
  	if @scores_array.reduce(0, :+) >= WINNING_SCORE 
  		return false
  	end  
    @words_played << word
    @scores_array << Scoring.score(word)
  end

  def won?  #returns true if over 100pts, otherwise false(haven't won yet)
    if @scores_array.reduce(0, :+) >= WINNING_SCORE 
  		"You win!"
  		return true
  	else
      "You haven't won yet."
      return false 
    end
  end

  def highest_scoring_word #returns highest scored word from words_played array
  	Scoring.highest_score_from(@words_played)
  end

  def highest_word_score #returns the highest score 
  	@scores_array.max
  end

  def draw_tiles(number_of_tiles)
    return number_of_tiles
    # drawing tiles from tilebag does not work yet :(
    tilebag = TileBag.new
    tilebag.draw_tiles(number_of_tiles)
  end 

  def tiles(number_of_tiles)
    if number_of_tiles > 7 
      raise ArgumentError, "That is too many tiles!"
    else 
      tilebag = TileBag.new
      tilebag = draw_tiles(number_of_tiles)
    end 
  end
end

