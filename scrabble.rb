module Scrabble
  class Scoring
    #some sort of data structure to store the individual letter scores
  	SCORE_CHART = {
  		1 => ["a", "e", "i", "u", "o", "l", "n", "r", "s", "t"]
  		2 => ["d", "g"]
  		3 => ["b", "c", "m", "p"]
  		4 => ["f", "h", "v", "w", "y"]
  		5 => ["k"]
  		8 => ["j", "x"]
  		10 => ["q", "z"]
   	}
  	def self.score(word)
  		#returns score value for given word. word input as string.
  		#seven letter word get 50point bonus
  	end

  	def self.highest_score_from(array_of_words)
  	end


  end
end
