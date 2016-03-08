# possibly require Scrabble module
require 'ennumerable'
require_relative './scrabble'

class Scrabble::Scoring # declare this as Scrabble::Scoring during cleanup.

def self.score(word)
	# somehow we need to establish a score and what it is worth.
	score += bonus
	return score
end


private # hiding the mess even from ourselves!!

# this will split the word into letters so we can check each one
# this is currently commented out because we can operate on a string
# as though it is an array of letters.
# def self.word_split(word)

# end

# this will return a value for each letter and add it to the running total
# ennumerable?!?!
# we need to downcase the word to ensure it can check against the hash/arrays.
def self.scoring_math(word)
	# iterate over the letters in the word
	total_score = 0

	for index in 0..@word.length - 1
		if LETTER_POINT_VALUES[:1].include word[index]
			total_score += 1
		elsif LETTER_POINT_VALUES[:2].include word[index]
			total_score += 2
		elsif LETTER_POINT_VALUES[:3].includ word[index]
			total_score += 3
		elsif LETTER_POINT_VALUES[:4].includ word[index]
			total_score += 4
		elsif LETTER_POINT_VALUES[:5].includ word[index]
			total_score += 5			
		elsif LETTER_POINT_VALUES[:8].includ word[index]
			total_score += 8
		elsif LETTER_POINT_VALUES[:10].includ word[index]
			total_score += 10
		end        

	# figure out what word[index] is worth 
	
	# add to running total

end

# this will check if the word gets a bingo bonus!
# it should be a huh? method
def self.bonus?(word)
	word.length >= 7 ? bonus = 50 : bonus = 0
	return bonus
end

end
