require_relative '../scrabble'
require_relative './scoring'

class Scrabble::Player
attr_reader :name, :plays, :tiles
attr_accessor :total_score

	# set up with empty plays array and score as instance variable
	def initialize(name, score = 0)
	  @name = name
	  @total_score = score
	  @plays = []
		@tiles = []
	end

	def play(word)
		# requirement: return false if player's score > 100
		return false if won?

		# Adds the input word to the plays Array
		self.plays << word

		# add score for word to @score
		self.total_score += Scrabble::Scoring.score(word)		

		# Returns the score of the word
		Scrabble::Scoring.score(word)
	end

	def won?
		# If the player has over 100 points returns true
		return true	if self.total_score > 100
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

	def draw_tiles(tile_bag)
		tiles << tile_bag.draw_tiles(Scrabble::MAX_TILES - tiles.length)
		tiles.flatten!
	end

end
