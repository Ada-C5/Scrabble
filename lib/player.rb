require_relative '../lib/scoring'

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

  def plays   #returns an array of all the words played by Player
    return @words_played
  end

  def play(word)  #adds word to the words_played array
    @scores_array.total_score
    if @scores_array >= WINNING_SCORE 
    	return false 
    else 
    	@words_played << word
    	@scores_array << Scoring.score(word)
  end

  def won?  #returns true if over 100pts, otherwise false(haven't won yet)
    if Player.total_score >= WINNING_SCORE
      "You win!"
    else
      "You haven't won yet."
    end
  end

  def highest_scoring_word #returns highest scored word from words_played array
  	Scoring.highest_score_from(words_played)
  end

  def highest_word_score #returns the highest score 

  	@scores_array.max
  end
  
  def self.total_score #returns sum of scores of played words
  		@scores_array.reduce(0, :+) 
	end
 end
end
