module Scrabble
  class Scoring
    #some sort of data structure to store the individual letter scores
  	SCORE_CHART = {
      "A"=>1, "B"=>3, "C"=>3, "D"=>2,
      "E"=>1, "F"=>4, "G"=>2, "H"=>4,
      "I"=>1, "J"=>8, "K"=>5, "L"=>1,
      "M"=>3, "N"=>1, "O"=>1, "P"=>3,
      "Q"=>10, "R"=>1, "S"=>1, "T"=>1,
      "U"=>1, "V"=>4, "W"=>4, "X"=>8,
      "Y"=>4, "Z"=>10
    }
  	def self.score(word)
  		word_array = word.split("").upcase

      word_score = 0

      word_array.each do |letter|
      word_score += SCORE_CHART[letter]
      #returns score value for given word. word input as string.
      #word is input as a string (case insensitive).
  		#seven letter word get 50point bonus
  	end

  	def self.highest_score_from(array_of_words)
  	end


  end
end
