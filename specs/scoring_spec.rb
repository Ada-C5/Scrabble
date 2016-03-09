require_relative './spec_helper'
require_relative '../lib/scoring'

#
# Need a minimum of 8 specs for the scoring class
#

describe Scoring do

	HIGH_SCORE = ["dog", "bird", "quiz", "bug"] # Test 5
	
	FIFTY_POINT_HIGH_SCORE  = ["dog", "bird", "quiz", "require"] # Test 6

	RETURN_FEWEST_LETTERS_TIE = ["ale", "hi", "zinc", "cat", "squad", "butts"] # Test 7 

	RETURN_FIRST_WORD_TIE = ["ale", "hi", "zaps", "cat", "squad", "butts", "zinc"] # Test 8 

	# TEST 1
	it "is an object we have access to" do
		Scoring.wont_be_nil
	end
	# TEST 2
	it "is a class method we have access to" do
		Scoring.score("test").wont_be_nil
	end
	# TEST 3
	it "validates score method returns correct score" do
		Scoring.score("pig")
			return 6
		end
	# TEST 4
	it "50-point bonus is applied to words >= 7 letters" do
		Scoring.score("require")
			return 66
	end
	# TEST 5
	it "returns the highest scoring word" do
		Scoring.highest_score_from(HIGH_SCORE)
		 return "quiz"
	end
	# TEST 6
	it "returns highest scoring word with 50 point bonus" do
		Scoring.highest_score_from(FIFTY_POINT_HIGH_SCORE)
		 return "require"
	end
	# TEST 7
	it "returns the word with the fewest letters during a tie" do
		Scoring.highest_score_from(RETURN_FEWEST_LETTERS_TIE)
		return "ZINC"
	end
	# TEST 8
	# for highest score and fewest letters
	it "returns first given word during a tie" do
		Scoring.highest_score_from(RETURN_FIRST_WORD_TIE)
		return "ZAPS"
	end

end
