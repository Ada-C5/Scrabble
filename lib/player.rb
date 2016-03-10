require_relative '../scrabble'

class Scrabble::Player
attr_reader :name, :plays, :total_score

	# set up with empty plays array and score as instance variable
	def initialize(name)
	  @name = name
	  @total_score = 1
	  @plays = []
	  # @won = false
	end

	def play(word)
		return word

		# checks if won
		# Returns false if player has already won

		# add score for word to @score	
		# Adds the input word to the plays Array

		# Returns the score of the word



	end

	def won? 
		# If the player has over 100 points, returns true, otherwise returns false
	end

	def highest_scoring_word
		# Returns the highest scoring played word
	end

	def highest_word_score
		# Returns the highest_scoring_word score
	end

end
