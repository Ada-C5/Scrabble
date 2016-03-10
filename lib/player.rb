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
		return false if won?
		self.plays << word
		self.total_score += Scrabble::Scoring.score(word)
		Scrabble::Scoring.score(word)
		# checks if won
		# Returns false if player has already won

		# add score for word to @score
		# Adds the input word to the plays Array

		# Returns the score of the word
	end

	def won?
		# If the player has over 100 points, returns true, otherwise returns false
		if self.total_score > 100
			return true
		end
	end

	def highest_scoring_word(array_of_words)
		highest_score = ""
		array_of_words.each do |word|
		  if Scrabble::Scoring.score(word) > Scrabble::Scoring.score(highest_score)
		    highest_score = word
		  elsif Scrabble::Scoring.score(word) == Scrabble::Scoring.score(highest_score)
		  	highest_score = word if word.length < highest_score.length
		  end
	  end
		return highest_score
	end

	def highest_word_score
		highest_score = ""
		plays.each do |word|
		  if Scrabble::Scoring.score(word) > Scrabble::Scoring.score(highest_score)
		    highest_score = word
		  elsif Scrabble::Scoring.score(word) == Scrabble::Scoring.score(highest_score)
		  	highest_score = word if word.length < highest_score.length
		  end
	  end
		return Scrabble::Scoring.score(highest_score)
	end

end
