require_relative '../lib/scoring'
require_relative '../lib/tilebag'

class Player
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

  # returns sum of scores of played words
  def total_score 
  		@scores_array.reduce(0, :+) 
	end

   # returns an array of all the words played by Player
  def plays
    return @words_played
  end

  # adds word to the words_played array
  def play(word)
  	# test to see if score is over 100
  	if @scores_array.reduce(0, :+) >= WINNING_SCORE 
  		return false
  	end  
    @words_played << word
    @scores_array << Scoring.score(word)
  end

  # returns true if over 100pts, otherwise false(haven't won yet)
  def won?
    if @scores_array.reduce(0, :+) >= WINNING_SCORE 
  		"You win!"
  		return true
  	else
      "You haven't won yet."
      return false 
    end
  end

  # returns highest scored word from words_played array
  def highest_scoring_word
  	Scoring.highest_score_from(@words_played)
  end

  # returns the highest score 
  def highest_word_score
  	@scores_array.max
  end

  def draw_tiles(number_of_tiles)
    tilebag = TileBag.new
    tilebag.draw_tiles(number_of_tiles)
  end 

  def tiles(number_of_tiles)
    tilebag = TileBag.new
    tilebag = draw_tiles(number_of_tiles) 
  end
end

