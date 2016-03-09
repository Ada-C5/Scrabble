# possibly require Scrabble module
# require 'enumerable'
require_relative '../scrabble'

class Scrabble::Scoring # declare this as Scrabble::Scoring during cleanup.

def self.score(word)
	self.scoring_math(word)
end

def self.highest_score_from(array_of_words)
	highest_score = ""
	array_of_words.each do |word|
	  if self.score(word) > self.score(highest_score)
	    highest_score = word
	  elsif self.score(word) == self.score(highest_score)
	  	highest_score = word if word.length < highest_score.length
	  end
  end
	return highest_score
end

private # hiding the mess even from ourselves!!

def self.scoring_math(word)
	# iterate over the letters in the word (after downcasing the word to ensure it matches up
	# against our CONSTANT for checking)
	# figure out what word[index] is worth
	# add to running total
	total_score = 0

  word = word.downcase

  for index in 0..word.length - 1
		if Scrabble::LETTER_POINT_VALUES[1].include? word[index]
			total_score += 1
		elsif Scrabble::LETTER_POINT_VALUES[2].include? word[index]
			total_score += 2
		elsif Scrabble::LETTER_POINT_VALUES[3].include? word[index]
			total_score += 3
		elsif Scrabble::LETTER_POINT_VALUES[4].include? word[index]
			total_score += 4
		elsif Scrabble::LETTER_POINT_VALUES[5].include? word[index]
			total_score += 5
		elsif Scrabble::LETTER_POINT_VALUES[8].include? word[index]
			total_score += 8
		elsif Scrabble::LETTER_POINT_VALUES[10].include? word[index]
			total_score += 10
		end
  end

  # check if the word gets a bingo bonus
  if self.bonus?(word)
  	total_score += 50
  end

  return total_score
end

# this will check if the word gets a bingo bonus!
# it should be a huh? method
def self.bonus?(word)
	if word.length >= 7
		return true
	end
end

end
