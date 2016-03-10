require_relative '../scrabble'
require_relative './scoring'

class Scrabble::Player
attr_reader :name, :plays
attr_accessor :total_score


	# set up with empty plays array and score as instance variable
	def initialize(name)
	  @name = name
	  @total_score = 0
	  @plays = []
	  @won = false
	end

	def play(word)
		self.plays << word
		self.total_score += Scrabble::Scoring.score(word)
		Scrabble::Scoring.score(word)
		# checks if won
		# Returns false if player has already won

		# add score for word to @score
		# Adds the input word to the plays Array

		# Returns the score of the word
	end

	# def total_score
	# 
	# end

	def won?
		# If the player has over 100 points, returns true, otherwise returns false
		if self.total_score > 100
			return true
		end
	end

	def highest_scoring_word
		# Returns the highest scoring played word
	end

	def highest_word_score
		# Returns the highest_scoring_word score
	end

end
