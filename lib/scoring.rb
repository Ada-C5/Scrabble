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
def self.scoring_math(word)

end

# this will check if the word gets a bingo bonus!
# it should be a huh? method
def self.bonus?(word)
	word.length >= 7 ? bonus = 50 : bonus = 0
	return bonus
end

end
